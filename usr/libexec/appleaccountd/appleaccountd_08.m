uint64_t sub_1000E9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 72) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for ShareMessageContext(0);
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1000E96A0, 0, 0);
}

uint64_t sub_1000E96A0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  sub_1000E9C48(*(v0 + 16), v1, type metadata accessor for ShareMessageContext);
  v7 = type metadata accessor for ShareMessage(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v10 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v10 + 16) = 2;
  v12 = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 16))(v10 + v12, v1, v13);
  sub_1000E9C48(v1 + *(v2 + 20), v10 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, type metadata accessor for CloudShareInfo);
  LOBYTE(v2) = *(v1 + *(v2 + 24));
  sub_1000E9CB0(v1);
  *(v10 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_finalizeSetup) = v2;
  v14 = v10 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
  *v14 = v5;
  *(v14 + 8) = v3 & 1;
  v15 = sub_1000E9D30(v6, v4);
  v16 = *(v0 + 48);
  sub_10026329C(v10, v15, 0xD00000000000001ALL, 0x800000010032E5A0);

  v18 = *(v0 + 64);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000E98AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_1000E9978, 0, 0);
}

uint64_t sub_1000E9978()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 80);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  (*(v2 + 16))(v1, *(v0 + 16), v3);
  v8 = type metadata accessor for FinalizeCustodianSetupMessage();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 0;
  v12 = v11 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v11 + 16) = 3;
  (*(v2 + 32))(v11 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v1, v3);
  v13 = v11 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
  *v13 = v6;
  *(v13 + 8) = v4 & 1;
  v14 = sub_1000E9D30(v7, v5);
  v15 = *(v0 + 48);
  sub_1002632FC(v11, v14, 0xD000000000000026, 0x800000010032E570);

  v17 = *(v0 + 72);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000E9B28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000839C((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_1000E9BA0()
{
  result = qword_1003DD450;
  if (!qword_1003DD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD450);
  }

  return result;
}

unint64_t sub_1000E9BF4()
{
  result = qword_1003DD458;
  if (!qword_1003DD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD458);
  }

  return result;
}

uint64_t sub_1000E9C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E9CB0(uint64_t a1)
{
  v2 = type metadata accessor for ShareMessageContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000E9D30(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(AAMessagingDestination);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithHandle:v5];

  if (!v6)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA88);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10021145C(a1, a2, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to generate destination from handle: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v6;
}

id sub_1000E9F18()
{
  v0 = objc_allocWithZone(AAMessagingDestination);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithHandle:v1];

  result = v2;
  if (!v2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to generate destination from handle.", v7, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v8;
  }

  return result;
}

void sub_1000EA090(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "After processing message, Setup finalization finished Successfully", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "After processing message, setup finalization finished with error: %@", v3, 0xCu);
    sub_100083380(v4);

LABEL_10:

    return;
  }
}

id sub_1000EA3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianMessageProcessor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CustodianMessageProcessor()
{
  result = qword_1003DD578;
  if (!qword_1003DD578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EA550()
{
  sub_10000F7D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000EA604(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v148 = a3;
  v149 = a4;
  v154 = a2;
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v147 = &v146 - v8;
  v9 = type metadata accessor for URL();
  v146 = *(v9 - 8);
  v10 = *(v146 + 64);
  __chkstk_darwin(v9);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v151 = *(v13 - 8);
  v152 = v13;
  v14 = *(v151 + 64);
  __chkstk_darwin(v13);
  v150 = &v146 - v15;
  v16 = kAAAnalyticsEventCustodianDecodeIDSMessage;
  v153 = v4;
  v17 = (v4 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore);
  v18 = *(*sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore), *(v4 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_accountStore + 24)) + 16);
  v19 = v16;
  v20 = [v18 aa_primaryAppleAccount];
  if (v20 && (v21 = v20, v22 = [v20 aa_altDSID], v21, v22))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v19;
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = v19;
    v24 = 0;
  }

  v155 = [objc_opt_self() analyticsEventWithName:v19 altDSID:v24 flowID:0];

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100008D04(v26, qword_1003FAA40);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Processing message...", v29, 2u);
  }

  v30 = [*(*sub_1000080F8(v17 v17[3]) + 16)];
  if (v30)
  {
    v31 = v30;
    v157 = 0;
    v32 = v154;
    v33 = sub_1001DD358(a1, v154, &v157);
    if (!v33)
    {
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed to decode data, unable to process message", v58, 2u);
      }

      sub_1000EBAD0();
      v59 = v157;
      swift_errorRetain();
      v60 = sub_10025666C(-9031, v59);
      if (v155)
      {
        v61 = v155;
        v62 = _convertErrorToNSError(_:)();
        [v61 updateTaskResultWithError:v62];
      }

      v63 = v150;
      v64 = v151;
      v65 = v152;
      (*(v151 + 16))(v150, v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v152);
      Dependency.wrappedValue.getter();
      (*(v64 + 8))(v63, v65);
      swift_getObjectType();
      sub_100246FA8(v155);

      swift_unknownObjectRelease();
      goto LABEL_88;
    }

    v34 = v33;
    v35 = *(v33 + 16);
    if (v35 > 1)
    {
      if (v35 != 2)
      {
        if (v35 == 3)
        {
          if (qword_1003D7F38 != -1)
          {
            swift_once();
          }

          sub_100008D04(v26, qword_1003FAA88);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.debug.getter();
          v38 = os_log_type_enabled(v36, v37);
          v39 = v149;
          if (v38)
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "Trying to process finalize message", v40, 2u);
            v32 = v154;
          }

          v41 = sub_1001DD670(a1, v32, &v157);
          if (v41)
          {
            v42 = v41;

            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v156 = v46;
              *v45 = 136315138;
              *(v45 + 4) = sub_10021145C(v148, v39, &v156);
              _os_log_impl(&_mh_execute_header, v43, v44, "Received encrypted PRKC from %s", v45, 0xCu);
              sub_10000839C(v46);
            }

            v47 = v147;
            v48 = *sub_1000080F8((v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_setupFinalizationHandler), *(v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_setupFinalizationHandler + 24));
            v49 = type metadata accessor for TaskPriority();
            (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
            v50 = swift_allocObject();
            v50[2] = 0;
            v50[3] = 0;
            v50[4] = v48;
            v50[5] = v42;
            v50[6] = v31;
            v50[7] = sub_1000EA090;
            v50[8] = 0;

            v51 = v31;
            sub_1000BCD5C(0, 0, v47, &unk_10033F8B0, v50);

            goto LABEL_87;
          }

          sub_1000EBAD0();
          v115 = v157;
          swift_errorRetain();
          v105 = sub_10025666C(-9034, v115);
          if (v155)
          {
            v116 = v155;
            v117 = _convertErrorToNSError(_:)();
            [v116 updateTaskResultWithError:v117];
          }

          v118 = v150;
          v119 = v151;
          v120 = v152;
          (*(v151 + 16))(v150, v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v152);
          Dependency.wrappedValue.getter();
          (*(v119 + 8))(v118, v120);
          swift_getObjectType();
          sub_100246FA8(v155);
          swift_unknownObjectRelease();
          v111 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v111, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            v123 = "Invalid message received!";
LABEL_71:
            _os_log_impl(&_mh_execute_header, v111, v121, v123, v122, 2u);

LABEL_81:

            v31 = v111;
LABEL_83:

LABEL_88:

            return;
          }

          goto LABEL_82;
        }

        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        sub_100008D04(v26, qword_1003FAA88);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "Trying to process removed message", v93, 2u);
          v32 = v154;
        }

        v94 = sub_1001DD6B8(a1, v32, &v157);
        if (!v94)
        {
          sub_1000EBAD0();
          v124 = v157;
          swift_errorRetain();
          v105 = sub_10025666C(-9036, v124);
          if (v155)
          {
            v125 = v155;
            v126 = _convertErrorToNSError(_:)();
            [v125 updateTaskResultWithError:v126];
          }

          v127 = v150;
          v128 = v151;
          v129 = v152;
          (*(v151 + 16))(v150, v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v152);
          Dependency.wrappedValue.getter();
          (*(v128 + 8))(v127, v129);
          swift_getObjectType();
          sub_100246FA8(v155);
          swift_unknownObjectRelease();
          v111 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v111, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            v123 = "Unable to decode custodian removed message!";
            goto LABEL_71;
          }

LABEL_82:

          goto LABEL_83;
        }

        v95 = v94;
        v96 = *sub_1000080F8((v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_custodianRemovedHandler), *(v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_custodianRemovedHandler + 24));
        sub_1000DB2E0(v95);
        goto LABEL_58;
      }

      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v26, qword_1003FAA88);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Trying to process share message", v75, 2u);
        v32 = v154;
      }

      v76 = sub_1001DD628(a1, v32, &v157);
      if (v76)
      {
        v77 = v76;

        v78 = v149;

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v154 = v34;
          v152 = v82;
          v156 = v82;
          *v81 = 136315394;
          v83 = v146;
          (*(v146 + 16))(v12, v77 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, v9);
          sub_1000EBC98();
          LODWORD(v151) = v80;
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          (*(v83 + 8))(v12, v9);
          v87 = sub_10021145C(v84, v86, &v156);

          *(v81 + 4) = v87;
          *(v81 + 12) = 2080;
          v88 = v148;
          *(v81 + 14) = sub_10021145C(v148, v78, &v156);
          _os_log_impl(&_mh_execute_header, v79, v151, "Received shareUrl %s from %s", v81, 0x16u);
          swift_arrayDestroy();

          v89 = v153;
          v90 = v78;
        }

        else
        {

          v89 = v153;
          v90 = v78;
          v88 = v148;
        }

        v142 = v147;
        v143 = *sub_1000080F8((v89 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_shareHandler), *(v89 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_shareHandler + 24));
        v144 = type metadata accessor for TaskPriority();
        (*(*(v144 - 8) + 56))(v142, 1, 1, v144);
        v145 = swift_allocObject();
        v145[2] = 0;
        v145[3] = 0;
        v145[4] = v143;
        v145[5] = v77;
        v145[6] = v88;
        v145[7] = v90;

        sub_10001359C(0, 0, v142, &unk_100341A60, v145);

        goto LABEL_86;
      }

      sub_1000EBAD0();
      v104 = v157;
      swift_errorRetain();
      v105 = sub_10025666C(-9033, v104);
      if (v155)
      {
        v106 = v155;
        v107 = _convertErrorToNSError(_:)();
        [v106 updateTaskResultWithError:v107];
      }

      v108 = v150;
      v109 = v151;
      v110 = v152;
      (*(v151 + 16))(v150, v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v152);
      Dependency.wrappedValue.getter();
      (*(v109 + 8))(v108, v110);
      swift_getObjectType();
      sub_100246FA8(v155);
      swift_unknownObjectRelease();
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v111, v112))
      {
        goto LABEL_82;
      }

      v113 = swift_slowAlloc();
      *v113 = 0;
      v114 = "Invalid message received!";
LABEL_80:
      _os_log_impl(&_mh_execute_header, v111, v112, v114, v113, 2u);

      goto LABEL_81;
    }

    if (*(v33 + 16))
    {
      v97 = v149;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v26, qword_1003FAA88);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v98, v99, "Trying to process invitationResponse message", v100, 2u);
        v32 = v154;
      }

      v101 = sub_1001DD5E0(a1, v32, &v157);
      if (!v101)
      {
        sub_1000EBAD0();
        v136 = v157;
        swift_errorRetain();
        v105 = sub_10025666C(-9032, v136);
        if (v155)
        {
          v137 = v155;
          v138 = _convertErrorToNSError(_:)();
          [v137 updateTaskResultWithError:v138];
        }

        v139 = v150;
        v140 = v151;
        v141 = v152;
        (*(v151 + 16))(v150, v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v152);
        Dependency.wrappedValue.getter();
        (*(v140 + 8))(v139, v141);
        swift_getObjectType();
        sub_100246FA8(v155);
        swift_unknownObjectRelease();
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v111, v112))
        {
          goto LABEL_82;
        }

        v113 = swift_slowAlloc();
        *v113 = 0;
        v114 = "Unable to decode invitation results!";
        goto LABEL_80;
      }

      v102 = v101;
      v103 = *sub_1000080F8((v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationResponseHandler), *(v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationResponseHandler + 24));
      sub_1000D8C14(v102, v148, v97);
    }

    else
    {
      v66 = v149;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v26, qword_1003FAA88);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Trying to process invitation message", v69, 2u);
        v32 = v154;
      }

      v70 = sub_1001DD3A0(a1, v32, &v157);
      if (!v70)
      {
        sub_1000EBAD0();
        v130 = v157;
        swift_errorRetain();
        v105 = sub_10025666C(-9035, v130);
        if (v155)
        {
          v131 = v155;
          v132 = _convertErrorToNSError(_:)();
          [v131 updateTaskResultWithError:v132];
        }

        v133 = v150;
        v134 = v151;
        v135 = v152;
        (*(v151 + 16))(v150, v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor__analyticsReporter, v152);
        Dependency.wrappedValue.getter();
        (*(v134 + 8))(v133, v135);
        swift_getObjectType();
        sub_100246FA8(v155);
        swift_unknownObjectRelease();
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v111, v112))
        {
          goto LABEL_82;
        }

        v113 = swift_slowAlloc();
        *v113 = 0;
        v114 = "Unable to decode custodian invitation!";
        goto LABEL_80;
      }

      v71 = v70;
      v72 = *sub_1000080F8((v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationHandler), *(v153 + OBJC_IVAR____TtC13appleaccountd25CustodianMessageProcessor_invitationHandler + 24));
      sub_1000D76E0(v71, v148, v66);
    }

LABEL_58:

LABEL_86:

LABEL_87:

    goto LABEL_88;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Not logged in to AppleAccount, unable to process message", v54, 2u);
  }

  v55 = v155;
}

unint64_t sub_1000EBAD0()
{
  result = qword_1003DB5F0;
  if (!qword_1003DB5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DB5F0);
  }

  return result;
}

uint64_t sub_1000EBB1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000EBB74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000EBBC4(uint64_t a1)
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

  return sub_1000E0D3C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1000EBC98()
{
  result = qword_1003DD590;
  if (!qword_1003DD590)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD590);
  }

  return result;
}

uint64_t sub_1000EBCF0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for CustodianHealthRecord() + 24);
  Date.init(timeIntervalSince1970:)();
  sub_1000EE898(&qword_1003DB600, &type metadata accessor for Date);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  if (v6)
  {
    return -1;
  }

  Date.init()();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11 = v9;
  result = (v7)(v4, v0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000EBEB4()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for CustodianHealthRecord() + 24);
  Date.init(timeIntervalSince1970:)();
  sub_1000EE898(&qword_1003DB600, &type metadata accessor for Date);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v9, v2);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    sub_10028B98C();
    (*(v3 + 16))(v7, v1 + v10, v2);
    Date.init(timeInterval:since:)();
    Date.init()();
    v13 = static Date.< infix(_:_:)();
    v12(v7, v2);
    v12(v9, v2);
  }

  return v13 & 1;
}

