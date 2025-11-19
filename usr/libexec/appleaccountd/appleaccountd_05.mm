void sub_100097EA8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10003A288();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100097F90()
{
  type metadata accessor for CustodianOwnerHealthCheck();
  sub_100005814(&unk_1003DB5E0, &qword_10033FA48);
  result = String.init<A>(describing:)();
  qword_1003DB170 = result;
  *algn_1003DB178 = v1;
  return result;
}

uint64_t sub_100097FE4()
{
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v1 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_queue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_maxRetryCount) = 3;
  *(v0 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_uniqueCustodianCount) = 0;
  [v2 setMaxConcurrentOperationCount:1];
  *(v0 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_healthyCustodians) = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_1000982A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a2;
  v52 = a4;
  v49 = *v4;
  v50 = a1;
  v57 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v45 - v8;
  v9 = type metadata accessor for URL();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  v11 = __chkstk_darwin(v9);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v45 - v13;
  v47 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v47);
  v17 = &v45 - v16;
  v18 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v45 - v21;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAB8);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v45 = a3;
    v46 = v9;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59[0] = v27;
    *v26 = 136315138;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v26 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v59);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s - started.", v26, 0xCu);
    sub_10000839C(v27);

    v9 = v46;
    a3 = v45;
  }

  else
  {
  }

  (*(v19 + 16))(v22, v5 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler, v18);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v22, v18);
  v28 = *sub_1000080F8(v59, v60);
  v29 = v50;
  v30 = v51;
  sub_10007DE60(v50, v51, 0, 0);
  sub_10000839C(v59);
  v31 = v47;
  (*(v14 + 16))(v17, v5 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__custodianStorage, v47);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v31);
  v32 = sub_1000080F8(v59, v60);
  v33 = swift_allocObject();
  v33[2] = v5;
  v33[3] = v29;
  v33[4] = v30;
  v33[5] = a3;
  v34 = v49;
  v33[6] = v52;
  v33[7] = v34;
  v35 = sub_1000080F8((*v32 + 16), *(*v32 + 40));
  type metadata accessor for LocalCache();

  v36 = v48;
  sub_100307F40();
  v37 = v53;
  URL.appendingPathComponent(_:isDirectory:)();
  v38 = *(v56 + 8);
  v38(v36, v9);
  v39 = v54;
  v40 = v55;
  v41 = *v35 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v42 = v57;
  (*(v55 + 16))(v54, v41, v57);
  Dependency.wrappedValue.getter();
  (*(v40 + 8))(v39, v42);
  v43 = *sub_1000080F8(v58, v58[3]);
  sub_1000324D8(v37, sub_1000A56C0, v33);

  v38(v37, v9);
  sub_10000839C(v58);
  return sub_10000839C(v59);
}

uint64_t sub_1000988F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v67 = a6;
  v72 = type metadata accessor for CustodianRecord();
  v66 = *(v72 - 8);
  v13 = *(v66 + 64);
  v14 = __chkstk_darwin(v72);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v69 = &v60 - v17;
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v63 = a4;
    v64 = a5;
    v33 = *(a1 + 16);
    v34 = _swiftEmptyArrayStorage;
    v62 = a1;
    v65 = a3;
    if (v33)
    {
      v61 = a7;
      v73 = _swiftEmptyArrayStorage;
      sub_1002E0370(0, v33, 0);
      v34 = v73;
      v35 = a1 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v36 = *(v66 + 72);
      v70 = v21 + 32;
      v71 = v36;
      v60 = v33;
      v37 = v33;
      do
      {
        sub_1000A8638(v35, v19, type metadata accessor for CustodianRecord);
        (*(v21 + 16))(v24, &v19[*(v72 + 20)], v20);
        sub_1000A8824(v19, type metadata accessor for CustodianRecord);
        v73 = v34;
        v39 = v34[2];
        v38 = v34[3];
        if (v39 >= v38 >> 1)
        {
          sub_1002E0370(v38 > 1, v39 + 1, 1);
          v34 = v73;
        }

        v34[2] = v39 + 1;
        (*(v21 + 32))(v34 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v39, v24, v20);
        v35 += v71;
        --v37;
      }

      while (v37);
      v33 = v60;
      v40 = v61;
      v41 = v67;
      a3 = v65;
    }

    else
    {
      v40 = a7;
      v41 = v67;
    }

    v42 = sub_1002E20C0(v34);

    v43 = *(v42 + 16);

    v44 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_uniqueCustodianCount;
    *(a3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_uniqueCustodianCount) = v43;
    if (v33 != v43)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100008D04(v45, qword_1003FAAB8);

      v46 = Logger.logObject.getter();
      v47 = a3;
      v48 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v46, v48))
      {

        v52 = v68;
        v51 = v69;
        if (v33)
        {
LABEL_24:
          v53 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v54 = *(v66 + 72);
          v55 = v62 + v53;
          v56 = _swiftEmptyArrayStorage;
          do
          {
            sub_1000A8638(v55, v51, type metadata accessor for CustodianRecord);
            if ((*(v51 + *(v72 + 36)) - 1) > 2)
            {
              sub_1000A8824(v51, type metadata accessor for CustodianRecord);
            }

            else
            {
              sub_1000A87BC(v51, v52, type metadata accessor for CustodianRecord);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v73 = v56;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1002E0288(0, v56[2] + 1, 1);
                v52 = v68;
                v56 = v73;
              }

              v59 = v56[2];
              v58 = v56[3];
              if (v59 >= v58 >> 1)
              {
                sub_1002E0288(v58 > 1, v59 + 1, 1);
                v52 = v68;
                v56 = v73;
              }

              v56[2] = v59 + 1;
              sub_1000A87BC(v52, v56 + v53 + v59 * v54, type metadata accessor for CustodianRecord);
              v51 = v69;
            }

            v55 += v54;
            --v33;
          }

          while (v33);
          goto LABEL_35;
        }

LABEL_34:
        v56 = _swiftEmptyArrayStorage;
LABEL_35:
        sub_1000990AC(v56, v63, v64, v41, v40);
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v49 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v73);
      *(v49 + 12) = 2048;
      *(v49 + 14) = v33;
      *(v49 + 22) = 2048;
      *(v49 + 24) = *(v47 + v44);

      _os_log_impl(&_mh_execute_header, v46, v48, "%s - Warning: Custodian records count %ld does not match unique custodian UUIDs count %ld", v49, 0x20u);
      sub_10000839C(v50);
    }

    v52 = v68;
    v51 = v69;
    if (v33)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAAB8);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v73 = v30;
    *v28 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v28 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v73);
    *(v28 + 12) = 2112;
    v31 = _convertErrorToNSError(_:)();
    *(v28 + 14) = v31;
    *v29 = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s - error fetching custodian records: %@", v28, 0x16u);
    sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v30);
  }

  return v67(a1);
}

uint64_t sub_1000990AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v36 = a2;
  v8 = *v5;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  type metadata accessor for PartialErrorHandler();
  swift_allocObject();
  v14 = sub_10031FD1C();
  (*(v10 + 16))(v13, v5 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__accountStore, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v15 = [*(*sub_1000080F8(aBlock v42) + 16)];
  v16 = v5;
  v17 = v8;
  v18 = a3;
  if (v15 && (v19 = v15, v20 = [v15 aa_altDSID], v19, v20))
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v40 = v14;
  sub_10000839C(aBlock);
  v39 = a1;
  v24 = *(a1 + 16);
  v25 = v36;
  if (v24)
  {
    v26 = *(type metadata accessor for CustodianRecord() - 8);
    v27 = v39 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v28 = *(v26 + 72);
    do
    {
      sub_100099CA8(v27, v21, v23, v25, v18, v16, v40, v17);
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  v29 = *(v16 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_queue);
  v30 = swift_allocObject();
  v31 = v40;
  v30[2] = v39;
  v30[3] = v16;
  v32 = v37;
  v33 = v38;
  v30[4] = v31;
  v30[5] = v32;
  v30[6] = v33;
  v43 = sub_1000A59C0;
  v44 = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v42 = &unk_1003A7108;
  v34 = _Block_copy(aBlock);

  [v29 addBarrierBlock:v34];
  _Block_release(v34);
}

uint64_t sub_10009943C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__cloudStorage;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__keyRepair;
  v8 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler;
  v10 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__securityController;
  v12 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__statusUpdater;
  v14 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsAccountModel;
  v16 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsEventFactory;
  v18 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter;
  v20 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__accountStore;
  v22 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);

  v23 = *(v0 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_healthyCustodians);

  return v0;
}

uint64_t sub_1000997C0()
{
  sub_10009943C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianOwnerHealthCheck()
{
  result = qword_1003DB220;
  if (!qword_1003DB220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009986C()
{
  sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
  if (v1 <= 0x3F)
  {
    v22 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v3 <= 0x3F)
    {
      v23 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
      if (v5 <= 0x3F)
      {
        v24 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
        if (v7 <= 0x3F)
        {
          v25 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
          if (v9 <= 0x3F)
          {
            v26 = *(v8 - 8) + 64;
            sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
            if (v11 <= 0x3F)
            {
              v27 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &unk_1003DB270, &unk_1003D98A0, &unk_10033FA20);
              if (v13 <= 0x3F)
              {
                v28 = *(v12 - 8) + 64;
                sub_10000DAB8(319, &qword_1003DB280, &unk_1003DA880, &unk_10033F5F0);
                if (v15 <= 0x3F)
                {
                  v29 = *(v14 - 8) + 64;
                  sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
                  if (v17 <= 0x3F)
                  {
                    v30 = *(v16 - 8) + 64;
                    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
                    if (v19 <= 0x3F)
                    {
                      v31 = *(v18 - 8) + 64;
                      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
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

void sub_100099CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v34 = a8;
  v31 = a4;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  v10 = type metadata accessor for CustodianRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A8638(a1, v13, type metadata accessor for CustodianRecord);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1000A87BC(v13, v19 + v14, type metadata accessor for CustodianRecord);
  v20 = (v19 + v15);
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  v22 = (v19 + v16);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  *(v19 + v17) = a6;
  v24 = v34;
  *(v19 + v18) = v33;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v25 = type metadata accessor for AsyncOperation();
  v26 = objc_allocWithZone(v25);
  v26[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v27 = &v26[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v27 = sub_1000A5CF0;
  v27[1] = v19;
  v35.receiver = v26;
  v35.super_class = v25;

  v28 = objc_msgSendSuper2(&v35, "init");
  [*(a6 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_queue) addOperation:v28];
}

void sub_100099EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a7;
  v54 = a6;
  v56 = a5;
  v50 = a1;
  v51 = a2;
  v12 = type metadata accessor for CustodianRecord();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  v14 = __chkstk_darwin(v12);
  v48 = v15;
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v55 = a4;
  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  sub_1000A8638(a3, v17, type metadata accessor for CustodianRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v52 = a3;
  if (v21)
  {
    v46 = a8;
    v22 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v22 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v57);
    *(v22 + 12) = 2080;
    v23 = *(v12 + 20);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1000A8824(v17, type metadata accessor for CustodianRecord);
    v27 = sub_10021145C(v24, v26, &v57);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - performing healthCheck %s.", v22, 0x16u);
    swift_arrayDestroy();

    v28 = v46;
  }

  else
  {
    v28 = a8;

    sub_1000A8824(v17, type metadata accessor for CustodianRecord);
  }

  v29 = kAAAnalyticsEventCustodianHealthCheckOwner;
  v30 = v53;
  if (v56)
  {
    v31 = kAAAnalyticsEventCustodianHealthCheckOwner;

    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = kAAAnalyticsEventCustodianHealthCheckOwner;

    v32 = 0;
  }

  v34 = objc_opt_self();
  v35 = v54;
  v36 = String._bridgeToObjectiveC()();

  v37 = [v34 analyticsEventWithName:v29 altDSID:v32 flowID:v36];

  v38 = v52;
  v39 = v49;
  sub_1000A8638(v52, v49, type metadata accessor for CustodianRecord);
  v40 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v41 = (v48 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v42[2] = v37;
  v42[3] = v28;
  v42[4] = a9;
  sub_1000A87BC(v39, v42 + v40, type metadata accessor for CustodianRecord);
  v43 = (v42 + v41);
  v44 = v51;
  *v43 = v50;
  v43[1] = v44;
  v45 = v37;

  sub_10009A630(v38, v55, v56, v35, v30, sub_1000A5FDC, v42);
}

uint64_t sub_10009A3A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  if (a2)
  {
    v31 = a3;
    if (a1)
    {
      v18 = _convertErrorToNSError(_:)();
    }

    else
    {
      a1 = 0;
      v18 = 0;
    }

    [a2 updateTaskResultWithError:v18];

    a3 = v31;
  }

  (*(v14 + 16))(v17, a3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  swift_getObjectType();
  sub_100246FA8(a2);
  v19 = swift_unknownObjectRelease();
  if (!a1)
  {
    return a6(v19);
  }

  v20 = type metadata accessor for CustodianRecord();
  v21 = (a5 + *(v20 + 24));
  v22 = v21[1];
  v32 = *v21;
  v33 = v22;
  swift_errorRetain();

  v23._countAndFlagsBits = 58;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = a5 + *(v20 + 20);
  v25._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v25);

  v26 = v32;
  v27 = v33;
  v28 = swift_allocObject();
  *(v28 + 16) = a6;
  *(v28 + 24) = a7;

  sub_10031F174(v26, v27, a1, sub_1000A8B74, v28);
}

uint64_t sub_10009A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a6;
  v37 = a7;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v38 = *v7;
  v11 = type metadata accessor for CustodianRecord();
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  (*(v17 + 16))(&v32 - v19, v8 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__custodianStorage, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v20, v16);
  v21 = sub_1000080F8(v39, v39[3]);
  v32 = *(v12 + 28);
  sub_1000A8638(a1, v15, type metadata accessor for CustodianRecord);
  v22 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v33;
  v26 = v34;
  v24[2] = v8;
  v24[3] = v25;
  v28 = v35;
  v27 = v36;
  v24[4] = v26;
  v24[5] = v28;
  v24[6] = a5;
  v24[7] = v27;
  v24[8] = v37;
  sub_1000A87BC(v15, v24 + v22, type metadata accessor for CustodianRecord);
  *(v24 + v23) = v38;
  v29 = *v21;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1000A620C;
  *(v30 + 24) = v24;

  sub_10001DDA4(a1 + v32, sub_100094D34, v30);

  return sub_10000839C(v39);
}

uint64_t sub_10009A934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a4;
  v9[5] = a5;

  sub_10031F804(sub_1000A5A30, v9);
}

uint64_t sub_10009A9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21[-1] - v13;
  (*(v11 + 16))(&v21[-1] - v13, a2 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v15 = sub_1000080F8(v21, v21[3]);
  v16 = *(a3 + 16);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a2;
  v17[4] = a1;
  v17[5] = a4;
  v17[6] = a5;
  v18 = *v15;

  swift_errorRetain();

  sub_10007D890(v16, sub_1000A5AB4, v17);

  return sub_10000839C(v21);
}

uint64_t sub_10009AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a4)
  {
    v10 = 0;
    if (!*(a2 + 16))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
  if (swift_dynamicCast())
  {
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 16))
  {
LABEL_6:
    v11 = objc_allocWithZone(type metadata accessor for CustodianOwnerRecoverabilityHealthCheckAnalyticsEvent()) + qword_1003E3E48;
    *v11 = 0;
    v11[1] = 0;
    sub_100005814(&unk_1003DA880, &unk_10033F5F0);
    Dependency.init(dependencyId:config:)();
    sub_100309C2C(_swiftEmptyArrayStorage);
    v12 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v13 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_healthyCustodians;
    swift_beginAccess();
    sub_100249B74(*(*(a3 + v13) + 16), a1, v10);
  }

LABEL_7:

  return a5(a4);
}

uint64_t sub_10009AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9)
{
  v72 = a8;
  v73 = a2;
  v68 = a5;
  v69 = a6;
  v66 = a3;
  v67 = a4;
  v70 = type metadata accessor for CustodianRecord();
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v65 - v16;
  v18 = type metadata accessor for CustodianshipRecords(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v65 - v24);
  sub_100012D04(a1, &v65 - v24, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    (*(v14 + 16))(v17, v73 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsEventFactory, v13);
    Dependency.wrappedValue.getter();
    (*(v14 + 8))(v17, v13);
    v27 = objc_allocWithZone(type metadata accessor for CustodianHealthCheckAnalyticsEvent());
    v28 = sub_100247870(0, 1);
    sub_10000839C(v74);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v65 = a7;
    v33 = v70;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to create custodian owner health check analytics event. Aborting...", v34, 2u);
    }

    v35 = (a9 + v33[13]);
    v37 = *v35;
    v36 = v35[1];
    v38 = &v28[qword_1003E3D08];
    v39 = *&v28[qword_1003E3D08 + 8];
    *v38 = v37;
    *(v38 + 1) = v36;

    v40 = a9 + v33[15];
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 8);
    v42 = &v28[qword_1003E3D10];
    *v42 = v41;
    v42[8] = v40;
    v43 = (a9 + v33[14]);
    v45 = *v43;
    v44 = v43[1];
    v46 = &v28[qword_1003E3D18];
    v47 = *&v28[qword_1003E3D18 + 8];
    *v46 = v45;
    *(v46 + 1) = v44;

    swift_getObjectType();
    _convertErrorToNSError(_:)();
    v48 = sub_1002489E0();
    v50 = v49;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v64 = *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v33 = v70;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (v48)(v74, 0);
    sub_1002479A8(0, 0xAu);

    v51 = v71;
    sub_1000A8638(a9, v71, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v54 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v54 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v74);
      *(v54 + 12) = 2080;
      v56 = v33[5];
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v57 = v71;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      sub_1000A8824(v57, type metadata accessor for CustodianRecord);
      v61 = sub_10021145C(v58, v60, v74);

      *(v54 + 14) = v61;
      *(v54 + 22) = 2112;
      v62 = _convertErrorToNSError(_:)();
      *(v54 + 24) = v62;
      *v55 = v62;
      _os_log_impl(&_mh_execute_header, v52, v53, "%s - error fetching health check record for %s: %@", v54, 0x20u);
      sub_100008D3C(v55, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v51, type metadata accessor for CustodianRecord);
    }

    swift_errorRetain();
    v65(v26);
  }

  else
  {
    sub_1000A87BC(v25, v21, type metadata accessor for CustodianshipRecords);
    sub_10009B474(v21, v66, v67, v68, v69, a7, v72);
    return sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
  }
}

void sub_10009B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v72 = a6;
  v73 = a7;
  v69 = a4;
  v70 = a5;
  v71 = a3;
  v10 = *v7;
  v67 = a2;
  v68 = v10;
  v11 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  v16 = type metadata accessor for CustodianshipRecords(0);
  v66 = *(v16 - 8);
  v17 = *(v66 + 64);
  v18 = __chkstk_darwin(v16);
  v19 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v65 - v20;
  v22 = type metadata accessor for CustodianRecord();
  if ((*(a1 + v22[9]) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    (*(v12 + 16))(v15, v8 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsEventFactory, v11);
    v65 = v8;
    Dependency.wrappedValue.getter();
    (*(v12 + 8))(v15, v11);
    v23 = a1 + *(v16 + 24);
    v24 = v23 + *(type metadata accessor for CustodianHealthRecord() + 40);
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = objc_allocWithZone(type metadata accessor for CustodianHealthCheckAnalyticsEvent());
    v28 = sub_100247870(v25, v26);
    sub_10000839C(v74);
    *&v28[qword_1003E3D00] = sub_1000EBCF0();
    v29 = (a1 + v22[13]);
    v31 = *v29;
    v30 = v29[1];
    v32 = &v28[qword_1003E3D08];
    v33 = *&v28[qword_1003E3D08 + 8];
    *v32 = v31;
    *(v32 + 1) = v30;

    v34 = a1 + v22[15];
    v35 = *v34;
    LOBYTE(v34) = *(v34 + 8);
    v36 = &v28[qword_1003E3D10];
    *v36 = v35;
    v36[8] = v34;
    v37 = (a1 + v22[14]);
    v39 = *v37;
    v38 = v37[1];
    v40 = &v28[qword_1003E3D18];
    v41 = *&v28[qword_1003E3D18 + 8];
    *v40 = v39;
    *(v40 + 1) = v38;

    v42 = swift_allocObject();
    swift_weakInit();
    sub_1000A8638(a1, v19, type metadata accessor for CustodianshipRecords);
    v43 = (*(v66 + 80) + 40) & ~*(v66 + 80);
    v44 = (v17 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v47[2] = v28;
    v47[3] = &off_1003B0CC8;
    v47[4] = v42;
    sub_1000A87BC(v19, v47 + v43, type metadata accessor for CustodianshipRecords);
    v48 = (v47 + v44);
    v49 = v70;
    v50 = v71;
    *v48 = v67;
    v48[1] = v50;
    v51 = (v47 + v45);
    *v51 = v69;
    v51[1] = v49;
    v52 = (v47 + v46);
    v53 = v73;
    *v52 = v72;
    v52[1] = v53;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v68;

    v54 = v28;

    sub_10009CCBC(a1, sub_1000A66D0, v47);
  }

  else
  {
    v55 = v72;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100008D04(v56, qword_1003FAAB8);
    sub_1000A8638(a1, v21, type metadata accessor for CustodianshipRecords);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v59 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v59 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v74);
      *(v59 + 12) = 2080;
      v60 = v22[5];
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
      v64 = sub_10021145C(v61, v63, v74);

      *(v59 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s - custodian %s does not require a health check, ending check early.", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
    }

    v55(0);
  }
}

void sub_10009BAF0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  v92 = a7;
  v93 = a5;
  v95 = a4;
  v96 = a3;
  v94 = a9;
  v86 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v85 = *(v86 - 8);
  v16 = *(v85 + 64);
  __chkstk_darwin(v86);
  v83 = &v81 - v17;
  v84 = type metadata accessor for CustodianshipRecords(0);
  v89 = *(v84 - 8);
  v18 = *(v89 + 64);
  v19 = __chkstk_darwin(v84);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v20;
  __chkstk_darwin(v19);
  v91 = &v81 - v22;
  v23 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v81 - v26;
  if (a2)
  {
    LODWORD(v82) = a1;
    v87 = v24;
    v88 = v21;
    v28 = a8;
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v30 = (*(v95 + 104))(v97, ObjectType);
    v32 = v31;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v30(v97, 0);

    a8 = v28;
    v24 = v87;
    v21 = v88;
    LOBYTE(a1) = v82;
  }

  v88 = a12;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v34 = Strong;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v87 = a11;
    v35 = kAAAnalyticsEventCustodianHealthCheckOwnerConfirmCustodianWithServer;

    v36 = v35;

    v37 = sub_100245D38(v36, v92, a8, v94, a10);
    (*(v24 + 16))(v27, v34 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler, v23);
    Dependency.wrappedValue.getter();
    (*(v24 + 8))(v27, v23);
    v38 = sub_1000080F8(v97, v98);
    v93 = *(type metadata accessor for CustodianRecord() + 20);
    v39 = v91;
    sub_1000A8638(a6, v91, type metadata accessor for CustodianshipRecords);
    v40 = (*(v89 + 80) + 48) & ~*(v89 + 80);
    v41 = a6;
    v42 = (v90 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v43[2] = v37;
    v43[3] = v34;
    v44 = v95;
    v43[4] = v96;
    v43[5] = v44;
    sub_1000A87BC(v39, v43 + v40, type metadata accessor for CustodianshipRecords);
    v45 = (v43 + v42);
    v46 = v88;
    *v45 = v87;
    v45[1] = v46;
    v47 = *v38;
    v48 = v37;

    swift_unknownObjectRetain();

    sub_10007E4E8(v41 + v93, v94, a10, sub_1000A6F40, v43);

    goto LABEL_17;
  }

  v87 = a11;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100008D04(v49, qword_1003FAAB8);
  sub_1000A8638(a6, v21, type metadata accessor for CustodianshipRecords);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v21;
    v82 = a8;
    v53 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v53 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v53 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v97);
    *(v53 + 12) = 2080;
    v54 = *(type metadata accessor for CustodianRecord() + 20);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    sub_1000A8824(v52, type metadata accessor for CustodianshipRecords);
    v58 = sub_10021145C(v55, v57, v97);

    *(v53 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "%s - marking custodian %s as not reachable, and attempting to re-share.", v53, 0x16u);
    swift_arrayDestroy();

    a8 = v82;
  }

  else
  {

    sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v59 = kAAAnalyticsEventCustodianHealthCheckOwnerSendRecoveryInfoMessage;

  v60 = v59;

  v61 = sub_100245D38(v60, v92, a8, v94, a10);
  swift_beginAccess();
  v62 = swift_weakLoadStrong();
  if (v62)
  {
    v63 = v85;
    v64 = v88;
    v65 = v83;
    v66 = v86;
    (*(v85 + 16))(v83, v62 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__keyRepair, v86);
    Dependency.wrappedValue.getter();

    (*(v63 + 8))(v65, v66);
    v67 = sub_1000080F8(v97, v98);
    v94 = *(v84 + 20);
    v68 = (a6 + *(type metadata accessor for CustodianRecord() + 24));
    v70 = *v68;
    v69 = v68[1];
    v92 = v70;
    v86 = v69;
    v71 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    v72 = a6;
    swift_weakInit();

    v73 = v91;
    sub_1000A8638(a6, v91, type metadata accessor for CustodianshipRecords);
    v74 = (*(v89 + 80) + 48) & ~*(v89 + 80);
    v75 = (v90 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v61;
    *(v76 + 24) = v71;
    v77 = v95;
    *(v76 + 32) = v96;
    *(v76 + 40) = v77;
    sub_1000A87BC(v73, v76 + v74, type metadata accessor for CustodianshipRecords);
    v78 = (v76 + v75);
    *v78 = v87;
    v78[1] = v64;
    v79 = *v67;
    v80 = v61;

    swift_unknownObjectRetain();

    sub_10008742C(v72 + v94, v92, v86, sub_1000A6B70, v76);

LABEL_17:
    sub_10000839C(v97);
    return;
  }
}

uint64_t sub_10009C4BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  if (a2)
  {
    if (a1)
    {
      v18 = _convertErrorToNSError(_:)();
    }

    else
    {
      v18 = 0;
    }

    [a2 updateTaskResultWithError:v18];
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v14 + 16))(v17, Strong + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter, v13);
    Dependency.wrappedValue.getter();

    (*(v14 + 8))(v17, v13);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v21 = (*(a5 + 104))(v29, ObjectType, a5);
    v23 = v22;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21(v29, 0);
  }

  *(a4 + qword_1003E3CF0) = a1 == 0;
  sub_1002479A8(0, 7u);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009C77C(a6, v27, v28);
  }

  return result;
}

