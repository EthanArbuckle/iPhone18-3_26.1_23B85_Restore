uint64_t sub_10003097C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_100030BD0(*(a1 + 48) + 56 * (v17 | (v16 << 6)), v18);
    sub_10002F018(v18, a2, a3, a4);
    result = sub_100030C2C(v18);
    if (v4)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100030A98(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v15[0] = *v13;
      v15[1] = v14;

      sub_10002FD8C(v15, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100030C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100030CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100030D28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030D68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100030DB4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100030E04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000F618;

  return sub_10002E33C(a1, v4, v5, v6, v7, v9, v8);
}

Swift::Int sub_100030F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B93F8, &unk_100083270);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

__n128 sub_100031070(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100031094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1000310DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003114C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003119C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100031264, v3, v2);
}

uint64_t sub_100031264()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  CATSerializer.cancelAllTasks()();
  if (*(v1 + 136))
  {
    v3 = *(v1 + 136);

    AnyCancellable.cancel()();
  }

  v4 = *(*(v0 + 16) + 144);
  if (v4)
  {
    [v4 releaseRestrictions];
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100031314(void (*a1)(void ***), uint64_t a2)
{
  v5 = *v2;

  sub_100031370(v5, a1, a2);
}

uint64_t sub_100031370(uint64_t a1, void (*a2)(void ***), uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10000CB28;
  *(v13 + 24) = v12;
  v14 = qword_1000B6460;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1000BC5B8;
  *v11 = qword_1000BC5B8;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if (v15)
  {
    v18 = *(a1 + 136);
    if (v18)
    {
      if (*(a1 + 144))
      {
        sub_10003176C();
        v19 = swift_allocError();
        *v20 = 0;
        aBlock = v19;
        LOBYTE(v24) = 1;
        swift_unknownObjectRetain();
        swift_errorRetain();
        a2(&aBlock);

        swift_unknownObjectRelease();
      }

      else
      {
        *(a1 + 144) = 1;
        swift_unknownObjectRetain();
        sub_10005A384();
        v21 = swift_allocObject();
        v21[2] = a1;
        v21[3] = sub_10000CB34;
        v21[4] = v13;
        v27 = sub_100031748;
        v28 = v21;
        aBlock = _NSConcreteStackBlock;
        v24 = 1107296256;
        v25 = sub_100063398;
        v26 = &unk_1000A86B0;
        v22 = _Block_copy(&aBlock);

        [v18 deactivateWithCompletion:v22];

        _Block_release(v22);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      aBlock = 0;
      LOBYTE(v24) = 0;
      a2(&aBlock);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000316D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031708()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003176C()
{
  result = qword_1000B9418;
  if (!qword_1000B9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9418);
  }

  return result;
}

uint64_t sub_1000317C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000318E0()
{
  sub_100032B7C();

  v1 = *(v0 + 24);

  sub_100019B28(v0 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken, &qword_1000B9608, &unk_100082268);
  v2 = *(v0 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAConcreteRunningBoardPrimitives.RunningApplicationMonitor()
{
  result = qword_1000B94F8;
  if (!qword_1000B94F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000319CC()
{
  sub_100033080();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100031A84(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for UUID();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v50 = v12;
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16, v19);
  v21 = (&v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v22 = qword_1000BC5B8;
  *v21 = qword_1000BC5B8;
  v23 = v17[13];
  v54 = enum case for DispatchPredicate.onQueue(_:);
  v53 = v23;
  v23(v21);
  v24 = v22;
  v25 = _dispatchPreconditionTest(_:)();
  v52 = v17[1];
  result = v52(v21, v16);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  UUID.init()();
  v27 = *(v55 + 16);
  v49 = v15;
  v28 = v15;
  v29 = v55;
  v47 = v27;
  v27(v7, v28, v8);
  (*(v29 + 56))(v7, 0, 1, v8);
  v48 = v8;
  v30 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
  swift_beginAccess();
  sub_1000331AC(v7, v2 + v30);
  swift_endAccess();
  v31 = *(v2 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs);
  v32 = v56;
  *(v2 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs) = v56;

  *v21 = v24;
  v53(v21, v54, v16);
  v33 = v24;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  result = v52(v21, v16);
  if ((v31 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34 = *(v2 + 24);
  CurrentValueSubject.value.getter();
  v35 = aBlock[0];

  v36 = sub_100033510(v35, v2);

  aBlock[0] = v36;
  CurrentValueSubject.send(_:)();

  v37 = *(v2 + 16);
  v38 = v51;
  v39 = v48;
  v40 = v49;
  v47(v51, v49, v48);
  v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v32;
  *(v42 + 24) = v2;
  (*(v29 + 32))(v42 + v41, v38, v39);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100033964;
  *(v43 + 24) = v42;
  aBlock[4] = sub_1000339E8;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032B28;
  aBlock[3] = &unk_1000A8758;
  v44 = _Block_copy(aBlock);

  [v37 updateConfiguration:v44];
  _Block_release(v44);
  (*(v29 + 8))(v40, v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_100031FBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100003F6C(&qword_1000B9670, &unk_100082278);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000821D0;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v12 = [objc_opt_self() predicateMatchingBundleIdentifiers:isa];

  *(v10 + 32) = v12;
  sub_100033A28();
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:v13];

  v14 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [a1 setStateDescriptor:v14];

  v15 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v6);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v7 + 32))(v17 + v16, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_100033B70;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032A88;
  aBlock[3] = &unk_1000A87D0;
  v18 = _Block_copy(aBlock);

  [a1 setUpdateHandler:v18];
  _Block_release(v18);
}

uint64_t sub_100032280(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a2;
  v34 = a3;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v31 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v31, v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  __chkstk_darwin(v10, v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v19 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v30[1] = qword_1000BC5B8;
  (*(v16 + 16))(v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v15);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  (*(v16 + 32))(v22 + v20, v19, v15);
  v24 = v33;
  v23 = v34;
  *(v22 + v21) = v33;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_100033CEC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A8820;
  v25 = _Block_copy(aBlock);

  v26 = v24;
  v27 = v23;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100033DF8(&qword_1000B8950, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
  v28 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v37 + 8))(v9, v28);
  (*(v35 + 8))(v14, v36);
}

uint64_t sub_100032680(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003F6C(qword_1000B9680, &qword_100082288);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v33 - v15;
  v17 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v33 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v33 = a4;
    (*(v7 + 16))(v25, a2, v6);
    (*(v7 + 56))(v25, 0, 1, v6);
    v28 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
    swift_beginAccess();
    v29 = *(v12 + 48);
    sub_100033D88(v25, v16);
    sub_100033D88(v27 + v28, &v16[v29]);
    v30 = *(v7 + 48);
    if (v30(v16, 1, v6) == 1)
    {
      sub_100019B28(v25, &qword_1000B9608, &unk_100082268);
      if (v30(&v16[v29], 1, v6) == 1)
      {
        sub_100019B28(v16, &qword_1000B9608, &unk_100082268);
LABEL_9:
        sub_100032DB4(v34, v33);
      }
    }

    else
    {
      sub_100033D88(v16, v22);
      if (v30(&v16[v29], 1, v6) != 1)
      {
        (*(v7 + 32))(v11, &v16[v29], v6);
        sub_100033DF8(&qword_1000B88A8, &type metadata accessor for UUID);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *(v7 + 8);
        v32(v11, v6);
        sub_100019B28(v25, &qword_1000B9608, &unk_100082268);
        v32(v22, v6);
        sub_100019B28(v16, &qword_1000B9608, &unk_100082268);
        if (v31)
        {
          goto LABEL_9;
        }
      }

      sub_100019B28(v25, &qword_1000B9608, &unk_100082268);
      (*(v7 + 8))(v22, v6);
    }

    sub_100019B28(v16, qword_1000B9680, &qword_100082288);
  }

  return result;
}

void sub_100032A88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_100032B28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100032B7C()
{
  v1 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = v19 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v12 = qword_1000BC5B8;
  *v11 = qword_1000BC5B8;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    [*(v0 + 16) invalidate];
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
    swift_beginAccess();
    sub_1000331AC(v5, v0 + v16);
    swift_endAccess();
    v17 = *(v0 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs);
    *(v0 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs) = &_swiftEmptySetSingleton;

    v18 = *(v0 + 24);
    v19[1] = &_swiftEmptySetSingleton;
    return CurrentValueSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100032DB4(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v11 = qword_1000BC5B8;
  *v10 = qword_1000BC5B8;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v13 = [a1 bundle];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 identifier];

      if (v15)
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        [a1 auditToken];
        v31 = v35;
        v32 = v34;
        v19 = objc_allocWithZone(AEAConcreteAuditToken);
        v34 = v32;
        v35 = v31;
        v20 = [v19 initWithAuditToken:&v34];
        v21 = *(v2 + 24);
        CurrentValueSubject.value.getter();
        v22 = [a2 state];
        if (v22 && (v23 = v22, v24 = [v22 isRunning], v23, v24))
        {

          sub_1000457F4(&v34, v16, v18, v20);
        }

        else
        {
          v25 = sub_100039DF4(v16, v18);
          sub_100033168(v25, v26, v27);
        }

        v28 = v33;
        v29 = *(v33 + 16);
        CurrentValueSubject.value.getter();
        v30 = *(v34 + 16);

        if (v29 != v30)
        {
          *&v34 = v28;
          CurrentValueSubject.send(_:)();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100033080()
{
  if (!qword_1000B9508)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B9508);
    }
  }
}

uint64_t sub_1000330D8()
{
  v2 = *(*v0 + 24);
  sub_100003F6C(&qword_1000B95F8, &qword_100082260);
  sub_100004EE0(&qword_1000B9600, &qword_1000B95F8, &qword_100082260);
  return Publisher.eraseToAnyPublisher()();
}

void sub_100033168(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1000331AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t *sub_10003321C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1000332B8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1000332B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v31 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = *(a4 + v31);
    if (*(v13 + 16))
    {
      v34 = v8;
      v28 = v10 | (v4 << 6);
      v14 = (*(a3 + 48) + 24 * v28);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = *(v13 + 40);
      Hasher.init(_seed:)();
      v33 = v17;

      String.hash(into:)();
      v19 = Hasher._finalize()();
      v20 = -1 << *(v13 + 32);
      v21 = v19 & ~v20;
      if ((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v13 + 48) + 16 * v21);
          v24 = *v23 == v15 && v23[1] == v16;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v25 = __OFADD__(v29++, 1);
        v8 = v34;
        if (v25)
        {
          __break(1u);
LABEL_26:

          sub_10004B748(a1, a2, v29, a3);
          return;
        }
      }

      else
      {
LABEL_5:

        v8 = v34;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_26;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100033510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v37 = v8;
    v38 = v3;
    v36 = &v36;
    __chkstk_darwin(v10, v11);
    v39 = &v36 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v9);
    v3 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v43 = 0;
    v44 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs;
    v15 = (v12 + 63) >> 6;
    v40 = v5;
    v41 = a2;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v3 << 6);
      v20 = *(a2 + v44);
      if (*(v20 + 16))
      {
        v46 = v14;
        v21 = *(v5 + 48);
        v42 = v19;
        v22 = (v21 + 24 * v19);
        v9 = *v22;
        v23 = v22[1];
        v24 = v22[2];
        v25 = *(v20 + 40);
        Hasher.init(_seed:)();
        v45 = v24;

        String.hash(into:)();
        v26 = Hasher._finalize()();
        v27 = -1 << *(v20 + 32);
        v28 = v26 & ~v27;
        if ((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (1)
          {
            v30 = (*(v20 + 48) + 16 * v28);
            v31 = *v30 == v9 && v30[1] == v23;
            if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v28 = (v28 + 1) & v29;
            if (((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          a2 = v41;
          v5 = v40;
          *&v39[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          v32 = __OFADD__(v43++, 1);
          v14 = v46;
          if (v32)
          {
            __break(1u);
LABEL_27:
            v33 = sub_10004B748(v39, v37, v43, v5);

            return v33;
          }
        }

        else
        {
LABEL_6:

          v5 = v40;
          a2 = v41;
          v14 = v46;
        }
      }
    }

    v17 = v3;
    while (1)
    {
      v3 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v3 >= v15)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v3);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();

  v33 = sub_10003321C(v35, v8, v5, a2);

  return v33;
}

uint64_t sub_100033898()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100033964(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_100031FBC(a1, v4, v5, v6);
}

uint64_t sub_1000339E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100033A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100033A28()
{
  result = qword_1000B9678;
  if (!qword_1000B9678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B9678);
  }

  return result;
}

uint64_t sub_100033A74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033AAC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100033B70(uint64_t a1, void *a2, void *a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_100032280(a1, a2, a3, v8, v9);
}

uint64_t sub_100033BFC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100033CEC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100032680(v4, v0 + v2, v5, v6);
}

uint64_t sub_100033D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9608, &unk_100082268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033E50(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_100033F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_100033F5C(a1, a2, a3);
}

char *sub_100033F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v4 = *v3;
  v5 = *(*v3 + 88);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v19 - v10;
  v12 = *(v4 + 104);
  v13 = *(v5 - 8);
  v14 = *(v13 + 56);
  v14(&v3[v12], 1, 1, v5);
  v15 = *(*v3 + 120);
  *&v3[v15] = static Subscribers.Demand.none.getter();
  *&v3[*(*v3 + 128)] = 0;
  (*(v13 + 32))(v11, v19, v5);
  v14(v11, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(&v3[v12], v11, v6);
  swift_endAccess();
  v16 = &v3[*(*v3 + 112)];
  v17 = v21;
  *v16 = v20;
  *(v16 + 1) = v17;
  return v3;
}

uint64_t sub_100034164(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = *(v1 + v3);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    goto LABEL_10;
  }

  static Subscribers.Demand.unlimited.getter();
  v5 = static Subscribers.Demand.== infix(_:_:)();
  v6 = static Subscribers.Demand.unlimited.getter();
  if (v5)
  {
LABEL_9:
    *(v1 + v3) = v6;
LABEL_10:
    swift_endAccess();
    return sub_1000343BC();
  }

  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v4 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 + a1;
  if (__OFADD__(v4, a1))
  {
LABEL_7:
    v6 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100034240()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v14 - v7;
  v9 = *(v1 + 128);
  v10 = *(v0 + v9);
  if (v10)
  {
    [v10 cancel];
    v11 = *(v0 + v9);
  }

  *(v0 + v9) = 0;
  swift_unknownObjectRelease();
  (*(*(v2 - 8) + 56))(v8, 1, 1, v2);
  v12 = *(*v0 + 104);
  swift_beginAccess();
  (*(v4 + 40))(v0 + v12, v8, v3);
  return swift_endAccess();
}

uint64_t sub_1000343BC()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  v2 = *(v0 + v1);
  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_4;
  }

  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if (v2)
  {
LABEL_4:
    v4 = *(*v0 + 128);
    if (*(v0 + v4))
    {
      return result;
    }

    v5 = sub_1000344B8();
    v6 = *(v0 + v4);
    *(v0 + v4) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v5 resume];
  }

  else
  {
    v7 = *(*v0 + 128);
    result = *(v0 + v7);
    if (!result)
    {
      return result;
    }

    [result cancel];
    v8 = *(v0 + v7);
    *(v0 + v7) = 0;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000344B8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0 + *(*v0 + 112);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v2 + 80);
  *(v7 + 32) = *(v1 + 96);
  *(v7 + 40) = v6;

  v8 = v5(sub_100034B48, v7);

  return v8;
}

uint64_t sub_1000345D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v28 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(*result + 104);
    swift_beginAccess();
    (*(v6 + 16))(v11, v18 + v19, v5);
    if ((*(v12 + 48))(v11, 1, a4) == 1)
    {

      return (*(v6 + 8))(v11, v5);
    }

    (*(v12 + 32))(v16, v11, a4);
    v20 = *(*v18 + 120);
    swift_beginAccess();
    v21 = *(v18 + v20);
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_11;
    }

    static Subscribers.Demand.unlimited.getter();
    result = static Subscribers.Demand.== infix(_:_:)();
    if (result)
    {
      v22 = static Subscribers.Demand.unlimited.getter();
LABEL_10:
      *(v18 + v20) = v22;
LABEL_11:
      swift_endAccess();
      v23 = dispatch thunk of Subscriber.receive(_:)();
      swift_beginAccess();
      v24 = *(v18 + v20);
      static Subscribers.Demand.unlimited.getter();
      if (static Subscribers.Demand.== infix(_:_:)())
      {
LABEL_20:
        v27 = swift_endAccess();
        sub_1000343BC(v27);

        return (*(v12 + 8))(v16, a4);
      }

      static Subscribers.Demand.unlimited.getter();
      v25 = static Subscribers.Demand.== infix(_:_:)();
      v26 = static Subscribers.Demand.unlimited.getter();
      if (v25)
      {
LABEL_19:
        *(v18 + v20) = v26;
        goto LABEL_20;
      }

      result = static Subscribers.Demand.== infix(_:_:)();
      if (result)
      {
LABEL_17:
        v26 = static Subscribers.Demand.unlimited.getter();
        goto LABEL_19;
      }

      if (((v24 | v23) & 0x8000000000000000) == 0)
      {
        v26 = v24 + v23;
        if (!__OFADD__(v24, v23))
        {
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v21 < 0)
    {
      __break(1u);
    }

    else if (v21)
    {
      v22 = v21 - 1;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_10003492C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 112) + 8);

  v5 = *(v0 + *(*v0 + 128));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000349EC()
{
  v0 = *sub_10003492C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100034AD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034B10()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100034B58()
{
  result = qword_1000B9708;
  if (!qword_1000B9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9708);
  }

  return result;
}

uint64_t sub_100034BAC()
{
  if (qword_1000B64B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC660;

  return v0;
}

uint64_t sub_100034C14(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return _swift_task_switch(sub_100034C34, 0, 0);
}

uint64_t sub_100034C34()
{
  sub_100026B2C(*(v0 + 296) + 104, v0 + 232);
  if (*(v0 + 256))
  {
    *(v0 + 224) = *(v0 + 280);
    v1 = *(v0 + 264);
    *(v0 + 192) = *(v0 + 248);
    *(v0 + 208) = v1;
    *(v0 + 176) = *(v0 + 232);
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);
    sub_100005A3C((v0 + 176), v2);
    v4 = (*(v3 + 48))(v2, v3);
    v6 = v5;
    v7 = objc_allocWithZone(LSApplicationRecord);
    v10 = sub_10005B030(v4, v6, 0);
    v11 = [v10 localizedName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1000B64F0 != -1)
    {
      swift_once();
    }

    sub_100003F6C(&qword_1000B9718, &unk_100083BF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000807D0;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10003549C();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    v9 = String.init(format:_:)();
    v8 = v16;
    sub_100030C2C(v0 + 176);
  }

  else
  {
    sub_1000353E0(v0 + 232);
    if (qword_1000B64F8 != -1)
    {
      swift_once();
    }

    v9 = qword_1000BC6C8;
    v8 = unk_1000BC6D0;
  }

  if (qword_1000B64E8 != -1)
  {
    swift_once();
  }

  v18 = qword_1000BC6A8;
  v17 = unk_1000BC6B0;
  v19 = qword_1000B6500;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_1000BC6D8;
  v20 = unk_1000BC6E0;
  v22 = qword_1000B6508;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1000BC6E8;
  v23 = unk_1000BC6F0;
  *(v0 + 96) = v18;
  *(v0 + 104) = v17;
  *(v0 + 112) = v9;
  *(v0 + 120) = v8;
  *(v0 + 128) = v21;
  *(v0 + 136) = v20;
  *(v0 + 144) = v24;
  *(v0 + 152) = v23;
  *(v0 + 160) = 16777473;
  *(v0 + 168) = 0x404E000000000000;
  v25 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v25;
  v26 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v26;
  *(v0 + 80) = *(v0 + 160);

  v27 = swift_task_alloc();
  *(v0 + 304) = v27;
  *v27 = v0;
  v27[1] = sub_100034FD0;

  return sub_100010108(v0 + 16);
}

uint64_t sub_100034FD0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;

  if (v1)
  {
    sub_100035448(v4 + 96);
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 312) = a1;
    sub_100035448(v4 + 96);

    return _swift_task_switch(sub_10003512C, 0, 0);
  }
}

uint64_t sub_10003512C()
{
  if (*(v0 + 312))
  {
    sub_100034B58();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v2 = *(v0 + 288);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000351DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_100034C14(a1);
}

unint64_t sub_100035288()
{
  result = qword_1000B9710;
  if (!qword_1000B9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9710);
  }

  return result;
}

uint64_t sub_1000352DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000352F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100035320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100035368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000353E0(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003549C()
{
  result = qword_1000B9720[0];
  if (!qword_1000B9720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B9720);
  }

  return result;
}

uint64_t Publishers.AEACombineLatestMany.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v59 = type metadata accessor for Subscribers.Completion();
  v57 = *(v59 - 8);
  v13 = *(v57 + 64);
  __chkstk_darwin(v59, v14);
  v56 = v51 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v69 = a3;
  v70 = v16;
  v71 = AssociatedTypeWitness;
  v72 = a4;
  WitnessTable = a5;
  v74 = a6;
  v61 = _s20AEACombineLatestManyV5InnerC4SideVMa();
  v55 = *(v61 - 8);
  v17 = *(v55 + 64);
  v19 = __chkstk_darwin(v61, v18);
  v60 = (v51 - v20);
  v53 = *(a3 - 8);
  v21 = *(v53 + 64);
  __chkstk_darwin(v19, v22);
  v58 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = type metadata accessor for Optional();
  v52 = *(v65 - 8);
  v24 = *(v52 + 64);
  v26 = __chkstk_darwin(v65, v25);
  v64 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v30 = (v51 - v29);
  v69 = a3;
  v70 = v16;
  v54 = v16;
  v71 = AssociatedTypeWitness;
  v72 = a4;
  v63 = a5;
  WitnessTable = a5;
  v74 = a6;
  v51[1] = a6;
  v31 = _s20AEACombineLatestManyV5InnerCMa();

  v32 = Array.count.getter();
  v33 = sub_100037D80(a1, v32);
  v69 = a2;
  v62 = a3;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    v72 = v31;
    WitnessTable = swift_getWitnessTable();
    v69 = v33;

    dispatch thunk of Subscriber.receive(subscription:)();
    sub_100003FB4(&v69);
    v69 = static Array._allocateUninitialized(_:)();
    dispatch thunk of Subscriber.receive(_:)();

    v34 = v56;
    (*(*(AssociatedTypeWitness - 8) + 56))(v56, 1, 1, AssociatedTypeWitness);
    dispatch thunk of Subscriber.receive(completion:)();

    return (*(v57 + 8))(v34, v59);
  }

  else
  {
    v59 = v33;
    v69 = a2;
    swift_getWitnessTable();
    Sequence.enumerated()();

    v67 = v68;
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    v57 = type metadata accessor for EnumeratedSequence.Iterator();
    v36 = (v52 + 32);
    v37 = TupleTypeMetadata2;
    v56 = (TupleTypeMetadata2 - 8);
    v38 = (v53 + 32);
    v39 = (v55 + 8);
    for (i = (v53 + 8); ; (*i)(v46, v50))
    {
      v41 = v64;
      EnumeratedSequence.Iterator.next()();
      (*v36)(v30, v41, v65);
      v42 = (*(*(v37 - 8) + 48))(v30, 1, v37);
      v43 = v59;
      if (v42 == 1)
      {
        break;
      }

      v44 = *v30;
      v45 = v30 + *(v37 + 48);
      v46 = v58;
      v47 = v62;
      (*v38)(v58, v45, v62);

      v48 = v60;
      sub_100035BA0(v44, v43, v60);
      v49 = v61;
      swift_getWitnessTable();
      Publisher.subscribe<A>(_:)();
      (*v39)(v48, v49);
      v50 = v47;
      v37 = TupleTypeMetadata2;
    }
  }
}

uint64_t sub_100035BA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = a2;
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v4 = a3 + *(_s20AEACombineLatestManyV5InnerC4SideVMa() + 72);
  return CombineIdentifier.init()();
}

uint64_t sub_100035C18@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003F6C(&qword_1000B98A8, &unk_1000828D0);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = v25 - v14;
  v16 = *(*(a1 - 1) + 64);
  __chkstk_darwin(v13, v17);
  (*(v19 + 16))(v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_100003F6C(&qword_1000B98B0, &unk_100085130);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000807D0;
  *(v20 + 32) = 0xD000000000000012;
  *(v20 + 40) = 0x8000000100089510;
  v21 = *(v2 + 8);
  *(v20 + 72) = type metadata accessor for CombineIdentifier();
  sub_100004F80((v20 + 48));
  v22 = a1[2];
  v26 = a1[1];
  v27 = v22;
  v28 = a1[3];
  _s20AEACombineLatestManyV5InnerCMa();
  swift_getWitnessTable();
  CustomCombineIdentifierConvertible<>.combineIdentifier.getter();
  v23 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  (*(v5 + 104))(v9, enum case for Mirror.AncestorRepresentation.generated(_:), v4);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void sub_100035EE4(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for String;
  strcpy(a1, "CombineLatest");
  *(a1 + 14) = -4864;
}

void sub_100035F18(char *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1000363C4(a1, v2);
}

void sub_100035F40(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1000366E8(a1, v2);
}

void sub_100035F68(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_100036D30(a1, v2);
}

uint64_t sub_100035FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003603C()
{
  v1 = *v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003F6C(&qword_1000B98A8, &unk_1000828D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v16 - v11;
  v17 = v0;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v1[6];
  v16[0] = v1[5];
  v16[1] = v14;
  v16[2] = v1[7];
  _s20AEACombineLatestManyV5InnerCMa();
  (*(v3 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v2);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void *sub_100036218(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4[2] = v2;
      v5 = (v4 + 4);
      do
      {
        sub_1000382AC(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_1000382E4(v3);
    return v4;
  }

  return result;
}

uint64_t *sub_10003629C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 184));

  (*(*(*(v1 + 104) - 8) + 8))(v0 + *(*v0 + 128));
  v3 = *(v0 + *(*v0 + 136));

  v4 = *(v0 + *(*v0 + 144));

  return v0;
}

uint64_t sub_100036370()
{
  v0 = *sub_10003629C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000363C4(char *a1, uint64_t a2)
{
  v7 = *v2;
  if (*(v2 + *(*v2 + 176)) <= a2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2;
  v5 = a1;
  v3 = *(v2 + *(v7 + 184));
  os_unfair_lock_lock(v3);
  v8 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + v8[20]) & 1) != 0 || (*(v2 + v8[21]))
  {
    goto LABEL_8;
  }

  v6 = v8[18];
  swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v9 = *(v2 + v6);
  if (*(v9 + 16) <= v4)
  {
    goto LABEL_24;
  }

  sub_1000382AC(v9 + 40 * v4 + 32, &v19);
  v10 = *&v20[8];
  sub_1000382E4(&v19);
  if (v10)
  {
LABEL_8:
    os_unfair_lock_unlock(v3);
    v11 = *(v5 + 4);
    sub_100005A3C(v5, *(v5 + 3));
    v12 = *(v11 + 8);
    dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    sub_10000859C(v5, &v19);
    swift_beginAccess();
    v5 = *(v2 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v6) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (*(v5 + 2) > v4)
    {
      v14 = (v5 + 32);
      sub_100038314(&v19, &v5[40 * v4 + 32]);
      *(v2 + v6) = v5;
      swift_endAccess();
      v4 = *(v5 + 2);

      if (!v4)
      {
LABEL_19:

        os_unfair_lock_unlock(v3);
        v15 = *(*v2 + 128);
        v16 = *(v7 + 120);
        v17 = *(v7 + 80);
        *v20 = *(v7 + 96);
        v18 = *(v7 + 104);
        v19 = v17;
        *&v20[8] = v18;
        v21 = v16;
        *&v20[8] = _s20AEACombineLatestManyV5InnerCMa();
        *&v20[16] = swift_getWitnessTable();
        *&v19 = v2;

        dispatch thunk of Subscriber.receive(subscription:)();
        sub_100003FB4(&v19);
        return;
      }

      v6 = 0;
      while (v6 < *(v5 + 2))
      {
        sub_1000382AC(v14, &v19);
        v22[0] = v19;
        v22[1] = *v20;
        v23 = *&v20[16];
        if (*&v20[8] != 1)
        {
          if (!*&v20[8])
          {

            os_unfair_lock_unlock(v3);
            return;
          }

          sub_1000382E4(v22);
        }

        ++v6;
        v14 += 40;
        if (v4 == v6)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v5 = sub_1000379FC(v5);
      *(v2 + v6) = v5;
    }

    __break(1u);
  }
}

void sub_1000366E8(uint64_t a1, int64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v47 - v12;
  if (*(v2 + v5[22]) <= a2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = *(v2 + v6[23]);
  os_unfair_lock_lock(v14);
  v15 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + *(v15 + 160)) & 1) != 0 || (*(v2 + *(v15 + 168)))
  {
    os_unfair_lock_unlock(v14);

    goto LABEL_7;
  }

  v16 = *(v7 - 8);
  (*(v16 + 16))(v13, a1, v7);
  (*(v16 + 56))(v13, 0, 1, v7);
  v17 = a2;
  v18 = *(*v2 + 136);
  swift_beginAccess();
  v54 = type metadata accessor for Array();
  v19 = v2;
  Array._makeMutableAndUnique()();
  v20 = *(v2 + v18);
  sub_1000379A8(v17, v20);
  v22 = *(v9 + 40);
  v21 = v9 + 40;
  v23 = v20 + ((*(v21 + 40) + 32) & ~*(v21 + 40));
  v24 = *(v21 + 32);
  v50 = v17;
  v22(v23 + v24 * v17, v13, v8);
  v25 = swift_endAccess();
  v53 = &v47;
  v52 = v19;
  v51 = v18;
  *v58 = *(v19 + v18);
  __chkstk_darwin(v25, v26);
  v49 = v6[10];
  *(&v47 - 6) = v49;
  *(&v47 - 5) = v7;
  v27 = v6[13];
  v48 = v6[12];
  *(&v47 - 4) = v48;
  *(&v47 - 3) = v27;
  v29 = v6[14];
  v28 = v6[15];
  *(&v47 - 2) = v29;
  *(&v47 - 1) = v28;

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v20) = Sequence.allSatisfy(_:)();

  if ((v20 & 1) == 0)
  {
    os_unfair_lock_unlock(v14);
    goto LABEL_7;
  }

  v53 = &v47;
  v47 = WitnessTable;
  v33 = v52;
  *v58 = *(v52 + v51);
  __chkstk_darwin(v31, v32);
  *(&v47 - 6) = v49;
  *(&v47 - 5) = v7;
  *(&v47 - 4) = v48;
  *(&v47 - 3) = v27;
  *(&v47 - 2) = v29;
  *(&v47 - 1) = v28;

  v34 = Sequence.compactMap<A>(_:)();

  os_unfair_lock_unlock(v14);
  v35 = *(*v33 + 128);
  *v58 = v34;
  v36 = dispatch thunk of Subscriber.receive(_:)();

  static Subscribers.Demand.unlimited.getter();
  v37 = static Subscribers.Demand.== infix(_:_:)();
  v38 = v50;
  if ((v37 & 1) == 0)
  {
    if ((v36 & 0x8000000000000000) == 0)
    {
      if (v36)
      {
        goto LABEL_12;
      }

LABEL_7:
      static Subscribers.Demand.none.getter();
      return;
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_12:
  os_unfair_lock_lock(v14);
  v39 = v52;
  v40 = *(*v52 + 144);
  swift_beginAccess();
  v41 = *(v39 + v40);

  os_unfair_lock_unlock(v14);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = v41 + 32;
    do
    {
      if (v43 >= *(v41 + 16))
      {
        goto LABEL_26;
      }

      *v58 = v43;
      sub_1000382AC(v44, &v58[8]);
      if (*(&v59[0] + 1) == 2)
      {
        break;
      }

      v46 = *v58;
      *v58 = *&v58[8];
      *&v58[16] = *&v59[0];
      v59[0] = *(v59 + 8);
      v45 = v58;
      if (v46 != v38)
      {
        sub_1000382AC(v58, &v55);
        if (v56 > 1)
        {
          sub_100008748(&v55, v57);
          sub_100005A3C(v57, v57[3]);
          dispatch thunk of Subscription.request(_:)();
          sub_1000382E4(v58);
          sub_100003FB4(v57);
          goto LABEL_16;
        }

        sub_1000382E4(v58);
        v45 = &v55;
      }

      sub_1000382E4(v45);
LABEL_16:
      ++v43;
      v44 += 40;
    }

    while (v42 != v43);
  }
}

void sub_100036D30(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 120);
  v8 = *(*v2 + 104);
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Subscribers.Completion();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v28 - v17;
  v19 = *(v2 + *(v5 + 184));
  os_unfair_lock_lock(v19);
  v20 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (v21 = *(v20 + 160), (*(v2 + v21)) || (*(v2 + *(v20 + 168)))
  {

LABEL_6:
    os_unfair_lock_unlock(v19);
    return;
  }

  v29 = *(v20 + 168);
  (*(v10 + 16))(v18, a1, v9);
  v28 = *(v6 - 8);
  if ((*(v28 + 48))(v18, 1, v6) != 1)
  {
    *(v2 + v21) = 1;
    sub_100037100(a1, a2);
    (*(v10 + 8))(v18, v9);
    return;
  }

  v32 = 0uLL;
  *v33 = 0;
  *&v33[8] = xmmword_1000807B0;
  v22 = *(*v2 + 144);
  swift_beginAccess();
  v23 = *(v2 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v22) = v23;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = sub_1000379FC(v23);
  *(v2 + v22) = v23;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v23 + 2) <= a2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v25 = (v23 + 32);
  sub_100038314(&v32, &v23[40 * a2 + 32]);
  *(v2 + v22) = v23;
  swift_endAccess();
  v26 = *(v23 + 2);
  if (v26)
  {
    while (1)
    {
      sub_1000382AC(v25, &v32);
      v30[0] = v32;
      v30[1] = *v33;
      v31 = *&v33[16];
      if (*&v33[8] != 1)
      {
        break;
      }

      v25 += 40;
      if (!--v26)
      {
        goto LABEL_14;
      }
    }

    if (*&v33[8])
    {
      sub_1000382E4(v30);
    }

    goto LABEL_6;
  }

LABEL_14:
  v27 = v28;
  *(v2 + v29) = 1;
  (*(v27 + 56))(v15, 1, 1, v6);
  sub_100037100(v15, a2);
  (*(v10 + 8))(v15, v9);
}

void sub_100037100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31[1] = a1;
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v31 - v11;
  (*(*(v6 - 8) + 56))(v31 - v11, 1, 1, v6);
  v13 = *(v3 + *(*v3 + 176));
  v14 = sub_100037A10(v12, v13, v7);
  (*(v8 + 8))(v12, v7);
  v15 = *(*v3 + 136);
  swift_beginAccess();
  v16 = *(v3 + v15);
  *(v3 + v15) = v14;

  v17 = *(*v3 + 144);
  swift_beginAccess();
  v18 = *(v3 + v17);
  memset(v35, 0, 40);

  v19 = sub_100036218(v35, v13);
  v20 = *(v3 + v17);
  *(v3 + v17) = v19;

  os_unfair_lock_unlock(*(v3 + *(*v3 + 184)));
  v21 = *(v18 + 16);
  if (!v21)
  {
LABEL_11:

    v28 = *(v5 + 104);
    v29 = *(v5 + 120);
    v30 = v3 + *(*v3 + 128);
    dispatch thunk of Subscriber.receive(completion:)();
    return;
  }

  v22 = 0;
  v23 = v18 + 32;
  while (v22 < *(v18 + 16))
  {
    *v35 = v22;
    sub_1000382AC(v23, &v35[8]);
    if (*&v35[32] == 2)
    {
      goto LABEL_11;
    }

    v25 = *v35;
    *v35 = *&v35[8];
    *&v35[16] = *&v35[24];
    *&v35[24] = *&v35[32];
    v24 = v35;
    if (v25 != a2)
    {
      sub_1000382AC(v35, &v32);
      if (v33 > 1)
      {
        sub_100008748(&v32, v34);
        v26 = v34[4];
        sub_100005A3C(v34, v34[3]);
        v27 = *(v26 + 8);
        dispatch thunk of Cancellable.cancel()();
        sub_1000382E4(v35);
        sub_100003FB4(v34);
        goto LABEL_5;
      }

      sub_1000382E4(v35);
      v24 = &v32;
    }

    sub_1000382E4(v24);
LABEL_5:
    ++v22;
    v23 += 40;
    if (v21 == v22)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100037448()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v23 - v7;
  v9 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v9);
  v10 = *(*v0 + 152);
  if (*(v0 + v10))
  {

    os_unfair_lock_unlock(v9);
  }

  else
  {
    v11 = *(*v0 + 144);
    swift_beginAccess();
    v12 = *(v0 + v11);
    *(v0 + v10) = 1;
    memset(v25, 0, sizeof(v25));
    v26 = xmmword_1000807B0;
    v13 = *(v0 + *(*v0 + 176));

    v14 = sub_100036218(v25, v13);
    v15 = *(v0 + v11);
    *(v0 + v11) = v14;

    (*(*(v2 - 8) + 56))(v8, 1, 1, v2);
    v16 = sub_100037A10(v8, v13, v3);
    (*(v4 + 8))(v8, v3);
    v17 = *(*v0 + 136);
    swift_beginAccess();
    v18 = *(v0 + v17);
    *(v0 + v17) = v16;

    os_unfair_lock_unlock(v9);
    v19 = *(v12 + 16);
    if (v19)
    {
      v20 = v12 + 32;
      do
      {
        sub_1000382AC(v20, &v23);
        if (v24 <= 1)
        {
          sub_1000382E4(&v23);
        }

        else
        {
          sub_100008748(&v23, v25);
          v21 = *(&v26 + 1);
          sub_100005A3C(v25, v26);
          v22 = *(v21 + 8);
          dispatch thunk of Cancellable.cancel()();
          sub_100003FB4(v25);
        }

        v20 += 40;
        --v19;
      }

      while (v19);
    }
  }
}

void sub_100037744(uint64_t a1)
{
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    return;
  }

LABEL_4:
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v3);
  v4 = *v1;
  if (*(v1 + *(*v1 + 152)) & 1) != 0 || (*(v1 + v4[20]) & 1) != 0 || (*(v1 + v4[21]))
  {

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v5 = v4[18];
    swift_beginAccess();
    v6 = *(v1 + v5);

    os_unfair_lock_unlock(v3);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_1000382AC(v8, &v9);
        if (v10 > 1)
        {
          sub_100008748(&v9, v11);
          sub_100005A3C(v11, v11[3]);
          dispatch thunk of Subscription.request(_:)();
          sub_100003FB4(v11);
        }

        else
        {
          sub_1000382E4(&v9);
        }

        v8 += 40;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t sub_1000379A8(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100037A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t *sub_100037B14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v17 - v11;
  *(v2 + *(v5 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  *(v2 + *(*v2 + 168)) = 0;
  v13 = *(*v2 + 184);
  v14 = swift_slowAlloc();
  *(v2 + v13) = v14;
  *v14 = 0;
  (*(*(*(v5 + 104) - 8) + 16))(v2 + *(*v2 + 128), a1);
  *(v2 + *(*v2 + 176)) = a2;
  (*(*(v6 - 8) + 56))(v12, 1, 1, v6);
  v15 = sub_100037A10(v12, a2, v7);
  (*(v8 + 8))(v12, v7);
  *(v2 + *(*v2 + 136)) = v15;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  *(v2 + *(*v2 + 144)) = sub_100036218(v17, a2);
  return v2;
}

uint64_t *sub_100037D80(uint64_t a1, uint64_t a2)
{
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v5 = _s20AEACombineLatestManyV5InnerCMa();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_100037B14(a1, a2);
}

uint64_t sub_100037DEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100037E40(uint64_t a1)
{
  v1 = *(a1 + 104);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100037F0C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100037F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100037F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_100037FDC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100038018(_OWORD *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  result = _s20AEACombineLatestManyV5InnerCMa();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CombineIdentifier();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000380D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CombineIdentifier();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100038194(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CombineIdentifier();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003828C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(a2 + 40);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1000383A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t sub_10003841C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005A3C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
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

uint64_t sub_100038518(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_100038538, 0, 0);
}

uint64_t sub_100038538()
{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[21] = v1;
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v1;
    v5 = String._bridgeToObjectiveC()();
    v0[22] = v5;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000386E0;
    v6 = swift_continuation_init();
    v0[17] = sub_100003F6C(&qword_1000B9958, &qword_100082918);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10003841C;
    v0[13] = &unk_1000A8C58;
    v0[14] = v6;
    [v4 openApplication:v5 withOptions:0 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000386E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100038864;
  }

  else
  {
    v3 = sub_1000387F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000387F0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100038864()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1000388F8()
{
  v1 = v0;
  v2 = (v0 + 16);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = *(v0 + 24);
    *v2 = 0;
    v2[1] = 0;
    v3();
    sub_10000858C(v3);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v1 + 24);
  sub_10000858C(v5);

  return swift_deallocClassInstance();
}

uint64_t sub_100038A14()
{
  v1 = sub_100003F6C(&qword_1000B7BA0, &qword_100080458);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v17 - v4;
  v18 = sub_100003F6C(&qword_1000B9B68, &qword_1000829C0);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18, v8);
  v10 = &v17 - v9;
  v19 = *(v0 + 24);
  v11 = qword_1000B6460;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1000BC5B8;
  v20 = qword_1000BC5B8;
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = v12;
  sub_100003F6C(&qword_1000B9B70, &qword_1000829C8);
  sub_100022884(0, &qword_1000B7BC8, OS_dispatch_queue_serial_ptr);
  sub_100004EE0(&qword_1000B9B78, &qword_1000B9B70, &qword_1000829C8);
  sub_10003A5F8();
  Publisher.receive<A>(on:options:)();
  sub_100019B28(v5, &qword_1000B7BA0, &qword_100080458);

  sub_100004EE0(qword_1000B9B80, &qword_1000B9B68, &qword_1000829C0);

  v15 = v18;
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v10, v15);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t *sub_100038D78(uint64_t *result, uint64_t a2)
{
  v44 = *result;
  v3 = result[2];
  v4 = *(v3 + 16);
  if (v4)
  {
    result = swift_beginAccess();
    v5 = (v3 + 40);
    do
    {
      v6 = *(a2 + 48);
      if (*(v6 + 16))
      {
        v7 = *(v5 - 1);
        v8 = *v5;
        sub_10001C9CC(v7, *v5);

        v9 = sub_100020F6C(v7, v8);
        if (v10)
        {
          sub_100030BD0(*(v6 + 56) + 56 * v9, &v46);

          v50 = v46;
          v51 = v47;
          v52 = v48;
          v53 = v49;
          swift_beginAccess();
          v11 = *(a2 + 48);
          v12 = sub_100020F6C(v7, v8);
          if (v13)
          {
            v14 = v12;
            v15 = *(a2 + 48);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v17 = *(a2 + 48);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10006E09C();
            }

            sub_100005A80(*(*(v17 + 48) + 16 * v14), *(*(v17 + 48) + 16 * v14 + 8));
            v18 = *(v17 + 56) + 56 * v14;
            v20 = *(v18 + 16);
            v19 = *(v18 + 32);
            v21 = *v18;
            v49 = *(v18 + 48);
            v47 = v20;
            v48 = v19;
            v46 = v21;
            sub_10005177C(v14, v17);
            *(a2 + 48) = v17;
          }

          else
          {
            v49 = 0;
            v47 = 0u;
            v48 = 0u;
            v46 = 0u;
          }

          sub_100019B28(&v46, &qword_1000BBFF0, &qword_100081B30);
          swift_endAccess();
          v22 = *(&v51 + 1);
          v23 = v52;
          sub_100005A3C(&v50, *(&v51 + 1));
          v24 = (*(v23 + 40))(v22, v23);
          if (qword_1000B6420 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_10000C370(v25, qword_1000BC518);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 67240192;
            *(v28 + 4) = v24;
            _os_log_impl(&_mh_execute_header, v26, v27, "Removing PID %{public}d from exclusive frontmost list", v28, 8u);
          }

          [*(a2 + 16) stopFrontmostForPID:v24];
          swift_beginAccess();
          sub_100039FBC(v24);
          swift_endAccess();
          sub_1000394A0();
          sub_100005A80(v7, v8);
          result = sub_100030C2C(&v50);
        }

        else
        {
          sub_100005A80(v7, v8);
        }
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v29 = *(v44 + 16);
  if (v29)
  {
    v30 = v44 + 32;
    v31 = *(a2 + 16);
    do
    {
      sub_100030BD0(v30, &v50);
      v32 = *(&v51 + 1);
      v33 = v52;
      sub_100005A3C(&v50, *(&v51 + 1));
      v34 = (*(v33 + 40))(v32, v33);
      v36 = *(&v51 + 1);
      v35 = v52;
      sub_100005A3C(&v50, *(&v51 + 1));
      v37 = (*(v35 + 24))(v36, v35);
      v39 = v38;
      sub_100030BD0(&v50, &v46);
      swift_beginAccess();
      sub_10003FD34(&v46, v37, v39);
      swift_endAccess();
      swift_beginAccess();
      sub_1000459D0(v45, v34);
      swift_endAccess();
      sub_1000394A0();
      if (qword_1000B6420 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000C370(v40, qword_1000BC518);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67240192;
        *(v43 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v41, v42, "Adding PID %{public}d to exclusive frontmost list", v43, 8u);
      }

      [v31 startFrontmostForPID:v34];
      result = sub_100030C2C(&v50);
      v30 += 56;
      --v29;
    }

    while (v29);
  }

  return result;
}

void sub_1000392AC()
{
  v1 = v0;
  if (qword_1000B6420 != -1)
  {
LABEL_16:
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Removing all exclusive frontmost processes", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 56);
  *(v1 + 56) = &_swiftEmptySetSingleton;
  v7 = sub_1000226C4(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v8 = *(v1 + 48);
  *(v1 + 48) = v7;

  v9 = 0;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 56);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    while (1)
    {
      v14 = v9;
LABEL_12:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      [*(v1 + 16) stopFrontmostForPID:*(*(v6 + 48) + ((v14 << 8) | (4 * v15)))];
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v6 + 56 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      goto LABEL_12;
    }
  }

  sub_1000394A0();
}

void sub_1000394A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 56);
    v3 = *(v2 + 16);
    if (v3)
    {
      v35 = _swiftEmptyArrayStorage;
      v32 = v1;
      swift_unknownObjectRetain();

      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = _HashTable.startBucket.getter();
      v7 = 0;
      v33 = v3;
      while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        v10 = *(v2 + 36);
        [objc_allocWithZone(NSNumber) initWithInt:*(*(v2 + 48) + 4 * v6)];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = v35[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = 1 << *(v2 + 32);
        if (v6 >= v8)
        {
          goto LABEL_29;
        }

        v12 = *(v4 + 8 * v9);
        if ((v12 & (1 << v6)) == 0)
        {
          goto LABEL_30;
        }

        if (v10 != *(v2 + 36))
        {
          goto LABEL_31;
        }

        v13 = v12 & (-2 << (v6 & 0x3F));
        if (v13)
        {
          v8 = __clz(__rbit64(v13)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v9 << 6;
          v15 = v9 + 1;
          v16 = (v2 + 64 + 8 * v9);
          while (v15 < (v8 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_100019F1C(v6, v10, 0);
              v8 = __clz(__rbit64(v17)) + v14;
              goto LABEL_5;
            }
          }

          sub_100019F1C(v6, v10, 0);
        }

LABEL_5:
        ++v7;
        v6 = v8;
        if (v7 == v33)
        {

          v19 = v35;
          v1 = v32;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
      swift_unknownObjectRetain();
      v19 = _swiftEmptyArrayStorage;
LABEL_20:
      sub_100039938(v19);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = String._bridgeToObjectiveC()();
      [v1 setArray:isa forKey:v21];

      v35 = 0;
      if ([v1 persistWithError:&v35])
      {
        v22 = v35;
        swift_unknownObjectRelease();
        return;
      }

      v23 = v35;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000B6420 == -1)
      {
        goto LABEL_23;
      }
    }

    swift_once();
LABEL_23:
    v24 = type metadata accessor for Logger();
    sub_10000C370(v24, qword_1000BC518);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136446210;
      swift_getErrorValue();
      v29 = sub_100067820(v34);
      v31 = sub_100043D60(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to persist frontmost app scratchpad. Error %{public}s", v27, 0xCu);
      sub_100003FB4(v28);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

char *sub_100039938(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10004A99C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100022884(0, &qword_1000B7890, NSNumber_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10004A99C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100010B20(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100022884(0, &qword_1000B7890, NSNumber_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10004A99C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100010B20(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100039B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_10004A99C(0, v1, 0);
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
        sub_10004A99C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100010B20(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100039C34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_100039CB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100048928();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10003A0B8(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_100039DF4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v25 = v2;
  v10 = ~v8;
  while (1)
  {
    v13 = (*(v5 + 48) + 24 * v9);
    v14 = v13[2];
    v15 = *v13 == a1 && v13[1] == a2;
    if (v15 || (v16 = v13[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      sub_100022884(0, &qword_1000B8878, NSObject_ptr);

      v11 = v14;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004922C();
    v20 = v26;
  }

  v21 = (*(v20 + 48) + 24 * v9);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  sub_10003A27C(v9);
  result = v22;
  *v25 = v26;
  return result;
}

unint64_t sub_100039FBC(int a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = static Hasher._hash(seed:bytes:count:)();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + 4 * v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    v15 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100049398();
      v13 = v15;
    }

    v9 = *(*(v13 + 48) + 4 * v7);
    sub_10003A470(v7);
    v10 = 0;
    *v1 = v15;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v10 = 1;
  }

  return v9 | (v10 << 32);
}

unint64_t sub_10003A0B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10003A27C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = *(v3 + 40);
        v13 = (*(v3 + 48) + 24 * v6);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        Hasher.init(_seed:)();

        v17 = v16;
        String.hash(into:)();
        NSObject.hash(into:)();
        v18 = Hasher._finalize()();

        v19 = v18 & v7;
        if (v2 >= v10)
        {
          if (v19 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = v20 + 24 * v2;
          v22 = (v20 + 24 * v6);
          if (v2 != v6 || v21 >= v22 + 24)
          {
            v11 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10003A470(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 4 * v6);
        v13 = *v12;
        v14 = static Hasher._hash(seed:bytes:count:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 4 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10003A5F8()
{
  result = qword_1000B7BD8;
  if (!qword_1000B7BD8)
  {
    sub_100022884(255, &qword_1000B7BC8, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7BD8);
  }

  return result;
}

uint64_t sub_10003A6B8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_100008748(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t sub_10003A710()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v33[1] = sub_100004B50(&qword_1000B9C20, &qword_100082A88);
  v33[4] = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  v33[3] = swift_getWitnessTable();
  v4 = type metadata accessor for Publishers.CompactMap();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v33 - v8;
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v33 - v14, 1, 1, TupleTypeMetadata2);
  v15 = CurrentValueSubject.__allocating_init(_:)();
  v17 = v1[5];
  v16 = v1[6];
  sub_100005A3C(v1 + 2, v17);
  v18 = (*(v16 + 16))(v17, v16);
  v33[2] = v19;
  v36 = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = *(v2 + 80);
  v21[2] = v22;
  v21[3] = v3;
  v21[4] = v20;
  v21[5] = v15;
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v3;
  v23[4] = sub_10003B498;
  v23[5] = v21;

  swift_getTupleTypeMetadata2();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v24 = Publisher<>.sink(receiveValue:)();

  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  *(v25 + 24) = v24;
  v26 = type metadata accessor for AnyCancellable();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v29 = AnyCancellable.init(_:)();
  v36 = v15;
  v30 = swift_allocObject();
  *(v30 + 16) = v22;
  *(v30 + 24) = v3;
  Publisher.compactMap<A>(_:)();

  v31 = v34;
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();

  (*(v35 + 8))(v9, v31);
  return v29;
}

uint64_t sub_10003ABEC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v9 = *(v35 + 64);
  v11 = __chkstk_darwin(TupleTypeMetadata2, v10);
  v13 = &v33 - v12;
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = &v33 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return v36(0, 0);
  }

  v26 = *(Strong + 56);
  v27 = *(Strong + 64);
  v33 = Strong;
  v26(v34);
  v28 = *(v14 + 32);
  v28(v13, v18, a7);
  v28(v24, v13, a7);
  v29 = &v24[*(TupleTypeMetadata2 + 48)];
  v30 = swift_allocObject();
  v31 = v37;
  *(v30 + 16) = v36;
  *(v30 + 24) = v31;
  *v29 = sub_10003B5F0;
  *(v29 + 1) = v30;
  (*(v35 + 56))(v24, 0, 1, TupleTypeMetadata2);

  CurrentValueSubject.send(_:)();

  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_10003AED4(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(uint64_t, char), uint64_t))
{
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  v4 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a2(a1, sub_10003B5EC, v7);
}

uint64_t sub_10003AFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v58 = a3;
  sub_100004B50(&qword_1000B9C28, &unk_100082A90);
  v57 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = v6[8];
  v9 = __chkstk_darwin(TupleTypeMetadata2, v8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v53 = &v49 - v12;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v49 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v49 - v25;
  (*(v14 + 16))(&v49 - v25, a1, v13);
  v27 = 1;
  v55 = v6[6];
  if (v55(v26, 1, TupleTypeMetadata2) != 1)
  {
    v50 = *(TupleTypeMetadata2 + 48);
    v52 = v13;
    v28 = v57;
    v29 = *(*(v57 - 8) + 32);
    v30 = v53;
    v51 = v19;
    v29(v53, v26, v57);
    v31 = swift_allocObject();
    v56 = v6;
    v32 = v31;
    *(v31 + 16) = *&v26[v50];
    v33 = &v23[*(TupleTypeMetadata2 + 48)];
    v34 = v28;
    v13 = v52;
    v29(v23, v30, v34);
    v19 = v51;
    v27 = 0;
    *v33 = sub_100030DA8;
    v33[1] = v32;
    v6 = v56;
  }

  v37 = v6[7];
  v35 = v6 + 7;
  v36 = v37;
  v38 = 1;
  v37(v23, v27, 1, TupleTypeMetadata2);
  (*(v14 + 32))(v19, v23, v13);
  v39 = v55(v19, 1, TupleTypeMetadata2);
  v40 = v58;
  if (v39 != 1)
  {
    v41 = *(TupleTypeMetadata2 + 48);
    v42 = v57;
    v43 = *(*(v57 - 8) + 32);
    v44 = v54;
    v43(v54, v19, v57);
    v45 = swift_allocObject();
    v56 = v35;
    v46 = v45;
    *(v45 + 16) = *&v19[v41];
    v47 = &v40[*(TupleTypeMetadata2 + 48)];
    v43(v40, v44, v42);
    v38 = 0;
    *v47 = sub_10003B5A8;
    *(v47 + 1) = v46;
  }

  return v36(v40, v38, 1, TupleTypeMetadata2);
}

uint64_t sub_10003B3A4()
{
  sub_100003FB4((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_10003B420()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B458()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003B4A4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003B4DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_10003AED4(a1, *(v1 + 32));
}

uint64_t sub_10003B4E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10003B528()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  AnyCancellable.cancel()();
  AnyCancellable.cancel()();
}

uint64_t sub_10003B570()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B5AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_10003B5F4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10003B6A0(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022884(0, &qword_1000B9CD0, OS_dispatch_source_ptr);
  sub_100022884(0, &qword_1000B9CD8, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_100023EE0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A8ED8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10003B5F4();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v16);
  (*(v4 + 8))(v7, v19);
  (*(v9 + 8))(v12, v8);

  OS_dispatch_source.resume()();
  return v14;
}

uint64_t sub_10003B938()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003B98C()
{
  result = qword_1000B9CE0;
  if (!qword_1000B9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9CE0);
  }

  return result;
}

uint64_t sub_10003B9E0()
{
  if (qword_1000B64B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC650;

  return v0;
}

uint64_t sub_10003BA48()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A778;

  return sub_10003CC60(v2);
}

uint64_t sub_10003BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return _swift_task_switch(sub_10003BB04, 0, 0);
}

uint64_t sub_10003BB04()
{
  v38 = v0;
  v1 = *(v0 + 264);
  sub_10000859C(v1 + 32, v0 + 152);
  sub_100026B2C(v1 + 80, v0 + 16);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    sub_100005A3C((v0 + 16), *(v0 + 40));
    v4 = (*(v3 + 48))(v2, v3);
    v6 = v5;
    sub_100030C2C(v0 + 16);
  }

  else
  {
    sub_1000353E0(v0 + 16);
    v4 = 0;
    v6 = 0;
  }

  v7 = *(v0 + 256);
  v36 = *(v0 + 240);
  sub_10003C9EC(*(v0 + 264), v0 + 16);
  sub_10000859C(v0 + 152, v0 + 192);
  v8 = swift_allocObject();
  v9 = *(v0 + 128);
  *(v8 + 112) = *(v0 + 112);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(v0 + 144);
  v10 = *(v0 + 64);
  *(v8 + 48) = *(v0 + 48);
  *(v8 + 64) = v10;
  v11 = *(v0 + 96);
  *(v8 + 80) = *(v0 + 80);
  *(v8 + 96) = v11;
  v12 = *(v0 + 32);
  *(v8 + 16) = *(v0 + 16);
  *(v8 + 32) = v12;
  *(v8 + 152) = v36;
  *(v8 + 168) = v7;
  *(v8 + 176) = v4;
  *(v8 + 184) = v6;
  sub_100008748((v0 + 192), v8 + 192);
  v13 = qword_1000B6448;
  swift_unknownObjectRetain();

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 264);
  v15 = type metadata accessor for Logger();
  sub_10000C370(v15, qword_1000BC590);
  sub_10003C9EC(v14, v0 + 16);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136446210;
    v20 = *(v0 + 88);
    v21 = Double.description.getter();
    v23 = v22;
    sub_10003CABC(v0 + 16);
    v24 = sub_100043D60(v21, v23, &v37);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting expiration timer -- the session will expire in %{public}s seconds", v18, 0xCu);
    sub_100003FB4(v19);
  }

  else
  {

    sub_10003CABC(v0 + 16);
  }

  v25 = *(v0 + 264);
  v26 = *(v25 + 24);
  v27 = *(v25 + 72);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 232);
  v29 = qword_1000BC5B8;
  *(v0 + 48) = sub_10003CAA4;
  *(v0 + 56) = v8;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100063354;
  *(v0 + 40) = &unk_1000A9080;
  v30 = _Block_copy((v0 + 16));
  v31 = *(v0 + 56);

  v32 = [v26 scheduledTimerWithDuration:v29 queue:v30 handler:v27];
  _Block_release(v30);
  v28[3] = &type metadata for AEAExpirationDeactivation;
  v28[4] = &off_1000A9198;
  v33 = swift_allocObject();
  *v28 = v33;

  v33[2] = 0xD000000000000024;
  v33[3] = 0x8000000100089710;
  v33[4] = 5;
  v33[5] = v32;
  sub_100003FB4((v0 + 152));
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10003BF28(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v34 - v15;
  if (qword_1000B6448 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C370(v17, qword_1000BC590);
  sub_10003C9EC(a1, v38);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = a3;
    v36 = a6;
    v22 = a5;
    v23 = v21;
    v37 = v21;
    *v20 = 136446210;
    v24 = Double.description.getter();
    v25 = a7;
    v27 = v26;
    sub_10003CABC(v38);
    v28 = sub_100043D60(v24, v27, &v37);
    a7 = v25;

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "The session expired after %{public}s seconds", v20, 0xCu);
    sub_100003FB4(v23);
    a5 = v22;
    a3 = v35;
    a6 = v36;
  }

  else
  {

    sub_10003CABC(v38);
  }

  sub_10003B98C();
  swift_allocError();
  a3();

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  sub_10000859C(a7, v38);
  type metadata accessor for AgentActor();
  inited = swift_initStaticObject();
  v31 = sub_10001CFA8();
  v32 = swift_allocObject();
  v32[2] = inited;
  v32[3] = v31;
  v32[4] = a5;
  v32[5] = a6;
  sub_100008748(v38, (v32 + 6));

  sub_10006F6D0(0, 0, v16, &unk_100082CA8, v32);
}

uint64_t sub_10003C230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_10001CFA8();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_10003C2C8, v7, v6);
}

uint64_t sub_10003C2C8()
{
  v13 = v0;
  v1 = v0[7];
  if (v1)
  {
    if (qword_1000B6448 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[10] = sub_10000C370(v2, qword_1000BC590);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[6];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100043D60(v5, v1, &v12);
      _os_log_impl(&_mh_execute_header, v3, v4, "Opening %{public}s because session expired", v6, 0xCu);
      sub_100003FB4(v7);
    }

    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_10003C4E4;
    v9 = v0[6];

    return sub_100038518(v9, v1);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10003C4E4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];

    return _swift_task_switch(sub_10003C614, v4, v5);
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10003C614()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_100043D60(v8, v7, &v18);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v10 = v0[2];
    v11 = v0[4];
    v12 = sub_100067820(v0[3]);
    v14 = sub_100043D60(v12, v13, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to open %{public}s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[12];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10003C7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000F618;

  return sub_10003BADC(a1, a2, a3, a4);
}

unint64_t sub_10003C8AC()
{
  result = qword_1000B9CE8;
  if (!qword_1000B9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9CE8);
  }

  return result;
}

__n128 sub_10003C900(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003C934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10003C97C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10003CA24()
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

  v4 = v0[19];
  swift_unknownObjectRelease();
  v5 = v0[21];

  v6 = v0[23];

  sub_100003FB4(v0 + 24);

  return _swift_deallocObject(v0, 232, 7);
}

uint64_t sub_10003CAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003CB04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003CB44()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  sub_100003FB4(v0 + 6);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10003CB8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F618;

  return sub_10003C230(a1, v4, v5, v6, v7);
}

uint64_t sub_10003CC80()
{
  if (qword_1000B6448 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC590);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelling expiration timer", v4, 2u);
  }

  v5 = *(v0 + 16);

  [v5 cancel];
  v6 = *(v0 + 8);

  return v6();
}

id sub_10003CDE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005A3C((v0 + 16), *(v0 + 40));
  v8 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(*v7 + 16);
  URL.path.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 fileExistsAtPath:v10];

  (*(v2 + 8))(v6, v1);
  return v11;
}

void *sub_10003D068(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000859C(v2 + 16, v33);
  v11 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = v34;
  v13 = sub_10001A19C(v33, v34);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13, v13);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v32[3] = v19;
  v32[4] = &off_1000A7928;
  v32[0] = v18;
  v20 = _s17WritingScratchpadCMa();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = sub_10001A19C(v32, v19);
  v25 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v24, v24);
  v27 = (v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v23[5] = v19;
  v23[6] = &off_1000A7928;
  v23[2] = v29;
  *(v23 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_backing) = _swiftEmptyDictionarySingleton;
  (*(v6 + 56))(v23 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad____lazy_storage___fileURL, 1, 1, v5);
  (*(v6 + 32))(v23 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_directoryURL, v10, v5);
  v30 = (v23 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_fileName);
  *v30 = a1;
  v30[1] = a2;

  sub_100003FB4(v32);
  sub_100003FB4(v33);
  return v23;
}

uint64_t sub_10003D3DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000859C(v2 + 16, v32);
  v10 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v33;
  v12 = sub_10001A19C(v32, v33);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12, v12);
  v15 = (v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v31[3] = v18;
  v31[4] = &off_1000A7928;
  v31[0] = v17;
  v19 = _s17ReadingScratchpadCMa();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = sub_10001A19C(v31, v18);
  v24 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v23, v23);
  v26 = (v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;

  v29 = sub_10003D8A0(v28, v9, a1, a2, v22);
  sub_100003FB4(v31);
  sub_100003FB4(v32);
  return v29;
}

uint64_t sub_10003D844()
{
  sub_100003FB4((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10003D8A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v25 = &off_1000A7928;
  *(a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___backing) = 0;
  v23[0] = a1;
  (*(v11 + 56))(a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad____lazy_storage___fileURL, 1, 1, v10);
  sub_10000859C(v23, a5 + 16);
  (*(v11 + 16))(a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_directoryURL, a2, v10);
  v16 = (a5 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17ReadingScratchpad_fileName);
  *v16 = a3;
  v16[1] = a4;
  v17 = sub_100005A3C(v23, v24);
  sub_100074188(v15);
  v18 = *(*v17 + 16);
  URL.path.getter();
  v19 = String._bridgeToObjectiveC()();

  LODWORD(a4) = [v18 fileExistsAtPath:v19];

  v20 = *(v11 + 8);
  v20(a2, v10);
  v20(v15, v10);
  if (!a4)
  {

    a5 = 0;
  }

  sub_100003FB4(v23);
  return a5;
}

uint64_t sub_10003DAA0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue_serial.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_10000EF70();
  static DispatchQoS.userInteractive.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_10003DE08(&qword_1000B9E58, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100003F6C(&qword_1000B9E60, &unk_100082DE0);
  sub_10003DE50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000BC5B8 = result;
  return result;
}

uint64_t sub_10003DD48()
{
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

uint64_t sub_10003DDA0()
{
  type metadata accessor for AgentActor();

  return swift_initStaticObject();
}

uint64_t sub_10003DDD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AgentActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10003DE08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003DE50()
{
  result = qword_1000B9E68;
  if (!qword_1000B9E68)
  {
    sub_100004B50(&qword_1000B9E60, &unk_100082DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E68);
  }

  return result;
}

__n128 sub_10003DEB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10003DED8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003DEF8, 0, 0);
}

uint64_t sub_10003DEF8()
{
  v12 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100043D60(v6, v5, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Deactivation succeeding in recovery", v7, 0xCu);
    sub_100003FB4(v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003E080()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A778;

  return sub_10003DED8(v2, v3);
}

uint64_t sub_10003E128(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003E148, 0, 0);
}

uint64_t sub_10003E148()
{
  v12 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100043D60(v6, v5, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Deactivation failing here", v7, 0xCu);
    sub_100003FB4(v8);
  }

  sub_10003E840();
  swift_allocError();
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10003E2F4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000F618;

  return sub_10003E128(v2, v3);
}

uint64_t sub_10003E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a8;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  return _swift_task_switch(sub_10003E438, 0, 0);
}

uint64_t sub_10003E438()
{
  if (*(v0 + 40) != 1)
  {
    v7 = *(v0 + 24);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    goto LABEL_5;
  }

  v1 = *(v0 + 32);
  swift_getObjectType();
  sub_10000D8C0(1);
  *(v0 + 16) = 0;
  v2 = [v1 persistWithError:v0 + 16];
  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = *(v0 + 24);
    v4[3] = &type metadata for AEAFailingDeactivation;
    v4[4] = &off_1000A93F8;
    v5 = swift_allocObject();
    *v4 = v5;
    *(v5 + 16) = 0xD000000000000036;
    *(v5 + 24) = 0x8000000100089810;
    *(v5 + 32) = 4;
    *(v5 + 40) = 0;
    v6 = v3;
LABEL_5:
    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  v9 = v3;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

void sub_10003E5E0(void *a1@<X8>)
{
  a1[4] = &off_1000A93D8;
  *a1 = 0xD00000000000003FLL;
  a1[1] = 0x8000000100089850;
  a1[2] = 4;
  a1[3] = &type metadata for AEASuccedingDeactivation;
}

uint64_t sub_10003E61C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10001A778;

  return sub_10003E3A4(a1, a2, v7, v8, v9, v10, v11, v6);
}

uint64_t sub_10003E6CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10003E704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10003E74C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003E7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10003E7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003E840()
{
  result = qword_1000B9E70;
  if (!qword_1000B9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E70);
  }

  return result;
}

unint64_t sub_10003E8A8()
{
  result = qword_1000B9E78;
  if (!qword_1000B9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E78);
  }

  return result;
}

Swift::Int sub_10003E914()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003E974()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_10003E9A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_10003EA04(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 16) dataRepresentation];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_10003EA5C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_10003EB28();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_10003EAD4()
{
  result = qword_1000B9E80;
  if (!qword_1000B9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9E80);
  }

  return result;
}

unint64_t sub_10003EB28()
{
  result = qword_1000B8878;
  if (!qword_1000B8878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8878);
  }

  return result;
}