void sub_1000EC0A4(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v102 = a2;
  v108 = a3;
  v5 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v104 = &v94 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v105 = v8;
  v106 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v101 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v103 = &v94 - v13;
  v14 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v94 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v21);
  v107 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v94 - v26;
  if (CKRecord.recordType.getter() == 0xD000000000000015 && 0x8000000100341AF0 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for AACustodianError(0);
      v112 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000EE898(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v98 = v3;
  v29 = [a1 recordID];
  v30 = [v29 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v31 = v22[6];
  if (v31(v20, 1, v21) == 1)
  {
    sub_100008D3C(v20, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v99 = v22;
  v32 = v21;
  v33 = v22[4];
  v100 = v32;
  v33(v109, v20);
  v34 = [a1 encryptedValuesByKey];
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 objectForKeyedSubscript:v35];

  if (!v36)
  {
    goto LABEL_12;
  }

  v112 = v36;
  v37 = sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v96 = v37;
  UUID.init(uuidString:)();

  v38 = v100;
  if (v31(v18, 1, v100) == 1)
  {
    sub_100008D3C(v18, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAA88);
    v40 = a1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v100;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v40;
      *v46 = v40;
      v47 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "Missing CustodianID - %@", v45, 0xCu);
      sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianError(0);
    v112 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000EE898(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (v99[1])(v109, v44);
    return;
  }

  v48 = v107;
  (v33)(v107, v18, v38);
  v49 = v99[2];
  v50 = v108;
  v49();
  v51 = type metadata accessor for CustodianHealthRecord();
  (v49)(v50 + v51[5], v48, v38);
  v52 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v52];
  [v52 finishEncoding];
  v53 = [v52 encodedData];
  v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v34;
  v55 = v54;
  v57 = v56;

  v58 = v108;
  v59 = (v108 + v51[8]);
  *v59 = v55;
  v59[1] = v57;
  v60 = v95;
  v97 = v51;
  v61 = v51[9];
  v62 = v58;
  *(v58 + v61) = v102 & 1;
  v63 = String._bridgeToObjectiveC()();
  v64 = [v60 objectForKeyedSubscript:v63];

  v65 = v38;
  if (!v64)
  {
    v67 = v105;
    v69 = v106;
    v66 = v104;
    (*(v106 + 56))(v104, 1, 1, v105);
LABEL_21:
    v70 = v103;
    Date.init(timeIntervalSince1970:)();
    if ((*(v69 + 48))(v66, 1, v67) != 1)
    {
      sub_100008D3C(v66, &qword_1003DA110, &qword_10033F230);
    }

    goto LABEL_23;
  }

  v110 = v64;
  v66 = v104;
  v67 = v105;
  v68 = swift_dynamicCast();
  v69 = v106;
  (*(v106 + 56))(v66, v68 ^ 1u, 1, v67);
  if ((*(v69 + 48))(v66, 1, v67) == 1)
  {
    goto LABEL_21;
  }

  v70 = v103;
  (*(v69 + 32))(v103, v66, v67);
LABEL_23:
  v71 = v97[6];
  (*(v69 + 32))(v62 + v71, v70, v67);
  v72 = String._bridgeToObjectiveC()();
  v73 = [v60 objectForKeyedSubscript:v72];

  if (v73 && (v112 = v73, (swift_dynamicCast() & 1) != 0))
  {
    v74 = v110;
    v75 = v111;
    sub_100015D6C(v110, v111);
    v76 = sub_1000FA458(v74, v75);
    if (v79 == 1)
    {
      v62 = v108;
      v80 = (v108 + v97[7]);
      *v80 = v74;
      v80[1] = v75;
      v81 = v101;
      Date.init(timeIntervalSince1970:)();
      (*(v106 + 40))(v62 + v71, v81, v67);
    }

    else
    {
      v82 = v76;
      v83 = v77;
      v84 = v79;
      v85 = v78;
      sub_100012324(v74, v75);
      sub_100015D6C(v82, v83);
      sub_1000EE730(v82, v83, v85, v84);
      v62 = v108;
      v86 = (v108 + v97[7]);
      *v86 = v82;
      v86[1] = v83;
    }

    v65 = v100;
    v60 = v95;
  }

  else
  {
    *(v62 + v97[7]) = xmmword_10033F590;
  }

  v87 = String._bridgeToObjectiveC()();
  v88 = [v60 objectForKeyedSubscript:v87];

  swift_unknownObjectRelease();
  v89 = v99[1];
  v89(v107, v65);
  v89(v109, v65);
  if (v88)
  {
    v110 = v88;
    v90 = swift_dynamicCast();
    v91 = v112;
    if (!v90)
    {
      v91 = 0;
    }

    v92 = v90 ^ 1;
  }

  else
  {
    v91 = 0;
    v92 = 1;
  }

  v93 = v62 + v97[10];
  *v93 = v91;
  *(v93 + 8) = v92;
}

void sub_1000ECC30(id *a1)
{
  v2 = type metadata accessor for Date();
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v2);
  v63 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100005814(&qword_1003E29B0, &qword_100341B40);
  v5 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v7 = &v63 - v6;
  v8 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v63 - v13;
  __chkstk_darwin(v12);
  v71 = &v63 - v15;
  v16 = [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v18 = v76;
  v19 = type metadata accessor for CustodianHealthRecord();
  v20 = *(v19 + 20);
  v21 = UUID.uuidString.getter();
  if (!*(&v18 + 1))
  {

    v23 = v73;
LABEL_6:
    v25 = UUID.uuidString.getter();
    *(&v77 + 1) = &type metadata for String;
    v78 = &protocol witness table for String;
    *&v76 = v25;
    *(&v76 + 1) = v26;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v18 == __PAIR128__(v22, v21))
  {

    v23 = v73;
    goto LABEL_7;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v23 = v73;
  if ((v24 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v27 = v71;
  v69 = v16;
  v70 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v68 = v19;
  v28 = v72;
  v29 = *(v72 + 16);
  v65 = *(v19 + 24);
  v66 = v29;
  v29(v14, v23 + v65, v2);
  (*(v28 + 56))(v14, 0, 1, v2);
  v30 = *(v67 + 48);
  sub_1000EE8E0(v27, v7);
  sub_1000EE8E0(v14, &v7[v30]);
  v31 = *(v28 + 48);
  if (v31(v7, 1, v2) == 1)
  {
    sub_100008D3C(v14, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v27, &qword_1003DA110, &qword_10033F230);
    v32 = v31(&v7[v30], 1, v2);
    v33 = v69;
    if (v32 == 1)
    {
      sub_100008D3C(v7, &qword_1003DA110, &qword_10033F230);
      v34 = v73;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v35 = v64;
  sub_1000EE8E0(v7, v64);
  if (v31(&v7[v30], 1, v2) == 1)
  {
    sub_100008D3C(v14, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v71, &qword_1003DA110, &qword_10033F230);
    (*(v72 + 8))(v35, v2);
    v33 = v69;
LABEL_12:
    sub_100008D3C(v7, &qword_1003E29B0, &qword_100341B40);
    v34 = v73;
LABEL_13:
    *(&v77 + 1) = v2;
    v78 = &protocol witness table for Date;
    v36 = sub_10000DBEC(&v76);
    v66(v36, v34 + v65, v2);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_14;
  }

  v41 = v72;
  v42 = v63;
  (*(v72 + 32))(v63, &v7[v30], v2);
  sub_1000EE898(&qword_1003DB600, &type metadata accessor for Date);
  LODWORD(v67) = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v41 + 8);
  v43(v42, v2);
  sub_100008D3C(v14, &qword_1003DA110, &qword_10033F230);
  sub_100008D3C(v71, &qword_1003DA110, &qword_10033F230);
  v43(v35, v2);
  sub_100008D3C(v7, &qword_1003DA110, &qword_10033F230);
  v33 = v69;
  v34 = v73;
  if ((v67 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  CKRecordKeyValueSetting.subscript.getter();
  v37 = v68;
  v38 = (v34 + *(v68 + 40));
  v39 = *v38;
  v40 = *(v38 + 8);
  if ((BYTE8(v76) & 1) == 0)
  {
    if (v40)
    {
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
LABEL_23:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_24;
    }

    if (v76 == v39)
    {
      goto LABEL_24;
    }

LABEL_22:
    *(&v77 + 1) = &type metadata for Int;
    v78 = &protocol witness table for Int;
    *&v76 = v39;
    goto LABEL_23;
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v44 = v34 + *(v37 + 28);
  v45 = *(v44 + 8);
  if (v45 >> 60 == 15)
  {
    v46 = String._bridgeToObjectiveC()();
    [v33 setObject:0 forKeyedSubscript:v46];
    swift_unknownObjectRelease();

    return;
  }

  v47 = *v44;
  sub_100015D6C(*v44, *(v44 + 8));
  CKRecordKeyValueSetting.subscript.getter();
  v48 = v74;
  v49 = v75;
  v50 = type metadata accessor for JSONEncoder();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *&v76 = v47;
  *(&v76 + 1) = v45;
  v53 = sub_1000EE844();
  v77 = 0uLL;
  v73 = v53;
  v54 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v56 = v55;

  if (v49 >> 60 == 15)
  {
    if (v56 >> 60 == 15)
    {
      sub_100012324(v47, v45);
      swift_unknownObjectRelease();

      sub_100015D58(v48, v49);
      return;
    }

    goto LABEL_30;
  }

  if (v56 >> 60 == 15)
  {
LABEL_30:
    sub_100015D58(v48, v49);
    sub_100015D58(v54, v56);
    goto LABEL_31;
  }

  sub_100052704(v48, v49);
  sub_100015D6C(v54, v56);
  v62 = sub_10018F69C(v48, v49, v54, v56);
  sub_100012324(v54, v56);
  sub_100015D58(v48, v49);
  sub_100015D58(v54, v56);
  sub_100015D58(v48, v49);
  if (v62)
  {
    sub_100012324(v47, v45);
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

LABEL_31:
  v57 = *(v50 + 48);
  v58 = *(v50 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *&v76 = v47;
  *(&v76 + 1) = v45;
  v77 = 0uLL;
  v59 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v61 = v60;

  *(&v77 + 1) = &type metadata for Data;
  v78 = &protocol witness table for Data;
  *&v76 = v59;
  *(&v76 + 1) = v61;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  sub_100012324(v47, v45);
LABEL_32:
}

uint64_t sub_1000ED620()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6169646F74737563;
    if (v1 != 1)
    {
      v5 = 0xD000000000000017;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x444964726F636572;
    }
  }

  else
  {
    v2 = 0x797265766F636572;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000ED724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EEF28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000ED758(uint64_t a1)
{
  v2 = sub_1000EE5C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ED794(uint64_t a1)
{
  v2 = sub_1000EE5C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ED7D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v60 = v3;
  v61 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v55 - v8;
  v64 = type metadata accessor for UUID();
  v62 = *(v64 - 8);
  v9 = *(v62 + 64);
  v10 = __chkstk_darwin(v64);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v55 - v13;
  v14 = sub_100005814(&qword_1003DD5B8, &qword_100341AF8);
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  __chkstk_darwin(v14);
  v17 = &v55 - v16;
  v18 = type metadata accessor for CustodianHealthRecord();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000EE5C8();
  v23 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_10000839C(a1);
  }

  v55 = v12;
  v56 = v21;
  v66 = v18;
  LOBYTE(v67) = 0;
  sub_1000EE898(&unk_1003DD720, &type metadata accessor for UUID);
  v24 = v64;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v17;
  v27 = v56;
  v28 = v65;
  v65 = *(v62 + 32);
  (v65)(v56, v28, v24);
  LOBYTE(v67) = 1;
  v29 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (v65)(&v27[v66[5]], v29, v24);
  LOBYTE(v67) = 2;
  sub_1000EE898(&unk_1003DD5D0, &type metadata accessor for Date);
  v30 = v59;
  v31 = v60;
  v65 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v27;
  v33 = v14;
  v34 = v66;
  v35 = v66[6];
  (*(v61 + 32))(&v32[v35], v30, v31);
  v68 = 3;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[v34[8]] = v67;
  LOBYTE(v67) = 4;
  v32[v34[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v67) = 6;
  v36 = v33;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v58;
  v39 = &v56[v66[10]];
  *v39 = v37;
  v39[8] = 0;
  v68 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v40 = v67;
  v41 = v63;
  if (*(&v67 + 1) >> 60 == 15)
  {
    (*(v63 + 8))(v26, v36);
    v42 = v56;
    *&v56[v66[7]] = v40;
    v43 = v42;
  }

  else
  {
    sub_100015D6C(v67, *(&v67 + 1));
    v44 = sub_1000FA458(v40, *(&v40 + 1));
    if (v47 == 1)
    {
      v48 = v56;
      *&v56[v66[7]] = v40;
      v43 = v48;
      Date.init(timeIntervalSince1970:)();
      (*(v41 + 8))(v26, v36);
      (*(v61 + 40))(v43 + v35, v38, v60);
    }

    else
    {
      v49 = *(v41 + 8);
      v50 = v44;
      v51 = v45;
      v52 = v46;
      v53 = v47;
      v49(v26, v36);
      sub_100015D58(v40, *(&v40 + 1));
      sub_100015D6C(v50, v51);
      sub_1000EE730(v50, v51, v52, v53);
      v43 = v56;
      v54 = &v56[v66[7]];
      *v54 = v50;
      v54[1] = v51;
    }
  }

  sub_1000EE670(v43, v57);
  sub_10000839C(a1);
  return sub_1000EE6D4(v43);
}

uint64_t sub_1000EDFFC(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003DD5E0, &qword_100341B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000EE5C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v31) = 0;
  type metadata accessor for UUID();
  sub_1000EE898(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CustodianHealthRecord();
    v12 = v11[5];
    LOBYTE(v31) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[6];
    LOBYTE(v31) = 2;
    type metadata accessor for Date();
    sub_1000EE898(&unk_1003DD5F0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v11[8]);
    v15 = v14[1];
    v31 = *v14;
    v32 = v15;
    v35 = 3;
    sub_100015D6C(v31, v15);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v31, v32);
    v16 = *(v3 + v11[9]);
    LOBYTE(v31) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3 + v11[10];
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v31 = v18;
    LOBYTE(v32) = v17;
    v35 = 6;
    sub_100005814(&qword_1003DD600, &qword_100341B08);
    sub_1000EE7C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = (v3 + v11[7]);
    v20 = v19[1];
    if (v20 >> 60 != 15)
    {
      v22 = *v19;
      v23 = type metadata accessor for JSONEncoder();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      sub_100015D6C(v22, v20);
      JSONEncoder.init()();
      v30 = v22;
      v31 = v22;
      v32 = v20;
      sub_1000EE844();
      v33 = 0;
      v34 = 0;
      v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v28 = v27;

      v31 = v26;
      v32 = v28;
      v35 = 5;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100012324(v30, v20);

      sub_100012324(v31, v32);
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000EE4A0(uint64_t a1)
{
  *(a1 + 8) = sub_1000EE898(&qword_1003DD5A0, type metadata accessor for CustodianHealthRecord);
  result = sub_1000EE898(&qword_1003DD5A8, type metadata accessor for CustodianHealthRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianHealthRecord()
{
  result = qword_1003DD678;
  if (!qword_1003DD678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EE570(uint64_t a1)
{
  result = sub_1000EE898(&qword_1003DD5B0, type metadata accessor for CustodianHealthRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EE5C8()
{
  result = qword_1003DD5C0;
  if (!qword_1003DD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD5C0);
  }

  return result;
}

unint64_t sub_1000EE61C()
{
  result = qword_1003DDA70;
  if (!qword_1003DDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA70);
  }

  return result;
}

uint64_t sub_1000EE670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianHealthRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EE6D4(uint64_t a1)
{
  v2 = type metadata accessor for CustodianHealthRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EE730(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100012324(result, a2);
  }

  return result;
}

unint64_t sub_1000EE774()
{
  result = qword_1003DD740;
  if (!qword_1003DD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD740);
  }

  return result;
}

unint64_t sub_1000EE7C8()
{
  result = qword_1003DD608;
  if (!qword_1003DD608)
  {
    sub_100008CBC(&qword_1003DD600, &qword_100341B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD608);
  }

  return result;
}

unint64_t sub_1000EE844()
{
  result = qword_1003DD610;
  if (!qword_1003DD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD610);
  }

  return result;
}

uint64_t sub_1000EE898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EE8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CustodianHealthRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianHealthRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000EEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 36));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000EEBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000EECEC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DD7C0);
      if (v2 <= 0x3F)
      {
        sub_1000EEDD4(319, &unk_1003DD690);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000EEDD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1000EEE24()
{
  result = qword_1003DD6D8;
  if (!qword_1003DD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD6D8);
  }

  return result;
}

unint64_t sub_1000EEE7C()
{
  result = qword_1003DD6E0;
  if (!qword_1003DD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD6E0);
  }

  return result;
}

unint64_t sub_1000EEED4()
{
  result = qword_1003DD6E8;
  if (!qword_1003DD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD6E8);
  }

  return result;
}

uint64_t sub_1000EEF28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010032E7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xEF6873614879654BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032E7D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

BOOL sub_1000EF184()
{
  v1 = v0;
  v2 = type metadata accessor for ContactsHelper();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  v5 = type metadata accessor for CustodianRecord();
  v6 = (v0 + v5[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v40 contactForHandle:v9];

  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = objc_allocWithZone(AALocalContactInfo);
    v12 = v10;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v11 initWithHandle:v13 contact:v12];
  }

  else
  {

    v14 = 0;
  }

  if ((sub_1000EF4CC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = (v1 + v5[8]);
  v16 = *v15;
  v17 = v15[1];
  if (v17)
  {
    sub_1002576F0(*v15, v15[1]);
    if (v18)
    {
      goto LABEL_7;
    }
  }

  if (!v14)
  {
    return 0;
  }

  v14 = v14;
  v19 = [v14 firstName];
  if (!v19)
  {

    goto LABEL_18;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = sub_1002576F0(v21, v23);
  v26 = v25;

  if (!v26)
  {
LABEL_18:

    return 0;
  }

  v14 = v14;
  v27 = [v14 lastName];
  if (!v27)
  {

    goto LABEL_21;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = sub_1002576F0(v29, v31);
  v34 = v33;

  if (!v34)
  {
LABEL_21:

    return 0;
  }

  v35 = (v1 + v5[7]);
  v36 = v35[1];
  if (v36)
  {
    if (*v35 == v24 && v36 == v26)
    {

      goto LABEL_21;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
LABEL_7:

      goto LABEL_18;
    }
  }

  else
  {
  }

  if (v17)
  {
    if (v16 == v32 && v17 == v34)
    {
      goto LABEL_7;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v39 & 1) == 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1000EF4CC()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (v0 + *(v1 + 28));
  v3 = v2[1];
  if (!v3)
  {
    return 1;
  }

  v4 = v1;
  v5 = sub_1002576F0(*v2, v3);
  if (!v6)
  {
    return 1;
  }

  v7 = v5;
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v9 aa_appearsToBePhoneNumber];

  if (v10)
  {
    v11 = (v0 + *(v4 + 24));
    v12 = *v11;
    v13 = v11[1];
    v14 = String._bridgeToObjectiveC()();
    v15 = [v14 aa_appearsToBePhoneNumber];

    if (v15)
    {
      v16 = objc_allocWithZone(CNPhoneNumber);
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 initWithStringValue:v17];

      v19 = objc_allocWithZone(CNPhoneNumber);
      v20 = String._bridgeToObjectiveC()();

      v21 = [v19 initWithStringValue:v20];

      v22 = [v18 isLikePhoneNumber:v21];
      return v22;
    }
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = [v24 aa_appearsToBeEmail];

  if (v25 && (v26 = (v0 + *(v4 + 24)), v28 = *v26, v27 = v26[1], v29 = String._bridgeToObjectiveC()(), v30 = [v29 aa_appearsToBeEmail], v29, (v30 & 1) != 0))
  {
    if (v7 == v28 && v8 == v27)
    {

      return 1;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v31 & 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000EF6D0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v129 = a2;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v125 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v117 - v10;
  __chkstk_darwin(v9);
  v13 = &v117 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v124 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v130 = &v117 - v20;
  __chkstk_darwin(v19);
  v132 = &v117 - v21;
  v22 = type metadata accessor for CustodianRecord();
  v23 = (a3 + v22[7]);
  *v23 = 0;
  v23[1] = 0;
  v122 = v23;
  v24 = (a3 + v22[8]);
  *v24 = 0;
  v24[1] = 0;
  v123 = v24;
  v25 = (a3 + v22[13]);
  *v25 = 0;
  v25[1] = 0;
  v126 = v25;
  v26 = (a3 + v22[14]);
  *v26 = 0;
  v26[1] = 0;
  v127 = v26;
  v27 = a3 + v22[15];
  *v27 = 0;
  v128 = v27;
  *(v27 + 8) = 1;
  v133 = v22[16];
  v134 = v15;
  v28 = *(v15 + 56);
  v135 = v14;
  v121 = v28;
  v28(a3 + v133, 1, 1, v14);
  v136 = a1;
  if (CKRecord.recordType.getter() == 0x6169646F74737543 && v29 == 0xEF64726F6365526ELL)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      type metadata accessor for AACustodianError(0);
      v139 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
    }
  }

  v131 = a3;
  v31 = v136;
  v32 = [v136 recordID];
  v33 = [v32 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v35 = v134;
  v34 = v135;
  v120 = *(v134 + 48);
  if (v120(v13, 1, v135) == 1)
  {
    sub_100008D3C(v13, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for AACustodianError(0);
    v139 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    a3 = v131;
    return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
  }

  v119 = *(v35 + 32);
  v119(v132, v13, v34);
  v36 = [v31 encryptedValuesByKey];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 objectForKeyedSubscript:v37];

  if (!v38 || (v139 = v38, sub_100005814(&unk_1003E2770, &qword_100341F50), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAA88);
    v41 = v136;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    v44 = os_log_type_enabled(v42, v43);
    a3 = v131;
    v45 = v134;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v41;
      *v47 = v41;
      v48 = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "Missing CustodianID - %@", v46, 0xCu);
      sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianError(0);
    v139 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v45 + 8))(v132, v135);
    return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
  }

  UUID.init(uuidString:)();

  v39 = v135;
  if (v120(v11, 1, v135) == 1)
  {
    sub_100008D3C(v11, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_11;
  }

  v119(v130, v11, v39);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v36 objectForKeyedSubscript:v50];

  if (!v51 || (v139 = v51, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100008D04(v67, qword_1003FAA88);
    v68 = v136;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    v71 = os_log_type_enabled(v69, v70);
    a3 = v131;
    v72 = v134;
    if (!v71)
    {
      goto LABEL_41;
    }

    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138412290;
    *(v73 + 4) = v68;
    *v74 = v68;
    v75 = v68;
    v76 = "Missing Handle - %@";
    goto LABEL_40;
  }

  v118 = v137;
  v52 = v138;
  v53 = String._bridgeToObjectiveC()();
  v54 = [v36 objectForKeyedSubscript:v53];

  if (!v54 || (v137 = v54, type metadata accessor for Status(0), (swift_dynamicCast() & 1) == 0))
  {

    a3 = v131;
    v72 = v134;
    v77 = v136;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100008D04(v78, qword_1003FAA88);
    v68 = v77;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_41;
    }

    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138412290;
    *(v73 + 4) = v68;
    *v74 = v68;
    v79 = v68;
    v76 = "Missing Status - %@";
LABEL_40:
    _os_log_impl(&_mh_execute_header, v69, v70, v76, v73, 0xCu);
    sub_100008D3C(v74, &unk_1003D9140, &qword_10033E640);

LABEL_41:

    type metadata accessor for AACustodianError(0);
    v139 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F24BC(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v80 = *(v72 + 8);
    v81 = v135;
    v80(v130, v135);
    v80(v132, v81);
    return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
  }

  v117 = v139;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v36 objectForKeyedSubscript:v55];

  if (v56)
  {
    v139 = v56;
    if (swift_dynamicCast())
    {
      v57 = v138;
      v58 = v122;
      *v122 = v137;
      v58[1] = v57;
    }
  }

  v59 = String._bridgeToObjectiveC()();
  v60 = [v36 objectForKeyedSubscript:v59];

  if (v60)
  {
    v139 = v60;
    if (swift_dynamicCast())
    {
      v61 = v138;
      v62 = v123;
      *v123 = v137;
      v62[1] = v61;
    }
  }

  v63 = String._bridgeToObjectiveC()();
  v64 = [v36 objectForKeyedSubscript:v63];

  v123 = v52;
  if (v64)
  {
    v139 = v64;
    if (swift_dynamicCast())
    {
      v65 = v125;
      UUID.init(uuidString:)();

      v66 = v135;
      if (v120(v65, 1, v135) == 1)
      {
        sub_100008D3C(v65, &qword_1003D8B60, &unk_10033F210);
      }

      else
      {
        v82 = v119;
        v119(v124, v65, v66);
        v83 = v131;
        v84 = v133;
        sub_100008D3C(v131 + v133, &qword_1003D8B60, &unk_10033F210);
        v82(v83 + v84, v124, v66);
        v121(v83 + v84, 0, 1, v66);
      }
    }
  }

  v85 = String._bridgeToObjectiveC()();
  v86 = [v36 objectForKeyedSubscript:v85];

  v87 = v134;
  if (v86)
  {
    v139 = v86;
    if (swift_dynamicCast())
    {
      v88 = v138;
      v89 = v126;
      *v126 = v137;
      v89[1] = v88;
    }
  }

  v90 = String._bridgeToObjectiveC()();
  v91 = [v36 objectForKeyedSubscript:v90];

  v92 = v131;
  if (v91)
  {
    v139 = v91;
    if (swift_dynamicCast())
    {
      v93 = v138;
      v94 = v127;
      *v127 = v137;
      v94[1] = v93;
    }
  }

  v95 = String._bridgeToObjectiveC()();
  v96 = [v36 objectForKeyedSubscript:v95];

  if (v96)
  {
    v137 = v96;
    if (swift_dynamicCast())
    {
      v97 = v128;
      *v128 = v139;
      *(v97 + 8) = 0;
    }
  }

  v98 = *(v87 + 16);
  v99 = v135;
  v98(v92, v132, v135);
  v98(v92 + v22[5], v130, v99);
  v100 = (v92 + v22[6]);
  v101 = v123;
  *v100 = v118;
  v100[1] = v101;
  *(v92 + v22[9]) = v117;
  v102 = String._bridgeToObjectiveC()();
  v103 = [v36 objectForKeyedSubscript:v102];

  v104 = 0xF000000000000000;
  if (v103)
  {
    v139 = v103;
    v105 = swift_dynamicCast();
    v106 = v137;
    if (v105)
    {
      v104 = v138;
    }

    else
    {
      v106 = 0;
    }
  }

  else
  {
    v106 = 0;
  }

  v107 = (v92 + v22[10]);
  *v107 = v106;
  v107[1] = v104;
  v108 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v109 = v136;
  [v136 encodeSystemFieldsWithCoder:v108];
  [v108 finishEncoding];
  v110 = [v108 encodedData];
  v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v113 = v112;

  swift_unknownObjectRelease();
  v114 = *(v87 + 8);
  v115 = v135;
  v114(v130, v135);
  result = (v114)(v132, v115);
  v116 = (v92 + v22[11]);
  *v116 = v111;
  v116[1] = v113;
  *(v92 + v22[12]) = v129 & 1;
  return result;
}

uint64_t sub_1000F0774(id *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v72 - v8;
  [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v10 = v78;
  v77 = type metadata accessor for CustodianRecord();
  v11 = v77[5];
  v12 = UUID.uuidString.getter();
  if (!*(&v10 + 1))
  {

    goto LABEL_6;
  }

  if (v10 != __PAIR128__(v13, v12))
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_6:
    v15 = UUID.uuidString.getter();
    *(&v79 + 1) = &type metadata for String;
    v80 = &protocol witness table for String;
    *&v78 = v15;
    *(&v78 + 1) = v16;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = (v1 + v77[6]);
  v19 = *v17;
  v18 = v17[1];
  v76 = v2;
  if (!*(&v78 + 1))
  {
    goto LABEL_11;
  }

  if (v78 == __PAIR128__(v18, v19))
  {

    goto LABEL_12;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v20 & 1) == 0)
  {
LABEL_11:
    *(&v79 + 1) = &type metadata for String;
    v80 = &protocol witness table for String;
    *&v78 = v19;
    *(&v78 + 1) = v18;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_12:
  CKRecordKeyValueSetting.subscript.getter();
  v21 = v76;
  v22 = (v76 + v77[7]);
  v24 = *v22;
  v23 = v22[1];
  if (*(&v78 + 1))
  {
    if (!v23)
    {

      v80 = 0;
      v78 = 0u;
      v79 = 0u;
LABEL_21:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_22;
    }

    if (v78 == __PAIR128__(v23, v24))
    {

      goto LABEL_22;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = v76;

    if ((v25 & 1) == 0)
    {
LABEL_20:
      *(&v79 + 1) = &type metadata for String;
      v80 = &protocol witness table for String;
      *&v78 = v24;
      *(&v78 + 1) = v23;
      goto LABEL_21;
    }
  }

  else if (v23)
  {
    goto LABEL_20;
  }

LABEL_22:
  CKRecordKeyValueSetting.subscript.getter();
  v26 = (v21 + v77[8]);
  v28 = *v26;
  v27 = v26[1];
  if (!*(&v78 + 1))
  {
    if (!v27)
    {
      goto LABEL_32;
    }

LABEL_30:
    *(&v79 + 1) = &type metadata for String;
    v80 = &protocol witness table for String;
    *&v78 = v28;
    *(&v78 + 1) = v27;
    goto LABEL_31;
  }

  if (!v27)
  {

    v80 = 0;
    v78 = 0u;
    v79 = 0u;
LABEL_31:

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_32;
  }

  if (v78 != __PAIR128__(v27, v28))
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = v76;

    if (v29)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

LABEL_32:
  CKRecordKeyValueSetting.subscript.getter();
  v30 = *(v21 + v77[9]);
  if ((BYTE8(v78) & 1) != 0 || v78 != v30)
  {
    *(&v79 + 1) = &type metadata for Int;
    v80 = &protocol witness table for Int;
    *&v78 = v30;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v31 = v78;
  v32 = v21 + v77[10];
  v33 = *v32;
  v34 = *(v32 + 8);
  if (*(&v78 + 1) >> 60 == 15)
  {
    if (v34 >> 60 == 15)
    {
      sub_100052704(*v32, *(v32 + 8));
      sub_100015D58(v31, *(&v31 + 1));
      goto LABEL_44;
    }
  }

  else if (v34 >> 60 != 15)
  {
    sub_100052704(*v32, *(v32 + 8));
    sub_100052704(v31, *(&v31 + 1));
    v50 = sub_10018F69C(v31, *(&v31 + 1), v33, v34);
    sub_100015D58(v31, *(&v31 + 1));
    sub_100015D58(v33, v34);
    sub_100015D58(v31, *(&v31 + 1));
    if (v50)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  sub_100052704(*v32, *(v32 + 8));
  sub_100015D58(v31, *(&v31 + 1));
  sub_100015D58(v33, v34);
LABEL_40:
  v35 = *v32;
  v36 = *(v32 + 8);
  if (v36 >> 60 == 15)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    *&v79 = 0;
  }

  else
  {
    v40 = &protocol witness table for Data;
    v39 = &type metadata for Data;
    v37 = *v32;
    v38 = *(v32 + 8);
  }

  *&v78 = v37;
  *(&v78 + 1) = v38;
  *(&v79 + 1) = v39;
  v80 = v40;
  sub_100052704(v35, v36);
  CKRecordKeyValueSetting.subscript.setter();
LABEL_44:
  v74 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v41 = v78;
  v42 = v77[16];
  v43 = v75;
  sub_1000F2504(v76 + v42, v75);
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  if (v46(v43, 1, v44) == 1)
  {
    sub_100008D3C(v43, &qword_1003D8B60, &unk_10033F210);
    if (!*(&v41 + 1))
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

  v72 = v41;
  v47 = UUID.uuidString.getter();
  v49 = v48;
  (*(v45 + 8))(v43, v44);
  if (!*(&v41 + 1))
  {
    if (!v49)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

  if (!v49)
  {
LABEL_56:

LABEL_57:
    v51 = v73;
    sub_1000F2504(v76 + v42, v73);
    if (v46(v51, 1, v44) == 1)
    {
      sub_100008D3C(v51, &qword_1003D8B60, &unk_10033F210);
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
    }

    else
    {
      v52 = UUID.uuidString.getter();
      *(&v79 + 1) = &type metadata for String;
      v80 = &protocol witness table for String;
      *&v78 = v52;
      *(&v78 + 1) = v53;
      (*(v45 + 8))(v51, v44);
    }

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_62;
  }

  if (v72 == v47 && *(&v41 + 1) == v41)
  {

    goto LABEL_62;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v71 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_62:
  CKRecordKeyValueSetting.subscript.getter();
  v54 = v76;
  v55 = (v76 + v77[13]);
  v57 = *v55;
  v56 = v55[1];
  if (*(&v78 + 1))
  {
    if (!v56)
    {

      v80 = 0;
      v78 = 0u;
      v79 = 0u;
LABEL_71:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_72;
    }

    if (v78 == __PAIR128__(v56, v57))
    {

      goto LABEL_72;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v54 = v76;

    if ((v58 & 1) == 0)
    {
LABEL_70:
      *(&v79 + 1) = &type metadata for String;
      v80 = &protocol witness table for String;
      *&v78 = v57;
      *(&v78 + 1) = v56;
      goto LABEL_71;
    }
  }

  else if (v56)
  {
    goto LABEL_70;
  }

LABEL_72:
  CKRecordKeyValueSetting.subscript.getter();
  v59 = (v54 + v77[14]);
  v61 = *v59;
  v60 = v59[1];
  if (*(&v78 + 1))
  {
    if (!v60)
    {

      v61 = 0;
      v62 = 0;
      v63 = 0;
      *&v79 = 0;
LABEL_81:
      *&v78 = v61;
      *(&v78 + 1) = v60;
      *(&v79 + 1) = v62;
      v80 = v63;

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_82;
    }

    if (v78 == __PAIR128__(v60, v61))
    {

      goto LABEL_82;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v54 = v76;

    if ((v64 & 1) == 0)
    {
LABEL_80:
      v63 = &protocol witness table for String;
      v62 = &type metadata for String;
      goto LABEL_81;
    }
  }

  else if (v60)
  {
    goto LABEL_80;
  }

LABEL_82:
  CKRecordKeyValueSetting.subscript.getter();
  v65 = (v54 + v77[15]);
  v66 = *v65;
  v67 = *(v65 + 8);
  if (BYTE8(v78))
  {
    if (v67)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_88;
  }

  if (v67)
  {
    v66 = 0;
    v68 = 0;
    v69 = 0;
    *(&v78 + 1) = 0;
    *&v79 = 0;
LABEL_89:
    *&v78 = v66;
    *(&v79 + 1) = v68;
    v80 = v69;
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v78 != v66)
  {
LABEL_88:
    v69 = &protocol witness table for UInt;
    v68 = &type metadata for UInt;
    goto LABEL_89;
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_1000F12E8(char a1)
{
  result = 0x444964726F636572;
  switch(a1)
  {
    case 1:
      result = 0x6169646F74737563;
      break;
    case 2:
      result = 0x646F74737543746FLL;
      break;
    case 3:
      result = 0x656C646E6168;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x737574617473;
      break;
    case 7:
      result = 0x676E697070617277;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6144726961706572;
      break;
    case 12:
      result = 0x6F43726961706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F14BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F2BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F14F0(uint64_t a1)
{
  v2 = sub_1000F23F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F152C(uint64_t a1)
{
  v2 = sub_1000F23F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1568@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = v55 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = v55 - v12;
  v13 = sub_100005814(&qword_1003DD710, &qword_100341D30);
  v14 = *(v13 - 8);
  v58 = v13;
  v59 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = type metadata accessor for CustodianRecord();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v7;
  v23 = *(v7 + 56);
  v22 = v7 + 56;
  v21 = v23;
  v63 = *(v18 + 64);
  v64 = v18;
  v65 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(&v65[v63], 1, 1, v6);
  v24 = a1[3];
  v25 = a1[4];
  v62 = a1;
  sub_1000080F8(a1, v24);
  sub_1000F23F8();
  v26 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    sub_10000839C(v62);
    v30 = v65;

    return sub_100008D3C(&v30[v63], &qword_1003D8B60, &unk_10033F210);
  }

  else
  {
    v61 = v11;
    v55[2] = v21;
    v55[3] = v22;
    v27 = v20;
    LOBYTE(v66) = 0;
    v28 = sub_1000F24BC(&unk_1003DD720, &type metadata accessor for UUID);
    v29 = v58;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v55[0] = v27;
    v31 = *(v27 + 32);
    v32 = v65;
    v31();
    LOBYTE(v66) = 1;
    v33 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v55[1] = v6;
    (v31)(&v32[v64[5]], v33, v6);
    LOBYTE(v66) = 3;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v64;
    v36 = &v32[v64[6]];
    *v36 = v34;
    v36[1] = v37;
    LOBYTE(v66) = 4;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v28;
    v39 = &v32[v35[7]];
    *v39 = v38;
    v39[1] = v40;
    LOBYTE(v66) = 5;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = &v32[v35[8]];
    *v42 = v41;
    v42[1] = v43;
    LOBYTE(v66) = 6;
    *&v32[v35[9]] = KeyedDecodingContainer.decode(_:forKey:)();
    v67 = 7;
    sub_1000EE61C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v32[v64[10]] = v66;
    v67 = 8;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v32[v64[11]] = v66;
    LOBYTE(v66) = 9;
    v32[v64[12]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v66) = 10;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = &v65[v64[13]];
    *v45 = v44;
    v45[1] = v46;
    LOBYTE(v66) = 11;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = &v65[v64[14]];
    *v48 = v47;
    v48[1] = v49;
    LOBYTE(v66) = 12;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = &v65[v64[15]];
    *v51 = v50;
    v51[8] = v52 & 1;
    LOBYTE(v66) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v59 + 8))(0, v29);
    v53 = v65;
    sub_1000F244C(v57, &v65[v63]);
    sub_100012050(v53, v56);
    sub_10000839C(v62);
    return sub_1000120B4(v53);
  }
}

uint64_t sub_1000F1E60(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003DD730, &qword_100341D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v39 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000F23F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v40) = 0;
  type metadata accessor for UUID();
  sub_1000F24BC(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CustodianRecord();
    v12 = v11[5];
    LOBYTE(v40) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v40) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v40) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v40) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + v11[9]);
    LOBYTE(v40) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = (v3 + v11[10]);
    v24 = v23[1];
    v40 = *v23;
    v41 = v24;
    v42 = 7;
    sub_100052704(v40, v24);
    v39[1] = sub_1000EE774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v40, v41);
    v25 = (v3 + v11[11]);
    v26 = v25[1];
    v40 = *v25;
    v41 = v26;
    v42 = 8;
    sub_100015D6C(v40, v26);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v40, v41);
    v27 = *(v3 + v11[12]);
    LOBYTE(v40) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = (v3 + v11[13]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v40) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = (v3 + v11[14]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v40) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = (v3 + v11[15]);
    v35 = *v34;
    v36 = *(v34 + 8);
    LOBYTE(v40) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = v11[16];
    LOBYTE(v40) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000F22D0(uint64_t a1)
{
  *(a1 + 8) = sub_1000F24BC(&qword_1003DD6F0, type metadata accessor for CustodianRecord);
  result = sub_1000F24BC(&qword_1003DD6F8, type metadata accessor for CustodianRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianRecord()
{
  result = qword_1003DD7A8;
  if (!qword_1003DD7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F23A0(uint64_t a1)
{
  result = sub_1000F24BC(&unk_1003DD700, type metadata accessor for CustodianRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F23F8()
{
  result = qword_1003DD718;
  if (!qword_1003DD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD718);
  }

  return result;
}

uint64_t sub_1000F244C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F24BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F2504(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CustodianRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F26D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000F2820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000F2954()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DB130);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Status(319);
      if (v2 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003DD7C0);
        if (v3 <= 0x3F)
        {
          sub_1000EEDD4(319, &qword_1003DD7C8);
          if (v4 <= 0x3F)
          {
            sub_1000F2A94();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000F2A94()
{
  if (!qword_1003DD7D0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DD7D0);
    }
  }
}

unint64_t sub_1000F2AF0()
{
  result = qword_1003DD830;
  if (!qword_1003DD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD830);
  }

  return result;
}

unint64_t sub_1000F2B48()
{
  result = qword_1003DD838;
  if (!qword_1003DD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD838);
  }

  return result;
}

unint64_t sub_1000F2BA0()
{
  result = qword_1003DD840[0];
  if (!qword_1003DD840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003DD840);
  }

  return result;
}

uint64_t sub_1000F2BF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032E830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E697070617277 && a2 == 0xEE00434B5279654BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6144726961706572 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F43726961706572 && a2 == 0xEB00000000746E75)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1000F3020@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v114 = &v104 - v11;
  __chkstk_darwin(v10);
  v13 = &v104 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v111 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v115 = &v104 - v20;
  __chkstk_darwin(v19);
  v117 = &v104 - v21;
  v22 = type metadata accessor for CustodianRecoveryInfoRecord();
  v23 = *(v15 + 56);
  v119 = *(v22 + 44);
  v120 = v14;
  v110 = v23;
  v23(a3 + v119, 1, 1, v14);
  v113 = v22;
  v24 = (a3 + *(v22 + 48));
  *v24 = 0;
  v24[1] = 0;
  v121 = a1;
  if (CKRecord.recordType.getter() == 0xD00000000000001BLL && 0x8000000100341F10 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      type metadata accessor for AACustodianError(0);
      v124 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return sub_100008D3C(a3 + v119, &qword_1003D8B60, &unk_10033F210);
    }
  }

  v108 = a2;
  v116 = a3;
  v27 = v121;
  v28 = [v121 recordID];
  v29 = [v28 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v15;

  UUID.init(uuidString:)();
  v30 = v118;

  v31 = *(v30 + 48);
  v32 = v120;
  if (v31(v13, 1, v120) == 1)
  {
    sub_100008D3C(v13, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for AACustodianError(0);
    v124 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    a3 = v116;
    return sub_100008D3C(a3 + v119, &qword_1003D8B60, &unk_10033F210);
  }

  v107 = *(v30 + 32);
  v107(v117, v13, v32);
  v33 = [v27 encryptedValues];
  v34 = String._bridgeToObjectiveC()();
  v109 = v33;
  v35 = [v33 objectForKeyedSubscript:v34];

  if (!v35 || (v124 = v35, sub_100005814(&unk_1003E2770, &qword_100341F50), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA88);
    v39 = v121;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    a3 = v116;
    v43 = v118;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v39;
      *v45 = v39;
      v46 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Missing CustodianID - %@", v44, 0xCu);
      sub_100008D3C(v45, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for AACustodianError(0);
    v124 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v43 + 8))(v117, v120);
    return sub_100008D3C(a3 + v119, &qword_1003D8B60, &unk_10033F210);
  }

  v36 = v114;
  UUID.init(uuidString:)();

  v37 = v120;
  if (v31(v36, 1, v120) == 1)
  {
    sub_100008D3C(v36, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_11;
  }

  v107(v115, v36, v37);
  v48 = String._bridgeToObjectiveC()();
  v49 = [v109 objectForKeyedSubscript:v48];

  if (!v49 || (v124 = v49, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAA88);
    v59 = v121;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    v62 = os_log_type_enabled(v60, v61);
    a3 = v116;
    v63 = v118;
    if (!v62)
    {
      goto LABEL_35;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v59;
    *v65 = v59;
    v66 = v59;
    v67 = "Missing Owner AltDSID - %@";
    goto LABEL_34;
  }

  v106 = v122;
  v114 = v123;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v109 objectForKeyedSubscript:v50];

  if (!v51 || (v124 = v51, (swift_dynamicCast() & 1) == 0))
  {

    a3 = v116;
    v63 = v118;
    v68 = v121;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100008D04(v69, qword_1003FAA88);
    v59 = v68;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_35;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v59;
    *v65 = v59;
    v70 = v59;
    v67 = "Missing PRK - %@";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v60, v61, v67, v64, 0xCu);
    sub_100008D3C(v65, &unk_1003D9140, &qword_10033E640);

LABEL_35:

    type metadata accessor for AACustodianError(0);
    v124 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F5784(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v71 = *(v63 + 8);
    v72 = v120;
    v71(v115, v120);
    v71(v117, v72);
    return sub_100008D3C(a3 + v119, &qword_1003D8B60, &unk_10033F210);
  }

  v104 = v123;
  v105 = v122;
  v52 = String._bridgeToObjectiveC()();
  v53 = [v109 objectForKeyedSubscript:v52];

  if (v53)
  {
    v124 = v53;
    if (swift_dynamicCast())
    {
      v54 = v112;
      UUID.init(uuidString:)();
      v55 = v54;

      v56 = v54;
      v57 = v120;
      if (v31(v56, 1, v120) == 1)
      {
        sub_100008D3C(v55, &qword_1003D8B60, &unk_10033F210);
      }

      else
      {
        v73 = v111;
        v74 = v107;
        v107(v111, v55, v57);
        v75 = v116;
        v76 = v119;
        sub_100008D3C(v116 + v119, &qword_1003D8B60, &unk_10033F210);
        v74(v75 + v76, v73, v57);
        v110(v75 + v76, 0, 1, v57);
      }
    }
  }

  v77 = String._bridgeToObjectiveC()();
  v78 = [v109 objectForKeyedSubscript:v77];

  v79 = v116;
  v80 = v118;
  v81 = v113;
  if (v78)
  {
    v124 = v78;
    if (swift_dynamicCast())
    {
      v82 = v123;
      *v24 = v122;
      v24[1] = v82;
    }
  }

  v83 = *(v80 + 16);
  v84 = v120;
  v83(v79, v117, v120);
  v83(v79 + v81[5], v115, v84);
  v85 = (v79 + v81[6]);
  v86 = v114;
  *v85 = v106;
  v85[1] = v86;
  v87 = (v79 + v81[7]);
  v88 = v104;
  *v87 = v105;
  v87[1] = v88;
  v89 = String._bridgeToObjectiveC()();
  v90 = [v109 objectForKeyedSubscript:v89];

  v91 = 0xF000000000000000;
  if (v90)
  {
    v124 = v90;
    v92 = swift_dynamicCast();
    v93 = v122;
    if (v92)
    {
      v91 = v123;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
  }

  v94 = (v79 + v81[8]);
  *v94 = v93;
  v94[1] = v91;
  v95 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v96 = v121;
  [v121 encodeSystemFieldsWithCoder:v95];
  [v95 finishEncoding];
  v97 = [v95 encodedData];
  v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;

  swift_unknownObjectRelease();
  v101 = *(v80 + 8);
  v102 = v120;
  v101(v115, v120);
  result = (v101)(v117, v102);
  v103 = (v79 + v81[9]);
  *v103 = v98;
  v103[1] = v100;
  *(v79 + v81[10]) = v108 & 1;
  return result;
}

uint64_t sub_1000F3E8C(id *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v61 - v8;
  [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v10 = v67;
  v66 = type metadata accessor for CustodianRecoveryInfoRecord();
  v11 = v66[5];
  v12 = UUID.uuidString.getter();
  if (!*(&v10 + 1))
  {

    goto LABEL_6;
  }

  if (v10 != __PAIR128__(v13, v12))
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_7;
    }

LABEL_6:
    v15 = UUID.uuidString.getter();
    *(&v68 + 1) = &type metadata for String;
    v69 = &protocol witness table for String;
    *&v67 = v15;
    *(&v67 + 1) = v16;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = (v1 + v66[6]);
  v19 = *v17;
  v18 = v17[1];
  if (!*(&v67 + 1))
  {
    goto LABEL_11;
  }

  if (v67 == __PAIR128__(v18, v19))
  {

    goto LABEL_12;
  }

  v20 = *v17;
  v21 = v17[1];
  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v22 & 1) == 0)
  {
LABEL_11:
    *(&v68 + 1) = &type metadata for String;
    v69 = &protocol witness table for String;
    *&v67 = v19;
    *(&v67 + 1) = v18;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_12:
  CKRecordKeyValueSetting.subscript.getter();
  v23 = v67;
  v24 = (v2 + v66[7]);
  v25 = *v24;
  v26 = v24[1];
  v65 = v2;
  if (*(&v67 + 1) >> 60 == 15)
  {
    if (v26 >> 60 == 15)
    {
      sub_100015D6C(v25, v26);
      sub_100015D58(v23, *(&v23 + 1));
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v26 >> 60 == 15)
  {
LABEL_16:
    sub_100015D6C(v25, v26);
    sub_100015D58(v23, *(&v23 + 1));
    sub_100015D58(v25, v26);
LABEL_17:
    v27 = *v24;
    v28 = v24[1];
    *(&v68 + 1) = &type metadata for Data;
    v69 = &protocol witness table for Data;
    *&v67 = v27;
    *(&v67 + 1) = v28;
    sub_100015D6C(v27, v28);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_18;
  }

  sub_100015D6C(v25, v26);
  sub_100015D6C(v25, v26);
  sub_100052704(v23, *(&v23 + 1));
  v48 = sub_10018F69C(v23, *(&v23 + 1), v25, v26);
  sub_100012324(v25, v26);
  sub_100015D58(v23, *(&v23 + 1));
  sub_100015D58(v25, v26);
  sub_100015D58(v23, *(&v23 + 1));
  if ((v48 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  CKRecordKeyValueSetting.subscript.getter();
  v29 = v67;
  v30 = v65 + v66[8];
  v32 = *v30;
  v31 = *(v30 + 8);
  if (*(&v67 + 1) >> 60 == 15)
  {
    if (v31 >> 60 == 15)
    {
      sub_100052704(*v30, *(v30 + 8));
      sub_100015D58(v29, *(&v29 + 1));
      goto LABEL_27;
    }
  }

  else if (v31 >> 60 != 15)
  {
    sub_100052704(*v30, *(v30 + 8));
    sub_100052704(v29, *(&v29 + 1));
    v49 = sub_10018F69C(v29, *(&v29 + 1), v32, v31);
    sub_100015D58(v29, *(&v29 + 1));
    sub_100015D58(v32, v31);
    sub_100015D58(v29, *(&v29 + 1));
    if (v49)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  sub_100052704(*v30, *(v30 + 8));
  sub_100015D58(v29, *(&v29 + 1));
  sub_100015D58(v32, v31);
LABEL_23:
  v33 = *v30;
  v34 = *(v30 + 8);
  if (v34 >> 60 == 15)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    *&v68 = 0;
  }

  else
  {
    v38 = &protocol witness table for Data;
    v37 = &type metadata for Data;
    v35 = *v30;
    v36 = *(v30 + 8);
  }

  *&v67 = v35;
  *(&v67 + 1) = v36;
  *(&v68 + 1) = v37;
  v69 = v38;
  sub_100052704(v33, v34);
  CKRecordKeyValueSetting.subscript.setter();
LABEL_27:
  v64 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v39 = v67;
  v40 = v66[11];
  v41 = v63;
  sub_1000F2504(v65 + v40, v63);
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v41, 1, v42) == 1)
  {
    sub_100008D3C(v41, &qword_1003D8B60, &unk_10033F210);
    if (!*(&v39 + 1))
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v61 = v39;
  v45 = UUID.uuidString.getter();
  v47 = v46;
  (*(v43 + 8))(v41, v42);
  if (!*(&v39 + 1))
  {
    if (!v47)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  if (!v47)
  {
LABEL_41:

LABEL_42:
    v50 = v62;
    sub_1000F2504(v65 + v40, v62);
    if (v44(v50, 1, v42) == 1)
    {
      sub_100008D3C(v50, &qword_1003D8B60, &unk_10033F210);
      v67 = 0u;
      v68 = 0u;
      v69 = 0;
    }

    else
    {
      v51 = UUID.uuidString.getter();
      *(&v68 + 1) = &type metadata for String;
      v69 = &protocol witness table for String;
      *&v67 = v51;
      *(&v67 + 1) = v52;
      (*(v43 + 8))(v50, v42);
    }

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_47;
  }

  if (v61 == v45 && *(&v39 + 1) == v47)
  {

    goto LABEL_47;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v60 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_47:
  CKRecordKeyValueSetting.subscript.getter();
  v53 = (v65 + v66[12]);
  v55 = *v53;
  v54 = v53[1];
  if (!*(&v67 + 1))
  {
    if (!v54)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_55;
  }

  if (!v54)
  {

    v69 = 0;
    v67 = 0u;
    v68 = 0u;
LABEL_56:

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v67 == __PAIR128__(v54, v55))
  {
    swift_unknownObjectRelease();
  }

  v57 = *v53;
  v58 = v53[1];
  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v59 & 1) == 0)
  {
LABEL_55:
    *(&v68 + 1) = &type metadata for String;
    v69 = &protocol witness table for String;
    *&v67 = v55;
    *(&v67 + 1) = v54;
    goto LABEL_56;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F476C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x444964726F636572;
    v6 = 0x646F74737543746FLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
    }

    if (a1)
    {
      v5 = 0x6169646F74737563;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x797265766F636572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000F48C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F5DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F48F4(uint64_t a1)
{
  v2 = sub_1000F5670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4930(uint64_t a1)
{
  v2 = sub_1000F5670();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F496C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v51 = v50 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v50 - v11;
  v12 = sub_100005814(&qword_1003DD870, &qword_100341F20);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v50 - v15;
  v17 = type metadata accessor for CustodianRecoveryInfoRecord();
  v18 = *(*(v17 - 1) + 64);
  v20 = *(__chkstk_darwin(v17) + 44);
  v54 = v7;
  v23 = *(v7 + 56);
  v22 = v7 + 56;
  v21 = v23;
  v59 = v20;
  v60 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(&v60[v20], 1, 1, v6);
  v24 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000F5670();
  v25 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    sub_10000839C(a1);
    return sub_100008D3C(&v60[v59], &qword_1003D8B60, &unk_10033F210);
  }

  else
  {
    v50[0] = v21;
    v50[1] = v22;
    v58 = a1;
    LOBYTE(v61) = 0;
    v26 = sub_1000F5784(&unk_1003DD720, &type metadata accessor for UUID);
    v27 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v6;
    v29 = v16;
    v30 = *(v54 + 4);
    v30(v60, v57, v28);
    LOBYTE(v61) = 1;
    v31 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = &v60[v17[5]];
    v53 = v28;
    v30(v32, v31, v28);
    LOBYTE(v61) = 3;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v57 = v26;
    v34 = v60;
    v35 = &v60[v17[6]];
    *v35 = v33;
    v35[1] = v36;
    v62 = 4;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v27;
    v38 = v34;
    *&v34[v17[7]] = v61;
    v62 = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v34[v17[8]] = v61;
    v62 = 6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v34[v17[9]] = v61;
    LOBYTE(v61) = 7;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = v17;
    v34[v17[10]] = v39 & 1;
    LOBYTE(v61) = 2;
    v40 = v51;
    v41 = v37;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v58;
    v43 = v40;
    v44 = v52;
    sub_1000F244C(v43, &v34[v59]);
    LOBYTE(v61) = 8;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v46;
    v48 = &v34[v54[12]];
    (*(v56 + 8))(v29, v41);
    *v48 = v45;
    v48[1] = v47;
    sub_1000F56C4(v38, v44);
    sub_10000839C(v42);
    return sub_1000F5728(v38);
  }
}

uint64_t sub_1000F5178(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&unk_1003DD880, &qword_100341F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000F5670();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v29) = 0;
  type metadata accessor for UUID();
  sub_1000F5784(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CustodianRecoveryInfoRecord();
    v12 = v11[5];
    LOBYTE(v29) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v29) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = (v3 + v11[7]);
    v17 = v16[1];
    v29 = *v16;
    v30 = v17;
    v31 = 4;
    sub_100015D6C(v29, v17);
    v28[1] = sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v29, v30);
    v18 = (v3 + v11[8]);
    v19 = v18[1];
    v29 = *v18;
    v30 = v19;
    v31 = 5;
    sub_100052704(v29, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v29, v30);
    v20 = (v3 + v11[9]);
    v21 = v20[1];
    v29 = *v20;
    v30 = v21;
    v31 = 6;
    sub_100015D6C(v29, v21);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v29, v30);
    v22 = *(v3 + v11[10]);
    LOBYTE(v29) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v11[11];
    LOBYTE(v29) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = (v3 + v11[12]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v29) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000F5548(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5784(&unk_1003D9170, type metadata accessor for CustodianRecoveryInfoRecord);
  result = sub_1000F5784(&qword_1003DD858, type metadata accessor for CustodianRecoveryInfoRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianRecoveryInfoRecord()
{
  result = qword_1003DD8E8;
  if (!qword_1003DD8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F5618(uint64_t a1)
{
  result = sub_1000F5784(&unk_1003DD860, type metadata accessor for CustodianRecoveryInfoRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F5670()
{
  result = qword_1003DD878;
  if (!qword_1003DD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD878);
  }

  return result;
}

uint64_t sub_1000F56C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryInfoRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5728(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F5784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CustodianRecoveryInfoRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianRecoveryInfoRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F5930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000F5A78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000F5BAC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DD7C0);
    if (v1 <= 0x3F)
    {
      sub_1000F2A94();
      if (v2 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003DB130);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1000F5CA4()
{
  result = qword_1003DD948;
  if (!qword_1003DD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD948);
  }

  return result;
}

unint64_t sub_1000F5CFC()
{
  result = qword_1003DD950;
  if (!qword_1003DD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD950);
  }

  return result;
}

unint64_t sub_1000F5D54()
{
  result = qword_1003DD958;
  if (!qword_1003DD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD958);
  }

  return result;
}

uint64_t sub_1000F5DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010032E8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E8B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xEB0000000079654BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E870 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1000F60A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v80 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v14 = &v65 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v79 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v81 = &v65 - v21;
  __chkstk_darwin(v20);
  v23 = &v65 - v22;
  v24 = type metadata accessor for CustodianRecoveryData();
  v25 = *(v24 + 28);
  v82 = a2;
  sub_1000F2504(a2 + v25, v14);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) != 1)
  {
    v78 = a3;
    v77 = *(v16 + 32);
    v77(v23, v14, v15);
    v27 = v82;
    if (v82[3])
    {
      v76 = v23;
      v28 = v82[2];
      UUID.init(uuidString:)();
      if (v26(v12, 1, v15) == 1)
      {
        sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
        (*(v16 + 8))(v76, v15);
        sub_1000F77E0(v27, type metadata accessor for CustodianRecoveryData);
        sub_1000F76CC(v12);
LABEL_13:
        a3 = v78;
        goto LABEL_14;
      }

      v29 = v81;
      v77(v81, v12, v15);
      v30 = v27[1];
      v31 = a1;
      if (v30)
      {
        v32 = (v27 + *(v24 + 32));
        v33 = v32[1];
        v34 = v76;
        if (v33)
        {
          v35 = *v82;
          v74 = *v32;
          v75 = v35;

          v36 = v79;
          UUID.init()();
          v37 = v31[2];
          v68 = v31[3];
          v69 = v37;
          v38 = *v31;
          v70 = v31[1];
          v71 = v38;
          v39 = v31[4];
          v72 = v31[5];
          v73 = v39;
          v40 = type metadata accessor for CustodianRecoveryKeys();
          v41 = v80;
          sub_1000F7840(v31 + *(v40 + 28), v80);
          v42 = (v31 + *(v40 + 32));
          v43 = *v42;
          v66 = v42[1];
          v67 = v43;
          v44 = v29;
          v45 = v78;
          v46 = v36;
          v47 = v77;
          v77(v78, v46, v15);
          v48 = type metadata accessor for CustodianRecoverySessionRecord();
          v47(&v45[v48[5]], v34, v15);
          v47(&v45[v48[6]], v44, v15);
          v49 = &v45[v48[7]];
          v50 = v74;
          *v49 = v75;
          *(v49 + 1) = v30;
          v51 = &v45[v48[8]];
          *v51 = v50;
          *(v51 + 1) = v33;
          v52 = &v45[v48[9]];
          v53 = v68;
          *v52 = v69;
          *(v52 + 1) = v53;
          v54 = &v45[v48[10]];
          v55 = v70;
          *v54 = v71;
          *(v54 + 1) = v55;
          v56 = &v45[v48[11]];
          v57 = v72;
          *v56 = v73;
          *(v56 + 1) = v57;
          sub_1000F7840(v41, &v45[v48[12]]);
          v58 = &v45[v48[13]];
          v59 = v66;
          *v58 = v67;
          *(v58 + 1) = v59;
          sub_1000F77E0(v82, type metadata accessor for CustodianRecoveryData);
          return (*(*(v48 - 1) + 56))(v45, 0, 1, v48);
        }

        sub_1000F77E0(v31, type metadata accessor for CustodianRecoveryKeys);
        v64 = *(v16 + 8);
        v64(v29, v15);
        v64(v34, v15);
        v62 = v82;
        goto LABEL_12;
      }

      sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
      v61 = *(v16 + 8);
      v61(v29, v15);
      v61(v76, v15);
    }

    else
    {
      sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
      (*(v16 + 8))(v23, v15);
    }

    v62 = v27;
LABEL_12:
    sub_1000F77E0(v62, type metadata accessor for CustodianRecoveryData);
    goto LABEL_13;
  }

  sub_1000F77E0(a1, type metadata accessor for CustodianRecoveryKeys);
  sub_1000F77E0(v82, type metadata accessor for CustodianRecoveryData);
  sub_1000F76CC(v14);
LABEL_14:
  v63 = type metadata accessor for CustodianRecoverySessionRecord();
  return (*(*(v63 - 8) + 56))(a3, 1, 1, v63);
}

uint64_t sub_1000F66AC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x444964726F636572;
    v7 = 0x646F74737543746FLL;
    v8 = 0x4449656B617073;
    if (a1 != 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6169646F74737563;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x5064657070617277;
    if (a1 == 9)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E614872656E776FLL;
    v4 = 0x737574617473;
    if (a1 != 6)
    {
      v4 = 0x5264657070617277;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000F683C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F7D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F6870(uint64_t a1)
{
  v2 = sub_1000F7678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F68AC(uint64_t a1)
{
  v2 = sub_1000F7678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F68E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v58 = &v53 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v61 = &v53 - v12;
  __chkstk_darwin(v11);
  v65 = &v53 - v13;
  v14 = sub_100005814(&qword_1003DD968, &qword_100342108);
  v15 = *(v14 - 8);
  v63 = v14;
  v64 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v19 = type metadata accessor for CustodianRecoverySessionRecord();
  v20 = *(*(v19 - 8) + 64);
  v22 = *(__chkstk_darwin(v19) + 48);
  v62 = v7;
  v25 = *(v7 + 56);
  v23 = v7 + 56;
  v24 = v25;
  v67 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v22;
  v25(&v67[v22], 1, 1, v6);
  v26 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000F7678();
  v27 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    sub_10000839C(a1);
    return sub_1000F76CC(&v67[v68]);
  }

  else
  {
    v55 = v24;
    v56 = v23;
    v57 = v19;
    v66 = a1;
    LOBYTE(v69) = 0;
    v28 = sub_1000F7798(&unk_1003DD720, &type metadata accessor for UUID);
    v29 = v18;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v67;
    v54 = *(v62 + 32);
    v54(v67, v65, v6);
    LOBYTE(v69) = 1;
    v31 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v65 = v6;
    v54(&v30[v57[5]], v31, v6);
    LOBYTE(v69) = 3;
    v32 = v60;
    v53 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = v30;
    v61 = v28;
    v54(&v30[v57[6]], v32, v6);
    LOBYTE(v69) = 4;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v66;
    v36 = (v33 + v57[7]);
    *v36 = v34;
    v36[1] = v37;
    LOBYTE(v69) = 5;
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v64;
    v40 = (v33 + v57[8]);
    *v40 = v38;
    v40[1] = v41;
    v70 = 8;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v33 + v57[10]) = v69;
    v70 = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v33 + v57[9]) = v69;
    LOBYTE(v69) = 9;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v58;
    v44 = (v33 + v57[11]);
    *v44 = v42;
    v44[1] = v45;
    LOBYTE(v69) = 2;
    v46 = v29;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = v59;
    sub_1000F244C(v43, v33 + v68);
    LOBYTE(v69) = 10;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v49;
    v51 = (v33 + v57[13]);
    (*(v39 + 8))(v46, v63);
    *v51 = v48;
    v51[1] = v50;
    sub_1000F7734(v33, v47);
    sub_10000839C(v35);
    return sub_1000F77E0(v33, type metadata accessor for CustodianRecoverySessionRecord);
  }
}

uint64_t sub_1000F71CC(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DD978, &qword_100342110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v32 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000F7678();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v33) = 0;
  type metadata accessor for UUID();
  sub_1000F7798(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CustodianRecoverySessionRecord();
    v12 = v11[5];
    LOBYTE(v33) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[6];
    LOBYTE(v33) = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v33) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v33) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = (v3 + v11[10]);
    v21 = v20[1];
    v33 = *v20;
    v34 = v21;
    v35 = 8;
    sub_100015D6C(v33, v21);
    v32[1] = sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v33, v34);
    v22 = (v3 + v11[9]);
    v23 = v22[1];
    v33 = *v22;
    v34 = v23;
    v35 = 7;
    sub_100052704(v33, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v33, v34);
    v24 = (v3 + v11[11]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v33) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = v11[12];
    LOBYTE(v33) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = (v3 + v11[13]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v33) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000F75A8(uint64_t a1)
{
  *(a1 + 8) = sub_1000F7798(&unk_1003D9230, type metadata accessor for CustodianRecoverySessionRecord);
  result = sub_1000F7798(&qword_1003DD960, type metadata accessor for CustodianRecoverySessionRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianRecoverySessionRecord()
{
  result = qword_1003DD9D8;
  if (!qword_1003DD9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000F7678()
{
  result = qword_1003DD970;
  if (!qword_1003DD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DD970);
  }

  return result;
}

uint64_t sub_1000F76CC(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F7734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoverySessionRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F7798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F77E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F7840(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F78D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000F7A1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000F7B50()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DD7C0);
    if (v1 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DB130);
      if (v2 <= 0x3F)
      {
        sub_1000F2A94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1000F7C44()
{
  result = qword_1003DDA30;
  if (!qword_1003DDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA30);
  }

  return result;
}

unint64_t sub_1000F7C9C()
{
  result = qword_1003DDA38;
  if (!qword_1003DDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA38);
  }

  return result;
}

unint64_t sub_1000F7CF4()
{
  result = qword_1003DDA40;
  if (!qword_1003DDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA40);
  }

  return result;
}

uint64_t sub_1000F7D48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656B617073 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010032E8F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5264657070617277 && a2 == 0xEA0000000000434BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5064657070617277 && a2 == 0xEB00000000434B52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010032E910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void sub_1000F80E0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v76[-v10];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v76[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v83 = &v76[-v18];
  v84 = a1;
  if (CKRecord.recordType.getter() == 0xD000000000000017 && 0x80000001003422F0 == v19)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      type metadata accessor for AACustodianError(0);
      v87 = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v77 = a2;
  v81 = v17;
  v21 = v84;
  v22 = [v84 recordID];
  v23 = [v22 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v24 = v13[6];
  if (v24(v11, 1, v12) == 1)
  {
    sub_100008D3C(v11, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for AACustodianError(0);
    v87 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    return;
  }

  v78 = v13;
  v25 = v13[4];
  v80 = v12;
  v25(v83, v11);
  v26 = [v21 encryptedValuesByKey];
  v27 = String._bridgeToObjectiveC()();
  v79 = v26;
  v28 = [v26 objectForKeyedSubscript:v27];

  if (!v28)
  {
    goto LABEL_11;
  }

  v87 = v28;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  UUID.init(uuidString:)();

  v29 = v80;
  if (v24(v9, 1, v80) != 1)
  {
    (v25)(v81, v9, v29);
    v39 = String._bridgeToObjectiveC()();
    v40 = v79;
    v41 = [v79 objectForKeyedSubscript:v39];

    if (v41 && (v87 = v41, (swift_dynamicCast() & 1) != 0))
    {
      v42 = v85;
      v43 = v86;
      v44 = String._bridgeToObjectiveC()();
      v45 = [v40 objectForKeyedSubscript:v44];

      if (v45)
      {
        v85 = v45;
        type metadata accessor for Status(0);
        v46 = swift_dynamicCast();
        v47 = v78;
        if (v46)
        {
          v48 = v87;
          v49 = v78[2];
          v50 = v82;
          v51 = v80;
          v49(v82, v83, v80);
          v52 = type metadata accessor for CustodianshipInfoRecord();
          v49(v50 + v52[5], v81, v51);
          v53 = (v50 + v52[6]);
          *v53 = v42;
          v53[1] = v43;
          *(v50 + v52[7]) = v48;
          v54 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
          v55 = v84;
          [v84 encodeSystemFieldsWithCoder:v54];
          [v54 finishEncoding];
          v56 = [v54 encodedData];
          v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          swift_unknownObjectRelease();
          v60 = v47[1];
          v60(v81, v51);
          v60(v83, v51);
          v61 = (v50 + v52[8]);
          *v61 = v57;
          v61[1] = v59;
          *(v50 + v52[9]) = v77 & 1;
          return;
        }
      }

      v67 = v80;
      v72 = v84;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100008D04(v73, qword_1003FAA88);
      v63 = v72;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v64, v65))
      {
        goto LABEL_31;
      }

      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v63;
      *v69 = v63;
      v74 = v63;
      v71 = "Missing Status - %@";
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100008D04(v62, qword_1003FAA88);
      v63 = v84;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v80;
      if (!v66)
      {
        goto LABEL_31;
      }

      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v63;
      *v69 = v63;
      v70 = v63;
      v71 = "Missing Owner Handle - %@";
    }

    _os_log_impl(&_mh_execute_header, v64, v65, v71, v68, 0xCu);
    sub_100008D3C(v69, &unk_1003D9140, &qword_10033E640);

LABEL_31:

    type metadata accessor for AACustodianError(0);
    v87 = -7005;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v75 = v78[1];
    v75(v81, v67);
    v75(v83, v67);
    return;
  }

  sub_100008D3C(v9, &qword_1003D8B60, &unk_10033F210);
LABEL_11:
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAA88);
  v31 = v84;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v80;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v31;
    *v37 = v31;
    v38 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Missing CustodianID - %@", v36, 0xCu);
    sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);
  }

  type metadata accessor for AACustodianError(0);
  v87 = -7005;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1000F99D4(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  swift_unknownObjectRelease();
  (v78[1])(v83, v35);
}

uint64_t sub_1000F8C14(id *a1)
{
  v2 = v1;
  [*a1 encryptedValuesByKey];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for CustodianshipInfoRecord();
  v4 = v3[5];
  v5 = UUID.uuidString.getter();
  if (v19)
  {
    if (v18 == v5 && v19 == v6)
    {

      goto LABEL_11;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v18 = UUID.uuidString.getter();
  v19 = v9;
  CKRecordKeyValueSetting.subscript.setter();
LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v10 = (v1 + v3[6]);
  v12 = *v10;
  v11 = v10[1];
  if (!v19)
  {
    goto LABEL_17;
  }

  if (v18 == v12 && v19 == v11)
  {

    goto LABEL_19;
  }

  v14 = *v10;
  v15 = v10[1];
  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_17:
    v18 = v12;
    LOBYTE(v19) = v11;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_19:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v19 & 1) != 0 || v18 != *(v2 + v3[7]))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F8EDC()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x737574617473;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6169646F74737563;
  if (v1 != 1)
  {
    v5 = 0x6E614872656E776FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F8FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F9EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F8FDC(uint64_t a1)
{
  v2 = sub_1000F9980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9018(uint64_t a1)
{
  v2 = sub_1000F9980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F9054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for UUID();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v30 = &v27 - v8;
  v33 = sub_100005814(&qword_1003DDA58, &qword_1003422F8);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v11 = &v27 - v10;
  v12 = type metadata accessor for CustodianshipInfoRecord();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000F9980();
  v32 = v11;
  v17 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000839C(a1);
  }

  v34 = v15;
  LOBYTE(v35) = 0;
  sub_1000F99D4(&unk_1003DD720, &type metadata accessor for UUID);
  v18 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = *(v29 + 32);
  (v30)(v34, v18, v3);
  LOBYTE(v35) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v3;
  v19 = v34;
  (v30)(&v34[v12[5]], v7, v3);
  LOBYTE(v35) = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = (v19 + v12[6]);
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v35) = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v31;
  *(v19 + v12[7]) = v23;
  v36 = 4;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v19 + v12[8]) = v35;
  LOBYTE(v35) = 5;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v24 + 8))(v32, v33);
  *(v19 + v12[9]) = v25 & 1;
  sub_1000C522C(v19, v28);
  sub_10000839C(a1);
  return sub_1000D8450(v19);
}

uint64_t sub_1000F957C(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DDA78, &unk_100342300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000F9980();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for UUID();
  sub_1000F99D4(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CustodianshipInfoRecord();
    v12 = v11[5];
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + v11[7]);
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = (v3 + v11[8]);
    v18 = v17[1];
    v21 = *v17;
    v22 = v18;
    v23 = 4;
    sub_100015D6C(v21, v18);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v21, v22);
    v19 = *(v3 + v11[9]);
    LOBYTE(v21) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000F9858(uint64_t a1)
{
  *(a1 + 8) = sub_1000F99D4(&qword_1003D9160, type metadata accessor for CustodianshipInfoRecord);
  result = sub_1000F99D4(&qword_1003DDA48, type metadata accessor for CustodianshipInfoRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CustodianshipInfoRecord()
{
  result = qword_1003DDAE8;
  if (!qword_1003DDAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F9928(uint64_t a1)
{
  result = sub_1000F99D4(&qword_1003DDA50, type metadata accessor for CustodianshipInfoRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F9980()
{
  result = qword_1003DDA60;
  if (!qword_1003DDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDA60);
  }

  return result;
}

uint64_t sub_1000F99D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CustodianshipInfoRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianshipInfoRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F9B80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F9C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000F9D10()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000F9DC0()
{
  result = qword_1003DDB30;
  if (!qword_1003DDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB30);
  }

  return result;
}

unint64_t sub_1000F9E18()
{
  result = qword_1003DDB38;
  if (!qword_1003DDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB38);
  }

  return result;
}

unint64_t sub_1000F9E70()
{
  result = qword_1003DDB40;
  if (!qword_1003DDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB40);
  }

  return result;
}

uint64_t sub_1000F9EC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000FA0D0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v9 = sub_100005814(&qword_1003DDB68, &qword_100342578);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1000FA970();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_100015D6C(a2, a3);
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000FA26C()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 0x6873614879656BLL;
  }

  *v0;
  return result;
}

uint64_t sub_1000FA2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873614879656BLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000FA390(uint64_t a1)
{
  v2 = sub_1000FA970();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FA3CC(uint64_t a1)
{
  v2 = sub_1000FA970();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FA408@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000FA748(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000FA458(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000FA618();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100012324(a1, a2);

  sub_100015D6C(v8, v9);

  sub_100012324(v8, v9);

  return v8;
}

unint64_t sub_1000FA618()
{
  result = qword_1003DDB50;
  if (!qword_1003DDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB50);
  }

  return result;
}

uint64_t sub_1000FA66C(uint64_t a1)
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

uint64_t sub_1000FA688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000FA6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000FA748(uint64_t *a1)
{
  v3 = sub_100005814(&qword_1003DDB58, &qword_100342570);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000080F8(a1, v8);
  sub_1000FA970();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000839C(a1);
  }

  else
  {
    v12 = 0;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100015D6C(v8, v10);

    sub_10000839C(a1);
    sub_100012324(v8, v10);
  }

  return v8;
}

unint64_t sub_1000FA970()
{
  result = qword_1003DDB60;
  if (!qword_1003DDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB60);
  }

  return result;
}

unint64_t sub_1000FA9D8()
{
  result = qword_1003DDB70;
  if (!qword_1003DDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB70);
  }

  return result;
}

unint64_t sub_1000FAA30()
{
  result = qword_1003DDB78;
  if (!qword_1003DDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB78);
  }

  return result;
}

unint64_t sub_1000FAA88()
{
  result = qword_1003DDB80;
  if (!qword_1003DDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDB80);
  }

  return result;
}

__n128 sub_1000FAADC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000FAB10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FAB58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000FABC8(uint64_t a1)
{
  if (a1)
  {

    [v1 sendEvent:a1];
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Analytics event found nil", v4, 2u);
    }
  }
}

uint64_t sub_1000FACE4(__int128 *a1)
{
  *(v1 + 16) = 0;
  sub_100005814(&unk_1003DDBF0, &qword_1003427F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  v3 = (v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  *v4 = 0;
  v4[1] = 0;
  sub_10003E950(a1, v1 + 24);
  sub_10003E950(a1 + 5, v1 + 64);
  sub_10003E950((a1 + 40), v1 + 104);
  *(v1 + 144) = *(a1 + 120);
  return v1;
}

uint64_t sub_1000FAE30(char a1, uint64_t a2)
{
  *(v3 + 184) = a2;
  *(v3 + 192) = v2;
  *(v3 + 288) = a1;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v3 + 200) = v4;
  v5 = *(v4 - 8);
  *(v3 + 208) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v7 = type metadata accessor for CustodianRecoveryData();
  *(v3 + 224) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_1000FAF60, 0, 0);
}

uint64_t sub_1000FAF60()
{
  v137 = v0;
  v1 = *(v0 + 288);
  v2 = v0[24];
  v3 = **(&off_1003A9D28 + v1);
  sub_100012004();
  v4 = *(v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v5 = *(v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
  v6 = v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID;
  v7 = *(v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v8 = *(v6 + 8);

  v9 = sub_100245D38(v3, v4, v5, v7, v8);
  v0[34] = v9;
  if (v1 <= 3)
  {
    if ((v1 - 1) >= 3)
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v63 = v0[33];
      v64 = v0[23];
      v65 = type metadata accessor for Logger();
      sub_100008D04(v65, qword_1003FAA88);
      sub_10010BD38(v64, v63, type metadata accessor for CustodianRecoveryData);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v0[33];
      if (v68)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v136[0] = v71;
        *v70 = 136315138;
        v72 = sub_10011038C();
        v74 = v73;
        sub_10010C048(v69, type metadata accessor for CustodianRecoveryData);
        v75 = sub_10021145C(v72, v74, v136);

        *(v70 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v66, v67, "Received spakeBegin push with data: %s", v70, 0xCu);
        sub_10000839C(v71);
      }

      else
      {

        sub_10010C048(v69, type metadata accessor for CustodianRecoveryData);
      }

      v85 = v0[24];
      sub_1000FC804(v0[23], v9);

      goto LABEL_65;
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v10 = v0[32];
    v11 = v0[23];
    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);
    sub_10010BD38(v11, v10, type metadata accessor for CustodianRecoveryData);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 288);
      v16 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v16 = 136315394;
      v17 = 0xEA00000000006C61;
      v18 = 0xD000000000000011;
      if (v15 == 2)
      {
        v17 = 0x800000010032C1C0;
      }

      else
      {
        v18 = 0x6E6946656B617073;
      }

      if (v15 == 1)
      {
        v19 = 0xD000000000000015;
      }

      else
      {
        v19 = v18;
      }

      if (v15 == 1)
      {
        v20 = 0x800000010032C1A0;
      }

      else
      {
        v20 = v17;
      }

      v21 = v0[32];
      v22 = sub_10021145C(v19, v20, v136);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      v23 = sub_10011038C();
      v25 = v24;
      sub_10010C048(v21, type metadata accessor for CustodianRecoveryData);
      v26 = sub_10021145C(v23, v25, v136);

      *(v16 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "Received %s push with data: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = v0[32];

      sub_10010C048(v40, type metadata accessor for CustodianRecoveryData);
    }

    v41 = v0[24];
    v42 = sub_100109C50(v0[23]);
    if (v42)
    {
      v44 = v42;
      v45 = v43;
      sub_10010C2DC(v42, v43, *(v0 + 288));
      v76 = *(v0 + 288);
      if (v76 == 1 || v76 == 2)
      {
        v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v92 & 1) == 0)
        {
          v93 = sub_10010CC84(v44, v45, *(v0 + 288));
          v95 = v94;
          v96 = v0[28];
          v97 = *(v0 + 288);
          ObjectType = swift_getObjectType();
          v99 = (*(v45 + 48))(v0 + 8, ObjectType, v45);
          v101 = (v100 + *(v96 + 44));
          v102 = *v101;
          v103 = v101[1];
          *v101 = v93;
          v101[1] = v95;
          sub_100015D58(v102, v103);
          v99(v0 + 8, 0);
          if (v97 < 4)
          {
            v104 = v97 + 1;
          }

          else
          {
            v104 = 5;
          }

          v105 = v0[31];
          v106 = v0[24];
          v107 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianKeyExchangeSendMessage altDSID:0 flowID:0];
          v108 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
          swift_beginAccess();
          sub_10010BD38(v44 + v108, v105, type metadata accessor for CustodianRecoveryData);
          v109 = sub_10010ABFC(v105, v104);
          sub_10010C048(v105, type metadata accessor for CustodianRecoveryData);
          v110 = sub_1000080F8((v106 + 24), *(v106 + 48));
          v111 = swift_allocObject();
          v111[3] = 0;
          v111[4] = 0;
          v111[2] = v107;
          v112 = *v110;
          v113 = swift_allocObject();
          *(v113 + 16) = sub_10010E5C4;
          *(v113 + 24) = v111;
          v0[6] = sub_10010E58C;
          v0[7] = v113;
          v0[2] = _NSConcreteStackBlock;
          v0[3] = 1107296256;
          v0[4] = sub_10013BB5C;
          v0[5] = &unk_1003A9C60;
          v114 = _Block_copy(v0 + 2);
          v115 = v0[7];

          v116 = v107;

          [v112 startCustodianRecoveryTransactionWithContext:v109 completion:v114];
          _Block_release(v114);

          if (v9)
          {
            [v9 updateTaskResultWithError:0];
          }

          v118 = v0[26];
          v117 = v0[27];
          v119 = v0[25];
          (*(v118 + 16))(v117, v0[24] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v119);
          Dependency.wrappedValue.getter();
          (*(v118 + 8))(v117, v119);
          v120 = v0[22];
          swift_getObjectType();
          sub_100246FA8(v9);
          swift_unknownObjectRelease();
          goto LABEL_61;
        }
      }

      else
      {
      }

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&_mh_execute_header, v121, v122, "Message verified Code entered on Owner device is correct!!!, Getting RKC + PRKC + otCustodianID", v123, 2u);
      }

      v124 = v0[24];

      sub_1000FE450(v44, v45, v9);
      goto LABEL_61;
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v0[19] = -9009;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v0[18];
    v47 = v46;
    if (v9)
    {
      v48 = _convertErrorToNSError(_:)();
      [v9 updateTaskResultWithError:v48];

      v49 = v9;
    }

    else
    {
      v49 = 0;
    }

    v87 = v0[26];
    v86 = v0[27];
    v88 = v0[25];
    (*(v87 + 16))(v86, v0[24] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v88);
    Dependency.wrappedValue.getter();
    (*(v87 + 8))(v86, v88);
    v89 = v0[20];
    goto LABEL_64;
  }

  if (v1 == 4)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = v0[30];
    v28 = v0[23];
    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    sub_10010BD38(v28, v27, type metadata accessor for CustodianRecoveryData);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[30];
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v136[0] = v35;
      *v34 = 136315138;
      v36 = sub_10011038C();
      v38 = v37;
      sub_10010C048(v33, type metadata accessor for CustodianRecoveryData);
      v39 = sub_10021145C(v36, v38, v136);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received spakeComplete push with data: %s", v34, 0xCu);
      sub_10000839C(v35);
    }

    else
    {

      sub_10010C048(v33, type metadata accessor for CustodianRecoveryData);
    }

    v77 = v0[24];
    v78 = sub_100109C50(v0[23]);
    if (v78)
    {
      v80 = v0[24];
      sub_1001005EC(v78, v79, v9);
LABEL_61:
      swift_unknownObjectRelease();

LABEL_65:
      v130 = v0[32];
      v129 = v0[33];
      v132 = v0[30];
      v131 = v0[31];
      v133 = v0[29];
      v134 = v0[27];

      v135 = v0[1];

      return v135();
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v0[16] = -9009;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v0[15];
    v90 = v46;
    if (v9)
    {
      v91 = _convertErrorToNSError(_:)();
      [v9 updateTaskResultWithError:v91];

      v49 = v9;
    }

    else
    {
      v49 = 0;
    }

    v126 = v0[26];
    v125 = v0[27];
    v127 = v0[25];
    (*(v126 + 16))(v125, v0[24] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v127);
    Dependency.wrappedValue.getter();
    (*(v126 + 8))(v125, v127);
    v128 = v0[17];
LABEL_64:
    swift_getObjectType();
    sub_100246FA8(v9);
    swift_unknownObjectRelease();

    goto LABEL_65;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v50 = v0[29];
  v51 = v0[23];
  v52 = type metadata accessor for Logger();
  sub_100008D04(v52, qword_1003FAA88);
  sub_10010BD38(v51, v50, type metadata accessor for CustodianRecoveryData);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v0[29];
  if (v55)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v136[0] = v58;
    *v57 = 136315138;
    v59 = sub_10011038C();
    v61 = v60;
    sub_10010C048(v56, type metadata accessor for CustodianRecoveryData);
    v62 = sub_10021145C(v59, v61, v136);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v53, v54, "Received spakeError push with data: %s", v57, 0xCu);
    sub_10000839C(v58);
  }

  else
  {

    sub_10010C048(v56, type metadata accessor for CustodianRecoveryData);
  }

  v81 = swift_task_alloc();
  v0[35] = v81;
  *v81 = v0;
  v81[1] = sub_1000FC000;
  v82 = v0[23];
  v83 = v0[24];

  return sub_100102BDC(v82, v9);
}

uint64_t sub_1000FC000()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return _swift_task_switch(sub_1000FC0FC, 0, 0);
}

uint64_t sub_1000FC0FC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);

  v7 = *(v0 + 8);

  return v7();
}

void sub_1000FC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v24 = a2;
    swift_errorRetain();
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
      log = v15;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, log, v16, "Failed to get configuration with error: %@, starting session with default values", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }

    a2 = v24;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = (a2 + 32);
    do
    {
      v22 = *v21++;
      v25 = v22;
      swift_unknownObjectRetain();
      sub_1000FC3A0(&v25, a3, a4, a5, a6, a7, a8);
      swift_unknownObjectRelease();
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1000FC3A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v45 = a5;
  v46 = a6;
  v44 = type metadata accessor for UUID();
  v42 = *(v44 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianRecoveryData();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Generating new session with completion and code", v20, 2u);
  }

  v21 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(v16 + v21, v15, type metadata accessor for CustodianRecoveryData);
  v22 = *(v15 + 5);

  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + 144);
    swift_unknownObjectRetain();

    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (v25)
    {
      v26 = *(v25 + 16);
      v27 = v26;
    }

    else
    {
      v26 = 0;
    }

    type metadata accessor for CustodianSessionManager();
    v31 = sub_10011747C(v26, v15, v45, v46);
    v33 = v32;
    swift_unknownObjectRelease();

    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v35 = *(v34 + 144);
      swift_unknownObjectRetain();

      v36 = v42;
      v37 = v16 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      v38 = v41;
      v39 = v44;
      (*(v42 + 16))(v41, v37, v44);
      sub_100116210(v38, v43, 0);
      swift_unknownObjectRelease();
      (*(v36 + 8))(v38, v39);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000FCE70(v31, v33, 0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unexpectedly found nil while unwrapping self...", v30, 2u);
    }
  }

  return sub_10010C048(v15, type metadata accessor for CustodianRecoveryData);
}