uint64_t sub_10009C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v44 = *v3;
  v6 = type metadata accessor for CustodianRecord();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6 - 8);
  v42 = v8;
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  sub_1000A8638(a1, v17, type metadata accessor for CustodianshipRecords);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v39 = v3;
    v40 = a1;
    v21 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v21 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v47);
    *(v21 + 12) = 2080;
    v22 = *(v14 + 24);
    v23 = v22 + *(type metadata accessor for CustodianHealthRecord() + 20);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
    v27 = sub_10021145C(v24, v26, v47);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - custodian %s is being marked as Not reachable.", v21, 0x16u);
    swift_arrayDestroy();

    v4 = v39;
    a1 = v40;
  }

  else
  {

    sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
  }

  (*(v10 + 16))(v13, v4 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v28 = sub_1000080F8(v47, v47[3]);
  v29 = v43;
  sub_1000A8638(a1, v43, type metadata accessor for CustodianRecord);
  v30 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v31 = (v42 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1000A87BC(v29, v33 + v30, type metadata accessor for CustodianRecord);
  *(v33 + v31) = 3;
  v34 = (v33 + v32);
  v35 = v46;
  *v34 = v45;
  v34[1] = v35;
  *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
  v36 = *v28;

  sub_10030B9F8(a1, 0, sub_1000A8BB8, v33, v36, 3);

  return sub_10000839C(v47);
}

uint64_t sub_10009CCBC(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v41 = *v3;
  v5 = type metadata accessor for CustodianHealthRecord();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CustodianshipRecords(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  (*(v15 + 16))(&v38 - v17, v4 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__cloudStorage, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v18, v14);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v46, v48);
    v19 = sub_1000080F8(v48, v48[3]);
    v39 = *(v11 + 24);
    v20 = v43;
    sub_1000A8638(v43, &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v21 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    sub_1000A87BC(v13, v23 + v21, type metadata accessor for CustodianshipRecords);
    v24 = (v23 + v22);
    v25 = v45;
    *v24 = v44;
    v24[1] = v25;
    *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v41;
    v26 = *v19;
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    sub_1000A8638(v20 + v39, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
    v28 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v26;
    sub_1000A87BC(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for CustodianHealthRecord);
    v30 = (v29 + ((v6 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = sub_1000A67C0;
    v30[1] = v23;

    sub_1000BCD5C(0, 0, v10, &unk_10033FA70, v29);

    return sub_10000839C(v48);
  }

  else
  {
    v32 = v44;
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    sub_100008D3C(v46, &unk_1003DB050, &qword_10033FA60);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAB8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136315138;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v48);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - isSharedAndAccepted unable to obtain pointer to CloudKitSharing", v36, 0xCu);
      sub_10000839C(v37);
    }

    return v32(1, 0);
  }
}

uint64_t sub_10009D2CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v34 = a7;
  v35 = a8;
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
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

    [a2 updateTaskResultWithError:{v19, v34, v35}];
  }

  (*(v15 + 16))(v18, a3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v18, v14);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (a1)
  {
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v21 = (*(a5 + 104))(v36, ObjectType, a5);
    v23 = v22;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21(v36, 0);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v26))
    {

      return sub_10009D6F0(a6, a4, a5, v34, v35);
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Finished confirmCustodianWithIdMS with error %@", v27, 0xCu);
    sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    v25 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v25, v31, "Finished confirmCustodianWithIdMS successfully", v32, 2u);
    }
  }

  return sub_10009D6F0(a6, a4, a5, v34, v35);
}

uint64_t sub_10009D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v100 = a4;
  v101 = a5;
  v96 = a3;
  v98 = a2;
  v97 = type metadata accessor for UUID();
  v95 = *(v97 - 8);
  v6 = *(v95 + 64);
  v7 = __chkstk_darwin(v97);
  v94 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = &v89 - v9;
  v10 = type metadata accessor for CustodianshipRecords(0);
  v91 = *(v10 - 8);
  v11 = *(v91 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v89 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v89 - v18;
  v20 = __chkstk_darwin(v17);
  v90 = &v89 - v21;
  __chkstk_darwin(v20);
  v23 = &v89 - v22;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v10;
  v29 = *(v10 + 24);
  v102 = a1;
  v89 = type metadata accessor for CustodianHealthRecord();
  v30 = *(v89 + 24);
  Date.init(timeIntervalSince1970:)();
  sub_1000A7564(&qword_1003DB600, &type metadata accessor for Date);
  LOBYTE(v30) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v25 + 8))(v28, v24);
  if (v30)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAB8);
    v32 = v102;
    sub_1000A8638(v102, v13, type metadata accessor for CustodianshipRecords);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v97;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v37 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v103);
      *(v37 + 12) = 2080;
      v38 = *(type metadata accessor for CustodianRecord() + 20);
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_1000A8824(v13, type metadata accessor for CustodianshipRecords);
      v42 = sub_10021145C(v39, v41, v103);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s - custodian %s hasn't updated to a version that has Health Check enabled. Skipping validation of recipient updated attributes.", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v13, type metadata accessor for CustodianshipRecords);
    }

    v53 = type metadata accessor for CustodianRecord();
    v55 = v94;
    v54 = v95;
    (*(v95 + 16))(v94, v32 + *(v53 + 20), v36);
    swift_beginAccess();
    v56 = v93;
    sub_1002FB030(v93, v55);
    (*(v54 + 8))(v56, v36);
    swift_endAccess();
    sub_1002479A8(1, 0);
    return v100(0);
  }

  else if (sub_1000EBEB4())
  {
    v43 = v102;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAB8);
    sub_1000A8638(v43, v23, type metadata accessor for CustodianshipRecords);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v47 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v47 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v103);
      *(v47 + 12) = 2080;
      v48 = *(v92 + 24) + *(v89 + 20);
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_1000A8824(v23, type metadata accessor for CustodianshipRecords);
      v52 = sub_10021145C(v49, v51, v103);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s - custodian %s is reachable, continue health check.", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v23, type metadata accessor for CustodianshipRecords);
    }

    v75 = v90;
    sub_1000A8638(v43, v90, type metadata accessor for CustodianshipRecords);
    v76 = (*(v91 + 80) + 40) & ~*(v91 + 80);
    v77 = (v11 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    v79 = v99;
    v80 = v96;
    v78[2] = v98;
    v78[3] = v80;
    v78[4] = v79;
    sub_1000A87BC(v75, v78 + v76, type metadata accessor for CustodianshipRecords);
    v81 = (v78 + v77);
    v82 = v101;
    *v81 = v100;
    v81[1] = v82;
    swift_unknownObjectRetain();

    sub_10009F630(v43, sub_1000A73C4, v78);
  }

  else
  {
    v58 = v102;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100008D04(v59, qword_1003FAAB8);
    sub_1000A8638(v58, v19, type metadata accessor for CustodianshipRecords);
    sub_1000A8638(v58, v16, type metadata accessor for CustodianshipRecords);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      LODWORD(v95) = v61;
      v62 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v103[0] = v94;
      *v62 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v62 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v103);
      *(v62 + 12) = 2080;
      v63 = v92;
      v64 = v89;
      v65 = *(v92 + 24) + *(v89 + 20);
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      sub_1000A8824(v19, type metadata accessor for CustodianshipRecords);
      v69 = sub_10021145C(v66, v68, v103);

      *(v62 + 14) = v69;
      *(v62 + 22) = 2080;
      v70 = *(v63 + 24) + *(v64 + 24);
      sub_1000A7564(&qword_1003DB608, &type metadata accessor for Date);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      sub_1000A8824(v16, type metadata accessor for CustodianshipRecords);
      v74 = sub_10021145C(v71, v73, v103);

      *(v62 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v60, v95, "%s - custodian %s last check in was %s, marking as not reachable.", v62, 0x20u);
      swift_arrayDestroy();

      v58 = v102;
    }

    else
    {

      sub_1000A8824(v16, type metadata accessor for CustodianshipRecords);
      sub_1000A8824(v19, type metadata accessor for CustodianshipRecords);
    }

    ObjectType = swift_getObjectType();
    type metadata accessor for AACustodianError(0);
    v103[0] = -7016;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v84 = v103[4];
    _convertErrorToNSError(_:)();

    v85 = (*(v96 + 104))(v103, ObjectType);
    v87 = v86;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v88 = *((*v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v85(v103, 0);
    sub_1002479A8(0, 8u);
    return sub_10009E400(v58, v100, v101);
  }
}

