uint64_t sub_1002B03AC()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v33 - v5;
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
    v49[0] = v11;
    *v10 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v10 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v49);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - trying to tear down existing AA CFUs.", v10, 0xCu);
    sub_10000839C(v11);
  }

  v35 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager;
  v12 = v3[2];
  v12(v6, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager, v2);
  Dependency.wrappedValue.getter();
  v34 = v3[1];
  v34(v6, v2);
  v33[1] = v3 + 1;
  v13 = sub_1000080F8(v45, v46);
  v14 = AAFollowUpIdentifierCustodianWalrusRemoved;
  v15 = sub_1003090E8(_swiftEmptyArrayStorage);
  v49[0] = v14;
  v49[1] = v15;
  memset(&v49[2], 0, 24);
  v50 = 0;
  v16 = *v13;
  sub_1002D3AB8(v49);

  sub_10000839C(v45);
  v17 = v35;
  v12(v6, v1 + v35, v2);
  Dependency.wrappedValue.getter();
  v18 = v34;
  v34(v6, v2);
  v19 = v18;
  v20 = sub_1000080F8(v41, v42);
  v21 = AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing;
  v22 = sub_1003090E8(_swiftEmptyArrayStorage);
  v45[0] = v21;
  v45[1] = v22;
  v46 = 0;
  v47 = 0;
  v45[2] = 0;
  v48 = 0;
  v23 = *v20;
  sub_1002D3AB8(v45);

  sub_10000839C(v41);
  v12(v6, v1 + v17, v2);
  Dependency.wrappedValue.getter();
  v19(v6, v2);
  v24 = sub_1000080F8(v37, v38);
  v25 = AAFollowUpIdentifierCustodianWalrusNoLiveness;
  v26 = sub_1003090E8(_swiftEmptyArrayStorage);
  v41[0] = v25;
  v41[1] = v26;
  v42 = 0;
  v43 = 0;
  v41[2] = 0;
  v44 = 0;
  v27 = *v24;
  sub_1002D3AB8(v41);

  sub_10000839C(v37);
  v12(v6, v1 + v35, v2);
  Dependency.wrappedValue.getter();
  v19(v6, v2);
  v28 = sub_1000080F8(v36, v36[3]);
  v29 = AAFollowUpIdentifierADPUserMissingHealthyCustodian;
  v30 = sub_1003090E8(_swiftEmptyArrayStorage);
  v37[0] = v29;
  v37[1] = v30;
  v38 = 0;
  v39 = 0;
  v37[2] = 0;
  v40 = 0;
  v31 = *v28;
  sub_1002D3AB8(v37);

  return sub_10000839C(v36);
}

uint64_t sub_1002B0888()
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
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v10 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - trying to tear down existing CDP state CFUs.", v10, 0xCu);
    sub_10000839C(v11);
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  sub_1002611E8();
  return sub_10000839C(v14);
}

uint64_t sub_1002B0C6C()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002B0D3C(uint64_t a1, char a2)
{
  v5 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_1002AF8DC(a1, a2 & 1);
}

void sub_1002B0DCC(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = a1;

    sub_1000BCD5C(0, 0, v5, &unk_100348980, v9);
  }

  else
  {
    sub_10030FF34();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAB8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Lost reference to self. Aborting XPC activity for Maintenance Activities", v13, 2u);
    }
  }
}

uint64_t sub_1002B0FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002B0FE0, 0, 0);
}

uint64_t sub_1002B0FE0()
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MaintenanceActivityProvider - Performing maintenance...", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1002B1130;
  v6 = v0[2];

  return sub_1002B2700();
}

uint64_t sub_1002B1130(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1002B1230, 0, 0);
}

uint64_t sub_1002B1230()
{
  v20 = v0;
  v1 = v0[4];
  if (!*(v0[6] + 16))
  {
    v13 = v0[6];

    v3 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v3, v14))
    {
LABEL_7:

      goto LABEL_9;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, v14, "MaintenanceActivityProvider - Maintenance succeeded.", v15, 2u);
LABEL_6:

    goto LABEL_7;
  }

  v2 = v0[6];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v9 = Dictionary.description.getter();
    v11 = v10;

    v12 = sub_10021145C(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "MaintenanceActivityProvider - Overall Maintenance Activities failed: %s", v7, 0xCu);
    sub_10000839C(v8);

    goto LABEL_6;
  }

LABEL_9:
  v16 = v0[3];
  sub_10030FF34();
  v17 = v0[1];

  return v17();
}

uint64_t sub_1002B1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  v5 = *(*(sub_100005814(&qword_1003DABF0, &qword_10033F8A0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = sub_100005814(&qword_1003E6728, &qword_1003489B0);
  v4[30] = v6;
  v7 = *(v6 - 8);
  v4[31] = v7;
  v8 = *(v7 + 64) + 15;
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002B1554, 0, 0);
}

uint64_t sub_1002B1554()
{
  v1 = *(*(v0 + 208) + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v31 = **(v0 + 200);
    do
    {
      v32 = v2;
      v5 = *(v0 + 224);
      v6 = *(v0 + 232);
      sub_100040738(v3, v0 + 16);
      sub_1000080F8((v0 + 16), *(v0 + 40));
      DynamicType = swift_getDynamicType();
      v8 = *(v0 + 48);
      *(v0 + 176) = DynamicType;
      *(v0 + 184) = v8;
      sub_100005814(&qword_1003E6730, &qword_1003489C8);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      v12 = type metadata accessor for TaskPriority();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v6, 1, 1, v12);
      sub_100040738(v0 + 16, v0 + 56);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v9;
      v14[5] = v11;
      sub_10003E950((v0 + 56), (v14 + 6));
      sub_1000BF7F8(v6, v5);
      v16 = (*(v13 + 48))(v5, 1, v12);
      v17 = *(v0 + 224);
      if (v16 == 1)
      {
        sub_100008D3C(*(v0 + 224), &qword_1003DABF0, &qword_10033F8A0);
        if (*v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v17, v12);
        if (*v15)
        {
LABEL_8:
          v20 = v14[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_1003489D0;
      *(v22 + 24) = v14;

      sub_100005814(&qword_1003E6720, &qword_100348998);
      v23 = v19 | v18;
      if (v19 | v18)
      {
        v23 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v18;
        *(v0 + 120) = v19;
      }

      v4 = *(v0 + 232);
      *(v0 + 128) = 1;
      *(v0 + 136) = v23;
      *(v0 + 144) = v31;
      swift_task_create();

      sub_100008D3C(v4, &qword_1003DABF0, &qword_10033F8A0);
      sub_10000839C((v0 + 16));
      v3 += 40;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  v24 = *(v0 + 256);
  v25 = **(v0 + 200);
  sub_100005814(&qword_1003E6720, &qword_100348998);
  TaskGroup.makeAsyncIterator()();
  v26 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v27 = swift_task_alloc();
  *(v0 + 264) = v27;
  *v27 = v0;
  v27[1] = sub_1002B1918;
  v28 = *(v0 + 256);
  v29 = *(v0 + 240);

  return TaskGroup.Iterator.next(isolation:)(v0 + 152, 0, 0, v29);
}

uint64_t sub_1002B1918()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002B1A14, 0, 0);
}

uint64_t sub_1002B1A14()
{
  v2 = v0[19];
  v1 = v0[20];
  if (v1)
  {
    v3 = v0[21];
    if (!v3)
    {
      v21 = v0[20];
      goto LABEL_21;
    }

    v4 = v0[27];
    v5 = v0[21];
    swift_errorRetain();
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v4;
    v0[24] = *v4;
    *v4 = 0x8000000000000000;
    v9 = sub_1003084DC(v2, v1);
    v11 = *(v8 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v10;
      if (*(v8 + 24) < v14)
      {
        sub_1002CE8F0(v14, isUniquelyReferenced_nonNull_native);
        v15 = v0[24];
        v9 = sub_1003084DC(v2, v1);
        if ((v4 & 1) != (v16 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_14:
        if (v4)
        {
LABEL_15:
          v22 = v9;

          v23 = v0[24];
          v24 = v23[7];
          v25 = *(v24 + 8 * v22);
          *(v24 + 8 * v22) = v3;

LABEL_20:
          v34 = v0[27];
          v35 = *v34;
          *v34 = v23;
LABEL_21:

          v36 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
          v37 = swift_task_alloc();
          v0[33] = v37;
          *v37 = v0;
          v37[1] = sub_1002B1918;
          v38 = v0[32];
          v31 = v0[30];
          v28 = (v0 + 19);
          v29 = 0;
          v30 = 0;

          return TaskGroup.Iterator.next(isolation:)(v28, v29, v30, v31);
        }

LABEL_18:
        v23 = v0[24];
        v23[(v9 >> 6) + 8] |= 1 << v9;
        v27 = (v23[6] + 16 * v9);
        *v27 = v2;
        v27[1] = v1;
        *(v23[7] + 8 * v9) = v3;

        v32 = v23[2];
        v13 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v13)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v28, v29, v30, v31);
        }

        v23[2] = v33;
        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v26 = v9;
    sub_1002D143C();
    v9 = v26;
    if (v4)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v18 = v0[29];
  v19 = v0[28];
  (*(v0[31] + 8))(v0[32], v0[30]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002B1CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1002B1CF0, 0, 0);
}

uint64_t sub_1002B1CF0()
{
  v13 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  *(v0 + 48) = sub_100008D04(v2, qword_1003FAAB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Maintenance Activity - %s succeeded.", v7, 0xCu);
    sub_10000839C(v8);
  }

  v9 = *sub_1000080F8(*(v0 + 40), *(*(v0 + 40) + 24));
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_1002B1EBC;

  return sub_100242C38();
}

uint64_t sub_1002B1EBC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1002B204C;
  }

  else
  {
    v3 = sub_1002B1FD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002B1FD0()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v3 = v0[4];
  *(v0[2] + 16) = 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002B204C()
{
  v20 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_10021145C(v8, v7, &v19);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Maintenance Activity - %s failed %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  v13 = v0[8];
  v14 = v0[4];
  v15 = v0[2];
  *v15 = v0[3];
  v15[1] = v14;
  v16 = v0[4];
  *(v0[2] + 16) = v13;
  v18 = v0[1];

  return v18();
}

uint64_t sub_1002B222C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13appleaccountd27MaintenanceActivityProvider__accountStore;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MaintenanceActivityProvider()
{
  result = qword_1003E6638;
  if (!qword_1003E6638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B2330()
{
  sub_1001CFA84();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B23D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002B2418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_1002B0FC0(a1, v4, v5, v7, v6);
}

uint64_t sub_1002B24D8(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_1002B25CC;

  return v6(v2 + 16);
}

uint64_t sub_1002B25CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v5 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1002B2720()
{
  v0[2] = &_swiftEmptyDictionarySingleton;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Maintenance Activity - Starting grouped tasks", v4, 2u);
  }

  v5 = v0[3];

  sub_100005814(&qword_1003E6720, &qword_100348998);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 2;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1002B28EC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1002B28EC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1002B2A04, 0, 0);
}

uint64_t sub_1002B2A04()
{
  v1 = v0[4];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished all Maintenance Activities.", v4, 2u);
  }

  v5 = v0[2];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1002B2AD8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000EF88;

  return sub_1002B1440(a1, a2, v7, v6);
}

uint64_t sub_1002B2B8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  sub_10000839C(v0 + 6);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002B2BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_1002B1CCC(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1002B2C98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2CD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_1002B24D8(a1, v5);
}

uint64_t sub_1002B2D88()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider);
  }

  else
  {
    v3 = sub_1002B2FEC();
    v4 = type metadata accessor for MaintenanceActivityProvider();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    Dependency.init(dependencyId:config:)();
    *(v2 + 16) = v3;
    v7 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002B2E48()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MaintenanceActivityScheduler()
{
  result = qword_1003E6770;
  if (!qword_1003E6770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B2F54()
{
  sub_100260880();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *sub_1002B2FEC()
{
  v0 = type metadata accessor for ProtoAccountCleanupActivity();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF6B8, &qword_100346BB0);
  Dependency.init(dependencyId:config:)();
  v17[3] = v0;
  v17[4] = &off_1003B0B60;
  v17[0] = v3;
  v4 = sub_100305DA0(0, 1, 1, &_swiftEmptyArrayStorage);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100305DA0((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = sub_10003E968(v17, v0);
  v8 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v15 = v0;
  v16 = &off_1003B0B60;
  *&v14 = v12;
  v4[2] = v6 + 1;
  sub_10003E950(&v14, &v4[5 * v6 + 4]);
  sub_10000839C(v17);
  return v4;
}

double sub_1002B31D4()
{
  v0 = objc_opt_self();
  if ([v0 isCustomMaintenanceIntervalEnabled] && objc_msgSend(objc_opt_self(), "isInternalBuild"))
  {
    v1 = [v0 customMaintenanceIntervalMinutes];
    if (v1 <= 0)
    {
      v2 = 10;
    }

    else
    {
      v2 = v1;
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Maintenance interval - Custom %ld mins", v6, 0xCu);
    }

    return v2 * 60.0;
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Using Maintenance Interval - One Day", v11, 2u);
    }

    return 86400.0;
  }
}

void *sub_1002B33F4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10031B178(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_1002B34B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id), uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  if (a2 && (v12 = sub_1002B33F4(a4, a2)) != 0)
  {
    v13 = v12;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v23 = v13;

    v15 = a9;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v18 = 136315650;
      *(v18 + 4) = sub_10021145C(a7, a8, &v25);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = v15;
      *(v18 + 22) = 1024;
      v21 = v15;
      v22 = [v23 BOOLValue];

      *(v18 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Recipient %s has device capable of %@: %{BOOL}d", v18, 0x1Cu);
      sub_100083380(v19);

      sub_10000839C(v20);
    }

    else
    {
    }

    a5([v23 BOOLValue]);
  }

  else
  {
    a5(0);
  }
}

uint64_t sub_1002B3738(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    sub_1002B646C(&qword_1003E6980, &unk_1003E6930, AAMessagingDestination_ptr);
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a4;
  v8(a2, v5, a4);
}

void sub_1002B3838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000E9F18();
  if (v17)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_10005A40C(v16, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "error building destination: %@", v21, 0xCu);
      sub_100083380(v22);
    }

    swift_errorRetain();
    sub_1001A8DEC(v16);
    sub_10005A40C(v16, 1);
    sub_10005A40C(v16, 1);
  }

  else
  {
    v44 = v12;
    v45 = a6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA40);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Destination is valid!", v27, 2u);
    }

    v28 = sub_1002B4204(a1, type metadata accessor for InheritanceInvitationMessage, &unk_1003E6950, type metadata accessor for InheritanceInvitationMessage);
    if (v29 >> 60 == 15)
    {
      v30 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v31 = *(a7 + 16);
      v42 = v28;
      v43 = v29;
      v32.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1003431D0;
      *(v33 + 32) = v16;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v34 = v16;
      v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (a5)
      {
        a5 = String._bridgeToObjectiveC()();
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v46[0] = 0;
      v37 = [v31 sendMessage:v32.super.isa destinations:v35.super.isa sendFromHandleUri:a5 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v46];

      v38 = v46[0];
      if (v37)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;
        sub_100015D58(v42, v43);

        (*(v44 + 8))(v15, v11);
        sub_1001A8DEC(0);
        sub_10005A40C(v16, 0);
        return;
      }

      v40 = v46[0];
      v30 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v42, v43);
    }

    swift_errorRetain();
    sub_1001A8DEC(v30);
    sub_10005A40C(v16, 0);
  }
}

uint64_t sub_1002B3F8C(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  a2(0);
  sub_1002B5150(a3, a4);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v10;
}

uint64_t sub_1002B4204(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  a2(0);
  sub_1002B5150(a3, a4);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v10;
}

void sub_1002B44B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(void), uint64_t a9, void (*a10)(id, void (*)(void), uint64_t))
{
  v50 = a7;
  v51 = a5;
  v49 = a4;
  v52 = a1;
  v13 = a9;
  v12 = a10;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000E9F18();
  if (v20)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA40);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_10005A40C(v19, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "error building destination: %@", v24, 0xCu);
      sub_100083380(v25);
    }

    swift_errorRetain();
    a10(v19, a8, a9);
    sub_10005A40C(v19, 1);
    sub_10005A40C(v19, 1);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA40);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v48 = a6;
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Destination is valid!", v30, 2u);
    }

    v31 = sub_1002B4204(v52, type metadata accessor for InheritanceAccessKeyMessage, &qword_1003E21A8, type metadata accessor for InheritanceAccessKeyMessage);
    if (v32 >> 60 == 15)
    {
      v33 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v44 = a10;
      v45 = v15;
      v48 = a8;
      v46 = *(v50 + 16);
      v50 = v31;
      v52 = v32;
      v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1003431D0;
      *(v35 + 32) = v19;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v36 = v19;
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v47 = a9;
      if (v51)
      {
        v38 = String._bridgeToObjectiveC()();
      }

      else
      {
        v38 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v53[0] = 0;
      v40 = [v46 sendMessage:v34.super.isa destinations:v37.super.isa sendFromHandleUri:v38 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v53];

      v41 = v53[0];
      if (v40)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;
        sub_100015D58(v50, v52);

        (*(v45 + 8))(v18, v14);
        v48(0);
        sub_10005A40C(v19, 0);
        return;
      }

      v43 = v53[0];
      v33 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v50, v52);
      v13 = v47;
      a8 = v48;
      v12 = v44;
    }

    swift_errorRetain();
    v12(v33, a8, v13);
    sub_10005A40C(v19, 0);
  }
}

