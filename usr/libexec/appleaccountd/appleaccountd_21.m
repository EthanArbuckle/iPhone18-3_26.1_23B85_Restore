uint64_t sub_100259158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = _convertErrorToNSError(_:)();
  v13 = [v12 aa_partialErrorsByName];

  if (v13)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {

      sub_100259C8C(v14, (a2 + 16), a3, a4);

      goto LABEL_6;
    }
  }

  swift_beginAccess();

  swift_errorRetain();
  v15 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a1, a3, a4, isUniquelyReferenced_nonNull_native);

  *(a2 + 16) = v21;
  swift_endAccess();
LABEL_6:
  swift_beginAccess();
  if (*(a5 + 16))
  {
    v17 = 1;
  }

  else
  {
    v18 = a6[3];
    v19 = a6[4];
    sub_1000080F8(a6, v18);
    v17 = (*(v19 + 24))(v18, v19);
  }

  result = swift_beginAccess();
  *(a5 + 16) = v17 & 1;
  return result;
}

uint64_t sub_100259330(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a2 & 1;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  aBlock[4] = sub_100259C10;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B16F8;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100259B80(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v24);
}

uint64_t sub_100259614(char a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v23 = a3;
    v12 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v12 = 136315394;
    if (a1)
    {
      v13 = 0x656C756465686353;
    }

    else
    {
      v13 = 0x6E616D6544206E4FLL;
    }

    v14 = sub_10021145C(v13, 0xE900000000000064, v24);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    swift_beginAccess();
    v15 = *(a2 + 16);

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v16 = Dictionary.description.getter();
    v18 = v17;

    v19 = sub_10021145C(v16, v18, v24);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Overall %s Apple ID Availability activities finished with errors: %s", v12, 0x16u);
    swift_arrayDestroy();

    a3 = v23;
  }

  swift_beginAccess();
  v20 = *(a5 + 16);
  swift_beginAccess();
  v21 = *(a2 + 16);

  a3(v20, v21);
}

uint64_t sub_1002598A4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore;
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIDAvailabilityActivityProvider()
{
  result = qword_1003E4520;
  if (!qword_1003E4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002599A8()
{
  sub_1001CFA84();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100259A50()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100259A98()
{
  sub_10000839C((v0 + 24));

  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100259B04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100259B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100259B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100259BC8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100259C20()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  sub_10000839C(v0 + 7);

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100259C8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v38 = v9;
  v39 = v5;
  v40 = a2;
  while (v8)
  {
LABEL_11:
    v14 = __clz(__rbit64(v8)) | (v10 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a1 + 56) + 8 * v14);

    swift_errorRetain();

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = v16;
    v20._object = v17;
    String.append(_:)(v20);
    swift_beginAccess();
    swift_errorRetain();
    v21 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a2;
    v44 = *a2;
    *a2 = 0x8000000000000000;
    v25 = sub_1003084DC(a3, a4);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v44;
        if (v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1002CFE94();
        v32 = v44;
        if (v29)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1002CC470(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_1003084DC(a3, a4);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
      v32 = v44;
      if (v29)
      {
LABEL_4:
        v11 = v32[7];
        v12 = *(v11 + 8 * v25);
        *(v11 + 8 * v25) = v18;

        goto LABEL_5;
      }
    }

    v32[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v32[6] + 16 * v25);
    *v33 = a3;
    v33[1] = a4;
    *(v32[7] + 8 * v25) = v18;
    v34 = v32[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_25;
    }

    v32[2] = v36;
LABEL_5:
    v8 &= v8 - 1;
    a2 = v40;
    *v40 = v32;
    swift_endAccess();

    v9 = v38;
    v5 = v39;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
    }

    v8 = *(v5 + 8 * v13);
    ++v10;
    if (v8)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100259F38()
{
  type metadata accessor for AppleIDAvailabilityHealthCheck();
  sub_100005814(&qword_1003E4940, &qword_100347B38);
  result = String.init<A>(describing:)();
  qword_1003FA970 = result;
  *algn_1003FA978 = v1;
  return result;
}

id sub_100259F8C()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v37 - v5;
  v7 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v37 - v10;
  if (!sub_10025CC8C(&selRef_continuationTokenForAccount_))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37[0] = v25;
      *v24 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v24 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v37);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s - Could not get Continuation Key, Apple ID is NOT available.", v24, 0xCu);
      sub_10000839C(v25);
    }

    type metadata accessor for AAError(0);
    v20 = -4413;
    goto LABEL_30;
  }

  (*(v8 + 16))(v11, v0 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__followUpController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v12 = v38;
  v13 = v39;
  sub_1000080F8(v37, v38);
  v14 = (*(v13 + 40))(v12, v13);
  sub_10000839C(v37);
  if (v14)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAB8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37[0] = v19;
      *v18 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v18 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v37);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s - Renew Credentials CFU is posted, Apple ID is NOT available.", v18, 0xCu);
      sub_10000839C(v19);
    }

    type metadata accessor for AAError(0);
    v20 = -4412;
LABEL_30:
    v40 = v20;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    return v37[0];
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v26 = objc_opt_self();
  result = [v26 sharedInstance];
  if (result)
  {
    v28 = result;
    v29 = [result contextForPrimaryAccount];

    if (!v29)
    {
      sub_10000839C(v37);
LABEL_23:
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100008D04(v32, qword_1003FAAB8);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37[0] = v36;
        *v35 = 136315138;
        if (qword_1003D7E58 != -1)
        {
          swift_once();
        }

        *(v35 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v37);
        _os_log_impl(&_mh_execute_header, v33, v34, "%s - Octagon trust is not healthy, Apple ID is NOT available.", v35, 0xCu);
        sub_10000839C(v36);
      }

      type metadata accessor for AAError(0);
      v20 = -4414;
      goto LABEL_30;
    }

    result = [v26 sharedInstance];
    if (result)
    {
      v30 = result;
      v31 = [result isOTEnabledForContext:v29];

      sub_10000839C(v37);
      if (v31)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10025A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v25 = v10;
    v18 = a1;
    v19 = a3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v26);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - started.", v20, 0xCu);
    sub_10000839C(v21);

    a3 = v19;
    a1 = v18;
    v10 = v25;
  }

  else
  {
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v5;
  v23[5] = a1;
  v23[6] = a2;
  v23[7] = a3;
  v23[8] = a4;
  v23[9] = v10;

  sub_1000BCD5C(0, 0, v14, &unk_100347B48, v23);
}

uint64_t sub_10025A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[25] = a4;
  v9 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  v8[28] = v9;
  v10 = *(v9 - 8);
  v8[29] = v10;
  v11 = *(v10 + 64) + 15;
  v8[30] = swift_task_alloc();
  v12 = sub_100005814(&qword_1003E4950, &qword_100347B58);
  v8[31] = v12;
  v13 = *(v12 - 8);
  v8[32] = v13;
  v14 = *(v13 + 64) + 15;
  v8[33] = swift_task_alloc();
  v15 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v8[34] = v15;
  v16 = *(v15 - 8);
  v8[35] = v16;
  v17 = *(v16 + 64) + 15;
  v8[36] = swift_task_alloc();
  v18 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v8[37] = v18;
  v19 = *(v18 - 8);
  v8[38] = v19;
  v20 = *(v19 + 64) + 15;
  v8[39] = swift_task_alloc();
  v21 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8[40] = v21;
  v22 = *(v21 - 8);
  v8[41] = v22;
  v23 = *(v22 + 64) + 15;
  v8[42] = swift_task_alloc();

  return _swift_task_switch(sub_10025AB9C, 0, 0);
}

uint64_t sub_10025AB9C()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = kAAAnalyticsEventAppleIDHealthCheck;
  (*(v2 + 16))(v1, *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v3);
  v5 = v4;
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v6 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v6 && (v7 = v6, v8 = [v6 aa_altDSID], v7, v8))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C((v0 + 16));
    v9 = v5;
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    sub_10000839C((v0 + 16));
    v11 = v5;
    v10 = 0;
  }

  v12 = [objc_opt_self() analyticsEventWithName:v5 altDSID:v10 flowID:0];
  *(v0 + 344) = v12;

  if (v12)
  {
    v13 = *(v0 + 200);
    v14 = v12;
    v15 = sub_10025BE9C();
    if (v15)
    {
      v16 = v15;
      v18 = *(v0 + 304);
      v17 = *(v0 + 312);
      v19 = *(v0 + 296);
      (*(v18 + 16))(v17, *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v19);
      Dependency.wrappedValue.getter();
      (*(v18 + 8))(v17, v19);
      v20 = *(v0 + 192);
      [v20 securityLevelForAccount:v16];
    }

    v22 = *(v0 + 280);
    v21 = *(v0 + 288);
    v23 = *(v0 + 272);
    v24 = *(v0 + 200);
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v14 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v22 + 16))(v21, v24 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v23);
    v26 = v14;
    Dependency.wrappedValue.getter();
    (*(v22 + 8))(v21, v23);
    v27 = [objc_allocWithZone(ACAccountStore) init];
    v28 = [v27 aa_primaryAppleAccount];

    if (v28)
    {
      v29 = [v28 aa_personID];

      if (v29)
      {
        [objc_opt_self() isICDPEnabledForDSID:v29];
      }
    }

    v30 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C((v0 + 136));
    [v26 setObject:v30 forKeyedSubscript:kAAAnalyticsCdpStatus];
  }

  v32 = *(v0 + 304);
  v31 = *(v0 + 312);
  v33 = *(v0 + 296);
  v34 = *(v0 + 200);
  v35 = sub_10025BE9C();
  (*(v32 + 16))(v31, v34 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v33);
  Dependency.wrappedValue.getter();
  (*(v32 + 8))(v31, v33);
  v36 = *(v0 + 176);
  if (!v35)
  {
    goto LABEL_17;
  }

  v37 = [*(v0 + 176) idmsWalrusStatusForAccount:v35];

  if (v37)
  {
    if (v12)
    {
      [v37 integerValue];
      v36 = Int._bridgeToObjectiveC()().super.super.isa;
      [v12 setObject:v36 forKeyedSubscript:kAAAnalyticsIdmsWalrusStatus];
    }

    else
    {
      v36 = v37;
    }

LABEL_17:
  }

  sub_100016034(0, &qword_1003E4958, AAFDeviceInfo_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [ObjCClassFromMetadata respondsToSelector:Selector.init(_:)()];
  if (v12 && v39)
  {
    v41 = *(v0 + 256);
    v40 = *(v0 + 264);
    v42 = *(v0 + 248);
    (*(v41 + 16))(v40, *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__deviceInfo, v42);
    v43 = v12;
    Dependency.wrappedValue.getter();
    (*(v41 + 8))(v40, v42);
    v44 = *(v0 + 184);
    v45 = [v44 localSecretType];

    v46 = String._bridgeToObjectiveC()();
    [v43 setObject:v45 forKeyedSubscript:v46];
  }

  v47 = *(v0 + 200);
  sub_10025CE14(v12);
  v48 = swift_task_alloc();
  *(v0 + 352) = v48;
  *v48 = v0;
  v48[1] = sub_10025B1AC;
  v49 = *(v0 + 200);

  return sub_10025D16C(v12);
}

uint64_t sub_10025B1AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 352);
  v5 = *(*v1 + 344);
  v9 = *v1;
  *(v3 + 360) = a1;

  v6 = swift_task_alloc();
  *(v3 + 368) = v6;
  *v6 = v9;
  v6[1] = sub_10025B310;
  v7 = *(v2 + 200);

  return sub_10025D6A8(v5);
}

uint64_t sub_10025B310()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return _swift_task_switch(sub_10025B40C, 0, 0);
}

uint64_t sub_10025B40C()
{
  v68 = v0;
  v1 = *(v0 + 344);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  sub_10025DCB4(v1);
  v6 = sub_10025BE9C();
  sub_10025C2CC(v1, v6);

  sub_10025C708(v1);
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__featureFlagStateProvider, v4);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  *(v0 + 120) = &type metadata for AAFeatureFlags;
  v7 = sub_10015B62C();
  *(v0 + 96) = 6;
  *(v0 + 128) = v7;
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_10000839C((v0 + 56));
  sub_10000839C((v0 + 96));
  if (v1)
  {
    v8 = *(v0 + 344);
    v9 = swift_task_alloc();
    *(v0 + 376) = v9;
    *v9 = v0;
    v9[1] = sub_10025B9E4;
    v10 = *(v0 + 200);

    return sub_10025F0D8(v8);
  }

  else
  {
    v12 = *(v0 + 200);
    v13 = sub_10025EAA8();
    if (v13)
    {
      v14 = v13;
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 1;
    }

    v18 = *(v0 + 200);
    sub_10025F024(*(v0 + 344), v17);
    v19 = sub_10025ECC8();
    if (v19)
    {
      v20 = v19;
      [v19 unsignedIntegerValue];
    }

    v21 = *(v0 + 344);
    if (v21)
    {
      v22 = UInt._bridgeToObjectiveC()().super.super.isa;
      [v21 setObject:v22 forKeyedSubscript:kAAAnalyticsRecordViabilityState];

      v23 = *(v0 + 344);
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v0 + 200);
    sub_10025E0C0(v23);
    v25 = sub_100259F8C();
    v26 = v25;
    if (v23)
    {
      v27 = *(v0 + 344);
      v28 = v26;
      v29 = Bool._bridgeToObjectiveC()().super.super.isa;
      [v27 setObject:v29 forKeyedSubscript:kAAFDidSucceed];
    }

    else
    {
      v30 = v25;
    }

    v31 = *(v0 + 360);
    v32 = *(v0 + 344);
    v33 = *(v0 + 200);
    v34 = sub_10025BE9C();
    sub_10025F848(v32);

    v35 = sub_10025C154(v26, v31);
    v36 = v35;
    if (v32)
    {
      v37 = *(v0 + 344);
      if (v35)
      {
        v38 = v37;
        v39 = _convertErrorToNSError(_:)();
        v40 = *(v0 + 344);
      }

      else
      {
        v40 = v37;
        v39 = 0;
      }

      [v40 updateTaskResultWithError:v39];
    }

    v66 = v26;
    v41 = v36;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 344);
    v43 = type metadata accessor for Logger();
    sub_100008D04(v43, qword_1003FAAB8);
    v44 = v42;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v67 = v49;
      *v47 = 136315394;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 344);
      *(v47 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v67);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v50;
      *v48 = v50;
      v51 = v50;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s - Reporting AppleID Availability Healthcheck event %@", v47, 0x16u);
      sub_100008D3C(v48, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v49);
    }

    v52 = *(v0 + 344);
    if (v52)
    {
      v53 = *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck_reportEvent;
      v55 = *v53;
      v54 = *(v53 + 8);
      v56 = v52;

      v55(v56);

      v57 = *(v0 + 344);
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v0 + 360);
    v59 = *(v0 + 336);
    v60 = *(v0 + 312);
    v61 = *(v0 + 288);
    v62 = *(v0 + 264);
    v63 = *(v0 + 240);
    v64 = *(v0 + 216);
    (*(v0 + 208))(v41);

    v65 = *(v0 + 8);

    return v65();
  }
}

uint64_t sub_10025B9E4()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return _swift_task_switch(sub_10025BAE0, 0, 0);
}

uint64_t sub_10025BAE0()
{
  v47 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 200);
  sub_10025E0C0(v1);
  v3 = sub_100259F8C();
  v4 = v3;
  if (v1)
  {
    v5 = *(v0 + 344);
    v6 = v4;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v5 setObject:isa forKeyedSubscript:kAAFDidSucceed];
  }

  else
  {
    v8 = v3;
  }

  v9 = *(v0 + 360);
  v10 = *(v0 + 344);
  v11 = *(v0 + 200);
  v12 = sub_10025BE9C();
  sub_10025F848(v10);

  v13 = sub_10025C154(v4, v9);
  v14 = v13;
  if (v10)
  {
    v15 = *(v0 + 344);
    if (v13)
    {
      v16 = v15;
      v17 = _convertErrorToNSError(_:)();
      v18 = *(v0 + 344);
    }

    else
    {
      v18 = v15;
      v17 = 0;
    }

    [v18 updateTaskResultWithError:v17];
  }

  v45 = v4;
  v19 = v14;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 344);
  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = v27;
    *v25 = 136315394;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 344);
    *(v25 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v46);
    *(v25 + 12) = 2112;
    *(v25 + 14) = v28;
    *v26 = v28;
    v29 = v28;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - Reporting AppleID Availability Healthcheck event %@", v25, 0x16u);
    sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v27);
  }

  v30 = *(v0 + 344);
  if (v30)
  {
    v31 = *(v0 + 200) + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck_reportEvent;
    v33 = *v31;
    v32 = *(v31 + 8);
    v34 = v30;

    v33(v34);

    v35 = *(v0 + 344);
  }

  else
  {
    v35 = 0;
  }

  v36 = *(v0 + 360);
  v37 = *(v0 + 336);
  v38 = *(v0 + 312);
  v39 = *(v0 + 288);
  v40 = *(v0 + 264);
  v41 = *(v0 + 240);
  v42 = *(v0 + 216);
  (*(v0 + 208))(v19);

  v43 = *(v0 + 8);

  return v43();
}

