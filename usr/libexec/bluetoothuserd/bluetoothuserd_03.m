uint64_t sub_10004834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100049838(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000327AC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100049C74();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100049688(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100048444(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = __chkstk_darwin(v9);
  v14 = &v37[-v13 - 8];
  v15 = (*(*v2 + 104))(v12);
  if (*(v15 + 16) && (v16 = sub_1000327AC(a1, a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);

    v19 = sub_100004124();
    (*(v7 + 16))(v14, v19, v6);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000034B8(a1, a2, v38);
      _os_log_impl(&_mh_execute_header, v20, v21, "Found storage for account: %s", v22, 0xCu);
      sub_1000036EC(v23);
    }

    (*(v7 + 8))(v14, v6);
  }

  else
  {

    v24 = sub_100004124();
    (*(v7 + 16))(v11, v24, v6);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000034B8(a1, a2, v38);
      _os_log_impl(&_mh_execute_header, v25, v26, "Creating storage for account: %s", v27, 0xCu);
      sub_1000036EC(v28);
    }

    (*(v7 + 8))(v11, v6);

    sub_1000196DC(a1, a2, 0xD00000000000001CLL, 0x800000010007A9F0, &off_10008B388, v38);
    type metadata accessor for CloudStorageCoordinator();
    v18 = sub_10001A2E8(v38);
    v29 = *(*v3 + 120);

    v30 = v29(v37);
    v32 = v31;
    v33 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v32;
    *v32 = 0x8000000000000000;
    sub_100049838(v18, a1, a2, isUniquelyReferenced_nonNull_native);

    *v32 = v36;
    v30(v37, 0);
  }

  return v18;
}

uint64_t sub_100048888()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000488C8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  Transaction.capture()();
  v11[0] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_1000022E4(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_100048B34(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100048BAC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100048C2C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100048C70(uint64_t a1)
{
  v2 = sub_1000022E4(&qword_100093CA0, type metadata accessor for FileAttributeKey);
  v3 = sub_1000022E4(&qword_100093D20, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100048D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100048D74(uint64_t a1)
{
  v2 = sub_1000022E4(&qword_100093D10, type metadata accessor for FileProtectionType);
  v3 = sub_1000022E4(&qword_100093D18, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100048E30()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100048E6C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100048EC0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100048F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100048FBC@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  result = sub_100041D50(v3, v4, v5);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100049028()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v0[4];
  v7 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v8 = *(v7 + *(v5 + 64));

  return sub_100042894(v6, v0 + v3, v7, v8, v1, v2);
}

uint64_t sub_100049124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_100043440(a1);
}

void sub_100049178()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1000472A8(v2);
}

uint64_t sub_1000491D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 248))(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

unint64_t sub_100049248(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000492DC(a1, v4);
}

unint64_t sub_1000492DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1000493E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000A45C(&qword_100093C80, &qword_100074268);
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
      v25 = *(*(v5 + 56) + 8 * v21);
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
      *(*(v8 + 56) + 8 * v16) = v25;
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

uint64_t sub_100049688(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100049838(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000327AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000493E0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000327AC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100049C74();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_1000499B8()
{
  result = qword_100093B08;
  if (!qword_100093B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B08);
  }

  return result;
}

unint64_t sub_100049A10()
{
  result = qword_100093B10;
  if (!qword_100093B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B10);
  }

  return result;
}

unint64_t sub_100049A68()
{
  result = qword_100093B18;
  if (!qword_100093B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B18);
  }

  return result;
}

unint64_t sub_100049AC0()
{
  result = qword_100093B20;
  if (!qword_100093B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B20);
  }

  return result;
}

unint64_t sub_100049B18()
{
  result = qword_100093B28;
  if (!qword_100093B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserFileManager.UserFileManagerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UserFileManager.UserFileManagerError(_WORD *result, int a2, int a3)
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

void *sub_100049C74()
{
  v1 = v0;
  sub_10000A45C(&qword_100093C80, &qword_100074268);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_100049DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100049E1C()
{
  result = qword_100093C88;
  if (!qword_100093C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093C88);
  }

  return result;
}

unint64_t sub_100049E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A45C(&qword_100093CC8, &unk_1000742A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100049248(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100049F7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100049F94(void *a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v2[4];
  v10 = v2 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_100046894(a1, a2 & 1, v9, v2 + v8, v10, v5, v6);
}

unint64_t sub_10004A080()
{
  result = qword_100093CB8;
  if (!qword_100093CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093CB8);
  }

  return result;
}

uint64_t sub_10004A108(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = (*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for URL() - 8);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80)));

  return sub_100042E00(a1, v1 + v5, v8, v9, v3, v4);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_10004A44C();
  objc_autoreleasePoolPop(v3);
  v4 = [objc_opt_self() currentRunLoop];
  [v4 run];

  return 0;
}

uint64_t sub_10004A44C()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BluetoothUserDaemon();
  sub_100069340();
  sub_10000A8F8();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10004A728();
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10004A780();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = *sub_100069BF4(v9);
  (*(v10 + 400))();
  v11 = *(**DarwinNotificationManager.shared.unsafeMutableAddressor() + 136);

  v11(v12);
}

unint64_t sub_10004A728()
{
  result = qword_1000931A0;
  if (!qword_1000931A0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000931A0);
  }

  return result;
}

unint64_t sub_10004A780()
{
  result = qword_1000931B0;
  if (!qword_1000931B0)
  {
    sub_10000C9B0(&unk_100092CD0, &unk_100072C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000931B0);
  }

  return result;
}