uint64_t sub_1000FC804(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = a1[1];
  if (v11)
  {
    v36 = v7;
    v37 = a2;
    v12 = v2;
    v13 = *a1;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Looking for existing sessions to start code verification", v17, 2u);
    }

    v18 = *(v12 + 144);
    v19 = sub_100116ADC(v13, v11);
    if (v19[2])
    {
      v20 = __chkstk_darwin(v19);
      *(&v35 - 4) = a1;
      *(&v35 - 3) = v12;
      *(&v35 - 2) = v37;
      sub_10003A4CC(sub_10010E45C, (&v35 - 6), v20);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v37;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Found no active sessions for recovery. Starting a session and waiting for user to enter a code...", v33, 2u);
    }

    sub_1000FDF50(a1);
    v34 = v36;
    if (v32)
    {
      [v32 updateTaskResultWithError:0];
    }

    (*(v34 + 16))(v10, v12 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v6);
    Dependency.wrappedValue.getter();
    (*(v34 + 8))(v10, v6);
    swift_getObjectType();
    sub_100246FA8(v32);
  }

  else
  {
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
      _os_log_impl(&_mh_execute_header, v23, v24, "No recovery session id in the incoming RecoveryData, unable to proceed...", v25, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v38 = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v26 = v39;
    v27 = v39;
    if (a2)
    {
      v28 = _convertErrorToNSError(_:)();
      [a2 updateTaskResultWithError:v28];
    }

    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v10, v6);
    swift_getObjectType();
    sub_100246FA8(a2);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000FCCF8(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = a1[1];
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
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating session with incoming data from IdMS", v11, 2u);
  }

  ObjectType = swift_getObjectType();
  v13 = (*(v7 + 48))(v15, ObjectType, v7);
  sub_10010E8E8(a2);
  v13(v15, 0);
  return sub_1000FCE70(v6, v7, a4);
}

