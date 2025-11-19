uint64_t sub_10042B99C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = sub_10042B800(v6, v8, a4);

  return a4 & 1;
}

uint64_t sub_10042BA04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock((v2 + OBJC_IVAR___CSDSceneObservationManager_state));
  sub_10042ACF8(a1, a2, 0, 0);
  v7 = v6;
  os_unfair_lock_unlock(v5);
  return v7;
}

void sub_10042BAD0(unint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CSDSceneObservationManager_state;
  os_unfair_lock_lock((v1 + OBJC_IVAR___CSDSceneObservationManager_state));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 8);
    if (*(v4 + 16) > a1)
    {
      v5 = *(v4 + 16 * a1 + 40);

      os_unfair_lock_unlock(v3);
      return;
    }
  }

  __break(1u);
}

void sub_10042BBAC(unint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CSDSceneObservationManager_state;
  os_unfair_lock_lock((v1 + OBJC_IVAR___CSDSceneObservationManager_state));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 8);
    if (*(v4 + 16) > a1)
    {
      v5 = *(*(v4 + 16 * a1 + 40) + 16) == 0;
      os_unfair_lock_unlock(v3);
      return;
    }
  }

  __break(1u);
}

void sub_10042BC60()
{
  v1 = v0;
  if (qword_1006A0C08 != -1)
  {
    sub_100008840();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006AB5D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_10000A468(&_mh_execute_header, v5, v6, "Added CSDSceneObservationManager delegate");
  }

  v7 = (v1 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v7);
  swift_unknownObjectWeakInit();
  sub_1003822F8();
  os_unfair_lock_unlock(v7);
}

void sub_10042BD84(uint64_t a1)
{
  v2 = v1;
  if (qword_1006A0C08 != -1)
  {
    sub_100008840();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006AB5D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    sub_10000A468(&_mh_execute_header, v7, v8, "Removed CSDSceneObservationManager delegate");
  }

  v9 = (v2 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v9);
  sub_10038461C(v10, a1);
  sub_10042BF28(v10);
  os_unfair_lock_unlock(v9);
}

void sub_10042BEA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_10042BF28(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A7588, &qword_100582CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042BF90(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v13[0] = a1;
  v13[1] = a2;
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v13;
  sub_10042C610(sub_10042CD6C, v12, v5);
  v9 = v8;
  if (v8)
  {
    sub_10042C4AC(a1, a2, v7);
    v10 = *(v2[1] + 16) - 1;
  }

  return v9 & 1;
}

uint64_t sub_10042C028(void *a1)
{
  v6 = _s13callservicesd37CSDConversationSpatialPersonaResolverC22localGenerationCounters6UInt64Vvpfi_0();
  v7 = sub_10042C2A8(&v31, a1, 0, 1, v6);
  v8 = a1[2];
  v9 = v31;
  if (v31 != v8)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v1 = sub_100327838(0, v31, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = _swiftEmptyArrayStorage;
      }

      v15 = v14[2];

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_35;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_36;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_1002F6384(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v32 = v7;
      v33 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_unknownObjectRelease();
    }

    v8 = sub_100327838(v9, v8, a1);
    v9 = v16;
    v1 = v17;
    v2 = v18;

    v19 = v2 >> 1;
    while (1)
    {
LABEL_14:
      if (v1 == v19)
      {
        swift_unknownObjectRelease();

        return v32;
      }

      if (v1 >= v19)
      {
        __break(1u);
        goto LABEL_33;
      }

      v20 = (v9 + 16 * v1);
      v3 = *v20;
      v2 = v20[1];
      ++v1;
      a1 = v32;
      v21 = v33;
      v22 = *(v33 + 16);
      if (!v32)
      {
        break;
      }

      v23 = v20[1];

      sub_10042C9D4(v3, v2, v21 + 32, v22, a1 + 2);
      v25 = v24;
      v4 = v26;

      if (v25)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v27 = (v33 + 40);
    a1 = (v22 + 1);
    while (1)
    {
      a1 = (a1 - 1);
      if (!a1)
      {
        break;
      }

      v4 = (v27 + 2);
      if (*(v27 - 1) != v3 || *v27 != v2)
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v27 = v4;
        if ((v29 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v4 = 0;
LABEL_29:
    a1 = &v32;
    sub_10042C4AC(v3, v2, v4);
    goto LABEL_30;
  }

  return v7;
}

uint64_t sub_10042C2A8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = *(a2 + 16);
  v11 = static _HashTable.scale(forCapacity:)();
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > 4)
  {
    v14 = _HashTable.init(scale:reservedScale:)();
    sub_10042CB00(a2 + 32, v8, (v14 + 16));
    *a1 = v15;
  }

  else if (v8 >= 2)
  {
    sub_10042C370(a2 + 32, v8);
    v14 = 0;
    *a1 = v16;
  }

  else
  {
    v14 = 0;
    *a1 = v8;
  }

  return v14;
}

void sub_10042C370(uint64_t a1, uint64_t a2)
{
  sub_10039A2E0(0, a2 & ~(a2 >> 63), 0);
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v5 = (a1 + 16 * i);
    v6 = *v5;
    v7 = v5[1];
    v8 = &_swiftEmptyArrayStorage[5];
    v9 = _swiftEmptyArrayStorage[2] + 1;
    while (--v9)
    {
      if (v6 != *(v8 - 1) || v7 != *v8)
      {
        v8 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      sub_10039A2E0(v12 > 1, v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v6;
    v13[5] = v7;
  }

  __break(1u);
}

void sub_10042C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10039A2E0(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_10039A2E0(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return;
    }

    v17 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  v16 = *(v15 + 16);
  if (static _HashTable.maximumCapacity(forScale:)() <= v13)
  {
    v17 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v17 == 0)
    {

      *v4 = 0;
      return;
    }

LABEL_15:
    v19 = static _HashTable.scale(forCapacity:)();
    sub_10042C720(v19, v17);
    return;
  }

  sub_10042C660();
  if (*v4)
  {
    sub_10042C6B8((*v4 + 16), *v4 + 32, a3, v4);
  }

  else
  {
    __break(1u);
  }
}

void *sub_10042C610(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10042C660()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = _HashTable.copy()();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10042C6B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return _HashTable.UnsafeHandle.subscript.setter();
}

uint64_t sub_10042C720(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_10042C768(v2[1], a2, 0, v3);
  v6 = *v2;

  *v2 = v5;
  return result;
}

uint64_t sub_10042C768(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    sub_10042C7E0(a1, (v9 + 16));
  }

  return v9;
}

Swift::Int sub_10042C820(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v10)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10042C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

Swift::Int sub_10042C9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

Swift::Int sub_10042CB00(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v16 = v5 + 1;
    v6 = (v4 + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = *v3;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    if (__OFSUB__(1 << *v3, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    _HashTable.UnsafeHandle._startIterator(bucket:)();

    while (1)
    {
      v10 = _HashTable.BucketIterator.currentValue.getter();
      if (v11)
      {
        break;
      }

      v12 = (v4 + 16 * v10);
      v13 = *v12 == *v6 && v12[1] == v6[1];
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    _HashTable.BucketIterator.currentValue.setter();
    result = 1;
    ++v5;
    v3 = a3;
    if (v16 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10042CCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = a4[1];
  if (a3)
  {

    v11 = sub_10042C9D4(v8, v9, a1, a2, (a3 + 16));
    v13 = v12;
    v15 = v14;
  }

  else
  {
    result = sub_10042C948(*a4, a4[1], a1, a2);
    v11 = result;
    v13 = v17;
    v15 = 0;
  }

  *a5 = v11;
  *(a5 + 8) = v13 & 1;
  *(a5 + 16) = v15;
  return result;
}

uint64_t sub_10042CD90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_10042CE14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10042CE28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10042CE68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10042CEC4()
{
  result = qword_1006AB620;
  if (!qword_1006AB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB620);
  }

  return result;
}

id sub_10042CF18()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10026D814(&unk_1006A7AF0, &unk_1005819F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithKeysToFetch:isa];

  return v2;
}

id sub_10042CF9C(void *a1)
{
  v2 = [objc_opt_self() storeWithOptions:3];
  v3 = [objc_opt_self() sharedInstance];
  sub_100006AF0(0, &qword_1006AB698, CLFSettings_ptr);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 applicationBundleIdentifiers];

  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006AF0(0, &unk_1006A79C0, CLFPhoneFaceTimeSettings_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata sharedInstance];
  v9 = [v8 incomingCommunicationLimit];

  v10 = [ObjCClassFromMetadata sharedInstance];
  v11 = [v10 outgoingCommunicationLimit];

  v12 = type metadata accessor for ClarityUICallFilter();
  v13 = objc_allocWithZone(v12);
  v20[3] = sub_100006AF0(0, &qword_1006A7BA0, CNContactStore_ptr);
  v20[4] = &off_100622F18;
  v20[0] = v2;
  v19[3] = sub_100006AF0(0, &unk_1006AB6A0, CNFavorites_ptr);
  v19[4] = &off_10062CD70;
  v19[0] = v3;
  sub_100009AB0(v20, &v13[OBJC_IVAR___CSDClarityUICallFilter_contactStore]);
  sub_100009AB0(v19, &v13[OBJC_IVAR___CSDClarityUICallFilter_favorites]);
  *&v13[OBJC_IVAR___CSDClarityUICallFilter_applications] = v6;
  *&v13[OBJC_IVAR___CSDClarityUICallFilter_incomingCommunicationLimit] = v9;
  *&v13[OBJC_IVAR___CSDClarityUICallFilter_outgoingCommunicationLimit] = v11;
  v18.receiver = v13;
  v18.super_class = v12;
  v14 = v9;
  v15 = v11;
  v16 = objc_msgSendSuper2(&v18, "initWithQueue:", a1);

  sub_100009B7C(v19);
  sub_100009B7C(v20);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t sub_10042D25C(void *a1, id a2)
{
  if (([a2 isTelephonyProvider] & 1) == 0 && !objc_msgSend(a2, "isFaceTimeProvider"))
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v29 = sub_100009F00();
    *(v29 + 16) = xmmword_10057D690;
    *(v29 + 56) = type metadata accessor for ClarityUICallFilter();
    v30 = sub_10042EA04();
    sub_10000E83C(v30);
    static os_log_type_t.default.getter();
    goto LABEL_33;
  }

  v5 = *&v2[OBJC_IVAR___CSDClarityUICallFilter_applications];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_10001151C(v6, v7);
  __chkstk_darwin(v8, v9);
  sub_100007918();
  *(v10 - 16) = v57;
  sub_10000FF58();
  v11 = sub_100013094();

  if (v11)
  {
    goto LABEL_5;
  }

  v12 = TUPreferredFaceTimeBundleIdentifier();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v57[0] = v11;
  v57[1] = v14;
  __chkstk_darwin(v15, v16);
  sub_100007918();
  *(v17 - 16) = v57;
  sub_10000FF58();
  v18 = sub_100013094();

  if (v18)
  {
LABEL_5:
    v19 = *&v2[OBJC_IVAR___CSDClarityUICallFilter_incomingCommunicationLimit];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v20 == sub_100016098() && v11 == v21)
    {

LABEL_12:
      v25 = [a1 remoteMember];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 handle];

        v28 = [v27 tuHandle];
      }

      else
      {
        v28 = 0;
      }

      v34 = sub_10042E120(v28);

      if (qword_1006A0AA0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_50;
    }

    v23 = sub_100015354();
    v24 = v19;

    if (v23)
    {

      goto LABEL_12;
    }

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v37 == sub_100016098() && v11 == v38)
    {
    }

    else
    {
      v40 = sub_100015354();

      if ((v40 & 1) == 0)
      {
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;
        if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
        {
        }

        else
        {
          v49 = sub_10000EBBC();

          if ((v49 & 1) == 0)
          {
            if (qword_1006A0AA0 != -1)
            {
              sub_100008134();
            }

            static os_log_type_t.error.getter();
            sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
            v50 = sub_100009F00();
            *(v50 + 16) = xmmword_10057D690;
            *(v50 + 56) = type metadata accessor for ClarityUICallFilter();
            v51 = sub_10042EA04();
            sub_1000105A0(v51);
            v52 = v2;
            sub_10000A7F4();
            os_log(_:dso:log:type:_:)();
            goto LABEL_34;
          }
        }

        v53 = [a1 remoteMember];
        if (v53)
        {
          v54 = v53;
          v55 = [v53 handle];

          v56 = [v55 tuHandle];
        }

        else
        {
          v56 = 0;
        }

        v34 = sub_10042E358(v56);

        if (qword_1006A0AA0 == -1)
        {
          goto LABEL_22;
        }

LABEL_50:
        sub_100008134();
LABEL_22:
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v35 = sub_100009F24();
        *(v35 + 16) = xmmword_10057D6A0;
        *(v35 + 56) = type metadata accessor for ClarityUICallFilter();
        v36 = sub_10042EA04();
        sub_1000105A0(v36);
        sub_10000F898(&type metadata for Bool);
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v33 = v34 ^ 1;
        return v33 & 1;
      }
    }

    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v41 = sub_100009F00();
    *(v41 + 16) = xmmword_10057D690;
    *(v41 + 56) = type metadata accessor for ClarityUICallFilter();
    v42 = sub_10042EA04();
    sub_10000E83C(v42);
    static os_log_type_t.default.getter();
LABEL_33:
    sub_10000A7F4();
    os_log(_:dso:log:type:_:)();
LABEL_34:

    v33 = 0;
    return v33 & 1;
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v31 = sub_100009F00();
  *(v31 + 16) = xmmword_10057D690;
  *(v31 + 56) = type metadata accessor for ClarityUICallFilter();
  v32 = sub_10042EA04();
  sub_10000E83C(v32);
  static os_log_type_t.default.getter();
  sub_10000A7F4();
  os_log(_:dso:log:type:_:)();

  v33 = 1;
  return v33 & 1;
}

uint64_t sub_10042D9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    if (v7 == a2 && v8 == a3)
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v11 = TUPreferredFaceTimeBundleIdentifier();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (!a3)
  {

LABEL_29:
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v41 = sub_100009F00();
    *(v41 + 16) = xmmword_10057D690;
    *(v41 + 56) = type metadata accessor for ClarityUICallFilter();
    v42 = sub_10042EA04();
    sub_10000E83C(v42);
    static os_log_type_t.default.getter();
    goto LABEL_45;
  }

  if (v12 == a2 && v14 == a3)
  {
    goto LABEL_16;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  v17 = *&v3[OBJC_IVAR___CSDClarityUICallFilter_applications];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = sub_10001151C(v18, v19);
  __chkstk_darwin(v20, v21);
  sub_100007918();
  *(v22 - 16) = v61;
  sub_10000FF58();
  v23 = sub_100013094();

  if (v23)
  {
    goto LABEL_19;
  }

  v24 = TUPreferredFaceTimeBundleIdentifier();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v61[0] = v23;
  v61[1] = v26;
  __chkstk_darwin(v27, v28);
  sub_100007918();
  *(v29 - 16) = v61;
  sub_10000FF58();
  v30 = sub_100013094();

  if (v30)
  {
LABEL_19:
    v31 = *&v3[OBJC_IVAR___CSDClarityUICallFilter_outgoingCommunicationLimit];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v32 == sub_100016098() && v23 == v33)
    {

LABEL_26:
      v37 = sub_10042E120(a1);
      if (qword_1006A0AA0 == -1)
      {
LABEL_27:
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v38 = sub_100009F24();
        *(v38 + 16) = xmmword_10057D6A0;
        *(v38 + 56) = type metadata accessor for ClarityUICallFilter();
        v39 = sub_10042EA04();
        sub_1000105A0(v39);
        sub_10000F898(&type metadata for Bool);
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v40 = v37 ^ 1;
        return v40 & 1;
      }

LABEL_59:
      sub_100008134();
      goto LABEL_27;
    }

    v35 = sub_100015354();
    v36 = v31;

    if (v35)
    {

      goto LABEL_26;
    }

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v45 == sub_100016098() && v23 == v46)
    {
    }

    else
    {
      v48 = sub_100015354();

      if ((v48 & 1) == 0)
      {
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
        if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
        {
        }

        else
        {
          v57 = sub_10000EBBC();

          if ((v57 & 1) == 0)
          {
            if (qword_1006A0AA0 != -1)
            {
              sub_100008134();
            }

            static os_log_type_t.error.getter();
            sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
            v58 = sub_100009F00();
            *(v58 + 16) = xmmword_10057D690;
            *(v58 + 56) = type metadata accessor for ClarityUICallFilter();
            v59 = sub_10042EA04();
            sub_1000105A0(v59);
            v60 = v3;
            sub_10000A7F4();
            os_log(_:dso:log:type:_:)();
            goto LABEL_46;
          }
        }

        v37 = sub_10042E358(a1);
        if (qword_1006A0AA0 == -1)
        {
          goto LABEL_27;
        }

        goto LABEL_59;
      }
    }

    if (qword_1006A0AA0 != -1)
    {
      sub_100008134();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v49 = sub_100009F00();
    *(v49 + 16) = xmmword_10057D690;
    *(v49 + 56) = type metadata accessor for ClarityUICallFilter();
    v50 = sub_10042EA04();
    sub_10000E83C(v50);
    static os_log_type_t.default.getter();
LABEL_45:
    sub_10000A7F4();
    os_log(_:dso:log:type:_:)();
LABEL_46:

    v40 = 0;
    return v40 & 1;
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v43 = sub_100009F00();
  *(v43 + 16) = xmmword_10057D690;
  *(v43 + 56) = type metadata accessor for ClarityUICallFilter();
  v44 = sub_10042EA04();
  sub_10000E83C(v44);
  static os_log_type_t.default.getter();
  sub_10000A7F4();
  os_log(_:dso:log:type:_:)();

  v40 = 1;
  return v40 & 1;
}

BOOL sub_10042E120(_BOOL8 result)
{
  if (result)
  {
    v2 = result;
    v3 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 24);
    v4 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 32);
    sub_100009B14((v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore), v3);
    v5 = v2;
    v6 = [v5 value];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    (*(v4 + 8))(v7, v9, v3, v4);

    v10 = [v5 value];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = sub_100005E74(v11);

    if (v12)
    {
      v13 = sub_10000B6F4(v12);

      return v13 > 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10042E358(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_100006AF0(0, &qword_1006AB680, CNContactFetchRequest_ptr);
  v3 = v2;
  v4 = sub_10042CF18();
  v5 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 24);
  v6 = *(v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore + 32);
  sub_100009B14((v1 + OBJC_IVAR___CSDClarityUICallFilter_contactStore), v5);
  v7 = [v3 value];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = (*(v6 + 8))(v8, v10, v5, v6);
  v12 = 0;

  v49 = v1;
  v50 = v3;
  v51 = v4;
  v13 = v11 + 64;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = _swiftEmptyArrayStorage;
  v53 = v11 + 64;
  v54 = v11;
  v52 = v17;
  while (v16)
  {
LABEL_10:
    v20 = *(*(v11 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v16)))));
    v21 = v20 >> 62;
    v59 = v20;
    if (v20 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v18 >> 62;
    if (v18 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v22;
    v24 = __OFADD__(result, v22);
    v25 = result + v22;
    if (v24)
    {
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
LABEL_59:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v23)
      {
LABEL_22:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = v18 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v27 = *(v26 + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = result;
      v26 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_22;
    }

    v26 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v56 = v26;
    v57 = v18;
    v16 &= v16 - 1;
    v28 = *(v26 + 16);
    v29 = (*(v26 + 24) >> 1) - v28;
    v30 = v26 + 8 * v28;
    if (v21)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (!v32)
      {
        goto LABEL_38;
      }

      v33 = v32;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v29 < result)
      {
        goto LABEL_58;
      }

      if (v33 < 1)
      {
        goto LABEL_59;
      }

      v55 = result;
      v34 = v30 + 32;
      sub_10042EA58();
      for (i = 0; i != v33; ++i)
      {
        sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
        v36 = sub_100024CFC(v60, i, v59);
        v38 = *v37;
        v36(v60, 0);
        *(v34 + 8 * i) = v38;
      }

      v13 = v53;
      v11 = v54;
      v17 = v52;
      v31 = v55;
LABEL_34:

      v18 = v57;
      if (v31 < v58)
      {
        goto LABEL_55;
      }

      if (v31 > 0)
      {
        v39 = *(v56 + 16);
        v24 = __OFADD__(v39, v31);
        v40 = v39 + v31;
        if (v24)
        {
          goto LABEL_56;
        }

        *(v56 + 16) = v40;
      }
    }

    else
    {
      v31 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        if (v29 < v31)
        {
          goto LABEL_57;
        }

        sub_100006AF0(0, &unk_1006AB420, CNContact_ptr);
        swift_arrayInitWithCopy();
        goto LABEL_34;
      }

LABEL_38:

      if (v58 > 0)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v12;
    if (v16)
    {
      v12 = v19;
      goto LABEL_10;
    }
  }

  v41 = sub_10000B6F4(v18);
  v42 = 0;
  v43 = (v49 + OBJC_IVAR___CSDClarityUICallFilter_favorites);
  v44 = v18 & 0xC000000000000001;
  while (v41 != v42)
  {
    sub_10039C390(v42, v44 == 0, v18);
    v45 = v18;
    if (v44)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      result = *(v18 + 8 * v42 + 32);
    }

    v46 = result;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_53;
    }

    v47 = v43[3];
    v48 = v43[4];
    sub_100009B14(v43, v47);
    LOBYTE(v47) = sub_1003C3D54(v46, v47, v48);

    ++v42;
    v18 = v45;
    if (v47)
    {

      return 1;
    }
  }

  return 0;
}

