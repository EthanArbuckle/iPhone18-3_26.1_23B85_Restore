void sub_10002D1A4()
{
  v1 = v0[28];
  v2 = v0[23];
  v0[30] = v2;

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 _urlStringForKey:v3];

  if (v4)
  {
    v5 = v0[27];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v0[31] = v8;
    v9 = [objc_opt_self() bodyParameterValueForRegistrationReason:v5];
    if (v9)
    {
      v10 = v9;
      v12 = v0[25];
      v11 = v0[26];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v0[32] = v15;
      v0[21] = &type metadata for LoggedOutPushRegistrationRequestBody;
      v0[22] = sub_1000335A0();
      v16 = swift_allocObject();
      v0[18] = v16;
      v16[2] = v12;
      v16[3] = v11;
      v16[4] = v13;
      v16[5] = v15;
      sub_10002D7A0(v12, v11);
      sub_10002D7A0(v12, v11);

      v17 = swift_task_alloc();
      v0[33] = v17;
      *v17 = v0;
      v17[1] = sub_10002D40C;

      sub_100030594(v6, v8, 5526864, 0xE300000000000000, (v0 + 18));
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = INCreateErrorWithMessage();

  if (!v19)
  {
    goto LABEL_11;
  }

  swift_willThrow();

  v20 = v0[1];

  v20();
}

uint64_t sub_10002D40C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[33];
  v6 = *v2;
  (*v2)[34] = v1;

  v7 = v4[31];

  if (v1)
  {
    v8 = sub_10002D5D8;
  }

  else
  {
    v4[35] = a1;
    sub_100022B94(v4 + 18);
    v8 = sub_10002D54C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002D54C()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[24];
  sub_1000235A8(v0[25], v0[26]);

  *v4 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_10002D5D8()
{
  v1 = v0[32];
  v2 = v0[30];
  sub_1000235A8(v0[25], v0[26]);

  sub_100022B94(v0 + 18);
  v3 = v0[34];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10002D658()
{
  v1 = v0[28];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[29];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10002D6C8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100023564((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100022CF0(&qword_100063608, &qword_10004E320);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10002D7A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10002D974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10002D9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10002DA18, 0, 0);
}

uint64_t sub_10002DA18()
{
  if (qword_100063A60 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_100063A68;
  type metadata accessor for TaskLimiters();
  sub_100033694(&qword_100063538, &type metadata accessor for TaskLimiters);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DB08, v2, v1);
}

uint64_t sub_10002DB08()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = TaskLimiters.limiter(key:timeout:)();

  return _swift_task_switch(sub_10002DB90, 0, 0);
}

uint64_t sub_10002DB90()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  sub_10002D7A0(v4, v3);
  v6 = *(&async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:) + 1);
  v11 = (&async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:) + async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:));
  v7 = v1;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_10002DCC0;
  v9 = v0[7];

  return v11();
}

uint64_t sub_10002DCC0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10002DDFC;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_10002DDE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002DDFC()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_10002DE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a2;
  return _swift_task_switch(sub_10002DE8C, 0, 0);
}

