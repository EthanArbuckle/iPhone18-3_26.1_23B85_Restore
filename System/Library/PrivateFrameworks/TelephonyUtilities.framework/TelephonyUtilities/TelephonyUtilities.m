id sub_100004778()
{
  if (qword_1006ACF00 != -1)
  {
    sub_100007178();
  }

  v1 = qword_1006ACEF8;

  return v1;
}

void sub_100004AA4(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if ([v9 isEntitledForCapability:v10])
  {
    v11[2](v11);
  }

  else
  {
    if (a5)
    {
      v13 = [NSString stringWithFormat:@"Entitlement check: In %s, client %@ lacks capability '%@'", a5, v9, v10];
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_10047C268(v13, v14);
      }
    }

    if (v12)
    {
      v12[2](v12);
    }
  }
}

uint64_t sub_100004CEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100004D30()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR___CSDProcessObserver_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v14; result = )
    {
      v17 = i;
LABEL_10:
      v18 = (*(v11 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = v18[1];
      v14 &= v14 - 1;
      v21[0] = *v18;
      v21[1] = v19;

      sub_100004F60(v21, v0);
    }

    while (1)
    {
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
      }

      v14 = *(v11 + 64 + 8 * v17);
      ++i;
      if (v14)
      {
        i = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004F60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = sub_100005E74(v4);
  swift_endAccess();
  v36 = v5;
  v37 = v4;
  v9 = sub_1000061C4(v4, v5);
  if (v8)
  {
    sub_100007818(v8, v9);
    if (v10)
    {
    }
  }

  swift_beginAccess();

  v11 = *(a2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a2 + v6);
  sub_100007B5C(v9, v4, v5, isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v35, v2);
  *(a2 + v6) = v40;
  swift_endAccess();
  v17 = 1 << *(v9 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v9 + 64);
  v20 = a2 + OBJC_IVAR___CSDProcessObserver_processStateChangedWithBundleID;
  v38 = a2 + OBJC_IVAR___CSDProcessObserver_processStateChanged;
  v21 = (v17 + 63) >> 6;

  v23 = 0;
  v39 = v20;
  while (v19)
  {
    v24 = v8;
LABEL_14:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v26 | (v23 << 6);
    v28 = *(*(v9 + 48) + 4 * v27);
    v29 = *(*(v9 + 56) + 8 * v27);
    if (v24 && *(v24 + 16))
    {
      result = sub_100007558(v28);
      if ((v30 & 1) == 0)
      {
        v20 = v39;
        goto LABEL_20;
      }

      v20 = v39;
      if (v29 == *(*(v24 + 56) + 8 * result))
      {
        continue;
      }
    }

LABEL_20:
    v31 = *v20;
    if (*v20)
    {
      v32 = *(v20 + 8);

      v31(v37, v36, v28, v29);
      result = sub_1000051F8(v31);
      v20 = v39;
    }

    v33 = *v38;
    if (*v38)
    {
      v34 = *(v38 + 8);

      v33(v28, v29);
      result = sub_1000051F8(v33);
      v20 = v39;
    }
  }

  v24 = v8;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
    }

    v19 = *(v9 + 64 + 8 * v25);
    ++v23;
    if (v19)
    {
      v23 = v25;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000051F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100005208()
{
  sub_10000D5F8();
  String.hash(into:)();
  Hasher._finalize()();
  v0 = sub_10000F2EC();

  return sub_100006110(v0, v1, v2);
}

uint64_t sub_100005274()
{

  return swift_slowAlloc();
}

uint64_t sub_100005298()
{

  return swift_beginAccess();
}

uint64_t sub_1000052B0()
{

  return swift_dynamicCast();
}

uint64_t sub_100005320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 312);
  v18 = *(v16 + 256);
  return a16 + 120;
}

uint64_t sub_100005384()
{
  v3 = (*(v0 + 48) + 16 * v1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*(v0 + 56) + 8 * v1);

  return type metadata accessor for GeneratorDescriptor();
}

uint64_t sub_1000053E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005438(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_1000054C8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v17[1] = *(result + OBJC_IVAR___CSDProcessObserver_queue);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_100004F3C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100625B20;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    static DispatchQoS.unspecified.getter();
    v17[2] = _swiftEmptyArrayStorage;
    sub_1000053E8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v1 + 8))(v5, v0);
    (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_10000579C()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_1000057D0()
{
  result = qword_1006A2CD0;
  if (!qword_1006A2CD0)
  {
    sub_10026DCB4(&unk_1006A2960, &unk_10057D6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CD0);
  }

  return result;
}

uint64_t sub_100005834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100005208();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v3);
}

uint64_t sub_100005E84()
{

  return swift_slowAlloc();
}

uint64_t sub_100005E9C()
{

  return swift_task_alloc();
}

uint64_t sub_100005F40()
{
}

uint64_t sub_100005F64()
{
}

uint64_t sub_100005F94()
{
}

void sub_100005FAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_100005FCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100005FFC()
{
  v1 = v0[79];
  result = v0[78];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[69];
  v0[85] = *(v3 + 16);
  v0[86] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

uint64_t sub_100006064()
{
}

void sub_10000607C()
{
  v2 = *v0;

  sub_100021E24();
}

id sub_1000060B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 2264);

  return [a1 v9];
}