id sub_10042E930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityUICallFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10042EA04()
{
  result = qword_1006AB690;
  if (!qword_1006AB690)
  {
    type metadata accessor for ClarityUICallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB690);
  }

  return result;
}

unint64_t sub_10042EA58()
{
  result = qword_1006A79F0;
  if (!qword_1006A79F0)
  {
    sub_10026DCB4(&unk_1006A79E0, &unk_10057DD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A79F0);
  }

  return result;
}

id sub_10042EB08(void *a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = sub_100007FEC(v3);
  v42 = v5;
  v43 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v41 = v10 - v9;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = sub_100007FEC(v11);
  v39 = v13;
  v40 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = sub_100008070(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  sub_100007FDC();
  v25 = type metadata accessor for DispatchQoS();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8, v27);
  sub_100007FDC();
  v38 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_ringBackTone;
  URL.init(fileURLWithPath:)();
  v28 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_configuration;
  *&v1[v28] = [objc_allocWithZone(AVCAnsweringMachineConfiguration) init];
  *&v1[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine] = 0;
  v37 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_queue;
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  *&v1[v37] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_stopped] = 0;
  [*&v1[v28] setIsMessageCaptioningEnabled:0];
  [*&v1[v28] setIsMessageRecordingEnabled:0];
  v29 = *&v1[v28];
  (*(v42 + 16))(v41, &v1[v38], v43);
  v30 = v29;
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  (*(v42 + 8))(v41, v43);
  [v30 setAnnouncementAsset:v33];

  v34 = *&v2[v28];
  sub_1002A8978(v34, a1);

  v45.receiver = v2;
  v45.super_class = type metadata accessor for HoldMusicAnsweringMachine();
  v35 = objc_msgSendSuper2(&v45, "init");
  sub_10042F0FC();

  return v35;
}

id sub_10042EEB8()
{
  v1 = *&v0[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine];
  if (v1)
  {
    [v1 stop];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HoldMusicAnsweringMachine();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for HoldMusicAnsweringMachine()
{
  result = qword_1006AB6D8;
  if (!qword_1006AB6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042F01C()
{
  v1 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000689C(v4))
  {
    *sub_100006DC4() = 0;
    sub_10000A154();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100008AE8();
  }

  *(v1 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_stopped) = 1;
  v10 = OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine;
  [*(v1 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine) stop];
  v11 = *(v1 + v10);
  *(v1 + v10) = 0;
}

void sub_10042F0FC()
{
  if (*(v0 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_stopped))
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0();
    }

    v1 = type metadata accessor for Logger();
    sub_1000075F0(v1, qword_1006BA5F8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      *sub_100006DC4() = 0;
      sub_10000EBE0(&_mh_execute_header, v3, v4, "not restarting, we have stopped", v5, v6, v7, v8, v27, oslog);
      sub_100005F40();
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0();
    }

    v9 = type metadata accessor for Logger();
    sub_1000075F0(v9, qword_1006BA5F8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100006DC4();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "HoldMusicAnsweringMachine: restartAnsweringMachine", v12, 2u);
      sub_100005F40();
    }

    v13 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = *&v13[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_configuration];
      *(v16 + 4) = v18;
      *v17 = v18;
      v19 = v18;
      sub_10000A154();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100008AE8();
    }

    v25 = [objc_allocWithZone(AVCAnsweringMachine) initWithConfiguration:*&v13[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_configuration] delegate:v13 delegateQueue:*&v13[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_queue]];
    v26 = *&v13[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine];
    *&v13[OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine] = v25;
    oslog = v25;

    [oslog start];
  }
}

uint64_t sub_10042F3B8()
{
  result = type metadata accessor for URL();
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

void sub_10042F46C()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    *sub_100006DC4() = 0;
    sub_10000EBE0(&_mh_execute_header, v2, v3, "HoldMusicAnsweringMachine: serverDidDisconnect", v4, v5, v6, v7, v8, oslog);
    sub_100005F40();
  }
}

void sub_10042F574()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000689C(v2))
  {
    *sub_100006DC4() = 0;
    sub_10000A154();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_100008AE8();
  }

  sub_10042F0FC();
}

id sub_10042F734()
{
  v1 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000689C(v4))
  {
    *sub_100006DC4() = 0;
    sub_10000A154();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100008AE8();
  }

  v10 = *(v1 + OBJC_IVAR____TtC13callservicesd25HoldMusicAnsweringMachine_answeringMachine);

  return [v10 stop];
}

void sub_10042F868(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006BA5F8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 67109378;
    *(v7 + 4) = a2 & 1;
    *(v7 + 8) = 2080;
    v9 = sub_1002910C8(a3);
    v11 = sub_10002741C(v9, v10, &v13);

    *(v7 + 10) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v6, "HoldMusicAnsweringMachine: didStart: %{BOOL}d error:%s", v7, 0x12u);
    sub_100009B7C(v8);
    sub_100005F40();
    sub_100008AE8();
  }
}

uint64_t sub_10042FA30()
{
  sub_1000099A4(v0 + OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor, &qword_1006A2BE8, &unk_10057D980);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SoundProvider()
{
  result = qword_1006AB718;
  if (!qword_1006AB718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042FB08()
{
  sub_10042FBA4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10042FBA4()
{
  if (!qword_1006AB728)
  {
    type metadata accessor for SoundDescriptor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006AB728);
    }
  }
}

uint64_t sub_10042FBFC()
{
  v1 = OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor;
  v2 = type metadata accessor for SoundDescriptor();
  sub_10000AF74(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13callservicesd13SoundProvider_player;
  *(v0 + v3) = [objc_allocWithZone(TUCallSoundPlayer) init];
  return v0;
}

void sub_10042FC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v53 = a2;
  v5 = type metadata accessor for SoundDescriptor();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&qword_1006AB7D0, &unk_1005874A0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v49 - v14;
  v16 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v49 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v49 - v27;
  sub_100430228(a1, &v49 - v27);
  sub_10000AF74(v28, 0, 1, v5);
  v29 = OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor;
  swift_beginAccess();
  v30 = *(v11 + 56);
  sub_10004CF98(v28, v15);
  v51 = v29;
  sub_10004CF98(v3 + v29, &v15[v30]);
  sub_100008860(v15);
  if (v31)
  {
    sub_1000099A4(v28, &qword_1006A2BE8, &unk_10057D980);
    sub_100008860(&v15[v30]);
    if (v31)
    {
      sub_1000099A4(v15, &qword_1006A2BE8, &unk_10057D980);
LABEL_14:
      v37 = sub_100004778();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return;
    }

    goto LABEL_9;
  }

  sub_10004CF98(v15, v25);
  sub_100008860(&v15[v30]);
  if (v31)
  {
    sub_1000099A4(v28, &qword_1006A2BE8, &unk_10057D980);
    sub_100430328(v25);
LABEL_9:
    v50 = v21;
    sub_1000099A4(v15, &qword_1006AB7D0, &unk_1005874A0);
    goto LABEL_10;
  }

  v50 = v21;
  sub_10033BF60(&v15[v30], v9);
  v36 = sub_10039FCF8(v25, v9);
  sub_100430328(v9);
  sub_1000099A4(v28, &qword_1006A2BE8, &unk_10057D980);
  sub_100430328(v25);
  sub_1000099A4(v15, &qword_1006A2BE8, &unk_10057D980);
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_10004CDCC();
  v32 = [objc_allocWithZone(TUCallSoundPlayerDescriptor) initWithSoundType:*a1 provider:*(a1 + 8) video:*(a1 + 16) region:*(a1 + 24) audioPlayingWarmupNeeded:*(a1 + *(v5 + 36))];
  if (v32)
  {
    v33 = v32;
    v34 = *(v3 + OBJC_IVAR____TtC13callservicesd13SoundProvider_player);
    if (v53)
    {
      aBlock[4] = v53;
      aBlock[5] = v52;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100056350;
      aBlock[3] = &unk_1006303A0;
      v35 = _Block_copy(aBlock);
    }

    else
    {
      v35 = 0;
    }

    v43 = v50;
    v44 = [v34 attemptToPlayDescriptor:v33 completion:v35];
    _Block_release(v35);
    if (v44)
    {

      sub_100430228(a1, v43);
      sub_10000AF74(v43, 0, 1, v5);
      v45 = v51;
      swift_beginAccess();
      sub_10004D044(v43, v3 + v45);
      swift_endAccess();
    }

    else
    {
      v46 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_10057D690;
      *(v47 + 56) = sub_10043028C();
      *(v47 + 64) = sub_1004302D0();
      *(v47 + 32) = v33;
      v48 = v33;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }

  else
  {
    v38 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10057D690;
    sub_100430228(a1, v9);
    v40 = String.init<A>(reflecting:)();
    v42 = v41;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100009D88();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_100430228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10043028C()
{
  result = qword_1006AB7D8;
  if (!qword_1006AB7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AB7D8);
  }

  return result;
}

unint64_t sub_1004302D0()
{
  result = qword_1006AB7E0;
  if (!qword_1006AB7E0)
  {
    sub_10043028C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB7E0);
  }

  return result;
}

uint64_t sub_100430328(uint64_t a1)
{
  v2 = type metadata accessor for SoundDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100430384()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004303F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = Notification.userInfo.getter();
    if (v1)
    {
      v2 = v1;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v3;
      AnyHashable.init<A>(_:)();
      sub_100006600(v20, v2);
      sub_100006780(v20);
      if (!v22)
      {

        return sub_10004975C(v21);
      }

      if (swift_dynamicCast())
      {
        v21[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21[1] = v4;
        AnyHashable.init<A>(_:)();
        sub_100006600(v20, v2);

        sub_100006780(v20);
        if (v22)
        {
          v5 = swift_dynamicCast();
          v6 = v5 == 0;
          if (v5)
          {
            v7 = v18;
          }

          else
          {
            v7 = 0;
          }

          if (v6)
          {
            v8 = 0;
          }

          else
          {
            v8 = v19;
          }
        }

        else
        {
          sub_10004975C(v21);
          v7 = 0;
          v8 = 0;
        }

        v9 = sub_100430778(v7, v8);

        if (qword_1006A0B30 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000AF9C(v10, qword_1006BA610);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v20[0] = v14;
          *v13 = 67109378;
          *(v13 + 4) = v18;
          *(v13 + 8) = 2080;
          LOBYTE(v21[0]) = v9;
          v15 = String.init<A>(reflecting:)();
          v17 = sub_10002741C(v15, v16, v20);

          *(v13 + 10) = v17;
          _os_log_impl(&_mh_execute_header, v11, v12, "Handling avAudioSessionMuteStateChanged %{BOOL}d with muteReason %s", v13, 0x12u);
          sub_100009B7C(v14);
        }

        sub_100430700(v18, v9);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100430700(uint64_t result, char a2)
{
  if (*(v2 + 16))
  {
    v4 = result;
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    sub_1003C6BAC(v4 & 1, a2 & 1, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100430778(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v3 == a2)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10043080C()
{
  sub_100432E00(v0);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 normalizedHandleWithDestinationID:v3];
  }

  else
  {
    v5 = [v0 localSenderIdentity];
    if (!v5)
    {
      goto LABEL_7;
    }

    v3 = v5;
    v4 = [v5 handle];
  }

  v6 = v4;

  if (v6)
  {
    sub_1002E4FD0();
  }

LABEL_7:
  type metadata accessor for Handle();
  v7 = sub_10000C2F0();

  return sub_10000AF74(v7, v8, v9, v10);
}

uint64_t sub_100430904()
{
  v1 = [v0 handle];
  if (v1)
  {
    v2 = v1;
    sub_1002E4FD0();
  }

  type metadata accessor for Handle();
  v3 = sub_10000C2F0();

  return sub_10000AF74(v3, v4, v5, v6);
}

void *sub_100430978@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v3);
  v5 = *(v4 + 64);
  sub_100006688();
  __chkstk_darwin(v6, v7);
  sub_100011530();
  v8 = type metadata accessor for Date();
  v9 = sub_100007FEC(v8);
  v89 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v17);
  v19 = *(v18 + 64);
  sub_100006688();
  __chkstk_darwin(v20, v21);
  v23 = &v88 - v22;
  v24 = type metadata accessor for UUID();
  v25 = sub_100007FEC(v24);
  v97 = v26;
  v98 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25, v29);
  sub_100007FDC();
  v32 = v31 - v30;
  v33 = sub_10026D814(&qword_1006AB9E8, &qword_100587630);
  v34 = sub_100007BF0(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34, v37);
  v39 = &v88 - v38;
  v99 = v1;
  v92 = OBJC_IVAR___CSDAudioCallRecordingSession__call;
  Strong = swift_unknownObjectWeakLoadStrong();
  v94 = v2;
  v95 = v16;
  v100 = v23;
  v93 = v8;
  if (Strong)
  {
    v41 = Strong;
    sub_100430904();
  }

  else
  {
    v42 = type metadata accessor for Handle();
    sub_10000AF74(v39, 1, 1, v42);
  }

  v43 = type metadata accessor for Handle();
  v96 = &v88;
  v44 = sub_100007FEC(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  v50 = __chkstk_darwin(v44, v49);
  v51 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50, v52);
  v90 = v39;
  sub_100335188(v39, &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1006AB9E8, &qword_100587630);
  v53 = sub_100015468(&v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v43);
  v101 = v32;
  if (v53 == 1)
  {
    sub_1000099A4(&v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1006AB9E8, &qword_100587630);
    v102 = _swiftEmptyArrayStorage;
    v54 = v99;
  }

  else
  {
    v88 = *(v46 + 32);
    v55 = v88(&v88 - v51, &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
    __chkstk_darwin(v55, v56);
    (*(v46 + 16))(&v88 - v51, &v88 - v51, v43);
    sub_10047069C(0, 1, 1, _swiftEmptyArrayStorage);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    v102 = v57;
    v54 = v99;
    if (v59 >= v58 >> 1)
    {
      sub_10047069C(v58 > 1, v59 + 1, 1, v102);
      v102 = v87;
    }

    (*(v46 + 8))(&v88 - v51, v43);
    v60 = v102;
    *(v102 + 2) = v59 + 1;
    v88(&v60[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v59], &v88 - v51, v43);
    v32 = v101;
  }

  v61 = v98;
  (*(v97 + 16))(v32, v54 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v98);
  v62 = *(v54 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
  v63 = *(v54 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
  v64 = v100;
  UUID.init(uuidString:)();
  result = sub_100015468(v64, 1, v61);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v66 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
    swift_beginAccess();
    v67 = v94;
    sub_100335188(v54 + v66, v94, &qword_1006A3C70, &unk_10057EA80);
    v68 = sub_10002F6F4();
    v69 = v93;
    if (sub_100015468(v68, v70, v93) == 1)
    {
      static Date.now.getter();
      v71 = sub_10002F6F4();
      v73 = sub_100015468(v71, v72, v69);
      if (v73 != 1)
      {
        v73 = sub_1000099A4(v67, &qword_1006A3C70, &unk_10057EA80);
      }
    }

    else
    {
      v73 = (*(v89 + 32))(v95, v67, v69);
    }

    __chkstk_darwin(v73, v74);
    v75 = swift_unknownObjectWeakLoadStrong();
    if (v75)
    {
      v76 = v75;
      sub_10043080C();
    }

    else
    {
      v77 = sub_10002F6F4();
      sub_10000AF74(v77, v78, 1, v43);
    }

    v79 = type metadata accessor for ConversationProvider();
    v80 = sub_100007BF0(v79);
    v82 = *(v81 + 64);
    __chkstk_darwin(v80, v83);
    sub_100007FDC();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v84 = result;
      v85 = [result provider];

      v86 = [v85 localizedName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      ConversationProvider.init(name:)();
      _ConversationRecordingContext.init(id:conversationUUID:startedRecording:localHandle:remoteHandles:conversationProvider:)();
      return sub_1000099A4(v90, &qword_1006AB9E8, &qword_100587630);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100431034(uint64_t a1)
{
  v3 = async function pointer to static RecordingMediaComposer.composeRecording(from:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100035FE4;

  return static RecordingMediaComposer.composeRecording(from:)(a1);
}

id sub_1004310E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CSDCallRecordingExtensionController_extensionConnectionFactory] = a1;
  v4 = &v3[OBJC_IVAR___CSDCallRecordingExtensionController_mediaComposerClass];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CallRecordingExtensionController();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100431134()
{
  v2 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v2);
  v4 = *(v3 + 64);
  sub_100006688();
  __chkstk_darwin(v5, v6);
  sub_100011530();
  v7 = type metadata accessor for _ConversationRecordingContext();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100430978(v14);
  static TaskPriority.userInitiated.getter();
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_10000AF74(v1, 0, 1, v15);
  __chkstk_darwin(v16, v17);
  (*(v10 + 16))(v14, v14, v7);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v0;
  (*(v10 + 32))(&v19[v18], v14, v7);
  v20 = v0;
  sub_10000C8BC();

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_100431304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  v6 = swift_task_alloc();
  *(v5 + 72) = v6;
  *v6 = v5;
  v6[1] = sub_100431394;

  return sub_1003DDB60();
}

uint64_t sub_100431394(uint64_t a1)
{
  sub_100005F18();
  v5 = v4;
  sub_100007BC8();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v2;
  sub_100008060();
  *v10 = v9;
  *(v5 + 80) = v1;

  if (!v1)
  {
    *(v5 + 88) = a1;
  }

  sub_100007BBC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1004314A8()
{
  v15 = v0;
  v0[2] = v0[11];
  v1 = v0[10];
  v2 = v0[8];
  v0[5] = &type metadata for RecordingExtensionConnection;
  v0[6] = &off_10062DC80;
  v3 = sub_100009B14(v0 + 2, &type metadata for RecordingExtensionConnection);
  sub_1003DEF4C(v2, *v3);
  sub_100009B7C(v0 + 2);
  if (v1)
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA640);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_100005274();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v0[7] = v1;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error creating recording extension connection: %s", v7, 0xCu);
      sub_100009B7C(v8);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }
  }

  sub_100009EF4();

  return v12();
}

uint64_t sub_1004317BC(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v6);
  v8 = *(v7 + 64);
  sub_100006688();
  __chkstk_darwin(v9, v10);
  sub_100011530();
  v11 = type metadata accessor for _ConversationRecordingContext();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  v18 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100430978(v18);
  static TaskPriority.userInitiated.getter();
  v19 = type metadata accessor for TaskPriority();
  v20 = sub_10000AF74(v3, 0, 1, v19);
  __chkstk_darwin(v20, v21);
  (*(v14 + 16))(v18, v18, v11);
  v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v4;
  *(v23 + 5) = a2;
  (*(v14 + 32))(&v23[v22], v18, v11);
  v24 = v4;
  v25 = a2;
  sub_10000C8BC();

  return (*(v14 + 8))(v18, v11);
}

uint64_t sub_100431998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for UUID();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = *(*(sub_10026D814(&unk_1006A52C0, &unk_10057D930) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[20] = v11;
  v12 = *(v11 - 8);
  v6[21] = v12;
  v13 = *(v12 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[24] = v14;
  *v14 = v6;
  v14[1] = sub_100431B34;

  return sub_1003DDB60();
}

uint64_t sub_100431B34(uint64_t a1)
{
  sub_100005F18();
  v5 = v4;
  sub_100007BC8();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v2;
  sub_100008060();
  *v10 = v9;
  *(v5 + 200) = v1;

  if (!v1)
  {
    *(v5 + 208) = a1;
  }

  sub_100007BBC();

  return _swift_task_switch(v11, v12, v13);
}

void sub_100431C48()
{
  v0[2] = v0[26];
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[13];
  v0[5] = &type metadata for RecordingExtensionConnection;
  v0[6] = &off_10062DC80;
  v4 = OBJC_IVAR___CSDAudioCallRecordingSession_baseRecordingURL;
  swift_beginAccess();
  sub_100335188(v3 + v4, v2, &unk_1006A52C0, &unk_10057D930);
  v5 = sub_10002F6F4();
  if (sub_100015468(v5, v6, v1) == 1)
  {
    sub_1000099A4(v0[19], &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    v7 = v0[13];
    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA640);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (sub_10000F96C())
    {
      v12 = v0[13];
      v13 = sub_100005274();
      v14 = swift_slowAlloc();
      v44[0] = v14;
      *v13 = 136315138;
      v0[11] = v12;
      type metadata accessor for AudioCallRecordingSession();
      v15 = v12;
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002741C(v16, v17, v44);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Recording session does not have a base recording URL! Cannot pass recording to client %s", v13, 0xCu);
      sub_100009B7C(v14);
      sub_100005F40();
      sub_100005F40();
    }

    sub_100432DAC();
    v19 = swift_allocError();
    swift_willThrow();
    sub_100009B7C(v0 + 2);
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    sub_10000AF9C(v8, qword_1006BA640);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10000F96C())
    {
      sub_100005274();
      v21 = sub_10000681C();
      v44[0] = v21;
      *v8 = 136315138;
      v0[10] = v19;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v22 = String.init<A>(reflecting:)();
      v24 = sub_10002741C(v22, v23, v44);

      *(v8 + 4) = v24;
      sub_10000E4D4(&_mh_execute_header, v25, v26, "Error ending recording extension connection: %s");
      sub_100009B7C(v21);
      sub_100005F40();
      sub_100006868();
    }

    else
    {
    }

    sub_1000173CC();

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[21];
  v30 = v0[19];
  v31 = v0[12];
  v32 = *(v29 + 32);
  v0[27] = v32;
  v0[28] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v32(v27, v30, v28);
  v33 = v31 + OBJC_IVAR___CSDCallRecordingExtensionController_mediaComposerClass;
  v0[29] = *(v31 + OBJC_IVAR___CSDCallRecordingExtensionController_mediaComposerClass);
  v34 = *(v33 + 8);
  v0[30] = v34;
  v35 = *(v34 + 8);
  v43 = v35 + *v35;
  v36 = v35[1];
  v37 = swift_task_alloc();
  v0[31] = v37;
  *v37 = v0;
  v37[1] = sub_100432214;
  v38 = v0[23];
  sub_100011274();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_100432214()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100432310()
{
  v23 = v0;
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 144);
  (*(*(v0 + 240) + 16))(*(v0 + 184));
  if (v3)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
LABEL_5:
    sub_100009B7C((v0 + 16));
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC();
    }

    v9 = type metadata accessor for Logger();
    sub_100015BB0(v9, qword_1006BA640);
    v10 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005F94();
    if (sub_10000F96C())
    {
      sub_100005274();
      v22 = sub_10000681C();
      sub_100035C34(4.8149e-34);
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v11 = sub_100007A64();
      sub_10002741C(v11, v12, &v22);
      sub_100018F58();
      *(v1 + 4) = v2;
      sub_10000E4D4(&_mh_execute_header, v13, v14, "Error ending recording extension connection: %s");
      sub_10000AA88();
      sub_100006868();
    }

    else
    {
    }

    sub_1000173CC();

    sub_100009EF4();

    return v15();
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  if (sub_100015468(v7, 1, v6) == 1)
  {
    v1 = *(v0 + 184);
    v8 = *(v0 + 168);
    sub_1000099A4(v7, &unk_1006A52C0, &unk_10057D930);
    sub_100432DAC();
    swift_allocError();
    swift_willThrow();
    (*(v8 + 8))(v1, v6);
    goto LABEL_5;
  }

  v17 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 176), v7, v6);
  v18 = *sub_100009B14((v0 + 16), *(v0 + 40));
  v19 = swift_task_alloc();
  *(v0 + 264) = v19;
  *v19 = v0;
  v19[1] = sub_1004325E4;
  v20 = *(v0 + 176);
  v21 = *(v0 + 112);

  return sub_1003DF1D4();
}

uint64_t sub_1004325E4()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

void sub_1004326E0()
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA640);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  if (v6)
  {
    v25 = v0[23];
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[15];
    v23 = v0[13];
    v24 = v0[22];
    v14 = sub_100005274();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    (*(v11 + 16))(v12, v23 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v13);
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Extension ingested recording succesfully %s", v14, 0xCu);
    sub_100009B7C(v15);
    sub_100005F40();
    sub_100005F40();

    v19 = *(v9 + 8);
    v19(v24, v10);
    v20 = v25;
  }

  else
  {

    v19 = *(v9 + 8);
    v19(v8, v10);
    v20 = v7;
  }

  v19(v20, v10);
  sub_100009B7C(v0 + 2);
  sub_1000173CC();

  sub_100009EF4();
  sub_100011274();

  __asm { BRAA            X1, X16 }
}

id sub_100432C20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallRecordingExtensionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100432CD0()
{
  sub_10000F984();
  sub_100007648();
  v2 = type metadata accessor for _ConversationRecordingContext();
  sub_100007BF0(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100035FE0;
  sub_100016244();
  sub_10001AB70();

  return sub_100431998(v10, v11, v12, v13, v14, v15);
}

unint64_t sub_100432DAC()
{
  result = qword_1006AB9E0;
  if (!qword_1006AB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB9E0);
  }

  return result;
}

uint64_t sub_100432E00(void *a1)
{
  v1 = [a1 localMemberHandleValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100432E64()
{
  v2 = type metadata accessor for _ConversationRecordingContext();
  sub_100007BF0(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100035FE4;
  v9 = sub_100016244();

  return sub_100431304(v9, v10, v11, v12, v13);
}

_BYTE *storeEnumTagSinglePayload for RecordingExtensionHostErrors(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100432FF8()
{
  result = qword_1006AB9F0;
  if (!qword_1006AB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB9F0);
  }

  return result;
}

uint64_t sub_10043304C()
{
  type metadata accessor for ConversationLinkDescriptorManager();
  v0 = swift_allocObject();
  result = sub_10043418C();
  qword_1006BA858 = v0;
  return result;
}

id sub_100433088()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(TUConversationLinkDescriptorXPCClientDataSource) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1004330F4()
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000105AC();
  sub_100433DC8();
  if (v8)
  {
    sub_100011544();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5E0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "ConversationLinkSync: Migrating local identifier", v12, 2u);
      sub_100005F40();
    }

    if (sub_100015370())
    {
      sub_1000105AC();
      sub_100434078();
    }
  }

  else
  {
    sub_1000105AC();
    sub_1004339A0();
    if (v13)
    {
      sub_100011544();
    }

    else
    {
      UUID.init()();
      UUID.uuidString.getter();
      sub_100011544();
      (*(v3 + 8))(v7, v2);
      v14 = sub_100015370();
      if (qword_1006A0B20 != -1)
      {
        sub_100008228();
      }

      v15 = type metadata accessor for Logger();
      sub_10000AF9C(v15, qword_1006BA5E0);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = sub_100005E84();
        v22 = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_10002741C(v0, v1, &v22);
        *(v18 + 12) = 1024;
        *(v18 + 14) = v14 & 1;
        _os_log_impl(&_mh_execute_header, v16, v17, "ConversationLinkSync: localGeneratorIdentifier: No local generated identifier -- creating it now {locallyGeneratedIdentifier: %s, success: %{BOOL}d}", v18, 0x12u);
        sub_100009B7C(v19);
        sub_100005F40();
        sub_100005F40();
      }
    }
  }

  return v0;
}

uint64_t sub_1004333C0()
{
  v1 = *(v0 + 16);
  Lock.withLock<A>(_:)();
  return v3;
}

void sub_100433420(void *a1@<X8>)
{
  v2 = sub_100433470();
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004334E4((v2 + 1));
    *a1 = v3;
  }
}