void sub_1002B4B0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v49 = a7;
  v50 = a5;
  v51 = a1;
  v12 = a9;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000E9F18();
  if (v19)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA40);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_10005A40C(v18, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "error building destination: %@", v23, 0xCu);
      sub_100083380(v24);
    }

    swift_errorRetain();
    sub_1001E0610(v18, a8, a9);
    sub_10005A40C(v18, 1);
    sub_10005A40C(v18, 1);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA40);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = a4;
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Destination is valid!", v29, 2u);
    }

    v30 = sub_1002B4204(v51, type metadata accessor for InheritanceInvitationResponseMessage, &qword_1003E2360, type metadata accessor for InheritanceInvitationResponseMessage);
    if (v31 >> 60 == 15)
    {
      v32 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v44 = v14;
      v45 = *(v49 + 16);
      v46 = a6;
      v48 = a8;
      v49 = v30;
      v51 = v31;
      v33.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1003431D0;
      *(v34 + 32) = v18;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v35 = v18;
      v36.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v47 = a9;
      if (v50)
      {
        v37 = String._bridgeToObjectiveC()();
      }

      else
      {
        v37 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v52[0] = 0;
      v39 = [v45 sendMessage:v33.super.isa destinations:v36.super.isa sendFromHandleUri:v37 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v52];

      v40 = v52[0];
      if (v39)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        sub_100015D58(v49, v51);

        (*(v44 + 8))(v17, v13);
        v48(0);
        sub_10005A40C(v18, 0);
        return;
      }

      v42 = v52[0];
      v32 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v49, v51);
      v12 = v47;
      a8 = v48;
    }

    swift_errorRetain();
    sub_1001E0610(v32, a8, v12);
    sub_10005A40C(v18, 0);
  }
}

uint64_t sub_1002B5150(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002B5198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v49 = a4;
  v50 = a5;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100083AA0(a8);
  sub_100083AA0(a8);
  sub_100083AA0(a8);
  v17 = sub_1000E9F18();
  if ((v18 & 1) == 0)
  {
    v47 = v13;
    v48 = a6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA40);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Destination is valid!", v28, 2u);
    }

    v29 = sub_1002B4204(a1, type metadata accessor for InheritanceAccessKeyMessage, &qword_1003E21A8, type metadata accessor for InheritanceAccessKeyMessage);
    if (v30 >> 60 == 15)
    {
      v31 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v43 = *(a7 + 16);
      v45 = v29;
      v46 = v30;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1003431D0;
      *(v32 + 32) = v17;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v33 = v17;
      v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v50)
      {
        v35 = String._bridgeToObjectiveC()();
      }

      else
      {
        v35 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      v36 = Set._bridgeToObjectiveC()().super.isa;
      v51[0] = 0;
      v37 = isa;
      v38 = [v43 sendMessage:isa destinations:v34.super.isa sendFromHandleUri:v35 responseIdentifier:0 fireAndForget:0 requiredCapabilities:v36 lackingCapabilities:0 error:v51];

      v39 = v51[0];
      if (v38)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        sub_100015D58(v45, v46);

        (*(v47 + 8))(v16, v12);
        if (a8)
        {

          a8(0);
          sub_100083B0C(a8);
          sub_10005A40C(v17, 0);
          sub_100083B0C(a8);
          sub_100083B0C(a8);
        }

        else
        {
          sub_10005A40C(v17, 0);
        }

        return;
      }

      v41 = v51[0];
      v31 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v45, v46);
    }

    sub_100083AA0(a8);
    swift_errorRetain();
    sub_1001E061C(v31, a8);
    sub_10005A40C(v17, 0);

    sub_100083B0C(a8);
    sub_100083B0C(a8);
    sub_100083B0C(a8);
    return;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA40);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  sub_10005A40C(v17, 1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = _convertErrorToNSError(_:)();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "error building destination: %@", v22, 0xCu);
    sub_100083380(v23);
  }

  sub_100083AA0(a8);
  sub_100135D08(v17, 1);
  sub_1001E061C(v17, a8);
  sub_10005A40C(v17, 1);
  sub_10005A40C(v17, 1);

  sub_100083B0C(a8);
  sub_100083B0C(a8);

  sub_100083B0C(a8);
}

void sub_1002B5858(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v48 = a7;
  v49 = a5;
  v50 = a1;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E9F18();
  if (v18)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_10005A40C(v17, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "error building destination: %@", v22, 0xCu);
      sub_100083380(v23);
    }

    swift_errorRetain();
    sub_1001E039C(v17, a8);
    sub_10005A40C(v17, 1);
    sub_10005A40C(v17, 1);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA40);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v47 = a4;
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Destination is valid!", v28, 2u);
    }

    v29 = sub_1002B4204(v50, type metadata accessor for InheritanceInvitationMessage, &unk_1003E6950, type metadata accessor for InheritanceInvitationMessage);
    if (v30 >> 60 == 15)
    {
      v31 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v43 = v13;
      v44 = *(v48 + 16);
      v45 = a6;
      v47 = a8;
      v48 = v29;
      v50 = v30;
      v32.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1003431D0;
      *(v33 + 32) = v17;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v34 = v17;
      v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v46 = a9;
      if (v49)
      {
        v36 = String._bridgeToObjectiveC()();
      }

      else
      {
        v36 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v51[0] = 0;
      v38 = [v44 sendMessage:v32.super.isa destinations:v35.super.isa sendFromHandleUri:v36 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v51];

      v39 = v51[0];
      if (v38)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        sub_100015D58(v48, v50);

        (*(v43 + 8))(v16, v12);
        sub_1001E039C(0, v47);
        sub_10005A40C(v17, 0);
        return;
      }

      v41 = v51[0];
      v31 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v48, v50);
      a8 = v47;
    }

    swift_errorRetain();
    sub_1001E039C(v31, a8);
    sub_10005A40C(v17, 0);
  }
}

uint64_t sub_1002B5E98(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  v11 = sub_1000E9F18();
  v12 = v11;
  if (v13)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10005A40C(v12, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "error building destination: %@", v17, 0xCu);
      sub_100083380(v18);
    }

    a5[2](a5, 0);
    sub_10005A40C(v12, 1);
    sub_10005A40C(v12, 1);
  }

  else
  {
    v21 = qword_1003D7F20;
    v38 = v11;
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA40);

    v23 = a3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = a4;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_10021145C(a1, a2, aBlock);
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Look up of Recipient %s for device capable of %@", v26, 0x16u);
      sub_100083380(v27);
      a4 = v37;

      sub_10000839C(v28);
    }

    v30 = *(a4 + 16);
    sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1003431D0;
    *(v31 + 32) = v38;
    sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
    v32 = v38;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = sub_1002B63BC;
    v34[4] = v10;
    v34[5] = a1;
    v34[6] = a2;
    v34[7] = v23;
    aBlock[4] = sub_1002B6424;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B3738;
    aBlock[3] = &unk_1003B2C20;
    v35 = _Block_copy(aBlock);
    sub_100135D08(v12, 0);

    v36 = v23;

    [v30 fetchCapability:v36 destinations:isa completion:v35];
    sub_10005A40C(v12, 0);
    _Block_release(v35);

    sub_10005A40C(v12, 0);
  }
}

uint64_t sub_1002B6384()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002B63D4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002B6454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B646C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100016034(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002B64E0(uint64_t a1, unint64_t a2)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Checking if from Sender Handle is a Known Sender", v7, 2u);
  }

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    [v8 connectToDaemonWithLaunch:0 capabilities:kFZListenerCapChats | kFZListenerCapManageStatus | kFZListenerCapAccounts | kFZListenerCapIDQueries | (kFZListenerCapMessageHistory | kFZListenerCapFileProvider) | kFZListenerCapFileTransfers | kFZListenerCapOnDemandChatRegistry blockUntilConnected:1];
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = [result activeIMessageAccount];

    v13 = objc_allocWithZone(IMHandle);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 initWithAccount:v14 ID:v15 alreadyCanonical:0];

    v17 = [objc_opt_self() sharedRegistry];
    v18 = [v17 chatWithHandle:v16];

    v19 = v14;
    v20 = v18;
    v21 = v16;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412802;
      *(v24 + 4) = v19;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v20;
      *v25 = v19;
      v25[1] = v20;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      v25[2] = v21;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "IMAccount %@\nIMChat: %@\nIMHandle: %@", v24, 0x20u);
      sub_100005814(&unk_1003D9140, &qword_10033E640);
      swift_arrayDestroy();
    }

    v29 = [v20 isFiltered];

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_10021145C(a1, a2, &v34);
      *(v32 + 12) = 1024;
      *(v32 + 14) = v29 == 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Handle %s is known? %{BOOL}d", v32, 0x12u);
      sub_10000839C(v33);
    }

    else
    {
    }

    return (v29 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B6998(uint64_t *a1)
{
  v25 = type metadata accessor for CloudShareInfo();
  v3 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003E6B88, &qword_100348C00);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v29 = v1;
  v30 = a1;
  v14 = v1 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1002B76C8();
  v16 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    v17 = v29;
    type metadata accessor for ShareMessage(0);
    v20 = *(*v17 + 48);
    v21 = *(*v17 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v6;
    v18 = v27;
    v37 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v29;
    *(v29 + 16) = v38;
    v36 = 1;
    sub_1002B771C(&unk_1003DD720, &type metadata accessor for UUID);
    v19 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 32))(v17 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID, v9, v19);
    v35 = 2;
    sub_1002B771C(&qword_1003E21D0, type metadata accessor for CloudShareInfo);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001D9D08(v5, v17 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo);
    v34 = 3;
    *(v17 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_finalizeSetup) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    type metadata accessor for AnalyticsContextType(0);
    v33 = 4;
    sub_1002B771C(&qword_1003DCE08, type metadata accessor for AnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v31;
    LOBYTE(v19) = v32;
    (*(v18 + 8))(v13, v10);
    v24 = v17 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
    *v24 = v23;
    *(v24 + 8) = v19;
  }

  sub_10000839C(v30);
  return v17;
}

uint64_t sub_1002B6EF0()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x666E496572616873;
  v4 = 0x657A696C616E6966;
  if (v1 != 3)
  {
    v4 = 2003790950;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6169646F74737563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002B6F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002B7B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002B6FBC(uint64_t a1)
{
  v2 = sub_1002B76C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002B6FF8(uint64_t a1)
{
  v2 = sub_1002B76C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002B7034()
{
  v1 = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1002543EC(v0 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1002B7108()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for CloudShareInfo();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002B71F4(void *a1)
{
  v21 = type metadata accessor for CloudShareInfo();
  v2 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E6B98, &qword_100348C08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1002B76C8();
  v15 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v32 = *(v15 + 16);
  v31 = 0;
  sub_1000E59BC();
  v16 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v24 = v10;
  (*(v22 + 16))(v8, v15 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID, v5);
  v30 = 1;
  sub_1002B771C(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v22 + 8))(v8, v5);
  sub_1000E4E34(v15 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, v4);
  v29 = 2;
  sub_1002B771C(&qword_1003E21C0, type metadata accessor for CloudShareInfo);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1002543EC(v4);
  v18 = v24;
  v19 = *(v15 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_finalizeSetup);
  v28 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = *(v15 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow + 8);
  v25 = *(v15 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow);
  v26 = v20;
  v27 = 4;
  type metadata accessor for AnalyticsContextType(0);
  sub_1002B771C(&qword_1003DCE20, type metadata accessor for AnalyticsContextType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v18 + 8))(v13, v9);
}

uint64_t sub_1002B7648@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ShareMessage(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1002B6998(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_1002B76C8()
{
  result = qword_1003E6B90;
  if (!qword_1003E6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6B90);
  }

  return result;
}

uint64_t sub_1002B771C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002B7788(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = type metadata accessor for CloudShareInfo();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
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
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1002B78B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = type metadata accessor for CloudShareInfo();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1002B79E0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CloudShareInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002B7A70()
{
  result = qword_1003E6C38;
  if (!qword_1003E6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6C38);
  }

  return result;
}

unint64_t sub_1002B7AC8()
{
  result = qword_1003E6C40;
  if (!qword_1003E6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6C40);
  }

  return result;
}

unint64_t sub_1002B7B20()
{
  result = qword_1003E6C48;
  if (!qword_1003E6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6C48);
  }

  return result;
}

uint64_t sub_1002B7B74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E496572616873 && a2 == 0xE90000000000006FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696C616E6966 && a2 == 0xED00007075746553 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1002B7D38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PushMessage();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v37 - v9);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA40);
  sub_1002B8794(a1, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = v8;
    v15 = v14;
    v38 = swift_slowAlloc();
    v40 = v38;
    v41 = 0;
    *v15 = 136315138;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v41 = 0xD000000000000025;
    v42 = 0x8000000100333440;
    v16 = [*v10 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21 = v41;
    v22 = v42;
    sub_1002B87F8(v10);
    v23 = sub_10021145C(v21, v22, &v40);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Terms push received. Processing message and posting CFU %s", v15, 0xCu);
    sub_10000839C(v38);

    v8 = v39;

    v24 = *(a1 + 32);
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_1002B87F8(v10);
    v24 = *(a1 + 32);
    if (!v24)
    {
LABEL_11:
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Can't process this message, missing altDSID or doesn't match with primary account.", v28, 2u);
      }

      return;
    }
  }

  if ((sub_1002B816C(*(a1 + 24), v24) & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = *(a1 + 8);
  if (v25 == 4)
  {
    v29 = sub_1000080F8((v2 + 56), *(v2 + 80));
    v30 = *(a1 + 16);
    v41 = AAFollowUpIdentifierVerifyTerms;
    v42 = v30;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v46 = 1;
    v31 = *v29;
    v32 = AAFollowUpIdentifierVerifyTerms;

    sub_1002D3AB8(&v41);
  }

  else if (v25 == 3)
  {
    sub_1002B8248(a1);
  }

  else
  {
    sub_1002B8794(a1, v8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v36 = qword_100348D90[v8[8]];
      sub_1002B87F8(v8);
      *(v35 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v33, v34, "TermsPushServiceDelegate process message invoked on unknown command: %ld", v35, 0xCu);
    }

    else
    {
      sub_1002B87F8(v8);
    }
  }
}

uint64_t sub_1002B816C(uint64_t a1, uint64_t a2)
{
  v5 = [*(*sub_1000080F8((v2 + 16) *(v2 + 40)) + 16)];
  if (v5 && (v6 = v5, v7 = [v5 aa_altDSID], v6, v7))
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1002B8248(uint64_t a1)
{
  v2 = v1;
  if (sub_1002B8474())
  {

    v4 = *(a1 + 16);
    v5 = AAFollowUpUserInfoTermsDependentAltDSID;
    *&v16[0] = AAFollowUpUserInfoTermsDependentAltDSID;
    type metadata accessor for AAFollowUpUserInfo(0);
    sub_1002B873C();
    v6 = v5;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v7 = sub_10031B060(v17), (v8 & 1) != 0))
    {
      sub_10000DB1C(*(v4 + 56) + 32 * v7, v16);
      sub_1000526B0(v17);
    }

    else
    {
      sub_1000526B0(v17);
      memset(v16, 0, sizeof(v16));
    }

    v9 = sub_1000080F8((v2 + 56), *(v2 + 80));
    v17[0] = AAFollowUpIdentifierVerifyTerms;
    v17[1] = v4;
    memset(&v17[2], 0, 24);
    v18 = 1;
    v10 = *v9;
    v11 = AAFollowUpIdentifierVerifyTerms;

    sub_1002D2E28(v17, sub_1002B8594, 0);

    sub_100008D3C(v16, &qword_1003D87C8, qword_100344800);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Can't process this push, it does not contain required terms additional context.", v14, 2u);
    }
  }
}

uint64_t sub_1002B8474()
{
  v1 = *(v0 + 16);
  v2 = AAFollowUpUserInfoTermsServerProvidedContext;
  v9[0] = AAFollowUpUserInfoTermsServerProvidedContext;
  type metadata accessor for AAFollowUpUserInfo(0);
  sub_1002B873C();
  v3 = v2;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v4 = sub_10031B060(v8), (v5 & 1) != 0))
  {
    sub_10000DB1C(*(v1 + 56) + 32 * v4, v9);
    sub_1000526B0(v8);
    sub_100005814(&qword_1003DBB88, &qword_10033FC30);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000526B0(v8);
    return 0;
  }
}

void sub_1002B8594(uint64_t a1)
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
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      v5 = _convertErrorToNSError(_:)();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to post Terms notification with error %@", v3, 0xCu);
      sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

unint64_t sub_1002B873C()
{
  result = qword_1003D8430;
  if (!qword_1003D8430)
  {
    type metadata accessor for AAFollowUpUserInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8430);
  }

  return result;
}

uint64_t sub_1002B8794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B87F8(uint64_t a1)
{
  v2 = type metadata accessor for PushMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_1002B8854()
{
  result = String._bridgeToObjectiveC()();
  qword_1003E6D18 = result;
  return result;
}

NSString sub_1002B888C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003E6D20 = result;
  return result;
}

NSString sub_1002B88C4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003E6D28 = result;
  return result;
}

SecKeyRef sub_1002B8920()
{
  if (qword_1003D7E98 != -1)
  {
    swift_once();
  }

  if (qword_1003D7E90 != -1)
  {
    swift_once();
  }

  if (qword_1003D7E88 != -1)
  {
    swift_once();
  }

  ApplePinned = SecPolicyCreateApplePinned();
  trust = 0;
  type metadata accessor for SecCertificate(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = SecTrustCreateWithCertificates(isa, ApplePinned, &trust);

  if (v2 || !trust)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error creating SecTrust from certificates, unable to generate public signing key: %d", v8, 8u);
    }

    goto LABEL_28;
  }

  error = 0;
  v3 = trust;
  if (!SecTrustEvaluateWithError(v3, &error))
  {
    v9 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_1002B9344();
      swift_allocError();
      *v10 = v9;
      v11 = qword_1003D7F20;
      v12 = v9;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA40);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = _convertErrorToNSError(_:)();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Error evaluating certificate trust, unable to generate public signing key: %@", v16, 0xCu);
        sub_100083380(v17);
      }

      else
      {
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
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Certificates are not trusted, unable to generate public signing key.", v22, 2u);
      }
    }