uint64_t sub_1000FCE70(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v131 = *(v6 - 8);
  v7 = *(v131 + 64);
  __chkstk_darwin(v6);
  v130 = &v113 - v8;
  v9 = sub_100005814(&qword_1003DDEA8, &qword_100342828);
  v126 = *(v9 - 8);
  v10 = *(v126 + 64);
  __chkstk_darwin(v9);
  v12 = &v113 - v11;
  v125 = type metadata accessor for CustodianRecoveryData();
  v13 = *(*(v125 - 8) + 64);
  v14 = __chkstk_darwin(v125);
  v16 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v113 - v17);
  ObjectType = swift_getObjectType();
  v20 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v20, v18, type metadata accessor for CustodianRecoveryData);
  v133 = v18;
  v21 = v18[5];
  if (!v21)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100008D04(v51, qword_1003FAA88);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Stored session did not contain a recovery code", v54, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v138 = -9010;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v55 = aBlock[0];
    v56 = aBlock[0];
    if (a3)
    {
      v57 = _convertErrorToNSError(_:)();
      [a3 updateTaskResultWithError:v57];
    }

    v76 = v131;
    v77 = v130;
    (*(v131 + 16))(v130, v132 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v6);
    Dependency.wrappedValue.getter();
    (*(v76 + 8))(v77, v6);
    goto LABEL_29;
  }

  v127 = v6;
  v22 = v133[1];
  v129 = a2;
  v128 = a1;
  if (!v22)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAA88);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v127;
    v63 = v132;
    if (v61)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Missing recovery session ID", v64, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v138 = -9008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v65 = aBlock[0];
    v66 = v128;
    swift_unknownObjectRetain();
    v55 = v65;
    sub_100108BC8(v66, v129, v55, 0);
    swift_unknownObjectRelease();
    if (!a3)
    {
      goto LABEL_21;
    }