uint64_t Data.init(hexString:)()
{
  if (String.count.getter())
  {

    return 0;
  }

  else
  {
    v0 = String.uppercased()();
    v18 = sub_100003C74(v0._countAndFlagsBits, v0._object);

    result = String.count.getter();
    if (result >= -1)
    {
      if (result <= 1)
      {
        v3 = _swiftEmptyArrayStorage;
      }

      else
      {
        v2 = result / 2;
        v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v3[2] = v2;
        bzero(v3 + 4, v2);
      }

      v4 = String.count.getter();

      if (v4 < 1)
      {
LABEL_29:

        v17 = sub_10004C18C(v3);

        return v17;
      }

      v5 = 0;
      v6 = v18 + 32;
      v7 = *(v18 + 2);
      while (1)
      {
        v8 = __OFADD__(v5, 2) ? 0x7FFFFFFFFFFFFFFFLL : v5 + 2;
        if (v5 >= v7)
        {
          break;
        }

        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }

        if (v9 >= v7)
        {
          goto LABEL_34;
        }

        v10 = v6[v5];
        v11 = v6[v9];
        if (!isxdigit(v10) || (result = isxdigit(v11), !result))
        {

          return 0;
        }

        if (v10 >= 0x41)
        {
          v12 = 55;
        }

        else
        {
          v12 = 48;
        }

        v13 = v10 - v12;
        if ((v13 & 0xFFFFFF00) != 0)
        {
          goto LABEL_35;
        }

        if (v11 >= 0x41)
        {
          v14 = 55;
        }

        else
        {
          v14 = 48;
        }

        v15 = v11 - v14;
        if ((v15 & 0xFFFFFF00) != 0)
        {
          goto LABEL_36;
        }

        if (v13 > 0xFu)
        {
          goto LABEL_37;
        }

        v16 = 16 * (v13 & 0xF) + v15;
        if ((v16 & 0x100) != 0)
        {
          goto LABEL_38;
        }

        if (v5 >> 1 >= v3[2])
        {
          goto LABEL_39;
        }

        *(v3 + (v5 >> 1) + 32) = v16;
        v5 = v8;
        if (v8 >= v4)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

__int16 Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = "BluetoothUserDaemon";
  if (("BluetoothUserDaemon" & 0x1000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v10 = String.UTF16View._nativeGetOffset(for:)();
  if (v10)
  {
    while (1)
    {
      v11 = v10;
      v12 = sub_10004C110(v10, 0);
      v9 = sub_10004BE3C(v33, (v12 + 4), v11, 0xD000000000000010, v9 | 0x8000000000000000);

      if (v9 == v11)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v10 = String.UTF16View._foreignCount()();
      if (!v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a2);
      goto LABEL_16;
    }

LABEL_14:
    LODWORD(v14) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_33:
      __break(1u);
      return v10;
    }

    v14 = v14;
    goto LABEL_16;
  }

  if (v13 != 2)
  {
    v18 = sub_10004B340(0, 0, 0, _swiftEmptyArrayStorage);
    goto LABEL_20;
  }

  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  if (v14 + 0x4000000000000000 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = sub_10004B340(0, (2 * v14) & ~((2 * v14) >> 63), 0, _swiftEmptyArrayStorage);
  if (v13 == 2)
  {
    v19 = *(a1 + 16);
  }

LABEL_20:
  sub_100006218(a1, a2);
  Data.Iterator.init(_:at:)();
  LOWORD(v10) = Data.Iterator.next()();
  if ((v10 & 0x100) == 0)
  {
    v20 = v10;
    v21 = v12 + 4;
    while (1)
    {
      v22 = v20 >> 4;
      if (v22 >= v12[2])
      {
        break;
      }

      v23 = *(v21 + v22);
      v25 = *(v18 + 2);
      v24 = *(v18 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v10 = sub_10004B340((v24 > 1), v25 + 1, 1, v18);
        v18 = v10;
      }

      *(v18 + 2) = v26;
      *&v18[2 * v25 + 32] = v23;
      if ((v20 & 0xF) >= v12[2])
      {
        goto LABEL_31;
      }

      v27 = *(v21 + (v20 & 0xF));
      v28 = *(v18 + 3);
      if ((v25 + 2) > (v28 >> 1))
      {
        v18 = sub_10004B340((v28 > 1), v25 + 2, 1, v18);
      }

      *(v18 + 2) = v25 + 2;
      *&v18[2 * v26 + 32] = v27;
      LOWORD(v10) = Data.Iterator.next()();
      v20 = v10;
      if ((v10 & 0x100) != 0)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_29:
  (*(v5 + 8))(v8, v4);

  v29 = *(v18 + 2);
  v30 = String.init(utf16CodeUnits:count:)();

  LOWORD(v10) = v30;
  return v10;
}

uint64_t Data.intValue.getter(uint64_t a1, unint64_t a2)
{
  result = Data.hexString.getter(a1, a2);
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_10004B43C(result, v3, 16);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      return v8;
    }

    return 0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v5 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          if (result)
          {
            v8 = 0;
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16;
              v18 = v17 - 48;
              if ((v17 - 48) >= 0xA)
              {
                if ((v17 - 65) < 6)
                {
                  v18 = v17 - 55;
                }

                else
                {
                  if ((v17 - 97) > 5)
                  {
                    goto LABEL_87;
                  }

                  v18 = v17 - 87;
                }
              }

              if ((v8 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_87;
              }

              v12 = __OFADD__(16 * v8, v18);
              v8 = 16 * v8 + v18;
              if (v12)
              {
                goto LABEL_87;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_87;
      }

      goto LABEL_97;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        if (result)
        {
          v8 = 0;
          while (1)
          {
            v22 = *result;
            v23 = v22 - 48;
            if ((v22 - 48) >= 0xA)
            {
              if ((v22 - 65) < 6)
              {
                v23 = v22 - 55;
              }

              else
              {
                if ((v22 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v23 = v22 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFADD__(16 * v8, v23);
            v8 = 16 * v8 + v23;
            if (v12)
            {
              goto LABEL_87;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_87:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_88:
      v32 = v5;
      v27 = v5;

      if ((v27 & 1) == 0)
      {
        return v8;
      }

      return 0;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        if (result)
        {
          v8 = 0;
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9;
            v11 = v10 - 48;
            if ((v10 - 48) >= 0xA)
            {
              if ((v10 - 65) < 6)
              {
                v11 = v10 - 55;
              }

              else
              {
                if ((v10 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v11 = v10 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFSUB__(16 * v8, v11);
            v8 = 16 * v8 - v11;
            if (v12)
            {
              goto LABEL_87;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_75:
        v8 = 0;
        LOBYTE(v5) = 0;
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v31[0] = result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v8, v26);
          v8 = 16 * v8 + v26;
          if (v12)
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v8, v15);
          v8 = 16 * v8 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19;
        v21 = v20 - 48;
        if ((v20 - 48) >= 0xA)
        {
          if ((v20 - 65) < 6)
          {
            v21 = v20 - 55;
          }

          else
          {
            if ((v20 - 97) > 5)
            {
              goto LABEL_87;
            }

            v21 = v20 - 87;
          }
        }

        if ((v8 - 0x800000000000000) >> 60 != 15)
        {
          break;
        }

        v12 = __OFADD__(16 * v8, v21);
        v8 = 16 * v8 + v21;
        if (v12)
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_98:
  __break(1u);
  return result;
}

uint64_t Data.write(to:excludeFromBackup:options:)(uint64_t a1, int a2)
{
  v17[3] = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLResourceValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v20;
  result = Data.write(to:options:)();
  if (!v13)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v15 = v19;
    v16 = v18;
    (*(v19 + 16))(v7, a1, v18);
    URL.setResourceValues(_:)();
    (*(v15 + 8))(v7, v16);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

char *sub_10004B340(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A45C(&qword_100093D28, &qword_1000745F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

unsigned __int8 *sub_10004B43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10004B9C8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10004B9C8()
{
  v0 = String.subscript.getter();
  v4 = sub_10004BA48(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10004BA48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100003BB4(v9, 0);
  v12 = sub_10004BBA0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10004BBA0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10004BDC0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10004BDC0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10004BDC0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10004BE3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = _StringObject.sharedUTF8.getter();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = Unicode.Scalar.UTF16View.subscript.getter();
    v22 = Unicode.Scalar.UTF16View.subscript.getter();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_10004C110(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000A45C(&qword_100093D28, &qword_1000745F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_10004C18C(uint64_t a1)
{
  v9 = sub_10000A45C(&qword_100093D30, &qword_1000745F8);
  v10 = sub_10004C23C();
  v8[0] = a1;
  v2 = sub_1000078C8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10000790C(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000036EC(v8);
  return v5;
}

unint64_t sub_10004C23C()
{
  result = qword_100093D38;
  if (!qword_100093D38)
  {
    sub_10000C9B0(&qword_100093D30, &qword_1000745F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093D38);
  }

  return result;
}

uint64_t sub_10004C2A0()
{
  v0 = type metadata accessor for Logger();
  sub_100038620(v0, qword_100098B10);
  sub_1000027FC(v0, qword_100098B10);
  v1 = sub_10003906C();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t LocalDispatchTimer.isCancelled.getter()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  return OS_dispatch_source.isCancelled.getter() & 1;
}

uint64_t LocalDispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  __chkstk_darwin(v14);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchTimeInterval();
  v93 = *(v18 - 8);
  v19 = *(v93 + 64);
  v20 = __chkstk_darwin(v18);
  v86 = (v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v89 = (v72 - v22);
  v90 = type metadata accessor for DispatchTime();
  v92 = *(v90 - 8);
  v23 = *(v92 + 64);
  v24 = __chkstk_darwin(v90);
  v85 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v91 = v72 - v26;
  v27 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v28 = *(v27 - 8);
  v29 = v28[8];
  __chkstk_darwin(v27);
  v31 = v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v76 = *(v77 - 1);
  v32 = v76[8];
  __chkstk_darwin(v77);
  v75 = v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for OS_dispatch_queue.Attributes();
  v34 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36);
  v88 = v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0x408F400000000000;
  v41 = a4 * 1000.0;
  v42 = 2147483650.0;
  if (v41 < 2147483650.0)
  {
    v42 = v41;
    if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v42 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v42 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a5 = a5 * 1000.0;
  *(v7 + 24) = v42;
  v43 = 2147483650.0;
  if (a5 < 2147483650.0)
  {
    v43 = a5;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }
  }

  if (v43 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v43 >= 2147483650.0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  a6 = a6 * 1000.0;
  *(v7 + 28) = v43;
  v44 = 2147483650.0;
  if (a6 < 2147483650.0)
  {
    v44 = a6;
    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }
  }

  if (v44 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v44 >= 2147483650.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_17;
  }

  v78 = v28;
  v79 = v27;
  v80 = v39;
  v81 = v38;
  *(v7 + 32) = v44;
  if (v41 <= 2147483650.0 && a5 <= 2147483650.0 && a6 <= 2147483650.0)
  {
    goto LABEL_20;
  }

  v84 = v18;
  v18 = v14;
  v14 = v17;
  v17 = a2;
  v28 = a1;
  if (qword_100097BE0 != -1)
  {
    goto LABEL_36;
  }

LABEL_17:
  v45 = type metadata accessor for Logger();
  sub_1000027FC(v45, qword_100098B10);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134218752;
    *(v48 + 4) = 0x41DFFFFFFFC00000;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v41;
    *(v48 + 22) = 2048;
    *(v48 + 24) = a5;
    *(v48 + 32) = 2048;
    *(v48 + 34) = a6;
    _os_log_impl(&_mh_execute_header, v46, v47, "LocalDispatchTimer: Exceeded maximum value of %f: deadline: %f, repeating: %f, leeway: %f", v48, 0x2Au);
  }

  a1 = v28;
  a2 = v17;
  v17 = v14;
  v14 = v18;
  v18 = v84;
LABEL_20:
  v84 = v14;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  v83 = a3;
  v82 = v17;
  if (a1)
  {

    v49 = a1;
  }

  else
  {
    v72[1] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000232C(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10000A45C(&unk_100092CD0, &unk_100072C60);
    sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v76[13])(v75, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v77);
    a1 = 0;
    v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v7 + 64) = v49;
  sub_100004890(0, &qword_100093D40, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000232C(&qword_100093D48, &type metadata accessor for OS_dispatch_source.TimerFlags);
  v77 = a1;
  v76 = v49;
  sub_10000A45C(&qword_100093D50, &qword_100074608);
  sub_1000023BC(&qword_100093D58, &qword_100093D50, &qword_100074608);
  v50 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (v78[1])(v31, v50);
  *(v7 + 40) = v51;
  v52 = v85;
  static DispatchTime.now()();
  v53 = v89;
  *v89 = *(v7 + 24);
  v54 = enum case for DispatchTimeInterval.milliseconds(_:);
  v55 = v93;
  v56 = *(v93 + 104);
  v56(v53, enum case for DispatchTimeInterval.milliseconds(_:), v18);
  + infix(_:_:)();
  v57 = v18;
  v79 = *(v55 + 8);
  v79(v53, v18);
  v58 = v92 + 8;
  v85 = *(v92 + 8);
  (v85)(v52, v90);
  v59 = *(v7 + 28);
  v92 = v58;
  v60 = v55 + 8;
  if (v59 < 1)
  {
    v62 = enum case for DispatchTimeInterval.never(_:);
    v61 = v86;
  }

  else
  {
    v61 = v86;
    *v86 = v59;
    v62 = v54;
  }

  v56(v61, v62, v57);
  v63 = *(v7 + 40);
  swift_getObjectType();
  v64 = v89;
  *v89 = *(v7 + 32);
  v56(v64, v54, v57);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v93 = v60;
  v65 = v79;
  v79(v64, v57);
  v66 = *(v7 + 40);
  swift_getObjectType();
  v67 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10004CFE8;
  aBlock[5] = v67;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B6C0;
  v68 = _Block_copy(aBlock);

  v69 = v88;
  static DispatchQoS.unspecified.getter();
  v70 = v82;
  sub_10004D05C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v68);

  (*(v87 + 8))(v70, v84);
  (*(v80 + 8))(v69, v81);
  v65(v61, v57);
  (v85)(v91, v90);

  return v7;
}

uint64_t sub_10004CFE8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    v1 = *(result + 56);

    v2(v3);
  }

  return result;
}

uint64_t sub_10004D05C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000232C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

Swift::Void __swiftcall LocalDispatchTimer.resume()()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  OS_dispatch_source.resume()();
}

Swift::Void __swiftcall LocalDispatchTimer.cancel()()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t LocalDispatchTimer.deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return v0;
}

uint64_t LocalDispatchTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 72, 7);
}

void sub_10004D5D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10004D690()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10004D6E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10004D79C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_currentDeviceIDSUniqueID);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10004D85C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CloudPairedDeviceRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_100004EFC(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return sub_100007124(v11);
      }

      if (v15)
      {
        break;
      }

      sub_100007124(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_100007180(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

void *sub_10004D9D8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10004DAEC()
{
  v1 = (v0 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10004DB44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10004DBA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10004DC2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_10004DCBC()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10004DD04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_10004DDA0(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v116 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v113 = v3;
  v114 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v112 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v111 = v96 - v8;
  v9 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v110 = v96 - v11;
  v107 = type metadata accessor for URL.DirectoryHint();
  v105 = *(v107 - 8);
  v12 = *(v105 + 64);
  __chkstk_darwin(v107);
  v104 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for URL();
  v106 = *(v108 - 8);
  v14 = *(v106 + 64);
  v15 = __chkstk_darwin(v108);
  v100 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v103 = v96 - v17;
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v96[2] = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v101 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v101 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v101);
  v26 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v2;
  *(v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) = 0;
  *(v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService) = 0;
  v102 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
  v96[0] = sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  v99 = "etadata\n----------------------\n";
  v98 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v97 = *(v23 + 104);
  v97(v26);
  static DispatchQoS.unspecified.getter();
  v117[0] = _swiftEmptyArrayStorage;
  v96[1] = sub_100002374(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = v115;
  *(v102 + v115) = v27;
  v29 = v28 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_currentDeviceIDSUniqueID;
  *v29 = 0;
  *(v29 + 1) = 0;
  v99 = v29;
  v30 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
  (v97)(v26, v98, v101);
  static DispatchQoS.unspecified.getter();
  v117[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = v115;
  *(v115 + v30) = v31;
  *&v32[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevices] = 0;
  *&v32[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator] = 0;
  v33 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageNotificationSubscription;
  v34 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v35 = *(v34 - 8);
  v102 = *(v35 + 56);
  v101 = v35 + 56;
  v102(&v32[v33], 1, 1, v34);
  v36 = &v32[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier];
  v37 = v116;
  v38 = v109;
  *v36 = v116;
  v36[1] = v38;
  type metadata accessor for UserFileManager();

  v39 = v100;
  sub_100041768(v100);
  v117[0] = v37;
  v117[1] = v38;
  v40 = v38;
  v41 = v105;
  v42 = v104;
  v43 = v107;
  (*(v105 + 104))(v104, enum case for URL.DirectoryHint.isDirectory(_:), v107);
  sub_100038560();
  v44 = v103;
  URL.appending<A>(path:directoryHint:)();
  v45 = v32;
  (*(v41 + 8))(v42, v43);
  v46 = v106;
  v47 = v108;
  (*(v106 + 8))(v39, v108);
  (*(v46 + 32))(&v45[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL], v44, v47);
  v48 = IDSCopyLocalDeviceUniqueID();
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v99;
  swift_beginAccess();
  v54 = v53[1];
  v108 = v50;
  *v53 = v50;
  v53[1] = v52;

  v55 = type metadata accessor for CloudPairingManager();
  v118.receiver = v45;
  v118.super_class = v55;
  v56 = objc_msgSendSuper2(&v118, "init");
  v57 = sub_100041228();
  v58 = *(**v57 + 232);

  v59 = v116;
  v60 = v58(v116, v40);

  v61 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator;
  swift_beginAccess();
  v62 = *&v56[v61];
  *&v56[v61] = v60;

  v63 = *(**v57 + 232);

  v63(v59, v40);

  v117[3] = v55;
  v117[4] = &off_10008B760;
  v117[0] = v56;
  v64 = v110;
  sub_100031164();

  sub_1000036EC(v117);
  v102(v64, 0, 1, v34);
  v65 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageNotificationSubscription;
  swift_beginAccess();
  sub_100050BE4(v64, &v56[v65]);
  swift_endAccess();
  v66 = sub_1000391A8();
  v68 = v113;
  v67 = v114;
  v69 = v111;
  v115 = *(v114 + 16);
  v116 = v66;
  v115(v111);

  v70 = v56;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v117[0] = v74;
    *v73 = 136315394;
    if (v52)
    {
      v75 = v108;
    }

    else
    {
      v75 = 45;
    }

    if (v52)
    {
      v76 = v52;
    }

    else
    {
      v76 = 0xE100000000000000;
    }

    v77 = sub_1000034B8(v75, v76, v117);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2048;
    v79 = *((*((swift_isaMask & *v70) + 0x128))(v78) + 16);

    *(v73 + 14) = v79;

    _os_log_impl(&_mh_execute_header, v71, v72, "Start Cloud Pairing Manager (IDS ID: %s) with cached records count: %ld", v73, 0x16u);
    sub_1000036EC(v74);
    v68 = v113;
  }

  else
  {
  }

  v80 = *(v67 + 8);
  v80(v69, v68);
  v81 = objc_allocWithZone(IDSService);
  v82 = String._bridgeToObjectiveC()();
  v83 = [v81 initWithService:v82];

  if (v83)
  {
    v84 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudPairingIDSService;
    swift_beginAccess();
    v85 = *&v70[v84];
    *&v70[v84] = v83;
    v86 = v83;

    v87 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_dispatchQueue;
    swift_beginAccess();
    [v86 addDelegate:v70 queue:*&v70[v87]];
    (v115)(v112, v116, v68);
    v88 = v86;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 134217984;
      v92 = [v88 devices];
      if (!v92)
      {

        __break(1u);
        return;
      }

      v93 = v92;
      sub_100004890(0, &qword_100093F60, IDSDevice_ptr);
      v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v94 >> 62)
      {
        v95 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v91 + 4) = v95;

      _os_log_impl(&_mh_execute_header, v89, v90, "IDS cloud pairing service devices: %ld", v91, 0xCu);
    }

    else
    {

      v89 = v88;
    }

    v80(v112, v68);
  }
}

id sub_10004EAEC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34[-v9];
  v11 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34[-v14];
  v16 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageNotificationSubscription;
  swift_beginAccess();
  sub_100050C54(&v1[v16], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v17 = &qword_100093F48;
    v18 = &qword_100074688;
    v19 = v10;
  }

  else
  {
    sub_100050CC4(v10, v15);
    v20 = *sub_100041228();
    v21 = &v1[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountIdentifier];
    swift_beginAccess();
    v23 = *v21;
    v22 = *(v21 + 1);
    v24 = *(*v20 + 232);

    v24(v23, v22);

    sub_100031420(v15);

    v17 = &qword_100093F40;
    v18 = &qword_1000730E0;
    v19 = v15;
  }

  sub_100006CAC(v19, v17, v18);
  v25 = *sub_100041228();
  v26 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_baseURL;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v26], v2);
  v27 = *(*v25 + 216);

  v27(v6);

  (*(v3 + 8))(v6, v2);
  v28 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cloudStorageCoordinator;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29)
  {
    v30 = *(*v29 + 776);

    v30(v31);
  }

  v32 = type metadata accessor for CloudPairingManager();
  v35.receiver = v1;
  v35.super_class = v32;
  return objc_msgSendSuper2(&v35, "dealloc");
}

uint64_t sub_10004EFC0()
{
  result = (*((swift_isaMask & *v0) + 0x160))();
  if (result)
  {
    (*(*result + 768))(result);
  }

  return result;
}

uint64_t sub_10004F06C()
{
  result = (*((swift_isaMask & *v0) + 0x160))();
  if (result)
  {
    (*(*result + 776))(result);
  }

  return result;
}

uint64_t sub_10004F118()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100052BE0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B930;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_10004F3D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v74 = *(v4 - 8);
  v75 = v4;
  isa = v74[8].isa;
  __chkstk_darwin(v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Logger();
  v80 = *(v77 - 8);
  v8 = *(v80 + 64);
  v9 = __chkstk_darwin(v77);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v71 - v11;
  v12 = sub_10000A45C(&qword_100093F68, &unk_100074690);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v71 - v14;
  v16 = type metadata accessor for CloudPairedDeviceRecord();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v71 = &v71 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v71 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v71 - v27;
  v29 = (*((swift_isaMask & *v1) + 0x128))(v26);
  v81 = a1;
  v30 = v79;
  sub_10004D85C(sub_100050D34, v29, v15);
  v79 = v30;

  v31 = *(v17 + 48);
  v78 = v16;
  if (v31(v15, 1, v16) == 1)
  {
    sub_100006CAC(v15, &qword_100093F68, &unk_100074690);
    sub_100004EFC(a1, v28);
  }

  else
  {
    sub_100007180(v15, v25);
    v32 = sub_10003C364();
    if (v32 == sub_10003C364())
    {
      v33 = sub_100004124();
      v34 = v80;
      v35 = v73;
      v36 = v77;
      (*(v80 + 16))(v73, v33, v77);
      v37 = v71;
      sub_100004EFC(v25, v71);
      v38 = v72;
      sub_100004EFC(a1, v72);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = v37;
        v42 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v82 = v76;
        *v42 = 136315394;
        sub_100002374(&qword_100093F78, type metadata accessor for CloudPairedDeviceRecord);
        LODWORD(v75) = v40;
        v74 = v39;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        sub_100007124(v41);
        v46 = sub_1000034B8(v43, v45, &v82);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2080;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        sub_100007124(v38);
        v50 = sub_1000034B8(v47, v49, &v82);

        *(v42 + 14) = v50;
        v51 = v74;
        _os_log_impl(&_mh_execute_header, v74, v75, "Dropping same record update: %s for %s", v42, 0x16u);
        swift_arrayDestroy();

        v52 = (*(v80 + 8))(v73, v77);
      }

      else
      {

        sub_100007124(v38);
        sub_100007124(v37);
        v52 = (*(v34 + 8))(v35, v36);
      }

      (*((swift_isaMask & *v2) + 0x1C0))(v52);
      return sub_100007124(v25);
    }

    sub_100004EFC(v25, v28);
    sub_10003AE98(a1);
    sub_100007124(v25);
  }

  v53 = v80;
  sub_10004F118();
  v54 = *sub_100041228();
  v55 = *((swift_isaMask & *v1) + 0x148);

  v55(v56);
  v57 = *sub_100040F1C();
  v58 = *(*v54 + 208);
  v59 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord);
  v60 = v79;
  v58(v28, v7, v57, v78, v59);
  v61 = v74 + 1;
  v62 = v76;
  if (v60)
  {
    (v61->isa)(v7, v75);

    v63 = sub_100004124();
    v64 = v77;
    (*(v53 + 16))(v62, v63, v77);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      swift_errorRetain();
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v69;
      *v68 = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "Unable to store device record with error: %@", v67, 0xCu);
      sub_100006CAC(v68, &qword_100093F70, &qword_1000730D0);
    }

    (*(v53 + 8))(v62, v64);
  }

  else
  {

    (v61->isa)(v7, v75);
  }

  v25 = v28;
  return sub_100007124(v25);
}

uint64_t sub_10004FC54(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004F118();
  v10 = *sub_100041228();
  v11 = *((swift_isaMask & *v2) + 0x148);

  v11(v12);
  v13 = *(*v10 + 160);
  v14 = type metadata accessor for CloudPairedDeviceRecord();
  v15 = sub_100002374(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord);
  v13(a1, v9, a2, v14, v15);

  (*(v6 + 8))(v9, v5);
  return notify_post("com.apple.bluetoothuser.cloudChanged");
}

uint64_t sub_10004FE1C()
{
  v1 = type metadata accessor for CloudPairedDeviceRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((swift_isaMask & *v0) + 0x128))(v4);
  v8 = *(v7 + 16);
  if (!v8)
  {
  }

  v9 = 0;
  while (v9 < *(v7 + 16))
  {
    sub_100004EFC(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v6);
    sub_10004FF94(v6, v0);
    ++v9;
    sub_100007124(v6);
    if (v8 == v9)
    {
    }
  }

  __break(1u);

  result = sub_100007124(v6);
  __break(1u);
  return result;
}

void sub_10004FF94(uint64_t a1, void *a2)
{
  v82 = a2;
  v3 = type metadata accessor for CloudPairedDeviceRecord();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v78 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v83 = *(v9 - 8);
  v84 = v9;
  v10 = *(v83 + 64);
  __chkstk_darwin(v9);
  v81 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v74 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = &v74 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v74 - v24;
  __chkstk_darwin(v23);
  v27 = &v74 - v26;
  v28 = sub_100002374(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord);
  v29 = sub_100006DF4(v3, v28);
  v30 = [v29 recordChangeTag];
  v86 = v29;
  if (!v30)
  {
    goto LABEL_11;
  }

  v75 = a1;
  v76 = v3;
  (*(v18 + 16))(v27, a1 + *(v3 + 20), v17);
  v31 = [v29 modificationDate];
  v32 = v29;
  if (v31)
  {
    v33 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = *(v18 + 32);
    v35 = v85;
    v34(v85, v22, v17);
    (*(v18 + 56))(v35, 0, 1, v17);
    v34(v25, v35, v17);
    v36 = v32;
  }

  else
  {
    v37 = *(v18 + 56);
    v38 = v85;
    v37(v85, 1, 1, v17);
    v39 = [v29 creationDate];
    if (v39)
    {
      v40 = v37;
      v41 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = v74;
      v43 = v22;
      v44 = *(v18 + 32);
      v44(v74, v43, v17);
      v40(v42, 0, 1, v17);
      v38 = v85;
      v44(v25, v42, v17);
      v45 = *(v18 + 48);
    }

    else
    {
      v46 = v74;
      v37(v74, 1, 1, v17);
      static Date.now.getter();
      v45 = *(v18 + 48);
      if (v45(v46, 1, v17) != 1)
      {
        sub_100006CAC(v46, &unk_1000938B0, &qword_100074AA0);
      }
    }

    v36 = v86;
    if (v45(v38, 1, v17) != 1)
    {
      sub_100006CAC(v38, &unk_1000938B0, &qword_100074AA0);
    }
  }

  v47 = static Date.> infix(_:_:)();
  v48 = *(v18 + 8);
  v48(v25, v17);
  v48(v27, v17);
  a1 = v75;
  v3 = v76;
  if ((v47 & 1) == 0)
  {
  }

  else
  {
LABEL_11:
    v49 = v82;
    sub_10004F118();
    v50 = *sub_100041228();
    v51 = *((swift_isaMask & *v49) + 0x148);

    v53 = v81;
    v51(v52);
    v54 = *sub_100040F1C();
    v55 = *(*v50 + 208);
    v56 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord);
    v57 = v87;
    v55(a1, v53, v54, v3, v56);
    if (v57)
    {
      (*(v83 + 8))(v53, v84);

      v58 = sub_100004124();
      v59 = v78;
      v60 = v79;
      v61 = v80;
      (*(v79 + 16))(v78, v58, v80);
      v62 = v77;
      sub_100004EFC(a1, v77);
      swift_errorRetain();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v88 = v67;
        *v65 = 136315394;
        sub_100002374(&qword_100093F78, type metadata accessor for CloudPairedDeviceRecord);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v62;
        v71 = v70;
        sub_100007124(v69);
        v72 = sub_1000034B8(v68, v71, &v88);

        *(v65 + 4) = v72;
        *(v65 + 12) = 2112;
        swift_errorRetain();
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v65 + 14) = v73;
        *v66 = v73;
        _os_log_impl(&_mh_execute_header, v63, v64, "Error saving cloud record to cloud: %s due to %@", v65, 0x16u);
        sub_100006CAC(v66, &qword_100093F70, &qword_1000730D0);

        sub_1000036EC(v67);

        (*(v79 + 8))(v78, v80);
      }

      else
      {

        sub_100007124(v62);
        (*(v60 + 8))(v59, v61);
      }
    }

    else
    {
      (*(v83 + 8))(v53, v84);
    }
  }
}

uint64_t sub_100050910(uint64_t a1, char a2)
{
  v3 = *v2;
  *(*v2 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) = a2;
  type metadata accessor for Transaction();
  v4 = static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.deleteStaleRecords", 42, 2, sub_100052BC8);
  return (*((swift_isaMask & *v3) + 0x1C0))(v4);
}

uint64_t sub_1000509E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  *(v6 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_accountAvailable) = 0;
  sub_10004F118();
  v7 = *sub_100041228();
  v8 = *((swift_isaMask & *v6) + 0x148);

  v8(v9);
  (*(*v7 + 216))(v5);

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100050B50()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevices);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevices) = *(v0 + 24);
}

uint64_t type metadata accessor for CloudPairingManager()
{
  result = qword_100097D80;
  if (!qword_100097D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100050BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093F48, &qword_100074688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050D34(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for CloudPairedDeviceRecord() + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (v3 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100050DA4(uint64_t a1, unint64_t a2)
{
  v163 = a2;
  v147 = type metadata accessor for CloudPairedDeviceRecord();
  v3 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v162 = (&v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for URL();
  v144 = *(v5 - 8);
  v6 = *(v144 + 64);
  v7 = __chkstk_darwin(v5);
  v146 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v158 = (&v141 - v10);
  v11 = __chkstk_darwin(v9);
  v157 = (&v141 - v12);
  __chkstk_darwin(v11);
  v14 = (&v141 - v13);
  v15 = type metadata accessor for Logger();
  v143 = *(v15 - 8);
  v16 = *(v143 + 64);
  v17 = __chkstk_darwin(v15);
  v165 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v159 = &v141 - v20;
  v21 = __chkstk_darwin(v19);
  v149 = &v141 - v22;
  __chkstk_darwin(v21);
  v164 = (&v141 - v23);
  v172 = type metadata accessor for DispatchWorkItemFlags();
  v142 = *(v172 - 8);
  v24 = *(v142 + 64);
  __chkstk_darwin(v172);
  v171 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for DispatchQoS();
  v141 = *(v170 - 8);
  v26 = *(v141 + 64);
  result = __chkstk_darwin(v170);
  v169 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  v173 = v5;
  v174 = v15;
  if (v30)
  {
    v31 = (a1 + 32);
    v161 = (v143 + 16);
    v155 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
    v160 = (v143 + 8);
    *&v154 = &v180;
    v153 = (v142 + 8);
    *&v152 = v141 + 8;
    v151 = (v144 + 8);
    v150 = (v144 + 16);
    *&v28 = 138412290;
    v145 = v28;
    *&v28 = 138412546;
    v148 = v28;
    v156 = v14;
    while (1)
    {
      v43 = *v31;
      v44 = [v43 zoneID];
      v45 = [v44 zoneName];

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = sub_100039548();
      swift_beginAccess();
      if (*v49 == v46 && v49[1] == v48)
      {
        break;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_14;
      }

      v52 = sub_100004124();
      (*v161)(v149, v52, v15);
      v53 = v43;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = v145;
        *(v56 + 4) = v53;
        *v57 = v53;
        v58 = v53;
        _os_log_impl(&_mh_execute_header, v54, v55, "Ignoring deleted record from unknown zone: %@", v56, 0xCu);
        sub_100006CAC(v57, &qword_100093F70, &qword_1000730D0);
      }

      else
      {
        v58 = v54;
        v54 = v53;
      }

      result = (*v160)(v149, v15);
LABEL_5:
      v31 += 3;
      if (!--v30)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v167 = v31;
    v168 = v30;
    v175 = v43;
    v59 = v176;
    v60 = *&v176[v155];
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    v182 = sub_100052BE0;
    v183 = v61;
    aBlock = _NSConcreteStackBlock;
    v179 = 1107296256;
    v180 = sub_100002410;
    v181 = &unk_10008B8E0;
    v62 = _Block_copy(&aBlock);
    v63 = v59;
    v64 = v169;
    static DispatchQoS.unspecified.getter();
    v184 = _swiftEmptyArrayStorage;
    sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
    v65 = v15;
    sub_10000A45C(&unk_1000931F0, &unk_100072C10);
    sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
    v66 = v171;
    v67 = v172;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);
    (*v153)(v66, v67);
    (*v152)(v64, v170);

    v68 = sub_100004124();
    v69 = v164;
    (*v161)(v164, v68, v15);
    v70 = v175;
    v71 = v63;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    v74 = os_log_type_enabled(v72, v73);
    v175 = v70;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v75 = v148;
      *(v75 + 4) = v70;
      *v76 = v70;
      *(v75 + 12) = 2080;
      v78 = *((swift_isaMask & *v71) + 0x148);
      v79 = v70;
      v32 = v156;
      v78(v79);
      sub_100002374(&qword_1000937F0, &type metadata accessor for URL);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v34 = v151;
      (*v151)(v32, v173);
      v83 = sub_1000034B8(v80, v82, &aBlock);

      *(v75 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v72, v73, "Deleting record: %@ from %s", v75, 0x16u);
      sub_100006CAC(v76, &qword_100093F70, &qword_1000730D0);
      v33 = v173;

      sub_1000036EC(v77);

      (*v160)(v164, v174);
    }

    else
    {

      (*v160)(v69, v65);
      v32 = v156;
      v33 = v173;
      v34 = v151;
    }

    v35 = *sub_100041228();

    v36 = [v175 recordName];
    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = v157;
    (*((swift_isaMask & *v71) + 0x148))();
    v40 = sub_1000395BC();
    swift_beginAccess();
    v41 = v158;
    (*v150)(v158, v40, v33);
    URL.path.getter();
    v42 = *v34;
    (*v34)(v41, v33);
    URL.appendingPathComponent(_:)();

    v42(v39, v33);
    (*(*v35 + 144))(v166, v38, v32);

    result = (v42)(v32, v33);
    v15 = v174;
    v30 = v168;
    v31 = v167;
    goto LABEL_5;
  }

LABEL_18:
  v84 = v163;
  if (v163 >> 62)
  {
    v140 = v163;
    result = _CocoaArrayWrapper.endIndex.getter();
    v84 = v140;
    v85 = result;
  }

  else
  {
    v85 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v159;
  if (!v85)
  {
    return notify_post("com.apple.bluetoothuser.cloudChanged");
  }

  if (v85 >= 1)
  {
    v87 = 0;
    v175 = 0;
    v160 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
    v168 = v84 & 0xC000000000000001;
    v166 = (v143 + 16);
    v164 = (v143 + 8);
    v158 = &v180;
    v157 = (v142 + 8);
    v156 = (v141 + 8);
    v153 = (v144 + 8);
    *&v28 = 136315394;
    v152 = v28;
    *&v28 = 138412546;
    v154 = v28;
    v161 = v85;
    while (1)
    {
      v92 = v168 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v84 + 8 * v87 + 32);
      v93 = v92;
      v94 = [v92 recordID];
      v95 = [v94 zoneID];

      v96 = [v95 zoneName];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = sub_100039548();
      swift_beginAccess();
      if (*v100 == v97 && v100[1] == v99)
      {
        break;
      }

      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v102)
      {
        goto LABEL_37;
      }

      v103 = sub_100004124();
      (*v166)(v86, v103, v15);
      v104 = v93;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        aBlock = v109;
        *v107 = v152;
        v110 = [v104 recordID];
        v111 = [v110 zoneID];

        v112 = [v111 zoneName];
        v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;

        v116 = sub_1000034B8(v113, v115, &aBlock);
        v85 = v161;

        *(v107 + 4) = v116;
        *(v107 + 12) = 2112;
        *(v107 + 14) = v104;
        *v108 = v104;
        v117 = v104;
        _os_log_impl(&_mh_execute_header, v105, v106, "Ignoring updated record from %s zone: %@", v107, 0x16u);
        sub_100006CAC(v108, &qword_100093F70, &qword_1000730D0);
        v15 = v174;

        sub_1000036EC(v109);

        v86 = v159;
      }

      else
      {
      }

      (*v164)(v86, v15);
      v84 = v163;
LABEL_25:
      if (v85 == ++v87)
      {
        return notify_post("com.apple.bluetoothuser.cloudChanged");
      }
    }

LABEL_37:
    v118 = v176;
    v119 = *(v160 + v176);
    v120 = swift_allocObject();
    *(v120 + 16) = v118;
    v182 = sub_100052BE0;
    v183 = v120;
    aBlock = _NSConcreteStackBlock;
    v179 = 1107296256;
    v180 = sub_100002410;
    v181 = &unk_10008B890;
    v121 = _Block_copy(&aBlock);
    v167 = v118;
    v122 = v169;
    static DispatchQoS.unspecified.getter();
    v177 = _swiftEmptyArrayStorage;
    sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A45C(&unk_1000931F0, &unk_100072C10);
    sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
    v123 = v171;
    v124 = v172;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v121);
    (*v157)(v123, v124);
    (*v156)(v122, v170);

    v125 = v93;
    v126 = v162;
    v127 = v175;
    sub_10003B080(v125, v162);
    if (v127)
    {
      v135 = sub_100004124();
      v15 = v174;
      (*v166)(v165, v135, v174);
      v136 = v125;
      swift_errorRetain();
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();

      v139 = os_log_type_enabled(v137, v138);
      v85 = v161;
      v175 = 0;
      if (v139)
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v88 = v154;
        *(v88 + 4) = v136;
        *v89 = v136;
        *(v88 + 12) = 2112;
        v90 = v136;
        swift_errorRetain();
        v91 = _swift_stdlib_bridgeErrorToNSError();
        *(v88 + 14) = v91;
        v89[1] = v91;
        _os_log_impl(&_mh_execute_header, v137, v138, "Error saving cloud record to disk: %@ due to %@", v88, 0x16u);
        sub_10000A45C(&qword_100093F70, &qword_1000730D0);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*v164)(v165, v15);
      v84 = v163;
      v86 = v159;
    }

    else
    {
      v155 = v87;
      v128 = *sub_100041228();
      v129 = *((swift_isaMask & *v167) + 0x148);

      v131 = v146;
      v129(v130);
      v132 = *sub_100040F10();
      v133 = *(*v128 + 208);
      v134 = sub_100002374(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord);
      v133(v126, v131, v132, v147, v134);
      v175 = 0;

      (*v153)(v131, v173);
      sub_100007124(v162);
      v84 = v163;
      v15 = v174;
      v86 = v159;
      v85 = v161;
      v87 = v155;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_100052358(unint64_t a1)
{
  v48 = type metadata accessor for URL();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v48);
  v47 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v46);
  v45 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v43);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 >= 1)
  {
    v12 = 0;
    v40 = OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevicesQueue;
    v49 = a1 & 0xC000000000000001;
    v39 = v54;
    v38 = (v5 + 8);
    v37 = (v8 + 8);
    v36 = (v2 + 8);
    v41 = a1;
    v13 = v42;
    while (1)
    {
      v14 = v49 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a1 + 8 * v12 + 32);
      v15 = v14;
      v16 = [v14 zoneName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_100039548();
      swift_beginAccess();
      if (v17 == *v20 && v19 == v20[1])
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_17;
      }

LABEL_6:
      if (v11 == ++v12)
      {
        return;
      }
    }

LABEL_17:
    v23 = v44;
    v50 = *&v44[v40];
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v54[2] = sub_100052BA0;
    v54[3] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v54[0] = sub_100002410;
    v54[1] = &unk_10008B840;
    v25 = _Block_copy(aBlock);
    v26 = v23;
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_100002374(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
    v51 = v15;
    sub_10000A45C(&unk_1000931F0, &unk_100072C10);
    sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
    v27 = v11;
    v28 = v45;
    v29 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    v30 = v28;
    v11 = v27;
    (*v38)(v30, v29);
    (*v37)(v13, v43);

    v31 = *sub_100041228();
    v32 = *((swift_isaMask & *v26) + 0x148);

    v34 = v47;
    v32(v33);
    (*(*v31 + 216))(v34);
    a1 = v41;

    (*v36)(v34, v48);
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_100052914()
{
  result = qword_100093F88;
  if (!qword_100093F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093F88);
  }

  return result;
}

void sub_100052970()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100052A74();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100052A74()
{
  if (!qword_100093FB8)
  {
    sub_10000C9B0(&qword_100093F40, &qword_1000730E0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100093FB8);
    }
  }
}

uint64_t sub_100052AE8(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = (v2 + *(type metadata accessor for CloudPairedDeviceRecord() + 24));
    if (v5 == *v8 && v7 == v8[1])
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100052BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevices);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd19CloudPairingManager_cachedCloudPairedDevices) = 0;
}

