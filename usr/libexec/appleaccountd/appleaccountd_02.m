uint64_t sub_1000421D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t))
{
  v70 = a6;
  v71 = a7;
  v63 = a4;
  v64 = a5;
  v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v68 = &v62 - v11;
  v12 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v67 = &v62 - v14;
  v15 = type metadata accessor for CustodianRecord();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v66 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v18;
  __chkstk_darwin(v17);
  v69 = &v62 - v19;
  v20 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v62 - v22);
  v24 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v62 - v27;
  if (a2)
  {
    sub_1000D2734(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v25 + 16))(v28, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v24);
    Dependency.wrappedValue.getter();

    (*(v25 + 8))(v28, v24);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_100012D04(a1, v23, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v23;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA88);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to save custodianship records. Abandoning custodian setup.", v34, 2u);
    }

    v35 = type metadata accessor for UUID();
    v36 = v68;
    (*(*(v35 - 8) + 56))(v68, 1, 1, v35);
    swift_errorRetain();
    v70(v36, v30);

    v37 = &qword_1003D8B60;
    v38 = &unk_10033F210;
    v39 = v36;
  }

  else
  {
    swift_beginAccess();
    v40 = swift_weakLoadStrong();
    if (v40)
    {
      v41 = v40;
      sub_10005AA4C(v63, v69, type metadata accessor for CustodianRecord);
      v42 = v64;
      v43 = [v64 altDSID];
      if (v43)
      {
        v44 = v43;
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v45;
      }

      else
      {
        v68 = 0;
        v63 = 0;
      }

      v46 = [v42 telemetryFlowID];
      if (v46)
      {
        v47 = v46;
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v51 = type metadata accessor for TaskPriority();
      v52 = v67;
      (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
      v53 = v69;
      v54 = v66;
      sub_10005AA4C(v69, v66, type metadata accessor for CustodianRecord);
      v55 = (*(v65 + 80) + 80) & ~*(v65 + 80);
      v56 = (v62 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = 0;
      *(v57 + 32) = v41;
      *(v57 + 40) = 1;
      v58 = v63;
      *(v57 + 48) = v68;
      *(v57 + 56) = v58;
      *(v57 + 64) = v48;
      *(v57 + 72) = v50;
      sub_10005ABD0(v54, v57 + v55, type metadata accessor for CustodianRecord);
      v59 = (v57 + v56);
      v60 = v71;
      *v59 = v70;
      v59[1] = v60;

      sub_1000BCD5C(0, 0, v52, &unk_10033F258, v57);

      sub_10005AD7C(v53, type metadata accessor for CustodianRecord);
    }

    v37 = &unk_1003D91C0;
    v38 = &unk_10033FA50;
    v39 = v23;
  }

  return sub_100008D3C(v39, v37, v38);
}

uint64_t sub_100042884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v16;
  *(v8 + 88) = v17;
  *(v8 + 64) = v15;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 200) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  v9 = *(*(sub_100005814(&qword_1003D8B60, &unk_10033F210) - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 104) = v10;
  v11 = *(v10 - 8);
  *(v8 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1000429A4, 0, 0);
}

uint64_t sub_1000429A4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v20 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 200);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  (*(v2 + 16))(v1, v8 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 16);
  *(v0 + 128) = v10;
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v4;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v20;
  type metadata accessor for ExponentialRetryScheduler();

  v13 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  *(v0 + 152) = v13;
  v14 = swift_allocObject();
  *(v0 + 160) = v14;
  *(v14 + 16) = 0;
  *(v0 + 24) = v13;
  v15 = swift_task_alloc();
  *(v0 + 168) = v15;
  v15[2] = v14;
  v15[3] = sub_1000533A4;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = 0;
  v15[7] = &unk_10033F268;
  v15[8] = v12;
  v15[9] = v10;
  v15[10] = 1;
  v16 = swift_allocObject();
  *(v0 + 176) = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_100042C0C;

  return RetryScheduler.schedule<A>(_:shouldRetry:)();
}

uint64_t sub_100042C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_100042E8C;
  }

  else
  {
    v6 = *(v2 + 168);
    v5 = *(v2 + 176);

    v4 = sub_100042D30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100042D30()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = *(type metadata accessor for CustodianRecord() + 20);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, v6 + v7, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  v5(v3, 0);
  v10 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[12];

  swift_unknownObjectRelease();
  sub_100008D3C(v14, &qword_1003D8B60, &unk_10033F210);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100042E8C()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v8(v7, v1);

  v10 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[12];

  swift_unknownObjectRelease();
  sub_100008D3C(v14, &qword_1003D8B60, &unk_10033F210);

  v15 = v0[1];

  return v15();
}

id sub_100042FC8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v9 = kAAAnalyticsEventCustodianSetupSendInvitation;

  v10 = v9;

  return sub_100245D38(v10, a2, a3, a4, a5);
}

uint64_t sub_100043074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100043094, 0, 0);
}

uint64_t sub_100043094()
{
  v1 = *sub_1000080F8((v0[2] + 104), *(v0[2] + 128));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100043144;
  v3 = v0[3];

  return sub_1000E9388(v3, 1, 0);
}

uint64_t sub_100043144()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100043238(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  v60 = a8;
  v61 = a6;
  v64 = a5;
  v65 = a4;
  v11 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v58 = &v57 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v57 - v21;
  v23 = type metadata accessor for CustodianRecord();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v27 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v57 - v29;
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA88);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = _convertErrorToNSError(_:)();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error fetching custodian record for resending invitation: %@", v34, 0xCu);
      sub_100008D3C(v35, &unk_1003D9140, &qword_10033E640);
    }

    v65(a1);
  }

  else
  {
    __chkstk_darwin(v28);
    v57 = a3;
    *(&v57 - 2) = a3;
    sub_100213F34(sub_10005B3E4, a1, v22);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_100008D3C(v22, &unk_1003DF000, &unk_10033EC50);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100008D04(v37, qword_1003FAA88);
      v38 = v62;
      v39 = v63;
      (*(v63 + 16))(v18, v57, v62);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v66[0] = v43;
        *v42 = 136315138;
        sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        (*(v39 + 8))(v18, v38);
        v47 = sub_10021145C(v44, v46, v66);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to find custodian with id: %s", v42, 0xCu);
        sub_10000839C(v43);
      }

      else
      {

        (*(v39 + 8))(v18, v38);
      }

      type metadata accessor for AACustodianError(0);
      v66[3] = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v56 = v66[0];
      v65(v66[0]);
    }

    else
    {
      sub_10005ABD0(v22, v30, type metadata accessor for CustodianRecord);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v49 = Strong;
        v50 = type metadata accessor for TaskPriority();
        v51 = v58;
        (*(*(v50 - 8) + 56))(v58, 1, 1, v50);
        sub_10005AA4C(v30, v27, type metadata accessor for CustodianRecord);
        v52 = (*(v24 + 80) + 80) & ~*(v24 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        *(v53 + 32) = v49;
        *(v53 + 40) = 0;
        *(v53 + 48) = 0u;
        *(v53 + 64) = 0u;
        sub_10005ABD0(v27, v53 + v52, type metadata accessor for CustodianRecord);
        v54 = (v53 + ((v25 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
        v55 = v60;
        *v54 = v59;
        v54[1] = v55;

        sub_1000BCD5C(0, 0, v51, &unk_10033F3A8, v53);
      }

      sub_10005AD7C(v30, type metadata accessor for CustodianRecord);
    }
  }
}

uint64_t sub_100043ADC(uint64_t a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  [a2 unlock];
  swift_beginAccess();
  if (*(a3 + 16))
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    swift_unknownObjectRelease();
  }

  return a4(a1);
}

uint64_t sub_100043B7C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v67 = a5;
  v68 = a6;
  v65 = a4;
  v66 = a3;
  v69 = a2;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = &v62 - v9;
  v70 = type metadata accessor for UUID();
  v10 = *(v70 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v70);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  v17 = type metadata accessor for CustodianRecord();
  v62 = *(v17 - 8);
  v18 = *(v62 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v63 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v62 - v24);
  sub_100012D04(a1, &v62 - v24, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = v70;
    (*(v10 + 16))(v14, v69, v70);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71[0] = v69;
      *v31 = 136315394;
      v33 = UUID.uuidString.getter();
      v35 = v34;
      (*(v10 + 8))(v14, v28);
      v36 = sub_10021145C(v33, v35, v71);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2112;
      v37 = _convertErrorToNSError(_:)();
      *(v31 + 14) = v37;
      *v32 = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error removing custodian %s: %@", v31, 0x16u);
      sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v69);
    }

    else
    {

      (*(v10 + 8))(v14, v28);
    }

    swift_errorRetain();
    v67(v26);
  }

  else
  {
    sub_10005ABD0(v25, v21, type metadata accessor for CustodianRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    v39 = v70;
    (*(v10 + 16))(v16, v69, v70);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v71[0] = v43;
      *v42 = 136315138;
      v44 = UUID.uuidString.getter();
      v45 = v39;
      v46 = v21;
      v48 = v47;
      (*(v10 + 8))(v16, v45);
      v49 = sub_10021145C(v44, v48, v71);
      v21 = v46;

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Custodian %s successfully removed.", v42, 0xCu);
      sub_10000839C(v43);
    }

    else
    {

      (*(v10 + 8))(v16, v39);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v52 = Strong;
      v53 = type metadata accessor for TaskPriority();
      v54 = v64;
      (*(*(v53 - 8) + 56))(v64, 1, 1, v53);
      v55 = v63;
      sub_10005AA4C(v21, v63, type metadata accessor for CustodianRecord);
      v56 = (*(v62 + 80) + 48) & ~*(v62 + 80);
      v57 = swift_allocObject();
      v57[2] = 0;
      v57[3] = 0;
      v58 = v65;
      v57[4] = v52;
      v57[5] = v58;
      sub_10005ABD0(v55, v57 + v56, type metadata accessor for CustodianRecord);
      v59 = (v57 + ((v18 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      v60 = v68;
      *v59 = v67;
      v59[1] = v60;

      v61 = v58;

      sub_1000BCD5C(0, 0, v54, &unk_10033F378, v57);
    }

    return sub_10005AD7C(v21, type metadata accessor for CustodianRecord);
  }
}

uint64_t sub_1000442F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000443C4, 0, 0);
}

uint64_t sub_1000443C4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  (*(v2 + 16))(v1, v6 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v7 = v0[2];
  v0[12] = v7;
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  v10 = type metadata accessor for ExponentialRetryScheduler();
  v11 = v4;
  v12 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  v0[15] = v12;
  v13 = swift_allocObject();
  v0[16] = v13;
  *(v13 + 16) = 0;
  v0[3] = v12;
  v14 = swift_task_alloc();
  v0[17] = v14;
  v14[2] = v13;
  v14[3] = sub_10005B12C;
  v14[4] = v8;
  v14[5] = 0;
  v14[6] = 0;
  v14[7] = &unk_10033F388;
  v14[8] = v9;
  v14[9] = v7;
  v14[10] = 1;
  v15 = swift_allocObject();
  v0[18] = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_100044600;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v17, &unk_10033F390, v14, sub_10005B8F4, v15, v10, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100044600()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1000447D0;
  }

  else
  {
    v6 = *(v2 + 136);
    v5 = *(v2 + 144);

    v4 = sub_100044724;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100044724()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[7];
  v5 = v0[8];

  v6(0);

  swift_unknownObjectRelease();
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000447D0()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[7];
  v8 = v0[8];

  v9(v1);

  swift_unknownObjectRelease();

  v10 = v0[14];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

id sub_1000448A4(void *a1)
{
  v2 = kAAAnalyticsEventCustodianSetupSendRemovalMessageToCustodian;
  v3 = [a1 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a1 telemetryFlowID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  return sub_100245D38(v2, v5, v7, v10, v12);
}

uint64_t sub_100044998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1000449B8, 0, 0);
}

uint64_t sub_1000449B8()
{
  v1 = v0[3];
  v2 = sub_1000080F8((v0[2] + 104), *(v0[2] + 128));
  v3 = type metadata accessor for CustodianRecord();
  v4 = *(v3 + 20);
  v5 = (v1 + *(v3 + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = *v2;
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_10005B810;

  return sub_100044AAC(v1 + v4, v6, v7, 1, 0);
}

uint64_t sub_100044AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100044B78, 0, 0);
}

uint64_t sub_100044B78()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);
  (*(v2 + 16))(v1, *(v0 + 16), v3);
  v6 = type metadata accessor for CustodianRemovedMessage();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = 11;
  v10 = v9 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v9 + 16) = 4;
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v1, v3);
  *(v9 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = 11;
  v11 = v9 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v11 = v5;
  *(v11 + 8) = v4 & 1;
  v12 = sub_1000E9D30(v17, v18);
  v13 = *(v0 + 48);
  sub_100262BAC(v9, v12, 0xD00000000000001FLL, 0x800000010032D510);

  v15 = *(v0 + 72);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100044D4C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&unk_1003DA118, &qword_10033F238);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100044E18, 0, 0);
}

uint64_t sub_100044E18()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianFetcher, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = *sub_1000080F8(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100044F18;
  v6 = v0[7];

  return sub_10005B8FC(v6);
}

uint64_t sub_100044F18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1000450B4;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_100045040;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100045040()
{
  v1 = v0[11];
  sub_10000839C(v0 + 2);

  v2 = v0[1];
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_1000450B4()
{
  v1 = v0[11];
  sub_10000839C(v0 + 2);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1000452B0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100045374;

  return sub_100044D4C(v5);
}

uint64_t sub_100045374()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100045534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for CustodianshipInfoRecord();
  v8 = *(*(v7 - 1) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v14 = v30 - v13;
  if (v15)
  {
    return a3(0);
  }

  v17 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
  v18 = *(a1 + 16);
  if (v18)
  {
    v30[1] = a4;
    v31 = a3;
    v19 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v20 = *(v12 + 72);
    do
    {
      sub_10005AA4C(v19, v14, type metadata accessor for CustodianshipInfoRecord);
      sub_10005AA4C(v14, v11, type metadata accessor for CustodianshipInfoRecord);
      v21 = objc_allocWithZone(AACustodianshipInfo);
      v22 = &v11[v7[5]];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v24 = v7[6];
      v25 = *&v11[v7[7]];
      v26 = *&v11[v24];
      v27 = *&v11[v24 + 8];
      v28 = String._bridgeToObjectiveC()();
      [v21 initWithID:isa status:v25 ownerHandle:v28];

      sub_10005AD7C(v11, type metadata accessor for CustodianshipInfoRecord);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10005AD7C(v14, type metadata accessor for CustodianshipInfoRecord);
      v19 += v20;
      --v18;
    }

    while (v18);
    a3 = v31;
    v17 = v32;
  }

  (a3)(v17, 0);
}

void sub_1000457C8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100016034(0, &qword_1003DA1F0, AACustodianshipInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100045874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  (*(v7 + 16))(v10, a1, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_10021145C(v17, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetching custodianship information with the following: %s", v15, 0xCu);
    sub_10000839C(v16);

    a1 = v25;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v21 = sub_1000080F8((v4 + 144), *(v4 + 168));
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 24) = v27;
  v23 = *v21;

  sub_1000259E4(a1, sub_100052898, v22);
}

uint64_t sub_100045B58(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v48[1] = a3;
  v49 = a2;
  v4 = type metadata accessor for UUID();
  v48[0] = *(v4 - 8);
  v5 = *(v48[0] + 64);
  __chkstk_darwin(v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustodianshipInfoRecord();
  v9 = *(*(v8 - 1) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v48 - v13;
  v15 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v48 - v17);
  sub_100012D04(a1, v48 - v17, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to fetch custodianship info: %@", v23, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v49(0, v19);
  }

  else
  {
    sub_10005ABD0(v18, v14, type metadata accessor for CustodianshipInfoRecord);
    sub_10005AA4C(v14, v12, type metadata accessor for CustodianshipInfoRecord);
    v27 = objc_allocWithZone(AACustodianshipInfo);
    v28 = &v12[v8[5]];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v30 = v8[6];
    v31 = *&v12[v8[7]];
    v32 = *&v12[v30];
    v33 = *&v12[v30 + 8];
    v34 = String._bridgeToObjectiveC()();
    v35 = [v27 initWithID:isa status:v31 ownerHandle:v34];

    sub_10005AD7C(v12, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA88);
    v37 = v35;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136315138;
      v42 = [v37 custodianID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v48[0] + 8))(v7, v4);
      v46 = sub_10021145C(v43, v45, &v50);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "Found custodianship info: %s", v40, 0xCu);
      sub_10000839C(v41);
    }

    v47 = v37;
    v49(v37, 0);

    return sub_10005AD7C(v14, type metadata accessor for CustodianshipInfoRecord);
  }
}