id sub_100433470()
{
  sub_10000F8B4();
  v0 = sub_100433EBC();
  if (v1)
  {
    v2 = sub_10000F8B4();
    v4 = sub_100433BC4(v2, v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = v0;
    if (sub_100433560(v0, 0xD000000000000014, 0x8000000100577890))
    {
      sub_10000F8B4();
      sub_100434078();
    }
  }

  return v6;
}

void sub_1004334E4(uint64_t a1)
{
  if ((sub_100433560(a1, 0xD000000000000014, 0x8000000100577890) & 1) == 0)
  {

    sub_100433FB4(a1, 0);
  }
}

id sub_100433560(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100433088();
  v7 = String._bridgeToObjectiveC()();
  v21 = 0;
  v8 = [v6 setInteger:a1 forKey:v7 error:&v21];

  if (v8)
  {
    v9 = v21;
  }

  else
  {
    v10 = v21;
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228();
    }

    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA5E0);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      sub_100007C08();
      v15 = sub_10000D670();
      v16 = sub_100005E84();
      v21 = v16;
      *v11 = 136315394;
      v17 = sub_10002741C(a2, a3, &v21);
      sub_10000AB08(v17);
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v15 = v18;
      sub_100018388(&_mh_execute_header, v19, v14, "ConversationLinkSync: Failed to store int on ConversationLinkDescriptorManager %s %@");
      sub_10028CA5C(v15);
      sub_100005F40();
      sub_100009B7C(v16);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }
  }

  return v8;
}

id sub_100433778()
{
  v0 = sub_100433088();
  v1 = String._bridgeToObjectiveC()();
  sub_100006694();
  v2 = String._bridgeToObjectiveC()();
  v19 = 0;
  v3 = [v0 setString:v1 forKey:v2 error:&v19];

  if (v3)
  {
    v4 = v19;
  }

  else
  {
    v5 = v19;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA5E0);

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      sub_100007C08();
      v10 = sub_10000D670();
      v11 = sub_100005E84();
      v19 = v11;
      *v6 = 136315394;
      v12 = sub_100006694();
      v15 = sub_10002741C(v12, v13, v14);
      sub_10000AB08(v15);
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v16;
      *v10 = v16;
      sub_100018388(&_mh_execute_header, v17, v9, "ConversationLinkSync: Failed to store string on ConversationLinkDescriptorManager %s %@");
      sub_10028CA5C(v10);
      sub_100005F40();
      sub_100009B7C(v11);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }
  }

  return v3;
}

id sub_1004339A0()
{
  v0 = sub_100433088();
  sub_100006694();
  v1 = String._bridgeToObjectiveC()();
  v19 = 0;
  v2 = [v0 stringForKey:v1 error:&v19];

  v3 = v19;
  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011544();
    v4 = v3;
  }

  else
  {
    v5 = v19;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_100008228();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA5E0);

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      sub_100007C08();
      v10 = sub_10000D670();
      v11 = sub_100005E84();
      v19 = v11;
      *v6 = 136315394;
      v12 = sub_100006694();
      v15 = sub_10002741C(v12, v13, v14);
      sub_10000AB08(v15);
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v16;
      *v10 = v16;
      sub_100018388(&_mh_execute_header, v17, v9, "ConversationLinkSync: Failed to read string in ConversationLinkDescriptorManager %s %@");
      sub_10028CA5C(v10);
      sub_100005F40();
      sub_100009B7C(v11);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }

    return 0;
  }

  return v0;
}

id sub_100433BC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100433088();
  v5 = String._bridgeToObjectiveC()();
  v18 = 0;
  v6 = [v4 integerForKey:v5 error:&v18];

  v7 = v18;
  if (v18)
  {
    v8 = qword_1006A0B20;
    v9 = v18;
    if (v8 != -1)
    {
      sub_100008228();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5E0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100007C08();
      v14 = swift_slowAlloc();
      v15 = sub_100005E84();
      v18 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10002741C(a1, a2, &v18);
      *(v13 + 12) = 2112;
      *(v13 + 14) = v9;
      *v14 = v7;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, v12, "ConversationLinkSync: Failed to read int in ConversationLinkDescriptorManager %s %@", v13, 0x16u);
      sub_10028CA5C(v14);
      sub_100005F40();
      sub_100009B7C(v15);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }

    return 0;
  }

  else if (v6 == NSNotFound.getter())
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100433DC8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (!v2)
  {
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0(&v5, &v4);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100433EBC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (!v2)
  {
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0(&v5, &v4);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_100433FB4(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  v5 = String._bridgeToObjectiveC()();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

void sub_100434078()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

uint64_t sub_10043410C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_100434134()
{
  sub_10043410C();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10043418C()
{
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = Lock.init()();
  *(v0 + 24) = 0;
  return v0;
}

void sub_1004341EC()
{
  sub_100005EF4();
  v84 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v77 = type metadata accessor for LanguageManager();
  v7 = sub_100007FEC(v77);
  v82 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for Locale();
  v16 = sub_100007FEC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100007FDC();
  v24 = (v23 - v22);
  v73 = [objc_allocWithZone(CSDDeviceLockStateObserver) initWithQueue:v6];
  v70 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v68 = v18;
  v25 = *(v18 + 16);
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  v80 = v24;
  v69 = v2;
  v83 = v15;
  v76 = v25;
  v25(v24, v2, v15);
  type metadata accessor for URL();
  v72 = v6;
  v78 = v73;
  v75 = v4;
  v26 = Dictionary.init(dictionaryLiteral:)();
  v27 = Dictionary.init(dictionaryLiteral:)();
  v28 = sub_1002E624C();
  [objc_allocWithZone(TUFeatureFlags) init];
  v81 = v14;
  LanguageManager.init(featureFlags:)();
  v74 = [objc_allocWithZone(TUFeatureFlags) init];
  v29 = objc_allocWithZone(v0);
  v30 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_lockStateObserver;
  *&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_lockStateObserver] = 0;
  v31 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock];
  v31->_os_unfair_lock_opaque = 0;
  LOBYTE(v31[1]._os_unfair_lock_opaque) = 0;
  v32 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_delegate];
  *(v32 + 4) = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_messageMap;
  *&v29[v33] = Dictionary.init(dictionaryLiteral:)();
  *&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_callCenterObserver] = v70;
  v34 = sub_100006AF0(0, &qword_1006AB198, VMVoicemailManager_ptr);
  v71 = v70;
  sub_1000052D0();
  v39 = sub_100435554(v35, v36, v37, v38);
  v40 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_voicemailManager];
  *v40 = v39;
  *(v40 + 8) = *v90;
  *(v40 + 3) = v34;
  *(v40 + 4) = &off_100622F28;
  *&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue] = v72;
  v41 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict];
  *v41 = 0;
  *(v41 + 1) = v26;
  v42 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap];
  *v42 = 0;
  *(v42 + 1) = v27;
  v43 = v72;

  os_unfair_lock_lock(v31);
  LOBYTE(v31[1]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v31);
  v44 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_ttsService];
  *v44 = v28;
  *(v44 + 1) = &off_100621DD8;
  v45 = *&v29[v30];
  *&v29[v30] = v73;
  v79 = v78;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_10003A270(v91, v90, &unk_1006ABCC0, &qword_1005879C8);
  if (*&v90[24])
  {
    sub_10002F0C8(v90, &v87);
  }

  else
  {
    sub_10040A5E8(v93);
    v88 = &type metadata for GreetingsChecksums;
    v89 = &off_10062F718;
    v46 = swift_allocObject();
    *&v87 = v46;
    v47 = v93[1];
    *(v46 + 16) = v93[0];
    *(v46 + 32) = v47;
    *(v46 + 48) = v94;
    if (*&v90[24])
    {
      sub_100009A04(v90, &unk_1006ABCC0, &qword_1005879C8);
    }
  }

  *v90 = 0;
  memset(&v90[8], 0, 40);
  sub_10002F0C8(&v87, &v90[8]);
  v48 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsChecksums];
  v50 = *&v90[16];
  v49 = *&v90[32];
  *v48 = *v90;
  *(v48 + 1) = v50;
  *(v48 + 2) = v49;
  v51 = v43;
  v52 = [objc_allocWithZone(CSDCoreTelephonyClient) initWithQueue:v43 shouldRegisterForECBMNotification:0];
  *&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient] = v52;
  v53 = &v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck];
  *v53 = sub_1004355CC;
  v53[1] = 0;
  (*(v82 + 16))(&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_languageManager], v81, v77);
  *&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_speechAssetManager] = v75;
  v76(&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_locale], v80, v83);
  *&v29[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags] = v74;
  v86.receiver = v29;
  v86.super_class = v84;
  v54 = v75;
  v55 = v74;
  v56 = objc_msgSendSuper2(&v86, "init");
  v57 = *&v56[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient];
  if (v57)
  {
    v58 = v56;
    swift_unknownObjectRetain();

    v59 = v58;
    [v57 setDelegate:v59];
    swift_unknownObjectRelease();
    [*&v54[OBJC_IVAR___CSDSpeechAssetManager_delegates] addObject:v59];

    v60 = *&v59[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_ttsService];
    sub_100006890();
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v62 = *(v60 + 104);
    *(v60 + 96) = sub_100446378;
    *(v60 + 104) = v61;
    swift_unknownObjectRelease();

    v63 = *&v59[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_lockStateObserver];
    if (v63)
    {
      sub_100006890();
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v90[32] = sub_100446380;
      *&v90[40] = v64;
      *v90 = _NSConcreteStackBlock;
      *&v90[8] = 1107296256;
      *&v90[16] = sub_100004CEC;
      *&v90[24] = &unk_100630B30;
      v61 = _Block_copy(v90);
      v62 = *&v90[40];
      swift_unknownObjectRetain();

      [v63 performBlockAfterFirstUnlock:v61];
      swift_unknownObjectRelease();
      _Block_release(v61);
    }

    v65 = [objc_opt_self() defaultCenter];
    [v65 addObserver:v59 selector:"handleVMAccountsDidChange" name:VMVoicemailManagerAccountsDidChangeNotification object:0];

    swift_unknownObjectRelease();
    (*(v82 + 8))(v81, v77);
    v85 = *(v68 + 8);
    v85(v80, v83);
    sub_100009A04(v91, &unk_1006ABCC0, &qword_1005879C8);
    v66 = v59;
    LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    sub_10001E440();
    *v90 = Locale.identifier.getter();
    *&v90[8] = v67;
    *&v90[16] = v61;
    *&v90[24] = v62;
    *&v90[32] = &OBJC_IVAR___CSDUserNotificationController_clientManager;
    sub_100299234();

    sub_100435BC8();
    sub_100435650();
    sub_10043625C();

    v85(v69, v83);
    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100434B60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620E08, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100434BAC(char a1)
{
  result = 0x4C746C7561666564;
  switch(a1)
  {
    case 1:
      v3 = 10;
      goto LABEL_5;
    case 2:
      v3 = 5;
LABEL_5:
      result = v3 | 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100434CA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100434B60(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100434CD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100434BAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100434D04()
{
  v1 = v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_100434D44(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__afterFirstUnlock;
  os_unfair_lock_lock(v3);
  *(v3 + 4) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_100434D90(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsChecksums);
  os_unfair_lock_lock(v3);
  sub_100445858(&v3[2], a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100434DE4(void *a1)
{
  v2 = v1 + *a1;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  return v3;
}

void sub_100434E28(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 8);

  *(v4 + 8) = a1;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_100434E78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_delegate;
  swift_beginAccess();
  sub_100444DDC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_100434ED8()
{
  sub_100005EF4();
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v2);
  v4 = *(v3 + 64);
  sub_100006688();
  __chkstk_darwin(v5, v6);
  sub_100006EC4();
  v7 = type metadata accessor for DispatchPredicate();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *(v15 - v14) = v17;
  (*(v10 + 104))(v15 - v14, enum case for DispatchPredicate.onQueue(_:), v7);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v16, v7);
  if (v17)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080B0();
LABEL_3:
  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006BA5F8);
  v20 = v0;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = &OBJC_IVAR___CSDUserNotificationController_clientManager;
  v24 = &OBJC_IVAR___CSDUserNotificationController_clientManager;
  v25 = &unk_1006BA000;
  if (os_log_type_enabled(v21, v22))
  {
    v26 = swift_slowAlloc();
    v57.n128_u64[0] = sub_100007630();
    *v26 = 67110146;
    v27 = sub_100434D04();
    *(v26 + 4) = v27 & 1;
    *(v26 + 8) = 1024;
    v28 = *&v20[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck + 8];
    *(v26 + 10) = (*&v20[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck])(v27) & 1;
    *(v26 + 14) = 2080;
    sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    type metadata accessor for URL();
    v29 = Dictionary.description.getter();
    v31 = v30;

    v32 = sub_10002741C(v29, v31, &v57);

    *(v26 + 16) = v32;
    *(v26 + 24) = 2080;
    v33 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    v35 = v34;
    v37 = v36;
    v61.n128_u64[0] = Locale.identifier.getter();
    v61.n128_u64[1] = v38;
    v62 = v33;
    v63 = v35;
    v64 = v37;
    v39 = String.init<A>(reflecting:)();
    v41 = sub_10002741C(v39, v40, &v57);

    *(v26 + 26) = v41;
    *(v26 + 34) = 1024;
    v42 = *&v20[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_speechAssetManager];
    v43 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    v45 = v44;
    v47 = v46;
    v61.n128_u64[0] = Locale.identifier.getter();
    v61.n128_u64[1] = v48;
    v62 = v43;
    v63 = v45;
    v64 = v47;
    v25 = &unk_1006BA000;
    LOBYTE(v47) = sub_1000524B0(&v61);

    v23 = &OBJC_IVAR___CSDUserNotificationController_clientManager;

    *(v26 + 36) = v47 & 1;

    _os_log_impl(&_mh_execute_header, v21, v22, "afterFirstUnlock: %{BOOL}d isSupportedLocale: %{BOOL}d greetingsDict: %s configuration: %s hasSpeechAssets: %{BOOL}d", v26, 0x28u);
    swift_arrayDestroy();
    sub_100005F40();
    v24 = &OBJC_IVAR___CSDUserNotificationController_clientManager;
    sub_100005F40();
  }

  else
  {
  }

  v49 = sub_100434D04();
  if (v49)
  {
    v50 = *&v20[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck + 8];
    if ((*&v20[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck])(v49))
    {
      v51 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
      sub_10000FB38();
      sub_1002CB708(v51, v1);

      v52 = type metadata accessor for URL();
      LODWORD(v51) = sub_100015468(v1, 1, v52);
      sub_100009A04(v1, &unk_1006A52C0, &unk_10057D930);
      if (v51 != 1)
      {
        v53 = *&v20[v25[268]];
        v54 = v24[367];
        v55 = &v20[v23[365]];
        LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
        sub_10001E440();
        v57.n128_u64[0] = Locale.identifier.getter();
        v57.n128_u64[1] = v56;
        v58 = v21;
        v59 = v24;
        v60 = v22;
        sub_1000524B0(&v57);
      }
    }
  }

  sub_100005EDC();
}

uint64_t sub_1004353B4()
{
  v4 = v0;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v5);
  v7 = *(v6 + 64);
  sub_100006688();
  __chkstk_darwin(v8, v9);
  v11 = &v20 - v10;
  if ((sub_100434D04() & 1) == 0)
  {
    return 1;
  }

  v12 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck);
  v13 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck + 8);
  if ((v12() & 1) == 0)
  {
    return 2;
  }

  v14 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  sub_10000FB38();
  sub_1002CB708(v14, v11);

  v15 = type metadata accessor for URL();
  LODWORD(v14) = sub_100015468(v11, 1, v15);
  sub_100009A04(v11, &unk_1006A52C0, &unk_10057D930);
  if (v14 == 1)
  {
    return 3;
  }

  v17 = *(v4 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_speechAssetManager);
  LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  sub_10001E440();
  v21.n128_u64[0] = Locale.identifier.getter();
  v21.n128_u64[1] = v18;
  v22 = v1;
  v23 = v2;
  v24 = v3;
  v19 = sub_1000524B0(&v21);

  if (v19)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

id sub_100435554(char a1, char a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStateSync:a1 & 1 mailSync:a2 & 1 delegate:a3 delegateQueue:a4];
  swift_unknownObjectRelease();

  return v5;
}

void sub_1004355F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100435650();
  }
}

