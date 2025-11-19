Swift::Int sub_100066A64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100066ADC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100066B40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100066BB4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A61B0, *a1);

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

void sub_100066C14(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "shouldRestoreStageManagerMode";
  }

  else
  {
    v2 = "com.apple.Health";
  }

  *a1 = 0xD00000000000001DLL;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_100066C4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  sub_1000674C0();
  v4 = sub_10000DA80();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = sub_100072DF4(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    v8 = v6 + 1;
    if (v6 >= v7 >> 1)
    {
      v19 = v6 + 1;
      v16 = v5;
      v17 = *(v5 + 2);
      v18 = sub_100072DF4((v7 > 1), v6 + 1, 1, v16);
      v6 = v17;
      v8 = v19;
      v5 = v18;
    }

    *(v5 + 2) = v8;
    v5[v6 + 32] = 0;
  }

  v9 = sub_10000DA80();
  if (v9 != 2 && (v9 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100072DF4(0, *(v5 + 2) + 1, 1, v5);
    }

    v11 = *(v5 + 2);
    v10 = *(v5 + 3);
    if (v11 >= v10 >> 1)
    {
      v5 = sub_100072DF4((v10 > 1), v11 + 1, 1, v5);
    }

    *(v5 + 2) = v11 + 1;
    v5[v11 + 32] = 1;
  }

  if (*(v5 + 2))
  {
    v12 = swift_allocObject();
    *(v12 + 16) = 0xD00000000000002ELL;
    *(v12 + 24) = 0x800000010008A490;
    *(v12 + 32) = 5;
    *(v12 + 40) = v5;
    *(v12 + 48) = *(v2 + 24);
    result = swift_unknownObjectRetain();
    v14 = &off_1000AB2C0;
    v15 = &type metadata for AEAMultitaskingModeDeactivation;
  }

  else
  {

    v12 = 0;
    v15 = 0;
    v14 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v12;
  a1[3] = v15;
  a1[4] = v14;
  return result;
}

uint64_t sub_100066E60(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return _swift_task_switch(sub_100066EF4, 0, 0);
}

uint64_t sub_100066EF4()
{
  if (qword_1000B6540 != -1)
  {
    swift_once();
  }

  v1 = qword_1000BC758;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    v4 = sub_100072DF4(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100072DF4((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 0;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v1 BOOLForKey:v7];

  if (v8)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100072DF4(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      v4 = sub_100072DF4((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v11;
    v4[v10 + 32] = 1;
  }

  else
  {
    v11 = *(v4 + 2);
    if (!v11)
    {
      v30 = *(v0 + 24);

      *(v30 + 32) = 0;
      *v30 = 0u;
      *(v30 + 16) = 0u;
      goto LABEL_25;
    }
  }

  v12 = *(v0 + 32);
  swift_getObjectType();
  v13 = v4 + 32;
  v14 = 32;
  sub_1000674C0();
  do
  {
    v15 = *(v0 + 32);
    *(v0 + 16) = v4[v14];
    sub_10000D958(1);
    ++v14;
    --v11;
  }

  while (v11);
  v16 = *(v0 + 32);
  *(v0 + 16) = 0;
  v17 = [v16 persistWithError:v0 + 16];
  v18 = *(v0 + 16);
  if ((v17 & 1) == 0)
  {
    v24 = v18;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v25 = *(v0 + 8);
    goto LABEL_26;
  }

  v19 = *(v4 + 2);
  v20 = v18;

  for (; v19; --v19)
  {
    v22 = *v13;
    v23.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v21 = String._bridgeToObjectiveC()();
    [v1 setValue:v23.super.super.isa forKey:v21];

    ++v13;
  }

  v26 = *(v0 + 40);
  v27 = *(v0 + 24);

  v28 = swift_allocObject();
  v29 = *(v26 + 24);
  v27[3] = &type metadata for AEAMultitaskingModeDeactivation;
  v27[4] = &off_1000AB2C0;
  *v27 = v28;
  *(v28 + 16) = 0xD00000000000002ELL;
  *(v28 + 24) = 0x800000010008A490;
  *(v28 + 32) = 5;
  *(v28 + 40) = v4;
  *(v28 + 48) = v29;
  swift_unknownObjectRetain();
LABEL_25:
  v25 = *(v0 + 8);
LABEL_26:

  return v25();
}

uint64_t sub_100067310(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1000673CC;

  return sub_100066E60(a1, a2);
}

uint64_t sub_1000673CC()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1000674C0()
{
  result = qword_1000BB458;
  if (!qword_1000BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB458);
  }

  return result;
}

uint64_t sub_100067514()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

__n128 sub_10006755C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100067570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000675B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100067628()
{
  result = qword_1000BB460;
  if (!qword_1000BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB460);
  }

  return result;
}

uint64_t sub_10006769C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      if (*v3)
      {
        if (qword_1000B6540 != -1)
        {
          swift_once();
        }
      }

      else if (qword_1000B6540 != -1)
      {
        swift_once();
      }

      v4 = qword_1000BC758;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v6 = String._bridgeToObjectiveC()();
      [v4 setValue:isa forKey:v6];

      ++v3;
      --v2;
    }

    while (v2);
  }

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100067820(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v9 = [v8 ae_verboseDescription];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_1000679A0()
{
  if (qword_1000B6480 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC5F0;

  return v0;
}

uint64_t sub_100067A08()
{
  if (*(v0 + 64) == 1)
  {
    *(v0 + 64) = 0;
    if (*(v0 + 72))
    {
      v1 = *(v0 + 72);

      AnyCancellable.cancel()();

      v2 = *(v0 + 72);
    }

    *(v0 + 72) = 0;

    sub_10006842C();
  }

  sub_100003FB4((v0 + 16));
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_100067AC4()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    *(v0 + 64) = 1;
    v4 = *(v0 + 56);
    swift_allocObject();
    swift_weakInit();

    sub_100003F6C(&qword_1000B93B8, &qword_100082038);
    sub_100067C9C();
    v1 = v0;
    v2 = Publisher<>.sink(receiveValue:)();

    v3 = *(v1 + 72);
    *(v1 + 72) = v2;
  }
}

unint64_t sub_100067BA8()
{
  result = qword_1000BB570;
  if (!qword_1000BB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB570);
  }

  return result;
}

uint64_t sub_100067BFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067C34(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006865C(v1);
  }

  return result;
}

unint64_t sub_100067C9C()
{
  result = qword_1000B93D0;
  if (!qword_1000B93D0)
  {
    sub_100004B50(&qword_1000B93B8, &qword_100082038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B93D0);
  }

  return result;
}

uint64_t sub_100067D00()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A778;

  return sub_100068520(v2);
}

uint64_t sub_100067D94(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = type metadata accessor for AgentActor();
  v2[15] = swift_initStaticObject();
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v2[16] = v4;
  *v4 = v2;
  v4[1] = sub_100067E88;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x6C6C416573756170, 0xEA00000000002928, sub_10006A640, 0, &type metadata for () + 8);
}

uint64_t sub_100067E88()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100068280;
  }

  else
  {
    v3 = sub_100067F9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100067F9C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_10001CFA8();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100068018, v4, v3);
}

uint64_t sub_100068018()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_10000859C(v1 + 24, (v0 + 2));
  v3 = *(v1 + 64);
  v4 = v0[5];
  v5 = sub_10001A19C((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  v9 = *v8;
  v10 = type metadata accessor for AEAConcreteMediaPrimitives();
  v0[10] = v10;
  v0[11] = &off_1000AB7B0;
  v0[7] = v9;
  type metadata accessor for AEARestrictMediaAssertion();
  v11 = swift_allocObject();
  v12 = sub_10001A19C((v0 + 7), v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v10);
  v16 = *v15;
  *(v11 + 40) = v10;
  *(v11 + 48) = &off_1000AB7B0;
  *(v11 + 56) = v3;
  *(v11 + 16) = v16;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;

  sub_100003FB4(v0 + 7);

  sub_100003FB4(v0 + 2);

  sub_100067AC4();
  v2[3] = &type metadata for AEARestrictMediaDeactivation;
  v2[4] = &off_1000AB520;
  v17 = swift_allocObject();
  *v2 = v17;
  v17[2] = 0xD000000000000022;
  v17[3] = 0x800000010008A540;
  v17[4] = 4;
  v17[5] = v11;
  v18 = v0[1];

  return v18();
}

uint64_t sub_100068280()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_10001CFA8();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000682FC, v4, v3);
}

uint64_t sub_1000682FC()
{
  v1 = *(v0 + 136);
  sub_100067BA8();
  swift_allocError();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100068394(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_100067D94(a1);
}

uint64_t sub_10006842C()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Restoring media commands to all processes", v3, 2u);
  }

  sub_10006A884(_swiftEmptyArrayStorage);
}

uint64_t sub_100068520(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_10001CFA8();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000685B8, v3, v2);
}

uint64_t sub_1000685B8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 64) == 1)
  {
    *(v1 + 64) = 0;
    if (*(v1 + 72))
    {
      v2 = *(v1 + 72);

      AnyCancellable.cancel()();

      v3 = *(v1 + 72);
    }

    *(v1 + 72) = 0;

    sub_10006842C();
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_10006865C(uint64_t a1)
{
  if (qword_1000B6420 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136446210;
    sub_10002C1E4();
    v7 = Set.description.getter();
    v9 = sub_100043D60(v7, v8, v30);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Restricting media commands to participants: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (!v13)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_7:
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_100030BD0(*(a1 + 48) + 56 * (v16 | (v15 << 6)), v30);
      v17 = v31;
      v18 = v32;
      sub_100005A3C(v30, v31);
      v19 = (*(v18 + 32))(v17, v18);
      sub_100030C2C(v30);
      if (v19)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v33;
  }

  while (v13);
  while (1)
  {
LABEL_9:
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v20 >= v14)
    {
      break;
    }

    v13 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v13)
    {
      v15 = v20;
      goto LABEL_7;
    }
  }

  sub_10006A884(v10);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30[0] = v25;
    *v24 = 136446210;
    sub_100068A34();
    v26 = Array.description.getter();
    v28 = v27;

    v29 = sub_100043D60(v26, v28, v30);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Successfully restricted media commands to participants with audit tokens: %{public}s", v24, 0xCu);
    sub_100003FB4(v25);
  }

  else
  {
  }
}

unint64_t sub_100068A34()
{
  result = qword_1000B87B8;
  if (!qword_1000B87B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B87B8);
  }

  return result;
}

unint64_t sub_100068A94()
{
  result = qword_1000BB578;
  if (!qword_1000BB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB578);
  }

  return result;
}

uint64_t sub_100068AF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100068B48(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_100068B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C370(v6, qword_1000BC518);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Beginning task for verifying agent read permission before proceeding", v9, 2u);
  }

  v10 = v3[16];
  v11 = v3[17];
  v3[16] = a1;
  v3[17] = a2;

  sub_10000858C(v10);
  sub_10006979C();
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v12 = qword_1000BC5B8;
  v13 = swift_allocObject();
  result = swift_weakInit();
  if (kMobileKeyBagLockStatusNotifyToken)
  {

    String.init(cString:)();
    v15 = String._bridgeToObjectiveC()();

    v30 = sub_100069EC4;
    v31 = v13;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100063354;
    v29 = &unk_1000AB5B8;
    v16 = _Block_copy(&v26);
    v17 = objc_opt_self();
    v18 = [v17 observationWithNotificationName:v15 queue:v12 notificationHandler:v16];

    _Block_release(v16);

    v19 = v3[14];
    v3[14] = v18;
    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_weakInit();

    v21 = String._bridgeToObjectiveC()();
    v30 = sub_100069EA0;
    v31 = v20;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100063354;
    v29 = &unk_1000AB5E0;
    v22 = _Block_copy(&v26);
    v23 = [v17 observationWithNotificationName:v21 queue:v12 notificationHandler:v22];

    _Block_release(v22);

    v24 = v3[15];
    v3[15] = v23;
    swift_unknownObjectRelease();
    v25 = *sub_100005A3C(v3 + 2, v3[5]);
    result = sub_100068F8C();
    if (result)
    {
      return sub_100069AE4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100068F18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *sub_100005A3C((result + 16), *(result + 40));
    if (sub_100068F8C())
    {
      sub_100069AE4();
    }
  }

  return result;
}

uint64_t sub_100068F8C()
{
  v0 = type metadata accessor for CocoaError.Code();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  __chkstk_darwin(v0, v2);
  v44[3] = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = v44 - v13;
  __chkstk_darwin(v12, v15);
  v17 = v44 - v16;
  v18 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = sub_10001DA3C(v17);
  v46 = *(v5 + 8);
  v46(v17, v4);
  if (*(v19 + 2))
  {
    v20 = *(v5 + 16);
    v20(v14, &v19[(*(v5 + 80) + 32) & ~*(v5 + 80)], v4);
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v22 = sub_10000C370(v21, qword_1000BC518);
    v20(v10, v14, v4);

    v44[2] = v22;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v44[1] = v0;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v44[0] = v14;
      v27 = v26;
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 134349314;
      v29 = *(v19 + 2);

      *(v27 + 4) = v29;

      *(v27 + 12) = 2082;
      sub_100069DF0();
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v46(v10, v4);
      v33 = sub_100043D60(v30, v32, &v47);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Found %{public}ld scratchpad(s). Using this scratchpad to check read permission: %{public}s", v27, 0x16u);
      sub_100003FB4(v28);

      v14 = v44[0];
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v46(v10, v4);
    }

    v38 = Data.init(contentsOf:options:)();
    sub_100005A80(v38, v39);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Agent has read permission and needs recovery", v42, 2u);
    }

    v46(v14, v4);
  }

  else
  {

    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000C370(v34, qword_1000BC518);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No policy store or no scratchpads --> recovery not needed", v37, 2u);
    }
  }

  return 1;
}

uint64_t sub_10006979C()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    [v1 cancel];
  }

  v2 = *(v0 + 96);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v3 = qword_1000BC5B8;
  v4 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_100069E80;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100063354;
  v9[3] = &unk_1000AB590;
  v5 = _Block_copy(v9);

  v6 = [v2 scheduledTimerWithDuration:v3 queue:v5 handler:60.0];
  _Block_release(v5);
  v7 = *(v0 + 104);
  *(v0 + 104) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000698E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100069940();
  }

  return result;
}

uint64_t sub_100069940()
{
  v1 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Permission polling timer did fire", v5, 2u);
  }

  v6 = *sub_100005A3C((v1 + 16), *(v1 + 40));
  if (sub_100068F8C())
  {

    return sub_100069AE4();
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Agent still does not have read permission. Restarting timer…", v10, 2u);
    }

    return sub_10006979C();
  }
}