uint64_t sub_10009E400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v50 = a3;
  v48 = *v3;
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v47 = &v42 - v8;
  v9 = type metadata accessor for CustodianRecord();
  v10 = v9 - 8;
  v44 = *(v9 - 8);
  v11 = *(v44 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v18 = (updated - 8);
  v46 = *(updated - 8);
  v45 = *(v46 + 64);
  v19 = __chkstk_darwin(updated);
  v43 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v42 - v21;
  v23 = *(v10 + 28);
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 16))(v22, a1 + v23, v24);
  *&v22[v18[7]] = 3;
  v22[v18[8]] = 1;
  v22[v18[9]] = 1;
  v25 = &v22[v18[10]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v22[v18[11]] = 0;
  v26 = &v22[v18[12]];
  *v26 = 0;
  v26[8] = 1;
  (*(v13 + 16))(v16, v4 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__statusUpdater, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  v27 = sub_1000080F8(v51, v51[3]);
  sub_1000A8638(a1, &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1000A87BC(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v28, type metadata accessor for CustodianRecord);
  v31 = (v30 + v29);
  v32 = v50;
  *v31 = v49;
  v31[1] = v32;
  *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v33 = *v27;
  v34 = type metadata accessor for TaskPriority();
  v35 = v47;
  (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
  v36 = v43;
  sub_1000A8638(v22, v43, type metadata accessor for CustodianStatusUpdateRequest);
  v37 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v38 = (v45 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  sub_1000A87BC(v36, v39 + v37, type metadata accessor for CustodianStatusUpdateRequest);
  *(v39 + v38) = v33;
  v40 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v40 = sub_1000A8548;
  v40[1] = v30;

  sub_1000BCD5C(0, 0, v35, &unk_10033F360, v39);

  sub_1000A8824(v22, type metadata accessor for CustodianStatusUpdateRequest);
  return sub_10000839C(v51);
}

void sub_10009E92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  if (a1)
  {
    v15 = a7;
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v12 = (*(a3 + 104))(v16, ObjectType, a3);
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12(v16, 0);

    a7 = v15;
  }

  sub_10009EA58(a5, a2, a3, a6, a7);
}

void sub_10009EA58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v6 = v5;
  v97 = a4;
  v91 = a3;
  v10 = type metadata accessor for CustodianshipRecords(0);
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  v12 = __chkstk_darwin(v10);
  v93 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v89 = v16;
  v90 = &v81 - v15;
  __chkstk_darwin(v14);
  v92 = &v81 - v17;
  v18 = type metadata accessor for SHA256Digest();
  v95 = *(v18 - 8);
  v19 = *(v95 + 64);
  __chkstk_darwin(v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SHA256();
  v94 = *(v22 - 8);
  v23 = *(v94 + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v81 - v27;
  v96 = v10;
  v29 = a1 + *(v10 + 20);
  v30 = (v29 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 32));
  v31 = v30[1];
  if (v31 >> 60 == 15)
  {
    sub_1002479A8(0, 5u);
    type metadata accessor for AACustodianError(0);
    v98 = -7028;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v100[0];
    v97(v100[0]);
LABEL_16:

    return;
  }

  v86 = a2;
  v87 = a5;
  v82 = v6;
  v83 = a1;
  v33 = *v30;
  v34 = v31;
  sub_100015D6C(*v30, v31);
  SHA256.init()();
  sub_1000A7564(&unk_1003DA8A0, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v33, v34);
  sub_10018F16C(v33, v34);
  v84 = v33;
  v85 = v34;
  sub_100015D58(v33, v34);
  dispatch thunk of HashFunction.finalize()();
  v35 = *(v94 + 8);
  v35(v26, v22);
  v101 = v18;
  v102 = sub_1000A7564(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
  v36 = sub_10000DBEC(v100);
  v37 = v95;
  (*(v95 + 16))(v36, v21, v18);
  sub_1000080F8(v100, v101);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v37 + 8))(v21, v18);
  v39 = v98;
  v38 = v99;
  sub_10000839C(v100);
  v35(v28, v22);
  v40 = v83;
  v41 = v96;
  v42 = v83 + *(v96 + 24);
  v43 = type metadata accessor for CustodianHealthRecord();
  v44 = (v42 + *(v43 + 28));
  v46 = *v44;
  v45 = v44[1];
  if (v38 >> 60 != 15)
  {
    v47 = v86;
    if (v45 >> 60 != 15)
    {
      sub_100052704(v46, v45);
      sub_100015D6C(v39, v38);
      v60 = sub_10018F69C(v39, v38, v46, v45);
      sub_100015D58(v46, v45);
      sub_100012324(v39, v38);
      sub_100015D58(v39, v38);
      v48 = v97;
      if (v60)
      {
        goto LABEL_18;
      }

LABEL_8:
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100008D04(v49, qword_1003FAAB8);
      v50 = v93;
      sub_1000A8638(v40, v93, type metadata accessor for CustodianshipRecords);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v100[0] = swift_slowAlloc();
        *v53 = 136315394;
        if (qword_1003D7DD8 != -1)
        {
          swift_once();
        }

        *(v53 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v100);
        *(v53 + 12) = 2080;
        v54 = *(v41 + 24) + *(v43 + 20);
        type metadata accessor for UUID();
        sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
        v55 = v93;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        sub_1000A8824(v55, type metadata accessor for CustodianshipRecords);
        v59 = sub_10021145C(v56, v58, v100);

        *(v53 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v51, v52, "%s - checksum is invalid for %s, no action taken at the moment.", v53, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000A8824(v50, type metadata accessor for CustodianshipRecords);
      }

      *(v47 + qword_1003E3CF0) = 1;
      sub_1002479A8(0, 6u);
      type metadata accessor for AACustodianError(0);
      v98 = -7015;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v32 = v100[0];
      v48(v100[0]);
      sub_100015D58(v84, v85);
      goto LABEL_16;
    }

LABEL_7:
    sub_100052704(v46, v45);
    sub_100015D58(v39, v38);
    sub_100015D58(v46, v45);
    v48 = v97;
    goto LABEL_8;
  }

  v47 = v86;
  if (v45 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_100052704(v46, v45);
  sub_100015D58(v39, v38);
  v48 = v97;
LABEL_18:
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_100008D04(v61, qword_1003FAAB8);
  v62 = v92;
  sub_1000A8638(v40, v92, type metadata accessor for CustodianshipRecords);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v65 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v65 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v100);
    *(v65 + 12) = 2080;
    v66 = *(v41 + 24) + *(v43 + 20);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
    v67 = v92;
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    sub_1000A8824(v67, type metadata accessor for CustodianshipRecords);
    v71 = sub_10021145C(v68, v70, v100);

    *(v65 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "%s - custodian %s recovery key checksum is valid.", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000A8824(v62, type metadata accessor for CustodianshipRecords);
  }

  v72 = v90;
  sub_1000A8638(v40, v90, type metadata accessor for CustodianshipRecords);
  v73 = (*(v88 + 80) + 24) & ~*(v88 + 80);
  v74 = v40;
  v75 = (v89 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  *(v76 + 16) = v82;
  sub_1000A87BC(v72, v76 + v73, type metadata accessor for CustodianshipRecords);
  v77 = (v76 + v75);
  v78 = v91;
  *v77 = v47;
  v77[1] = v78;
  v79 = (v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
  v80 = v87;
  *v79 = v48;
  v79[1] = v80;

  swift_unknownObjectRetain();

  sub_1000A20F8(v74, sub_1000A75B0, v76);
  sub_100015D58(v84, v85);
}

uint64_t sub_10009F630(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v72 = a2;
  v73 = a3;
  v5 = *v3;
  v6 = type metadata accessor for CustodianRecord();
  v7 = v6 - 8;
  v70 = *(v6 - 8);
  v8 = *(v70 + 64);
  __chkstk_darwin(v6);
  v71 = v9;
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v14 = &v61[-v13];
  v67 = type metadata accessor for CustodianshipRecords(0);
  v15 = *(*(v67 - 8) + 64);
  v16 = __chkstk_darwin(v67);
  v17 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v20 = &v61[-v19];
  __chkstk_darwin(v18);
  v23 = &v61[-v22];
  if (*(a1 + *(v7 + 44)) == 3)
  {
    v64 = v21;
    v66 = v5;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v65 = v10;
    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    sub_1000A8638(a1, v23, type metadata accessor for CustodianshipRecords);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v62 = v26;
      v63 = a1;
      v27 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v27 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v74);
      *(v27 + 12) = 2080;
      v28 = *(v67 + 24);
      v29 = v28 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000A8824(v23, type metadata accessor for CustodianshipRecords);
      v33 = sub_10021145C(v30, v32, v74);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v25, v62, "%s - custodian %s was marked as unreachable, marking as accepted again.", v27, 0x16u);
      swift_arrayDestroy();

      a1 = v63;
    }

    else
    {

      sub_1000A8824(v23, type metadata accessor for CustodianshipRecords);
    }

    sub_1000A8638(a1, v20, type metadata accessor for CustodianshipRecords);
    v44 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v45 = a1;
    v46 = (v15 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    sub_1000A87BC(v20, v47 + v44, type metadata accessor for CustodianshipRecords);
    v48 = (v47 + v46);
    v49 = v73;
    *v48 = v72;
    v48[1] = v49;
    v50 = v66;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v66;
    v51 = v68;
    (*(v68 + 16))(v14, v69 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v11);

    Dependency.wrappedValue.getter();
    (*(v51 + 8))(v14, v11);
    v52 = sub_1000080F8(v74, v74[3]);
    v53 = v65;
    sub_1000A8638(v45, v65, type metadata accessor for CustodianRecord);
    v54 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v55 = (v71 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_1000A87BC(v53, v57 + v54, type metadata accessor for CustodianRecord);
    *(v57 + v55) = 2;
    v58 = (v57 + v56);
    *v58 = sub_1000A74B0;
    v58[1] = v47;
    *(v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8)) = v50;
    v59 = *v52;

    sub_10030B9F8(v45, 0, sub_1000A7560, v57, v59, 2);

    return sub_10000839C(v74);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAB8);
    sub_1000A8638(a1, v17, type metadata accessor for CustodianshipRecords);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v37 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v74);
      *(v37 + 12) = 2080;
      v38 = *(v67 + 24);
      v39 = v38 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
      v43 = sub_10021145C(v40, v42, v74);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s - custodian %s status is not unreachable, bailing.", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
    }

    return v72(0);
  }
}

uint64_t sub_10009FF00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for CustodianshipRecords(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    sub_1000A8638(a2, v12, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v36 = a3;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v16 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v37);
      *(v16 + 12) = 2080;
      v18 = *(v6 + 24);
      v19 = v18 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1000A8824(v12, type metadata accessor for CustodianshipRecords);
      v23 = sub_10021145C(v20, v22, &v37);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2112;
      v24 = _convertErrorToNSError(_:)();
      *(v16 + 24) = v24;
      *v17 = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s - failed to mark custodian %s as accepted. Error: %@", v16, 0x20u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a3 = v36;
    }

    else
    {

      sub_1000A8824(v12, type metadata accessor for CustodianshipRecords);
    }

    swift_errorRetain();
    a3(a1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    sub_1000A8638(a2, v10, type metadata accessor for CustodianshipRecords);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v28 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v37);
      *(v28 + 12) = 2080;
      v29 = *(v6 + 24);
      v30 = v29 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1000A8824(v10, type metadata accessor for CustodianshipRecords);
      v34 = sub_10021145C(v31, v33, &v37);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - successfully marked custodian %s as accepted.", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v10, type metadata accessor for CustodianshipRecords);
    }

    return (a3)(0);
  }
}

uint64_t sub_1000A04D8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a2;
  v5 = type metadata accessor for Date.ISO8601FormatStyle();
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  __chkstk_darwin(v5);
  v132 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v149 = *(v8 - 8);
  v9 = *(v149 + 64);
  __chkstk_darwin(v8);
  v131 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v130 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v147 = (&v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v20 = &v126 - v19;
  v21 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v143 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v126 - v25;
  v27 = type metadata accessor for CustodianRecord();
  v28 = *(*(v27 - 1) + 64);
  __chkstk_darwin(v27);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A8638(a1, v30, type metadata accessor for CustodianRecord);
  v31 = v12[7];
  v148 = v26;
  v31(v26, 1, 1, v11);
  v32 = *(v149 + 56);
  v141 = v20;
  v142 = v8;
  v32(v20, 1, 1, v8);
  v33 = (a3 + v27[7]);
  *v33 = 0;
  v33[1] = 0;
  v135 = v33;
  v34 = (a3 + v27[8]);
  *v34 = 0;
  v34[1] = 0;
  v136 = v34;
  v35 = (a3 + v27[13]);
  *v35 = 0;
  v35[1] = 0;
  v138 = v35;
  v36 = (a3 + v27[14]);
  *v36 = 0;
  v36[1] = 0;
  v139 = v36;
  v37 = a3 + v27[15];
  *v37 = 0;
  v140 = v37;
  *(v37 + 8) = 1;
  v137 = v27[16];
  v129 = v12 + 7;
  v128 = v31;
  v31((a3 + v137), 1, 1, v11);
  v146 = v12;
  v38 = v12[2];
  v38(a3, v30, v11);
  v39 = v27[5];
  v144 = v11;
  v38(a3 + v39, &v30[v39], v11);
  v40 = v27[11];
  v41 = *&v30[v40];
  v42 = *&v30[v40 + 8];
  v43 = (a3 + v40);
  *v43 = v41;
  v43[1] = v42;
  v44 = v27[6];
  v45 = *&v30[v44];
  v46 = *&v30[v44 + 8];
  v47 = (a3 + v44);
  *v47 = v45;
  v47[1] = v46;
  *(a3 + v27[9]) = v145;
  v48 = v27[10];
  v50 = *&v30[v48];
  v49 = *&v30[v48 + 8];
  v51 = (a3 + v48);
  *v51 = v50;
  v51[1] = v49;
  v52 = v27[12];
  v145 = v30;
  *(a3 + v52) = v30[v52];
  v53 = type metadata accessor for ContactsHelper();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  sub_100015D6C(v41, v42);
  sub_100052704(v50, v49);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v56 = v150;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v56 contactForHandle:v57];

  swift_unknownObjectRelease();
  if (!v58)
  {

    sub_1000EF4CC();
    v62 = 0;
    v64 = v142;
LABEL_18:
    v65 = v144;
    v67 = v145;
    goto LABEL_22;
  }

  v59 = objc_allocWithZone(AALocalContactInfo);
  v60 = v58;
  v61 = String._bridgeToObjectiveC()();
  v62 = [v59 initWithHandle:v61 contact:v60];

  v63 = sub_1000EF4CC();
  v64 = v142;
  v65 = v144;
  if ((v63 & 1) == 0)
  {
    v67 = v145;
    goto LABEL_22;
  }

  v67 = v145;
  v66 = v146;
  v68 = v147;
  if (!v62)
  {
LABEL_24:
    v90 = (v67 + v27[7]);
    v91 = *v90;
    v92 = v90[1];
    v93 = v135;
    *v135 = v91;
    v93[1] = v92;
    v94 = (v67 + v27[8]);
    v96 = *v94;
    v95 = v94[1];
    v97 = v136;
    *v136 = v96;
    v97[1] = v95;

    v87 = v143;
    goto LABEL_25;
  }

  v62 = v62;
  v69 = [v62 firstName];
  if (!v69)
  {

    goto LABEL_24;
  }

  v70 = v69;
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = sub_1002576F0(v71, v73);
  v76 = v75;

  if (!v76)
  {
LABEL_22:
    v68 = v147;
    goto LABEL_23;
  }

  v62 = v62;
  v77 = [v62 lastName];
  if (!v77)
  {

    goto LABEL_22;
  }

  v78 = v77;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = sub_1002576F0(v79, v81);
  v84 = v83;

  if (!v84)
  {

    goto LABEL_18;
  }

  v127 = v82;
  v65 = v144;
  v85 = &v145[v27[7]];
  v86 = *(v85 + 1);
  v68 = v147;
  v87 = v143;
  if (v86 && (*v85 == v74 && v86 == v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v88 = &v145[v27[8]], (v89 = *(v88 + 1)) != 0) && (*v88 == v127 && v89 == v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v67 = v145;
LABEL_23:
    v66 = v146;
    goto LABEL_24;
  }

  v125 = v135;
  v124 = v136;
  *v135 = v74;
  v125[1] = v76;
  *v124 = v127;
  v124[1] = v84;
  v67 = v145;
  v66 = v146;
LABEL_25:
  sub_100012D04(v148, v87, &qword_1003D8B60, &unk_10033F210);
  if ((v66[6])(v87, 1, v65) == 1)
  {
    sub_100008D3C(v87, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v67 + v27[16], a3 + v137);
  }

  else
  {
    v98 = v66[4];
    v99 = v130;
    v98(v130, v87, v65);
    v147 = v27;
    v100 = v67;
    v101 = v68;
    v102 = v62;
    v103 = v64;
    v104 = v137;
    sub_100008D3C(a3 + v137, &qword_1003D8B60, &unk_10033F210);
    v98((a3 + v104), v99, v65);
    v105 = (a3 + v104);
    v64 = v103;
    v62 = v102;
    v68 = v101;
    v67 = v100;
    v27 = v147;
    v128(v105, 0, 1, v65);
  }

  v106 = (v67 + v27[13]);
  v107 = *v106;
  v108 = v106[1];
  v109 = v138;
  *v138 = v107;
  v109[1] = v108;
  v110 = v141;
  sub_100012D04(v141, v68, &qword_1003DA110, &qword_10033F230);
  v111 = v149;
  if ((*(v149 + 48))(v68, 1, v64) == 1)
  {

    sub_100008D3C(v110, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v148, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v68, &qword_1003DA110, &qword_10033F230);
    v112 = (v67 + v27[14]);
    v113 = *v112;
    v114 = v112[1];
  }

  else
  {
    v115 = v131;
    (*(v111 + 32))(v131, v68, v64);

    v116 = v132;
    sub_100195ACC(v132);
    v113 = Date.ISO8601Format(_:)();
    v114 = v117;

    (*(v133 + 8))(v116, v134);
    (*(v111 + 8))(v115, v64);
    sub_100008D3C(v110, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v148, &qword_1003D8B60, &unk_10033F210);
  }

  v118 = v139;
  *v139 = v113;
  v118[1] = v114;
  v119 = v67 + v27[15];
  v120 = *v119;
  v121 = *(v119 + 8);
  result = sub_1000A8824(v67, type metadata accessor for CustodianRecord);
  v123 = v140;
  *v140 = v120;
  *(v123 + 8) = v121;
  return result;
}