void sub_100435650()
{
  sub_100005EF4();
  v1 = v0;
  v55 = v2;
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v3);
  v5 = *(v4 + 64);
  sub_100006688();
  __chkstk_darwin(v6, v7);
  v59 = v49 - v8;
  sub_10000D414();
  v9 = type metadata accessor for URL();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = (v17 - v16);
  sub_10043D9F4();
  sub_10043DA20(v18);
  v19 = *(v12 + 8);
  v58 = v9;
  v53 = v19;
  v54 = v12 + 8;
  v19(v18, v9);
  v20 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_messageMap);
  v22 = *(v20 + 64);
  v21 = v20 + 64;
  v23 = 1 << *(*(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_messageMap) + 32);
  sub_10000C830();
  v26 = v25 & v24;
  v56 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags;
  v57 = v27;
  v29 = (v28 + 63) >> 6;
  v49[5] = v12 + 16;
  v50 = v12;
  sub_10000A8EC();
  v52 = v30;

  v31 = 0;
  v51 = "ardActionIdentifier";
  v49[3] = "specialUnknownMessage";
  v49[4] = "initialUnknownReceptionist";
  v49[1] = "holdReceptionist";
  v49[2] = "initialKnownReceptionist";
  while (v26)
  {
LABEL_7:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v31 << 6);
    v35 = (*(v57 + 48) + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(*(v57 + 56) + v34);
    v39 = *(v1 + v56);

    if ([v39 receptionistEnabled])
    {
LABEL_11:
      v41 = sub_1004389A4();
      if (*(v41 + 16) && (v42 = sub_1002DA750(v38), (v43 & 1) != 0))
      {
        (*(v50 + 16))(v59, *(v41 + 56) + *(v50 + 72) * v42, v58);
        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v46 = v58;
      v45 = v59;
      sub_10000AF74(v59, v44, 1, v58);

      if (sub_100015468(v45, 1, v46) == 1)
      {
        goto LABEL_25;
      }

      if (v36 != 0xD000000000000021 || v52 != v37)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v48 = v59;
      sub_10043D69C();

      v53(v48, v58);
    }

    else
    {
      switch(v38)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v40)
          {
            goto LABEL_11;
          }

          break;
        default:

          goto LABEL_11;
      }
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      sub_100005EDC();
      return;
    }

    v26 = *(v21 + 8 * v32);
    ++v31;
    if (v26)
    {
      v31 = v32;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_100435A5C()
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "after first unlock", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100434D44(1);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_100435BC8();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_10043609C();
  }
}

void sub_100435BC8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v10 = *&v1[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient];
    if (!v10)
    {
      __break(1u);

      sub_100022DDC();

      __break(1u);
      return;
    }

    v11 = [v10 subscriptions];
    if (!v11)
    {
      v19 = Dictionary.init(dictionaryLiteral:)();
LABEL_23:
      sub_100434E28(v19, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
      if (qword_1006A0B28 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v12 = v11;
    v13 = sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    sub_10037DB98();
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v42[0] = _swiftEmptyDictionarySingleton;
    v40[1] = v14;
    v40[2] = v13;
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v14 = v42[1];
      v15 = v42[2];
      v16 = v42[3];
      v17 = v42[4];
      v18 = v42[5];
    }

    else
    {
      v20 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v21 = ~v20;
      v22 = -v20;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v18 = v23 & *(v14 + 56);

      v16 = v21;
      v17 = 0;
    }

    v40[0] = v16;
    v24 = (v16 + 64) >> 6;
    if (v14 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v25 = v17;
      v26 = v18;
      v27 = v17;
      if (!v18)
      {
        break;
      }

LABEL_16:
      v28 = (v26 - 1) & v26;
      v29 = *(*(v14 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!v29)
      {
LABEL_22:
        sub_100022DDC();

        v19 = v42[0];
        goto LABEL_23;
      }

      while (1)
      {
        v41 = v29;
        sub_100436CF8(v42, &v41, v1);

        v17 = v27;
        v18 = v28;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v30 = __CocoaSet.Iterator.next()();
        if (v30)
        {
          v40[3] = v30;
          swift_dynamicCast();
          v29 = v41;
          v27 = v17;
          v28 = v18;
          if (v41)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_22;
      }

      v26 = *(v15 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_24:
  v31 = type metadata accessor for Logger();
  sub_10000AF9C(v31, qword_1006BA5F8);
  v32 = v1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315138;
    v41 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    v37 = String.init<A>(reflecting:)();
    v39 = sub_10002741C(v37, v38, v42);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "phoneNumberToAccountUUIDMap: %s", v35, 0xCu);
    sub_100009B7C(v36);
  }

  sub_100437058();
}

void sub_10043609C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck);
  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_localeCheck + 8);
  if (v2())
  {
    sub_1004378BC();
    v4 = *(v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_speechAssetManager);
    LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    Locale.identifier.getter();
    sub_100051D0C();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5F8);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "current locale is not supported for AnsweringMachine, not downloading assets", v7, 2u);
    }
  }
}