uint64_t sub_100046128(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v27 = type metadata accessor for URL();
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = sub_1000080F8((v2 + 16), *(v2 + 40));
  sub_100040738(*v17 + 64, v29);
  v18 = sub_1000080F8(v29, v29[3]);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = sub_1000080F8((*v18 + 16), *(*v18 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v10 + 8);
  v22 = v14;
  v23 = v27;
  v21(v22, v27);
  (*(v6 + 16))(v9, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v24 = *sub_1000080F8(v28, v28[3]);
  sub_1000328BC(v16, sub_100052854, v19);

  v21(v16, v23);
  sub_10000839C(v28);
  return sub_10000839C(v29);
}

uint64_t sub_1000465FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v32 = type metadata accessor for URL();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v32);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
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
    v30 = v16;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching health status for all custodians & custodianships.", v20, 2u);
    v16 = v30;
  }

  v21 = sub_1000080F8((v3 + 144), *(v3 + 168));
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  v24 = sub_1000080F8((*v21 + 16), *(*v21 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v25 = *(v10 + 8);
  v26 = v14;
  v27 = v32;
  v25(v26, v32);
  (*(v6 + 16))(v9, *v24 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v28 = *sub_1000080F8(v33, v33[3]);
  sub_100032894(v16, sub_100052848, v22);

  v25(v16, v27);
  return sub_10000839C(v33);
}

uint64_t sub_10004699C(uint64_t a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v8 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for CustodianHealthRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a3(_swiftEmptyArrayStorage, a1);
  }

  v18 = *(a1 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v29[1] = a4;
    v30 = a3;
    v31 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v20 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v21 = *(v13 + 72);
    do
    {
      sub_10005AA4C(v20, v16, type metadata accessor for CustodianHealthRecord);
      v23 = *(v12 + 20);
      v24 = *(v12 + 24);
      v25 = type metadata accessor for Date();
      v26 = *(v25 - 8);
      (*(v26 + 16))(v11, &v16[v24], v25);
      (*(v26 + 56))(v11, 0, 1, v25);
      v27.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      isa = 0;
      if ((*(v26 + 48))(v11, 1, v25) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v26 + 8))(v11, v25);
      }

      [objc_allocWithZone(AATrustedContactHealthInfo) initWithID:v27.super.isa lastValidCheckTimeStamp:isa];

      sub_10005AD7C(v16, type metadata accessor for CustodianHealthRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = v31[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v20 += v21;
      --v18;
    }

    while (v18);
    a3 = v30;
    v19 = v31;
  }

  a3(v19, 0);
}

uint64_t sub_100046CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for CustodianRecord();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100046E14, 0, 0);
}

uint64_t sub_100046E14()
{
  if ([*(v0 + 24) isAccountRecovery])
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 56);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_1000080F8((*(v0 + 32) + 144), *(*(v0 + 32) + 168));
    v6 = type metadata accessor for CustodianStorageController();
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_100046FC0;

    return (sub_1000308CC)(v6, &off_1003A4C78);
  }
}

uint64_t sub_100046FC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1000474B4;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_1000470EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000470EC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = kAAAnalyticsEventCustodianRecoveryExperimentalHasCachedCustodianList;
  v4 = [v2 altDSID];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [*(v0 + 24) telemetryFlowID];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  result = sub_100245D38(v3, v6, v8, v11, v13);
  v15 = result;
  if (v1)
  {
    v16 = *(v1 + 16);
    if (v16)
    {
      v38 = result;
      v17 = 0;
      v19 = *(v0 + 64);
      v18 = *(v0 + 72);
      v39 = v19;
      do
      {
        if (v17 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v20 = *(v0 + 88);
        v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v22 = *(v18 + 72);
        sub_10005AA4C(v1 + v21 + v22 * v17, v20, type metadata accessor for CustodianRecord);
        v23 = *(v0 + 88);
        if (*(v20 + *(v19 + 36)) == 2)
        {
          sub_10005ABD0(v23, *(v0 + 80), type metadata accessor for CustodianRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1002E0288(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v25 = _swiftEmptyArrayStorage[2];
          v24 = _swiftEmptyArrayStorage[3];
          if (v25 >= v24 >> 1)
          {
            sub_1002E0288(v24 > 1, v25 + 1, 1);
          }

          v26 = *(v0 + 80);
          _swiftEmptyArrayStorage[2] = v25 + 1;
          result = sub_10005ABD0(v26, _swiftEmptyArrayStorage + v21 + v25 * v22, type metadata accessor for CustodianRecord);
          v19 = v39;
        }

        else
        {
          result = sub_10005AD7C(v23, type metadata accessor for CustodianRecord);
        }

        ++v17;
      }

      while (v16 != v17);

      v15 = v38;
      if (!v38)
      {
        goto LABEL_27;
      }

      if (!_swiftEmptyArrayStorage)
      {
        goto LABEL_23;
      }

LABEL_25:
      v28 = _swiftEmptyArrayStorage[2];
      v27 = v15;

      goto LABEL_26;
    }

    if (v15)
    {
      goto LABEL_25;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!result)
  {
    goto LABEL_27;
  }

LABEL_23:
  v27 = v15;
LABEL_26:
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  [v27 setObject:isa forKeyedSubscript:kAAFDidSucceed];

LABEL_28:
  v30 = *(v0 + 48);
  v31 = *(v0 + 56);
  v32 = *(v0 + 40);
  (*(v30 + 16))(v31, *(v0 + 32) + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v32);
  Dependency.wrappedValue.getter();
  (*(v30 + 8))(v31, v32);
  v33 = *(v0 + 16);
  swift_getObjectType();
  sub_100246FA8(v15);
  swift_unknownObjectRelease();

  v35 = *(v0 + 80);
  v34 = *(v0 + 88);
  v36 = *(v0 + 56);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1000474B4()
{
  v1 = *(v0 + 24);
  v2 = kAAAnalyticsEventCustodianRecoveryExperimentalHasCachedCustodianList;
  v3 = [v1 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [*(v0 + 24) telemetryFlowID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v13 = sub_100245D38(v2, v5, v7, v10, v12);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v15 setObject:isa forKeyedSubscript:kAAFDidSucceed];
  }

  else
  {

    v15 = 0;
  }

  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  v19 = *(v0 + 40);
  (*(v18 + 16))(v17, *(v0 + 32) + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v19);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v17, v19);
  v20 = *(v0 + 16);
  swift_getObjectType();
  sub_100246FA8(v14);

  swift_unknownObjectRelease();
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = *(v0 + 56);

  v24 = *(v0 + 8);

  return v24();
}

void sub_1000476C8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void *), uint64_t a7, void *a8, void *a9)
{
  v44 = a8;
  v45 = a6;
  v46 = a7;
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  if (a4)
  {
    sub_1000D2748(a1, a2, a3 & 1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v14 + 16))(v17, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v13);
    Dependency.wrappedValue.getter();

    (*(v14 + 8))(v17, v13);
    swift_getObjectType();
    sub_100246FA8(a4);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3)
    {
      v19 = v44;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100008D04(v20, qword_1003FAA88);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      sub_10005A720(a1, a2, 1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = _convertErrorToNSError(_:)();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to obtain Push Token with error: %@, continuing without AA Push Token", v23, 0xCu);
        sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
      }
    }

    else
    {
      v48 = sub_100166018(a1, a2);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      BidirectionalCollection<>.joined(separator:)();

      v21 = String._bridgeToObjectiveC()();

      v19 = v44;
      [v44 setPushToken:v21];
    }

    v31 = [a9 altDSID];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = [a9 telemetryFlowID];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = v45;
    v42[3] = v46;
    v42[4] = v41;
    v42[5] = a9;

    v43 = a9;
    sub_100047F5C(v19, v33, v35, v38, v40, sub_10005A714, v42);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "startCustodianRecovery: Custodian Daemon Service is no longer retained, nothing to do here", v29, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v47 = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v30 = v48;
    v45(0, 0, v48);
  }
}

uint64_t sub_100047CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [a7 altDSID];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      swift_beginAccess();
      v20 = *(v13 + 288);
      v19 = *(v13 + 296);
      sub_10003E968(v13 + 264, v20);
      (*(v19 + 40))(v16, v18, v20, v19);
      swift_endAccess();
    }

    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = [a7 telemetryFlowID];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      swift_beginAccess();
      v28 = *(v22 + 288);
      v29 = *(v22 + 296);
      sub_10003E968(v22 + 264, v28);
      (*(v29 + 64))(v25, v27, v28, v29);
      swift_endAccess();
    }

    v8 = a1;
    v9 = a2;
    a3 = 0;
  }

  return a4(v8, v9, a3);
}

void sub_100047ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100047F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *v7;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Calling out to IdMS to initiate a custodian recovery", v19, 2u);
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v20 = kAAAnalyticsEventCustodianRecoveryInitializeWithServer;

  v21 = v20;

  v22 = sub_100245D38(v21, a2, a3, a4, a5);
  v23 = sub_1000080F8(v8 + 8, v8[11]);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v8;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = v15;
  v25 = *v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10005282C;
  *(v26 + 24) = v24;
  aBlock[4] = sub_100052840;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011A43C;
  aBlock[3] = &unk_1003A58F8;
  v27 = _Block_copy(aBlock);
  v28 = v22;

  [v25 startCustodianRecoveryRequestWithContext:a1 completion:v27];
  _Block_release(v27);
}

void sub_10004824C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t))
{
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if (a3)
  {
    sub_1000D284C(a1, a2 & 1);
  }

  (*(v11 + 16))(v14, a4 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  swift_getObjectType();
  sub_100246FA8(a3);
  swift_unknownObjectRelease();
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to initiate recovery with IdMS with error: %@", v18, 0xCu);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    }

    a5(0, 0, a1);
    return;
  }

  v40 = 0xD000000000000011;
  v41 = 0x800000010032D480;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v21 = sub_10031B060(v42), (v22 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v21, v43);
    sub_1000526B0(v42);
    if (swift_dynamicCast())
    {
      v24 = v40;
      v23 = v41;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100008D04(v25, qword_1003FAA88);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_10021145C(v24, v23, v42);
        _os_log_impl(&_mh_execute_header, v26, v27, "IdMS came back with a recovery session ID: %s", v28, 0xCu);
        sub_10000839C(v29);
      }

      a5(v24, v23, 0);

      return;
    }
  }

  else
  {
    sub_1000526B0(v42);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAA88);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 0);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42[0] = v34;
    *v33 = 136315138;
    v35 = Dictionary.description.getter();
    v37 = sub_10021145C(v35, v36, v42);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "IdMS came back with a result, but transaction ID was not found there: %s", v33, 0xCu);
    sub_10000839C(v34);
  }

  type metadata accessor for AACustodianError(0);
  v43[0] = -7009;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v38 = v42[0];
  a5(0, 0, v42[0]);
}

uint64_t sub_100048894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
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
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Calling out to IdMS to fetch Custodian recovery configuration", v9, 2u);
  }

  sub_1000080F8((v3 + 64), *(v3 + 88));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_10011A4E8(0, 0, 0, 0, sub_100052804, v10);
}

void sub_1000489F4(uint64_t a1, char a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch Custodian recovery configuration with error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    a3(0, a1);
  }

  else
  {
    v11 = objc_allocWithZone(AACustodianRecoveryConfiguration);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v13 = [v11 initWithConfigurationDictionary:isa];

    if ([v13 codeLength] <= 0)
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA88);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      sub_1000399DC(a1, 0);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v31 = v25;
        *v24 = 136315138;
        v26 = Dictionary.description.getter();
        v28 = sub_10021145C(v26, v27, &v31);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "IdMS came back with a result, but codeLength was missing or 0: %s", v24, 0xCu);
        sub_10000839C(v25);
      }

      type metadata accessor for AACustodianError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v29 = v31;
      a3(0, v31);
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA88);
      v15 = v13;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "IdMS came back with configuration: %@", v18, 0xCu);
        sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
      }

      v30 = v15;
      a3(v15, 0);
    }
  }
}

uint64_t sub_100048F38(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

uint64_t sub_100048FD0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004909C, 0, 0);
}

uint64_t sub_10004909C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v5 = sub_1000080F8(v0 + 2, v0[5]);
  v6 = *v5;
  v7 = v5[1];
  LOBYTE(v1) = sub_10031A5C8(*(v4 + 56));
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v8 = v0[17];
    swift_beginAccess();
    v9 = *sub_1000080F8((v8 + 264), *(v8 + 288));
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_10004935C;
    v11 = v0[16];

    return sub_1001056C8(v11);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Client is missing management entitlement, rejecting request to generateCustodianRecoveryCode", v16, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v0[15] = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = v0[14];
    swift_willThrow();
    v18 = v0[20];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10004935C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[7] = v3;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = v2;
  v6 = v4[21];
  v9 = *v3;
  v5[22] = v2;

  if (v2)
  {
    v7 = sub_100049610;
  }

  else
  {
    v7 = sub_100049478;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100049478()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully generated code for context: %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[20];

  v13 = v0[1];

  return v13(v10, v11);
}

uint64_t sub_100049610()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA88);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    v12 = _convertErrorToNSError(_:)();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate code for context: %@ with error: %@", v9, 0x16u);
    sub_100005814(&unk_1003D9140, &qword_10033E640);
    swift_arrayDestroy();
  }

  v13 = v0[22];

  swift_willThrow();
  v14 = v0[22];
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100049970(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100049A34;

  return sub_100048FD0(v5);
}

uint64_t sub_100049A34()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100049BE0(void *a1, char a2, uint64_t (*a3)(void *, void *))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_10005A40C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Code validation completed with error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    v11 = 0;
    v12 = a1;
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_10005A40C(a1, 0);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = a1;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Code validation completed with context: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    v11 = a1;
    v12 = 0;
  }

  return a3(v11, v12);
}

uint64_t sub_100049E7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching existing custodian recovery token for sessionID: %s", v13, 0xCu);
    sub_10000839C(v14);
  }

  v15 = sub_1000080F8((v5 + 144), *(v5 + 168));
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v17 = *v15;

  sub_10002CD28(a1, a2, sub_1000527B0, v16);
}

uint64_t sub_10004A05C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(id, uint64_t))
{
  v41 = a4;
  v7 = type metadata accessor for CustodianRecoverySessionRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v40 - v13);
  sub_100012D04(a1, &v40 - v13, &qword_1003DA0F0, qword_100342AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10021145C(a2, a3, &v43);
      _os_log_impl(&_mh_execute_header, v17, v18, "No record found for the requested SessionID: %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    swift_errorRetain();
    v41(0, v15);
  }

  else
  {
    sub_10005ABD0(v14, v10, type metadata accessor for CustodianRecoverySessionRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10021145C(a2, a3, &v43);
      _os_log_impl(&_mh_execute_header, v23, v24, "Found record matching sessionID: %s, getting token", v25, 0xCu);
      sub_10000839C(v26);
    }

    v27 = &v10[*(v7 + 44)];
    if (*(v27 + 1))
    {
      v28 = *v27;
      v29 = &v10[*(v7 + 32)];
      v30 = *v29;
      v31 = *(v29 + 1);
      v32 = objc_allocWithZone(AACustodianPasswordResetInformation);
      v33 = String._bridgeToObjectiveC()();
      v34 = String._bridgeToObjectiveC()();
      v35 = [v32 initWithRecoveryToken:v33 ownerAppleID:v34];

      v36 = v35;
      v41(v35, 0);
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Record did not contain CRT, failing...", v39, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v42 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v36 = v43;
      v41(0, v43);
    }

    return sub_10005AD7C(v10, type metadata accessor for CustodianRecoverySessionRecord);
  }
}

