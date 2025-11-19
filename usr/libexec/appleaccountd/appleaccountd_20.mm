uint64_t sub_100240C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v11 = *(a3(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_100005814(a4, a5) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v6 + v16);
  v18 = *(v6 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a6(a1, a2, v6 + v12, v6 + v15, v17, v18);
}

uint64_t sub_100240EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-1] - v7;
  v9 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21[-1] - v12;
  (*(v10 + 16))(&v21[-1] - v12, a2 + OBJC_IVAR____TtC13appleaccountd26AgeMigrationAccountManager__followUpController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v14 = v22;
  v15 = v23;
  sub_1000080F8(v21, v22);
  v16 = AAFollowUpIdentifierAgeMigration;
  (*(v5 + 16))(v8, a1, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  (*(v15 + 32))(v16, sub_100242090, v18, v14, v15);

  return sub_10000839C(v21);
}

uint64_t sub_100241120(char a1, uint64_t a2)
{
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAB90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cleared follow up for age migration with success: %{BOOL}d", v7, 8u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Encountered error while clearing follow up: %@", v10, 0xCu);
      sub_100083380(v11);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100241338(uint64_t a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier:v4];

  if (!v6)
  {
    v6 = [v5 mainBundle];
  }

  v12._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0xD000000000000018;
  v7.value._object = 0x8000000100331550;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v12)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_100241438(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_100005814(&qword_1003E36F8, qword_100346B68);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_100242BA0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003B0B38;
  v15 = _Block_copy(aBlock);
  v16 = a4;

  [a2 presentModel:a3 completion:v15];
  _Block_release(v15);
}

void sub_100241608(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    if (a1)
    {
      swift_getErrorValue();
      swift_errorRetain();
      v6 = sub_100256810(v45);
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      swift_getErrorValue();
      if (sub_100256874(v44) == -1)
      {
        if (qword_1003D7F90 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100008D04(v36, qword_1003FAB90);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "User deferred acting on prompt... don't save", v39, 2u);
        }

        v16 = 3;
      }

      else
      {

        v16 = 0;
      }

      goto LABEL_27;
    }

LABEL_9:
    v12 = [a2 bundleID];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10000E680(v5, v13, v15);

    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB90);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136315138;
      type metadata accessor for MisconfiguredAgePromptResponse(0);
      v22 = String.init<A>(describing:)();
      v24 = sub_10021145C(v22, v23, &v46);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Sending back this cached response: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

LABEL_27:
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAB90);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      *(v43 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v41, v42, "Sending back user action response: %d", v43, 8u);
    }

    LODWORD(v46) = v16;
    sub_100005814(&qword_1003E36F8, qword_100346B68);
    CheckedContinuation.resume(returning:)();

    return;
  }

  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAB90);
  v26 = a2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = v30;
    *v29 = 136315138;
    v31 = [v26 bundleID];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_10021145C(v32, v34, &v46);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "User has not seen the migration alert for bundleID: %s", v29, 0xCu);
    sub_10000839C(v30);
  }

  LODWORD(v46) = 0;
  sub_100005814(&qword_1003E36F8, qword_100346B68);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_100241BE0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd26AgeMigrationAccountManager__followUpController;
  v2 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AgeMigrationAccountManager()
{
  result = qword_1003E3668;
  if (!qword_1003E3668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100241CDC()
{
  sub_100241D6C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100241D6C()
{
  if (!qword_1003DB700)
  {
    sub_100008CBC(&unk_1003DACE0, &unk_10033F920);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DB700);
    }
  }
}

uint64_t sub_100241DF4()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100241EC8;
  v3 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD00000000000001BLL, 0x80000001003313F0, sub_100241FF4, v3, &type metadata for () + 8);
}

uint64_t sub_100241EC8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100241FDC;
  }

  else
  {
    v3 = sub_10014920C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100241FFC()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100242090(char a1, uint64_t a2)
{
  v4 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);

  return sub_100241120(a1, a2);
}

uint64_t sub_10024211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100242140, 0, 0);
}

uint64_t sub_100242140()
{
  v60 = v0;
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "attempt to display misconfigured age prompt", v4, 2u);
  }

  v5 = *(v0 + 24);

  v58 = [objc_allocWithZone(AAAgeMigrationFlowPresenter) init];
  *(v0 + 56) = v58;
  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);
    sub_100241338(0xD00000000000001ELL, 0x8000000100331410);
    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10033E5C0;
    *(v14 + 56) = &type metadata for String;
    v15 = sub_100242A70();
    *(v14 + 64) = v15;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    *(v0 + 16) = v11;

    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    *(v14 + 72) = v16;
    *(v14 + 80) = v17;
    v8 = String.init(format:_:)();
    v10 = v18;
  }

  v19 = [*(v0 + 24) message];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = *(v0 + 40);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v56 = *(v0 + 40);
    v57 = *(v0 + 48);
    v27 = *(v0 + 32);
    v28 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v28 = 136315906;
    *(v28 + 4) = sub_10021145C(v8, v10, &v59);
    *(v28 + 12) = 2080;

    v29 = sub_10021145C(v21, v23, &v59);

    *(v28 + 14) = v29;
    *(v28 + 22) = 2080;
    *(v28 + 24) = sub_10021145C(v27, v56, &v59);
    *(v28 + 32) = 2048;
    *(v28 + 34) = v57;
    _os_log_impl(&_mh_execute_header, v25, v26, "title %s, message %s, emailAddress = %s, ageOfMajority = %ld", v28, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v30 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v30 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    v32 = *(v0 + 32);
    v31 = *(v0 + 40);
    sub_100241338(0xD000000000000020, 0x8000000100331500);
    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10033E5C0;
    *(v33 + 56) = &type metadata for String;
    v34 = sub_100242A70();
    *(v33 + 32) = v32;
    *(v33 + 40) = v31;
    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v34;
    *(v33 + 64) = v34;
    *(v33 + 72) = v32;
    *(v33 + 80) = v31;
    swift_bridgeObjectRetain_n();
    String.init(format:_:)();
    v36 = v35;

    v23 = v36;
  }

  *(v0 + 64) = v23;
  v37 = *(v0 + 24);

  sub_100241338(0xD000000000000027, 0x8000000100331430);
  sub_100241338(0xD00000000000002FLL, 0x8000000100331460);
  sub_100241338(0xD000000000000027, 0x8000000100331490);
  v38 = [v37 bundleID];
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = [*(v0 + 24) altDSID];
  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  v40 = objc_allocWithZone(AAMisconfiguredAgePromptViewModel);
  v41 = String._bridgeToObjectiveC()();

  v42 = String._bridgeToObjectiveC()();

  v43 = String._bridgeToObjectiveC()();

  v44 = String._bridgeToObjectiveC()();

  v45 = String._bridgeToObjectiveC()();

  v46 = [v40 initWithTitle:v41 message:v42 primaryButtonText:v43 secondaryButtonText:v44 cancelButtonText:v45 bundleID:v38 altDSID:v39];
  *(v0 + 72) = v46;

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Displaying misconfigured age prompt", v49, 2u);
  }

  v50 = *(v0 + 24);

  v51 = swift_task_alloc();
  *(v0 + 80) = v51;
  v51[2] = v58;
  v51[3] = v46;
  v51[4] = v50;
  v52 = *(&async function pointer to withCheckedContinuation<A>(isolation:function:_:) + 1);
  v53 = swift_task_alloc();
  *(v0 + 88) = v53;
  type metadata accessor for MisconfiguredAgePromptResponse(0);
  *v53 = v0;
  v53[1] = sub_1002428E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000038, 0x80000001003314C0, sub_100242AC4, v51, v54);
}

uint64_t sub_1002428E4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_1002429FC, 0, 0);
}

uint64_t sub_1002429FC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = *(v0 + 96);
  v4 = *(v0 + 8);

  return v4(v3);
}

unint64_t sub_100242A70()
{
  result = qword_1003E36F0;
  if (!qword_1003E36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E36F0);
  }

  return result;
}

uint64_t sub_100242AD0()
{
  v1 = sub_100005814(&qword_1003E36F8, qword_100346B68);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_100242BA0(uint64_t a1)
{
  v3 = *(*(sub_100005814(&qword_1003E36F8, qword_100346B68) - 8) + 80);
  v4 = *(v1 + 16);

  sub_100241608(a1, v4);
}

uint64_t sub_100242C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100242C38()
{
  v1[7] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100242D04, 0, 0);
}

uint64_t sub_100242D04()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[7] + OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v4)
  {

    sub_10000839C(v0 + 2);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_100242F24;
    v6 = v0[7];

    return sub_10024303C();
  }

  else
  {
    sub_10000839C(v0 + 2);
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAB60);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No primary Apple Account account found, skipping cleanup.", v11, 2u);
    }

    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100242F24()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10024303C()
{
  v1[12] = v0;
  v2 = sub_100005814(&qword_1003E3838, &qword_100346BD8);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100243108, 0, 0);
}

uint64_t sub_100243108()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v0[16] = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v6 = *(v2 + 16);
  v0[17] = v6;
  v0[18] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3 + v5, v4);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v0[19] = v7;
  v0[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  v8 = *sub_1000080F8(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_10024321C;

  return sub_1002445DC();
}

uint64_t sub_10024321C(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10024331C, 0, 0);
}

uint64_t sub_10024331C()
{
  v1 = v0[22];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAB60);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "ProtoAccountCleanupController - Found a protoaccount. Removing it.", v5, 2u);
    }

    v6 = swift_task_alloc();
    v0[23] = v6;
    *v6 = v0;
    v6[1] = sub_100243690;
    v7 = v0[12];

    return sub_100243CA8(v1);
  }

  else
  {
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB60);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "ProtoAccountCleanupController - No proto account found. Checking for followups", v12, 2u);
    }

    v14 = v0[19];
    v13 = v0[20];
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[15];
    v18 = v0[16];
    v20 = v0[12];
    v19 = v0[13];

    v16(v17, v20 + v18, v19);
    Dependency.wrappedValue.getter();
    v14(v17, v19);
    sub_1000080F8(v0 + 7, v0[10]);
    v21 = type metadata accessor for ProtoAccountManager();
    v22 = swift_task_alloc();
    v0[25] = v22;
    *v22 = v0;
    v22[1] = sub_100243810;

    return (sub_100245AE4)(v21, &off_1003B0B70);
  }
}

uint64_t sub_100243690()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1002439FC;
  }

  else
  {
    v3 = sub_1002437A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002437A4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100243810()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100243990;
  }

  else
  {
    v3 = sub_100243924;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100243924()
{
  sub_10000839C(v0 + 7);
  v1 = v0[15];

  v2 = v0[1];

  return v2();
}

uint64_t sub_100243990()
{
  sub_10000839C(v0 + 7);
  v1 = v0[26];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002439FC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100243A68()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v4 = sub_100005814(&qword_1003E3838, &qword_100346BD8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProtoAccountCleanupActivity()
{
  result = qword_1003E3738;
  if (!qword_1003E3738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100243BB0()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003E3748, &qword_1003DF6B8, &qword_100346BB0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100243CA8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_100005814(&qword_1003E3838, &qword_100346BD8);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100243D74, 0, 0);
}

uint64_t sub_100243D74()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
  v0[17] = OBJC_IVAR____TtC13appleaccountd27ProtoAccountCleanupActivity__protoAccountManager;
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
  v9[1] = sub_100243E90;
  v10 = v0[12];

  return sub_100245254(v10);
}

uint64_t sub_100243E90()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_100244010;
  }

  else
  {
    v3 = sub_100243FA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100243FA4()
{
  sub_10000839C(v0 + 2);
  v1 = v0[16];

  v2 = v0[1];

  return v2();
}

uint64_t sub_100244010()
{
  sub_10000839C(v0 + 2);
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB60);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProtoAccountCleanupController - Proto account removal failed: %@, trying again.", v6, 0xCu);
    sub_100083380(v7);
  }

  v10 = v0[20];
  v9 = v0[21];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[16];
  v14 = v0[17];
  v16 = v0[13];
  v15 = v0[14];

  v12(v13, v16 + v14, v15);
  Dependency.wrappedValue.getter();
  v10(v13, v15);
  v17 = *sub_1000080F8(v0 + 7, v0[10]);
  v18 = swift_task_alloc();
  v0[24] = v18;
  *v18 = v0;
  v18[1] = sub_10024422C;
  v19 = v0[12];

  return sub_100245254(v19);
}

uint64_t sub_10024422C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1002443B4;
  }

  else
  {
    v3 = sub_100244340;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100244340()
{
  v1 = v0[23];

  sub_10000839C(v0 + 7);
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002443B4()
{
  v1 = v0[23];
  v2 = v0[16];

  sub_10000839C(v0 + 7);

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

uint64_t sub_10024442C(uint64_t a1, char a2, void *a3)
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

uint64_t sub_1002444F8(uint64_t a1, uint64_t a2, void *a3)
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
    v9 = 0;
    if (a2)
    {
      sub_10015C7C0();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1002445DC()
{
  v1[24] = v0;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v4 = *(v3 + 64) + 15;
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002446A8, 0, 0);
}

uint64_t sub_1002446A8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 protoAccountType];

  v3 = [v2 identifier];
  if (v3)
  {
    v5 = v0[26];
    v4 = v0[27];
    v7 = v0[24];
    v6 = v0[25];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    (*(v5 + 16))(v4, v7 + OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__accountStore, v6);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v4, v6);
    v11 = sub_1000080F8(v0 + 18, v0[21]);
    sub_100005814(&qword_1003E3908, &qword_100346C60);
    v12 = swift_allocObject();
    v0[28] = v12;
    *(v12 + 16) = xmmword_10033EB30;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    v13 = *(*v11 + 16);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[29] = isa;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_100244A10;
    v15 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003E3910, qword_100346C68);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1002444F8;
    v0[13] = &unk_1003B0BE0;
    v0[14] = v15;
    [v13 accountsWithAccountTypeIdentifiers:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_1003D7F80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAB60);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed fetch proto account type", v19, 2u);
    }

    v20 = v0[27];

    v21 = v0[1];

    return v21(0);
  }
}

uint64_t sub_100244A10()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_100244C14;
  }

  else
  {
    v3 = sub_100244B20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100244B20()
{
  v1 = v0[28];
  v2 = v0[29];

  v3 = v0[23];

  v4 = v0 + 18;
  if (!v3)
  {
    sub_10000839C(v4);
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  sub_10000839C(v4);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;

LABEL_12:
  v8 = v0[27];

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_100244C14()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  swift_willThrow();

  sub_10000839C(v0 + 18);
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v4 = v0[30];
  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB60);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[30];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch proto account: %@", v10, 0xCu);
    sub_100083380(v11);
  }

  else
  {
  }

  v13 = v0[27];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_100244DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-1] - v7;
  v9 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21[-1] - v12;
  (*(v10 + 16))(&v21[-1] - v12, a2 + OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__followUpController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v14 = v22;
  v15 = v23;
  sub_1000080F8(v21, v22);
  v16 = AAFollowUpIdentifierChildOrTeenProtoConnect;
  (*(v5 + 16))(v8, a1, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  (*(v15 + 32))(v16, sub_100245C78, v18, v14, v15);

  return sub_10000839C(v21);
}

uint64_t sub_10024503C(char a1, uint64_t a2)
{
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAB60);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cleared follow up for child connect with success: %{BOOL}d", v7, 8u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Encountered error while clearing follow up: %@", v10, 0xCu);
      sub_100083380(v11);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100245254(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100245320, 0, 0);
}