LABEL_20:
    v67 = _convertErrorToNSError(_:)();
    [a3 updateTaskResultWithError:v67];

LABEL_21:
    v68 = v131;
    v69 = v130;
    (*(v131 + 16))(v130, v63 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v62);
    Dependency.wrappedValue.getter();
    (*(v68 + 8))(v69, v62);
LABEL_29:
    swift_getObjectType();
    sub_100246FA8(a3);

    swift_unknownObjectRelease();
    return sub_10010C048(v133, type metadata accessor for CustodianRecoveryData);
  }

  v114 = v20;
  v115 = v16;
  v23 = v133[4];
  v122 = *v133;
  v24 = sub_10010B538(v133);
  v124 = v27;
  if (!v27)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100008D04(v70, qword_1003FAA88);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    v73 = os_log_type_enabled(v71, v72);
    v62 = v127;
    v63 = v132;
    if (v73)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "AAData malformed in session", v74, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v138 = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v55 = aBlock[0];
    v75 = swift_unknownObjectRetain();
    sub_100108BC8(v75, v129, v55, 0);
    swift_unknownObjectRelease();
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v117 = v21;
  v118 = v23;
  v121 = a3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100008D04(v31, qword_1003FAA88);

  v33 = v28;
  v34 = v28;
  v35 = v124;
  sub_10010B994(v33, v124, v29, v30);
  v36 = v30;
  v116 = v32;
  v37 = v34;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v120 = v29;
  v123 = v36;
  sub_10010B9E0(v37, v35, v29, v36);
  v40 = os_log_type_enabled(v38, v39);
  v113 = ObjectType;
  if (v40)
  {
    v41 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v41 = 136315394;
    *(v41 + 4) = sub_10021145C(v122, v22, aBlock);
    *(v41 + 12) = 2080;

    v42 = sub_10021145C(v37, v35, aBlock);

    *(v41 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "Verifying custodian message session with RecoveryID: %s, SpakeID: %s", v41, 0x16u);
    swift_arrayDestroy();
  }

  v43 = v120;
  v44 = v123;
  sub_100015D6C(v120, v123);
  sub_100012324(v43, v44);
  v45 = sub_100170228(v37, v35);
  v46 = v37;
  v48 = v47;
  v49 = v126;
  (*(v126 + 16))(v12, v132 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory, v9);
  Dependency.wrappedValue.getter();
  (*(v49 + 8))(v12, v9);
  v50 = *sub_1000080F8(aBlock, v135);
  sub_100118250(&v138);
  v119 = v46;
  v122 = v45;
  v126 = v48;
  sub_10000839C(aBlock);
  v78 = v124;

  sub_100015D6C(v43, v44);
  sub_100012324(v43, v44);
  v79 = v129;
  v80 = *(v129 + 48);
  v81 = v128;
  v82 = v113;
  v83 = v80(aBlock, v113, v129);
  v85 = *(v84 + 24);
  *(v84 + 16) = v46;
  *(v84 + 24) = v78;

  v83(aBlock, 0);
  sub_100040738(&v138, aBlock);
  v86 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
  swift_beginAccess();
  sub_10010BA98(aBlock, v81 + v86);
  swift_endAccess();
  sub_10010C2DC(v81, v79, 0);
  v87 = v43;
  v89 = v82;
  v90 = sub_10010CC84(v81, v79, 0);
  v91 = v132;
  v92 = v90;
  v94 = v93;
  v95 = v80(aBlock, v89, v79);
  v97 = (v96 + *(v125 + 44));
  v98 = *v97;
  v99 = v97[1];
  *v97 = v92;
  v97[1] = v94;
  sub_100015D58(v98, v99);
  v95(aBlock, 0);
  v100 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianKeyExchangeSendMessage altDSID:0 flowID:0];
  v101 = v115;
  sub_10010BD38(v81 + v114, v115, type metadata accessor for CustodianRecoveryData);
  v102 = sub_10010ABFC(v101, 1);
  sub_10010C048(v101, type metadata accessor for CustodianRecoveryData);
  v103 = sub_1000080F8((v91 + 24), *(v91 + 48));
  v104 = swift_allocObject();
  v104[3] = 0;
  v104[4] = 0;
  v104[2] = v100;
  v105 = *v103;
  v106 = swift_allocObject();
  *(v106 + 16) = sub_10010E5C4;
  *(v106 + 24) = v104;
  v136 = sub_10010E58C;
  v137 = v106;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013BB5C;
  v135 = &unk_1003A9BE8;
  v107 = _Block_copy(aBlock);

  v108 = v100;

  [v105 startCustodianRecoveryTransactionWithContext:v102 completion:v107];
  _Block_release(v107);

  v109 = v121;
  if (v121)
  {
    [v121 updateTaskResultWithError:0];
  }

  v110 = v131;
  v111 = v130;
  v112 = v127;
  (*(v131 + 16))(v130, v132 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v127);
  Dependency.wrappedValue.getter();
  (*(v110 + 8))(v111, v112);
  swift_getObjectType();
  sub_100246FA8(v109);
  sub_100012324(v122, v126);
  swift_unknownObjectRelease();
  sub_10010B9E0(v119, v124, v87, v123);
  sub_10000839C(&v138);
  return sub_10010C048(v133, type metadata accessor for CustodianRecoveryData);
}