uint64_t sub_10004A664(uint64_t a1, void *a2)
{
  v4 = sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = [a2 recoverySessionID];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    (*(v5 + 16))(v8, a1, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v8, v4);
    sub_10004B030(v11, v13, sub_10005A380, v15);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Missing recovery session ID in request context: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v25 = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10004A98C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for AACustodianRecoveryError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
    }

    swift_errorRetain();
    sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10004AC34(void *a1, void *aBlock, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v5 = a1;

  return _swift_task_switch(sub_10004ACC4, 0, 0);
}

uint64_t sub_10004ACC4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_100016034(0, &qword_1003DA1C8, AACustodianDataRecoveryKeys_ptr);
  *v3 = v0;
  v3[1] = sub_10004ADD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000021, 0x800000010032D4C0, sub_10005A2E4, v1, v4);
}

uint64_t sub_10004ADD0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10004AF7C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10004AEEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004AEEC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[2];
  (v2)[2](v2, v4, 0);
  _Block_release(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004AF7C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  v6 = _convertErrorToNSError(_:)();

  (v3)[2](v3, 0, v6);

  _Block_release(v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_10004B030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Fetching existing custodian recovery keys for sessionID: %s", v13, 0xCu);
    sub_10000839C(v14);
  }

  v15 = sub_1000080F8((v5 + 144), *(v5 + 168));
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v16;
  v18 = *v15;

  sub_10002CD28(a1, a2, sub_100052760, v17);
}

uint64_t sub_10004B248(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v42 = a5;
  v43 = a4;
  v41 = a2;
  v7 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for CustodianRecoverySessionRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v40 - v17);
  sub_100012D04(a1, &v40 - v17, &qword_1003DA0F0, qword_100342AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10021145C(v41, a3, v44);
      _os_log_impl(&_mh_execute_header, v21, v22, "No record found for the requested SessionID: %s", v23, 0xCu);
      sub_10000839C(v24);
    }

    swift_errorRetain();
    v43(0, v19);
  }

  else
  {
    sub_10005ABD0(v18, v14, type metadata accessor for CustodianRecoverySessionRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10021145C(v41, a3, v44);
      _os_log_impl(&_mh_execute_header, v27, v28, "Found record matching sessionID: %s, getting keys", v29, 0xCu);
      sub_10000839C(v30);
    }

    if (*&v14[*(v11 + 36) + 8] >> 60 == 15)
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Record did not contain RKC, seems to be a non CDP account ?...", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v44[3] = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v44[0];
      v43(0, v44[0]);
    }

    else
    {
      sub_100012D04(&v14[*(v11 + 48)], v10, &qword_1003D8B60, &unk_10033F210);
      v35 = type metadata accessor for UUID();
      v36 = (*(*(v35 - 8) + 48))(v10, 1, v35);
      sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
      if (v36 == 1)
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "decoupleCRK: CustodianRecoverySessionRecord does not contain otCustodianID, either using first created CRK or custodian device running pre DawnburstE", v39, 2u);
        }
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_10004B884(v41, a3, v14, v43, v42);
      }
    }

    return sub_10005AD7C(v14, type metadata accessor for CustodianRecoverySessionRecord);
  }
}

void sub_10004B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v33 = a5;
  v31 = *v5;
  v8 = type metadata accessor for CustodianRecoverySessionRecord();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = [objc_allocWithZone(AKCustodianContext) init];
  v12 = a3 + v8[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v11 setCustodianUUID:isa];

  v14 = String._bridgeToObjectiveC()();
  [v11 setRecoverySessionID:v14];

  v15 = (a3 + v8[11]);
  if (v15[1])
  {
    v16 = *v15;
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v11 setCustodianRecoveryToken:v17];

  if ([v11 respondsToSelector:Selector.init(_:)()])
  {
    v18 = (a3 + v8[13]);
    if (v18[1])
    {
      v19 = *v18;
      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    [v11 setRecordBuildVersion:v20];
  }

  v21 = sub_1000080F8(v6 + 8, v6[11]);
  sub_10005AA4C(a3, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoverySessionRecord);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_10005ABD0(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22, type metadata accessor for CustodianRecoverySessionRecord);
  v25 = (v24 + v23);
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v27 = *v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000525EC;
  *(v28 + 24) = v24;
  aBlock[4] = sub_1000526A8;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011A43C;
  aBlock[3] = &unk_1003A5808;
  v29 = _Block_copy(aBlock);

  [v27 fetchCustodianDataRecoveryKeyWithContext:v11 completion:v29];
  _Block_release(v29);
}

void sub_10004BC08(uint64_t a1, char a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &isa - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch custodian recovery wrapping key with error: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    a4(0, a1);
    return;
  }

  v20 = v11;
  strcpy(v57, "wrappingKeyRKC");
  v57[15] = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v21 = sub_10031B060(v58), (v22 & 1) == 0))
  {
    sub_1000526B0(v58);
    goto LABEL_14;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v21, v59);
  sub_1000526B0(v58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = Data.init(base64Encoded:options:)();
  v25 = v24;

  if (v25 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v26 = v25;
  v56 = v23;
  v27 = type metadata accessor for CustodianRecoverySessionRecord();
  v28 = a3 + *(v27 + 36);
  v29 = *(v28 + 8);
  if (v29 >> 60 == 15)
  {
    sub_100015D58(v56, v26);
LABEL_14:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 0);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58[0] = v34;
      *v33 = 136315138;
      v35 = Dictionary.description.getter();
      v37 = sub_10021145C(v35, v36, v58);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Could not parse wrapping key from result dictionary: %s", v33, 0xCu);
      sub_10000839C(v34);
    }

    type metadata accessor for AACustodianError(0);
    v59[0] = -7009;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = v58[0];
    a4(0, v58[0]);

    return;
  }

  v39 = v27;
  v40 = *v28;
  sub_100015D6C(*v28, *(v28 + 8));
  sub_100052704(v40, v29);
  v55 = v26;
  sub_100052704(v56, v26);
  sub_1000A8BBC(v13);
  v41 = (a3 + *(v39 + 52));
  v42 = *v41;
  v43 = v41[1];
  v53 = v40;
  v54 = v29;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v44.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v45.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (v43)
  {
    v43 = String._bridgeToObjectiveC()();
  }

  v46 = objc_allocWithZone(AACustodianDataRecoveryKeys);
  v47 = isa;
  v48 = [v46 initWithWrappedRKC:isa wrappingKey:v44.super.isa custodianUUID:v45.super.isa recordBuildVersion:v43];

  sub_100015D58(v56, v55);
  v50 = v53;
  v49 = v54;
  sub_100015D58(v53, v54);
  (*(v9 + 8))(v13, v20);
  v51 = v48;
  a4(v48, 0);

  sub_100015D58(v50, v49);
  sub_100015D58(v56, v55);
}

uint64_t sub_10004C224(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_10004C2B0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000080F8((v3 + 144), *(v3 + 168));
  v13 = [a1 custodianID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v14;
  v15[4] = a2;
  v15[5] = a3;
  v16 = *v12;
  v17 = a1;

  sub_1000259E4(v11, sub_1000518C8, v15);

  (*(v8 + 8))(v11, v7);
}

uint64_t sub_10004C450(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v114 = a4;
  v115 = a5;
  v113 = a3;
  v111 = a2;
  v6 = type metadata accessor for UUID();
  v109 = *(v6 - 8);
  v7 = *(v109 + 64);
  __chkstk_darwin(v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianshipInfoRecord();
  v110 = *(v10 - 8);
  v11 = *(v110 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v112 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v103 - v13;
  v15 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v105 = *(v15 - 8);
  v16 = *(v105 + 64);
  v17 = __chkstk_darwin(v15);
  v106 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v103 - v18);
  v107 = a1;
  sub_100012D04(a1, &v103 - v18, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch custodianship info: %@", v24, 0xCu);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v114(v20);
  }

  else
  {
    v104 = v11;
    sub_10005ABD0(v19, v14, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v29 = sub_100008D04(v28, qword_1003FAA88);
    v30 = v111;
    v111 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    v33 = os_log_type_enabled(v31, v32);
    v108 = v14;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v116[0] = v35;
      *v34 = 136315138;
      v36 = [v30 custodianID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v109 + 8))(v9, v6);
      v40 = sub_10021145C(v37, v39, v116);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Found custodianship info: %s", v34, 0xCu);
      sub_10000839C(v35);
    }

    v41 = v112;
    v42 = kAAAnalyticsEventCustodianSetupCustodianUpdatedCustodianshipRecord;
    v43 = [v30 altDSID];
    if (v43)
    {
      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = v30;
    v49 = [v30 telemetryFlowID];
    if (v49)
    {
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v54 = v104;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v55 = sub_100245D38(v42, v45, v47, v51, v53);
    v56 = v48;
    v57 = [v48 isAccepted];
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    v60 = os_log_type_enabled(v58, v59);
    if (v57)
    {
      v61 = v41;
      if (v60)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Accepting invitation.", v62, 2u);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v111 = Strong;
        v64 = v106;
        v65 = v55;
        sub_100012D04(v107, v106, &unk_1003DA0E0, &unk_10033F1D0);
        sub_10005AA4C(v108, v61, type metadata accessor for CustodianshipInfoRecord);
        v66 = (*(v105 + 80) + 24) & ~*(v105 + 80);
        v67 = (v16 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
        v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
        v69 = v56;
        v70 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
        v71 = v115;
        v72 = (*(v110 + 80) + v70 + 8) & ~*(v110 + 80);
        v73 = swift_allocObject();
        *(v73 + 16) = v65;
        sub_100051EF4(v64, v73 + v66);
        v74 = v114;
        *(v73 + v67) = v113;
        v75 = (v73 + v68);
        *v75 = v74;
        v75[1] = v71;
        *(v73 + v70) = v69;
        sub_10005ABD0(v112, v73 + v72, type metadata accessor for CustodianshipInfoRecord);
        v76 = sub_1000080F8(v111 + 23, v111[26]);
        v77 = swift_allocObject();
        *(v77 + 16) = sub_100051F64;
        *(v77 + 24) = v73;
        v78 = *v76;
        v79 = v65;

        v80 = v69;
        v81 = v108;
        sub_100277DDC(v108, sub_10004E244, 0, 0, sub_10005207C, v77);

        sub_10005AD7C(v81, type metadata accessor for CustodianshipInfoRecord);
      }

      v102 = v108;
    }

    else
    {
      v82 = v108;
      v83 = v41;
      if (v60)
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Declining invitation.", v84, 2u);
      }

      sub_10005AA4C(v82, v41, type metadata accessor for CustodianshipInfoRecord);
      v85 = *(v110 + 80);
      v86 = swift_allocObject();
      sub_10005ABD0(v41, v86 + ((v85 + 16) & ~v85), type metadata accessor for CustodianshipInfoRecord);
      v87 = v113;
      swift_beginAccess();
      v88 = swift_weakLoadStrong();
      if (v88)
      {
        sub_100040738(v88 + 184, v116);

        v89 = sub_1000080F8(v116, v116[3]);
        sub_10005AA4C(v82, v83, type metadata accessor for CustodianshipInfoRecord);
        v90 = (v85 + 40) & ~v85;
        v91 = v54 + v90 + 7;
        v92 = v55;
        v93 = v56;
        v94 = v82;
        v95 = v91 & 0xFFFFFFFFFFFFFFF8;
        v96 = swift_allocObject();
        v96[2] = v92;
        v96[3] = v87;
        v96[4] = v93;
        sub_10005ABD0(v83, v96 + v90, type metadata accessor for CustodianshipInfoRecord);
        v97 = (v96 + v95);
        v98 = v115;
        *v97 = v114;
        v97[1] = v98;
        v99 = *v89;
        v100 = v92;

        v101 = v93;
        sub_100277DDC(v94, sub_1000519FC, v86, 0, sub_100051BCC, v96);

        sub_10005AD7C(v94, type metadata accessor for CustodianshipInfoRecord);
        return sub_10000839C(v116);
      }

      v102 = v82;
    }

    return sub_10005AD7C(v102, type metadata accessor for CustodianshipInfoRecord);
  }
}

uint64_t sub_10004CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v33 = a8;
  v34 = a7;
  v35 = a5;
  v12 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  if (a2)
  {
    sub_1000D2720(a3);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v17 + 16))(v20, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v16);
    Dependency.wrappedValue.getter();

    (*(v17 + 8))(v20, v16);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    swift_errorRetain();
    v35(a1);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v23 = result;
      v24 = (v33 + *(type metadata accessor for CustodianshipInfoRecord() + 24));
      v25 = *v24;
      v26 = v24[1];
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v30 = v34;
      v29 = v35;
      v28[4] = v23;
      v28[5] = v30;
      v28[6] = v25;
      v28[7] = v26;
      v28[8] = v29;
      v28[9] = a6;
      v31 = v30;

      sub_1000BCD5C(0, 0, v15, &unk_10033F1E8, v28);
    }
  }

  return result;
}

uint64_t sub_10004D278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CustodianshipInfoRecord();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005AA4C(a1, v10, type metadata accessor for CustodianshipInfoRecord);
  v11 = (a2 + v7[8]);
  v13 = *v11;
  v12 = v11[1];
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 16);
  v15(a3, v10, v14);
  v15(a3 + v7[7], &v10[v7[7]], v14);
  v16 = v7[10];
  v17 = *&v10[v16];
  v18 = *&v10[v16 + 8];
  v19 = (a3 + v16);
  *v19 = v17;
  v19[1] = v18;
  v20 = (a3 + v7[8]);
  *v20 = v13;
  v20[1] = v12;
  *(a3 + v7[9]) = 4;
  LOBYTE(v13) = v10[v7[11]];

  sub_100015D6C(v17, v18);
  result = sub_10005AD7C(v10, type metadata accessor for CustodianshipInfoRecord);
  *(a3 + v7[11]) = v13;
  return result;
}

id sub_10004D3F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v47 = a5;
  v49 = a4;
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v48 = &v46 - v11;
  v12 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v46 - v14);
  v16 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  if (a2)
  {
    sub_1000D2720(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v17 + 16))(v20, Strong + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v16);
    Dependency.wrappedValue.getter();

    (*(v17 + 8))(v20, v16);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  sub_100012D04(a1, v15, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v15;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA88);
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
      _os_log_impl(&_mh_execute_header, v24, v25, "Error updating custodianship %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v50(v22);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Custodianship status updated!", v32, 2u);
    }

    swift_beginAccess();
    v33 = swift_weakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = (v47 + *(type metadata accessor for CustodianshipInfoRecord() + 24));
      v37 = *v35;
      v36 = v35[1];
      v38 = type metadata accessor for TaskPriority();
      v39 = v48;
      (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v42 = v49;
      v41 = v50;
      v40[4] = v34;
      v40[5] = v42;
      v40[6] = v37;
      v40[7] = v36;
      v43 = v51;
      v40[8] = v41;
      v40[9] = v43;
      v44 = v42;

      sub_1000BCD5C(0, 0, v39, &unk_10033F208, v40);
    }

    sub_100008D3C(v15, &unk_1003DA0E0, &unk_10033F1D0);
  }

  return [objc_opt_self() postRecoveryContactChangedNotification];
}

uint64_t sub_10004D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_10004DA48, 0, 0);
}