void sub_10003EB74()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5C0 = v5;
  *algn_1000BC5C8 = v7;
}

void sub_10003EC98()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5D0 = v5;
  *algn_1000BC5D8 = v7;
}

void sub_10003EDBC()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5E0 = v5;
  *algn_1000BC5E8 = v7;
}

void sub_10003EEE0()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC5F0 = v5;
  *algn_1000BC5F8 = v7;
}

void sub_10003F000()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC600 = v5;
  *algn_1000BC608 = v7;
}

void sub_10003F12C()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC610 = v5;
  *algn_1000BC618 = v7;
}

void sub_10003F250()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC620 = v5;
  *algn_1000BC628 = v7;
}

void sub_10003F374()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC630 = v5;
  *algn_1000BC638 = v7;
}

void sub_10003F498()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC640 = v5;
  *algn_1000BC648 = v7;
}

void sub_10003F5BC()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC650 = v5;
  *algn_1000BC658 = v7;
}

void sub_10003F6E0()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC660 = v5;
  *algn_1000BC668 = v7;
}

void sub_10003F80C()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC670 = v5;
  *algn_1000BC678 = v7;
}

void sub_10003F930()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC680 = v5;
  *algn_1000BC688 = v7;
}

void sub_10003FA54()
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
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  qword_1000BC690 = v5;
  *algn_1000BC698 = v7;
}