unint64_t sub_100006110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000061C4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v2[OBJC_IVAR___CSDProcessObserver_queue];
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v16 = &_swiftEmptyDictionarySingleton;
    v14 = sub_100006328(a1, a2);
    sub_10000718C(v14, &v16, v2);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100006328(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR___CSDProcessObserver_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v14 = sub_100006578(a1, a2, *(v2 + OBJC_IVAR___CSDProcessObserver_applicationMonitor));
    if (v14)
    {
      v15 = v14;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v16;
      AnyHashable.init<A>(_:)();
      sub_100006600(v22, v15);

      sub_100006780(v22);
      if (v24)
      {
        sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v17 = v20;
          sub_10026D814(&qword_1006A4780, &qword_10057F800);
          v18 = swift_allocObject();
          *(v18 + 1) = xmmword_10057D690;
          *(v18 + 8) = [v17 intValue];

          return sub_100006C6C(v18);
        }
      }

      else
      {
        sub_100009A04(v23, &unk_1006A2D10, &unk_10057D940);
      }
    }

    v18 = &off_100620290;
    return sub_100006C6C(v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006578(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 applicationInfoForApplication:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

double sub_100006600(uint64_t a1, uint64_t a2)
{
  sub_1000068D4(a1, a2);
  if (v4 && (v5 = v3, v6 = sub_1000067D4(), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_100006A94(v8, v2);
  }

  else
  {
    result = 0.0;
    *v2 = 0u;
    v2[1] = 0u;
  }

  return result;
}

BOOL sub_1000066DC()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t sub_1000067D4()
{
  v1 = sub_100016F64();
  v2 = AnyHashable._rawHashValue(seed:)(v1);

  return sub_1000069D0(v0, v2);
}

uint64_t sub_10000681C()
{

  return swift_slowAlloc();
}

int8x16_t sub_100006850(int8x16_t *a1)
{
  v1[2].i64[0] = a1;
  result = vextq_s8(v1[1], v1[1], 8uLL);
  a1[1] = result;
  return result;
}

uint64_t sub_100006868()
{
}

BOOL sub_10000689C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000068E0()
{

  return swift_allocError();
}

BOOL sub_100006928()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

unint64_t sub_100006958(uint64_t a1)
{

  return sub_10039C0F4(a1);
}

uint64_t sub_1000069B4(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

unint64_t sub_1000069D0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100006724(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100006780(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100006A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006AF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100006B68()
{

  return sub_10002741C(v0, v1, (v2 - 104));
}

void sub_100006B9C(char a1)
{

  sub_10039A2E0(a1, v1, 1);
}

BOOL sub_100006BE4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100006C18(uint64_t a1)
{

  return sub_100009A04(a1, v2, v1);
}

uint64_t sub_100006C3C()
{

  return swift_arrayDestroy();
}

uint64_t sub_100006C6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = Set.init(minimumCapacity:)();
  v9 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_100006D00(&v8, *(a1 + v5));
      v5 += 4;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

BOOL sub_100006D00(_DWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  static Hasher._hash(seed:bytes:count:)();
  sub_100035D14();
  while (1)
  {
    v12 = v8 & v10;
    v13 = (v11 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      break;
    }

    if (*(*(v6 + 48) + 4 * v12) == a2)
    {
      goto LABEL_6;
    }

    v8 = v12 + 1;
  }

  v14 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10039C424();
  sub_100006F40(a2, v12, v15);
  *v3 = v17;
LABEL_6:
  result = v13 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_100006DC4()
{

  return swift_slowAlloc();
}

uint64_t sub_100006E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_10002741C(v8, v9, va);
}

uint64_t sub_100006E34()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100006E74()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

void sub_100006EA8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id sub_100006ED0(void *a1)
{
  v4 = *(v2 + 232);

  return [a1 v4];
}

uint64_t sub_100006EE8()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100006F40(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003970F8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100399758(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100398C58();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_100007048(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2 == 4)
    {
      v5 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10057D690;
      v7 = String.init<A>(reflecting:)();
      v9 = v8;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_100009D88();
      *(v6 + 32) = v7;
      *(v6 + 40) = v9;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_100008EB4();
    }
  }
}

uint64_t sub_10000718C(uint64_t a1, void *a2, void *a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v28 = v4;
  v29 = a2;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v11 = *(*(a1 + 48) + ((v9 << 8) | (4 * __clz(__rbit64(v7)))));
      v32 = sub_100007388(v11);
      v12 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a2;
      v33 = *a2;
      v15 = sub_100007558(v11);
      v17 = *(v14 + 16);
      v18 = (v16 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        break;
      }

      v20 = v15;
      v21 = v16;
      sub_10026D814(&qword_1006A3A28, &qword_10057E918);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19))
      {
        v22 = sub_100007558(v11);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      if (v21)
      {
        *(v33[7] + 8 * v20) = v32;
      }

      else
      {
        v33[(v20 >> 6) + 8] |= 1 << v20;
        *(v33[6] + 4 * v20) = v11;
        *(v33[7] + 8 * v20) = v32;
        v24 = v33[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v33[2] = v26;
      }

      v7 &= v7 - 1;
      v4 = v28;
      a2 = v29;
      *v29 = v33;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100007388(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___CSDProcessObserver_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    if (a1 == -1)
    {
      return 0;
    }

    else
    {
      return static ProcessState.processState(applicationState:)([*(v1 + OBJC_IVAR___CSDProcessObserver_applicationMonitor) mostElevatedApplicationStateForPID:a1]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ProcessState.processState(applicationState:)(int a1)
{
  v1 = a1 - 1;
  result = 0;
  switch(v1)
  {
    case 0:
      result = 1;
      break;
    case 1:
      result = 2;
      break;
    case 2:
    case 4:
    case 5:
    case 6:
      return result;
    case 3:
      result = 3;
      break;
    case 7:
      result = 4;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_10000755C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();
  return sub_10000759C(a1, v4);
}

uint64_t sub_10000759C(uint64_t a1, uint64_t a2)
{
  sub_100049FB4(a1, a2);
  while (((v7 << v4) & *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + 4 * v4) != v3)
  {
    v4 = (v4 + 1) & v6;
  }

  return sub_10003EB44(v4);
}

uint64_t sub_100007608()
{

  return swift_slowAlloc();
}

uint64_t sub_100007630()
{

  return swift_slowAlloc();
}

uint64_t sub_100007660()
{
  result = *(v0 - 216);
  v2 = *(v0 - 240);
  v3 = *(v0 - 296);
  return result;
}

uint64_t sub_100007674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10026D814(a3, a4);
}

uint64_t sub_1000076B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

BOOL sub_1000076CC()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

id sub_1000076E4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_100007738()
{
}

uint64_t sub_10000777C()
{

  return swift_slowAlloc();
}

uint64_t sub_100007794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t sub_1000077B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v24 + v25) = a24;

  return swift_endAccess();
}

id sub_1000077CC()
{
  v3 = *(v1 + 3512);

  return [v0 v3];
}

uint64_t sub_1000077E4()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_100007818(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    sub_100007990();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v15 = v12 | (v4 << 6);
      v16 = *(*(a1 + 56) + 8 * v15);
      v17 = sub_100007558(*(*(a1 + 48) + 4 * v15));
      if ((v18 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
      {
        return;
      }
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      v14 = *(a1 + 64 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100007940()
{

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t sub_100007974()
{

  return swift_slowAlloc();
}

uint64_t sub_1000079DC()
{
}

uint64_t sub_1000079F8()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t sub_100007A18()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

uint64_t sub_100007A64()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_100007A7C()
{

  return sub_10002741C(v0, v1, (v2 - 112));
}

uint64_t sub_100007A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  sub_10000D698();
  v12 = sub_100015AD8();
  sub_100008598(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000C464();
  v15 = sub_100007D68();
  if (v15)
  {
    sub_100008988();
    sub_100005208();
    sub_100008BC4();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    sub_100007794(v15, v16, v17, v18, *v10);
    sub_100006048();
  }

  else
  {
    v22 = sub_100018FA4();
    a10(v22);
    sub_100006048();
  }
}

uint64_t sub_100007BD4()
{
  v2 = v0[22];
  result = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[9];
  return result;
}

uint64_t sub_100007C08()
{

  return swift_slowAlloc();
}

uint64_t sub_100007C38()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_100007C5C(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_100007C7C()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

uint64_t sub_100007C9C()
{

  return swift_allocObject();
}

uint64_t sub_100007CBC()
{
}

uint64_t sub_100007CD8()
{

  return type metadata accessor for DispatchQoS();
}

void sub_100007D34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t sub_100007D48(uint64_t a1)
{

  return sub_100015468(v1 + v2, 1, a1);
}

BOOL sub_100007D68()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_100007D88()
{
  v2 = *(v0 - 128);

  return swift_beginAccess();
}

uint64_t sub_100007DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_100285FC4(a1, va, v14, v15);
}

uint64_t sub_100007E54()
{

  return swift_once();
}

void sub_100007E88()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[104];
  v4 = v0[96];
}

void sub_100007EE4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100007F10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100007F30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100007F98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100007FCC(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_100008040(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100008080()
{

  return swift_once();
}

uint64_t sub_1000080B0()
{

  return swift_once();
}

uint64_t sub_1000080FC()
{

  return swift_once();
}

uint64_t sub_100008134()
{

  return swift_once();
}

id sub_100008154(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_100008194()
{

  return swift_once();
}

uint64_t sub_1000081B4()
{

  return swift_once();
}

uint64_t sub_100008228()
{

  return swift_once();
}

uint64_t sub_100008248()
{

  return swift_allocError();
}

uint64_t sub_10000829C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_1000051F8(v5);
}

uint64_t sub_1000083A0()
{

  return type metadata accessor for UUID();
}

uint64_t sub_1000083DC()
{

  return swift_once();
}

uint64_t sub_1000083FC()
{

  return swift_once();
}

uint64_t sub_100008478()
{

  return swift_once();
}

uint64_t sub_100008510()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100008560()
{

  return swift_dynamicCast();
}

uint64_t sub_1000085AC()
{

  return swift_once();
}

uint64_t sub_10000860C()
{

  return swift_once();
}

uint64_t sub_10000864C()
{

  return swift_once();
}

uint64_t sub_100008688()
{

  return swift_once();
}

id sub_1000086C0(uint64_t a1)
{
  v5 = *(v1 + 3040);

  return [v2 v5];
}

uint64_t sub_1000086E4()
{

  return swift_once();
}

uint64_t sub_100008720()
{

  return swift_once();
}

uint64_t sub_100008758()
{

  return sub_100022DDC();
}

uint64_t sub_1000087D0()
{
}

void sub_100008804(uint64_t a1)
{

  sub_10039A2E0(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_100008840()
{

  return swift_once();
}

uint64_t sub_1000088C0()
{

  return String.hash(into:)();
}

uint64_t sub_10000890C()
{

  return AnyHashable.init<A>(_:)();
}

void sub_100008968(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000089E4(uint64_t a1)
{
  v3 = *(v1 - 120);

  return sub_100015468(a1, 1, v3);
}

uint64_t sub_100008A00()
{
  v2 = v1[82];
  v3 = v1[81];
  v6 = v1[80];
  v4 = v1[79];
  return v0;
}

void sub_100008A54()
{

  sub_10029E2DC();
}

void sub_100008A90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100008AC0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 144);
  return result;
}

uint64_t sub_100008AE8()
{
}

uint64_t sub_100008B38()
{

  return swift_allocObject();
}

uint64_t sub_100008B50()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100008BB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + a2;
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

uint64_t sub_100008BE4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

id sub_100008C18(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{

  return sub_1003BEBAC(a1, a2, a3, a4, a5, 0, 0xF000000000000000);
}

BOOL sub_100008C34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100008C50(uint64_t result)
{
  *(v1 + 48) = result;
  v3 = *(v2 + 16);
  return result;
}

_OWORD *sub_100008C78@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, __int128 a5, uint64_t a6)
{
  *(v9 + v6) |= v7;
  v11 = v8[6] + 40 * a1;
  *v11 = a4;
  *(v11 + 16) = a5;
  *(v11 + 32) = a6;
  result = sub_10003EBF0((v10 - 120), (v8[7] + 32 * a1));
  ++v8[2];
  return result;
}

void sub_100008CD4()
{
  v4 = v0[109];
  v1 = v0[104];
  v2 = v0[96];
  v3 = v0[95];
}

uint64_t sub_100008CF0(uint64_t a1, uint64_t a2)
{
  sub_10000AF9C(a1, a2);
  v3 = *(v2 - 168);
}

uint64_t sub_100008D34()
{

  return swift_beginAccess();
}

uint64_t sub_100008D4C()
{

  return swift_slowAlloc();
}

uint64_t sub_100008D74()
{

  return sub_10001BDB8(v1 - 128, v0);
}

char *sub_100008E14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

uint64_t sub_100008E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_100008EB4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = *&v0[OBJC_IVAR___CSDFaceTimeInstallationNotifier_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  aBlock[4] = sub_10000992C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006272D0;
  v23 = _Block_copy(aBlock);
  v24 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v4 + 8))(v10, v1);
  (*(v14 + 8))(v20, v11);
}

uint64_t sub_1000090FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100009488(uint64_t a1)
{
  v2 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
  swift_beginAccess();
  sub_100009934(a1 + v2, v24);
  if (v25)
  {
    sub_100009AB0(v24, v21);
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
    v3 = v22;
    v4 = v23;
    sub_100009B14(v21, v22);
    (*(v4 + 16))(v20, &type metadata for Bool, 0xD00000000000001ELL, 0x800000010056B530, &type metadata for Bool, v3, v4);
    v5 = LOBYTE(v20[0]);
    sub_100009B7C(v21);
    if (v5 != 2 && (v5 & 1) != 0)
    {
      if (qword_1006A0AF8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000AF9C(v6, qword_1006BA568);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_27;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Not posting notification since we determined that we have already shown it";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_27:

      return;
    }
  }

  else
  {
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
  }

  if (sub_100009BC8())
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA568);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_27;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping to setup xpc activity since FaceTime is blocked on this device";
    goto LABEL_26;
  }

  if ((sub_100324E7C() & 1) == 0)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA568);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_27;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Not posting notification since video conferencing is not allowed via profile restrictions";
    goto LABEL_26;
  }

  if (sub_100009C08() != 3)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000AF9C(v15, qword_1006BA568);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_27;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Not posting the notifcation since FaceTime app restriction is not uninstalled";
    goto LABEL_26;
  }

  sub_100009934(a1 + v2, v24);
  if (v25)
  {
    sub_100009AB0(v24, v21);
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
    v12 = v22;
    v13 = v23;
    sub_100009B14(v21, v22);
    v20[3] = &type metadata for Bool;
    LOBYTE(v20[0]) = 1;
    (*(v13 + 8))(v20, 0xD00000000000001ELL, 0x800000010056B530, v12, v13);
    sub_1000099A4(v20, &unk_1006A2D10, &unk_10057D940);
    sub_100009B7C(v21);
  }

  else
  {
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
  }

  v16 = a1 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure;
  v17 = *(a1 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure);
  if (v17)
  {
    v18 = *(v16 + 8);

    v17(v19);
    sub_1000051F8(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100009934(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5868, &unk_1005805F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000099A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10026D814(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009A04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10026D814(a2, a3);
  sub_100008070(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100009A5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10026D814(a2, a3);
  sub_1000080D0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100009AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100009B14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009B7C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009BC8()
{
  v1 = OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___facetimeRestrictedOnDevice;
  v2 = *(v0 + OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___facetimeRestrictedOnDevice);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100324D04();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id sub_100009C08()
{
  v1 = (v0 + OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___idsRegistrationRestriction);
  if (*(v0 + OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___idsRegistrationRestriction + 8) != 1)
  {
    return *v1;
  }

  if (qword_1006A0820 != -1)
  {
    swift_once();
  }

  result = [qword_1006A41D0 registrationRestrictionReason];
  *v1 = result;
  v1[8] = 0;
  return result;
}

unint64_t ProcessState.debugDescription.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x616E696D7265742ELL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      JUMPOUT(0x100009D74);
  }

  return result;
}

unint64_t sub_100009D88()
{
  result = qword_1006A30B0;
  if (!qword_1006A30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A30B0);
  }

  return result;
}

void sub_100009DDC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100009E14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_100009E34(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_100009EF4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100009F00()
{

  return swift_allocObject();
}

uint64_t sub_100009F24()
{

  return swift_allocObject();
}

uint64_t sub_100009F3C()
{

  return swift_once();
}

__n128 sub_100009F7C()
{
  *(v1 + 16) = v2;
  v5 = v1 + v3 * v0;
  result = *(v4 - 192);
  v7 = *(v4 - 176);
  *(v5 + 57) = *(v4 - 167);
  *(v5 + 32) = result;
  *(v5 + 48) = v7;
  return result;
}

uint64_t sub_100009FA4@<X0>(char a1@<W8>)
{

  return sub_100010000(v1, v2, a1 & 1);
}

id sub_100009FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2264);

  return [v6 v10];
}

BOOL sub_10000A004(Swift::String a1)
{

  return String.hasPrefix(_:)(a1);
}

void sub_10000A0A8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  sub_100378C74(va, va1);
}

uint64_t sub_10000A0F0(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

NSSet sub_10000A12C()
{

  return Set._bridgeToObjectiveC()();
}

uint64_t sub_10000A19C()
{

  return swift_once();
}

uint64_t sub_10000A1D8()
{

  return swift_once();
}

uint64_t sub_10000A248()
{

  return swift_once();
}

uint64_t sub_10000A2B0()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_10000A354()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10000A3A0()
{
  *(v1 - 216) = v0;

  sub_100378C74(v1 - 192, v1 - 128);
}

uint64_t sub_10000A3C4()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000A3EC(uint64_t a1)
{
  *(a1 + 8) = sub_1003DE964;
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  return v1 + 16;
}

void sub_10000A468(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10000A4A0(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_10002741C(0xD00000000000002FLL, (v1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_10000A4C4()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10000A4DC()
{

  return URL.appendingPathComponent(_:)();
}

uint64_t sub_10000A508()
{

  return AnyHashable.init<A>(_:)();
}

BOOL sub_10000A648(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000A680(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return v2;
}

uint64_t sub_10000A6A8()
{

  return Handle.type.getter();
}

uint64_t sub_10000A6C8()
{
  v2 = v0[50];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[26];
  v7 = v0[27];

  return swift_willThrow();
}

BOOL sub_10000A6F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

id sub_10000A724(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = *(v4 - 136);

  return v2;
}

id sub_10000A780(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10000A800()
{
  v1 = v0[7];
  v2 = *(v0[8] + 8);
  return v0[9];
}

unint64_t sub_10000A82C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_10000A8F8()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

unint64_t sub_10000A90C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_10000ABF4(a3);

  return sub_100024D54(a2, v5, a3);
}

uint64_t sub_10000A990()
{

  return os_log(_:dso:log:type:_:)();
}

uint64_t sub_10000A9B8()
{
}

uint64_t sub_10000A9D4()
{

  return swift_allocObject();
}

uint64_t sub_10000AA08()
{

  return swift_once();
}

uint64_t sub_10000AA28()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000AA44()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10000AA88()
{
  sub_100009B7C(v0);
}

uint64_t sub_10000AABC()
{
}

uint64_t sub_10000AAD8(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;
  *(v4 + 4) = v5 & 1;
  *(v4 + 8) = 2080;

  return sub_10002741C(v3, v2, va);
}

uint64_t sub_10000AB08(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

uint64_t sub_10000AB54()
{

  return swift_once();
}

uint64_t sub_10000AB74()
{
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[90];
}

uint64_t sub_10000ABAC()
{

  return String.hash(into:)();
}

void sub_10000ABE4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

unint64_t sub_10000AC00()
{
  result = qword_1006A2CC0;
  if (!qword_1006A2CC0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CC0);
  }

  return result;
}

uint64_t sub_10000AC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v41 - v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v4 valueForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(v41, v42);
    sub_100006A94(v42, v41);
    if (swift_dynamicCast())
    {
      sub_100009B7C(v42);
      sub_100009F98();
      sub_10000AF74(v16, v17, v18, v19);
      (*(*(a2 - 8) + 32))(a3, v13, a2);
    }

    else
    {
      sub_100009F98();
      sub_10000AF74(v25, v26, v27, v28);
      (*(v9 + 8))(v13, v8);
      if (qword_1006A0AA0 != -1)
      {
        sub_100008134();
      }

      static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10057D6A0;
      sub_100006A94(v42, v41);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      *(v29 + 56) = &type metadata for String;
      v33 = sub_100009D88();
      *(v29 + 64) = v33;
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
      *&v41[0] = a1;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v35 = sub_10031E8A0(v41, MetatypeMetadata);
      *(v29 + 96) = &type metadata for String;
      *(v29 + 104) = v33;
      *(v29 + 72) = v35;
      *(v29 + 80) = v36;
      os_log(_:dso:log:type:_:)();

      sub_100009B7C(v42);
    }

    sub_100009F98();
    return sub_10000AF74(v37, v38, v39, v40);
  }

  else
  {
    sub_100009F98();

    return sub_10000AF74(v20, v21, v22, v23);
  }
}

uint64_t sub_10000AF9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000B23C()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallController_dataSources);
  v2 = sub_10000B6F4(v1);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v42[0] = _swiftEmptyArrayStorage;
    sub_10000B830();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    v3 = v42[0];
    do
    {
      v5 = v3;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 calls];
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = v5;
      v42[0] = v5;
      v10 = v5[2];
      v11 = v10 + 1;
      if (v10 >= v5[3] >> 1)
      {
        sub_10000B830();
        v11 = v10 + 1;
        v3 = v42[0];
      }

      ++v4;
      v3[2] = v11;
      v3[v10 + 4] = v9;
    }

    while (v2 != v4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];
  }

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v39 = v3;
  v40 = (v3 + 4);
  v38 = v11;
  while (1)
  {
    v14 = v13 >> 62;
    if (v12 == v11)
    {
      break;
    }

    if (v12 >= v3[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v15 = *&v40[8 * v12];
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v35 = *&v40[8 * v12];
      }

      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_53;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_27:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
        v20 = *(v19 + 16);
      }

      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v13 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v14)
    {
      goto LABEL_27;
    }

    v19 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

LABEL_29:
    ++v12;
    v21 = *(v19 + 16);
    v22 = (*(v19 + 24) >> 1) - v21;
    v23 = v19 + 8 * v21;
    v41 = v19;
    if (v15 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (!v25)
      {
        goto LABEL_43;
      }

      v26 = v25;
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (v22 < v27)
      {
        goto LABEL_57;
      }

      if (v26 < 1)
      {
        goto LABEL_58;
      }

      v36 = v27;
      v37 = v12;
      sub_100024C98();
      for (i = 0; i != v26; ++i)
      {
        sub_10026D814(&unk_1006A7C20, &qword_1005834D0);
        v29 = sub_100024CFC(v42, i, v15);
        v31 = *v30;
        v29(v42, 0);
        *(v23 + 32 + 8 * i) = v31;
      }

      v12 = v37;
      v24 = v36;
LABEL_39:

      v11 = v38;
      v3 = v39;
      if (v24 < v16)
      {
        goto LABEL_54;
      }

      if (v24 > 0)
      {
        v32 = *(v41 + 16);
        v33 = __OFADD__(v32, v24);
        v34 = v32 + v24;
        if (v33)
        {
          goto LABEL_55;
        }

        *(v41 + 16) = v34;
      }
    }

    else
    {
      v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        if (v22 < v24)
        {
          goto LABEL_56;
        }

        sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
        swift_arrayInitWithCopy();
        goto LABEL_39;
      }

LABEL_43:

      v11 = v38;
      v3 = v39;
      if (v16 > 0)
      {
        goto LABEL_54;
      }
    }
  }

  if (!v14)
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
    goto LABEL_51;
  }

LABEL_59:
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);

  _bridgeCocoaArray<A>(_:)();

LABEL_51:

  sub_100006AF0(0, &qword_1006A5988, TUCallContainer_ptr);
  sub_10000BCEC();
}

uint64_t sub_10000B6D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_10000B6FC()
{
  v1 = [*(v0 + 16) callContainer];

  return v1;
}

void sub_10000B734()
{
  sub_10003D4BC();
  sub_10000F3AC();
  if (v5)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(v3, v4);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = sub_1000060A8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = sub_100008B14();
    sub_10026D814(v17, v18);
    sub_1000060A8();
    swift_arrayInitWithCopy();
  }

  sub_100035CE8();
}

void sub_10000B830()
{
  v1 = *v0;
  sub_10000B734();
  *v0 = v2;
}

void sub_10000B87C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10000B89C(uint64_t result)
{
  v2 = (*(v1 + 56) + 24 * result);
  v3 = *v2;
  v4 = v2[1];
  return result;
}

id sub_10000B91C()
{
  v3 = *(v0 + 1160);

  return [v1 v3];
}

void sub_10000B940(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10000B960()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_10000B994()
{
  *(v1 - 96) = v0;

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_10000BA08()
{

  return swift_beginAccess();
}

BOOL sub_10000BA5C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000BA88()
{
  v4 = *(v2 + 200);
  v3 = *(v2 + 208);
  sub_10000AF74(v4, v1, 1, v0);

  return sub_1003A6148(v4, v3);
}

void sub_10000BAC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_10000BB0C()
{
  result = *(v0 - 104);
  v2 = *(*(v0 - 112) + 8);
  return result;
}

BOOL sub_10000BB44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000BB5C()
{
  v2 = *(v0 - 208);

  return sub_100022DDC();
}

uint64_t sub_10000BBA4()
{
  v1 = *(v0 + 160);
  sub_100009B7C((v0 + 16));
}

uint64_t sub_10000BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t sub_10000BBF4()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t sub_10000BC10()
{

  return swift_dynamicCast();
}

uint64_t sub_10000BC34()
{
  v2 = *(v0 - 96);

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

id sub_10000BCEC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithCalls:isa];

  return v2;
}

uint64_t sub_10000BE44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000BE80()
{
  v3 = v1;
  sub_10004A0D0();
  v5 = v4;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057DEC0;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v6 + 40) = [v7 tu_predicateForConversationLinkDescriptorsIsDeleted:0];
  v19 = v6;
  if (v5)
  {
    v8 = [v7 tu_predicateForConversationLinkDescriptorsWithPrivateKey:0];
    v9 = [objc_opt_self() notPredicateWithSubpredicate:v8];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    sub_10000B8B0();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  v10 = sub_10000C350();
  v11 = *(v3 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  sub_100007C2C();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v0;
  aBlock[4] = sub_10000CD54;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_10000A8B8();
  aBlock[2] = v13;
  aBlock[3] = &unk_100629980;
  v14 = _Block_copy(aBlock);
  v15 = v10;
  sub_100051648();

  sub_100025C24();
  sub_10000C740();
  [v16 v17];
  _Block_release(v14);
}

uint64_t sub_10000C0B4()
{
  v1 = *(v0 + 24);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

BOOL sub_10000C188()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10000C1AC()
{

  return swift_allocObject();
}

uint64_t sub_10000C224(uint64_t a1, uint64_t a2)
{

  return sub_100023E48(a1, a2, v2);
}

uint64_t sub_10000C264()
{

  return type metadata accessor for DispatchPredicate();
}

id sub_10000C27C()
{
  v3 = *(v1 + 1376);

  return [v0 v3];
}

uint64_t sub_10000C2B0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000C2D0()
{
  v4 = *(*(v3 - 88) + 48) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return v2;
}

uint64_t sub_10000C304()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10000C31C()
{
  v2 = v1[87];
  v6 = v1[85];
  v7 = v1[86];
  v3 = v1[82];
  v4 = v1[81];
  v8 = v1[80];
  return v0;
}

id sub_10000C350()
{
  sub_100006AF0(0, &unk_1006A30C0, NSPredicate_ptr);
  Array._bridgeToObjectiveC()();
  sub_10039C4B0();
  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:v0];

  return v1;
}

uint64_t sub_10000C3CC()
{
}

uint64_t sub_10000C3F0()
{
}

uint64_t sub_10000C464()
{

  return sub_10026D814(v0, v1);
}

void sub_10000C4A4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0x16u);
}

uint64_t sub_10000C4DC(float a1)
{
  *v2 = a1;
  *v3 = v1;

  return swift_errorRetain();
}

id sub_10000C510@<X0>(uint64_t a1@<X8>)
{

  return sub_10031E958(0xD000000000000019, ((a1 - 32) | 0x8000000000000000));
}

uint64_t sub_10000C530()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000C554()
{

  return swift_slowAlloc();
}

void *sub_10000C5BC()
{
  v2 = *(v0 + 56);

  return sub_100009B14((v0 + 32), v2);
}

uint64_t sub_10000C5D4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_10000C5FC(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

void sub_10000C654(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10000C674()
{

  return sub_100022DDC();
}

uint64_t sub_10000C6CC()
{

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t sub_10000C708()
{
  *(v3 - 192) = v2;
  *(v0 + 56) = *(v1 + 240);

  return sub_1002F6EC4(v3 - 240);
}

uint64_t sub_10000C768()
{
}

void sub_10000C7A0()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t sub_10000C7DC(uint64_t a1)
{
  *(a1 + 16) = *(v1 + v5);
  v7 = v3 + *(v2 + 48);

  return sub_1002DB564(v4, v3);
}

uint64_t sub_10000C808()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000C844()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000C87C(uint64_t a1)
{

  return sub_10000AF74(a1, 1, 1, v1);
}

void sub_10000C8BC()
{

  sub_1002762F0();
}

void sub_10000C910()
{
  v5 = (v1 + v4);
  *v5 = v3;
  v5[1] = v0;
  *(v2 + 480) = sub_10046A100;
  *(v2 + 488) = v1;
}

void sub_10000CA64(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) mutableConversationsByUUID];
  v2 = [v1 allValues];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isFromStorage] & 1) == 0)
        {
          [v7 refreshActiveParticipantsList];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t sub_10000CB80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10000CC24(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = &_swiftEmptySetSingleton;
  v14 = &_swiftEmptySetSingleton;
  result = sub_10000B6F4(a1);
  if (!result)
  {
LABEL_11:
    a3(v6, a2);
    goto LABEL_12;
  }

  v8 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v12 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v10];
    sub_100396874(&v13, v12);
  }

  while (v8 != v9);
  a3(v14, a2);
LABEL_12:
}

void sub_10000CD5C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
    sub_10000CE3C(&unk_1006A67B0, &unk_1006A2C00, TUConversationLink_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;
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

uint64_t sub_10000CE3C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006AF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D33C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 232) = *(a1 - 256);

  return String.init<A>(reflecting:)();
}

unint64_t sub_10000D380@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_10000D39C()
{
}

uint64_t sub_10000D3B4(uint64_t a1)
{
  *(v2 - 104) = a1;
  v4 = v1[104];
  v5 = v1[103];
  v6 = v1[102];
  v7 = v1[96];
  v8 = v1[95];
  v9 = v1[84];
  v10 = v1[83];

  return URL.deletingLastPathComponent()();
}

uint64_t *sub_10000D420()
{
  result = sub_100009B14(v0, v0[3]);
  v2 = *result;
  return result;
}

_OWORD *sub_10000D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_10003EBF0(&a14, &a11);
}

id sub_10000D458(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10000D470()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
}

void sub_10000D4A4(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 104) = v4;
  *(v2 - 96) = v3;
}

uint64_t sub_10000D4DC()
{

  return swift_beginAccess();
}

uint64_t sub_10000D544()
{
  v1 = *(*(v0 - 304) + 8);
  result = *(v0 - 312);
  v3 = *(v0 - 280);
  return result;
}

uint64_t sub_10000D568()
{
}

uint64_t sub_10000D588()
{
  sub_100009B7C(v0);
}

uint64_t sub_10000D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return sub_10002741C(a21, v21, (v22 - 96));
}