LABEL_28:
    v4 = 0;
    goto LABEL_29;
  }

  v4 = SecTrustCopyKey(v3);

LABEL_29:
  return v4;
}

BOOL sub_1002B8DE4(__SecKey *a1)
{
  v16 = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = Data._bridgeToObjectiveC()().super.isa;
  v4 = SecKeyVerifySignature(a1, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, v3, &v16);

  v5 = v16;
  if (!v16)
  {
    return v4 != 0;
  }

  type metadata accessor for CFError(0);
  sub_1002B9344();
  swift_allocError();
  *v6 = v5;
  v7 = qword_1003D7F20;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA40);
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
    _os_log_impl(&_mh_execute_header, v10, v11, "Error validating signature: %@", v12, 0xCu);
    sub_100083380(v13);
  }

  else
  {
  }

  return 0;
}

BOOL sub_1002B9014(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  if (v3)
  {
    v5 = a3[4];
    v6 = a3[5];
    sub_100015D6C(v5, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = SecCertificateCreateWithData(0, isa);

    if (!v8)
    {
LABEL_10:

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA40);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to create certificate from data.", v16, 2u);
      }

      sub_100012324(v5, v6);
LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

    v9 = a3 + 7;
    while (1)
    {
      v10 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100012324(v5, v6);

      if (!--v3)
      {
        break;
      }

      v11 = v9 + 2;
      v5 = *(v9 - 1);
      v6 = *v9;
      sub_100015D6C(v5, *v9);
      v12 = Data._bridgeToObjectiveC()().super.isa;
      v8 = SecCertificateCreateWithData(0, v12);

      v9 = v11;
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_1002B8920();

  if (!v14)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    v14 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v19, "Unable to extract public signing key from certificate chain.", v20, 2u);
    }

    goto LABEL_21;
  }

  v17 = sub_1002B8DE4(v14);
LABEL_22:

  return v17;
}

unint64_t sub_1002B9344()
{
  result = qword_1003E6DD0;
  if (!qword_1003E6DD0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DD0);
  }

  return result;
}

uint64_t sub_1002B939C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100007D58();

  *a1 = v2;
  return result;
}

unint64_t sub_1002B93DC(unint64_t result)
{
  LODWORD(v1) = result;
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        goto LABEL_24;
      }

      v1 = &kPCSServiceBladerunner;
      v2 = kPCSServiceBladerunner;
      if (kPCSServiceBladerunner)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_15;
    }

    if (result == 2)
    {
LABEL_18:
      v2 = kPCSServiceLiverpool;
      if (!kPCSServiceLiverpool)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_27:
      v4 = v2;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }

    if (result != 3)
    {
      goto LABEL_22;
    }

    v1 = &kPCSServicePianoMover;
    v2 = kPCSServicePianoMover;
    if (kPCSServicePianoMover)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  if (v1 <= 6)
  {
LABEL_15:
    if (v1 != 5)
    {
      goto LABEL_26;
    }

    v2 = kPCSServiceNews;
    if (kPCSServiceNews)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v1 != 7)
  {
    if (v1 == 8)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

LABEL_20:
  v2 = kPCSServiceSafari;
  if (kPCSServiceSafari)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_22:
  v2 = kPCSServiceNotes;
  if (kPCSServiceNotes)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_24:
  v2 = kPCSServiceHyperion;
  if (kPCSServiceHyperion)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_26:
  v2 = kPCSServiceSharing;
  if (kPCSServiceSharing)
  {
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B9540(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 != 5)
      {
        return 0;
      }

      v1 = &selRef_webAccessNotificationTextForKey_;
    }

    else
    {
      v2 = &selRef_webAccessNotificationTextForKey_;
      if (a1 != 8)
      {
        v2 = &selRef_confettiWebAccessNotificationTextForKey_;
      }

      if (a1 == 7)
      {
        v1 = &selRef_webAccessNotificationTextForKey_;
      }

      else
      {
        v1 = v2;
      }
    }
  }

  else
  {
    v1 = &selRef_webAccessNotificationTextForKey_;
  }

  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 *v1];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

Swift::Int sub_1002B9748()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003490E8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1002B97D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003490E8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1002B981C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B9860(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002B9860(uint64_t a1)
{
  if (a1 > 10)
  {
    if (a1 <= 21)
    {
      if (a1 == 11)
      {
        return 5;
      }

      if (a1 == 12)
      {
        return 6;
      }
    }

    else
    {
      switch(a1)
      {
        case 22:
          return 7;
        case 210:
          return 8;
        case 241:
          return 9;
      }
    }
  }

  else if (a1 <= 3)
  {
    if (a1 == 2)
    {
      return 0;
    }

    if (a1 == 3)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return 2;
      case 7:
        return 3;
      case 9:
        return 4;
    }
  }

  return 10;
}

uint64_t sub_1002B9920(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1002B9860(a1);
  if (v6 <= 4)
  {
    v11 = 0xEB0000000072656ELL;
    v12 = 0x6E75726564616C42;
    v13 = 0xE90000000000006CLL;
    v14 = 0x6F6F70726576694CLL;
    v15 = 0xEA00000000007265;
    v16 = 0x766F4D6F6E616950;
    if (v6 != 3)
    {
      v16 = 0x7365746F4ELL;
      v15 = 0xE500000000000000;
    }

    if (v6 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (v6)
    {
      v12 = 0x6E6F697265707948;
      v11 = 0xE800000000000000;
    }

    if (v6 <= 1)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (v6 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else if (v6 > 7)
  {
    if (v6 == 8)
    {
      v9 = 0xD000000000000013;
      v10 = 0x8000000100333530;
    }

    else
    {
      if (v6 != 9)
      {
        goto LABEL_31;
      }

      v10 = 0x8000000100333510;
      v9 = 0xD000000000000017;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x676E6972616853;
    if (v6 != 6)
    {
      v8 = 0x697261666153;
      v7 = 0xE600000000000000;
    }

    if (v6 == 5)
    {
      v9 = 0x72617073646C6546;
    }

    else
    {
      v9 = v8;
    }

    if (v6 == 5)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v7;
    }
  }

  if (v9 == a2 && v10 == a3)
  {

    return 1;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return 1;
  }

LABEL_31:
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
    v23 = swift_slowAlloc();
    v24 = v23;
    *v22 = 134218242;
    *(v22 + 4) = a1;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_10021145C(a2, a3, &v24);
    _os_log_impl(&_mh_execute_header, v20, v21, "Requested PCS identity (%ld, %s) is not allowed.", v22, 0x16u);
    sub_10000839C(v23);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for PCSServiceIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PCSServiceIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002B9D88()
{
  result = qword_1003E6DD8;
  if (!qword_1003E6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DD8);
  }

  return result;
}

unint64_t sub_1002B9DE0()
{
  result = qword_1003E6DE0;
  if (!qword_1003E6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DE0);
  }

  return result;
}

unint64_t sub_1002B9E3C()
{
  result = qword_1003E6DE8;
  if (!qword_1003E6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DE8);
  }

  return result;
}

unint64_t sub_1002B9E94()
{
  result = qword_1003E6DF0;
  if (!qword_1003E6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DF0);
  }

  return result;
}

unint64_t sub_1002B9EEC()
{
  result = qword_1003E6DF8;
  if (!qword_1003E6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DF8);
  }

  return result;
}

unint64_t sub_1002B9F58()
{
  result = qword_1003E6E00;
  if (!qword_1003E6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6E00);
  }

  return result;
}

uint64_t sub_1002B9FAC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for WalrusWebAccessInfo(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003E6FA0, &qword_1003492B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v63 - v13;
  v15 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  if (*(*(a1 + 144) + 16))
  {
    v19 = *(v3 + 40);
    v64 = v3;
    v20 = *(*sub_1000080F8((v3 + 16), v19) + 16);
    v68[0] = 0;
    v21 = [v20 walrusStatus:v68];
    if (v68[0])
    {
      swift_willThrow();
      goto LABEL_13;
    }

    if (v21 != 1 || (sub_1002C0674() & 1) != 0)
    {
LABEL_13:
      sub_1002BC620(v67 + *(v7 + 60), v18, type metadata accessor for WalrusPCSEncryptionMaterial);
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      v65 = sub_100008D04(v29, qword_1003FAA40);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Validating encryption material.", v32, 2u);
      }

      v33 = sub_1002C0CD0();
      if (v34 >> 60 != 15)
      {
        v35 = v33;
        v36 = v34;
        (*(v11 + 16))(v14, v64 + OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__signatureValidator, v10);
        Dependency.wrappedValue.getter();
        (*(v11 + 8))(v14, v10);
        v37 = *(v15 + 56);
        v38 = *&v18[v37];
        v39 = *&v18[v37 + 8];
        v40 = sub_1002B9014(v35, v36, *&v18[*(v15 + 60)]);
        sub_10000839C(v68);
        if (v40)
        {
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v41, v42, "Encryption material signature is valid!", v43, 2u);
          }

          v44 = v66;
          sub_1002BC620(v67, v66, type metadata accessor for WalrusWebAccessInfo);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v65 = a2;
            v49 = v48;
            v68[0] = v48;
            *v47 = 136315138;
            v63 = v35;
            v50 = *(v44 + 112);
            v51 = *(v44 + 120);

            sub_1002BC688(v44, type metadata accessor for WalrusWebAccessInfo);
            v52 = v50;
            v35 = v63;
            v53 = sub_10021145C(v52, v51, v68);

            *(v47 + 4) = v53;
            _os_log_impl(&_mh_execute_header, v45, v46, "Fetching PCS keys for web session consent uuid: %s", v47, 0xCu);
            sub_10000839C(v49);
            a2 = v65;
          }

          else
          {

            sub_1002BC688(v44, type metadata accessor for WalrusWebAccessInfo);
          }

          sub_1002BA81C(v67, a2, a3);
          sub_100015D58(v35, v36);
          return sub_1002BC688(v18, type metadata accessor for WalrusPCSEncryptionMaterial);
        }

        sub_100015D58(v35, v36);
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Failed to validate encryption material!", v56, 2u);
      }

      sub_1002BC0A4();
      swift_allocError();
      *v57 = 1;
      a2();

      return sub_1002BC688(v18, type metadata accessor for WalrusPCSEncryptionMaterial);
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAA40);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Can't provide PCS auth request, webAccessInfo validation failed.", v61, 2u);
    }

    sub_1002BC0A4();
    swift_allocError();
    *v62 = 1;
    a2();
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA40);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "WebAccessInfo is invalid, no app identities provided.", v25, 2u);
    }

    sub_1002BC0A4();
    v26 = swift_allocError();
    *v27 = 1;
    (a2)(v26, 0, 1);
  }
}

uint64_t sub_1002BA81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = type metadata accessor for WalrusWebAccessInfo(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003E6FB0, &qword_1003492B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA40);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v8;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Generating URL configuration for PCS auth request.", v18, 2u);
    v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = v27;
  }

  (*(v11 + 16))(v14, v4 + OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__urlBagBuilder, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  sub_1002BC620(a1, v9, type metadata accessor for WalrusWebAccessInfo);
  v19 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  sub_1002BD0FC(v9, v20 + v19, type metadata accessor for WalrusWebAccessInfo);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v29;
  v21[1] = a3;
  v22 = objc_opt_self();

  v23 = [v22 sharedServer];
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002BC8C0;
  *(v24 + 24) = v20;
  aBlock[4] = sub_1002BC99C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E7C0;
  aBlock[3] = &unk_1003B2EB8;
  v25 = _Block_copy(aBlock);

  [v23 configurationWithCompletion:v25];
  _Block_release(v25);

  return sub_10000839C(v31);
}

uint64_t sub_1002BAC1C()
{
  sub_10000839C((v0 + 16));

  sub_10000839C((v0 + 64));
  v1 = OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__urlBagBuilder;
  v4 = sub_100005814(&qword_1003E6FB0, &qword_1003492B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__signatureValidator;
  v6 = sub_100005814(&qword_1003E6FA0, &qword_1003492B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1002BAD9C()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003E6E58, &unk_1003DF628, &unk_100349290);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003E6E60, &qword_1003DF660, &qword_1003436C0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002BAF04(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  sub_100012D04(a1, v19, &qword_1003E6FB8, &qword_1003492C0);
  if (v20)
  {
    v9 = *&v19[0];
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA40);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = _convertErrorToNSError(_:)();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "No URL configuration, unable to build PCS auth request: %@", v13, 0xCu);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    (a4)(v9, 0, 1);
  }

  else
  {
    sub_10003E950(v19, v18);
    v17 = sub_1000080F8(v18, v18[3]);
    sub_1002BC0F8(a3, *v17, a4, a5, a2);
    return sub_10000839C(v18);
  }
}

uint64_t sub_1002BB0F4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v73 = a4;
  v13 = type metadata accessor for WalrusWebAccessInfo(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v67 - v18;
  v20 = __chkstk_darwin(v17);
  v23 = &v67 - v22;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA40);
    sub_1002BC620(a2, v23, type metadata accessor for WalrusWebAccessInfo);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a3;
      v29 = swift_slowAlloc();
      *&v74[0] = v29;
      *v27 = 136315138;
      v30 = *(v23 + 16);
      v31 = *(v23 + 17);

      sub_1002BC688(v23, type metadata accessor for WalrusWebAccessInfo);
      v32 = sub_10021145C(v30, v31, v74);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to verify arming for service %s abandoning key fetch", v27, 0xCu);
      sub_10000839C(v29);
      a3 = v28;
    }

    else
    {

      sub_1002BC688(v23, type metadata accessor for WalrusWebAccessInfo);
    }

    swift_errorRetain();
    a3(a1, 0, 1);
  }

  else
  {
    v68 = v20;
    v69 = v21;
    v70 = a6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA40);
    sub_1002BC620(a2, v19, type metadata accessor for WalrusWebAccessInfo);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v71 = a5;
    v72 = a3;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67 = a7;
      v39 = v38;
      *&v74[0] = v38;
      *v37 = 136315138;
      v40 = a2;
      v42 = *(v19 + 16);
      v41 = *(v19 + 17);

      sub_1002BC688(v19, type metadata accessor for WalrusWebAccessInfo);
      v43 = v42;
      a2 = v40;
      v44 = sub_10021145C(v43, v41, v74);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Service %s is armed, continue with PCS key fetch", v37, 0xCu);
      sub_10000839C(v39);
      a7 = v67;
    }

    else
    {

      sub_1002BC688(v19, type metadata accessor for WalrusWebAccessInfo);
    }

    v46 = *(a2 + 144);
    v47 = *(v46 + 16);
    v48 = _swiftEmptyArrayStorage;
    if (v47)
    {
      v67 = a2;
      *&v74[0] = _swiftEmptyArrayStorage;
      sub_1002E0224(0, v47, 0);
      v48 = *&v74[0];
      v49 = (v46 + 80);
      do
      {
        v50 = *v49;
        v49 += 72;
        v51 = sub_1002B93DC(v50);
        *&v74[0] = v48;
        v54 = v48[2];
        v53 = v48[3];
        if (v54 >= v53 >> 1)
        {
          v56 = a7;
          v57 = v51;
          v58 = v52;
          sub_1002E0224((v53 > 1), v54 + 1, 1);
          v52 = v58;
          v51 = v57;
          a7 = v56;
          v48 = *&v74[0];
        }

        v48[2] = v54 + 1;
        v55 = &v48[2 * v54];
        v55[4] = v51;
        v55[5] = v52;
        --v47;
      }

      while (v47);
      a2 = v67;
    }

    v59 = *(v68 + 60);
    sub_1002BC620(a2, v16, type metadata accessor for WalrusWebAccessInfo);
    sub_100040738(a7, v74);
    v60 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v61 = (v14 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = v70;
    *(v62 + 16) = v71;
    *(v62 + 24) = v63;
    sub_1002BD0FC(v16, v62 + v60, type metadata accessor for WalrusWebAccessInfo);
    sub_10003E950(v74, v62 + v61);
    v64 = (v62 + ((v61 + 47) & 0xFFFFFFFFFFFFFFF8));
    v65 = v73;
    *v64 = v72;
    v64[1] = v65;

    v66 = v63;

    sub_1002BB8D8(v48, a2 + v59, sub_1002BCEE0, v62);
  }
}