void sub_10043625C()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v95 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4, v6);
  v98 = &v91 - v8;
  __chkstk_darwin(v7, v9);
  v106 = &v91 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v105 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v91 - v19;
  __chkstk_darwin(v18, v21);
  v23 = &v91 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24, v27);
  v29 = (&v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = v0;
  v30 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v29 = v30;
  (*(v25 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v24);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v29, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_27;
  }

  v104 = objc_opt_self();
  v32 = [v104 defaultManager];
  sub_100443684();
  URL.path.getter();
  v33 = *(v12 + 8);
  v108 = v12 + 8;
  v100 = v33;
  v33(v23, v11);
  v34 = String._bridgeToObjectiveC()();

  v110[0] = 0;
  v35 = [v32 contentsOfDirectoryAtPath:v34 error:v110];

  v36 = v110[0];
  if (v35)
  {
    v37 = v23;
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v36;

    v41 = *(v38 + 16);
    if (v41)
    {
      v101 = (v12 + 16);
      v102 = "";
      v99 = v12;
      v94 = (v12 + 32);
      v92 = v38;
      v42 = (v38 + 40);
      *&v40 = 136315138;
      v93 = v40;
      v43 = v100;
      v96 = v20;
      v97 = v11;
      v103 = v37;
      do
      {
        v44 = *(v42 - 1);
        v45 = *v42;

        v46 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
        if (*(v46 + 16) && (v47 = sub_100005208(), (v48 & 1) != 0))
        {
          v49 = v47;

          v50 = v106;
          (*(v99 + 16))(v106, *(v46 + 56) + *(v99 + 72) * v49, v11);

          sub_10000AF74(v50, 0, 1, v11);
          sub_100009A04(v50, &unk_1006A52C0, &unk_10057D930);
        }

        else
        {

          v51 = v106;
          sub_10000AF74(v106, 1, 1, v11);
          sub_100009A04(v51, &unk_1006A52C0, &unk_10057D930);
          v52 = v105;
          sub_100443684();
          v107 = v44;
          URL.appendingPathComponent(_:)();
          v43(v52, v11);
          URL.appendingPathComponent(_:)();
          v43(v37, v11);
          v53 = [v104 defaultManager];
          URL.path.getter();
          v54 = v20;
          v55 = v11;
          v56 = String._bridgeToObjectiveC()();

          LODWORD(v51) = [v53 fileExistsAtPath:v56];

          if (v51)
          {
            if (qword_1006A0B28 != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            sub_10000AF9C(v57, qword_1006BA5F8);

            v58 = Logger.logObject.getter();
            v59 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v110[1] = v45;
              v111 = v61;
              *v60 = v93;
              v110[0] = v107;

              v62 = String.init<A>(reflecting:)();
              v64 = sub_10002741C(v62, v63, &v111);

              *(v60 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v58, v59, "adding FS object item (%s) to greetingsDict", v60, 0xCu);
              sub_100009B7C(v61);
              v65 = v98;

              v20 = v96;
              v11 = v97;
              v37 = v103;
              v43 = v100;
            }

            else
            {

              v20 = v96;
              v11 = v97;
              v37 = v103;
              v43 = v100;
              v65 = v98;
            }

            (*v101)(v65, v20, v11);
            sub_10000AF74(v65, 0, 1, v11);
            v66 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
            if (sub_100015468(v65, 1, v11) == 1)
            {
              sub_100009A04(v65, &unk_1006A52C0, &unk_10057D930);
              v67 = sub_100005208();
              if (v68)
              {
                v69 = v67;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v110[0] = v66;
                v71 = v66[3];
                sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
                v72 = isUniquelyReferenced_nonNull_native;
                v43 = v100;
                _NativeDictionary.ensureUnique(isUnique:capacity:)(v72, v71);
                v66 = v110[0];
                v73 = *(*(v110[0] + 6) + 16 * v69 + 8);

                (*(v99 + 32))(v95, v66[7] + *(v99 + 72) * v69, v11);
                _NativeDictionary._delete(at:)();
                v74 = 0;
              }

              else
              {
                v74 = 1;
              }

              v80 = v95;
              sub_10000AF74(v95, v74, 1, v11);

              sub_100009A04(v80, &unk_1006A52C0, &unk_10057D930);
            }

            else
            {
              (*v94)(v37, v65, v11);
              v75 = swift_isUniquelyReferenced_nonNull_native();
              v110[0] = v66;
              sub_10037938C(v37, v107, v45, v75, v76, v77, v78, v79, v91, v92, v93, *(&v93 + 1), v94, v95);

              v66 = v110[0];
            }

            sub_100434E28(v66, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
            v43(v20, v11);
          }

          else
          {
            v43(v54, v55);

            v11 = v55;
            v20 = v54;
            v37 = v103;
          }
        }

        v42 += 2;
        --v41;
      }

      while (v41);
    }
  }

  else
  {
    v81 = v110[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1006A0B28 != -1)
  {
    goto LABEL_31;
  }

LABEL_27:
  v82 = type metadata accessor for Logger();
  sub_10000AF9C(v82, qword_1006BA5F8);
  v83 = v109;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v110[0] = v87;
    *v86 = 136315138;
    v111 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    sub_10026D814(&unk_1006ABCA0, &qword_1005879C0);
    v88 = String.init<A>(reflecting:)();
    v90 = sub_10002741C(v88, v89, v110);

    *(v86 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v84, v85, "updateGreetingsDictFromFileSystem greetingsDict: %s", v86, 0xCu);
    sub_100009B7C(v87);
  }
}

uint64_t sub_100436CF8(uint64_t *a1, void **a2, uint64_t a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA5F8);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Subscription: %@", v16, 0xCu);
    sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
  }

  result = sub_10039BD94(v13, &selRef_labelID);
  if (v20)
  {
    v31[1] = v3;
    result = sub_10039BD94(v13, &selRef_phoneNumber);
    if (v21)
    {
      v22 = *(a3 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_coreTelephonyClient);
      if (v22)
      {
        v23 = [v13 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v32 + 8))(v10, v6);
        v25 = [v22 accountISOCountryCodeForSubscriptionUUID:isa];

        if (v25)
        {
          v26 = String._bridgeToObjectiveC()();
          v27 = CFPhoneNumberCreate();

          String = CFPhoneNumberCreateString();
          if (String)
          {

            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

        v29 = v33;
        v30 = *v33;
        swift_isUniquelyReferenced_nonNull_native();
        v34 = *v29;
        sub_100379EC8();

        *v29 = v34;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100437058()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v2 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = (&v67 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v77 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v78 = &v67 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *v23 = v24;
  (*(v19 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v18);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v23, v18);
  if ((v26 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (qword_1006A0B28 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v27 = type metadata accessor for Logger();
    v79 = sub_10000AF9C(v27, qword_1006BA5F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "updateFromDefaultGreetingIfNecessary", v30, 2u);
    }

    v31 = objc_opt_self();
    v32 = [v31 tu_defaults];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 stringForKey:v33];

    if (!v34)
    {
      break;
    }

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    UUID.init(uuidString:)();
    if (sub_100015468(v9, 1, v10) == 1)
    {

      sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_28:
      v62 = [v31 tu_defaults];
      v63 = String._bridgeToObjectiveC()();
      [v62 removeObjectForKey:v63];

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "not copying old default greeting", v66, 2u);
      }

      return;
    }

    v71 = v35;
    v38 = v78;
    v74 = *(v11 + 32);
    v75 = v11 + 32;
    v74(v78, v9, v10);
    if ((sub_10043BB4C() & 1) == 0)
    {
      (*(v11 + 8))(v38, v10);

      goto LABEL_28;
    }

    v39 = [v31 tu_defaults];
    v9 = String._bridgeToObjectiveC()();
    [v39 removeObjectForKey:v9];

    v40 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
    v42 = 0;
    v44 = v40 + 64;
    v43 = *(v40 + 64);
    v76 = v40;
    v45 = 1 << *(v40 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v43;
    v48 = (v45 + 63) >> 6;
    v72 = (v11 + 8);
    v73 = 0;
    *&v41 = 138412290;
    v69 = v41;
    v49 = v77;
    v70 = v6;
    while (v47)
    {
      v11 = v42;
LABEL_17:
      v50 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v51 = *(v76 + 56) + ((v11 << 10) | (16 * v50));
      v9 = *v51;
      v52 = *(v51 + 8);

      UUID.init(uuidString:)();
      if (sub_100015468(v6, 1, v10) == 1)
      {

        sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
        v42 = v11;
      }

      else
      {
        v74(v49, v6, v10);
        if (sub_10043BB4C())
        {
          v53 = v9;
          v9 = v73;
          sub_100443C78(v71, v37, v53);
          if (v9)
          {

            swift_errorRetain();
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.error.getter();

            v56 = os_log_type_enabled(v54, v55);
            v6 = v70;
            if (v56)
            {
              v57 = swift_slowAlloc();
              v73 = v9;
              v9 = v57;
              v67 = swift_slowAlloc();
              v68 = v54;
              *v9 = v69;
              swift_errorRetain();
              v58 = _swift_stdlib_bridgeErrorToNSError();
              *(v9 + 1) = v58;
              v59 = v67;
              *v67 = v58;
              v60 = v55;
              v61 = v68;
              _os_log_impl(&_mh_execute_header, v68, v60, "failed to copy default greeting to new SIM: %@", v9, 0xCu);
              sub_100009A04(v59, &unk_1006A2630, &qword_10057CB40);
            }

            else
            {
            }

            v49 = v77;
            (*v72)(v77, v10);
            v73 = 0;
            v42 = v11;
          }

          else
          {
            v73 = 0;
            v49 = v77;
            (*v72)(v77, v10);

            v42 = v11;
            v6 = v70;
          }
        }

        else
        {
          (*v72)(v49, v10);

          v42 = v11;
          v6 = v70;
        }
      }
    }

    while (1)
    {
      v11 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v11 >= v48)
      {

        sub_100442B38();

        (*v72)(v78, v10);
        return;
      }

      v47 = *(v44 + 8 * v11);
      ++v42;
      if (v47)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}

uint64_t sub_1004378BC()
{
  v1 = v0;
  v26 = type metadata accessor for UUID();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v26, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *v12 = v13;
  (*(v8 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v12, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_10003A270(v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_voicemailManager, &v27, &qword_1006ABC98, &qword_1005879B8);
  if (v28)
  {
    sub_10002F0C8(&v27, v29);
    v16 = v30;
    v17 = v31;
    sub_100009B14(v29, v30);
    v18 = (*(v17 + 8))(v16, v17);
    result = sub_10000B6F4(v18);
    if (!result)
    {
LABEL_10:

      return sub_100009B7C(v29);
    }

    v19 = result;
    if (result >= 1)
    {
      v20 = 0;
      v21 = (v2 + 8);
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(v18 + 8 * v20 + 32);
        }

        v23 = v22;
        ++v20;
        v24 = [v22 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100439100(v6);
        (*v21)(v6, v26);
      }

      while (v19 != v20);
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  return sub_100009A04(&v27, &qword_1006ABC98, &qword_1005879B8);
}

void sub_100437B94()
{
  sub_100005EF4();
  v178 = v3;
  v179 = v2;
  v177 = type metadata accessor for URL();
  v4 = sub_100007FEC(v177);
  v175 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_10000F4E8();
  v167 = v9;
  sub_100006838();
  __chkstk_darwin(v10, v11);
  sub_10000C1C4();
  v172 = v12;
  sub_10000D414();
  v13 = type metadata accessor for UUID();
  v14 = sub_100007FEC(v13);
  v173 = v15;
  v174 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007FDC();
  sub_100006EC4();
  v19 = type metadata accessor for LanguageManager();
  v20 = sub_100007FEC(v19);
  v170 = v21;
  v171 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20, v24);
  sub_100007FDC();
  v169 = v26 - v25;
  v27 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v28 = sub_100007BF0(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  sub_10000F4E8();
  v168 = v32;
  sub_100006838();
  v35 = __chkstk_darwin(v33, v34);
  v37 = &v164[-v36];
  v39 = __chkstk_darwin(v35, v38);
  v41 = &v164[-v40];
  v43 = __chkstk_darwin(v39, v42);
  v45 = &v164[-v44];
  v47 = __chkstk_darwin(v43, v46);
  v49 = &v164[-v48];
  __chkstk_darwin(v47, v50);
  sub_10000C1C4();
  v176 = v51;
  sub_10000D414();
  v52 = type metadata accessor for DispatchPredicate();
  v53 = sub_100007FEC(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  __chkstk_darwin(v53, v58);
  sub_100007FDC();
  v61 = v60 - v59;
  v62 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *(v60 - v59) = v62;
  (*(v55 + 104))(v60 - v59, enum case for DispatchPredicate.onQueue(_:), v52);
  v63 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v65 = *(v55 + 8);
  v64 = v55 + 8;
  v65(v61, v52);
  if (v62)
  {
    v64 = v0;
    if ([*(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags) receptionistEnabled] && objc_msgSend(v179, "receptionistState"))
    {
      v45 = v176;
      v66 = v177;
      sub_10000AF74(v176, 1, 1, v177);
      v52 = v179;
      v1 = "com.apple.callservicesd.shareplay-session-server-terminated";
      switch([v179 receptionistState])
      {
        case 1u:
          if (([v52 specialUnknown] & 1) == 0)
          {
            [v52 isKnownCaller];
          }

          goto LABEL_41;
        case 3u:
        case 4u:
          if (qword_1006A0B28 == -1)
          {
            goto LABEL_6;
          }

          goto LABEL_76;
        case 6u:
          goto LABEL_41;
        case 7u:
          URL.init(fileURLWithPath:)();
          sub_100009A04(v45, &unk_1006A52C0, &unk_10057D930);
          sub_100007C20();
          sub_10000AF74(v120, v121, v122, v66);
          sub_100445BE8(v49, v45, &unk_1006A52C0, &unk_10057D930);
          goto LABEL_35;
        default:
          if (qword_1006A0B28 != -1)
          {
            sub_1000080B0();
          }

          v112 = type metadata accessor for Logger();
          sub_10000AF9C(v112, qword_1006BA5F8);
          v113 = v52;
          v92 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v92, v114))
          {
            v115 = sub_100005274();
            v116 = sub_100005E84();
            v181 = v116;
            *v115 = 136315138;
            v180 = [v113 receptionistState];
            type metadata accessor for TUCallReceptionistState(0);
            v117 = String.init<A>(reflecting:)();
            v119 = sub_10002741C(v117, v118, &v181);

            *(v115 + 4) = v119;
            _os_log_impl(&_mh_execute_header, v92, v114, "invalid receptionist state for greeting: %s", v115, 0xCu);
            sub_100009B7C(v116);
            sub_100008AE8();
            sub_100005F40();
          }

          goto LABEL_33;
      }
    }

    v76 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    sub_10000FB38();
    sub_1002CB708(v76, v45);

    v77 = *(sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap) + 16);

    if (!v77)
    {
      goto LABEL_35;
    }

    v78 = *(sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap) + 16);

    if (v78 == 1)
    {
      v79 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
      sub_1002E8C30(v79);
      v81 = v80;

      if (v81)
      {
        v82 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
        sub_1002CB708(v82, v41);

        if (sub_1000089E4(v41) != 1)
        {
          sub_100009A04(v45, &unk_1006A52C0, &unk_10057D930);
          (*(v175 + 32))(v178, v41, v82);
          sub_100007C20();
          sub_10000AF74(v104, v105, v106, v82);
LABEL_72:
          sub_100005EDC();
          return;
        }

        sub_100009A04(v41, &unk_1006A52C0, &unk_10057D930);
      }
    }

    v83 = v179;
    v84 = [v179 provider];
    v85 = [v84 isTelephonyProvider];

    if (v85)
    {
      v86 = [v83 localSenderIdentityAccountUUID];
      if (!v86)
      {
LABEL_35:
        sub_100445BE8(v45, v178, &unk_1006A52C0, &unk_10057D930);
        goto LABEL_72;
      }

      v87 = v86;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      v88 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
      sub_1002CB708(v88, v37);

      (*(v173 + 8))(v1, v174);
      if (sub_1000089E4(v37) == 1)
      {
        v89 = v37;
LABEL_18:
        sub_100009A04(v89, &unk_1006A52C0, &unk_10057D930);
        goto LABEL_35;
      }

      sub_100009A04(v45, &unk_1006A52C0, &unk_10057D930);
      v107 = *(v175 + 32);
      v108 = v172;
      v107(v172, v37, v88);
      goto LABEL_28;
    }

    v90 = *(v64 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_callCenterObserver);
    if (v90)
    {
      v91 = [v90 activeConversationForCall:v83];
      if (!v91)
      {
        goto LABEL_35;
      }

      v92 = v91;
      v93 = [v91 localMember];
      if (!v93)
      {
        goto LABEL_33;
      }

      v94 = v93;
      v95 = [v93 handle];

      v96 = sub_1004450E0(v95, &selRef_normalizedValue);
      if (!v97 || (v98 = v96, v99 = v97, v100 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap), sub_1002CB47C(v98, v99, v100), v102 = v101, , , !v102))
      {
LABEL_33:

        goto LABEL_35;
      }

      v88 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
      v103 = v168;
      sub_1002CB708(v88, v168);

      if (sub_1000089E4(v103) == 1)
      {
        v89 = v103;
        goto LABEL_18;
      }

      sub_100009A04(v45, &unk_1006A52C0, &unk_10057D930);
      v107 = *(v175 + 32);
      v108 = v167;
      v107(v167, v103, v88);
LABEL_28:
      v107(v45, v108, v88);
      sub_100007C20();
      sub_10000AF74(v109, v110, v111, v88);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_78;
  }

  while (1)
  {
    __break(1u);
LABEL_76:
    sub_1000080B0();
LABEL_6:
    v67 = type metadata accessor for Logger();
    sub_10000AF9C(v67, qword_1006BA5F8);
    v68 = v52;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = sub_100005274();
      v72 = sub_100005E84();
      v181 = v72;
      *v71 = *(v1 + 460);
      v73 = [v68 receptionistSession];
      if (v73)
      {
        v73 = sub_1004450E0(v73, &selRef_predictedName);
        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      v1 = sub_10001E478(v73, v75);

      v123 = sub_1000060A8();
      v126 = sub_10002741C(v123, v124, v125);

      *(v71 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v69, v70, "name: %s", v71, 0xCu);
      sub_100009B7C(v72);
      sub_100005F40();
      sub_100008AE8();
    }

LABEL_41:
    v127 = *(v64 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_messageMap);
    v128 = *(v127 + 64);
    v52 = (v127 + 64);
    v129 = *(v127 + 32);
    sub_10000C830();
    v131 = v130;
    v134 = v133 & v132;
    v136 = (v135 + 63) >> 6;
    sub_10000A8EC();
    v172 = v137;
    v173 = v138;
    sub_10000A8EC();
    v167 = v139;
    v168 = v140;
    sub_10000A8EC();
    v177 = v141;
    swift_bridgeObjectRetain_n();
    v142 = 0;
    v165 = v131;
    v175 = v131 - 1;
    v166 = v64;
    if (v134)
    {
      break;
    }

LABEL_43:
    while (1)
    {
      v64 = v142 + 1;
      if (__OFADD__(v142, 1))
      {
        break;
      }

      if (v64 >= v136)
      {

        v153 = v176;
        goto LABEL_71;
      }

      v134 = *(v52 + v64);
      ++v142;
      if (v134)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v64 = v142;
LABEL_46:
    v143 = __clz(__rbit64(v134));
    v134 &= v134 - 1;
    v144 = v143 | (v64 << 6);
    v145 = *(v127 + 56);
    v146 = (*(v127 + 48) + 16 * v144);
    v147 = v146[1];
    v174 = *v146;
    v1 = 0xEA00000000004D56;
    v148 = 0x4C746C7561666564;
    switch(*(v145 + v144))
    {
      case 1:
        v148 = 0xD00000000000001ALL;
        v1 = v177;
        break;
      case 2:
        v148 = 0xD000000000000015;
        v1 = v167;
        break;
      case 3:
        v148 = 0xD000000000000018;
        v1 = v168;
        break;
      case 4:
        v148 = 0xD000000000000010;
        v1 = v172;
        break;
      case 5:
        v148 = 0xD000000000000011;
        v1 = v173;
        break;
      default:
        break;
    }

    v149 = 0xD00000000000001ALL;
    v150 = v177;
    switch(v175)
    {
      case 1:
        v149 = 0xD000000000000015;
        v150 = v167;
        break;
      case 2:
        v149 = 0xD000000000000018;
        v150 = v168;
        break;
      case 3:
        v150 = v172;
        v149 = 0xD000000000000010;
        break;
      case 4:
        v149 = 0xD000000000000011;
        v150 = v173;
        break;
      default:
        break;
    }

    if (v148 == v149 && v150 == v1)
    {

      goto LABEL_68;
    }

    v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v152)
    {
      break;
    }

    v142 = v64;
    if (!v134)
    {
      goto LABEL_43;
    }
  }

LABEL_68:

  v155 = v169;
  v154 = v170;
  v156 = v171;
  (*(v170 + 16))(v169, v166 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_languageManager, v171);
  v157 = TUBundle();
  v153 = v176;
  if (!v157)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v158 = v157;
  v159._countAndFlagsBits = 0xD000000000000012;
  v159._object = 0x800000010056B140;
  v160._countAndFlagsBits = v174;
  v160._object = v147;
  object = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v160, v159, v158, 0).value._object;

  (*(v154 + 8))(v155, v156);
  if (object)
  {
    v162 = String._bridgeToObjectiveC()();

    [v179 setLastReceptionistMessage:v162];

LABEL_71:
    v163 = sub_1004389A4();
    sub_1002CB720(v165, v163);

    sub_100009A04(v153, &unk_1006A52C0, &unk_10057D930);
    goto LABEL_72;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_1004389A4()
{
  v29 = type metadata accessor for URL();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v29, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&qword_1006ABC80, &qword_1005879A8);
  v5 = (sub_10026D814(&qword_1006ABC88, &qword_1005879B0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = *(*v5 + 72);
  v8 = swift_allocObject();
  v26 = v8;
  *(v8 + 16) = xmmword_1005800F0;
  v9 = (v8 + v6);
  v10 = v5[14];
  *v9 = 0;
  sub_10043F530(sub_10043D9F4);
  v11 = &v9[v7];
  v12 = v7;
  v25 = v7;
  v13 = v5[14];
  *v11 = 1;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v14 = *(v0 + 8);
  v27 = v0 + 8;
  v15 = v29;
  v14(v4, v29);
  v28 = v14;
  v16 = v5[14];
  v9[2 * v12] = 3;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v14(v4, v15);
  v17 = v25;
  v18 = v5[14];
  v9[3 * v25] = 4;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v19 = v28;
  v20 = v29;
  v28(v4, v29);
  v21 = v5[14];
  v9[4 * v17] = 5;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v19(v4, v20);
  v22 = v5[14];
  v9[5 * v17] = 2;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v28(v4, v20);
  sub_100445C34();
  return Dictionary.init(dictionaryLiteral:)();
}

void sub_100438D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v27 = sub_100007BF0(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  sub_100007BAC();
  v33 = v31 - v32;
  __chkstk_darwin(v34, v35);
  v37 = &a9 - v36;
  v38 = [v25 localSenderIdentityAccountUUID];
  if (v38)
  {
    v39 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = type metadata accessor for UUID();
    v41 = 0;
  }

  else
  {
    v40 = type metadata accessor for UUID();
    v41 = 1;
  }

  sub_10000AF74(v33, v41, 1, v40);
  v42 = sub_100006B30();
  sub_100445BE8(v42, v43, v44, v45);
  type metadata accessor for UUID();
  if (sub_100015468(v37, 1, v40) == 1)
  {
    sub_100009A04(v37, &unk_1006A3DD0, &unk_10057C9D0);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v46 = UUID.uuidString.getter();
    v47 = v48;
    sub_10000F49C(v40);
    (*(v49 + 8))(v37, v40);
  }

  v50 = [v25 provider];
  v51 = [v50 isTelephonyProvider];

  if (v51)
  {
    v52 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
    v53 = 0;
    v54 = *(v52 + 64);
    v55 = 1 << *(v52 + 32);
    sub_10000C830();
    v58 = v57 & v56;
    v60 = (v59 + 63) >> 6;
    while (v58)
    {
      v61 = v58;
LABEL_15:
      v58 = (v61 - 1) & v61;
      if (v47)
      {
        v63 = (v53 << 10) | (16 * __clz(__rbit64(v61)));
        v64 = (*(v52 + 48) + v63);
        v65 = *v64;
        v66 = v64[1];
        v67 = (*(v52 + 56) + v63);
        v68 = *v67 == v46 && v47 == v67[1];
        if (v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v62 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v62 >= v60)
      {

        goto LABEL_31;
      }

      v61 = *(v52 + 64 + 8 * v62);
      ++v53;
      if (v61)
      {
        v53 = v62;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v69 = *(v23 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_callCenterObserver);
  if (!v69)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v70 = [v69 activeConversationForCall:v25];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 localMember];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 handle];

      v76 = sub_1004450E0(v74, &selRef_normalizedValue);
      v77 = v75;
      if (!v47)
      {
        if (v75)
        {

          v78 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
          sub_1002CB47C(v76, v77, v78);
        }
      }
    }
  }

LABEL_31:
  sub_100005EDC();
}

uint64_t sub_100439100(uint64_t a1)
{
  v2 = v1;
  v101 = a1;
  v98 = type metadata accessor for URL();
  v3 = *(v98 - 8);
  v4 = v3[8];
  v6 = __chkstk_darwin(v98, v5);
  v96 = &v86[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6, v7);
  v10 = &v86[-v9];
  __chkstk_darwin(v8, v11);
  v97 = &v86[-v12];
  v102 = type metadata accessor for UUID();
  v100 = *(v102 - 8);
  v13 = *(v100 + 64);
  v15 = __chkstk_darwin(v102, v14);
  v17 = &v86[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = v16;
  __chkstk_darwin(v15, v18);
  v20 = &v86[-v19];
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v86[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *&v2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v26 = v27;
  (*(v22 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v21);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v21);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  sub_10003A270(&v2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_voicemailManager], &v107, &qword_1006ABC98, &qword_1005879B8);
  if (!*(&v108 + 1))
  {
    return sub_100009A04(&v107, &qword_1006ABC98, &qword_1005879B8);
  }

  sub_10002F0C8(&v107, v104);
  v29 = v101;
  if ((sub_10043BB4C() & 1) == 0)
  {
    v98 = v2;
    v47 = v100;
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v48 = v17;
    v49 = type metadata accessor for Logger();
    sub_10000AF9C(v49, qword_1006BA5F8);
    v50 = v102;
    v97 = *(v47 + 16);
    (v97)(v20, v29, v102);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v47;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v107 = v55;
      *v54 = 136315138;
      sub_10000F228(&qword_1006A25E0, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (*(v53 + 8))(v20, v102);
      v59 = sub_10002741C(v56, v58, &v107);
      v50 = v102;

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "looking for greeting for account: %s", v54, 0xCu);
      sub_100009B7C(v55);
      v29 = v101;
    }

    else
    {

      (*(v47 + 8))(v20, v50);
      v53 = v47;
    }

    v77 = v105;
    v78 = v106;
    sub_100009B14(v104, v105);
    (v97)(v48, v29, v50);
    v79 = v50;
    v80 = v29;
    v81 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v82 = swift_allocObject();
    v83 = v98;
    *(v82 + 16) = v98;
    (*(v53 + 32))(v82 + v81, v48, v79);
    v84 = *(v78 + 16);
    v85 = v83;
    v84(v80, sub_100445C90, v82, v77, v78);

    return sub_100009B7C(v104);
  }

  v26 = v97;
  sub_100439ABC();
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_18;
  }

LABEL_5:
  v31 = type metadata accessor for Logger();
  sub_10000AF9C(v31, qword_1006BA5F8);
  v32 = v3[2];
  v33 = v26;
  v34 = v98;
  v93 = v3 + 2;
  v92 = v32;
  v32(v10, v33, v98);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v95 = v3;
  v94 = v4;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v88 = v38;
    v89 = swift_slowAlloc();
    *&v107 = v89;
    *v38 = 136315138;
    sub_10000F228(&qword_1006A3BD0, &type metadata accessor for URL);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v34;
    v42 = v41;
    v43 = v3[1];
    v90 = (v3 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91 = v43;
    v43(v10, v40);
    v44 = sub_10002741C(v39, v42, &v107);

    v45 = v88;
    *(v88 + 1) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "not downloading greeting, file exists %s", v45, 0xCu);
    sub_100009B7C(v89);
  }

  else
  {

    v60 = v3[1];
    v90 = (v3 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91 = v60;
    v60(v10, v34);
    v40 = v34;
  }

  v89 = UUID.uuidString.getter();
  v88 = v61;
  sub_100434D90(v103);
  v62 = sub_100009B14(v103, v103[3]);
  v63 = UUID.uuidString.getter();
  v107 = *v62;
  v108 = *(v62 + 1);
  v109 = v62[4];
  v87 = sub_10040AFD0(v63, v64);

  v65 = v100;
  v66 = v29;
  v67 = v102;
  (*(v100 + 16))(v17, v66, v102);
  v68 = v96;
  v69 = v97;
  v92(v96, v97, v40);
  v70 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v71 = v95;
  v72 = v17;
  v73 = (v99 + *(v95 + 80) + v70) & ~*(v95 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v2;
  (*(v65 + 32))(v74 + v70, v72, v67);
  v75 = v98;
  (v71[4])(v74 + v73, v68, v98);
  v76 = v2;
  sub_10043B438(v89, v88, v69, v87 & 1, sub_100445D0C, v74);

  v91(v69, v75);
  sub_100009B7C(v103);
  return sub_100009B7C(v104);
}

uint64_t sub_100439ABC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v12 - v8;
  sub_100443684();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_10043DA20(v9);
  URL.appendingPathComponent(_:)();
  return (v10)(v9, v0);
}

uint64_t sub_100439C20(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v50 = a2;
  v39 = a1;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v46 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v46, v5);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v47, v8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for URL();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v49, v12);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v37 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v17 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8, v21);
  v23 = &v37 - v22;
  v42 = *&v50[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  sub_10003A270(v39, &v37 - v22, &unk_1006A52C0, &unk_10057D930);
  (*(v14 + 16))(v17, v40, v13);
  (*(v10 + 16))(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v49);
  v24 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v25 = (v20 + *(v14 + 80) + v24) & ~*(v14 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v10 + 80) + v26 + 8) & ~*(v10 + 80);
  v28 = swift_allocObject();
  sub_100445BE8(v23, v28 + v24, &unk_1006A52C0, &unk_10057D930);
  (*(v14 + 32))(v28 + v25, v17, v37);
  v29 = v49;
  v30 = v50;
  *(v28 + v26) = v50;
  (*(v10 + 32))(v28 + v27, v38, v29);
  aBlock[4] = sub_100445DD8;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006309A0;
  v31 = _Block_copy(aBlock);
  v32 = v30;
  v33 = v43;
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v34 = v44;
  v35 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v48 + 8))(v34, v35);
  (*(v45 + 8))(v33, v47);
}