uint64_t sub_10000D5EC@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_10000D5F8()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t sub_10000D610()
{
}

BOOL sub_10000D654(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000D670()
{

  return swift_slowAlloc();
}

void *sub_10000D6D8(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t sub_10000D704()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[26];
  v5 = v0[27];

  return sub_1002E0D34();
}

uint64_t sub_10000D724()
{

  return sub_100009AB0(v0 - 128, v0 - 168);
}

uint64_t sub_10000D76C(uint64_t a1, uint64_t (*a2)(void))
{

  return sub_1004204DC(a1, 1, a2);
}

uint64_t sub_10000D78C@<X0>(uint64_t a1@<X8>)
{

  return sub_100396044(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_10000D7AC()
{
  *(v0 + 88) = sub_10046834C;

  return swift_continuation_init();
}

uint64_t sub_10000D7E0()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 frontmostCall];

  if (v2 || (v3 = [v0 sharedInstance], v2 = objc_msgSend(v3, "currentVideoCall"), v3, v2))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_10000D8A8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA688);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "handleAudioRouteChanged", v8, 2u);
    }

    v9 = sub_10000D7E0();
    if (v9)
    {
      v10 = v9;
      v11 = *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (!v11)
      {
        v25 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v25, v34, "No translation session so not handle audio route changed", v35, 2u);
        }

        goto LABEL_28;
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      v13 = v11;
      v14 = v13;
      if (!v12)
      {
LABEL_15:
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Currently translation call is not the call which just changed audio route. Not updating translation", v27, 2u);
        }

LABEL_28:
        v12 = v10;
        goto LABEL_57;
      }

      v57 = v13;
      v15 = [v12 uniqueProxyIdentifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v56 = v10;
      v19 = [v56 uniqueProxyIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {

          v14 = v57;
          goto LABEL_15;
        }
      }

      v36 = v57;
      v37 = v56;
      if (sub_1002A41F0() == 2)
      {
        v38 = sub_1002B641C(a2);
        if (v38)
        {
          v39 = v38;
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v40;
          AnyHashable.init<A>(_:)();
          sub_100006600(v60, v39);

          sub_100006780(v60);
          if (v61[3])
          {
            sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              isa = v58;
LABEL_43:
              if ([(objc_class *)isa integerValue]== 8)
              {
                v46 = [v56 isSendingVideo];

                if ((v46 & 1) != 0 || [v56 service]== 3)
                {
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationLinks) = 1;
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationMode) = 2;
                  v47 = Logger.logObject.getter();
                  v48 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v47, v48))
                  {
                    v49 = swift_slowAlloc();
                    *v49 = 0;
                    v50 = "since call is video, switching translationLinks and translationMode";
LABEL_53:
                    _os_log_impl(&_mh_execute_header, v47, v48, v50, v49, 2u);
                  }
                }

                else
                {
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationLinks) = 3;
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationMode) = 0;
                  v47 = Logger.logObject.getter();
                  v48 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v47, v48))
                  {
                    v49 = swift_slowAlloc();
                    *v49 = 0;
                    v50 = "since call is audio, switching translationLinks and translationMode";
                    goto LABEL_53;
                  }
                }

                sub_1002ACB08(v56, 1, *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_remoteAudioMode), *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationMode), v4, sub_1002B2B74, &unk_1006237D8, "Reconfigure audio session due to audio route changes successfully", "Failed to reconfigure audio session due to audio route changes", v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v61[0], v61[1]);
                goto LABEL_55;
              }

              v51 = isa;
              v42 = Logger.logObject.getter();
              v52 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v42, v52))
              {
                v53 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                *v53 = 138412290;
                *(v53 + 4) = v51;
                *v54 = v51;
                isa = v51;
                _os_log_impl(&_mh_execute_header, v42, v52, "route change reason %@ not handled", v53, 0xCu);
                sub_100009A04(v54, &unk_1006A2630, &qword_10057CB40);

LABEL_55:
                goto LABEL_56;
              }

LABEL_40:
LABEL_56:

              goto LABEL_57;
            }
          }

          else
          {
            sub_100009A04(v61, &unk_1006A2D10, &unk_10057D940);
          }

          sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
          isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
          goto LABEL_43;
        }

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v42, v43))
        {
          goto LABEL_40;
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "No userInfo in notification, return";
      }

      else
      {

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v42, v43))
        {
          goto LABEL_40;
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Not in translation, return";
      }

      _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);

      goto LABEL_40;
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Invalid frontmost call, return", v33, 2u);
    }

    v12 = v4;
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000AF9C(v28, qword_1006BA688);
    v12 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v12, v29, "invalid self, return", v30, 2u);
    }
  }

LABEL_57:
}