uint64_t sub_100245320()
{
  v1 = v0;
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[23];
  (*(v1[26] + 16))(v1[27], v1[24] + OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__accountStore, v1[25]);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  v6 = *(*sub_1000080F8(v1 + 18, v1[21]) + 16);
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1002454B8;
  v7 = swift_continuation_init();
  v0[17] = sub_100005814(&unk_1003DEE00, qword_100343450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10024442C;
  v0[13] = &unk_1003B0BB8;
  v0[14] = v7;
  [v6 removeAccount:v5 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002454B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_100245704;
  }

  else
  {
    v3 = sub_1002455C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002455C8()
{
  v1 = *(v0 + 232);
  sub_10000839C((v0 + 144));
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Removed proto account with success: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 216);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100245704()
{
  v1 = v0[28];
  swift_willThrow();
  sub_10000839C(v0 + 18);
  if (qword_1003D7F80 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAB60);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to remove proto account: %@", v7, 0xCu);
    sub_100083380(v8);
  }

  v10 = v0[27];
  v11 = v0[28];

  swift_willThrow();

  v12 = v0[1];
  v13 = v0[28];

  return v12();
}

uint64_t sub_1002458A4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19ProtoAccountManager__followUpController;
  v4 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProtoAccountManager()
{
  result = qword_1003E3878;
  if (!qword_1003E3878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002459EC()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100245B08()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100241EC8;
  v3 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000022, 0x8000000100331600, sub_100245BDC, v3, &type metadata for () + 8);
}

uint64_t sub_100245BE4()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100245C78(char a1, uint64_t a2)
{
  v4 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);

  return sub_10024503C(a1, a2);
}

id sub_100245D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v10 = a1;
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v7 = a1;
  v8 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() analyticsEventWithName:a1 altDSID:v8 flowID:v9];

  return v11;
}

void sub_100245E08(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100245EF4();
    v4 = NSString.init(stringLiteral:)();
    [v2 setObject:0 forKeyedSubscript:?];
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_100245EF4();
    v4 = NSString.init(stringLiteral:)();
    [v2 setObject:v3 forKeyedSubscript:?];
  }
}

unint64_t sub_100245EF4()
{
  result = qword_1003D9250;
  if (!qword_1003D9250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D9250);
  }

  return result;
}

id sub_100245F40()
{
  v1 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  (*(v2 + 16))(&v11 - v4, v0 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  v6 = *(*sub_1000080F8(v13, v13[3]) + 24);
  v12 = 0;
  v7 = [v6 isManateeAvailable:&v12];
  if (v7)
  {
    v8 = v12;
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10000839C(v13);
  return v7;
}

void sub_1002460D8(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  v81 = *(v2 - 8);
  v82 = v2;
  v3 = *(v81 + 64);
  __chkstk_darwin(v2);
  v80 = &v72 - v4;
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v86 = *(v5 - 8);
  v6 = *(v86 + 64);
  __chkstk_darwin(v5);
  v85 = &v72 - v7;
  v8 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v72 - v11;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v84 = sub_100008D04(v13, qword_1003FAAB8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Generating common fields for analytics...", v16, 2u);
  }

  v17 = sub_10030980C(_swiftEmptyArrayStorage);
  v18 = v9[2];
  v74 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController;
  v75 = v18;
  v18(v12, a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController, v8);
  Dependency.wrappedValue.getter();
  v73 = v9[1];
  v73(v12, v8);
  v19 = *(*sub_1000080F8(v88, v89) + 16);
  v87 = 0;
  [v19 walrusStatus:&v87];
  v76 = v9 + 1;
  if (v87)
  {
    swift_willThrow();
  }

  sub_10000839C(v88);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v17;
  sub_1002CFB8C(isa, 0xD000000000000014, 0x8000000100331680, isUniquelyReferenced_nonNull_native);
  v22 = v88[0];
  v23 = v85;
  v24 = v86;
  v25 = *(v86 + 16);
  v78 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__accountStore;
  v79 = v25;
  v25(v85, a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__accountStore, v5);
  Dependency.wrappedValue.getter();
  v26 = *(v24 + 8);
  v83 = v5;
  v86 = v24 + 8;
  v77 = v26;
  v26(v23, v5);
  v27 = [*(*sub_1000080F8(v88 v89) + 16)];
  if (v27)
  {
    v28 = v27;
    [v27 aa_isSuspended];
  }

  sub_10000839C(v88);
  v29 = Bool._bridgeToObjectiveC()().super.super.isa;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v22;
  sub_1002CFB8C(v29, 0xD000000000000013, 0x80000001003316A0, v30);
  v31 = v88[0];
  sub_100245F40();
  v32 = Bool._bridgeToObjectiveC()().super.super.isa;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v31;
  sub_1002CFB8C(v32, 0xD000000000000012, 0x80000001003316C0, v33);
  v34 = v88[0];
  v75(v12, a1 + v74, v8);
  Dependency.wrappedValue.getter();
  v73(v12, v8);
  v35 = [objc_allocWithZone(ACAccountStore) init];
  v36 = [v35 aa_primaryAppleAccount];

  if (v36)
  {
    v37 = [v36 aa_personID];

    v38 = v83;
    if (v37)
    {
      [objc_opt_self() isICDPEnabledForDSID:v37];
    }
  }

  else
  {
    v38 = v83;
  }

  sub_10000839C(v88);
  v39 = Bool._bridgeToObjectiveC()().super.super.isa;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v34;
  sub_1002CFB8C(v39, 0x616E455044437369, 0xEC00000064656C62, v40);
  v41 = v88[0];
  v42 = v80;
  v43 = v81;
  v44 = v82;
  (*(v81 + 16))(v80, a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__deviceState, v82);
  Dependency.wrappedValue.getter();
  (*(v43 + 8))(v42, v44);
  v45 = [objc_allocWithZone(AKDevice) init];
  [v45 isProtectedWithPasscode];

  sub_10000839C(v88);
  v46 = Bool._bridgeToObjectiveC()().super.super.isa;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v41;
  sub_1002CFB8C(v46, 0xD000000000000011, 0x80000001003316E0, v47);
  v48 = v88[0];
  v49 = v85;
  v79(v85, a1 + v78, v38);
  Dependency.wrappedValue.getter();
  v77(v49, v38);
  v50 = *sub_1000080F8(v88, v89);
  sub_10015B8BC();
  sub_10000839C(v88);
  v51 = Int._bridgeToObjectiveC()().super.super.isa;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v48;
  sub_1002CFB8C(v51, 0x7974697275636573, 0xED00006C6576656CLL, v52);
  v53 = v88[0];
  v54 = (a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController);
  v55 = a1;
  v56 = *(a1 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController + 24);
  v57 = v54[4];
  sub_1000080F8(v54, v56);
  (*(v57 + 40))(v56, v57);
  v58 = Bool._bridgeToObjectiveC()().super.super.isa;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v53;
  sub_1002CFB8C(v58, 0xD000000000000019, 0x8000000100331700, v59);
  v60 = v88[0];
  v61 = v54[3];
  v62 = v54[4];
  sub_1000080F8(v54, v61);
  (*(v62 + 48))(v61, v62);
  v63 = Bool._bridgeToObjectiveC()().super.super.isa;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v60;
  sub_1002CFB8C(v63, 0xD000000000000014, 0x8000000100331720, v64);
  v65 = v88[0];
  v66 = Double._bridgeToObjectiveC()().super.super.isa;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v65;
  sub_1002CFB8C(v66, 0xD000000000000013, 0x8000000100331740, v67);
  v68 = *(v55 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__commonFields);
  *(v55 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__commonFields) = v88[0];

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "Generated common fields for analytics!", v71, 2u);
  }
}