void sub_10043A158(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v122 = a4;
  v125 = a3;
  v127 = a2;
  v124 = type metadata accessor for UUID();
  v5 = *(v124 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v124, v7);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v118 - v12;
  v14 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v119 = (&v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17, v19);
  v121 = &v118 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v118 = &v118 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v120 = &v118 - v27;
  __chkstk_darwin(v26, v28);
  v30 = &v118 - v29;
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = __chkstk_darwin(v31, v34);
  v123 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v37);
  v39 = &v118 - v38;
  sub_10003A270(a1, v30, &unk_1006A52C0, &unk_10057D930);
  v40 = sub_100015468(v30, 1, v31);
  v41 = "com.apple.callservicesd.shareplay-session-server-terminated";
  v126 = v32;
  if (v40 == 1)
  {
    sub_100009A04(v30, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000AF9C(v42, qword_1006BA5F8);
    v43 = v124;
    (*(v5 + 16))(v13, v127, v124);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v129 = v47;
      *v46 = 136315138;
      sub_10000F228(&qword_1006A25E0, &type metadata accessor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v5 + 8))(v13, v43);
      v51 = sub_10002741C(v48, v50, &v129);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "using non-generated file for %s", v46, 0xCu);
      sub_100009B7C(v47);
      v41 = "com.apple.callservicesd.shareplay-session-server-terminated";
    }

    else
    {

      (*(v5 + 8))(v13, v43);
    }

    v64 = v126;
    v65 = v121;
    v66 = UUID.uuidString.getter();
    v68 = v67;
    v69 = v31;
    (*(v64 + 16))(v65, v122, v31);
    sub_10000AF74(v65, 0, 1, v31);
    v70 = v125;
    v71 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (sub_100015468(v65, 1, v31) == 1)
    {
      sub_100009A04(v65, &unk_1006A52C0, &unk_10057D930);
      v72 = sub_100005208();
      if (v73)
      {
        v74 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v129 = v71;
        v76 = v64;
        v77 = *(v71 + 24);
        sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v77);
        v71 = v129;
        v78 = *(*(v129 + 48) + 16 * v74 + 8);

        v79 = v119;
        (*(v76 + 32))(v119, *(v71 + 56) + *(v76 + 72) * v74, v69);
        _NativeDictionary._delete(at:)();
        v80 = 0;
      }

      else
      {
        v80 = 1;
        v79 = v119;
      }

      sub_10000AF74(v79, v80, 1, v69);

      sub_100009A04(v79, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      v97 = v123;
      (*(v64 + 32))(v123, v65, v31);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v129 = v71;
      sub_10037938C(v97, v66, v68, v98, v99, v100, v101, v102, v118, v119, v120, v121, v122, v123);

      v71 = v129;
    }

    sub_100434E28(v71, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  }

  else
  {
    v52 = *(v32 + 32);
    v121 = v32 + 32;
    v122 = v39;
    v119 = v52;
    (v52)(v39, v30, v31);
    v53 = v31;
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000AF9C(v54, qword_1006BA5F8);
    v55 = v124;
    (*(v5 + 16))(v10, v127, v124);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v129 = v59;
      *v58 = 136315138;
      sub_10000F228(&qword_1006A25E0, &type metadata accessor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v5 + 8))(v10, v55);
      v63 = sub_10002741C(v60, v62, &v129);
      v41 = "com.apple.callservicesd.shareplay-session-server-terminated";

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "using generated file for %s", v58, 0xCu);
      sub_100009B7C(v59);
      v53 = v31;
    }

    else
    {

      (*(v5 + 8))(v10, v55);
    }

    v81 = v122;
    v82 = UUID.uuidString.getter();
    v84 = v83;
    v85 = v126;
    v86 = v120;
    (*(v126 + 16))(v120, v81, v53);
    sub_10000AF74(v86, 0, 1, v53);
    v70 = v125;
    v87 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (sub_100015468(v86, 1, v53) == 1)
    {
      sub_100009A04(v86, &unk_1006A52C0, &unk_10057D930);
      v88 = sub_100005208();
      if (v89)
      {
        v90 = v88;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v129 = v87;
        v92 = *(v87 + 24);
        sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
        v93 = v91;
        v85 = v126;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v93, v92);
        v87 = v129;
        v94 = *(*(v129 + 48) + 16 * v90 + 8);

        v95 = v118;
        (v119)(v118, *(v87 + 56) + *(v85 + 72) * v90, v53);
        _NativeDictionary._delete(at:)();
        v96 = 0;
      }

      else
      {
        v96 = 1;
        v95 = v118;
      }

      sub_10000AF74(v95, v96, 1, v53);

      sub_100009A04(v95, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      v103 = v123;
      (v119)(v123, v86, v53);
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v129 = v87;
      sub_10037938C(v103, v82, v84, v104, v105, v106, v107, v108, v118, v119, v120, v121, v122, v123);

      v87 = v129;
    }

    sub_100434E28(v87, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    (*(v85 + 8))(v81, v53);
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_10000AF9C(v109, qword_1006BA5F8);
  v110 = v70;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v129 = v114;
    *v113 = *(v41 + 460);
    v128 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    sub_10026D814(&unk_1006ABCA0, &qword_1005879C0);
    v115 = String.init<A>(reflecting:)();
    v117 = sub_10002741C(v115, v116, &v129);

    *(v113 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v111, v112, "greetingsDict=%s", v113, 0xCu);
    sub_100009B7C(v114);
  }
}

uint64_t sub_10043ACE0(uint64_t a1, unint64_t a2, _BYTE *a3, int a4, void *a5, void *a6)
{
  v96 = a5;
  LODWORD(v7) = a4;
  v99 = a1;
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v102 = &v90[-v13];
  v14 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v92 = &v90[-v17];
  v18 = type metadata accessor for URL();
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = *(v104 + 64);
  v21 = __chkstk_darwin(v18, v20);
  v94 = &v90[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v21, v23);
  v103 = &v90[-v25];
  v27 = __chkstk_darwin(v24, v26);
  v29 = &v90[-v28];
  v93 = v30;
  __chkstk_darwin(v27, v31);
  v33 = &v90[-v32];
  v34 = swift_allocObject();
  *(v34 + 16) = a6;
  v35 = qword_1006A0B28;
  v100 = a6;
  if (v35 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000AF9C(v36, qword_1006BA5F8);
  v37 = (v104 + 16);
  v38 = *(v104 + 16);
  v38(v33, a3, v105);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  LODWORD(v95) = v40;
  v41 = os_log_type_enabled(v39, v40);
  v101 = v34;
  v97 = v38;
  v98 = v37;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v91 = v7;
    v43 = v38;
    v44 = v42;
    v106 = swift_slowAlloc();
    *v44 = 136315650;
    *(v44 + 4) = sub_10002741C(v99, a2, &v106);
    *(v44 + 12) = 2080;
    v45 = v105;
    v43(v29, v33, v105);
    v46 = String.init<A>(reflecting:)();
    v47 = v45;
    v7 = a3;
    v49 = v48;
    v50 = *(v104 + 8);
    v51 = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v33, v47);
    v52 = v46;
    v53 = v50;
    v54 = v51;
    v55 = sub_10002741C(v52, v49, &v106);
    a3 = v7;
    LOBYTE(v7) = v91;

    *(v44 + 14) = v55;
    *(v44 + 22) = 1024;
    *(v44 + 24) = v7 & 1;
    _os_log_impl(&_mh_execute_header, v39, v95, "addEndTone: for: %s from: %s force: %{BOOL}d", v44, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v53 = *(v104 + 8);
    v54 = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53(v33, v105);
  }

  v95 = a3;
  URL.deletingLastPathComponent()();
  v56 = v103;
  URL.appendingPathComponent(_:)();
  v53(v29, v105);
  if (v7)
  {
    v57 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    v106 = 0;
    v61 = [v57 removeItemAtURL:v59 error:&v106];

    if (v61)
    {
      v62 = v106;
    }

    else
    {
      v63 = v106;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v99 = v54;
  v64 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v65 = String._bridgeToObjectiveC()();

  v66 = [v64 fileExistsAtPath:v65];

  if (v66)
  {
    v67 = v92;
    v68 = v105;
    v97(v92, v56, v105);
    sub_10000AF74(v67, 0, 1, v68);
    v69 = v100;
    sub_10043FE40(v67, v100);
    sub_100009A04(v67, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v70 = type metadata accessor for TaskPriority();
    sub_10000AF74(v102, 1, 1, v70);
    v71 = v105;
    v72 = v97;
    v97(v29, v95, v105);
    v73 = v94;
    v72(v94, v103, v71);
    v74 = v104;
    v75 = *(v104 + 80);
    v76 = (v75 + 32) & ~v75;
    v77 = (v93 + 7 + v76) & 0xFFFFFFFFFFFFFFF8;
    v98 = v53;
    v78 = v29;
    v79 = (v75 + v77 + 8) & ~v75;
    v80 = (v93 + 7 + v79) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    *(v81 + 24) = 0;
    v82 = *(v74 + 32);
    v83 = v78;
    v53 = v98;
    v82(v81 + v76, v83, v71);
    v84 = v96;
    *(v81 + v77) = v96;
    v85 = v73;
    v56 = v103;
    v82(v81 + v79, v85, v71);
    v86 = (v81 + v80);
    v87 = v101;
    *v86 = sub_1004458B8;
    v86[1] = v87;
    v88 = v84;

    sub_1002762F0();

    v69 = v100;
  }

  v53(v56, v105);
}

uint64_t sub_10043B438(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v96 = a5;
  v97 = a6;
  v99 = a3;
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v87 = &v83[-v12];
  v13 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v95 = &v83[-v16];
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v21 = __chkstk_darwin(v17, v20);
  v86 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v21, v23);
  v98 = &v83[-v25];
  v27 = __chkstk_darwin(v24, v26);
  v29 = &v83[-v28];
  v85 = v30;
  __chkstk_darwin(v27, v31);
  v33 = &v83[-v32];
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  LODWORD(v93) = a4;
  v34 = type metadata accessor for Logger();
  sub_10000AF9C(v34, qword_1006BA5F8);
  v35 = v18[2];
  v35(v33, v99, v17);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v94 = v29;
  v88 = v18;
  v91 = v35;
  v92 = v18 + 2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v84 = v37;
    v40 = a2;
    v41 = v18;
    v42 = v39;
    v90 = swift_slowAlloc();
    v100 = v90;
    *v42 = 136315650;
    *(v42 + 4) = sub_10002741C(a1, v40, &v100);
    *(v42 + 12) = 2080;
    v35(v29, v33, v17);
    v43 = String.init<A>(reflecting:)();
    v45 = v44;
    v46 = v41[1];
    v47 = (v41 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v33, v17);
    v48 = sub_10002741C(v43, v45, &v100);
    v29 = v94;

    *(v42 + 14) = v48;
    *(v42 + 22) = 1024;
    v49 = v93;
    *(v42 + 24) = v93 & 1;
    _os_log_impl(&_mh_execute_header, v36, v84, "addEndTone: for: %s from: %s force: %{BOOL}d", v42, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v46 = v18[1];
    v47 = (v18 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v33, v17);
    v49 = v93;
  }

  URL.deletingLastPathComponent()();
  v50 = v98;
  URL.appendingPathComponent(_:)();
  v90 = v17;
  v93 = v46;
  v46(v29, v17);
  if (v49)
  {
    v51 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v52);
    v54 = v53;
    v100 = 0;
    v55 = [v51 removeItemAtURL:v53 error:&v100];

    if (v55)
    {
      v56 = v100;
    }

    else
    {
      v57 = v100;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v58 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v59 = String._bridgeToObjectiveC()();

  v60 = [v58 fileExistsAtPath:v59];

  v61 = v50;
  if (v60)
  {
    v62 = v87;
    v63 = v90;
    v91(v87, v61, v90);
    sub_10000AF74(v62, 0, 1, v63);
    v96(v62);
    sub_100009A04(v62, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v64 = type metadata accessor for TaskPriority();
    sub_10000AF74(v95, 1, 1, v64);
    v65 = v94;
    v66 = v99;
    v63 = v90;
    v67 = v91;
    v99 = v47;
    v91(v94, v66, v90);
    v68 = v86;
    v67(v86, v50, v63);
    v69 = v88;
    v70 = *(v88 + 80);
    v71 = (v70 + 32) & ~v70;
    v72 = (v85 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v70 + v72 + 8) & ~v70;
    v74 = (v85 + 7 + v73) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    v76 = v69[4];
    v76(v75 + v71, v65, v63);
    v77 = v89;
    *(v75 + v72) = v89;
    v78 = v75 + v73;
    v61 = v98;
    v76(v78, v68, v63);
    v79 = (v75 + v74);
    v80 = v97;
    *v79 = v96;
    v79[1] = v80;
    v81 = v77;

    sub_1002762F0();
  }

  return v93(v61, v63);
}

id sub_10043BB4C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  sub_100439ABC();
  URL.path.getter();
  (*(v1 + 8))(v5, v0);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 fileExistsAtPath:v7];

  return v8;
}

uint64_t sub_10043BC8C(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v29 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v33, v8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v34, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v18 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *&a3[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  (*(v15 + 16))(v18, a4, v14);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  (*(v15 + 32))(v21 + v19, v18, v14);
  v22 = v29;
  *(v21 + v20) = v29;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_100445F08;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006309F0;
  v23 = _Block_copy(aBlock);
  swift_errorRetain();
  v24 = v22;
  v25 = a3;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v26 = v30;
  v27 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v35 + 8))(v26, v27);
  (*(v32 + 8))(v13, v34);
}

void sub_10043C044(uint64_t a1, uint64_t a2, objc_class *a3, void *a4)
{
  v146 = a4;
  v149 = a3;
  v151 = a2;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v145 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v135 - v12;
  __chkstk_darwin(v11, v14);
  v16 = &v135 - v15;
  v17 = type metadata accessor for URL();
  v147 = *(v17 - 8);
  v18 = v147[8];
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v20, v23);
  v26 = (&v135 - v25);
  v28 = __chkstk_darwin(v24, v27);
  v30 = &v135 - v29;
  v32 = __chkstk_darwin(v28, v31);
  v34 = &v135 - v33;
  __chkstk_darwin(v32, v35);
  v37 = (&v135 - v36);
  v150 = type metadata accessor for UUID();
  v152 = *(v150 - 8);
  isa = v152[8].isa;
  v40 = __chkstk_darwin(v150, v39);
  v42 = __chkstk_darwin(v40, v41);
  __chkstk_darwin(v42, v43);
  v48 = &v135 - v47;
  if (a1)
  {
    v148 = v44;
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000AF9C(v49, qword_1006BA5F8);
    v50 = v152;
    v51 = v152[2].isa;
    v52 = v150;
    v51(v48, v151, v150);
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      LODWORD(v149) = v54;
      v56 = v55;
      v151 = swift_slowAlloc();
      v154[0] = v151;
      *v56 = 136315394;
      v153 = a1;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v57 = String.init<A>(reflecting:)();
      v59 = sub_10002741C(v57, v58, v154);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v51(v148, v48, v52);
      v60 = String.init<A>(reflecting:)();
      v62 = v61;
      (v50[1].isa)(v48, v52);
      v63 = sub_10002741C(v60, v62, v154);

      *(v56 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v53, v149, "error (%s) fetching greeting for accountUUID (%s)", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (v50[1].isa)(v48, v52);
    }

    return;
  }

  v140 = v26;
  v141 = v13;
  v139 = v22;
  v142 = v30;
  v143 = v16;
  v144 = v37;
  v64 = v149;
  if (v149)
  {
    v137 = v46;
    v138 = v45;
    v148 = v44;
    v65 = v149;
    if ([v65 type]== 2)
    {
      v66 = [v65 url];
      if (v66)
      {
        v67 = v66;
        v68 = v34;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = v147;
        v70 = v147[4];
        v71 = v144;
        v72 = v17;
        v149 = (v147 + 4);
        v136 = v70;
        v70(v144, v68, v17);
        v73 = v143;
        sub_10000AF74(v143, 1, 1, v17);
        v74 = v141;
        v75 = v151;
        sub_10043CF08(v71, v141);
        sub_100009A04(v73, &unk_1006A52C0, &unk_10057D930);
        sub_100445BE8(v74, v73, &unk_1006A52C0, &unk_10057D930);
        v85 = v152;
        v86 = v145;
        sub_10003A270(v73, v145, &unk_1006A52C0, &unk_10057D930);
        v87 = sub_100015468(v86, 1, v72);
        if (v87 == 1)
        {
          v152 = v65;
          sub_100009A04(v86, &unk_1006A52C0, &unk_10057D930);
          v88 = v144;
          if (qword_1006A0B28 != -1)
          {
            swift_once();
          }

          v89 = type metadata accessor for Logger();
          sub_10000AF9C(v89, qword_1006BA5F8);
          v90 = v69[2];
          v91 = v140;
          v90(v140, v88, v72);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v154[0] = v95;
            *v94 = 136315138;
            v90(v139, v91, v72);
            v96 = String.init<A>(reflecting:)();
            v97 = v91;
            v98 = v96;
            v100 = v99;
            v101 = v69[1];
            v101(v97, v72);
            v102 = sub_10002741C(v98, v100, v154);

            *(v94 + 4) = v102;
            _os_log_impl(&_mh_execute_header, v92, v93, "was not able to copy greeting to our store: %s", v94, 0xCu);
            sub_100009B7C(v95);

            sub_100009A04(v143, &unk_1006A52C0, &unk_10057D930);
            v101(v144, v72);
          }

          else
          {

            v132 = v69[1];
            v132(v91, v72);
            sub_100009A04(v73, &unk_1006A52C0, &unk_10057D930);
            v132(v88, v72);
          }
        }

        else
        {
          v145 = v72;
          v136(v142, v86, v72);
          v141 = UUID.uuidString.getter();
          v104 = v103;
          v105 = v148;
          v106 = v150;
          v149 = v85[2].isa;
          (v149)(v148, v75, v150);
          v107 = (LOBYTE(v85[10].isa) + 24) & ~LOBYTE(v85[10].isa);
          v108 = swift_allocObject();
          v109 = v146;
          *(v108 + 16) = v146;
          (v85[4].isa)(v108 + v107, v105, v106);
          v110 = v109;
          sub_10043B438(v141, v104, v142, 1, sub_100445F9C, v108);

          if (qword_1006A0B28 != -1)
          {
            swift_once();
          }

          v111 = type metadata accessor for Logger();
          sub_10000AF9C(v111, qword_1006BA5F8);
          v112 = v138;
          v113 = v75;
          v114 = v149;
          (v149)(v138, v113, v106);
          v115 = v106;
          v116 = v110;
          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v154[0] = v151;
            *v119 = 136315394;
            v114(v148, v112, v115);
            v120 = String.init<A>(reflecting:)();
            v122 = v121;
            (v152[1].isa)(v112, v115);
            v123 = sub_10002741C(v120, v122, v154);

            *(v119 + 4) = v123;
            *(v119 + 12) = 2080;
            sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
            v124 = v145;
            v125 = Dictionary.description.getter();
            v126 = v147;
            v127 = v65;
            v129 = v128;

            v130 = sub_10002741C(v125, v129, v154);

            *(v119 + 14) = v130;
            _os_log_impl(&_mh_execute_header, v117, v118, "Downloaded greeting for account %s greetingsDict=%s", v119, 0x16u);
            swift_arrayDestroy();

            v131 = v126[1];
            v131(v142, v124);
            sub_100009A04(v143, &unk_1006A52C0, &unk_10057D930);
            v131(v144, v124);
          }

          else
          {

            (v152[1].isa)(v112, v115);
            v133 = v147[1];
            v134 = v145;
            v133(v142, v145);
            sub_100009A04(v143, &unk_1006A52C0, &unk_10057D930);
            v133(v144, v134);
          }
        }

        return;
      }
    }
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_10000AF9C(v76, qword_1006BA5F8);
  v77 = v64;
  v152 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v152, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v154[0] = v80;
    *v79 = 136315138;
    v81 = sub_100291628(v64);
    v83 = sub_10002741C(v81, v82, v154);

    *(v79 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v152, v78, "no greeting url or not custom %s", v79, 0xCu);
    sub_100009B7C(v80);
  }

  else
  {
    v84 = v152;
  }
}

uint64_t sub_10043CF08@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v71 = a2;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v70 = (&v68 - v10);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v68 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v68 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v68 - v20;
  sub_100443684();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v75 = v3;
  v76 = *(v3 + 8);
  v76(v18, v2);
  v74 = v21;
  sub_10043DA20(v21);
  sub_100439ABC();
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  URL.path.getter();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 fileExistsAtPath:v24];

  if (v25)
  {
    v26 = [v22 defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v78 = 0;
    v30 = [v26 removeItemAtURL:v28 error:&v78];

    if (v30)
    {
      v31 = v78;
    }

    else
    {
      v32 = v78;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v73 = 0;
    }
  }

  v33 = [v22 defaultManager];
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  v78 = 0;
  v40 = [v33 copyItemAtURL:v36 toURL:v38 error:&v78];

  if (v40)
  {
    v41 = qword_1006A0B28;
    v42 = v78;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000AF9C(v43, qword_1006BA5F8);
    v44 = *(v75 + 16);
    v45 = v70;
    v44(v70, v77, v2);
    v46 = v72;
    v44(v72, v14, v2);
    v47 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    v77 = v47;
    if (os_log_type_enabled(v47, v69))
    {
      v48 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v78 = v68;
      *v48 = 136315394;
      v44(v18, v45, v2);
      v49 = String.init<A>(reflecting:)();
      v50 = v45;
      v51 = v49;
      v53 = v52;
      v76(v50, v2);
      v54 = sub_10002741C(v51, v53, &v78);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      v55 = v72;
      v44(v18, v72, v2);
      v56 = String.init<A>(reflecting:)();
      v58 = v57;
      v59 = v55;
      v60 = v76;
      v76(v59, v2);
      v61 = sub_10002741C(v56, v58, &v78);

      *(v48 + 14) = v61;
      v62 = v77;
      _os_log_impl(&_mh_execute_header, v77, v69, "successfully copied %s to %s", v48, 0x16u);
      swift_arrayDestroy();

      v60(v74, v2);
    }

    else
    {

      v66 = v76;
      v76(v46, v2);
      v66(v45, v2);
      v66(v74, v2);
    }

    v67 = v71;
    (*(v75 + 32))(v71, v14, v2);
    return sub_10000AF74(v67, 0, 1, v2);
  }

  else
  {
    v63 = v78;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v64 = v76;
    v76(v14, v2);
    return v64(v74, v2);
  }
}

void sub_10043D55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for URL();
  v23 = sub_100007FEC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23, v28);
  sub_100007BAC();
  v31 = (v29 - v30);
  __chkstk_darwin(v32, v33);
  v35 = &a9 - v34;
  static URL.temporaryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v36 = *(v25 + 8);
  v36(v31, v22);
  sub_10043D69C();
  v36(v35, v22);
  sub_100005EDC();
}