uint64_t sub_1002BB700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void *, uint64_t, BOOL), uint64_t a7)
{
  v26 = a7;
  v27 = a6;
  v11 = type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100005814(&qword_1003E6FC8, &qword_1003492D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v26 - v17);
  sub_100012D04(a1, &v26 - v17, &qword_1003E6FC8, &qword_1003492D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v20 = 0;
    v21 = *v18;
  }

  else
  {
    sub_1002BD0FC(v18, v14, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
    v22 = *(v14 + *(v11 + 20));
    v23 = sub_1000080F8(a5, a5[3]);
    v21 = sub_1002BD1EC(a3, a4, v14, v22, *v23);
    v20 = v24;
    sub_1002BC688(v14, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
  }

  v27(v21, v20, EnumCaseMultiPayload == 1);
  return sub_1002BEBB8(v21, v20, EnumCaseMultiPayload == 1);
}

void sub_1002BB8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = *(v4 + 56);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_1002BC620(a2, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalrusPCSEncryptionMaterial);
  v14 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v4;
  sub_1002BD0FC(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for WalrusPCSEncryptionMaterial);
  aBlock[4] = sub_1002BD164;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BBFE8;
  aBlock[3] = &unk_1003B2FA8;
  v16 = _Block_copy(aBlock);

  [v12 pcsKeysForServices:isa completion:v16];
  _Block_release(v16);
}

uint64_t sub_1002BBACC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100005814(&qword_1003E6FC8, &qword_1003492D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v40 - v14);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA40);
    swift_errorRetain();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = a4;
      v43 = v41;
      *v19 = 136315394;
      v21 = Array.description.getter();
      v23 = sub_10021145C(v21, v22, &v43);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      v24 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v24;
      *v20 = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch encrypted keys for services %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v41);
      a4 = v42;
    }

    *v15 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a4(v15);

    return sub_100008D3C(v15, &qword_1003E6FC8, &qword_1003492D0);
  }

  if (!*(a1 + 16))
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA40);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      v35 = Array.description.getter();
      v37 = sub_10021145C(v35, v36, &v43);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "No keys found for any services %s.", v33, 0xCu);
      sub_10000839C(v34);
    }

    sub_1002BC0A4();
    v38 = swift_allocError();
    *v39 = 2;
    *v15 = v38;
    swift_storeEnumTagMultiPayload();
    a4(v15);
    return sub_100008D3C(v15, &qword_1003E6FC8, &qword_1003492D0);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100008D04(v26, qword_1003FAA40);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Successfully fetched keys, time for encryption.", v29, 2u);
  }

  return sub_1002BDF48(a1, a7, a4, a5);
}

void sub_1002BBFE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_100005814(&qword_1003E6FC0, &qword_1003492C8);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

unint64_t sub_1002BC0A4()
{
  result = qword_1003E6FA8;
  if (!qword_1003E6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FA8);
  }

  return result;
}

uint64_t sub_1002BC0F8(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for WalrusWebAccessInfo(0);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v56[3] = type metadata accessor for DaemonSetupServiceURLBag();
  v56[4] = &off_1003B5708;
  v56[0] = a2;
  (*(v14 + 16))(v17, a5 + OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__accountStore, v13);

  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v18 = [*(*sub_1000080F8(aBlock v52) + 16)];
  sub_10000839C(aBlock);
  if (v18)
  {
    v45 = sub_1000080F8((a5 + 64), *(a5 + 88));
    v19 = a1[15];
    v46 = a1[14];
    v47 = v19;
    v48 = a1[16];
    v44 = a4;
    v49 = a1[17];
    sub_1002BC620(a1, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalrusWebAccessInfo);
    sub_100040738(v56, v55);
    v20 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v21 = a3;
    v22 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1002BD0FC(v12, v25 + v20, type metadata accessor for WalrusWebAccessInfo);
    v26 = (v25 + v22);
    v27 = v44;
    *v26 = v21;
    v26[1] = v27;
    *(v25 + v23) = a5;
    *(v25 + v24) = v18;
    sub_10003E950(v55, v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
    v28 = *(*v45 + 16);

    v29 = v18;
    v31 = v46;
    v30 = v47;
    v32 = String._bridgeToObjectiveC()();
    v34 = v48;
    v33 = v49;
    v35 = String._bridgeToObjectiveC()();
    v36 = swift_allocObject();
    v36[2] = v34;
    v36[3] = v33;
    v36[4] = sub_1002BCBCC;
    v36[5] = v25;
    v36[6] = v31;
    v36[7] = v30;
    v53 = sub_1002BCCD8;
    v54 = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E7C0;
    v52 = &unk_1003B2F30;
    v37 = _Block_copy(aBlock);

    [v28 PCSAuthContextForWebSessionIdentifier:v32 serviceName:v35 completion:v37];
    _Block_release(v37);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA40);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "No primary account found, abandoning key fetch.", v41, 2u);
    }

    sub_1002BC0A4();
    swift_allocError();
    *v42 = 6;
    a3();
  }

  return sub_10000839C(v56);
}

uint64_t sub_1002BC620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002BC688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002BC6E8()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = (v0 + v2);
  v6 = v5[1];

  v7 = v5[3];

  v8 = v5[5];

  v9 = v5[7];

  v10 = v5[9];

  v11 = v5[11];

  v12 = v5[13];

  v13 = v5[15];

  v14 = v5[17];

  v15 = v5[18];

  v16 = v5[20];

  v17 = v5 + v1[17];
  v18 = *(v17 + 1);

  v19 = *(v17 + 3);

  v20 = *(v17 + 5);

  v21 = *(v17 + 7);

  v22 = *(v17 + 9);

  v23 = *(v17 + 11);

  sub_100012324(*(v17 + 12), *(v17 + 13));
  v24 = *(v17 + 15);

  v25 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v26 = v25[13];
  v27 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v27 - 8) + 8))(&v17[v26], v27);
  sub_100012324(*&v17[v25[14]], *&v17[v25[14] + 8]);
  v28 = *&v17[v25[15]];

  v29 = *&v17[v25[16] + 8];

  v30 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1002BC8C0(uint64_t a1)
{
  v3 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1002BAF04(a1, v5, (v1 + v4), v7, v8);
}

uint64_t sub_1002BC964()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002BC9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BC9BC()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v2);
  v8 = *(v0 + v2 + 8);

  v9 = v7[3];

  v10 = v7[5];

  v11 = v7[7];

  v12 = v7[9];

  v13 = v7[11];

  v14 = v7[13];

  v15 = v7[15];

  v16 = v7[17];

  v17 = v7[18];

  v18 = v7[20];

  v19 = v7 + v1[17];
  v20 = *(v19 + 1);

  v21 = *(v19 + 3);

  v22 = *(v19 + 5);

  v23 = *(v19 + 7);

  v24 = *(v19 + 9);

  v25 = *(v19 + 11);

  sub_100012324(*(v19 + 12), *(v19 + 13));
  v26 = *(v19 + 15);

  v27 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v28 = v27[13];
  v29 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v29 - 8) + 8))(&v19[v28], v29);
  sub_100012324(*&v19[v27[14]], *&v19[v27[14] + 8]);
  v30 = *&v19[v27[15]];

  v31 = *&v19[v27[16] + 8];

  v32 = *(v0 + v3 + 8);

  v33 = *(v0 + v4);

  sub_10000839C((v0 + v6));

  return _swift_deallocObject(v0, v6 + 40);
}

uint64_t sub_1002BCBCC(uint64_t a1)
{
  v3 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);

  return sub_1002BB0F4(a1, v1 + v4, v9, v10, v11, v12, v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1002BCC90()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002BCCE8()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = (v0 + v2);
  v7 = v6[1];

  v8 = v6[3];

  v9 = v6[5];

  v10 = v6[7];

  v11 = v6[9];

  v12 = v6[11];

  v13 = v6[13];

  v14 = v6[15];

  v15 = v6[17];

  v16 = v6[18];

  v17 = v6[20];

  v18 = v6 + v1[17];
  v19 = *(v18 + 1);

  v20 = *(v18 + 3);

  v21 = *(v18 + 5);

  v22 = *(v18 + 7);

  v23 = *(v18 + 9);

  v24 = *(v18 + 11);

  sub_100012324(*(v18 + 12), *(v18 + 13));
  v25 = *(v18 + 15);

  v26 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v27 = v26[13];
  v28 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v28 - 8) + 8))(&v18[v27], v28);
  sub_100012324(*&v18[v26[14]], *&v18[v26[14] + 8]);
  v29 = *&v18[v26[15]];

  v30 = *&v18[v26[16] + 8];

  sub_10000839C((v0 + v3));
  v31 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1002BCEE0(uint64_t a1)
{
  v3 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1002BB700(a1, v6, v7, (v1 + v4), (v1 + v5), v9, v10);
}

uint64_t sub_1002BCF90()
{
  v1 = (type metadata accessor for WalrusPCSEncryptionMaterial(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 4);

  v6 = *(v0 + 5);

  v7 = &v0[v2];
  v8 = *&v0[v2 + 8];

  v9 = *&v0[v2 + 24];

  v10 = *&v0[v2 + 40];

  v11 = *&v0[v2 + 56];

  v12 = *&v0[v2 + 72];

  v13 = *&v0[v2 + 88];

  sub_100012324(*(v7 + 12), *(v7 + 13));
  v14 = *&v0[v2 + 120];

  v15 = v1[15];
  v16 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v16 - 8) + 8))(&v0[v2 + v15], v16);
  sub_100012324(*&v7[v1[16]], *&v7[v1[16] + 8]);
  v17 = *&v0[v2 + v1[17]];

  v18 = *&v0[v2 + 8 + v1[18]];

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002BD0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002BD164(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WalrusPCSEncryptionMaterial(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1002BBACC(a1, a2, v6, v7, v8, v9, v10);
}

unint64_t sub_1002BD1EC(uint64_t a1, void *a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v127 = a3;
  v128 = a4;
  v125 = a2;
  v116 = a1;
  v7 = type metadata accessor for SHA256Digest();
  v126 = *(v7 - 8);
  v8 = v126[8];
  __chkstk_darwin(v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256();
  v124 = *(v11 - 8);
  v12 = *(v124 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = &v109 - v16;
  v148 = type metadata accessor for DaemonSetupServiceURLBag();
  v149 = &off_1003B5708;
  v147[0] = a5;
  v17 = a2 + *(type metadata accessor for WalrusWebAccessInfo(0) + 60);
  v19 = *(v17 + 12);
  v18 = *(v17 + 13);

  SHA256.init()();
  sub_10001607C(&unk_1003DA8A0, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v19, v18);
  v20 = 0;
  sub_10018F16C(v19, v18);
  sub_100012324(v19, v18);
  dispatch thunk of HashFunction.finalize()();
  v21 = *(v124 + 8);
  v21(v15, v11);
  *(&v143 + 1) = v7;
  *&v144 = sub_10001607C(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
  v22 = sub_10000DBEC(&v142);
  v23 = v126;
  (v126[2])(v22, v10, v7);
  sub_1000080F8(&v142, *(&v143 + 1));
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (v23[1])(v10, v7);
  v123 = v140;
  v124 = v141;
  sub_10000839C(&v142);
  v21(v122, v11);
  v24 = *v127;
  v25 = v127[1];
  LODWORD(a5) = *(type metadata accessor for HPKEEnvelope() + 20);
  v121 = v24;
  v122 = v25;
  sub_100015D6C(v24, v25);
  result = P384.KeyAgreement.PublicKey.derRepresentation.getter();
  v119 = result;
  v120 = v27;
  v28 = v125[18];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = (v28 + 32);
    v118 = v29 - 1;
    v32 = _swiftEmptyArrayStorage;
    v127 = (v28 + 32);
    do
    {
      v126 = v32;
      v33 = &v31[9 * v30];
      v34 = v30;
      while (1)
      {
        if (v34 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v35 = *(v33 + 1);
        v36 = *(v33 + 2);
        v37 = v33[8];
        v145 = *(v33 + 3);
        v38 = *v33;
        v146 = v37;
        v143 = v35;
        v144 = v36;
        v142 = v38;
        v30 = v34 + 1;
        v39 = v145;
        sub_1002BEC04(&v142, &v140);
        v140 = sub_1002B93DC(v39);
        v141 = v40;
        __chkstk_darwin(v140);
        v108 = &v140;
        v41 = sub_1002D9820(sub_1002BEC60, (&v109 - 4), v128);

        if (v41)
        {
          break;
        }

        result = sub_1002BEC80(&v142);
        v33 += 9;
        ++v34;
        if (v29 == v30)
        {
          v32 = v126;
          goto LABEL_15;
        }
      }

      v32 = v126;
      result = swift_isUniquelyReferenced_nonNull_native();
      v129 = v32;
      v42 = v20;
      if ((result & 1) == 0)
      {
        result = sub_1002E0540(0, v32[2] + 1, 1);
        v32 = v129;
      }

      v44 = v32[2];
      v43 = v32[3];
      if (v44 >= v43 >> 1)
      {
        result = sub_1002E0540((v43 > 1), v44 + 1, 1);
        v32 = v129;
      }

      v32[2] = v44 + 1;
      v45 = &v32[9 * v44];
      *(v45 + 2) = v142;
      v46 = v143;
      v47 = v144;
      v48 = v145;
      v45[12] = v146;
      *(v45 + 4) = v47;
      *(v45 + 5) = v48;
      *(v45 + 3) = v46;
      v20 = v42;
      v31 = v127;
    }

    while (v118 != v34);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  v114 = v20;
  v49 = v32[2];
  v126 = v32;
  v115 = v49;
  if (v49)
  {
    v139 = _swiftEmptyArrayStorage;
    sub_1002E0500(0, v49, 0);
    v50 = v139;
    v51 = v32 + 4;
    v127 = sub_100005814(&qword_1003E3460, qword_1003469E0);
    v117 = 0x8000000100333530;
    v118 = 0x8000000100333510;
    while (1)
    {
      v52 = v51[8];
      v54 = *(v51 + 1);
      v53 = *(v51 + 2);
      v145 = *(v51 + 3);
      v143 = v54;
      v55 = *v51;
      v146 = v52;
      v142 = v55;
      v144 = v53;
      v132 = v55;
      v134 = &type metadata for Int;
      v128 = v51;
      if (v145 > 4u)
      {
        if (v145 <= 6u)
        {
          if (v145 == 5)
          {
            v56 = 0xE800000000000000;
            v57 = 11;
            v58 = 0x72617073646C6546;
          }

          else
          {
            v56 = 0xE700000000000000;
            v57 = 12;
            v58 = 0x676E6972616853;
          }
        }

        else if (v145 == 7)
        {
          v56 = 0xE600000000000000;
          v57 = 22;
          v58 = 0x697261666153;
        }

        else if (v145 == 8)
        {
          v58 = 0xD000000000000013;
          v57 = 210;
          v56 = v117;
        }

        else
        {
          v58 = 0xD000000000000017;
          v57 = 241;
          v56 = v118;
        }
      }

      else if (v145 <= 1u)
      {
        if (v145)
        {
          v56 = 0xE800000000000000;
          v57 = 3;
          v58 = 0x6E6F697265707948;
        }

        else
        {
          v57 = 2;
          v58 = 0x6E75726564616C42;
          v56 = 0xEB0000000072656ELL;
        }
      }

      else if (v145 == 2)
      {
        v56 = 0xE90000000000006CLL;
        v57 = 4;
        v58 = 0x6F6F70726576694CLL;
      }

      else if (v145 == 3)
      {
        v56 = 0xEA00000000007265;
        v57 = 7;
        v58 = 0x766F4D6F6E616950;
      }

      else
      {
        v56 = 0xE500000000000000;
        v57 = 9;
        v58 = 0x7365746F4ELL;
      }

      v133 = v57;
      v135 = v143;
      v136 = v58;
      v138 = &type metadata for String;
      v137 = v56;
      v59 = static _DictionaryStorage.allocate(capacity:)();
      sub_100012D04(&v132, &v129, &qword_1003DB0B0, &unk_10033E710);
      v61 = v129;
      v60 = v130;
      sub_1002BEC04(&v142, &v140);

      result = sub_1003084DC(v61, v60);
      if (v62)
      {
        break;
      }

      *(v59 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v63 = (v59[6] + 16 * result);
      *v63 = v61;
      v63[1] = v60;
      result = sub_100070AF0(v131, (v59[7] + 32 * result));
      v64 = v59[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_57;
      }

      v59[2] = v66;
      sub_100012D04(&v135, &v129, &qword_1003DB0B0, &unk_10033E710);
      v67 = v129;
      v68 = v130;
      result = sub_1003084DC(v129, v130);
      if (v69)
      {
        goto LABEL_58;
      }

      *(v59 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v70 = (v59[6] + 16 * result);
      *v70 = v67;
      v70[1] = v68;
      result = sub_100070AF0(v131, (v59[7] + 32 * result));
      v71 = v59[2];
      v65 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v65)
      {
        goto LABEL_59;
      }

      v59[2] = v72;

      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002BEC80(&v142);
      v139 = v50;
      v74 = v50[2];
      v73 = v50[3];
      if (v74 >= v73 >> 1)
      {
        sub_1002E0500((v73 > 1), v74 + 1, 1);
        v50 = v139;
      }

      v50[2] = v74 + 1;
      v50[v74 + 4] = v59;
      v51 = v128 + 72;
      if (!--v49)
      {
        goto LABEL_43;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
LABEL_43:
    v75 = [*(*sub_1000080F8(v147 v148) + 16)];
    if (v75)
    {
      v76 = v75;
      v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v77;
    }

    else
    {
      v110 = 0;
      v127 = 0;
    }

    v78 = v125;
    v79 = v125[13];
    v128 = v125[12];
    v113 = v79;
    v80 = v125[14];
    v117 = v125[15];
    v118 = v80;
    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033F070;
    *(inited + 32) = 0x6554726568706963;
    *(inited + 40) = 0xEA00000000007478;
    *(inited + 48) = Data.base64EncodedString(options:)(0);
    *(inited + 64) = 0xD000000000000010;
    *(inited + 72) = 0x8000000100333800;
    v112 = 0x8000000100333800;
    *(inited + 80) = Data.base64EncodedString(options:)(0);
    *(inited + 96) = 0xD000000000000015;
    *(inited + 104) = 0x8000000100333820;
    v111 = 0x8000000100333820;
    *&v142 = sub_100166018(v123, v124);
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v82 = BidirectionalCollection<>.joined(separator:)();
    v84 = v83;

    *(inited + 112) = v82;
    *(inited + 120) = v84;
    v85 = sub_100308864(inited);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    swift_arrayDestroy();
    sub_1002D2BD0(v85);

    v87 = v78[16];
    v86 = v78[17];
    v88 = v78[19];
    v89 = v78[20];
    v128 = String._bridgeToObjectiveC()();
    v90 = String._bridgeToObjectiveC()();
    v91.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v92 = String._bridgeToObjectiveC()();
    sub_100005814(&unk_1003DABD0, &qword_10033E720);
    v93.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v94 = String._bridgeToObjectiveC()();
    if (v127)
    {
      v95 = String._bridgeToObjectiveC()();
    }

    else
    {
      v95 = 0;
    }

    v96 = objc_allocWithZone(AAWalrusPCSAuthRequest);
    v97 = v128;
    v98 = [v96 initWithAccount:v116 WebSessionID:v128 webSessionConsentUUID:v90 encryptionEnvelope:v91.super.isa appName:v92 responseIdentities:v93.super.isa serverInfo:v94 urlString:v95];

    v99 = v115;
    if (v115)
    {
      *&v142 = _swiftEmptyArrayStorage;
      sub_1002E04E0(0, v115, 0);
      v100 = v142;
      v101 = *(v142 + 16);
      v102 = 10;
      v103 = v126;
      do
      {
        v104 = v103[v102];
        *&v142 = v100;
        v105 = *(v100 + 24);
        if (v101 >= v105 >> 1)
        {
          v106 = v99;
          v107 = v103;
          sub_1002E04E0((v105 > 1), v101 + 1, 1);
          v103 = v107;
          v99 = v106;
          v100 = v142;
        }

        *(v100 + 16) = v101 + 1;
        *(v100 + v101 + 32) = v104;
        v102 += 9;
        ++v101;
        --v99;
      }

      while (v99);
    }

    sub_100012324(v121, v122);
    sub_100012324(v119, v120);
    sub_100012324(v123, v124);
    sub_10000839C(v147);
    return v98;
  }

  return result;
}

uint64_t sub_1002BDF48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v81 = a4;
  v82 = a3;
  v80 = sub_100005814(&qword_1003E6FC8, &qword_1003492D0);
  v6 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v83 = &v63 - v7;
  v69 = type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo(0);
  v8 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for HPKE.Sender();
  v72 = *(v73 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v73);
  v79 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HPKE.Ciphersuite();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  v14 = __chkstk_darwin(v12);
  v75 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v63 - v16;
  v17 = type metadata accessor for HPKEEnvelope();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v71 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v74 = &v63 - v27;
  __chkstk_darwin(v26);
  v29 = &v63 - v28;
  v85 = sub_100170228(0xD000000000000018, 0x80000001003337E0);
  v31 = v30;
  v32 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v33 = *(v21 + 16);
  v33(v29, a2 + *(v32 + 52), v20);
  v34 = type metadata accessor for JSONEncoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v84 = a1;
  v86 = a1;
  sub_100005814(&qword_1003E6FD0, &qword_1003492D8);
  sub_1002BEA54();
  v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v65 = v25;
  v64 = v17;
  v68 = v37;
  v67 = v38;
  v66 = v21;

  v39 = v78;
  static HPKE.Ciphersuite.P384_SHA384_AES_GCM_256.getter();
  v33(v74, v29, v20);
  v40 = v76;
  v41 = v77;
  (*(v76 + 16))(v75, v39, v77);
  sub_100015D6C(v85, v31);
  HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
  v42 = v20;
  v43 = v41;
  v44 = v40;
  v86 = HPKE.Sender.encapsulatedKey.getter();
  v87 = v45;
  P384.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  v46 = v66;
  v75 = v31;
  v86 = v68;
  v87 = v67;
  v88 = xmmword_10033F8D0;
  sub_1002BEB64();
  v47 = HPKE.Sender.seal<A, B>(_:authenticating:)();
  v48 = v73;
  v49 = v47;
  v51 = v50;
  sub_100012324(v88, *(&v88 + 1));
  (*(v72 + 8))(v79, v48);
  (*(v44 + 8))(v78, v43);
  v52 = v71;
  (*(v46 + 32))(&v71[*(v64 + 20)], v65, v42);
  *v52 = v49;
  v52[1] = v51;
  v53 = v84;
  v54 = *(v84 + 16);
  if (!v54)
  {
    v55 = _swiftEmptyArrayStorage;
    v58 = v70;
    v59 = v69;
    goto LABEL_5;
  }

  v55 = sub_100306D64(*(v84 + 16), 0);
  v56 = sub_1002FD4DC(&v86, v55 + 4, v54, v53);

  result = sub_10005A1DC();
  if (v56 == v54)
  {
    v58 = v70;
    v59 = v69;
    v46 = v66;
    v52 = v71;
LABEL_5:
    v60 = v75;
    v61 = v85;
    sub_1002BC620(v52, v58, type metadata accessor for HPKEEnvelope);
    *(v58 + *(v59 + 20)) = v55;
    v62 = v83;
    sub_1002BC620(v58, v83, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
    swift_storeEnumTagMultiPayload();
    v82(v62);
    sub_100012324(v68, v67);
    sub_100012324(v61, v60);
    sub_100008D3C(v62, &qword_1003E6FC8, &qword_1003492D0);
    sub_1002BC688(v58, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
    sub_1002BC688(v52, type metadata accessor for HPKEEnvelope);
    return (*(v46 + 8))(v29, v42);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002BEA54()
{
  result = qword_1003E6FD8;
  if (!qword_1003E6FD8)
  {
    sub_100008CBC(&qword_1003E6FD0, &qword_1003492D8);
    sub_1002BEAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FD8);
  }

  return result;
}

unint64_t sub_1002BEAE0()
{
  result = qword_1003E6FE0;
  if (!qword_1003E6FE0)
  {
    sub_100008CBC(&qword_1003E6FC0, &qword_1003492C8);
    sub_1000EE774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FE0);
  }

  return result;
}

unint64_t sub_1002BEB64()
{
  result = qword_1003E6FE8;
  if (!qword_1003E6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FE8);
  }

  return result;
}

uint64_t sub_1002BEBB8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1002BECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HPKEEnvelope();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002BEDB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HPKEEnvelope();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1002BEE70()
{
  type metadata accessor for HPKEEnvelope();
  if (v0 <= 0x3F)
  {
    sub_1001E8B7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002BEF04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E7148, &unk_100349380);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for WalrusWebAccessInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v56 = &v55 - v14;
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v57 = sub_100008D04(v17, qword_1003FAA40);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v55 = v10;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Walrus push received. Processing message.", v20, 2u);
  }

  v21 = *(a1 + 32);
  if (v21 && (sub_1002B816C(*(a1 + 24), v21) & 1) != 0)
  {
    v22 = type metadata accessor for PushMessage();
    sub_1002C0274(a1 + *(v22 + 56), v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100008D3C(v7, &qword_1003E7148, &unk_100349380);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Can't process this push, it does not contain required walrus web access info.", v25, 2u);
      }

      return;
    }

    v29 = v9;
    sub_1002C02E4(v7, v16);
    v30 = *sub_1000080F8(v2 + 2, v2[5]);
    v31 = sub_10015B718();
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      v35 = &v16[*(v8 + 60)];
      v36 = v31 == *(v35 + 10) && v32 == *(v35 + 11);
      if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v37 = sub_1000080F8(v2 + 7, v2[10]);
        v38 = v56;
        sub_1002C03A4(v16, v56);
        v39 = (*(v29 + 80) + 24) & ~*(v29 + 80);
        v40 = v16;
        v41 = swift_allocObject();
        *(v41 + 16) = v2;
        sub_1002C02E4(v38, v41 + v39);
        v42 = *v37;

        sub_1002B9FAC(v40, sub_1002C05D0, v41);

        v43 = v40;
LABEL_30:
        sub_1002C0348(v43);
        return;
      }

      sub_1002C03A4(v16, v12);
      v44 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v44, v47))
      {

        sub_1002C0348(v12);
        goto LABEL_29;
      }

      v48 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v48 = 136315394;
      v49 = &v12[*(v8 + 60)];
      v50 = v16;
      v51 = *(v49 + 10);
      v52 = *(v49 + 11);

      sub_1002C0348(&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v53 = sub_10021145C(v51, v52, &v58);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = sub_10021145C(v33, v34, &v58);

      *(v48 + 14) = v54;
      v16 = v50;
      _os_log_impl(&_mh_execute_header, v44, v47, "Can't process this message, encryption material DSID %s doesn't match with primary account %s.", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v44, v45))
      {
LABEL_28:

LABEL_29:
        v43 = v16;
        goto LABEL_30;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Can't process this message, no primary idMS account found.", v46, 2u);
    }

    goto LABEL_28;
  }

  v57 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v57, v26, "Can't process this message, missing altDSID or doesn't match with primary account.", v27, 2u);
  }

  v28 = v57;
}

void sub_1002BF580(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_1002BEBB8(a1, a2, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = _convertErrorToNSError(_:)();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Failed to fetch PCS auth request with error: %@", v9, 0xCu);
      sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
    }
  }

  else
  {
    sub_1002BFA60(a2, *(a5 + 96), *(a5 + 104));
    aBlock[4] = sub_1002BF78C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001641BC;
    aBlock[3] = &unk_1003B3010;
    v12 = _Block_copy(aBlock);
    [a1 performPinnedRequestWithHandler:v12];
    _Block_release(v12);
  }
}