id sub_10025BE9C()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22[-1] - v5;
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22[-1] - v10;
  (*(v8 + 16))(&v22[-1] - v10, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v12 = [*(*sub_1000080F8(v22 v22[3]) + 16)];
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_10000839C(v22);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v17 = v22[0];
  if (v16)
  {

    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 authKitAccountWithAltDSID:v18];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v19;
}

void *sub_10025C154(void *a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    if (a2)
    {
      swift_errorRetain();
      type metadata accessor for AAError(0);
      sub_1001530B4();
      v4 = a1;
      _BridgedStoredNSError.code.getter();
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033EB30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v6;
      v7 = _convertErrorToNSError(_:)();
      *(inited + 72) = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *(inited + 48) = v7;
      sub_100308978(inited);
      swift_setDeallocating();
      sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
      _BridgedStoredNSError.init(_:userInfo:)();

      return v10;
    }

    else
    {
      v2 = a1;
      v8 = a1;
    }
  }

  else
  {
    swift_errorRetain();
  }

  return v2;
}

void sub_10025C2CC(void *a1, void *a2)
{
  v5 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  if (a1)
  {
    if (a2)
    {
      (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v5);
      v10 = a1;
      v11 = a2;
      Dependency.wrappedValue.getter();
      (*(v6 + 8))(v9, v5);
      v12 = v35;
      v13 = [v35 deviceRemovalReasonForAccount:v11];

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      [v10 setObject:isa forKeyedSubscript:kAAAnalyticsDeviceRemovalReason];

      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100008D04(v15, qword_1003FAAB8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34 = v13;
        v35 = v19;
        *v18 = 136315138;
        type metadata accessor for AKRemoteDeviceRemovalReason(0);
        v20 = String.init<A>(describing:)();
        v22 = sub_10021145C(v20, v21, &v35);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "AppleIDAvailabilityHealthCheck attachCKReason attached %s", v18, 0xCu);
        sub_10000839C(v19);
      }

      return;
    }

    v26 = qword_1003D7F48;
    v33 = a1;
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAB8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "AppleIDAvailabilityHealthCheck attachCKReason account is nil", v30, 2u);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);
    v33 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v33, v24, "AppleIDAvailabilityHealthCheck attachCKReason event is nil", v25, 2u);
    }
  }

  v31 = v33;
}

void sub_10025C708(void *a1)
{
  v3 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  if (a1)
  {
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__followUpController, v3);
    v8 = a1;
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v7, v3);
    v9 = v33;
    v10 = v34;
    sub_1000080F8(v32, v33);
    v11 = (*(v10 + 104))(v9, v10);
    sub_100256EF4(v11);

    v16 = objc_allocWithZone(NSMutableArray);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v16 initWithArray:isa];

    sub_10000839C(v32);
    v19 = [v18 aaf_arrayAsCommaSeperatedString];

    v20 = v19;
    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    [v8 setObject:v20 forKeyedSubscript:kAAFPendingCFUTypes];

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315138;
      v29 = sub_10021145C(v21, v23, v32);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "AppleIDAvailabilityHealthCheck attachPendingCFUTypes attached %s", v27, 0xCu);
      sub_10000839C(v28);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v31 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v31, v13, "AppleIDAvailabilityHealthCheck attachPendingCFUTypes event is nil", v14, 2u);
    }

    v15 = v31;
  }
}

BOOL sub_10025CC8C(SEL *a1)
{
  v3 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_10025BE9C();
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v9 = v17;
  if (!v8)
  {

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v10 = v8;
  v11 = [v9 *a1];
  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

LABEL_7:

  return v14 != 0;
}

void sub_10025CE14(void *a1)
{
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  if (a1)
  {
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v3);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v7, v3);
    v8 = *(*sub_1000080F8(v23, v23[3]) + 16);
    v22 = 0;
    [v8 walrusStatus:&v22];
    v9 = v22;
    if (v22)
    {
      swift_willThrow();
      v10 = v9;
      sub_10000839C(v23);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100008D04(v11, qword_1003FAAB8);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23[0] = v17;
        *v15 = 136315394;
        if (qword_1003D7E58 != -1)
        {
          swift_once();
        }

        *(v15 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v23);
        *(v15 + 12) = 2112;
        v18 = v12;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 14) = v19;
        *v16 = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "%s - Failed to attach Walrus Status: %@", v15, 0x16u);
        sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v17);
      }

      else
      {
      }
    }

    else
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v23);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
    }
  }
}

uint64_t sub_10025D16C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10025D238, 0, 0);
}

uint64_t sub_10025D238()
{
  v13 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Attaching Octagon Status", v4, 0xCu);
    sub_10000839C(v5);
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  (*(v7 + 16))(v6, v0[8] + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v8);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  v9 = *sub_1000080F8(v0 + 2, v0[5]);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_10025D47C;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_10025D47C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_10025D638;
  }

  else
  {
    v5 = sub_10025D590;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10025D590()
{
  v1 = v0[7];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[7];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:isa forKeyedSubscript:kAAAnalyticsCliqueStatus];
  }

  v5 = v0[11];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10025D638()
{
  v1 = v0[14];
  sub_10000839C(v0 + 2);
  v2 = v0[11];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_10025D6A8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10025D774, 0, 0);
}

uint64_t sub_10025D774()
{
  if (v0[7])
  {
    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[9];
    (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v3);
    Dependency.wrappedValue.getter();
    (*(v2 + 8))(v1, v3);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_10025D8B4;

    return sub_10013E2C0();
  }

  else
  {
    v6 = v0[11];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10025D8B4(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_10025DA78;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_10025D9DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10025D9DC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  sub_10000839C((v0 + 16));
  [v2 setObject:isa forKeyedSubscript:kAAAnalyticsCircleSyncingStatus];

  v4 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10025DA78()
{
  v15 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    v8 = v0[13];
    *(v5 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v14);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Failed to attach SOS Status: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  else
  {
    v10 = v0[13];
  }

  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

void sub_10025DCB4(void *a1)
{
  v3 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = sub_10025BE9C();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager, v3);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v7, v3);
    v10 = v22;
    v11 = [v22 adpCohortForAccount:v9];

    if (!v11)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100008D04(v16, qword_1003FAAB8);
      v11 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v18 = 136315138;
        if (qword_1003D7E58 != -1)
        {
          swift_once();
        }

        *(v18 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v22);
        _os_log_impl(&_mh_execute_header, v11, v17, "%s - Failed to attach ADP cohort type, cohort nil", v18, 0xCu);
        sub_10000839C(v19);
      }

      goto LABEL_17;
    }

    if (a1)
    {
      [a1 setObject:v11 forKeyedSubscript:kAAAnalyticsADPCohortType];
LABEL_17:

      return;
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v21 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v14 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v22);
      _os_log_impl(&_mh_execute_header, v21, v13, "%s - Failed to attach ADP cohort type, account nil", v14, 0xCu);
      sub_10000839C(v15);
    }

    else
    {
      v20 = v21;
    }
  }
}

void sub_10025E0C0(void *a1)
{
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  (*(v4 + 16))(&v23 - v6, v1 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v8 = *(*sub_1000080F8(v25, v25[3]) + 16);
  v24 = 0;
  v9 = [v8 combinedWalrusStatus:&v24];
  if (v24)
  {
    v10 = v24;

    swift_willThrow();
    sub_10000839C(v25);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v15 = 136315394;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v25);
      *(v15 + 12) = 2112;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      *v16 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - Failed to attach Walrus Status: %@", v15, 0x16u);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v17);
    }

    else
    {
    }
  }

  else
  {
    sub_10000839C(v25);
    if (a1)
    {
      [v9 octagonWalrusStatus];
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      [a1 setObject:isa forKeyedSubscript:kCDPAnalyticsOctagonWalrusStatus];

      [v9 escrowWalrusStatus];
      v21 = UInt._bridgeToObjectiveC()().super.super.isa;
      [a1 setObject:v21 forKeyedSubscript:kCDPAnalyticsEscrowWalrusStatus];

      [v9 pcsWalrusStatus];
      v22 = UInt._bridgeToObjectiveC()().super.super.isa;
      [a1 setObject:v22 forKeyedSubscript:kCDPAnalyticsPCSWalrusStatus];
    }
  }
}

uint64_t sub_10025E4AC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__followUpController;
  v2 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__cdpController;
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__akAccountManager;
  v8 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__deviceInfo;
  v10 = sub_100005814(&qword_1003E4950, &qword_100347B58);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__escrowRecordViabilityProvider;
  v12 = sub_100005814(&qword_1003E4960, qword_100347B68);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__featureFlagStateProvider;
  v14 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = *(v0 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck_reportEvent + 8);

  v16 = *(*v0 + 48);
  v17 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIDAvailabilityHealthCheck()
{
  result = qword_1003E4688;
  if (!qword_1003E4688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025E784()
{
  sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_10025EA2C(319, &qword_1003DB710, &qword_1003DF5C0, AKAccountManager_ptr);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_10025EA2C(319, &qword_1003E4698, &unk_1003DF5C8, AADeviceInfo_ptr);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_10000DAB8(319, &qword_1003E46A0, &qword_1003E03E8, &qword_100343DC8);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &unk_1003E46A8, &qword_1003E03E0, &qword_100343DC0);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10025EA2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100016034(255, a3, a4);
    v5 = type metadata accessor for Dependency();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10025EAA8()
{
  v1 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  (*(v2 + 16))(&v10 - v4, v0 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  v6 = [*(*sub_1000080F8(&v12 *(&v13 + 1)) + 16)];
  sub_10000839C(&v12);
  if (!v6)
  {
    v12 = 0u;
    v13 = 0u;
LABEL_10:
    sub_100008D3C(&v12, &qword_1003D87C8, qword_100344800);
    return 0;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 accountPropertyForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    goto LABEL_10;
  }

  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025ECC8()
{
  v1 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  (*(v2 + 16))(&v10 - v4, v0 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__accountStore, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  v6 = [*(*sub_1000080F8(&v12 *(&v13 + 1)) + 16)];
  sub_10000839C(&v12);
  if (!v6)
  {
    v12 = 0u;
    v13 = 0u;
LABEL_10:
    sub_100008D3C(&v12, &qword_1003D87C8, qword_100344800);
    return 0;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 accountPropertyForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    goto LABEL_10;
  }

  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025EEE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10025EF38(uint64_t a1)
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
  v12[1] = sub_1000082A8;

  return sub_10025A928(a1, v4, v5, v6, v7, v8, v9, v11);
}

void sub_10025F024(void *a1, unint64_t a2)
{
  if (a1)
  {
    v5[3] = &type metadata for Int;
    v5[0] = a2 < 2;
    sub_1000080F8(v5, &type metadata for Int);
    v3 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_10000839C(v5);
    v4 = String._bridgeToObjectiveC()();
    [a1 setObject:v3 forKeyedSubscript:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10025F0D8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100005814(&qword_1003E4960, qword_100347B68);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10025F1A4, 0, 0);
}

uint64_t sub_10025F1A4()
{
  v18 = v0;
  v1 = v0[8];
  v2 = sub_10025BE9C();
  v0[12] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    (*(v5 + 16))(v4, v0[8] + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck__escrowRecordViabilityProvider, v6);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v4, v6);
    v7 = *sub_1000080F8(v0 + 2, v0[5]);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10025F440;

    return sub_100287260(v3);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAB8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v17);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - Failed to attach Escrow Record Viability State, account nil", v13, 0xCu);
      sub_10000839C(v14);
    }

    v15 = v0[11];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10025F440(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_10025F634;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_10025F568;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10025F568()
{
  sub_10000839C((v0 + 16));
  v1 = *(v0 + 56);
  sub_10025F024(v1, *(v0 + 120));
  v2 = *(v0 + 96);
  if (v1)
  {
    v3 = *(v0 + 56);
    v4.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:v4.super.super.isa forKeyedSubscript:kAAAnalyticsRecordViabilityState];
  }

  else
  {
    v4.super.super.isa = *(v0 + 96);
  }

  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10025F634()
{
  v16 = v0;
  sub_10000839C((v0 + 16));
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 112);
    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to perform escrow check and dont know last state, setting viability state to unknown", v4, 0xCu);
    sub_10000839C(v5);
  }

  else
  {
    v7 = *(v0 + 112);
  }

  v8 = *(v0 + 56);
  sub_10025F024(v8, 0);
  v9 = *(v0 + 96);
  if (v8)
  {
    v10 = *(v0 + 56);
    v11.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v10 setObject:v11.super.super.isa forKeyedSubscript:kAAAnalyticsRecordViabilityState];
  }

  else
  {
    v11.super.super.isa = *(v0 + 96);
  }

  v12 = *(v0 + 88);

  v13 = *(v0 + 8);

  return v13();
}

void sub_10025F848(void *a1)
{
  if (a1)
  {
    v14 = a1;
    v1 = sub_10025CC8C(&selRef_passwordResetTokenForAccount_);
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    v2.super.super.isa = NSNumber.init(integerLiteral:)(v1).super.super.isa;
    [v14 setObject:v2.super.super.isa forKeyedSubscript:kAAAnalyticsPRKPresence];
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    v4 = v2.super.super.isa;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      v8->super.super.isa = v2.super.super.isa;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "AppleIDAvailabilityHealthCheck attachPRKPresence attached %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

      v10 = v9;
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v14, v12, "AppleIDAvailabilityHealthCheck prkPresence event is nil", v13, 2u);
    }
  }

  v10 = v14;
LABEL_12:
}

uint64_t sub_10025FAD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_100005814(&qword_1003DF5A0, &qword_100343680);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10033EB30;
  v9 = type metadata accessor for AppleIDAvailabilityHealthCheck();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();

  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &unk_1003DF5C8, AADeviceInfo_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E8, &qword_100343DC8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E0, &qword_100343DC0);
  Dependency.init(dependencyId:config:)();
  v13 = (v12 + OBJC_IVAR____TtC13appleaccountd30AppleIDAvailabilityHealthCheck_reportEvent);
  *v13 = a1;
  v13[1] = a2;
  *(v8 + 56) = v9;
  *(v8 + 64) = &off_1003B1770;
  *(v8 + 32) = v12;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAB8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v18 = v4;
    v19 = a3;
    v20 = v30;
    *v17 = 136315138;

    sub_100005814(&unk_1003E55C0, &qword_100348180);
    v21 = Array.description.getter();
    v23 = v22;

    v24 = sub_10021145C(v21, v23, &v30);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "activities: %s", v17, 0xCu);
    sub_10000839C(v20);
    a3 = v19;
    v4 = v18;
  }

  v25 = type metadata accessor for AppleIDAvailabilityActivityProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();

  Dependency.init(dependencyId:config:)();

  *(v28 + 16) = v8;
  *(v28 + 24) = a3 & 1;
  *(v4 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler_activityProvider) = v28;

  return v4;
}

uint64_t sub_10025FF0C()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v27 - v5;
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
    _os_log_impl(&_mh_execute_header, v8, v9, "Scheduling Apple ID Availability activity", v10, 2u);
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler__xpcActivityScheduler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v11 = sub_1000080F8(v27, v27[3]);
  v12 = *(v1 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler_activityProvider);
  v13 = *v11;
  v14 = static String._fromUTF8Repairing(_:)();
  v16 = v15;
  if (*(v12 + 24) == 1)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Time interval for AppleID Availability activity is being overridden.", v19, 2u);
    }

    v20 = 60;
  }

  else
  {
    v20 = 86400;
  }

  v28 = 257;
  v29 = v20 >> 1;
  v30 = v20 >> 1;
  v31 = v20;
  v32 = 8;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = sub_100313A50(&v28, v14, v16, sub_100260D34, v21);

  v23 = *(v13 + 16);
  *(v13 + 16) = v22;

  v24 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v25 = sub_10030F0FC("com.apple.appleaccountd.appleid.availability", 44, 2);
  sub_10031352C(v25, v24);

  return sub_10000839C(v27);
}