void sub_10043D69C()
{
  sub_100005EF4();
  v52 = v2;
  v53 = v3;
  v50 = v5;
  v51 = v4;
  v7 = v6;
  v48 = v8;
  v49 = v9;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_100007FEC(v57);
  v59 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10, v14);
  sub_100007FDC();
  v55 = v16 - v15;
  sub_10000D414();
  v58 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v58);
  v56 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17, v21);
  sub_100007FDC();
  sub_10000C4C4();
  v22 = type metadata accessor for URL();
  v23 = sub_100007FEC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23, v28);
  v29 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  (*(v25 + 16))(v29, v7, v22);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = (v30 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + v27 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v25 + 32))(v34 + v30, v29, v22);
  v35 = v34 + v31;
  v36 = v49;
  *v35 = v48;
  *(v35 + 8) = v36;
  *(v35 + 16) = v50;
  v37 = (v34 + v32);
  v38 = v53;
  *v37 = v52;
  v37[1] = v38;
  v39 = v34 + v33;
  *v39 = v0;
  *(v39 + 8) = v51;
  v61[4] = sub_100444E68;
  v61[5] = v34;
  sub_100009FE4();
  v61[1] = 1107296256;
  sub_10000A600();
  v61[2] = v40;
  v61[3] = &unk_1006306D0;
  v41 = _Block_copy(v61);

  v42 = v0;

  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10000AB18();
  sub_10000F228(v43, v44);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);
  v45 = *(v59 + 8);
  v46 = sub_100007764();
  v47(v46);
  (*(v56 + 8))(v1, v58);

  sub_100005EDC();
}

void sub_10043DA20(id a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = __chkstk_darwin(v2, v5);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v56 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v56 - v13;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000AF9C(v15, qword_1006BA5F8);
  v17 = v3[2];
  v17(v14, a1, v2);
  v60 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v62 = v3;
  v63 = v17;
  v59 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v58 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v65 = v23;
    *v22 = 136315138;
    v17(v11, v14, v2);
    v24 = String.init<A>(reflecting:)();
    v25 = v3;
    v26 = v24;
    v28 = v27;
    v29 = v25[1];
    v29(v14, v2);
    v30 = sub_10002741C(v26, v28, &v65);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "createDirectoriesAsNecessary %s", v22, 0xCu);
    sub_100009B7C(v23);

    a1 = v58;
  }

  else
  {

    v29 = v3[1];
    v29(v14, v2);
  }

  v31 = objc_opt_self();
  v32 = [v31 defaultManager];
  URL.absoluteString.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 fileExistsAtPath:v33];

  if ((v34 & 1) == 0)
  {
    v35 = [v31 defaultManager];
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v65 = 0;
    v39 = [v35 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v65];

    v40 = v65;
    if (v39)
    {

      v41 = v40;
    }

    else
    {
      v57 = v29;
      v58 = v65;
      v42 = v65;
      v43 = a1;
      v44 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v45 = v61;
      v63(v61, v43, v2);
      swift_errorRetain();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v48 = 136315394;
        v64 = v44;
        swift_errorRetain();
        sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
        v49 = String.init<A>(reflecting:)();
        v51 = sub_10002741C(v49, v50, &v65);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        v63(v59, v45, v2);
        v52 = String.init<A>(reflecting:)();
        v54 = v53;
        v57(v45, v2);
        v55 = sub_10002741C(v52, v54, &v65);

        *(v48 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "Received an error (%s creating %s", v48, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v57(v45, v2);
      }
    }
  }
}

void sub_10043E00C(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, char *a7, int a8)
{
  v105 = a8;
  v116 = a7;
  v110 = a5;
  v115 = a4;
  v97 = type metadata accessor for Locale();
  v100 = *(v97 - 8);
  v12 = *(v100 + 64);
  v14 = __chkstk_darwin(v97, v13);
  v98 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v99 = &v94 - v17;
  v18 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v108 = &v94 - v21;
  v22 = type metadata accessor for LanguageManager();
  v113 = *(v22 - 8);
  *&v114 = v22;
  v23 = *(v113 + 64);
  __chkstk_darwin(v22, v24);
  v112 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = __chkstk_darwin(v26, v29);
  v103 = v31;
  v104 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v34 = &v94 - v33;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_10000AF9C(v35, qword_1006BA5F8);
  v37 = *(v27 + 16);
  v107 = a1;
  v102 = v27 + 16;
  v101 = v37;
  v37(v34, a1, v26);

  v111 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v109 = v26;
  v106 = v27;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v117[0] = v96;
    *v41 = 136315906;
    v95 = v39;
    v42 = URL.lastPathComponent.getter();
    v94 = v38;
    v44 = v43;
    (*(v27 + 8))(v34, v26);
    v45 = sub_10002741C(v42, v44, v117);
    v46 = v115;

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_10002741C(a2, a3, v117);
    *(v41 + 22) = 1024;
    *(v41 + 24) = v46 & 1;
    *(v41 + 28) = 2080;
    v47 = sub_10001E478(v110, a6);
    v49 = sub_10002741C(v47, v48, v117);

    *(v41 + 30) = v49;
    v50 = v94;
    _os_log_impl(&_mh_execute_header, v94, v95, "createOutgoingMessageIfNecessary %s %s %{BOOL}d %s", v41, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v27 + 8))(v34, v26);
  }

  v52 = v112;
  v51 = v113;
  v53 = v114;
  (*(v113 + 16))(v112, &v116[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_languageManager], v114);
  v54 = TUBundle();
  if (v54)
  {
    v55 = v54;
    v56 = swift_allocObject();
    v57._object = 0x800000010056B140;
    v58._countAndFlagsBits = a2;
    v58._object = a3;
    v57._countAndFlagsBits = 0xD000000000000012;
    v59 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v58, v57, v55, 0);

    (*(v51 + 8))(v52, v53);
    if (v59.value._object)
    {
      v56[1] = v59;
      if (a6)
      {
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_10057D690;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_100009D88();
        *(v60 + 32) = v110;
        *(v60 + 40) = a6;

        v61 = String.init(format:_:)();
        v63 = v62;

        object = v56[1].value._object;
        v56[1].value._countAndFlagsBits = v61;
        v56[1].value._object = v63;
      }

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v118 = v68;
        *v67 = 136315138;
        swift_beginAccess();
        countAndFlagsBits = v56[1].value._countAndFlagsBits;
        v70 = v56[1].value._object;

        v71 = sub_10002741C(countAndFlagsBits, v70, &v118);

        *(v67 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "createOutgoingMessage utterance=%s", v67, 0xCu);
        sub_100009B7C(v68);
      }

      else
      {
      }

      v83 = v109;
      v84 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_ttsService;
      v85 = type metadata accessor for TaskPriority();
      v86 = v116;
      v114 = *&v116[v84];
      sub_10000AF74(v108, 1, 1, v85);
      v87 = v104;
      v101(v104, v107, v83);
      v88 = v106;
      v89 = (*(v106 + 80) + 48) & ~*(v106 + 80);
      v90 = (v103 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      *(v91 + 2) = 0;
      *(v91 + 3) = 0;
      *(v91 + 4) = v86;
      *(v91 + 5) = v56;
      (*(v88 + 32))(&v91[v89], v87, v83);
      v92 = &v91[v90];
      *v92 = v114;
      v92[16] = v105 & 1;
      v92[17] = v115 & 1;

      v93 = v86;
      swift_unknownObjectRetain();
      sub_100463218();
    }

    else
    {
      swift_deallocUninitializedObject();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = a3;
        v75 = swift_slowAlloc();
        v117[0] = swift_slowAlloc();
        *v75 = 136315394;
        *(v75 + 4) = sub_10002741C(a2, v74, v117);
        *(v75 + 12) = 2080;
        v76 = v99;
        static Locale.current.getter();
        v77 = v100;
        v78 = v97;
        (*(v100 + 16))(v98, v76, v97);
        v79 = String.init<A>(reflecting:)();
        v81 = v80;
        (*(v77 + 8))(v76, v78);
        v82 = sub_10002741C(v79, v81, v117);

        *(v75 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v72, v73, "Unable to localize %s for locale %s. Not creating an outgoing message", v75, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10043E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 440) = v23;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 200) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 240) = v9;
  v10 = *(v9 - 8);
  *(v8 + 248) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  *(v8 + 264) = v12;
  v13 = *(v12 - 8);
  *(v8 + 272) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v15 = *(*(sub_10026D814(&qword_1006A5360, &qword_10057CB80) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v8 + 296) = v16;
  v17 = *(v16 - 8);
  *(v8 + 304) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v19 = type metadata accessor for URL();
  *(v8 + 320) = v19;
  v20 = *(v19 - 8);
  *(v8 + 328) = v20;
  *(v8 + 336) = *(v20 + 64);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_10043EC30, 0, 0);
}

uint64_t sub_10043EC30()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v35 = *(v0 + 368);
  v36 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v34 = *(v0 + 296);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  sub_100434D90(v0 + 104);
  v7 = sub_100009B14((v0 + 104), *(v0 + 128));
  sub_1000052D0();
  swift_beginAccess();
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *v7;
  v11 = *(v7 + 1);
  *(v0 + 96) = v7[4];
  *(v0 + 64) = v10;
  *(v0 + 80) = v11;

  sub_10040B180(v8, v9);

  sub_100009B7C((v0 + 104));
  static URL.temporaryDirectory.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v4, v34);
  URL.appendingPathComponent(_:)();

  v12 = *(v2 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v36);
  sub_10043DA20(v35);
  v13 = swift_allocBox();
  v15 = v14;
  *(v0 + 392) = v13;
  v16 = sub_10000EC00();
  sub_10043F530(v16);
  if ([*(v5 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags) receptionistEnabled])
  {
    (*(*(v0 + 328) + 24))(v15, *(v0 + 216), *(v0 + 320));
  }

  v17 = *(v0 + 368);
  v19 = *(v0 + 344);
  v18 = *(v0 + 352);
  v21 = *(v0 + 320);
  v20 = *(v0 + 328);
  v22 = *(v0 + 288);
  v23 = *(v0 + 208);
  sub_1000052D0();
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v0 + 400) = *(v6 + 24);

  sub_10000BC58();
  URL.appendingPathComponent(_:)();
  v25 = *(v20 + 16);
  *(v0 + 408) = v25;
  *(v0 + 416) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v19, v15, v21);
  v26 = type metadata accessor for Locale();
  sub_10000AF74(v22, 1, 1, v26);
  v27 = swift_task_alloc();
  *(v0 + 424) = v27;
  *v27 = v0;
  v27[1] = sub_10043EF38;
  v29 = *(v0 + 344);
  v28 = *(v0 + 352);
  v30 = *(v0 + 288);
  v31 = *(v0 + 440);
  v32 = *(v0 + 224);

  return sub_100461EA0();
}

uint64_t sub_10043EF38()
{
  sub_100022C84();
  sub_10000B870();
  v20[0] = v2;
  v3 = *v1;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  v6 = v3[53];
  v7 = v3[50];
  *v5 = *v1;
  v4[54] = v0;

  v8 = v3[48];
  v9 = v3[47];
  v10 = v3[44];
  v11 = v3[43];
  v12 = v3[40];
  v13 = v3[36];
  if (!v0)
  {
    *(v4 + 442) = v20[0] & 1;
  }

  sub_100009A04(v13, &qword_1006A5360, &qword_10057CB80);
  v9(v11, v12);
  v14 = sub_1000060A8();
  (v9)(v14);
  sub_100005F24();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10043F13C()
{
  v19 = *(v0 + 442);
  v1 = v0[52];
  v2 = v0[49];
  v28 = v0[47];
  v29 = v0[48];
  v3 = v0[45];
  v27 = v0[46];
  v30 = v0[44];
  v31 = v0[43];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[40];
  v32 = v0[36];
  v20 = v0[35];
  v25 = v0[34];
  v26 = v0[33];
  v24 = v0[31];
  v21 = v0[32];
  v22 = v0[30];
  v7 = *(v0 + 441);
  v8 = v0[26];
  v9 = v0[25];
  v23 = *&v9[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  v33 = *(v0 + 14);
  (v0[51])(v3, v0[27], v6);
  v10 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 17) = v19;
  *(v11 + 24) = v9;
  *(v11 + 32) = v8;
  *(v11 + 40) = v2;
  *(v11 + 48) = v33;
  (*(v4 + 32))(v11 + v10, v3, v6);
  v0[6] = sub_100445058;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004CEC;
  v0[5] = &unk_100630770;
  v12 = _Block_copy(v0 + 2);
  v13 = v9;

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v0[24] = _swiftEmptyArrayStorage;
  sub_10000AB18();
  sub_10000F228(v14, v15);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v24 + 8))(v21, v22);
  (*(v25 + 8))(v20, v26);
  v28(v27, v6);
  v16 = v0[7];

  sub_100009EF4();

  return v17();
}

uint64_t sub_10043F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  v13 = *(v12 + 384);
  v14 = *(v12 + 392);
  v16 = *(v12 + 352);
  v15 = *(v12 + 360);
  v17 = *(v12 + 344);
  v18 = *(v12 + 312);
  v20 = *(v12 + 280);
  v19 = *(v12 + 288);
  v21 = *(v12 + 256);
  (*(v12 + 376))(*(v12 + 368), *(v12 + 320));

  sub_100009EF4();
  v22 = *(v12 + 432);
  sub_100005F24();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_10043F530(void (*a1)(void))
{
  v3 = type metadata accessor for URL();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  sub_100006EC4();
  a1();
  sub_100006884();
  URL.appendingPathComponent(_:)();
  return (*(v6 + 8))(v1, v3);
}

uint64_t sub_10043F60C(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v98 = type metadata accessor for URL();
  v13 = *(v98 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v98, v15);
  v99 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v91 - v19;
  v21 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21 - 8, v23);
  v96 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24, v26);
  v29 = &v91 - v28;
  __chkstk_darwin(v27, v30);
  v32 = &v91 - v31;
  v33 = swift_projectBox();
  if (a1)
  {
    v34 = v33;
    v95 = a3;
    v97 = v13;
    HIDWORD(v94) = a2;
    if (a2)
    {
      swift_beginAccess();
      v35 = v34;
      v36 = *(a4 + 16);
      v37 = *(a4 + 24);

      v38 = v95;
      sub_100434D90(&v101);
      v39 = *(&v102 + 1);
      v40 = v103;
      sub_10001BDB8(&v101, *(&v102 + 1));
      v41 = *(v40 + 24);
      v42 = v40;
      v13 = v97;
      v41(v36, v37, v39, v42);

      v43 = *(&v102 + 1);
      v44 = sub_10001BDB8(&v101, *(&v102 + 1));
      v45 = *(*(v43 - 8) + 64);
      __chkstk_darwin(v44, v44);
      v47 = &v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v48 + 16))(v47);
      v49 = *(v47 + 1);
      v104 = *v47;
      v105 = v49;
      v106 = *(v47 + 4);
      sub_1004457B8(&v104, v38);
      sub_100009B7C(&v101);
      v34 = v35;
    }

    swift_beginAccess();
    v50 = v98;
    v93 = *(v13 + 16);
    v93(v32, v34, v98);
    sub_10000AF74(v32, 0, 1, v50);
    v51 = v95;
    v52 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (sub_100015468(v32, 1, v50) == 1)
    {
      sub_100009A04(v32, &unk_1006A52C0, &unk_10057D930);
      v53 = sub_100005208();
      if (v54)
      {
        v55 = v53;
        v56 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v101 = v52;
        v58 = *(v52 + 24);
        sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
        v59 = isUniquelyReferenced_nonNull_native;
        v34 = v56;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v59, v58);
        v52 = v101;
        v60 = *(*(v101 + 48) + 16 * v55 + 8);

        (*(v97 + 32))(v29, *(v52 + 56) + *(v97 + 72) * v55, v50);
        _NativeDictionary._delete(at:)();
        v61 = 0;
      }

      else
      {
        v61 = 1;
      }

      sub_10000AF74(v29, v61, 1, v50);
      sub_100009A04(v29, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      (*(v13 + 32))(v20, v32, v50);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      *&v101 = v52;
      sub_10037938C(v20, 0x746C7561666564, 0xE700000000000000, v68, v69, v70, v71, v72, v91, v92, v93, v94, v95, v96);
      v52 = v101;
    }

    sub_100434E28(v52, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_10000AF9C(v73, qword_1006BA5F8);
    v74 = v51;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v95 = v34;
      v92 = v78;
      *&v101 = v78;
      *v77 = 136315138;
      v79 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
      v80 = v96;
      sub_1002CB708(v79, v96);

      v81 = sub_10029142C(v80);
      v83 = v82;
      sub_100009A04(v80, &unk_1006A52C0, &unk_10057D930);
      v84 = sub_10002741C(v81, v83, &v101);

      *(v77 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v75, v76, "before add endtone the greeting is %s", v77, 0xCu);
      sub_100009B7C(v92);
      v34 = v95;
    }

    v85 = BYTE4(v94);
    sub_100434D90(v100);
    v86 = sub_100009B14(v100, v100[3]);
    v101 = *v86;
    v102 = *(v86 + 1);
    v103 = v86[4];
    v87 = sub_10040AFD0(0x746C7561666564, 0xE700000000000000);
    sub_100009B7C(v100);
    swift_beginAccess();
    v88 = v34;
    v89 = v99;
    v93(v99, v88, v50);
    v90 = v74;
    sub_10043ACE0(0x746C7561666564, 0xE700000000000000, v89, (v85 | v87) & 1, v90, v90);
    return (*(v97 + 8))(v89, v50);
  }

  else
  {
    v62 = a3 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_delegate;
    result = swift_beginAccess();
    if (*(v62 + 24))
    {
      sub_100445858(v62, &v104);
      v64 = sub_100009B14(&v104, *(&v105 + 1));
      swift_beginAccess();
      v66 = *(a4 + 16);
      v65 = *(a4 + 24);
      v67 = *v64;

      sub_100445148(a8, v66, v65, v67);

      return sub_100009B7C(&v104);
    }
  }

  return result;
}

uint64_t sub_10043FE40(uint64_t a1, char *a2)
{
  v25 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v27, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8, v16);
  v18 = &v24 - v17;
  v26 = *&a2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  sub_10003A270(v25, &v24 - v17, &unk_1006A52C0, &unk_10057D930);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_100445BE8(v18, v20 + v19, &unk_1006A52C0, &unk_10057D930);
  aBlock[4] = sub_1004459A0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100630838;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v7, v3);
  (*(v8 + 8))(v12, v27);
}

void sub_1004401AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v48[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = &v48[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v48[-1] - v18;
  __chkstk_darwin(v17, v20);
  v22 = &v48[-1] - v21;
  sub_10003A270(a2, &v48[-1] - v21, &unk_1006A52C0, &unk_10057D930);
  v23 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  if (sub_100015468(v22, 1, v4) == 1)
  {
    sub_100009A04(v22, &unk_1006A52C0, &unk_10057D930);
    v24 = sub_100005208();
    if (v25)
    {
      v26 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v23;
      v28 = *(v23 + 24);
      sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28);
      v23 = v48[0];
      v29 = *(*(v48[0] + 48) + 16 * v26 + 8);

      (*(v5 + 32))(v19, *(v23 + 56) + *(v5 + 72) * v26, v4);
      _NativeDictionary._delete(at:)();
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    sub_10000AF74(v19, v30, 1, v4);
    sub_100009A04(v19, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    (*(v5 + 32))(v9, v22, v4);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_10037938C(v9, 0x746C7561666564, 0xE700000000000000, v31, v32, v33, v34, v35, v47, v23, v48[1], v48[2], v48[3], v48[4]);
    v23 = v48[0];
  }

  sub_100434E28(v23, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000AF9C(v36, qword_1006BA5F8);
  v37 = a1;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v40 = 136315138;
    v42 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    sub_1002CB708(v42, v15);

    v43 = sub_10029142C(v15);
    v45 = v44;
    sub_100009A04(v15, &unk_1006A52C0, &unk_10057D930);
    v46 = sub_10002741C(v43, v45, v48);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "after add endtone the greeting is %s", v40, 0xCu);
    sub_100009B7C(v41);
  }
}

uint64_t sub_100440624()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_100440698@<X0>(_BYTE *a1@<X8>)
{
  if (*(sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict) + 16))
  {
    sub_100005208();
    v3 = v2;
  }

  else
  {

    v3 = 0;
  }

  *a1 = v3 & 1;
  return result;
}