void sub_10000E150()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_10000E598();
  v33 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v33);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4();
  }

  v21 = type metadata accessor for Logger();
  sub_1000075F0(v21, qword_1006BA688);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v23))
  {
    v24 = sub_100006DC4();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "get notificaiton to handleAudioRouteChanged", v24, 2u);
    sub_100005F40();
  }

  v25 = *(v2 + OBJC_IVAR___CSDCallTranslationController_queue);
  sub_100006890();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v4;
  v34[4] = sub_10000E148;
  v34[5] = v27;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v34[2] = v28;
  v34[3] = &unk_1006237B0;
  v29 = _Block_copy(v34);

  v30 = v4;
  static DispatchQoS.unspecified.getter();
  sub_1000150B4();
  sub_10000ECD8(v31, v32);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100008A7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001E3D8();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v8 + 8))(v1, v5);
  (*(v14 + 8))(v20, v33);

  sub_100005EDC();
}

uint64_t sub_10000E424()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000E4C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_10000E4D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10000E5C8(uint64_t a1)
{

  return sub_10000AF74(a1, 0, 1, v1);
}

uint64_t sub_10000E5F4()
{
  sub_10000AF74(v0, 2, 2, *(v1 - 184));

  return sub_100043F40(v0);
}

_OWORD *sub_10000E64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v14 = (*(v11 + 56) + 32 * v12);

  return sub_10003EBF0(v14, &a11);
}

uint64_t sub_10000E668()
{
}

char *sub_10000E6E8()
{

  return sub_10032091C(v0, sub_10039C390);
}

uint64_t sub_10000E718()
{
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[71];
}

uint64_t sub_10000E764()
{
  sub_100009B7C(v0);
}

uint64_t sub_10000E7D4()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

id sub_10000E83C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 32) = v1;

  return v1;
}

uint64_t sub_10000E8DC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_10000E8EC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  v3 = v2[1];
}

uint64_t sub_10000E8F8()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000E91C()
{

  return sub_10029D480();
}

uint64_t sub_10000E980()
{

  return swift_dynamicCast();
}

uint64_t sub_10000E9A4()
{
  v2 = *(v0 - 128);

  return Logger.logObject.getter();
}

uint64_t sub_10000E9D4()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

uint64_t sub_10000EA0C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10000EA90()
{
  *(v2 - 112) = *(v1 + v0);

  sub_100378540();
}

uint64_t sub_10000EB1C()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[15];
}

uint64_t sub_10000EB40(uint64_t result)
{
  v3 = v2 + *(v1 + 24);
  *v3 = result;
  *(v3 + 6) = BYTE6(result);
  *(v3 + 4) = WORD2(result);
  return result;
}

void sub_10000EB88()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[22];
  v4 = v0[24] + 8;
}

uint64_t sub_10000EB9C()
{

  return swift_beginAccess();
}

uint64_t sub_10000EBBC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10000EBE0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t sub_10000EC24(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

void sub_10000EC34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_10000EC54(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2 & 1;
  *(v1 + 8) = 2080;
  *(v4 - 100) = v2;
  v6 = *v3;
  v7 = v3[1];
}

uint64_t sub_10000EC90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000ECD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000ED20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000ED68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EDB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EDF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EE40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EF18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EF60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_10000EFA8(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    v3(255);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10000EFE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F030(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F0C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F1E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F2B8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_10000F2F8()
{
  v2 = *(v0 + 280);

  return swift_errorRetain();
}

id sub_10000F350()
{

  return sub_10031E020(v2, v0, v1);
}

uint64_t sub_10000F3E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_10002741C(a1, a2, &a9);
}

uint64_t sub_10000F3F8()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000F450()
{

  return type metadata accessor for UUID();
}

uint64_t sub_10000F4B0()
{

  return os_log(_:dso:log:type:_:)();
}

id sub_10000F508()
{

  return sub_1003DFB90(v0, v1, v2);
}

uint64_t sub_10000F52C()
{
}

uint64_t sub_10000F570()
{
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[25];
}

void sub_10000F590(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000F5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 48) + 40 * v10;

  return sub_100006780(v12);
}

id sub_10000F5E4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10000F638@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_10002741C(0xD000000000000042, a1 | 0x8000000000000000, va);
}

uint64_t sub_10000F658()
{

  return swift_beginAccess();
}

uint64_t sub_10000F674()
{
}

uint64_t sub_10000F6B0(unint64_t *a1)
{

  return sub_10001000C(a1, v2, v1);
}

id sub_10000F784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2264);

  return [v5 v10];
}

void sub_10000F7A8()
{

  sub_1003AE81C(5);
}

uint64_t sub_10000F7C0()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000F7E0()
{
  sub_10003EBF0((v0 - 160), (v0 - 192));

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_10000F810(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_10000F828(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

NSString sub_10000F848()
{

  return String._bridgeToObjectiveC()();
}

id sub_10000F898@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;
  *(v4 + 72) = v2 & 1;

  return v3;
}

uint64_t sub_10000F8C4()
{

  return static NSObject.== infix(_:_:)();
}

uint64_t sub_10000F8E0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10000F904()
{

  return swift_once();
}

uint64_t sub_10000F93C()
{

  return dispatch thunk of Hashable.hash(into:)();
}

BOOL sub_10000F96C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10000F99C()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void sub_10000F9C8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_10000F9E4()
{

  return sub_10026D814(v0, v1);
}

uint64_t sub_10000FA44()
{
  *(v0 + 24) = sub_100334724;

  return swift_continuation_init();
}

uint64_t sub_10000FAAC()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_10000FAC4()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 56);
}

void sub_10000FAFC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

id sub_10000FB08()
{
  v3 = *(v1 + 536);

  return [v0 v3];
}

void sub_10000FB4C()
{
  v2[28] = sub_100469604;
  v2[29] = v0;
  v2[30] = v1;
}

uint64_t sub_10000FB64()
{
  v3 = *(v1 - 304);

  return sub_1003812B0(v0, v3);
}

uint64_t sub_10000FB84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10001000C(a1, a2, a3);
}

uint64_t sub_10000FBA8()
{

  return AsyncStream.Continuation.yield(_:)();
}

id sub_10000FBE4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_10000FC50(__n128 a1)
{
  *(v1 + v3) = a1;

  return sub_10000AF74(v1, 0, 1, v2);
}

uint64_t sub_10000FCA8()
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_10000FCD0()
{

  return swift_getObjectType();
}

uint64_t sub_10000FCE8()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000FD00()
{

  return swift_beginAccess();
}

uint64_t sub_10000FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 160) = a6;

  return type metadata accessor for DispatchWorkItemFlags();
}

void sub_10000FDAC()
{
  v1 = v0[13];
  v2 = v0[23];
  v3 = v0[3];
}

uint64_t sub_10000FDEC(uint64_t a1)
{

  return sub_100015468(a1, 1, v1);
}

uint64_t sub_10000FE58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return sub_10026D814(a2, a3);
}

uint64_t sub_10000FE98()
{

  return swift_slowAlloc();
}

void sub_10000FEB4()
{
}

void sub_10000FEE0()
{

  sub_1003D1ED4(v2, v0, v1);
}

uint64_t sub_10000FF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return sub_100010000(v17, v18, a17 & 1);
}

uint64_t sub_10000FF3C()
{

  return swift_beginAccess();
}

void sub_10000FF70()
{
  *(v1 - 120) = v0[118];
  v16 = v0[117];
  v10 = v0[114];
  v11 = v0[116];
  v12 = v0[110];
  v14 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v9 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  *(v1 - 112) = v0[96];
  *(v1 - 104) = v5;
  v7 = v0[95];
  v18 = v0[93];
  v19 = v0[92];
  v17 = v0[91];
  v8 = v0[90];
  v15 = v0[89];
  v13 = v0[88];
}

uint64_t sub_100010000(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001000C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10026DCB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010078()
{
  result = v0[39];
  v2 = v0[32];
  v3 = *(v0[33] + 8);
  return result;
}

uint64_t sub_1000100AC()
{
  result = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  return result;
}

void sub_10001010C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t sub_100010140()
{
  v2 = v0[38];
  result = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[26];
  return result;
}

uint64_t sub_100010160()
{
}

uint64_t sub_1000101A8()
{
  sub_100009B7C(v0);
}

uint64_t sub_1000101DC()
{
  result = v0 + 32;
  v3 = -*(v0 + 16);
  v4 = *(v1 - 200);
  return result;
}

uint64_t sub_1000101F4()
{
  v3 = (*(v1 + 48) + 16 * v0);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*(v1 + 56) + 8 * v0);

  return type metadata accessor for GeneratorDescriptor();
}

uint64_t sub_10001022C(uint64_t a1, unint64_t a2)
{

  return sub_10002741C(a1, a2, (v2 - 176));
}

uint64_t sub_1000102A8()
{

  return swift_allocObject();
}

uint64_t sub_1000102DC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{

  return sub_1002F93D0(a1, a2, a3);
}

uint64_t sub_100010314(uint64_t a1)
{
  *(a1 + 8) = sub_1003324F8;
  v3 = *(v2 + 160);
  return v1;
}

uint64_t sub_100010344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100049EF4(v10, &a9 - v9);
}

uint64_t sub_100010368()
{

  return swift_beginAccess();
}

uint64_t sub_100010394()
{
  v2 = v0[26];
  result = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[13];
  v12 = v0[14];
  return result;
}

uint64_t sub_100010424(uint64_t a1)
{
  *(a1 + 8) = sub_1003A2DD0;
  v2 = *(v1 + 312);
  return *(v1 + 136);
}

void sub_10001046C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10001048C()
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000104D8()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100010508()
{
  sub_100009B7C(v0);
}

void sub_100010554(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 6) = 3;
  *(v2 + 4) = 0;
  *v2 = 0;
}

uint64_t sub_10001056C()
{
}

uint64_t sub_1000105A0(uint64_t result)
{
  *(v2 + 64) = result;
  *(v2 + 32) = v1;
  return result;
}

uint64_t sub_1000105EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for Notification();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a1;
  a4(v15);

  return (*(v9 + 8))(v15, v6);
}

void sub_1000106C8()
{
  sub_100005EF4();
  v43 = v1;
  v44 = v0;
  v2 = v1;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v48);
  v50 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007FDC();
  v46 = v9 - v8;
  sub_10000D414();
  v49 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v49);
  v47 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_100007FDC();
  v45 = v16 - v15;
  sub_10000D414();
  v17 = type metadata accessor for Notification();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  v24 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v25 = sub_100009F00();
  *(v25 + 16) = xmmword_10057D690;
  v26 = *(v20 + 16);
  v26(&v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v17);
  v27 = String.init<A>(reflecting:)();
  v29 = v28;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100009D88();
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v30 = v44;
  v31 = *&v44[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue];
  v26(&v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v17);
  v32 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v33 = swift_allocObject();
  (*(v20 + 32))(v33 + v32, &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  *(v33 + ((v22 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v52[4] = sub_100010B7C;
  v52[5] = v33;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v52[2] = v34;
  v52[3] = &unk_10062E560;
  v35 = _Block_copy(v52);
  v36 = v30;
  v37 = v45;
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v38, v39, &unk_10057D6E0);
  v40 = v46;
  v41 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v50 + 8))(v40, v41);
  (*(v47 + 8))(v37, v49);

  sub_100005EDC();
}

uint64_t sub_100010A84()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

id sub_100010B20()
{
  if (qword_1006ACF40 != -1)
  {
    sub_10047D1C8();
  }

  v1 = qword_1006ACF38;

  return v1;
}

uint64_t sub_100010B7C()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100010C08(v0 + v2, v3);
}

uint64_t sub_100010C08(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    return sub_100010E74();
  }

  v4 = v3;
  v5 = (a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory);
  if (!*(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory + 8))
  {
    goto LABEL_7;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v6;
  AnyHashable.init<A>(_:)();
  sub_100006600(v19, v4);
  sub_100006780(v19);
  if (v21)
  {
    if (swift_dynamicCast())
    {
      v7 = *v5;
      v8 = v5[1];

      v9 = sub_1003ED4E0(v7, v8, v15, v17);

      if (!v9)
      {
      }
    }
  }

  else
  {
    sub_10004975C(v20);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v10;
  AnyHashable.init<A>(_:)();
  sub_100006600(v19, v4);

  sub_100006780(v19);
  if (!v21)
  {
    sub_10004975C(v20);
    return sub_100010E74();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100010E74();
  }

  v11 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode + 8);
  if (!v11)
  {
  }

  if (*(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode) == v16 && v11 == v18)
  {
LABEL_7:

    return sub_100010E74();
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return sub_100010E74();
  }

  return result;
}

uint64_t sub_100010E74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = (v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider);
    v12 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 24);
    v13 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 32);
    sub_100009B14((v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider), v12);
    if ((*(v13 + 8))(v12, v13))
    {
      swift_getObjectType();
      v14 = v11[3];
      v15 = v11[4];
      sub_100009B14(v11, v14);
      v16 = (*(v15 + 16))(v14, v15);
    }

    else
    {
      v17 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory + 8);
      if (v17)
      {
        v18 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory);
        v19 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode);
        v20 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode + 8);

        v21 = sub_1003EC740(v18, v17, v19, v20);

LABEL_8:

        return sub_10001185C(v21);
      }

      swift_getObjectType();
      v22 = v11[3];
      v23 = v11[4];
      sub_100009B14(v11, v22);
      v16 = (*(v23 + 24))(v22, v23);
    }

    v21 = sub_1000115DC(v16);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000110CC(SEL *a1)
{
  v2 = [v1 *a1];
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100011158()
{
  v1 = *v0;
  sub_10000B734();
  *v0 = v2;
}

uint64_t sub_10001119C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v5 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
    }

    sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);

    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
    v3 = v1;
  }

  return v3;
}

uint64_t *sub_100011258@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_100011264(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1000112B0@<X0>(uint64_t a1@<X8>)
{

  return sub_10000AF74(v1 + a1, 1, 1, v2);
}

void sub_1000112DC()
{
  if (!v1 & v0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 - 232);

  sub_10004436C(v5, v2, 1, v6);
}

uint64_t sub_100011320()
{
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[5];
  v8 = v0[6];
}

uint64_t sub_100011344()
{
  v2 = *(v0 - 120);

  return swift_arrayDestroy();
}

uint64_t sub_10001141C@<X0>(unint64_t a1@<X8>)
{
  v5 = v1[24];
  v6 = v1[18];
  v7 = *(v3 + 48) + *(v1[22] + 72) * (__clz(__rbit64(a1)) | (v2 << 6));
  v8 = v1[23];

  return sub_10037A8AC(v7, v8);
}

uint64_t sub_10001147C@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
  sub_1000115CC(*v2);
  return v3;
}