void sub_100052BF4()
{
  v0 = objc_allocWithZone(NSUbiquitousKeyValueStore);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithStoreIdentifier:v1 type:2];

  static NSUbiquitousKeyValueStore.bluetoothCloudDefaults = v2;
}

uint64_t *NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor()
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  return &static NSUbiquitousKeyValueStore.bluetoothCloudDefaults;
}

id static NSUbiquitousKeyValueStore.bluetoothCloudDefaults.getter()
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSUbiquitousKeyValueStore.bluetoothCloudDefaults;

  return v0;
}

void static NSUbiquitousKeyValueStore.bluetoothCloudDefaults.setter(uint64_t a1)
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSUbiquitousKeyValueStore.bluetoothCloudDefaults;
  static NSUbiquitousKeyValueStore.bluetoothCloudDefaults = a1;
}

uint64_t (*static NSUbiquitousKeyValueStore.bluetoothCloudDefaults.modify())()
{
  if (qword_100097D90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Subscription.init(subscriber:unsubscribeBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Subscription();
  v11 = a5 + *(v10 + 28);
  UUID.init()();
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  v13 = (a5 + *(v10 + 32));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t Subscription.unsubscribe(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v32);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A8F8();
  (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29, a3);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = *(a3 + 16);
  (*(v12 + 32))(v20 + v19, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v21 = (v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v31;
  *v21 = v30;
  v21[1] = v22;
  aBlock[4] = sub_100053350;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B980;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v28;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v35 + 8))(v6, v24);
  (*(v33 + 8))(v11, v34);
}

uint64_t sub_100053350()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Subscription();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = v0 + v5;
  v9 = *v7;
  v8 = *(v7 + 8);
  v10 = v6 + *(v2 + 32);
  v11 = *(v10 + 8);
  (*v10)(v6);
  return v9(0);
}

uint64_t static Subscription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Subscription() + 28);

  return static UUID.== infix(_:_:)(a1 + v4, a2 + v4);
}