uint64_t type metadata accessor for GreetingsDataSource()
{
  result = qword_1006ABBD0;
  if (!qword_1006ABBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100440988()
{
  result = type metadata accessor for LanguageManager();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_100440AF8()
{
  sub_100005EF4();
  v112 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v5);
  v7 = *(v6 + 64);
  sub_100006688();
  __chkstk_darwin(v8, v9);
  v110 = (&v93 - v10);
  sub_10000D414();
  v11 = type metadata accessor for URL();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007BAC();
  v20 = v18 - v19;
  __chkstk_darwin(v21, v22);
  v105 = &v93 - v23;
  sub_100006838();
  __chkstk_darwin(v24, v25);
  v99 = &v93 - v26;
  sub_100006838();
  __chkstk_darwin(v27, v28);
  v104 = &v93 - v29;
  sub_100006838();
  __chkstk_darwin(v30, v31);
  v33 = &v93 - v32;
  v34 = type metadata accessor for UUID();
  v35 = sub_100007FEC(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  v41 = __chkstk_darwin(v35, v40);
  v100 = v42;
  v101 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v43);
  v45 = &v93 - v44;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v46 = type metadata accessor for Logger();
  v47 = sub_10000AF9C(v46, qword_1006BA5F8);
  v97 = *(v37 + 16);
  v98 = v37 + 16;
  v97(v45, v2, v34);
  v48 = *(v14 + 16);
  v108 = v14 + 16;
  v109 = v4;
  v111 = v48;
  v48(v33, v4, v11);
  v107 = v47;
  v49 = Logger.logObject.getter();
  LODWORD(v106) = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v49, v106);
  v102 = v34;
  v103 = v37;
  if (v50)
  {
    v51 = sub_100007C08();
    v95 = v20;
    v52 = v51;
    v94 = sub_100007630();
    v113[0] = v94;
    *v52 = 136315394;
    sub_10000E854();
    sub_10000F228(v53, v54);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v96 = v2;
    v56 = v14;
    v58 = v57;
    (*(v37 + 8))(v45, v34);
    v59 = sub_10002741C(v55, v58, v113);

    *(v52 + 4) = v59;
    *(v52 + 12) = 2080;
    sub_100007E3C();
    sub_10000F228(v60, v61);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = *(v56 + 8);
    v66 = sub_100006884();
    v65(v66);
    v67 = sub_10002741C(v62, v64, v113);
    v14 = v56;
    v2 = v96;

    *(v52 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v49, v106, "saveCustomGreeting for %s, url=%s", v52, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    v68 = *(v14 + 8);
    v69 = sub_100006884();
    v68(v69);
    v70 = v45;
    v65 = v68;
    (*(v37 + 8))(v70, v34);
  }

  v71 = v110;
  v72 = 0;
  sub_10043CF08(v109, v110);
  v73 = v111;
  if (sub_100015468(v71, 1, v11) == 1)
  {
    sub_100009A04(v71, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v74 = v104;
    (*(v14 + 32))(v104, v71, v11);
    v75 = v99;
    v73(v99, v74, v11);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    v78 = sub_10000D654(v77);
    v106 = v65;
    if (v78)
    {
      v72 = sub_100005274();
      v110 = sub_100005E84();
      v113[0] = v110;
      *v72 = 136315138;
      v73(v105, v75, v11);
      v79 = String.init<A>(reflecting:)();
      v80 = v75;
      v81 = v79;
      v83 = v82;
      (v65)(v80, v11);
      v84 = sub_10002741C(v81, v83, v113);

      *(v72 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v76, v71, "successfully saved custom greeting to: %s", v72, 0xCu);
      sub_100009B7C(v110);
      sub_100008AE8();
      sub_100005F40();
    }

    else
    {

      (v65)(v75, v11);
    }

    v85 = v2;
    UUID.uuidString.getter();
    sub_10000C8E0();
    v87 = v101;
    v86 = v102;
    v97(v101, v2, v102);
    v88 = v103;
    v89 = (*(v103 + 80) + 24) & ~*(v103 + 80);
    v90 = swift_allocObject();
    v91 = v112;
    *(v90 + 16) = v112;
    (*(v88 + 32))(v90 + v89, v87, v86);
    v91;
    v92 = v104;
    sub_10043B438(v85, v72, v104, 1, sub_100446090, v90);

    v106(v92, v11);
  }

  sub_100005EDC();
}

void sub_1004413BC()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v80 = v7;
  v81 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_10000F4E8();
  v77 = v11;
  sub_100006838();
  __chkstk_darwin(v12, v13);
  sub_10000C1C4();
  v79 = v14;
  sub_10000D414();
  v15 = type metadata accessor for URL();
  v16 = sub_100007FEC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_100007FDC();
  v24 = v23 - v22;
  v25 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v26 = sub_100007BF0(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  sub_10000F4E8();
  v76 = v30;
  sub_100006838();
  __chkstk_darwin(v31, v32);
  v34 = &v75 - v33;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = sub_100007FEC(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36, v41);
  sub_100007FDC();
  sub_10000C4C4();
  v42 = *(v2 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *v1 = v42;
  (*(v38 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v35);
  v43 = v42;
  v44 = _dispatchPreconditionTest(_:)();
  v46 = *(v38 + 8);
  v45 = v38 + 8;
  v46(v1, v35);
  if ((v44 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    sub_1000080B0();
    goto LABEL_9;
  }

  v78 = v4;
  v47 = UUID.uuidString.getter();
  v49 = v48;
  sub_10000AF74(v34, 1, 1, v15);
  v50 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  if (sub_100015468(v34, 1, v15) == 1)
  {
    sub_100009A04(v34, &unk_1006A52C0, &unk_10057D930);
    v51 = sub_100005208();
    if (v52)
    {
      v53 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v50;
      v55 = *(v50 + 24);
      sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v55);
      v50 = v82;
      v56 = *(*(v82 + 48) + 16 * v53 + 8);

      v57 = v76;
      (*(v18 + 32))(v76, *(v50 + 56) + *(v18 + 72) * v53, v15);
      _NativeDictionary._delete(at:)();
      v58 = 0;
      v45 = v81;
      v1 = v78;
      v24 = v79;
    }

    else
    {
      v58 = 1;
      v45 = v81;
      v1 = v78;
      v24 = v79;
      v57 = v76;
    }

    sub_10000AF74(v57, v58, 1, v15);

    sub_100009A04(v57, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    (*(v18 + 32))(v24, v34, v15);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v50;
    sub_10037938C(v24, v47, v49, v59, v60, v61, v62, v63, v75, v76, v77, v78, v79, v80);

    v45 = v81;
    v50 = v82;
    v1 = v78;
    v24 = v79;
  }

  sub_100434E28(v50, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  UUID.uuidString.getter();
  LOBYTE(v34) = v64;
  sub_100442B38();

  v44 = v80;
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v65 = type metadata accessor for Logger();
  sub_10000AF9C(v65, qword_1006BA5F8);
  v66 = *(v44 + 16);
  v66(v24, v1, v45);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (sub_10000D654(v68))
  {
    v69 = sub_100005274();
    v70 = sub_100005E84();
    v82 = v70;
    *v69 = 136315138;
    v66(v77, v24, v45);
    String.init<A>(reflecting:)();
    (*(v44 + 8))(v24, v45);
    v71 = sub_1000060A8();
    v74 = sub_10002741C(v71, v72, v73);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v67, v34, "removed custom greeting for account %s", v69, 0xCu);
    sub_100009B7C(v70);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    (*(v44 + 8))(v24, v45);
  }

  sub_100005EDC();
}

void sub_10044193C()
{
  sub_100005EF4();
  v115 = v2;
  v4 = v3;
  v109 = type metadata accessor for URL();
  v5 = sub_100007FEC(v109);
  v107 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_10000F4E8();
  v106 = v10;
  sub_100006838();
  v13 = __chkstk_darwin(v11, v12);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v99 - v16;
  __chkstk_darwin(v15, v18);
  sub_10000C1C4();
  v114 = v19;
  v20 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v20);
  v22 = *(v21 + 64);
  sub_100006688();
  __chkstk_darwin(v23, v24);
  v26 = &v99 - v25;
  v27 = type metadata accessor for UUID();
  v28 = sub_100007FEC(v27);
  v112 = v29;
  v113 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28, v32);
  sub_10000F4E8();
  v108 = v33;
  sub_100006838();
  __chkstk_darwin(v34, v35);
  v37 = &v99 - v36;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = sub_100007FEC(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39, v44);
  sub_100007FDC();
  sub_10000C4C4();
  v45 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v1 = v45;
  (*(v41 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v38);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  (*(v41 + 8))(v1, v38);
  if (v45)
  {
    v101 = v17;
    v105 = v4;
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080B0();
LABEL_3:
  v47 = type metadata accessor for Logger();
  v48 = sub_10000AF9C(v47, qword_1006BA5F8);
  v50 = v112;
  v49 = v113;
  v102 = *(v112 + 16);
  v103 = v112 + 16;
  v102(v37, v115, v113);
  v51 = v0;
  v110 = v48;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  v54 = os_log_type_enabled(v52, v53);
  v111 = v26;
  if (v54)
  {
    v55 = sub_100007C08();
    v116 = sub_100007630();
    *v55 = 136315394;
    sub_10000E854();
    sub_10000F228(v56, v57);
    dispatch thunk of CustomStringConvertible.description.getter();
    v104 = *(v50 + 8);
    v104(v37, v49);
    v58 = sub_100007A7C();

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    v59 = v109;
    Dictionary.description.getter();
    sub_10000C8E0();

    v60 = sub_100007A7C();

    *(v55 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "customGreeting for %s, greetingsDict=%s", v55, 0x16u);
    swift_arrayDestroy();
    sub_100008AE8();
    v26 = v111;
    sub_100005F40();
  }

  else
  {

    v104 = *(v50 + 8);
    v104(v37, v49);
    v59 = v109;
  }

  UUID.uuidString.getter();
  v61 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  sub_1002CB708(v61, v26);

  sub_1002E83D0();
  URL.init(fileURLWithPath:isDirectory:)();

  UUID.uuidString.getter();
  v62 = v101;
  URL.appendingPathComponent(_:)();

  v63 = v107;
  v64 = *(v107 + 1);
  v65 = sub_1000060A8();
  v64(v65);
  sub_10000BC58();
  v66 = v114;
  URL.appendingPathComponent(_:)();
  (v64)(v62, v59);
  v67 = *(v63 + 2);
  v68 = v106;
  v67(v106, v66, v59);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  v71 = os_log_type_enabled(v69, v70);
  v100 = v64;
  if (v71)
  {
    v72 = sub_100005274();
    v107 = v67;
    v73 = v64;
    v74 = v72;
    v75 = sub_100005E84();
    v116 = v75;
    *v74 = 136315138;
    sub_100007E3C();
    sub_10000F228(v76, v77);
    dispatch thunk of CustomStringConvertible.description.getter();
    v73(v68, v59);
    v67 = v107;
    v78 = sub_100007A7C();

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v69, v70, "rawGreetingURL %s", v74, 0xCu);
    sub_100009B7C(v75);
    v66 = v114;
    sub_100005F40();
    sub_100008AE8();
  }

  else
  {

    (v64)(v68, v59);
  }

  v79 = v108;
  v80 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v81 = String._bridgeToObjectiveC()();

  v82 = [v80 fileExistsAtPath:v81];

  if (v82)
  {
    v83 = v111;
    sub_100009A04(v111, &unk_1006A52C0, &unk_10057D930);
    v67(v83, v66, v59);
    sub_100007C20();
    sub_10000AF74(v84, v85, v86, v59);
  }

  v87 = v113;
  v102(v79, v115, v113);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = v79;
    v91 = sub_100007C08();
    v116 = sub_100007630();
    *v91 = 136315394;
    v92 = v111;
    sub_1000052D0();
    swift_beginAccess();
    v93 = sub_10029142C(v92);
    v95 = sub_10002741C(v93, v94, &v116);

    *(v91 + 4) = v95;
    *(v91 + 12) = 2080;
    sub_10000E854();
    sub_10000F228(v96, v97);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10000C8E0();
    v104(v90, v87);
    v98 = sub_100007A7C();

    *(v91 + 14) = v98;
    _os_log_impl(&_mh_execute_header, v88, v89, "returning %s for accountUUID %s", v91, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();

    v100(v114, v109);
  }

  else
  {

    v104(v79, v87);
    v100(v66, v59);
    v92 = v111;
  }

  sub_1000052D0();
  swift_beginAccess();
  sub_10003A270(v92, v105, &unk_1006A52C0, &unk_10057D930);
  sub_100009A04(v92, &unk_1006A52C0, &unk_10057D930);
  sub_100005EDC();
}

void sub_100442294()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  sub_100006EC4();
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_10000EC00();
  sub_10043F530(v11);
  URL.path.getter();
  (*(v6 + 8))(v0, v3);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = sub_10000EC00();
    sub_10043F530(v14);
    v15 = 0;
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA5F8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (sub_10000D654(v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, 0x2Eu, "default greeting does not exist", v19, 2u);
      sub_100005F40();
    }

    v15 = 1;
  }

  sub_10000AF74(v2, v15, 1, v3);
  sub_100005EDC();
}

void sub_1004424A8()
{
  sub_100005EF4();
  v56 = v0;
  v57 = v1;
  v54 = v2;
  v51 = v4;
  v52 = v3;
  v6 = v5;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v59);
  v61 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7, v11);
  sub_100007FDC();
  v55 = v13 - v12;
  sub_10000D414();
  v60 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v60);
  v58 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007FDC();
  v50 = v20 - v19;
  v21 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v22 = sub_100005EB4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  v29 = &v50 - v28;
  v30 = type metadata accessor for UUID();
  v31 = sub_100007FEC(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31, v36);
  v37 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *&v6[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  (*(v33 + 16))(v37, v51, v30);
  sub_10003A270(v52, v29, &unk_1006A52C0, &unk_10057D930);
  v38 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v39 = (v35 + *(v24 + 80) + v38) & ~*(v24 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v6;
  (*(v33 + 32))(v40 + v38, v37, v30);
  sub_100445BE8(v29, v40 + v39, &unk_1006A52C0, &unk_10057D930);
  v63[4] = v56;
  v63[5] = v40;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 1107296256;
  sub_10000A600();
  v63[2] = v41;
  v63[3] = v57;
  v42 = _Block_copy(v63);
  v43 = v6;
  v44 = v50;
  static DispatchQoS.unspecified.getter();
  v62 = _swiftEmptyArrayStorage;
  sub_10000AB18();
  sub_10000F228(v45, v46);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  v47 = *(v61 + 8);
  v48 = sub_100007764();
  v49(v48);
  (*(v58 + 8))(v44, v60);

  sub_100005EDC();
}

uint64_t sub_100442B38()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v4 = __chkstk_darwin(v0, v3);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v55 - v9;
  v12 = __chkstk_darwin(v8, v11);
  v14 = v55 - v13;
  __chkstk_darwin(v12, v15);
  v17 = v55 - v16;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v58 = v1[1];
  v59 = v1 + 1;
  v58(v14, v0);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v57 = v6;
  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA5F8);
  v19 = v1[2];
  v19(v10, v17, v0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v55[1] = v1 + 2;
  v56 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v55[0] = v17;
    v25 = v24;
    v61 = v24;
    *v23 = 136315138;
    v19(v14, v10, v0);
    v26 = String.init<A>(reflecting:)();
    v28 = v27;
    v58(v10, v0);
    v29 = sub_10002741C(v26, v28, &v61);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "removing directory %s", v23, 0xCu);
    sub_100009B7C(v25);
    v17 = v55[0];
  }

  else
  {

    v58(v10, v0);
  }

  v30 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v61 = 0;
  v34 = [v30 removeItemAtURL:v32 error:&v61];

  if (v34)
  {
    v35 = v61;
    return (v58)(v17, v0);
  }

  else
  {
    v37 = v61;
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v56;
    v39 = v57;
    v56(v57, v17, v0);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      v61 = v55[0];
      *v43 = 136315394;
      v40(v14, v39, v0);
      v44 = String.init<A>(reflecting:)();
      v45 = v39;
      v46 = v44;
      v48 = v47;
      v49 = v58;
      v58(v45, v0);
      v50 = sub_10002741C(v46, v48, &v61);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      v60 = v38;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v51 = String.init<A>(reflecting:)();
      v53 = sub_10002741C(v51, v52, &v61);

      *(v43 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v41, v42, "removing directory %s returned an error: %s", v43, 0x16u);
      swift_arrayDestroy();

      return v49(v17, v0);
    }

    else
    {

      v54 = v58;
      v58(v39, v0);
      return v54(v17, v0);
    }
  }
}

void sub_100443100()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "subscriptionsDidChange");
    sub_100008AE8();
  }

  sub_100435BC8();
}

uint64_t sub_1004432B8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_100445C88;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100630900;
  v15 = _Block_copy(aBlock);
  v16 = v0;
  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
}

uint64_t sub_100443558()
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "handleVMAccountsDidChange", v3, 2u);
  }

  return sub_1004378BC();
}

uint64_t sub_100443684()
{
  v0 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 URLsForDirectory:5 inDomains:1];

  v7 = type metadata accessor for URL();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E8B38(v8, v4);

  result = sub_100015468(v4, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1002E83D0();
    URL.appendingPathComponent(_:isDirectory:)();

    return (*(*(v7 - 8) + 8))(v4, v7);
  }

  return result;
}

void sub_1004437E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v44 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v47 = 0;
  v17 = [v13 removeItemAtURL:v15 error:&v47];

  if (v17)
  {
    v18 = v47;
  }

  else
  {
    v19 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v20 = [v12 defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v47 = 0;
  v27 = [v20 copyItemAtURL:v23 toURL:v25 error:&v47];

  v28 = v47;
  if (v27)
  {

    v29 = v28;
  }

  else
  {
    v45 = v47;
    v30 = v47;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000AF9C(v32, qword_1006BA5F8);
    v33 = *(v4 + 16);
    v33(v11, a2, v3);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v36 = 136315394;
      v33(v44, v11, v3);
      v37 = String.init<A>(reflecting:)();
      v39 = v38;
      (*(v4 + 8))(v11, v3);
      v40 = sub_10002741C(v37, v39, &v47);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v46 = v31;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v41 = String.init<A>(reflecting:)();
      v43 = sub_10002741C(v41, v42, &v47);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error copying completed greeting to %s: %s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v4 + 8))(v11, v3);
    }
  }
}

uint64_t sub_100443C78(void *a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v59 = a1;
  v53 = type metadata accessor for URL();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v53, v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v60 = &v51 - v10;
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v51 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v51 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v51 - v20;
  sub_100442B38();
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v61 = v3;
  v22 = *(v3 + 8);
  v23 = v53;
  v22(v18, v53);
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v24 = v22;
  v22(v18, v23);
  sub_10043DA20(v14);
  v59 = objc_opt_self();
  v25 = [v59 defaultManager];
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v62 = 0;
  v29 = [v25 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:0 options:0 error:&v62];

  v30 = v62;
  if (v29)
  {
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v30;

    v33 = v31;
    v34 = 0;
    v35 = *(v33 + 16);
    v36 = v61;
    v57 = v61 + 16;
    v58 = v35;
    v37 = v52;
    v55 = v14;
    v56 = v21;
    for (i = v33; ; v33 = i)
    {
      if (v58 == v34)
      {

        v24(v14, v23);
        return (v24)(v21, v23);
      }

      if (v34 >= *(v33 + 16))
      {
        __break(1u);
      }

      v38 = v60;
      (*(v36 + 16))(v60, v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, v23);
      URL.lastPathComponent.getter();
      URL.appendingPathComponent(_:)();

      v39 = [v59 defaultManager];
      URL._bridgeToObjectiveC()(v40);
      v42 = v41;
      v24(v38, v23);
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      v62 = 0;
      LODWORD(v38) = [v39 copyItemAtURL:v42 toURL:v44 error:&v62];

      v46 = v62;
      if (!v38)
      {
        break;
      }

      ++v34;
      v24(v37, v23);
      v14 = v55;
      v21 = v56;
      v36 = v61;
    }

    v50 = v46;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v24(v37, v23);
    v24(v55, v23);
    v48 = v56;
  }

  else
  {
    v47 = v62;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v24(v14, v23);
    v48 = v21;
  }

  return (v24)(v48, v23);
}

uint64_t sub_100444138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(sub_10026D814(&unk_1006A52C0, &unk_10057D930) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v12 = *(v11 + 64) + 15;
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100444238, 0, 0);
}

uint64_t sub_100444238()
{
  if (qword_1006A07C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];
  sub_10026D814(&qword_1006A4818, &qword_1005800B0);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = xmmword_10057D6A0;
  v7 = *(v2 + 16);
  v0[12] = v7;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6 + v5, v3, v1);
  URL.init(fileURLWithPath:)();
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1004443B8;
  v9 = v0[10];

  return sub_1002DEAC0(v9, v6);
}