uint64_t sub_10004DA48()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v8 = v0[2];
  v0[13] = v8;
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = v6;
  v10 = swift_task_alloc();
  v0[15] = v10;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v5;
  v10[5] = v4;
  type metadata accessor for ExponentialRetryScheduler();
  v11 = v6;
  v12 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  v0[16] = v12;
  v13 = swift_allocObject();
  v0[17] = v13;
  *(v13 + 16) = 0;
  v0[3] = v12;
  v14 = swift_task_alloc();
  v0[18] = v14;
  v14[2] = v13;
  v14[3] = sub_1000521AC;
  v14[4] = v9;
  v14[5] = 0xD000000000000016;
  v14[6] = 0x800000010032D410;
  v14[7] = &unk_10033F1F8;
  v14[8] = v10;
  v14[9] = v8;
  v14[10] = 1;
  v15 = swift_allocObject();
  v0[19] = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_10004DCB0;

  return RetryScheduler.schedule<A>(_:shouldRetry:)();
}

uint64_t sub_10004DCB0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_10004DE80;
  }

  else
  {
    v6 = *(v2 + 144);
    v5 = *(v2 + 152);

    v4 = sub_10004DDD4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004DDD4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[8];
  v5 = v0[9];

  v6(0);

  swift_unknownObjectRelease();
  v7 = v0[15];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10004DE80()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[8];
  v8 = v0[9];

  v9(v1);

  swift_unknownObjectRelease();

  v10 = v0[15];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

id sub_10004DF54(void *a1)
{
  v2 = [a1 isAccepted];
  v3 = &kAAAnalyticsEventCustodianSetupSendInvitationAcceptanceMessage;
  if (!v2)
  {
    v3 = &kAAAnalyticsEventCustodianSetupSendInvitationDeclineMessage;
  }

  v4 = *v3;
  v5 = [a1 altDSID];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 telemetryFlowID];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  return sub_100245D38(v4, v7, v9, v12, v14);
}

uint64_t sub_10004E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return _swift_task_switch(sub_10004E088, 0, 0);
}

uint64_t sub_10004E088()
{
  v1 = *sub_1000080F8((v0[2] + 104), *(v0[2] + 128));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10004E150;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_1002627F8(v5, v3, v4, 4, 0);
}

uint64_t sub_10004E150()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005AA4C(a1, v8, type metadata accessor for CustodianshipInfoRecord);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 16);
  v10(a2, v8, v9);
  v10(a2 + v5[7], &v8[v5[7]], v9);
  v11 = v5[10];
  v12 = *&v8[v11];
  v13 = *&v8[v11 + 8];
  v14 = (a2 + v11);
  *v14 = v12;
  v14[1] = v13;
  v15 = v5[8];
  v16 = *&v8[v15];
  v17 = *&v8[v15 + 8];
  v18 = (a2 + v15);
  *v18 = v16;
  v18[1] = v17;
  *(a2 + v5[9]) = 2;
  LOBYTE(v10) = v8[v5[11]];
  sub_100015D6C(v12, v13);

  result = sub_10005AD7C(v8, type metadata accessor for CustodianshipInfoRecord);
  *(a2 + v5[11]) = v10;
  return result;
}

uint64_t sub_10004E3AC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v20 - v6);
  sub_100012D04(a1, &v20 - v6, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA88);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error updating custodianship %@", v12, 0xCu);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(v8);
  }

  else
  {
    [objc_opt_self() postRecoveryContactChangedNotification];
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
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "CustodianRequest record updated!", v19, 2u);
    }

    a2(0);
    return sub_100008D3C(v7, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_10004E6DC(char a1, uint64_t (*a2)(void))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Completed triggered sync of trusted contacts with CloudKit. Success: %{BOOL}d.", v7, 8u);
  }

  return a2(0);
}

uint64_t sub_10004E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&qword_1003DA0D8, &qword_10033F1C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAA88);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Displaying trusted contact flow using Springboard.", v16, 2u);
  }

  (*(v9 + 16))(v12, v4 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__flowPresenter, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v12, v8);
  v17 = aBlock[0];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_100051848;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003A55D8;
  v19 = _Block_copy(aBlock);

  [v17 presentModel:a1 completion:v19];
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_10004EB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Launching custodian invite UI.", v11, 2u);
  }

  v12 = sub_1000080F8((v4 + 144), *(v4 + 168));
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a2;
  v13[4] = a3;
  v14 = *v12;

  sub_1000259E4(a1, sub_1000517C0, v13);
}

uint64_t sub_10004ECAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v66 = a3;
  v67 = a4;
  v63 = a2;
  v5 = sub_100005814(&qword_1003DA0D8, &qword_10033F1C8);
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v9 = type metadata accessor for UUID();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianshipInfoRecord();
  v14 = *(*(v13 - 1) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v60 - v18;
  v20 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v60 - v22);
  sub_100012D04(a1, &v60 - v22, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = _convertErrorToNSError(_:)();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to fetch custodianship info: %@", v28, 0xCu);
      sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v66(v24);
  }

  else
  {
    sub_10005ABD0(v23, v19, type metadata accessor for CustodianshipInfoRecord);
    sub_10005AA4C(v19, v17, type metadata accessor for CustodianshipInfoRecord);
    v32 = objc_allocWithZone(AACustodianshipInfo);
    v33 = &v17[v13[5]];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v35 = v13[6];
    v36 = *&v17[v13[7]];
    v37 = *&v17[v35];
    v38 = *&v17[v35 + 8];
    v39 = String._bridgeToObjectiveC()();
    v40 = [v32 initWithID:isa status:v36 ownerHandle:v39];

    sub_10005AD7C(v17, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAA88);
    v42 = v40;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v19;
      v47 = v46;
      aBlock[0] = v46;
      *v45 = 136315138;
      v48 = [v42 custodianID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID);
      v49 = v62;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v61 + 8))(v12, v49);
      v53 = sub_10021145C(v50, v52, aBlock);

      *(v45 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v43, v44, "Custodianship info found: %s", v45, 0xCu);
      sub_10000839C(v47);
      v19 = v60;
    }

    v54 = v64;
    v55 = v65;
    (*(v64 + 16))(v8, v63 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__flowPresenter, v65);
    Dependency.wrappedValue.getter();
    (*(v54 + 8))(v8, v55);
    v56 = aBlock[0];
    v57 = swift_allocObject();
    v58 = v67;
    *(v57 + 16) = v66;
    *(v57 + 24) = v58;
    aBlock[4] = sub_100051804;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003A5588;
    v59 = _Block_copy(aBlock);

    [v56 presentInvitationUIWithCustodianshipInfo:v42 completion:v59];
    _Block_release(v59);

    swift_unknownObjectRelease();
    return sub_10005AD7C(v19, type metadata accessor for CustodianshipInfoRecord);
  }
}

uint64_t sub_10004F3C4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);
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
      _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
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
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, a5, v19, 2u);
    }

    return (a2)(0);
  }
}

uint64_t sub_10004F664(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  a7(v14, a6, v16);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10004FA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a8;
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v53 = a3;
  v54 = a4;
  v11 = sub_100005814(&unk_1003DA1A0, &unk_10033F2B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  v19 = os_log_type_enabled(v17, v18);
  v49 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v47 = v11;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = v12;
    v23 = v22;
    v55[0] = v22;
    *v21 = 136315138;
    swift_beginAccess();
    v24 = v15;
    v25 = *(a1 + 24);

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v26 = Dictionary.description.getter();
    v28 = v27;
    v15 = v24;

    v29 = sub_10021145C(v26, v28, v55);

    *(v21 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "Errors from Repair custodians: %s", v21, 0xCu);
    sub_10000839C(v23);
    v12 = v46;

    v11 = v47;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  sub_100008D04(v16, qword_1003FAA88);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "RepairCustodians: 2/2 Starting preflight", v32, 2u);
  }

  (*(v12 + 16))(v15, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianPreflight, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  v34 = v56;
  v33 = v57;
  v47 = sub_1000080F8(v55, v56);
  v35 = swift_allocObject();
  v36 = v50;
  v35[2] = v49;
  v35[3] = a2;
  v37 = v51;
  v38 = v52;
  v35[4] = v36;
  v35[5] = v37;
  v39 = v48;
  v35[6] = v38;
  v35[7] = v39;
  v35[8] = a9;
  v40 = *(v33 + 8);
  v41 = *(v40 + 16);
  v42 = v36;
  v43 = v37;

  v41(v53, v54, sub_10005A1C8, v35, v34, v40);

  return sub_10000839C(v55);
}

uint64_t sub_10004FE44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RepairCustodians: 2/2 Finished preflight", v14, 2u);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "RepairCustodians: Posting Recovery Contact Changed Notification", v17, 2u);
  }

  [objc_opt_self() postRecoveryContactChangedNotification];
  swift_beginAccess();
  v18 = *(a2 + 24);
  v19 = *(v18 + 16);
  if (v19 && (v20 = sub_100306DE8(v19, 0), v21 = sub_1002FD388(&v24, v20 + 4, v19, v18), , sub_10005A1DC(), result = , v21 != v19))
  {
    __break(1u);
  }

  else
  {
    sub_100059740(a4);
    [a5 unlock];
    swift_beginAccess();
    if (*(a6 + 16))
    {
      swift_beginAccess();
      *(a6 + 16) = 0;
      swift_unknownObjectRelease();
    }

    return a7(0);
  }

  return result;
}

uint64_t sub_1000500E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA88);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    type metadata accessor for UUID();
    v13 = Array.description.getter();
    v15 = sub_10021145C(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v10 + 14) = v16;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "RepairCustodians: 1/2 Finished repairing custodians: %s with error: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);

    if (!a1)
    {
      return a3();
    }
  }

  else
  {

    if (!a1)
    {
      return a3();
    }
  }

  v20 = 0x3A726961706552;
  v21 = 0xE700000000000000;
  swift_errorRetain();
  type metadata accessor for UUID();
  v18._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v18);

  sub_10031F174(v20, v21, a1, a3, a4);
}

uint64_t sub_10005045C(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

void sub_1000504D0()
{
  v1 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v37 = *(v1 - 8);
  isa = v37[8].isa;
  __chkstk_darwin(v1);
  v4 = &v35 - v3;
  v5 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = [*(*sub_1000080F8((v0 + 224) *(v0 + 248)) + 16)];
  if (v10 && (v11 = v10, v12 = [v10 aa_altDSID], v11, v12))
  {
    v36 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = v0;
    (*(v6 + 16))(v9, v0 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsEventFactory, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v9, v5);
    v14 = kAACustodianRepairCFUActionBeginEvent;
    v15 = objc_opt_self();
    v16 = v14;

    v17 = String._bridgeToObjectiveC()();

    v18 = String._bridgeToObjectiveC()();

    v19 = [v15 analyticsEventWithName:v16 altDSID:v17 flowID:v18];

    sub_10000839C(v38);
    if (v19)
    {
      v20 = Bool._bridgeToObjectiveC()().super.super.isa;
      [v19 setObject:v20 forKeyedSubscript:kAAFDidSucceed];

      if (qword_1003D7F50 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAAD0);
      v22 = v19;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      v25 = os_log_type_enabled(v23, v24);
      v26 = v36;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v22;
        *v28 = v19;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Reporting Repair CFU Action End Event %@", v27, 0xCu);
        sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
      }

      v30 = v37;
      (v37[2].isa)(v4, v13 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v26);
      Dependency.wrappedValue.getter();
      (v30[1].isa)(v4, v26);
      [v38[0] sendEvent:v22];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAD0);
    v37 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v37, v32, "Account is nil. Not reporting Repair action begin Event.", v33, 2u);
    }

    v34 = v37;
  }
}

id sub_100050A18()
{
  v1 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21[-1] - v4;
  v6 = [*(*sub_1000080F8((v0 + 224) *(v0 + 248)) + 16)];
  if (v6 && (v7 = v6, v8 = [v6 aa_altDSID], v7, v8))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsEventFactory, v1);
    Dependency.wrappedValue.getter();
    (*(v2 + 8))(v5, v1);
    v9 = kAACustodianRepairCFUActionEndEvent;
    v10 = objc_opt_self();
    v11 = v9;

    v12 = String._bridgeToObjectiveC()();

    v13 = String._bridgeToObjectiveC()();

    v14 = [v10 analyticsEventWithName:v11 altDSID:v12 flowID:v13];

    sub_10000839C(v21);
    return v14;
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAD0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Account is nil. Not reporting Repair action end Event.", v19, 2u);
    }

    return 0;
  }
}