unint64_t sub_1000534C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      result = sub_100053A54();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100053560(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_1000537B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v8 + 64) + v13;
  v16 = *(*(v10 - 8) + 64) + 7;
  v17 = ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = a3 - v14 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v14)
  {
    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v14;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v14 + a2;
      bzero(a1, ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v17) = 0;
  }

  else if (v21)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 == v14)
  {
    v24 = *(v28 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v25 = (a1 + v15) & ~v13;
    if (v12 == v14)
    {
      v26 = *(v11 + 56);

      v26(v25, a2);
    }

    else
    {
      v27 = ((v16 + v25) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = (a2 - 1);
      }
    }
  }
}

unint64_t sub_100053A54()
{
  result = qword_100094020;
  if (!qword_100094020)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100094020);
  }

  return result;
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DarwinNotificationHelper.init(notificationHandlers:)(a1);
  return v2;
}

uint64_t DarwinNotificationHelper.init(notificationHandlers:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v51 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v51)
  {
    v1[2] = a1;

    v11 = *(**DarwinNotificationManager.shared.unsafeMutableAddressor() + 120);

    v11(v1);

    v12 = sub_100039094();
    v13 = v5[2];
    v48 = v5 + 2;
    v49 = v12;
    v47 = v13;
    (v13)(v10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Setup darwin callback handlers", v16, 2u);
    }

    v17 = v5[1];
    v50 = v5 + 1;
    v46 = v17;
    v17(v10, v4);
    v19 = 0;
    v20 = a1 + 64;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 64);
    v24 = (v21 + 63) >> 6;
    *&v18 = 136315138;
    v41 = v18;
    v25 = v52;
    v42 = v4;
    v43 = a1;
    while (v23)
    {
LABEL_13:
      v28 = __clz(__rbit64(v23)) | (v19 << 6);
      v29 = *(*(a1 + 48) + 8 * v28);
      v30 = *(*(a1 + 56) + 16 * v28 + 8);
      v47(v25, v49, v4);
      v31 = v29;
      v32 = v30;
      v53 = v31;

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v54 = v44;
        *v35 = v41;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v32;
        v38 = v2;
        v39 = sub_1000034B8(v36, v37, &v54);

        *(v35 + 4) = v39;
        v2 = v38;
        a1 = v43;
        _os_log_impl(&_mh_execute_header, v33, v34, "Setting up darwin callback handler for %s", v35, 0xCu);
        sub_1000036EC(v44);

        v4 = v42;
      }

      v25 = v52;
      v46(v52, v4);
      v23 &= v23 - 1;
      v26 = v53;
      CFNotificationCenterAddObserver(v51, v2, sub_100053F80, v53, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        return v2;
      }

      v23 = *(v20 + 8 * v27);
      ++v19;
      if (v23)
      {
        v19 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100053F80(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_10005515C(a2, a3);
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(void *a1)
{
  v1 = 0;
  v4 = a1[8];
  v2 = a1 + 8;
  v3 = v4;
  v5 = 1 << *(v2 - 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v36 = v8;
  v37 = v2;
  while (v7)
  {
    v11 = v1;
LABEL_11:
    v12 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
    v13 = a1[7];
    v14 = (a1[6] + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = swift_allocObject();
    *(v17 + 16) = *(v13 + v12);
    swift_bridgeObjectRetain_n();

    v18 = String._bridgeToObjectiveC()();

    v19 = swift_allocObject();
    *(v19 + 16) = sub_100054A3C;
    *(v19 + 24) = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_100054A64(v18);
    v23 = _swiftEmptyDictionarySingleton[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      type metadata accessor for CFString();
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v27 = v22;
    if (_swiftEmptyDictionarySingleton[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v21;
        sub_100054EC4();
        v21 = v32;
      }
    }

    else
    {
      sub_100054B04(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_100054A64(v18);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 &= v7 - 1;
    if (v27)
    {
      v9 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
      v10 = v9[1];
      *v9 = sub_100018FE4;
      v9[1] = v19;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v21) = v18;
      v29 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
      *v29 = sub_100018FE4;
      v29[1] = v19;

      v30 = _swiftEmptyDictionarySingleton[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      _swiftEmptyDictionarySingleton[2] = v31;
    }

    v1 = v11;
    v8 = v36;
    v2 = v37;
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = v2[v11];
    ++v1;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v33 = *(v35 + 112);

  return v33(_swiftEmptyDictionarySingleton);
}

void DarwinNotificationHelper.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(**DarwinNotificationManager.shared.unsafeMutableAddressor() + 128);

  v6(v0);

  v39 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v39)
  {
    v7 = v0[2];
    v8 = v7 + 64;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    v35 = (v3 + 8);
    v36 = (v3 + 16);
    v38 = v7;

    v13 = 0;
    *&v14 = 136315138;
    v31 = v14;
    v15 = v34;
    v37 = v12;
    v32 = v2;
    v33 = v1;
    while (v11)
    {
LABEL_11:
      v18 = __clz(__rbit64(v11)) | (v13 << 6);
      v19 = *(*(v38 + 56) + 16 * v18 + 8);
      v20 = *(*(v38 + 48) + 8 * v18);
      v40 = v19;

      v21 = sub_100039094();
      (*v36)(v15, v21, v2);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v41 = v22;

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42 = v26;
        *v25 = v31;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = sub_1000034B8(v27, v28, &v42);
        v15 = v34;

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Remove darwin callback handler for %s", v25, 0xCu);
        sub_1000036EC(v26);
        v1 = v33;

        v2 = v32;
      }

      (*v35)(v15, v2);
      v11 &= v11 - 1;
      v16 = v41;
      CFNotificationCenterRemoveObserver(v39, v1, v41, 0);

      v12 = v37;
    }

    while (1)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v17 >= v12)
      {

        goto LABEL_14;
      }

      v11 = *(v8 + 8 * v17);
      ++v13;
      if (v11)
      {
        v13 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v30 = v1[2];
  }
}

uint64_t DarwinNotificationHelper.__deallocating_deinit()
{
  DarwinNotificationHelper.deinit();

  return _swift_deallocClassInstance(v0, 24, 7);
}

Swift::Void __swiftcall DarwinNotificationHelper.onNotification(notificationName:)(CFStringRef notificationName)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_100054A64(notificationName);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v13 = *v11;
      v12 = *(v11 + 8);

      v14 = sub_100039094();
      (*(v4 + 16))(v7, v14, v3);
      v15 = notificationName;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v25 = v13;
        v19 = v18;
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = sub_1000034B8(v21, v22, &v26);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v16, v17, "Invoking callback, notification, %s", v19, 0xCu);
        sub_1000036EC(v20);

        v13 = v25;
      }

      v24 = (*(v4 + 8))(v7, v3);
      v13(v24);
    }

    else
    {
    }
  }
}