uint64_t sub_100246A78()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__deviceState;
  v4 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController));
  v7 = *(v0 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__commonFields);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAnalyticsAccountModel()
{
  result = qword_1003E3970;
  if (!qword_1003E3970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100246C3C()
{
  sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100246DAC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_dispatchQueue);
  sub_100005814(&qword_1003E3B28, &qword_100346CF8);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_100246E28(void (*a1)(void), uint64_t a2)
{
  v5 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-1] - v8;
  (*(v6 + 16))(&v13[-1] - v8, *v2 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__cdpController, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v10 = *sub_1000080F8(v13, v13[3]);
  sub_10013B5F4(a1, a2);
  return sub_10000839C(v13);
}

void sub_100246FA8(uint64_t a1)
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

uint64_t sub_1002470C4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a2;
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_1002471CC;

  return v11(a1);
}

uint64_t sub_1002471CC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100247360;
  }

  else
  {
    v3 = sub_1002472E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002472E0()
{
  v1 = v0[2];
  if (v1)
  {
    [v1 updateTaskResultWithError:0];
    v1 = v0[2];
  }

  v2 = v0[4];
  sub_100246FA8(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100247360()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[6];
    v3 = _convertErrorToNSError(_:)();
    [v1 updateTaskResultWithError:v3];

    v4 = v0[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[6];
  v6 = v0[4];
  sub_100246FA8(v4);
  swift_willThrow();
  v7 = v0[1];
  v8 = v0[6];

  return v7();
}

id sub_1002474D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100247530()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianHealthCheckAnalyticsEvent()
{
  result = qword_1003E3D30;
  if (!qword_1003E3D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002475E8()
{
  sub_100248974();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1002476C4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D75736B63656863;
    if (!a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return 0x4B52436B63656863;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000016;
    if (a1 != 9)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x697373694D636B72;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD00000000000001DLL;
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

uint64_t sub_100247870(uint64_t a1, char a2)
{
  *(v2 + qword_1003E3CE0) = _swiftEmptyArrayStorage;
  *(v2 + qword_1003E3CF0) = 0;
  *(v2 + qword_1003E3CF8) = 0;
  *(v2 + qword_1003E3D00) = -1;
  v5 = (v2 + qword_1003E3D08);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2 + qword_1003E3D10;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v2 + qword_1003E3D18);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + qword_1003E3D20);
  *v8 = 0;
  v8[1] = 0;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  v9 = v2 + qword_1003E3CE8;
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  sub_100309C2C(_swiftEmptyArrayStorage);

  return AAFTimedAnalyticsEvent.init(eventName:initialData:)();
}

void sub_1002479A8(int a1, unsigned __int8 a2)
{
  v4 = v2;
  v7 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v90 - v10;
  if (AAUnderTest.getter())
  {
    return;
  }

  (*(v8 + 16))(v11, v4 + qword_1003E3D28, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  sub_1000080F8(v101, v101[3]);
  type metadata accessor for DaemonAnalyticsAccountModel();
  v12 = sub_100246DAC();
  sub_1002D245C(v12);
  v14 = v13;

  v102 = v14;
  sub_10000839C(v101);
  v15 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101[0] = v102;
  sub_1002CF474(v15, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v102 = v101[0];
  v17 = *(v4 + qword_1003E3CF0);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v101[0] = v102;
  sub_1002CF474(isa, 0x6961706552646964, 0xE900000000000072, v19);
  v102 = v101[0];
  v20 = *(v4 + qword_1003E3CF8);
  v21 = Bool._bridgeToObjectiveC()().super.super.isa;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v101[0] = v102;
  sub_1002CF474(v21, 0xD000000000000013, 0x8000000100331880, v22);
  v102 = v101[0];
  v23 = *(v4 + qword_1003E3D00);
  v24 = Int._bridgeToObjectiveC()().super.super.isa;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v101[0] = v102;
  sub_1002CF474(v24, 0xD000000000000018, 0x80000001003318A0, v25);
  v102 = v101[0];
  sub_1002476C4(a2);
  v26 = String._bridgeToObjectiveC()();

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v101[0] = v102;
  sub_1002CF474(v26, 0x6E6F73616572, 0xE600000000000000, v27);
  v28 = 0;
  v102 = v101[0];
  if ((*(v4 + qword_1003E3CE8 + 8) & 1) == 0)
  {
    v29 = *(v4 + qword_1003E3CE8);
    v28 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(v28, 0xD000000000000012, 0x800000010032E7D0);
  if (*(v4 + qword_1003E3D08 + 8))
  {
    v30 = *(v4 + qword_1003E3D08);
    v31 = *(v4 + qword_1003E3D08 + 8);

    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  sub_1001BE0FC(v32, 0x646C6975426B7263, 0xEF6E6F6973726556);
  if (*(v4 + qword_1003E3D10 + 8))
  {
    v33 = 0;
  }

  else
  {
    v34 = *(v4 + qword_1003E3D10);
    v33 = UInt._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(v33, 0x6F43726961706572, 0xEB00000000746E75);
  v35 = qword_1003E3CE0;
  swift_beginAccess();
  v36 = *(v4 + v35);
  if (v36 >> 62)
  {
    if ((v36 & 0x8000000000000000) != 0)
    {
      v84 = *(v4 + v35);
    }

    v85 = _CocoaArrayWrapper.endIndex.getter();
    v36 = *(v4 + v35);
    if (v85 < 2)
    {
      goto LABEL_54;
    }
  }

  else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_54;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
    goto LABEL_78;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_80;
  }

  v37 = *(v36 + 40);
  while (1)
  {
    v98 = v37;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v38 = v37;
    v39 = swift_dynamicCast();
    HIDWORD(v90) = a1;
    if (v39)
    {
      v40 = v100;
      v41 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v41)
      {
        v42 = sub_10030B6CC(v41);

        if (v42)
        {
          swift_getErrorValue();
          sub_1002DEA80(v91);

          goto LABEL_23;
        }
      }
    }

    v98 = v38;
    sub_1000CB64C();
    v43 = v38;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v44 = v43;
    }

LABEL_23:
    v3 = "init(eventName:initialData:)";
    swift_getErrorValue();
    sub_10025648C(v96);
    v45 = _convertErrorToNSError(_:)();

    [v45 code];
    v46 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v102;
    sub_1002CF474(v46, 0xD000000000000014, 0x8000000100331950, v47);
    v102 = v100;
    swift_endAccess();
    v48 = [v45 domain];
    if (!v48)
    {
      goto LABEL_88;
    }

    v49 = v48;
    swift_beginAccess();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v102;
    sub_1002CF474(v49, 0xD000000000000016, 0x8000000100331970, v50);
    v102 = v100;
    swift_endAccess();

    v36 = *(v4 + v35);
    a1 = HIDWORD(v90);
    if (v36 >> 62)
    {
LABEL_80:
      v86 = _CocoaArrayWrapper.endIndex.getter();
      v36 = *(v4 + v35);
      if (v86 < 3)
      {
        goto LABEL_54;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
      goto LABEL_54;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {

      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v51 = v87;
    }

    else
    {
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_84;
      }

      v51 = *(v36 + 48);
    }

    v98 = v51;
    v52 = v51;
    if (swift_dynamicCast())
    {
      v53 = v100;
      v54 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v54)
      {
        v55 = sub_10030B6CC(v54);

        if (v55)
        {
          swift_getErrorValue();
          sub_1002DEA80(v92);

          goto LABEL_37;
        }
      }
    }

    v98 = v52;
    sub_1000CB64C();
    v56 = v52;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v57 = v56;
    }

LABEL_37:
    swift_getErrorValue();
    sub_10025648C(v95);
    v58 = _convertErrorToNSError(_:)();

    [v58 code];
    v59 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v102;
    sub_1002CF474(v59, 0xD000000000000014, 0x8000000100331990, v60);
    v102 = v100;
    swift_endAccess();
    v61 = [v58 domain];
    if (!v61)
    {
      goto LABEL_89;
    }

    v62 = v61;
    swift_beginAccess();
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v102;
    v3 = 0xD000000000000014;
    sub_1002CF474(v62, 0xD000000000000016, 0x80000001003319B0, v63);
    v102 = v100;
    swift_endAccess();

    v36 = *(v4 + v35);
    a1 = HIDWORD(v90);
    if (!(v36 >> 62))
    {
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_54;
      }

      goto LABEL_40;
    }

LABEL_84:
    v88 = _CocoaArrayWrapper.endIndex.getter();
    v36 = *(v4 + v35);
    if (v88 < 4)
    {
      goto LABEL_54;
    }

LABEL_40:
    if ((v36 & 0xC000000000000001) == 0)
    {
      break;
    }

    v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v64 = v89;
LABEL_43:
    v98 = v64;
    v65 = v64;
    if (!swift_dynamicCast())
    {
      goto LABEL_49;
    }

    v66 = v100;
    v67 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
    if (!v67)
    {

      goto LABEL_49;
    }

    v68 = sub_10030B6CC(v67);

    if (!v68)
    {

      a1 = HIDWORD(v90);
LABEL_49:
      v98 = v65;
      sub_1000CB64C();
      v69 = v65;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v70 = v69;
      }

      goto LABEL_52;
    }

    swift_getErrorValue();
    sub_1002DEA80(v93);

    a1 = HIDWORD(v90);
LABEL_52:
    swift_getErrorValue();
    sub_10025648C(v94);
    v71 = _convertErrorToNSError(_:)();

    [v71 code];
    v72 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v102;
    sub_1002CF474(v72, 0xD000000000000014, 0x80000001003319D0, v73);
    v102 = v100;
    swift_endAccess();
    v74 = [v71 domain];
    if (!v74)
    {
      goto LABEL_90;
    }

    v75 = v74;
    swift_beginAccess();
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v102;
    sub_1002CF474(v75, (v3 + 2), 0x80000001003319F0, v76);
    v102 = v100;
    swift_endAccess();

    v36 = *(v4 + v35);
LABEL_54:
    if (v36 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_73:
        v83 = 0;
        goto LABEL_74;
      }
    }

    else if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {

      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_59:
      v98 = v77;
      sub_1000EBAD0();
      type metadata accessor for CKError(0);
      v78 = v77;
      if (swift_dynamicCast())
      {
        v79 = v100;
        v80 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
        if (v80)
        {
          v81 = sub_10030B6CC(v80);

          if (v81)
          {
            swift_getErrorValue();
            sub_1002DEA80(v97);

            goto LABEL_65;
          }
        }
      }

      v98 = v78;
      sub_1000CB64C();
      v79 = v78;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
LABEL_65:
      }

      else
      {
        swift_allocError();
        *v82 = v79;
      }

      swift_getErrorValue();
      sub_10025648C(v99);
      v83 = _convertErrorToNSError(_:)();

LABEL_74:
      swift_beginAccess();
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      return;
    }

    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v77 = *(v36 + 32);
      goto LABEL_59;
    }

    __break(1u);
LABEL_78:

    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v64 = *(v36 + 56);
    goto LABEL_43;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t sub_1002487B8()
{
  v1 = *(v0 + qword_1003E3CE0);

  v2 = *(v0 + qword_1003E3D08 + 8);

  v3 = *(v0 + qword_1003E3D18 + 8);

  v4 = *(v0 + qword_1003E3D20 + 8);

  v5 = qword_1003E3D28;
  v6 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id sub_100248878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianHealthCheckAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002488B0(uint64_t a1)
{
  v2 = *(a1 + qword_1003E3CE0);

  v3 = *(a1 + qword_1003E3D08 + 8);

  v4 = *(a1 + qword_1003E3D18 + 8);

  v5 = *(a1 + qword_1003E3D20 + 8);

  v6 = qword_1003E3D28;
  v7 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

void sub_100248974()
{
  if (!qword_1003DB280)
  {
    sub_100008CBC(&unk_1003DA880, &unk_10033F5F0);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DB280);
    }
  }
}

uint64_t type metadata accessor for CustodianInvitationActionAnalyticsEvent()
{
  result = qword_1003E3DA0;
  if (!qword_1003E3DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100248AF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656461;
  v3 = 0x7267707532617368;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x684368746C616568;
    }

    else
    {
      v5 = 0x7267694D74736F70;
    }

    if (v4 == 2)
    {
      v6 = 0xEB000000006B6365;
    }

    else
    {
      v6 = 0xED00006E6F697461;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6961706552706463;
    }

    else
    {
      v5 = 0x7267707532617368;
    }

    if (v4)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xEB00000000656461;
    }
  }

  v7 = 0x684368746C616568;
  v8 = 0xEB000000006B6365;
  if (a2 != 2)
  {
    v7 = 0x7267694D74736F70;
    v8 = 0xED00006E6F697461;
  }

  if (a2)
  {
    v3 = 0x6961706552706463;
    v2 = 0xE900000000000072;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_100248C6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x614D747065636361;
    }

    else
    {
      v3 = 0x7541747065636361;
    }

    if (v2)
    {
      v4 = 0xEC0000006C61756ELL;
    }

    else
    {
      v4 = 0xEA00000000006F74;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000010032C3C0;
    v3 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0x800000010032C3E0;
    }

    else
    {
      v4 = 0x800000010032C400;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x614D747065636361;
    }

    else
    {
      v9 = 0x7541747065636361;
    }

    if (a2)
    {
      v8 = 0xEC0000006C61756ELL;
    }

    else
    {
      v8 = 0xEA00000000006F74;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x800000010032C3E0;
    v6 = 0xD000000000000013;
    if (a2 != 3)
    {
      v6 = 0xD000000000000012;
      v5 = 0x800000010032C400;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x800000010032C3C0;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_100248DF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006F74;
  v3 = 0xD000000000000010;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x800000010032C3C0;
    v14 = 0xD000000000000013;
    if (a1 == 2)
    {
      v14 = 0xD000000000000011;
    }

    else
    {
      v13 = 0x800000010032C3E0;
    }

    v15 = 0x614D747065636361;
    v16 = 0xEC0000006C61756ELL;
    if (!a1)
    {
      v15 = 0x7541747065636361;
      v16 = 0xEA00000000006F74;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x45676E69646E6570;
    v6 = 0xEC000000726F7272;
    v7 = 0x800000010032C440;
    if (a1 == 7)
    {
      v8 = 0xD000000000000011;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v7 = 0x800000010032C460;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x800000010032C400;
    v10 = 0xD000000000000012;
    if (a1 != 4)
    {
      v10 = 0xD000000000000010;
      v9 = 0x800000010032C420;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000010032C400;
        v3 = 0xD000000000000012;
        goto LABEL_47;
      }

      v18 = "pendingNonFamily";
    }

    else
    {
      if (a2 == 6)
      {
        v3 = 0x45676E69646E6570;
        v2 = 0xEC000000726F7272;
        goto LABEL_47;
      }

      if (a2 == 7)
      {
        v17 = "pendingIneligible";
LABEL_38:
        v2 = (v17 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000011;
        goto LABEL_47;
      }

      v18 = "pendingNoManatee";
    }

    v2 = (v18 - 32) | 0x8000000000000000;
    goto LABEL_47;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v2 = 0x800000010032C3E0;
      v3 = 0xD000000000000013;
      goto LABEL_47;
    }

    v17 = "declineIneligible";
    goto LABEL_38;
  }

  if (a2)
  {
    v3 = 0x614D747065636361;
    v2 = 0xEC0000006C61756ELL;
  }

  else
  {
    v3 = 0x7541747065636361;
  }

LABEL_47:
  if (v11 == v3 && v12 == v2)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

uint64_t sub_100249078(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C61;
  v3 = 0xEA00000000006E69;
  v4 = a1;
  v5 = 0x6D6F43656B617073;
  v6 = 0xED00006574656C70;
  if (a1 != 4)
  {
    v5 = 0x727245656B617073;
    v6 = 0xEA0000000000726FLL;
  }

  if (a1 == 3)
  {
    v7 = 0x6E6946656B617073;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = 0xEA00000000006C61;
  }

  v8 = 0x800000010032C1A0;
  v9 = 0xD000000000000015;
  if (a1 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x800000010032C1C0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676542656B617073;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      if (v10 != 0x6E6946656B617073)
      {
        goto LABEL_37;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00006574656C70;
      if (v10 != 0x6D6F43656B617073)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xEA0000000000726FLL;
      if (v10 != 0x727245656B617073)
      {
LABEL_37:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_38;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x800000010032C1A0;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0x800000010032C1C0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v2 = 0xEA00000000006E69;
    if (v10 != 0x676542656B617073)
    {
      goto LABEL_37;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_10024927C()
{
  String.hash(into:)();
}

unint64_t sub_1002493F0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7541747065636361;
    v6 = 0xD000000000000013;
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x614D747065636361;
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
    v1 = 0x45676E69646E6570;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
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

Swift::Int sub_10024953C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10024927C();
  return Hasher._finalize()();
}

Swift::Int sub_10024958C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10024927C();
  return Hasher._finalize()();
}

unint64_t sub_1002495D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100249724(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100249600@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002493F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10024966C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianInvitationActionAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002496D0()
{
  result = qword_1003E3DF0;
  if (!qword_1003E3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E3DF0);
  }

  return result;
}

unint64_t sub_100249724(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A39E0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for CustodianMigrationAnalyticsEvent()
{
  result = qword_1003E3DF8;
  if (!qword_1003E3DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024982C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianMigrationAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CustodianOwnerRecoverabilityHealthCheckAnalyticsEvent()
{
  result = qword_1003E3E58;
  if (!qword_1003E3E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002498BC()
{
  sub_100248974();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void *sub_100249960(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_10024ABAC(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_10024ABAC(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100249B74(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = v43 - v10;
  result = AAUnderTest.getter();
  if ((result & 1) == 0)
  {
    v13 = swift_allocObject();
    v14 = v8[2];
    v51 = v3;
    v45 = qword_1003E3E50;
    v46 = v14;
    v47 = v8 + 2;
    v14(v11, &v3[qword_1003E3E50], v7);
    Dependency.wrappedValue.getter();
    v44 = v8[1];
    v44(v11, v7);
    sub_1000080F8(v54, v55);
    v43[1] = a2;
    v48 = type metadata accessor for DaemonAnalyticsAccountModel();
    v15 = sub_100246DAC();
    sub_1002D245C(v15);
    v17 = v16;

    v49 = v13;
    *(v13 + 16) = v17;
    v18 = (v13 + 16);
    sub_10000839C(v54);
    v19 = String._bridgeToObjectiveC()();
    v20 = *(v13 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = v20;
    v52 = a3;
    *(v13 + 16) = 0x8000000000000000;
    sub_1002CF474(v19, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v54[0];
    *(v13 + 16) = v54[0];
    v50 = a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = v22;
    *(v13 + 16) = 0x8000000000000000;
    sub_1002CF474(isa, 0xD000000000000019, 0x8000000100331CC0, v24);
    v25 = v54[0];
    *(v13 + 16) = v54[0];
    v26 = Int._bridgeToObjectiveC()().super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = v25;
    *(v13 + 16) = 0x8000000000000000;
    v28 = v52;
    sub_1002CF474(v26, 0x6C6544746E756F63, 0xEA00000000006174, v27);
    *v18 = v54[0];
    if (v28)
    {
      v29 = v28;
      v30 = [v29 userInfo];
      v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v31 + 16))
      {
        v34 = sub_1003084DC(v32, v33);
        v36 = v35;

        if (v36)
        {
          sub_10000DB1C(*(v31 + 56) + 32 * v34, v54);

          sub_100005814(&qword_1003E3EA8, qword_1003470A0);
          if (swift_dynamicCast())
          {
            v28 = v52;
            if (*(v53 + 16))
            {
              v37 = sub_100249960(v53);

              sub_10024A4AC(v37, v18);
            }
          }

          else
          {

            v28 = v52;
          }

          goto LABEL_12;
        }

        v28 = v52;
      }

      else
      {
      }
    }

LABEL_12:
    v38 = v51;
    v46(v11, &v51[v45], v7);
    Dependency.wrappedValue.getter();
    v44(v11, v7);
    sub_1000080F8(v54, v55);
    v39 = swift_allocObject();
    v40 = v50;
    v39[2] = v49;
    v39[3] = v40;
    v39[4] = v38;
    v39[5] = v28;
    v41 = v28;

    v42 = v38;
    sub_100246E28(sub_10024A4A0, v39);

    sub_10000839C(v54);
  }

  return result;
}

void sub_10024A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1002CF474(isa, 0x766F636552736168, 0xEE0079654B797265, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v19;
  swift_endAccess();
  if (a5)
  {
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v10 = a5;
    if (swift_dynamicCast())
    {
      v11 = v19;
      v12 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v12)
      {
        v13 = sub_10030B6CC(v12);

        if (v13)
        {
          swift_getErrorValue();
          sub_1002DEA80(v17);

          goto LABEL_9;
        }
      }
    }

    sub_1000CB64C();
    v11 = v10;
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
      *v15 = v11;
      goto LABEL_11;
    }

LABEL_9:

LABEL_11:
    swift_getErrorValue();
    sub_10025648C(v18);
    v14 = _convertErrorToNSError(_:)();

    goto LABEL_12;
  }

  v14 = 0;
LABEL_12:
  swift_beginAccess();
  v16 = *(a2 + 16);

  dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
}

uint64_t sub_10024A2CC()
{
  v1 = *(v0 + qword_1003E3E48 + 8);

  v2 = qword_1003E3E50;
  v3 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

id sub_10024A354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianOwnerRecoverabilityHealthCheckAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024A38C(uint64_t a1)
{
  v2 = *(a1 + qword_1003E3E48 + 8);

  v3 = qword_1003E3E50;
  v4 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t sub_10024A420()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10024A458()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48);
}

void sub_10024A4AC(unint64_t a1, uint64_t *a2)
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v49 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v5 = *(a1 + 32);
    }

    v6 = v5;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v7 = v6;
    if (swift_dynamicCast())
    {
      v8 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v8)
      {
        v9 = sub_10030B6CC(v8);

        if (v9)
        {
          swift_getErrorValue();
          sub_1002DEA80(v50);

LABEL_14:
          swift_getErrorValue();
          sub_10025648C(v55);
          v12 = _convertErrorToNSError(_:)();

          [v12 code];
          isa = Int._bridgeToObjectiveC()().super.super.isa;
          v14 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = *a2;
          sub_1002CF474(isa, 0xD000000000000014, 0x8000000100331950, isUniquelyReferenced_nonNull_native);
          *a2 = v57;
          v16 = [v12 domain];
          if (!v16)
          {
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v17 = v16;
          v18 = *a2;
          v19 = swift_isUniquelyReferenced_nonNull_native();
          v58 = *a2;
          sub_1002CF474(v17, 0xD000000000000016, 0x8000000100331970, v19);
          *a2 = v58;
          if (v4)
          {
            v20 = _CocoaArrayWrapper.endIndex.getter();
            if (v20 < 2)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v20 < 2)
            {
LABEL_17:

              return;
            }
          }

          if (v49)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_23;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v21 = *(a1 + 40);
LABEL_23:
            v22 = v21;
            if (swift_dynamicCast())
            {
              v23 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
              if (v23)
              {
                v24 = sub_10030B6CC(v23);

                if (v24)
                {
                  swift_getErrorValue();
                  sub_1002DEA80(v51);

LABEL_31:
                  swift_getErrorValue();
                  sub_10025648C(v54);
                  v27 = _convertErrorToNSError(_:)();

                  [v27 code];
                  v28 = Int._bridgeToObjectiveC()().super.super.isa;
                  v29 = *a2;
                  v30 = swift_isUniquelyReferenced_nonNull_native();
                  v59 = *a2;
                  sub_1002CF474(v28, 0xD000000000000014, 0x8000000100331990, v30);
                  *a2 = v59;
                  v31 = [v27 domain];
                  if (!v31)
                  {
LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }

                  v32 = v31;
                  v33 = *a2;
                  v34 = swift_isUniquelyReferenced_nonNull_native();
                  v60 = *a2;
                  sub_1002CF474(v32, 0xD000000000000016, 0x80000001003319B0, v34);
                  *a2 = v60;
                  if (v20 == 2)
                  {

                    return;
                  }

                  if (v49)
                  {
                    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    goto LABEL_38;
                  }

                  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
                  {
                    v35 = *(a1 + 48);
LABEL_38:
                    v36 = v35;
                    if (swift_dynamicCast())
                    {
                      v37 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
                      if (v37)
                      {
                        v38 = sub_10030B6CC(v37);

                        if (v38)
                        {
                          swift_getErrorValue();
                          sub_1002DEA80(v52);

                          goto LABEL_46;
                        }
                      }
                    }

                    sub_1000CB64C();
                    v39 = v36;
                    if (_getErrorEmbeddedNSError<A>(_:)())
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v40 = v39;
                    }

LABEL_46:
                    swift_getErrorValue();
                    sub_10025648C(v53);
                    v41 = _convertErrorToNSError(_:)();

                    [v41 code];
                    v42 = Int._bridgeToObjectiveC()().super.super.isa;
                    v43 = *a2;
                    v44 = swift_isUniquelyReferenced_nonNull_native();
                    v61 = *a2;
                    sub_1002CF474(v42, 0xD000000000000014, 0x80000001003319D0, v44);
                    *a2 = v61;
                    v45 = [v41 domain];
                    if (v45)
                    {
                      v46 = v45;
                      v47 = *a2;
                      v48 = swift_isUniquelyReferenced_nonNull_native();
                      v62 = *a2;
                      sub_1002CF474(v46, 0xD000000000000016, 0x80000001003319F0, v48);

                      *a2 = v62;
                      return;
                    }

LABEL_57:
                    __break(1u);
                    return;
                  }

                  goto LABEL_54;
                }
              }
            }

            sub_1000CB64C();
            v25 = v22;
            if (_getErrorEmbeddedNSError<A>(_:)())
            {
            }

            else
            {
              swift_allocError();
              *v26 = v25;
            }

            goto LABEL_31;
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }
    }

    sub_1000CB64C();
    v10 = v7;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v11 = v10;
    }

    goto LABEL_14;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_3;
  }
}

uint64_t sub_10024ABAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t type metadata accessor for CustodianPreflightEvent()
{
  result = qword_1003E3EF0;
  if (!qword_1003E3EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024AC04()
{
  sub_100248974();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_10024ACD0(uint64_t a1, char a2)
{
  *(v2 + qword_1003E3EB0) = _swiftEmptyArrayStorage;
  *(v2 + qword_1003E3EC0) = 0;
  v5 = (v2 + qword_1003E3EC8);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2 + qword_1003E3ED0;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v2 + qword_1003E3ED8);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + qword_1003E3EE0);
  *v8 = 0;
  v8[1] = 0;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  v9 = v2 + qword_1003E3EB8;
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  sub_100309C2C(_swiftEmptyArrayStorage);

  return AAFTimedAnalyticsEvent.init(eventName:initialData:)();
}

void sub_10024ADEC(int a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v84 - v7;
  if (AAUnderTest.getter())
  {
    return;
  }

  v9 = 0xD000000000000014;
  (*(v5 + 16))(v8, v2 + qword_1003E3EE8, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  sub_1000080F8(v95, v95[3]);
  type metadata accessor for DaemonAnalyticsAccountModel();
  v10 = sub_100246DAC();
  sub_1002D245C(v10);
  v12 = v11;

  v96 = v12;
  sub_10000839C(v95);
  v13 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v96;
  sub_1002CF474(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v96 = v95[0];
  v15 = String._bridgeToObjectiveC()();

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v96;
  sub_1002CF474(v15, 0x6E6F73616572, 0xE600000000000000, v16);
  v96 = v95[0];
  if (*(v2 + qword_1003E3EB8 + 8))
  {
    isa = 0;
  }

  else
  {
    v18 = *(v2 + qword_1003E3EB8);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(isa, 0xD000000000000012, 0x800000010032E7D0);
  v19 = *(v2 + qword_1003E3EC0);
  v20 = Bool._bridgeToObjectiveC()().super.super.isa;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v96;
  sub_1002CF474(v20, 0x7564656863537369, 0xEB0000000064656CLL, v21);
  v96 = v95[0];
  v22 = Bool._bridgeToObjectiveC()().super.super.isa;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = v96;
  sub_1002CF474(v22, 0x6961706552646964, 0xE900000000000072, v23);
  v96 = v95[0];
  if (*(v2 + qword_1003E3EC8 + 8))
  {
    v24 = *(v2 + qword_1003E3EC8);
    v25 = *(v2 + qword_1003E3EC8 + 8);

    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  sub_1001BE0FC(v26, 0x646C6975426B7263, 0xEF6E6F6973726556);
  if (*(v2 + qword_1003E3ED0 + 8))
  {
    v27 = 0;
  }

  else
  {
    v28 = *(v2 + qword_1003E3ED0);
    v27 = UInt._bridgeToObjectiveC()().super.super.isa;
  }

  sub_1001BE0FC(v27, 0x6F43726961706572, 0xEB00000000746E75);
  v29 = qword_1003E3EB0;
  swift_beginAccess();
  v30 = *(v2 + v29);
  if (v30 >> 62)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      v78 = *(v2 + v29);
    }

    v79 = _CocoaArrayWrapper.endIndex.getter();
    v30 = *(v2 + v29);
    if (v79 < 2)
    {
      goto LABEL_55;
    }
  }

  else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_55;
  }

  if ((v30 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_81;
  }

  v31 = *(v30 + 40);
  while (1)
  {
    v92 = v31;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v32 = v31;
    v33 = swift_dynamicCast();
    HIDWORD(v84) = a1;
    if (v33)
    {
      v34 = v94;
      v35 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v35)
      {
        v36 = sub_10030B6CC(v35);

        if (v36)
        {
          swift_getErrorValue();
          sub_1002DEA80(v85);

          goto LABEL_24;
        }
      }
    }

    v92 = v32;
    sub_1000CB64C();
    v37 = v32;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v38 = v37;
    }

LABEL_24:
    v9 = "init(eventName:initialData:)";
    swift_getErrorValue();
    sub_10025648C(v90);
    v39 = _convertErrorToNSError(_:)();

    [v39 code];
    v40 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v96;
    sub_1002CF474(v40, 0xD000000000000014, 0x8000000100331950, v41);
    v96 = v94;
    swift_endAccess();
    v42 = [v39 domain];
    if (!v42)
    {
      goto LABEL_89;
    }

    v43 = v42;
    swift_beginAccess();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v96;
    sub_1002CF474(v43, 0xD000000000000016, 0x8000000100331970, v44);
    v96 = v94;
    swift_endAccess();

    v30 = *(v2 + v29);
    a1 = HIDWORD(v84);
    if (v30 >> 62)
    {
LABEL_81:
      v80 = _CocoaArrayWrapper.endIndex.getter();
      v30 = *(v2 + v29);
      if (v80 < 3)
      {
        goto LABEL_55;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
      goto LABEL_55;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {

      v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v45 = v81;
    }

    else
    {
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_85;
      }

      v45 = *(v30 + 48);
    }

    v92 = v45;
    v46 = v45;
    if (swift_dynamicCast())
    {
      v47 = v94;
      v48 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v48)
      {
        v49 = sub_10030B6CC(v48);

        if (v49)
        {
          swift_getErrorValue();
          sub_1002DEA80(v86);

          goto LABEL_38;
        }
      }
    }

    v92 = v46;
    sub_1000CB64C();
    v50 = v46;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v51 = v50;
    }

LABEL_38:
    swift_getErrorValue();
    sub_10025648C(v89);
    v52 = _convertErrorToNSError(_:)();

    [v52 code];
    v53 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v96;
    sub_1002CF474(v53, 0xD000000000000014, 0x8000000100331990, v54);
    v96 = v94;
    swift_endAccess();
    v55 = [v52 domain];
    if (!v55)
    {
      goto LABEL_90;
    }

    v56 = v55;
    swift_beginAccess();
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v96;
    v9 = 0xD000000000000014;
    sub_1002CF474(v56, 0xD000000000000016, 0x80000001003319B0, v57);
    v96 = v94;
    swift_endAccess();

    v30 = *(v2 + v29);
    a1 = HIDWORD(v84);
    if (!(v30 >> 62))
    {
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_55;
      }

      goto LABEL_41;
    }

LABEL_85:
    v82 = _CocoaArrayWrapper.endIndex.getter();
    v30 = *(v2 + v29);
    if (v82 < 4)
    {
      goto LABEL_55;
    }

LABEL_41:
    if ((v30 & 0xC000000000000001) == 0)
    {
      break;
    }

    v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v58 = v83;
LABEL_44:
    v92 = v58;
    v59 = v58;
    if (!swift_dynamicCast())
    {
      goto LABEL_50;
    }

    v60 = v94;
    v61 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
    if (!v61)
    {

      goto LABEL_50;
    }

    v62 = sub_10030B6CC(v61);

    if (!v62)
    {

      a1 = HIDWORD(v84);
LABEL_50:
      v92 = v59;
      sub_1000CB64C();
      v63 = v59;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v64 = v63;
      }

      goto LABEL_53;
    }

    swift_getErrorValue();
    sub_1002DEA80(v87);

    a1 = HIDWORD(v84);
LABEL_53:
    swift_getErrorValue();
    sub_10025648C(v88);
    v65 = _convertErrorToNSError(_:)();

    [v65 code];
    v66 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v96;
    sub_1002CF474(v66, 0xD000000000000014, 0x80000001003319D0, v67);
    v96 = v94;
    swift_endAccess();
    v68 = [v65 domain];
    if (!v68)
    {
      goto LABEL_91;
    }

    v69 = v68;
    swift_beginAccess();
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v96;
    sub_1002CF474(v69, (v9 + 2), 0x80000001003319F0, v70);
    v96 = v94;
    swift_endAccess();

    v30 = *(v2 + v29);
LABEL_55:
    if (v30 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_74:
        v77 = 0;
        goto LABEL_75;
      }
    }

    else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {

      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_60:
      v92 = v71;
      sub_1000EBAD0();
      type metadata accessor for CKError(0);
      v72 = v71;
      if (swift_dynamicCast())
      {
        v73 = v94;
        v74 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
        if (v74)
        {
          v75 = sub_10030B6CC(v74);

          if (v75)
          {
            swift_getErrorValue();
            sub_1002DEA80(v91);

            goto LABEL_66;
          }
        }
      }

      v92 = v72;
      sub_1000CB64C();
      v73 = v72;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
LABEL_66:
      }

      else
      {
        swift_allocError();
        *v76 = v73;
      }

      swift_getErrorValue();
      sub_10025648C(v93);
      v77 = _convertErrorToNSError(_:)();

LABEL_75:
      swift_beginAccess();
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      return;
    }

    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v71 = *(v30 + 32);
      goto LABEL_60;
    }

    __break(1u);
LABEL_79:

    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v58 = *(v30 + 56);
    goto LABEL_44;
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t sub_10024BCB8()
{
  v1 = *(v0 + qword_1003E3EB0);

  v2 = *(v0 + qword_1003E3EC8 + 8);

  v3 = *(v0 + qword_1003E3ED8 + 8);

  v4 = *(v0 + qword_1003E3EE0 + 8);

  v5 = qword_1003E3EE8;
  v6 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id sub_10024BD78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianPreflightEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024BDB0(uint64_t a1)
{
  v2 = *(a1 + qword_1003E3EB0);

  v3 = *(a1 + qword_1003E3EC8 + 8);

  v4 = *(a1 + qword_1003E3ED8 + 8);

  v5 = *(a1 + qword_1003E3EE0 + 8);

  v6 = qword_1003E3EE8;
  v7 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t type metadata accessor for CustodianshipHealthCheckAnalyticsEvent()
{
  result = qword_1003E3F60;
  if (!qword_1003E3F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024BF28()
{
  sub_100248974();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_10024BFE4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v79 - v8;
  if (AAUnderTest.getter())
  {
    return;
  }

  (*(v6 + 16))(v9, v3 + qword_1003E3F58, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  sub_1000080F8(v85, v85[3]);
  type metadata accessor for DaemonAnalyticsAccountModel();
  v10 = sub_100246DAC();
  sub_1002D245C(v10);
  v12 = v11;

  v86 = v12;
  sub_10000839C(v85);
  v13 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85[0] = v86;
  sub_1002CF474(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v86 = v85[0];
  v15 = String._bridgeToObjectiveC()();

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v85[0] = v86;
  sub_1002CF474(v15, 0x6E6F73616572, 0xE600000000000000, v16);
  v86 = v85[0];
  v17 = *(v3 + qword_1003E3F48);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v85[0] = v86;
  sub_1002CF474(isa, 0x6961706552736177, 0xEB00000000646572, v19);
  v86 = v85[0];
  v20 = qword_1003E3F40;
  swift_beginAccess();
  v21 = *(v3 + v20);
  if (v21 >> 62)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      v73 = *(v3 + v20);
    }

    v74 = _CocoaArrayWrapper.endIndex.getter();
    v21 = *(v3 + v20);
    if (v74 < 2)
    {
      goto LABEL_48;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_48;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_74;
  }

  v22 = *(v21 + 40);
  while (1)
  {
    v80 = v22;
    sub_1000EBAD0();
    type metadata accessor for CKError(0);
    v24 = v23;
    v25 = v22;
    v79[0] = v24;
    if (swift_dynamicCast())
    {
      v26 = v84;
      v27 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v27)
      {
        v28 = a1;
        v29 = sub_10030B6CC(v27);

        if (v29)
        {
          swift_getErrorValue();
          v2 = sub_1002DEA80(v79[2]);

          goto LABEL_16;
        }

        a1 = v28;
      }

      else
      {
      }
    }

    v28 = a1;
    v80 = v25;
    sub_1000CB64C();
    v30 = v25;
    v31 = _getErrorEmbeddedNSError<A>(_:)();
    if (v31)
    {
      v2 = v31;
    }

    else
    {
      v2 = swift_allocError();
      *v32 = v30;
    }

LABEL_16:
    swift_getErrorValue();
    sub_10025648C(v81);
    v33 = _convertErrorToNSError(_:)();

    [v33 code];
    v34 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v86;
    sub_1002CF474(v34, 0xD000000000000014, 0x8000000100331950, v35);
    v86 = v84;
    swift_endAccess();
    v36 = [v33 domain];
    if (!v36)
    {
      goto LABEL_82;
    }

    v37 = v36;
    swift_beginAccess();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v86;
    sub_1002CF474(v37, 0xD000000000000016, 0x8000000100331970, v38);
    v86 = v84;
    swift_endAccess();

    v21 = *(v3 + v20);
    a1 = v28;
    if (v21 >> 62)
    {
LABEL_74:
      v75 = _CocoaArrayWrapper.endIndex.getter();
      v21 = *(v3 + v20);
      if (v75 < 3)
      {
        goto LABEL_48;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
      goto LABEL_48;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {

      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v39 = v76;
    }

    else
    {
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_78;
      }

      v39 = *(v21 + 48);
    }

    v80 = v39;
    v40 = v39;
    if (swift_dynamicCast())
    {
      v41 = v84;
      v42 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v42)
      {
        v43 = a1;
        v44 = sub_10030B6CC(v42);

        if (v44)
        {
          swift_getErrorValue();
          sub_1002DEA80(v79[6]);

          goto LABEL_31;
        }

        a1 = v43;
      }

      else
      {
      }
    }

    v43 = a1;
    v80 = v40;
    sub_1000CB64C();
    v45 = v40;
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v46 = v45;
    }

LABEL_31:
    swift_getErrorValue();
    sub_10025648C(v79[18]);
    v47 = _convertErrorToNSError(_:)();

    [v47 code];
    v48 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v86;
    sub_1002CF474(v48, 0xD000000000000014, 0x8000000100331990, v49);
    v86 = v84;
    swift_endAccess();
    v50 = [v47 domain];
    if (!v50)
    {
      goto LABEL_83;
    }

    v51 = v50;
    swift_beginAccess();
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v86;
    v2 = 0xD000000000000014;
    sub_1002CF474(v51, 0xD000000000000016, 0x80000001003319B0, v52);
    v86 = v84;
    swift_endAccess();

    v21 = *(v3 + v20);
    a1 = v43;
    if (!(v21 >> 62))
    {
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

LABEL_78:
    v77 = _CocoaArrayWrapper.endIndex.getter();
    v21 = *(v3 + v20);
    if (v77 < 4)
    {
      goto LABEL_48;
    }

LABEL_34:
    if ((v21 & 0xC000000000000001) == 0)
    {
      break;
    }

    v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v53 = v78;
LABEL_37:
    v80 = v53;
    v54 = v53;
    if (!swift_dynamicCast())
    {
      goto LABEL_43;
    }

    v55 = v84;
    v56 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
    if (!v56)
    {

      goto LABEL_43;
    }

    v57 = sub_10030B6CC(v56);

    if (!v57)
    {

      v2 = 0xD000000000000014;
LABEL_43:
      v80 = v54;
      sub_1000CB64C();
      v58 = v54;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v59 = v58;
      }

      goto LABEL_46;
    }

    swift_getErrorValue();
    sub_1002DEA80(v79[10]);

    v2 = 0xD000000000000014;
LABEL_46:
    swift_getErrorValue();
    sub_10025648C(v79[14]);
    v60 = _convertErrorToNSError(_:)();

    [v60 code];
    v61 = Int._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v86;
    sub_1002CF474(v61, 0xD000000000000014, 0x80000001003319D0, v62);
    v86 = v84;
    swift_endAccess();
    v63 = [v60 domain];
    if (!v63)
    {
      goto LABEL_84;
    }

    v64 = v63;
    swift_beginAccess();
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v86;
    sub_1002CF474(v64, v2 + 2, 0x80000001003319F0, v65);
    swift_endAccess();

    v21 = *(v3 + v20);
LABEL_48:
    if (v21 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_67:
        v72 = 0;
        goto LABEL_68;
      }
    }

    else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_67;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {

      v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_53:
      v80 = v66;
      sub_1000EBAD0();
      type metadata accessor for CKError(0);
      v67 = v66;
      if (swift_dynamicCast())
      {
        v68 = v84;
        v69 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
        if (v69)
        {
          v70 = sub_10030B6CC(v69);

          if (v70)
          {
            swift_getErrorValue();
            sub_1002DEA80(v82);

            goto LABEL_59;
          }
        }
      }

      v80 = v67;
      sub_1000CB64C();
      v68 = v67;
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
LABEL_59:
      }

      else
      {
        swift_allocError();
        *v71 = v68;
      }

      swift_getErrorValue();
      sub_10025648C(v83);
      v72 = _convertErrorToNSError(_:)();

LABEL_68:
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

      return;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = *(v21 + 32);
      goto LABEL_53;
    }

    __break(1u);
LABEL_72:

    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v53 = *(v21 + 56);
    goto LABEL_37;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t sub_10024CD58()
{
  v1 = *(v0 + qword_1003E3F40);

  v2 = *(v0 + qword_1003E3F50 + 8);

  v3 = qword_1003E3F58;
  v4 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id sub_10024CDF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustodianshipHealthCheckAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024CE28(uint64_t a1)
{
  v2 = *(a1 + qword_1003E3F40);

  v3 = *(a1 + qword_1003E3F50 + 8);

  v4 = qword_1003E3F58;
  v5 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t type metadata accessor for InheritanceHealthCheckAnalyticsEvent()
{
  result = qword_1003E4010;
  if (!qword_1003E4010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024CF18()
{
  sub_100248974();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_10024CFF0()
{
  *(v0 + qword_1003E3FB0) = _swiftEmptyArrayStorage;
  *(v0 + qword_1003E3FB8) = 0;
  *(v0 + qword_1003E3FC0) = 0;
  *(v0 + qword_1003E3FC8) = 0;
  *(v0 + qword_1003E3FD0) = 0;
  *(v0 + qword_1003E3FD8) = 0;
  *(v0 + qword_1003E3FE0) = 0;
  *(v0 + qword_1003E3FE8) = 0;
  *(v0 + qword_1003E3FF0) = 0;
  *(v0 + qword_1003E3FF8) = 0;
  *(v0 + qword_1003E4000) = -1;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100309C2C(_swiftEmptyArrayStorage);

  return AAFTimedAnalyticsEvent.init(eventName:initialData:)();
}

void sub_10024D10C()
{
  v3 = v0;
  v4 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v82 - v7 + 16;
  if (AAUnderTest.getter())
  {
    return;
  }

  (*(v5 + 16))(v8, &v3[qword_1003E4008], v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  sub_1000080F8(v82, v82[3]);
  type metadata accessor for DaemonAnalyticsAccountModel();
  v9 = sub_100246DAC();
  sub_1002D245C(v9);
  v11 = v10;

  v83 = v11;
  sub_10000839C(v82);
  v12 = v3[qword_1003E3FF0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(isa, 0x6961706552646964, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
  v83 = v82[0];
  v15 = v3[qword_1003E3FF8];
  v16 = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v16, 0xD000000000000013, 0x8000000100331880, v17);
  v83 = v82[0];
  v18 = *&v3[qword_1003E4000];
  v19 = Int._bridgeToObjectiveC()().super.super.isa;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v19, 0xD000000000000018, 0x80000001003318A0, v20);
  v83 = v82[0];
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v21, 0x6E6F6973726576, 0xE700000000000000, v22);
  v83 = v82[0];
  v23 = String._bridgeToObjectiveC()();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v23, 0x6E6F6973726576, 0xE700000000000000, v24);
  v83 = v82[0];
  v25 = v3[qword_1003E3FC0];
  v26 = Bool._bridgeToObjectiveC()().super.super.isa;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v26, 0xD000000000000011, 0x8000000100331F50, v27);
  v83 = v82[0];
  v28 = v3[qword_1003E3FC8];
  v29 = Bool._bridgeToObjectiveC()().super.super.isa;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v29, 0xD000000000000012, 0x8000000100331F70, v30);
  v83 = v82[0];
  v31 = v3[qword_1003E3FD0];
  v32 = Bool._bridgeToObjectiveC()().super.super.isa;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v32, 0xD000000000000013, 0x8000000100331F90, v33);
  v83 = v82[0];
  v34 = *&v3[qword_1003E3FD8];
  v35 = Int._bridgeToObjectiveC()().super.super.isa;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v35, 0x6C6544746E756F63, 0xEA00000000006174, v36);
  v83 = v82[0];
  v37 = v3[qword_1003E3FE0];
  v38 = Bool._bridgeToObjectiveC()().super.super.isa;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v38, 0xD000000000000012, 0x8000000100331FB0, v39);
  v83 = v82[0];
  v40 = v3[qword_1003E3FE8];
  v41 = Bool._bridgeToObjectiveC()().super.super.isa;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v83;
  sub_1002CF474(v41, 0xD000000000000014, 0x8000000100331FD0, v42);
  v83 = v82[0];
  v43 = qword_1003E3FB0;
  swift_beginAccess();
  v44 = *&v3[v43];
  if (v44 >> 62)
  {
    if (v44 < 0)
    {
      v77 = *&v3[v43];
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v45 = *&v3[v43];
  if ((v45 & 0xC000000000000001) != 0)
  {
    v78 = *&v3[v43];

    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v46 = *(v45 + 32);
  }

  v1 = &unk_1003D3000;
  [v46 code];
  v47 = Int._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v83;
  sub_1002CF474(v47, 0xD000000000000014, 0x8000000100331950, v48);
  v83 = v81;
  swift_endAccess();
  v2 = &selRef_setPath_;
  v49 = [v46 domain];
  if (!v49)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v50 = v49;
  swift_beginAccess();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v83;
  sub_1002CF474(v50, 0xD000000000000016, 0x8000000100331970, v51);
  v83 = v81;
  swift_endAccess();

  v52 = *&v3[v43];
  if (v52 >> 62)
  {
    goto LABEL_33;
  }

  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_21;
  }

LABEL_10:
  v53 = *&v3[v43];
  if ((v53 & 0xC000000000000001) != 0)
  {
    v79 = *&v3[v43];

    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_37:
      if (_CocoaArrayWrapper.endIndex.getter() < 3)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v54 = *(v53 + 40);
  }

  [v54 v1[408]];
  v55 = Int._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v83;
  sub_1002CF474(v55, 0xD000000000000014, 0x8000000100331990, v56);
  v83 = v81;
  swift_endAccess();
  v57 = [v54 v2[42]];
  if (!v57)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v58 = v57;
  swift_beginAccess();
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v83;
  sub_1002CF474(v58, 0xD000000000000016, 0x80000001003319B0, v59);
  v83 = v81;
  swift_endAccess();

  v60 = *&v3[v43];
  if (v60 >> 62)
  {
    goto LABEL_37;
  }

  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3)
  {
LABEL_16:
    v61 = *&v3[v43];
    if ((v61 & 0xC000000000000001) != 0)
    {
      v80 = *&v3[v43];

      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_19:
      [v62 v1[408]];
      v63 = Int._bridgeToObjectiveC()().super.super.isa;
      swift_beginAccess();
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v83;
      sub_1002CF474(v63, 0xD000000000000014, 0x80000001003319D0, v64);
      v83 = v81;
      swift_endAccess();
      v65 = [v62 v2[42]];
      if (v65)
      {
        v66 = v65;
        swift_beginAccess();
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v83;
        sub_1002CF474(v66, 0xD000000000000016, 0x80000001003319F0, v67);
        swift_endAccess();

        goto LABEL_21;
      }

LABEL_43:
      __break(1u);
      return;
    }

    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v62 = *(v61 + 48);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_21:
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_100008D04(v68, qword_1003FAAB8);
  v69 = v3;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    v74 = *&v69[qword_1003E3FB8];
    *(v72 + 4) = v74;
    *v73 = v74;
    v75 = v74;
    _os_log_impl(&_mh_execute_header, v70, v71, "InheritanceHealthCheckAnalyticsEvent: reporting claimCode error %@", v72, 0xCu);
    sub_100083380(v73);
  }

  v76 = *&v69[qword_1003E3FB8];
  dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
}

uint64_t sub_10024DBCC()
{
  v1 = *(v0 + qword_1003E3FB0);

  v2 = qword_1003E4008;
  v3 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

id sub_10024DC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceHealthCheckAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024DC98(uint64_t a1)
{
  v2 = *(a1 + qword_1003E3FB0);

  v3 = qword_1003E4008;
  v4 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t type metadata accessor for InheritanceInvitationActionAnalyticsEvent()
{
  result = qword_1003E4060;
  if (!qword_1003E4060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_10024DE30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10024DF20()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10024DFFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10024E0E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10024E678(*a1);
  *a2 = result;
  return result;
}

void sub_10024E118(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F74;
  v4 = 0x7541747065636361;
  v5 = 0xD000000000000011;
  v6 = 0x800000010032C3C0;
  v7 = 0x800000010032C3E0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000010032C400;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x614D747065636361;
    v3 = 0xEC0000006C61756ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_10024E1D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10024E2B4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10024E384()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10024E464@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10024E6C4(*a1);
  *a2 = result;
  return result;
}

void sub_10024E494(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656461;
  v3 = 0x7267707532617368;
  v4 = 0xEB000000006B6365;
  v5 = 0x684368746C616568;
  if (*v1 != 2)
  {
    v5 = 0x7267694D74736F70;
    v4 = 0xED00006E6F697461;
  }

  if (*v1)
  {
    v3 = 0x6961706552706463;
    v2 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_10024E564()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceInvitationActionAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10024E5CC()
{
  result = qword_1003E40B0;
  if (!qword_1003E40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E40B0);
  }

  return result;
}

unint64_t sub_10024E624()
{
  result = qword_1003E40B8;
  if (!qword_1003E40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E40B8);
  }

  return result;
}

unint64_t sub_10024E678(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3AD8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10024E6C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3B70, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for InheritanceInviteAnalyticsEvent()
{
  result = qword_1003E40C0;
  if (!qword_1003E40C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024E7CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceInviteAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritanceMigrationAnalyticsEvent()
{
  result = qword_1003E4110;
  if (!qword_1003E4110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024E8CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceMigrationAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritancePrintKeyAnalyticsEvent()
{
  result = qword_1003E4160;
  if (!qword_1003E4160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024E9CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritancePrintKeyAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InheritanceRecoveryAnalyticsEvent()
{
  result = qword_1003E41B0;
  if (!qword_1003E41B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024EACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceRecoveryAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrustedContactsSyncOperationsCAEvent()
{
  result = qword_1003E4200;
  if (!qword_1003E4200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10024EBCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrustedContactsSyncOperationsCAEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10024EC2C()
{
  v0 = sub_10024F180();
  v1 = type metadata accessor for AppInstallObserver();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13appleaccountd18AppInstallObserver_observers] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, "init");
  qword_1003FA948 = result;
  return result;
}

uint64_t sub_10024EC8C(void *a1)
{
  v3 = v1;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "AppInstallObserver: Handling distributed notification.", v8, 2u);
  }

  if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v21 = 5;
LABEL_19:
    sub_10024F12C();
    swift_allocError();
    *v22 = v21;
    return swift_willThrow();
  }

  v9 = String.init(cString:)();
  v11 = v10;
  v12 = v9 == 0xD00000000000002ELL && 0x8000000100332380 == v10;
  if (v12 || (v13 = v9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v14 = 1;
    goto LABEL_12;
  }

  v23 = v13 == 0xD000000000000030 && 0x80000001003323B0 == v11;
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315138;
      v30 = sub_10021145C(v13, v11, &v31);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "AppInstallObserver: Ignoring event %s", v28, 0xCu);
      sub_10000839C(v29);
    }

    else
    {
    }

    v21 = 4;
    goto LABEL_19;
  }

  v14 = 0;
LABEL_12:

  result = sub_10024F3CC(a1);
  if (v2)
  {
    return result;
  }

  v16 = result;
  v17 = *(v3 + OBJC_IVAR____TtC13appleaccountd18AppInstallObserver_observers);
  v18 = *(v17 + 16);
  if (v14)
  {
    if (v18)
    {
      v19 = (v17 + 32);

      do
      {
        v20 = *sub_1000080F8(v19, v19[3]);
        sub_10024F86C(v16);
        v19 += 5;
        --v18;
      }

      while (v18);
LABEL_29:
    }
  }

  else if (v18)
  {
    v24 = (v17 + 32);

    do
    {
      v25 = *sub_1000080F8(v24, v24[3]);
      sub_10024F86C(v16);
      v24 += 5;
      --v18;
    }

    while (v18);
    goto LABEL_29;
  }
}

uint64_t sub_10024EFE0(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    v2 = String.init(cString:)();
    sub_1002FAEE0(&v5, v2, v3);
  }

  return 1;
}

uint64_t sub_10024F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

id sub_10024F0C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10024F12C()
{
  result = qword_1003E4280;
  if (!qword_1003E4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4280);
  }

  return result;
}

id sub_10024F180()
{
  sub_100005814(&qword_1003E4288, &unk_100347630);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033EB30;
  v1 = type metadata accessor for DaemonAccountStore();
  v2 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v2 + 16) = result;
    *(v2 + 24) = [objc_opt_self() sharedInstance];
    v17[3] = v1;
    v17[4] = &off_1003AB0B8;
    v17[0] = v2;
    v15 = type metadata accessor for DaemonTaskDispatcher();
    v16 = &off_1003AB248;
    *&v14 = swift_allocObject();
    v4 = type metadata accessor for DataclassAppInstallObserving();
    v5 = swift_allocObject();
    v6 = sub_10003E968(v17, v1);
    v7 = *(*(v1 - 8) + 64);
    __chkstk_darwin(v6);
    v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v5[11] = v1;
    v5[12] = &off_1003AB0B8;
    v5[8] = v11;
    v12 = [objc_opt_self() dataclassBundleMap];
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5[7] = sub_1002DF794(v13);
    sub_10003E950(&v14, (v5 + 2));
    sub_10000839C(v17);
    *(v0 + 56) = v4;
    *(v0 + 64) = &off_1003B12C8;
    *(v0 + 32) = v5;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024F3CC(void *a1)
{
  v2 = xpc_dictionary_get_dictionary(a1, "UserInfo");
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_get_array(v2, "bundleIDs");
    if (v4)
    {
      v5 = v4;
      if (xpc_dictionary_get_BOOL(v3, "isPlaceholder"))
      {
        sub_10024F12C();
        swift_allocError();
        v7 = 1;
LABEL_16:
        *v6 = v7;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v1;
      }

      if (xpc_dictionary_get_BOOL(v3, "isForcedUpdate"))
      {
        sub_10024F12C();
        swift_allocError();
        v7 = 2;
        goto LABEL_16;
      }

      v16 = &_swiftEmptySetSingleton;
      v9 = swift_allocObject();
      *(v9 + 16) = &v16;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_10024F740;
      *(v1 + 24) = v9;
      aBlock[4] = sub_10024F758;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10024F03C;
      aBlock[3] = &unk_1003B1210;
      v10 = _Block_copy(aBlock);

      xpc_array_apply(v5, v10);
      _Block_release(v10);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }

      else
      {
        v1 = v16;

        if (*(v1 + 16))
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return v1;
        }

        if (qword_1003D7F20 == -1)
        {
LABEL_13:
          v11 = type metadata accessor for Logger();
          sub_100008D04(v11, qword_1003FAA40);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v12, v13))
          {
            v1 = swift_slowAlloc();
            *v1 = 0;
            _os_log_impl(&_mh_execute_header, v12, v13, "AppInstallObserver: Missing bundleIDs for notification.", v1, 2u);
          }

          sub_10024F12C();
          swift_allocError();
          v7 = 3;
          goto LABEL_16;
        }
      }

      swift_once();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  sub_10024F12C();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();
  return v1;
}

uint64_t sub_10024F758()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10024F784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10024F7B0()
{
  result = qword_1003E4290;
  if (!qword_1003E4290)
  {
    sub_100008CBC(&qword_1003E4298, qword_100347658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4290);
  }

  return result;
}

unint64_t sub_10024F818()
{
  result = qword_1003E42A0;
  if (!qword_1003E42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E42A0);
  }

  return result;
}

void sub_10024F86C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(v1 + 56);

    v5 = sub_10024FBA0(v4, a1);

    if (v5)
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100008D04(v6, qword_1003FAA40);

      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v19[0] = v9;
        *v8 = 136315138;
        v10 = Set.description.getter();
        v12 = sub_10021145C(v10, v11, v19);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, oslog, v7, "Dataclass App Install Observer - Ignoring %s", v8, 0xCu);
        sub_10000839C(v9);

        return;
      }

      goto LABEL_11;
    }

    sub_100040738(v1 + 64, v19);
    sub_1000080F8(v19, v19[3]);
    type metadata accessor for DaemonAccountStore();
    v16 = sub_10015C758();
    if (!v16)
    {
      sub_10000839C(v19);
      v17 = &_swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    v17 = v16;
    sub_10000839C(v19);
    if (v17 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_19;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      sub_10024FD88(v17);

      return;
    }

    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAA40);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v14, "Dataclass App Install Observer - No apps provided.", v15, 2u);
  }

LABEL_11:
}

uint64_t sub_10024FBA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024FD88(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v12 = v1 & 0xC000000000000001;
    v13 = result;
    v14 = v1;
    do
    {
      if (v12)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v7 = v15[5];
      v6 = v15[6];
      sub_1000080F8(v15 + 2, v7);
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v5;
      v10 = *(v6 + 8);

      v11 = v5;
      v10(&unk_1003477A8, v9, v7, v6);

      result = v13;
      v1 = v14;
    }

    while (v13 != v3);
  }

  return result;
}

uint64_t sub_10024FF08(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10024FF28, 0, 0);
}

uint64_t sub_10024FF28()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v4 = *sub_1000080F8((Strong + 64), *(Strong + 88));
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1002500E4;

    return sub_10015C06C(v3);
  }

  else
  {
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
      _os_log_impl(&_mh_execute_header, v8, v9, "Dataclass App Install Observer - Missing reference to self.", v10, 2u);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1002500E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_100250394;
  }

  else
  {
    v5 = sub_1002501F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002501F8()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v3;
    *v9 = v6;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Dataclass App Install Observer - Refreshed %@", v8, 0xCu);
    sub_100083380(v9);

    v4 = v10;
  }

  else
  {
    v11 = v0[7];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100250394()
{
  v1 = v0[7];

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dataclass App Install Observer - Failed to refresh %@", v10, 0xCu);
    sub_100083380(v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100250514()
{
  sub_10000839C(v0 + 2);
  v1 = v0[7];

  sub_10000839C(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_100250580()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002505B8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002505F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082A8;

  return sub_10024FF08(v2, v3);
}

uint64_t sub_1002506A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100250778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CloudShareInfo()
{
  result = qword_1003E4410;
  if (!qword_1003E4410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100250880()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10025090C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10025090C()
{
  if (!qword_1003E4420)
  {
    sub_100016034(255, &unk_1003E4428, CKDeviceToDeviceShareInvitationToken_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E4420);
    }
  }
}

uint64_t sub_100250974(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = *(*(type metadata accessor for CloudShareInfo() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100250A44, 0, 0);
}

uint64_t sub_100250A44()
{
  v39 = v0;
  v1 = v0[32];
  if (v1 == 2)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v2 = &qword_1003FAA00;
    goto LABEL_9;
  }

  if (v1 == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v2 = &qword_1003FA9D0;
LABEL_9:
    v3 = *v2;
    v0[40] = *v2;
    v4 = v2[1];
    v0[41] = v4;
    v5 = qword_1003D7EB0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_1002E2BC4(v3, v4);
    v0[42] = v6;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v7 = v0[39];
    v8 = v0[31];
    v9 = type metadata accessor for Logger();
    v0[43] = sub_100008D04(v9, qword_1003FAA58);
    sub_1000E4E34(v8, v7);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[39];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v14 = 136315394;
      type metadata accessor for URL();
      sub_10025480C(&qword_1003DD590, &type metadata accessor for URL);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1002543EC(v13);
      v18 = sub_10021145C(v15, v17, v38);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10021145C(v3, v4, v38);
      _os_log_impl(&_mh_execute_header, v10, v11, "Fetching metadata for url: %s, from container: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002543EC(v13);
    }

    v19 = v0[31];
    v20 = swift_task_alloc();
    v0[44] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v6;
    v21 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v22 = swift_task_alloc();
    v0[45] = v22;
    v23 = sub_100016034(0, &qword_1003E4490, CKShareMetadata_ptr);
    *v22 = v0;
    v22[1] = sub_100250FE4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 26, 0, 0, 0xD00000000000001ELL, 0x8000000100332510, sub_100254448, v20, v23);
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAA58);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[32];
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v25, v26, "Missing container ID for %ld", v28, 0xCu);
  }

  type metadata accessor for AACustodianError(0);
  v0[25] = -7056;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10025480C(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v29 = v0[24];
  swift_willThrow();
  v31 = v0[38];
  v30 = v0[39];
  v33 = v0[36];
  v32 = v0[37];
  v35 = v0[34];
  v34 = v0[35];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100250FE4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  v2[46] = v0;

  v5 = v2[44];
  if (v0)
  {
    v6 = v2[41];

    v7 = sub_100251448;
  }

  else
  {

    v7 = sub_10025112C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10025112C()
{
  v24 = v0;
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[31];
  v5 = v0[26];
  v0[47] = v5;
  sub_1000E4E34(v4, v3);

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v21 = v0[40];
    v22 = v0[41];
    v9 = v0[38];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315650;
    type metadata accessor for URL();
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1002543EC(v9);
    v15 = sub_10021145C(v12, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10021145C(v21, v22, &v23);
    *(v10 + 22) = 2112;
    *(v10 + 24) = v6;
    *v11 = v6;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Accepting the share url: %s, from container: %s, using meatdata: %@", v10, 0x20u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    v17 = v0[38];

    sub_1002543EC(v17);
  }

  v18 = v0[42];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1002514F4;
  v19 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003E4498, &qword_100347868);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100254A9C;
  v0[13] = &unk_1003B1380;
  v0[14] = v19;
  [v18 acceptShareMetadata:v6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100251448()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002514F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_100251F44;
  }

  else
  {
    v3 = sub_100251604;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100251604()
{
  v43 = v0;
  v1 = v0[43];
  v2 = v0[37];
  v3 = v0[31];
  v4 = v0[27];
  v0[49] = v4;
  sub_1000E4E34(v3, v2);
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    v12 = URL.absoluteString.getter();
    v14 = v13;
    sub_1002543EC(v9);
    v15 = sub_10021145C(v12, v14, &v42);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully accepted share from: %s", v10, 0xCu);
    sub_10000839C(v11);
  }

  else
  {

    sub_1002543EC(v9);
  }

  v16 = v0[43];
  v17 = v0[41];
  sub_1000E4E34(v0[31], v0[36]);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[40];
    v41 = v0[41];
    v21 = v0[36];
    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v22 = 136315394;
    type metadata accessor for URL();
    v23 = v5;
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1002543EC(v21);
    v27 = v24;
    v5 = v23;
    v28 = sub_10021145C(v27, v26, &v42);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_10021145C(v20, v41, &v42);
    _os_log_impl(&_mh_execute_header, v18, v19, "Pulling shared database changes from cloud after accepting CKShare, url: %s, from container: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v29 = v0[36];

    sub_1002543EC(v29);
  }

  v30 = v0[42];
  v31 = v0[33];
  v32 = [v5 recordID];

  v33 = [v32 zoneID];
  v0[50] = v33;

  v34 = [v30 sharedCloudDatabase];
  v0[51] = v34;
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v35 = swift_allocObject();
  v0[52] = v35;
  *(v35 + 16) = xmmword_1003431D0;
  *(v35 + 32) = v33;
  v0[30] = v31;
  v36 = v33;
  v37 = swift_task_alloc();
  v0[53] = v37;
  *(v37 + 16) = v0 + 30;
  *(v37 + 24) = v34;
  *(v37 + 32) = v35;
  *(v37 + 40) = 1;
  v38 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v39 = swift_task_alloc();
  v0[54] = v39;
  *v39 = v0;
  v39[1] = sub_100251A64;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v39, 0, 0, 0xD00000000000002ALL, 0x8000000100332550, sub_100254450, v37, &type metadata for () + 8);
}

uint64_t sub_100251A64()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  v2[55] = v0;

  v5 = v2[53];
  v6 = v2[52];
  if (v0)
  {
    v7 = v2[41];

    v8 = sub_100251E7C;
  }

  else
  {

    v8 = sub_100251BD4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100251BD4()
{
  v34 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 280);
  v4 = *(v0 + 248);

  sub_1000E4E34(v4, v3);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 392);
  v8 = *(v0 + 400);
  v10 = *(v0 + 376);
  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
  if (v7)
  {
    v30 = *(v0 + 320);
    v13 = *(v0 + 280);
    v32 = *(v0 + 400);
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315394;
    type metadata accessor for URL();
    v31 = v12;
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1002543EC(v13);
    v18 = sub_10021145C(v15, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = sub_10021145C(v30, v11, &v33);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully pulled shared database changes from cloud after accepting CKShare, url: %s, from container: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = *(v0 + 280);
    v21 = *(v0 + 328);

    sub_1002543EC(v20);
  }

  v23 = *(v0 + 304);
  v22 = *(v0 + 312);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v27 = *(v0 + 272);
  v26 = *(v0 + 280);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100251E7C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 336);

  v5 = *(v0 + 440);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v9 = *(v0 + 288);
  v8 = *(v0 + 296);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100251F44()
{
  v37 = v0;
  v1 = v0[48];
  v2 = v0[43];
  v3 = v0[41];
  v4 = v0[34];
  v5 = v0[31];
  swift_willThrow();
  sub_1000E4E34(v5, v4);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[41];
    v34 = v0[40];
    v35 = v0[48];
    v9 = v0[34];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v10 = 136315650;
    type metadata accessor for URL();
    sub_10025480C(&qword_1003DD590, &type metadata accessor for URL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1002543EC(v9);
    v15 = sub_10021145C(v12, v14, v36);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = sub_10021145C(v34, v8, v36);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error accepting share for url: %s, from container: %s, error: %@", v10, 0x20u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[41];
    v19 = v0[34];

    sub_1002543EC(v19);
  }

  v21 = v0[47];
  v20 = v0[48];
  v22 = v0[42];
  swift_getErrorValue();
  v23 = v0[18];
  v24 = v0[20];
  sub_1002DEA80(v0[19]);
  swift_getErrorValue();
  v25 = v0[21];
  sub_100255F6C(-7073, v0[22], v0[23]);

  swift_willThrow();

  v27 = v0[38];
  v26 = v0[39];
  v29 = v0[36];
  v28 = v0[37];
  v31 = v0[34];
  v30 = v0[35];

  v32 = v0[1];

  return v32();
}

void sub_100252284(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a3;
  v52 = a1;
  v4 = sub_100005814(&qword_1003E44A0, &qword_100347870);
  v5 = *(v4 - 8);
  v51 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v43 - v6;
  v8 = type metadata accessor for CloudShareInfo();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v48 = v11;
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + *(v10 + 32));
  sub_100005814(&qword_1003E44A8, &qword_100347878);
  if (v12)
  {
    v13 = type metadata accessor for URL();
    v44 = v7;
    v14 = v13;
    v15 = *(v13 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    v43 = xmmword_10033EB30;
    *(v18 + 16) = xmmword_10033EB30;
    v46 = v4;
    v19 = *(v15 + 16);
    v19(v18 + v17, a2, v14);
    sub_100005814(&qword_1003E44B0, &qword_100347880);
    v20 = sub_100005814(&qword_1003E44B8, &qword_100347888);
    v45 = v5;
    v21 = v20 - 8;
    v22 = *(*(v20 - 8) + 72);
    v23 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v43;
    v25 = v24 + v23;
    v26 = *(v21 + 56);
    v19(v25, a2, v14);
    v4 = v46;
    *(v25 + v26) = v12;
    v27 = v12;
    sub_10030991C(v24);
    swift_setDeallocating();
    sub_100008D3C(v25, &qword_1003E44B8, &qword_100347888);
    swift_deallocClassInstance();
    v28 = objc_allocWithZone(CKFetchShareMetadataOperation);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100016034(0, &unk_1003E4428, CKDeviceToDeviceShareInvitationToken_ptr);
    sub_10025480C(&qword_1003E44C0, &type metadata accessor for URL);
    v7 = v44;
    v30.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v5 = v45;

    v31 = [v28 initWithShareURLs:isa invitationTokensByShareURL:v30.super.isa];
  }

  else
  {
    v32 = type metadata accessor for URL();
    v33 = *(v32 - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10033EB30;
    (*(v33 + 16))(v36 + v35, a2, v32);
    v37 = objc_allocWithZone(CKFetchShareMetadataOperation);
    v30.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v37 initWithShareURLs:v30.super.isa];
  }

  v38 = v31;
  [v38 setShouldFetchRootRecord:1];
  v39 = v49;
  sub_1000E4E34(a2, v49);
  (*(v5 + 16))(v7, v52, v4);
  v40 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v41 = (v48 + *(v5 + 80) + v40) & ~*(v5 + 80);
  v42 = swift_allocObject();
  sub_1001D9D08(v39, v42 + v40);
  (*(v5 + 32))(v42 + v41, v7, v4);
  CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter();
  [v50 addOperation:v38];
}

uint64_t sub_100252848(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for CloudShareInfo();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA58);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_10005A40C(a2, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error fetching share metadata: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v29[0] = sub_100255F6C(-7069, v29[2], v29[3]);
    sub_100005814(&qword_1003E44A0, &qword_100347870);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA58);
    sub_1000E4E34(a4, v10);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      type metadata accessor for URL();
      sub_10025480C(&qword_1003DD590, &type metadata accessor for URL);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_1002543EC(v10);
      v26 = sub_10021145C(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Metadata fetched successfully for the url: %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    else
    {

      sub_1002543EC(v10);
    }

    v29[0] = a2;
    v27 = a2;
    sub_100005814(&qword_1003E44A0, &qword_100347870);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100252BF8()
{
  v1 = 0x6E6F436572616873;
  if (*v0 != 1)
  {
    v1 = 0x6B6F546572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C72556572616873;
  }
}

uint64_t sub_100252C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10025496C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100252C94(uint64_t a1)
{
  v2 = sub_100254398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100252CD0(uint64_t a1)
{
  v2 = sub_100254398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100252D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for URL();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&qword_1003E4468, &qword_100347850);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for CloudShareInfo();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_100254398();
  v15 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_10000839C(a1);
  }

  v16 = v10;
  v17 = v31;
  LOBYTE(v35) = 0;
  sub_10025480C(&qword_1003E4478, &type metadata accessor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 32))(v13, v33, v3);
  LOBYTE(v35) = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v13[*(v16 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v37 = 2;
  sub_1000EE61C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v6;
  v34 = v9;
  v29 = v36;
  if (v36 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v23 = v35;
    v27 = objc_allocWithZone(NSKeyedUnarchiver);
    sub_100052704(v23, v29);
    v28 = v23;
    v24 = sub_1002E1C48();
    [v24 setRequiresSecureCoding:1];
    [v24 _enableStrictSecureDecodingMode];
    v22 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithCoder:v24];

    v26 = v28;
    v25 = v29;
    sub_100015D58(v28, v29);
    sub_100015D58(v26, v25);
  }

  (*(v32 + 8))(v34, v33);
  *&v13[*(v16 + 24)] = v22;
  sub_1000E4E34(v13, v17);
  sub_10000839C(a1);
  return sub_1002543EC(v13);
}

uint64_t sub_1002531C4(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E4480, &qword_100347858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_100254398();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24[0]) = 0;
  type metadata accessor for URL();
  sub_10025480C(&qword_1003E4488, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for CloudShareInfo();
  v12 = (v3 + *(v11 + 20));
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v24[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = *(v3 + *(v11 + 24));
  if (!v16)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v17 = objc_allocWithZone(NSKeyedArchiver);
  v18 = v16;
  v19 = [v17 initRequiringSecureCoding:1];
  [v18 encodeWithCoder:v19];
  v20 = [v19 encodedData];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24[0] = v21;
  v24[1] = v23;
  v25 = 2;
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);

  return sub_100012324(v21, v23);
}

uint64_t sub_1002534A4(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4, __int16 a5)
{
  v10 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = *a2;
  (*(v11 + 16))(&v19 - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  sub_1002E6374(a3, a4, a5 & 0x101, sub_100254508, v17);
}

uint64_t sub_100253614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  return _swift_task_switch(sub_100253638, 0, 0);
}

uint64_t sub_100253638()
{
  v1 = v0;
  v2 = v0 + 2;
  v4 = v1[29];
  v3 = v1[30];
  v1[10] = v1[28];
  v1[11] = v4;
  v1[24] = 64;
  v1[25] = 0xE100000000000000;
  sub_1000709A0();
  v5 = StringProtocol.contains<A>(_:)();
  v6 = objc_allocWithZone(CKUserIdentityLookupInfo);
  v7 = String._bridgeToObjectiveC()();
  v8 = &selRef_initWithEmailAddress_;
  if ((v5 & 1) == 0)
  {
    v8 = &selRef_initWithPhoneNumber_;
  }

  v9 = [v6 *v8];
  v1[31] = v9;

  v1[2] = v1;
  v1[7] = v1 + 24;
  v1[3] = sub_1002537FC;
  v10 = swift_continuation_init();
  v1[17] = sub_100005814(&qword_1003E4460, &qword_100347848);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100254A9C;
  v1[13] = &unk_1003B1358;
  v1[14] = v10;
  [v3 fetchShareParticipantWithLookupInfo:v9 completionHandler:v1 + 10];

  return _swift_continuation_await(v2);
}

uint64_t sub_1002537FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_100253B04;
  }

  else
  {
    v3 = sub_10025390C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10025390C()
{
  v18 = v0;
  v1 = v0[24];
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA58);
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v10 = v0[28];
    v9 = v0[29];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v4;
    *v12 = v4;
    *(v11 + 12) = 2080;
    v14 = v4;
    *(v11 + 14) = sub_10021145C(v10, v9, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "Found a cloudkit participant: %@, handle: %s", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }

  v15 = v0[1];

  return v15(v4);
}

uint64_t sub_100253B04()
{
  v22 = v0;
  v1 = v0[31];
  v2 = v0[32];
  swift_willThrow();

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v3 = v0[32];
  v4 = v0[29];
  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA58);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[32];
    v10 = v0[28];
    v9 = v0[29];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_10021145C(v10, v9, &v21);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed fetching cloudKit participant (%s) with error: %@", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }

  v15 = v0[32];
  swift_getErrorValue();
  v16 = v0[18];
  v17 = v0[20];
  sub_1002DEA80(v0[19]);
  swift_getErrorValue();
  v18 = v0[21];
  sub_100255F6C(-7064, v0[22], v0[23]);

  swift_willThrow();

  v19 = v0[1];

  return v19();
}

NSObject *sub_100253D68(void *a1)
{
  if (a1)
  {
    v2 = qword_1003D7F28;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA58);
    v5 = v3;
    v1 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      [v5 invitationTokenStatus];
      type metadata accessor for CKShareParticipantInvitationTokenStatus(0);
      v9 = String.init<A>(describing:)();
      v11 = sub_10021145C(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v1, v6, "Invitation acceptance status: %s", v7, 0xCu);
      sub_10000839C(v8);
    }

    v12 = [v5 acceptanceStatus];
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v22))
        {
          v1 = swift_slowAlloc();
          LOWORD(v1->isa) = 0;
          _os_log_impl(&_mh_execute_header, v13, v22, "CKShare already accepted", v1, 2u);
        }

        goto LABEL_32;
      }

      if (v12 == 3)
      {
        v13 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v20))
        {
          v1 = swift_slowAlloc();
          LOWORD(v1->isa) = 0;
          _os_log_impl(&_mh_execute_header, v13, v20, "Participant is removed from CKShare", v1, 2u);
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (!v12)
      {
        type metadata accessor for AACustodianError(0);
LABEL_33:
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10025480C(&qword_1003D8140, type metadata accessor for AACustodianError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();

        return v1;
      }

      if (v12 == 1)
      {
        v1 = [v5 invitationToken];
        v13 = Logger.logObject.getter();
        if (v1)
        {
          v14 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v13, v14, "CKShare status is pending acceptance, and has invitation token", v15, 2u);
          }

          return v1;
        }

        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v23))
        {
          v1 = swift_slowAlloc();
          LOWORD(v1->isa) = 0;
          _os_log_impl(&_mh_execute_header, v13, v23, "CKShare status is in pending status, but CKShare doesn't have an invitation token", v1, 2u);
        }

        goto LABEL_32;
      }
    }

    v13 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v21))
    {
      v1 = swift_slowAlloc();
      LOWORD(v1->isa) = 0;
      _os_log_impl(&_mh_execute_header, v13, v21, "Unexpected participant acceptance status from CKShare", v1, 2u);
    }