uint64_t sub_100050CF8()
{
  sub_10000839C((v0 + 16));

  sub_10000839C((v0 + 64));
  sub_10000839C((v0 + 104));
  sub_10000839C((v0 + 144));
  sub_10000839C((v0 + 184));
  sub_10000839C((v0 + 224));
  sub_10000839C((v0 + 264));
  sub_10000839C((v0 + 304));
  sub_10000839C((v0 + 344));
  sub_10000839C((v0 + 384));
  v1 = *(v0 + 424);

  v2 = *(v0 + 432);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__healthCheckScheduler;
  v4 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__preflightScheduler;
  v6 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__recoveryFactorsController;
  v8 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__cloudStorage;
  v10 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__idmsHandler;
  v12 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__syncManager;
  v14 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianFetcher;
  v16 = sub_100005814(&unk_1003DA118, &qword_10033F238);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__keyRepair;
  v18 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__custodianPreflight;
  v20 = sub_100005814(&unk_1003DA1A0, &unk_10033F2B0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsEventFactory;
  v22 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter;
  v24 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider;
  v26 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v27 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__pushService;
  v28 = sub_100005814(&unk_1003E0370, &qword_10033F320);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v29 = OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__flowPresenter;
  v30 = sub_100005814(&qword_1003DA0D8, &qword_10033F1C8);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  return v0;
}

uint64_t sub_1000511A8()
{
  sub_100050CF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianDaemonService()
{
  result = qword_1003D99F8;
  if (!qword_1003D99F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051254()
{
  sub_10000DAB8(319, qword_1003DC950, &qword_1003D9A10, &qword_100343D80);
  if (v1 <= 0x3F)
  {
    v28 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003D9A18, &qword_1003D9A20, &unk_10033F170);
    if (v3 <= 0x3F)
    {
      v29 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
      if (v5 <= 0x3F)
      {
        v30 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
        if (v7 <= 0x3F)
        {
          v31 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
          if (v9 <= 0x3F)
          {
            v32 = *(v8 - 8) + 64;
            sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
            if (v11 <= 0x3F)
            {
              v33 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &qword_1003D9A48, &unk_1003D9A50, qword_100343CC0);
              if (v13 <= 0x3F)
              {
                v34 = *(v12 - 8) + 64;
                sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
                if (v15 <= 0x3F)
                {
                  v35 = *(v14 - 8) + 64;
                  sub_10000DAB8(319, &qword_1003D9A68, &unk_1003D9A70, &unk_10033F060);
                  if (v17 <= 0x3F)
                  {
                    v36 = *(v16 - 8) + 64;
                    sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
                    if (v19 <= 0x3F)
                    {
                      v37 = *(v18 - 8) + 64;
                      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
                      if (v21 <= 0x3F)
                      {
                        v38 = *(v20 - 8) + 64;
                        sub_10000DAB8(319, &qword_1003D9AE8, &qword_1003D9AF0, &qword_10033F198);
                        if (v23 <= 0x3F)
                        {
                          v39 = *(v22 - 8) + 64;
                          sub_10000DAB8(319, &qword_1003D9AF8, &qword_1003D9B00, &unk_10033F1A0);
                          if (v25 <= 0x3F)
                          {
                            v40 = *(v24 - 8) + 64;
                            sub_10000DAB8(319, &qword_1003D9B08, &unk_1003D9B70, &unk_10033F1B0);
                            if (v27 <= 0x3F)
                            {
                              v41 = *(v26 - 8) + 64;
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
  }
}

uint64_t sub_100051780()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000517CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100051874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000518D4()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  v7 = *(v0 + v3 + v1[8] + 8);

  sub_100012324(*(v0 + v3 + v1[10]), *(v0 + v3 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000519FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10004D278(a1, v6, a2);
}

uint64_t sub_100051A7C()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  v9 = *(v6 + v1[8] + 8);

  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

id sub_100051BCC(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_10004D3F8(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_100051C74()
{
  v1 = *(sub_100005814(&unk_1003DA0E0, &unk_10033F1D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for CustodianshipInfoRecord();
  v6 = *(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);

  v8 = (v0 + v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v23 = v7;
    v11 = *(*(v10 - 8) + 8);
    v11(v0 + v3, v10);
    v11(v8 + v5[5], v10);
    v7 = v23;
    v12 = *(v8 + v5[6] + 8);

    sub_100012324(*(v8 + v5[8]), *(v8 + v5[8] + 8));
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v6 + v15 + 8) & ~v6;
  v17 = *(v0 + v13);

  v18 = *(v0 + v14 + 8);

  v19 = type metadata accessor for UUID();
  v20 = *(*(v19 - 8) + 8);
  v20(v0 + v16, v19);
  v20(v0 + v16 + v5[5], v19);
  v21 = *(v0 + v16 + v5[6] + 8);

  sub_100012324(*(v0 + v16 + v5[8]), *(v0 + v16 + v5[8] + 8));

  return _swift_deallocObject(v0, v16 + v7, v2 | v6 | 7);
}

uint64_t sub_100051EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051F64(uint64_t a1)
{
  v3 = *(sub_100005814(&unk_1003DA0E0, &unk_10033F1D0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + v7);
  v14 = v1 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80));

  return sub_10004CF8C(a1, v9, v1 + v4, v10, v11, v12, v13, v14);
}

uint64_t sub_100052088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000EF88;

  return sub_10004D96C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_100052174()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000521B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_10004E064(a1, v4, v5, v7, v6);
}

uint64_t sub_100052284(uint64_t a1)
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

  return sub_10012F118(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_100052384()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000523DC()
{
  v1 = type metadata accessor for CustodianRecoverySessionRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v7(v0 + v3 + v1[5], v5);
  v7(v0 + v3 + v1[6], v5);
  v8 = *(v0 + v3 + v1[7] + 8);

  v9 = *(v0 + v3 + v1[8] + 8);

  v10 = (v0 + v3 + v1[9]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));
  v12 = *(v4 + v1[11] + 8);

  v13 = v1[12];
  if (!(*(v6 + 48))(v4 + v13, 1, v5))
  {
    v7(v4 + v13, v5);
  }

  v14 = (v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v4 + v1[13] + 8);

  v16 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_1000525EC(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CustodianRecoverySessionRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  sub_10004BC08(a1, a2 & 1, v2 + v6, v10);
}

uint64_t sub_100052704(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100015D6C(a1, a2);
  }

  return a1;
}

uint64_t sub_100052718()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100052770()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000527BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10005282C(uint64_t a1, char a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  sub_10004824C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t sub_100052854(void *a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = a1;
    a1 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_1000528A0()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v37 = *(*(v1 - 8) + 80);
  v35 = *(*(v1 - 8) + 64);

  v2 = *(v0 + 24);

  v36 = (v37 + 32) & ~v37;
  v3 = v0 + v36;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v36, v4);
  v7 = type metadata accessor for CustodianRecord();
  v6(v0 + v36 + v7[5], v4);
  v8 = *(v0 + v36 + v7[6] + 8);

  v9 = *(v0 + v36 + v7[7] + 8);

  v10 = *(v0 + v36 + v7[8] + 8);

  v11 = (v0 + v36 + v7[10]);
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

  v34 = v1;
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

  v24 = v3 + *(v34 + 24);
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

  v30 = (v35 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));

  v32 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16, v37 | 7);
}

uint64_t sub_100052C60(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1000421D0(a1, v6, v7, v1 + v4, v8, v10, v11);
}

uint64_t sub_100052D10()
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

  return _swift_deallocObject(v0, v31 + 16, v37 | 7);
}

uint64_t sub_1000530C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
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
  v13[1] = sub_10000EF88;

  return sub_10002D6D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100053200(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for CustodianRecord() - 8);
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = (v1 + ((*(v4 + 64) + ((*(v4 + 80) + 80) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000EF88;

  return sub_100042884(a1, v17, v16, v5, v6, v7, v8, v10);
}

uint64_t sub_100053364()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000533B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_100043074(a1, v5, v4);
}

uint64_t sub_100053460(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v72 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v72 - v15;
  __chkstk_darwin(v14);
  v18 = &v72 - v17;
  v19 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  v73 = swift_allocObject();
  *(v73 + 16) = a3;
  (*(v20 + 16))(v23, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v19);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v20 + 8))(v23, v19);
  v24 = sub_1000080F8(v75, v75[3]);
  v25 = *v24;
  v26 = v24[1];
  LOBYTE(v23) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v75);
  if ((v23 & 1) == 0)
  {
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
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Client is missing management entitlement, rejecting request to setupCustodianship", v36, 2u);
    }

    v37 = type metadata accessor for UUID();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v13, 1, 1, v37);
    type metadata accessor for AACustodianRecoveryError(0);
    v74 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v75[0];
    sub_100012D04(v13, v10, &qword_1003D8B60, &unk_10033F210);
    isa = 0;
    if ((*(v38 + 48))(v10, 1, v37) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v38 + 8))(v10, v37);
    }

    v41 = _convertErrorToNSError(_:)();
    (a3)[2](a3, isa, v41);

    v42 = v13;
    goto LABEL_26;
  }

  v27 = [*(*sub_1000080F8((a2 + 224) *(a2 + 248)) + 16)];
  if (v27 && (v28 = v27, v29 = [v27 aa_primaryEmail], v28, v29))
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v43 = [a1 handle];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  if (v32)
  {
    if (v30 == v44 && v32 == v46)
    {

LABEL_19:
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100008D04(v48, qword_1003FAA88);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Cannot invite self as Custodian.", v51, 2u);
      }

      v52 = type metadata accessor for UUID();
      v53 = *(v52 - 8);
      (*(v53 + 56))(v18, 1, 1, v52);
      type metadata accessor for AACustodianError(0);
      v74 = -7020;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v54 = v75[0];
      sub_100012D04(v18, v16, &qword_1003D8B60, &unk_10033F210);
      v55 = 0;
      if ((*(v53 + 48))(v16, 1, v52) != 1)
      {
        v55 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v53 + 8))(v16, v52);
      }

      v56 = _convertErrorToNSError(_:)();
      (a3)[2](a3, v55, v56);

      v42 = v18;
LABEL_26:
      sub_100008D3C(v42, &qword_1003D8B60, &unk_10033F210);
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100008D04(v57, qword_1003FAA88);
  v58 = a1;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75[0] = v62;
    *v61 = 136315138;
    v63 = [v58 handle];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = sub_10021145C(v64, v66, v75);

    *(v61 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v59, v60, "Begin custodianship setup for %s.", v61, 0xCu);
    sub_10000839C(v62);
  }

  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  v69[2] = v58;
  v69[3] = sub_10005B7A8;
  v69[4] = v73;
  v69[5] = v68;
  v70 = v58;

  sub_100040D94(v70, sub_10005B7F8, v69);
}

void *sub_100053E08(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CustodianDaemonContainer();
  v36 = v6;
  v37 = &off_1003A54A0;
  v35[0] = a2;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  a3[22] = a1;
  v7 = sub_1000080F8(v35, v6);
  sub_100040738(*v7 + 104, (a3 + 2));
  v8 = sub_1000080F8(v35, v36);
  sub_100040738(*v8 + 144, (a3 + 7));
  v9 = sub_1000080F8(v35, v36);
  sub_100040738(*v9 + 144, v33);
  v10 = v34;
  v11 = sub_10003E968(v33, v34);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v32[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v17 = type metadata accessor for DaemonAccountStore();
  v32[3] = v17;
  v32[4] = &off_1003AB0B8;
  v32[0] = v16;
  v18 = type metadata accessor for DaemonSecurityController(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = sub_10003E968(v32, v17);
  v23 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v32[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v21[5] = v17;
  v21[6] = &off_1003AB0B8;
  v21[2] = v27;
  sub_100016034(0, &qword_1003DF680, CDPCustodianRecoveryKeyController_ptr);
  v28 = a1;
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9870, &qword_10033F000);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v32);
  sub_10000839C(v33);
  a3[15] = v18;
  a3[16] = &off_1003A49D8;
  a3[12] = v21;
  v29 = sub_1000080F8(v35, v36);
  sub_100040738(*v29 + 24, (a3 + 17));
  sub_10000839C(v35);
  return a3;
}

void sub_100054154(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v88 = a1;
  v5 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v85 = *(v5 - 8);
  v6 = *(v85 + 64);
  __chkstk_darwin(v5);
  v84 = &v72 - v7;
  v8 = type metadata accessor for URL();
  v86 = *(v8 - 8);
  v9 = *(v86 + 64);
  v10 = __chkstk_darwin(v8);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v72 - v12;
  v87 = type metadata accessor for UUID();
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v87);
  v79 = v16;
  v80 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  v19 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  (*(v20 + 16))(v23, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v19);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v20 + 8))(v23, v19);
  v25 = sub_1000080F8(v90, v91);
  v81 = a2;
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(v19) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v90);
  if (v19)
  {
    v78 = v8;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v77 = v5;
    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = v13;
    v30 = *(v13 + 16);
    v31 = v87;
    v76 = v30;
    v30(v18, v88, v87);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v34 = os_log_type_enabled(v32, v33);
    v75 = v29;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = v29;
      v37 = swift_slowAlloc();
      v90[0] = v37;
      *v35 = 136315138;
      sub_1000527BC(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v24;
      v41 = v40;
      (*(v36 + 8))(v18, v87);
      v42 = sub_10021145C(v38, v41, v90);
      v24 = v39;
      v43 = v87;

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "Resending custodian invitation to %s.", v35, 0xCu);
      sub_10000839C(v37);
    }

    else
    {

      v43 = v31;
      (*(v29 + 8))(v18, v31);
    }

    v50 = swift_allocObject();
    v87 = v50;
    *(v50 + 16) = sub_10005B8F8;
    *(v50 + 24) = v24;
    v73 = sub_1000080F8((v81 + 144), *(v81 + 168));
    v72 = swift_allocObject();
    swift_weakInit();
    v51 = v80;
    v76(v80, v88, v43);
    v52 = v75;
    v53 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v54 = (v79 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = v24;
    v56 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v52 + 32))(v57 + v53, v51, v43);
    v58 = (v57 + v54);
    *v58 = sub_10005B8F8;
    v58[1] = v55;
    v74 = v55;
    *(v57 + v56) = v72;
    v59 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
    v60 = v87;
    *v59 = sub_10005B220;
    v59[1] = v60;
    v61 = sub_1000080F8((*v73 + 16), *(*v73 + 40));
    type metadata accessor for LocalCache();
    swift_retain_n();

    v62 = v82;
    sub_100307F40();
    v63 = v83;
    URL.appendingPathComponent(_:isDirectory:)();
    v64 = *(v86 + 8);
    v65 = v62;
    v66 = v78;
    v64(v65, v78);
    v67 = v84;
    v68 = v85;
    v69 = *v61 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
    v70 = v77;
    (*(v85 + 16))(v84, v69, v77);
    Dependency.wrappedValue.getter();
    (*(v68 + 8))(v67, v70);
    v71 = *sub_1000080F8(v90, v91);
    sub_1000324D8(v63, sub_10005B318, v57);

    v64(v63, v66);
    sub_10000839C(v90);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAA88);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Client is missing management entitlement, rejecting request to reSendCustodianInvitation", v47, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v89 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = v90[0];
    v49 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v49);
  }
}

uint64_t sub_100054A54(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v111 = &v101 - v8;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v10 = *(updated - 8);
  v106 = updated;
  v107 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(updated);
  v108 = v13;
  v109 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = &v101 - v14;
  v15 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  v20 = type metadata accessor for UUID();
  v118 = *(v20 - 8);
  v119 = v20;
  v21 = *(v118 + 64);
  v22 = __chkstk_darwin(v20);
  v105 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v104 = (&v101 - v24);
  v25 = __chkstk_darwin(v23);
  v103 = &v101 - v26;
  __chkstk_darwin(v25);
  v28 = &v101 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  v30 = swift_allocObject();
  v113 = a3;
  _Block_copy(a3);
  *(v30 + 16) = os_transaction_create();
  v112 = (v30 + 16);
  v31 = [objc_opt_self() lock];
  v114 = a1;
  v32 = [a1 custodianID];
  v117 = v28;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = swift_allocObject();
  *(v33 + 2) = v31;
  *(v33 + 3) = v30;
  *(v33 + 4) = sub_10005B8F8;
  *(v33 + 5) = v29;
  (*(v16 + 16))(v19, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v15);
  v115 = v29;

  v116 = v30;

  v34 = v31;
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v19, v15);
  v35 = a2;
  v36 = sub_1000080F8(v121, v121[3]);
  v37 = *v36;
  v38 = v36[1];
  LOBYTE(v19) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v121);
  if (v19)
  {
    v39 = [*(*sub_1000080F8((a2 + 224) *(a2 + 248)) + 16)];
    if (v39)
    {
      v113 = v34;

      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAA88);
      v41 = v118;
      v42 = *(v118 + 16);
      v43 = v103;
      v112 = (v118 + 16);
      v101 = v42;
      v42(v103, v117, v119);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v121[0] = v47;
        *v46 = 136315138;
        v48 = UUID.uuidString.getter();
        v49 = v35;
        v51 = v50;
        (*(v118 + 8))(v43, v119);
        v52 = sub_10021145C(v48, v51, v121);
        v35 = v49;

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v44, v45, "Removing custodian %s.", v46, 0xCu);
        sub_10000839C(v47);

        v41 = v118;
      }

      else
      {

        (*(v41 + 8))(v43, v119);
      }

      v69 = v114;
      v70 = [v114 custodianID];
      v71 = v104;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v72 = [v69 telemetryFlowID];
      v102 = v33;
      if (v72)
      {
        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;
      }

      else
      {
        v74 = 0;
        v76 = 0;
      }

      v77 = v41;
      v103 = *(v41 + 32);
      v78 = v110;
      v79 = v119;
      (v103)(v110, v71, v119);
      v80 = v106;
      *(v78 + v106[5]) = 4;
      *(v78 + v80[6]) = 0;
      *(v78 + v80[7]) = 0;
      v81 = (v78 + v80[8]);
      *v81 = v74;
      v81[1] = v76;
      *(v78 + v80[9]) = 1;
      v82 = v78 + v80[10];
      *v82 = 0;
      *(v82 + 8) = 1;
      v104 = sub_1000080F8((v35 + 384), *(v35 + 408));
      v83 = swift_allocObject();
      v106 = v83;
      swift_weakInit();
      v84 = v105;
      v101(v105, v117, v79);
      v85 = (*(v77 + 80) + 16) & ~*(v77 + 80);
      v86 = (v21 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      (v103)(v88 + v85, v84, v79);
      *(v88 + v86) = v83;
      *(v88 + v87) = v114;
      v89 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
      v90 = v102;
      *v89 = sub_10005A8C0;
      v89[1] = v90;
      v91 = *v104;
      v92 = type metadata accessor for TaskPriority();
      v93 = v111;
      (*(*(v92 - 8) + 56))(v111, 1, 1, v92);
      v94 = v109;
      sub_10005AA4C(v78, v109, type metadata accessor for CustodianStatusUpdateRequest);
      v95 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v96 = (v108 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      *(v97 + 16) = 0;
      *(v97 + 24) = 0;
      sub_10005ABD0(v94, v97 + v95, type metadata accessor for CustodianStatusUpdateRequest);
      *(v97 + v96) = v91;
      v98 = (v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v98 = sub_10005A994;
      v98[1] = v88;

      v99 = v114;

      sub_1000BCD5C(0, 0, v93, &unk_10033F360, v97);

      sub_10005AD7C(v78, type metadata accessor for CustodianStatusUpdateRequest);
      (*(v118 + 8))(v117, v119);
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAA88);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v64 = os_log_type_enabled(v62, v63);
    v57 = v118;
    if (v64)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Not logged in to AppleAccount, unable to remove custodian", v65, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v121[0] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    v59 = &qword_1003D8140;
    v60 = type metadata accessor for AACustodianError;
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008D04(v53, qword_1003FAA88);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v118;
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Client is missing management entitlement, rejecting request to removeCustodian", v58, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v121[0] = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    v59 = &unk_1003DA100;
    v60 = type metadata accessor for AACustodianRecoveryError;
  }

  sub_1000527BC(v59, v60);
  _BridgedStoredNSError.init(_:userInfo:)();
  v66 = v120;
  [v34 unlock];
  v67 = v112;
  swift_beginAccess();
  if (*v67)
  {
    *v67 = 0;
    swift_unknownObjectRelease();
  }

  v68 = _convertErrorToNSError(_:)();
  (*(v113 + 2))(v113, v68);

  (*(v57 + 8))(v117, v119);
}