uint64_t sub_1000548C4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100054910()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100054968()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000549D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100054A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100054A64(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString();
  sub_100055118(&qword_100094108);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100054DCC(a1, v4);
}

uint64_t sub_100054B04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000A45C(&qword_100094100, &unk_100074978);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v33 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for CFString();
      sub_100055118(&qword_100094108);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_100054DCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_100055118(&qword_100094108);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100054EC4()
{
  v1 = v0;
  sub_10000A45C(&qword_100094100, &unk_100074978);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

void type metadata accessor for CFString()
{
  if (!qword_1000940E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000940E8);
    }
  }
}

uint64_t sub_100055118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005515C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  if (a1)
  {
    if (a2)
    {
      v15 = a2;
      v16 = sub_100039094();
      (*(v5 + 16))(v9, v16, v4);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v36 = v4;
        v21 = v20;
        v22 = swift_slowAlloc();
        v37 = v22;
        *v21 = 136315138;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = sub_1000034B8(v23, v24, &v37);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Got darwin notification, %s", v21, 0xCu);
        sub_1000036EC(v22);

        (*(v5 + 8))(v9, v36);
      }

      else
      {

        (*(v5 + 8))(v9, v4);
      }

      v34 = *(*a1 + 120);
      v35 = v17;

      v34(v35);
    }

    else
    {
      v30 = sub_100039094();
      (*(v5 + 16))(v12, v30, v4);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "cfNotificationName for darwin callback handler not found", v33, 2u);
      }

      (*(v5 + 8))(v12, v4);
    }
  }

  else
  {
    v26 = sub_100039094();
    (*(v5 + 16))(v14, v26, v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Observer for darwin callback handler not found", v29, 2u);
    }

    (*(v5 + 8))(v14, v4);
  }
}

Swift::Int DeviceLockState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