uint64_t sub_100069AE4()
{
  v1 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Agent has read permission. Proceeding…", v5, 2u);
  }

  v6 = v1[13];
  if (v6)
  {
    [v6 cancel];
    v7 = v1[13];
  }

  v1[13] = 0;
  swift_unknownObjectRelease();
  v8 = v1[14];
  if (v8)
  {
    [v8 invalidate];
    v9 = v1[14];
  }

  v1[14] = 0;
  swift_unknownObjectRelease();
  v10 = v1[15];
  if (v10)
  {
    [v10 invalidate];
    v11 = v1[15];
  }

  v1[15] = 0;
  result = swift_unknownObjectRelease();
  v13 = v1[16];
  if (v13)
  {
    v14 = v1[17];
    v1[16] = 0;
    v1[17] = 0;
    v13(0, 0);

    return sub_10000858C(v13);
  }

  return result;
}

uint64_t sub_100069C68()
{
  sub_100003FB4(v0 + 2);
  sub_100003FB4(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[13];
  swift_unknownObjectRelease();
  v3 = v0[14];
  swift_unknownObjectRelease();
  v4 = v0[15];
  swift_unknownObjectRelease();
  v5 = v0[17];
  sub_10000858C(v0[16]);

  return swift_deallocClassInstance();
}

uint64_t sub_100069CF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *v2;

  sub_100068B88(sub_100069DB0, v5);
}

uint64_t sub_100069D78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069DB0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

unint64_t sub_100069DF0()
{
  result = qword_1000B9390;
  if (!qword_1000B9390)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9390);
  }

  return result;
}

uint64_t sub_100069E48()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100069ED0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100069F1C()
{
  sub_100005A3C((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  type metadata accessor for AEAConcretePasteboardPrimitives();
  sub_10000C804();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069FBC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return _swift_task_switch(sub_10006A050, 0, 0);
}

uint64_t sub_10006A050()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_100005A3C((v2 + 24), *(v2 + 48));
  type metadata accessor for AEAConcretePasteboardPrimitives();
  sub_10000C804();
  swift_getObjectType();
  sub_10000D8C0(1);
  v0[2] = 0;
  v3 = [v1 persistWithError:v0 + 2];
  v4 = v0[2];
  if (v3)
  {
    v5 = v0[3];
    v5[3] = &type metadata for AEAPasteboardDeactivation;
    v5[4] = &off_1000AB790;
    v6 = swift_allocObject();
    *v5 = v6;
    sub_10000859C(v2 + 24, (v6 + 5));
    v6[2] = 0xD00000000000002ALL;
    v6[3] = 0x800000010008A670;
    v6[4] = 5;
    v11 = v0[1];
    v7 = v4;
    v8 = v11;
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_10006A238@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for AEAPasteboardDeactivation;
  a1[4] = &off_1000AB790;
  v3 = swift_allocObject();
  *a1 = v3;
  result = sub_10000859C(v1 + 24, (v3 + 5));
  v3[2] = 0xD00000000000002ALL;
  v3[3] = 0x800000010008A670;
  v3[4] = 5;
  return result;
}

uint64_t sub_10006A2C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_100069FBC(a1, a2);
}

uint64_t sub_10006A368()
{
  v1 = *(v0 + 24);

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10006A3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10006A3F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006A458()
{
  sub_100003F6C(&qword_1000B98B0, &unk_100085130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  result = kMRMediaRemoteOptionAssistantSetQueueTrueCompletion;
  if (kMRMediaRemoteOptionAssistantSetQueueTrueCompletion)
  {
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v2;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    v3 = sub_100021EC0(inited);
    swift_setDeallocating();
    result = sub_10006AD10(inited + 32);
    qword_1000BB6F0 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006A50C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10006A5E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAConcreteMediaPrimitives.MediaRemoteAuditToken();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10006A640(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB7D8, &qword_100085128);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = aBlock - v6;
  if (qword_1000B64E0 != -1)
  {
    swift_once();
  }

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v7, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v7, v2);
  aBlock[4] = sub_10006AC8C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006A50C;
  aBlock[3] = &unk_1000AB7F0;
  v11 = _Block_copy(aBlock);

  MRMediaRemoteSendCommandWithReply();
  _Block_release(v11);
}

uint64_t sub_10006A884(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    *&v24[0] = _swiftEmptyArrayStorage;
    v4 = v24;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v5 = objc_opt_self();
    v6 = 0;
    v7 = v2 - 1;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v1 + 8 * v6 + 32))
    {
      v9 = i;
      [v5 underlyingAuditTokenFromAuditToken:i];
      v10 = type metadata accessor for AEAConcreteMediaPrimitives.MediaRemoteAuditToken();
      v11 = objc_allocWithZone(v10);
      v12 = &v11[OBJC_IVAR____TtCC15assessmentagent26AEAConcreteMediaPrimitivesP33_620CDB64FB7B028F5CC03EEF5D4C490C21MediaRemoteAuditToken_realToken];
      v13 = v28;
      *v12 = v27;
      *(v12 + 1) = v13;
      v26.receiver = v11;
      v26.super_class = v10;
      objc_msgSendSuper2(&v26, "init");

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = *(*&v24[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == v6)
      {
        break;
      }

      ++v6;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v3 = *&v24[0];
  }

  if (v3 >> 62)
  {
    sub_100003F6C(&qword_1000BB7D0, &qword_100085120);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_100003F6C(&qword_1000BB7D0, &qword_100085120);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = MRMediaRemoteRestrictCommandClients();

  v4 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    return v4;
  }

  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
LABEL_29:

    return v4;
  }

LABEL_17:
  v25 = v4;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = objc_opt_self();
    v20 = 0;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    while (1)
    {
      [v21 realToken];
      v24[0] = v27;
      v24[1] = v28;
      v22 = [v19 auditTokenWithUnderlyingAuditToken:v24];
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = v25[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v17 - 1 == v20)
      {
        break;
      }

      ++v20;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_19;
      }

LABEL_20:
      v21 = *(v1 + 8 * v20 + 32);
      swift_unknownObjectRetain();
    }

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006ABF8()
{
  v1 = sub_100003F6C(&qword_1000BB7D8, &qword_100085128);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006AC8C()
{
  v1 = *(sub_100003F6C(&qword_1000BB7D8, &qword_100085128) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10006ACF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006AD10(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B8858, &qword_100081570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10006AD78()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v2 = *(v0 + 376);
  }

  else
  {
    v3 = sub_10006ADD4(v0);
    v4 = *(v0 + 376);
    *(v0 + 376) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10006ADD4(uint64_t a1)
{
  v2 = [objc_allocWithZone(AEOSGestalt) init];
  if ([v2 isInternalOS] && !objc_msgSend(*(a1 + 368), "isBeingTested"))
  {
    v4 = *(a1 + 360);
    v5 = *(a1 + 208);
    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v3 = [objc_opt_self() preferencesWithPreferencePrimitives:v4 systemNotificationPrimitives:v5 queue:qword_1000BC5B8];
  }

  else
  {
    v3 = [objc_opt_self() defaultPreferences];
  }

  v6 = v3;

  return v6;
}

uint64_t sub_10006AED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 24));
  sub_100003FB4((v0 + 64));
  sub_100003FB4((v0 + 104));
  v2 = *(v0 + 144);
  swift_unknownObjectRelease();
  v3 = *(v0 + 152);
  swift_unknownObjectRelease();
  v4 = *(v0 + 160);
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 168));
  v5 = *(v0 + 208);
  swift_unknownObjectRelease();
  v6 = *(v0 + 216);
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 224));
  v7 = *(v0 + 264);
  swift_unknownObjectRelease();
  v8 = *(v0 + 272);
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 280));
  sub_100003FB4((v0 + 320));
  v9 = *(v0 + 360);
  swift_unknownObjectRelease();
  v10 = *(v0 + 368);
  swift_unknownObjectRelease();

  sub_100003FB4((v0 + 384));
  sub_100003FB4((v0 + 424));
  sub_100003FB4((v0 + 464));
  v11 = *(v0 + 504);
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 512));
  sub_100003FB4((v0 + 552));
  sub_100003FB4((v0 + 592));
  sub_100003FB4((v0 + 632));
  v12 = *(v0 + 672);
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 688));
  return v0;
}

uint64_t sub_10006AFC8()
{
  sub_10006AED0();

  return swift_deallocClassInstance();
}

void *sub_10006B020()
{
  v0[2] = 0;
  v1 = type metadata accessor for AEAConcreteXPCEventStreamPrimitives();
  v2 = swift_allocObject();
  v0[6] = v1;
  v0[7] = &off_1000ABD88;
  v0[3] = v2;
  v3 = type metadata accessor for AEAConcreteSignalPrimitives();
  v4 = swift_allocObject();
  v0[11] = v3;
  v0[12] = &off_1000A8EA0;
  v0[8] = v4;
  v5 = type metadata accessor for AEAConcreteProcessPrimitives();
  v6 = swift_allocObject();
  v0[16] = v5;
  v0[17] = &off_1000ABDA0;
  v0[13] = v6;
  v0[18] = [objc_allocWithZone(AEAConcreteXPCConnectionPrimitives) init];
  v7 = [objc_allocWithZone(AEPerformancePrimitivesProvider) init];
  v8 = [v7 makePrimitives];

  v0[19] = v8;
  v0[20] = [objc_allocWithZone(AEAConcreteOSTransactionPrimitives) init];
  v9 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v10 = swift_allocObject();
  *(v10 + 16) = [objc_opt_self() defaultManager];
  v0[24] = v9;
  v0[25] = &off_1000A7928;
  v0[21] = v10;
  v0[26] = [objc_allocWithZone(AEConcreteSystemNotificationPrimitives) init];
  v11 = [objc_allocWithZone(AEFeatureFlagsProvider) init];
  v12 = [v11 makeFeatureFlags];

  v0[27] = v12;
  v13 = type metadata accessor for AEAConcretePasteboardPrimitives();
  v14 = swift_allocObject();
  v0[31] = v13;
  v0[32] = &off_1000A6B90;
  v0[28] = v14;
  v0[33] = [objc_allocWithZone(AEAConcreteAirPlayPrimitives) init];
  v0[34] = [objc_allocWithZone(AEAConcreteNetworkPrimitives) init];
  v15 = type metadata accessor for AEAConcreteMediaPrimitives();
  v16 = swift_allocObject();
  v0[38] = v15;
  v0[39] = &off_1000AB7B0;
  v0[35] = v16;
  v17 = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  v18 = swift_allocObject();
  v0[43] = v17;
  v0[44] = &off_1000AC480;
  v0[40] = v18;
  v0[45] = [objc_allocWithZone(AEConcretePreferencePrimitives) initWithDomain:AEAssessmentPreferenceDomain];
  v19 = [objc_allocWithZone(AEProcessInfoPrimitivesProvider) init];
  v20 = [v19 makePrimitives];

  v0[46] = v20;
  v0[47] = 0;
  v21 = type metadata accessor for AEAConcreteSecurityTaskPrimitives();
  v22 = swift_allocObject();
  v0[51] = v21;
  v0[52] = &off_1000AA318;
  v0[48] = v22;
  v23 = type metadata accessor for AEAConcreteRunningBoardPrimitives();
  v24 = swift_allocObject();
  v0[56] = v23;
  v0[57] = &off_1000A86F8;
  v0[53] = v24;
  v25 = type metadata accessor for AEAConcreteManagedConfigurationPrimitives();
  v26 = swift_allocObject();
  v0[61] = v25;
  v0[62] = &off_1000AC080;
  v0[58] = v26;
  v0[63] = [objc_allocWithZone(AEAConcreteTimerPrimitives) init];
  v27 = type metadata accessor for AEAConcreteExternalSubsystemRestrictionPrimitives();
  v28 = swift_allocObject();
  v0[67] = v27;
  v0[68] = &off_1000A8178;
  v0[64] = v28;
  v29 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
  v30 = swift_allocObject();
  v0[72] = v29;
  v0[73] = &off_1000A8060;
  v0[69] = v30;
  v31 = type metadata accessor for AEAConcreteMobileKeyBagPrimitives();
  v32 = swift_allocObject();
  v0[77] = v31;
  v0[78] = &off_1000A6410;
  v0[74] = v32;
  v33 = type metadata accessor for AEAConcreteFrontBoardPrimitives();
  v34 = swift_allocObject();
  v0[82] = v33;
  v0[83] = &off_1000A8C48;
  v0[79] = v34;
  type metadata accessor for AEAConcreteUserDefaultsPrimitives();
  v0[84] = swift_allocObject();
  v0[85] = &off_1000AC090;
  v35 = type metadata accessor for AEAConcreteUserNotificationPrimitives();
  v36 = swift_allocObject();
  v0[89] = v35;
  v0[90] = &off_1000A7160;
  v0[86] = v36;
  return v0;
}

char *sub_10006B480(uint64_t *a1)
{
  sub_10000C6FC(a1, v16);
  if (swift_dynamicCast())
  {
    sub_100003FB4(a1);
    return v15;
  }

  else
  {
    sub_10000C6FC(a1, v16);
    if (swift_dynamicCast() & 1) != 0 || (sub_10000C6FC(a1, v16), (swift_dynamicCast()))
    {
      sub_100003FB4(a1);
      return v15;
    }

    else
    {
      sub_10000C6FC(a1, v16);
      sub_100003F6C(qword_1000B7628, &unk_10007FB20);
      if (swift_dynamicCast())
      {
        v3 = *(v15 + 16);
        if (v3)
        {
          v4 = v15 + 32;
          v2 = _swiftEmptyArrayStorage;
          do
          {
            sub_10000C6FC(v4, v16);
            sub_10000C6FC(v16, &v15);
            v6 = sub_10006B480(&v15);
            v8 = v7;
            v10 = v9;
            v11 = ~v9;
            sub_100003FB4(v16);
            if (v11)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = sub_100072EE8(0, *(v2 + 2) + 1, 1, v2);
              }

              v13 = *(v2 + 2);
              v12 = *(v2 + 3);
              if (v13 >= v12 >> 1)
              {
                v2 = sub_100072EE8((v12 > 1), v13 + 1, 1, v2);
              }

              *(v2 + 2) = v13 + 1;
              v5 = &v2[24 * v13];
              *(v5 + 4) = v6;
              *(v5 + 5) = v8;
              v5[48] = v10;
            }

            v4 += 32;
            --v3;
          }

          while (v3);
        }

        else
        {

          v2 = _swiftEmptyArrayStorage;
        }

        sub_100003FB4(a1);
      }

      else
      {
        sub_100003FB4(a1);
        return 0;
      }
    }
  }

  return v2;
}

Swift::Int sub_10006B6F0(Swift::UInt a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      sub_10006EDEC(v6, a1);
    }
  }

  else if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1 & 1);
  }

  return Hasher._finalize()();
}

void sub_10006B7E0(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      v4 = *(v1 + 8);
      Hasher._combine(_:)(2uLL);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);

      sub_10006EDEC(a1, v3);
    }
  }

  else if (*(v1 + 16))
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v3 & 1);
  }
}