uint64_t sub_1000FDF50(uint64_t a1)
{
  v3 = type metadata accessor for CustodianRecoveryData();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  v10 = swift_allocObject();
  swift_weakInit();
  sub_10010BD38(a1, v9, type metadata accessor for CustodianRecoveryData);
  sub_10010BD38(v9, v7, type metadata accessor for CustodianRecoveryData);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_10010C274(v9, v12 + v11, type metadata accessor for CustodianRecoveryData);
  if (v1[2])
  {

    sub_1000FE214(0, v10, v7);
  }

  else
  {
    v20[1] = sub_1000080F8(v1 + 3, v1[6]);
    v14 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
    v13 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
    v16 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
    v15 = *(v1 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_10010E304;
    v18[4] = v12;

    sub_10011A4E8(v14, v13, v16, v15, sub_10010E37C, v18);
  }

  sub_10010C048(v7, type metadata accessor for CustodianRecoveryData);
}

void sub_1000FE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get configuration with error: %@, starting session with default values", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 144);
    swift_unknownObjectRetain();

    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = v13;
    }

    else
    {
      v13 = 0;
    }

    type metadata accessor for CustodianSessionManager();
    sub_100117570(v13, a3);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1000FE450(uint64_t a1, uint64_t a2, void *a3)
{
  v88 = a3;
  v85 = a2;
  v84 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v83 = *(v84 - 1);
  v4 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = &v76 - v5;
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v76 - v8;
  v86 = type metadata accessor for UUID();
  v10 = *(v86 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v86);
  v13 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v76 - v14;
  v16 = type metadata accessor for CustodianRecoveryData();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(v21, v19, type metadata accessor for CustodianRecoveryData);
  v78 = sub_10010B538(v19);
  v23 = v22;
  v80 = v24;
  v81 = v25;
  sub_10010C048(v19, type metadata accessor for CustodianRecoveryData);
  v79 = v23;
  if (v23)
  {
    sub_100012D04(v21 + *(v16 + 28), v9, &qword_1003D8B60, &unk_10033F210);
    if ((*(v10 + 48))(v9, 1, v86) == 1)
    {
      sub_100008D3C(v9, &qword_1003D8B60, &unk_10033F210);
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
        _os_log_impl(&_mh_execute_header, v27, v28, "Missing custodian UUID", v29, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      *&v89 = -9011;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v30 = v91[0];
      swift_unknownObjectRetain();
      v31 = v30;
      sub_100108BC8(v20, v85, v31, 3);
      swift_unknownObjectRelease();
      if (v88)
      {
        v32 = _convertErrorToNSError(_:)();
        [v88 updateTaskResultWithError:v32];
      }

      v33 = v83;
      v34 = v82;
      v35 = v84;
      (*(v83 + 16))(v82, v87 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v84);
      Dependency.wrappedValue.getter();
      (*(v33 + 8))(v34, v35);
      swift_getObjectType();
      sub_100246FA8(v88);

      swift_unknownObjectRelease();
      sub_10010B9E0(v78, v79, v80, v81);
    }

    else
    {
      v46 = v10;
      v47 = *(v10 + 32);
      v47(v15, v9, v86);
      v48 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
      swift_beginAccess();
      sub_100012D04(v20 + v48, &v89, &qword_1003DE300, &qword_100342838);
      if (v90)
      {
        sub_10003E950(&v89, v91);
        v49 = v87;
        v84 = sub_1000080F8((v87 + 64), *(v87 + 88));
        swift_unownedRetainStrong();
        swift_unownedRetain();
        swift_unownedRetain();

        v50 = *(v10 + 16);
        v77 = v47;
        v51 = v86;
        v50(v13, v15, v86);
        sub_100040738(v91, &v89);
        v52 = (*(v10 + 80) + 48) & ~*(v10 + 80);
        v53 = (v11 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v82 = v15;
        v54 = v88;
        v55 = v51;
        v83 = v46;
        v56 = swift_allocObject();
        *(v56 + 2) = v49;
        *(v56 + 3) = v54;
        v57 = v85;
        *(v56 + 4) = v20;
        *(v56 + 5) = v57;
        v77(&v56[v52], v13, v55);
        sub_10003E950(&v89, &v56[v53]);
        v58 = &v56[(v53 + 47) & 0xFFFFFFFFFFFFFFF8];
        v59 = v78;
        v60 = v79;
        *v58 = v78;
        *(v58 + 1) = v60;
        v61 = v80;
        v62 = v81;
        *(v58 + 2) = v80;
        *(v58 + 3) = v62;
        v63 = *v84;
        v64 = v54;
        swift_unknownObjectRetain();
        sub_10010B994(v59, v60, v61, v62);
        v65 = v82;
        sub_100020600(v82, sub_10010C1B4, v56);
        swift_unownedRelease();

        sub_10010B9E0(v59, v60, v61, v62);
        sub_10000839C(v91);
        (*(v83 + 8))(v65, v55);
      }

      else
      {
        sub_100008D3C(&v89, &qword_1003DE300, &qword_100342838);
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_100008D04(v66, qword_1003FAA88);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "Missing spake verifier", v69, 2u);
        }

        type metadata accessor for AACustodianRecoveryError(0);
        *&v89 = -9014;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v70 = v91[0];
        swift_unknownObjectRetain();
        v71 = v70;
        sub_100108BC8(v20, v85, v71, 3);
        swift_unknownObjectRelease();
        if (v88)
        {
          v72 = _convertErrorToNSError(_:)();
          [v88 updateTaskResultWithError:v72];
        }

        v73 = v83;
        v74 = v82;
        v75 = v84;
        (*(v83 + 16))(v82, v87 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v84);
        Dependency.wrappedValue.getter();
        (*(v73 + 8))(v74, v75);
        swift_getObjectType();
        sub_100246FA8(v88);

        swift_unknownObjectRelease();
        sub_10010B9E0(v78, v79, v80, v81);

        (*(v10 + 8))(v15, v86);
      }
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA88);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Malformed recovery data", v39, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    *&v89 = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v40 = v91[0];
    swift_unknownObjectRetain();
    v41 = v40;
    sub_100108BC8(v20, v85, v41, 3);
    swift_unknownObjectRelease();
    if (v88)
    {
      v42 = _convertErrorToNSError(_:)();
      [v88 updateTaskResultWithError:v42];
    }

    v43 = v83;
    v44 = v82;
    v45 = v84;
    (*(v83 + 16))(v82, v87 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v84);
    Dependency.wrappedValue.getter();
    (*(v43 + 8))(v44, v45);
    swift_getObjectType();
    sub_100246FA8(v88);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000FF02C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v168 = a8;
  v173 = a7;
  *&v177 = a6;
  v180 = a5;
  v185 = a4;
  v184 = a3;
  v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v170 = &v164 - v13;
  v171 = type metadata accessor for CustodianRecoveryData();
  v14 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v169 = (&v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for CustodianRecoveryKeys();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v178 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for UUID();
  v174 = *(v175 - 8);
  v19 = *(v174 + 64);
  __chkstk_darwin(v175);
  v21 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CustodianRecoveryInfoRecord();
  v23 = *(*(v22 - 1) + 64);
  __chkstk_darwin(v22);
  v25 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v182 = *(v183 - 8);
  v26 = *(v182 + 64);
  __chkstk_darwin(v183);
  v181 = &v164 - v27;
  v28 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v164 - v30);
  sub_100012D04(a1, &v164 - v30, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v184;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = _convertErrorToNSError(_:)();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to fetch recovery records with error: %@", v38, 0xCu);
      sub_100008D3C(v39, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v41 = sub_100256804(-9015, v186, v187);
    swift_unownedRetainStrong();
    swift_errorRetain();
    v42 = swift_unknownObjectRetain();
    sub_100108BC8(v42, v180, v41, 3);
    swift_unknownObjectRelease();
    if (v37)
    {
      v43 = _convertErrorToNSError(_:)();
      [v37 updateTaskResultWithError:v43];
    }

    v44 = v182;
    v45 = v181;
    v46 = v183;
    (*(v182 + 16))(v181, a2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v183);
    Dependency.wrappedValue.getter();
    (*(v44 + 8))(v45, v46);
    swift_getObjectType();
    sub_100246FA8(v37);
    swift_unknownObjectRelease();
  }

  else
  {
    v179 = a2;
    sub_10010C274(v31, v25, type metadata accessor for CustodianRecoveryInfoRecord);
    v48 = &v25[v22[8]];
    v49 = *(v48 + 1) >> 60 == 15;
    v50 = v25;
    v172 = v25;
    if (v49)
    {
      *&v176 = v48;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100008D04(v51, qword_1003FAA88);
      v52 = v174;
      v53 = v175;
      (*(v174 + 16))(v21, v177, v175);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *&v177 = swift_slowAlloc();
        aBlock[0] = v177;
        *v56 = 136315138;
        sub_10010BB40(&qword_1003D9150, &type metadata accessor for UUID);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        (*(v52 + 8))(v21, v53);
        v60 = sub_10021145C(v57, v59, aBlock);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "Records do not contain recoveryKey for this UUID: %s, likely non-CDP account", v56, 0xCu);
        sub_10000839C(v177);

        v50 = v172;
      }

      else
      {

        (*(v52 + 8))(v21, v53);
      }

      v48 = v176;
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    v62 = sub_100008D04(v61, qword_1003FAA88);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v178;
    if (v65)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Creating Message with RKC + PRKC + otCustodianID for owner device", v67, 2u);
    }

    v68 = (v50 + v22[7]);
    v176 = *v68;
    v177 = *v48;
    sub_100012D04(v50 + v22[11], v66 + *(v16 + 28), &qword_1003D8B60, &unk_10033F210);
    v69 = (v50 + v22[12]);
    v71 = *v69;
    v70 = v69[1];
    v72 = v177;
    *v66 = v176;
    *(v66 + 16) = v72;
    *(v66 + 32) = 0;
    *(v66 + 40) = 0;
    v73 = (v66 + *(v16 + 32));
    *v73 = v71;
    v73[1] = v70;
    swift_unownedRetainStrong();
    sub_100015D6C(v176, *(&v176 + 1));
    sub_100052704(v177, *(&v177 + 1));

    v74 = sub_1002B4174(v66);
    if (v75 >> 60 == 15)
    {
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Failed encoding message with keys", v78, 2u);
      }

      v79 = v179;
      swift_unownedRetainStrong();
      type metadata accessor for AACustodianRecoveryError(0);
      aBlock[6] = -9018;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v80 = aBlock[0];
      v81 = v185;
      swift_unknownObjectRetain();
      v82 = v80;
      sub_100108BC8(v81, v180, v82, 3);
      swift_unknownObjectRelease();
      v83 = v184;
      if (v184)
      {
        v84 = _convertErrorToNSError(_:)();
        [v83 updateTaskResultWithError:v84];
      }

      v85 = v182;
      v86 = v181;
      v87 = v183;
      (*(v182 + 16))(v181, v79 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v183);
      Dependency.wrappedValue.getter();
      (*(v85 + 8))(v86, v87);
      swift_getObjectType();
      sub_100246FA8(v83);

      swift_unknownObjectRelease();
      v93 = v66;
    }

    else
    {
      v88 = v75;
      *&v176 = v62;
      v89 = v173[3];
      v90 = v173[4];
      v91 = v74;
      sub_1000080F8(v173, v89);
      v92 = *(v90 + 56);
      *&v177 = v91;
      v94 = v92(v91, v88, v89, v90);
      v96 = v95;
      v173 = v88;
      ObjectType = swift_getObjectType();
      swift_unownedRetainStrong();

      v167 = v94;
      v166 = v96;
      v98 = Data.base64EncodedString(options:)(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      inited = swift_initStackObject();
      v165 = v71;
      v100 = inited;
      *(inited + 16) = xmmword_10033E5C0;
      strcpy((inited + 32), "spakeMessage");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v98;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 80), "spakeSessionId");
      *(inited + 120) = &type metadata for String;
      v101 = v168;
      *(inited + 95) = -18;
      *(inited + 96) = v101;
      *(inited + 104) = a9;

      v102 = sub_100308978(v100);
      swift_setDeallocating();
      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002D2194(v102);

      v103 = sub_100255878();
      v105 = v104;
      v106 = v180;
      v107 = *(v180 + 48);
      v108 = v107(aBlock, ObjectType, v180);
      v109 = v171;
      v111 = (v110 + *(v171 + 44));
      v112 = *v111;
      v113 = v111[1];
      *v111 = v103;
      v111[1] = v105;
      sub_100015D58(v112, v113);
      v108(aBlock, 0);
      v114 = *v68;
      v115 = v68[1];
      sub_100015D6C(*v68, v115);
      v116 = v185;
      v117 = v107(aBlock, ObjectType, v106);
      v119 = (v118 + *(v109 + 40));
      v120 = *v119;
      v121 = v119[1];
      *v119 = v114;
      v119[1] = v115;
      sub_100015D58(v120, v121);
      v117(aBlock, 0);

      v122 = v107(aBlock, ObjectType, v106);
      v123 = v109;
      v124 = v122;
      v126 = (v125 + *(v109 + 64));
      v127 = v126[1];
      *v126 = v165;
      v126[1] = v70;
      v128 = v179;

      v124(aBlock, 0);
      swift_unownedRetainStrong();
      v129 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventCustodianKeyExchangeSendMessage altDSID:0 flowID:0];
      v130 = (v116 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
      swift_beginAccess();
      v131 = v169;
      sub_10010BD38(v130, v169, type metadata accessor for CustodianRecoveryData);
      v132 = sub_10010ABFC(v131, 4);
      sub_10010C048(v131, type metadata accessor for CustodianRecoveryData);
      v133 = sub_1000080F8(v128 + 3, v128[6]);
      v134 = swift_allocObject();
      v134[3] = 0;
      v134[4] = 0;
      v134[2] = v129;
      v135 = *v133;
      v136 = swift_allocObject();
      *(v136 + 16) = sub_10010E5C4;
      *(v136 + 24) = v134;
      aBlock[4] = sub_10010E58C;
      aBlock[5] = v136;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10013BB5C;
      aBlock[3] = &unk_1003A9B20;
      v137 = _Block_copy(aBlock);
      v138 = v129;

      [v135 startCustodianRecoveryTransactionWithContext:v132 completion:v137];
      _Block_release(v137);

      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&_mh_execute_header, v139, v140, "Spake session for custodian device complete! Terminating session", v142, 2u);
      }

      v143 = [objc_allocWithZone(AACustodianRecoveryRequestContext) init];
      v144 = v174;
      if (v130[1])
      {
        v145 = *v130;
        v146 = v130[1];

        v147 = String._bridgeToObjectiveC()();
      }

      else
      {
        v147 = 0;
      }

      v148 = v184;
      v149 = v178;
      [v143 setRecoverySessionID:v147];

      v150 = v170;
      sub_100012D04(v130 + *(v123 + 28), v170, &qword_1003D8B60, &unk_10033F210);
      v151 = v175;
      if ((*(v144 + 48))(v150, 1, v175) == 1)
      {
        isa = 0;
      }

      else
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v144 + 8))(v150, v151);
      }

      [v143 setCustodianUUID:isa];

      v153 = (v130 + *(v123 + 64));
      if (v153[1])
      {
        v154 = *v153;
        v155 = v153[1];

        v156 = String._bridgeToObjectiveC()();
      }

      else
      {
        v156 = 0;
      }

      v157 = v173;
      [v143 setRecordBuildVersion:v156];

      swift_unownedRetainStrong();
      v158 = v128[18];
      swift_unknownObjectRetain();

      v159 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      v160 = v143;
      sub_100116210(v185 + v159, v143, 0);

      swift_unknownObjectRelease();
      swift_unownedRetainStrong();
      if (v148)
      {
        [v148 updateTaskResultWithError:0];
      }

      v161 = v182;
      v162 = v181;
      v163 = v183;
      (*(v182 + 16))(v181, v128 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v183);
      Dependency.wrappedValue.getter();
      (*(v161 + 8))(v162, v163);
      swift_getObjectType();
      sub_100246FA8(v148);
      swift_unknownObjectRelease();
      sub_100012324(v167, v166);
      sub_100015D58(v177, v157);

      v93 = v149;
    }

    sub_10010C048(v93, type metadata accessor for CustodianRecoveryKeys);
    return sub_10010C048(v172, type metadata accessor for CustodianRecoveryInfoRecord);
  }
}