uint64_t sub_10026028C(void (*a1)(id), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v28[0] = UUID.uuidString.getter();
  v17 = v16;
  (*(v12 + 8))(v15, v11);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Starting on-demand Apple ID Availability activity", v21, 2u);
  }

  v22 = *(v3 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler_activityProvider);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  (*(v7 + 16))(v10, v22 + OBJC_IVAR____TtC13appleaccountd35AppleIDAvailabilityActivityProvider__accountStore, v6);

  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v24 = [*(*sub_1000080F8(v29 v29[3]) + 16)];
  if (v24)
  {

    sub_10000839C(v29);
    sub_100257F84(0, v28[0], v17, sub_100260964, v23);
  }

  else
  {

    sub_10000839C(v29);
    sub_100005814(&qword_1003E4610, &qword_100347AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = 0x72456E496E676953;
    *(inited + 40) = 0xEB00000000726F72;
    type metadata accessor for AASignInError(0);
    v28[1] = -8014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100260CB4(&qword_1003D8338, type metadata accessor for AASignInError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *(inited + 48) = v29[0];
    v27 = sub_100308AA8(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
    sub_100260970(v27, a1);
  }
}

uint64_t sub_1002606D8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13appleaccountd28AppleIDAvailabilityScheduler_activityProvider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleIDAvailabilityScheduler()
{
  result = qword_1003E49A0;
  if (!qword_1003E49A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002607E4()
{
  sub_100260880();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100260880()
{
  if (!qword_1003E54E0[0])
  {
    sub_100008CBC(&qword_1003DF5A0, &qword_100343680);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, qword_1003E54E0);
    }
  }
}

uint64_t sub_10026092C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

void sub_100260970(uint64_t a1, void (*a2)(id))
{
  if (*(a1 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a1;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_100260CB4(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = v18;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Overall on-demand Apple ID Availability activity failed: %@", v10, 0xCu);
      sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
    }

    v13 = v7;
    a2(v7);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Overall on-demand Apple ID Availability activity completed.", v17, 2u);
    }

    a2(0);
  }
}

uint64_t sub_100260CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100260CFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

void sub_100260DB8()
{
  v0 = [objc_allocWithZone(CDPFollowUpController) init];
  v1 = objc_opt_self();
  v2 = [v1 contextForConfirmExistingSecret];
  v10 = 0;
  v3 = [v0 clearFollowUpWithContext:v2 error:&v10];

  v4 = v10;
  if (v3 && (v5 = v10, v6 = [v1 contextForOfflinePasscodeChange], v10 = 0, v7 = objc_msgSend(v0, "clearFollowUpWithContext:error:", v6, &v10), v6, v4 = v10, (v7 & 1) != 0))
  {
    v8 = v10;
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100260F04(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = [objc_opt_self() contextForConfirmExistingSecret];
    }

    else if (a1 == 3)
    {
      v2 = [objc_opt_self() contextForOfflinePasscodeChange];
    }

    else
    {
      v2 = [objc_opt_self() contextForADPStateHealing];
    }

LABEL_11:
    v3 = v2;
    if (v3)
    {
      v4 = v3;
      v5 = objc_allocWithZone(CDPFollowUpController);
      v6 = v4;
      v7 = [v5 init];
      v15 = 0;
      if ([v7 postFollowUpWithContext:v6 error:&v15])
      {
        v8 = v15;
      }

      else
      {
        v13 = v15;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      goto LABEL_21;
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    v6 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "WalrusVerifyPasscode context nil, can't post followup!";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v6, v10, v12, v11, 2u);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (a1)
  {
    v2 = [objc_opt_self() contextForStateRepair];
    goto LABEL_11;
  }

  if (a2)
  {
    v2 = [objc_opt_self() contextForWalrusCreatePasscodeWithCDPContext:a2];
    goto LABEL_11;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA40);
  v6 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "CDPContext nil, can't create followup context for create passcode.";
    goto LABEL_18;
  }

LABEL_21:
}

void sub_1002611E8()
{
  v0 = [objc_allocWithZone(CDPFollowUpController) init];
  v1 = [objc_allocWithZone(CDPContext) init];
  v2 = [objc_opt_self() contextForWalrusCreatePasscodeWithCDPContext:v1];

  v6 = 0;
  v3 = [v0 clearFollowUpWithContext:v2 error:&v6];

  if (v3)
  {
    v4 = v6;
  }

  else
  {
    v5 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_10026135C(SEL *a1)
{
  v2 = [objc_allocWithZone(CDPFollowUpController) init];
  v3 = [objc_opt_self() *a1];
  v7 = 0;
  v4 = [v2 clearFollowUpWithContext:v3 error:&v7];

  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t sub_100261468()
{
  result = qword_1003E4B38;
  if (!qword_1003E4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4B38);
  }

  return result;
}

uint64_t sub_1002614BC()
{
  type metadata accessor for CloudDataProtectionHealthCheck();
  sub_100005814(&qword_1003E4CD8, qword_100347D18);
  result = String.init<A>(describing:)();
  qword_1003E4B40 = result;
  *algn_1003E4B48 = v1;
  return result;
}

void sub_100261510(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v36 = a3;
  v33 = *v4;
  v34 = a1;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
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
    v32 = a4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38[0] = v20;
    *v19 = 136315138;
    if (qword_1003D7E60 != -1)
    {
      swift_once();
    }

    *(v19 + 4) = sub_10021145C(qword_1003E4B40, *algn_1003E4B48, v38);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s - started.", v19, 0xCu);
    sub_10000839C(v20);

    a4 = v32;
  }

  else
  {
  }

  (*(v12 + 16))(v15, v5 + OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__accountStore, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  v21 = [*(*sub_1000080F8(v38 v38[3]) + 16)];
  sub_10000839C(v38);
  if (v21)
  {
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v24 = v34;
    v25 = v35;
    v23[4] = v5;
    v23[5] = v24;
    v23[6] = v25;
    v23[7] = v21;
    v23[8] = v36;
    v23[9] = a4;
    v23[10] = v33;

    sub_1000BCD5C(0, 0, v10, &unk_100347D00, v23);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136315138;
      if (qword_1003D7E60 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003E4B40, *algn_1003E4B48, v38);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - Primary account is not available, bailing from health check...", v28, 0xCu);
      sub_10000839C(v29);
    }

    type metadata accessor for AAError(0);
    v37 = -4404;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v30 = v38[0];
    v36(v38[0]);
  }
}

uint64_t sub_100261A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v17;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = sub_100005814(&qword_1003E4CD0, &qword_100347D10);
  v8[21] = v12;
  v13 = *(v12 - 8);
  v8[22] = v13;
  v14 = *(v13 + 64) + 15;
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_100261B6C, 0, 0);
}

uint64_t sub_100261B6C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__pdpAdpHealthChecks, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_1000080F8(v0 + 2, v4);
  v6 = *(v5 + 16);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_100261CF4;
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];

  return v13(v11, v9, v10, v4, v5);
}

uint64_t sub_100261CF4(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100261DF4, 0, 0);
}

uint64_t sub_100261DF4()
{
  v19 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[12];
  sub_10000839C(v0 + 2);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__cdpController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_10000839C(v0 + 7);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAAB8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    if (qword_1003D7E60 != -1)
    {
      swift_once();
    }

    *(v8 + 4) = sub_10021145C(qword_1003E4B40, *algn_1003E4B48, &v18);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s - PDP was never enabled on this account.", v8, 0xCu);
    sub_10000839C(v9);
  }

  v10 = v0[25];
  v12 = v0[16];
  v11 = v0[17];
  if (v10)
  {
    v13 = v0[25];
    swift_errorRetain();
    v12(v10);
  }

  else
  {
    v12(0);
  }

  v14 = v0[23];
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100262048()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__pdpAdpHealthChecks;
  v4 = sub_100005814(&qword_1003E4CD0, &qword_100347D10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30CloudDataProtectionHealthCheck__cdpController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudDataProtectionHealthCheck()
{
  result = qword_1003E4B90;
  if (!qword_1003E4B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002621DC()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003E4BA0, &qword_1003DF670, &qword_1003436C8);
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

uint64_t sub_10026234C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002623A4(uint64_t a1)
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

  return sub_100261A28(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_100262498(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v31);
  v6 = &v27 - v5;
  v7 = type metadata accessor for URL();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100005814(&qword_1003D9168, &qword_10033EC38);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  (*(v15 + 16))(&v27 - v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  v21 = sub_1000080F8((v30 + 16), *(v30 + 40));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v22 = v29;
  v23 = *(v28 + 8);
  v23(v11, v29);
  v24 = v31;
  (*(v3 + 16))(v6, *v21 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v31);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v24);
  v25 = *sub_1000080F8(v32, v32[3]);
  sub_1000328BC(v13, sub_100266940, v20);

  v23(v13, v22);
  return sub_10000839C(v32);
}

uint64_t sub_1002627F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_1002628C4, 0, 0);
}

void sub_100262C0C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v7 = v5;
  v58 = a3;
  v11 = type metadata accessor for UUID();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100008D04(v14, qword_1003FAA88);

  v16 = a2;
  v57 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v53 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v22 = a1;
    v23 = swift_slowAlloc();
    v59 = v23;
    *v20 = 136315394;
    *(v20 + 4) = sub_10021145C(v58, a4, &v59);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *v21 = v16;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending message with description: %s, to: %@", v20, 0x16u);
    sub_100083380(v21);

    sub_10000839C(v23);
    a1 = v22;

    a5 = v53;
  }

  v25 = a5(a1);
  if (v26 >> 60 == 15)
  {

    v27 = v16;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59 = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(v58, a4, &v59);
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v31 = v27;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "Fail to send message with description %s to %@.", v30, 0x16u);
      sub_100083380(v31);

      sub_10000839C(v32);
    }

    [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
    swift_willThrow();
  }

  else
  {
    v34 = *(v7 + 16);
    v35 = v25;
    v53 = v26;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1003431D0;
    *(v37 + 32) = v16;
    sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
    v38 = v16;
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v59 = 0;
    v40 = [v34 sendMessage:isa destinations:v39 sendFromHandleUri:0 responseIdentifier:0 fireAndForget:0 requiredCapabilities:0 lackingCapabilities:0 error:&v59];

    v41 = v59;
    if (v40)
    {
      v42 = v54;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v41;

      (*(v55 + 8))(v42, v56);

      v44 = v38;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v59 = v49;
        *v47 = 136315394;
        *(v47 + 4) = sub_10021145C(v58, a4, &v59);
        *(v47 + 12) = 2112;
        *(v47 + 14) = v44;
        *v48 = v44;
        v50 = v44;
        _os_log_impl(&_mh_execute_header, v45, v46, "Message with description %s sent successfully to %@!", v47, 0x16u);
        sub_100083380(v48);

        sub_10000839C(v49);
      }

      sub_100015D58(v35, v53);
    }

    else
    {
      v51 = v59;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v35, v53);
    }
  }
}

uint64_t sub_10026335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1001F7F4C;

  return sub_10026340C(a5, a6);
}

uint64_t sub_10026340C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3[28] = v10;
  v11 = *(v10 - 8);
  v3[29] = v11;
  v12 = *(v11 + 64) + 15;
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002635DC, 0, 0);
}

uint64_t sub_1002635DC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v2 + 16))(v1, v0[16] + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[31] = v7;
  v0[32] = v9;
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  v13 = v0[16];
  sub_10000839C(v0 + 2);
  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  v0[12] = *sub_1000080F8(v0 + 7, v0[10]);
  v14 = swift_task_alloc();
  v0[33] = v14;
  *(v14 + 16) = v0 + 12;
  v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  v0[34] = v16;
  v17 = sub_100005814(&unk_1003E4DD0, &qword_10033F468);
  *v16 = v0;
  v16[1] = sub_100263824;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 13, 0, 0, 0xD000000000000018, 0x800000010032D5E0, sub_100266840, v14, v17);
}

uint64_t sub_100263824()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  v2[35] = v0;

  v5 = v2[33];
  if (v0)
  {
    v6 = v2[32];

    v7 = sub_100263C74;
  }

  else
  {

    v7 = sub_10026396C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10026396C()
{
  v1 = v0[13];
  sub_10000839C(v0 + 7);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[17];
    v5 = v0[18];
    v26 = v4;
    v27 = *(v1 + 16);
    while (v3 < *(v1 + 16))
    {
      v6 = v0[24];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_1000C522C(v1 + v7 + v8 * v3, v6);
      v9 = v0[24];
      if (*(v6 + *(v4 + 28)) == 2)
      {
        sub_1000C5368(v9, v0[23]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1002E0244(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_1002E0244(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[23];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1000C5368(v12, _swiftEmptyArrayStorage + v7 + v11 * v8);
        v4 = v26;
        v2 = v27;
      }

      else
      {
        sub_10026684C(v9, type metadata accessor for CustodianshipInfoRecord);
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v0[36] = _swiftEmptyArrayStorage;
    if (qword_1003D7F38 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v13 = type metadata accessor for Logger();
  v0[37] = sub_100008D04(v13, qword_1003FAA88);
  swift_retain_n();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    v17 = *(v1 + 16);

    *(v16 + 4) = v17;

    *(v16 + 12) = 2048;
    v18 = _swiftEmptyArrayStorage[2];

    *(v16 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v14, v15, "Out of %ld custodianship records, %ld are accepted", v16, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v19 = swift_task_alloc();
  v0[38] = v19;
  *v19 = v0;
  v19[1] = sub_100263D40;
  v20 = v0[31];
  v21 = v0[32];
  v22 = v0[15];
  v23 = v0[16];
  v24 = v0[14];

  return sub_100264C64(_swiftEmptyArrayStorage, v24, v22, v20, v21);
}

uint64_t sub_100263C74()
{
  sub_10000839C(v0 + 7);
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100263D40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_100264AAC;
  }

  else
  {
    v5 = sub_100263E54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100263E54()
{
  v67 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 312);
  v8 = *(v0 + 288);
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    v10 = *(v8 + 16);

    *(v9 + 4) = v10;

    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v7 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "Out of %ld accepted custodianship records, %ld doesn't have recovery info record", v9, 0x16u);
  }

  else
  {
    v11 = *(v0 + 288);
  }

  result = *(v0 + 312);
  v13 = *(result + 16);
  *(v0 + 328) = v13;
  if (v13)
  {
    v14 = *(*(v0 + 144) + 80);
    *(v0 + 360) = v14;
    *(v0 + 336) = 0;
    if (*(result + 16))
    {
      v15 = *(v0 + 296);
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      sub_1000C522C(result + ((v14 + 32) & ~v14), v16);
      sub_1000C522C(v16, v17);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 168);
      if (v20)
      {
        v22 = *(v0 + 136);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v66 = v24;
        *v23 = 136315138;
        v25 = *(v22 + 20);
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        sub_10026684C(v21, type metadata accessor for CustodianshipInfoRecord);
        v29 = sub_10021145C(v26, v28, &v66);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v18, v19, "Resending accept message for %s", v23, 0xCu);
        sub_10000839C(v24);
      }

      else
      {

        sub_10026684C(v21, type metadata accessor for CustodianshipInfoRecord);
      }

      v40 = *(v0 + 296);
      v41 = *(v0 + 176);
      v42 = *(v0 + 152);
      sub_1000C522C(v41, *(v0 + 160));
      sub_1000C522C(v41, v42);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 152);
      v47 = *(v0 + 160);
      if (v45)
      {
        v48 = *(v0 + 136);
        v49 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v49 = 136315394;
        v50 = *(v48 + 20);
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        sub_10026684C(v47, type metadata accessor for CustodianshipInfoRecord);
        v54 = sub_10021145C(v51, v53, &v66);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = (v46 + *(v48 + 24));
        v56 = *v55;
        v57 = v55[1];

        sub_10026684C(v46, type metadata accessor for CustodianshipInfoRecord);
        v58 = sub_10021145C(v56, v57, &v66);

        *(v49 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v43, v44, "Resending accept message for %s, handle: %s", v49, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10026684C(v46, type metadata accessor for CustodianshipInfoRecord);
        sub_10026684C(v47, type metadata accessor for CustodianshipInfoRecord);
      }

      v59 = swift_task_alloc();
      *(v0 + 344) = v59;
      *v59 = v0;
      v59[1] = sub_100264440;
      v60 = *(v0 + 248);
      v61 = *(v0 + 256);
      v62 = *(v0 + 176);
      v63 = *(v0 + 120);
      v64 = *(v0 + 128);
      v65 = *(v0 + 112);

      return sub_100265978(v62, v65, v63, v60, v61);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v30 = *(v0 + 256);
    v31 = *(v0 + 240);
    v32 = *(v0 + 216);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v38 = *(v0 + 152);
    v37 = *(v0 + 160);

    v39 = *(v0 + 8);

    return v39();
  }

  return result;
}

uint64_t sub_100264440()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 312);
    v5 = *(v2 + 256);

    v6 = sub_100264B84;
  }

  else
  {
    v6 = sub_100264568;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100264568()
{
  v59 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336) + 1;
  result = sub_10026684C(*(v0 + 176), type metadata accessor for CustodianshipInfoRecord);
  if (v2 == v1)
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 256);
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v15 = *(v0 + 336) + 1;
    *(v0 + 336) = v15;
    v16 = *(v0 + 312);
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v0 + 296);
      v19 = *(v0 + 168);
      v18 = *(v0 + 176);
      sub_1000C522C(v16 + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(*(v0 + 144) + 72) * v15, v18);
      sub_1000C522C(v18, v19);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 168);
      if (v22)
      {
        v24 = *(v0 + 136);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v58 = v26;
        *v25 = 136315138;
        v27 = *(v24 + 20);
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        sub_10026684C(v23, type metadata accessor for CustodianshipInfoRecord);
        v31 = sub_10021145C(v28, v30, &v58);

        *(v25 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v20, v21, "Resending accept message for %s", v25, 0xCu);
        sub_10000839C(v26);
      }

      else
      {

        sub_10026684C(v23, type metadata accessor for CustodianshipInfoRecord);
      }

      v32 = *(v0 + 296);
      v33 = *(v0 + 176);
      v34 = *(v0 + 152);
      sub_1000C522C(v33, *(v0 + 160));
      sub_1000C522C(v33, v34);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 152);
      v39 = *(v0 + 160);
      if (v37)
      {
        v40 = *(v0 + 136);
        v41 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v41 = 136315394;
        v42 = *(v40 + 20);
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        sub_10026684C(v39, type metadata accessor for CustodianshipInfoRecord);
        v46 = sub_10021145C(v43, v45, &v58);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2080;
        v47 = (v38 + *(v40 + 24));
        v48 = *v47;
        v49 = v47[1];

        sub_10026684C(v38, type metadata accessor for CustodianshipInfoRecord);
        v50 = sub_10021145C(v48, v49, &v58);

        *(v41 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v35, v36, "Resending accept message for %s, handle: %s", v41, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10026684C(v38, type metadata accessor for CustodianshipInfoRecord);
        sub_10026684C(v39, type metadata accessor for CustodianshipInfoRecord);
      }

      v51 = swift_task_alloc();
      *(v0 + 344) = v51;
      *v51 = v0;
      v51[1] = sub_100264440;
      v52 = *(v0 + 248);
      v53 = *(v0 + 256);
      v54 = *(v0 + 176);
      v55 = *(v0 + 120);
      v56 = *(v0 + 128);
      v57 = *(v0 + 112);

      return sub_100265978(v54, v57, v55, v52, v53);
    }
  }

  return result;
}