uint64_t sub_1000A0F80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v33 = a4;
  v7 = type metadata accessor for CustodianRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v33 - v13);
  sub_100012D04(a1, &v33 - v13, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v19 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v34);
      *(v19 + 12) = 2048;
      *(v19 + 14) = a3;
      *(v19 + 22) = 2112;
      v22 = _convertErrorToNSError(_:)();
      *(v19 + 24) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - error marking custodian record with status %ld: %@", v19, 0x20u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    swift_errorRetain();
    v33(v15);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    sub_1000A8638(a2, v10, type metadata accessor for CustodianRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v27 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v34);
      *(v27 + 12) = 2080;
      v28 = *(v7 + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_1000A8824(v10, type metadata accessor for CustodianRecord);
      v32 = sub_10021145C(v29, v31, &v34);

      *(v27 + 14) = v32;
      *(v27 + 22) = 2048;
      *(v27 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s - custodian %s has been updated with status %ld.", v27, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v10, type metadata accessor for CustodianRecord);
    }

    [objc_opt_self() postRecoveryContactChangedNotification];
    v33(0);
    return sub_100008D3C(v14, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000A14EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v11 = type metadata accessor for CustodianshipRecords(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A8638(a2, v14, type metadata accessor for CustodianshipRecords);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_1000A87BC(v14, v17 + v15, type metadata accessor for CustodianshipRecords);
  v18 = (v17 + v16);
  *v18 = a3;
  v18[1] = a4;
  v19 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v22;
  v19[1] = a6;

  swift_unknownObjectRetain();

  sub_1000A1C08(a2, sub_1000A7A3C, v17);
}

uint64_t sub_1000A1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a2;
  v55 = a5;
  v51 = a3;
  v52 = a4;
  v50 = *v5;
  v7 = type metadata accessor for UUID();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = type metadata accessor for CustodianshipRecords(0);
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v18;
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAA88);
  sub_1000A8638(a1, v21, type metadata accessor for CustodianshipRecords);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v58 = v7;
  if (v25)
  {
    v46 = v10;
    v47 = a1;
    v26 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v26 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v26 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v59);
    *(v26 + 12) = 2080;
    v27 = sub_1000A92F8();
    v29 = v28;
    sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
    v30 = sub_10021145C(v27, v29, v59);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - Checking CRK presence on Octagon for %s", v26, 0x16u);
    swift_arrayDestroy();

    v10 = v46;
    a1 = v47;
  }

  else
  {

    sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
  }

  v31 = v57;
  (*(v11 + 16))(v14, v57 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__securityController, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v32 = sub_1000080F8(v59, v59[3]);
  v33 = v53;
  sub_1000A8E58(v53);
  sub_1000A8638(a1, v19, type metadata accessor for CustodianshipRecords);
  v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v35 = (v49 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_1000A87BC(v19, v38 + v34, type metadata accessor for CustodianshipRecords);
  v39 = (v38 + v35);
  v40 = v55;
  v42 = v51;
  v41 = v52;
  *v39 = v54;
  v39[1] = v42;
  v43 = (v38 + v36);
  *v43 = v41;
  v43[1] = v40;
  *(v38 + v37) = v31;
  *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v44 = *v32;
  swift_unknownObjectRetain();

  sub_100018104(v33, sub_1000A8278, v38);

  (*(v56 + 8))(v33, v58);
  return sub_10000839C(v59);
}

uint64_t sub_1000A1C08(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v69 = *v3;
  v7 = type metadata accessor for CustodianshipRecords(0);
  v8 = v7 - 8;
  v68 = *(v7 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v7);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = type metadata accessor for CustodianRecoveryInfoRecord();
  v15 = *(*(v14 - 1) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v61 - v20;
  v22 = *(v8 + 28);
  v71 = a1;
  v23 = a1 + v22;
  if (*(a1 + v22 + *(v19 + 48) + 8))
  {
    return a2();
  }

  v25 = (v71 + *(type metadata accessor for CustodianRecord() + 52));
  v26 = v25[1];
  if (!v26)
  {
    return a2();
  }

  v62 = *v25;
  v65 = v26;
  sub_1000A8638(v23, v18, type metadata accessor for CustodianRecoveryInfoRecord);
  v64 = a3;
  v27 = v14[11];
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v63 = a2;
  v30 = v29;
  (*(v29 + 56))(&v21[v27], 1, 1, v28);
  v61 = &v21[v14[12]];
  v31 = *(v30 + 16);
  v31(v21, v18, v28);
  v31(&v21[v14[5]], &v18[v14[5]], v28);
  v32 = v14[6];
  v33 = *&v18[v32];
  v34 = *&v18[v32 + 8];
  v35 = &v21[v32];
  *v35 = v33;
  *(v35 + 1) = v34;
  v36 = v14[11];

  sub_10009585C(&v18[v36], &v21[v27]);
  v37 = v14[9];
  v38 = *&v18[v37];
  v39 = *&v18[v37 + 8];
  v40 = &v21[v37];
  *v40 = v38;
  v40[1] = v39;
  v41 = v14[7];
  v42 = *&v18[v41];
  v43 = *&v18[v41 + 8];
  v44 = &v21[v41];
  *v44 = v42;
  v44[1] = v43;
  v45 = v14[8];
  v46 = *&v18[v45];
  v47 = *&v18[v45 + 8];
  v48 = &v21[v45];
  *v48 = v46;
  v48[1] = v47;
  v21[v14[10]] = v18[v14[10]];
  sub_100015D6C(v38, v39);
  sub_100015D6C(v42, v43);
  sub_100052704(v46, v47);
  sub_1000A8824(v18, type metadata accessor for CustodianRecoveryInfoRecord);
  v49 = v61;
  v50 = v65;
  v51 = v66;
  *v61 = v62;
  *(v49 + 1) = v50;
  v52 = v67;
  (*(v51 + 16))(v13, v3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v67);
  Dependency.wrappedValue.getter();
  (*(v51 + 8))(v13, v52);
  v53 = sub_1000080F8(v72, v72[3]);
  v54 = v70;
  sub_1000A8638(v71, v70, type metadata accessor for CustodianshipRecords);
  v55 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v56 = (v9 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_1000A87BC(v54, v57 + v55, type metadata accessor for CustodianshipRecords);
  v58 = (v57 + v56);
  v59 = v64;
  *v58 = v63;
  v58[1] = v59;
  *(v57 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v60 = *v53;

  sub_10023030C(v21, sub_1000A7E84, v57);

  sub_1000A8824(v21, type metadata accessor for CustodianRecoveryInfoRecord);
  return sub_10000839C(v72);
}

uint64_t sub_1000A20F8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = v3;
  v191 = a2;
  v192 = a3;
  v187 = *v4;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v185 = *(v6 - 8);
  v186 = v6;
  v7 = *(v185 + 64);
  __chkstk_darwin(v6);
  v9 = v159 - v8;
  v178 = type metadata accessor for Date.ISO8601FormatStyle();
  v177 = *(v178 - 8);
  v10 = *(v177 + 64);
  __chkstk_darwin(v178);
  v176 = v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v190 = *(v12 - 8);
  v13 = *(v190 + 64);
  __chkstk_darwin(v12);
  v175 = v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v174 = v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v188 = v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v159 - v23;
  v25 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v180 = v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v159 - v29;
  v193 = type metadata accessor for CustodianRecord();
  v181 = *(v193 - 1);
  v31 = *(v181 + 64);
  v32 = __chkstk_darwin(v193);
  v183 = v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = v159 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = v159 - v38;
  v182 = v40;
  __chkstk_darwin(v37);
  v184 = v159 - v41;
  if (!sub_1000EF184())
  {
    return v191();
  }

  v166 = v9;
  v167 = v4;
  v168 = a1;
  sub_1000A8638(a1, v39, type metadata accessor for CustodianRecord);
  v42 = v16[7];
  v173 = v30;
  v42(v30, 1, 1, v15);
  v43 = *(v190 + 56);
  v170 = v24;
  v171 = v12;
  v43(v24, 1, 1, v12);
  v44 = v193;
  v45 = &v36[v193[7]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v160 = v45;
  v46 = &v36[v44[8]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v161 = v46;
  v47 = &v36[v44[13]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v163 = v47;
  v48 = &v36[v44[14]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v164 = v48;
  v49 = &v36[v44[15]];
  *v49 = 0;
  v165 = v49;
  v49[8] = 1;
  v162 = v44[16];
  v159[1] = v16 + 7;
  v159[0] = v42;
  v42(&v36[v162], 1, 1, v15);
  v169 = v16;
  v50 = v16[2];
  v50(v36, v39, v15);
  v51 = v44[5];
  v172 = v15;
  v50(&v36[v51], &v39[v51], v15);
  v52 = v44[11];
  v54 = *&v39[v52];
  v53 = *&v39[v52 + 8];
  v55 = &v36[v52];
  *v55 = v54;
  v55[1] = v53;
  v56 = v44[6];
  v58 = *&v39[v56];
  v57 = *&v39[v56 + 8];
  v59 = &v36[v56];
  *v59 = v58;
  *(v59 + 1) = v57;
  *&v36[v44[9]] = *&v39[v44[9]];
  v60 = v44[10];
  v62 = *&v39[v60];
  v61 = *&v39[v60 + 8];
  v63 = &v36[v60];
  *v63 = v62;
  v63[1] = v61;
  v64 = v44[12];
  v179 = v39;
  v36[v64] = v39[v64];
  v65 = type metadata accessor for ContactsHelper();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();

  sub_100015D6C(v54, v53);
  sub_100052704(v62, v61);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v68 = v194[0];
  v69 = String._bridgeToObjectiveC()();
  v70 = [v68 contactForHandle:v69];

  swift_unknownObjectRelease();
  if (!v70)
  {

    sub_1000EF4CC();
    v189 = 0;
    v75 = v171;
    v76 = v170;
    v79 = v179;
    v78 = v180;
    v80 = v173;
    v77 = v188;
LABEL_19:
    v81 = v172;
    goto LABEL_20;
  }

  v71 = objc_allocWithZone(AALocalContactInfo);
  v72 = v70;
  v73 = String._bridgeToObjectiveC()();
  v189 = [v71 initWithHandle:v73 contact:v72];

  v74 = sub_1000EF4CC();
  v75 = v171;
  v76 = v170;
  v77 = v188;
  v78 = v180;
  if ((v74 & 1) == 0)
  {
    goto LABEL_18;
  }

  v79 = v179;
  v80 = v173;
  v81 = v172;
  if (!v189)
  {
    goto LABEL_20;
  }

  v189 = v189;
  v82 = [v189 firstName];
  if (!v82)
  {

    goto LABEL_20;
  }

  v83 = v82;
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v87 = sub_1002576F0(v84, v86);
  v89 = v88;

  if (!v89)
  {
LABEL_18:
    v79 = v179;
    v80 = v173;
    goto LABEL_19;
  }

  v189 = v189;
  v90 = [v189 lastName];
  if (!v90)
  {

    goto LABEL_18;
  }

  v91 = v77;
  v92 = v90;
  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  v96 = sub_1002576F0(v93, v95);
  v98 = v97;

  if (v98)
  {
    v99 = &v179[v193[7]];
    v100 = *(v99 + 1);
    v101 = v170;
    v102 = v169;
    v77 = v91;
    if (v100 && (*v99 == v87 && v100 == v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v80 = v173;
      v81 = v172;
      v75 = v171;
      v76 = v101;
      v79 = v179;
    }

    else
    {
      v155 = &v179[v193[8]];
      v156 = *(v155 + 1);
      v76 = v101;
      if (!v156 || (*v155 != v96 || v156 != v98) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v157 = v160;
        *v160 = v87;
        v157[1] = v89;
        v158 = v161;
        *v161 = v96;
        v158[1] = v98;
        v80 = v173;
        v81 = v172;
        v75 = v171;
        v79 = v179;
        goto LABEL_21;
      }

      v80 = v173;
      v81 = v172;
      v75 = v171;
      v79 = v179;
    }
  }

  else
  {

    v79 = v179;
    v80 = v173;
    v81 = v172;
    v75 = v171;
    v77 = v91;
    v76 = v170;
  }

LABEL_20:
  v104 = v193;
  v105 = (v79 + v193[7]);
  v106 = *v105;
  v107 = v105[1];
  v108 = v160;
  *v160 = v106;
  v108[1] = v107;
  v109 = (v79 + v104[8]);
  v111 = *v109;
  v110 = v109[1];
  v112 = v161;
  *v161 = v111;
  v112[1] = v110;

  v102 = v169;
LABEL_21:
  sub_100012D04(v80, v78, &qword_1003D8B60, &unk_10033F210);
  if ((v102[6])(v78, 1, v81) == 1)
  {
    sub_100008D3C(v78, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v79 + v193[16], &v36[v162]);
  }

  else
  {
    v113 = v102[4];
    v114 = v78;
    v115 = v174;
    v113(v174, v114, v81);
    v116 = v79;
    v117 = v76;
    v118 = v75;
    v119 = v80;
    v120 = v162;
    sub_100008D3C(&v36[v162], &qword_1003D8B60, &unk_10033F210);
    v113(&v36[v120], v115, v81);
    v77 = v188;
    v121 = &v36[v120];
    v80 = v119;
    v75 = v118;
    v76 = v117;
    v79 = v116;
    (v159[0])(v121, 0, 1, v81);
  }

  v122 = (v79 + v193[13]);
  v123 = *v122;
  v124 = v122[1];
  v125 = v163;
  *v163 = v123;
  *(v125 + 1) = v124;
  sub_100012D04(v76, v77, &qword_1003DA110, &qword_10033F230);
  v126 = v190;
  if ((*(v190 + 48))(v77, 1, v75) == 1)
  {

    sub_100008D3C(v76, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v80, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v77, &qword_1003DA110, &qword_10033F230);
    v127 = (v79 + v193[14]);
    v128 = *v127;
    v129 = v127[1];
  }

  else
  {
    v130 = v77;
    v131 = v80;
    v132 = v76;
    v133 = v175;
    (*(v126 + 32))(v175, v130, v75);

    v134 = v176;
    sub_100195ACC(v176);
    v135 = v126;
    v128 = Date.ISO8601Format(_:)();
    v129 = v136;

    v137 = v134;
    v79 = v179;
    (*(v177 + 8))(v137, v178);
    (*(v135 + 8))(v133, v75);
    sub_100008D3C(v132, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v131, &qword_1003D8B60, &unk_10033F210);
  }

  v138 = v164;
  *v164 = v128;
  v138[1] = v129;
  v139 = v79 + v193[15];
  v140 = *v139;
  v141 = *(v139 + 8);
  sub_1000A8824(v79, type metadata accessor for CustodianRecord);
  v142 = v165;
  *v165 = v140;
  v142[8] = v141;
  v143 = v184;
  sub_1000A87BC(v36, v184, type metadata accessor for CustodianRecord);
  v145 = v185;
  v144 = v186;
  v146 = v166;
  (*(v185 + 16))(v166, v167 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v186);
  Dependency.wrappedValue.getter();
  (*(v145 + 8))(v146, v144);
  v147 = sub_1000080F8(v194, v194[3]);
  v148 = v183;
  sub_1000A8638(v168, v183, type metadata accessor for CustodianRecord);
  v149 = (*(v181 + 80) + 16) & ~*(v181 + 80);
  v150 = (v182 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = swift_allocObject();
  sub_1000A87BC(v148, v151 + v149, type metadata accessor for CustodianRecord);
  v152 = (v151 + v150);
  v153 = v192;
  *v152 = v191;
  v152[1] = v153;
  *(v151 + ((v150 + 23) & 0xFFFFFFFFFFFFFFF8)) = v187;
  v154 = *v147;

  sub_10022FCA0(v143, sub_1000A7658, v151);

  sub_1000A8824(v143, type metadata accessor for CustodianRecord);
  return sub_10000839C(v194);
}

void sub_1000A3004(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v54 - v16;
  __chkstk_darwin(v15);
  v19 = v54 - v18;
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAB8);
    sub_1000A8638(a3, v14, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v54[1] = a5;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v23 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v23 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v55);
      *(v23 + 12) = 2080;
      v25 = *(v10 + 24);
      v26 = v25 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1000A8824(v14, type metadata accessor for CustodianshipRecords);
      v30 = sub_10021145C(v27, v29, &v55);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2112;
      v31 = _convertErrorToNSError(_:)();
      *(v23 + 24) = v31;
      *v24 = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - custodian %s failed to check if shared and accepted, assuming accepted for now. Error: %@", v23, 0x20u);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v14, type metadata accessor for CustodianshipRecords);
    }

    v42 = a1;
LABEL_25:
    a4(1, v42);
    return;
  }

  if (a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAB8);
    sub_1000A8638(a3, v19, type metadata accessor for CustodianshipRecords);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v35 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v35 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v55);
      *(v35 + 12) = 2080;
      v36 = *(v10 + 24);
      v37 = v36 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1000A8824(v19, type metadata accessor for CustodianshipRecords);
      v41 = sub_10021145C(v38, v40, &v55);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s - custodian %s is shared and accepted", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v19, type metadata accessor for CustodianshipRecords);
    }

    v42 = 0;
    goto LABEL_25;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100008D04(v43, qword_1003FAAB8);
  sub_1000A8638(a3, v17, type metadata accessor for CustodianshipRecords);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v46 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v46 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v55);
    *(v46 + 12) = 2080;
    v47 = *(v10 + 24);
    v48 = v47 + *(type metadata accessor for CustodianHealthRecord() + 20);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
    v52 = sub_10021145C(v49, v51, &v55);

    *(v46 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s - custodian %s is NOT shared and accepted", v46, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000A8824(v17, type metadata accessor for CustodianshipRecords);
  }

  type metadata accessor for AACustodianError(0);
  v54[2] = -7017;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v53 = v55;
  a4(0, v55);
}

uint64_t sub_1000A38A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v40 = a3;
  v5 = type metadata accessor for CustodianRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v40 - v14);
  sub_100012D04(a1, &v40 - v14, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    sub_1000A8638(a2, v9, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v20 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v41);
      *(v20 + 12) = 2080;
      v22 = *(v5 + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_1000A8824(v9, type metadata accessor for CustodianRecord);
      v26 = sub_10021145C(v23, v25, &v41);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2112;
      v27 = _convertErrorToNSError(_:)();
      *(v20 + 24) = v27;
      *v21 = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - custodian %s name could not be updated. %@", v20, 0x20u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      v28 = sub_1000A8824(v9, type metadata accessor for CustodianRecord);
    }

    v40(v28);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    sub_1000A8638(a2, v11, type metadata accessor for CustodianRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v32 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v41);
      *(v32 + 12) = 2080;
      v33 = *(v5 + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000A8824(v11, type metadata accessor for CustodianRecord);
      v37 = sub_10021145C(v34, v36, &v41);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - custodian %s name has been updated.", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v38 = sub_1000A8824(v11, type metadata accessor for CustodianRecord);
    }

    v40(v38);
    return sub_100008D3C(v15, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000A3EE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for CustodianshipRecords(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v43 - v15);
  sub_100012D04(a1, &v43 - v15, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAB8);
    sub_1000A8638(a2, v10, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v43 = a3;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v21 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v44);
      *(v21 + 12) = 2080;
      v23 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_1000A8824(v10, type metadata accessor for CustodianshipRecords);
      v27 = sub_10021145C(v24, v26, &v44);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2112;
      v28 = _convertErrorToNSError(_:)();
      *(v21 + 24) = v28;
      *v22 = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - custodian %s recordBuildVersion could not be updated. %@", v21, 0x20u);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      v43(v29);
    }

    else
    {

      v40 = sub_1000A8824(v10, type metadata accessor for CustodianshipRecords);
      a3(v40);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    sub_1000A8638(a2, v12, type metadata accessor for CustodianshipRecords);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v43 = a3;
      v33 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v33 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v44);
      *(v33 + 12) = 2080;
      v34 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1000A8824(v12, type metadata accessor for CustodianshipRecords);
      v38 = sub_10021145C(v35, v37, &v44);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - custodian %s recordBuildVersion updated.", v33, 0x16u);
      swift_arrayDestroy();

      v43(v39);
    }

    else
    {

      v42 = sub_1000A8824(v12, type metadata accessor for CustodianshipRecords);
      a3(v42);
    }

    return sub_100008D3C(v16, &unk_1003DB610, &unk_10033FA90);
  }
}

uint64_t sub_1000A452C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v80 = a8;
  v81 = a5;
  v84 = a7;
  v85 = a6;
  v83 = a4;
  v82 = type metadata accessor for UUID();
  v79 = *(v82 - 8);
  v11 = *(v79 + 64);
  v12 = __chkstk_darwin(v82);
  v78 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &v74 - v14;
  v15 = type metadata accessor for CustodianshipRecords(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v74 - v21;
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA88);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v74 = v15;
    v75 = v22;
    v76 = v19;
    v28 = a3;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 67109378;
    *(v29 + 4) = a1 & 1;
    *(v29 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = v31;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    *(v29 + 10) = v31;
    *v30 = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "CRK exists on OT? %{BOOL}d error: %@", v29, 0x12u);
    sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);

    a3 = v28;
    v22 = v75;
    v19 = v76;
    v15 = v74;
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    sub_100008D04(v25, qword_1003FAAB8);
    sub_1000A8638(a3, v24, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v35 = 136315906;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v35 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v86);
      *(v35 + 12) = 2080;
      v37 = *(v15 + 24);
      v38 = v37 + *(type metadata accessor for CustodianHealthRecord() + 20);
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_1000A8824(v24, type metadata accessor for CustodianshipRecords);
      v42 = sub_10021145C(v39, v41, v86);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2112;
      v43 = _convertErrorToNSError(_:)();
      *(v35 + 24) = v43;
      *v36 = v43;
      *(v35 + 32) = 1024;
      *(v35 + 34) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s - Check custodian recovery failed for custodian %s with error: %@ exists: %{BOOL}d", v35, 0x26u);
      sub_100008D3C(v36, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v24, type metadata accessor for CustodianshipRecords);
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v55 = (*(v81 + 104))(v86, ObjectType);
    v57 = v56;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v73 = *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55(v86, 0);
    sub_1002479A8(0, 4u);
    swift_errorRetain();
    v85(a2);
  }

  else
  {
    if (a1)
    {
      v44 = v82;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v25, qword_1003FAAB8);
      sub_1000A8638(a3, v22, type metadata accessor for CustodianshipRecords);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = a3;
        v48 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v48 = 136315650;
        if (qword_1003D7DD8 != -1)
        {
          swift_once();
        }

        *(v48 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v86);
        *(v48 + 12) = 2080;
        v49 = *(type metadata accessor for CustodianRecord() + 20);
        sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        sub_1000A8824(v22, type metadata accessor for CustodianshipRecords);
        v53 = sub_10021145C(v50, v52, v86);

        *(v48 + 14) = v53;
        *(v48 + 22) = 1024;
        *(v48 + 24) = 1;
        _os_log_impl(&_mh_execute_header, v45, v46, "%s - custodian %s check recovery key exists: %{BOOL}d. Ending with success", v48, 0x1Cu);
        swift_arrayDestroy();

        a3 = v47;
      }

      else
      {

        sub_1000A8824(v22, type metadata accessor for CustodianshipRecords);
      }

      v67 = type metadata accessor for CustodianRecord();
      v69 = v78;
      v68 = v79;
      (*(v79 + 16))(v78, a3 + *(v67 + 20), v44);
      swift_beginAccess();
      v70 = v77;
      sub_1002FB030(v77, v69);
      (*(v68 + 8))(v70, v44);
      swift_endAccess();
      v71 = 1;
      v72 = 2;
    }

    else
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v25, qword_1003FAAB8);
      sub_1000A8638(a3, v19, type metadata accessor for CustodianshipRecords);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v61 = 136315650;
        if (qword_1003D7DD8 != -1)
        {
          swift_once();
        }

        *(v61 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v86);
        *(v61 + 12) = 2080;
        v62 = *(type metadata accessor for CustodianRecord() + 20);
        sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_1000A8824(v19, type metadata accessor for CustodianshipRecords);
        v66 = sub_10021145C(v63, v65, v86);

        *(v61 + 14) = v66;
        *(v61 + 22) = 1024;
        *(v61 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "%s - custodian %s check recovery key missing: %{BOOL}d. Ending with failure", v61, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000A8824(v19, type metadata accessor for CustodianshipRecords);
      }

      v71 = 0;
      v72 = 3;
    }

    sub_1002479A8(v71, v72);
    return (v85)(0);
  }
}

uint64_t sub_1000A50B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v38 = a3;
  v5 = type metadata accessor for CustodianRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v38 - v14);
  sub_100012D04(a1, &v38 - v14, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    sub_1000A8638(a2, v9, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v20 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v39);
      *(v20 + 12) = 2080;
      v22 = &v9[*(v5 + 20)];
      v23 = UUID.uuidString.getter();
      v25 = v24;
      sub_1000A8824(v9, type metadata accessor for CustodianRecord);
      v26 = sub_10021145C(v23, v25, &v39);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2112;
      v27 = _convertErrorToNSError(_:)();
      *(v20 + 24) = v27;
      *v21 = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - error processed non reachable custodian %s: %@", v20, 0x20u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v9, type metadata accessor for CustodianRecord);
    }

    swift_errorRetain();
    v38(v16);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAB8);
    sub_1000A8638(a2, v11, type metadata accessor for CustodianRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v31 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v31 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v39);
      *(v31 + 12) = 2080;
      v32 = &v11[*(v5 + 20)];
      v33 = UUID.uuidString.getter();
      v35 = v34;
      sub_1000A8824(v11, type metadata accessor for CustodianRecord);
      v36 = sub_10021145C(v33, v35, &v39);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - successfully processed non reachable custodian %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v11, type metadata accessor for CustodianRecord);
    }

    v38(0);
    return sub_100008D3C(v15, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000A5678()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A56D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_1000A5780;

  return sub_1001B049C(a5);
}

uint64_t sub_1000A5780(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1000A5918;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v7 = sub_1000A58AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000A58AC()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A5918()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A59D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A59E8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A5A54(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[3];

  a1(v1[4]);
  v5 = v1[6];

  return _swift_deallocObject(v1, 56);
}

uint64_t sub_1000A5AC4()
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
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v16 + 8);

  v21 = *(v0 + v17 + 8);

  v22 = *(v0 + v18);

  v23 = *(v0 + v19);

  return _swift_deallocObject(v0, ((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1000A5CF0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_100099EC8(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v10));
}

uint64_t sub_1000A5DD4()
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

  v18 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16);
}