void sub_1002BF78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "PCS keys upload completed successfully.", v10, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "PCS keys upload failed with error: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

LABEL_10:

    return;
  }
}

uint64_t sub_1002BF9D8()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);

  return swift_deallocClassInstance();
}

void sub_1002BFA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      while (1)
      {
        v7 = *v4++;
        v6 = v7;
        v8 = sub_1002B9540(v7);
        if (!v9)
        {
          break;
        }

        v10 = v8;
        v11 = v9;
        v49 = v4;
        sub_100005814(&unk_1003E7730, &unk_1003492E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = 0xD000000000000010;
        *(inited + 40) = 0x800000010032C670;
        *(inited + 48) = a2;
        *(inited + 56) = a3;

        v13 = sub_100308864(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003DDEC0, &unk_10033E630);
        v14 = objc_opt_self();
        v50 = v3;
        v23 = String._bridgeToObjectiveC()();
        v24 = [v14 webAccessNotificationTextForKey:v23];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v47 = v25;
        v53 = v25;
        v54 = v27;
        v55 = v10;
        v56 = v11;
        v57 = v13;
        v58 = 2;
        v52 = 1;
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100008D04(v28, qword_1003FAA40);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        v48 = v10;
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v51 = v32;
          *v31 = 136315138;
          v33 = sub_1002B93DC(v6);
          v35 = sub_10021145C(v33, v34, &v51);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "Posting %s FYI notification.", v31, 0xCu);
          sub_10000839C(v32);
        }

        v36 = *sub_1000080F8((v46 + 96), *(v46 + 120));

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v51 = v40;
          *v39 = 136315138;
          v41 = sub_1002D4614();
          v43 = sub_10021145C(v41, v42, &v51);

          *(v39 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v37, v38, "Posting User notification : %s", v39, 0xCu);
          sub_10000839C(v40);
        }

        v5 = *sub_1000080F8((v36 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController), *(v36 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController + 24));
        sub_1002C4C2C(v47, v27, v48, v11, v13, sub_1002C00CC, 0);

        v4 = v49;
        v3 = v50 - 1;
        if (v50 == 1)
        {
          goto LABEL_18;
        }
      }

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100008D04(v15, qword_1003FAA40);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v51 = v19;
        *v18 = 136315138;
        v20 = sub_1002B93DC(v6);
        v22 = sub_10021145C(v20, v21, &v51);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "No FYI message for %s.", v18, 0xCu);
        sub_10000839C(v19);
      }

      --v3;
    }

    while (v3);
  }

LABEL_18:
  sub_1002BFFD8(&v52);
}

void sub_1002BFFD8(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Uploading PCS keys without any FYI notification.", v4, 2u);
    }
  }
}

void sub_1002C00CC(uint64_t a1)
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
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      v5 = _convertErrorToNSError(_:)();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to post FYI notification with error %@", v3, 0xCu);
      sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

uint64_t sub_1002C0274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E7148, &unk_100349380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C02E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalrusWebAccessInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C0348(uint64_t a1)
{
  v2 = type metadata accessor for WalrusWebAccessInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C03A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalrusWebAccessInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C0408()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 24);

  v7 = *(v0 + v2 + 40);

  v8 = *(v0 + v2 + 56);

  v9 = *(v0 + v2 + 72);

  v10 = *(v0 + v2 + 88);

  v11 = *(v0 + v2 + 104);

  v12 = *(v0 + v2 + 120);

  v13 = *(v0 + v2 + 136);

  v14 = *(v0 + v2 + 144);

  v15 = *(v0 + v2 + 160);

  v16 = (v0 + v2 + v1[17]);
  v17 = *(v16 + 1);

  v18 = *(v16 + 3);

  v19 = *(v16 + 5);

  v20 = *(v16 + 7);

  v21 = *(v16 + 9);

  v22 = *(v16 + 11);

  sub_100012324(*(v16 + 12), *(v16 + 13));
  v23 = *(v16 + 15);

  v24 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v25 = v24[13];
  v26 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v26 - 8) + 8))(&v16[v25], v26);
  sub_100012324(*&v16[v24[14]], *&v16[v24[14] + 8]);
  v27 = *&v16[v24[15]];

  v28 = *&v16[v24[16] + 8];

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_1002C05D0(void *a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1002BF580(a1, a2, a3 & 1, v8, v9);
}

uint64_t sub_1002C065C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002C0674()
{
  v1 = v0;
  v2 = type metadata accessor for WalrusWebAccessInfo(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v13 = *(v0 + 144);
  v14 = *(v13 + 16);
  if (v14)
  {
    v56 = v12;
    v57 = &v53 - v10;
    v54 = v9;
    v55 = v11;
    v58 = _swiftEmptyArrayStorage;
    sub_1002E04C0(0, v14, 0);
    v15 = v58;
    v16 = (v13 + 80);
    do
    {
      v17 = *v16;
      v16 += 72;
      v18 = qword_100349478[v17];
      v58 = v15;
      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        sub_1002E04C0((v19 > 1), v20 + 1, 1);
        v15 = v58;
      }

      v15[2] = v20 + 1;
      v15[v20 + 4] = v18;
      --v14;
    }

    while (v14);
    v21 = 0;
    v22 = v20 + 1;
    v23 = 4;
    do
    {
      v24 = v15[v23];
      if ((v24 & ~v21) == 0)
      {
        v24 = 0;
      }

      v21 |= v24;
      ++v23;
      --v22;
    }

    while (v22);

    v26 = v56;
    v25 = v57;
    if (qword_1003D7EA0 != -1)
    {
      swift_once();
    }

    if (sub_100120C74(v21, qword_1003E7150))
    {
      Date.init()();
      v27 = *(v1 + *(v2 + 60) + 128);
      Date.init(timeIntervalSince1970:)();
      Date.timeIntervalSince(_:)();
      if (v28 <= 300.0)
      {
        if (v28 > 0.0)
        {
          v47 = *(v55 + 8);
          v48 = v54;
          v47(v26, v54);
          v47(v25, v48);
          return 1;
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_100008D04(v50, qword_1003FAA40);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_36;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "WebAccessInfo is invalid, encryption material is invalid.";
      }

      else
      {
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100008D04(v29, qword_1003FAA40);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_36;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "WebAccessInfo is invalid, encryption material has expired.";
      }

      _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_36:

      v51 = v54;
      v52 = *(v55 + 8);
      v52(v26, v54);
      v52(v25, v51);
      return 0;
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAA40);
    sub_1002C29C4(v1, v5, type metadata accessor for WalrusWebAccessInfo);
    v35 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v39))
    {

      sub_1002C2910(v5, type metadata accessor for WalrusWebAccessInfo);
      return 0;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v58 = v41;
    *v40 = 136315138;
    v42 = *(v5 + 18);
    v43 = Array.description.getter();
    v45 = v44;
    sub_1002C2910(v5, type metadata accessor for WalrusWebAccessInfo);
    v46 = sub_10021145C(v43, v45, &v58);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v35, v39, "WebAccessInfo is invalid, unexpected combination of PCS keys: %s.", v40, 0xCu);
    sub_10000839C(v41);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAA40);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_27;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "WebAccessInfo is invalid, no app identities provided.", v37, 2u);
  }

LABEL_27:

  return 0;
}

uint64_t sub_1002C0CD0()
{
  v31 = type metadata accessor for String.Encoding();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 8827;
  v33 = 0xE200000000000000;
  String.append(_:)(*v0);
  v5._countAndFlagsBits = 2243106;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  String.append(_:)(v0[5]);
  v6._countAndFlagsBits = 34;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v32;
  v8 = v33;
  v32 = 8748;
  v33 = 0xE200000000000000;
  String.append(_:)(v0[1]);
  v9._countAndFlagsBits = 2243106;
  v9._object = 0xE300000000000000;
  String.append(_:)(v9);
  v10 = *(v0 + *(type metadata accessor for WalrusPCSEncryptionMaterial(0) + 64));
  String.append(_:)(v10);
  v11._countAndFlagsBits = 34;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = v32;
  v13 = v33;
  v32 = v7;
  v33 = v8;

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = v32;
  v16 = v33;
  v32 = 8748;
  v33 = 0xE200000000000000;
  String.append(_:)(v0[2]);
  v17._countAndFlagsBits = 2243106;
  v17._object = 0xE300000000000000;
  String.append(_:)(v17);
  String.append(_:)(v0[7]);
  v18._countAndFlagsBits = 32034;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = v32;
  v20 = v33;
  v32 = v15;
  v33 = v16;

  v21._countAndFlagsBits = v19;
  v21._object = v20;
  String.append(_:)(v21);

  static String.Encoding.utf8.getter();
  v22 = String.data(using:allowLossyConversion:)();
  v24 = v23;

  (*(v1 + 8))(v4, v31);
  if (v24 >> 60 == 15)
  {
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
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to create signed JSON data.", v28, 2u);
    }

    return 0;
  }

  return v22;
}