void sub_1000556A0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  (*(v12 + 16))(v15, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v11);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  v17 = sub_1000080F8(v55, v55[3]);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v15) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v55);
  if ((v15 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAA88);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Client is missing management entitlement, rejecting request to stopBeingCustodian", v43, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v54 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    v44 = &unk_1003DA100;
    v45 = type metadata accessor for AACustodianRecoveryError;
    goto LABEL_18;
  }

  v20 = [*(*sub_1000080F8((a2 + 224) *(a2 + 248)) + 16)];
  if (!v20)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100008D04(v46, qword_1003FAA88);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Not logged in to AppleAccount, unable to end custodianship", v49, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v54 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    v44 = &qword_1003D8140;
    v45 = type metadata accessor for AACustodianError;
LABEL_18:
    sub_1000527BC(v44, v45);
    _BridgedStoredNSError.init(_:userInfo:)();
    v50 = v55[0];
    v51 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v51);

    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAA88);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v52 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v53 = v7;
    v28 = v27;
    v55[0] = v27;
    *v26 = 136315138;
    v29 = [v22 custodianID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = UUID.uuidString.getter();
    v32 = v31;
    (*(v53 + 8))(v10, v6);
    v33 = sub_10021145C(v30, v32, v55);

    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Ending custodianship %s.", v26, 0xCu);
    sub_10000839C(v28);
    v7 = v53;

    v16 = v52;
  }

  v34 = [v22 custodianID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = objc_allocWithZone(AACustodianInvitationResponseContext);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v37 = [v35 initWithCustodianID:isa didAccept:0];

  (*(v7 + 8))(v10, v6);
  v38 = [v22 altDSID];
  [v37 setAltDSID:v38];

  v39 = [v22 telemetryFlowID];
  [v37 setTelemetryFlowID:v39];

  sub_10004C2B0(v37, sub_10005B8F8, v16);
}

void sub_100055DA4(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(*sub_1000080F8((a1 + 224), *(a1 + 248)) + 16);
  _Block_copy(a2);
  v6 = [v5 aa_primaryAppleAccount];
  if (v6)
  {

    v7 = swift_allocObject();
    *(v7 + 16) = sub_10005A798;
    *(v7 + 24) = v4;

    sub_100046128(sub_10005A7A0, v7);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not logged in to AppleAccount, unable to fetch", v11, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v12);
  }
}

void sub_100056018(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v77 = a2;
  v5 = sub_100005814(&unk_1003E0370, &qword_10033F320);
  v75 = *(v5 - 8);
  v6 = *(v75 + 64);
  __chkstk_darwin(v5);
  v8 = &v74 - v7;
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v74 - v11;
  v76 = swift_allocObject();
  *(v76 + 16) = a3;
  _Block_copy(a3);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAA88);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting recovery with IdMS with context: %@", v17, 0xCu);
    sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
  }

  if (![v14 isAccountRecovery])
  {
    goto LABEL_18;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "This is account recovery", v22, 2u);
  }

  v23 = [v14 recoverySessionID];
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = [v14 recoverySessionID];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
LABEL_20:
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Recovery session ID is missing in account recovery context", v52, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v53 = -9008;
      goto LABEL_31;
    }
  }

  v30 = [v14 ownerAppleID];
  if (!v30)
  {
    goto LABEL_28;
  }

  v31 = [v14 ownerAppleID];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {
LABEL_28:
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Account owner information is missing in account recovery context", v71, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v53 = -9037;
LABEL_31:
      v78 = v53;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v72 = v79[0];
      v73 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v73);

      return;
    }
  }

LABEL_18:
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v39 = v77;
  v38[4] = v14;
  v38[5] = v39;
  v40 = v14;

  sub_1000BCD5C(0, 0, v12, &unk_10033F330, v38);

  v41 = [objc_allocWithZone(AKCustodianContext) init];
  v42 = [v40 ownerAppleID];
  [v41 setOwnerAppleID:v42];

  v43 = [v40 recoverySessionID];
  [v41 setRecoverySessionID:v43];

  [v41 set_cliMode:{objc_msgSend(v40, "CLIMode")}];
  v44 = kAAAnalyticsEventCustodianRecoveryFetchAPSToken;
  v45 = [v40 altDSID];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v54 = [v40 telemetryFlowID];
  if (v54)
  {
    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v59 = sub_100245D38(v44, v47, v49, v56, v58);
  v60 = v75;
  (*(v75 + 16))(v8, v77 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__pushService, v5);
  Dependency.wrappedValue.getter();
  (*(v60 + 8))(v8, v5);
  v61 = sub_1000080F8(v79, v79[3]);
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  v63[2] = v59;
  v63[3] = v62;
  v64 = v76;
  v63[4] = sub_10005A4CC;
  v63[5] = v64;
  v63[6] = v41;
  v63[7] = v40;
  v65 = *v61;
  v66 = v59;

  v67 = v41;
  v68 = v40;
  sub_1002C6068(sub_10005A634, v63);

  sub_10000839C(v79);
}

void sub_100056890(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 recoverySessionID];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10021145C(v8, v10, v26);
      _os_log_impl(&_mh_execute_header, v12, v13, "Canceling recovery session with id: %s", v14, 0xCu);
      sub_10000839C(v15);
    }

    swift_beginAccess();
    v16 = *sub_1000080F8((a2 + 264), *(a2 + 288));
    sub_1001086D8(v8, v10);

    (*(a3 + 16))(a3, 0);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Canceling recovery request missing session id: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v26[3] = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = v26[0];
    v25 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v25);
  }
}

void sub_100056DB0(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_10005A40C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Code validation completed with error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    v19 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v19);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA88);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_10005A40C(a1, 0);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = a1;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Code validation completed with context: %@", v15, 0xCu);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);
    }

    v18 = *(a3 + 16);

    v18(a3, v12, 0);
  }
}

void sub_100057090(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting Custodian recovery verification with context: %@", v10, 0xCu);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
  }

  swift_beginAccess();
  v13 = *sub_1000080F8((a2 + 264), *(a2 + 288));
  _Block_copy(aBlock);
  sub_10010D708(v7, v13, aBlock);
  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_10005723C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27[-1] - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v6);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v12 = sub_1000080F8(v27, v27[3]);
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v10) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v27);
  if (v10)
  {
    v15 = [*(*sub_1000080F8((a2 + 224) *(a2 + 248)) + 16)];
    if (v15)
    {

      sub_10004C2B0(a1, sub_10005B8F8, v11);

      return;
    }

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
      _os_log_impl(&_mh_execute_header, v23, v24, "Not logged in to AppleAccount, unable to fetch", v25, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v26 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v27[0];
    v21 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v21);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Client is missing management entitlement, rejecting request to respondToInvite", v19, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v26 = -9030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v27[0];
    v21 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v21);
  }
}

void sub_1000576B4(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100005814(&qword_1003DA1C0, &qword_10033F2D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = *(*sub_1000080F8((a1 + 224), *(a1 + 248)) + 16);
  _Block_copy(a2);
  v11 = [v10 aa_primaryAppleAccount];
  if (v11)
  {

    (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__healthCheckScheduler, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v8, v4);
    v12 = v21;
    v13 = v22;
    sub_1000080F8(v20, v21);
    (*(v13 + 24))(sub_10005B8F8, v9, v12, v13);
    sub_10000839C(v20);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Not logged in to AppleAccount, unable to fetch", v17, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v23 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = v20[0];
    v19 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v19);
  }
}

void sub_1000579D4(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "Kicking off manatee migration.", v8, 2u);
  }

  v9 = [*(*sub_1000080F8(a1 + 28 a1[31]) + 16)];
  if (v9)
  {

    v10 = a1[41];
    v11 = a1[42];
    sub_1000080F8(a1 + 38, v10);
    (*(v11 + 8))(sub_10005B8F8, v4, v10, v11);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Not logged in to AppleAccount, unable to fetch", v14, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v15);
  }
}

void sub_100057CA8(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v25 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = *(*sub_1000080F8((a1 + 224), *(a1 + 248)) + 16);
  _Block_copy(a2);
  v11 = [v10 aa_primaryAppleAccount];
  if (v11)
  {

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Triggering a sync of trusted contacts with CloudKit.", v15, 2u);
    }

    (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__syncManager, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v8, v4);
    v16 = sub_1000080F8(v25, v25[3]);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10005B8F8;
    *(v17 + 24) = v9;
    v18 = *v16;

    sub_1002E93B4(3, 1, sub_10005A220, v17);

    sub_10000839C(v25);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not logged in to AppleAccount, cannot trigger sync with CloudKit", v22, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v25[5] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v25[0];
    v24 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v24);
  }
}

void sub_1000580A8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v156 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v155 = *(v156 - 8);
  v6 = *(v155 + 64);
  __chkstk_darwin(v156);
  v154 = &v144 - v7;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v161 = *(v8 - 8);
  v162 = v8;
  v9 = v161[8];
  __chkstk_darwin(v8);
  v160 = (&v144 - v10);
  v11 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v158 = *(v11 - 1);
  v159 = v11;
  v12 = v158[8];
  __chkstk_darwin(v11);
  v14 = &v144 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v144 - v23;
  v165 = swift_allocObject();
  *(v165 + 16) = a3;
  (*(v21 + 16))(v24, a2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v20);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v21 + 8))(v24, v20);
  v25 = a2;
  v26 = sub_1000080F8(v170, v171);
  v27 = *v26;
  v28 = v26[1];
  LOBYTE(v24) = sub_10031A5C8(*(a2 + 56));
  sub_10000839C(v170);
  if ((v24 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008D04(v53, qword_1003FAA88);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "RepairCustodians: Client is missing management entitlement, rejecting request to repairCustodians", v56, 2u);
    }

    a3[2](a3, 0);
    goto LABEL_43;
  }

  UUID.init()();
  v29 = UUID.uuidString.getter();
  v31 = v30;
  (*(v16 + 8))(v19, v15);
  sub_1000504D0();
  v153 = v29;
  v32 = sub_100050A18();
  v33 = v32;
  if (a1)
  {
    v34 = a1;
    v35 = swift_allocObject();
    *(v35 + 16) = os_transaction_create();
    v36 = [objc_opt_self() lock];
    type metadata accessor for PartialErrorHandler();
    swift_allocObject();
    v37 = sub_10031FD1C();
    v38 = qword_1003D7F38;
    v157 = v37;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v151 = v33;
    v39 = v33;
    v40 = v36;
    v164 = v35;
    swift_retain_n();
    v41 = v165;
    swift_retain_n();
    v147 = v40;
    v146 = v39;
    if (v38 != -1)
    {
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    v42 = sub_100008D04(v145, qword_1003FAA88);

    v148 = v42;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    v45 = os_log_type_enabled(v43, v44);
    v152 = v31;
    v150 = v15;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v170[0] = v47;
      *v46 = 136315138;
      v48 = Array.description.getter();
      v50 = v34;
      v51 = v25;
      v52 = sub_10021145C(v48, v49, v170);

      *(v46 + 4) = v52;
      v25 = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "RepairCustodians: 1/2 Repairing custodians %s", v46, 0xCu);
      sub_10000839C(v47);
      v41 = v165;

      v31 = v152;
    }

    else
    {

      v50 = v34;
    }

    v163 = v50;
    v63 = v158;
    v62 = v159;
    (v158[2])(v14, v25 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__keyRepair, v159);
    Dependency.wrappedValue.getter();
    (v63[1])(v14, v62);
    v64 = *sub_1000080F8(v170, v171);
    v65 = swift_allocObject();
    v66 = v157;
    v65[2] = v157;
    v65[3] = v25;
    v65[4] = v153;
    v65[5] = v31;
    v67 = v147;
    v65[6] = v151;
    v65[7] = v67;
    v65[8] = v164;
    v65[9] = sub_10005B8F8;
    v65[10] = v41;
    v68 = swift_allocObject();
    v68[2] = v50;
    v68[3] = sub_10005A010;
    v68[4] = v65;
    v68[5] = v66;
    v149 = v68;
    v69 = v161;
    v70 = v161[2];
    v144 = v64;
    v71 = v64 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore;
    v72 = v160;
    v73 = v162;
    v70(v160, v71, v162);
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v74 = v67;
    v75 = v146;
    v76 = v74;
    swift_bridgeObjectRetain_n();
    v159 = v76;
    v158 = v75;
    v147 = v65;

    Dependency.wrappedValue.getter();
    (v69[1])(v72, v73);
    v77 = [*(*sub_1000080F8(&v167 v169) + 16)];
    if (v77)
    {

      sub_10000839C(&v167);
      v78 = v155;
      v79 = v144;
      v80 = v154;
      v81 = v156;
      (*(v155 + 16))(v154, v144 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cdpController, v156);
      Dependency.wrappedValue.getter();
      (*(v78 + 8))(v80, v81);
      v82 = *(*sub_1000080F8(&v167, v169) + 24);
      v166 = 0;
      if ([v82 isManateeAvailable:&v166])
      {
        v83 = v166;
        sub_10000839C(&v167);

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v167 = v87;
          *v86 = 136315138;
          v88 = Array.description.getter();
          v90 = sub_10021145C(v88, v89, &v167);

          *(v86 + 4) = v90;
          _os_log_impl(&_mh_execute_header, v84, v85, "Starting Custodian Repair for UUIDs: %s", v86, 0xCu);
          sub_10000839C(v87);

          v91 = v152;
        }

        else
        {

          v91 = v152;
        }

        v139 = swift_allocObject();
        v140 = v163;
        v139[2] = v79;
        v139[3] = v140;
        v139[4] = v153;
        v139[5] = v91;
        v141 = v149;
        v139[6] = sub_10005A05C;
        v139[7] = v141;

        sub_100083C6C(v140, sub_10005A158, v139);

        goto LABEL_42;
      }

      v117 = v166;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10000839C(&v167);
      v118 = v157;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v145, qword_1003FAAB8);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      v121 = os_log_type_enabled(v119, v120);
      v122 = v165;
      if (v121)
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v167 = v124;
        *v123 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v123 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v167);
        _os_log_impl(&_mh_execute_header, v119, v120, "%s - no manatee available, stopping custodian key repair.", v123, 0xCu);
        sub_10000839C(v124);
      }

      type metadata accessor for AACustodianError(0);
      v167 = -7024;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v125 = v166;
      v100 = swift_allocObject();
      v100[2] = v118;
      v100[3] = v25;
      v126 = v152;
      v100[4] = v153;
      v100[5] = v126;
      v127 = v159;
      v100[6] = v151;
      v100[7] = v127;
      v100[8] = v164;
      v100[9] = sub_10005B8F8;
      v100[10] = v122;
      swift_retain_n();
      v162 = v25;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v128 = v158;
      v129 = v127;
      swift_retain_n();
      swift_retain_n();
      v105 = v129;
      v106 = v128;

      v107 = v125;
      v108 = Logger.logObject.getter();
      v130 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v108, v130))
      {
        v131 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v167 = v161;
        *v131 = 136315394;
        v132 = Array.description.getter();
        v134 = v105;
        v135 = sub_10021145C(v132, v133, &v167);

        *(v131 + 4) = v135;
        v105 = v134;
        *(v131 + 12) = 2112;
        swift_errorRetain();
        v136 = _swift_stdlib_bridgeErrorToNSError();
        *(v131 + 14) = v136;
        v137 = v160;
        *v160 = v136;
        _os_log_impl(&_mh_execute_header, v108, v130, "RepairCustodians: 1/2 Finished repairing custodians: %s with error: %@", v131, 0x16u);
        sub_100008D3C(v137, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v161);
      }
    }

    else
    {
      sub_10000839C(&v167);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      sub_100008D04(v145, qword_1003FAAB8);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      v94 = os_log_type_enabled(v92, v93);
      v95 = v165;
      v96 = v157;
      if (v94)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v167 = v98;
        *v97 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v97 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v167);
        _os_log_impl(&_mh_execute_header, v92, v93, "%s - not logged in to AppleAccount, unable to repair keys", v97, 0xCu);
        sub_10000839C(v98);
      }

      type metadata accessor for AACustodianError(0);
      v167 = -7002;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v99 = v166;
      v100 = swift_allocObject();
      v100[2] = v96;
      v100[3] = v25;
      v101 = v152;
      v100[4] = v153;
      v100[5] = v101;
      v102 = v159;
      v100[6] = v151;
      v100[7] = v102;
      v100[8] = v164;
      v100[9] = sub_10005B8F8;
      v100[10] = v95;
      swift_retain_n();
      v162 = v25;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v103 = v158;
      v104 = v102;
      swift_retain_n();
      swift_retain_n();
      v105 = v104;
      v106 = v103;

      v107 = v99;
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v167 = v161;
        *v110 = 136315394;
        v111 = Array.description.getter();
        v113 = v105;
        v114 = sub_10021145C(v111, v112, &v167);

        *(v110 + 4) = v114;
        v105 = v113;
        *(v110 + 12) = 2112;
        swift_errorRetain();
        v115 = _swift_stdlib_bridgeErrorToNSError();
        *(v110 + 14) = v115;
        v116 = v160;
        *v160 = v115;
        _os_log_impl(&_mh_execute_header, v108, v109, "RepairCustodians: 1/2 Finished repairing custodians: %s with error: %@", v110, 0x16u);
        sub_100008D3C(v116, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v161);
      }
    }

    v167 = 0x3A726961706552;
    v168 = 0xE700000000000000;
    swift_errorRetain();
    v138._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v138);

    sub_10031F174(v167, v168, v107, sub_10005B8AC, v100);

    swift_bridgeObjectRelease_n();