void sub_1001005EC(uint64_t a1, uint64_t a2, void *a3)
{
  v131 = a2;
  v128 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v127 = *(v128 - 8);
  v5 = *(v127 + 64);
  __chkstk_darwin(v128);
  v7 = &v116 - v6;
  v8 = sub_100005814(&qword_1003DDEC8, qword_100342850);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v116 - v10;
  v12 = type metadata accessor for CustodianRecoveryData();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v16, v15, type metadata accessor for CustodianRecoveryData);
  v17 = sub_10010B538(v15);
  v19 = v18;
  v130 = v20;
  v22 = v21;
  sub_10010C048(v15, type metadata accessor for CustodianRecoveryData);
  if (v19)
  {
    v126 = v19;
    v23 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
    swift_beginAccess();
    sub_100012D04(a1 + v23, &aBlock, &qword_1003DE300, &qword_100342838);
    if (v134)
    {
      v122 = v17;
      v124 = a3;
      sub_10003E950(&aBlock, v138);
      v24 = v139;
      v25 = v140;
      sub_1000080F8(v138, v139);
      v26 = *(v25 + 48);
      v123 = v22;
      v51 = v26(v130, v22, v24, v25);
      v53 = v52;
      v54 = type metadata accessor for CustodianRecoveryKeys();
      v120 = swift_allocBox();
      v56 = v55;
      *&aBlock = 0;
      v121 = v53;
      sub_1001DC120(v11);

      if ((*(*(v54 - 8) + 48))(v11, 1, v54) == 1)
      {
        v57 = v51;
        sub_100008D3C(v11, &qword_1003DDEC8, qword_100342850);
        swift_deallocBox();
        v58 = v124;
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_100008D04(v59, qword_1003FAA88);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        v62 = os_log_type_enabled(v60, v61);
        v63 = v129;
        if (v62)
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Message did not contain needed keys", v64, 2u);
        }

        type metadata accessor for AACustodianRecoveryError(0);
        v137 = -9019;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v65 = aBlock;
        swift_unknownObjectRetain();
        v66 = v65;
        sub_100108BC8(a1, v131, v66, 5);
        swift_unknownObjectRelease();
        if (v58)
        {
          v67 = _convertErrorToNSError(_:)();
          [v58 updateTaskResultWithError:v67];
        }

        v68 = v127;
        v69 = v128;
        (*(v127 + 16))(v7, v63 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v128);
        Dependency.wrappedValue.getter();
        (*(v68 + 8))(v7, v69);
        swift_getObjectType();
        sub_100246FA8(v58);

        swift_unknownObjectRelease();
        sub_10010B9E0(v122, v126, v130, v123);
        v70 = v57;
      }

      else
      {
        v128 = v51;
        sub_10010C274(v11, v56, type metadata accessor for CustodianRecoveryKeys);
        v71 = *v56;
        v72 = v56[1];
        sub_100015D6C(*v56, v72);
        v73 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v73._countAndFlagsBits;
        sub_100012324(v71, v72);
        v74 = v56;
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        v76 = sub_100008D04(v75, qword_1003FAA88);

        v127 = v76;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();

        v79 = os_log_type_enabled(v77, v78);
        v119 = v54;
        if (v79)
        {
          v80 = swift_slowAlloc();
          v116 = v77;
          v81 = v80;
          v82 = swift_slowAlloc();
          *&aBlock = v82;
          *v81 = 136315138;
          v83 = v74;
          v84 = sub_10021145C(countAndFlagsBits, v73._object, &aBlock);

          *(v81 + 4) = v84;
          v74 = v83;
          v85 = v78;
          v86 = v116;
          _os_log_impl(&_mh_execute_header, v116, v85, "Spake Complete received with PRKC: %s", v81, 0xCu);
          sub_10000839C(v82);
        }

        else
        {
        }

        v118 = v74;
        v87 = *v74;
        v88 = v74[1];
        v89 = v131;
        v90 = *(v131 + 48);
        sub_100015D6C(v87, v88);
        v91 = v90(&aBlock, ObjectType, v89);
        v93 = (v92 + *(v12 + 40));
        v94 = *v93;
        v95 = v93[1];
        *v93 = v87;
        v93[1] = v88;
        sub_100015D58(v94, v95);
        v91(&aBlock, 0);
        v96 = (v118 + *(v119 + 32));
        v98 = *v96;
        v97 = v96[1];

        v99 = v90(&aBlock, ObjectType, v89);
        v101 = (v100 + *(v12 + 64));
        v102 = v101[1];
        *v101 = v98;
        v101[1] = v97;

        v99(&aBlock, 0);
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&_mh_execute_header, v103, v104, "Calling IdMS to verify transaction", v105, 2u);
        }

        sub_10010BD38(a1 + v16, v15, type metadata accessor for CustodianRecoveryData);
        v106 = sub_10010ABFC(v15, 4);
        sub_10010C048(v15, type metadata accessor for CustodianRecoveryData);
        v107 = sub_1000080F8((v129 + 24), *(v129 + 48));
        v108 = swift_allocObject();
        swift_weakInit();
        v109 = swift_allocObject();
        v109[2] = v120;
        v109[3] = v108;
        v110 = v131;
        v109[4] = a1;
        v109[5] = v110;
        v111 = v124;
        v109[6] = v124;
        v112 = *v107;
        v113 = swift_allocObject();
        *(v113 + 16) = sub_10010BFE4;
        *(v113 + 24) = v109;
        v135 = sub_10010C030;
        v136 = v113;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v133 = sub_10010AB64;
        v134 = &unk_1003A9A80;
        v114 = _Block_copy(&aBlock);
        v115 = v111;

        swift_unknownObjectRetain();

        [v112 fetchCustodianRecoveryTokenWithContext:v106 completion:v114];
        _Block_release(v114);
        sub_10010B9E0(v122, v126, v130, v123);

        v70 = v128;
      }

      sub_100012324(v70, v121);
      sub_10000839C(v138);
    }

    else
    {
      v38 = v17;
      v39 = v22;
      sub_100008D3C(&aBlock, &qword_1003DE300, &qword_100342838);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAA88);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v41, v42);
      v44 = v129;
      if (v43)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Missing verifier", v45, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v138[0] = -9014;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v46 = aBlock;
      swift_unknownObjectRetain();
      v47 = v46;
      sub_100108BC8(a1, v131, v47, 5);
      swift_unknownObjectRelease();
      if (a3)
      {
        v48 = _convertErrorToNSError(_:)();
        [a3 updateTaskResultWithError:v48];
      }

      v49 = v127;
      v50 = v128;
      (*(v127 + 16))(v7, v44 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v128);
      Dependency.wrappedValue.getter();
      (*(v49 + 8))(v7, v50);
      swift_getObjectType();
      sub_100246FA8(a3);

      swift_unknownObjectRelease();
      sub_10010B9E0(v38, v126, v130, v39);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v129;
    if (v30)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Parsing AAData failed or no keys were found for SPAKE Complete step...", v32, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v138[0] = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v33 = aBlock;
    swift_unknownObjectRetain();
    v34 = v33;
    sub_100108BC8(a1, v131, v34, 5);
    swift_unknownObjectRelease();
    if (a3)
    {
      v35 = _convertErrorToNSError(_:)();
      [a3 updateTaskResultWithError:v35];
    }

    v36 = v127;
    v37 = v128;
    (*(v127 + 16))(v7, v31 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v128);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v7, v37);
    swift_getObjectType();
    sub_100246FA8(a3);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100101738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v49 = a6;
  v50 = a8;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for CustodianRecoveryKeys();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  v21 = qword_1003D7F38;
  if (a3)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_10010C038(a1, a2, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = _convertErrorToNSError(_:)();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed obtaining CRT with error: %@", v25, 0xCu);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v28 = sub_100256804(-9016, v51, v52);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v30 = (Strong + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
      v31 = *(Strong + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
      *v30 = 0;
      v30[1] = 0;
      v32 = Strong;

      v33 = (v32 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
      v34 = *(v32 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
      *v33 = 0;
      v33[1] = 0;

      v35 = *(v32 + 144);
      sub_100116210(v49 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v28, 1);
    }

    swift_beginAccess();
    v36 = swift_weakLoadStrong();
    if (v36)
    {
      v37 = v36;
      v38 = v50;
      if (v50)
      {
        swift_errorRetain();
        v39 = _convertErrorToNSError(_:)();
        [v38 updateTaskResultWithError:v39];
      }

      else
      {
        swift_errorRetain();
      }

      v47 = v48;
      (*(v48 + 16))(v15, v37 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v12);
      Dependency.wrappedValue.getter();
      (*(v47 + 8))(v15, v12);
      swift_getObjectType();
      sub_100246FA8(v38);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v40 = v20;

    if (v21 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAA88);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Successfully obtained CRT from IdMS, SPAKE flow verified", v44, 2u);
    }

    swift_beginAccess();
    v45 = *(v40 + 40);
    *(v40 + 32) = a1;
    *(v40 + 40) = a2;

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      sub_10010BD38(v40, v19, type metadata accessor for CustodianRecoveryKeys);
      sub_100101C90(v49, a7, v19, v50);

      return sub_10010C048(v19, type metadata accessor for CustodianRecoveryKeys);
    }
  }

  return result;
}