double sub_1000555B0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v11 = String._bridgeToObjectiveC()();
  v12 = MGCopyAnswerWithError();

  if (v12)
  {
    if (v24)
    {
      v13 = sub_100039094();
      (*(v7 + 16))(v10, v13, v6);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v25 = v22;
        *v16 = 136315394;
        *(v16 + 4) = sub_1000034B8(a1, a2, &v25);
        *(v16 + 12) = 2080;
        swift_beginAccess();
        v23 = v24;
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = sub_1000034B8(v17, v18, &v25);

        *(v16 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "MGCopyAnswerWithError error for key: %s -> %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      (*(v7 + 8))(v10, v6);
    }

    *(a3 + 24) = swift_getObjectType();
    *a3 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t SystemInfo.deviceName.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007AFC0, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t sub_100055974(uint64_t a1, unint64_t a2)
{
  sub_1000555B0(a1, a2, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_10000CA00(v4);
  }

  return 0;
}

uint64_t sub_100055A24(uint64_t a1, unint64_t a2)
{
  sub_1000555B0(a1, a2, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CA00(v4);
    return 0;
  }
}

uint64_t SystemInfo.underTest.getter()
{
  if (IsAppleInternalBuild())
  {
    v0 = [objc_opt_self() processInfo];
    v1 = [v0 environment];

    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v2 + 16))
    {
      sub_1000327AC(0xD00000000000001BLL, 0x800000010007AA40);
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t SystemInfo.lockState.getter()
{
  v0 = MKBGetDeviceLockState();
  if (v0 > 1)
  {
    if (v0 == 3)
    {
      return 5;
    }

    if (v0 == 2)
    {
      return 4;
    }

    return 0;
  }

  if (!v0)
  {
    return 3;
  }

  if (v0 != 1)
  {
    return 0;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t SystemInfo.regionCode.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007AFE0, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t SystemInfo.hardwareModel.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007B000, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t SystemInfo.architecture.getter()
{
  sub_1000555B0(0xD000000000000016, 0x800000010007B020, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_10000CA00(v2);
  }

  return 0;
}

uint64_t sub_100055DE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1000555B0(a3, a4, v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10000CA00(v6);
  }

  return 0;
}

unint64_t sub_100055E5C()
{
  result = qword_100094110;
  if (!qword_100094110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceLockState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceLockState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100056010()
{
  sub_10000A45C(&qword_100094118, &qword_100074A48);
  inited = swift_initStackObject();
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 16) = xmmword_100072BE0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 492;
  v1 = NSFilePosixPermissions;
  v2 = sub_1000567D0(inited);
  swift_setDeallocating();
  result = sub_100006CAC(inited + 32, &unk_100094120, &qword_100074A50);
  qword_100098B40 = v2;
  return result;
}

uint64_t sub_1000560C8()
{
  if (qword_100098120 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100056140(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = [objc_opt_self() defaultManager];
  v47 = 0;
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15 isDirectory:&v47];

  if (v16)
  {
    if ((v47 & 1) == 0)
    {
      v18 = sub_100004124();
      v19 = v45;
      (*(v45 + 16))(v13, v18, v46);
      (*(v3 + 16))(v6, a1, v2);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v43 = v22;
        v44 = swift_slowAlloc();
        v48 = v44;
        *v22 = 136315138;
        sub_100056788(&qword_1000937F0, &type metadata accessor for URL);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        (*(v3 + 8))(v6, v2);
        v26 = sub_1000034B8(v23, v25, &v48);

        v27 = v43;
        *(v43 + 1) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Expected a directory, but is a file: %s", v27, 0xCu);
        sub_1000036EC(v44);

        (*(v45 + 8))(v13, v46);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
        (*(v19 + 8))(v13, v46);
      }

      return v16 ^ 1;
    }

LABEL_7:

    return v16 ^ 1;
  }

  URL._bridgeToObjectiveC()(v17);
  v29 = v28;
  type metadata accessor for FileAttributeKey(0);
  sub_100056788(&qword_100093CA0, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v48 = 0;
  v31 = [v14 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:isa error:&v48];

  if (v31)
  {
    v32 = v48;
    goto LABEL_7;
  }

  v33 = v48;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v34 = sub_100004124();
  v36 = v45;
  v35 = v46;
  (*(v45 + 16))(v11, v34, v46);
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "createDirectory error: %@", v39, 0xCu);
    sub_100006CAC(v40, &qword_100093F70, &qword_1000730D0);
    v36 = v45;
  }

  else
  {
  }

  (*(v36 + 8))(v11, v35);
  return v16 ^ 1;
}

uint64_t sub_10005670C()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  return v1;
}

uint64_t sub_100056788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000567D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A45C(&qword_100093CC0, &qword_100074298);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000568D8(v4, &v11);
      v5 = v11;
      result = sub_100049248(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000C848(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000568D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&unk_100094120, &qword_100074A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100056948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener] = a1;
  *&v7[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_dispatchQueue] = a2;
  *&v7[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_xpcConnection] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100056AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100056B40;

  return sub_10005FB48();
}

uint64_t sub_100056B40(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100056DC8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100056EC4;

  return sub_10005FB48();
}

uint64_t sub_100056EC4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
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
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_100057084()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(type metadata accessor for CloudPairedDeviceRecord() - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000048D8, 0, 0);
}

uint64_t sub_10005733C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000573E4;

  return sub_100057084();
}

uint64_t sub_1000573E4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100004890(0, &unk_100094150, CBDevice_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100057580(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudPairedDeviceRecord();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100057658, 0, 0);
}

uint64_t sub_100057658()
{
  v1 = (*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    sub_10005FD70();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [*(v0 + 16) idsDeviceID];
  if (!v3)
  {
    sub_10005FD70();
    swift_allocError();
    v21 = 3;
LABEL_17:
    *v20 = v21;
    swift_willThrow();
    goto LABEL_18;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v2 + 440))();
  if (!v8)
  {

    sub_10005FD70();
    swift_allocError();
    v21 = 1;
    goto LABEL_17;
  }

  v30 = v8;
  result = (*((swift_isaMask & *v8) + 0x128))();
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {
LABEL_13:

    sub_10005FD70();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();

LABEL_18:

LABEL_19:
    v23 = *(v0 + 56);
    v22 = *(v0 + 64);
    v24 = *(v0 + 48);

    v25 = *(v0 + 8);
LABEL_20:

    return v25();
  }

  v12 = 0;
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  while (v12 < *(v10 + 16))
  {
    v15 = *(v0 + 48);
    sub_100004EFC(v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v15);
    v16 = (v15 + *(v13 + 24));
    v17 = *v16 == v5 && v16[1] == v7;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v27 = *(v0 + 56);
      v26 = *(v0 + 64);
      v28 = *(v0 + 48);

      sub_100007180(v28, v27);
      sub_100007180(v27, v26);
      v29 = sub_100041100();
      (*((swift_isaMask & *v30) + 0x1B8))(v26, v29 & 1);

      sub_100007124(v26);

      v25 = *(v0 + 8);
      goto LABEL_20;
    }

    ++v12;
    result = sub_100007124(*(v0 + 48));
    if (v11 == v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100057BA4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100057C68;

  return sub_100057580(v6);
}

uint64_t sub_100057C68()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100057E04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudPairedDeviceRecord();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100057ED0, 0, 0);
}