LABEL_42:

    swift_bridgeObjectRelease_n();
    v142 = v158;

    v143 = v159;

    sub_10000839C(v170);

LABEL_43:

    return;
  }

  v57 = v32;

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100008D04(v58, qword_1003FAA88);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "RepairCustodians: Nothing to repair", v61, 2u);
  }

  a3[2](a3, 0);
}

void sub_100059740(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - v7;
  if (a1)
  {
    v9 = a1;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v9 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAD0);
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = a1;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Reporting Repair CFU Action End Event %@", v15, 0xCu);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);
    }

    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__analyticsRTCReporter, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v8, v4);
    [v22[1] sendEvent:v12];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAD0);
    v22[0] = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22[0], v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v22[0], v19, "Event creation failed. Not reporting Repair Event.", v20, 2u);
    }

    v21 = v22[0];
  }
}

void sub_100059AB4(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32[-1] - v7;
  v9 = sub_100005814(&qword_1003DA0F8, &unk_10033F220);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32[-1] - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v10 + 16))(v13, a1 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__clientInfoProvider, v9);
  _Block_copy(a2);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v15 = sub_1000080F8(v32, v33);
  v16 = *v15;
  v17 = v15[1];
  LOBYTE(v13) = sub_10031A5C8(*(a1 + 56));
  sub_10000839C(v32);
  if ((v13 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA88);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "PreflightCustodianRecovery: Client is missing management entitlement, rejecting request to preflight", v24, 2u);
    }

    a2[2](a2, 0);
    goto LABEL_9;
  }

  v18 = [*(*sub_1000080F8((a1 + 224) *(a1 + 248)) + 16)];
  if (v18)
  {

    (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__preflightScheduler, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v8, v4);
    v19 = v33;
    v20 = v34;
    sub_1000080F8(v32, v33);
    (*(*(v20 + 8) + 24))(sub_100008DD4, v14, v19);
    sub_10000839C(v32);
LABEL_9:

    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA88);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Not logged in to AppleAccount, unable to fetch", v28, 2u);
  }

  type metadata accessor for AACustodianError(0);
  v31 = -7002;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000527BC(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v29 = v32[0];
  v30 = _convertErrorToNSError(_:)();
  (a2)[2](a2, v30);
}

uint64_t sub_100059F9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059FD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A014()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A068()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005A108()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005A168()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005A1E4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = a1;
    a1 = 8;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_10005A22C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_10004AC34(v2, v3, v4);
}

uint64_t sub_10005A2EC()
{
  v1 = sub_100005814(&unk_1003DA1D0, &qword_10033F2F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005A380(void *a1, uint64_t a2)
{
  v4 = *(*(sub_100005814(&unk_1003DA1D0, &qword_10033F2F8) - 8) + 80);

  return sub_10004A98C(a1, a2);
}

void sub_10005A40C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10005A418()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_100049970(v2, v3, v4);
}

uint64_t sub_10005A4D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_100046CE0(a1, v4, v5, v7, v6);
}

uint64_t sub_10005A5DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10005A668()
{
  result = qword_1003DA1E8;
  if (!qword_1003DA1E8)
  {
    sub_100008CBC(&qword_1003DA1E0, &qword_100345E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DA1E8);
  }

  return result;
}

uint64_t sub_10005A6CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005A720(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100012324(a1, a2);
  }
}

uint64_t sub_10005A740(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = a1;
    a1 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_10005A7A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_1000452B0(v2, v3, v4);
}

uint64_t sub_10005A85C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));
  v5 = *(v2 + 40);

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10005A8CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10005A994(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_100043B7C(a1, (v1 + v4), v7, v8, v10, v11);
}

uint64_t sub_10005AA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AAB4()
{
  v1 = (type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
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

  v10 = *(v0 + v4);

  v11 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_10005ABD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AC38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
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
  v14[1] = sub_10000EF88;

  return sub_10013F41C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_10005AD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005ADDC()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3, v8);
  v10(v0 + v3 + v1[5], v8);
  v11 = *(v0 + v3 + v1[6] + 8);

  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = *(v0 + v3 + v1[8] + 8);

  v14 = (v0 + v3 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100012324(*v14, v15);
  }

  sub_100012324(*(v7 + v1[11]), *(v7 + v1[11] + 8));
  v16 = *(v7 + v1[13] + 8);

  v17 = *(v7 + v1[14] + 8);

  v18 = v1[16];
  if (!(*(v9 + 48))(v7 + v18, 1, v8))
  {
    v10(v7 + v18, v8);
  }

  v19 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19 + 8);

  return _swift_deallocObject(v0, v19 + 16, v2 | 7);
}

uint64_t sub_10005AFE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CustodianRecord() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000EF88;

  return sub_1000442F0(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10005B134(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_100044998(a1, v5, v4);
}

uint64_t sub_10005B1E0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B220(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t sub_10005B24C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

void sub_10005B318(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *(v2 + v8);
  v11 = *v9;
  v12 = *(v9 + 8);
  v13 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_100043238(a1, a2 & 1, v2 + v6, v11, v12, v10, v14, v15);
}

uint64_t sub_10005B3E4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CustodianRecord() + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_10005B434()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = &v0[v3];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(&v0[v3], v10);
  v12(&v0[v3 + v1[5]], v10);
  v13 = *&v0[v3 + 8 + v1[6]];

  v14 = *&v0[v3 + 8 + v1[7]];

  v15 = *&v0[v3 + 8 + v1[8]];

  v16 = &v0[v3 + v1[10]];
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100012324(*v16, v17);
  }

  sub_100012324(*&v9[v1[11]], *&v9[v1[11] + 8]);
  v18 = *&v9[v1[13] + 8];

  v19 = *&v9[v1[14] + 8];

  v20 = v1[16];
  if (!(*(v11 + 48))(&v9[v20], 1, v10))
  {
    v12(&v9[v20], v10);
  }

  v21 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *&v0[v21 + 8];

  return _swift_deallocObject(v0, v21 + 16, v2 | 7);
}

uint64_t sub_10005B644(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for CustodianRecord() - 8);
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = (v1 + ((*(v4 + 64) + ((*(v4 + 80) + 80) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000082A8;

  return sub_100042884(a1, v17, v16, v5, v6, v7, v8, v10);
}

uint64_t sub_10005B7B0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005B8FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10005B9C8, 0, 0);
}

uint64_t sub_10005B9C8()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetching trusted contacts with request: %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__accountStore, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  v14 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (!v14)
  {
    v21 = v0 + 7;
    sub_10000839C(v0 + 2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Not logged in to AppleAccount, unable to fetch", v24, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v0[8] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError);
LABEL_20:
    _BridgedStoredNSError.init(_:userInfo:)();
    v31 = *v21;
    swift_willThrow();
    v32 = v0[15];

    v33 = v0[1];

    return v33();
  }

  v15 = v0[11];

  sub_10000839C(v0 + 2);
  v16 = [v15 contactType];
  if (v16 != 1)
  {
    if (!v16)
    {
      v17 = swift_task_alloc();
      v0[16] = v17;
      *v17 = v0;
      v17[1] = sub_10005BEC8;
      v18 = v0[11];
      v19 = v0[12];

      return sub_10005C120(v18);
    }

    v21 = v0 + 9;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unknown contactType is requested in the fetch trusted contact request", v30, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v0[10] = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError);
    goto LABEL_20;
  }

  v25 = swift_task_alloc();
  v0[17] = v25;
  *v25 = v0;
  v25[1] = sub_10005BFF4;
  v26 = v0[11];
  v27 = v0[12];

  return sub_10006C4A0(v26);
}

uint64_t sub_10005BEC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  v7 = *(v4 + 120);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_10005BFF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;

  v7 = *(v4 + 120);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_10005C120(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10005C1E0, 0, 0);
}

uint64_t sub_10005C1E0()
{
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanHelpMe.", v4, 2u);
  }

  v5 = v0[19];

  v6 = [v5 cachePolicy];
  if (v6 == 1)
  {
    v10 = swift_task_alloc();
    v0[26] = v10;
    *v10 = v0;
    v10[1] = sub_10005CD04;
    v11 = v0[20];

    return sub_10005EDD4();
  }

  else if (v6)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unknown cachePolicy is requested in the fetch trusted contact request", v14, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v0[17] = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = v0[16];
    swift_willThrow();
    v16 = v0[23];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_10005C4F0;
    v8 = v0[20];

    return sub_10005D518();
  }
}

uint64_t sub_10005C4F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[24];
  v6 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v7 = v4[23];

    v8 = v6[1];

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10005C648, 0, 0);
  }
}