uint64_t sub_100264AAC()
{
  v1 = v0[36];
  v2 = v0[32];

  v3 = v0[40];
  v4 = v0[30];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[19];
  v10 = v0[20];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100264B84()
{
  sub_10026684C(v0[22], type metadata accessor for CustodianshipInfoRecord);
  v1 = v0[44];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100264C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = *(*(type metadata accessor for CustodianRecoveryInfoRecord() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v10 = *(v9 + 64) + 15;
  v6[20] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v6[21] = RecoveryRecordsRequest;
  v12 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v13 = type metadata accessor for CustodianshipInfoRecord();
  v6[23] = v13;
  v14 = *(v13 - 8);
  v6[24] = v14;
  v15 = *(v14 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_100264DFC, 0, 0);
}

uint64_t sub_100264DFC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v33 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage;
    v34 = *(v0 + 128);
    *(v0 + 224) = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage;
    v5 = *(v3 + 80);
    *(v0 + 272) = v5;
    v6 = *(v3 + 72);
    *(v0 + 240) = 0;
    *(v0 + 248) = _swiftEmptyArrayStorage;
    *(v0 + 232) = v6;
    v7 = *(v0 + 208);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = *(v0 + 104);
    v31 = *(v0 + 112);
    v32 = *(v0 + 96);
    sub_1000C522C(v1 + ((v5 + 32) & ~v5), v7);
    v15 = *(v4 + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 16))(v8, v7 + v15, v16);
    *(v8 + v9[5]) = 0;
    v17 = v8 + v9[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    *(v8 + v9[7]) = 1;
    v18 = (v8 + v9[8]);
    *v18 = v31;
    v18[1] = v13;
    v19 = (v8 + v9[9]);
    *v19 = v32;
    v19[1] = v14;
    (*(v11 + 16))(v10, v34 + v33, v12);

    Dependency.wrappedValue.getter();
    (*(v11 + 8))(v10, v12);
    v20 = *sub_1000080F8((v0 + 16), *(v0 + 40));
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_10026509C;
    v22 = *(v0 + 176);
    v23 = *(v0 + 136);

    return sub_100021548(v23, v22, 0, 0);
  }

  else
  {
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 176);
    v28 = *(v0 + 160);
    v29 = *(v0 + 136);

    v30 = *(v0 + 8);

    return v30(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10026509C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1002654A0;
  }

  else
  {
    sub_10026684C(*(v2 + 136), type metadata accessor for CustodianRecoveryInfoRecord);
    v4 = sub_1002651CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002651CC()
{
  v1 = *(v0 + 208);
  sub_10026684C(*(v0 + 176), type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10026684C(v1, type metadata accessor for CustodianshipInfoRecord);
  sub_10000839C((v0 + 16));
  v2 = *(v0 + 240) + 1;
  if (v2 == *(v0 + 216))
  {
    v3 = *(v0 + 248);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 176);
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);

    v9 = *(v0 + 8);

    return v9(v3);
  }

  else
  {
    *(v0 + 240) = v2;
    v32 = *(v0 + 224);
    v11 = *(v0 + 208);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    v18 = *(v0 + 120);
    v31 = *(v0 + 128);
    v19 = *(v0 + 104);
    v30 = *(v0 + 96);
    v29 = *(v0 + 112);
    sub_1000C522C(*(v0 + 88) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 232) * v2, v11);
    v20 = *(v13 + 20);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 16))(v12, v11 + v20, v21);
    *(v12 + v15[5]) = 0;
    v22 = v12 + v15[6];
    *v22 = 0;
    *(v22 + 8) = 1;
    *(v12 + v15[7]) = 1;
    v23 = (v12 + v15[8]);
    *v23 = v29;
    v23[1] = v18;
    v24 = (v12 + v15[9]);
    *v24 = v30;
    v24[1] = v19;
    (*(v17 + 16))(v14, v31 + v32, v16);

    Dependency.wrappedValue.getter();
    (*(v17 + 8))(v14, v16);
    v25 = *sub_1000080F8((v0 + 16), *(v0 + 40));
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_10026509C;
    v27 = *(v0 + 176);
    v28 = *(v0 + 136);

    return sub_100021548(v28, v27, 0, 0);
  }
}

uint64_t sub_1002654A0()
{
  v1 = *(v0 + 264);
  sub_10026684C(*(v0 + 176), type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10000839C((v0 + 16));
  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 64);
    *(v0 + 72) = v2;
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    v3 = *(v0 + 248);
    if (*(v0 + 80) == -7062)
    {
      sub_1000C522C(*(v0 + 208), *(v0 + 200));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v0 + 248);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1003060B4(0, v5[2] + 1, 1, *(v0 + 248));
      }

      v7 = v5[2];
      v6 = v5[3];
      if (v7 >= v6 >> 1)
      {
        v5 = sub_1003060B4(v6 > 1, v7 + 1, 1, v5);
      }

      v8 = *(v0 + 264);
      v9 = *(v0 + 232);
      v10 = *(v0 + 272);
      v12 = *(v0 + 200);
      v11 = *(v0 + 208);

      sub_10026684C(v11, type metadata accessor for CustodianshipInfoRecord);
      v5[2] = v7 + 1;
      sub_1000C5368(v12, v5 + ((v10 + 32) & ~v10) + v9 * v7);
      v13 = *(v0 + 240) + 1;
      if (v13 == *(v0 + 216))
      {
        v15 = *(v0 + 200);
        v14 = *(v0 + 208);
        v16 = *(v0 + 176);
        v17 = *(v0 + 160);
        v18 = *(v0 + 136);

        v19 = *(v0 + 8);

        return v19(v5);
      }

      else
      {
        *(v0 + 240) = v13;
        *(v0 + 248) = v5;
        v51 = *(v0 + 224);
        v30 = *(v0 + 208);
        v31 = *(v0 + 176);
        v32 = *(v0 + 184);
        v33 = *(v0 + 160);
        v34 = *(v0 + 168);
        v35 = *(v0 + 144);
        v36 = *(v0 + 152);
        v37 = *(v0 + 120);
        v50 = *(v0 + 128);
        v38 = *(v0 + 104);
        v49 = *(v0 + 96);
        v48 = *(v0 + 112);
        sub_1000C522C(*(v0 + 88) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 232) * v13, v30);
        v39 = *(v32 + 20);
        v40 = type metadata accessor for UUID();
        (*(*(v40 - 8) + 16))(v31, v30 + v39, v40);
        *(v31 + v34[5]) = 0;
        v41 = v31 + v34[6];
        *v41 = 0;
        *(v41 + 8) = 1;
        *(v31 + v34[7]) = 1;
        v42 = (v31 + v34[8]);
        *v42 = v48;
        v42[1] = v37;
        v43 = (v31 + v34[9]);
        *v43 = v49;
        v43[1] = v38;
        (*(v36 + 16))(v33, v50 + v51, v35);

        Dependency.wrappedValue.getter();
        (*(v36 + 8))(v33, v35);
        v44 = *sub_1000080F8((v0 + 16), *(v0 + 40));
        v45 = swift_task_alloc();
        *(v0 + 256) = v45;
        *v45 = v0;
        v45[1] = sub_10026509C;
        v46 = *(v0 + 176);
        v47 = *(v0 + 136);

        return sub_100021548(v47, v46, 0, 0);
      }
    }
  }

  else
  {
    v21 = *(v0 + 248);
  }

  v22 = *(v0 + 264);
  v23 = *(v0 + 200);
  v24 = *(v0 + 208);
  v25 = *(v0 + 176);
  v26 = *(v0 + 160);
  v27 = *(v0 + 136);
  swift_willThrow();
  sub_10026684C(v24, type metadata accessor for CustodianshipInfoRecord);

  v28 = *(v0 + 8);
  v29 = *(v0 + 264);

  return v28();
}

uint64_t sub_100265978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_100265AB4, 0, 0);
}

uint64_t sub_100265AB4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v2 + 16))(v1, v0[17] + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[24] = v0[10];
  v4 = kAAAnalyticsEventCustodianHealthCheckIncompleteInvitationResendInvitationAcceptanceMessage;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 analyticsEventWithName:v6 altDSID:0 flowID:0];
  v0[25] = v7;
  v8 = v7;

  if (v8)
  {

    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v9 = v8;
    v10 = NSString.init(stringLiteral:)();
    [v9 setObject:0 forKeyedSubscript:v10];
  }

  sub_100257274(v6);
  v11 = v0[16];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v15 = type metadata accessor for CustodianshipInfoRecord();
  v16 = *(v15 + 20);
  v17 = objc_allocWithZone(AACustodianInvitationResponseContext);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v19 = [v17 initWithCustodianID:isa didAccept:1];
  v0[26] = v19;

  v20 = String._bridgeToObjectiveC()();
  [v19 setTelemetryFlowID:v20];

  if (v11)
  {
    v21 = v0[15];
    v22 = v0[16];
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v25 = v0[19];
  v24 = v0[20];
  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[12];
  [v19 setAltDSID:v23];

  (*(v25 + 16))(v24, v27 + OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__messager, v26);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v24, v26);
  v29 = sub_1000080F8(v0 + 2, v0[5]);
  v30 = (v28 + *(v15 + 24));
  v32 = *v30;
  v31 = v30[1];
  v33 = *v29;
  v34 = swift_task_alloc();
  v0[27] = v34;
  *v34 = v0;
  v34[1] = sub_100265EF8;

  return sub_1002627F8(v19, v32, v31, 2, 0);
}

uint64_t sub_100265EF8()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1002660EC;
  }

  else
  {
    v3 = sub_10026600C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026600C()
{
  v1 = *(v0 + 200);

  sub_10000839C((v0 + 16));
  if (v1)
  {
    v2 = *(v0 + 200);
    [v2 updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v2;
    sub_100246FA8(v2);
  }

  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 160);
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002660EC()
{
  sub_10000839C((v0 + 16));
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  swift_getErrorValue();
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  sub_1002DEA80(*(v0 + 64));
  if (v2)
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = v5;
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    [v7 updateTaskResultWithError:v8];

    swift_getObjectType();
    v9 = v7;
    sub_100246FA8(v5);
  }

  else
  {
    swift_errorRetain();
  }

  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v12 = *(v0 + 184);
  v13 = *(v0 + 160);
  swift_willThrow();
  swift_unknownObjectRelease();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100266248()
{
  v1 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__messager;
  v4 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__reporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd40CustodianIncompleteInvitationHealthCheck__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianIncompleteInvitationHealthCheck()
{
  result = qword_1003E4D28;
  if (!qword_1003E4D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100266428()
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1002665C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000BCD5C(0, 0, v12, &unk_100347D88, v15);
}

uint64_t sub_10026670C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10026675C(uint64_t a1)
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

  return sub_10026335C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10026684C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002668AC()
{
  v1 = sub_100005814(&qword_1003D9168, &qword_10033EC38);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100266940(uint64_t a1, char a2)
{
  v5 = *(sub_100005814(&qword_1003D9168, &qword_10033EC38) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001D294(a1, a2 & 1, v6);
}

uint64_t sub_1002669CC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for CustodianMetadataController(0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
    Dependency.init(dependencyId:config:)();
    v7 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
    v8 = type metadata accessor for JSONEncoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    *(v2 + v7) = JSONEncoder.init()();
    v11 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
    v12 = type metadata accessor for JSONDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    *(v2 + v11) = JSONDecoder.init()();
    v15 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100266AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100266AF8, 0, 0);
}

uint64_t sub_100266AF8()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100266BCC;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_100315244();
}

uint64_t sub_100266BCC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100266D48;
  }

  else
  {
    v3 = sub_100266CE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100266CE0()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100266D48()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100266DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100266F0C, 0, 0);
}

uint64_t sub_100266F0C()
{
  v54 = v0;
  v1 = *(v0[12] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator);
  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v3 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v3 = "ck";
  }

  sub_1002A25A0(v2, v3 | 0x8000000000000000);
  v5 = v4;

  if (v5)
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
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "🔔 Custodian setup readiness health check feature is not enabled", v9, 2u);
    }

    v10 = v0[20];
    v11 = v0[17];

    v12 = v0[1];

    return v12();
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "🔔 Custodian setup readiness health check feature is enabled. Continuing to custodian setup readiness check", v16, 2u);
    }

    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[18];
    v20 = v0[12];

    (*(v18 + 16))(v17, v20 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__accountStore, v19);
    Dependency.wrappedValue.getter();
    (*(v18 + 8))(v17, v19);
    v21 = [*(*sub_1000080F8(v0 + 2 v0[5]) + 16)];
    if (v21 && (v22 = v21, v23 = [v21 aa_altDSID], v22, v23))
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v0[21] = v26;
    v28 = v0[16];
    v27 = v0[17];
    v29 = v0[15];
    v30 = v0[12];
    sub_10000839C(v0 + 2);
    (*(v28 + 16))(v27, v30 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v29);
    Dependency.wrappedValue.getter();
    (*(v28 + 8))(v27, v29);
    v0[22] = v0[10];
    v31 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;
    v32 = v0[14];
    v33 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;

    if (v26)
    {

      v34 = String._bridgeToObjectiveC()();

      v35 = v0[14];
    }

    else
    {
      v34 = 0;
    }

    v36 = v0[13];
    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v37 analyticsEventWithName:v31 altDSID:v34 flowID:v38];
    v0[23] = v39;

    if (v39)
    {
      v40 = objc_allocWithZone(NSNumber);
      v41 = v39;
      v42 = [v40 initWithInteger:13];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v43 = NSString.init(stringLiteral:)();
      [v41 setObject:v42 forKeyedSubscript:v43];
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v0[24] = sub_100008D04(v13, qword_1003FAA40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_10021145C(0xD000000000000025, 0x80000001003329E0, &v53);
      _os_log_impl(&_mh_execute_header, v44, v45, "Performing: %s...", v46, 0xCu);
      sub_10000839C(v47);
    }

    sub_100257274(v31);
    v48 = swift_task_alloc();
    v0[25] = v48;
    *v48 = v0;
    v48[1] = sub_10026778C;
    v49 = v0[13];
    v50 = v0[14];
    v51 = v0[12];

    return sub_100267CC0(v48, v51, v49, v50, v24, v26);
  }
}