uint64_t sub_100057ED0()
{
  v1 = (*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    sub_10005FD70();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
LABEL_41:
    v39 = *(v0 + 48);
    v38 = *(v0 + 56);

    v40 = *(v0 + 8);
    goto LABEL_42;
  }

  v2 = (*(*v1 + 440))();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = *((swift_isaMask & *v2) + 0xF0);
  v5 = v4();
  if (!v6)
  {

LABEL_13:
    sub_10005FD70();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
LABEL_40:

    goto LABEL_41;
  }

  v7 = v6;
  v49 = v5;
  if (![*(v0 + 16) fastLEConnectionInfoVersion] || (v8 = objc_msgSend(*(v0 + 16), "fastLEConnectionInfoData")) == 0)
  {

LABEL_39:
    sub_10005FD70();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    goto LABEL_40;
  }

  v9 = v8;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_38;
    }
  }

  else if (v13)
  {
    if (v10 == v10 >> 32)
    {
LABEL_38:

      sub_1000066CC(v10, v12);
      goto LABEL_39;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_38;
  }

  v47 = v7;
  v16 = (*((swift_isaMask & *v3) + 0x128))();
  v17 = *(v16 + 16);
  if (v17)
  {
    v45 = v10;
    v46 = v12;
    v18 = *(v0 + 40);
    v19 = (*(v0 + 56) + *(*(v0 + 32) + 24));
    v20 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v51 = *(v18 + 72);
    v50 = _swiftEmptyArrayStorage;
    v48 = v4;
    while (1)
    {
      sub_100004EFC(v20, *(v0 + 56));
      v22 = *v19;
      v21 = v19[1];

      v24 = (v4)(v23);
      if (!v25)
      {
        break;
      }

      if (v22 == v24 && v25 == v21)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      sub_100007124(*(v0 + 56));
LABEL_20:
      v20 += v51;
      if (!--v17)
      {

        v10 = v45;
        v12 = v46;
        v36 = v50;
        goto LABEL_46;
      }
    }

LABEL_29:
    v28 = *(v0 + 56);
    v29 = sub_1000073A4();
    v31 = v30;
    sub_100007124(v28);
    if (v31 >> 60 != 15)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v32 = v50;
      }

      else
      {
        v32 = sub_10005F1B8(0, *(v50 + 2) + 1, 1, v50);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_10005F1B8((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v50 = v32;
      v35 = &v32[16 * v34];
      *(v35 + 4) = v29;
      *(v35 + 5) = v31;
      v4 = v48;
    }

    goto LABEL_20;
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_46:
  v42 = *(v0 + 48);
  sub_10003A270(v49, v47, *(v0 + 16), v36, v42);
  (*((swift_isaMask & *v3) + 0x1B0))(v42);
  sub_100007124(v42);

  sub_1000066CC(v10, v12);

  v44 = *(v0 + 48);
  v43 = *(v0 + 56);

  v40 = *(v0 + 8);
LABEL_42:

  return v40();
}

uint64_t sub_100058594(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000615D4;

  return sub_100057E04(v6);
}

uint64_t sub_100058658(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(sub_10000A45C(&qword_100093F68, &unk_100074690) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_10000A45C(&qword_100094160, &qword_100074A98);
  v2[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(*(sub_10000A45C(&unk_1000938B0, &qword_100074AA0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v10 = type metadata accessor for CloudPairedDeviceRecord();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100058868, 0, 0);
}

void sub_100058868()
{
  v1 = (*((swift_isaMask & **(*(v0 + 40) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (v1)
  {
    v2 = (*(*v1 + 440))(v1);
    if (v2)
    {
      v127 = v2;
      v3 = (*((swift_isaMask & *v2) + 0x128))();
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = *(v0 + 144);
        v129 = *(v0 + 136);
        while (v5 < *(v3 + 16))
        {
          v7 = *(v0 + 152);
          v8 = *(v0 + 32);
          sub_100004EFC(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7);
          v9 = (v7 + *(v129 + 24));
          v10 = *v9;
          v11 = v9[1];
          v12 = [v8 idsDeviceID];
          if (v12)
          {
            v13 = v12;
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            if (v10 == v14 && v11 == v16)
            {
LABEL_27:

LABEL_28:

              v41 = *(v0 + 160);
              v40 = *(v0 + 168);
              v42 = *(v0 + 136);
              sub_100007180(*(v0 + 152), v41);
              sub_100007180(v41, v40);
              v43 = sub_100006DAC(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord);
              v44 = sub_100006DF4(v42, v43);
              v45 = [objc_allocWithZone(CBControllerInfo) init];
              [v45 setCloudSyncStatus:1];
              v46 = [v44 recordChangeTag];
              v130 = v44;
              if (v46)
              {
                v47 = *(v0 + 168);
                v48 = *(v0 + 128);
                v49 = *(v0 + 136);
                v51 = *(v0 + 72);
                v50 = *(v0 + 80);

                (*(v50 + 16))(v48, v47 + *(v49 + 20), v51);
                v52 = *(v50 + 56);
                v52(v48, 0, 1, v51);
                v53 = [v44 modificationDate];
                if (v53)
                {
                  v54 = v45;
                  v56 = *(v0 + 112);
                  v55 = *(v0 + 120);
                  v57 = *(v0 + 80);
                  v58 = *(v0 + 88);
                  v59 = *(v0 + 72);
                  v60 = v53;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v61 = *(v57 + 32);
                  v61(v56, v58, v59);
                  v52(v56, 0, 1, v59);
                  v61(v55, v56, v59);
                  v52(v55, 0, 1, v59);
                }

                else
                {
                  v62 = 1;
                  v52(*(v0 + 112), 1, 1, *(v0 + 72));
                  v63 = [v44 creationDate];
                  v54 = v45;
                  if (v63)
                  {
                    v64 = *(v0 + 104);
                    v65 = v63;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v62 = 0;
                  }

                  v67 = *(v0 + 112);
                  v66 = *(v0 + 120);
                  v68 = *(v0 + 104);
                  v70 = *(v0 + 72);
                  v69 = *(v0 + 80);
                  v52(v68, v62, 1, v70);
                  sub_10003C78C(v68, v66);
                  if ((*(v69 + 48))(v67, 1, v70) != 1)
                  {
                    sub_100006CAC(*(v0 + 112), &unk_1000938B0, &qword_100074AA0);
                  }
                }

                v71 = *(v0 + 120);
                v73 = *(v0 + 72);
                v72 = *(v0 + 80);
                v74 = *(v0 + 64);
                v75 = *(*(v0 + 56) + 48);
                sub_100006C44(*(v0 + 128), v74, &unk_1000938B0, &qword_100074AA0);
                sub_100006C44(v71, v74 + v75, &unk_1000938B0, &qword_100074AA0);
                v76 = *(v72 + 48);
                v77 = v76(v74, 1, v73);
                v78 = *(v0 + 72);
                if (v77 == 1)
                {
                  v79 = *(v0 + 128);
                  sub_100006CAC(*(v0 + 120), &unk_1000938B0, &qword_100074AA0);
                  sub_100006CAC(v79, &unk_1000938B0, &qword_100074AA0);
                  if (v76(v74 + v75, 1, v78) == 1)
                  {
                    sub_100006CAC(*(v0 + 64), &unk_1000938B0, &qword_100074AA0);
                    v80 = 3;
                    v45 = v54;
                    v81 = &off_100091000;
                    goto LABEL_42;
                  }

LABEL_40:
                  sub_100006CAC(*(v0 + 64), &qword_100094160, &qword_100074A98);
                  v45 = v54;
                  v81 = &off_100091000;
                  goto LABEL_41;
                }

                sub_100006C44(*(v0 + 64), *(v0 + 96), &unk_1000938B0, &qword_100074AA0);
                v82 = v76(v74 + v75, 1, v78);
                v84 = *(v0 + 120);
                v83 = *(v0 + 128);
                v85 = *(v0 + 96);
                if (v82 == 1)
                {
                  v87 = *(v0 + 72);
                  v86 = *(v0 + 80);
                  sub_100006CAC(*(v0 + 120), &unk_1000938B0, &qword_100074AA0);
                  sub_100006CAC(v83, &unk_1000938B0, &qword_100074AA0);
                  (*(v86 + 8))(v85, v87);
                  goto LABEL_40;
                }

                v119 = *(v0 + 80);
                v120 = *(v0 + 88);
                v121 = *(v0 + 72);
                v125 = *(v0 + 64);
                (*(v119 + 32))(v120, v74 + v75, v121);
                sub_100006DAC(&qword_100094168, &type metadata accessor for Date);
                v123 = dispatch thunk of static Equatable.== infix(_:_:)();
                v122 = *(v119 + 8);
                v122(v120, v121);
                sub_100006CAC(v84, &unk_1000938B0, &qword_100074AA0);
                sub_100006CAC(v83, &unk_1000938B0, &qword_100074AA0);
                v122(v85, v121);
                sub_100006CAC(v125, &unk_1000938B0, &qword_100074AA0);
                v45 = v54;
                v81 = &off_100091000;
                if (v123)
                {
                  v80 = 3;
                }

                else
                {
LABEL_41:
                  v80 = 2;
                }

LABEL_42:
                v46 = [v45 v81[444]];
              }

              v89 = *(v0 + 136);
              v88 = *(v0 + 144);
              v90 = *(v0 + 48);
              (*((swift_isaMask & *v127) + 0x108))(v46);
              v91 = (*(v88 + 48))(v90, 1, v89);
              v92 = *(v0 + 48);
              if (v91 == 1)
              {
                sub_100006CAC(*(v0 + 48), &qword_100093F68, &unk_100074690);
              }

              else
              {
                v93 = *(v0 + 48);
                v94 = sub_1000073A4();
                v96 = v95;
                sub_100007124(v92);
                if (v96 >> 60 != 15)
                {
                  v97 = *(*(v0 + 168) + *(*(v0 + 136) + 36));
                  *(v0 + 16) = v94;
                  *(v0 + 24) = v96;
                  v98 = swift_task_alloc();
                  *(v98 + 16) = v0 + 16;
                  LOBYTE(v97) = sub_1000079A0(sub_100007A8C, v98, v97);

                  [v45 setFastLEConnectionAllowed:v97 & 1];
                  sub_100006BB4(v94, v96);
                }
              }

              v99 = *(v0 + 168);
              v100 = *(v0 + 136);
              v101 = (v99 + *(v100 + 32));
              v102 = *v101;
              v103 = v101[1];
              isa = Data._bridgeToObjectiveC()().super.isa;
              [v45 setFastLEConnectionInfoData:isa];

              v105 = *(v99 + *(v100 + 28));
              if ((v105 & 0x8000000000000000) == 0)
              {
                if (v105 <= 0xFF)
                {
                  v106 = *(v0 + 168);
                  v107 = *(v0 + 136);
                  [v45 setFastLEConnectionInfoVersion:v105];
                  v108 = *(v106 + *(v107 + 48));
                  if ((v108 & 0x8000000000000000) == 0)
                  {
                    if (!HIDWORD(v108))
                    {
                      v109 = v45;
                      v111 = *(v0 + 160);
                      v110 = *(v0 + 168);
                      v112 = *(v0 + 152);
                      v113 = *(v0 + 120);
                      v114 = *(v0 + 128);
                      v116 = *(v0 + 104);
                      v115 = *(v0 + 112);
                      v117 = *(v0 + 88);
                      v124 = *(v0 + 64);
                      v126 = *(v0 + 48);
                      [v109 setSupportedServices:?];

                      sub_100007124(v110);

                      v118 = *(v0 + 8);

                      v118(v109);
                      return;
                    }

LABEL_60:
                    __break(1u);
                    return;
                  }

LABEL_59:
                  __break(1u);
                  goto LABEL_60;
                }

LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v18)
            {
              goto LABEL_28;
            }
          }

          v19 = [*(v0 + 32) identifier];
          if (v19)
          {
            v20 = v19;
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v23 = v22;

            if (v10 == v21 && v11 == v23)
            {
              goto LABEL_27;
            }

            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v25)
            {
              goto LABEL_28;
            }
          }

          ++v5;
          sub_100007124(*(v0 + 152));
          if (v4 == v5)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_22:

      sub_10005FD70();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();
    }

    else
    {
      sub_10005FD70();
      swift_allocError();
      *v27 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10005FD70();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }

  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  v33 = *(v0 + 120);
  v32 = *(v0 + 128);
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);
  v37 = *(v0 + 88);
  v36 = *(v0 + 96);
  v38 = *(v0 + 64);
  v128 = *(v0 + 48);

  v39 = *(v0 + 8);

  v39();
}

uint64_t sub_100059558(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10005961C;

  return sub_100058658(v6);
}

uint64_t sub_10005961C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000597D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100059894, 0, 0);
}

uint64_t sub_100059894()
{
  v1 = (*((swift_isaMask & **(v0[2] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = (*(*v1 + 480))();
  if (!v2)
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = (*(*v2 + 112))() & 1;
  v7 = sub_1000393CC();
  (*(v4 + 16))(v3, v7, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "Distributed logging status: %u", v10, 8u);
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
LABEL_8:
  v14 = v0[5];

  v15 = v0[1];

  return v15(v6);
}

uint64_t sub_100059C1C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100059CC4;

  return sub_1000597D4();
}

uint64_t sub_100059CC4(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100059E54(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100059F18, 0, 0);
}

uint64_t sub_100059F18()
{
  v1 = (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = (*(*v1 + 480))();
  if (!v2)
  {

LABEL_7:
    v15 = *(v0 + 40);
    sub_10005FDC4();
    swift_allocError();
    swift_willThrow();

    v14 = *(v0 + 8);
    goto LABEL_8;
  }

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  (*(*v2 + 120))(*(v0 + 48) & 1);
  v6 = sub_1000393CC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Distributed logging status changed: %u", v10, 8u);
  }

  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 24);

  (*(v12 + 8))(v11, v13);

  v14 = *(v0 + 8);
LABEL_8:

  return v14();
}

uint64_t sub_10005A2F0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10005A3AC;

  return sub_100059E54(a1);
}

uint64_t sub_10005A3AC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10005A530()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10005A5F0, 0, 0);
}

uint64_t sub_10005A5F0()
{
  v1 = (*((swift_isaMask & **(v0[2] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = (*(*v1 + 480))();
  if (!v2)
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = (*(*v2 + 112))();
  v7 = sub_1000393CC();
  (*(v4 + 16))(v3, v7, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Apple audio accessory limited logging enabled: %{BOOL}d", v10, 8u);
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
LABEL_8:
  v14 = v0[5];

  v15 = v0[1];

  return v15(v6 & 1);
}

uint64_t sub_10005A97C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10005AA24;

  return sub_10005A530();
}

uint64_t sub_10005AA24(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10005ABB4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10005AC78, 0, 0);
}

uint64_t sub_10005AC78()
{
  v26 = v0;
  v1 = (*((swift_isaMask & **(*(v0 + 16) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (v1)
  {
    v2 = (*(*v1 + 480))();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 32);
      v4 = *(v0 + 40);
      v6 = *(v0 + 24);
      v7 = sub_1000393CC();
      (*(v5 + 16))(v4, v7, v6);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v12 = *(v0 + 32);
      v11 = *(v0 + 40);
      v13 = *(v0 + 24);
      if (v10)
      {
        v24 = *(v0 + 40);
        v14 = *(v0 + 48);
        v23 = *(v0 + 24);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v25 = v16;
        *v15 = 136315138;
        if (v14)
        {
          v17 = 7562585;
        }

        else
        {
          v17 = 28494;
        }

        if (v14)
        {
          v18 = 0xE300000000000000;
        }

        else
        {
          v18 = 0xE200000000000000;
        }

        v19 = sub_1000034B8(v17, v18, &v25);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v8, v9, "Enable Apple audio accessory limited logging: %s", v15, 0xCu);
        sub_1000036EC(v16);

        (*(v12 + 8))(v24, v23);
      }

      else
      {

        (*(v12 + 8))(v11, v13);
      }

      (*(*v3 + 120))(*(v0 + 48));
    }
  }

  v20 = *(v0 + 40);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10005B088(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1000615E4;

  return sub_10005ABB4(a1);
}

uint64_t sub_10005B2FC(uint64_t a1, int a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10005B320, 0, 0);
}

uint64_t sub_10005B320()
{
  sub_10005B4A4(*(v0 + 16), 2 * (*(v0 + 24) != 8));
  v1 = sub_10005B944(_swiftEmptyDictionarySingleton);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10005B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v6;
    v12 = *(a1 + 32);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_10005F804(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_100006CAC(a1, &qword_1000943E0, &qword_100074FC0);
    sub_10005F2C4(a2, a3, v11);

    return sub_100006CAC(v11, &qword_1000943E0, &qword_100074FC0);
  }

  return result;
}

uint64_t sub_10005B4A4(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = sub_10000A45C(&qword_100094180, &qword_100074290);
      sub_100015AAC(v5, v6, a2, v7, &v16);
      if (v16)
      {
        sub_100061558(&qword_1000943D8, &qword_100094180, &qword_100074290);

        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
        goto LABEL_16;
      }

      v8 = sub_10000A45C(&qword_100094390, &qword_100074FA8);
      sub_100015AAC(v5, v6, a2, v8, &v16);
      if (v16)
      {
        sub_1000614F0(&qword_1000943D0, &qword_100094390, &qword_100074FA8);

        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
        goto LABEL_16;
      }

      sub_100015AAC(v5, v6, a2, &type metadata for Bool, &v16);
      if (v16 != 2)
      {
        goto LABEL_15;
      }

      sub_100015AAC(v5, v6, a2, &type metadata for Data, &v16);
      v9 = v17;
      if (v17 >> 60 != 15)
      {
        v11 = v16;

        sub_10000FB4C(v11, v9);
        sub_10006149C();
        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
        sub_100006BB4(v11, v9);
        goto LABEL_16;
      }

      v10 = sub_10000A45C(&qword_100094398, &qword_100074FB0);
      sub_100015AAC(v5, v6, a2, v10, &v16);
      if (v16)
      {
        break;
      }

      v12 = sub_10000A45C(&qword_1000943A0, &qword_100074FB8);
      sub_100015AAC(v5, v6, a2, v12, &v16);
      if (v16)
      {
        sub_1000614F0(&qword_1000943B8, &qword_1000943A0, &qword_100074FB8);
        goto LABEL_15;
      }

      v13 = sub_100004890(0, &qword_1000943A8, NSNumber_ptr);
      sub_100015AAC(v5, v6, a2, v13, &v16);
      v14 = v16;
      if (v16)
      {
        sub_100061434();

        v15 = v14;
        AnyHashable.init<A>(_:)();
        sub_10005B3CC(&v16, v5, v6);
      }

      else
      {
        sub_100015AAC(v5, v6, a2, &type metadata for String, &v16);
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:

      if (!v18)
      {
        v4 += 2;
        if (--v2)
        {
          continue;
        }
      }

      return result;
    }

    sub_100061558(&qword_1000943C0, &qword_100094398, &qword_100074FB0);
LABEL_15:

    AnyHashable.init<A>(_:)();
    sub_10005B3CC(&v16, v5, v6);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10005B944(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A45C(&qword_100093B00, &qword_100074FA0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000CB30(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_10000C848(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_10000C848(v35, v24);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
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
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_10000C848(v24, (v2[7] + 32 * v10));
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

uint64_t sub_10005BDC0(int a1, int a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 40) = a2;
  *(v4 + 24) = _Block_copy(aBlock);
  *(v4 + 32) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;

  return _swift_task_switch(sub_10005BE58, 0, 0);
}

uint64_t sub_10005BE58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10005B4A4(*(v0 + 32), 2 * (*(v0 + 40) != 8));
  sub_10005B944(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa, 0);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10005C038;

  return (sub_100060388)(a1, a2, a3, a4);
}

uint64_t sub_10005C038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10005C2D0(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[6] = a5;
  v5[7] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[8] = v9;
  swift_unknownObjectRetain();
  v11 = a5;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v12 = swift_task_alloc();
  v5[9] = v12;
  *v12 = v5;
  v12[1] = sub_10005C3E4;

  return sub_100060388(v8, v10, (v5 + 2), a3);
}

uint64_t sub_10005C3E4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 48);
  v7 = *v1;

  sub_1000036EC((v3 + 16));

  v8 = *(v3 + 56);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v3 + 56));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10005C58C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005C664, 0, 0);
}

uint64_t sub_10005C664()
{
  if (!(*((swift_isaMask & **(*(v0 + 24) + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))())
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = sub_1000393CC();
    (*(v8 + 16))(v7, v10, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "userNotificationEvent:Error no daemon is initialized", v13, 2u);
    }

    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 32);

    (*(v15 + 8))(v14, v16);
    sub_10005FD70();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    goto LABEL_21;
  }

  v1 = [*(v0 + 16) event];
  if (v1 == 2)
  {
    v18 = [*(v0 + 16) device];
    if (v18)
    {
      v3 = v18;
      v19 = UserNotificationManager.shared.unsafeMutableAddressor();
      v5 = *v19;
      v6 = ((swift_isaMask & **v19) + 152);
      goto LABEL_11;
    }

    v36 = *(v0 + 56);
    v37 = *(v0 + 32);
    v38 = *(v0 + 40);
    v39 = sub_1000393CC();
    (*(v38 + 16))(v36, v39, v37);
    v32 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v32, v40, "userNotificationEvent:Error hidUsbPairingComplete, device are not valid", v41, 2u);
    }

    v35 = *(v0 + 56);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
    v2 = [*(v0 + 16) device];
    if (v2)
    {
      v3 = v2;
      v4 = UserNotificationManager.shared.unsafeMutableAddressor();
      v5 = *v4;
      v6 = ((swift_isaMask & **v4) + 160);
LABEL_11:
      v21 = *(v0 + 56);
      v20 = *(v0 + 64);
      v22 = *(v0 + 48);
      v23 = *v6;
      v24 = v5;
      v23(v3);

      v25 = *(v0 + 8);
      goto LABEL_22;
    }

    v28 = *(v0 + 64);
    v29 = *(v0 + 32);
    v30 = *(v0 + 40);
    v31 = sub_1000393CC();
    (*(v30 + 16))(v28, v31, v29);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "userNotificationEvent:Error gameControllerConnected, device are not valid", v34, 2u);
    }

    v35 = *(v0 + 64);
LABEL_19:
    v42 = *(v0 + 32);
    v43 = *(v0 + 40);

    (*(v43 + 8))(v35, v42);
    sub_10006049C();
    swift_allocError();
    v27 = 1;
    goto LABEL_20;
  }

  sub_10006049C();
  swift_allocError();
  v27 = 2;
LABEL_20:
  *v26 = v27;
  swift_willThrow();

LABEL_21:
  v45 = *(v0 + 56);
  v44 = *(v0 + 64);
  v46 = *(v0 + 48);

  v25 = *(v0 + 8);
LABEL_22:

  return v25();
}

uint64_t sub_10005CC98(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000615D4;

  return sub_10005C58C(v6);
}

uint64_t sub_10005CD5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_daemon;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10005CE14()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10005CE68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10005CEC0()
{
  if (*(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections) = _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_10005CF08(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections) = a1;
}

id sub_10005CF20()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener);
  }

  else
  {
    v4 = objc_allocWithZone(NSXPCListener);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithMachServiceName:v5];

    v7 = [v6 setDelegate:v0];
    v8 = (*((swift_isaMask & *v0) + 0x88))(v7);
    [v6 _setQueue:v8];

    v9 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_10005D02C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener) = a1;
  return _objc_release_x1();
}

void (*sub_10005D040(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10005CF20();
  return sub_10005D088;
}

void sub_10005D088(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener) = v2;
}

id sub_10005D0A0(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_daemon] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___xpcListener] = 0;
  *&v4[OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer_dispatchQueue] = a1;
  v5 = a1;
  v6 = UserNotificationManager.shared.unsafeMutableAddressor();
  v7 = *((swift_isaMask & **v6) + 0x80);
  v8 = *v6;
  v7();

  v11.receiver = v4;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

uint64_t sub_10005D1B0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000393CC();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Activate Bluetooth User Controller XPC Service", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return (*((swift_isaMask & *a1) + 0xE0))(v11);
}