uint64_t sub_1002C0FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  __chkstk_darwin(v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v7 = *(v101 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v101);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 1684632420;
  *(v10 + 1) = 0xE400000000000000;
  *(v10 + 2) = 0xD000000000000011;
  *(v10 + 3) = 0x8000000100333940;
  *(v10 + 4) = 0x6D617473656D6974;
  *(v10 + 5) = 0xE900000000000070;
  *(v10 + 6) = 0x727574616E676973;
  *(v10 + 7) = 0xE900000000000065;
  *(v10 + 8) = 0xD000000000000010;
  *(v10 + 9) = 0x8000000100333960;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v11 = sub_1003084DC(1684632420, 0xE400000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v11, &v104);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v97 = v103;
  if (!*(a1 + 16) || (v96 = v102, v13 = sub_1003084DC(0xD000000000000011, 0x8000000100333940), (v14 & 1) == 0) || (sub_10000DB1C(*(a1 + 56) + 32 * v13, &v104), (swift_dynamicCast() & 1) == 0))
  {
LABEL_15:

LABEL_16:

    v24 = v100;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA40);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v101;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to create encryption material.", v30, 2u);
    }

    return (*(v7 + 56))(v24, 1, 1, v29);
  }

  v15 = v103;
  if (!*(a1 + 16) || (v95 = v102, v16 = sub_1003084DC(0x6D617473656D6974, 0xE900000000000070), (v17 & 1) == 0) || (sub_10000DB1C(*(a1 + 56) + 32 * v16, &v104), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_15;
  }

  v19 = v102;
  v18 = v103;
  v104 = 0;
  if (!sub_1002C2530(v102, v103) || (v94 = v18, v20 = v104, v21 = v95, v22 = Data.init(base64Encoded:options:)(), v23 >> 60 == 15))
  {

    goto LABEL_15;
  }

  v32 = v97;
  *(v10 + 10) = v96;
  *(v10 + 11) = v32;
  *(v10 + 12) = v22;
  *(v10 + 13) = v23;
  v33 = v15;
  v29 = v101;
  v34 = &v10[v101[16]];
  *v34 = v21;
  v34[1] = v33;
  v96 = v33;
  *(v10 + 14) = v19;
  *(v10 + 15) = v94;
  *(v10 + 16) = v20;
  if (!*(a1 + 16))
  {
    goto LABEL_33;
  }

  v35 = v22;
  v95 = v23;
  sub_100015D6C(v22, v23);
  v36 = sub_1003084DC(0x727574616E676973, 0xE900000000000065);
  if ((v37 & 1) == 0 || (sub_10000DB1C(*(a1 + 56) + 32 * v36, &v104), (swift_dynamicCast() & 1) == 0))
  {
    sub_100015D58(v35, v95);
LABEL_33:

LABEL_34:
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAA40);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Unable to create signing material.", v48, 2u);
    }

    v49 = 0;
    v50 = 0;
    v24 = v100;
    goto LABEL_39;
  }

  if (!*(a1 + 16) || (v38 = sub_1003084DC(0xD000000000000010, 0x8000000100333960), (v39 & 1) == 0))
  {
    sub_100015D58(v35, v95);

    goto LABEL_34;
  }

  v92 = 0;
  v93 = v35;
  sub_10000DB1C(*(a1 + 56) + 32 * v38, &v104);

  if ((swift_dynamicCast() & 1) == 0 || (v40 = v102, v41 = v103, v42 = Data.init(base64Encoded:options:)(), v44 = v43, , v44 >> 60 == 15))
  {
    sub_100015D58(v93, v95);

    v29 = v101;
    goto LABEL_34;
  }

  v52 = &v10[v101[14]];
  *v52 = v42;
  v52[1] = v44;
  v104 = v40;
  v105 = v41;
  sub_1000709A0();
  v53 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v91 = v53;
  v54 = *(v53 + 16);
  if (v54)
  {
    v104 = _swiftEmptyArrayStorage;
    sub_1002E0224(0, v54, 0);
    v55 = v104;
    v56 = (v91 + 56);
    do
    {
      v58 = *(v56 - 3);
      v57 = *(v56 - 2);
      v59 = *(v56 - 1);
      v60 = *v56;

      v61 = static String._fromSubstring(_:)();
      v63 = v62;

      v104 = v55;
      v65 = v55[2];
      v64 = v55[3];
      if (v65 >= v64 >> 1)
      {
        sub_1002E0224((v64 > 1), v65 + 1, 1);
        v55 = v104;
      }

      v55[2] = v65 + 1;
      v66 = &v55[2 * v65];
      v66[4] = v61;
      v66[5] = v63;
      v56 += 4;
      --v54;
    }

    while (v54);
  }

  else
  {

    v55 = _swiftEmptyArrayStorage;
  }

  if (v55[2] != 3 || (v67 = v55[4], v68 = v55[5], , v69 = Data.init(base64Encoded:options:)(), v71 = v70, result = , v71 >> 60 == 15))
  {
    sub_100015D58(v93, v95);

LABEL_56:
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100008D04(v72, qword_1003FAA40);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Unable to create certificate chain data.", v75, 2u);
    }

    v50 = 0;
    v49 = 1;
    goto LABEL_61;
  }

  if (v55[2] < 2uLL)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v76 = v55[6];
  v77 = v55[7];

  v78 = Data.init(base64Encoded:options:)();
  v80 = v79;

  if (v80 >> 60 == 15)
  {
    sub_100015D58(v93, v95);

LABEL_68:
    sub_100015D58(v69, v71);
    goto LABEL_56;
  }

  if (v55[2] < 3uLL)
  {
    goto LABEL_73;
  }

  v81 = v55[8];
  v82 = v55[9];

  v83 = Data.init(base64Encoded:options:)();
  v85 = v84;

  if (v85 >> 60 == 15)
  {
    sub_100015D58(v93, v95);
    sub_100015D58(v78, v80);
    goto LABEL_68;
  }

  sub_100005814(&qword_1003E7168, &qword_1003493C8);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_10033F070;
  *(v86 + 32) = v69;
  *(v86 + 40) = v71;
  *(v86 + 48) = v78;
  *(v86 + 56) = v80;
  *(v86 + 64) = v83;
  *(v86 + 72) = v85;
  *&v10[v101[15]] = v86;
  v104 = v93;
  v105 = v95;
  sub_1002C2970();
  v87 = v92;
  P384.KeyAgreement.PublicKey.init<A>(derRepresentation:)();
  if (v87)
  {

    v49 = 1;
    v50 = 1;
LABEL_61:
    v24 = v100;
    v29 = v101;
LABEL_39:
    sub_100012324(*(v10 + 12), *(v10 + 13));

    if (v49)
    {
      sub_100012324(*&v10[v29[14]], *&v10[v29[14] + 8]);
    }

    if (v50)
    {
      v51 = *&v10[v29[15]];
    }

    return (*(v7 + 56))(v24, 1, 1, v29);
  }

  v88 = v101;
  (*(v98 + 32))(&v10[v101[13]], v6, v99);
  v89 = v100;
  sub_1002C29C4(v10, v100, type metadata accessor for WalrusPCSEncryptionMaterial);
  (*(v7 + 56))(v89, 0, 1, v88);
  return sub_1002C2910(v10, type metadata accessor for WalrusPCSEncryptionMaterial);
}

Swift::Int sub_1002C1AE4()
{
  result = sub_10013AAB0(&off_1003A3CD0);
  qword_1003E7150 = result;
  return result;
}