uint64_t sub_10003FB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100010B20(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1000407E8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100019B28(a1, &qword_1000B9F38, &qword_100083188);
    sub_100040684(a2, a3, v10);

    return sub_100019B28(v10, &qword_1000B9F38, &qword_100083188);
  }

  return result;
}

uint64_t sub_10003FC48(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 2)
  {
    v6 = *v3;
    v7 = sub_100020DA8(a2, a3);
    LOBYTE(v6) = v8;

    if (v6)
    {
      v10 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v18 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10006DAF8();
        v12 = v18;
      }

      v13 = *(*(v12 + 48) + 16 * v7 + 8);

      result = sub_1000512AC(v7, v12);
      *v4 = v12;
    }
  }

  else
  {
    v15 = *v4;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_100040A84(a1 & 1, a2, a3, v17);

    *v4 = v19;
  }

  return result;
}

uint64_t sub_10003FD34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v6;
    v11[2] = *(a1 + 32);
    v12 = *(a1 + 48);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_100040EE4(v11, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100005A80(a2, a3);
    *v3 = v10;
  }

  else
  {
    sub_100019B28(a1, &qword_1000BBFF0, &qword_100081B30);
    sub_100040728(a2, a3, v11);
    sub_100005A80(a2, a3);
    return sub_100019B28(v11, &qword_1000BBFF0, &qword_100081B30);
  }

  return result;
}