uint64_t sub_1000A6008()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 4);

  v6 = *(v0 + 6);

  v7 = *(v0 + 8);

  v8 = &v0[v2];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v0[v2], v9);
  v11(&v0[v2 + v1[5]], v9);
  v12 = *&v0[v2 + 8 + v1[6]];

  v13 = *&v0[v2 + 8 + v1[7]];

  v14 = *&v0[v2 + 8 + v1[8]];

  v15 = &v0[v2 + v1[10]];
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

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A620C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10009AD28(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4);
}

uint64_t sub_1000A62B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A62F0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v41 = *(*(v1 - 8) + 80);
  v39 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);

  v40 = (v41 + 40) & ~v41;
  v4 = v0 + v40;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v40, v5);
  v8 = type metadata accessor for CustodianRecord();
  v7(v0 + v40 + v8[5], v5);
  v9 = *(v0 + v40 + v8[6] + 8);

  v10 = *(v0 + v40 + v8[7] + 8);

  v11 = *(v0 + v40 + v8[8] + 8);

  v12 = (v0 + v40 + v8[10]);
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

  v38 = v1;
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

  v25 = v4 + *(v38 + 24);
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

  v31 = (v39 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v25 + v26[8]), *(v25 + v26[8] + 8));
  v34 = *(v0 + v31 + 8);

  v35 = *(v0 + v32 + 8);

  v36 = *(v0 + v33 + 8);

  return _swift_deallocObject(v0, ((v33 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1000A66D0(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_10009BAF0(a1, a2, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v9 + 8));
}

void sub_1000A67C0(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  sub_1000A3004(a1, a2 & 1, v2 + v6, v10, v11);
}

uint64_t sub_1000A687C()
{
  v1 = type metadata accessor for CustodianHealthRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
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

  v12 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));
  v13 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_1000A6A1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianHealthRecord() - 8);
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

  return sub_1000A56D4(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_1000A6B60(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000A6B88()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v37 = *(*(v1 - 8) + 80);
  v35 = *(*(v1 - 8) + 64);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();
  v36 = (v37 + 48) & ~v37;
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

uint64_t sub_1000A6F58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = &v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];
  v11 = *v10;
  v12 = *(v10 + 1);

  return a2(a1, v6, v7, v8, v9, &v2[v5], v11, v12);
}

uint64_t sub_1000A7014()
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

uint64_t sub_1000A73F0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = &v3[(*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8];
  v11 = *v10;
  v12 = *(v10 + 1);

  return a3(a1, v7, v8, v9, &v3[v6], v11, v12);
}

uint64_t sub_1000A74B0(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_10009FF00(a1, v1 + v4, v9);
}

uint64_t sub_1000A7564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A75B0()
{
  v1 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_1000A14EC(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_1000A7684()
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

uint64_t sub_1000A7A3C()
{
  v1 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = v0 + v2;
  v9 = *(v0 + 16);
  return sub_1000A1688(v8, *v5, v5[1], v6, v7);
}

uint64_t sub_1000A7AE0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v34 = *(*(v1 - 8) + 80);
  v32 = *(*(v1 - 8) + 64);
  v33 = (v34 + 16) & ~v34;
  v35 = v0;
  v2 = v0 + v33;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v33, v3);
  v6 = type metadata accessor for CustodianRecord();
  v5(v0 + v33 + v6[5], v3);
  v7 = *(v0 + v33 + v6[6] + 8);

  v8 = *(v0 + v33 + v6[7] + 8);

  v9 = *(v0 + v33 + v6[8] + 8);

  v10 = (v0 + v33 + v6[10]);
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

  v23 = v2 + *(v1 + 24);
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

  v29 = (v32 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v23 + v24[8]), *(v23 + v24[8] + 8));
  v30 = *(v35 + v29 + 8);

  return _swift_deallocObject(v35, ((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A7EB0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v40 = *(*(v1 - 8) + 80);
  v38 = *(*(v1 - 8) + 64);
  v39 = (v40 + 16) & ~v40;
  v37 = v0;
  v2 = v0 + v39;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v39, v3);
  v6 = type metadata accessor for CustodianRecord();
  v5(v0 + v39 + v6[5], v3);
  v7 = *(v0 + v39 + v6[6] + 8);

  v8 = *(v0 + v39 + v6[7] + 8);

  v9 = *(v0 + v39 + v6[8] + 8);

  v10 = (v0 + v39 + v6[10]);
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

  v30 = (v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v33 = *(v37 + v30);
  swift_unknownObjectRelease();
  v34 = *(v37 + v31 + 8);

  v35 = *(v37 + v32);

  return _swift_deallocObject(v37, ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A8278(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000A452C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9));
}

uint64_t sub_1000A8350()
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
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v17 + 8);
}

uint64_t sub_1000A8574(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v3 + v7);
  v10 = *(v3 + v8);
  v11 = *v9;
  v12 = v9[1];

  return a3(a1, v3 + v6, v11, v12, v10);
}

uint64_t sub_1000A8638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A86A0()
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

uint64_t sub_1000A87BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A8824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A8884()
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

  v16 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v17 + 8);
}

uint64_t sub_1000A8A84(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v6;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v1 + v8);

  return sub_1000A0F80(a1, v1 + v4, v7, v10);
}

uint64_t sub_1000A8B3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A8B74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000A8BBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CustodianRecoverySessionRecord();
  sub_100012D04(v2 + *(v8 + 48), v7, &qword_1003D8B60, &unk_10033F210);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    (*(v10 + 16))(a1, v2 + *(v8 + 20), v9);
    if (v11(v7, 1, v9) != 1)
    {
      sub_100008D3C(v7, &qword_1003D8B60, &unk_10033F210);
    }
  }

  else
  {
    (*(v10 + 32))(a1, v7, v9);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v15 = 0xD000000000000013;
  v16 = 0x800000010032DCE0;
  sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x6D6F726620;
  v13._object = 0xE500000000000000;
  String.append(_:)(v13);
  sub_1000B613C(v15, v16, type metadata accessor for CustodianRecoverySessionRecord, type metadata accessor for CustodianRecoverySessionRecord, type metadata accessor for CustodianRecoverySessionRecord, sub_1000A90F4);
}

uint64_t sub_1000A8E58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CustodianRecord();
  sub_100012D04(v2 + *(v8 + 64), v7, &qword_1003D8B60, &unk_10033F210);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    (*(v10 + 16))(a1, v2 + *(v8 + 20), v9);
    if (v11(v7, 1, v9) != 1)
    {
      sub_100008D3C(v7, &qword_1003D8B60, &unk_10033F210);
    }
  }

  else
  {
    (*(v10 + 32))(a1, v7, v9);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v15 = 0xD000000000000013;
  v16 = 0x800000010032DCE0;
  sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x6D6F726620;
  v13._object = 0xE500000000000000;
  String.append(_:)(v13);
  sub_1000B613C(v15, v16, type metadata accessor for CustodianRecord, type metadata accessor for CustodianRecord, type metadata accessor for CustodianRecord, sub_1000A92F8);
}

uint64_t sub_1000A94FC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults);
  }

  else
  {
    type metadata accessor for CustodianDefaults();
    v2 = swift_allocObject();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000A9560()
{
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF650, &unk_1003480B0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults) = 0;
  v1 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue;
  *(v0 + v1) = [objc_allocWithZone(NSOperationQueue) init];
  *(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) = 0;
  v2 = (v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
  type metadata accessor for CustodianPreflightHealthCheck();
  sub_100005814(&unk_1003DBB40, &qword_10033FBA8);
  *v2 = String.init<A>(describing:)();
  v2[1] = v3;
  [*(v0 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue) setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t sub_1000A9894(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAD0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(*(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s - started.", v13, 0xCu);
    sub_10000839C(v14);
  }

  sub_1000B6E00(v5, v5, a3, a4, a1, a2);
}

void sub_1000A9A58(int a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v37 = a1;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  if (a2)
  {
    v36 = a7;
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAD0);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = a5;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34 = a4;
      v24 = v23;
      v40[0] = v23;
      *v20 = 136315394;
      *(v20 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v40);
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - Error while dismissing Custodian Review follow up items. Error: %@", v20, 0x16u);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
      a5 = v35;

      sub_10000839C(v24);
      a4 = v34;
    }

    else
    {
    }

    a7 = v36;
  }

  (*(v13 + 16))(v16, a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  v26 = [*(*sub_1000080F8(v40 v40[3]) + 16)];
  sub_10000839C(v40);
  if (v26)
  {
    sub_1000A9F40(v38, a7, v37 & 1, a4, a5);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAD0);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = a4;
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v40);
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - not logged in to AppleAccount, unable to Preflight", v30, 0xCu);
      sub_10000839C(v32);
      a4 = v31;
    }

    type metadata accessor for AACustodianError(0);
    v39 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000BC2E0(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v26 = v40[0];
    a4(v40[0]);
  }
}

uint64_t sub_1000A9F40(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a5;
  v36 = a4;
  v35 = a3;
  v34 = a1;
  v40 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v40);
  v11 = &v33 - v10;
  v39 = type metadata accessor for URL();
  v37 = *(v39 - 8);
  v12 = *(v37 + 64);
  v13 = __chkstk_darwin(v39);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  (*(v19 + 16))(&v33 - v21, v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage, v18);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v22, v18);
  v23 = sub_1000080F8(v42, v42[3]);
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  *(v24 + 24) = v35;
  *(v24 + 32) = v34;
  *(v24 + 40) = a2;
  v25 = v38;
  *(v24 + 48) = v36;
  *(v24 + 56) = v25;
  v26 = sub_1000080F8((*v23 + 16), *(*v23 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v27 = *(v37 + 8);
  v28 = v15;
  v29 = v39;
  v27(v28, v39);
  v30 = v40;
  (*(v8 + 16))(v11, *v26 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v40);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v30);
  v31 = *sub_1000080F8(v41, v41[3]);
  sub_1000324D8(v17, sub_1000BCBDC, v24);

  v27(v17, v29);
  sub_10000839C(v41);
  return sub_10000839C(v42);
}

uint64_t sub_1000AA314(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v43 = a5;
  v44 = a3;
  v42 = a4;
  v13 = type metadata accessor for CustodianRecord();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v20 = &v39 - v19;
  if (a2)
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAD0);
    v22 = v44;

    sub_1000BCBF4(a1, 1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = a7;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v25 = 136315394;
      *(v25 + 4) = sub_10021145C(*(v22 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v22 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v46);
      *(v25 + 12) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v25 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - error fetching custodian records: %@", v25, 0x16u);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
      a7 = v26;

      sub_10000839C(v28);
    }

    return a7(a1);
  }

  else
  {
    v39 = a6;
    v40 = a7;
    v41 = a8;
    v31 = *(a1 + 16);
    if (v31)
    {
      v32 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v33 = *(v18 + 72);
      v34 = a1 + v32;
      v35 = _swiftEmptyArrayStorage;
      v45 = v32;
      do
      {
        sub_1000BCC60(v34, v20, type metadata accessor for CustodianRecord);
        if ((*&v20[*(v13 + 36)] - 1) > 2)
        {
          sub_1000BCCC8(v20, type metadata accessor for CustodianRecord);
        }

        else
        {
          sub_1000B6748(v20, v17, type metadata accessor for CustodianRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0288(0, v35[2] + 1, 1);
            v32 = v45;
            v35 = v46;
          }

          v38 = v35[2];
          v37 = v35[3];
          if (v38 >= v37 >> 1)
          {
            sub_1002E0288(v37 > 1, v38 + 1, 1);
            v32 = v45;
            v35 = v46;
          }

          v35[2] = v38 + 1;
          sub_1000B6748(v17, v35 + v32 + v38 * v33, type metadata accessor for CustodianRecord);
        }

        v34 += v33;
        --v31;
      }

      while (v31);
    }

    else
    {
      v35 = _swiftEmptyArrayStorage;
    }

    sub_1000AA8AC(v35, v42 & 1, v43, v39, v40, v41);
  }
}

uint64_t sub_1000AA710(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAD0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0xD00000000000001ELL;
    }

    else
    {
      v11 = 0xD000000000000026;
    }

    if (a1)
    {
      v12 = "s Custodian Review CFU";
    }

    else
    {
      v12 = "DismissCustodianReviewCFU";
    }

    v13 = sub_10021145C(v11, v12 | 0x8000000000000000, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000839C(v10);
  }

  return a3(a1 & 1, a2);
}

uint64_t sub_1000AA8AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v63 = a6;
  v60 = a5;
  v64 = a4;
  v72 = a3;
  v61 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CustodianRecord();
  v13 = *(v68 - 1);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v68);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  type metadata accessor for PartialErrorHandler();
  swift_allocObject();
  v59 = sub_10031FD1C();
  v20 = swift_allocObject();
  v21 = sub_100308DB4(_swiftEmptyArrayStorage);
  v58 = v20;
  *(v20 + 16) = v21;
  v22 = *(a1 + 16);
  v62 = a1;
  if (v22)
  {
    v69 = v17;
    v56 = v19;
    v71 = v6;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002E0370(0, v22, 0);
    v23 = aBlock[0];
    v24 = *(v13 + 80);
    v55 = ~v24;
    v70 = v24;
    v25 = a1 + ((v24 + 32) & ~v24);
    v73 = *(v13 + 72);
    v66 = v10 + 32;
    v67 = (v10 + 16);
    v26 = v25;
    v27 = v22;
    v28 = v57;
    do
    {
      v29 = v10;
      v30 = v69;
      sub_1000BCC60(v26, v69, type metadata accessor for CustodianRecord);
      (*v67)(v28, v30 + v68[5], v9);
      sub_1000BCCC8(v30, type metadata accessor for CustodianRecord);
      aBlock[0] = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1002E0370(v31 > 1, v32 + 1, 1);
        v23 = aBlock[0];
      }

      *(v23 + 16) = v32 + 1;
      v10 = v29;
      (*(v29 + 32))(v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, v28, v9);
      v26 += v73;
      --v27;
    }

    while (v27);
    v33 = sub_1002E20C0(v23);

    v34 = *(v33 + 16);

    v7 = v71;
    *(v71 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) = v34;
    v68 = *(v7 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue);
    v35 = v64;
    v66 = (v65 + ((v70 + 24) & v55) + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = ((v70 + 24) & v55);
    v65 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = v59;
    v38 = v58;
    v39 = v56;
    v40 = v69;
    do
    {
      sub_1000BCC60(v25, v39, type metadata accessor for CustodianRecord);
      sub_1000BCC60(v39, v40, type metadata accessor for CustodianRecord);
      v41 = swift_allocObject();
      *(v41 + 16) = v7;
      sub_1000B6748(v40, v67 + v41, type metadata accessor for CustodianRecord);
      v42 = (v41 + v66);
      *v42 = v72;
      v42[1] = v35;
      *(v41 + v65) = v37;
      *(v41 + v36) = v38;
      v43 = type metadata accessor for AsyncOperation();
      v44 = objc_allocWithZone(v43);
      v44[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v45 = &v44[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v45 = sub_1000BC164;
      v45[1] = v41;
      v75.receiver = v44;
      v75.super_class = v43;
      v7 = v71;

      v46 = objc_msgSendSuper2(&v75, "init");
      [v68 addOperation:v46];

      sub_1000BCCC8(v39, type metadata accessor for CustodianRecord);
      v25 += v73;
      --v22;
    }

    while (v22);
  }

  else
  {
    v47 = sub_1002E20C0(_swiftEmptyArrayStorage);

    v48 = *(v47 + 16);

    *(v7 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) = v48;
    v37 = v59;
    v38 = v58;
    v35 = v64;
  }

  v49 = *(v7 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_queue);
  v50 = swift_allocObject();
  *(v50 + 16) = v7;
  *(v50 + 24) = v38;
  v51 = v60;
  *(v50 + 32) = v37;
  *(v50 + 40) = v51;
  v52 = v62;
  *(v50 + 48) = v63;
  *(v50 + 56) = v52;
  *(v50 + 64) = v61 & 1;
  *(v50 + 72) = v72;
  *(v50 + 80) = v35;
  aBlock[4] = sub_1000BC290;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A7968;
  v53 = _Block_copy(aBlock);

  [v49 addBarrierBlock:v53];
  _Block_release(v53);
}

uint64_t sub_1000AAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a2;
  v65 = a8;
  v63 = a7;
  v68 = a5;
  v69 = a6;
  v60 = a1;
  v67 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v62 = *(v67 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin(v67);
  v61 = &v54 - v11;
  v12 = type metadata accessor for CustodianRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = __chkstk_darwin(v12);
  v66 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v59 = &v54 - v17;
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAD0);
  v21 = a4;
  sub_1000BCC60(a4, v19, type metadata accessor for CustodianRecord);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v57 = v12;
  v58 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v55 = v13;
    v70[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v70);
    *(v25 + 12) = 2080;
    v27 = *(v12 + 20);
    type metadata accessor for UUID();
    sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    sub_1000BCCC8(v19, type metadata accessor for CustodianRecord);
    v31 = sub_10021145C(v28, v30, v70);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s - Starting Custodian Preflight Activity for %s", v25, 0x16u);
    swift_arrayDestroy();
    v13 = v55;
  }

  else
  {

    sub_1000BCCC8(v19, type metadata accessor for CustodianRecord);
  }

  v56 = v21;
  v32 = v59;
  sub_1000BCC60(v21, v59, type metadata accessor for CustodianRecord);
  v33 = *(v13 + 80);
  v34 = (v33 + 24) & ~v33;
  v35 = (v14 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v54 = v14;
  *(v36 + 16) = v63;
  v55 = type metadata accessor for CustodianRecord;
  sub_1000B6748(v32, v36 + v34, type metadata accessor for CustodianRecord);
  *(v36 + v35) = v65;
  v37 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  v38 = v61;
  v39 = v64;
  *v37 = v60;
  v37[1] = v39;
  v40 = v62;
  v41 = v58;
  v42 = v67;
  (*(v62 + 16))(v38, v58 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage, v67);

  Dependency.wrappedValue.getter();
  (*(v40 + 8))(v38, v42);
  v43 = sub_1000080F8(v70, v70[3]);
  v44 = v56;
  v45 = *(v57 + 20);
  v46 = v66;
  sub_1000BCC60(v56, v66, type metadata accessor for CustodianRecord);
  v47 = (v33 + 56) & ~v33;
  v48 = swift_allocObject();
  v49 = v68;
  v50 = v69;
  v48[2] = v41;
  v48[3] = v49;
  v48[4] = v50;
  v48[5] = sub_1000BC5B8;
  v48[6] = v36;
  sub_1000B6748(v46, v48 + v47, v55);
  v51 = *v43;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1000BC858;
  *(v52 + 24) = v48;

  sub_10001DDA4(v44 + v45, sub_1000BCD28, v52);

  return sub_10000839C(v70);
}