uint64_t sub_1002C1B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_100005814(&qword_1003E7158, &qword_1003493C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v53 - v5;
  v59 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v60 = *(v59 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v59);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WalrusWebAccessInfo(0);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v11, "webSessionID");
  v11[13] = 0;
  *(v11 + 7) = -5120;
  *(v11 + 2) = 0xD000000000000015;
  *(v11 + 3) = 0x8000000100333900;
  *(v11 + 4) = 0x656D614E707061;
  *(v11 + 5) = 0xE700000000000000;
  *(v11 + 6) = 0x65746E6F43707061;
  *(v11 + 7) = 0xEA00000000007478;
  *(v11 + 8) = 0x6E49726576726573;
  *(v11 + 9) = 0xEA00000000006F66;
  *(v11 + 10) = 0xD000000000000012;
  *(v11 + 11) = 0x8000000100333920;
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v12 = sub_1003084DC(0x6973736553626577, 0xEC00000044496E6FLL);
  if ((v13 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v12, &v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v58 = *(&v72 + 1);
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v14 = v72;
  v15 = sub_1003084DC(0xD000000000000015, 0x8000000100333900);
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v15, &v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v17 = *(&v72 + 1);
  if (!*(a1 + 16) || (v18 = v72, v19 = sub_1003084DC(0x656D614E707061, 0xE700000000000000), (v20 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v19, &v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

LABEL_21:

    v29 = &v77;
LABEL_22:
    v30 = *(v29 - 32);
LABEL_24:

LABEL_25:
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA40);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to create web access info.", v34, 2u);
    }

    return (*(v63 + 56))(v65, 1, 1, v64);
  }

  v57 = *(&v72 + 1);
  if (!*(a1 + 16) || (v56 = v72, v21 = sub_1003084DC(0x65746E6F43707061, 0xEA00000000007478), (v22 & 1) == 0))
  {

LABEL_33:

    v29 = &v76;
    goto LABEL_22;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v21, &v66);
  sub_100005814(&qword_1003E7160, qword_1003495C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:

    goto LABEL_31;
  }

  v23 = v72;
  if (!*(a1 + 16) || (v24 = sub_1003084DC(0x6E49726576726573, 0xEA00000000006F66), (v25 & 1) == 0))
  {

LABEL_36:

    goto LABEL_33;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v24, &v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:

    goto LABEL_34;
  }

  v55 = *(&v72 + 1);
  if (!*(a1 + 16) || (v53 = v72, v26 = sub_1003084DC(0xD000000000000012, 0x8000000100333920), (v27 & 1) == 0))
  {

    goto LABEL_36;
  }

  v54 = v23;
  sub_10000DB1C(*(a1 + 56) + 32 * v26, &v66);

  sub_100005814(&unk_1003DABD0, &qword_10033E720);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v28 = v62;
  sub_1002C0FB8(v72, v62);
  if ((*(v60 + 48))(v28, 1, v59) == 1)
  {

    sub_1002C2464(v62);
    goto LABEL_25;
  }

  result = sub_1002C24CC(v62, v61);
  v62 = *(v54 + 16);
  if (v62)
  {
    v36 = 0;
    v37 = _swiftEmptyArrayStorage;
    while (v36 < *(v54 + 16))
    {
      v38 = *(v54 + 8 * v36 + 32);

      sub_1002C2628(v39, &v66);
      v40 = v67;
      if (!v67)
      {
        sub_1002C2910(v61, type metadata accessor for WalrusPCSEncryptionMaterial);

        return (*(v63 + 56))(v65, 1, 1, v64);
      }

      v41 = v66;
      v72 = v68;
      v73 = v69;
      v74 = v70;
      v75 = v71;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100306558(0, *(v37 + 2) + 1, 1, v37);
        v37 = result;
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        result = sub_100306558((v42 > 1), v43 + 1, 1, v37);
        v37 = result;
      }

      ++v36;
      *(v37 + 2) = v43 + 1;
      v44 = &v37[72 * v43];
      *(v44 + 4) = v41;
      *(v44 + 5) = v40;
      v45 = v72;
      v46 = v73;
      v47 = v74;
      *(v44 + 12) = v75;
      *(v44 + 4) = v46;
      *(v44 + 5) = v47;
      *(v44 + 3) = v45;
      if (v62 == v36)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_51:

    v48 = v58;
    *(v11 + 12) = v14;
    *(v11 + 13) = v48;
    *(v11 + 14) = v18;
    *(v11 + 15) = v17;
    v49 = v57;
    *(v11 + 16) = v56;
    *(v11 + 17) = v49;
    v50 = v53;
    *(v11 + 18) = v37;
    *(v11 + 19) = v50;
    *(v11 + 20) = v55;
    v51 = v64;
    sub_1002C24CC(v61, &v11[*(v64 + 60)]);
    v52 = v65;
    sub_1002C29C4(v11, v65, type metadata accessor for WalrusWebAccessInfo);
    (*(v63 + 56))(v52, 0, 1, v51);
    return sub_1002C2910(v11, type metadata accessor for WalrusWebAccessInfo);
  }

  return result;
}

uint64_t sub_1002C2464(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7158, &qword_1003493C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C24CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1002C2530(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

void sub_1002C2628(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_1003084DC(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v4, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(a1 + 16) && (v6 = sub_1003084DC(1701667182, 0xE400000000000000), (v7 & 1) != 0) && (sub_10000DB1C(*(a1 + 56) + 32 * v6, v33), (swift_dynamicCast() & 1) != 0) && (v8 = sub_1002B9920(v24, v24, v25), , (v8 & 1) != 0) && (v9 = sub_1002B9860(v24), v9 != 10) && *(a1 + 16) && (v10 = v9, v11 = sub_1003084DC(0x4E79616C70736964, 0xEB00000000656D61), (v12 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v11, v39);

    if (swift_dynamicCast())
    {
      v13 = v37;
      v14 = v38;
      v24 = 25705;
      v25 = 0xE200000000000000;
      v26 = 1701667182;
      v27 = 0xE400000000000000;
      v28 = 0x4E79616C70736964;
      v29 = 0xEB00000000656D61;
      LOBYTE(v30) = v10;
      v31 = v37;
      v32 = v38;
      v15 = v30;
      v33[0] = 25705;
      v33[1] = 0xE200000000000000;
      v33[2] = 1701667182;
      v33[3] = 0xE400000000000000;
      v33[4] = 0x4E79616C70736964;
      v33[5] = 0xEB00000000656D61;
      v34 = v10;
      v35 = v37;
      v36 = v38;
      sub_1002BEC04(&v24, v23);
      sub_1002BEC80(v33);
      v16 = xmmword_100349390;
      v17 = xmmword_1003493A0;
      v18 = xmmword_1003493B0;
      goto LABEL_19;
    }
  }

  else
  {
LABEL_13:
  }

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
    _os_log_impl(&_mh_execute_header, v20, v21, "Unable to create app identity.", v22, 2u);
  }

  v15 = 0;
  v13 = 0;
  v14 = 0;
  v18 = 0uLL;
  v17 = 0uLL;
  v16 = 0uLL;
LABEL_19:
  *a2 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
}

uint64_t sub_1002C2910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002C2970()
{
  result = qword_1003E7170;
  if (!qword_1003E7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E7170);
  }

  return result;
}

uint64_t sub_1002C29C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_BYTE *sub_1002C2A2C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

__n128 sub_1002C2AAC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002C2AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1002C2B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C2B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for P384.KeyAgreement.PublicKey();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002C2C4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for P384.KeyAgreement.PublicKey();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002C2CF0()
{
  type metadata accessor for P384.KeyAgreement.PublicKey();
  if (v0 <= 0x3F)
  {
    sub_1002C2FF4(319, &unk_1003E71E0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002C2DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002C2E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002C2F38()
{
  sub_1002C2FF4(319, &unk_1003E72A8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WalrusPCSEncryptionMaterial(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002C2FF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1002C3040(uint64_t a1)
{
  v3 = type metadata accessor for PushMessage();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v10 = (v48 - v9);
  __chkstk_darwin(v8);
  v12 = v48 - v11;
  v13 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v48 - v15;
  if (*(a1 + 8))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    sub_1002B8794(a1, v7);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v48[0] = 0xD000000000000025;
      *(&v48[0] + 1) = 0x8000000100333440;
      v22 = [*v7 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      String.append(_:)(v26);

      v27 = v48[0];
      sub_1002C43F0(v7, type metadata accessor for PushMessage);
      v28 = sub_10021145C(v27, *(&v27 + 1), &v49);

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Asked to process incoming message not meant for custodian, ignoring message: %s", v20, 0xCu);
      sub_10000839C(v21);

      return;
    }

    v42 = v7;
  }

  else
  {
    v29 = *(a1 + 121);
    if (v29 != 6)
    {
      v43 = type metadata accessor for TaskPriority();
      (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
      v44 = *(v1 + 56);
      sub_1002B8794(a1, v12);
      sub_100040738(v1 + 16, v48);
      v45 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v46 = (v5 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v44;
      sub_1002C3ED4(v12, v47 + v45);
      sub_10003E950(v48, v47 + v46);
      *(v47 + v46 + 40) = v29;

      sub_1000BD04C(0, 0, v16, &unk_100349550, v47);

      return;
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA88);
    sub_1002B8794(a1, v10);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136315138;
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v48[0] = 0xD000000000000025;
      *(&v48[0] + 1) = 0x8000000100333440;
      v35 = [*v10 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39._countAndFlagsBits = v36;
      v39._object = v38;
      String.append(_:)(v39);

      v40 = v48[0];
      sub_1002C43F0(v10, type metadata accessor for PushMessage);
      v41 = sub_10021145C(v40, *(&v40 + 1), &v49);

      *(v33 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Custodian push message did not contain recoveryStep, ignoring message: %s", v33, 0xCu);
      sub_10000839C(v34);

      return;
    }

    v42 = v10;
  }

  sub_1002C43F0(v42, type metadata accessor for PushMessage);
}

uint64_t sub_1002C362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 128) = a7;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 56) = a1;
  *(v7 + 64) = a4;
  v8 = *(type metadata accessor for PushMessage() - 8);
  *(v7 + 88) = v8;
  *(v7 + 96) = *(v8 + 64);
  *(v7 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1002C36F8, 0, 0);
}

uint64_t sub_1002C36F8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  sub_1002B8794(*(v0 + 72), v1);
  sub_100040738(v4, v0 + 16);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 112) = v8;
  sub_1002C3ED4(v1, v8 + v7);
  v9 = v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_10003E950((v0 + 16), v9);
  *(v9 + 40) = v3;

  return _swift_task_switch(sub_1002C37E0, v6, 0);
}

uint64_t sub_1002C37E0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  v5 = *(v4 + 128);
  v6 = v5 + 1;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = v3[14];
    *(v4 + 128) = v6;

    v3[15] = sub_10031FFE8(v6, &unk_100349560, v7);

    a1 = sub_1002C389C;
    a2 = 0;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1002C389C()
{
  v1 = *(v0 + 104);
  **(v0 + 56) = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002C3908(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(*(type metadata accessor for CustodianRecoveryData() - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_1002C399C, 0, 0);
}

uint64_t sub_1002C399C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 16) + 16);

  sub_10010EE1C(v4, v2);
  v5 = *sub_1000080F8(v1, v1[3]);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1002C3A5C;
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);

  return sub_1000FAE30(v8, v7);
}

uint64_t sub_1002C3A5C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_1002C3B58, 0, 0);
}

uint64_t sub_1002C3B58()
{
  sub_1002C43F0(*(v0 + 32), type metadata accessor for CustodianRecoveryData);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C3BDC()
{
  sub_10000839C((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1002C3C50()
{
  v1 = type metadata accessor for PushMessage();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 32);

  v9 = *(v0 + v2 + 48);

  v10 = *(v0 + v2 + 64);

  v11 = *(v0 + v2 + 80);

  if (*(v0 + v2 + 96) != 1)
  {

    v12 = *(v6 + 112);
  }

  v13 = *(v6 + 128);

  v14 = (v6 + *(v1 + 56));
  v15 = type metadata accessor for WalrusWebAccessInfo(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = v14[1];

    v17 = v14[3];

    v18 = v14[5];

    v19 = v14[7];

    v20 = v14[9];

    v21 = v14[11];

    v22 = v14[13];

    v23 = v14[15];

    v24 = v14[17];

    v25 = v14[18];

    v26 = v14[20];

    v27 = v14 + *(v15 + 60);
    v28 = *(v27 + 1);

    v29 = *(v27 + 3);

    v30 = *(v27 + 5);

    v31 = *(v27 + 7);

    v32 = *(v27 + 9);

    v33 = *(v27 + 11);

    sub_100012324(*(v27 + 12), *(v27 + 13));
    v34 = *(v27 + 15);

    v35 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v36 = v35[13];
    v37 = type metadata accessor for P384.KeyAgreement.PublicKey();
    (*(*(v37 - 8) + 8))(&v27[v36], v37);
    sub_100012324(*&v27[v35[14]], *&v27[v35[14] + 8]);
    v38 = *&v27[v35[15]];

    v39 = *&v27[v35[16] + 8];
  }

  v40 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C((v0 + v40));

  return _swift_deallocObject(v0, v40 + 41);
}

uint64_t sub_1002C3ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C3F38(uint64_t a1)
{
  v4 = *(type metadata accessor for PushMessage() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1002C362C(a1, v6, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1002C4070()
{
  v1 = type metadata accessor for PushMessage();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v0 + v2 + 16);

  v6 = *(v0 + v2 + 32);

  v7 = *(v0 + v2 + 48);

  v8 = *(v0 + v2 + 64);

  v9 = *(v0 + v2 + 80);

  if (*(v0 + v2 + 96) != 1)
  {

    v10 = *(v4 + 112);
  }

  v11 = *(v4 + 128);

  v12 = (v4 + *(v1 + 56));
  v13 = type metadata accessor for WalrusWebAccessInfo(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12[1];

    v15 = v12[3];

    v16 = v12[5];

    v17 = v12[7];

    v18 = v12[9];

    v19 = v12[11];

    v20 = v12[13];

    v21 = v12[15];

    v22 = v12[17];

    v23 = v12[18];

    v24 = v12[20];

    v25 = v12 + *(v13 + 60);
    v26 = *(v25 + 1);

    v27 = *(v25 + 3);

    v28 = *(v25 + 5);

    v29 = *(v25 + 7);

    v30 = *(v25 + 9);

    v31 = *(v25 + 11);

    sub_100012324(*(v25 + 12), *(v25 + 13));
    v32 = *(v25 + 15);

    v33 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v34 = v33[13];
    v35 = type metadata accessor for P384.KeyAgreement.PublicKey();
    (*(*(v35 - 8) + 8))(&v25[v34], v35);
    sub_100012324(*&v25[v33[14]], *&v25[v33[14] + 8]);
    v36 = *&v25[v33[15]];

    v37 = *&v25[v33[16] + 8];
  }

  v38 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C((v0 + v38));

  return _swift_deallocObject(v0, v38 + 41);
}

uint64_t sub_1002C42E4()
{
  v2 = *(type metadata accessor for PushMessage() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(v4 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000082A8;

  return sub_1002C3908(v0 + v3, v4, v5);
}

uint64_t sub_1002C43F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002C4450(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 128);
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v4 = a1;
  v5 = sub_1003084DC(0x736D657469, 0xE500000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000DB1C(*(v3 + 56) + 32 * v5, v37);
  sub_100005814(&qword_1003E7160, qword_1003495C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = v36;
  v8 = *(v4 + 32);
  if (!v8)
  {

LABEL_12:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "CFU Data did not contain any items to process or IdMS information";
    goto LABEL_16;
  }

  v9 = *(v4 + 24);
  if (qword_1003D7F20 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA40);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v35 = v9;
      v13 = swift_slowAlloc();
      v34 = v10;
      v14 = swift_slowAlloc();
      v37[0] = v14;
      *v13 = 136315138;
      sub_100005814(&unk_1003DABD0, &qword_10033E720);
      v15 = Array.description.getter();
      v17 = sub_10021145C(v15, v16, v37);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Embargo delegate service asked to process push with items: %s", v13, 0xCu);
      sub_10000839C(v14);
      v10 = v34;

      v9 = v35;
    }

    v19 = *(v4 + 8);
    if (v19 != 2)
    {
      break;
    }

    v35 = *(v7 + 16);
    if (!v35)
    {
LABEL_22:

      return;
    }

    v25 = 0;
    v34 = v7 + 32;
    while (v25 < *(v7 + 16))
    {
      v26 = v25 + 1;
      v4 = *(v34 + 8 * v25);
      v27 = sub_1000080F8((v2 + 16), *(v2 + 40));
      v28 = v7;
      v8 = *(*v27 + 120);
      v29 = *(*v27 + 128);
      sub_1000080F8((*v27 + 96), v8);
      v9 = AAFollowUpIdentifierCustodianEmbargo;
      v30 = v2;
      v31 = *(v29 + 32);

      v32 = v29;
      v7 = v28;
      v31(v9, sub_100111D30, 0, v8, v32);
      v2 = v30;

      v25 = v26;
      if (v35 == v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  if (v19 == 1)
  {
    __chkstk_darwin(v18);
    v33[2] = v4;
    v33[3] = v9;
    v33[4] = v8;
    v33[5] = v2;
    sub_10001D098(sub_1002C4930, v33, v7);

    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  sub_100008D04(v10, qword_1003FAA88);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Unknown command send to Embargo push delegate";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);
  }

LABEL_17:
}

void sub_1002C4930(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *sub_1000080F8((v1[5] + 16), *(v1[5] + 40));
  sub_1001111C0(v5, v6, v7, v3, v4);
}

char *sub_1002C49A4()
{
  ObjectType = swift_getObjectType();
  v2 = objc_allocWithZone(UNUserNotificationCenter);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithBundleIdentifier:v3];

  *&v0[OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter] = v4;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v18, "init");
  v6 = String._bridgeToObjectiveC()();
  sub_100016034(0, &qword_1003E7518, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = Array._bridgeToObjectiveC()().super.isa;
  v9 = [objc_opt_self() categoryWithIdentifier:v6 actions:isa intentIdentifiers:v8 options:1];

  v10 = OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter;
  v11 = *&v5[OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter];
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003431D0;
  *(inited + 32) = v9;
  v13 = v11;
  v14 = v9;
  sub_10013ABEC(inited);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  sub_100016034(0, &qword_1003DEC30, UNNotificationCategory_ptr);
  sub_1002C5980();
  v16 = Set._bridgeToObjectiveC()().super.isa;

  [v13 setNotificationCategories:v16];

  [*&v5[v10] setDelegate:v5];
  [*&v5[v10] setWantsNotificationResponsesDelivered];

  return v5;
}

void sub_1002C4C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a6;
  v64 = a7;
  v8 = type metadata accessor for UUID();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v57 = &v55 - v14;
  v15 = type metadata accessor for URL();
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  __chkstk_darwin(v15);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v24 = String._bridgeToObjectiveC()();
  [v23 setTitle:v24];

  v25 = String._bridgeToObjectiveC()();
  [v23 setBody:v25];

  v26 = String._bridgeToObjectiveC()();
  [v23 setCategoryIdentifier:v26];

  v27 = [objc_opt_self() defaultSound];
  [v23 setSound:v27];

  [v23 setInterruptionLevel:1];
  [v23 setShouldBackgroundDefaultAction:1];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v19 + 8))(v22, v18);
  [v23 setDate:isa];

  sub_1002D1BFC(a5);
  v29 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v23 setUserInfo:v29];

  if (!*(a5 + 16))
  {
    goto LABEL_9;
  }

  v30 = sub_1003084DC(0xD000000000000010, 0x800000010032C690);
  if (v31)
  {
    v32 = (*(a5 + 56) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];

    v35 = v57;
    URL.init(string:)();

    v37 = v58;
    v36 = v59;
    if ((*(v58 + 48))(v35, 1, v59) != 1)
    {
      v43 = v56;
      (*(v37 + 32))(v56, v35, v36);
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      [v23 setDefaultActionURL:v45];

      (*(v37 + 8))(v43, v36);
      if (!*(a5 + 16))
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    sub_100008D3C(v35, &qword_1003E7500, &qword_10033EC30);
  }

  if (!*(a5 + 16))
  {
LABEL_9:
    UUID.init()();
    UUID.uuidString.getter();
    (*(v60 + 8))(v11, v61);
    goto LABEL_10;
  }

LABEL_6:
  v38 = sub_1003084DC(0xD000000000000010, 0x800000010032C670);
  if ((v39 & 1) == 0)
  {
    goto LABEL_9;
  }

  v40 = (*(a5 + 56) + 16 * v38);
  v42 = *v40;
  v41 = v40[1];

LABEL_10:
  v47 = v23;
  v48 = String._bridgeToObjectiveC()();

  v49 = [objc_opt_self() requestWithIdentifier:v48 content:v47 trigger:0];

  v50 = *(v62 + OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter);
  v51 = swift_allocObject();
  v53 = v63;
  v52 = v64;
  *(v51 + 16) = v63;
  *(v51 + 24) = v52;
  aBlock[4] = sub_1002C5664;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003B3188;
  v54 = _Block_copy(aBlock);
  sub_100083AA0(v53);

  [v50 addNotificationRequest:v49 withCompletionHandler:v54];
  _Block_release(v54);
}

void sub_1002C527C(uint64_t a1, void (*a2)(uint64_t))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    type metadata accessor for NotificationController();
    sub_100005814(&unk_1003E7508, qword_100349630);
    v8 = String.init<A>(describing:)();
    v10 = sub_10021145C(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v11 = String.init<A>(describing:)();
    v13 = sub_10021145C(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Error posting notification: %s", v7, 0x16u);
    swift_arrayDestroy();

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

void sub_1002C54D8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter);
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10033EB30;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 removePendingNotificationRequestsWithIdentifiers:isa];
}

uint64_t sub_1002C5624()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002C566C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002C5684(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received notification response: %@", v11, 0xCu);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
  }

  v14 = [v8 notification];
  v15 = [v14 request];

  v16 = [v15 content];
  v17 = [v16 defaultActionURL];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = [objc_opt_self() defaultWorkspace];
    if (v18)
    {
      v20 = v18;
      URL._bridgeToObjectiveC()(v19);
      v22 = v21;
      sub_100308978(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v20 openSensitiveURL:v22 withOptions:isa];
    }

    (*(v3 + 8))(v6, v2);
  }
}

unint64_t sub_1002C5980()
{
  result = qword_1003E7520;
  if (!qword_1003E7520)
  {
    sub_100016034(255, &qword_1003DEC30, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E7520);
  }

  return result;
}

id sub_1002C59E8()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue;
  v12 = *(v0 + OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue);
  }

  else
  {
    v14 = sub_100071C74();
    v21 = "com.apple.aps.aa";
    v22 = v14;
    static DispatchQoS.unspecified.getter();
    v23 = &_swiftEmptyArrayStorage;
    v19[1] = sub_100163F0C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100005814(&unk_1003E6290, &qword_10033F570);
    v20 = v2;
    sub_1000D10EC(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
    v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

id sub_1002C5C84()
{
  result = [objc_allocWithZone(type metadata accessor for PushHelperService()) init];
  qword_1003FA9B0 = result;
  return result;
}

uint64_t sub_1002C5CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a2 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    sub_1002E0224(0, v5, 0);
    v6 = &_swiftEmptyArrayStorage;
    v8 = (a2 + 32);
    v9 = *(&_swiftEmptyArrayStorage + 2);
    v10 = 2 * v9;
    do
    {
      if (*v8)
      {
        v11 = 0xD000000000000019;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (*v8)
      {
        v12 = "4";
      }

      else
      {
        v12 = "com.apple.aa.setupservice";
      }

      v23 = v6;
      v13 = v6[3];
      v14 = v9 + 1;
      if (v9 >= v13 >> 1)
      {
        sub_1002E0224((v13 > 1), v9 + 1, 1);
        v6 = v23;
      }

      v6[2] = v14;
      v15 = &v6[v10];
      v15[4] = v11;
      v15[5] = v12 | 0x8000000000000000;
      v10 += 2;
      ++v8;
      v9 = v14;
      --v5;
    }

    while (v5);
    v4 = a1;
    v3 = v2;
  }

  v16 = *(v3 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_topics);
  *(v3 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_topics) = v6;

  if (!*(v3 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection))
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Starting a new APS Connection", v20, 2u);
    }

    sub_1002C7020();
  }

  return sub_1002C5EC8(v4);
}

uint64_t sub_1002C5EC8(uint64_t a1)
{
  v2 = v1;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    sub_100005814(&qword_1003E7608, qword_100349688);
    v9 = Array.description.getter();
    v11 = sub_10021145C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting Push delegates to: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  v12 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_delegates);
  *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_delegates) = a1;
}

void sub_1002C6068(void (*a1)(uint64_t, unint64_t, uint64_t), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection);
  if (v16)
  {
    v36 = v13;
    v37 = v7;
    v17 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
    v18 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
    v38 = v16;
    if (v18 >> 60 == 15)
    {
      v35 = sub_1002C59E8();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v38;
      v20[3] = v19;
      v20[4] = a1;
      v20[5] = a2;
      v20[6] = ObjectType;
      aBlock[4] = sub_1002C872C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031EF0;
      aBlock[3] = &unk_1003B3248;
      v21 = _Block_copy(aBlock);
      v38 = v38;

      static DispatchQoS.unspecified.getter();
      v39 = _swiftEmptyArrayStorage;
      sub_100163F0C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005814(&unk_1003DABE0, &unk_10033EC20);
      sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v35;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v21);

      (*(v37 + 8))(v10, v6);
      (*(v36 + 8))(v15, v11);
    }

    else
    {
      sub_100052704(v17, v18);
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100008D04(v29, qword_1003FAA40);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "We already had a public token from this connection, no need to fetch a new one", v32, 2u);
      }

      sub_100052704(v17, v18);
      a1(v17, v18, 0);
      sub_100015D58(v17, v18);
      sub_100015D58(v17, v18);
      v33 = v38;
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA40);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Public token was requested but there was no active APSConnection", v26, 2u);
    }

    sub_1002C8690();
    v27 = swift_allocError();
    *v28 = 1;
    *(v28 + 8) = 1;
    a1(v27, 0, 1);
  }
}