Swift::Int sub_10006B8C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      sub_10006EDEC(v5, v1);
    }
  }

  else if (v3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10006B988()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10006EBE4(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006B9D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10006EBE4(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_10006BA28(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v33 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    sub_100006174(v17, v18, v19);
    v20 = sub_100020DA8(v14, v15);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
LABEL_35:
      sub_100006198(v17, v18, v19);
      return 0;
    }

    v23 = *(a2 + 56) + 24 * v20;
    v24 = *v23;
    if (*(v23 + 16) > 1u)
    {
      v26 = *(v23 + 8);
      if (*(v23 + 16) == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_35;
        }

        v27 = v24 == v17 && v26 == v18;
        if (v27)
        {
          sub_100006198(v17, v18, 2);
          result = v33;
          v7 = v34;
        }

        else
        {
          v28 = *(v23 + 8);
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100006198(v17, v18, 2);
          result = v33;
          v7 = v34;
          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_35;
        }

        v30 = *v23;

        v32 = sub_100006014(v31, v17);
        sub_100006198(v17, v18, 3);
        sub_100006198(v30, v26, 3);
        result = v33;
        v7 = v34;
        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (*(v23 + 16))
    {
      if (v19 != 1)
      {
        goto LABEL_35;
      }

      v27 = v24 == v17;
      result = v33;
      v7 = v34;
      if (!v27)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_35;
      }

      v25 = v24 ^ v17;
      result = v33;
      v7 = v34;
      if (v25)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006BC88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003F6C(&qword_1000B8850, &qword_100081568);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100010B20(v25, v37);
      }

      else
      {
        sub_10000C6FC(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100010B20(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10006BF40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100010B20((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100022828(v24, &v37);
        sub_10000C6FC(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100010B20(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10006C1F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10006C4AC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_100003F6C(&qword_1000BA550, &unk_100083520);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v12 + 16))
  {
    v47 = v11;
    v48 = v6;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    v43 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v46 = *(v7 + 72);
      v29 = v28 + v46 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v48);
        v49 = *(*(v12 + 56) + 16 * v27);
      }

      else
      {
        (*v41)(v47, v29, v48);
        v49 = *(*(v12 + 56) + 16 * v27);
      }

      v30 = *(v15 + 40);
      sub_10005E54C();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v7 = v42;
        v12 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v7 = v42;
      v12 = v43;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v46 * v23, v47, v48);
      *(*(v15 + 56) + 16 * v23) = v49;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_10006C85C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003F6C(&qword_1000B8880, &unk_100081580);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_100006174(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10006CB3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003F6C(&qword_1000B8890, &qword_100081590);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = *(v5 + 56) + 56 * v25;
      v41 = *(*(v5 + 48) + 16 * v25);
      v27 = *(*(v5 + 48) + 16 * v25 + 8);
      if (a2)
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        v45 = *(v26 + 48);
        v43 = v29;
        v44 = v30;
        v42 = v28;
      }

      else
      {
        sub_100030BD0(v26, &v42);
        sub_10001C9CC(v41, v27);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v17 = v41;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = *(v8 + 56) + 56 * v16;
      v19 = v42;
      v20 = v43;
      v21 = v44;
      *(v18 + 48) = v45;
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10006CE1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      v24 = *(v23 + 8);
      v43 = *v23;
      v25 = *(v23 + 24);
      v41 = *(v23 + 16);
      v42 = *(v23 + 32);
      v26 = *(v5 + 56) + 16 * v22;
      v39 = *(v26 + 1);
      v40 = *v26;
      v27 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v25)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v42);
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      *v17 = v43;
      *(v17 + 8) = v24;
      *(v17 + 16) = v41;
      *(v17 + 24) = v25;
      *(v17 + 32) = v42;
      v18 = *(v8 + 56) + 16 * v16;
      *v18 = v40;
      *(v18 + 1) = v39;
      *(v18 + 8) = v27;
      ++*(v8 + 16);
      v5 = v37;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_38;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_10006D164(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100003F6C(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10006D404(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100003F6C(&qword_1000BB9A0, &unk_100085540);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v49 = v6;
    v41 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v11;
    v44 = v7;
    v47 = (v7 + 32);
    v21 = result + 64;
    v22 = v46;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v48 = *(v44 + 72);
      v29 = v28 + v48 * v27;
      if (v45)
      {
        (*v47)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      else
      {
        (*v42)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      v31 = *(v14 + 40);
      sub_10005E54C();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v22 = v46;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v22 = v46;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v47)(*(v14 + 48) + v48 * v23, v22, v49);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v11 = v43;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void *sub_10006D7B0()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8850, &qword_100081568);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000C6FC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010B20(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10006D954()
{
  v1 = v0;
  sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100022828(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000C6FC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100010B20(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10006DAF8()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10006DC74()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30, v3);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F6C(&qword_1000BA550, &unk_100083520);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28[0] = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v28[1] = v32 + 32;
    v28[2] = v32 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v32;
        v22 = *(v32 + 72) * v20;
        v23 = v29;
        v24 = v30;
        (*(v32 + 16))(v29, *(v5 + 48) + v22, v30);
        v20 *= 16;
        v25 = v31;
        v26 = *(v31 + 48);
        v27 = *(v21 + 32);
        v34 = *(*(v5 + 56) + v20);
        v27(v26 + v22, v23, v24);
        *(*(v25 + 56) + v20) = v34;

        v15 = v33;
      }

      while (v33);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28[0];
        v7 = v31;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v33 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10006DF04()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8880, &unk_100081580);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_100006174(v23, v24, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10006E09C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8890, &qword_100081590);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 56 * v17;
        sub_100030BD0(*(v2 + 56) + 56 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
        result = sub_10001C9CC(v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10006E25C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        LOBYTE(v19) = *(v19 + 32);
        v17 *= 16;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 1);
        v27 = *(v24 + 8);
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v22;
        *(v28 + 32) = v19;
        v29 = *(v4 + 56) + v17;
        *v29 = v25;
        *(v29 + 1) = v26;
        *(v29 + 8) = v27;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10006E420(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003F6C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_10006E580()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F6C(&qword_1000BB9A0, &unk_100085540);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10006E800(uint64_t a1, char a2, void *a3)
{
  v46 = *(a1 + 16);
  if (!v46)
  {
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  sub_100006174(v7, v6, v8);
  v11 = sub_100020DA8(v4, v5);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10006DF04();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100006198(v7, v6, v8);
    }

    goto LABEL_28;
  }

  sub_10006C85C(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_100020DA8(v4, v5);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_27:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    v44._object = 0x8000000100089E20;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v21 = (v20[6] + 16 * v11);
  *v21 = v4;
  v21[1] = v5;
  v22 = v20[7] + 24 * v11;
  *v22 = v7;
  *(v22 + 8) = v6;
  *(v22 + 16) = v8;
  v23 = v20[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20[2] = v25;
  if (v46 != 1)
  {
    v26 = (a1 + 104);
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      v29 = *(v26 - 4);
      v28 = *(v26 - 3);
      v7 = *(v26 - 2);
      v6 = *(v26 - 1);
      v8 = *v26;
      v30 = *a3;

      sub_100006174(v7, v6, v8);
      v31 = sub_100020DA8(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v24 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v24)
      {
        goto LABEL_24;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_10006C85C(v35, 1);
        v37 = *a3;
        v31 = sub_100020DA8(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      v41 = v39[7] + 24 * v31;
      *v41 = v7;
      *(v41 + 8) = v6;
      *(v41 + 16) = v8;
      v42 = v39[2];
      v24 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v24)
      {
        goto LABEL_25;
      }

      ++v27;
      v39[2] = v43;
      v26 += 40;
      if (v46 == v27)
      {
      }
    }

    goto LABEL_26;
  }
}

void sub_10006EBE4(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
    v22 = v8;
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(a2 + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v19;
    v24 = *(a1 + 64);
    v20 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v20;

    sub_100006174(v16, v17, v18);
    String.hash(into:)();

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        Hasher._combine(_:)(2uLL);
        String.hash(into:)();
        sub_100006198(v16, v17, 2);
      }

      else
      {
        Hasher._combine(_:)(3uLL);
        sub_10006EDEC(v23, v16);
        sub_100006198(v16, v17, 3);
      }
    }

    else if (v18)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v16);
    }

    else
    {
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(v16 & 1);
    }

    v6 &= v6 - 1;
    v8 = Hasher._finalize()() ^ v22;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v22 = v8;
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10006EDEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 2);
      if (*v5 > 1u)
      {
        v7 = *(v5 - 1);
        if (*v5 == 2)
        {
          Hasher._combine(_:)(2uLL);

          String.hash(into:)();
          sub_100006198(v6, v7, 2);
        }

        else
        {
          Hasher._combine(_:)(3uLL);

          sub_10006EDEC(a1, v6);
          sub_100006198(v6, v7, 3);
        }
      }

      else if (*v5)
      {
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v6);
      }

      else
      {
        Hasher._combine(_:)(0);
        Hasher._combine(_:)(v6 & 1);
      }

      v5 += 24;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_10006EEEC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        else
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    else if (a6 == 3)
    {
      return sub_100006014(a1, a4);
    }

    return 0;
  }

  v6 = a4 ^ a1 ^ 1;
  if (a6)
  {
    v6 = 0;
  }

  v8 = a6 == 1 && a1 == a4;
  if (a3)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10006EF84(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = result + 64;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v8;
      if (!v6)
      {
        break;
      }

LABEL_9:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      sub_100022828(*(v2 + 48) + 40 * v10, v36);
      sub_10000C6FC(*(v2 + 56) + 32 * v10, v37);
      sub_100022828(v36, v35);
      if (!swift_dynamicCast())
      {
        sub_10006F2B8();
        swift_allocError();
        v26 = v25;
        *(v25 + 24) = &type metadata for AnyHashable;
        v27 = swift_allocObject();
        *v26 = v27;
        sub_100022828(v36, v27 + 16);
        *(v26 + 32) = 0;
        swift_willThrow();

        sub_10006F344(v36);
      }

      v6 &= v6 - 1;
      sub_10000C6FC(v37, v35);
      v11 = sub_10006B480(v35);
      if (v13 == -1)
      {

        sub_10006F344(v36);
      }

      else
      {
        v30 = v13;
        v31 = v12;
        v32 = v11;
        sub_10006F344(v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_100072804(0, v38[2] + 1, 1, v38);
        }

        v15 = v38[2];
        v14 = v38[3];
        v16 = v15 + 1;
        v17 = v31;
        v18 = v32;
        v19 = v30;
        if (v15 >= v14 >> 1)
        {
          v29 = v15 + 1;
          v28 = v38[2];
          v22 = sub_100072804((v14 > 1), v15 + 1, 1, v38);
          v15 = v28;
          v16 = v29;
          v19 = v30;
          v17 = v31;
          v38 = v22;
          v18 = v32;
        }

        v20 = v38;
        v38[2] = v16;
        v21 = &v20[5 * v15];
        v21[4] = v33;
        v21[5] = v34;
        v21[6] = v18;
        v21[7] = v17;
        *(v21 + 64) = v19;
      }
    }

    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v8 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v8);
      ++v9;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    v23 = v38;
    if (v38[2])
    {
      sub_100003F6C(&qword_1000B8880, &unk_100081580);
      v24 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v24 = _swiftEmptyDictionarySingleton;
    }

    v36[0] = v24;
    sub_10006E800(v23, 1, v36);
    if (!v1)
    {
      return v36[0];
    }

LABEL_25:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_10006F2B8()
{
  result = qword_1000BB970;
  if (!qword_1000BB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB970);
  }

  return result;
}

uint64_t sub_10006F30C()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006F344(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB978, &qword_1000852D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006F3B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006F3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006F440(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_10006F490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006F4D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10006F538()
{
  result = qword_1000BB990;
  if (!qword_1000BB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB990);
  }

  return result;
}

unint64_t sub_10006F590()
{
  result = qword_1000BB998;
  if (!qword_1000BB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB998);
  }

  return result;
}

uint64_t sub_10006F5E4()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      AnyCancellable.cancel()();

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  *v1 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10006F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100019D8C(a3, v28 - v12, &qword_1000BA380, &qword_100080750);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100019B28(v13, &qword_1000BA380, &qword_100080750);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_100019B28(a3, &qword_1000BA380, &qword_100080750);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100019B28(a3, &qword_1000BA380, &qword_100080750);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10006F9D0(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t))
{
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  a2(a1, sub_1000732A0, v6);
}

uint64_t sub_10006FA68(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10006FAA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000725B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10006FBA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000726D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10006FC94(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100072970(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_1000735CC(&v52, &v4[56 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = *(v4 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v4 + 2) = v17;
  }

  if (result != v13)
  {
    result = sub_100019F14();
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v3 = *(v4 + 2);
  v14 = v53;
  v38 = v53;
  v39 = v52;
  v2 = v54;
  v17 = v55;
  v18 = v56;
  if (v56)
  {
    v19 = v55;
LABEL_27:
    v23 = (v18 - 1) & v18;
    sub_100030BD0(*(v39 + 48) + 56 * (__clz(__rbit64(v18)) | (v19 << 6)), &v48);
    v22 = v19;
    while (1)
    {
      sub_100019D8C(&v48, &v44, &qword_1000BBFF0, &qword_100081B30);
      if (!*(&v45 + 1))
      {
        break;
      }

      v24 = (v2 + 64) >> 6;
      v25 = &qword_1000BBFF0;
      while (1)
      {
        sub_100019B28(&v44, v25, &qword_100081B30);
        v26 = *(v4 + 3);
        v27 = v26 >> 1;
        if ((v26 >> 1) < v3 + 1)
        {
          v4 = sub_100072970((v26 > 1), v3 + 1, 1, v4);
          v27 = *(v4 + 3) >> 1;
        }

        sub_100019D8C(&v48, &v40, v25, &qword_100081B30);
        if (*(&v41 + 1))
        {
          break;
        }

        v2 = v22;
LABEL_52:
        sub_100019B28(&v40, v25, &qword_100081B30);
        v29 = v3;
        v22 = v2;
LABEL_31:
        *(v4 + 2) = v29;
        sub_100019D8C(&v48, &v44, v25, &qword_100081B30);
        if (!*(&v45 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v3 <= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v3;
      }

      while (1)
      {
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        v29 = v28;
        if (v3 == v28)
        {
          sub_100030C2C(&v44);
          v3 = v29;
          goto LABEL_31;
        }

        v30 = v25;
        sub_100019B28(&v48, v25, &qword_100081B30);
        v31 = &v4[56 * v3 + 32];
        v33 = v45;
        v32 = v46;
        v34 = v44;
        *(v31 + 48) = v47;
        *(v31 + 16) = v33;
        *(v31 + 32) = v32;
        *v31 = v34;
        if (!v23)
        {
          break;
        }

        v35 = v22;
LABEL_50:
        v37 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        sub_100030BD0(*(v39 + 48) + 56 * (v37 | (v35 << 6)), &v48);
        v2 = v35;
LABEL_39:
        ++v3;
        v25 = v30;
        sub_100019D8C(&v48, &v40, v30, &qword_100081B30);
        v22 = v2;
        v28 = v29;
        if (!*(&v41 + 1))
        {
          goto LABEL_52;
        }
      }

      if (v24 <= (v22 + 1))
      {
        v36 = v22 + 1;
      }

      else
      {
        v36 = v24;
      }

      v2 = v36 - 1;
      while (1)
      {
        v35 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v35 >= v24)
        {
          v23 = 0;
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
          goto LABEL_39;
        }

        v23 = *(v38 + 8 * v35);
        ++v22;
        if (v23)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v23 = 0;
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
    }

LABEL_53:
    sub_100019B28(&v48, &qword_1000BBFF0, &qword_100081B30);
    sub_100019F14();
    result = sub_100019B28(&v44, &qword_1000BBFF0, &qword_100081B30);
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v2 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v2 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_55;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000700BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100072C18(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_1000BBBB8, &qword_100085678, &type metadata accessor for UUID);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for UUID();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007020C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100073004(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000702F8()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_100003F6C(&qword_1000BBB88, &unk_100085620);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v34 - v11;
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  v13 = (v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v14 = *(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v15 = *(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler + 8);
  *v13 = 0;
  v13[1] = 0;
  sub_10000858C(v14);
  v16 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_currentProfile;
  swift_beginAccess();
  sub_100019D8C(v0 + v16, v12, &qword_1000BBB88, &unk_100085620);
  v17 = type metadata accessor for AEAConfigurationProfile(0);
  v37 = *(v17 - 8);
  v18 = (*(v37 + 48))(v12, 1, v17);
  result = sub_100019B28(v12, &qword_1000BBB88, &unk_100085620);
  if (v18 != 1)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v35 = v9;
    v20 = type metadata accessor for Logger();
    sub_10000C370(v20, qword_1000BC518);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v1;
      v25 = v24;
      v36[0] = v24;
      *v23 = 136446210;
      type metadata accessor for UUID();
      sub_100073584(&qword_1000BBB90, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = sub_100043D60(v26, v27, v36);

      *(v23 + 4) = v28;
      v29 = v22;
      p_cache = (_TtC15assessmentagent33AEAConcreteSecurityTaskPrimitives + 16);
      _os_log_impl(&_mh_execute_header, v21, v29, "Uninstalling profile with ID: %{public}s", v23, 0xCu);
      sub_100003FB4(v25);
      v2 = v34;
    }

    else
    {

      p_cache = _TtC15assessmentagent33AEAConcreteSecurityTaskPrimitives.cache;
    }

    v31 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 24);
    v32 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 32);
    sub_100005A3C((v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles), v31);
    result = (*(v32 + 24))(p_cache[309] + v3, v31, v32);
    if (!v2)
    {
      v33 = v35;
      (*(v37 + 56))(v35, 1, 1, v17);
      swift_beginAccess();
      sub_1000731B8(v33, v3 + v16);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1000706C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v5 = *(v2 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;

  sub_10000858C(v5);
  v7 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony + 24);
  v8 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony + 32);
  sub_100005A3C((v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony), v7);
  (*(v8 + 16))(v7, v8);
  v9 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_subscriptions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(v3 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100073260;
  *(v11 + 24) = v10;
  sub_100003F6C(&qword_1000B80E0, &qword_100080A60);
  sub_100004EE0(&qword_1000B80E8, &qword_1000B80E0, &qword_100080A60);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100070948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = v19 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    sub_100019F70(a1, v19);
    type metadata accessor for AgentActor();
    inited = swift_initStaticObject();
    v15 = sub_100073584(&qword_1000B80C8, type metadata accessor for AgentActor);
    v16 = swift_allocObject();
    v17 = v19[3];
    *(v16 + 72) = v19[2];
    *(v16 + 88) = v17;
    *(v16 + 104) = *v20;
    v18 = v19[1];
    *(v16 + 40) = v19[0];
    *(v16 + 16) = inited;
    *(v16 + 24) = v15;
    *(v16 + 32) = v12;
    *(v16 + 119) = *&v20[15];
    *(v16 + 56) = v18;
    *(v16 + 128) = a2;
    *(v16 + 136) = a3;

    sub_10006F6D0(0, 0, v10, &unk_100085638, v16);
  }

  return result;
}

uint64_t sub_100070B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for AgentActor();
  swift_initStaticObject();

  return _swift_task_switch(sub_100070BA0, a4, 0);
}

uint64_t sub_100070BA0()
{
  v1 = *(v0 + 16);
  sub_100070C04(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100070C04(_BYTE *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v98 = a3;
  v99 = a2;
  v6 = sub_100003F6C(&qword_1000BBB88, &unk_100085620);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v93 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v88 - v13;
  __chkstk_darwin(v12, v15);
  v17 = &v88 - v16;
  v18 = type metadata accessor for AEAConfigurationProfile(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v91 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v92 = &v88 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v90 = &v88 - v29;
  __chkstk_darwin(v28, v30);
  v32 = &v88 - v31;
  sub_10007153C(a1, &v88 - v31);
  v34 = *(v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 24);
  v33 = *(v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles + 32);
  v97 = (v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles);
  sub_100005A3C((v4 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles), v34);
  v100 = v32;
  v35 = v32;
  v36 = v4;
  sub_1000730F8(v35, v17);
  v95 = *(v19 + 56);
  v96 = v19 + 56;
  v95(v17, 0, 1, v18);
  v37 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_currentProfile;
  swift_beginAccess();
  v101 = v36;
  sub_100019D8C(v36 + v37, v14, &qword_1000BBB88, &unk_100085620);
  LOBYTE(v33) = (*(v33 + 8))(v17, v14, v34, v33);
  sub_100019B28(v14, &qword_1000BBB88, &unk_100085620);
  v94 = v17;
  sub_100019B28(v17, &qword_1000BBB88, &unk_100085620);
  if (v33)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C370(v38, qword_1000BC518);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v100;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Skipping configuration profile installation/update", v43, 2u);
    }

    goto LABEL_23;
  }

  v89 = v37;
  v44 = v93;
  sub_100019D8C(v101 + v37, v93, &qword_1000BBB88, &unk_100085620);
  v45 = (*(v19 + 48))(v44, 1, v18);
  sub_100019B28(v44, &qword_1000BBB88, &unk_100085620);
  v46 = v18;
  if (v45 == 1)
  {
    v42 = v100;
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000C370(v47, qword_1000BC518);
    v48 = v90;
    sub_1000730F8(v42, v90);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v102[0] = v52;
      *v51 = 136446210;
      sub_1000730F8(v48, v92);
      v53 = String.init<A>(describing:)();
      v54 = v48;
      v55 = v46;
      v56 = v53;
      v58 = v57;
      sub_10007315C(v54);
      v59 = sub_100043D60(v56, v58, v102);

      *(v51 + 4) = v59;
      v46 = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "Installing configuration profile with descriptor: %{public}s", v51, 0xCu);
      sub_100003FB4(v52);

      goto LABEL_19;
    }

    v74 = v48;
  }

  else
  {
    v42 = v100;
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000C370(v60, qword_1000BC518);
    v61 = v91;
    sub_1000730F8(v42, v91);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v102[0] = v65;
      *v64 = 136446210;
      v66 = v42;
      v67 = v61;
      sub_1000730F8(v61, v92);
      v68 = String.init<A>(describing:)();
      v93 = v46;
      v69 = v68;
      v71 = v70;
      v72 = v67;
      v42 = v66;
      sub_10007315C(v72);
      v73 = sub_100043D60(v69, v71, v102);

      *(v64 + 4) = v73;
      v46 = v93;
      _os_log_impl(&_mh_execute_header, v62, v63, "Updating configuration profile with descriptor: %{public}s", v64, 0xCu);
      sub_100003FB4(v65);

      goto LABEL_19;
    }

    v74 = v61;
  }

  sub_10007315C(v74);
LABEL_19:
  v75 = v89;
  v76 = v94;
  sub_1000730F8(v42, v94);
  v95(v76, 0, 1, v46);
  v77 = v101;
  swift_beginAccess();
  sub_1000731B8(v76, v77 + v75);
  v78 = swift_endAccess();
  v79 = (v77 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  v80 = *(v77 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler);
  if (v80)
  {
    v81 = v79[1];
    *v79 = 0;
    v79[1] = 0;
    v80(v78);
    sub_10000858C(v80);
  }

  v82 = v97[3];
  v83 = v97[4];
  sub_100005A3C(v97, v82);
  result = (*(v83 + 16))(v42, v82, v83);
  v85 = *(v101 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_version);
  v86 = __OFADD__(v85, 1);
  v87 = v85 + 1;
  if (!v86)
  {
    *(v101 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_version) = v87;
LABEL_23:
    v99(0, 0);
    return sub_10007315C(v42);
  }

  __break(1u);
  return result;
}

void sub_10007153C(_BYTE *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v9 = __chkstk_darwin(v5, v8);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v60 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v60 - v17;
  __chkstk_darwin(v16, v19);
  v20 = v6[2];
  v67 = &v60 - v21;
  v20();
  v66 = *(v2 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_version);
  sub_100003F6C(&qword_1000BBB60, &qword_1000855F8);
  v22 = type metadata accessor for AEAConfigurationProfile.Payload(0);
  v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
  v71 = *(*(v22 - 8) + 72);
  v24 = swift_allocObject();
  v70 = xmmword_100085550;
  *(v24 + 16) = xmmword_100085550;
  v64 = v24;
  v25 = v24 + v23;
  UUID.init()();
  sub_100003F6C(&qword_1000BBB68, &qword_100085600);
  v26 = swift_allocObject();
  *(v26 + 16) = v70;
  *(v26 + 32) = a1[71];
  *(v26 + 33) = a1[72] | 0x40;
  *(v26 + 34) = a1[73] | 0x80;
  *(v26 + 35) = -64;
  v27 = v6[4];
  v65 = v18;
  v28 = v5;
  v69 = v27;
  *&v70 = v6 + 4;
  v27(v25, v18, v5);
  v29 = v14;
  v30 = v25;
  v31 = v22;
  *(v30 + *(v22 + 20)) = 1;
  v32 = v30 + *(v22 + 24);
  *v32 = v26;
  *(v32 + 8) = 0;
  UUID.init()();
  sub_100003F6C(&qword_1000BBB70, &qword_100085608);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100081CF0;
  v34 = *(v3 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_preferences);
  v35 = [v34 disableContinuity];
  v36 = [v35 value];

  if (!v36)
  {
    __break(1u);
    goto LABEL_6;
  }

  v37 = [v36 BOOLValue];

  *(v33 + 32) = v37 ^ 1;
  v63 = v34;
  v38 = [v34 disableDictation];
  v39 = [v38 value];

  if (!v39)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = v30 + v71;
  v41 = [v39 BOOLValue];

  *(v33 + 33) = v41 ^ 1 | 0x10;
  *(v33 + 34) = 12320;
  *(v33 + 36) = a1[66] | 0x40;
  *(v33 + 37) = a1[68] | 0x50;
  *(v33 + 38) = a1[64] | 0x60;
  *(v33 + 39) = a1[67] | 0x70;
  *(v33 + 40) = 0x80;
  v61 = v28;
  v62 = a1;
  v42 = v69;
  v69(v40, v29, v28);
  *(v40 + *(v31 + 20)) = 1;
  v43 = v40 + *(v31 + 24);
  *v43 = v33;
  *(v43 + 8) = 1;
  v44 = v31;
  v45 = v30;
  UUID.init()();
  sub_100003F6C(&qword_1000BBB78, &qword_100085610);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1000807D0;
  v47 = [v63 disableQuickNote];
  v48 = [v47 value];

  if (v48)
  {
    v49 = v71;
    v50 = v45 + 2 * v71;
    v51 = [v48 BOOLValue];

    *(v46 + 32) = v51 ^ 1;
    v52 = v61;
    v42(v45 + 2 * v49, v72, v61);
    *(v50 + *(v44 + 20)) = 1;
    v53 = v50 + *(v44 + 24);
    *v53 = v46;
    *(v53 + 8) = 2;
    v54 = v45 + 3 * v49;
    v55 = v65;
    UUID.init()();
    v56 = sub_100071AF4();
    v42(v54, v55, v52);
    *(v54 + *(v44 + 20)) = 1;
    v57 = v54 + *(v44 + 24);
    *v57 = v56;
    *(v57 + 8) = 3;
    v58 = v68;
    v42(v68, v67, v52);
    v59 = type metadata accessor for AEAConfigurationProfile(0);
    *(v58 + *(v59 + 20)) = v66;
    *(v58 + *(v59 + 24)) = v64;
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_100071AF4()
{
  v1 = sub_1000544CC();
  if (v2)
  {
    v3 = sub_100071F24(v1 & 0x101, v2);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100003F6C(&qword_1000BBB80, &qword_100085618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100083800;
  v5 = sub_1000544CC();
  if (v6 && (v7 = v5, v8 = v6, v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v11 = sub_1000228D8(v9, v10, v7 & 0x101, v8), , , v11 != 2) && (v11 & 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v0 + 78);
  }

  *(inited + 32) = v12 | 0xA0;
  v13 = sub_1000544CC();
  if (v14 && (v15 = v13, v16 = v14, v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v19 = sub_1000228D8(v17, v18, v15 & 0x101, v16), , , v19 != 2) && (v19 & 1) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = *(v0 + 79);
  }

  *(inited + 33) = v20 | 0xC0;
  sub_10007020C(inited);
  return v3;
}

uint64_t sub_100071C7C()
{
  v1 = OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_profileID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100003FB4((v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationAntiphony));
  sub_100003FB4((v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_configurationProfiles));
  v3 = *(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_subscriptions);

  v4 = *(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler + 8);
  sub_10000858C(*(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_initialUpdateHandler));
  sub_100019B28(v0 + OBJC_IVAR____TtC15assessmentagentP33_A3D1504CA0901FB458370B6BEA11AE1F32AEAConfigurationProfileAssertion_currentProfile, &qword_1000BBB88, &unk_100085620);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AEAConfigurationProfileAssertion()
{
  result = qword_1000BBA10;
  if (!qword_1000BBA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100071DBC()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100071ECC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100071ECC()
{
  if (!qword_1000BBA20)
  {
    type metadata accessor for AEAConfigurationProfile(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000BBA20);
    }
  }
}

char *sub_100071F24(__int16 a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = sub_1000228D8(v4, v5, a1 & 0x101, a2);

  if (v6 == 2)
  {
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = sub_100073004(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_100073004((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v7[v9 + 32] = v6 & 1;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = sub_1000228D8(v10, v11, a1 & 0x101, a2);

  if (v12 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v14 = *(v7 + 2);
    v13 = *(v7 + 3);
    if (v14 >= v13 >> 1)
    {
      v7 = sub_100073004((v13 > 1), v14 + 1, 1, v7);
    }

    *(v7 + 2) = v14 + 1;
    v7[v14 + 32] = v12 & 1 | 0x20;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = sub_1000228D8(v15, v16, a1 & 0x101, a2);

  if (v17 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v19 = *(v7 + 2);
    v18 = *(v7 + 3);
    if (v19 >= v18 >> 1)
    {
      v7 = sub_100073004((v18 > 1), v19 + 1, 1, v7);
    }

    *(v7 + 2) = v19 + 1;
    v7[v19 + 32] = v17 & 1 | 0x40;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = sub_1000228D8(v20, v21, a1 & 0x101, a2);

  if (v22 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v24 = *(v7 + 2);
    v23 = *(v7 + 3);
    if (v24 >= v23 >> 1)
    {
      v7 = sub_100073004((v23 > 1), v24 + 1, 1, v7);
    }

    *(v7 + 2) = v24 + 1;
    v7[v24 + 32] = v22 & 1 | 0x60;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = sub_1000228D8(v25, v26, a1 & 0x101, a2);

  if (v27 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    if (v29 >= v28 >> 1)
    {
      v7 = sub_100073004((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 2) = v29 + 1;
    v7[v29 + 32] = v27 & 1 | 0x80;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = sub_1000228D8(v30, v31, a1 & 0x101, a2);

  if (v32 != 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100073004(0, *(v7 + 2) + 1, 1, v7);
    }

    v34 = *(v7 + 2);
    v33 = *(v7 + 3);
    if (v34 >= v33 >> 1)
    {
      v7 = sub_100073004((v33 > 1), v34 + 1, 1, v7);
    }

    *(v7 + 2) = v34 + 1;
    v7[v34 + 32] = v32 & 1 | 0xE0;
  }

  return v7;
}

char *sub_100072350(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BBBB0, &qword_100085670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100072470(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BBBE0, &qword_1000856B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003F6C(&qword_1000BBBE8, &qword_1000856B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000725B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000B9F40, &unk_100083190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000726D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100072804(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BBB98, &qword_100085658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003F6C(&qword_1000BBBA0, &qword_100085660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100072970(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BA110, &qword_100083250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100072ABC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003F6C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003F6C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_100072C18(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003F6C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100072DF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BBBF0, &unk_1000856C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100072EE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BBBA8, &qword_100085668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100073004(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003F6C(&qword_1000BBB80, &qword_100085618);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000730F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAConfigurationProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007315C(uint64_t a1)
{
  v2 = type metadata accessor for AEAConfigurationProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000731B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BBB88, &unk_100085620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073228()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073268()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000732A0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1000732E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_100003FB4(v0 + 5);
  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100073340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[16];
  v8 = v1[17];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000F618;

  return sub_100070B20(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_100073414(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A778;

  return sub_10004F0FC(a1, v5);
}

uint64_t sub_1000734CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F618;

  return sub_10004F0FC(a1, v5);
}

uint64_t sub_100073584(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000735CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100030BD0(*(a4 + 48) + 56 * (v17 | (v12 << 6)), v23);
      v18 = v23[2];
      v19 = v23[1];
      v20 = v23[0];
      *(v11 + 48) = v24;
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      *v11 = v20;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 56;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_10007373C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v11 = 0;
    a3 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v11;
    v5[4] = v9;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v29 = -1 << *(a4 + 32);
    v30 = a3;
    result = 0;
    v11 = 0;
    v12 = (63 - v7) >> 6;
    v13 = 1;
    while (v9)
    {
LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v11 << 6);
      v18 = *(a4 + 48) + 40 * v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      LOBYTE(v18) = *(v18 + 32);
      v23 = *(a4 + 56) + 16 * v17;
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = *(v23 + 8);
      *v10 = v19;
      *(v10 + 8) = v20;
      *(v10 + 16) = v22;
      *(v10 + 24) = v21;
      *(v10 + 32) = v18;
      *(v10 + 40) = v24;
      *(v10 + 41) = v25;
      *(v10 + 48) = v26;
      if (v13 == v30)
      {

        v7 = v29;
        a3 = v30;
        goto LABEL_24;
      }

      v10 += 56;

      result = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v14 = v11;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v15 >= v12)
      {
        break;
      }

      v9 = *(v6 + 8 * v15);
      ++v14;
      if (v9)
      {
        v11 = v15;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v12 <= v11 + 1)
    {
      v28 = v11 + 1;
    }

    else
    {
      v28 = v12;
    }

    v11 = v28 - 1;
    a3 = result;
    v7 = v29;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100073930()
{
  v1 = *(*(v0 + 16) + 64);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000739DC;

  return sub_100028710(v1);
}

uint64_t sub_1000739DC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_100073AD4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 arrayForKey:v5];

  if (v6 && (v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = sub_10001DB70(v7), , v8))
  {
    *(a2 + 24) = &type metadata for AEAExternalDisplayDeactivation;
    *(a2 + 32) = &off_1000ABD68;
    v9 = swift_allocObject();
    *a2 = v9;
    sub_10000859C(v2 + 24, (v9 + 5));
    v9[2] = 0xD000000000000045;
    v9[3] = 0x800000010008AA60;
    v9[4] = 4;
    v9[10] = v8;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100073BFC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = swift_task_alloc();
  v3[6] = v4;
  *v4 = v3;
  v4[1] = sub_100073CD0;

  return sub_1000282B0();
}

uint64_t sub_100073CD0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100073DFC, 0, 0);
}

uint64_t sub_100073DFC()
{
  v1 = v0[7];
  if (!*(v1 + 16))
  {
    v12 = v0[3];
    *(v12 + 32) = 0;
    *v12 = 0u;
    *(v12 + 16) = 0u;

    goto LABEL_5;
  }

  v2 = v0[4];
  sub_100039B34(v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();
  [v2 setArray:isa forKey:v4];

  v0[2] = 0;
  v5 = [v2 persistWithError:v0 + 2];
  v6 = v0[2];
  v7 = v0[7];
  if (v5)
  {
    v8 = v0[5];
    v9 = v0[3];
    v9[3] = &type metadata for AEAExternalDisplayDeactivation;
    v9[4] = &off_1000ABD68;
    v10 = swift_allocObject();
    *v9 = v10;
    sub_10000859C(v8 + 24, (v10 + 5));
    v10[2] = 0xD000000000000045;
    v10[3] = 0x800000010008AA60;
    v10[4] = 4;
    v10[10] = v7;
    v11 = v6;
LABEL_5:
    v13 = v0[1];
    goto LABEL_7;
  }

  v14 = v6;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t sub_100074014(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_100073BFC(a1, a2);
}

uint64_t sub_1000740BC()
{
  v1 = v0[3];

  sub_100003FB4(v0 + 5);
  v2 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_100074114()
{
  v1 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing;
  if (*(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing);
  }

  else
  {
    v3 = sub_1000748B4();
    if (!v3)
    {
      v3 = sub_100021EC0(_swiftEmptyArrayStorage);
    }

    v2 = v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
  }

  return v2;
}

uint64_t sub_100074188@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v9);
  v11 = &v18[-v10];
  v12 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___fileURL;
  swift_beginAccess();
  sub_100005AD4(v1 + v12, v11);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_100005B44(v11);
  v15 = *(v1 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_fileName);
  v16 = *(v1 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_fileName + 8);
  URL.appendingPathComponent(_:)();
  (*(v14 + 16))(v8, a1, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_100005BAC(v8, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_100074374(uint64_t a1, uint64_t a2)
{
  v4 = sub_100074114();
  if (*(v4 + 16) && (v5 = sub_100020DA8(a1, a2), (v6 & 1) != 0))
  {
    sub_10000C6FC(*(v4 + 56) + 32 * v5, v9);

    sub_100005C1C();
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100074498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100074114();
  if (*(v4 + 16) && (v5 = sub_100020DA8(a1, a2), (v6 & 1) != 0))
  {
    sub_10000C6FC(*(v4 + 56) + 32 * v5, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000745EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100074114();
  if (*(v4 + 16) && (v5 = sub_100020DA8(a1, a2), (v6 & 1) != 0))
  {
    sub_10000C6FC(*(v4 + 56) + 32 * v5, v9);

    sub_100003F6C(qword_1000B7628, &unk_10007FB20);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1000748B4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100074188(v5);
  v15 = Data.init(contentsOf:options:)();
  v17 = v16;
  (*(v1 + 8))(v5, v0);
  v18 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v24[0] = 0;
  v20 = [v18 propertyListWithData:isa options:2 format:0 error:v24];

  v21 = *&v24[0];
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    sub_100005A80(v15, v17);
    swift_unknownObjectRelease();
    sub_100010B20(v25, v24);
    sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
    if (swift_dynamicCast())
    {
      return v23[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v22 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100005A80(v15, v17);
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C370(v6, qword_1000BC518);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v25[0] = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_100067820(v23[3]);
      v13 = sub_100043D60(v11, v12, v25);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to read property list. Error: %{public}s", v9, 0xCu);
      sub_100003FB4(v10);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100074C34()
{
  sub_100003FB4(v0 + 2);
  v1 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_directoryURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_fileName + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing);

  sub_100005B44(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___fileURL);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s17ReadingScratchpadCMa()
{
  result = qword_1000BBD00;
  if (!qword_1000BBD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074D60()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000059E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100074E4C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6A8 = v5;
    unk_1000BC6B0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100074F68()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6B8 = v5;
    unk_1000BC6C0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_10007508C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6C8 = v5;
    unk_1000BC6D0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000751B0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6D8 = v5;
    unk_1000BC6E0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000752CC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6E8 = v5;
    unk_1000BC6F0 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000753E4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC6F8 = v5;
    unk_1000BC700 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075508()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC708 = v5;
    unk_1000BC710 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_10007562C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC718 = v5;
    unk_1000BC720 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075750()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC728 = v5;
    unk_1000BC730 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075874()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC738 = v5;
    unk_1000BC740 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075998()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  if (qword_1000B64D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000BC6A0;
  v3 = String._bridgeToObjectiveC()();
  v4 = AELocalizedStringFromTableInBundle();

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    qword_1000BC748 = v5;
    unk_1000BC750 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100075AE0(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC518);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100043D60(v1, v3, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "Received notification: %{public}s", v6, 0xCu);
      sub_100003FB4(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_100075CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100075D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100075D70(void *a1)
{
  v2 = v1;
  v4 = sub_100003F6C(&qword_1000BBFE0, &qword_1000859C8);
  v145 = *(v4 - 8);
  v146 = v4;
  v5 = *(v145 + 64);
  __chkstk_darwin(v4, v6);
  v143 = &v143 - v7;
  v8 = sub_100003F6C(&qword_1000BBFE8, qword_1000859D0);
  v147 = *(v8 - 8);
  v148 = v8;
  v9 = *(v147 + 64);
  __chkstk_darwin(v8, v10);
  v144 = &v143 - v11;
  v12 = *sub_100005A3C(v1, v1[3]);
  v13 = sub_10006AD78();
  v14 = *(*sub_100005A3C(v2, v2[3]) + 160);
  swift_unknownObjectRetain();
  v15 = sub_100072470(0, 1, 1, _swiftEmptyArrayStorage);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_100072470((v16 > 1), v17 + 1, 1, v15);
  }

  v156 = &type metadata for AEAOSTransactionActivation;
  v157 = &off_1000A7738;
  v18 = swift_allocObject();
  *&v154 = v18;
  v18[2] = 0xD00000000000002ALL;
  v18[3] = 0x800000010008B1C0;
  v18[4] = 0;
  v18[5] = v14;
  v15[2] = v17 + 1;
  sub_100008748(&v154, &v15[5 * v17 + 4]);
  v19 = [v13 showPromptsAndBanners];
  v20 = [v19 value];

  if (!v20)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v21 = [v20 BOOLValue];

  if (v21)
  {
    v22 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v22 + 320, &v156);
    v23 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v23 + 688, &v159);
    sub_100026B2C(a1, v162);
    *&v154 = 0xD000000000000026;
    *(&v154 + 1) = 0x800000010008B4D0;
    v155 = 0;
    v25 = v15[2];
    v24 = v15[3];
    if (v25 >= v24 >> 1)
    {
      v15 = sub_100072470((v24 > 1), v25 + 1, 1, v15);
    }

    v167 = &type metadata for AEAUserConfirmationActivation;
    v168 = &off_1000A8A88;
    *&v166 = swift_allocObject();
    sub_100077D10(&v154, v166 + 16);
    v15[2] = v25 + 1;
    sub_100008748(&v166, &v15[5 * v25 + 4]);
    sub_100077D6C(&v154);
  }

  v26 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v26 + 320, &v166);
  v27 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v27 + 464, v165);
  v28 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v28 + 552, v164);
  sub_10000859C((a1 + 9), v163);
  v150 = a1[14];
  v29 = *(a1 + 15);
  v30 = a1[17];
  v152 = a1;
  v31 = a1[24];
  v151 = v29;

  v32 = [v13 enforceSingleAppMode];
  v33 = [v32 value];

  if (!v33)
  {
    goto LABEL_69;
  }

  v149 = [v33 BOOLValue];

  v153 = v13;
  v34 = [v13 setCustomHomeScreenLayout];
  v35 = [v34 value];

  if (!v35)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v36 = [v35 BOOLValue];

  v156 = &type metadata for AEARestrictionsActivation;
  v157 = &off_1000A7400;
  v37 = swift_allocObject();
  *&v154 = v37;
  *(v37 + 16) = 0xD00000000000002ALL;
  *(v37 + 24) = 0x800000010008B220;
  *(v37 + 32) = xmmword_100085950;
  *(v37 + 48) = 0x800000010008B1F0;
  sub_100008748(&v166, v37 + 56);
  sub_100008748(v165, v37 + 96);
  sub_100008748(v164, v37 + 136);
  sub_100008748(v163, v37 + 176);
  *(v37 + 216) = v150;
  *(v37 + 224) = v151;
  *(v37 + 240) = v30;
  *(v37 + 248) = v31;
  *(v37 + 256) = v149;
  *(v37 + 257) = v36;
  *&v165[0] = v15;
  v39 = v15[2];
  v38 = v15[3];
  if (v39 >= v38 >> 1)
  {
    v15 = sub_100072470((v38 > 1), v39 + 1, 1, v15);
    *&v165[0] = v15;
  }

  v40 = v153;
  v41 = v156;
  v42 = v157;
  v43 = sub_10001A19C(&v154, v156);
  v44 = *(v41[-1].Description + 8);
  __chkstk_darwin(v43, v43);
  v46 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v46);
  sub_1000774A0(v39, v46, v165, v41, v42);
  sub_100003FB4(&v154);
  v48 = [v40 disableMultitaskingModes];
  v49 = [v48 value];

  if (!v49)
  {
    goto LABEL_71;
  }

  v50 = [v49 BOOLValue];

  if (v50)
  {
    v51 = sub_100005A3C(v2, v2[3]);
    v52 = v15[2];
    v53 = v15[3];
    v151 = *(*v51 + 672);
    swift_unknownObjectRetain();
    if (v52 >= v53 >> 1)
    {
      v15 = sub_100072470((v53 > 1), v52 + 1, 1, v15);
    }

    v156 = &type metadata for AEAMultitaskingModeActivation;
    v157 = &off_1000AB148;
    v54 = swift_allocObject();
    *&v154 = v54;
    *(v54 + 16) = 0xD00000000000002FLL;
    *(v54 + 24) = 0x800000010008B4A0;
    *(v54 + 32) = 1;
    *(v54 + 40) = v151;
    v15[2] = v52 + 1;
    sub_100008748(&v154, &v15[5 * v52 + 4]);
  }

  v55 = [v40 disableSiri];
  v56 = [v55 value];

  if (!v56)
  {
    goto LABEL_72;
  }

  v57 = [v56 BOOLValue];

  if (v57)
  {
    v58 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v58 + 512, &v158);
    v157 = 1;
    *&v166 = 0;
    *(&v166 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v59._countAndFlagsBits = 0xD000000000000031;
    v59._object = 0x800000010008B460;
    String.append(_:)(v59);
    v60._countAndFlagsBits = 0x7473655269726953;
    v60._object = 0xEE00726F74636972;
    String.append(_:)(v60);
    v154 = v166;
    v155 = 0xD00000000000002ALL;
    v156 = 0x800000010008B430;
    v62 = v15[2];
    v61 = v15[3];
    if (v62 >= v61 >> 1)
    {
      v15 = sub_100072470((v61 > 1), v62 + 1, 1, v15);
    }

    v167 = &type metadata for AEAExternalSubsystemRestrictionActivation;
    v168 = &off_1000AC290;
    *&v166 = swift_allocObject();
    sub_100077BAC(&v154, v166 + 16);
    v15[2] = v62 + 1;
    sub_100008748(&v166, &v15[5 * v62 + 4]);
    sub_100077C08(&v154);
  }

  v63 = [v40 scrubPasteboard];
  v64 = [v63 value];

  if (!v64)
  {
    goto LABEL_73;
  }

  v65 = [v64 BOOLValue];

  if (v65)
  {
    v66 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v66 + 224, &v156);
    *&v154 = 0xD00000000000002CLL;
    *(&v154 + 1) = 0x800000010008B400;
    v155 = 1;
    v68 = v15[2];
    v67 = v15[3];
    if (v68 >= v67 >> 1)
    {
      v15 = sub_100072470((v67 > 1), v68 + 1, 1, v15);
    }

    v167 = &type metadata for AEAPasteboardActivation;
    v168 = &off_1000AB6A8;
    *&v166 = swift_allocObject();
    sub_100077AB4(&v154, v166 + 16);
    v15[2] = v68 + 1;
    sub_100008748(&v166, &v15[5 * v68 + 4]);
    sub_100077B10(&v154);
  }

  v69 = [v40 restrictNetworkAccess];
  v70 = [v69 value];

  if (!v70)
  {
    goto LABEL_74;
  }

  v71 = [v70 BOOLValue];

  if (v71)
  {
    *&v151 = *(*sub_100005A3C(v2, v2[3]) + 272);
    v72 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v72 + 168, &v157);
    v73 = v152;
    v74 = v152[12];
    v75 = v152[13];
    sub_100005A3C(v152 + 9, v74);
    sub_10000F874(sub_100077410, 0, v74, v75, &v160);
    v76 = v73[7];
    swift_unknownObjectRetain();

    v77 = [v40 networkPolicyExemptExecutablePaths];
    swift_getKeyPath();
    v78 = v143;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_100003F6C(&qword_1000BC000, &unk_100085A20);
    sub_100004EE0(&qword_1000BC008, &qword_1000BBFE0, &qword_1000859C8);
    v79 = v144;
    v80 = v146;
    Publisher.map<A>(_:)();
    (*(v145 + 8))(v78, v80);
    sub_100004EE0(&unk_1000BC010, &qword_1000BBFE8, qword_1000859D0);
    v81 = v148;
    v82 = Publisher.eraseToAnyPublisher()();

    (*(v147 + 8))(v79, v81);
    *&v154 = 0xD000000000000025;
    *(&v154 + 1) = 0x800000010008B3D0;
    v155 = 1;
    v156 = v151;
    v162[1] = v76;
    v162[2] = v82;
    v84 = v15[2];
    v83 = v15[3];
    if (v84 >= v83 >> 1)
    {
      v15 = sub_100072470((v83 > 1), v84 + 1, 1, v15);
    }

    v167 = &type metadata for AEANetworkActivation;
    v168 = &off_1000A8508;
    *&v166 = swift_allocObject();
    sub_1000779C4(&v154, v166 + 16);
    v15[2] = v84 + 1;
    sub_100008748(&v166, &v15[5 * v84 + 4]);
    sub_100077A20(&v154);
    v40 = v153;
  }

  v85 = [v40 stopAirPlayBeforehand];
  v86 = [v85 value];

  if (!v86)
  {
    goto LABEL_75;
  }

  v87 = [v86 BOOLValue];

  if (v87)
  {
    v88 = *(*sub_100005A3C(v2, v2[3]) + 264);
    v89 = v15[2];
    v90 = v15[3];
    swift_unknownObjectRetain();
    if (v89 >= v90 >> 1)
    {
      v15 = sub_100072470((v90 > 1), v89 + 1, 1, v15);
    }

    v156 = &type metadata for AEAAirPlayActivation;
    v157 = &off_1000A6D70;
    v91 = swift_allocObject();
    *&v154 = v91;
    v91[2] = 0xD000000000000021;
    v91[3] = 0x800000010008B3A0;
    v91[4] = 1;
    v91[5] = v88;
    v15[2] = v89 + 1;
    sub_100008748(&v154, &v15[5 * v89 + 4]);
  }

  v92 = [v40 restrictMedia];
  v93 = [v92 value];

  if (!v93)
  {
    goto LABEL_76;
  }

  v94 = [v93 BOOLValue];

  if (v94)
  {
    v95 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v95 + 280, &v156);
    v96 = v152[7];
    *&v154 = 0xD000000000000023;
    *(&v154 + 1) = 0x800000010008B370;
    v155 = 1;
    v159 = v96;
    v97 = v15[2];
    v98 = v15[3];

    if (v97 >= v98 >> 1)
    {
      v15 = sub_100072470((v98 > 1), v97 + 1, 1, v15);
    }

    v167 = &type metadata for AEARestrictMediaActivation;
    v168 = &off_1000AB438;
    *&v166 = swift_allocObject();
    sub_100077858(&v154, v166 + 16);
    v15[2] = v97 + 1;
    sub_100008748(&v166, &v15[5 * v97 + 4]);
    sub_1000778B4(&v154);
  }

  v99 = *(*sub_100005A3C(v2, v2[3]) + 504);
  v100 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v100 + 632, &v166);
  swift_unknownObjectRetain();
  v101 = [v40 expirationTime];
  v102 = [v101 value];

  if (!v102)
  {
    goto LABEL_77;
  }

  [v102 doubleValue];
  v104 = v103;

  sub_100026B2C(v152, &v161);
  *&v154 = 0xD000000000000025;
  *(&v154 + 1) = 0x800000010008B250;
  v155 = 1;
  v156 = v99;
  sub_100008748(&v166, &v157);
  v160 = v104;
  v106 = v15[2];
  v105 = v15[3];
  if (v106 >= v105 >> 1)
  {
    v15 = sub_100072470((v105 > 1), v106 + 1, 1, v15);
  }

  v167 = &type metadata for AEAExpirationActivation;
  v168 = &off_1000A9038;
  *&v166 = swift_allocObject();
  sub_10003C9EC(&v154, v166 + 16);
  v15[2] = v106 + 1;
  sub_100008748(&v166, &v15[5 * v106 + 4]);
  sub_10003CABC(&v154);
  v107 = [v40 forceScreenMirroring];
  v108 = [v107 value];

  if (!v108)
  {
    goto LABEL_78;
  }

  v109 = [v108 BOOLValue];

  if (v109)
  {
    v110 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v110 + 552, &v156);
    *&v154 = 0xD000000000000035;
    *(&v154 + 1) = 0x800000010008B330;
    v155 = 1;
    v112 = v15[2];
    v111 = v15[3];
    if (v112 >= v111 >> 1)
    {
      v15 = sub_100072470((v111 > 1), v112 + 1, 1, v15);
    }

    v167 = &type metadata for AEAExternalDisplayActivation;
    v168 = &off_1000ABC80;
    *&v166 = swift_allocObject();
    sub_100077738(&v154, v166 + 16);
    v15[2] = v112 + 1;
    sub_100008748(&v166, &v15[5 * v112 + 4]);
    sub_100077794(&v154);
  }

  v113 = [v40 allowRemotelyKillingAgent];
  v114 = [v113 value];

  if (!v114)
  {
    goto LABEL_79;
  }

  v115 = [v114 BOOLValue];

  if (v115)
  {
    v116 = *(*sub_100005A3C(v2, v2[3]) + 208);
    v117 = sub_100005A3C(v2, v2[3]);
    sub_10000859C(*v117 + 104, &v157);
    *&v154 = 0xD00000000000003CLL;
    *(&v154 + 1) = 0x800000010008B2F0;
    v155 = 1;
    v156 = v116;
    v118 = v15[2];
    v119 = v15[3];
    swift_unknownObjectRetain();
    if (v118 >= v119 >> 1)
    {
      v15 = sub_100072470((v119 > 1), v118 + 1, 1, v15);
    }

    v167 = &type metadata for AEAKillAgentNotificationListenerActivation;
    v168 = &off_1000A7008;
    *&v166 = swift_allocObject();
    sub_10000F70C(&v154, v166 + 16);
    v15[2] = v118 + 1;
    sub_100008748(&v166, &v15[5 * v118 + 4]);
    sub_1000776E0(&v154);
  }

  v120 = [v40 failOnDeactivation];
  v121 = [v120 value];

  if (!v121)
  {
    goto LABEL_80;
  }

  v122 = [v121 BOOLValue];

  v124 = v15[2];
  v123 = v15[3];
  v125 = v124 + 1;
  if (v124 >= v123 >> 1)
  {
    v15 = sub_100072470((v123 > 1), v124 + 1, 1, v15);
  }

  v156 = &type metadata for AEAFailingDeactivationAction;
  v157 = &off_1000A9258;
  v126 = swift_allocObject();
  *&v154 = v126;
  *(v126 + 16) = 0xD000000000000034;
  *(v126 + 24) = 0x800000010008B280;
  *(v126 + 32) = 1;
  *(v126 + 40) = v122;
  v15[2] = v125;
  sub_100008748(&v154, &v15[5 * v124 + 4]);
  v127 = sub_100005A3C(v2, v2[3]);
  sub_10000859C(*v127 + 168, &v156);
  v128 = *(*sub_100005A3C(v2, v2[3]) + 208);
  *&v154 = 0xD00000000000002BLL;
  *(&v154 + 1) = 0x800000010008B2C0;
  v155 = 2;
  v159 = v128;
  v129 = v15[3];
  swift_unknownObjectRetain();
  if ((v124 + 2) > (v129 >> 1))
  {
    v15 = sub_100072470((v129 > 1), v124 + 2, 1, v15);
  }

  v167 = &type metadata for AEAAssessmentStateActivation;
  v168 = &off_1000AAFA0;
  *&v166 = swift_allocObject();
  sub_1000775E8(&v154, v166 + 16);
  v15[2] = v124 + 2;
  v130 = (v15 + 4);
  sub_100008748(&v166, &v15[5 * v125 + 4]);
  sub_100077644(&v154);
  v131 = v2[5];
  v132 = sub_100005A3C(v2, v2[3]);
  v133 = *(*v132 + 152);
  v134 = v15[2];
  if (v134)
  {
    *&v166 = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      sub_10000859C(v130, &v154);
      v135 = v156;
      v136 = v157;
      sub_100005A3C(&v154, v156);
      sub_10004D820(v135, v136);
      sub_100003FB4(&v154);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v137 = *(v166 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v130 += 40;
      --v134;
    }

    while (v134);

    v40 = v153;
  }

  else
  {
    v138 = *(*v132 + 152);
    swift_unknownObjectRetain();
  }

  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v139 = qword_1000BC5B8;
  v140 = objc_allocWithZone(AEPolicyBundle);
  v141 = v139;
  sub_100003F6C(&qword_1000BBFF8, &unk_1000859E8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v140 initWithPolicyStore:v131 performancePrimitives:v133 activations:isa queue:v141];

  swift_unknownObjectRelease();
}

uint64_t sub_100077428()
{
  v1 = v0[3];

  v2 = v0[6];

  sub_100003FB4(v0 + 7);
  sub_100003FB4(v0 + 12);
  sub_100003FB4(v0 + 17);
  sub_100003FB4(v0 + 22);
  v3 = v0[28];

  v4 = v0[30];

  v5 = v0[31];

  return _swift_deallocObject(v0, 258, 7);
}

uint64_t sub_1000774A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100004F80(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100008748(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100077538()
{
  v1 = v0[3];

  v2 = v0[5];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 6);
  if (v0[15])
  {
    sub_100003FB4(v0 + 12);
    v3 = v0[18];
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100077598()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100077698()
{
  v1 = v0[3];

  v2 = v0[5];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 6);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100077800(void (*a1)(void))
{
  v3 = v1[3];

  sub_100003FB4(v1 + 5);
  a1(v1[10]);

  return _swift_deallocObject(v1, 88, 7);
}

id sub_100077914@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

uint64_t sub_100077964()
{
  v1 = v0[3];

  v2 = v0[5];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 6);
  sub_100003FB4(v0 + 11);
  v3 = v0[16];

  v4 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100077A74()
{
  v1 = *(v0 + 24);

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100077B64()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_100003FB4(v0 + 7);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100077C64(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100077CB0()
{
  v1 = v0[3];

  sub_100003FB4(v0 + 5);
  sub_100003FB4(v0 + 10);
  if (v0[18])
  {
    sub_100003FB4(v0 + 15);
    v2 = v0[21];
  }

  return _swift_deallocObject(v0, 176, 7);
}

void *sub_100077DEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = objc_opt_self();

  result = [v3 sharedConnection];
  if (result)
  {
    v5 = result;

    v6 = [v5 effectiveRestrictions];

    if (!v6 || (v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = sub_100077EDC(v7), , !v8))
    {

      v8 = &_swiftEmptyDictionarySingleton;
    }

    v2[4] = v8;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100077EDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003F6C(&qword_1000BB988, &unk_100085B10);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100022828(*(a1 + 48) + 40 * v14, v27);
        sub_10000C6FC(*(a1 + 56) + 32 * v14, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100022828(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_100019B28(v24, &qword_1000BB978, &qword_1000852D8);

          goto LABEL_23;
        }

        sub_10000C6FC(v25 + 8, v23);
        sub_100019B28(v24, &qword_1000BB978, &qword_1000852D8);
        sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100020DA8(v21, v22);
        v15 = result;
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;

          v11 = v2[7];
          v12 = *(v11 + 8 * v15);
          *(v11 + 8 * v15) = v21;

          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000781BC(uint64_t *a1)
{
  v2 = v1;
  v200 = a1;
  if (*v1 == 3)
  {

    goto LABEL_36;
  }

  v201 = *v1;
  v202[0] = *(v1 + 1);
  *(v202 + 15) = *(v1 + 23);

  v4 = sub_1000797CC();
  if (!v4)
  {
LABEL_36:
    if (!v2[5])
    {
      goto LABEL_70;
    }

    v193 = v2[5];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v200[2])
    {
      sub_100020DA8(v71, v72);
      v74 = v73;

      if (v74)
      {
LABEL_42:
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = sub_100050624(v199, v80, v81);
        if (*v83)
        {
          v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86 = v85;
          sub_100003F6C(&qword_1000BC190, &qword_100085AE0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000807D0;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 40) = v88;
          *(inited + 48) = _swiftEmptyArrayStorage;
          v89 = sub_1000222DC(inited);
          swift_setDeallocating();
          sub_100019B28(inited + 32, &qword_1000BC198, &qword_100085AE8);
          v198 = sub_100003F6C(&qword_1000BC1A0, &qword_100085AF0);
          *&v197 = v89;
          sub_10003FB78(&v197, v84, v86);
        }

        (v82)(v199, 0);

        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = sub_100050624(v199, v90, v91);
        if (*v93)
        {
          sub_100003F6C(&qword_1000BC190, &qword_100085AE0);
          v94 = swift_initStackObject();
          *(v94 + 16) = xmmword_1000807D0;
          *(v94 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v94 + 40) = v95;
          *(v94 + 48) = _swiftEmptyArrayStorage;
          v96 = sub_1000222DC(v94);
          swift_setDeallocating();
          sub_100019B28(v94 + 32, &qword_1000BC198, &qword_100085AE8);
          v198 = sub_100003F6C(&qword_1000BC1A0, &qword_100085AF0);
          *&v197 = v96;
          sub_10003FB78(&v197, 0xD000000000000017, 0x800000010008B5F0);
        }

        (v92)(v199, 0);

        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = sub_100050624(v199, v97, v98);
        if (*v100)
        {
          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;
          sub_100003F6C(&qword_1000BC1A8, &qword_100085AF8);
          v104 = swift_initStackObject();
          *(v104 + 16) = xmmword_100083800;
          *(v104 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v104 + 40) = v105;
          *(v104 + 48) = 1;
          *(v104 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v104 + 64) = v106;
          *(v104 + 72) = 1;
          v107 = sub_1000221B8(v104);
          swift_setDeallocating();
          sub_100003F6C(&qword_1000BC1B0, &qword_100085B00);
          swift_arrayDestroy();
          v198 = sub_100003F6C(&qword_1000BC1B8, &qword_100085B08);
          *&v197 = v107;
          sub_10003FB78(&v197, v101, v103);
        }

        (v99)(v199, 0);

        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v200[2])
        {
          sub_100020DA8(v108, v109);
          v111 = v110;

          if (v111)
          {
LABEL_53:
            v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = sub_100050624(v199, v117, v118);
            if (*v120)
            {
              v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v123 = v122;
              sub_100003F6C(&qword_1000BC178, &qword_100085AC8);
              v124 = swift_initStackObject();
              *(v124 + 16) = xmmword_1000807D0;
              *(v124 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v124 + 40) = v125;
              v126 = *(v193 + 16);
              v127 = _swiftEmptyArrayStorage;
              if (v126)
              {
                v185 = v121;
                v187 = v119;
                *&v197 = _swiftEmptyArrayStorage;
                sub_10004A8CC(0, v126, 0);
                v127 = v197;
                v128 = (v193 + 40);
                do
                {
                  v129 = *(v128 - 1);
                  v130 = *v128;
                  *&v197 = v127;
                  v131 = v127[2];
                  v132 = v127[3];

                  if (v131 >= v132 >> 1)
                  {
                    sub_10004A8CC((v132 > 1), v131 + 1, 1);
                    v127 = v197;
                  }

                  v127[2] = v131 + 1;
                  v133 = &v127[2 * v131];
                  v133[4] = v129;
                  v133[5] = v130;
                  v128 += 2;
                  --v126;
                }

                while (v126);
                v119 = v187;
                v121 = v185;
              }

              *(v124 + 48) = v127;
              v134 = sub_1000222F0(v124);
              swift_setDeallocating();
              sub_100019B28(v124 + 32, &qword_1000BC180, &qword_100085AD0);
              v198 = sub_100003F6C(&qword_1000BC188, &qword_100085AD8);
              *&v197 = v134;
              sub_10003FB78(&v197, v121, v123);
              (v119)(v199, 0);
            }

            else
            {
              (v119)(v199, 0);
            }

            v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v200[2])
            {
              sub_100020DA8(v135, v136);
              v138 = v137;

              if (v138)
              {
                goto LABEL_67;
              }
            }

            else
            {
            }

            v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v141 = v140;
            v142 = v200;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v199[0] = v142;
            sub_100040BB8(_swiftEmptyDictionarySingleton, v139, v141, isUniquelyReferenced_nonNull_native);

            v200 = v199[0];
LABEL_67:
            v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v146 = sub_100050624(v199, v144, v145);
            if (*v147)
            {
              sub_100003F6C(&qword_1000BC1A8, &qword_100085AF8);
              v148 = swift_initStackObject();
              *(v148 + 16) = xmmword_100083800;
              *(v148 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v148 + 40) = v149;
              *(v148 + 48) = 1;
              *(v148 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v148 + 64) = v150;
              *(v148 + 72) = 1;
              v151 = sub_1000221B8(v148);
              swift_setDeallocating();
              sub_100003F6C(&qword_1000BC1B0, &qword_100085B00);
              swift_arrayDestroy();
              v198 = sub_100003F6C(&qword_1000BC1B8, &qword_100085B08);
              *&v197 = v151;
              sub_10003FB78(&v197, 0xD000000000000030, 0x800000010008B610);
            }

            (v146)(v199, 0);

            v2 = v189;
LABEL_70:
            v152 = v2[6];
            if (!v152)
            {
LABEL_86:
              if (v200[2])
              {
                v180 = sub_100079240(v200);
              }

              else
              {

                return 0;
              }

              return v180;
            }

            v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v200[2])
            {
              sub_100020DA8(v153, v154);
              v156 = v155;

              if (v156)
              {
                goto LABEL_76;
              }
            }

            else
            {
            }

            v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v158;
            v160 = v200;
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v199[0] = v160;
            sub_100040BB8(_swiftEmptyDictionarySingleton, v157, v159, v161);

            v200 = v199[0];
LABEL_76:
            v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v164 = sub_100050624(v199, v162, v163);
            if (*v165)
            {
              v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v168 = v167;
              sub_100003F6C(&qword_1000BC178, &qword_100085AC8);
              v169 = swift_initStackObject();
              *(v169 + 16) = xmmword_1000807D0;
              *(v169 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v169 + 40) = v170;
              v171 = *(v152 + 16);
              v172 = _swiftEmptyArrayStorage;
              if (v171)
              {
                v188 = v168;
                v190 = v166;
                v194 = v164;
                *&v197 = _swiftEmptyArrayStorage;
                sub_10004A8CC(0, v171, 0);
                v172 = v197;
                v173 = (v152 + 40);
                do
                {
                  v174 = *(v173 - 1);
                  v175 = *v173;
                  *&v197 = v172;
                  v176 = v172[2];
                  v177 = v172[3];

                  if (v176 >= v177 >> 1)
                  {
                    sub_10004A8CC((v177 > 1), v176 + 1, 1);
                    v172 = v197;
                  }

                  v172[2] = v176 + 1;
                  v178 = &v172[2 * v176];
                  v178[4] = v174;
                  v178[5] = v175;
                  v173 += 2;
                  --v171;
                }

                while (v171);
                v164 = v194;
                v166 = v190;
                v168 = v188;
              }

              *(v169 + 48) = v172;
              v179 = sub_1000222F0(v169);
              swift_setDeallocating();
              sub_100019B28(v169 + 32, &qword_1000BC180, &qword_100085AD0);
              v198 = sub_100003F6C(&qword_1000BC188, &qword_100085AD8);
              *&v197 = v179;
              sub_10003FB78(&v197, v166, v168);
              (v164)(v199, 0);
            }

            else
            {
              (v164)(v199, 0);
            }

            goto LABEL_86;
          }
        }

        else
        {
        }

        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;
        v115 = v200;
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v199[0] = v115;
        sub_100040BB8(_swiftEmptyDictionarySingleton, v112, v114, v116);

        v200 = v199[0];
        goto LABEL_53;
      }
    }

    else
    {
    }

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
    v78 = v200;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v199[0] = v78;
    sub_100040BB8(_swiftEmptyDictionarySingleton, v75, v77, v79);

    v200 = v199[0];
    goto LABEL_42;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a1[2])
  {
    sub_100020DA8(v6, v7);
    v9 = v8;

    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v199[0] = a1;
  sub_100040BB8(_swiftEmptyDictionarySingleton, v10, v12, v13);

  v200 = a1;
LABEL_9:
  v14 = 0;
  v15 = v5 + 8;
  v16 = 1 << *(v5 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v5[8];
  v19 = (v16 + 63) >> 6;
  v183 = v5;
  v184 = v5 + 8;
  v182 = v19;
  while (v18)
  {
LABEL_19:
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
    v22 = v5[7];
    v23 = (v5[6] + 16 * v21);
    v191 = *v23;
    v24 = v5;
    v25 = v23[1];
    v26 = *(v22 + v21);
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_100050624(v199, v27, v29);
    v31 = v30;
    v195 = v32;
    if (!*v32)
    {

      (v31)(v199, 0);
      v5 = v24;
      goto LABEL_13;
    }

    v192 = v25;
    v186 = v30;
    sub_100003F6C(&qword_1000BC1A8, &qword_100085AF8);
    v33 = swift_allocObject();
    *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v33 + 40) = v34;
    *(v33 + 48) = v26;
    *(v33 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v33 + 64) = v35;
    *(v33 + 72) = v26;
    sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
    v36 = static _DictionaryStorage.allocate(capacity:)();
    v37 = *(v33 + 32);
    v38 = *(v33 + 40);
    v39 = *(v33 + 48);

    v40 = sub_100020DA8(v37, v38);
    if (v41)
    {
      goto LABEL_91;
    }

    *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v40;
    v42 = (v36[6] + 16 * v40);
    *v42 = v37;
    v42[1] = v38;
    *(v36[7] + v40) = v39;
    v43 = v36[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_92;
    }

    v36[2] = v45;
    v46 = *(v33 + 56);
    v47 = *(v33 + 64);
    v48 = *(v33 + 72);

    v49 = sub_100020DA8(v46, v47);
    if (v50)
    {
      goto LABEL_91;
    }

    *(v36 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v49;
    v51 = (v36[6] + 16 * v49);
    *v51 = v46;
    v51[1] = v47;
    *(v36[7] + v49) = v48;
    v52 = v36[2];
    v44 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v44)
    {
      goto LABEL_92;
    }

    v36[2] = v53;

    swift_setDeallocating();
    sub_100003F6C(&qword_1000BC1B0, &qword_100085B00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v198 = sub_100003F6C(&qword_1000BC1B8, &qword_100085B08);
    *&v197 = v36;
    sub_100010B20(&v197, v196);
    v54 = *v195;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *v195;
    *v195 = 0x8000000000000000;
    v57 = sub_100020DA8(v191, v192);
    v59 = v56[2];
    v60 = (v58 & 1) == 0;
    v44 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v44)
    {
      goto LABEL_93;
    }

    v62 = v58;
    if (v56[3] < v61)
    {
      sub_10006BC88(v61, v55);
      v57 = sub_100020DA8(v191, v192);
      v5 = v183;
      v19 = v182;
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_95;
      }

LABEL_29:
      if ((v62 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v5 = v183;
    v19 = v182;
    if (v55)
    {
      goto LABEL_29;
    }

    v66 = v57;
    sub_10006D7B0();
    v57 = v66;
    if ((v62 & 1) == 0)
    {
LABEL_32:
      v56[(v57 >> 6) + 8] |= 1 << v57;
      v67 = (v56[6] + 16 * v57);
      *v67 = v191;
      v67[1] = v192;
      sub_100010B20(v196, (v56[7] + 32 * v57));
      v68 = v56[2];
      v44 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v44)
      {
        goto LABEL_94;
      }

      v56[2] = v69;
      goto LABEL_34;
    }

LABEL_30:
    v64 = v57;

    v65 = (v56[7] + 32 * v64);
    sub_100003FB4(v65);
    sub_100010B20(v196, v65);
LABEL_34:
    v70 = *v195;
    *v195 = v56;

    (v186)(v199, 0);
LABEL_13:
    v18 &= v18 - 1;

    v15 = v184;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v2 = v189;
      goto LABEL_36;
    }

    v18 = v15[v20];
    ++v14;
    if (v18)
    {
      v14 = v20;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100079240(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003F6C(&qword_1000B8850, &qword_100081568);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
        swift_dynamicCast();
        sub_100010B20(&v25, v27);
        sub_100010B20(v27, v28);
        sub_100010B20(v28, &v26);
        result = sub_100020DA8(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100003FB4(v12);
          result = sub_100010B20(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_100010B20(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000794A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000C6FC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100010B20(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100010B20(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100010B20(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100010B20(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100079768()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_1000797CC()
{
  v1 = v0;
  v2 = *(v0 + 1);
  if (v2 != 2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v2, v3, v4);
  }

  v5 = *(v0 + 2);
  if (v5 != 2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v5, v6, v7);
  }

  v8 = *(v0 + 3);
  if (v8 != 2)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v8, v9, v10);
  }

  v11 = *(v0 + 4);
  if (v11 != 2)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v11, v12, v13);
  }

  v14 = *(v0 + 5);
  if (v14 != 2)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v14, v15, v16);
  }

  v17 = *(v0 + 6);
  if (v17 != 2)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v17, v18, v19);
  }

  v20 = *(v0 + 7);
  if (v20 != 2)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v20, v21, v22);
  }

  v23 = *(v0 + 8);
  if (v23 != 2)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v23, v24, v25);
  }

  v26 = *(v0 + 9);
  if (v26 != 2)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v26, v27, v28);
  }

  v29 = *(v0 + 10);
  if (v29 != 2)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v29, v30, v31);
  }

  v32 = *(v0 + 11);
  if (v32 != 2)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v32, v33, v34);
  }

  v35 = *(v0 + 12);
  if (v35 != 2)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v35, v36, v37);
  }

  v38 = *(v0 + 13);
  if (v38 != 2)
  {
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v38, v39, v40);
  }

  v41 = *(v0 + 14);
  if (v41 != 2)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v41, v42, v43);
  }

  v44 = *(v0 + 15);
  if (v44 != 2)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v44, v45, v46);
  }

  v47 = *(v0 + 16);
  if (v47 != 2)
  {
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v47, v48, v49);
  }

  v50 = *(v0 + 17);
  if (v50 != 2)
  {
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v50, v51, v52);
  }

  v53 = *(v0 + 18);
  if (v53 != 2)
  {
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v53, v54, v55);
  }

  v56 = *(v0 + 19);
  if (v56 != 2)
  {
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v56, v57, v58);
  }

  v59 = *(v0 + 20);
  if (v59 != 2)
  {
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v59, v60, v61);
  }

  v62 = *(v0 + 21);
  if (v62 != 2)
  {
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v62, v63, v64);
  }

  v65 = *(v0 + 22);
  if (v65 != 2)
  {
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v65, v66, v67);
  }

  v68 = *(v0 + 23);
  if (v68 != 2)
  {
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v68, v69, v70);
  }

  v71 = *(v0 + 24);
  if (v71 != 2)
  {
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v71, v72, v73);
  }

  v74 = *(v0 + 26);
  if (v74 != 2)
  {
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v74, v75, v76);
  }

  v77 = *(v0 + 25);
  if (v77 != 2)
  {
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v77, v78, v79);
  }

  if (v74 != 2)
  {
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v74, v80, v81);
  }

  v82 = *(v0 + 27);
  if (v82 != 2)
  {
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v82, v83, v84);
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v82, v85, v86);
  }

  v87 = *(v0 + 28);
  if (v87 != 2)
  {
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v87, v88, v89);
  }

  v90 = *(v0 + 30);
  if (v90 != 2)
  {
    sub_10003FC48(v90, 0xD000000000000025, 0x800000010008B650);
  }

  v91 = *(v0 + 31);
  if (v91 != 2)
  {
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v91, v92, v93);
  }

  v94 = *(v0 + 32);
  if (v94 != 2)
  {
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v94, v95, v96);
  }

  v97 = *(v0 + 33);
  if (v97 != 2)
  {
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v97, v98, v99);
  }

  v100 = *(v0 + 34);
  if (v100 != 2)
  {
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(v100, v101, v102);
  }

  if (*(v0 + 35) == 3 || (v103 = sub_10007A1BC(*(v0 + 35))) == 0)
  {
LABEL_91:
    v130 = *(v1 + 29);
    if (v130 != 2)
    {
      v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10003FC48(v130, v131, v132);
    }

    result = _swiftEmptyDictionarySingleton;
    if (!_swiftEmptyDictionarySingleton[2])
    {

      return 0;
    }
  }

  else
  {
    v134 = v103;
    v104 = 0;
    v105 = v103 + 8;
    v106 = 1 << *(v103 + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & v103[8];
    v109 = (v106 + 63) >> 6;
    while (v108)
    {
      v111 = v104;
LABEL_81:
      v112 = __clz(__rbit64(v108)) | (v111 << 6);
      v113 = (v103[6] + 16 * v112);
      v115 = *v113;
      v114 = v113[1];
      v116 = *(v103[7] + v112);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = sub_100020DA8(v115, v114);
      v120 = _swiftEmptyDictionarySingleton[2];
      v121 = (v119 & 1) == 0;
      v122 = __OFADD__(v120, v121);
      v123 = v120 + v121;
      if (v122)
      {
        goto LABEL_97;
      }

      v124 = v119;
      if (_swiftEmptyDictionarySingleton[3] >= v123)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v129 = v118;
          sub_10006DAF8();
          v118 = v129;
        }
      }

      else
      {
        sub_10006C1F8(v123, isUniquelyReferenced_nonNull_native);
        v118 = sub_100020DA8(v115, v114);
        if ((v124 & 1) != (v125 & 1))
        {
          goto LABEL_99;
        }
      }

      v108 &= v108 - 1;
      if (v124)
      {
        v110 = v118;

        *(_swiftEmptyDictionarySingleton[7] + v110) = v116;
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v118 >> 6) + 8] |= 1 << v118;
        v126 = (_swiftEmptyDictionarySingleton[6] + 16 * v118);
        *v126 = v115;
        v126[1] = v114;
        *(_swiftEmptyDictionarySingleton[7] + v118) = v116;
        v127 = _swiftEmptyDictionarySingleton[2];
        v122 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v122)
        {
          goto LABEL_98;
        }

        _swiftEmptyDictionarySingleton[2] = v128;
      }

      v104 = v111;
      v103 = v134;
    }

    while (1)
    {
      v111 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v111 >= v109)
      {

        v1 = v0;
        goto LABEL_91;
      }

      v108 = v105[v111];
      ++v104;
      if (v108)
      {
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *sub_10007A1BC(unsigned int a1)
{
  if (a1 != 2)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(a1, v2, v3);
  }

  if (BYTE1(a1) != 2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(SBYTE1(a1), v4, v5);
  }

  if (BYTE2(a1) != 2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(SBYTE2(a1), v6, v7);
  }

  if (HIBYTE(a1) != 2)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10003FC48(SHIBYTE(a1), v8, v9);
  }

  result = _swiftEmptyDictionarySingleton;
  if (!_swiftEmptyDictionarySingleton[2])
  {

    return 0;
  }

  return result;
}

id sub_10007A2F4(Class isa)
{
  v2 = [objc_opt_self() sharedConnection];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  if (isa)
  {
    sub_1000794A0(isa);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v9 = 0;
  v6 = [v3 applyRestrictionDictionary:isa overrideRestrictions:1 clientType:v4 clientUUID:v5 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v9];

  if (v6)
  {
    return v9;
  }

  v8 = v9;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_10007A4A8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_1000BC758 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10007A520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005A3C((v2 + 16), *(v2 + 40));
  v11 = [a1 dataRepresentation];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = *v10;
  sub_10005D95C(&v27);
  sub_100005A80(v12, v14);
  if (v28)
  {
    sub_100008748(&v27, v29);
    v16 = *sub_100005A3C(v29, v29[3]);
    v17 = sub_10005DA74();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = *(v5 + 24);
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 56))(&v9[v21], 1, 1, v22);
      *v9 = 1;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *a2 = a1;
      *(a2 + 8) = v19;
      *(a2 + 16) = v20;
      *(a2 + 24) = 0;
      v23 = type metadata accessor for AEAParticipant.Process(0);
      sub_10005EE44(v9, a2 + *(v23 + 24));
      (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
      v24 = a1;
      return sub_100003FB4(v29);
    }

    sub_100003FB4(v29);
  }

  else
  {
    sub_10007A7F8(&v27);
  }

  v26 = type metadata accessor for AEAParticipant.Process(0);
  return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
}