uint64_t sub_10026778C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1002678A0;
  }

  else
  {
    v3 = sub_100267B20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002678A0()
{
  v24 = v0;
  v1 = v0[26];
  v2 = v0[24];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD000000000000025, 0x80000001003329E0, &v23);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[23];
  swift_getErrorValue();
  v10 = v0[7];
  v11 = v0[9];
  sub_1002DEA80(v0[8]);
  if (v9)
  {
    v13 = v0[22];
    v12 = v0[23];
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

  v16 = v0[22];
  v17 = v0[23];
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[17];
  swift_willThrow();

  swift_unknownObjectRelease();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100267B20()
{
  v15 = v0;
  v1 = *(v0 + 192);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000025, 0x80000001003329E0, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  if (v7)
  {
    [*(v0 + 184) updateTaskResultWithError:0];
    swift_getObjectType();
    v9 = v7;
    sub_100246FA8(v7);
  }

  swift_unknownObjectRelease();

  v10 = *(v0 + 160);
  v11 = *(v0 + 136);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100267CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v6[14] = v7;
  v8 = *(v7 + 64) + 15;
  v6[15] = swift_task_alloc();
  v9 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v6[16] = v9;
  v10 = *(v9 - 8);
  v6[17] = v10;
  v11 = *(v10 + 64) + 15;
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100267DEC, 0, 0);
}

uint64_t sub_100267DEC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 16))(v1, v0[9] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[7] = *sub_1000080F8(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *(v4 + 16) = v0 + 7;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = sub_100005814(&unk_1003E4DD0, &qword_10033F468);
  *v6 = v0;
  v6[1] = sub_100267F60;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 8, 0, 0, 0xD000000000000018, 0x800000010032D5E0, sub_1000709F4, v4, v7);
}

uint64_t sub_100267F60()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1002681D0;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_10026807C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026807C()
{
  v1 = v0[8];
  v0[22] = v1;
  result = sub_10000839C(v0 + 2);
  v3 = *(v1 + 16);
  v0[23] = v3;
  if (v3)
  {
    v4 = v0[14];
    v0[24] = 0;
    v5 = v0[22];
    if (*(v5 + 16))
    {
      sub_10028338C(v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v0[15], type metadata accessor for CustodianshipInfoRecord);
      v6 = swift_task_alloc();
      v0[25] = v6;
      *v6 = v0;
      v6[1] = sub_100268250;
      v7 = v0[15];
      v8 = v0[12];
      v9 = v0[13];
      v10 = v0[10];
      v11 = v0[11];
      v12 = v0[9];

      return sub_100268568(v7, v10, v11, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = v0[22];
    v14 = v0[18];
    v15 = v0[15];

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_1002681D0()
{
  v1 = v0[19];

  sub_10000839C(v0 + 2);
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100268250()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    sub_1002833F4(*(v2 + 120), type metadata accessor for CustodianshipInfoRecord);

    v5 = sub_1002684F8;
  }

  else
  {
    sub_1002833F4(*(v2 + 120), type metadata accessor for CustodianshipInfoRecord);
    v5 = sub_1002683A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1002683A8()
{
  v1 = v0[24] + 1;
  if (v1 == v0[23])
  {
    v2 = v0[22];
    v3 = v0[18];
    v4 = v0[15];

    v5 = v0[1];

    v5();
  }

  else
  {
    v0[24] = v1;
    v6 = v0[22];
    if (v1 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10028338C(v6 + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)) + *(v0[14] + 72) * v1, v0[15], type metadata accessor for CustodianshipInfoRecord);
      v7 = swift_task_alloc();
      v0[25] = v7;
      *v7 = v0;
      v7[1] = sub_100268250;
      v8 = v0[15];
      v9 = v0[12];
      v10 = v0[13];
      v11 = v0[10];
      v12 = v0[11];
      v13 = v0[9];

      sub_100268568(v8, v11, v12, v9, v10);
    }
  }
}

uint64_t sub_1002684F8()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100268568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v10 = type metadata accessor for CustodianshipInfoRecord();
  v6[26] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v12 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  v6[28] = v12;
  v13 = *(v12 - 8);
  v6[29] = v13;
  v14 = *(v13 + 64) + 15;
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002686D4, 0, 0);
}

uint64_t sub_1002686D4()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  v7 = sub_1002669CC();
  *(v0 + 248) = v7;
  v8 = *(v4 + 20);
  *(v0 + 336) = v8;
  v9 = sub_100015A98(1, v6 + v8, 0x6465527075746573, 0xEF6574617453736ELL, 0);
  v11 = v10;
  *(v0 + 256) = v10;
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v12 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_100268844;

  return sub_100013C50(v0 + 56, v9, v11);
}

uint64_t sub_100268844()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 256);

  if (v0)
  {
    v6 = sub_10026933C;
  }

  else
  {
    v6 = sub_100268978;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100268978()
{
  v92 = v0;
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 112) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 112);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  if (v1)
  {
    v4 = *(v0 + 112);
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder);
    sub_100015D6C(v5, v6);
    sub_100282280();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_100012324(v5, v7);

      sub_100012324(v5, v7);
      v9 = 240;
    }

    else
    {
      sub_100012324(v5, v7);

      sub_100012324(v5, v7);
      v9 = *(v0 + 340);
    }

    v11 = *(v0 + 248);

    v2 = 0;
    if (v9 <= 0xEF && (v9 & 0xC0) != 0x40)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 216);
      v13 = *(v0 + 136);
      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAAB8);
      sub_10028338C(v13, v12, type metadata accessor for CustodianshipInfoRecord);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 216);
      if (v17)
      {
        v19 = *(v0 + 208);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v91[0] = v21;
        *v20 = 136315138;
        v22 = *(v19 + 20);
        type metadata accessor for UUID();
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        sub_1002833F4(v18, type metadata accessor for CustodianshipInfoRecord);
        v26 = sub_10021145C(v23, v25, v91);

        *(v20 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v15, v16, "Custodian setup readiness check was performed previously for custodianID: %s", v20, 0xCu);
        sub_10000839C(v21);
      }

      else
      {

        sub_1002833F4(v18, type metadata accessor for CustodianshipInfoRecord);
      }

      v88 = *(v0 + 240);
      v89 = *(v0 + 216);
      v90 = *(v0 + 200);

      v87 = *(v0 + 8);
LABEL_35:

      return v87();
    }
  }

  else
  {
    v10 = *(v0 + 248);
  }

  v27 = *(v0 + 336);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 168);
  v32 = *(v0 + 136);
  (*(v29 + 16))(v28, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v30);
  Dependency.wrappedValue.getter();
  (*(v29 + 8))(v28, v30);
  *(v0 + 280) = *(v0 + 120);
  v33 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v91[0] = 0xD000000000000013;
  v91[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  *(v0 + 288) = 0xD000000000000013;
  *(v0 + 296) = 0x8000000100332A20;
  if (v31)
  {
    v35 = *(v0 + 160);
    v36 = *(v0 + 168);
    v37 = *(v0 + 152);
    v38 = v33;

    v39 = String._bridgeToObjectiveC()();

    v40 = *(v0 + 152);
  }

  else
  {
    v41 = *(v0 + 152);
    v42 = v33;

    v39 = 0;
  }

  v43 = *(v0 + 144);
  v44 = objc_opt_self();
  v45 = String._bridgeToObjectiveC()();

  v46 = [v44 analyticsEventWithName:v33 altDSID:v39 flowID:v45];
  *(v0 + 304) = v46;

  if (v46)
  {
    v47 = objc_allocWithZone(NSNumber);
    v48 = v46;
    v49 = [v47 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v50 = NSString.init(stringLiteral:)();
    [v48 setObject:v49 forKeyedSubscript:v50];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v51, qword_1003FAA40);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v91[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v91);
    _os_log_impl(&_mh_execute_header, v52, v53, "Performing: %s...", v54, 0xCu);
    sub_10000839C(v55);
  }

  sub_100257274(v33);
  if (v2)
  {
    v56 = *(v0 + 312);
    v57 = *(v0 + 296);

    swift_errorRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v61 = *(v0 + 288);
      v60 = *(v0 + 296);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v91[0] = v64;
      *v62 = 136315394;
      *(v62 + 4) = sub_10021145C(v61, v60, v91);
      *(v62 + 12) = 2112;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 14) = v65;
      *v63 = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "❌ %s - failed with error: %@", v62, 0x16u);
      sub_100008D3C(v63, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v64);
    }

    v66 = *(v0 + 304);
    swift_getErrorValue();
    v67 = *(v0 + 88);
    v68 = *(v0 + 104);
    sub_1002DEA80(*(v0 + 96));
    if (v66)
    {
      v69 = *(v0 + 304);
      v70 = *(v0 + 280);
      v71 = v69;
      swift_errorRetain();
      v72 = _convertErrorToNSError(_:)();
      [v71 updateTaskResultWithError:v72];

      swift_getObjectType();
      sub_100246FA8(v69);
    }

    else
    {
      swift_errorRetain();
    }

    v81 = *(v0 + 296);
    v82 = *(v0 + 304);
    v83 = *(v0 + 280);
    v84 = *(v0 + 240);
    v85 = *(v0 + 216);
    v86 = *(v0 + 200);
    swift_willThrow();

    swift_unknownObjectRelease();

    v87 = *(v0 + 8);
    goto LABEL_35;
  }

  v73 = swift_task_alloc();
  *(v0 + 320) = v73;
  *v73 = v0;
  v73[1] = sub_1002699F0;
  v75 = *(v0 + 168);
  v74 = *(v0 + 176);
  v76 = *(v0 + 152);
  v77 = *(v0 + 160);
  v78 = *(v0 + 136);
  v79 = *(v0 + 144);

  return sub_10026AE80(v73, v78, v74, v79, v76, v77, v75);
}

uint64_t sub_10026933C()
{
  v41 = v0;
  v1 = *(v0 + 272);
  sub_10000839C((v0 + 16));

  v2 = *(v0 + 248);

  v3 = *(v0 + 336);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  (*(v5 + 16))(v4, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v6);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v4, v6);
  *(v0 + 280) = *(v0 + 120);
  v9 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v40[0] = 0xD000000000000013;
  v40[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  *(v0 + 288) = 0xD000000000000013;
  *(v0 + 296) = 0x8000000100332A20;
  if (v7)
  {
    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = v9;

    v15 = String._bridgeToObjectiveC()();

    v16 = *(v0 + 152);
  }

  else
  {
    v17 = *(v0 + 152);
    v18 = v9;

    v15 = 0;
  }

  v19 = *(v0 + 144);
  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 analyticsEventWithName:v9 altDSID:v15 flowID:v21];
  *(v0 + 304) = v22;

  if (v22)
  {
    v23 = objc_allocWithZone(NSNumber);
    v24 = v22;
    v25 = [v23 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v26 = NSString.init(stringLiteral:)();
    [v24 setObject:v25 forKeyedSubscript:v26];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v27, qword_1003FAA40);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v40);
    _os_log_impl(&_mh_execute_header, v28, v29, "Performing: %s...", v30, 0xCu);
    sub_10000839C(v31);
  }

  sub_100257274(v9);
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_1002699F0;
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);

  return sub_10026AE80(v32, v37, v33, v38, v35, v36, v34);
}

uint64_t sub_1002699F0()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100269B04;
  }

  else
  {
    v3 = sub_100269DA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100269B04()
{
  v28 = v0;
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[37];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[36];
    v6 = v0[37];
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

  v12 = v0[38];
  swift_getErrorValue();
  v13 = v0[11];
  v14 = v0[13];
  sub_1002DEA80(v0[12]);
  if (v12)
  {
    v15 = v0[38];
    v16 = v0[35];
    v17 = v15;
    swift_errorRetain();
    v18 = _convertErrorToNSError(_:)();
    [v17 updateTaskResultWithError:v18];

    swift_getObjectType();
    sub_100246FA8(v15);
  }

  else
  {
    swift_errorRetain();
  }

  v19 = v0[37];
  v20 = v0[38];
  v21 = v0[35];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[25];
  swift_willThrow();

  swift_unknownObjectRelease();

  v25 = v0[1];

  return v25();
}

uint64_t sub_100269DA0()
{
  v19 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "✅ %s - successfully completed!", v7, 0xCu);
    sub_10000839C(v8);
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  if (v10)
  {
    [*(v0 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v12 = v10;
    sub_100246FA8(v10);
  }

  swift_unknownObjectRelease();
  v13 = *(v0 + 240);
  v14 = *(v0 + 216);
  v15 = *(v0 + 200);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100269F5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 120) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(type metadata accessor for CustodianshipInfoRecord() - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10026A054, 0, 0);
}

uint64_t sub_10026A054()
{
  v27 = v0;
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for OSTransaction();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 88) = OSTransaction.init(name:)();
  sub_100016034(0, &qword_1003E9000, OS_os_log_ptr);

  v8 = OS_os_log.init(subsystem:category:)();
  *(v0 + 96) = v8;
  v9 = v8;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v10 = static OS_os_log.default.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v11))
  {
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v17 = StaticString.description.getter();
    v19 = sub_10021145C(v17, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v11, "🏁 [BEGIN] %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  v25 = (*(v0 + 40) + **(v0 + 40));
  v20 = *(*(v0 + 40) + 4);
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_10026A2F8;
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);

  return v25(v22);
}

uint64_t sub_10026A2F8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100283AF4;
  }

  else
  {
    v3 = sub_10026A40C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026A40C()
{
  v26 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 120);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v1, v6);
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v7)
  {
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = *(v0 + 120);
    v24 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    v17 = StaticString.description.getter();
    v19 = sub_10021145C(v17, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v6, "✅ [END] %s", v15, 0xCu);
    sub_10000839C(v16);

    (*(v10 + 8))(v24, v11);
  }

  else
  {
    (*(v10 + 8))(*(v0 + 80), *(v0 + 64));
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  sub_100283458(*(v0 + 56), *(v0 + 16), type metadata accessor for CustodianshipInfoRecord);
  OSTransaction.complete()();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10026A614(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 120) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(type metadata accessor for CustodianRecord() - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10026A70C, 0, 0);
}

uint64_t sub_10026A70C()
{
  v27 = v0;
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for OSTransaction();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 88) = OSTransaction.init(name:)();
  sub_100016034(0, &qword_1003E9000, OS_os_log_ptr);

  v8 = OS_os_log.init(subsystem:category:)();
  *(v0 + 96) = v8;
  v9 = v8;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v10 = static OS_os_log.default.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v11))
  {
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v17 = StaticString.description.getter();
    v19 = sub_10021145C(v17, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v11, "🏁 [BEGIN] %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  v25 = (*(v0 + 40) + **(v0 + 40));
  v20 = *(*(v0 + 40) + 4);
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_10026A9B0;
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);

  return v25(v22);
}

uint64_t sub_10026A9B0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10026ACCC;
  }

  else
  {
    v3 = sub_10026AAC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026AAC4()
{
  v26 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 120);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v1, v6);
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v7)
  {
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = *(v0 + 120);
    v24 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    v17 = StaticString.description.getter();
    v19 = sub_10021145C(v17, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v6, "✅ [END] %s", v15, 0xCu);
    sub_10000839C(v16);

    (*(v10 + 8))(v24, v11);
  }

  else
  {
    (*(v10 + 8))(*(v0 + 80), *(v0 + 64));
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  sub_100283458(*(v0 + 56), *(v0 + 16), type metadata accessor for CustodianRecord);
  OSTransaction.complete()();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10026ACCC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 120);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v6))
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v8, v6, "❌ [END] %@", v9, 0xCu);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v18 = *(v0 + 56);
  v17 = *(v0 + 64);
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  OSTransaction.complete()();

  v19 = *(v0 + 8);
  v20 = *(v0 + 112);

  return v19();
}

uint64_t sub_10026AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = type metadata accessor for CustodianshipInfoRecord();
  v7[14] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_10026AFC0, 0, 0);
}

uint64_t sub_10026AFC0()
{
  v25 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  v0[21] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v15 = sub_10021145C(v12, v14, &v24);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian determining readiness state for custodianID: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v16 = swift_task_alloc();
  v0[22] = v16;
  *v16 = v0;
  v16[1] = sub_10026B250;
  v17 = v0[9];
  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[8];
  v21 = v0[5];
  v22 = v0[6];

  return sub_10026CBB4(v21, v19, v20, v17, v18);
}

uint64_t sub_10026B250(char a1)
{
  v3 = *(*v2 + 176);
  v4 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 184) = v1;

  if (v1)
  {
    v6 = *(v4 + 152);
    v5 = *(v4 + 160);
    v8 = *(v4 + 136);
    v7 = *(v4 + 144);
    v10 = *(v4 + 120);
    v9 = *(v4 + 128);
    v11 = *(v4 + 104);

    v12 = *(v4 + 8);

    return v12();
  }

  else
  {

    return _swift_task_switch(sub_10026B3F0, 0, 0);
  }
}