LABEL_32:

    type metadata accessor for AACustodianError(0);
    goto LABEL_33;
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA58);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saved share missing matching participant.", v19, 2u);
  }

  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10025480C(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  return v1;
}

unint64_t sub_100254398()
{
  result = qword_1003E4470;
  if (!qword_1003E4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4470);
  }

  return result;
}

uint64_t sub_1002543EC(uint64_t a1)
{
  v2 = type metadata accessor for CloudShareInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100254450(uint64_t a1)
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1002534A4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v2 | *(v1 + 40));
}

uint64_t sub_100254474()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100254508(uint64_t a1)
{
  v2 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);

  return sub_1002E5344(a1);
}

uint64_t sub_100254584()
{
  v1 = (type metadata accessor for CloudShareInfo() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = sub_100005814(&qword_1003E44A0, &qword_100347870);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = *(v0 + v2 + v1[7] + 8);

  (*(v5 + 8))(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100254714(uint64_t a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for CloudShareInfo() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(*(sub_100005814(&qword_1003E44A0, &qword_100347870) - 8) + 80);

  return sub_100252848(a1, a2, a3 & 1, v3 + v8);
}

uint64_t sub_10025480C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100254868()
{
  result = qword_1003E44C8;
  if (!qword_1003E44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E44C8);
  }

  return result;
}

unint64_t sub_1002548C0()
{
  result = qword_1003E44D0;
  if (!qword_1003E44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E44D0);
  }

  return result;
}

unint64_t sub_100254918()
{
  result = qword_1003E44D8;
  if (!qword_1003E44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E44D8);
  }

  return result;
}