uint64_t sub_1000114B8()
{

  return sub_100343100(v5 + v3, v4 + v2, v0, v1);
}

uint64_t sub_1000114D8()
{
  v3 = *(v2 - 105);
  *(v0 + 312) = v3;
  v4 = *(v0 + 96) & 0xFFFFFFFFFFLL | (v3 << 40);
  return v1;
}

uint64_t sub_10001151C(uint64_t result, uint64_t a2)
{
  *(v2 - 80) = result;
  *(v2 - 72) = a2;
  return result;
}

void sub_10001155C()
{

  sub_10044B564(v0, v1);
}

uint64_t sub_10001158C()
{

  return swift_slowAlloc();
}

uint64_t sub_1000115CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1000115DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006AF0(0, &unk_1006A2BB0, TUAudioRoute_ptr);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      swift_bridgeObjectRetain_n();
      v5 = sub_1000117C8();
      if (v5)
      {
        v6 = v5;

        v7 = v6;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v8 = sub_100010B20();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_10057D690;
        *(v9 + 56) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
        *(v9 + 64) = sub_10001000C(&qword_1006A3980, &unk_1006A2A00, &unk_10057D710);
        *(v9 + 32) = v4;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }

      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id sub_1000117C8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithDictionary:isa];

  return v2;
}

uint64_t sub_10001185C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes) = a1;
  sub_100012410(v2);
}