uint64_t sub_1002C663C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v95 = a4;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v88[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v88[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v88[-v17];
  v19 = [a1 publicToken];
  if (v19)
  {
    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = (Strong + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
      v26 = *(Strong + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
      v27 = *(Strong + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
      *v25 = v21;
      v25[1] = v23;
      v28 = Strong;
      sub_100015D6C(v21, v23);
      sub_100015D58(v26, v27);
    }

    sub_100015D6C(v21, v23);
    (a3)(v21, v23, 0);
    sub_100012324(v21, v23);
    return sub_100012324(v21, v23);
  }

  else
  {
    v93 = v11;
    v94 = v18;
    v90 = a3;
    v91 = v12;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v92 = sub_100008D04(v30, qword_1003FAA40);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "No public APS token for the current connection, waiting for a new token", v33, 2u);
    }

    static DispatchTime.now()();
    *v10 = 30;
    (*(v7 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v6);
    + infix(_:_:)();
    (*(v7 + 8))(v10, v6);
    v35 = v91 + 2;
    v34 = *(v91 + 1);
    v34(v16, v93);
    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = v36;
      v38 = dispatch_semaphore_create(0);
      v39 = *&v37[OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore];
      *&v37[OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore] = v38;
    }

    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v41 = *(v40 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore);
      v42 = v40;
      v43 = v41;

      if (v41)
      {
        OS_dispatch_semaphore.wait(timeout:)();
      }
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Wait time for APS Token is done", v46, 2u);
    }

    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47 && (v48 = *(v47 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken), v49 = *(v47 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8), v50 = v47, sub_100052704(v48, v49), v50, v49 >> 60 != 15))
    {
      sub_100015D6C(v48, v49);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      sub_100015D58(v48, v49);
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v91 = v35;
        v73 = v72;
        v92 = swift_slowAlloc();
        v97[0] = v92;
        *v73 = 136315138;
        v96 = sub_100166018(v48, v49);
        sub_100005814(&qword_1003DA1E0, &qword_100345E50);
        sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50);
        v74 = BidirectionalCollection<>.joined(separator:)();
        v76 = v75;

        v77 = sub_10021145C(v74, v76, v97);

        *(v73 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v70, v71, "Obtained public token %s via delegate", v73, 0xCu);
        sub_10000839C(v92);
      }

      v78 = v90;
      v79 = v94;
      sub_100015D6C(v48, v49);
      (v78)(v48, v49, 0);
      sub_100015D58(v48, v49);
      sub_100015D58(v48, v49);
      v80 = v79;
    }

    else
    {
      v51 = [a1 publicToken];
      if (v51)
      {
        v52 = v51;
        v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        sub_100015D6C(v53, v55);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        sub_100012324(v53, v55);
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v91 = v58;
          v92 = swift_slowAlloc();
          v97[0] = v92;
          *v58 = 136315138;
          v96 = sub_100166018(v53, v55);
          v89 = v57;
          sub_100005814(&qword_1003DA1E0, &qword_100345E50);
          sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50);
          v59 = BidirectionalCollection<>.joined(separator:)();
          v61 = v60;

          v62 = sub_10021145C(v59, v61, v97);

          v63 = v91;
          *(v91 + 1) = v62;
          _os_log_impl(&_mh_execute_header, v56, v89, "Obtained public token %s", v63, 0xCu);
          sub_10000839C(v92);
        }

        v64 = v90;
        swift_beginAccess();
        v65 = swift_unknownObjectWeakLoadStrong();
        if (v65)
        {
          v66 = (v65 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
          v67 = *(v65 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
          v68 = *(v65 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
          *v66 = v53;
          v66[1] = v55;
          v69 = v65;
          sub_100015D6C(v53, v55);
          sub_100015D58(v67, v68);
        }

        sub_100015D6C(v53, v55);
        (v64)(v53, v55, 0);
        sub_100012324(v53, v55);
        sub_100012324(v53, v55);
      }

      else
      {
        v81 = a1;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *v84 = 138412290;
          *(v84 + 4) = v81;
          *v85 = v81;
          v86 = v81;
          _os_log_impl(&_mh_execute_header, v82, v83, "Failed to obtain a public token for connection: %@", v84, 0xCu);
          sub_100008D3C(v85, &unk_1003D9140, &qword_10033E640);
        }

        sub_1002C8690();
        swift_allocError();
        *v87 = 30;
        *(v87 + 8) = 0;
        v90();
      }

      v80 = v94;
    }

    return (v34)(v80, v93);
  }
}

uint64_t sub_1002C7020()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v0 - 8);
  v1 = *(v14 + 64);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1002C59E8();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002C8670;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B31F8;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = v12;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v0);
  (*(v4 + 8))(v7, v13);
}

void sub_1002C730C()
{
  v0 = [objc_allocWithZone(AKURLBag) init];
  v1 = [v0 APSEnvironment];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    v5 = [objc_opt_self() isValidEnvironment:v1];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = &Strong[OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment];
        v8 = *&Strong[OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment + 8];
        *v7 = v2;
        v7[1] = v4;
      }
    }

    else
    {

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAA40);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Server did not provide a valid APS environment. Staying in prod.", v12, 2u);
      }
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v15 = *(v13 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment);
    v14 = *(v13 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment + 8);
    v16 = v13;
  }

  else
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  sub_100071C74();
  v18 = static OS_dispatch_queue.main.getter();
  v19 = objc_allocWithZone(APSConnection);
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 initWithEnvironmentName:v20 namedDelegatePort:v21 queue:v18];

  if (v22)
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    [v22 setDelegate:v23];

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_topics);
      v26 = v24;

      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v27.super.isa = 0;
    }

    [v22 _setEnabledTopics:v27.super.isa];

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA40);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136315138;
      v33 = sub_10021145C(v15, v14, &v36);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Push service started with environment: %s", v31, 0xCu);
      sub_10000839C(v32);
    }

    else
    {
    }

    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = *&v34[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection];
      *&v34[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection] = v22;
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1002C77C4(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E75F0, &qword_100349680);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = type metadata accessor for PushMessage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002C87F4(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100008D3C(v7, &qword_1003E75F0, &qword_100349680);
  }

  sub_1002C3ED4(v7, v12);
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
    _os_log_impl(&_mh_execute_header, v15, v16, "Informing delegates of incoming message", v17, 2u);
  }

  v18 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_delegates);
  __chkstk_darwin(v19);
  *&v20[-16] = v12;

  sub_10003A4CC(sub_1002C861C, &v20[-32], v18);

  return sub_1002B87F8(v12);
}

uint64_t sub_1002C7A44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 16))(*(a2 + 8), ObjectType, v4);
  if (result)
  {
    return (*(v4 + 8))(a2, ObjectType, v4);
  }

  return result;
}

id sub_1002C7AD0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection;
  v3 = *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection];
  if (v3)
  {
    v4 = qword_1003D7F20;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA40);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Shutting down APS connection...", v9, 2u);
    }

    [v5 shutdown];
    [v5 setDelegate:0];

    v10 = *&v1[v2];
    *&v1[v2] = 0;
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for PushHelperService();
  return objc_msgSendSuper2(&v12, "dealloc");
}

id sub_1002C7CEC()
{
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue] = 0;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection] = 0;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_delegates] = _swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment];
  *v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1[1] = v2;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken] = xmmword_10033F590;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore] = 0;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_topics] = _swiftEmptyArrayStorage;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PushHelperService();
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1002C7DF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && a3 >> 60 != 15)
  {
    v5 = v3;
    sub_100015D6C(a2, a3);
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    sub_100015D6C(a2, a3);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_100015D58(a2, a3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      sub_100166018(a2, a3);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      v21 = v3;
      sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v15 = sub_10021145C(v12, v14, &v22);
      v5 = v21;

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "We received a new APS Token: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    v16 = (v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
    v17 = *(v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
    v18 = *(v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
    *v16 = a2;
    v16[1] = a3;
    sub_100015D6C(a2, a3);
    sub_100015D58(v17, v18);
    v19 = *(v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore);
    if (v19)
    {
      v20 = v19;
      OS_dispatch_semaphore.signal()();
      sub_100015D58(a2, a3);
    }

    else
    {
      sub_100015D58(a2, a3);
    }
  }
}

void sub_1002C8130(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v7 = a2;
    if (sub_1002C82F8(v7))
    {
      sub_1002C77C4(v7);
      v2 = v7;
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100008D04(v3, qword_1003FAA40);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Incoming message is for an unknown topic", v6, 2u);
      }

      v2 = v4;
    }
  }
}

uint64_t sub_1002C82F8(void *a1)
{
  v2 = [a1 topic];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == 0xD000000000000011 && 0x8000000100333B90 == v6)
  {
    goto LABEL_14;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v10 = [a1 topic];
    if (!v10)
    {
      v9 = 0;
      return v9 & 1;
    }

    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 != 0xD000000000000019 || 0x8000000100333B70 != v14)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_15:

      return v9 & 1;
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v9 = 1;
  return v9 & 1;
}

void sub_1002C8430(char a1)
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
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "APNS status changed: %{BOOL}d", v4, 8u);
  }
}

uint64_t sub_1002C8638()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002C8678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002C8690()
{
  result = qword_1003E75F8;
  if (!qword_1003E75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E75F8);
  }

  return result;
}

uint64_t sub_1002C86E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t initializeBufferWithCopyOfBuffer for PushHelperServiceError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PushHelperServiceError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PushHelperServiceError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1002C87A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C87C4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1002C87F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003E7148, &unk_100349380);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v102 = v97 - v6;
  v7 = type metadata accessor for PushMessage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100308978(_swiftEmptyArrayStorage);
  *(v11 + 16) = v12;
  *v11 = a1;
  v13 = a1;
  v14 = [v13 userInfo];
  if (v14)
  {
    v15 = v14;
    v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v11 + 2) = v16;
    v17 = qword_1003D7F20;
    v104 = v16;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = sub_100008D04(v18, qword_1003FAA40);
    v20 = v13;
    v103 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {

      goto LABEL_8;
    }

    v97[1] = v12;
    v98 = v11;
    v101 = v8;
    v99 = v7;
    v100 = a2;
    v23 = v20;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v108[0] = v25;
    *v24 = 136315138;
    v26 = [v23 userInfo];

    if (v26)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = Dictionary.description.getter();
      v29 = v28;

      v30 = sub_10021145C(v27, v29, v108);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Received push message with userInfo: %s", v24, 0xCu);
      sub_10000839C(v25);

      a2 = v100;
      v8 = v101;
      v7 = v99;
      v11 = v98;
      v20 = v23;
LABEL_8:
      *&v109[0] = 6581603;
      *(&v109[0] + 1) = 0xE300000000000000;
      AnyHashable.init<A>(_:)();
      v31 = v104;
      if (*(v104 + 16) && (v32 = sub_10031B060(v108), (v33 & 1) != 0))
      {
        sub_10000DB1C(*(v31 + 56) + 32 * v32, v109);
        sub_1000526B0(v108);

        v34 = swift_dynamicCast();
        if (v34)
        {
          v35 = v106;
        }

        else
        {
          v35 = 0;
        }

        v36 = v34 ^ 1;
      }

      else
      {

        sub_1000526B0(v108);
        v35 = 0;
        v36 = 1;
      }

      v37 = sub_1002C97F0(v35, v36);
      if (v37 == 6)
      {
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Push Message has invalid command. Ignoring", v40, 2u);
        }

LABEL_36:
        (*(v8 + 56))(a2, 1, 1, v7);
        return;
      }

      v41 = v20;
      v11[8] = v37;
      *&v109[0] = 0x6469736461;
      *(&v109[0] + 1) = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v31 + 16) && (v42 = sub_10031B060(v108), (v43 & 1) != 0))
      {
        sub_10000DB1C(*(v31 + 56) + 32 * v42, v109);
        sub_1000526B0(v108);
        v44 = swift_dynamicCast();
        v45 = v106;
        if (v44)
        {
          v46 = v107;
        }

        else
        {
          v45 = 0;
          v46 = 0;
        }
      }

      else
      {
        sub_1000526B0(v108);
        v45 = 0;
        v46 = 0;
      }

      *(v11 + 3) = v45;
      *(v11 + 4) = v46;
      v106 = 0x64696E7874;
      v107 = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v31 + 16) && (v47 = sub_10031B060(v108), (v48 & 1) != 0))
      {
        sub_10000DB1C(*(v31 + 56) + 32 * v47, v109);
        sub_1000526B0(v108);
        if (swift_dynamicCast())
        {
          v49 = v107;
          *(v11 + 5) = v106;
          *(v11 + 6) = v49;
          *&v109[0] = 0x79656B6C7275;
          *(&v109[0] + 1) = 0xE600000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v31 + 16) && (v50 = sub_10031B060(v108), (v51 & 1) != 0))
          {
            sub_10000DB1C(*(v31 + 56) + 32 * v50, v109);
            sub_1000526B0(v108);
            v52 = swift_dynamicCast();
            v53 = v106;
            v54 = v107;
            if (!v52)
            {
              v53 = 0;
              v54 = 0;
            }
          }

          else
          {
            sub_1000526B0(v108);
            v53 = 0;
            v54 = 0;
          }

          *(v11 + 7) = v53;
          *(v11 + 8) = v54;
          *&v109[0] = 6580589;
          *(&v109[0] + 1) = 0xE300000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v31 + 16) && (v58 = sub_10031B060(v108), (v59 & 1) != 0))
          {
            sub_10000DB1C(*(v31 + 56) + 32 * v58, v109);
            sub_1000526B0(v108);
            v60 = swift_dynamicCast();
            v61 = v106;
            v62 = v107;
            if (!v60)
            {
              v61 = 0;
              v62 = 0;
            }
          }

          else
          {
            sub_1000526B0(v108);
            v61 = 0;
            v62 = 0;
          }

          *(v11 + 9) = v61;
          *(v11 + 10) = v62;
          v106 = 7565409;
          v107 = 0xE300000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v31 + 16) && (v63 = sub_10031B060(v108), (v64 & 1) != 0))
          {
            sub_10000DB1C(*(v31 + 56) + 32 * v63, v109);
            sub_1000526B0(v108);
            sub_100005814(&unk_1003DABD0, &qword_10033E720);
            if (swift_dynamicCast())
            {
              v65 = v106;
              if (v106)
              {
                if (*(v106 + 16) && (v66 = sub_1003084DC(0x7472656C61, 0xE500000000000000), (v67 & 1) != 0))
                {
                  sub_10000DB1C(*(v65 + 56) + 32 * v66, v108);

                  sub_100005814(&unk_1003DABD0, &qword_10033E720);
                  if (swift_dynamicCast())
                  {
                    v68 = *&v109[0];
LABEL_53:
                    sub_1002C9EB4(v68, v109);
                    v69 = v110;
                    v70 = v109[1];
                    *(v11 + 88) = v109[0];
                    *(v11 + 104) = v70;
                    v11[120] = v69;
                    v105._countAndFlagsBits = 0x706574537478656ELL;
                    v105._object = 0xE800000000000000;
                    AnyHashable.init<A>(_:)();
                    if (*(v31 + 16) && (v71 = sub_10031B060(v108), (v72 & 1) != 0))
                    {
                      sub_10000DB1C(*(v31 + 56) + 32 * v71, &v106);
                      sub_1000526B0(v108);
                      if (swift_dynamicCast())
                      {
                        v73 = sub_1001154EC(v105);
LABEL_59:
                        v11[121] = v73;
                        v105._countAndFlagsBits = 0x61746164756663;
                        v105._object = 0xE700000000000000;
                        AnyHashable.init<A>(_:)();
                        if (*(v31 + 16) && (v74 = sub_10031B060(v108), (v75 & 1) != 0))
                        {
                          sub_10000DB1C(*(v31 + 56) + 32 * v74, &v106);
                          sub_1000526B0(v108);
                          sub_100005814(&unk_1003DABD0, &qword_10033E720);
                          if (swift_dynamicCast())
                          {
                            countAndFlagsBits = v105._countAndFlagsBits;

                            *(v11 + 16) = countAndFlagsBits;
                          }
                        }

                        else
                        {
                          sub_1000526B0(v108);
                        }

                        v105._countAndFlagsBits = 0x6177647273;
                        v105._object = 0xE500000000000000;
                        AnyHashable.init<A>(_:)();
                        if (*(v31 + 16) && (v77 = sub_10031B060(v108), (v78 & 1) != 0))
                        {
                          sub_10000DB1C(*(v31 + 56) + 32 * v77, &v106);
                          sub_1000526B0(v108);
                          sub_100005814(&unk_1003DABD0, &qword_10033E720);
                          if (swift_dynamicCast())
                          {
                            v79 = *(v7 + 56);

                            sub_1002C1B0C(v80, &v11[v79]);
                            v81 = &v11[v79];
                            v82 = v102;
                            sub_1002C0274(v81, v102);
                            v83 = type metadata accessor for WalrusWebAccessInfo(0);
                            if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
                            {
                              sub_1002C9958(v82);

                              v84 = Logger.logObject.getter();
                              v85 = static os_log_type_t.error.getter();

                              if (os_log_type_enabled(v84, v85))
                              {
                                v86 = swift_slowAlloc();
                                v101 = v8;
                                v87 = v86;
                                v88 = swift_slowAlloc();
                                v108[0] = v88;
                                *v87 = 136315138;
                                v89 = v7;
                                v90 = Dictionary.description.getter();
                                v91 = v11;
                                v93 = v92;

                                v94 = sub_10021145C(v90, v93, v108);
                                v11 = v91;

                                *(v87 + 4) = v94;
                                v7 = v89;
                                _os_log_impl(&_mh_execute_header, v84, v85, "Push message has invalid web access info: %s", v87, 0xCu);
                                sub_10000839C(v88);

                                v8 = v101;
                              }

                              else
                              {
                              }
                            }

                            else
                            {

                              sub_1002C9958(v82);
                            }

                            goto LABEL_73;
                          }
                        }

                        else
                        {
                          sub_1000526B0(v108);
                        }

                        v95 = *(v7 + 56);
                        v96 = type metadata accessor for WalrusWebAccessInfo(0);
                        (*(*(v96 - 8) + 56))(&v11[v95], 1, 1, v96);
LABEL_73:
                        sub_1002B8794(v11, a2);
                        (*(v8 + 56))(a2, 0, 1, v7);
                        sub_1002B87F8(v11);
                        return;
                      }
                    }

                    else
                    {
                      sub_1000526B0(v108);
                    }

                    v73 = 6;
                    goto LABEL_59;
                  }
                }

                else
                {
                }
              }
            }
          }

          else
          {
            sub_1000526B0(v108);
          }

          v68 = sub_100308978(_swiftEmptyArrayStorage);
          goto LABEL_53;
        }
      }

      else
      {
        sub_1000526B0(v108);
      }

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Push Message has invalid message ID. Ignoring", v57, 2u);
      }

      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}