uint64_t sub_10025496C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556572616873 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436572616873 && a2 == 0xEE0072656E696174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F546572616873 && a2 == 0xEE00617461446E65)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_100254AA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    a4 = 0;
  }

  v5 = *v4;
  sub_100254ACC(a1, a2, a3, a4);
}

void sub_100254ACC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (!a2)
  {
    v8.super.isa = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (v6)
  {
LABEL_3:
    v9[4] = v6;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10013BB5C;
    v9[3] = &unk_1003B15C0;
    v6 = _Block_copy(v9);
  }

LABEL_4:
  [v4 postFollowUpWithIdentifier:a1 userInfo:v8.super.isa completion:v6];
  _Block_release(v6);
}

void sub_100254BDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    a5 = 0;
  }

  v6 = *v5;
  sub_100254C08(a1, a2, a3, a4, a5);
}

void sub_100254C08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  if (!a3)
  {
    v10.super.isa = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (v7)
  {
LABEL_3:
    v11[4] = v7;
    v11[5] = a5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10013BB5C;
    v11[3] = &unk_1003B1598;
    v7 = _Block_copy(v11);
  }

LABEL_4:
  [v5 postFollowUpWithIdentifier:a1 forAccount:a2 userInfo:v10.super.isa completion:v7];
  _Block_release(v7);
}