uint64_t sub_10026B3F0()
{
  v169 = v0;
  v1 = *(v0 + 240);
  v2 = v1 >> 6;
  v3 = *(v0 + 168);
  v4 = *(v0 + 40);
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      sub_10028338C(v4, *(v0 + 152), type metadata accessor for CustodianshipInfoRecord);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 152);
      if (v7)
      {
        v9 = *(v0 + 112);
        if (v1)
        {
          v10 = 0x6465747065636361;
        }

        else
        {
          v10 = 0x64656E696C636564;
        }

        v11 = swift_slowAlloc();
        v168[0] = swift_slowAlloc();
        *v11 = 136315394;
        v12 = sub_10021145C(v10, 0xE800000000000000, v168);

        *(v11 + 4) = v12;
        *(v11 + 12) = 2080;
        v13 = *(v9 + 20);
        type metadata accessor for UUID();
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
        v17 = sub_10021145C(v14, v16, v168);

        *(v11 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v5, v6, "✅ Custodian setup is in completed state: %s for custodianID: %s", v11, 0x16u);
        swift_arrayDestroy();

        if ((v1 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_17;
      }

      sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
      if (v1)
      {
LABEL_17:
        v55 = kAAAnalyticsEventSetupFailSafeReady;
        if (*(v0 + 80))
        {
          v56 = *(v0 + 72);
          v57 = kAAAnalyticsEventSetupFailSafeReady;
          v58 = String._bridgeToObjectiveC()();
        }

        else
        {
          v109 = kAAAnalyticsEventSetupFailSafeReady;
          v58 = 0;
        }

        v111 = *(v0 + 56);
        v110 = *(v0 + 64);
        v112 = objc_opt_self();
        v113 = String._bridgeToObjectiveC()();
        v114 = [v112 analyticsEventWithName:v55 altDSID:v58 flowID:v113];
        v18 = v114;

        if (v18)
        {

          v115 = objc_allocWithZone(NSNumber);
          v116 = v18;
          v117 = [v115 initWithInteger:13];
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v118 = NSString.init(stringLiteral:)();
          [v116 setObject:v117 forKeyedSubscript:v118];

          [v116 updateTaskResultWithError:0];
        }

        v120 = *(v0 + 96);
        v119 = *(v0 + 104);
        v121 = *(v0 + 88);
        (*(v120 + 16))(v119, *(v0 + 48) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v121);
        Dependency.wrappedValue.getter();
        (*(v120 + 8))(v119, v121);
        v122 = *(v0 + 32);
        swift_getObjectType();
        sub_100246FA8(v114);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }

LABEL_43:
      v123 = *(v0 + 168);
      sub_10028338C(*(v0 + 40), *(v0 + 120), type metadata accessor for CustodianshipInfoRecord);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      v126 = os_log_type_enabled(v124, v125);
      v127 = *(v0 + 120);
      if (v126)
      {
        v128 = *(v0 + 112);
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v168[0] = v130;
        *v129 = 136315138;
        v131 = *(v128 + 20);
        type metadata accessor for UUID();
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = v133;
        sub_1002833F4(v127, type metadata accessor for CustodianshipInfoRecord);
        v135 = sub_10021145C(v132, v134, v168);

        *(v129 + 4) = v135;
        _os_log_impl(&_mh_execute_header, v124, v125, "Custodian storing that setup readiness check was performed for custodianID: %s", v129, 0xCu);
        sub_10000839C(v130);
      }

      else
      {

        sub_1002833F4(v127, type metadata accessor for CustodianshipInfoRecord);
      }

      v136 = *(v0 + 112);
      v138 = *(v0 + 40);
      v137 = *(v0 + 48);
      *(v0 + 216) = sub_1002669CC();
      v139 = *(v136 + 20);
      v140 = swift_task_alloc();
      *(v0 + 224) = v140;
      *v140 = v0;
      v140[1] = sub_10026C898;
      v141 = *(v0 + 240);

      return sub_100014ED8(v141, 1, v138 + v139);
    }

    sub_10028338C(v4, *(v0 + 144), type metadata accessor for CustodianshipInfoRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 144);
      v33 = *(v0 + 112);
      v34 = *(v0 + 240) & 0x3F;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v168[0] = v36;
      *v35 = 134218242;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2080;
      v37 = *(v33 + 20);
      type metadata accessor for UUID();
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1002833F4(v32, type metadata accessor for CustodianshipInfoRecord);
      v41 = sub_10021145C(v38, v40, v168);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "🟡 Custodian setup is in pending state: %ld for custodianID: %s", v35, 0x16u);
      sub_10000839C(v36);
    }

    else
    {
      v60 = *(v0 + 144);

      sub_1002833F4(v60, type metadata accessor for CustodianshipInfoRecord);
    }

    v61 = kAAAnalyticsEventSetupFailSafePending;
    if (*(v0 + 80))
    {
      v62 = *(v0 + 72);
      v63 = kAAAnalyticsEventSetupFailSafePending;
      v64 = String._bridgeToObjectiveC()();
    }

    else
    {
      v79 = kAAAnalyticsEventSetupFailSafePending;
      v64 = 0;
    }

    v81 = *(v0 + 56);
    v80 = *(v0 + 64);
    v82 = objc_opt_self();
    v83 = String._bridgeToObjectiveC()();
    v84 = [v82 analyticsEventWithName:v61 altDSID:v64 flowID:v83];

    if (v84)
    {
      v85 = *(v0 + 240);

      v86 = objc_allocWithZone(NSNumber);
      v87 = v84;
      v88 = [v86 initWithInteger:13];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v89 = NSString.init(stringLiteral:)();
      [v87 setObject:v88 forKeyedSubscript:v89];

      v90 = v87;
      if (sub_1000C00B4(1, 3, v85))
      {
        v91 = _convertErrorToNSError(_:)();
      }

      else
      {
        v91 = 0;
      }

      [v90 updateTaskResultWithError:{v91, v168[0]}];
    }

    v98 = *(v0 + 96);
    v97 = *(v0 + 104);
    v99 = *(v0 + 88);
    (*(v98 + 16))(v97, *(v0 + 48) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v99);
    Dependency.wrappedValue.getter();
    (*(v98 + 8))(v97, v99);
    v100 = *(v0 + 24);
    swift_getObjectType();
    sub_100246FA8(v84);
    swift_unknownObjectRelease();

    v102 = *(v0 + 152);
    v101 = *(v0 + 160);
    v104 = *(v0 + 136);
    v103 = *(v0 + 144);
    v106 = *(v0 + 120);
    v105 = *(v0 + 128);
    v107 = *(v0 + 104);

    v78 = *(v0 + 8);
    goto LABEL_35;
  }

  if (v2 == 2)
  {
    sub_10028338C(v4, *(v0 + 136), type metadata accessor for CustodianshipInfoRecord);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 136);
      v21 = *(v0 + 112);
      v22 = *(v0 + 240) & 0x3F;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v168[0] = v24;
      *v23 = 134218242;
      *(v23 + 4) = v22;
      *(v23 + 12) = 2080;
      v25 = *(v21 + 20);
      type metadata accessor for UUID();
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_1002833F4(v20, type metadata accessor for CustodianshipInfoRecord);
      v29 = sub_10021145C(v26, v28, v168);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "❌ Custodian setup is in torn-down-by-other state: %ld for custodianID: %s", v23, 0x16u);
      sub_10000839C(v24);

LABEL_42:

      goto LABEL_43;
    }

    v59 = *(v0 + 136);

    sub_1002833F4(v59, type metadata accessor for CustodianshipInfoRecord);
    goto LABEL_43;
  }

  v42 = v1 & 0x3F;
  sub_10028338C(v4, *(v0 + 128), type metadata accessor for CustodianshipInfoRecord);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 128);
  if (v45)
  {
    v47 = *(v0 + 112);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v168[0] = v49;
    *v48 = 134218242;
    *(v48 + 4) = v42;
    *(v48 + 12) = 2080;
    v50 = *(v47 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    sub_1002833F4(v46, type metadata accessor for CustodianshipInfoRecord);
    v54 = sub_10021145C(v51, v53, v168);

    *(v48 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "❌ Custodian setup is in failed state: %ld for custodianID: %s", v48, 0x16u);
    sub_10000839C(v49);
  }

  else
  {

    sub_1002833F4(v46, type metadata accessor for CustodianshipInfoRecord);
  }

  v65 = *(v0 + 184);
  v66 = *(v0 + 40);
  v67 = *(*(v0 + 48) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator);
  v68 = sub_100282854();
  v69 = v68;
  v70 = sub_100276B54(v66, v68);
  if (v65)
  {
    v72 = *(v0 + 152);
    v71 = *(v0 + 160);
    v74 = *(v0 + 136);
    v73 = *(v0 + 144);
    v76 = *(v0 + 120);
    v75 = *(v0 + 128);
    v77 = *(v0 + 104);

    v78 = *(v0 + 8);
LABEL_35:

    return v78();
  }

  v92 = v70;
  v93 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
  if (*(v0 + 80))
  {
    v94 = *(v0 + 72);
    v95 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v96 = String._bridgeToObjectiveC()();
  }

  else
  {
    v142 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v96 = 0;
  }

  v144 = *(v0 + 56);
  v143 = *(v0 + 64);
  v145 = objc_opt_self();
  v146 = String._bridgeToObjectiveC()();
  v147 = [v145 analyticsEventWithName:v93 altDSID:v96 flowID:v146];
  *(v0 + 192) = v147;
  v148 = v147;

  if (v148)
  {
    v149 = *(v0 + 240);

    v150 = objc_allocWithZone(NSNumber);
    v151 = v148;
    v152 = [v150 initWithInteger:13];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v153 = NSString.init(stringLiteral:)();
    [v151 setObject:v152 forKeyedSubscript:v153];

    v154 = v69 | (v92 << 8);
    v155 = v151;
    if (sub_1000C00B4(1, v154, v149))
    {
      v156 = _convertErrorToNSError(_:)();
    }

    else
    {
      v156 = 0;
    }

    [v155 updateTaskResultWithError:{v156, v168[0]}];
  }

  else
  {
    v154 = v69 | (v92 << 8);
  }

  v158 = *(v0 + 96);
  v157 = *(v0 + 104);
  v159 = *(v0 + 88);
  (*(v158 + 16))(v157, *(v0 + 48) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v159);
  Dependency.wrappedValue.getter();
  (*(v158 + 8))(v157, v159);
  v160 = *(v0 + 16);
  swift_getObjectType();
  sub_100246FA8(v148);
  swift_unknownObjectRelease();
  v161 = swift_task_alloc();
  *(v0 + 200) = v161;
  *v161 = v0;
  v161[1] = sub_10026C480;
  v162 = *(v0 + 72);
  v163 = *(v0 + 80);
  v164 = *(v0 + 56);
  v165 = *(v0 + 64);
  v166 = *(v0 + 40);
  v167 = *(v0 + 48);

  return sub_10026D9CC(v166, v42, v154, v164, v165, v162, v163);
}

uint64_t sub_10026C480(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = sub_10026CA34;
  }

  else
  {
    *(v4 + 241) = a1 & 1;
    v7 = sub_10026C5AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10026C5AC()
{
  v31 = v0;
  v1 = *(v0 + 241);

  if (v1 == 1)
  {
    v2 = *(v0 + 168);
    sub_10028338C(*(v0 + 40), *(v0 + 120), type metadata accessor for CustodianshipInfoRecord);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 120);
    if (v5)
    {
      v7 = *(v0 + 112);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v7 + 20);
      type metadata accessor for UUID();
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_1002833F4(v6, type metadata accessor for CustodianshipInfoRecord);
      v14 = sub_10021145C(v11, v13, &v30);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Custodian storing that setup readiness check was performed for custodianID: %s", v8, 0xCu);
      sub_10000839C(v9);
    }

    else
    {

      sub_1002833F4(v6, type metadata accessor for CustodianshipInfoRecord);
    }

    v24 = *(v0 + 112);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    *(v0 + 216) = sub_1002669CC();
    v27 = *(v24 + 20);
    v28 = swift_task_alloc();
    *(v0 + 224) = v28;
    *v28 = v0;
    v28[1] = sub_10026C898;
    v29 = *(v0 + 240);

    return sub_100014ED8(v29, 1, v26 + v27);
  }

  else
  {
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v21 = *(v0 + 104);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10026C898()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10026CAF4, 0, 0);
  }

  else
  {
    v4 = v3[27];

    v6 = v3[19];
    v5 = v3[20];
    v8 = v3[17];
    v7 = v3[18];
    v10 = v3[15];
    v9 = v3[16];
    v11 = v3[13];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_10026CA34()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10026CAF4()
{
  v1 = v0[27];

  v2 = v0[29];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10026CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for CustodianshipInfoRecord();
  v6[12] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_10026CC50, 0, 0);
}

uint64_t sub_10026CC50()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator);
  v2 = sub_10026E668(v0[6]);
  v3 = *(v0[6] + *(v0[12] + 28));
  if (v3 == 1)
  {
    v21 = sub_1002822D4(v0[6], v2 & 1);
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
      v5[1] = sub_10026D124;
      v6 = v0[10];
      v7 = v0[11];
      v8 = v0[8];
      v9 = v0[9];
      v11 = v0[6];
      v10 = v0[7];

      return sub_10026F370(v11, v4 & 1, v10, v8, v9, v6);
    }

    v21 = sub_10028253C(v0[6], v2 & 1);
    goto LABEL_12;
  }

  v13 = v2;
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_10026D27C;
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v19 = v0[7];

  return sub_100270448(v20, v13 & 1, v19, v17, v18, v15);
}

uint64_t sub_10026D124(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10026D3D4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 104);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_10026D27C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10026D6D0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 104);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_10026D3D4()
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
  sub_10028338C(v3, v2, type metadata accessor for CustodianshipInfoRecord);
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
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
    v17 = sub_10021145C(v14, v16, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error occured when custodian was checking readiness state for custodianID: %s, error: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);
  }

  else
  {

    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
  }

  v19 = v0[13];
  swift_getErrorValue();
  v20 = v0[2];
  sub_100255F6C(-7355, v0[3], v0[4]);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10026D6D0()
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
  sub_10028338C(v3, v2, type metadata accessor for CustodianshipInfoRecord);
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
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
    v17 = sub_10021145C(v14, v16, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error occured when custodian was checking readiness state for custodianID: %s, error: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);
  }

  else
  {

    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
  }

  v19 = v0[13];
  swift_getErrorValue();
  v20 = v0[2];
  sub_100255F6C(-7355, v0[3], v0[4]);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10026D9CC(uint64_t a1, char a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 152) = a3;
  *(v8 + 154) = a2;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = type metadata accessor for CustodianshipInfoRecord();
  *(v8 + 64) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10026DA94, 0, 0);
}

uint64_t sub_10026DA94()
{
  v32 = v0;
  v1 = *(v0 + 152);
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
    v7[1] = sub_10026DE08;
    v8 = *(v0 + 96);

    return sub_100269F5C(v8, "CustodianTearDownSetup", 22, 2, &unk_100347E88, v6);
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
    sub_10028338C(v11, v10, type metadata accessor for CustodianshipInfoRecord);
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
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_1002833F4(v16, type metadata accessor for CustodianshipInfoRecord);
      v24 = sub_10021145C(v21, v23, &v31);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Custodian not tearing down stale setup for custodianID: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    else
    {

      sub_1002833F4(v16, type metadata accessor for CustodianshipInfoRecord);
    }

    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_10026DE08()
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

    v4 = sub_10026DF24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10026DF24()
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
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 154);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    v12 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v16 = sub_10021145C(v13, v15, &v28);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian notifying owner of tear down with reason: %ld for custodianID: %s", v10, 0x16u);
    sub_10000839C(v11);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v17 = *(v0 + 154);
  OSTransaction.complete()();
  v19 = v18;
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = sub_10026E26C;
  v21 = *(v0 + 96);
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 24);

  return sub_100271E74(v21, v19, v26, v24, v25, v22);
}