uint64_t sub_100101C90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v61 = a2;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v64 = &v59 - v8;
  v9 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v60 = &v59 - v11;
  v12 = type metadata accessor for CustodianRecoveryData();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for CustodianRecoveryKeys();
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003D9240, &unk_10033ECC0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v59 - v21;
  v23 = type metadata accessor for CustodianRecoverySessionRecord();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  sub_10010BD38(a3, v18, type metadata accessor for CustodianRecoveryKeys);
  v29 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v29, v15, type metadata accessor for CustodianRecoveryData);
  sub_1000F60A4(v18, v15, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v30 = v67;
    v31 = v68;
    sub_100008D3C(v22, &unk_1003D9240, &unk_10033ECC0);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAA88);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = v30;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to generate recovery session record", v36, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v69[5] = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v69[0];
    v38 = *(v30 + 144);
    v39 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
    v40 = v69[0];
    sub_100116210(a1 + v39, v37, 1);

    v41 = v31;
    v42 = v40;
    if (v31)
    {
      v43 = _convertErrorToNSError(_:)();
      [v31 updateTaskResultWithError:v43];
    }

    v56 = v64;
    v57 = v65;
    v58 = v66;
    (*(v65 + 16))(v64, v35 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v66);
    Dependency.wrappedValue.getter();
    (*(v57 + 8))(v56, v58);
    swift_getObjectType();
    sub_100246FA8(v41);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10010C274(v22, v27, type metadata accessor for CustodianRecoverySessionRecord);
    v44 = sub_1000080F8((v67 + 104), *(v67 + 128));
    v45 = swift_allocObject();
    swift_weakInit();
    sub_10010BD38(v28, &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryKeys);
    v46 = (*(v59 + 80) + 48) & ~*(v59 + 80);
    v47 = swift_allocObject();
    v47[2] = v45;
    v47[3] = a1;
    v48 = v68;
    v47[4] = v61;
    v47[5] = v48;
    sub_10010C274(v18, v47 + v46, type metadata accessor for CustodianRecoveryKeys);
    v49 = *v44;
    v51 = v62;
    v50 = v63;
    v52 = v60;
    (*(v62 + 16))(v60, v49 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v63);
    v53 = v48;
    swift_unknownObjectRetain();
    Dependency.wrappedValue.getter();
    (*(v51 + 8))(v52, v50);
    v54 = *sub_1000080F8(v69, v69[3]);
    sub_10017EF04(v27, 0, 2, sub_10010BF1C, v47);

    sub_10010C048(v27, type metadata accessor for CustodianRecoverySessionRecord);
    return sub_10000839C(v69);
  }
}

uint64_t sub_1001023B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v66 = a5;
  v67 = a3;
  v8 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v64 - v10;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v64 - v18);
  sub_100012D04(a1, &v64 - v18, &qword_1003DA0F0, qword_100342AC0);
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

    v24 = os_log_type_enabled(v22, v23);
    v25 = v66;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to store generated recovery session record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v29 = sub_100256804(-9029, v68, v69);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v31 = *(Strong + 144);
      swift_unknownObjectRetain();

      v32 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      swift_errorRetain();
      sub_100116210(v67 + v32, v29, 1);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v33 = swift_weakLoadStrong();
    if (v33)
    {
      v34 = v33;
      swift_errorRetain();
      if (v25)
      {
        v35 = _convertErrorToNSError(_:)();
        [v25 updateTaskResultWithError:v35];
      }

      v63 = v65;
      (*(v65 + 16))(v15, v34 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v12);
      Dependency.wrappedValue.getter();
      (*(v63 + 8))(v15, v12);
      swift_getObjectType();
      sub_100246FA8(v25);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA88);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Session stored successfully, terminating session", v39, 2u);
    }

    v40 = [objc_allocWithZone(AACustodianRecoveryRequestContext) init];
    v41 = (v67 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
    swift_beginAccess();
    if (v41[1])
    {
      v42 = *v41;
      v43 = v41[1];

      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v40 setRecoverySessionID:v44];

    v46 = type metadata accessor for CustodianRecoveryData();
    sub_100012D04(v41 + *(v46 + 28), v11, &qword_1003D8B60, &unk_10033F210);
    v47 = type metadata accessor for UUID();
    v48 = *(v47 - 8);
    isa = 0;
    if ((*(v48 + 48))(v11, 1, v47) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v48 + 8))(v11, v47);
    }

    [v40 setCustodianUUID:isa];

    if (*(a6 + 40))
    {
      v50 = *(a6 + 32);
      v51 = String._bridgeToObjectiveC()();
    }

    else
    {
      v51 = 0;
    }

    v52 = v66;
    [v40 setCustodianRecoveryToken:v51];

    v53 = (a6 + *(type metadata accessor for CustodianRecoveryKeys() + 32));
    if (v53[1])
    {
      v54 = *v53;
      v55 = String._bridgeToObjectiveC()();
    }

    else
    {
      v55 = 0;
    }

    [v40 setRecordBuildVersion:v55];

    swift_beginAccess();
    v56 = swift_weakLoadStrong();
    if (v56)
    {
      v57 = *(v56 + 144);
      swift_unknownObjectRetain();

      v58 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
      v59 = v40;
      sub_100116210(v67 + v58, v40, 0);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v60 = swift_weakLoadStrong();
    if (v60)
    {
      v61 = v60;
      if (v52)
      {
        [v52 updateTaskResultWithError:0];
      }

      v62 = v65;
      (*(v65 + 16))(v15, v61 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v12);
      Dependency.wrappedValue.getter();
      (*(v62 + 8))(v15, v12);
      swift_getObjectType();
      sub_100246FA8(v52);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return sub_100008D3C(v19, &qword_1003DA0F0, qword_100342AC0);
  }
}