uint64_t sub_100254D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100254DF0;

  return (sub_100255588)(a1, a2, a3);
}

uint64_t sub_100254DF0(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

void sub_100254EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10013BB5C;
    v7[3] = &unk_1003B1548;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 dismissFollowUpWithIdentifier:a1 completion:v6];
  _Block_release(v6);
}

void sub_100255004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = *v4;
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10013BB5C;
    v9[3] = &unk_1003B1520;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
    v7 = *v4;
  }

  [v7 dismissFollowUpsStartingWithIdentifierPrefix:a1 account:a2 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1002550E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100255108, 0, 0);
}

uint64_t sub_100255108()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100255230;
  v3 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003E44E0, &unk_100347A38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100255370;
  v0[13] = &unk_1003B14F8;
  v0[14] = v3;
  [v1 pendingFollowUpsForAccount:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100255230()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_100255370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10025553C();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100255450(uint64_t a1)
{
  v2 = [*v1 pendingFollowUpItemUserInfosWithIdentifier:a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100005814(&qword_1003DBB88, &qword_10033FC30);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1002554C4()
{
  v1 = [*v0 pendingCFUTypes];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10025553C()
{
  result = qword_1003E44E8;
  if (!qword_1003E44E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E44E8);
  }

  return result;
}

uint64_t sub_100255588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (a3)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v4[18].super.isa = v8.super.isa;
  v4[2].super.isa = v4;
  v4[7].super.isa = &v4[19];
  v4[3].super.isa = sub_100255700;
  v9 = swift_continuation_init();
  v4[17].super.isa = sub_100005814(&unk_1003DEE00, qword_100343450);
  v4[10].super.isa = _NSConcreteStackBlock;
  v4[11].super.isa = 1107296256;
  v4[12].super.isa = sub_10024442C;
  v4[13].super.isa = &unk_1003B1570;
  v4[14].super.isa = v9;
  [v5 postFollowUpWithIdentifier:a1 forAccount:a2 userInfo:v8.super.isa completion:&v4[10]];

  return _swift_continuation_await(&v4[2]);
}

uint64_t sub_100255700()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
    swift_willThrow();

    v6 = *(v3 + 8);
    v7 = 0;
  }

  else
  {
    v8 = *(v2 + 152);

    v6 = *(v3 + 8);
    v7 = v8;
  }

  return v6(v7);
}