uint64_t sub_10007A7F8(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BC338, &qword_100085BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007A870()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1000BC760 = result;
  *algn_1000BC768 = v1;
  return result;
}

uint64_t sub_10007A8A0()
{
  sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  if (qword_1000B6548 != -1)
  {
    swift_once();
  }

  v1 = *algn_1000BC768;
  *(inited + 32) = qword_1000BC760;
  *(inited + 40) = v1;

  v2 = sub_100030F08(inited);
  swift_setDeallocating();
  result = sub_100053F94(inited + 32);
  qword_1000BC770 = v2;
  return result;
}

uint64_t sub_10007A96C()
{
  v0 = sub_100030F08(&off_1000A6140);
  result = swift_arrayDestroy();
  qword_1000BC778 = v0;
  return result;
}

uint64_t sub_10007A9B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject;
  v3 = *(v0 + OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject);

  CurrentValueSubject.send(completion:)();

  v4 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(v1 + v2);

  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAAuxiliaryParticipantAggregatorSource()
{
  result = qword_1000BC370;
  if (!qword_1000BC370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007AAE4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007AB80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_10007ABFC()
{
  v1 = *v0;
  _StringGuts.grow(_:)(25);

  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  return 0xD000000000000017;
}

unint64_t sub_10007ACB0()
{
  result = qword_1000BC428;
  if (!qword_1000BC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC428);
  }

  return result;
}

uint64_t sub_10007AD04()
{
  if (qword_1000B64C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC670;

  return v0;
}

unint64_t sub_10007AD80()
{
  result = qword_1000BC430;
  if (!qword_1000BC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC430);
  }

  return result;
}

uint64_t sub_10007AE0C()
{
  v1 = v0[24];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v4 = qword_1000BC5B8;
  v5 = objc_allocWithZone(AEAssessmentModeRestrictionEnforcerProxy);
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithMachServiceName:v7 queue:v6];
  v0[25] = v8;

  v0[2] = v0;
  v0[3] = sub_10007AFB0;
  v9 = swift_continuation_init();
  v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100026B9C;
  v0[13] = &unk_1000AC3C0;
  v0[14] = v9;
  [v8 shouldEndRestrictingForAssessmentModeWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10007AFB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10007B134;
  }

  else
  {
    v3 = sub_10007B0C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007B0C0()
{
  v1 = *(v0 + 200);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007B134()
{
  v22 = v0;
  v1 = v0[26];
  swift_willThrow();
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[24];
  v4 = type metadata accessor for Logger();
  sub_10000C370(v4, qword_1000BC578);
  sub_10007BF44(v3, (v0 + 10));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v8 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v8 = 136446466;
    v9 = v0[10];
    v10 = v0[11];

    sub_10007BF7C((v0 + 10));
    v11 = sub_100043D60(v9, v10, v21);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v12 = v0[20];
    v13 = v0[22];
    v14 = sub_100067820(v0[21]);
    v16 = sub_100043D60(v14, v15, v21);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to deactivate restriction %{public}s. Error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007BF7C((v0 + 10));
  }

  v18 = v0[25];
  v17 = v0[26];
  sub_10007ACB0();
  swift_allocError();
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_10007B390()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A778;

  return sub_10007ADEC();
}

double sub_10007B41C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v5 = *v1;
  v4 = v1[1];
  _StringGuts.grow(_:)(25);

  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);
  v7 = sub_10000DA08();

  if (v7 == 2 || (v7 & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v9 = v2[2];
    v8 = v2[3];
    *(a1 + 24) = &type metadata for AEAExternalSubsystemRestrictionDeactivation;
    *(a1 + 32) = &off_1000AC3A0;
    v10 = swift_allocObject();
    *a1 = v10;
    sub_10000859C((v2 + 5), (v10 + 7));
    v10[2] = v5;
    v10[3] = v4;
    v10[4] = 4;
    v10[5] = v9;
    v10[6] = v8;
  }

  return result;
}

uint64_t sub_10007B57C(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;

  return _swift_task_switch(sub_10007B610, 0, 0);
}

uint64_t sub_10007B610()
{
  v1 = *(v0 + 208);
  *(v0 + 216) = v1[2];
  *(v0 + 224) = v1[3];
  if (qword_1000B6460 != -1)
  {
    swift_once();
    v1 = *(v0 + 208);
  }

  v2 = *(v0 + 200);
  v3 = qword_1000BC5B8;
  v4 = objc_allocWithZone(AEAssessmentModeRestrictionEnforcerProxy);
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithMachServiceName:v6 queue:v5];
  *(v0 + 232) = v7;

  swift_getObjectType();
  v8 = *v1;
  *(v0 + 240) = *v1;
  v9 = v1[1];
  *(v0 + 248) = v9;
  _StringGuts.grow(_:)(25);

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);
  sub_10000D8C0(1);

  *(v0 + 80) = 0;
  v11 = [v2 persistWithError:v0 + 80];
  v12 = *(v0 + 80);
  if (v11)
  {
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10007B920;
    v13 = swift_continuation_init();
    *(v0 + 136) = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100026B9C;
    *(v0 + 104) = &unk_1000AC2B0;
    *(v0 + 112) = v13;
    v14 = v12;
    [v7 shouldBeginRestrictingForAssessmentModeWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v15 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10007B920()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10007BB84;
  }

  else
  {
    v3 = sub_10007BA5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007BA5C()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  [v3 invalidate];

  v7[3] = &type metadata for AEAExternalSubsystemRestrictionDeactivation;
  v7[4] = &off_1000AC3A0;
  v8 = swift_allocObject();
  *v7 = v8;
  sub_10000859C(v6 + 40, (v8 + 7));
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = 4;
  v8[5] = v5;
  v8[6] = v4;
  v10 = v0[1];

  return v10();
}

uint64_t sub_10007BB84()
{
  v21 = v0;
  v1 = *(v0 + 256);
  swift_willThrow();
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 208);
  v4 = type metadata accessor for Logger();
  sub_10000C370(v4, qword_1000BC578);
  sub_100077BAC(v3, v0 + 80);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);

    sub_100077C08(v0 + 80);
    v11 = sub_100043D60(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v12 = *(v0 + 160);
    v13 = *(v0 + 176);
    v14 = sub_100067820(*(v0 + 168));
    v16 = sub_100043D60(v14, v15, &v20);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to activate restriction %{public}s. Error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100077C08(v0 + 80);
  }

  v17 = *(v0 + 256);
  sub_10007ACB0();
  swift_allocError();
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10007BE10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_10007B57C(a1, a2);
}