uint64_t sub_10003FE1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100041030(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100020E18(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10006E580();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100051AFC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_10003FFDC(void *a1)
{
  v3 = sub_100005A3C((v1 + 16), *(v1 + 40));
  sub_100042268(*v3, a1, v40);
  if (*(v40[1] + 16))
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC518);
    v54 = v40[0];
    v52 = v42;
    v53[0] = v41;
    v51 = v43;
    sub_1000426E4(&v54, v38);

    sub_1000426E4(v53, v38);
    sub_1000426E4(&v52, v38);
    sub_1000426E4(&v51, v38);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_100019B28(&v54, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(v53, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v52, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v51, &qword_1000B80D0, &qword_100083180);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v38[0] = v8;
      *v7 = 136446210;

      v9 = Array.description.getter();
      v11 = v10;

      v12 = sub_100043D60(v9, v11, v38);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing participants (not installed): %{public}s", v7, 0xCu);
      sub_100003FB4(v8);
    }
  }

  if (*(v41 + 16))
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C370(v13, qword_1000BC518);
    v49 = v42;
    v50 = v40[0];
    v48 = v43;

    sub_1000426E4(&v50, v38);

    sub_1000426E4(&v49, v38);
    sub_1000426E4(&v48, v38);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    sub_100019B28(&v50, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(&v49, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v48, &qword_1000B80D0, &qword_100083180);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38[0] = v17;
      *v16 = 136446210;

      v18 = Array.description.getter();
      v20 = v19;

      v21 = sub_100043D60(v18, v20, v38);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing participants (restricted system applications): %{public}s", v16, 0xCu);
      sub_100003FB4(v17);
    }
  }

  v22 = sub_100021EC0(_swiftEmptyArrayStorage);
  v23 = v42;
  v47 = v42;
  if (*(v42 + 16))
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    v39 = sub_100003F6C(&qword_1000B80D0, &qword_100083180);
    v38[0] = v23;
    sub_100010B20(v38, v37);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000407E8(v37, v24, v26, isUniquelyReferenced_nonNull_native);
  }

  v46 = v43;
  if (*(v43 + 16))
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v39 = sub_100003F6C(&qword_1000B80D0, &qword_100083180);
    v38[0] = v46;
    sub_100010B20(v38, v37);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000407E8(v37, v28, v30, v31);
    v45 = v40[0];
    sub_100019B28(&v45, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(&v47, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v46, &qword_1000B80D0, &qword_100083180);

    if (*(v22 + 16))
    {
LABEL_17:
      v32 = AECoreErrorDomain;
      v33 = objc_allocWithZone(NSError);
      v34 = v32;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v33 initWithDomain:v34 code:102 userInfo:isa];

      return swift_willThrow();
    }
  }

  else
  {
    v44 = v40[0];
    sub_100019B28(&v44, &qword_1000B80D0, &qword_100083180);

    sub_100019B28(&v47, &qword_1000B80D0, &qword_100083180);
    sub_100019B28(&v46, &qword_1000B80D0, &qword_100083180);
    if (*(v22 + 16))
    {
      goto LABEL_17;
    }
  }
}