uint64_t sub_1000AB528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v35 = a5;
  v11 = type metadata accessor for CustodianRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  if (a1)
  {
    v15 = (a3 + *(v14 + 24));
    v16 = v15[1];
    v37 = *v15;
    v38 = v16;
    v17 = v14;
    swift_errorRetain();

    v18._countAndFlagsBits = 58;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = a3 + *(v17 + 20);
    v20._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v20);

    v21 = v37;
    v22 = v38;
    sub_1000BCC60(a3, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
    v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a1;
    v24[4] = a4;
    sub_1000B6748(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for CustodianRecord);
    v25 = (v24 + ((v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = v35;
    v25[1] = a6;
    swift_errorRetain();

    sub_10031F174(v21, v22, a1, sub_1000BCADC, v24);
  }

  else
  {
    v27 = a3 + *(v14 + 20);
    v28 = UUID.uuidString.getter();
    v30 = v29;
    swift_beginAccess();
    v31 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1002CF5EC(1, v28, v30, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v36;
    v33 = swift_endAccess();
    return v35(v33);
  }
}

uint64_t sub_1000AB7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = a3 + 16;
  swift_beginAccess();
  v10 = *(a1 + 24);
  v13[2] = a2;
  v13[3] = v9;
  v13[4] = a4;

  sub_10001CE30(sub_1000BCB74, v13, v10);

  return a5(v11);
}

uint64_t sub_1000AB868(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  swift_getErrorValue();
  v6 = v17;
  if (qword_1003D7E38 != -1)
  {
    swift_once();
    v6 = v17;
  }

  if (sub_100255F78(qword_1003FA950, v6))
  {
    goto LABEL_7;
  }

  swift_getErrorValue();
  v7 = v16;
  if (qword_1003D7E40 != -1)
  {
    swift_once();
    v7 = v16;
  }

  result = sub_100255F78(qword_1003FA958, v7);
  if (result)
  {
LABEL_7:
    v9 = a4 + *(type metadata accessor for CustodianRecord() + 20);
    v10 = UUID.uuidString.getter();
    v12 = v11;
    swift_beginAccess();
    v13 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a3;
    *a3 = 0x8000000000000000;
    sub_1002CF5EC(0, v10, v12, isUniquelyReferenced_nonNull_native);

    *a3 = v15;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000ABA00(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, void *a8, uint64_t a9)
{
  LODWORD(v10) = a7;
  v188 = a6;
  v185 = a4;
  v186 = a5;
  v14 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v171 = &v165 - v17;
  v18 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v173 = *(v18 - 8);
  v174 = v18;
  v19 = *(v173 + 64);
  __chkstk_darwin(v18);
  v172 = &v165 - v20;
  v21 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v179 = *(v21 - 8);
  v180 = v21;
  v22 = *(v179 + 64);
  __chkstk_darwin(v21);
  v178 = &v165 - v23;
  v24 = sub_1000A94FC();
  v25 = sub_100071328(v24);

  v187 = a1;
  v26 = *(a1 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck____lazy_storage___custodianDefaults);
  swift_beginAccess();
  v181 = a2;
  v27 = *(a2 + 16);

  sub_1000717B0(v28);

  swift_beginAccess();
  if (!*(*(a3 + 24) + 16))
  {

    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAAD0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Overall Custodian Preflight activity successful.", v55, 2u);
    }

    v56 = v185;
    v57 = v186;
    return sub_10031F804(v56, v57);
  }

  v175 = v25;
  if (qword_1003D7F50 == -1)
  {
    goto LABEL_3;
  }

LABEL_123:
  swift_once();
LABEL_3:
  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAD0);

  v182 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = os_log_type_enabled(v31, v32);
  v170 = a8;
  v169 = v10;
  v167 = v15;
  v168 = v14;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v189[0] = v35;
    *v34 = 136315138;
    v36 = *(a3 + 24);

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v15 = Dictionary.description.getter();
    v38 = v37;

    a8 = sub_10021145C(v15, v38, v189);

    *(v34 + 4) = a8;
    _os_log_impl(&_mh_execute_header, v31, v32, "Overall Custodian Preflight activity failed: %s", v34, 0xCu);
    sub_10000839C(v35);
  }

  v166 = a9;
  v183 = a3;
  v39 = *(a3 + 24);
  v40 = 1 << *(v39 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v14 = v41 & *(v39 + 64);
  a3 = (v40 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  for (i = _swiftEmptyArrayStorage; v14; i[v15 + 4] = v44)
  {
LABEL_12:
    v44 = *(*(v39 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
    swift_errorRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1003062A8(0, i[2] + 1, 1, i);
    }

    v15 = i[2];
    v45 = i[3];
    a8 = (v15 + 1);
    if (v15 >= v45 >> 1)
    {
      i = sub_1003062A8((v45 > 1), v15 + 1, 1, i);
    }

    v14 &= v14 - 1;
    i[2] = a8;
  }

  while (1)
  {
    v43 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v43 >= a3)
    {
      break;
    }

    v14 = *(v39 + 64 + 8 * v43);
    ++v10;
    if (v14)
    {
      v10 = v43;
      goto LABEL_12;
    }
  }

  v46 = i[2];
  if (v46)
  {
    a3 = (i + 4);
    v177 = v46 - 1;
    v184 = _swiftEmptyArrayStorage;
    v15 = &unk_1003FA000;
    v14 = 0;
    while (v14 < i[2])
    {
      v10 = *(a3 + 8 * v14);
      swift_getErrorValue();
      v47 = v194;
      a8 = v195;
      swift_errorRetain();
      if (qword_1003D7E38 != -1)
      {
        swift_once();
      }

      if (sub_100255F78(qword_1003FA950, v47))
      {
        v48 = v184;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v189[0] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E03B4(0, *(v48 + 16) + 1, 1);
          v48 = v189[0];
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        a8 = (v51 + 1);
        if (v51 >= v50 >> 1)
        {
          sub_1002E03B4((v50 > 1), v51 + 1, 1);
          v48 = v189[0];
        }

        *(v48 + 16) = a8;
        v184 = v48;
        *(v48 + 8 * v51 + 32) = v10;
        if (v177 == v14)
        {
          goto LABEL_38;
        }

        ++v14;
      }

      else
      {
        ++v14;

        if (v46 == v14)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_120;
  }

  v184 = _swiftEmptyArrayStorage;
LABEL_38:

  v177 = v184[2];

  v58 = *(v183 + 24);
  v59 = 1 << *(v58 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v14 = v60 & *(v58 + 64);
  a3 = (v59 + 63) >> 6;
  v61 = *(v183 + 24);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v62 = _swiftEmptyArrayStorage;
  if (v14)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v63 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_119;
    }

    if (v63 >= a3)
    {
      break;
    }

    v14 = *(v58 + 64 + 8 * v63);
    ++v10;
    if (v14)
    {
      v10 = v63;
      do
      {
LABEL_45:
        v64 = *(*(v58 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
        swift_errorRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1003062A8(0, v62[2] + 1, 1, v62);
        }

        v15 = v62[2];
        v65 = v62[3];
        a8 = (v15 + 1);
        if (v15 >= v65 >> 1)
        {
          v62 = sub_1003062A8((v65 > 1), v15 + 1, 1, v62);
        }

        v14 &= v14 - 1;
        v62[2] = a8;
        v62[v15 + 4] = v64;
      }

      while (v14);
    }
  }

  v66 = v62[2];
  if (v66)
  {
    a3 = (v62 + 4);
    v176 = v66 - 1;
    v184 = _swiftEmptyArrayStorage;
    v15 = &unk_1003FA000;
    v14 = 0;
    while (v14 < v62[2])
    {
      v10 = *(a3 + 8 * v14);
      swift_getErrorValue();
      a8 = v193;
      swift_errorRetain();
      if (qword_1003D7E40 != -1)
      {
        swift_once();
      }

      if (sub_100255F78(qword_1003FA958, a8))
      {
        v67 = v184;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v189[0] = v67;
        if ((v68 & 1) == 0)
        {
          sub_1002E03B4(0, *(v67 + 16) + 1, 1);
          v67 = v189[0];
        }

        v70 = *(v67 + 16);
        v69 = *(v67 + 24);
        a8 = (v70 + 1);
        if (v70 >= v69 >> 1)
        {
          sub_1002E03B4((v69 > 1), v70 + 1, 1);
          v67 = v189[0];
        }

        *(v67 + 16) = a8;
        v184 = v67;
        *(v67 + 8 * v70 + 32) = v10;
        if (v176 == v14)
        {
          goto LABEL_66;
        }

        ++v14;
      }

      else
      {
        ++v14;

        if (v66 == v14)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_121;
  }

  v184 = _swiftEmptyArrayStorage;
LABEL_66:

  v71 = v184[2];
  v72 = v177 | v71;

  if (!v72)
  {

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    v92 = os_log_type_enabled(v90, v91);
    v94 = v185;
    v93 = v186;
    if (v92)
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "No Error 32 or 34 found. Not posting repair transparency CFU, Not triggering TTR. Ending preflight.", v95, 2u);
    }

    v56 = v94;
    v57 = v93;
    return sub_10031F804(v56, v57);
  }

  v165 = v71;
  v73 = v181;
  swift_beginAccess();
  v74 = *(v73 + 16);

  v76 = 0;
  v77 = sub_1000B6894(v75);

  v14 = v77 + 64;
  v78 = 1 << *(v77 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v10 = v79 & *(v77 + 64);
  a3 = (v78 + 63) >> 6;
  v184 = v77;

  v80 = 0;
  a8 = _swiftEmptyArrayStorage;
  for (j = v187; v10; v76 = v176)
  {
LABEL_76:
    while (1)
    {
      v83 = (v184[6] + ((v80 << 10) | (16 * __clz(__rbit64(v10)))));
      v15 = *v83;
      v84 = v83[1];
      v10 &= v10 - 1;
      v189[0] = *v83;
      v189[1] = v84;

      if (sub_1000ACE44(v189, v188, j))
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_72;
      }
    }

    v85 = swift_isUniquelyReferenced_nonNull_native();
    v192 = a8;
    v176 = v76;
    if ((v85 & 1) == 0)
    {
      sub_1002E0224(0, a8[2] + 1, 1);
      j = v187;
      a8 = v192;
    }

    v86 = a8;
    v87 = a8[2];
    v88 = v86[3];
    if (v87 >= v88 >> 1)
    {
      sub_1002E0224((v88 > 1), v87 + 1, 1);
      j = v187;
      v86 = v192;
    }

    v86[2] = v87 + 1;
    v89 = &v86[2 * v87];
    v89[4] = v15;
    v89[5] = v84;
    a8 = v86;
  }

  while (1)
  {
LABEL_72:
    v82 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      goto LABEL_122;
    }

    if (v82 >= a3)
    {
      break;
    }

    v10 = *(v14 + 8 * v82);
    ++v80;
    if (v10)
    {
      v80 = v82;
      goto LABEL_76;
    }
  }

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.info.getter();

  v98 = a8;
  if (os_log_type_enabled(v96, v97))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v189[0] = v100;
    *v99 = 136315138;
    v101 = v98;
    v102 = Array.description.getter();
    v104 = sub_10021145C(v102, v103, v189);

    *(v99 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v96, v97, "Repair Eligible Custodian UUIDs: %s", v99, 0xCu);
    sub_10000839C(v100);
  }

  else
  {
    v101 = a8;
  }

  v105 = v185;
  v106 = v186;
  v107 = v175;
  v109 = v179;
  v108 = v180;
  v110 = v178;
  v111 = v187;
  (*(v179 + 16))(v178, v187 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider, v180);
  Dependency.wrappedValue.getter();
  (*(v109 + 8))(v110, v108);
  LODWORD(v110) = [objc_opt_self() canRepairCustodian];
  sub_10000839C(v189);
  if (!v110)
  {
    goto LABEL_102;
  }

  v112 = v172;
  v113 = v173;
  v114 = v111 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__accountStore;
  v115 = v174;
  (*(v173 + 16))(v172, v114, v174);
  Dependency.wrappedValue.getter();
  (*(v113 + 8))(v112, v115);
  v188 = [*(*sub_1000080F8(v189 v190) + 16)];
  if (!v188)
  {

    sub_10000839C(v189);
    goto LABEL_103;
  }

  sub_10000839C(v189);
  if (!v101[2])
  {

LABEL_102:

LABEL_103:
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&_mh_execute_header, v132, v133, "Untrusted CRK Repair is not enabled. Continuing to TTR.", v134, 2u);
    }

    v135 = v181;
    swift_beginAccess();
    v136 = *(v135 + 16);

    v138 = sub_1000AECE0(v137, v107);

    if ((v138 & 1) != 0 && sub_1000B7D84())
    {
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&_mh_execute_header, v139, v140, "Preflight TTR is not available after 18.1", v141, 2u);
      }

      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v142, v143))
      {
        goto LABEL_114;
      }

      v144 = swift_slowAlloc();
      *v144 = 67109120;
      _os_log_impl(&_mh_execute_header, v142, v143, "Skipping Custodian Preflight TTR: isWithInTTRFrequency:%{BOOL}d", v144, 8u);
    }

    else
    {
      v142 = Logger.logObject.getter();
      v145 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v142, v145))
      {
LABEL_114:

        v56 = v105;
        v57 = v106;
        return sub_10031F804(v56, v57);
      }

      v146 = v165 != 0;
      v147 = v177 != 0;
      v148 = swift_slowAlloc();
      *v148 = 67109632;
      *(v148 + 4) = v138 & 1;
      *(v148 + 8) = 1024;
      *(v148 + 10) = v147;
      *(v148 + 14) = 1024;
      *(v148 + 16) = v146;
      _os_log_impl(&_mh_execute_header, v142, v145, "Skipping Custodian Preflight TTR: hasAtLeastOneNewInvalidCRK:%{BOOL}d,\nhasOctagonMissingKeysError:%{BOOL}d,\nhasOctagonUntrustedKeysError:%{BOOL}d", v148, 0x14u);
    }

    goto LABEL_114;
  }

  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v189[0] = v119;
    *v118 = 136315138;
    v120 = Array.description.getter();
    v122 = sub_10021145C(v120, v121, v189);

    *(v118 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v116, v117, "Trying to post RC Repair Transparency CFU %s", v118, 0xCu);
    sub_10000839C(v119);
  }

  v123 = v168;
  v124 = v101[2];
  if (v124)
  {
    v189[0] = _swiftEmptyArrayStorage;
    sub_1002E0224(0, v124, 0);
    v125 = v189[0];
    v184 = v101;
    v126 = v101 + 5;
    do
    {
      v128 = *(v126 - 1);
      v127 = *v126;
      v189[0] = v125;
      v130 = v125[2];
      v129 = v125[3];

      if (v130 >= v129 >> 1)
      {
        sub_1002E0224((v129 > 1), v130 + 1, 1);
        v125 = v189[0];
      }

      v125[2] = v130 + 1;
      v131 = &v125[2 * v130];
      v131[4] = v128;
      v131[5] = v127;
      v126 += 2;
      --v124;
    }

    while (v124);
  }

  else
  {

    v125 = _swiftEmptyArrayStorage;
  }

  v150 = v167;
  v151 = v187;
  v152 = v171;
  (*(v167 + 16))(v171, v187 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__followUpController, v123);
  Dependency.wrappedValue.getter();
  (*(v150 + 8))(v152, v123);
  v153 = v190;
  v154 = v191;
  v184 = sub_1000080F8(v189, v190);
  v182 = AAFollowUpIdentifierCustodianReview;
  sub_100005814(&qword_1003DBB50, &unk_10033FC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  v156 = AAFollowUpTrustedContactIDs;
  v192 = AAFollowUpTrustedContactIDs;
  type metadata accessor for AAFollowUpUserInfo(0);
  sub_1000BC2E0(&qword_1003D8430, type metadata accessor for AAFollowUpUserInfo);
  v157 = v156;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  *(inited + 72) = v125;
  v158 = sub_100308EB0(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DBB58, &qword_10033FC20);
  v159 = swift_allocObject();
  *(v159 + 16) = v183;
  *(v159 + 24) = v169 & 1;
  v160 = v170;
  *(v159 + 32) = v151;
  *(v159 + 40) = v160;
  v161 = v185;
  v162 = v186;
  *(v159 + 48) = v166;
  *(v159 + 56) = v161;
  *(v159 + 64) = v162;
  v163 = *(v154 + 16);

  v164 = v188;
  v163(v182, v188, v158, sub_1000BC378, v159, v153, v154);

  return sub_10000839C(v189);
}

uint64_t sub_1000ACE44(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v65 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v67 = *(v65 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v65);
  v64 = &v61 - v6;
  v7 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v61 - v11;
  v12 = type metadata accessor for CustodianRecord();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v72 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = *(a2 + 16);
  v61 = v16;
  if (v19)
  {
    v21 = *a1;
    v20 = a1[1];
    v22 = *(v16 + 72);
    v68 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v23 = a2 + v68;
    v24 = _swiftEmptyArrayStorage;
    v69 = v12;
    v70 = v21;
    while (1)
    {
      sub_1000BCC60(v23, v18, type metadata accessor for CustodianRecord);
      v25 = &v18[*(v12 + 20)];
      if (UUID.uuidString.getter() == v21 && v26 == v20)
      {
        break;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_12;
      }

      sub_1000BCCC8(v18, type metadata accessor for CustodianRecord);
LABEL_4:
      v23 += v22;
      --v19;
      v21 = v70;
      if (!v19)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    sub_1000B6748(v18, v72, type metadata accessor for CustodianRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002E0288(0, v24[2] + 1, 1);
      v24 = v71[0];
    }

    v31 = v24[2];
    v30 = v24[3];
    if (v31 >= v30 >> 1)
    {
      sub_1002E0288(v30 > 1, v31 + 1, 1);
      v24 = v71[0];
    }

    v24[2] = v31 + 1;
    sub_1000B6748(v72, v24 + v68 + v31 * v22, type metadata accessor for CustodianRecord);
    v12 = v69;
    goto LABEL_4;
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_18:
  v32 = v66;
  if (v24[2])
  {
    v33 = v61;
    sub_1000BCC60(v24 + ((*(v61 + 80) + 32) & ~*(v61 + 80)), v66, type metadata accessor for CustodianRecord);
    v34 = 0;
    v35 = v63;
  }

  else
  {
    v34 = 1;
    v35 = v63;
    v33 = v61;
  }

  (*(v33 + 56))(v32, v34, 1, v12);
  v36 = v32;
  v37 = v62;
  sub_100012D04(v36, v62, &unk_1003DF000, &unk_10033EC50);
  if ((*(v33 + 48))(v37, 1, v12) == 1)
  {
    sub_100008D3C(v37, &unk_1003DF000, &unk_10033EC50);
    v38 = v67;
  }

  else
  {
    v39 = v37 + *(v12 + 60);
    v40 = *v39;
    v41 = *(v39 + 8);
    sub_1000BCCC8(v37, type metadata accessor for CustodianRecord);
    v38 = v67;
    if (v41 != 1)
    {
      goto LABEL_25;
    }
  }

  v40 = 0;
LABEL_25:
  v42 = OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider;
  v44 = v64;
  v43 = v65;
  v70 = *(v38 + 16);
  v70(v64, v35 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__urlBagProvider, v65);
  Dependency.wrappedValue.getter();
  v45 = *(v38 + 8);
  v67 = v38 + 8;
  v45(v44, v43);
  v46 = objc_opt_self();
  v47 = [v46 maxRepairCount];
  sub_10000839C(v71);
  v72 = v40;
  v49 = v47 > 0 && v40 < v47;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100008D04(v50, qword_1003FAAD0);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    LODWORD(v69) = v49;
    v54 = v35;
    v55 = v53;
    *v53 = 134218496;
    *(v53 + 4) = v72;
    *(v53 + 12) = 2048;
    v56 = v54 + v42;
    v57 = v64;
    v58 = v65;
    v70(v64, v56, v65);
    Dependency.wrappedValue.getter();
    v45(v57, v58);
    v59 = [v46 maxRepairCount];
    sub_10000839C(v71);
    *(v55 + 14) = v59;
    v49 = v69;

    *(v55 + 22) = 1024;
    *(v55 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v51, v52, "CK repairCount %lu <  IdMS maxRepairCount %ld = %{BOOL}d", v55, 0x1Cu);
  }

  else
  {
  }

  sub_100008D3C(v66, &unk_1003DF000, &unk_10033EC50);
  return v49;
}

uint64_t sub_1000AD4EC(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAD0);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 67109378;
    *(v17 + 4) = a1 & 1;
    *(v17 + 8) = 2112;
    if (a2)
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

    *(v17 + 10) = v19;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "Posted RC Repair Transparency CFU: %{BOOL}d error: %@", v17, 0x12u);
    sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
  }

  v34 = _swiftEmptyArrayStorage;
  if (a2)
  {
    swift_errorRetain();
    v21 = sub_1003062A8(0, 1, 1, _swiftEmptyArrayStorage);
    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1003062A8((v22 > 1), v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    v21[v23 + 4] = a2;
    v34 = v21;
  }

  swift_beginAccess();
  v24 = *(a3 + 24);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = sub_100306DE8(v25, 0);
    v27 = sub_1002FD388(&v33, v26 + 4, v25, v24);

    result = sub_10005A1DC();
    if (v27 != v25)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  sub_10028BCB4(v26);
  v29 = v34;
  if ((a4 & 1) != 0 || (a1 & 1) == 0)
  {

    return sub_10031F804(a8, a9);
  }

  else
  {

    sub_1000B7E34(v29, a6, a7, a5, a3, a8, a9);
  }
}