uint64_t sub_100255840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100255878()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v2 = [v0 dataWithJSONObject:isa options:1 error:&v7];

  v3 = v7;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v4;
}

void sub_100255998(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v34[3] = a2;
  v7 = type metadata accessor for URL();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  v9 = __chkstk_darwin(v7);
  v35 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v34 - v11;
  v13 = type metadata accessor for URLResourceValues();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v37;
  Data.write(to:options:)();
  if (v18)
  {
    v19 = v38;
    v21 = v35;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA40);
    (*(v19 + 16))(v21, a1, v7);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v21;
      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = 0;
      v39 = v37;
      *v25 = 136315394;
      sub_1000EBC98();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v7;
      v31 = v30;
      (*(v19 + 8))(v26, v29);
      v32 = sub_10021145C(v28, v31, &v39);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to write data to url: %s with error %@", v25, 0x16u);
      sub_100083380(v27);

      sub_10000839C(v37);
    }

    else
    {

      (*(v19 + 8))(v21, v7);
    }
  }

  else
  {
    v37 = v14;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v20 = v38;
    (*(v38 + 16))(v12, a1, v7);
    URL.setResourceValues(_:)();
    (*(v20 + 8))(v12, v7);
    (v37[1])(v17, v13);
  }
}

uint64_t sub_100255E08(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v12[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:4 error:v12];

  v7 = *&v12[0];
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100012324(a1, a2);
    sub_100070AF0(v11, v12);
    sub_100070AF0(v12, v11);
    sub_100005814(&qword_1003DBB88, &qword_10033FC30);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    v9 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100012324(a1, a2);
  }

  return 0;
}