void sub_10005D344()
{
  v1 = (*((swift_isaMask & *v0) + 0xB8))();
  [v1 resume];
}

uint64_t sub_10005D3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = type metadata accessor for DispatchQoS();
  v11 = *(v21[0] - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v21[0]);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((swift_isaMask & *v3) + 0x88))(v13);
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = a3;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  static DispatchQoS.unspecified.getter();
  v21[1] = _swiftEmptyArrayStorage;
  sub_100006DAC(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v15, v21[0]);
}

uint64_t sub_10005D6A0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000393CC();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Invalidate Bluetooth User Controller XPC Service", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return (*((swift_isaMask & *a1) + 0xF0))(v11);
}

void sub_10005D834()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0xA0))();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    (*((swift_isaMask & *v6) + 0x70))();
  }

LABEL_10:

  v9 = (*((swift_isaMask & *v1) + 0xB8))(v8);
  [v9 invalidate];
}

uint64_t sub_10005D9AC()
{
  v1 = (*((swift_isaMask & *v0) + 0xA0))();
  v2 = v1;
  v13 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = v0;
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v0 = type metadata accessor for XPCConnection();
      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = v13[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = &v13;
        specialized ContiguousArray._endMutation()();
      }

      ++v4;
      if (v8 == i)
      {
        v0 = v12;
        v9 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_18:

  v10 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections);
  *(v0 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections) = v9;
}

id sub_10005DB98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005DC3C(uint64_t a1, void *a2)
{
  v3 = v2;
  v83 = type metadata accessor for Logger();
  v5 = *(v83 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v83);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v81 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v81 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v81 - v17;
  __chkstk_darwin(v16);
  v20 = &v81 - v19;
  if ((sub_10005E664() & 1) == 0)
  {
    v54 = IsAppleInternalBuild();
    v55 = sub_1000393CC();
    v56 = *(v5 + 16);
    if (v54)
    {
      v57 = v83;
      v56(v12, v55, v83);
      v58 = a2;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock[0] = v62;
        *v61 = 67109378;
        *(v61 + 4) = [v58 processIdentifier];

        *(v61 + 8) = 2080;
        *(v61 + 10) = sub_1000034B8(0xD00000000000001ALL, 0x800000010007B0B0, aBlock);
        _os_log_impl(&_mh_execute_header, v59, v60, "XPC connection denied, %d, add %s entitlement", v61, 0x12u);
        sub_1000036EC(v62);
      }

      else
      {
      }

      (*(v5 + 8))(v12, v57);
    }

    else
    {
      v69 = v83;
      v56(v9, v55, v83);
      v70 = a2;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 67109120;
        *(v73 + 4) = [v70 processIdentifier];

        _os_log_impl(&_mh_execute_header, v71, v72, "XPC connection denied, %d", v73, 8u);
      }

      else
      {

        v71 = v70;
      }

      (*(v5 + 8))(v9, v69);
    }

    return 0;
  }

  v82 = v20;
  sub_100004890(0, &unk_100094230, NSObject_ptr);
  v21 = (*((swift_isaMask & *v2) + 0xB8))();
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    v63 = sub_1000393CC();
    v64 = v83;
    (*(v5 + 16))(v15, v63, v83);
    v65 = a2;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 67109120;
      *(v68 + 4) = [v65 processIdentifier];

      _os_log_impl(&_mh_execute_header, v66, v67, "XPC connection denied bad listener, %d", v68, 8u);
    }

    else
    {

      v66 = v65;
    }

    (*(v5 + 8))(v15, v64);
    return 0;
  }

  v23 = *((swift_isaMask & *v3) + 0x88);
  v24 = v23();
  v25 = type metadata accessor for XPCConnection();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener] = v3;
  *&v26[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_dispatchQueue] = v24;
  *&v26[OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_xpcConnection] = a2;
  v85.receiver = v26;
  v85.super_class = v25;
  v27 = v3;
  v28 = a2;
  v29 = objc_msgSendSuper2(&v85, "init");
  v84 = sub_10005CEC0();
  v30 = v29;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v80 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v31 = *(v27 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections);
  *(v27 + OBJC_IVAR____TtC14bluetoothuserd22BluetoothUserXPCServer____lazy_storage___connections) = v84;

  v32 = CBUserControllerXPCInterface();
  [v28 setExportedInterface:v32];

  v33 = v23();
  [v28 _setQueue:v33];

  [v28 setExportedObject:v30];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v30;
  aBlock[4] = sub_100060524;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008BC40;
  v36 = _Block_copy(aBlock);
  v37 = v30;

  [v28 setInvalidationHandler:v36];
  _Block_release(v36);
  v38 = CBUserControllerXPCInterface();
  [v28 setRemoteObjectInterface:v38];

  [v28 resume];
  [v28 auditToken];
  if (xpc_copy_code_signing_identity_for_token())
  {
    v39 = String.init(cString:)();
    v41 = v40;
    v42 = sub_1000393CC();
    v44 = v82;
    v43 = v83;
    (*(v5 + 16))(v82, v42, v83);
    v45 = v28;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v81 = v37;
      v49 = v48;
      v50 = v44;
      v51 = swift_slowAlloc();
      v86 = v51;
      *v49 = 67109378;
      *(v49 + 4) = [v45 processIdentifier];

      *(v49 + 8) = 2080;
      v52 = sub_1000034B8(v39, v41, &v86);

      *(v49 + 10) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "XPC connection started: %d, %s", v49, 0x12u);
      sub_1000036EC(v51);

      (*(v5 + 8))(v50, v83);
    }

    else
    {

      (*(v5 + 8))(v44, v43);
    }

    return 1;
  }

  else
  {
    v74 = sub_1000393CC();
    v75 = v83;
    (*(v5 + 16))(v18, v74, v83);
    v76 = v28;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 67109120;
      *(v79 + 4) = [v76 processIdentifier];

      _os_log_impl(&_mh_execute_header, v77, v78, "XPC connection started: %d", v79, 8u);

      v76 = v37;
    }

    else
    {

      v77 = v37;
    }

    (*(v5 + 8))(v18, v75);
    return 1;
  }
}

uint64_t sub_10005E664()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v6)
    {
      return 1;
    }
  }

  else
  {
    sub_100006CAC(&v9, &qword_100092CB8, &qword_100072C40);
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v0 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100006CAC(&v9, &qword_100092CB8, &qword_100072C40);
  }

  return 0;
}

uint64_t CBDistributedDebugLogging.description.getter(char a1)
{
  if (a1)
  {
    v2._object = 0x800000010007B0F0;
    v2._countAndFlagsBits = 0xD000000000000015;
    String.append(contentsOf:)(v2);
  }

  return 0;
}

uint64_t sub_10005E8DC()
{
  if (*v0)
  {
    v2._object = 0x800000010007B0F0;
    v2._countAndFlagsBits = 0xD000000000000015;
    String.append(contentsOf:)(v2);
  }

  return 0;
}

BOOL sub_10005E980(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10005E9B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10005E9DC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_10005EABC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10005FE18(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10005EAFC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000615D8;

  return v7();
}

uint64_t sub_10005EBE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10005C038;

  return v8();
}

uint64_t sub_10005ECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100006C44(a3, v25 - v11, &unk_100094380, &qword_100074DF0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100006CAC(v12, &unk_100094380, &qword_100074DF0);
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

    sub_100006CAC(a3, &unk_100094380, &qword_100074DF0);

    return v23;
  }

LABEL_8:
  sub_100006CAC(a3, &unk_100094380, &qword_100074DF0);
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