double sub_100040684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100020DA8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006D7B0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100010B20((*(v12 + 56) + 32 * v9), a3);
    sub_1000510FC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_100040728@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100020F6C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006E09C();
      v12 = v16;
    }

    sub_100005A80(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = *(v12 + 56) + 56 * v9;
    v14 = *(v13 + 16);
    *a3 = *v13;
    *(a3 + 16) = v14;
    *(a3 + 32) = *(v13 + 32);
    *(a3 + 48) = *(v13 + 48);
    sub_10005177C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

_OWORD *sub_1000407E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020DA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10006D7B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006BC88(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100020DA8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100003FB4(v23);

    return sub_100010B20(a1, v23);
  }

  else
  {
    sub_100051E1C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100040938(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100020DD4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10006D954();
      goto LABEL_7;
    }

    sub_10006BF40(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100020DD4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100022828(a2, v22);
      return sub_100051E88(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100003FB4(v17);

  return sub_100010B20(a1, v17);
}

unint64_t sub_100040A84(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100020DA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_10006DAF8();
      result = v19;
      goto LABEL_8;
    }

    sub_10006C1F8(v16, a4 & 1);
    v20 = *v5;
    result = sub_100020DA8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    sub_100051F04(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

uint64_t sub_100040BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020DA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10006DC60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006C498(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100020DA8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_100051F4C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100040D00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v33 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v17 = sub_100020E18(a3);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      sub_10006DC74();
      goto LABEL_9;
    }

    sub_10006C4AC(v20, a4 & 1);
    v23 = *v5;
    v24 = sub_100020E18(a3);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v33;
  v27 = *v5;
  if (v21)
  {
    v28 = (v27[7] + 16 * v17);
    v30 = *v28;
    v29 = v28[1];
    *v28 = v33;
    v28[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v14, a3, v9);
    return sub_100051F94(v17, v14, v26, a2, v27);
  }
}

uint64_t sub_100040EE4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020F6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10006E09C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10006CB3C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100020F6C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 56 * v11;

    return sub_100042A9C(a1, v23);
  }

  else
  {
    sub_100052054(v11, a2, a3, a1, v22);

    return sub_10001C9CC(a2, a3);
  }
}

uint64_t sub_100041030(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_100020E18(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_10006E580();
      goto LABEL_7;
    }

    sub_10006D404(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_100020E18(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_1000520B8(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

Swift::Int sub_1000411FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100053D1C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_100041268(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100041268(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100041578(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100041360(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100041360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = type metadata accessor for String.StandardComparator();
  v8 = *(*(v41 - 8) + 64);
  result = __chkstk_darwin(v41, v9);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v39 = (v11 + 8);
    v13 = v38 + 40 * a3 - 40;
    v14 = a1 - a3;
LABEL_5:
    v36 = v13;
    v37 = a3;
    v35 = v14;
    while (1)
    {
      v15 = v13 + 40;
      v42 = *(v13 + 40);
      v16 = *(v13 + 48);
      v17 = *(v13 + 64);
      v19 = *v13;
      v18 = *(v13 + 8);
      v20 = *(v13 + 24);

      v21 = v40;
      static String.StandardComparator.localizedStandard.getter();
      v22._countAndFlagsBits = v42;
      v22._object = v16;
      v23._countAndFlagsBits = v19;
      v23._object = v18;
      v24 = String.StandardComparator.compare(_:_:)(v22, v23);
      (*v39)(v21, v41);

      if (v24 != NSOrderedAscending)
      {
LABEL_4:
        a3 = v37 + 1;
        v13 = v36 + 40;
        v14 = v35 - 1;
        if (v37 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v25 = *(v13 + 40);
      v26 = *(v13 + 56);
      v27 = *(v13 + 64);
      v28 = *(v13 + 72);
      v29 = *(v13 + 73);
      v30 = *(v13 + 16);
      *v15 = *v13;
      *(v13 + 56) = v30;
      v31 = *(v13 + 32);
      *v13 = v25;
      *(v13 + 16) = v26;
      *(v13 + 24) = v27;
      *(v13 + 32) = v28;
      *(v13 + 33) = v29;
      v13 -= 40;
      *(v15 + 32) = v31;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100041578(char **a1, uint64_t a2, NSComparisonResult *a3, uint64_t a4)
{
  v6 = v4;
  v138 = type metadata accessor for String.StandardComparator();
  v10 = *(*(v138 - 8) + 64);
  result = __chkstk_darwin(v138, v11);
  v137 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 1);
  if (v15 >= 1)
  {
    v125 = a4;
    v16 = 0;
    v136 = (v13 + 8);
    v17 = _swiftEmptyArrayStorage;
    v126 = a3;
    v129 = a1;
    while (1)
    {
      result = v16;
      v130 = v16;
      if (v16 + 1 >= v15)
      {
        v31 = v16 + 1;
      }

      else
      {
        v134 = v15;
        v127 = v17;
        v128 = v6;
        v18 = *a3;
        v19 = (*a3 + 40 * (v16 + 1));
        v20 = *v19;
        v5 = v19[1];
        v16 = v19[3];
        v21 = result;
        v132 = 40 * result;
        v22 = (v18 + 40 * result);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[3];

        v26 = v137;
        static String.StandardComparator.localizedStandard.getter();
        v27._countAndFlagsBits = v20;
        v27._object = v5;
        v28._countAndFlagsBits = v24;
        v28._object = v23;
        v135 = String.StandardComparator.compare(_:_:)(v27, v28);
        v133 = *v136;
        v133(v26, v138);

        v29 = v21 + 2;
        v30 = (v22 + 13);
        while (1)
        {
          v31 = v134;
          if (v134 == v29)
          {
            break;
          }

          LODWORD(v139) = v135 == NSOrderedAscending;
          v33 = *(v30 - 3);
          v32 = *(v30 - 2);
          v16 = *v30;
          v5 = *(v30 - 8);
          v34 = *(v30 - 7);
          v35 = *(v30 - 5);

          v36 = v137;
          static String.StandardComparator.localizedStandard.getter();
          v37._countAndFlagsBits = v33;
          v37._object = v32;
          v38._countAndFlagsBits = v5;
          v38._object = v34;
          v39 = String.StandardComparator.compare(_:_:)(v37, v38);
          v133(v36, v138);

          ++v29;
          v30 += 5;
          if (((v139 ^ (v39 != NSOrderedAscending)) & 1) == 0)
          {
            v31 = v29 - 1;
            break;
          }
        }

        v17 = v127;
        v6 = v128;
        a3 = v126;
        a1 = v129;
        result = v130;
        if (v135 == NSOrderedAscending)
        {
          if (v31 < v130)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return result;
          }

          if (v130 < v31)
          {
            v40 = 40 * v31 - 16;
            v41 = v132 + 33;
            v42 = v31;
            v43 = v130;
            do
            {
              if (v43 != --v42)
              {
                v53 = *a3;
                if (*a3 == NSOrderedSame)
                {
                  goto LABEL_125;
                }

                v44 = (v53 + v41);
                v45 = *(v53 + v41 - 33);
                v46 = v53 + v40;
                v47 = *(v44 - 17);
                v48 = *(v44 - 9);
                v49 = *(v44 - 1);
                v50 = *v44;
                v51 = *(v46 + 8);
                v52 = *(v46 - 8);
                *(v44 - 33) = *(v46 - 24);
                *(v44 - 17) = v52;
                *(v44 - 1) = v51;
                *(v46 - 24) = v45;
                *(v46 - 8) = v47;
                *v46 = v48;
                *(v46 + 8) = v49;
                *(v46 + 9) = v50;
              }

              v43 = (v43 + 1);
              v40 -= 40;
              v41 += 40;
            }

            while (v43 < v42);
          }
        }
      }

      v54 = *(a3 + 1);
      if (v31 >= v54)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v31, result))
      {
        goto LABEL_117;
      }

      if (v31 - result >= v125)
      {
        goto LABEL_28;
      }

      if (__OFADD__(result, v125))
      {
        goto LABEL_118;
      }

      if (result + v125 >= v54)
      {
        v16 = *(a3 + 1);
      }

      else
      {
        v16 = (result + v125);
      }

      if (v16 < result)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v31 == v16)
      {
LABEL_28:
        v16 = v31;
        if (v31 < result)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v127 = v17;
        v128 = v6;
        v135 = *a3;
        v101 = v135 + 40 * v31 - 40;
        v102 = result - v31;
        v131 = v16;
        do
        {
          v133 = v101;
          v134 = v31;
          v132 = v102;
          do
          {
            v103 = v101 + 40;
            v139 = *(v101 + 40);
            v104 = *(v101 + 48);
            v105 = *(v101 + 64);
            v106 = *v101;
            v107 = *(v101 + 8);
            v5 = *(v101 + 24);

            v108 = v137;
            static String.StandardComparator.localizedStandard.getter();
            v109._countAndFlagsBits = v139;
            v109._object = v104;
            v110._countAndFlagsBits = v106;
            v110._object = v107;
            v111 = String.StandardComparator.compare(_:_:)(v109, v110);
            (*v136)(v108, v138);

            if (v111 != NSOrderedAscending)
            {
              break;
            }

            if (v135 == NSOrderedSame)
            {
              goto LABEL_122;
            }

            v112 = *(v101 + 40);
            v113 = *(v101 + 56);
            v114 = *(v101 + 64);
            v115 = *(v101 + 72);
            v116 = *(v101 + 73);
            v117 = *(v101 + 16);
            *v103 = *v101;
            *(v101 + 56) = v117;
            v118 = *(v101 + 32);
            *v101 = v112;
            *(v101 + 16) = v113;
            *(v101 + 24) = v114;
            *(v101 + 32) = v115;
            *(v101 + 33) = v116;
            v101 -= 40;
            *(v103 + 32) = v118;
          }

          while (!__CFADD__(v102++, 1));
          v31 = v134 + 1;
          v101 = v133 + 40;
          v16 = v131;
          v102 = v132 - 1;
        }

        while ((v134 + 1) != v131);
        v17 = v127;
        v6 = v128;
        a3 = v126;
        a1 = v129;
        if (v131 < v130)
        {
          goto LABEL_116;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100052CC0(0, *(v17 + 2) + 1, 1, v17);
        v17 = result;
      }

      v56 = *(v17 + 2);
      v55 = *(v17 + 3);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        result = sub_100052CC0((v55 > 1), v56 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 2) = v57;
      v58 = &v17[16 * v56];
      *(v58 + 4) = v130;
      *(v58 + 5) = v16;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_126;
      }

      if (v56)
      {
        while (1)
        {
          v59 = v57 - 1;
          if (v57 >= 4)
          {
            break;
          }

          if (v57 == 3)
          {
            v60 = *(v17 + 4);
            v61 = *(v17 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_48:
            if (v63)
            {
              goto LABEL_105;
            }

            v76 = &v17[16 * v57];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_108;
            }

            v82 = &v17[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_112;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v59 = v57 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v86 = &v17[16 * v57];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_62:
          if (v81)
          {
            goto LABEL_107;
          }

          v89 = &v17[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_110;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_69:
          v97 = v59 - 1;
          if (v59 - 1 >= v57)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (*a3 == NSOrderedSame)
          {
            goto LABEL_123;
          }

          v98 = *&v17[16 * v97 + 32];
          v99 = *&v17[16 * v59 + 40];
          sub_100041E0C((*a3 + 40 * v98), (*a3 + 40 * *&v17[16 * v59 + 32]), *a3 + 40 * v99, v5);
          if (v6)
          {
          }

          if (v99 < v98)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_100052CAC(v17);
          }

          if (v97 >= *(v17 + 2))
          {
            goto LABEL_102;
          }

          v100 = &v17[16 * v97];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          v140 = v17;
          result = sub_100052C20(v59);
          v17 = v140;
          v57 = *(v140 + 2);
          if (v57 <= 1)
          {
            goto LABEL_3;
          }
        }

        v64 = &v17[16 * v57 + 32];
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_103;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_104;
        }

        v71 = &v17[16 * v57];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_106;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_109;
        }

        if (v75 >= v67)
        {
          v93 = &v17[16 * v59 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_113;
          }

          if (v62 < v96)
          {
            v59 = v57 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v15 = *(a3 + 1);
      a1 = v129;
      if (v16 >= v15)
      {
        goto LABEL_89;
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_89:
  v16 = *a1;
  if (!*a1)
  {
    goto LABEL_127;
  }

  v5 = v17;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_100052CAC(v5);
    v5 = result;
  }

  v140 = v5;
  v120 = *(v5 + 2);
  if (v120 >= 2)
  {
    while (*a3)
    {
      v121 = *&v5[16 * v120];
      v122 = *&v5[16 * v120 + 24];
      sub_100041E0C((*a3 + 40 * v121), (*a3 + 40 * *&v5[16 * v120 + 16]), *a3 + 40 * v122, v16);
      if (v6)
      {
      }

      if (v122 < v121)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100052CAC(v5);
      }

      if (v120 - 2 >= *(v5 + 2))
      {
        goto LABEL_115;
      }

      v123 = &v5[16 * v120];
      *v123 = v121;
      *(v123 + 1) = v122;
      v140 = v5;
      result = sub_100052C20(v120 - 1);
      v5 = v140;
      v120 = *(v140 + 2);
      if (v120 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_100041E0C(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v64 = type metadata accessor for String.StandardComparator();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v64, v10);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 - a1) / 40;
  v61 = a3;
  v13 = a3 - a2;
  v14 = v13 / 40;
  if (v12 >= v13 / 40)
  {
    v32 = 5 * v14;
    if (a4 != a2 || &a2[v32] <= a4)
    {
      memmove(a4, a2, 40 * v14);
    }

    v16 = &a4[v32];
    if (v13 >= 40 && a2 > a1)
    {
      v58 = (v8 + 8);
      v59 = a4;
      v33 = v61;
      v62 = a1;
LABEL_23:
      v60 = a2;
      v57 = a2 - 5;
      v34 = v33 - 40;
      v35 = v16;
      do
      {
        v65 = v16;
        v36 = *(v35 - 5);
        v37 = *(v35 - 4);
        v35 -= 5;
        v61 = v36;
        v38 = v34;
        v39 = (v34 + 40);
        v40 = v35[3];
        v41 = *(v60 - 5);
        v42 = *(v60 - 4);
        v43 = *(v60 - 2);

        v44 = v63;
        static String.StandardComparator.localizedStandard.getter();
        v45._countAndFlagsBits = v61;
        v45._object = v37;
        v46._countAndFlagsBits = v41;
        v46._object = v42;
        v47 = String.StandardComparator.compare(_:_:)(v45, v46);
        (*v58)(v44, v64);

        if (v47 == NSOrderedAscending)
        {
          v50 = v62;
          v33 = v38;
          v16 = v65;
          v51 = v57;
          if (v39 != v60)
          {
            v52 = *v57;
            v53 = *(v57 + 1);
            *(v38 + 32) = v57[4];
            *v38 = v52;
            *(v38 + 16) = v53;
          }

          a4 = v59;
          if (v16 <= v59 || (a2 = v51, v51 <= v50))
          {
            a2 = v51;
            goto LABEL_36;
          }

          goto LABEL_23;
        }

        if (v39 != v65)
        {
          v48 = *v35;
          v49 = *(v35 + 1);
          *(v38 + 32) = v35[4];
          *v38 = v48;
          *(v38 + 16) = v49;
        }

        v34 = v38 - 40;
        v16 = v35;
        a4 = v59;
      }

      while (v35 > v59);
      v16 = v35;
      a2 = v60;
    }
  }

  else
  {
    v15 = 5 * v12;
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, v15 * 8);
    }

    v16 = &a4[v15];
    if (a2 - a1 >= 40 && a2 < v61)
    {
      v60 = (v8 + 8);
      v65 = &a4[v15];
      while (1)
      {
        v62 = a1;
        v17 = *a2;
        v18 = a2[1];
        v19 = a2[3];
        v21 = *a4;
        v20 = a4[1];
        v22 = a4[3];

        v23 = v63;
        static String.StandardComparator.localizedStandard.getter();
        v24._countAndFlagsBits = v17;
        v24._object = v18;
        v25._countAndFlagsBits = v21;
        v25._object = v20;
        v26 = String.StandardComparator.compare(_:_:)(v24, v25);
        (*v60)(v23, v64);

        if (v26 != NSOrderedAscending)
        {
          break;
        }

        v27 = a2;
        v28 = v62;
        v29 = v62 == a2;
        a2 += 5;
        v16 = v65;
        if (!v29)
        {
          goto LABEL_10;
        }

LABEL_11:
        a1 = v28 + 5;
        if (a4 >= v16 || a2 >= v61)
        {
          goto LABEL_33;
        }
      }

      v27 = a4;
      v28 = v62;
      v29 = v62 == a4;
      a4 += 5;
      v16 = v65;
      if (v29)
      {
        goto LABEL_11;
      }

LABEL_10:
      v30 = *v27;
      v31 = *(v27 + 1);
      v28[4] = v27[4];
      *v28 = v30;
      *(v28 + 1) = v31;
      goto LABEL_11;
    }

LABEL_33:
    a2 = a1;
  }

LABEL_36:
  v54 = 5 * ((v16 - a4) / 40);
  if (a2 != a4 || a2 >= &a4[v54])
  {
    memmove(a2, a4, v54 * 8);
  }

  return 1;
}

uint64_t sub_100042268@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59[3] = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  v59[4] = &off_1000AC480;
  v59[0] = a1;
  v5 = a2[3];
  v6 = a2[4];
  sub_100005A3C(a2, v5);
  v7 = *(v6 + 48);

  v8 = v7(v5, v6);
  v10 = v9;
  v11 = objc_allocWithZone(LSApplicationRecord);
  *&v60[0] = sub_10005B030(v8, v10, 0);
  sub_100042A50();
  v12 = sub_10002CCB4();
  v14 = v13;

  v15 = a2[3];
  v16 = a2[4];
  sub_100005A3C(a2, v15);
  v17 = (*(v16 + 48))(v15, v16);
  v19 = v18;
  v20 = __chkstk_darwin(a2[7], v18);
  v21 = sub_100042754(v20, sub_100042A40);
  sub_100003F6C(&qword_1000B9F40, &unk_100083190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = 1;
  *&v60[0] = v21;

  sub_1000411FC(v60);

  v23 = *&v60[0];
  *&v60[0] = inited;
  sub_10006FAA8(v23);
  v24 = 0;
  v25 = *&v60[0];
  v26 = *(*&v60[0] + 16);
  v27 = _swiftEmptyArrayStorage;
LABEL_2:
  v28 = 40 * v24;
  while (v26 != v24)
  {
    if (v24 >= *(v25 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      v55 = *(v28 - 256);

      __break(1u);
      return result;
    }

    ++v24;
    v29 = v28 + 40;
    v30 = *(v25 + v28 + 65);
    v28 += 40;
    if (v30 == 2)
    {
      v31 = *(v25 + v29 - 8);
      v32 = *(v25 + v29);
      v33 = *(v25 + v29 + 8);
      v34 = *(v25 + v29 + 16);
      v35 = *(v25 + v29 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v60[0] = v27;
      v56 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10004A8EC(0, v27[2] + 1, 1);
        v27 = *&v60[0];
      }

      v38 = v27[2];
      v37 = v27[3];
      if (v38 >= v37 >> 1)
      {
        sub_10004A8EC((v37 > 1), v38 + 1, 1);
        v27 = *&v60[0];
      }

      v27[2] = v38 + 1;
      v39 = &v27[5 * v38];
      v39[4] = v56;
      v39[5] = v32;
      v39[6] = v33;
      v39[7] = v34;
      *(v39 + 64) = v35;
      *(v39 + 65) = 2;
      goto LABEL_2;
    }
  }

  v40 = 0;
  v41 = _swiftEmptyArrayStorage;
LABEL_12:
  v28 = 40 * v40;
  while (v26 != v40)
  {
    if (v40 >= *(v25 + 16))
    {
      goto LABEL_23;
    }

    ++v40;
    v42 = v28 + 40;
    v43 = *(v25 + v28 + 65);
    v28 += 40;
    if (v43 == 1)
    {
      v44 = *(v25 + v42 - 8);
      v45 = *(v25 + v42);
      v46 = *(v25 + v42 + 8);
      v47 = *(v25 + v42 + 16);
      v48 = *(v25 + v42 + 24);

      v49 = swift_isUniquelyReferenced_nonNull_native();
      *&v60[0] = v41;
      v57 = v46;
      if ((v49 & 1) == 0)
      {
        sub_10004A8EC(0, v41[2] + 1, 1);
        v41 = *&v60[0];
      }

      v51 = v41[2];
      v50 = v41[3];
      if (v51 >= v50 >> 1)
      {
        sub_10004A8EC((v50 > 1), v51 + 1, 1);
        v41 = *&v60[0];
      }

      v41[2] = v51 + 1;
      v52 = &v41[5 * v51];
      v52[4] = v44;
      v52[5] = v45;
      v52[6] = v57;
      v52[7] = v47;
      *(v52 + 64) = v48;
      *(v52 + 65) = 1;
      goto LABEL_12;
    }
  }

  sub_100055CC8(v25, v27, v41, v60);
  result = sub_100003FB4(v59);
  v54 = v60[1];
  *a3 = v60[0];
  *(a3 + 16) = v54;
  *(a3 + 32) = v61;
  return result;
}

uint64_t sub_1000426E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B80D0, &qword_100083180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042754(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *, void, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v46 = _swiftEmptyArrayStorage;
  sub_10004A8EC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  result = _HashTable.startBucket.getter();
  v8 = result;
  v9 = 0;
  v41 = *(v4 + 36);
  v36 = v4 + 72;
  v37 = v2;
  v38 = v4 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (v41 != *(v4 + 36))
    {
      goto LABEL_26;
    }

    v40 = v9;
    v12 = *(v4 + 48) + 40 * v8;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    LOBYTE(v12) = *(v12 + 32);
    v17 = (*(v4 + 56) + 16 * v8);
    v18 = *v17;
    v19 = v17[1];
    v20 = v4;
    v21 = v3;
    v22 = *(v17 + 1);
    v44[0] = v13;
    v44[1] = v14;
    v44[2] = v15;
    v44[3] = v16;
    v45 = v12;
    if (v19)
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    a2(v42, v44, v23 | v18, v22);
    v3 = v21;

    v46 = v21;
    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      result = sub_10004A8EC((v24 > 1), v25 + 1, 1);
      v3 = v46;
    }

    v3[2] = v25 + 1;
    v26 = &v3[5 * v25];
    v27 = v42[0];
    v28 = v42[1];
    *(v26 + 32) = v43;
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    v10 = 1 << *(v20 + 32);
    if (v8 >= v10)
    {
      goto LABEL_27;
    }

    v4 = v20;
    v5 = v38;
    v29 = *(v38 + 8 * v11);
    if ((v29 & (1 << v8)) == 0)
    {
      goto LABEL_28;
    }

    if (v41 != *(v4 + 36))
    {
      goto LABEL_29;
    }

    v30 = v29 & (-2 << (v8 & 0x3F));
    if (v30)
    {
      v10 = __clz(__rbit64(v30)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v11 << 6;
      v32 = v11 + 1;
      v33 = (v36 + 8 * v11);
      while (v32 < (v10 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_10001A784(v8, v41, 0);
          v10 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_10001A784(v8, v41, 0);
    }

LABEL_4:
    v9 = v40 + 1;
    v8 = v10;
    if (v40 + 1 == v37)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100042A50()
{
  result = qword_1000B9F48;
  if (!qword_1000B9F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B9F48);
  }

  return result;
}

id sub_100042AF8()
{
  v1 = v0;
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  swift_beginAccess();
  v2 = *(v0 + 32);
  *(v0 + 32) = _swiftEmptyDictionarySingleton;

  if (qword_1000B6438 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C370(v3, qword_1000BC560);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing all windows from assessment mode", v6, 2u);
  }

  return [*(v1 + 16) removeAllWindowsFromAssessmentMode];
}

uint64_t sub_100042C38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_100042CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA048, &unk_1000831F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100042D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA048, &unk_1000831F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AEAAnyTrustedParticipantSource()
{
  result = qword_1000BA0A8;
  if (!qword_1000BA0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042E14()
{
  sub_100042E80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100042E80()
{
  if (!qword_1000BA0B8)
  {
    sub_100004B50(&qword_1000B8EB0, &qword_100083220);
    v0 = type metadata accessor for Published.Publisher();
    if (!v1)
    {
      atomic_store(v0, &qword_1000BA0B8);
    }
  }
}

uint64_t sub_100042EE4(uint64_t a1)
{
  v3 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v31 = v1;
  v42 = _swiftEmptyArrayStorage;
  sub_10004A9BC(0, v8, 0);
  v9 = v42;
  v10 = -1 << *(a1 + 32);
  v37 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = 0;
  v32 = a1 + 64;
  v33 = v8;
  v34 = v7;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v37 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    v16 = *(a1 + 36);
    sub_100043A70(*(a1 + 48) + *(v35 + 72) * v12, v7);
    *(&v39 + 1) = v36;
    *&v40 = sub_10004C534(&qword_1000BA108);
    v17 = sub_100004F80(&v38);
    sub_100043A70(v7, v17);
    if (qword_1000B6450 != -1)
    {
      swift_once();
    }

    WORD4(v40) = word_1000BC5A8;
    v41 = qword_1000BC5B0;

    result = sub_100043AD4(v7);
    v42 = v9;
    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_10004A9BC((v18 > 1), v19 + 1, 1);
      v9 = v42;
    }

    v9[2] = v19 + 1;
    v20 = &v9[7 * v19];
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v20[10] = v41;
    *(v20 + 3) = v22;
    *(v20 + 4) = v23;
    *(v20 + 2) = v21;
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    v24 = *(v37 + 8 * v15);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_100019F1C(v12, v16, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_100019F1C(v12, v16, 0);
    }

LABEL_4:
    ++v13;
    v12 = v14;
    v7 = v34;
    if (v13 == v33)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100043240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v43 - v11;
  v13 = *a1;
  v14 = *(*a1 + 32);
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v16;

  if (v15 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v44 = v16;
    v45 = a2;
    v43[1] = v43;
    __chkstk_darwin(v18, v19);
    v46 = v43 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v17);
    v47 = 0;
    v16 = 0;
    a2 = (v13 + 56);
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 56);
    v24 = (v21 + 63) >> 6;
    *&v20 = 136446210;
    v48 = v20;
    v50 = v13;
    v51 = v4;
    v49 = v12;
    while (v23)
    {
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_14:
      v17 = v30 | (v16 << 6);
      sub_100043A70(*(v13 + 48) + *(v52 + 72) * v17, v12);
      if (v12[*(v4 + 24)])
      {
        sub_100043AD4(v12);
        *&v46[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v47++, 1))
        {
          __break(1u);
        }
      }

      else
      {
        v53 = v23;
        if (qword_1000B6430 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000C370(v33, qword_1000BC548);
        sub_100043A70(v12, v9);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v25 = v9;
          v26 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v54 = v17;
          *v26 = v48;
          v27 = *(v25 + 8);
          v28 = *(v25 + 16);

          sub_100043AD4(v25);
          v29 = sub_100043D60(v27, v28, &v54);

          *(v26 + 4) = v29;
          v13 = v50;
          v4 = v51;
          _os_log_impl(&_mh_execute_header, v34, v35, "Excluding untrusted auxiliary process: %{public}s", v26, 0xCu);
          sub_100003FB4(v17);

          v9 = v25;
          v12 = v49;
        }

        else
        {

          sub_100043AD4(v9);
        }

        sub_100043AD4(v12);
        v23 = v53;
      }
    }

    v31 = v16;
    while (1)
    {
      v16 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v16 >= v24)
      {
        v37 = sub_10004B9A0(v46, v44, v47, v13);
        a2 = v45;
        goto LABEL_23;
      }

      v32 = a2[v16];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v23 = (v32 - 1) & v32;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v41 = swift_slowAlloc();
  v42 = sub_10004BD54(v41, v16, v13, sub_1000436E8);

  v37 = v42;
LABEL_23:
  v38 = sub_100042EE4(v37);

  v39 = sub_10004C3EC(v38);

  *a2 = v39;
  return result;
}

uint64_t sub_1000436E8(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(v5 + 32));
  if ((v8 & 1) == 0)
  {
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C370(v9, qword_1000BC548);
    sub_100043A70(a1, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      v14 = *(v7 + 1);
      v15 = *(v7 + 2);

      sub_100043AD4(v7);
      v16 = sub_100043D60(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Excluding untrusted auxiliary process: %{public}s", v12, 0xCu);
      sub_100003FB4(v13);
    }

    else
    {

      sub_100043AD4(v7);
    }
  }

  return v8;
}

uint64_t sub_1000438C4()
{
  v0 = sub_100003F6C(&qword_1000BA0E8, &unk_100083238);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v8 - v4;
  sub_100003F6C(&qword_1000BA048, &unk_1000831F0);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000BA0F0, &qword_1000BA048, &unk_1000831F0);
  Publisher.map<A>(_:)();
  sub_100004EE0(&qword_1000BA0F8, &qword_1000BA0E8, &unk_100083238);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_100043A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043AD4(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043B30@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100043D60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100043E2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C6FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003FB4(v11);
  return v7;
}

unint64_t sub_100043E2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100043F38(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100043F38(uint64_t a1, unint64_t a2)
{
  v4 = sub_100043F84(a1, a2);
  sub_1000440B4(&off_1000A6118);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100043F84(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000441A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000441A0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000440B4(uint64_t result)
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

  result = sub_100044214(result, v12, 1, v3);
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

void *sub_1000441A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003F6C(&qword_1000BA120, &qword_100083260);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100044214(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BA120, &qword_100083260);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100044308(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100047010(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100044458(uint64_t a1, Swift::Int a2)
{
  v4 = *(a2 + 32);
  v6 = *a2;
  v5 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v39 = v8;
  v40 = v7;
  String.hash(into:)();
  v36 = a2;
  v11 = *(a2 + 33);
  Hasher._combine(_:)(v4 & 1);
  v38 = v11;
  Hasher._combine(_:)(v11);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  v41 = v9 + 56;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v34 = v9;
    v16 = *(v9 + 48);
    while (1)
    {
      v17 = v16 + 40 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v17 + 33);
      v22 = *v17 == v6 && *(v17 + 8) == v5;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v23 = v18 == v39 && v19 == v40;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v20 ^ v4) & 1) == 0 && v21 == v38)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v41 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v24 = *(v34 + 48) + 40 * v14;
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    LOBYTE(v24) = *(v24 + 33);
    *a1 = v26;
    *(a1 + 8) = v25;
    *(a1 + 16) = v27;
    *(a1 + 24) = v28;
    *(a1 + 32) = v29;
    *(a1 + 33) = v24;

    return 0;
  }

  else
  {
LABEL_17:
    v31 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v35;

    sub_100047190(v36, v14, isUniquelyReferenced_nonNull_native);
    *v35 = v42;
    v33 = *(v36 + 16);
    *a1 = *v36;
    *(a1 + 16) = v33;
    *(a1 + 32) = *(v36 + 32);
    return 1;
  }
}

uint64_t sub_1000446A0(uint64_t a1, uint64_t a2)
{
  v68 = *v2;
  v4 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v5 = *a2;
  v6 = *(a2 + 8);
  String.hash(into:)();
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v72 = v7 >> 60;
  if (v7 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v65 = a2;
  v70 = *(a2 + 32);
  Hasher._combine(_:)(v70);
  v9 = Hasher._finalize()();
  v10 = v68;
  v11 = -1 << *(v68 + 32);
  v12 = v9 & ~v11;
  if (((*(v68 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_86:
    v49 = *v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = *v64;
    sub_10001CA34(v65, v75);
    sub_1000473B4(v65, v12, isUniquelyReferenced_nonNull_native);
    *v64 = v74;
    v51 = *(v65 + 16);
    *a1 = *v65;
    *(a1 + 16) = v51;
    *(a1 + 32) = *(v65 + 32);
    return 1;
  }

  v73 = ~v11;
  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7 == 0xC000000000000000;
  }

  v14 = !v13;
  v67 = v14;
  v69 = v7 >> 62;
  v71 = v7;
  v15 = __OFSUB__(HIDWORD(v8), v8);
  v62 = v15;
  v63 = BYTE6(v7);
  while (1)
  {
    v18 = *(v10 + 48) + 40 * v12;
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 32);
    if (*v18 != v5 || *(v18 + 8) != v6)
    {
      v23 = *(v18 + 8);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v20 >> 60 == 15)
    {
      if (v72 <= 0xE)
      {
        goto LABEL_15;
      }

      sub_10001C9B8(v19, v20);
      sub_10001C9B8(v8, v71);
      goto LABEL_26;
    }

    if (v72 > 0xE)
    {
LABEL_15:
      sub_10001C9B8(v19, v20);
      sub_10001C9B8(v8, v71);
      sub_10001CA20(v19, v20);
      v16 = v8;
      v17 = v71;
      goto LABEL_16;
    }

    v26 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v19)
      {
        v27 = 0;
      }

      else
      {
        v27 = v20 == 0xC000000000000000;
      }

      v28 = v69;
      v30 = !v27 || v69 < 3;
      if (((v30 | v67) & 1) == 0)
      {

        sub_10001C9B8(0, 0xC000000000000000);
        sub_10001C9B8(0, 0xC000000000000000);
        sub_10001C9B8(0, 0xC000000000000000);
        sub_10001CA20(0, 0xC000000000000000);
        sub_10001CA20(0, 0xC000000000000000);

        v24 = 0;
        v25 = 0xC000000000000000;
LABEL_27:
        sub_10001CA20(v24, v25);
        if (v21 == v70)
        {
          break;
        }

        goto LABEL_17;
      }

LABEL_52:
      v31 = 0;
      if (v28 <= 1)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }

    v28 = v69;
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_52;
      }

      v33 = *(v19 + 16);
      v32 = *(v19 + 24);
      v34 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v34)
      {
        goto LABEL_90;
      }

      if (v69 <= 1)
      {
        goto LABEL_49;
      }
    }

    else if (v26)
    {
      LODWORD(v31) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_91;
      }

      v31 = v31;
      if (v69 <= 1)
      {
LABEL_49:
        v35 = v63;
        if (v28)
        {
          v35 = HIDWORD(v8) - v8;
          if (v62)
          {
            goto LABEL_89;
          }
        }

        goto LABEL_55;
      }
    }

    else
    {
      v31 = BYTE6(v20);
      if (v69 <= 1)
      {
        goto LABEL_49;
      }
    }

LABEL_53:
    if (v28 != 2)
    {
      if (!v31)
      {
LABEL_62:

        sub_10001C9B8(v19, v20);
        sub_10001C9B8(v19, v20);
        sub_10001C9B8(v8, v71);
        sub_10001CA20(v8, v71);
        sub_10001CA20(v19, v20);

LABEL_26:
        v24 = v19;
        v25 = v20;
        goto LABEL_27;
      }

LABEL_61:
      sub_10001C9B8(v19, v20);
      sub_10001C9B8(v8, v71);
      sub_10001CA20(v8, v71);
      v16 = v19;
      v17 = v20;
LABEL_16:
      sub_10001CA20(v16, v17);
      goto LABEL_17;
    }

    v37 = *(v8 + 16);
    v36 = *(v8 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
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
      __break(1u);
    }

LABEL_55:
    if (v31 != v35)
    {
      goto LABEL_61;
    }

    if (v31 < 1)
    {
      goto LABEL_62;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        *&v75[6] = 0;
        *v75 = 0;

        sub_10001C9B8(v19, v20);
        sub_10001C9B8(v19, v20);
        v39 = v71;
        v38 = v8;
        sub_10001C9B8(v8, v71);
        goto LABEL_75;
      }

      v59 = *(v19 + 24);
      v61 = *(v19 + 16);

      sub_10001C9B8(v19, v20);
      sub_10001C9B8(v19, v20);
      sub_10001C9B8(v8, v71);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v41 = v40;
        v42 = __DataStorage._offset.getter();
        v43 = v61;
        if (__OFSUB__(v61, v42))
        {
          goto LABEL_94;
        }

        v58 = v61 - v42 + v41;
      }

      else
      {
        v58 = 0;
        v43 = v61;
      }

      if (__OFSUB__(v59, v43))
      {
        goto LABEL_93;
      }

      __DataStorage._length.getter();
      v48 = v58;
    }

    else
    {
      if (!v26)
      {
        *v75 = v19;
        *&v75[8] = v20;
        v75[10] = BYTE2(v20);
        v75[11] = BYTE3(v20);
        v75[12] = BYTE4(v20);
        v75[13] = BYTE5(v20);

        sub_10001C9B8(v19, v20);
        sub_10001C9B8(v19, v20);
        v39 = v71;
        v38 = v8;
        sub_10001C9B8(v8, v71);
LABEL_75:
        sub_100043B30(v75, v38, v39, &v74);
        sub_10001CA20(v38, v71);
        v47 = v74;
        goto LABEL_82;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_92;
      }

      sub_10001C9B8(v19, v20);
      sub_10001C9B8(v19, v20);
      sub_10001C9B8(v8, v71);
      v44 = __DataStorage._bytes.getter();
      if (v44)
      {
        v60 = v44;
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v45))
        {
          goto LABEL_95;
        }

        v46 = v19 - v45 + v60;
      }

      else
      {
        v46 = 0;
      }

      __DataStorage._length.getter();
      v48 = v46;
    }

    sub_100043B30(v48, v8, v71, v75);
    sub_10001CA20(v8, v71);
    v47 = v75[0];
LABEL_82:
    sub_10001CA20(v19, v20);

    sub_10001CA20(v19, v20);
    if (!v47)
    {
      v10 = v68;
      goto LABEL_17;
    }

    v10 = v68;
    if (v21 == v70)
    {
      break;
    }

LABEL_17:
    v12 = (v12 + 1) & v73;
    if (((*(v68 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_86;
    }
  }

  sub_10002C3E4(v65);
  v53 = *(v10 + 48) + 40 * v12;
  v55 = *v53;
  v54 = *(v53 + 8);
  v56 = *(v53 + 16);
  v57 = *(v53 + 24);
  LODWORD(v53) = *(v53 + 32);
  *a1 = v55;
  *(a1 + 8) = v54;
  *(a1 + 16) = v56;
  *(a1 + 24) = v57;
  *(a1 + 32) = v53;

  sub_10001C9B8(v56, v57);
  return 0;
}