uint64_t sub_10026E1D8()
{
  v1 = v0[13];

  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_10026E26C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10026E5C0;
  }

  else
  {
    v3 = sub_10026E380;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E380()
{
  v21 = v0;
  v1 = v0[16];
  sub_10028338C(v0[12], v0[10], type metadata accessor for CustodianshipInfoRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = *(v6 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002833F4(v5, type metadata accessor for CustodianshipInfoRecord);
    v13 = sub_10021145C(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Custodian posting tear down CFU for custodianID: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  else
  {

    sub_1002833F4(v5, type metadata accessor for CustodianshipInfoRecord);
  }

  sub_1002833F4(v0[12], type metadata accessor for CustodianshipInfoRecord);
  v15 = v0[11];
  v14 = v0[12];
  v17 = v0[9];
  v16 = v0[10];

  v18 = v0[1];

  return v18(1);
}

uint64_t sub_10026E5C0()
{
  sub_1002833F4(v0[12], type metadata accessor for CustodianshipInfoRecord);
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6(0);
}

int64_t sub_10026E668(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = &v56 - v10;
  v11 = __chkstk_darwin(v9);
  v69 = &v56 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - v14;
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user);
  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v19 = 0xD000000000000022;
  }

  else
  {
    v19 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v20 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v20 = "ck";
  }

  v21 = sub_1002A25A0(v19, v20 | 0x8000000000000000);
  v23 = v22;

  if (v23)
  {
    type metadata accessor for AACustodianError(0);
    if (v18)
    {
      v24 = -7350;
    }

    else
    {
      v24 = -7300;
    }

    v70 = v24;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    if (v18)
    {
      v25 = a1 + *(type metadata accessor for CustodianshipInfoRecord() + 20);
      v64 = UUID.uuidString.getter();
      v27 = v26;
    }

    else
    {
      v27 = 0xE100000000000000;
      v64 = 45;
    }

    v28 = v17;
    sub_100274924(a1, v17);
    if (v2)
    {
    }

    else
    {
      v62 = v27;
      v29 = v21;
      v30 = v15;
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      sub_100282F14(&qword_1003DA8D8, &type metadata accessor for Date);
      v31 = v65;
      v63 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100008D04(v32, qword_1003FAAB8);
      v33 = v66;
      v34 = *(v66 + 16);
      v34(v68, v30, v31);
      v35 = v67;
      v34(v67, v28, v31);
      v36 = v62;

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v61 = v30;
        v40 = v39;
        v59 = swift_slowAlloc();
        v71 = v59;
        *v40 = 136316162;
        sub_100282F14(&qword_1003DB608, &type metadata accessor for Date);
        v58 = v38;
        v57 = v37;
        v41 = v68;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v28;
        v43 = v33;
        v45 = v44;
        v66 = *(v43 + 8);
        (v66)(v41, v31);
        v46 = sub_10021145C(v42, v45, &v71);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        v47 = v67;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v49;
        (v66)(v47, v31);
        v50 = sub_10021145C(v48, v21, &v71);

        *(v40 + 14) = v50;
        *(v40 + 22) = 2048;
        *(v40 + 24) = v29;
        *(v40 + 32) = 1024;
        LOBYTE(v21) = v63;
        *(v40 + 34) = v63 & 1;
        *(v40 + 38) = 2080;
        v51 = sub_10021145C(v64, v36, &v71);

        *(v40 + 40) = v51;
        v52 = v57;
        _os_log_impl(&_mh_execute_header, v57, v58, "Date.now: %s, record created on: %s, grace period: %f, is past grace period: %{BOOL}d, custodianID: %s", v40, 0x30u);
        swift_arrayDestroy();

        v53 = v66;
        (v66)(v69, v31);
        v53(v61, v31);
        v53(v60, v31);
      }

      else
      {

        v54 = *(v33 + 8);
        v54(v35, v31);
        v54(v68, v31);
        v54(v69, v31);
        v54(v30, v31);
        v54(v28, v31);
        LOBYTE(v21) = v63;
      }
    }
  }

  return v21 & 1;
}

int64_t sub_10026ECEC(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = &v56 - v10;
  v11 = __chkstk_darwin(v9);
  v69 = &v56 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - v14;
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user);
  if (v18)
  {
    v19 = 0xD000000000000022;
  }

  else
  {
    v19 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v20 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v20 = "ck";
  }

  v21 = sub_1002A25A0(v19, v20 | 0x8000000000000000);
  v23 = v22;

  if (v23)
  {
    type metadata accessor for AACustodianError(0);
    if (v18)
    {
      v24 = -7350;
    }

    else
    {
      v24 = -7300;
    }

    v70 = v24;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    if (v18)
    {
      v25 = 0xE100000000000000;
      v64 = 45;
    }

    else
    {
      v26 = a1 + *(type metadata accessor for CustodianRecord() + 20);
      v64 = UUID.uuidString.getter();
      v25 = v27;
    }

    v28 = v17;
    sub_1002756D4(a1, v17);
    if (v2)
    {
    }

    else
    {
      v62 = v25;
      v29 = v21;
      v30 = v15;
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      sub_100282F14(&qword_1003DA8D8, &type metadata accessor for Date);
      v31 = v65;
      v63 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100008D04(v32, qword_1003FAAB8);
      v33 = v66;
      v34 = *(v66 + 16);
      v34(v68, v30, v31);
      v35 = v67;
      v34(v67, v28, v31);
      v36 = v62;

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v61 = v30;
        v40 = v39;
        v59 = swift_slowAlloc();
        v71 = v59;
        *v40 = 136316162;
        sub_100282F14(&qword_1003DB608, &type metadata accessor for Date);
        v58 = v38;
        v57 = v37;
        v41 = v68;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v28;
        v43 = v33;
        v45 = v44;
        v66 = *(v43 + 8);
        (v66)(v41, v31);
        v46 = sub_10021145C(v42, v45, &v71);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        v47 = v67;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v49;
        (v66)(v47, v31);
        v50 = sub_10021145C(v48, v21, &v71);

        *(v40 + 14) = v50;
        *(v40 + 22) = 2048;
        *(v40 + 24) = v29;
        *(v40 + 32) = 1024;
        LOBYTE(v21) = v63;
        *(v40 + 34) = v63 & 1;
        *(v40 + 38) = 2080;
        v51 = sub_10021145C(v64, v36, &v71);

        *(v40 + 40) = v51;
        v52 = v57;
        _os_log_impl(&_mh_execute_header, v57, v58, "Date.now: %s, record created on: %s, grace period: %f, is past grace period: %{BOOL}d, custodianID: %s", v40, 0x30u);
        swift_arrayDestroy();

        v53 = v66;
        (v66)(v69, v31);
        v53(v61, v31);
        v53(v60, v31);
      }

      else
      {

        v54 = *(v33 + 8);
        v54(v35, v31);
        v54(v68, v31);
        v54(v69, v31);
        v54(v30, v31);
        v54(v28, v31);
        LOBYTE(v21) = v63;
      }
    }
  }

  return v21 & 1;
}

uint64_t sub_10026F370(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 104) = a4;
  *(v7 + 112) = a5;
  *(v7 + 248) = a2;
  *(v7 + 88) = a1;
  *(v7 + 96) = a3;
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 136) = v8;
  v9 = *(v8 - 8);
  *(v7 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 160) = RecoveryRecordsRequest;
  v12 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  v13 = *(*(sub_100005814(&unk_1003D91B0, qword_1003444F0) - 8) + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v14 = type metadata accessor for CustodianshipInfoRecord();
  *(v7 + 184) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_10026F4F8, 0, 0);
}

uint64_t sub_10026F4F8()
{
  v38 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v15 = sub_10021145C(v12, v14, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian invitation is accepted, checking if RecoveryInfoRecord share is accepted, custodianID: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  v21 = v0[15];
  v34 = v0[14];
  v22 = v0[13];
  v35 = v0[12];
  v36 = v0[16];
  v23 = v0[11];
  v24 = *(v0[23] + 20);
  v25 = type metadata accessor for UUID();
  v0[28] = v25;
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
  (*(v19 + 16))(v18, v36 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage, v20);

  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v18, v20);
  v29 = *sub_1000080F8(v0 + 2, v0[5]);
  v30 = swift_task_alloc();
  v0[29] = v30;
  *v30 = v0;
  v30[1] = sub_10026F8A8;
  v32 = v0[21];
  v31 = v0[22];

  return sub_100021548(v31, v32, 0, 0);
}

uint64_t sub_10026F8A8()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10026FE48;
  }

  else
  {
    v3 = sub_10026F9BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026F9BC()
{
  v42 = v0;
  v1 = *(v0 + 176);
  sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = (*(v3 + 48))(*(v0 + 176), 1, v2);
  v5 = *(v0 + 216);
  v6 = *(v0 + 88);
  if (v4 == 1)
  {
    sub_10028338C(v6, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 224);
      v10 = *(v0 + 184);
      v11 = *(v0 + 192);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315138;
      v14 = *(v10 + 20);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1002833F4(v11, type metadata accessor for CustodianshipInfoRecord);
      v18 = sub_10021145C(v15, v17, &v41);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Custodian RecoveryInfoRecord share is not accepted, incomplete setup, custodianID: %s", v12, 0xCu);
      sub_10000839C(v13);
    }

    else
    {
      v31 = *(v0 + 192);

      sub_1002833F4(v31, type metadata accessor for CustodianshipInfoRecord);
    }

    if (*(v0 + 248))
    {
      v32 = 4294967235;
    }

    else
    {
      v32 = 67;
    }
  }

  else
  {
    sub_10028338C(v6, *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 224);
      v22 = *(v0 + 200);
      v23 = *(v0 + 184);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v26 = *(v23 + 20);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1002833F4(v22, type metadata accessor for CustodianshipInfoRecord);
      v30 = sub_10021145C(v27, v29, &v41);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Custodian setup is accepted and completed, custodianID: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    else
    {
      v33 = *(v0 + 200);

      sub_1002833F4(v33, type metadata accessor for CustodianshipInfoRecord);
    }

    v32 = 1;
  }

  v35 = *(v0 + 200);
  v34 = *(v0 + 208);
  v36 = *(v0 + 192);
  v37 = *(v0 + 168);
  v38 = *(v0 + 152);
  sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

  v39 = *(v0 + 8);

  return v39(v32);
}

uint64_t sub_10026FE48()
{
  v56 = v0;
  v1 = *(v0 + 240);
  sub_10000839C((v0 + 16));
  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 64);
    *(v0 + 72) = v2;
    v3 = *(v0 + 168);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    sub_1002833F4(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 80) == -7062)
    {
      v4 = *(v0 + 240);
      v5 = *(v0 + 176);

      v6 = type metadata accessor for CustodianRecoveryInfoRecord();
      v7 = *(v6 - 8);
      (*(v7 + 56))(v5, 1, 1, v6);
      v8 = *(v0 + 56);

      v9 = (*(v7 + 48))(*(v0 + 176), 1, v6);
      v10 = *(v0 + 216);
      v11 = *(v0 + 88);
      if (v9 == 1)
      {
        sub_10028338C(v11, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 224);
          v15 = *(v0 + 184);
          v16 = *(v0 + 192);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v55 = v18;
          *v17 = 136315138;
          v19 = *(v15 + 20);
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v22 = v21;
          sub_1002833F4(v16, type metadata accessor for CustodianshipInfoRecord);
          v23 = sub_10021145C(v20, v22, &v55);

          *(v17 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v12, v13, "Custodian RecoveryInfoRecord share is not accepted, incomplete setup, custodianID: %s", v17, 0xCu);
          sub_10000839C(v18);
        }

        else
        {
          v46 = *(v0 + 192);

          sub_1002833F4(v46, type metadata accessor for CustodianshipInfoRecord);
        }

        if (*(v0 + 248))
        {
          v47 = 4294967235;
        }

        else
        {
          v47 = 67;
        }
      }

      else
      {
        sub_10028338C(v11, *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = *(v0 + 224);
          v37 = *(v0 + 200);
          v38 = *(v0 + 184);
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v55 = v40;
          *v39 = 136315138;
          v41 = *(v38 + 20);
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v44 = v43;
          sub_1002833F4(v37, type metadata accessor for CustodianshipInfoRecord);
          v45 = sub_10021145C(v42, v44, &v55);

          *(v39 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v34, v35, "Custodian setup is accepted and completed, custodianID: %s", v39, 0xCu);
          sub_10000839C(v40);
        }

        else
        {
          v48 = *(v0 + 200);

          sub_1002833F4(v48, type metadata accessor for CustodianshipInfoRecord);
        }

        v47 = 1;
      }

      v50 = *(v0 + 200);
      v49 = *(v0 + 208);
      v51 = *(v0 + 192);
      v52 = *(v0 + 168);
      v53 = *(v0 + 152);
      sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

      v54 = *(v0 + 8);

      return v54(v47);
    }
  }

  else
  {
    sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v24 = *(v0 + 200);
  v25 = *(v0 + 208);
  v26 = *(v0 + 192);
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 56);

  v31 = *(v0 + 8);
  v32 = *(v0 + 240);

  return v31();
}

uint64_t sub_100270448(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = v6;
  *(v7 + 104) = a4;
  *(v7 + 112) = a5;
  *(v7 + 284) = a2;
  *(v7 + 88) = a1;
  *(v7 + 96) = a3;
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 136) = v8;
  v9 = *(v8 - 8);
  *(v7 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 160) = RecoveryRecordsRequest;
  v12 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  v13 = *(*(sub_100005814(&unk_1003D91B0, qword_1003444F0) - 8) + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v14 = type metadata accessor for CustodianshipInfoRecord();
  *(v7 + 184) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1002705E8, 0, 0);
}

uint64_t sub_1002705E8()
{
  v38 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  v3 = type metadata accessor for Logger();
  *(v0 + 232) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 224);
  if (v6)
  {
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v15 = sub_10021145C(v12, v14, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian invitation is declined, checking if RecoveryInfoRecord share is cancelled, custodianID: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v20 = *(v0 + 136);
  v21 = *(v0 + 120);
  v34 = *(v0 + 112);
  v22 = *(v0 + 104);
  v35 = *(v0 + 96);
  v36 = *(v0 + 128);
  v23 = *(v0 + 88);
  v24 = *(*(v0 + 184) + 20);
  *(v0 + 280) = v24;
  v25 = type metadata accessor for UUID();
  *(v0 + 240) = v25;
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
  (*(v19 + 16))(v18, v36 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage, v20);

  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v18, v20);
  v29 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v30 = swift_task_alloc();
  *(v0 + 248) = v30;
  *v30 = v0;
  v30[1] = sub_10027099C;
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);

  return sub_100021548(v31, v32, 0, 0);
}

uint64_t sub_10027099C()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_100270FE0;
  }

  else
  {
    v3 = sub_100270AB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100270AB0()
{
  v49 = v0;
  v1 = *(v0 + 176);
  sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = (*(v3 + 48))(*(v0 + 176), 1, v2);
  v5 = *(v0 + 232);
  v6 = *(v0 + 88);
  if (v4 == 1)
  {
    sub_10028338C(v6, *(v0 + 216), type metadata accessor for CustodianshipInfoRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 240);
      v10 = *(v0 + 216);
      v11 = *(v0 + 184);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315138;
      v14 = *(v11 + 20);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1002833F4(v10, type metadata accessor for CustodianshipInfoRecord);
      v18 = sub_10021145C(v15, v17, &v48);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Custodian RecoveryInfoRecord share is cancelled, checking if setup was torn down by owner, custodianID: %s", v12, 0xCu);
      sub_10000839C(v13);
    }

    else
    {
      v31 = *(v0 + 216);

      sub_1002833F4(v31, type metadata accessor for CustodianshipInfoRecord);
    }

    v32 = *(v0 + 280);
    v33 = *(v0 + 128);
    v34 = *(v0 + 88);
    *(v0 + 264) = sub_1002669CC();
    v35 = swift_task_alloc();
    *(v0 + 272) = v35;
    *v35 = v0;
    v35[1] = sub_10027169C;

    return sub_100014A24(1, v34 + v32);
  }

  else
  {
    sub_10028338C(v6, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 240);
      v22 = *(v0 + 184);
      v23 = *(v0 + 192);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48 = v25;
      *v24 = 136315138;
      v26 = *(v22 + 20);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1002833F4(v23, type metadata accessor for CustodianshipInfoRecord);
      v30 = sub_10021145C(v27, v29, &v48);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Custodian RecoveryInfoRecord share is not cancelled, incomplete setup, custodianID: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    else
    {
      v37 = *(v0 + 192);

      sub_1002833F4(v37, type metadata accessor for CustodianshipInfoRecord);
    }

    v38 = *(v0 + 284);
    v39 = *(v0 + 216);
    v40 = *(v0 + 224);
    v42 = *(v0 + 200);
    v41 = *(v0 + 208);
    v43 = *(v0 + 192);
    v44 = *(v0 + 168);
    v45 = *(v0 + 152);
    sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

    v46 = *(v0 + 8);
    if (v38)
    {
      v47 = 4294967238;
    }

    else
    {
      v47 = 70;
    }

    return v46(v47);
  }
}