uint64_t sub_1000AD82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v40 = a4;
  v38 = a3;
  v37 = type metadata accessor for CustodianRecord();
  v11 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v36 - v20);
  sub_100012D04(a1, &v36 - v20, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = a5;
    v22 = *v21;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAD0);
    sub_1000BCC60(v39, v13, type metadata accessor for CustodianRecord);

    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v41);
      *(v26 + 12) = 2080;
      v28 = *(v37 + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_1000BCCC8(v13, type metadata accessor for CustodianRecord);
      v32 = sub_10021145C(v29, v31, &v41);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2112;
      v33 = _convertErrorToNSError(_:)();
      *(v26 + 24) = v33;
      *v27 = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s - error fetching health check record for %s: %@", v26, 0x20u);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v13, type metadata accessor for CustodianRecord);
    }

    v35 = v40;
    swift_errorRetain();
    v35(v22);
  }

  else
  {
    sub_1000B6748(v21, v17, type metadata accessor for CustodianshipRecords);
    sub_1000AFAE4(v17, v38, v40, a5, a6);
    return sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_1000ADCA0(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void), uint64_t a9, uint64_t a10)
{
  v71 = a7;
  v72 = a1;
  v15 = type metadata accessor for CustodianshipRecords(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v68 - v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a4;
  v24[5] = a2;
  v24[6] = a3;

  v25 = a4;
  swift_errorRetain();
  sub_1000BCD5C(0, 0, v22, &unk_10033FBC8, v24);

  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v70 = a9;
    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAD0);

    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v29 = 136315650;
      *(v29 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v73);
      *(v29 + 12) = 2080;
      v69 = a8;
      if (v72 > 3u)
      {
        v45 = 0x800000010032DD20;
        v46 = 0xD00000000000001ALL;
        if (v72 != 6)
        {
          v46 = 0xD000000000000015;
          v45 = 0x800000010032DD00;
        }

        v47 = 0xD00000000000001BLL;
        if (v72 == 4)
        {
          v47 = 0x725064656C696166;
          v48 = 0xEF746867696C6665;
        }

        else
        {
          v48 = 0x800000010032DD40;
        }

        if (v72 <= 5u)
        {
          v34 = v47;
        }

        else
        {
          v34 = v46;
        }

        if (v72 <= 5u)
        {
          v35 = v48;
        }

        else
        {
          v35 = v45;
        }
      }

      else
      {
        v31 = 0xEF6572756C696146;
        v32 = 0x6146726961706572;
        v33 = 0xEC00000064656C69;
        if (v72 != 2)
        {
          v32 = 0xD000000000000010;
          v33 = 0x800000010032DD60;
        }

        if (v72)
        {
          v31 = 0xED0000726F727265;
        }

        if (v72 <= 1u)
        {
          v34 = 0x4B52436B63656863;
        }

        else
        {
          v34 = v32;
        }

        if (v72 <= 1u)
        {
          v35 = v31;
        }

        else
        {
          v35 = v33;
        }
      }

      v49 = sub_10021145C(v34, v35, v73);

      *(v29 + 14) = v49;
      *(v29 + 22) = 2112;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 24) = v50;
      *v30 = v50;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - Ending with failure due to %s %@", v29, 0x20u);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a8 = v69;
    }

    else
    {
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v52 = (*(a6 + 32))(v73, ObjectType, a6);
    v54 = v53;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v66 = a8;
      v67 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      a8 = v66;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v52(v73, 0);
    sub_10024ADEC(0);
    swift_errorRetain();
    a8(a2);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAD0);
    sub_1000BCC60(a10, v18, type metadata accessor for CustodianshipRecords);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v39 = 136315650;
      *(v39 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v73);
      *(v39 + 12) = 2080;
      if (v72 > 3u)
      {
        v56 = 0x800000010032DD20;
        v57 = 0xD00000000000001ALL;
        if (v72 != 6)
        {
          v57 = 0xD000000000000015;
          v56 = 0x800000010032DD00;
        }

        v58 = 0xD00000000000001BLL;
        if (v72 == 4)
        {
          v58 = 0x725064656C696166;
          v59 = 0xEF746867696C6665;
        }

        else
        {
          v59 = 0x800000010032DD40;
        }

        if (v72 <= 5u)
        {
          v43 = v58;
        }

        else
        {
          v43 = v57;
        }

        if (v72 <= 5u)
        {
          v44 = v59;
        }

        else
        {
          v44 = v56;
        }
      }

      else
      {
        v40 = 0xEF6572756C696146;
        v41 = 0x6146726961706572;
        v42 = 0xEC00000064656C69;
        if (v72 != 2)
        {
          v41 = 0xD000000000000010;
          v42 = 0x800000010032DD60;
        }

        if (v72)
        {
          v40 = 0xED0000726F727265;
        }

        if (v72 <= 1u)
        {
          v43 = 0x4B52436B63656863;
        }

        else
        {
          v43 = v41;
        }

        if (v72 <= 1u)
        {
          v44 = v40;
        }

        else
        {
          v44 = v42;
        }
      }

      v60 = sub_10021145C(v43, v44, v73);

      *(v39 + 14) = v60;
      *(v39 + 22) = 2080;
      v61 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      sub_1000BCCC8(v18, type metadata accessor for CustodianshipRecords);
      v65 = sub_10021145C(v62, v64, v73);

      *(v39 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s - Ending with success due to %s for custodian %s", v39, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v18, type metadata accessor for CustodianshipRecords);
    }

    sub_10024ADEC(1);
    return (a8)(0);
  }
}

uint64_t sub_1000AE5AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v53 - v15;
  if (a1)
  {
    v56 = a4;
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_100008D04(v17, qword_1003FAAD0);
    sub_1000BCC60(a3, v16, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v55 = a3;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v54 = a5;
      v23 = v22;
      v24 = swift_slowAlloc();
      v53[1] = v18;
      v25 = v24;
      v57 = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v57);
      *(v23 + 12) = 2080;
      v26 = *(v10 + 24);
      v27 = v26 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
      v31 = sub_10021145C(v28, v30, &v57);

      *(v23 + 14) = v31;
      *(v23 + 22) = 2112;
      v32 = _convertErrorToNSError(_:)();
      *(v23 + 24) = v32;
      *v25 = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - Preflight Custodian Recovery failed for custodian %s with error: %@", v23, 0x20u);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a5 = v54;
    }

    else
    {

      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
    }

    v44 = sub_1000B7D84();
    v45 = v56;
    if (!v44 || *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) != 1)
    {
      swift_errorRetain();
      v45(4, a1);
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = a5;
      v50 = swift_slowAlloc();
      v57 = v50;
      *v48 = 136315138;
      *(v48 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v57);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s - Owner is an ADP user, with only one custodian failing preflight.", v48, 0xCu);
      sub_10000839C(v50);
      a5 = v49;
    }

    v51 = swift_allocObject();
    v51[2] = v45;
    v51[3] = a5;
    v51[4] = a1;
    swift_errorRetain();

    sub_1000B2D34(v55, sub_1000BACF8, v51);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAD0);
    sub_1000BCC60(a3, v14, type metadata accessor for CustodianshipRecords);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v55 = a3;
      v37 = v36;
      v57 = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v57);
      *(v37 + 12) = 2080;
      v38 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      v39 = a4;
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
      v43 = sub_10021145C(v40, v42, &v57);
      a4 = v39;

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - Preflight Custodian Recovery successful for custodian %s", v37, 0x16u);
      swift_arrayDestroy();

      a3 = v55;
    }

    else
    {

      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
    }

    sub_1000B9A7C(a3, a2, a4, a5);
  }
}

uint64_t sub_1000AECE0(uint64_t a1, uint64_t a2)
{
  if (qword_1003D7F50 != -1)
  {
LABEL_46:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "hasAtLeastOneNewInvalidCRK was called.", v5, 2u);
  }

  v63 = 0;

  v7 = sub_1002DF678(v6);
  v8 = sub_1000CE940(a1, v7);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = v59;
  v54 = v8;
  v55 = v59 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName;
  v13 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = v18[1];
    v57 = *v18;
    v20 = *(*(a2 + 56) + v17);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_10021145C(*v55, *(v55 + 8), v62);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_10021145C(v57, v19, v62);
      *(v23 + 22) = 1024;
      *(v23 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s Past Key: %s Bool: %{BOOL}d", v23, 0x1Cu);
      swift_arrayDestroy();

      v12 = v59;
    }

    v14 = v15;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 64);
  v56 = v12 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName;
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  while (v26)
  {
    v29 = v28;
LABEL_24:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(a1 + 48) + 16 * v31);
    v33 = v32[1];
    v58 = *v32;
    v34 = *(*(a1 + 56) + v31);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v37 = 136315650;
      *(v37 + 4) = sub_10021145C(*v56, *(v56 + 8), v62);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_10021145C(v58, v33, v62);
      *(v37 + 22) = 1024;
      *(v37 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Current Key: %s Bool: %{BOOL}d", v37, 0x1Cu);
      swift_arrayDestroy();
    }

    v28 = v29;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_44;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(a1 + 64 + 8 * v29);
    ++v28;
    if (v26)
    {
      goto LABEL_24;
    }
  }

  if (*(v54 + 16))
  {
    v38 = 1 << *(v54 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v54 + 56);
    v41 = (v38 + 63) >> 6;

    v42 = 0;
    while (v40)
    {
      v43 = v42;
LABEL_35:
      v44 = (*(v54 + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v40)))));
      v45 = v44[1];
      v40 &= v40 - 1;
      v62[0] = *v44;
      v62[1] = v45;

      sub_1000AF418(v62, a2, a1, &v63);
    }

    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_45;
      }

      if (v43 >= v41)
      {

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v62[0] = v49;
          *v48 = 136315394;
          *(v48 + 4) = sub_10021145C(*(v59 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v59 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v62);
          *(v48 + 12) = 1024;
          swift_beginAccess();
          *(v48 + 14) = v63;
          _os_log_impl(&_mh_execute_header, v46, v47, "%s hasAtLeastOneNewInvalidCRK: Returning %{BOOL}d.", v48, 0x12u);
          sub_10000839C(v49);
        }

        swift_beginAccess();
        return v63;
      }

      v40 = *(v54 + 56 + 8 * v43);
      ++v42;
      if (v40)
      {
        v42 = v43;
        goto LABEL_35;
      }
    }
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "hasAtLeastOneNewInvalidCRK: Intersection set between old / new Preflight results is empty. Returning true.", v53, 2u);
  }

  return 1;
}

void sub_1000AF418(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *a1;
  v5 = a1[1];
  if (!*(a2 + 16) || (v9 = sub_1003084DC(*a1, v5), (v10 & 1) == 0))
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAD0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10021145C(v6, v5, &v41);
      _os_log_impl(&_mh_execute_header, v26, v27, "No old Preflight results for uuid: %s exist", v28, 0xCu);
      sub_10000839C(v29);
    }

    if (!*(a3 + 16))
    {
      return;
    }

    v30 = sub_1003084DC(v6, v5);
    if (v31 & 1) == 0 || (*(*(a3 + 56) + v30))
    {
      return;
    }

    v19 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v19, v32))
    {
      goto LABEL_28;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(v6, v5, &v41);
    v35 = "Preflight result for uuid: %s, are bad. This could possibly be the first bad preflight result.";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v19, v32, v35, v33, 0xCu);
    sub_10000839C(v34);

LABEL_27:

    goto LABEL_28;
  }

  if (!*(a3 + 16) || (v11 = *(*(a2 + 56) + v9), v12 = sub_1003084DC(v6, v5), (v13 & 1) == 0))
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAD0);

    v19 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v19, v32))
    {
      goto LABEL_28;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(v6, v5, &v41);
    v35 = "Preflight results for uuid: %s not present";
    goto LABEL_26;
  }

  v40 = *(*(a3 + 56) + v12);
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAD0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v39 = v11;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_10021145C(v6, v5, &v41);
    *(v17 + 12) = 1024;
    *(v17 + 14) = v39;
    *(v17 + 18) = 1024;
    *(v17 + 20) = v40;
    _os_log_impl(&_mh_execute_header, v15, v16, "Preflight result for uuid: %s,\npreviously successful? %{BOOL}d,\ncurrently successful? %{BOOL}d", v17, 0x18u);
    sub_10000839C(v18);

    v11 = v39;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  if (!v11)
  {
    if (v40)
    {
      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10021145C(v6, v5, &v41);
      v24 = "Preflight result for uuid: %s, transitioning from bad to good";
    }

    else
    {
      if (!v21)
      {
        goto LABEL_28;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10021145C(v6, v5, &v41);
      v24 = "Preflight results for uuid: %s, transitioning from bad to bad. Not triggering TTR.";
    }

    goto LABEL_38;
  }

  if (v40)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10021145C(v6, v5, &v41);
      v24 = "Preflight results for uuid: %s, is same as before";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v19, v20, v24, v22, 0xCu);
      sub_10000839C(v23);

      goto LABEL_27;
    }

LABEL_28:

    return;
  }

  if (v21)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10021145C(v6, v5, &v41);
    _os_log_impl(&_mh_execute_header, v19, v20, "Preflight result for uuid: %s, transitioning from good to bad", v37, 0xCu);
    sub_10000839C(v38);
  }

  *a4 = 1;
}

void sub_1000AFAE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v70 = a5;
  v71 = a4;
  v68 = a3;
  v69 = a2;
  v8 = type metadata accessor for CustodianshipRecords(0);
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v14 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v63 - v17;
  v19 = type metadata accessor for CustodianRecord();
  if ((*(a1 + v19[9]) - 1) > 2)
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008D04(v53, qword_1003FAAD0);
    sub_1000BCC60(a1, v11, type metadata accessor for CustodianshipRecords);

    v54 = Logger.logObject.getter();
    v55 = v6;
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v56))
    {
      v57 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_10021145C(*(v55 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v55 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v72);
      *(v57 + 12) = 2080;
      v58 = v19[5];
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_1000BCCC8(v11, type metadata accessor for CustodianshipRecords);
      v62 = sub_10021145C(v59, v61, v72);

      *(v57 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v54, v56, "%s - custodian %s does not require a health check, ending check early.", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v11, type metadata accessor for CustodianshipRecords);
    }

    v71(0);
  }

  else
  {
    (*(v15 + 16))(v18, v6 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__analyticsEventFactory, v14);
    Dependency.wrappedValue.getter();
    (*(v15 + 8))(v18, v14);
    v20 = a1 + *(v8 + 24);
    v21 = v20 + *(type metadata accessor for CustodianHealthRecord() + 40);
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = objc_allocWithZone(type metadata accessor for CustodianPreflightEvent());
    v25 = sub_10024ACD0(v22, v23);
    sub_10000839C(v72);
    v26 = (a1 + v19[13]);
    v27 = *v26;
    v28 = v26[1];
    v29 = (v25 + qword_1003E3EC8);
    v30 = *(v25 + qword_1003E3EC8 + 8);
    *v29 = v27;
    v29[1] = v28;

    v31 = a1 + v19[15];
    v32 = *v31;
    LOBYTE(v31) = *(v31 + 8);
    v65 = v25;
    v66 = a1;
    v33 = v25 + qword_1003E3ED0;
    *v33 = v32;
    *(v33 + 8) = v31;
    v34 = (a1 + v19[14]);
    v36 = *v34;
    v35 = v34[1];
    v37 = (v25 + qword_1003E3ED8);
    v38 = *(v25 + qword_1003E3ED8 + 8);
    *v37 = v36;
    v37[1] = v35;

    v39 = v68;
    v64 = sub_1000B47B0(v69, v68, v27, v28);
    sub_1000BCC60(a1, v13, type metadata accessor for CustodianshipRecords);
    v40 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v41 = (v9 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = v70;
    v45 = swift_allocObject();
    *(v45 + 16) = v6;
    sub_1000B6748(v13, v45 + v40, type metadata accessor for CustodianshipRecords);
    v46 = (v45 + v41);
    *v46 = v69;
    v46[1] = v39;
    v47 = (v45 + v42);
    v48 = v64;
    v49 = v65;
    *v47 = v65;
    v47[1] = &off_1003B0ED0;
    *(v45 + v43) = v48;
    v50 = (v45 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v50 = v71;
    v50[1] = v44;
    v51 = v48;

    v52 = v49;
    sub_1000B8600(v66, v52, sub_1000B67B0, v45, v6);
  }
}

uint64_t sub_1000B0100(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  v56 = a6;
  v57 = a8;
  v55 = a5;
  v58 = a10;
  v59 = a11;
  v16 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for CustodianshipRecords(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000BCC60(a4, &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v24 = (*(v21 + 80) + 72) & ~*(v21 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a9;
    v27 = v57;
    v26 = v58;
    *(v25 + 32) = a7;
    *(v25 + 40) = v27;
    *(v25 + 48) = 0;
    v28 = v59;
    *(v25 + 56) = v26;
    *(v25 + 64) = v28;
    sub_1000B6748(v23, v25 + v24, type metadata accessor for CustodianshipRecords);
    v29 = a9;
    swift_unknownObjectRetain();

    sub_1000B946C(a4, sub_1000BAC0C, v25);
  }

  else
  {
    v52 = a9;
    v53 = a3;
    v54 = a7;
    if (a2)
    {
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v33 = v52;
      v32 = v53;
      v31[4] = v52;
      v31[5] = a2;
      v31[6] = v32;
      swift_errorRetain();
      swift_errorRetain();
      v34 = v33;

      swift_errorRetain();
      sub_1000BCD5C(0, 0, v19, &unk_10033FBC0, v31);

      sub_10024ADEC(0);
      v58(a2);
    }

    v51 = a4;
    sub_1000BCC60(a4, &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v36 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v37 = (v22 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = v59;
    v41 = swift_allocObject();
    *(v41 + 16) = v53;
    sub_1000B6748(v23, v41 + v36, type metadata accessor for CustodianshipRecords);
    v42 = (v41 + v37);
    v43 = v56;
    *v42 = v55;
    v42[1] = v43;
    v44 = v52;
    *(v41 + v38) = v52;
    v45 = (v41 + v39);
    v47 = v57;
    v46 = v58;
    *v45 = v54;
    v45[1] = v47;
    v48 = (v41 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v48 = v46;
    v48[1] = v40;
    v49 = v44;
    swift_unknownObjectRetain();

    sub_1000BA330(v51, sub_1000B939C, v41);
  }
}

uint64_t sub_1000B04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v81 = a7;
  v82 = a8;
  v76 = a4;
  v77 = a3;
  v79 = a6;
  v80 = a10;
  v78 = a9;
  v13 = type metadata accessor for CustodianshipRecords(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v72 - v23;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAD0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v81;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v83[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v83);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s Error repairing CRK.", v30, 0xCu);
      sub_10000839C(v31);
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v33 = (*(v82 + 32))(v83, ObjectType);
    v35 = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v71 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v81;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v33(v83, 0);
    if (sub_1000B7D84() && *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_uniqueCustodianCount) == 1)
    {

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v83[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v83);
        _os_log_impl(&_mh_execute_header, v36, v37, "%s - Owner is an ADP user, with only one custodian with missing CRK and attempt to repair failed. Attempting to mark custodian as not reachable.", v38, 0xCu);
        sub_10000839C(v39);
      }

      v40 = swift_allocObject();
      v41 = v79;
      v42 = v80;
      v40[2] = a2;
      v40[3] = v41;
      v43 = v82;
      v40[4] = v29;
      v40[5] = v43;
      v40[6] = v78;
      v40[7] = v42;
      v40[8] = a1;
      swift_errorRetain();
      v44 = v41;
      swift_unknownObjectRetain();

      sub_1000B2D34(v77, sub_1000BBA2C, v40);
    }

    else
    {

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v83[0] = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v83);
        _os_log_impl(&_mh_execute_header, v46, v47, "%s - Ending preflight.", v48, 0xCu);
        sub_10000839C(v49);
      }

      v50 = type metadata accessor for TaskPriority();
      (*(*(v50 - 8) + 56))(v24, 1, 1, v50);
      v51 = swift_allocObject();
      v51[2] = 0;
      v51[3] = 0;
      v52 = v79;
      v51[4] = v79;
      v51[5] = a1;
      v51[6] = a2;
      swift_errorRetain();
      swift_errorRetain();
      v53 = v52;

      sub_1000BCD5C(0, 0, v24, &unk_10033FBD8, v51);

      sub_10024ADEC(0);
      v78(a1);
    }
  }

  else
  {
    v74 = v14;
    v75 = a5;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100008D04(v54, qword_1003FAAD0);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v83[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v83);
      _os_log_impl(&_mh_execute_header, v55, v56, "%s CRK repair successful. Proceeding to refetch records to preflight", v57, 0xCu);
      sub_10000839C(v58);
    }

    (*(v17 + 16))(v20, a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__custodianStorage, v16);
    Dependency.wrappedValue.getter();
    (*(v17 + 8))(v20, v16);
    v59 = sub_1000080F8(v83, v83[3]);
    v73 = *(type metadata accessor for CustodianRecord() + 20);
    v60 = v77;
    sub_1000BCC60(v77, &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v61 = (*(v74 + 80) + 80) & ~*(v74 + 80);
    v62 = swift_allocObject();
    v64 = v75;
    v63 = v76;
    v62[2] = a2;
    v62[3] = v63;
    v66 = v79;
    v65 = v80;
    v62[4] = v64;
    v62[5] = v66;
    v67 = v82;
    v62[6] = v81;
    v62[7] = v67;
    v62[8] = v78;
    v62[9] = v65;
    sub_1000B6748(&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v62 + v61, type metadata accessor for CustodianshipRecords);
    v68 = *v59;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1000BB954;
    *(v69 + 24) = v62;
    v70 = v66;
    swift_unknownObjectRetain();

    sub_10001DDA4(v60 + v73, sub_100094D34, v69);

    return sub_10000839C(v83);
  }
}

uint64_t sub_1000B0E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t), uint64_t a10)
{
  v52 = a6;
  v53 = a8;
  v49 = a7;
  v50 = a5;
  v12 = type metadata accessor for CustodianshipRecords(0);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v47 - v16;
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v47 - v22);
  sub_100012D04(a1, &v47 - v22, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAD0);
    v26 = v51;
    sub_1000BCC60(a10, v51, type metadata accessor for CustodianshipRecords);

    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v29 = 136315650;
      *(v29 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v54);
      *(v29 + 12) = 2080;
      v31 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1000BCCC8(v26, type metadata accessor for CustodianshipRecords);
      v35 = sub_10021145C(v32, v34, &v54);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2112;
      v36 = _convertErrorToNSError(_:)();
      *(v29 + 24) = v36;
      *v30 = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - error fetching health check record for %s: %@", v29, 0x20u);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v26, type metadata accessor for CustodianshipRecords);
    }

    v46 = v53;
    swift_errorRetain();
    v46(v24);
  }

  else
  {
    sub_1000B6748(v23, v19, type metadata accessor for CustodianshipRecords);
    sub_1000BCC60(v19, v17, type metadata accessor for CustodianshipRecords);
    v37 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v38 = (v13 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v40 = v50;
    *(v39 + 16) = a2;
    *(v39 + 24) = v40;
    sub_1000B6748(v17, v39 + v37, type metadata accessor for CustodianshipRecords);
    v41 = (v39 + v38);
    v42 = v49;
    *v41 = v52;
    v41[1] = v42;
    v43 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v43 = v53;
    v43[1] = a9;
    v44 = v40;
    swift_unknownObjectRetain();

    sub_1000B946C(v19, sub_1000BBE00, v39);

    return sub_1000BCCC8(v19, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_1000B13A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v52 = a9;
  v53 = a8;
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  v21 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v52 - v23;
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a4;
  v26[5] = a2;
  v26[6] = a3;

  v27 = a4;
  swift_errorRetain();
  sub_1000BCD5C(0, 0, v24, &unk_10033FBF8, v26);

  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAD0);
    sub_1000BCC60(a5, v20, type metadata accessor for CustodianshipRecords);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v54);
      *(v31 + 12) = 2080;
      v32 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1000BCCC8(v20, type metadata accessor for CustodianshipRecords);
      v36 = sub_10021145C(v33, v35, v54);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - Ending with failed preflight after a repair for custodian %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v20, type metadata accessor for CustodianshipRecords);
    }

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v47 = (*(a7 + 32))(v54, ObjectType, a7);
    v49 = v48;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v51 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v47(v54, 0);
    sub_10024ADEC(0);
    swift_errorRetain();
    v53(a2);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAD0);
    sub_1000BCC60(a5, v18, type metadata accessor for CustodianshipRecords);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v54);
      *(v40 + 12) = 2080;
      v41 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      sub_1000BCCC8(v18, type metadata accessor for CustodianshipRecords);
      v45 = sub_10021145C(v42, v44, v54);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s - Ending with successful preflight after repair for custodian %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v18, type metadata accessor for CustodianshipRecords);
    }

    sub_10024ADEC(1);
    return (v53)(0);
  }
}