uint64_t sub_10005C648()
{
  v1 = *(v0 + 200);
  v66 = v1;
  v67 = *(v0 + 88);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = [*(v0 + 152) includedStatuses];
  v5 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100070AA8(&unk_1003DA540, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (*(v0 + 40))
  {
    sub_100070AF0((v0 + 16), (v0 + 48));
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v68 = *(v0 + 184);
      v8 = *(v0 + 168);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = _swiftEmptyArrayStorage;
    }

    else
    {
      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  v10 = *(v0 + 176);
  v11 = *(v0 + 184);
  v12 = *(v0 + 168);

  (*(v10 + 8))(v11, v12);
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = _swiftEmptyArrayStorage;
    if (i)
    {
      v15 = 0;
      v69 = v5 & 0xC000000000000001;
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
      v17 = v5;
      while (1)
      {
        if (v69)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v16 + 16))
          {
            goto LABEL_46;
          }

          v18 = *(v5 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v21 = [v18 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100306104(0, *(v14 + 2) + 1, 1, v14);
        }

        v23 = *(v14 + 2);
        v22 = *(v14 + 3);
        if (v23 >= v22 >> 1)
        {
          v14 = sub_100306104((v22 > 1), v23 + 1, 1, v14);
        }

        *(v14 + 2) = v23 + 1;
        *&v14[8 * v23 + 32] = v21;
        ++v15;
        v5 = v17;
        if (v20 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_25:

    v5 = sub_1002E2014(v14);

    if (!*(v5 + 16))
    {

      v44 = v67;
      goto LABEL_53;
    }

    if (!(v67 >> 62))
    {
      v24 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        break;
      }

      goto LABEL_28;
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (!v24)
    {
      break;
    }

LABEL_28:
    v25 = 0;
    v26 = v67 & 0xFFFFFFFFFFFFFF8;
    v27 = (v67 + 32);
    v28 = v67 & 0xC000000000000001;
    v29 = v5 + 56;
    while (1)
    {
      if (v28)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v26 + 16))
        {
          goto LABEL_48;
        }

        v30 = v27[v25];
      }

      v31 = v30;
      if (__OFADD__(v25++, 1))
      {
        break;
      }

      v33 = [v30 status];
      if (*(v5 + 16) && (v34 = v33, v35 = *(v5 + 40), v36 = static Hasher._hash(seed:_:)(), v37 = -1 << *(v5 + 32), v38 = v36 & ~v37, ((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (*(*(v5 + 48) + 8 * v38) != v34)
        {
          v38 = (v38 + 1) & v39;
          if (((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v40 = v26;
        v41 = v24;
        v42 = v28;
        v43 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v28 = v42;
        v24 = v41;
        v26 = v40;
        v27 = (v67 + 32);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v25 == v24)
        {
LABEL_43:
          v44 = _swiftEmptyArrayStorage;
          goto LABEL_52;
        }
      }

      else
      {
LABEL_29:

        if (v25 == v24)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_52:

LABEL_53:
  if ([*(v0 + 152) shouldLookUpContactInAddressBook])
  {
    if (v44 >> 62)
    {
      goto LABEL_77;
    }

    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      while (2)
      {
        v46 = v44 & 0xFFFFFFFFFFFFFF8;
        v47 = v44 & 0xC000000000000001;
        v48 = v44;
        if ((v44 & 0xC000000000000001) != 0)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_59:
          v50 = v49;
          v51 = *(v0 + 160);
          v52 = sub_10006F874(v49, *(v0 + 152));
          if (v66)
          {

            v53 = *(v0 + 184);

            v54 = *(v0 + 8);

            return v54();
          }

          v56 = v52;
          [v50 setLocalContactRepresentation:v52];

          if (v45 == 1)
          {
            break;
          }

          v59 = 5;
          while (1)
          {
            v60 = v59 - 4;
            if (v47)
            {
              v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v60 >= *(v46 + 16))
              {
                goto LABEL_75;
              }

              v61 = *(v44 + 8 * v59);
            }

            v62 = v61;
            v63 = v59 - 3;
            if (__OFADD__(v60, 1))
            {
              break;
            }

            v64 = *(v0 + 160);
            v65 = sub_10006F874(v61, *(v0 + 152));
            [v62 setLocalContactRepresentation:v65];

            ++v59;
            v44 = v48;
            if (v63 == v45)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v49 = *(v44 + 32);
            goto LABEL_59;
          }

LABEL_75:
          __break(1u);
        }

        __break(1u);
LABEL_77:
        v45 = _CocoaArrayWrapper.endIndex.getter();
        if (!v45)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_64:
  v57 = *(v0 + 184);

  v58 = *(v0 + 8);

  return v58(v44);
}

uint64_t sub_10005CD04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[26];
  v6 = *v2;
  v4[27] = v1;

  if (v1)
  {
    v7 = v4[23];

    v8 = v6[1];

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10005CE5C, 0, 0);
  }
}

uint64_t sub_10005CE5C()
{
  v1 = *(v0 + 216);
  v66 = v1;
  v67 = *(v0 + 112);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = [*(v0 + 152) includedStatuses];
  v5 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100070AA8(&unk_1003DA540, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (*(v0 + 40))
  {
    sub_100070AF0((v0 + 16), (v0 + 48));
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v68 = *(v0 + 184);
      v8 = *(v0 + 168);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = _swiftEmptyArrayStorage;
    }

    else
    {
      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  v10 = *(v0 + 176);
  v11 = *(v0 + 184);
  v12 = *(v0 + 168);

  (*(v10 + 8))(v11, v12);
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = _swiftEmptyArrayStorage;
    if (i)
    {
      v15 = 0;
      v69 = v5 & 0xC000000000000001;
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
      v17 = v5;
      while (1)
      {
        if (v69)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v16 + 16))
          {
            goto LABEL_46;
          }

          v18 = *(v5 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v21 = [v18 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100306104(0, *(v14 + 2) + 1, 1, v14);
        }

        v23 = *(v14 + 2);
        v22 = *(v14 + 3);
        if (v23 >= v22 >> 1)
        {
          v14 = sub_100306104((v22 > 1), v23 + 1, 1, v14);
        }

        *(v14 + 2) = v23 + 1;
        *&v14[8 * v23 + 32] = v21;
        ++v15;
        v5 = v17;
        if (v20 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_25:

    v5 = sub_1002E2014(v14);

    if (!*(v5 + 16))
    {

      v44 = v67;
      goto LABEL_53;
    }

    if (!(v67 >> 62))
    {
      v24 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        break;
      }

      goto LABEL_28;
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (!v24)
    {
      break;
    }

LABEL_28:
    v25 = 0;
    v26 = v67 & 0xFFFFFFFFFFFFFF8;
    v27 = (v67 + 32);
    v28 = v67 & 0xC000000000000001;
    v29 = v5 + 56;
    while (1)
    {
      if (v28)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v26 + 16))
        {
          goto LABEL_48;
        }

        v30 = v27[v25];
      }

      v31 = v30;
      if (__OFADD__(v25++, 1))
      {
        break;
      }

      v33 = [v30 status];
      if (*(v5 + 16) && (v34 = v33, v35 = *(v5 + 40), v36 = static Hasher._hash(seed:_:)(), v37 = -1 << *(v5 + 32), v38 = v36 & ~v37, ((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (*(*(v5 + 48) + 8 * v38) != v34)
        {
          v38 = (v38 + 1) & v39;
          if (((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v40 = v26;
        v41 = v24;
        v42 = v28;
        v43 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v28 = v42;
        v24 = v41;
        v26 = v40;
        v27 = (v67 + 32);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v25 == v24)
        {
LABEL_43:
          v44 = _swiftEmptyArrayStorage;
          goto LABEL_52;
        }
      }

      else
      {
LABEL_29:

        if (v25 == v24)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_52:

LABEL_53:
  if ([*(v0 + 152) shouldLookUpContactInAddressBook])
  {
    if (v44 >> 62)
    {
      goto LABEL_77;
    }

    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      while (2)
      {
        v46 = v44 & 0xFFFFFFFFFFFFFF8;
        v47 = v44 & 0xC000000000000001;
        v48 = v44;
        if ((v44 & 0xC000000000000001) != 0)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_59:
          v50 = v49;
          v51 = *(v0 + 160);
          v52 = sub_10006F874(v49, *(v0 + 152));
          if (v66)
          {

            v53 = *(v0 + 184);

            v54 = *(v0 + 8);

            return v54();
          }

          v56 = v52;
          [v50 setLocalContactRepresentation:v52];

          if (v45 == 1)
          {
            break;
          }

          v59 = 5;
          while (1)
          {
            v60 = v59 - 4;
            if (v47)
            {
              v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v60 >= *(v46 + 16))
              {
                goto LABEL_75;
              }

              v61 = *(v44 + 8 * v59);
            }

            v62 = v61;
            v63 = v59 - 3;
            if (__OFADD__(v60, 1))
            {
              break;
            }

            v64 = *(v0 + 160);
            v65 = sub_10006F874(v61, *(v0 + 152));
            [v62 setLocalContactRepresentation:v65];

            ++v59;
            v44 = v48;
            if (v63 == v45)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v49 = *(v44 + 32);
            goto LABEL_59;
          }

LABEL_75:
          __break(1u);
        }

        __break(1u);
LABEL_77:
        v45 = _CocoaArrayWrapper.endIndex.getter();
        if (!v45)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_64:
  v57 = *(v0 + 184);

  v58 = *(v0 + 8);

  return v58(v44);
}

uint64_t sub_10005D518()
{
  v1[18] = v0;
  v2 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = *(*(sub_100005814(&unk_1003D91B0, qword_1003444F0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v1[23] = RecoveryRecordsRequest;
  v7 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v8 = type metadata accessor for CustodianRecord();
  v1[25] = v8;
  v9 = *(v8 - 8);
  v1[26] = v9;
  v10 = *(v9 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v11 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v1[29] = v11;
  v12 = *(v11 - 8);
  v1[30] = v12;
  v13 = *(v12 + 64) + 15;
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_10005D71C, 0, 0);
}

uint64_t sub_10005D71C()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[32] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanHelpMe from local cache.", v4, 2u);
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[18];

  v9 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController;
  v0[33] = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController;
  v10 = *(v6 + 16);
  v0[34] = v10;
  v0[35] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v5, v8 + v9, v7);
  Dependency.wrappedValue.getter();
  v11 = *(v6 + 8);
  v0[36] = v11;
  v0[37] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  sub_1000080F8(v0 + 2, v0[5]);
  v12 = type metadata accessor for CustodianStorageController();
  v13 = swift_task_alloc();
  v0[38] = v13;
  *v13 = v0;
  v13[1] = sub_10005D98C;

  return (sub_1000308CC)(v12, &off_1003A4C78);
}

uint64_t sub_10005D98C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_10005E8F0;
  }

  else
  {
    v5 = sub_10005DAA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005DAA0()
{
  v1 = *(v0 + 312);
  result = sub_10000839C((v0 + 16));
  v3 = *(v1 + 16);
  *(v0 + 328) = v3;
  if (v3)
  {
    v4 = *(v0 + 312);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v8 = *(v0 + 144);
    *(v0 + 136) = _swiftEmptyArrayStorage;
    *(v0 + 336) = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler;
    v9 = *(v5 + 80);
    *(v0 + 384) = v9;
    *(v0 + 344) = 0;
    *(v0 + 352) = _swiftEmptyArrayStorage;
    if (*(v4 + 16))
    {
      v38 = *(v0 + 288);
      v39 = *(v0 + 296);
      v10 = *(v0 + 272);
      v37 = *(v0 + 280);
      v11 = *(v0 + 264);
      v12 = *(v0 + 248);
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      v15 = *(v0 + 192);
      sub_100070E78(v4 + ((v9 + 32) & ~v9), v14, type metadata accessor for CustodianRecord);
      v16 = *(v6 + 20);
      *(v0 + 388) = v16;
      v17 = type metadata accessor for UUID();
      (*(*(v17 - 8) + 16))(v15, v14 + v16, v17);
      *(v15 + v7[5]) = 0;
      v18 = v15 + v7[6];
      *v18 = 0;
      *(v18 + 8) = 1;
      *(v15 + v7[7]) = 1;
      v19 = (v15 + v7[8]);
      *v19 = 0;
      v19[1] = 0;
      v20 = (v15 + v7[9]);
      *v20 = 0;
      v20[1] = 0;
      v10(v12, v8 + v11, v13);
      Dependency.wrappedValue.getter();
      v38(v12, v13);
      v21 = *sub_1000080F8((v0 + 56), *(v0 + 80));
      v22 = swift_task_alloc();
      *(v0 + 360) = v22;
      *v22 = v0;
      v22[1] = sub_10005DDC8;
      v23 = *(v0 + 192);
      v24 = *(v0 + 176);

      return sub_100021548(v24, v23, 0, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v25 = *(v0 + 312);
    v26 = *(v0 + 256);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FetchCustodians found 0 records", v29, 2u);
    }

    v30 = *(v0 + 248);
    v31 = *(v0 + 216);
    v32 = *(v0 + 224);
    v33 = *(v0 + 192);
    v35 = *(v0 + 168);
    v34 = *(v0 + 176);

    v36 = *(v0 + 8);

    return v36(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_10005DDC8()
{
  v2 = *(*v1 + 360);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10005E050;
  }

  else
  {
    v3 = sub_10005DEE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005DEE0()
{
  v1 = *(v0 + 176);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 56));
  v3 = *(v0 + 388);
  v4 = *(v0 + 224);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  (*(v6 + 16))(v5, *(v0 + 144) + *(v0 + 336), v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  v8 = *sub_1000080F8((v0 + 96), *(v0 + 120));
  v9 = swift_task_alloc();
  *(v0 + 368) = v9;
  *v9 = v0;
  v9[1] = sub_10005E1C0;

  return sub_100080620(v4 + v3, 1);
}

uint64_t sub_10005E050()
{
  v1 = *(v0 + 176);
  sub_10000839C((v0 + 56));
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 388);
  v4 = *(v0 + 224);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  (*(v6 + 16))(v5, *(v0 + 144) + *(v0 + 336), v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  v8 = *sub_1000080F8((v0 + 96), *(v0 + 120));
  v9 = swift_task_alloc();
  *(v0 + 368) = v9;
  *v9 = v0;
  v9[1] = sub_10005E1C0;

  return sub_100080620(v4 + v3, 1);
}

uint64_t sub_10005E1C0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v7 = *(v4 + 352);
    v8 = *(v4 + 312);

    v9 = sub_10005E7E8;
  }

  else
  {
    *(v4 + 392) = a1;
    v9 = sub_10005E2FC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10005E2FC()
{
  if (*(v0 + 392) && *(v0 + 392) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 176);

  sub_10000839C((v0 + 96));
  sub_100070E78(v2, v3, type metadata accessor for CustodianRecord);
  v5 = type metadata accessor for CustodianRecoveryInfoRecord();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);
  v7 = sub_10005E9A0(v3, v6, v1 & 1, 1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v47 = *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v8 = *(v0 + 328);
  v9 = *(v0 + 224);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 344) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_100070B00(v10, type metadata accessor for FetchRecoveryRecordsRequest);
  sub_100070B00(v9, type metadata accessor for CustodianRecord);
  v13 = *(v0 + 136);
  result = sub_100008D3C(v11, &unk_1003D91B0, qword_1003444F0);
  if (v12 == v8)
  {
    v15 = *(v0 + 312);
    v16 = *(v0 + 256);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Returning cached trusted contacts", v19, 2u);
    }

    v20 = *(v0 + 248);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v23 = *(v0 + 192);
    v25 = *(v0 + 168);
    v24 = *(v0 + 176);

    v26 = *(v0 + 8);

    return v26(v13);
  }

  else
  {
    v27 = *(v0 + 344) + 1;
    *(v0 + 344) = v27;
    *(v0 + 352) = v13;
    v28 = *(v0 + 312);
    if (v27 >= *(v28 + 16))
    {
      __break(1u);
    }

    else
    {
      v50 = *(v0 + 296);
      v49 = *(v0 + 288);
      v29 = *(v0 + 272);
      v48 = *(v0 + 280);
      v30 = *(v0 + 264);
      v31 = *(v0 + 248);
      v33 = *(v0 + 224);
      v32 = *(v0 + 232);
      v34 = *(v0 + 200);
      v36 = *(v0 + 184);
      v35 = *(v0 + 192);
      v37 = *(v0 + 144);
      sub_100070E78(v28 + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(*(v0 + 208) + 72) * v27, v33, type metadata accessor for CustodianRecord);
      v38 = *(v34 + 20);
      *(v0 + 388) = v38;
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 16))(v35, v33 + v38, v39);
      *(v35 + v36[5]) = 0;
      v40 = v35 + v36[6];
      *v40 = 0;
      *(v40 + 8) = 1;
      *(v35 + v36[7]) = 1;
      v41 = (v35 + v36[8]);
      *v41 = 0;
      v41[1] = 0;
      v42 = (v35 + v36[9]);
      *v42 = 0;
      v42[1] = 0;
      v29(v31, v37 + v30, v32);
      Dependency.wrappedValue.getter();
      v49(v31, v32);
      v43 = *sub_1000080F8((v0 + 56), *(v0 + 80));
      v44 = swift_task_alloc();
      *(v0 + 360) = v44;
      *v44 = v0;
      v44[1] = sub_10005DDC8;
      v45 = *(v0 + 192);
      v46 = *(v0 + 176);

      return sub_100021548(v46, v45, 0, 0);
    }
  }

  return result;
}

uint64_t sub_10005E7E8()
{
  v1 = v0[28];
  v2 = v0[22];
  sub_100070B00(v0[24], type metadata accessor for FetchRecoveryRecordsRequest);
  sub_100070B00(v1, type metadata accessor for CustodianRecord);
  sub_100008D3C(v2, &unk_1003D91B0, qword_1003444F0);
  sub_10000839C(v0 + 12);
  v3 = v0[47];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v9 = v0[21];
  v8 = v0[22];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10005E8F0()
{
  sub_10000839C(v0 + 2);
  v1 = v0[40];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];

  v8 = v0[1];

  return v8();
}

id sub_10005E9A0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v60 = a4;
  v58 = a3;
  v59 = a2;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for PersonNameComponents();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecord();
  v15 = a1 + v14[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v55 = *(a1 + v14[9]);
  v16 = (a1 + v14[6]);
  v17 = *v16;
  v18 = v16[1];
  v56 = String._bridgeToObjectiveC()();
  v19 = (a1 + v14[7]);
  v20 = *v19;
  v21 = v19[1];
  if (v21)
  {
    v22 = *v19;
    v23 = v19[1];
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  v24 = (a1 + v14[8]);
  v25 = *v24;
  v26 = v24[1];
  if (v26)
  {
    v27 = *v24;
    v28 = v24[1];
    v53 = String._bridgeToObjectiveC()();
  }

  else
  {
    v53 = 0;
  }

  PersonNameComponents.init()();
  if (v21)
  {
    sub_1002576F0(v20, v21);
  }

  PersonNameComponents.givenName.setter();
  if (v26)
  {
    sub_1002576F0(v25, v26);
  }

  PersonNameComponents.familyName.setter();
  v29 = objc_opt_self();
  v30 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v31 = [v29 localizedStringFromPersonNameComponents:v30 style:0 options:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v10 + 8))(v13, v9);
  v32 = String._bridgeToObjectiveC()();

  sub_100012D04(a1 + v14[16], v8, &qword_1003D8B60, &unk_10033F210);
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v35 = 0;
  if ((*(v34 + 48))(v8, 1, v33) != 1)
  {
    v35 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v34 + 8))(v8, v33);
  }

  v36 = (a1 + v14[13]);
  if (v36[1])
  {
    v37 = *v36;
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  v39 = (a1 + v14[14]);
  if (v39[1])
  {
    v40 = *v39;
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  v42 = a1 + v14[15];
  if (*(v42 + 8))
  {
    v43 = 0;
  }

  else
  {
    v43 = *v42;
  }

  v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v52 = v43;
  BYTE1(v51) = v58 & 1;
  LOBYTE(v51) = v59 & 1;
  v46 = v56;
  v45 = isa;
  v47 = v54;
  v48 = v53;
  v49 = [v44 initWithID:isa status:v55 handle:v56 firstName:v54 lastName:v53 displayName:v32 isAcceptedAndShared:v51 isIdMSConfirmed:v60 preflightStatus:v35 otCustodianID:v38 keyCreatedOnBuild:v41 repairDate:v52 repairCount:?];

  sub_100070B00(a1, type metadata accessor for CustodianRecord);
  return v49;
}