uint64_t sub_100255F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a2);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v6, a2);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v8, v6, a2);
  }

  v9 = _convertErrorToNSError(_:)();

  v10 = _convertErrorToNSError(_:)();
  v11 = [v9 code];
  if (v11 == [v10 code])
  {
    v12 = [v9 domain];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = [v10 domain];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v21 = 0;
  }

  return v21 & 1;
}

void sub_1002561AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v8, a2);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v4 + 8))(v7, a2);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v9, v7, a2);
  }

  v10 = _convertErrorToNSError(_:)();

  v24 = v10;
  v11 = [v10 underlyingErrors];
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v23 = v13 - 1;
    v25 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v14;
      while (1)
      {
        if (v15 >= *(v12 + 16))
        {
          __break(1u);
          return;
        }

        v16 = *(v12 + 32 + 8 * v15);
        v14 = v15 + 1;
        swift_getErrorValue();
        v17 = v26;
        swift_errorRetain();
        if (sub_100255F78(a1, v17))
        {
          break;
        }

        ++v15;
        if (v13 == v14)
        {
          goto LABEL_18;
        }
      }

      v18 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1002E03B4(0, v18[2] + 1, 1);
        v18 = v27;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        sub_1002E03B4((v20 > 1), v21 + 1, 1);
        v18 = v27;
      }

      v18[2] = v21 + 1;
      v25 = v18;
      v18[v21 + 4] = v16;
    }

    while (v23 != v15);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  v22 = v25[2];
}

uint64_t sub_10025648C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002568B0(v5);
  v9 = [v8 aa_partialErrorsByName];

  if (v9 && (sub_100005814(&unk_1003DBB60, &unk_10033E740), v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v9, v11 = sub_10030B6CC(v10), , v11))
  {
    swift_getErrorValue();
    v12 = sub_10025648C(v16[1], v16[2]);
  }

  else
  {
    (*(v3 + 16))(v7, v1, a1);
    v13 = _getErrorEmbeddedNSError<A>(_:)();
    if (v13)
    {
      v12 = v13;
      (*(v3 + 8))(v7, a1);
    }

    else
    {
      v12 = swift_allocError();
      (*(v3 + 32))(v14, v7, a1);
    }
  }

  return v12;
}

id sub_10025666C(uint64_t a1, uint64_t a2)
{
  sub_100308978(_swiftEmptyArrayStorage);
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    swift_getErrorValue();
    v18 = v16;
    v7 = sub_10000DBEC(v17);
    (*(*(v16 - 8) + 16))(v7, v15, v16);
    sub_100070AF0(v17, v14);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002CF8B4(v14, v4, v6, isUniquelyReferenced_nonNull_native);
  }

  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = AACustodianRecoveryErrorDomain;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithDomain:v10 code:a1 userInfo:isa];

  return v12;
}

uint64_t sub_100256810(uint64_t a1)
{
  v1 = sub_1002568B0(a1);
  v2 = [v1 domain];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

id sub_100256874(uint64_t a1)
{
  v1 = sub_1002568B0(a1);
  v2 = [v1 code];

  return v2;
}

uint64_t sub_1002568B0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

uint64_t sub_1002569F8(uint64_t a1)
{
  v1 = sub_1002568B0(a1);
  v2 = [v1 userInfo];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

id sub_100256A74(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v7 = *a4;
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  *(inited + 72) = a2;
  v10 = sub_10000DBEC((inited + 48));
  (*(*(a2 - 8) + 16))(v10, v4, a2);
  v11 = v7;
  sub_100308978(inited);
  swift_setDeallocating();
  sub_100256CF4(inited + 32);
  v12 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithDomain:v11 code:a1 userInfo:isa];

  return v14;
}

void sub_100256BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(NSError);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithDomain:v6 code:a2 userInfo:0];

  *a3 = v7;
}

void sub_100256C7C()
{
  v0 = objc_allocWithZone(NSError);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithDomain:v1 code:9 userInfo:0];

  qword_1003FA968 = v2;
}

uint64_t sub_100256CF4(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100256D5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1002E02CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_1002E02CC((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &off_1003A9F30;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_1002E02CC((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        v15[4] = v13;
        v15[5] = &off_1003A9F30;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_100256EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_1002E03D4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002E03D4((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100070AF0(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100256FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1002E03D4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      sub_100005814(&qword_1003E31F8, &qword_100346900);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002E03D4((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_100070AF0(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void NSXPCInterface.aa_setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1)
{
  sub_100256FF4(a1);
  v1 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100257274(void *a1)
{
  if ([objc_opt_self() isInternalBuild])
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = qword_1003D7F20;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = sub_10021145C(v11, v12, &v25);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Checking whether to induce failure of event: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    v14 = [objc_opt_self() standardUserDefaults];
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v25 = 0x662E656375646E69;
    v26 = 0xEF2E6572756C6961;
    v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v15);

    v16 = String._bridgeToObjectiveC()();

    v17 = [v14 BOOLForKey:v16];

    if (v17)
    {
      v6 = v6;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315138;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = sub_10021145C(v22, v23, &v25);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "🚨 Inducing failure of event: %s", v20, 0xCu);
        sub_10000839C(v21);
      }

      type metadata accessor for AACustodianError(0);
      v27 = -7756;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10003A9C0();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002575F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if ((swift_dynamicCast() & 1) != 0 && (sub_10003A9C0(), _BridgedStoredNSError.code.getter(), v6, v6 == -7756))
  {
    v4 = 0;
  }

  else if (a2)
  {

    v4 = a2(a1);
    sub_100083B0C(a2);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1002576F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a1;
  v14[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000709A0();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return 0;
  }

  return v9;
}

BOOL sub_100257818(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = v3;
    v33 = Strong;
    v34 = a1;
    v13 = OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore;
    v14 = v8[2];
    v14(v11, Strong + OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore, v7);
    Dependency.wrappedValue.getter();
    v15 = v8[1];
    v15(v11, v7);
    v16 = [*(*sub_1000080F8(v36 v37) + 16)];
    if (v16)
    {

      sub_10000839C(v36);
      UUID.init()();
      v30 = UUID.uuidString.getter();
      v31 = v17;
      (*(v32 + 8))(v6, v2);
      v14(v11, v33 + v13, v7);
      Dependency.wrappedValue.getter();
      v15(v11, v7);
      v18 = [*(*sub_1000080F8(v36 v37) + 16)];
      if (v18)
      {

        sub_10000839C(v36);
        sub_100257F84(1, v30, v31, sub_100257DB0, 0);
      }

      else
      {

        sub_10000839C(v36);
        sub_100005814(&qword_1003E4610, &qword_100347AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = 0x72456E496E676953;
        *(inited + 40) = 0xEB00000000726F72;
        type metadata accessor for AASignInError(0);
        v35 = -8014;
        sub_100212324(&_swiftEmptyArrayStorage);
        sub_100259B80(&qword_1003D8338, type metadata accessor for AASignInError);
        _BridgedStoredNSError.init(_:userInfo:)();
        *(inited + 48) = v36[0];
        v28 = sub_100308AA8(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
        sub_100257DB0(0, v28);
      }
    }

    else
    {
      sub_10000839C(v36);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAAB8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "No account signed in. Skipping AppleID Availability activity.", v26, 2u);
      }
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Lost reference to self. Aborting AppleID Availability XPC activity", v22, 2u);
    }
  }

  return sub_10030FF34();
}

void sub_100257DB0(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v8 = Dictionary.description.getter();
      v10 = sub_10021145C(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Overall AppleID Availability activity failed: %s", v6, 0xCu);
      sub_10000839C(v7);
    }

    if (a1)
    {
      v11 = objc_opt_self();

      [v11 isHealthCheckTTREnabled];
    }
  }
}

uint64_t sub_100257F84(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v70 = a4;
  v82 = a2;
  v83 = a3;
  LODWORD(v88) = a1;
  v77 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v77 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS.QoSClass();
  v68 = *(v69 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v74 = type metadata accessor for DispatchQoS();
  v73 = *(v74 - 8);
  v11 = *(v73 + 64);
  __chkstk_darwin(v74);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = dispatch_group_create();
  v86 = swift_allocObject();
  *(v86 + 16) = &_swiftEmptyDictionarySingleton;
  v20 = sub_100071C74();
  v87 = "shouldOverrideInterval";
  (*(v15 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100259B80(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v71 = v13;
  v66 = v20;
  v85 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v81 = sub_100008D04(v21, qword_1003FAAB8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    v26 = v88;
    if (v88)
    {
      v27 = 0x656C756465686353;
    }

    else
    {
      v27 = 0x6E616D6544206E4FLL;
    }

    v28 = sub_10021145C(v27, 0xE900000000000064, aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting %s Apple ID Availability activities.", v24, 0xCu);
    sub_10000839C(v25);
  }

  else
  {

    v26 = v88;
  }

  v30 = *(v84 + 16);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + 32;
    LODWORD(v84) = v26 & 1;
    if (v26)
    {
      v33 = 0x656C756465686353;
    }

    else
    {
      v33 = 0x6E616D6544206E4FLL;
    }

    v79 = v33;
    *&v29 = 136315394;
    v78 = v29;
    v80 = v19;
    do
    {
      v88 = v31;
      sub_100040738(v32, aBlock);
      dispatch_group_enter(v19);
      sub_100040738(aBlock, &v94);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v34 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v34 = v78;
        v35 = sub_10021145C(v79, 0xE900000000000064, &v89);

        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        sub_1000080F8(&v94, v95);
        swift_getDynamicType();
        v36 = _typeName(_:qualified:)();
        v38 = v37;
        sub_10000839C(&v94);
        v39 = sub_10021145C(v36, v38, &v89);

        *(v34 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v48, v49, "Starting %s Apple ID Availability activity - %s", v34, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000839C(&v94);
      }

      v40 = v91;
      v41 = v92;
      sub_1000080F8(aBlock, v91);
      sub_100040738(aBlock, &v94);
      v42 = swift_allocObject();
      *(v42 + 16) = v84;
      sub_10003E950(&v94, v42 + 24);
      v43 = v85;
      v44 = v86;
      *(v42 + 64) = v85;
      *(v42 + 72) = v44;
      v19 = v80;
      *(v42 + 80) = v87;
      *(v42 + 88) = v19;
      v45 = *(v41 + 2);
      v46 = v43;

      v47 = v19;
      v45(v82, v83, sub_100259AF0, v42, v40, v41);

      sub_10000839C(aBlock);
      v32 += 40;
      v31 = v88 - 1;
    }

    while (v88 != 1);
    v50 = v84;
  }

  else
  {
    v50 = v26 & 1;
  }

  v51 = v68;
  v52 = v67;
  v53 = v69;
  (*(v68 + 104))(v67, enum case for DispatchQoS.QoSClass.default(_:), v69);
  v88 = static OS_dispatch_queue.global(qos:)();
  (*(v51 + 8))(v52, v53);
  v54 = swift_allocObject();
  v55 = v85;
  v56 = v86;
  *(v54 + 16) = v85;
  *(v54 + 24) = v50;
  v57 = v70;
  *(v54 + 32) = v56;
  *(v54 + 40) = v57;
  v58 = v87;
  *(v54 + 48) = v72;
  *(v54 + 56) = v58;
  v92 = sub_100259B54;
  v93 = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v91 = &unk_1003B16A8;
  v59 = _Block_copy(aBlock);
  v60 = v55;

  v61 = v71;
  static DispatchQoS.unspecified.getter();
  *&v94 = &_swiftEmptyArrayStorage;
  sub_100259B80(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v62 = v75;
  v63 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v64 = v88;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v59);

  (*(v76 + 8))(v62, v63);
  (*(v73 + 8))(v61, v74);
}

void sub_1002589E0(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v67 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v62 = v23;
    v63 = v21;
    v65 = v20;
    v66 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v61 = a5;
    v64 = v17;
    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v60 = v14;
      v28 = v27;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v75[0] = v59;
      *v28 = 136315650;
      if (a2)
      {
        v29 = 0x656C756465686353;
      }

      else
      {
        v29 = 0x6E616D6544206E4FLL;
      }

      v30 = sub_10021145C(v29, 0xE900000000000064, v75);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      sub_1000080F8(&aBlock, v72);
      swift_getDynamicType();
      v31 = _typeName(_:qualified:)();
      v33 = v32;
      sub_10000839C(&aBlock);
      v34 = sub_10021145C(v31, v33, v75);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2112;
      v35 = _convertErrorToNSError(_:)();
      *(v28 + 24) = v35;
      v36 = v58;
      *v58 = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s %s Apple ID Availability activity failed with error %@", v28, 0x20u);
      sub_100008D3C(v36, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      v14 = v60;
    }

    else
    {

      sub_10000839C(&aBlock);
    }

    sub_1000080F8(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v48 = a3[4];
    aBlock = DynamicType;
    v70 = v48;
    sub_100005814(&unk_1003E62A0, qword_100347AD8);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    sub_100040738(a3, v75);
    v52 = swift_allocObject();
    v53 = v61;
    v52[2] = a1;
    v52[3] = v53;
    v52[4] = v49;
    v52[5] = v51;
    v52[6] = a6;
    sub_10003E950(v75, (v52 + 7));
    v73 = sub_100259C78;
    v74 = v52;
    aBlock = _NSConcreteStackBlock;
    v70 = 1107296256;
    v71 = sub_100031EF0;
    v72 = &unk_1003B1748;
    v54 = _Block_copy(&aBlock);
    swift_errorRetain();

    v55 = v62;
    static DispatchQoS.unspecified.getter();
    v68 = &_swiftEmptyArrayStorage;
    sub_100259B80(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v56 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v14 + 8))(v56, v13);
    (*(v63 + 8))(v55, v65);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *&v75[0] = swift_slowAlloc();
      *v40 = 136315394;
      if (a2)
      {
        v41 = 0x656C756465686353;
      }

      else
      {
        v41 = 0x6E616D6544206E4FLL;
      }

      v42 = sub_10021145C(v41, 0xE900000000000064, v75);

      *(v40 + 4) = v42;
      *(v40 + 12) = 2080;
      sub_1000080F8(&aBlock, v72);
      swift_getDynamicType();
      v43 = _typeName(_:qualified:)();
      v45 = v44;
      sub_10000839C(&aBlock);
      v46 = sub_10021145C(v43, v45, v75);

      *(v40 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s %s Apple ID Availability activity completed.", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }
  }

  dispatch_group_leave(v67);
}