uint64_t sub_100270FE0()
{
  v65 = v0;
  v1 = *(v0 + 256);
  sub_10000839C((v0 + 16));
  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 64);
    *(v0 + 72) = v2;
    v3 = *(v0 + 168);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    sub_1002833F4(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 80) == -7062)
    {
      v4 = *(v0 + 256);
      v5 = *(v0 + 176);

      v6 = type metadata accessor for CustodianRecoveryInfoRecord();
      v7 = *(v6 - 8);
      (*(v7 + 56))(v5, 1, 1, v6);
      v8 = *(v0 + 56);

      v9 = (*(v7 + 48))(*(v0 + 176), 1, v6);
      v10 = *(v0 + 232);
      v11 = *(v0 + 88);
      if (v9 == 1)
      {
        sub_10028338C(v11, *(v0 + 216), type metadata accessor for CustodianshipInfoRecord);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 240);
          v15 = *(v0 + 216);
          v16 = *(v0 + 184);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v64 = v18;
          *v17 = 136315138;
          v19 = *(v16 + 20);
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v22 = v21;
          sub_1002833F4(v15, type metadata accessor for CustodianshipInfoRecord);
          v23 = sub_10021145C(v20, v22, &v64);

          *(v17 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v12, v13, "Custodian RecoveryInfoRecord share is cancelled, checking if setup was torn down by owner, custodianID: %s", v17, 0xCu);
          sub_10000839C(v18);
        }

        else
        {
          v48 = *(v0 + 216);

          sub_1002833F4(v48, type metadata accessor for CustodianshipInfoRecord);
        }

        v49 = *(v0 + 280);
        v50 = *(v0 + 128);
        v51 = *(v0 + 88);
        *(v0 + 264) = sub_1002669CC();
        v52 = swift_task_alloc();
        *(v0 + 272) = v52;
        *v52 = v0;
        v52[1] = sub_10027169C;

        return sub_100014A24(1, v51 + v49);
      }

      else
      {
        sub_10028338C(v11, *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = *(v0 + 240);
          v39 = *(v0 + 184);
          v40 = *(v0 + 192);
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v64 = v42;
          *v41 = 136315138;
          v43 = *(v39 + 20);
          sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          sub_1002833F4(v40, type metadata accessor for CustodianshipInfoRecord);
          v47 = sub_10021145C(v44, v46, &v64);

          *(v41 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v36, v37, "Custodian RecoveryInfoRecord share is not cancelled, incomplete setup, custodianID: %s", v41, 0xCu);
          sub_10000839C(v42);
        }

        else
        {
          v53 = *(v0 + 192);

          sub_1002833F4(v53, type metadata accessor for CustodianshipInfoRecord);
        }

        v54 = *(v0 + 284);
        v55 = *(v0 + 216);
        v56 = *(v0 + 224);
        v58 = *(v0 + 200);
        v57 = *(v0 + 208);
        v59 = *(v0 + 192);
        v60 = *(v0 + 168);
        v61 = *(v0 + 152);
        sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

        v62 = *(v0 + 8);
        if (v54)
        {
          v63 = 4294967238;
        }

        else
        {
          v63 = 70;
        }

        return v62(v63);
      }
    }
  }

  else
  {
    sub_1002833F4(*(v0 + 168), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v27 = *(v0 + 200);
  v26 = *(v0 + 208);
  v28 = *(v0 + 192);
  v30 = *(v0 + 168);
  v29 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = *(v0 + 56);

  v33 = *(v0 + 8);
  v34 = *(v0 + 256);

  return v33();
}

uint64_t sub_10027169C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v5 = *v2;
  *(*v2 + 285) = a1;

  v6 = *(v3 + 264);
  if (v1)
  {

    v7 = sub_100271C04;
  }

  else
  {

    v7 = sub_1002717EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002717EC()
{
  v41 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 88);
  if (*(v0 + 285) == 11)
  {
    sub_10028338C(v2, *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 240);
      v6 = *(v0 + 200);
      v7 = *(v0 + 184);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40 = v9;
      *v8 = 136315138;
      v10 = *(v7 + 20);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_1002833F4(v6, type metadata accessor for CustodianshipInfoRecord);
      v14 = sub_10021145C(v11, v13, &v40);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Custodian setup is declined and completed, custodianID: %s", v8, 0xCu);
      sub_10000839C(v9);
    }

    else
    {
      v28 = *(v0 + 200);

      sub_1002833F4(v28, type metadata accessor for CustodianshipInfoRecord);
    }

    v29 = 0;
  }

  else
  {
    sub_10028338C(v2, *(v0 + 208), type metadata accessor for CustodianshipInfoRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 285);
      v18 = *(v0 + 240);
      v19 = *(v0 + 208);
      v20 = *(v0 + 184);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 134218242;
      *(v21 + 4) = v17;
      *(v21 + 12) = 2080;
      v23 = *(v20 + 20);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_1002833F4(v19, type metadata accessor for CustodianshipInfoRecord);
      v27 = sub_10021145C(v24, v26, &v40);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "Custodian setup was torn down by owner, reason: %ld, custodianID: %s", v21, 0x16u);
      sub_10000839C(v22);
    }

    else
    {
      v30 = *(v0 + 208);

      sub_1002833F4(v30, type metadata accessor for CustodianshipInfoRecord);
    }

    v29 = *(v0 + 285) | 0xFFFFFF80;
  }

  v32 = *(v0 + 216);
  v31 = *(v0 + 224);
  v34 = *(v0 + 200);
  v33 = *(v0 + 208);
  v35 = *(v0 + 192);
  v36 = *(v0 + 168);
  v37 = *(v0 + 152);
  sub_100008D3C(*(v0 + 176), &unk_1003D91B0, qword_1003444F0);

  v38 = *(v0 + 8);

  return v38(v29);
}

uint64_t sub_100271C04()
{
  v25 = v0;
  v1 = v0[29];
  sub_10028338C(v0[11], v0[25], type metadata accessor for CustodianshipInfoRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[30];
    v5 = v0[25];
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v9 = *(v6 + 20);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1002833F4(v5, type metadata accessor for CustodianshipInfoRecord);
    v13 = sub_10021145C(v10, v12, &v24);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Custodian setup is declined and completed, custodianID: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  else
  {
    v14 = v0[25];

    sub_1002833F4(v14, type metadata accessor for CustodianshipInfoRecord);
  }

  v15 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[19];
  sub_100008D3C(v0[22], &unk_1003D91B0, qword_1003444F0);

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_100271E74(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return _swift_task_switch(sub_100271F4C, 0, 0);
}

uint64_t sub_100271F4C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 96) + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 128) = *(v0 + 40);
  v5 = kAAAnalyticsEventCustodianSetupSendInvitationDeclineMessage;
  if (v4)
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = kAAAnalyticsEventCustodianSetupSendInvitationDeclineMessage;

    v10 = String._bridgeToObjectiveC()();

    v11 = *(v0 + 72);
  }

  else
  {
    v12 = *(v0 + 72);
    v13 = kAAAnalyticsEventCustodianSetupSendInvitationDeclineMessage;

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
    v20 = [v18 initWithInteger:13];
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

  return sub_100273DC0(v22, v24, v23, v25);
}

uint64_t sub_1002722C0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1002723D4;
  }

  else
  {
    v3 = sub_100272514;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002723D4()
{
  v1 = v0[19];
  v2 = v0[17];
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[4];
  sub_1002DEA80(v0[3]);
  if (v2)
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v5;
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    [v7 updateTaskResultWithError:v8];

    swift_getObjectType();
    v9 = v7;
    sub_100246FA8(v5);
  }

  else
  {
    swift_errorRetain();
  }

  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  swift_willThrow();
  swift_unknownObjectRelease();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100272514()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 128);
    [*(v0 + 136) updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v1;
    sub_100246FA8(v1);
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  swift_unknownObjectRelease();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002725DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = type metadata accessor for CustodianshipInfoRecord();
  v7[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[20] = v10;
  v11 = *(v10 - 8);
  v7[21] = v11;
  v12 = *(v11 + 64) + 15;
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002726E4, 0, 0);
}

uint64_t sub_1002726E4()
{
  v37 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[14];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[23] = v0[8];
  v7 = kAAAnalyticsEventSetupFailSafeTearDown;
  v36[0] = 0x776F642D72616574;
  v36[1] = 0xEA00000000002D6ELL;
  v8 = *(v5 + 20);
  type metadata accessor for UUID();
  sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
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
    v24 = [v22 initWithInteger:13];
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
    v36[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10021145C(0x776F642D72616574, 0xEA00000000002D6ELL, v36);
    _os_log_impl(&_mh_execute_header, v27, v28, "Performing: %s...", v29, 0xCu);
    sub_10000839C(v30);
  }

  sub_100257274(v7);
  v31 = swift_task_alloc();
  v0[28] = v31;
  *v31 = v0;
  v31[1] = sub_100272D64;
  v32 = v0[19];
  v33 = v0[17];
  v34 = v0[12];

  return sub_1002732EC(v32, v33, v34);
}

uint64_t sub_100272D64()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100272E78;
  }

  else
  {
    v3 = sub_100273110;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100272E78()
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
  sub_100255F6C(-7354, v0[6], v0[7]);
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

uint64_t sub_100273110()
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
  sub_100283458(*(v0 + 152), *(v0 + 88), type metadata accessor for CustodianshipInfoRecord);

  swift_unknownObjectRelease();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002732EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for CustodianshipInfoRecord();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v3[16] = *(v8 + 64);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100273438, 0, 0);
}

uint64_t sub_100273438()
{
  v33 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  v0[20] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10028338C(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v15 = sub_10021145C(v12, v14, &v32);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian declining CustodianshipInfoRecord as a part for teardown, custodianID: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v16 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v20 = v0[12];
  v19 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[9];
  sub_10028338C(v23, v16, type metadata accessor for CustodianshipInfoRecord);
  v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v25 = swift_allocObject();
  v0[21] = v25;
  sub_100283458(v16, v25 + v24, type metadata accessor for CustodianshipInfoRecord);
  (*(v20 + 16))(v19, v22 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__storageController, v21);
  Dependency.wrappedValue.getter();
  (*(v20 + 8))(v19, v21);
  v0[7] = *sub_1000080F8(v0 + 2, v0[5]);

  v26 = swift_task_alloc();
  v0[22] = v26;
  v26[2] = v0 + 7;
  v26[3] = v23;
  v26[4] = sub_100282B98;
  v26[5] = v25;
  v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_100273810;
  v29 = v0[14];
  v30 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v30, 0, 0, 0xD000000000000014, 0x800000010032F130, sub_100282C18, v26, v29);
}

uint64_t sub_100273810()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_100273B84;
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 176);

    v4 = sub_100273934;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100273934()
{
  v25 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[9];
  sub_10000839C(v0 + 2);
  sub_10028338C(v3, v2, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  v8 = v0[17];
  if (v6)
  {
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
    v16 = sub_10021145C(v13, v15, &v24);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Custodian successfully declined CustodianshipInfoRecord as a part for teardown, custodianID: %s", v10, 0xCu);
    sub_10000839C(v11);
  }

  else
  {
    v17 = v0[21];

    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
  }

  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  v21 = v0[13];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100273B84()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];

  sub_10000839C(v0 + 2);

  v7 = v0[1];
  v8 = v0[24];

  return v7();
}

uint64_t sub_100273C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CustodianshipInfoRecord();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028338C(a1, v10, type metadata accessor for CustodianshipInfoRecord);
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
  result = sub_1002833F4(v10, type metadata accessor for CustodianshipInfoRecord);
  *(a3 + v7[11]) = v13;
  return result;
}

uint64_t sub_100273DC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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

  return _swift_task_switch(sub_100273EEC, 0, 0);
}

uint64_t sub_10027425C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__storageController;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__messenger;
  v8 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck__reporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController);

  v12 = *(v0 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator);

  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianSetupReadinessHealthCheck()
{
  result = qword_1003E4E48;
  if (!qword_1003E4E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002744A8()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
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

uint64_t sub_1002746B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000BCD5C(0, 0, v12, &unk_100347E30, v15);
}

uint64_t sub_1002747F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100274848(uint64_t a1)
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

  return sub_100266AD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100274924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v93 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v102 = (&v90 - v9);
  __chkstk_darwin(v8);
  v97 = &v90 - v10;
  v99 = type metadata accessor for UUID();
  v11 = *(v99 - 8);
  v12 = v11[8];
  __chkstk_darwin(v99);
  v98 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipInfoRecord();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v90 - v19;
  v21 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v92 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v101 = &v90 - v26;
  __chkstk_darwin(v25);
  v96 = &v90 - v27;
  v28 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v90 - v33;
  v35 = sub_1002E1D08(*(a1 + *(v14 + 32)), *(a1 + *(v14 + 32) + 8));
  if (v35)
  {
    v91 = a2;
    v94 = v14;
    v36 = v20;
    v37 = v18;
    v38 = a1;
    v39 = v11;
    v40 = v35;
    v41 = [v35 creationDate];

    if (v41)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = type metadata accessor for Date();
      (*(*(v42 - 8) + 56))(v32, 0, 1, v42);
    }

    else
    {
      v42 = type metadata accessor for Date();
      (*(*(v42 - 8) + 56))(v32, 1, 1, v42);
    }

    sub_1000C52F8(v32, v34);
    type metadata accessor for Date();
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v34, 1, v42);
    v11 = v39;
    a1 = v38;
    v18 = v37;
    v20 = v36;
    v14 = v94;
    if (v45 != 1)
    {
      return (*(v44 + 32))(v91, v34, v42);
    }
  }

  else
  {
    v43 = type metadata accessor for Date();
    (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
  }

  sub_100008D3C(v34, &qword_1003DA110, &qword_10033F230);
  if (*(v100 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v46 = v97;
    sub_10028338C(a1, v97, type metadata accessor for CustodianshipInfoRecord);
    (*(v95 + 56))(v46, 0, 1, v14);
    v47 = v99;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAB8);
    sub_10028338C(a1, v18, type metadata accessor for CustodianshipInfoRecord);
    v49 = v102;
    sub_100012D04(v46, v102, &qword_1003D9270, &qword_10033ECF0);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      LODWORD(v101) = v51;
      v52 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v104 = v100;
      *v52 = 136315394;
      v53 = v98;
      v96 = v11[2];
      (v96)(v98, v18, v47);
      sub_1002833F4(v18, type metadata accessor for CustodianshipInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v94 = v11[1];
      v94(v53, v47);
      v57 = sub_10021145C(v54, v56, &v104);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      v58 = v93;
      sub_100012D04(v102, v93, &qword_1003D9270, &qword_10033ECF0);
      if ((*(v95 + 48))(v58, 1, v14) == 1)
      {
        sub_100008D3C(v58, &qword_1003D9270, &qword_10033ECF0);
        v59 = 0xE100000000000000;
        v60 = 45;
      }

      else
      {
        (v96)(v53, &v58[*(v14 + 20)], v47);
        sub_1002833F4(v58, type metadata accessor for CustodianshipInfoRecord);
        v60 = UUID.uuidString.getter();
        v59 = v82;
        v94(v53, v47);
      }

      sub_100008D3C(v102, &qword_1003D9270, &qword_10033ECF0);
      v83 = sub_10021145C(v60, v59, &v104);

      *(v52 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v50, v101, "No creation date found in CustodianshipInfoRecord, recordID: %s, custodianID: %s", v52, 0x16u);
      swift_arrayDestroy();

      v46 = v97;
    }

    else
    {
      sub_1002833F4(v18, type metadata accessor for CustodianshipInfoRecord);

      sub_100008D3C(v49, &qword_1003D9270, &qword_10033ECF0);
    }

    type metadata accessor for AACustodianError(0);
    v103 = -7103;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v84 = &qword_1003D9270;
    v85 = &qword_10033ECF0;
  }

  else
  {
    v61 = type metadata accessor for CustodianRecord();
    v62 = *(v61 - 8);
    v46 = v96;
    (*(v62 + 56))(v96, 1, 1, v61);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100008D04(v63, qword_1003FAAB8);
    sub_10028338C(a1, v20, type metadata accessor for CustodianshipInfoRecord);
    v64 = v101;
    sub_100012D04(v46, v101, &unk_1003DF000, &unk_10033EC50);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v98;
    if (v67)
    {
      LODWORD(v100) = v66;
      v102 = v65;
      v69 = swift_slowAlloc();
      v94 = v61;
      v70 = v69;
      v97 = swift_slowAlloc();
      v104 = v97;
      *v70 = 136315394;
      v71 = v99;
      v93 = v11[2];
      (v93)(v68, v20, v99);
      sub_1002833F4(v20, type metadata accessor for CustodianshipInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v75 = v11[1];
      v75(v68, v71);
      v76 = sub_10021145C(v72, v74, &v104);

      *(v70 + 4) = v76;
      v95 = v70;
      *(v70 + 12) = 2080;
      v77 = v94;
      v78 = v92;
      sub_100012D04(v101, v92, &unk_1003DF000, &unk_10033EC50);
      if ((*(v62 + 48))(v78, 1, v77) == 1)
      {
        sub_100008D3C(v78, &unk_1003DF000, &unk_10033EC50);
        v79 = 0xE100000000000000;
        v80 = 45;
      }

      else
      {
        (v93)(v68, v78 + v77[5], v71);
        sub_1002833F4(v78, type metadata accessor for CustodianRecord);
        v80 = UUID.uuidString.getter();
        v79 = v86;
        v75(v68, v71);
      }

      sub_100008D3C(v101, &unk_1003DF000, &unk_10033EC50);
      v87 = sub_10021145C(v80, v79, &v104);

      v88 = v95;
      *(v95 + 14) = v87;
      v89 = v102;
      _os_log_impl(&_mh_execute_header, v102, v100, "No creation date found in CustodianRecord, recordID: %s, custodianID: %s", v88, 0x16u);
      swift_arrayDestroy();

      v46 = v96;
    }

    else
    {
      sub_1002833F4(v20, type metadata accessor for CustodianshipInfoRecord);

      sub_100008D3C(v64, &unk_1003DF000, &unk_10033EC50);
    }

    type metadata accessor for AACustodianError(0);
    v103 = -7098;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v84 = &unk_1003DF000;
    v85 = &unk_10033EC50;
  }

  return sub_100008D3C(v46, v84, v85);
}