void *sub_1000118A4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = *(v0 + OBJC_IVAR___CSDRouteController_queue);
  *(v9 - v8) = v11;
  (*(v4 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v1);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v10, v1);
  if (v11)
  {
    if (!*(v0 + OBJC_IVAR___CSDRouteController__intelligentRoutingManager))
    {
      return _swiftEmptyArrayStorage;
    }

    sub_1000192A8();
    v15 = v14;
    v16 = sub_100019378();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000119D4()
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = v0;
  v10 = *(v0 + OBJC_IVAR___CSDRouteController_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v14(v9, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v12 = OBJC_IVAR___CSDRouteController__routesByUniqueIdentifier;
  v15 = v98;
  swift_beginAccess();
  v16 = *(v15 + v12);
  swift_beginAccess();

  sub_10026D814(&qword_1006A8CF8, &unk_100584D90);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v0 = v15;
  v97 = sub_1000118A4();
  v95 = OBJC_IVAR___CSDRouteController_pendingRouteContext;
  v2 = *(v15 + OBJC_IVAR___CSDRouteController_pendingRouteContext) != 0;
  sub_100012748();
  v13 = v17;
  v18 = sub_10000B6F4(v17);
  v90 = v16;
  v91 = v12;
  if (v18)
  {
    v1 = v18;
    if (v18 >= 1)
    {
      v96 = v2;
      v19 = 0;
      v20 = 0;
      v99 = 0;
      v21 = v13 & 0xC000000000000001;
      v22 = &selRef_isInstalled;
      v93 = v18;
      v94 = v13;
      v92 = v13 & 0xC000000000000001;
      while (1)
      {
        v23 = v21 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v13 + 8 * v20 + 32);
        v24 = v23;
        [v23 v22[465]];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006AF0(0, &qword_1006A8D00, TUMutableRoute_ptr);
        if (swift_dynamicCast())
        {
          break;
        }

LABEL_29:
        if (v1 == ++v20)
        {
          goto LABEL_33;
        }
      }

      v25 = v100;
      v26 = &selRef_setWindowed_;
      v27 = [v100 uniqueIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = *(v98 + v95);
      if (v31)
      {
        v32 = v19;
        v33 = [v31 uniqueIdentifier];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (v28 == v34 && v30 == v36)
        {

          v19 = v32;
          v26 = &selRef_setWindowed_;
LABEL_21:

          v40 = v24;
          [v25 setCurrentlyPicked:1];
          goto LABEL_24;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v19 = v32;
        v26 = &selRef_setWindowed_;
        if (v38)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      if (v96)
      {
        v39 = v19;
        [v25 setCurrentlyPicked:0];
        v96 = 1;
LABEL_25:
        v42 = [v24 v26[498]];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v101 = v43;
        v102 = v45;
        __chkstk_darwin(v46, v47);
        *(&v90 - 2) = &v101;
        v48 = v99;
        LOBYTE(v42) = sub_100013094();
        v99 = v48;

        [v25 setRecommended:v42 & 1];
        [v25 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
        if (swift_dynamicCast())
        {
          v49 = v100;
          v50 = [v100 v26[498]];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = v91;
          v55 = v98;
          swift_beginAccess();
          v56 = v49;
          v57 = *(v54 + v55);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = *(v54 + v55);
          sub_10001313C(v56, v51, v53, isUniquelyReferenced_nonNull_native, v59, v60, v61, v62, v90, v91);
          *(v54 + v55) = v100;

          swift_endAccess();
        }

        else
        {
        }

        v1 = v93;
        v13 = v94;
        v21 = v92;
        v22 = &selRef_isInstalled;
        v19 = v39;
        goto LABEL_29;
      }

      if (![v25 isCurrentlyPicked])
      {
        v39 = v19;
        v96 = 0;
        goto LABEL_25;
      }

      v41 = v24;
      v96 = 1;
LABEL_24:
      v39 = v24;
      goto LABEL_25;
    }

    goto LABEL_48;
  }

  v19 = 0;
LABEL_33:

  v63 = v91;
  v64 = *(v91 + v98);

  v66 = v90;
  sub_100012E44(v65, v90);
  v68 = v67;

  if (v68)
  {

LABEL_45:

    return;
  }

  v69 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10057D6A0;
  v71 = sub_10026D814(&qword_1006A8D08, &qword_100584DA0);
  *(v70 + 56) = v71;
  v72 = sub_10001000C(&qword_1006A8D10, &qword_1006A8D08, &qword_100584DA0);
  *(v70 + 32) = v66;
  v73 = v98;
  v74 = *(v63 + v98);
  *(v70 + 96) = v71;
  *(v70 + 104) = v72;
  *(v70 + 64) = v72;
  *(v70 + 72) = v74;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v75 = *(v63 + v73);

  sub_100017900(v66, v75);

  v3 = (v73 + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  v1 = *(v73 + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8);
  if (v1)
  {
    v2 = *v3;
    v76 = *(v73 + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8);

    sub_10001756C(v2, v1);
    if (v77)
    {
      v12 = v77;
      v13 = v78;
      v0 = v79;
      v99 = v19;
      if (qword_1006A0AA0 == -1)
      {
LABEL_38:
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_10057D690;
        v101 = v2;
        v102 = v1;
        v81 = String.init<A>(reflecting:)();
        v83 = v82;
        *(v80 + 56) = &type metadata for String;
        *(v80 + 64) = sub_100009D88();
        *(v80 + 32) = v81;
        *(v80 + 40) = v83;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v84 = v3[1];
        *v3 = 0;
        v3[1] = 0;

        sub_1003B8898(v12, v13, v0);
        swift_unknownObjectRelease();

        v19 = v99;
        goto LABEL_40;
      }

LABEL_49:
      swift_once();
      goto LABEL_38;
    }
  }

LABEL_40:
  v85 = *(v98 + OBJC_IVAR___CSDRouteController_routesDidChangeHandler);
  if (v85)
  {
    v86 = *(v98 + OBJC_IVAR___CSDRouteController_routesDidChangeHandler + 8);

    v85(v87);
    sub_1000051F8(v85);
  }

  if (v19)
  {
    v88 = *(v98 + OBJC_IVAR___CSDRouteController_pickedRouteDidChangeHandler);
    if (v88)
    {
      v89 = *(v98 + OBJC_IVAR___CSDRouteController_pickedRouteDidChangeHandler + 8);

      v88(v19);
      sub_1000051F8(v88);
    }

    goto LABEL_45;
  }
}

void sub_100012298(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR___CSDRouteController_queue);
    *v8 = v11;
    (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v8, v3);
    if (v11)
    {
      v13 = &v10[OBJC_IVAR___CSDRouteController_pendingRouteContext];
      v14 = *&v10[OBJC_IVAR___CSDRouteController_pendingRouteContext];
      if (v14)
      {
        if (*(v13 + 1) == a2)
        {
          v15 = *(v13 + 2);
          *v13 = 0;
          *(v13 + 1) = 0;
          *(v13 + 2) = 0;
          sub_1003BA734(v14);
        }
      }

      sub_1000119D4();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100012410(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v12 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  v14 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes;
  v15 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  *(v13 + 56) = sub_10026D814(&qword_1006AA378, &qword_1005863E8);
  *(v13 + 64) = sub_10001000C(&unk_1006AA380, &qword_1006AA378, &qword_1005863E8);
  *(v13 + 32) = v15;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v16 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute;
  if (*(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute))
  {
    sub_1003EBB54();
    v18 = *(v2 + v16);
    if (v17)
    {
      v19 = v17;
      if (v18)
      {
        sub_100006AF0(0, &unk_1006A2BB0, TUAudioRoute_ptr);
        v20 = v18;
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

LABEL_10:
      sub_1003EBB54();
      v23 = v22;
      v24 = sub_1003EBC38(v22);

      if (v24)
      {
        v25 = *(v2 + v14);

        v27 = sub_1003B6824(v26, a1);

        if ((v27 & 1) == 0)
        {
          v28 = sub_100010B20();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v29 = *(v2 + v16);
          *(v2 + v16) = 0;
        }
      }

      goto LABEL_13;
    }

    if (v18)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v30 = v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler;
  v31 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler);
  if (v31)
  {
    v32 = *(v30 + 8);

    v31(v33);
    sub_1000051F8(v31);
  }
}

void sub_100012748()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR___CSDRouteController_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    goto LABEL_54;
  }

  v9 = *(v0 + OBJC_IVAR___CSDRouteController_routeProviders);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v55[0] = _swiftEmptyArrayStorage;
    sub_100011158();
    v11 = v55[0];
    v12 = (v9 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 8);
      swift_unknownObjectRetain();
      v17 = v16(ObjectType, v14);
      swift_unknownObjectRelease();
      v55[0] = v11;
      v18 = v11[2];
      v19 = v18 + 1;
      if (v18 >= v11[3] >> 1)
      {
        sub_100011158();
        v11 = v55[0];
      }

      v11[2] = v19;
      v11[v18 + 4] = v17;
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage[2];
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v50 = v19;
  v51 = v11 + 4;
  v22 = &unk_1006A7B70;
  v47 = v11;
  while (1)
  {
    if (v20 == v19)
    {

      return;
    }

    if (v20 >= v11[2])
    {
      break;
    }

    v23 = v22;
    v24 = v51[v20];
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v46 = v51[v20];
      }

      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v21 >> 62;
    if (v21 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v27 + v25;
    if (__OFADD__(v27, v25))
    {
      goto LABEL_48;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v52 = v25;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v26)
      {
LABEL_24:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = v21 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
        v31 = *(v30 + 16);
      }

      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v30 = v53 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_26;
    }

    if (v26)
    {
      goto LABEL_24;
    }

    v30 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v28 > *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

    v53 = v21;
LABEL_26:
    v54 = v20 + 1;
    v32 = *(v30 + 16);
    v33 = (*(v30 + 24) >> 1) - v32;
    v34 = v30 + 8 * v32;
    if (v24 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (v36)
      {
        v37 = v36;
        v38 = _CocoaArrayWrapper.endIndex.getter();
        if (v33 < v38)
        {
          goto LABEL_52;
        }

        if (v37 < 1)
        {
          goto LABEL_53;
        }

        v48 = v38;
        v49 = v30;
        sub_10001000C(&qword_1006A8D20, v22, &qword_100584DB0);
        for (i = 0; i != v37; ++i)
        {
          sub_10026D814(v22, &qword_100584DB0);
          v40 = sub_100024CFC(v55, i, v24);
          v42 = *v41;
          v40(v55, 0);
          v22 = v23;
          *(v34 + 32 + 8 * i) = v42;
        }

        v11 = v47;
        v35 = v48;
        v30 = v49;
        goto LABEL_36;
      }

LABEL_40:

      v21 = v53;
      v19 = v50;
      v20 = v54;
      if (v52 > 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v35 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_40;
      }

      if (v33 < v35)
      {
        goto LABEL_51;
      }

      sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
      swift_arrayInitWithCopy();
LABEL_36:

      v21 = v53;
      v19 = v50;
      v20 = v54;
      if (v35 < v52)
      {
        goto LABEL_49;
      }

      if (v35 > 0)
      {
        v43 = *(v30 + 16);
        v44 = __OFADD__(v43, v35);
        v45 = v43 + v35;
        if (v44)
        {
          goto LABEL_50;
        }

        *(v30 + 16) = v45;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_100012C0C()
{
  sub_100005EF4();
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  sub_10000F9FC();
  v9 = *(v0 + qword_1006A4D40);
  *v1 = v9;
  v10 = sub_100011364(v5);
  v11(v10);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v14 = sub_100006884();
  v15(v14);
  if (v9)
  {
    v16 = *(v0 + qword_1006A4D68);
    v17 = *(v16 + 16);
    if (!v17)
    {
LABEL_10:
      sub_100005EDC();
      return;
    }

    v27 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = sub_10001615C(v16);
    LODWORD(v20) = v19;
    v22 = v21;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v16 + 32))
    {
      if (((*(v16 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_12;
      }

      if (*(v16 + 36) != v20)
      {
        goto LABEL_13;
      }

      memcpy(v28, (*(v16 + 48) + 72 * v18), 0x48uLL);
      sub_10001C174(v28, &v26);
      sub_1002BA484();
      sub_1002F6EC4(v28);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = v27[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 = sub_1003081B4(v18, v20, v22 & 1, v16);
      v20 = v24;
      v22 = v25;
      if (!--v17)
      {

        sub_100010000(v18, v20, v22 & 1);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
}

void sub_100012E44(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    sub_100007990();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v15 = v12 | (v4 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(a1 + 56) + 8 * v15);

      v20 = v19;
      v21 = sub_100005208();
      v23 = v22;

      if ((v23 & 1) == 0)
      {

        return;
      }

      sub_100016F14();
      v24 = *(*(a2 + 56) + 8 * v21);
      v25 = static NSObject.== infix(_:_:)();

      if ((v25 & 1) == 0)
      {
        return;
      }
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      v14 = *(a1 + 64 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100012FA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000A82C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_10000E710(v6, v10);
  }
}

void sub_100012FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  sub_10000D698();
  v12 = sub_100015AD8();
  sub_100008598(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000C464();
  v15 = sub_100007D68();
  if (v15)
  {
    sub_100008988();
    sub_100005208();
    sub_100008BC4();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    sub_100007794(v15, v16, v17, v18, *v10);
    sub_100006048();
  }

  else
  {
    v22 = sub_100018FA4();
    a10(v22);
    sub_100006048();
  }
}

BOOL sub_100013094()
{
  sub_100016114();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

id sub_1000131A8()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_1000131E8()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallCenterObserver_callContainerClosure);
  v2 = *(v0 + OBJC_IVAR___CSDCallCenterObserver_callContainerClosure + 8);
  return v1();
}

void *sub_10001321C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [a1 callContainer];
  swift_getObjectType();
  v6 = sub_100015E24();
  swift_unknownObjectRelease();
  v7 = sub_1000163A4();
  swift_getObjectType();
  v8 = sub_100015E24();
  swift_unknownObjectRelease();
  v9 = sub_1000163A4();
  swift_getObjectType();
  v10 = sub_100015E24();
  swift_unknownObjectRelease();
  v11 = sub_1000163A4();
  swift_getObjectType();
  v12 = sub_100015E24();
  swift_unknownObjectRelease();
  v13 = sub_1000163A4();
  swift_getObjectType();
  v14 = sub_100015E24();
  swift_unknownObjectRelease();
  v15 = sub_1000163A4();
  swift_getObjectType();
  v16 = sub_100015E24();
  swift_unknownObjectRelease();
  v17 = sub_1000163A4();
  swift_getObjectType();
  v18 = sub_100015E24();
  swift_unknownObjectRelease();
  v19 = v6;
  UniqueAndReserveCapacityIfNot = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8(UniqueAndReserveCapacityIfNot, v21, v22, v23, v24, v25, v26, v27, a2, v100, a3, _swiftEmptyArrayStorage);
  if (v28)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = v8;
  v30 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8(v30, v31, v32, v33, v34, v35, v36, v37, v94, v101, v108, v114);
  if (v28)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v38 = v10;
  v39 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8(v39, v40, v41, v42, v43, v44, v45, v46, v95, v102, v109, v115);
  if (v28)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v47 = v12;
  v48 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8(v48, v49, v50, v51, v52, v53, v54, v55, v96, v103, v110, v116);
  if (v28)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v56 = v14;
  v57 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8(v57, v58, v59, v60, v61, v62, v63, v64, v97, v104, v111, v117);
  if (v28)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v65 = v16;
  v66 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8(v66, v67, v68, v69, v70, v71, v72, v73, v98, v105, v112, v118);
  if (v28)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (a4 == 2)
  {
    if ((sub_10002EAD0() & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    v74 = v18;
    v75 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_1000104F8(v75, v76, v77, v78, v79, v80, v81, v82, v99, v106, v113, v119);
    if (v28)
    {
      sub_10000AA44();
    }

    sub_10000FF04();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_20;
  }

  if (a4)
  {
    goto LABEL_17;
  }

LABEL_20:
  v83 = v113;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v119 + 16) >= *(v119 + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v84 = *(v119 + 16);
  v85 = 32;
  do
  {
    if (!v84)
    {

      goto LABEL_31;
    }

    v86 = *(v119 + v85);
    v85 += 8;
    --v84;
  }

  while (!v86);
  v87 = v86;

  v88 = v87;
  if (![v88 isEndpointOnCurrentDevice] || objc_msgSend(v88, "status") != 4 && objc_msgSend(v88, "isTTY") && objc_msgSend(v99, "transportMethod") == 2)
  {

    v65 = v47;
    v56 = v38;
    v47 = v29;
    v38 = v19;
    v29 = v88;
    v19 = v88;
LABEL_31:

    v89 = 0;
    v90 = v18;
    goto LABEL_38;
  }

  v91 = [v88 isScreening];

  if (v91)
  {
    v90 = v88;
  }

  else
  {
    v90 = v18;
  }

  if (v91)
  {
    v89 = v18;
  }

  else
  {
    v89 = v86;
  }

LABEL_38:

  return v89;
}

uint64_t sub_1000136D0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[2];
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    if (a1)
    {
      v14 = a1;
      if (sub_100031608())
      {
        v15 = v14;
      }

      else
      {

        a1 = 0;
      }
    }

    v16 = sub_10001321C(v2[3], v2[4], a1, *(v2 + 88));

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013858@<X0>(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v342 = a3;
  v6 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v335 = &v310 - v11;
  v12 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v13 = sub_100007BF0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v332 = &v310 - v17;
  sub_10000D414();
  v333 = type metadata accessor for Date();
  v18 = sub_100007FEC(v333);
  v329 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18, v22);
  sub_100007FDC();
  v328 = v24 - v23;
  sub_10000D414();
  v25 = type metadata accessor for SoundDescriptor();
  v26 = sub_100007BF0(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  sub_100007BAC();
  v331 = (v30 - v31);
  __chkstk_darwin(v32, v33);
  v334 = (&v310 - v34);
  sub_10000D414();
  v35 = type metadata accessor for SoundDescriptorAction();
  v36 = sub_100007BF0(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36, v39);
  sub_100007BAC();
  v339 = (v40 - v41);
  __chkstk_darwin(v42, v43);
  v338 = &v310 - v44;
  v45 = sub_10026D814(&qword_1006A61F0, &unk_10057D920);
  v46 = sub_100007BF0(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46, v49);
  sub_100007BAC();
  v337 = (v50 - v51);
  __chkstk_darwin(v52, v53);
  *&v330 = &v310 - v54;
  v55 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  v56 = sub_100007BF0(v55);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56, v59);
  v336 = &v310 - v60;
  sub_10000D414();
  v343 = type metadata accessor for AudioDescriptor();
  v61 = sub_100008070(v343);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61, v64);
  sub_100007BAC();
  v67 = v65 - v66;
  __chkstk_darwin(v68, v69);
  v71 = &v310 - v70;
  v72 = type metadata accessor for DispatchPredicate();
  v73 = sub_100007FEC(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  __chkstk_darwin(v73, v78);
  sub_100007FDC();
  v81 = (v80 - v79);
  v82 = v3[2];
  *(v80 - v79) = v82;
  (*(v75 + 104))(v80 - v79, enum case for DispatchPredicate.onQueue(_:), v72);
  v83 = v82;
  LOBYTE(v82) = _dispatchPreconditionTest(_:)();
  (*(v75 + 8))(v81, v72);
  if ((v82 & 1) == 0)
  {
    __break(1u);
LABEL_128:
    sub_100008720();
LABEL_14:
    v101 = type metadata accessor for Logger();
    sub_10000AF9C(v101, qword_1006BA610);
    v102 = v81;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v346[0] = v106;
      *v105 = *(a2 + 460);
      v107 = [v102 uniqueProxyIdentifier];
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v109;

      v350[0] = v108;
      v350[1] = v110;
      v111 = String.init<A>(reflecting:)();
      v113 = sub_10002741C(v111, v112, v346);

      *(v105 + 4) = v113;
      sub_100005FCC(&_mh_execute_header, v114, v115, "Unable to create interruption descriptor for call with proxy identifier %s");
      sub_100009B7C(v106);
      sub_100005F40();
      sub_100005F40();

      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v84 = v3[12];
  v340 = v67;
  *&v341 = v84;
  v85 = 0;
  v86 = 0;
  if ([v84 dualSIMRingtoneEnabled] && a1)
  {
    v87 = [a1 ringtoneSubscriptionIdentifier];
    if (v87)
    {
      v88 = v87;
      v89 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_10057D690;
      *(v90 + 56) = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
      *(v90 + 64) = sub_1003E0A9C();
      *(v90 + 32) = v88;
      v91 = a2;
      v92 = v88;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v93;

      a2 = v91;
    }

    else
    {
      v85 = 0;
      v86 = 0;
    }
  }

  v94 = sub_1000136D0(a1);
  if (!v94)
  {

LABEL_106:
    sub_100007928();
    return sub_10000AF74(v286, v287, v288, v289);
  }

  v95 = v94;
  v324 = v3[10];
  v96 = [v324 hasInEarRouteInTipiWithCompanionWatch];
  v326 = v3;
  v327 = a2;
  if (v96)
  {
    v97 = [v95 provider];
    v98 = [v97 isSystemProvider];

    v99 = v98 ^ 1;
  }

  else
  {
    v99 = 0;
  }

  v100 = [objc_allocWithZone(TUFeatureFlags) init];
  v81 = v95;
  sub_100042148(v81, v99, v100, v352);
  memcpy(v351, v352, sizeof(v351));
  memcpy(v353, v352, 0xA8uLL);
  a2 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (sub_100043014(v353) == 1)
  {

    if (qword_1006A0B30 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_128;
  }

  v116 = LOBYTE(v353[1]);
  v117 = v353[0];
  v355 = BYTE1(v353[1]);
  memcpy(v354, &v353[1] + 2, sizeof(v354));
  if ([v341 nonInterruptingCalls])
  {
    if ([v81 status] == 4 && (objc_msgSend(v81, "hasAudioInterruption") & 1) == 0)
    {
      v118 = v326[9];
      v325 = v326[8];
      sub_100009B14(v326 + 5, v325);
      if ((*(v118 + 48))(v325, v118))
      {

        if (qword_1006A0B30 != -1)
        {
          sub_100008720();
        }

        v119 = type metadata accessor for Logger();
        sub_10000AF9C(v119, qword_1006BA610);
        v102 = v81;
        v103 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v103, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v346[0] = v122;
          *v121 = 136315138;
          v123 = [v102 uniqueProxyIdentifier];
          v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;

          v350[0] = v124;
          v350[1] = v126;
          v127 = String.init<A>(reflecting:)();
          v129 = sub_10002741C(v127, v128, v346);

          *(v121 + 4) = v129;
          sub_100005FCC(&_mh_execute_header, v130, v131, "Other session requested no ringtone interruption, ending currentDescriptor(context:) method for call with unique proxy identifier %s");
          sub_100009B7C(v122);
          sub_100005F40();
          sub_100005F40();

          sub_100009A04(v352, &unk_1006A41A0, &qword_10057EFE0);
LABEL_105:

          goto LABEL_106;
        }

        sub_100009A04(v352, &unk_1006A41A0, &qword_10057EFE0);
LABEL_104:

        goto LABEL_105;
      }
    }
  }

  v323 = a1;
  v132 = v117 | (v116 << 32);
  v133 = v71;
  v134 = v343;
  v135 = v343[5];
  v136 = type metadata accessor for AudioInterruptionDeferredEndDescriptor();
  v315 = v135;
  sub_100007928();
  sub_10000AF74(v137, v138, v139, v136);
  v140 = &v133[v134[6]];
  *(v140 + 26) = 0u;
  *v140 = 0u;
  *(v140 + 1) = 0u;
  v311 = v140;
  v141 = v134[7];
  v325 = v81;
  v142 = &v133[v141];
  v317 = type metadata accessor for RingtoneDescriptor();
  v318 = v142;
  sub_100007928();
  sub_10000AF74(v143, v144, v145, v146);
  v147 = v134[8];
  v319 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v320 = v147;
  sub_10000AF74(&v133[v147], 1, 2, v319);
  v148 = &v133[v134[9]];
  *v148 = 0;
  v148[1] = 0;
  v316 = v148;
  v148[2] = 0;
  v312 = v134[10];
  v133[v312] = 1;
  v313 = v134[11];
  v149 = &v133[v313];
  v149[6] = 3;
  *(v149 + 2) = 0;
  *v149 = 0;
  v150 = v134[12];
  type metadata accessor for CallTranslationDisclosureDescriptor();
  v314 = v150;
  v151 = v325;
  sub_100007928();
  sub_10000AF74(v152, v153, v154, v155);
  v156 = v134[13];
  v157 = v133;
  v321 = v156;
  v322 = v132;
  v133[v156] = 1;
  v133[4] = BYTE4(v132);
  *v133 = v132;
  v133[5] = v355;
  memcpy(v133 + 6, v354, 0xA2uLL);
  memcpy(v350, v351, sizeof(v350));
  sub_100042F60(v350, v346);
  if (sub_100031608())
  {
    v158 = [v151 uniqueProxyIdentifierUUID];
    v159 = v336;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100007C20();
    sub_10000AF74(v160, v161, v162, v136);
    sub_1003E0A3C(v159, v157 + v315, &unk_1006A2B60, &qword_100581170);
  }

  v163 = v326;
  LODWORD(v336) = *(v326 + 88);
  if (v336 != 1)
  {
    goto LABEL_34;
  }

  v164 = v151;
  v136 = [v164 provider];
  v165 = [v136 supportsRinging];

  if ((v165 & 1) == 0 || [v164 resolvedCallStatus] != 4)
  {

    goto LABEL_33;
  }

  v136 = [v164 shouldSuppressRingtone];

  if (v136)
  {
LABEL_33:

LABEL_34:

    goto LABEL_35;
  }

  v166 = [v324 hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch];
  v167 = v318;
  if (v166)
  {
    v168 = [v164 provider];
    v169 = [v168 isSystemProvider];
  }

  else
  {
    v169 = 0;
  }

  v290 = v164;
  v291 = v330;
  sub_1003D4668(v290, v169, v330);
  sub_100007C20();
  v292 = v317;
  sub_10000AF74(v293, v294, v295, v317);
  sub_1003E0A3C(v291, v167, &qword_1006A61F0, &unk_10057D920);
  if ([v341 dualSIMRingtoneEnabled])
  {
    if (!v86)
    {
      goto LABEL_113;
    }

    if (!sub_100015468(v167, 1, v292))
    {
      v308 = (v167 + *(v292 + 24));
      v309 = v308[1];
      *v308 = v85;
      v308[1] = v86;
    }
  }

LABEL_113:
  v296 = sub_1003E09D0(v290, &selRef_announceProviderIdentifier);
  v136 = v297;
  v298 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v136)
  {
    if (v296 == v298 && v136 == v299)
    {
    }

    else
    {
      v301 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v151 = v325;
      if ((v301 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_1003B613C(v290, v346);
    v341 = v346[0];
    v330 = v346[1];
    v302 = v347;
    if (v349)
    {
      v303 = 256;
    }

    else
    {
      v303 = 0;
    }

    v304 = v303 | v348;
    v305 = v311;
    v306 = *(v311 + 20);
    sub_10005081C(*v311, *(v311 + 1), *(v311 + 2), *(v311 + 3), *(v311 + 4));
    v307 = v330;
    *v305 = v341;
    *(v305 + 1) = v307;
    *(v305 + 4) = v302;
    *(v305 + 20) = v304;
  }

  else
  {
  }

  v151 = v325;
LABEL_35:
  if (v323)
  {
    v170 = *(v163 + OBJC_IVAR____TtC13callservicesd13AudioResolver_soundDescriptorActionResolver);
    v171 = v323;
    v172 = v338;
    sub_100043300(v171, v327, v338);
    v173 = v320;
    sub_100045A3C(v172, v157 + v320);
    v174 = v157 + v173;
    v175 = v339;
    sub_100045AA0(v174, v339, type metadata accessor for SoundDescriptorAction);
    if (sub_100015468(v175, 2, v319))
    {

      sub_100017368();
      v177 = v175;
    }

    else
    {
      v191 = v175;
      v192 = v334;
      sub_10004A258(v191, v334, type metadata accessor for SoundDescriptor);
      v193 = *v192;
      if (*v192 > 0x11 || ((1 << v193) & 0x22300) == 0)
      {
        sub_10000A420();
        sub_100045B54(v192, v285);

        goto LABEL_39;
      }

      v194 = v163 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType;
      if ((sub_1003E06B0(*(v163 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType), *(v163 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType + 8), *v192) & 1) == 0)
      {
        goto LABEL_100;
      }

      v195 = OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundDate;
      swift_beginAccess();
      if (!sub_100015468(v163 + v195, 1, v333))
      {
        v196 = v329;
        v197 = v163 + v195;
        v198 = v328;
        v199 = v333;
        (*(v329 + 16))(v328, v197, v333);
        Date.timeIntervalSinceNow.getter();
        v201 = v200;
        (*(v196 + 8))(v198, v199);
        if (fabs(v201) >= 2.0)
        {
LABEL_100:
          *v194 = v193;
          *(v194 + 8) = 0;
          v279 = v332;
          Date.init()();

          sub_10000A420();
          sub_100045B54(v334, v280);
          sub_100007C20();
          sub_10000AF74(v281, v282, v283, v333);
          v284 = OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundDate;
          swift_beginAccess();
          sub_1003E0A3C(v279, v163 + v284, &qword_1006A3C70, &unk_10057EA80);
          swift_endAccess();
          goto LABEL_39;
        }
      }

      sub_100017368();
      v202 = v320;
      sub_100045B54(v157 + v320, v203);
      sub_10000AF74(v157 + v202, 1, 2, v319);
      if (qword_1006A0B30 != -1)
      {
        sub_100008720();
      }

      v204 = type metadata accessor for Logger();
      sub_10000AF9C(v204, qword_1006BA610);
      v205 = v334;
      v206 = v331;
      sub_100045AA0(v334, v331, type metadata accessor for SoundDescriptor);
      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        *&v341 = v207;
        v210 = v209;
        v211 = swift_slowAlloc();
        v344[0] = v211;
        *v210 = 136315138;
        v345 = *v206;
        type metadata accessor for TUCallSoundPlayerSoundType(0);
        v212 = String.init<A>(reflecting:)();
        v214 = v213;
        sub_10000A420();
        v339 = v215;
        sub_100045B54(v206, v216);
        v217 = sub_10002741C(v212, v214, v344);

        *(v210 + 4) = v217;
        v218 = v341;
        _os_log_impl(&_mh_execute_header, v341, v208, "Not playing sound %s because the same sound was played less than 2s ago", v210, 0xCu);
        sub_100009B7C(v211);
        sub_100005F40();
        sub_100005F40();

        v177 = v334;
        v176 = v339;
      }

      else
      {

        sub_100045B54(v206, type metadata accessor for SoundDescriptor);
        v177 = v205;
        v176 = type metadata accessor for SoundDescriptor;
      }
    }

    sub_100045B54(v177, v176);
LABEL_39:
    v178 = *(v163 + OBJC_IVAR____TtC13callservicesd13AudioResolver_hapticDescriptorResolver);
    v179 = v171;
    v180 = sub_100045BAC(v179, v327);
    v182 = v181;
    v136 = v183;

    v184 = v316;
    *v316 = v180;
    v184[1] = v182;
    v184[2] = v136;
    v151 = v325;
  }

  v185 = v151;
  if ([v185 wantsHoldMusic] && objc_msgSend(v185, "status") == 1 && objc_msgSend(v185, "isConnected"))
  {
    *(v157 + v312) = 0;
    LODWORD(v341) = 1;
  }

  else
  {
    LODWORD(v341) = 0;
  }

  v186 = [v185 recordingSession];
  if (v186)
  {
    v187 = v186;
    if ([v186 recordingState] == 2 || sub_10000FB08() == 4 || sub_10000FB08() == 3 && (objc_msgSend(v187, "isRedisclosing") & 1) != 0)
    {
      v344[3] = &OBJC_PROTOCOL___CSDCallAudioInjecting;
      v188 = swift_dynamicCastObjCProtocolConditional();
      if (v188)
      {
        if ([v188 isInjectingAudio])
        {
          v189 = sub_1000114D8();
          v190 = sub_10029CD38(v189);
          sub_10000EB40(v190);
          goto LABEL_64;
        }
      }
    }
  }

  v136 = 0x3000000000000;
LABEL_64:
  v219 = [v185 podcastRecordingSession];
  if (v219)
  {
    v220 = v219;
    if ([v219 recordingState] == 2 || sub_10000FB08() == 4 || sub_10000FB08() == 3 && (objc_msgSend(v220, "isRedisclosing") & 1) != 0)
    {
      v344[4] = &OBJC_PROTOCOL___CSDCallAudioInjecting;
      v221 = swift_dynamicCastObjCProtocolConditional();
      if (v221)
      {
        v222 = [v221 isInjectingAudio];
        v223 = v340;
        if (v222)
        {
          v224 = sub_1000114D8();
          v225 = sub_10029D080(v224);
          sub_10000EB40(v225);
        }

        else
        {
        }

        goto LABEL_75;
      }
    }
  }

  v223 = v340;
LABEL_75:
  v226 = [v185 translationSession];
  if (v226)
  {
    v227 = v226;
    if ([v226 translationState] == 2 || objc_msgSend(v227, "translationState") == 4)
    {
      v228 = v355;
      v229 = v185;
      LOBYTE(v344[0]) = v228;
      v230 = v322 & 0xFFFFFFFFFFLL | (v228 << 40);
      v231 = v335;
      sub_100449A94(v229, v227, v230, v335);
      sub_100009A04(v352, &unk_1006A41A0, &qword_10057EFE0);
      sub_1003E0A3C(v231, v157 + v314, &unk_1006A2B50, &unk_1005811A0);
    }

    else
    {
      sub_100009A04(v352, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  else
  {
    sub_100009A04(v352, &unk_1006A41A0, &qword_10057EFE0);
  }

  v232 = [v185 smartHoldingSession];
  if (v232)
  {
    v233 = v232;
    if ([v232 state] == 3)
    {
      v234 = v185;
      v235 = v337;
      sub_1003D4668(v234, 0, v337);

      sub_100007C20();
      sub_10000AF74(v236, v237, v238, v317);
      sub_1003E0A3C(v235, v318, &qword_1006A61F0, &unk_10057D920);
    }

    else
    {
    }
  }

  if ([v185 receptionistState] == 3 && objc_msgSend(v185, "isScreening"))
  {
    v239 = v185;
    v240 = v337;
    sub_1003D4668(v239, 0, v337);
    sub_100007C20();
    sub_10000AF74(v241, v242, v243, v317);
    sub_1003E0A3C(v240, v318, &qword_1006A61F0, &unk_10057D920);
  }

  v244 = [v185 status];

  if (v244 == 1 || [v185 status] == 3)
  {
    *(v157 + v321) = 0;
  }

  sub_100045AA0(v157, v223, type metadata accessor for AudioDescriptor);
  v245 = sub_100046910(v185, v223);
  sub_100045B54(v223, type metadata accessor for AudioDescriptor);
  if (v245)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720();
    }

    v246 = type metadata accessor for Logger();
    sub_10000AF9C(v246, qword_1006BA610);
    v247 = v185;

    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v248, v249))
    {
      LODWORD(v339) = (v136 & 0xFF000000000000) != 0x3000000000000;
      v250 = swift_slowAlloc();
      v340 = swift_slowAlloc();
      v345 = v340;
      *v250 = 136316162;
      v251 = [v247 uniqueProxyIdentifier];
      v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v254 = v253;

      v344[0] = v252;
      v344[1] = v254;
      v255 = String.init<A>(reflecting:)();
      v257 = sub_10002741C(v255, v256, &v345);

      *(v250 + 4) = v257;
      *(v250 + 12) = 2080;
      LOBYTE(v344[0]) = v336;
      v258 = sub_10000C844();
      v260 = sub_10002741C(v258, v259, &v345);

      *(v250 + 14) = v260;
      *(v250 + 22) = 2080;
      LOBYTE(v344[0]) = [v247 shouldSuppressRingtone];
      v261 = sub_10000C844();
      v263 = sub_10002741C(v261, v262, &v345);

      *(v250 + 24) = v263;
      *(v250 + 32) = 2080;
      LOBYTE(v344[0]) = v341;
      v264 = sub_10000C844();
      v266 = sub_10002741C(v264, v265, &v345);

      *(v250 + 34) = v266;
      *(v250 + 42) = 2080;
      LOBYTE(v344[0]) = v339;
      v267 = sub_10000C844();
      v269 = sub_10002741C(v267, v268, &v345);

      *(v250 + 44) = v269;
      _os_log_impl(&_mh_execute_header, v248, v249, "Not creating interruption for call with upi:%s, deviceSupportsRingtone: %s shouldSuppressRingtone: %s  holdMusicDescriptor: %s  hasDisclosureDescriptor: %s", v250, 0x34u);
      swift_arrayDestroy();
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }

    sub_100007928();
    sub_10000AF74(v274, v275, v276, v277);
    v273 = v157;
  }

  else
  {

    sub_100045AA0(v157, v342, type metadata accessor for AudioDescriptor);
    sub_100007C20();
    sub_10000AF74(v270, v271, v272, v343);
    v273 = v157;
  }

  return sub_100045B54(v273, type metadata accessor for AudioDescriptor);
}

uint64_t sub_100015050()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10001507C()
{
  v2 = *(v0 - 112);
  *(v0 - 192) = *(v0 - 128);
  *(v0 - 176) = v2;
  *(v0 - 167) = *(v0 - 103);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000150F8(uint64_t result)
{
  *(result + 8) = sub_1002E037C;
  v2 = *(v1 + 248);
  return result;
}

void *sub_10001514C(void *a1)
{

  return memcpy(a1, (v1 + 80), 0xA8uLL);
}

uint64_t sub_100015184()
{

  return swift_once();
}

uint64_t sub_1000151A4()
{

  return swift_once();
}

void sub_100015268(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

NSString sub_100015304()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100015354()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_100015370()
{

  return sub_100433778();
}

uint64_t sub_100015398@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1000153C4()
{

  return swift_once();
}

void sub_1000153E4()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[114];
  v5 = v0[110];
}

uint64_t sub_100015418()
{

  return swift_task_alloc();
}

id sub_100015430()
{
  v3 = *(v1 + 1160);

  return [v0 v3];
}

uint64_t sub_100015448()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[16];
}

uint64_t sub_1000154A4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
    v9 = sub_1000182F8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_10026D814(&qword_1006A61F0, &unk_10057D920);
      v14 = sub_1000182F8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v16 = type metadata accessor for SoundDescriptorAction();
        v17 = sub_1000182F8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[8];
        }

        else
        {
          v11 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
          v12 = a4[12];
        }
      }
    }

    return sub_10000AF74(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10001561C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A9D4();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_10000A9D4();
  *(v7 + 16) = sub_10002E61C;
  *(v7 + 24) = v6;
  v27 = sub_10002E4B4;
  v28 = v7;
  sub_10000A204();
  sub_100008740();
  v25 = v8;
  v26 = &unk_10062D070;
  v9 = _Block_copy(v24);

  v10 = [v2 callPassingTest:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
LABEL_6:
    v14 = sub_10000A9D4();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    v15 = sub_10000A9D4();
    *(v15 + 16) = sub_1003C714C;
    *(v15 + 24) = v14;
    v27 = sub_1003C7170;
    v28 = v15;
    sub_10000A204();
    sub_100008740();
    v25 = v16;
    v26 = &unk_10062D0E8;
    v17 = _Block_copy(v24);

    v18 = [v3 bargeCallsPassingTest:v17];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_100015958();
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!sub_10000B6F4(v20))
      {

        v12 = 0;
LABEL_13:
        v13 = sub_1003C714C;
        goto LABEL_14;
      }

      sub_10039C390(0, (v20 & 0xC000000000000001) == 0, v20);
      if ((v20 & 0xC000000000000001) == 0)
      {
        v21 = *(v20 + 32);
        goto LABEL_10;
      }

LABEL_17:
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v22 = v21;

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();

      if (!v12)
      {
      }

      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = v11;

  v13 = 0;
LABEL_14:
  sub_1000051F8(v13);
  return v12;
}

unint64_t sub_100015958()
{
  result = qword_1006A3AB0;
  if (!qword_1006A3AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3AB0);
  }

  return result;
}

void sub_10001599C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_1000159D4()
{

  return swift_beginAccess();
}

uint64_t sub_100015A18()
{

  return swift_beginAccess();
}

__n128 sub_100015A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 48) + 40 * a1;
  result = *a2;
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(v4 + 32) = *(a2 + 32);
  v7 = *(a4 + 56);
  return result;
}

uint64_t sub_100015A6C()
{

  return swift_dynamicCast();
}

uint64_t sub_100015A90(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

unint64_t sub_100015AD8()
{
  v2 = *v0;

  return sub_100005208();
}

uint64_t sub_100015B14()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100015B34@<X0>(uint64_t a1@<X8>)
{

  return sub_1000099A4(v1 + a1, v2, v3);
}

uint64_t sub_100015B50()
{

  return static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_100015B70()
{
  v3 = *(v1 + 3312);
  v4 = *(v0 + 24);

  return [v4 v3];
}

uint64_t sub_100015B8C()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 104) + 48) + *(v2 + 72) * v0;
  return v1;
}

uint64_t sub_100015BB0(uint64_t a1, uint64_t a2)
{
  sub_10000AF9C(a1, a2);

  return swift_errorRetain();
}

void sub_100015C24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_100015C58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t sub_100015C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void sub_100015CC0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_100015CDC(uint64_t result)
{
  v2 = (*(v1 + 56) + 16 * result);
  v3 = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_100015CEC()
{
  *(v0 + 368) = *(v2 + 16);
  *(v0 + 376) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

id sub_100015D18()
{

  return sub_10022AE64();
}

uint64_t sub_100015D30()
{
  v2 = *(v0 - 328);

  return swift_allocObject();
}

id sub_100015D50()
{
  v3 = *(v1 + 1376);

  return [v0 v3];
}

uint64_t sub_100015D80()
{

  return os_log(_:dso:log:type:_:)();
}

uint64_t sub_100015DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_100343100(v11 - 88, va, v9, v10);
}

void sub_100015DE0()
{
  v2 = (*(v1 + 56) + 16 * v0);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t sub_100015DF0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_100015E24()
{

  return sub_10001561C(v0, 0);
}

BOOL sub_100015E3C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100015E64()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100015E8C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_100015ECC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
}

id sub_100015EE0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100015EF8()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  _StringGuts.grow(_:)(16);
}

uint64_t sub_100015F38(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t sub_100015F5C(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v2;
  *(v4 - 128) = v3;
  *(v4 - 88) = v1;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

uint64_t sub_100015F80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(a4 + 48) + 8 * result) = a2;
  v4 = *(a4 + 56);
  return result;
}

uint64_t sub_100015FB0(uint64_t a1)
{

  return sub_100015468(a1, 1, v1);
}

uint64_t sub_100015FC8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 240);
  return *(v2 + 232);
}

uint64_t *sub_100016058()
{
  *(v1 - 136) = v0;

  return sub_1002A1D5C((v1 - 160));
}

uint64_t sub_10001607C()
{

  return swift_slowAlloc();
}

uint64_t sub_100016098()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_1000160B0()
{
  v3 = *(v1 + 2216);

  return [v0 v3];
}

uint64_t sub_1000160C8()
{

  return String.init<A>(reflecting:)();
}

void sub_1000160E0(uint64_t a1@<X8>)
{
  *(v7 + v1) |= v2;
  v8 = (v4[6] + 16 * a1);
  *v8 = v5;
  v8[1] = v6;
  *(v4[7] + 8 * a1) = v3;
  ++v4[2];
}

uint64_t sub_100016124()
{
  result = v0;
  v3 = *(v1 - 256);
  v4 = *(v1 - 264);
  return result;
}

uint64_t sub_100016140()
{

  return swift_allocObject();
}

uint64_t sub_10001615C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

id sub_10001619C()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithUniqueIdentifier:v1 name:v2];

  return v3;
}

void sub_100016224(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

uint64_t sub_100016270()
{

  return swift_beginAccess();
}

void sub_1000162A8(uint64_t a1@<X8>)
{
  v1[12] = sub_100334A24;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_1000162C0()
{
  v2 = *(v0 + 28);

  return type metadata accessor for Locale();
}

void sub_100016310(void *a1, uint64_t a2, os_log_type_t a3)
{
  v7 = *(v5 - 160);

  _os_log_impl(a1, v4, a3, v7, v3, 0x1Cu);
}

uint64_t sub_100016330()
{
  v2 = v0[31];
  result = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  return result;
}

uint64_t sub_10001634C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_100016364(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100016384()
{

  return type metadata accessor for DispatchPredicate();
}

id sub_1000163A4()
{
  v3 = *(v1 + 544);

  return [v0 v3];
}

uint64_t sub_1000163FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016480(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
    v9 = sub_1000182F8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_10026D814(&qword_1006A61F0, &unk_10057D920);
      v14 = sub_1000182F8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v16 = type metadata accessor for SoundDescriptorAction();
        v17 = sub_1000182F8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[8];
        }

        else
        {
          v11 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
          v12 = a3[12];
        }
      }
    }

    return sub_100015468(a1 + v12, a2, v11);
  }
}

uint64_t sub_1000165EC()
{
  sub_10000EA30();
  v1 = type metadata accessor for Notification();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v11(v9);

  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_1000166CC(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v36 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v36);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = sub_100007FEC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  sub_100007FDC();
  v30 = v29 - v28;
  v31 = *(v1 + 16);
  *(v29 - v28) = v31;
  (*(v24 + 104))(v29 - v28, enum case for DispatchPredicate.notOnQueue(_:), v21);
  v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v30, v21);
  if (v31)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v1;
    *(v33 + 24) = a1 & 1;
    aBlock[4] = sub_100016E5C;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062DDE0;
    v34 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);
    (*(v5 + 8))(v11, v2);
    (*(v14 + 8))(v20, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016A2C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100016A64(void *a1, const char *a2, int a3)
{
  v39 = a3;
  v40 = a1;
  v41 = a2;
  v4 = type metadata accessor for AudioDescriptor();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10026D814(&qword_1006A9E68, &unk_100585F20);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v38[-v13];
  v15 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v38[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v38[-v23];
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v38[-v27];
  __chkstk_darwin(v26, v29);
  v31 = &v38[-v30];
  v32 = OBJC_IVAR____TtC13callservicesd13AudioResolver_resolvedDescriptor;
  swift_beginAccess();
  sub_1000163FC(v3 + v32, v31);
  sub_100013858(v40, v41, v28);
  v33 = *(v10 + 56);
  sub_1000163FC(v31, v14);
  sub_1000163FC(v28, &v14[v33]);
  if (sub_100015468(v14, 1, v4) == 1)
  {
    if (sub_100015468(&v14[v33], 1, v4) == 1)
    {
      sub_100009A04(v14, &unk_1006A2BF0, &unk_100585F10);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1000163FC(v14, v24);
  if (sub_100015468(&v14[v33], 1, v4) == 1)
  {
    sub_100045B54(v24, type metadata accessor for AudioDescriptor);
LABEL_6:
    sub_100009A04(v14, &qword_1006A9E68, &unk_100585F20);
    goto LABEL_9;
  }

  sub_10004A258(&v14[v33], v8, type metadata accessor for AudioDescriptor);
  v34 = sub_1003CF57C(v24, v8);
  sub_100045B54(v8, type metadata accessor for AudioDescriptor);
  sub_100045B54(v24, type metadata accessor for AudioDescriptor);
  sub_100009A04(v14, &unk_1006A2BF0, &unk_100585F10);
  if (v34)
  {
LABEL_8:
    if ((v39 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_9:
  sub_1000163FC(v28, v20);
  swift_beginAccess();
  sub_1003E0A3C(v20, v3 + v32, &unk_1006A2BF0, &unk_100585F10);
  swift_endAccess();
  v35 = *(v3 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler);
  if (v35)
  {
    v36 = *(v3 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler + 8);

    v35(v31, v28, v39 & 1);
    sub_1000051F8(v35);
  }

LABEL_11:
  sub_100009A04(v28, &unk_1006A2BF0, &unk_100585F10);
  return sub_100009A04(v31, &unk_1006A2BF0, &unk_100585F10);
}

uint64_t type metadata accessor for AudioDescriptor()
{
  result = qword_1006A93D0;
  if (!qword_1006A93D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016ECC()
{
  v2 = *(v0 - 200);

  return + infix(_:_:)();
}

unint64_t sub_100016F14()
{
  result = qword_1006A2C28;
  if (!qword_1006A2C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2C28);
  }

  return result;
}

void sub_100016F8C(uint64_t *a1@<X8>)
{
  v3 = *a1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(19);
}

uint64_t sub_100017030()
{
  v5 = *(v0 + 8);
  v4 = v0 + 8;
  *(v2 + 1040) = v5;
  *(v2 + 1048) = v4 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v3 - 120) = v5;
  *(v3 - 112) = v4;
  return result;
}

uint64_t sub_100017088()
{

  return String.hash(into:)();
}

char *sub_1000170A4()
{
  v2 = *(v0 + 16) + 1;

  return sub_10039A300(0, v2, 1);
}

uint64_t sub_1000170DC()
{

  return swift_beginAccess();
}

uint64_t sub_1000170F8()
{

  return SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
}

uint64_t sub_10001711C()
{

  return _NativeDictionary._delete(at:)();
}

uint64_t sub_100017138()
{

  return swift_once();
}

uint64_t sub_1000171B4(unint64_t *a1)
{

  return sub_10000EF18(a1, v1);
}

uint64_t sub_1000171DC(uint64_t a1)
{

  return sub_100015468(v1, 2, a1);
}

uint64_t sub_1000171FC(uint64_t a1)
{

  return sub_100015468(v1, 1, a1);
}

uint64_t sub_10001725C()
{

  return sub_10002741C(v0, v1, (v2 - 112));
}

id sub_1000172C0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void *sub_1000172D8(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  return result;
}

uint64_t sub_1000172E8()
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100017340(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 88) = a1;

  return Notification.init(name:object:userInfo:)(v2, v3 - 112, 0);
}

void sub_100017380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_1000173CC()
{
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
}

uint64_t sub_1000173F4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1000051F8(v4);
}

uint64_t sub_100017418()
{

  return swift_getObjectType();
}

uint64_t sub_100017464@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t type metadata accessor for SoundDescriptor()
{
  result = qword_1006A7F88;
  if (!qword_1006A7F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SoundDescriptorAction()
{
  result = qword_1006A6098;
  if (!qword_1006A6098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001756C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR___CSDRouteController_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  v12 = *(v2 + OBJC_IVAR___CSDRouteController_routeProviders);
  if (*(v12 + 16))
  {
    v13 = 0;
    v14 = v12 + 32;
    v33 = *(v12 + 16);
    v34 = v12;
    v32 = v12 + 32;
LABEL_4:
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_26;
    }

    v15 = (v14 + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    v35 = v13 + 1;
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 8);
    swift_unknownObjectRetain();
    v36 = v17;
    v37 = v16;
    v20 = v19(ObjectType, v17);
    v21 = sub_10000B6F4(v20);
    for (i = 0; ; ++i)
    {
      if (v21 == i)
      {
        swift_unknownObjectRelease();

        v12 = v34;
        v13 = v35;
        v14 = v32;
        if (v35 != v33)
        {
          goto LABEL_4;
        }

        return;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v25 = [v23 uniqueIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == a1 && v28 == v38)
      {

LABEL_22:

        return;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_100017840()
{
  sub_1000115C0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v7 == v8)
  {
LABEL_7:
    sub_10000ABE4(v6);
    if (v3)
    {
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v9 = sub_100008B38();
      j__malloc_size(v9);
      sub_1000103FC();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_10000F95C();
        sub_100060528(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10000FFF4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_10000E7FC();
  if (!v7)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100017900(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR___CSDRouteController_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v5);
  if ((v13 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v50 = v2;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v49 = _swiftEmptyArrayStorage;
  while (1)
  {
    v21 = v19;
    if (!v17)
    {
      break;
    }

LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = (*(a2 + 48) + ((v19 << 10) | (16 * v22)));
    v25 = *v23;
    v24 = v23[1];
    v26 = *(a1 + 16);

    if (v26 && (sub_100005208(), (v27 & 1) != 0))
    {
    }

    else
    {
      sub_10001756C(v25, v24);
      if (v28)
      {
        v30 = v29;

        sub_10026D814(&qword_1006A8D18, &qword_100584DA8);
        if (swift_dynamicCastClass())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v49[2];
            sub_100017840();
            v49 = v43;
          }

          v33 = v49[2];
          v32 = v49[3];
          v47 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            sub_100017840();
            v49 = v44;
          }

          result = swift_unknownObjectRelease();
          v34 = v49;
          v49[2] = v47;
          v35 = &v34[2 * v33];
          goto LABEL_25;
        }
      }

      else
      {
        v30 = 0;
      }

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v30;
      if ((v36 & 1) == 0)
      {
        v39 = v20[2];
        sub_100017840();
        v20 = v40;
      }

      v38 = v20[2];
      v37 = v20[3];
      v47 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_100017840();
        v20 = v41;
      }

      result = swift_unknownObjectRelease();
      v20[2] = v47;
      v35 = &v20[2 * v38];
LABEL_25:
      v35[4] = v25;
      v35[5] = v24;
    }
  }

  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(a2 + 64 + 8 * v19);
    ++v21;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  if (*(v50 + OBJC_IVAR___CSDRouteController__intelligentRoutingManager))
  {
    sub_1000192A8();
    v46 = v45;
    sub_1003D5A2C();
  }
}

uint64_t sub_100017CAC(uint64_t a1, unint64_t a2)
{
  sub_100009B7C((v2 - 168));

  return sub_10002741C(a1, a2, (v2 - 176));
}

void sub_100017CE8(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

id sub_100017D10(uint64_t a1, const char *a2)
{
  v7 = *(v5 - 328);
  v8 = *(v5 - 312);

  return [v2 a2];
}

uint64_t sub_100017D48()
{
  v2 = *(*(v1 - 168) + 8);
  result = v0;
  v4 = *(v1 - 152);
  return result;
}