uint64_t sub_10002DE8C()
{
  v1 = [objc_opt_self() sharedServerWithNoUrlCache];
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10002DFCC;
  v2 = swift_continuation_init();
  v0[17] = sub_100022CF0(&qword_1000635C8, &qword_10004E2F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002D6C8;
  v0[13] = &unk_1000567B8;
  v0[14] = v2;
  [v1 configurationWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002DFCC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_10002E56C;
  }

  else
  {
    v3 = sub_10002E0DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10002E0DC()
{
  v1 = v0[27];
  v2 = v0[23];
  v0[29] = v2;

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 _urlStringForKey:v3];

  if (v4)
  {
    v5 = v0[26];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v0[30] = v8;
    v9 = [objc_opt_self() bodyParameterValueForRegistrationReason:v5];
    if (v9)
    {
      v10 = v9;
      v12 = v0[24];
      v11 = v0[25];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v0[31] = v15;
      v0[21] = &type metadata for LoggedOutPushRegistrationRequestBody;
      v0[22] = sub_1000335A0();
      v16 = swift_allocObject();
      v0[18] = v16;
      v16[2] = v12;
      v16[3] = v11;
      v16[4] = v13;
      v16[5] = v15;
      sub_10002D7A0(v12, v11);
      sub_10002D7A0(v12, v11);

      v17 = swift_task_alloc();
      v0[32] = v17;
      *v17 = v0;
      v17[1] = sub_10002E348;

      sub_100031788(v6, v8, 0x4554454C4544, 0xE600000000000000, (v0 + 18));
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = INCreateErrorWithMessage();

  if (!v19)
  {
    goto LABEL_11;
  }

  swift_willThrow();

  v20 = v0[1];

  v20();
}

uint64_t sub_10002E348()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  v4 = *(v2 + 240);

  if (v0)
  {
    v5 = sub_10002E4EC;
  }

  else
  {
    sub_100022B94((v2 + 144));
    v5 = sub_10002E474;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002E474()
{
  v1 = v0[31];
  v2 = v0[29];
  sub_1000235A8(v0[24], v0[25]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002E4EC()
{
  v1 = v0[31];
  v2 = v0[29];
  sub_1000235A8(v0[24], v0[25]);

  sub_100022B94(v0 + 18);
  v3 = v0[33];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10002E56C()
{
  v1 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  v3 = v0[28];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10002E5DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023698;

  return sub_10002DE68(v5, v2, v3, v4);
}

uint64_t sub_10002E810(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10002E900;

  return sub_10002D9F4(v9, v11, a2);
}

uint64_t sub_10002E900()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  sub_1000235A8(v7, v6);
  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10002EAC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *sub_100023564((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100022CF0(&qword_100063608, &qword_10004E320);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = a2;
    v12 = a3;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v12)
    {
      v17 = *(*(v7 + 64) + 40);
      *v17 = v13;
      v17[1] = v15;
      v17[2] = v12;
      v16 = v7;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v16);
  }
}

uint64_t sub_10002EBFC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000562D8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002EC64(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x6B6F742D68737570;
  }
}

uint64_t sub_10002EC9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F73616572;
  }

  else
  {
    v4 = 0x6B6F742D68737570;
  }

  if (v3)
  {
    v5 = 0xEA00000000006E65;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6F73616572;
  }

  else
  {
    v6 = 0x6B6F742D68737570;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10002ED44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002EDC8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10002EE38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002EEB8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000562D8, *a1);

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

void sub_10002EF18(uint64_t *a1@<X8>)
{
  v2 = 0x6B6F742D68737570;
  if (*v1)
  {
    v2 = 0x6E6F73616572;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10002EF58()
{
  if (*v0)
  {
    result = 0x6E6F73616572;
  }

  else
  {
    result = 0x6B6F742D68737570;
  }

  *v0;
  return result;
}

uint64_t sub_10002EF94@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1000562D8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10002F004(uint64_t a1)
{
  v2 = sub_10002F218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F040(uint64_t a1)
{
  v2 = sub_10002F218();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002F07C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v9 = sub_100022CF0(&qword_100063540, &qword_10004DD00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_100023564(a1, a1[3]);
  sub_10002F218();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_10002D7A0(a2, a3);
  sub_10002F26C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000235A8(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10002F218()
{
  result = qword_100063548;
  if (!qword_100063548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063548);
  }

  return result;
}

unint64_t sub_10002F26C()
{
  result = qword_100063550;
  if (!qword_100063550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063550);
  }

  return result;
}

uint64_t sub_10002F2C0(uint64_t *a1)
{
  result = sub_10003293C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002F2EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003293C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

BOOL sub_10002F33C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100056328, v2);

  return v3 != 0;
}

BOOL sub_10002F384(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100056360, v2);

  return v3 != 0;
}

Swift::Int sub_10002F3F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10002F464()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002F4B8@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100056398, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10002F52C@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1000563D0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002F584(uint64_t a1)
{
  v2 = sub_100032B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F5C0(uint64_t a1)
{
  v2 = sub_100032B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002F5FC(void *a1)
{
  v2 = sub_100022CF0(&qword_100063558, &qword_10004DD08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100023564(a1, a1[3]);
  sub_100032B64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10002F72C(uint64_t *a1)
{
  v3 = sub_100022CF0(&qword_100063568, &qword_10004DD10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100023564(a1, a1[3]);
  sub_100032B64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100022B94(a1);
  return v9;
}

uint64_t sub_10002F880@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100022CF0(&qword_100063568, &qword_10004DD10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100023564(a1, a1[3]);
  sub_100032B64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100022B94(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100022B94(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_10002F9E0(void *a1)
{
  v3 = sub_100022CF0(&qword_100063558, &qword_10004DD08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100023564(a1, a1[3]);
  sub_100032B64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10002FB24@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10002FB60(uint64_t a1)
{
  v2 = sub_100032BB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002FB9C(uint64_t a1)
{
  v2 = sub_100032BB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002FBD8(void *a1)
{
  v2 = sub_100022CF0(&qword_100063570, &qword_10004DD18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100023564(a1, a1[3]);
  sub_100032BB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10002FD14(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100023698;

  return v7();
}

uint64_t sub_10002FDFC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100023238;

  return v8();
}

uint64_t sub_10002FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000333A0(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100023504(v12, &qword_1000632D0, &qword_10004DAC0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100023504(a3, &qword_1000632D0, &qword_10004DAC0);

    return v23;
  }

LABEL_8:
  sub_100023504(a3, &qword_1000632D0, &qword_10004DAC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000301D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100033890;

  return v7(a1);
}

void sub_1000302C8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100022CF0(&qword_100063610, qword_10004E328);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
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

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100033648();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
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
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100033648();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100030594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  v6 = type metadata accessor for String.Encoding();
  v5[38] = v6;
  v7 = *(v6 - 8);
  v5[39] = v7;
  v8 = *(v7 + 64) + 15;
  v5[40] = swift_task_alloc();
  v9 = *(*(sub_100022CF0(&qword_100063530, &unk_10004E300) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v10 = type metadata accessor for URLRequest();
  v5[42] = v10;
  v11 = *(v10 - 8);
  v5[43] = v11;
  v12 = *(v11 + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v13 = *(*(sub_100022CF0(&qword_100063280, &qword_10004D7B0) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v5[48] = v14;
  v15 = *(v14 - 8);
  v5[49] = v15;
  v16 = *(v15 + 64) + 15;
  v5[50] = swift_task_alloc();

  return _swift_task_switch(sub_10003079C, 0, 0);
}

void sub_10003079C()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v5 = v0[33];
  v4 = v0[34];
  v6 = static SystemProperties.getDeviceID()();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v0[30] = v8;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v0[26] = v5;
  v0[27] = v4;
  v0[28] = 0x7D644964757BLL;
  v0[29] = 0xE600000000000000;
  v0[31] = v9;
  v41 = sub_1000335F4();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100023504(v0[47], &qword_100063280, &qword_10004D7B0);
    v10 = String._bridgeToObjectiveC()();
    v11 = INCreateErrorWithMessage();

    if (v11)
    {

      swift_willThrow();
      v12 = v0[50];
      v14 = v0[46];
      v13 = v0[47];
      v16 = v0[44];
      v15 = v0[45];
      v18 = v0[40];
      v17 = v0[41];

      v19 = v0[1];

      v19();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = v0[49];
    v21 = v0[50];
    v23 = v0[47];
    v22 = v0[48];
    v24 = v0[46];
    v42 = v0[41];
    v43 = v0[44];
    v25 = v0[35];
    v26 = v0[36];

    (*(v20 + 32))(v21, v23, v22);
    v27 = objc_allocWithZone(NSMutableURLRequest);
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v31 = [v27 initWithURL:{v29, &type metadata for String, v41, v41, v41}];
    v0[51] = v31;

    v32 = String._bridgeToObjectiveC()();
    [v31 setHTTPMethod:v32];

    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = objc_allocWithZone(ICQRequestProvider);
    v34 = v31;
    v35 = [v33 init];
    [v35 addBasicHeadersToRequest:v34];

    type metadata accessor for BAARequestSigner();
    v36 = type metadata accessor for Date();
    (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
    v0[52] = BAARequestSigner.__allocating_init(date:)();
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *(&async function pointer to dispatch thunk of BAARequestSigner.sign(request:) + 1);
    v44 = (&async function pointer to dispatch thunk of BAARequestSigner.sign(request:) + async function pointer to dispatch thunk of BAARequestSigner.sign(request:));
    v38 = swift_task_alloc();
    v0[53] = v38;
    *v38 = v0;
    v38[1] = sub_100030B80;
    v40 = v0[44];
    v39 = v0[45];

    v44(v39, v40);
  }
}

uint64_t sub_100030B80()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  v2[54] = v0;

  v5 = v2[52];
  v6 = v2[44];
  v7 = v2[43];
  v8 = v2[42];
  v9 = *(v7 + 8);
  v10 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[58] = v9;
    v2[59] = v10;
    v9(v6, v8);

    v11 = sub_10003114C;
  }

  else
  {
    v2[55] = v9;
    v2[56] = v10;
    v9(v6, v8);

    v11 = sub_100030D28;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100030D28()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 296);
  (*(v0 + 440))(v4, v5);
  (*(v6 + 32))(v4, v3, v5);
  v8 = v7[4];
  sub_100023564(v7, v7[3]);
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 456) = v2;
  if (v2)
  {
    v13 = *(v0 + 440);
    v12 = *(v0 + 448);
    v14 = *(v0 + 408);
    v39 = *(v0 + 400);
    v15 = *(v0 + 384);
    v16 = *(v0 + 392);
    v17 = *(v0 + 368);
    v18 = *(v0 + 336);

    v13(v17, v18);
    (*(v16 + 8))(v39, v15);
    v19 = *(v0 + 400);
    v20 = *(v0 + 368);
    v21 = *(v0 + 376);
    v23 = *(v0 + 352);
    v22 = *(v0 + 360);
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 368);

    URLRequest.httpBody.setter();
    v29._countAndFlagsBits = 0x2D746E65746E6F43;
    v29._object = 0xEC00000065707954;
    v30.value._object = 0x8000000100042240;
    v30.value._countAndFlagsBits = 0xD000000000000010;
    URLRequest.setValue(_:forHTTPHeaderField:)(v30, v29);
    v31 = [objc_opt_self() sharedSessionWithNoUrlCache];
    v32 = [v31 urlSession];

    v33 = [objc_allocWithZone(ACSENetworkRequestController) initWithSession:v32];
    *(v0 + 480) = v33;

    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    *(v0 + 488) = isa;
    sub_100022CF0(&qword_1000635E0, &qword_10004E310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004DCC0;
    sub_100033648();
    *(inited + 32) = NSNumber.init(integerLiteral:)(200);
    sub_1000302C8(inited);
    swift_setDeallocating();
    v36 = *(inited + 16);
    swift_arrayDestroy();
    sub_100033694(&qword_1000635F0, sub_100033648);
    v37 = Set._bridgeToObjectiveC()().super.isa;
    *(v0 + 496) = v37;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_100031240;
    v38 = swift_continuation_init();
    *(v0 + 136) = sub_100022CF0(&qword_1000635F8, &qword_10004E318);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10002EAC0;
    *(v0 + 104) = &unk_1000568D0;
    *(v0 + 112) = v38;
    [v33 executeRequest:isa acceptedStatusCodes:v37 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10003114C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 400);
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);
  v6 = *(v0 + 368);
  v7 = *(v0 + 336);

  v2(v6, v7);
  (*(v5 + 8))(v3, v4);
  v8 = *(v0 + 432);
  v9 = *(v0 + 400);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);
  v15 = *(v0 + 320);
  v14 = *(v0 + 328);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100031240()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_100031664;
  }

  else
  {
    v3 = sub_100031350;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100031350()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);

  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      if ((v3 & 0xFF000000000000) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v6 = v4;
    v7 = v4 >> 32;
LABEL_8:
    if (v6 != v7)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    goto LABEL_8;
  }

LABEL_9:
  v8 = *(v0 + 312);
  v9 = *(v0 + 320);
  v10 = *(v0 + 304);
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  (*(v8 + 8))(v9, v10);
  if (v13 >> 60 != 15)
  {
    sub_1000235A8(v4, v3);
    v4 = v11;
    v3 = v13;
  }

LABEL_11:
  v14 = *(v0 + 456);
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100033824();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v18 = *(v0 + 480);
  v44 = *(v0 + 440);
  v45 = *(v0 + 448);
  v20 = *(v0 + 400);
  v19 = *(v0 + 408);
  v21 = *(v0 + 384);
  v22 = *(v0 + 392);
  if (v14)
  {
    v23 = *(v0 + 384);
    v24 = *(v0 + 368);
    v25 = *(v0 + 336);

    sub_1000235A8(v4, v3);

    v44(v24, v25);
    (*(v22 + 8))(v20, v23);
    v26 = *(v0 + 400);
    v27 = *(v0 + 368);
    v28 = *(v0 + 376);
    v30 = *(v0 + 352);
    v29 = *(v0 + 360);
    v32 = *(v0 + 320);
    v31 = *(v0 + 328);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v35 = *(v0 + 368);
    v39 = *(v0 + 376);
    v40 = *(v0 + 360);
    v41 = *(v0 + 352);
    v36 = *(v0 + 336);
    v42 = *(v0 + 328);
    v43 = *(v0 + 320);

    sub_1000235A8(v4, v3);

    v44(v35, v36);
    (*(v22 + 8))(v20, v21);
    v37 = *(v0 + 256);

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_100031664()
{
  v1 = v0[63];
  v2 = v0[60];
  v21 = v0[62];
  v22 = v0[61];
  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[51];
  v20 = v0[50];
  v6 = v0[48];
  v7 = v0[49];
  v8 = v0[46];
  v9 = v0[42];
  swift_willThrow();

  v3(v8, v9);
  (*(v7 + 8))(v20, v6);

  v10 = v0[63];
  v11 = v0[50];
  v13 = v0[46];
  v12 = v0[47];
  v15 = v0[44];
  v14 = v0[45];
  v17 = v0[40];
  v16 = v0[41];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100031788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[35] = a4;
  v5[36] = a5;
  v5[33] = a2;
  v5[34] = a3;
  v5[32] = a1;
  v6 = type metadata accessor for String.Encoding();
  v5[37] = v6;
  v7 = *(v6 - 8);
  v5[38] = v7;
  v8 = *(v7 + 64) + 15;
  v5[39] = swift_task_alloc();
  v9 = *(*(sub_100022CF0(&qword_100063530, &unk_10004E300) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v10 = type metadata accessor for URLRequest();
  v5[41] = v10;
  v11 = *(v10 - 8);
  v5[42] = v11;
  v12 = *(v11 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v13 = *(*(sub_100022CF0(&qword_100063280, &qword_10004D7B0) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v5[47] = v14;
  v15 = *(v14 - 8);
  v5[48] = v15;
  v16 = *(v15 + 64) + 15;
  v5[49] = swift_task_alloc();

  return _swift_task_switch(sub_100031990, 0, 0);
}

void sub_100031990()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v5 = v0[32];
  v4 = v0[33];
  v6 = static SystemProperties.getDeviceID()();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v0[30] = v8;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v0[26] = v5;
  v0[27] = v4;
  v0[28] = 0x7D644964757BLL;
  v0[29] = 0xE600000000000000;
  v0[31] = v9;
  v41 = sub_1000335F4();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100023504(v0[46], &qword_100063280, &qword_10004D7B0);
    v10 = String._bridgeToObjectiveC()();
    v11 = INCreateErrorWithMessage();

    if (v11)
    {

      swift_willThrow();
      v12 = v0[49];
      v14 = v0[45];
      v13 = v0[46];
      v16 = v0[43];
      v15 = v0[44];
      v18 = v0[39];
      v17 = v0[40];

      v19 = v0[1];

      v19();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = v0[48];
    v21 = v0[49];
    v23 = v0[46];
    v22 = v0[47];
    v24 = v0[45];
    v42 = v0[40];
    v43 = v0[43];
    v25 = v0[34];
    v26 = v0[35];

    (*(v20 + 32))(v21, v23, v22);
    v27 = objc_allocWithZone(NSMutableURLRequest);
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v31 = [v27 initWithURL:{v29, &type metadata for String, v41, v41, v41}];
    v0[50] = v31;

    v32 = String._bridgeToObjectiveC()();
    [v31 setHTTPMethod:v32];

    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = objc_allocWithZone(ICQRequestProvider);
    v34 = v31;
    v35 = [v33 init];
    [v35 addBasicHeadersToRequest:v34];

    type metadata accessor for BAARequestSigner();
    v36 = type metadata accessor for Date();
    (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
    v0[51] = BAARequestSigner.__allocating_init(date:)();
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *(&async function pointer to dispatch thunk of BAARequestSigner.sign(request:) + 1);
    v44 = (&async function pointer to dispatch thunk of BAARequestSigner.sign(request:) + async function pointer to dispatch thunk of BAARequestSigner.sign(request:));
    v38 = swift_task_alloc();
    v0[52] = v38;
    *v38 = v0;
    v38[1] = sub_100031D74;
    v40 = v0[43];
    v39 = v0[44];

    v44(v39, v40);
  }
}

uint64_t sub_100031D74()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  v2[53] = v0;

  v5 = v2[51];
  v6 = v2[43];
  v7 = v2[42];
  v8 = v2[41];
  v9 = *(v7 + 8);
  v10 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[57] = v9;
    v2[58] = v10;
    v9(v6, v8);

    v11 = sub_100032340;
  }

  else
  {
    v2[54] = v9;
    v2[55] = v10;
    v9(v6, v8);

    v11 = sub_100031F1C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100031F1C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = *(v0 + 288);
  (*(v0 + 432))(v4, v5);
  (*(v6 + 32))(v4, v3, v5);
  v8 = v7[4];
  sub_100023564(v7, v7[3]);
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 448) = v2;
  if (v2)
  {
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    v14 = *(v0 + 400);
    v39 = *(v0 + 392);
    v15 = *(v0 + 376);
    v16 = *(v0 + 384);
    v17 = *(v0 + 360);
    v18 = *(v0 + 328);

    v13(v17, v18);
    (*(v16 + 8))(v39, v15);
    v19 = *(v0 + 392);
    v20 = *(v0 + 360);
    v21 = *(v0 + 368);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 360);

    URLRequest.httpBody.setter();
    v29._countAndFlagsBits = 0x2D746E65746E6F43;
    v29._object = 0xEC00000065707954;
    v30.value._object = 0x8000000100042240;
    v30.value._countAndFlagsBits = 0xD000000000000010;
    URLRequest.setValue(_:forHTTPHeaderField:)(v30, v29);
    v31 = [objc_opt_self() sharedSessionWithNoUrlCache];
    v32 = [v31 urlSession];

    v33 = [objc_allocWithZone(ACSENetworkRequestController) initWithSession:v32];
    *(v0 + 472) = v33;

    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    *(v0 + 480) = isa;
    sub_100022CF0(&qword_1000635E0, &qword_10004E310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004DCC0;
    sub_100033648();
    *(inited + 32) = NSNumber.init(integerLiteral:)(200);
    sub_1000302C8(inited);
    swift_setDeallocating();
    v36 = *(inited + 16);
    swift_arrayDestroy();
    sub_100033694(&qword_1000635F0, sub_100033648);
    v37 = Set._bridgeToObjectiveC()().super.isa;
    *(v0 + 488) = v37;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_100032434;
    v38 = swift_continuation_init();
    *(v0 + 136) = sub_100022CF0(&qword_1000635F8, &qword_10004E318);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10002EAC0;
    *(v0 + 104) = &unk_100056808;
    *(v0 + 112) = v38;
    [v33 executeRequest:isa acceptedStatusCodes:v37 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100032340()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 384);
  v6 = *(v0 + 360);
  v7 = *(v0 + 328);

  v2(v6, v7);
  (*(v5 + 8))(v3, v4);
  v8 = *(v0 + 424);
  v9 = *(v0 + 392);
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v15 = *(v0 + 312);
  v14 = *(v0 + 320);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100032434()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  if (v2)
  {
    v3 = sub_100032818;
  }

  else
  {
    v3 = sub_100032544;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100032544()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);

  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      if ((v3 & 0xFF000000000000) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v6 = v4;
    v7 = v4 >> 32;
LABEL_8:
    if (v6 != v7)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    goto LABEL_8;
  }

LABEL_9:
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  (*(v8 + 8))(v9, v10);
  if (v13 >> 60 != 15)
  {
    sub_1000235A8(v4, v3);
    v4 = v11;
    v3 = v13;
  }

LABEL_11:
  v14 = *(v0 + 448);
  v15 = type metadata accessor for JSONDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000336DC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v18 = *(v0 + 472);
  v42 = *(v0 + 432);
  v43 = *(v0 + 440);
  v20 = *(v0 + 392);
  v19 = *(v0 + 400);
  v21 = *(v0 + 376);
  v22 = *(v0 + 384);
  if (v14)
  {
    v23 = *(v0 + 376);
    v24 = *(v0 + 360);
    v25 = *(v0 + 328);

    sub_1000235A8(v4, v3);

    v42(v24, v25);
    (*(v22 + 8))(v20, v23);
    v26 = *(v0 + 392);
    v27 = *(v0 + 360);
    v28 = *(v0 + 368);
    v30 = *(v0 + 344);
    v29 = *(v0 + 352);
    v32 = *(v0 + 312);
    v31 = *(v0 + 320);
  }

  else
  {
    v34 = *(v0 + 360);
    v37 = *(v0 + 368);
    v38 = *(v0 + 352);
    v39 = *(v0 + 344);
    v35 = *(v0 + 328);
    v40 = *(v0 + 320);
    v41 = *(v0 + 312);

    sub_1000235A8(v4, v3);

    v42(v34, v35);
    (*(v22 + 8))(v20, v21);
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100032818()
{
  v1 = v0[62];
  v2 = v0[59];
  v21 = v0[61];
  v22 = v0[60];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[50];
  v20 = v0[49];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[45];
  v9 = v0[41];
  swift_willThrow();

  v3(v8, v9);
  (*(v7 + 8))(v20, v6);

  v10 = v0[62];
  v11 = v0[49];
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v17 = v0[39];
  v16 = v0[40];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10003293C(uint64_t *a1)
{
  v3 = sub_100022CF0(&qword_1000635B8, &qword_10004E2E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_100023564(a1, v8);
  sub_10002F218();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100022B94(a1);
  }

  else
  {
    v12 = 0;
    sub_100033520();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_10002D7A0(v8, v10);

    sub_100022B94(a1);
    sub_1000235A8(v8, v10);
  }

  return v8;
}

unint64_t sub_100032B64()
{
  result = qword_100063560;
  if (!qword_100063560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063560);
  }

  return result;
}

unint64_t sub_100032BB8()
{
  result = qword_100063A70[0];
  if (!qword_100063A70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100063A70);
  }

  return result;
}

unint64_t sub_100032C10()
{
  result = qword_100063578;
  if (!qword_100063578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063578);
  }

  return result;
}

unint64_t sub_100032C68()
{
  result = qword_100063580;
  if (!qword_100063580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063580);
  }

  return result;
}

unint64_t sub_100032CC0()
{
  result = qword_100063588;
  if (!qword_100063588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063588);
  }

  return result;
}

unint64_t sub_100032D18()
{
  result = qword_100063590;
  if (!qword_100063590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063590);
  }

  return result;
}

unint64_t sub_100032D70()
{
  result = qword_100063598;
  if (!qword_100063598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063598);
  }

  return result;
}

unint64_t sub_100032DC8()
{
  result = qword_1000635A0;
  if (!qword_1000635A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000635A0);
  }

  return result;
}

uint64_t sub_100032E1C(uint64_t a1)
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

uint64_t sub_100032E38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100032E80(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for LoggedOutPushRegistrationResponseBody.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LoggedOutPushRegistrationResponseBody.CodingKeys(_WORD *result, int a2, int a3)
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

void sub_100033018(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100033068()
{
  result = qword_100064480;
  if (!qword_100064480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064480);
  }

  return result;
}

unint64_t sub_1000330C0()
{
  result = qword_100064488[0];
  if (!qword_100064488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100064488);
  }

  return result;
}

uint64_t sub_100033114()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100023698;

  return sub_10002E810(v2, v3, v5, v4);
}

uint64_t sub_1000331D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100023698;

  return sub_10002FD14(v2, v3, v5);
}

uint64_t sub_100033294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000332D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100023238;

  return sub_10002FDFC(a1, v4, v5, v7);
}

uint64_t sub_1000333A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100023698;

  return sub_1000301D0(a1, v5);
}

uint64_t sub_1000334D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1000235A8(*(v0 + 32), *(v0 + 40));

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_100033520()
{
  result = qword_1000635C0;
  if (!qword_1000635C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000635C0);
  }

  return result;
}

unint64_t sub_1000335A0()
{
  result = qword_1000635D0;
  if (!qword_1000635D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000635D0);
  }

  return result;
}

unint64_t sub_1000335F4()
{
  result = qword_1000635D8;
  if (!qword_1000635D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000635D8);
  }

  return result;
}

unint64_t sub_100033648()
{
  result = qword_1000635E8;
  if (!qword_1000635E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000635E8);
  }

  return result;
}

uint64_t sub_100033694(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000336DC()
{
  result = qword_100063600;
  if (!qword_100063600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063600);
  }

  return result;
}

uint64_t sub_100033730()
{
  sub_1000235A8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100033770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100023238;

  return sub_10002CF30(a1, v4, v5, v6);
}

unint64_t sub_100033824()
{
  result = qword_100063618;
  if (!qword_100063618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063618);
  }

  return result;
}

uint64_t sub_1000338E4()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100033908(v0);
}

void sub_100033908(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch audioAccessorySerialNumbers %@", &v2, 0xCu);
}

void sub_1000339EC(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412802;
  v8 = v6;
  v9 = 2048;
  v10 = [a2 statusCode];
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@ has non-200 status code: %zd with response %@", &v7, 0x20u);
}

void sub_100033AF4(uint64_t a1, NSObject *a2)
{
  objc_opt_class();
  sub_1000045DC();
  v7 = 2112;
  v8 = a1;
  v5 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type %@ for DSID %@.", v6, 0x16u);
}

void sub_100033B98()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100033C08()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100033CB8()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100033DA8(id *a1, NSObject *a2)
{
  v4 = [*a1 statusCode];
  v5 = *a1;
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ICQUsageDetailsResponse has non-200 status code: %zd for response %@", &v6, 0x16u);
}

void sub_100033E4C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Attempting renew credentials for altDSID %@", &v2, 0xCu);
}

void sub_100033EC4(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to renew credentials. Error: %@", &v4, 0xCu);
}

void sub_10003403C(void *a1)
{
  v1 = [a1 cloudStorageSummary];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Cloud storage summary %@", v4, v5, v6, v7, v8);
}

void sub_10003415C(void *a1)
{
  v1 = [a1 cloudStorageApps];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Storage apps: %@", v4, v5, v6, v7, v8);
}

void sub_10003427C(void *a1)
{
  v1 = [a1 appCloudStorage];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Storage by app summary %@", v4, v5, v6, v7, v8);
}

void sub_10003439C(void *a1)
{
  v1 = [a1 backupInfo];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Backup details summary %@", v4, v5, v6, v7, v8);
}

void sub_100034530(os_log_t log)
{
  v1 = 138412290;
  v2 = qword_100063638;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "MBManager reports backupDeviceUUID as %@", &v1, 0xCu);
}

void sub_100034650(void *a1)
{
  v1 = [a1 appsSyncingToDrive];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Apps Syncing To Drive Summary %@", v4, v5, v6, v7, v8);
}

void sub_100034770(void *a1)
{
  v1 = [a1 serverRecommendations];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Recommendations result %@", v4, v5, v6, v7, v8);
}

void sub_100034890(void *a1)
{
  v1 = [a1 ruleConfiguration];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Ruleset result %@", v4, v5, v6, v7, v8);
}

void sub_1000349B0(void *a1)
{
  v1 = [a1 serverRecommendations];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Completed and dismissed recommendations result %@", v4, v5, v6, v7, v8);
}

void sub_100034A9C(void *a1)
{
  v1 = [a1 httpResponse];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Recommendation action request request completed successfully. %@", v4, v5, v6, v7, v8);
}

void sub_100034B88(uint64_t a1, void *a2)
{
  [a2 activityID];
  sub_1000074A0();
  sub_100007490();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100034C10(uint64_t a1, id *a2)
{
  [*a2 activityID];
  sub_1000074A0();
  sub_100007490();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100034C98(void **a1)
{
  sub_1000074C8(a1);
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100034D14(void **a1)
{
  sub_1000074C8(a1);
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100034D90(void *a1)
{
  [a1 activityID];
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100034E10(void *a1)
{
  [a1 activityID];
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100034E90(uint64_t a1, void *a2)
{
  [a2 activityID];
  sub_1000074A0();
  sub_100007490();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100034F18(void *a1)
{
  [a1 activityID];
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100034F98(void *a1)
{
  [a1 activityID];
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100035018(uint64_t a1)
{
  [*(a1 + 32) activityID];
  sub_1000074A0();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000350A0(void **a1)
{
  sub_1000074C8(a1);
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003511C(void **a1)
{
  sub_1000074C8(a1);
  sub_1000045DC();
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100035198(void **a1)
{
  sub_1000074C8(a1);
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100035214(void **a1)
{
  sub_1000074C8(a1);
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100035290(void *a1)
{
  [a1 activityID];
  sub_100007490();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10003532C(void *a1)
{
  [a1 activityID];
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000353BC(id *a1)
{
  [*a1 statusCode];
  v2 = *a1;
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100035454(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  sub_1000074B8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000354F4()
{
  objc_opt_class();
  sub_1000045DC();
  v1 = v0;
  sub_1000074B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100035580(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  sub_1000074B8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100035620()
{
  objc_opt_class();
  sub_1000045DC();
  v1 = v0;
  sub_1000074B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000356AC(void *a1)
{
  v1 = [a1 buttonTitle];
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000357AC(void *a1, NSObject *a2)
{
  [a1 count];
  sub_1000045DC();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Setting actions with %lu actions...", v3, 0xCu);
}

void sub_100035834(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "INRecommendationsCompletedAndDismissedRequest could not find completedURL in ruleConfiguration: %@", &v3, 0xCu);
}

void sub_1000358F4(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [*a2 statusCode];
  v8 = *a2;
  v9 = 138412802;
  v10 = v6;
  v11 = 2048;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@ has a non-200 status code: %zd with response %@", &v9, 0x20u);
}

void sub_100035A04(void *a1, NSObject *a2)
{
  v3 = [a1 urlString];
  sub_1000045DC();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "INTipNetworkRequest Building request for URL %@.", v4, 0xCu);
}

void sub_100035A98()
{
  sub_1000045DC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "INTipNetworkRequest Could not convert message body to JSON. Error: %@. Body: %@", v2, 0x16u);
}

void sub_100035B90(void *a1, NSObject *a2)
{
  v3 = [a1 urlString];
  sub_1000045DC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "INTipNetworkRequest Fatal request error: missing account and/or parameters for %@.", v4, 0xCu);
}

void sub_100035C24(id *a1, NSObject *a2)
{
  v4 = [*a1 statusCode];
  v5 = *a1;
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ICQBackupDetails has non-200 status code: %zd for response %@", &v6, 0x16u);
}

void sub_100035D08(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [*a2 aa_primaryAppleAccount];
  v6 = [v5 aa_personID];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "dsid mimatch. Push dsid: %@, primary account dsid: %@", &v7, 0x16u);
}

void sub_100035E4C()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100035EBC()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100035F2C()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100035FB0(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_10000BB98();
  sub_10000BBB0(&_mh_execute_header, v2, v3, "Failed with error code %d for account %@");
}

void sub_10003601C(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_10000BB98();
  sub_10000BBB0(&_mh_execute_header, v2, v3, "Failed with error code %d for account %@");
}

void sub_100036088(void *a1)
{
  v1 = [a1 urlString];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "URL: %@", v4, v5, v6, v7, v8);
}

void sub_10003610C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000045DC();
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not convert push message body to JSON. Error: %@. Body: %@", v5, 0x16u);
}

void sub_100036194(void *a1)
{
  v2 = [NSString alloc];
  v3 = [a1 HTTPBody];
  v4 = [v2 initWithData:v3 encoding:4];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v5, v6, "Body: %@", v7, v8, v9, v10, v11);
}

void sub_100036250(void *a1)
{
  v1 = [a1 allHTTPHeaderFields];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Headers: %@", v4, v5, v6, v7, v8);
}

void sub_1000362D4(id *a1, NSObject *a2)
{
  v4 = [*a1 statusCode];
  v5 = *a1;
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "INTipNetworkResponse has non-200 status code: %zd for response %@", &v6, 0x16u);
}

void sub_100036378(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.iCloudSettingsNotification";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Initalizing notificaiton listener for %@ notifications.", &v1, 0xCu);
}

void sub_1000363FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "didReceiveNotificationResponse %@", &v2, 0xCu);
}

void sub_10003652C(void *a1, NSObject *a2)
{
  v3 = [a1 urlString];
  sub_1000045DC();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "INRecommendationsActionsRequest Building request for URL %@.", v4, 0xCu);
}

void sub_1000365C0()
{
  sub_1000045DC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "INRecommendationsActionsRequest Could not convert message body to JSON. Error: %@. Body: %@", v2, 0x16u);
}

void sub_1000366B8(void *a1, NSObject *a2)
{
  v3 = [a1 urlString];
  sub_1000045DC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "INRecommendationsActionsRequest Fatal request error: missing account and/or parameters for %@.", v4, 0xCu);
}

void sub_10003674C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [[NSString alloc] initWithData:a1 encoding:4];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not parse server response data: %@. Error: %@", &v6, 0x16u);
}

void sub_100036854(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "showMessage value %@", &v2, 0xCu);
}

void sub_1000368CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Server provided an unparseable URL string: %@", &v2, 0xCu);
}

void sub_100036944(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Person ID is nil. Cannot provide URL string for %@", &v5, 0xCu);
}

void sub_1000369E0(id *a1, NSObject *a2)
{
  v4 = [*a1 statusCode];
  v5 = *a1;
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "INRecommendationsActionsResponse has non-200 status code: %zd for response %@", &v6, 0x16u);
}

void sub_100036BFC()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100036C38(void *a1, NSObject *a2)
{
  v3 = [a1 responseDictionary];
  sub_1000045DC();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", v4, 0xCu);
}

void sub_100036CCC(void *a1)
{
  v1 = [a1 error];
  sub_1000045DC();
  sub_10000EE90(&_mh_execute_header, v2, v3, "Registration failed with error %@", v4, v5, v6, v7, v8);
}

void sub_100036D50()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100036DC0(void *a1)
{
  v1 = [a1 error];
  sub_1000045DC();
  sub_10000EE90(&_mh_execute_header, v2, v3, "Registration request failed due to network connection problems. Error: %@", v4, v5, v6, v7, v8);
}

void sub_100036E44()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100036E80(void *a1, NSObject *a2)
{
  v3 = [a1 responseDictionary];
  sub_1000045DC();
  v5 = 2080;
  v6 = "[INRegistrar unregisterFromPushNotificationsForAccount:pushToken:completion:]_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unregistration response: %@, %s", v4, 0x16u);
}

void sub_100036F28()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100036F98(void *a1)
{
  v1 = [a1 error];
  sub_1000045DC();
  sub_10000EE90(&_mh_execute_header, v2, v3, "Unregistration request failed due to error: %@", v4, v5, v6, v7, v8);
}

void sub_10003701C()
{
  sub_1000045DC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not convert push message body to JSON. Error: %@. Body: %@", v2, 0x16u);
}

void sub_100037204()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100037240(uint64_t a1)
{
  v1 = [NSNumber numberWithInteger:a1];
  sub_1000045DC();
  sub_100017548();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void sub_100037360()
{
  sub_1000045DC();
  sub_10001753C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100037404()
{
  sub_100017584();
  sub_10001753C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003748C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100037518()
{
  sub_1000045DC();
  sub_10001753C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100037588(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100017584();
  sub_100017574();
  sub_100017554(&_mh_execute_header, v2, v3, "Failed to save account %@ after setting expiration date. Error %@");
}

void sub_1000375F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100017584();
  sub_10001753C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003766C()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000376A8(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003787C()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000378B8()
{
  sub_1000045DC();
  sub_10001753C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100037990()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100037EAC()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100037EE8(void *a1)
{
  v1 = [a1 userInfo];
  sub_1000045DC();
  sub_100017548();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_100037F78(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000045DC();
  sub_1000074B8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100038004()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000380A8(id *a1)
{
  v1 = [*a1 activeAPSEnvironment];
  sub_1000045DC();
  sub_100017548();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1000381D8(void *a1)
{
  v1 = [a1 pushTopics];
  sub_1000045DC();
  sub_100017548();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_10003829C(void *a1)
{
  v6 = [a1 topic];
  sub_1000074B8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100038344()
{
  sub_1000045DC();
  sub_10001753C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000383E8()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100038694()
{
  sub_1000045DC();
  sub_100017574();
  sub_100017554(&_mh_execute_header, v0, v1, "Failed to make a network request to send status: %@. No AppleAccount found for altDSID %@");
}

void sub_100038700(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100017584();
  sub_100017574();
  sub_100017554(&_mh_execute_header, v2, v3, "Failed to send status: %@ for recommendations with error: %@");
}

void sub_1000387B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to format url for string: %@", &v2, 0xCu);
}

void sub_10003882C(os_log_t log)
{
  v1 = 138412290;
  v2 = @"settingsAppStorageDetailsURL";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "iCloudQuota data class doesn't contain url for key: %@", &v1, 0xCu);
}

void sub_1000388E4()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000389BC()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100038A2C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_1000045DC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to signal exit megaBackupMode with error: %{public}@", v4, 0xCu);
}

void sub_100038AEC()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100038B5C()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100038B98()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100038BD4()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100038C10(os_log_t log)
{
  v1 = 136315138;
  v2 = "[INDaemon_iOS renewCredentialsWithCompletion:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void sub_100038C94(id *a1, NSObject *a2)
{
  v4 = [*a1 statusCode];
  v5 = *a1;
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "INStorageByAppResponse has non-200 status code: %zd for response %@", &v6, 0x16u);
}

void sub_100038D38()
{
  sub_1000045DC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Missing iCloud auth token for account %@. Error: %@", v2, 0x16u);
}

void sub_100038EB8(void *a1)
{
  v1 = [a1 urlString];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Building request for URL %@.", v4, v5, v6, v7, v8);
}

void sub_100038FF4(void *a1)
{
  v1 = [a1 allHTTPHeaderFields];
  sub_1000045DC();
  sub_100006654(&_mh_execute_header, v2, v3, "Request headers: %@", v4, v5, v6, v7, v8);
}

void sub_1000390EC(void *a1, NSObject *a2)
{
  v3 = [a1 urlString];
  sub_1000045DC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Fatal request error: missing account and/or parameters for %@.", v4, 0xCu);
}

void sub_100039180()
{
  objc_opt_class();
  sub_1000045DC();
  v1 = v0;
  sub_100017548();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_100039220()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100039290()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003930C(void *a1)
{
  [a1 statusCode];
  sub_1000045DC();
  sub_100017548();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

void sub_100039390(void *a1)
{
  v1 = [a1 error];
  sub_1000045DC();
  sub_100017548();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_100039420()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003945C()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100039498()
{
  sub_1000066AC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100039514()
{
  sub_1000045DC();
  sub_1000045D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100039584(void *a1)
{
  v1 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1 statusCode]);
  sub_1000045DC();
  sub_100017548();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_100039628(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[SUBD] Failed to display the delayed offer after failsafe triggered with error=[%@].", &v2, 0xCu);
}

void sub_1000396A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[SUBD] Failed to clear the subd state with error=[%@].", &v2, 0xCu);
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}