uint64_t sub_1000B1A98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v47 = a4;
  v15 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v45 - v17;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAD0);
    swift_errorRetain();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v45[1] = a7;
    v46 = a6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v48);
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s Mark as not reachable after failed CRK repair resulted in error %@. Ending preflight.", v23, 0x16u);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v25);
    }

    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a3;
    v28[5] = a1;
    v28[6] = a2;
    swift_errorRetain();
    swift_errorRetain();
    v29 = a3;

    sub_1000BCD5C(0, 0, v18, &unk_10033FBE8, v28);

    ObjectType = swift_getObjectType();
    _convertErrorToNSError(_:)();
    v31 = (*(a5 + 32))(v48, ObjectType, a5);
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v44 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31(v48, 0);
    sub_10024ADEC(0);
    v46(a1);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAD0);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = a6;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v48);
      _os_log_impl(&_mh_execute_header, v36, v37, "%s Successfully marked custodian as not reachable after failed CRK repair. Stopping preflight.", v39, 0xCu);
      sub_10000839C(v40);

      a6 = v38;
    }

    v41 = type metadata accessor for TaskPriority();
    (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = a3;
    v42[5] = a8;
    v42[6] = a2;
    v43 = a3;

    swift_errorRetain();
    sub_1000BCD5C(0, 0, v18, &unk_10033FBE0, v42);

    sub_10024ADEC(0);
    return (a6)(a8);
  }
}

uint64_t sub_1000B2048(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t), uint64_t a8)
{
  v56 = a8;
  v57 = a7;
  v54 = a5;
  v55 = a6;
  v58 = a1;
  v11 = type metadata accessor for CustodianshipRecords(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAD0);

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v52 = a4;
    v53 = v11;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v59[0] = v23;
    *v21 = 136315650;
    *(v21 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v59);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v58 & 1;
    *(v21 + 18) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v21 + 20) = v24;
    *v22 = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s CRK exists on OT? %{BOOL}d error: %@", v21, 0x1Cu);
    sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v23);

    a4 = v52;
    v11 = v53;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!a2)
    {
LABEL_15:
      sub_1000BCC60(a4, v15, type metadata accessor for CustodianshipRecords);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v59[0] = swift_slowAlloc();
        *v43 = 136315650;
        *(v43 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v59);
        *(v43 + 12) = 2080;
        v44 = *(type metadata accessor for CustodianRecord() + 20);
        type metadata accessor for UUID();
        sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
        v48 = sub_10021145C(v45, v47, v59);

        *(v43 + 14) = v48;
        *(v43 + 22) = 1024;
        *(v43 + 24) = v58 & 1;
        _os_log_impl(&_mh_execute_header, v41, v42, "%s - custodian %s check recovery key exists: %{BOOL}d", v43, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000BCCC8(v15, type metadata accessor for CustodianshipRecords);
      }

      return v57(v58 & 1, a2);
    }
  }

  sub_1000BCC60(a4, v17, type metadata accessor for CustodianshipRecords);

  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v28 = 136315906;
    *(v28 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v59);
    *(v28 + 12) = 2080;
    v30 = *(v11 + 24);
    v31 = v30 + *(type metadata accessor for CustodianHealthRecord() + 20);
    type metadata accessor for UUID();
    sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
    v35 = sub_10021145C(v32, v34, v59);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2112;
    v36 = _convertErrorToNSError(_:)();
    *(v28 + 24) = v36;
    *v29 = v36;
    *(v28 + 32) = 1024;
    *(v28 + 34) = v58 & 1;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s - Check custodian recovery failed for custodian %s with error: %@ exists: %{BOOL}d", v28, 0x26u);
    sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {

    sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
  }

  ObjectType = swift_getObjectType();
  _convertErrorToNSError(_:)();
  v38 = (*(v55 + 32))(v59, ObjectType);
  v40 = v39;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v50 = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v38(v59, 0);

  return v57(v58 & 1, a2);
}

uint64_t sub_1000B27A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAD0);
    sub_1000BCC60(a3, v16, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = a5;
      v40 = v22;
      *v20 = 136315650;
      *(v20 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v40);
      *(v20 + 12) = 2080;
      v23 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
      v27 = sub_10021145C(v24, v26, &v40);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2112;
      v28 = _convertErrorToNSError(_:)();
      *(v20 + 24) = v28;
      *v21 = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - error repairing recovery keys for %s: %@.", v20, 0x20u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
    }

    swift_errorRetain();
    a4(a1);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAD0);
    sub_1000BCC60(a3, v14, type metadata accessor for CustodianshipRecords);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v40);
      *(v32 + 12) = 2080;
      v33 = *(type metadata accessor for CustodianRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
      v37 = sub_10021145C(v34, v36, &v40);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - recovery key repair was successful for %s.", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
    }

    return (a4)(0);
  }
}

uint64_t sub_1000B2D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v6 = type metadata accessor for CustodianRecord();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6 - 8);
  v40 = v8;
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CustodianshipRecords(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAD0);
  v44 = a1;
  sub_1000BCC60(a1, v17, type metadata accessor for CustodianshipRecords);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45[0] = v38;
    *v21 = 136315394;
    *(v21 + 4) = sub_10021145C(*(v3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(v3 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), v45);
    *(v21 + 12) = 2080;
    v22 = *(v14 + 24);
    v23 = v22 + *(type metadata accessor for CustodianHealthRecord() + 20);
    type metadata accessor for UUID();
    sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
    v27 = sub_10021145C(v24, v26, v45);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - marking custodian %s as Not reachable.", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000BCCC8(v17, type metadata accessor for CustodianshipRecords);
  }

  (*(v10 + 16))(v13, v4 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck__storageController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v28 = sub_1000080F8(v45, v45[3]);
  v29 = v44;
  v30 = v41;
  sub_1000BCC60(v44, v41, type metadata accessor for CustodianRecord);
  v31 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v32 = (v40 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v4;
  sub_1000B6748(v30, v33 + v31, type metadata accessor for CustodianRecord);
  *(v33 + v32) = 3;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v43;
  *v34 = v42;
  v34[1] = v35;
  v36 = *v28;

  sub_10030C118(v29, 0, sub_1000B6368, v33, v36, 3);

  return sub_10000839C(v45);
}

uint64_t sub_1000B3234(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  if (a1)
  {
    v43 = a5;
    swift_errorRetain();
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAD0);
    sub_1000BCC60(a3, v16, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v44);
      *(v21 + 12) = 2080;
      v23 = *(v10 + 24);
      v24 = v23 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
      v28 = sub_10021145C(v25, v27, &v44);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v21 + 24) = v29;
      *v22 = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - failed to mark custodian %s as accepted. Error: %@", v21, 0x20u);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a4 = v42;
    }

    else
    {

      sub_1000BCCC8(v16, type metadata accessor for CustodianshipRecords);
    }

    swift_errorRetain();
    a4(a1);
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAD0);
    sub_1000BCC60(a3, v14, type metadata accessor for CustodianshipRecords);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8), &v44);
      *(v33 + 12) = 2080;
      v34 = *(v10 + 24);
      v35 = v34 + *(type metadata accessor for CustodianHealthRecord() + 20);
      type metadata accessor for UUID();
      sub_1000BC2E0(&qword_1003D9150, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
      v39 = sub_10021145C(v36, v38, &v44);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - successfully marked custodian %s as accepted.", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000BCCC8(v14, type metadata accessor for CustodianshipRecords);
    }

    return (a4)(0);
  }
}

uint64_t sub_1000B37DC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a2;
  v5 = type metadata accessor for Date.ISO8601FormatStyle();
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  __chkstk_darwin(v5);
  v132 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v149 = *(v8 - 8);
  v9 = *(v149 + 64);
  __chkstk_darwin(v8);
  v131 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v130 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v147 = (&v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v20 = &v126 - v19;
  v21 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v143 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v126 - v25;
  v27 = type metadata accessor for CustodianRecord();
  v28 = *(*(v27 - 1) + 64);
  __chkstk_darwin(v27);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BCC60(a1, v30, type metadata accessor for CustodianRecord);
  v31 = v12[7];
  v148 = v26;
  v31(v26, 1, 1, v11);
  v32 = *(v149 + 56);
  v141 = v20;
  v142 = v8;
  v32(v20, 1, 1, v8);
  v33 = (a3 + v27[7]);
  *v33 = 0;
  v33[1] = 0;
  v135 = v33;
  v34 = (a3 + v27[8]);
  *v34 = 0;
  v34[1] = 0;
  v136 = v34;
  v35 = (a3 + v27[13]);
  *v35 = 0;
  v35[1] = 0;
  v138 = v35;
  v36 = (a3 + v27[14]);
  *v36 = 0;
  v36[1] = 0;
  v139 = v36;
  v37 = a3 + v27[15];
  *v37 = 0;
  v140 = v37;
  *(v37 + 8) = 1;
  v137 = v27[16];
  v129 = v12 + 7;
  v128 = v31;
  v31((a3 + v137), 1, 1, v11);
  v146 = v12;
  v38 = v12[2];
  v38(a3, v30, v11);
  v39 = v27[5];
  v144 = v11;
  v38(a3 + v39, &v30[v39], v11);
  v40 = v27[11];
  v41 = *&v30[v40];
  v42 = *&v30[v40 + 8];
  v43 = (a3 + v40);
  *v43 = v41;
  v43[1] = v42;
  v44 = v27[6];
  v45 = *&v30[v44];
  v46 = *&v30[v44 + 8];
  v47 = (a3 + v44);
  *v47 = v45;
  v47[1] = v46;
  *(a3 + v27[9]) = v145;
  v48 = v27[10];
  v50 = *&v30[v48];
  v49 = *&v30[v48 + 8];
  v51 = (a3 + v48);
  *v51 = v50;
  v51[1] = v49;
  v52 = v27[12];
  v145 = v30;
  *(a3 + v52) = v30[v52];
  v53 = type metadata accessor for ContactsHelper();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  sub_100015D6C(v41, v42);
  sub_100052704(v50, v49);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v56 = v150;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v56 contactForHandle:v57];

  swift_unknownObjectRelease();
  if (!v58)
  {

    sub_1000EF4CC();
    v62 = 0;
    v64 = v142;
LABEL_18:
    v65 = v144;
    v67 = v145;
    goto LABEL_22;
  }

  v59 = objc_allocWithZone(AALocalContactInfo);
  v60 = v58;
  v61 = String._bridgeToObjectiveC()();
  v62 = [v59 initWithHandle:v61 contact:v60];

  v63 = sub_1000EF4CC();
  v64 = v142;
  v65 = v144;
  if ((v63 & 1) == 0)
  {
    v67 = v145;
    goto LABEL_22;
  }

  v67 = v145;
  v66 = v146;
  v68 = v147;
  if (!v62)
  {
LABEL_24:
    v90 = (v67 + v27[7]);
    v91 = *v90;
    v92 = v90[1];
    v93 = v135;
    *v135 = v91;
    v93[1] = v92;
    v94 = (v67 + v27[8]);
    v96 = *v94;
    v95 = v94[1];
    v97 = v136;
    *v136 = v96;
    v97[1] = v95;

    v87 = v143;
    goto LABEL_25;
  }

  v62 = v62;
  v69 = [v62 firstName];
  if (!v69)
  {

    goto LABEL_24;
  }

  v70 = v69;
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = sub_1002576F0(v71, v73);
  v76 = v75;

  if (!v76)
  {
LABEL_22:
    v68 = v147;
    goto LABEL_23;
  }

  v62 = v62;
  v77 = [v62 lastName];
  if (!v77)
  {

    goto LABEL_22;
  }

  v78 = v77;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = sub_1002576F0(v79, v81);
  v84 = v83;

  if (!v84)
  {

    goto LABEL_18;
  }

  v127 = v82;
  v65 = v144;
  v85 = &v145[v27[7]];
  v86 = *(v85 + 1);
  v68 = v147;
  v87 = v143;
  if (v86 && (*v85 == v74 && v86 == v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v88 = &v145[v27[8]], (v89 = *(v88 + 1)) != 0) && (*v88 == v127 && v89 == v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v67 = v145;
LABEL_23:
    v66 = v146;
    goto LABEL_24;
  }

  v125 = v135;
  v124 = v136;
  *v135 = v74;
  v125[1] = v76;
  *v124 = v127;
  v124[1] = v84;
  v67 = v145;
  v66 = v146;
LABEL_25:
  sub_100012D04(v148, v87, &qword_1003D8B60, &unk_10033F210);
  if ((v66[6])(v87, 1, v65) == 1)
  {
    sub_100008D3C(v87, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v67 + v27[16], a3 + v137);
  }

  else
  {
    v98 = v66[4];
    v99 = v130;
    v98(v130, v87, v65);
    v147 = v27;
    v100 = v67;
    v101 = v68;
    v102 = v62;
    v103 = v64;
    v104 = v137;
    sub_100008D3C(a3 + v137, &qword_1003D8B60, &unk_10033F210);
    v98((a3 + v104), v99, v65);
    v105 = (a3 + v104);
    v64 = v103;
    v62 = v102;
    v68 = v101;
    v67 = v100;
    v27 = v147;
    v128(v105, 0, 1, v65);
  }

  v106 = (v67 + v27[13]);
  v107 = *v106;
  v108 = v106[1];
  v109 = v138;
  *v138 = v107;
  v109[1] = v108;
  v110 = v141;
  sub_100012D04(v141, v68, &qword_1003DA110, &qword_10033F230);
  v111 = v149;
  if ((*(v149 + 48))(v68, 1, v64) == 1)
  {

    sub_100008D3C(v110, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v148, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v68, &qword_1003DA110, &qword_10033F230);
    v112 = (v67 + v27[14]);
    v113 = *v112;
    v114 = v112[1];
  }

  else
  {
    v115 = v131;
    (*(v111 + 32))(v131, v68, v64);

    v116 = v132;
    sub_100195ACC(v132);
    v113 = Date.ISO8601Format(_:)();
    v114 = v117;

    (*(v133 + 8))(v116, v134);
    (*(v111 + 8))(v115, v64);
    sub_100008D3C(v110, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v148, &qword_1003D8B60, &unk_10033F210);
  }

  v118 = v139;
  *v139 = v113;
  v118[1] = v114;
  v119 = v67 + v27[15];
  v120 = *v119;
  v121 = *(v119 + 8);
  result = sub_1000BCCC8(v67, type metadata accessor for CustodianRecord);
  v123 = v140;
  *v140 = v120;
  *(v123 + 8) = v121;
  return result;
}