uint64_t sub_10007BEEC()
{
  v1 = v0[3];

  v2 = v0[6];

  sub_100003FB4(v0 + 7);

  return _swift_deallocObject(v0, 96, 7);
}

__n128 sub_10007BFBC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10007C000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007C048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007C0EC()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: this is not implemented on iOS: runningApplicationsPublisher", v3, 2u);
  }

  v4 = sub_100003F6C(&qword_1000BC4E8, &qword_100086028);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PassthroughSubject.init()();
  sub_10007C224();
  v7 = Publisher.eraseToAnyPublisher()();

  return v7;
}

unint64_t sub_10007C224()
{
  result = qword_1000BC4F0;
  if (!qword_1000BC4F0)
  {
    sub_100004B50(&qword_1000BC4E8, &qword_100086028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC4F0);
  }

  return result;
}

BOOL sub_10007C288(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = 0;
    do
    {
      [a1 underlyingToken];
      v5 = *&v11[v4];
      if (v3)
      {
        [v3 underlyingToken];
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      v7 = v5 == *(&v9 + v4);
      v6 = v7;
      v7 = !v7 || v4 == 28;
      v4 += 4;
    }

    while (!v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id *sub_10007C3D0(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEAConcreteOSTransactionToken;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_10007C448(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

id *sub_10007C458(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEAConcreteRestrictedNetworkToken;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}