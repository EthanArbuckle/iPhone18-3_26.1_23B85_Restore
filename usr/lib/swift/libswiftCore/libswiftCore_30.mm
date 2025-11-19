id Dictionary._Variant.capacity.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 24);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return [a1 count];
}

Swift::Void __swiftcall Dictionary.reserveCapacity(_:)(Swift::Int a1)
{
  type metadata accessor for Dictionary._Variant(0, v1[2], v1[3], v1[4]);

  Dictionary._Variant.reserveCapacity(_:)(a1);
}

Swift::Void __swiftcall Dictionary._Variant.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *v2;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v8 = *v2;
    }

    else
    {
      v8 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    v9 = [v8 count];
    if (v9 <= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = v9;
    }

    *v2 = _NativeDictionary.init(_:capacity:)(v8, v10, v7, v6, *(v3 + 32));
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
    v12 = isUniquelyReferenced_nonNull_native;
    v14 = *v2;
    v13 = *v2;
    *v2 = 0x8000000000000000;
    if (*(v13 + 24) >= a1)
    {
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeDictionary(0, v7, v6, *(v3 + 32));
        _NativeDictionary.copy()();
      }
    }

    else
    {
      type metadata accessor for _NativeDictionary(0, v7, v6, *(v3 + 32));
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, v12);
    }

    *v2 = v14;
  }
}

__objc2_class **_NativeDictionary.bridged()(__objc2_class **a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (one-time initialization token for _bridgeInitializedSuccessfully != -1)
  {
    v12 = a2;
    v13 = a4;
    swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, a3);
    a2 = v12;
    a4 = v13;
  }

  if (!_bridgeInitializedSuccessfully)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _orphanedFoundationSubclassesReparented = 1;
  if (a1 == &_swiftEmptyDictionarySingleton)
  {
    a1 = &_swiftEmptyDictionarySingleton;
    &_swiftEmptyDictionarySingleton;
  }

  else if (a1[2])
  {
    v6 = a4;
    v7 = a2;
    if (_swift_isClassOrObjCExistentialType(a2, a2) && _swift_isClassOrObjCExistentialType(a3, a3))
    {
      v8 = type metadata accessor for _DictionaryStorage(0, v7, a3, v6);
      if (!swift_dynamicCastClass(a1, v8))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v9 = type metadata accessor for _SwiftDeferredNSDictionary(0, v7, a3, v6);
      v10 = swift_allocObject(v9, 0x28, 7uLL);
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = a1;
      return v10;
    }
  }

  else
  {
    a1;
    return &_swiftEmptyDictionarySingleton;
  }

  return a1;
}

unint64_t _HashTable.startBucket.getter(unint64_t *a1, unint64_t a2)
{
  result = a2 + 1;
  if (a2 <= 0xFFFFFFFFFFFFFFBFLL)
  {
    v4 = 0;
    v5 = (a2 + 64) >> 6;
    while (1)
    {
      v7 = *a1++;
      v6 = v7;
      if (v7)
      {
        break;
      }

      v4 -= 64;
      if (!--v5)
      {
        return result;
      }
    }

    return __clz(__rbit64(v6)) - v4;
  }

  return result;
}

void *_SwiftDictionaryNSEnumerator.init(_:)(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  v4 = *(a1 + 32);
  v2[2] = v4;
  v5 = v4;
  v6 = _SwiftDeferredNSDictionary.bridgeKeys()(v5);
  a1;
  v7 = v2[3];
  v2[3] = v6;
  v7;
  v8 = 0;
  v9 = v2[2];
  v10 = (v9 + 64);
  v11 = -1 << *(v9 + 32);
  v12 = -v11;
  v13 = (63 - v11) >> 6;
  while (1)
  {
    v15 = *v10++;
    v14 = v15;
    if (v15)
    {
      break;
    }

    v8 -= 64;
    if (!--v13)
    {
      v16 = v12;
      goto LABEL_6;
    }
  }

  v16 = __clz(__rbit64(v14)) - v8;
LABEL_6:
  v2[4] = v16;
  v2[5] = v12;
  return v2;
}

void *_SwiftDeferredNSDictionary.bridgeKeys()(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  v43 = (&v32 - v6);
  if (!_swift_isClassOrObjCExistentialType(v2, v2))
  {
    v7 = atomic_load(v1 + 2);
    if (v7)
    {
      type metadata accessor for __BridgingHashBuffer(0);
      v9 = v8;
      v10 = swift_unknownObjectRetain(v7);
      if (swift_dynamicCastClass(v10, v9))
      {
        return v7;
      }
    }

    else
    {
      v34 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = v1[4];
      v12 = *(v11 + 32);
      type metadata accessor for __BridgingHashBuffer(0);
      v35 = v13;
      v14 = swift_allocObject(v13, ((8 << v12) + 40), 7uLL);
      v14[2] = v11;
      v14[3] = v11 + 64;
      v38 = v11 + 64;
      v14[4] = ~(-1 << v12);
      if (1 << v12 < 64)
      {
        v15 = ~(-1 << (1 << v12));
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v11 + 64);
      v36 = v14;
      v37 = ((1 << v12) + 63) >> 6;
      v33 = (v3 + 32);
      v39 = (v3 + 8);
      v40 = v14 + 5;
      v41 = v3 + 16;
      v11;
      v17 = 0;
      v18 = v43;
LABEL_10:
      if (v16)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        goto LABEL_17;
      }

      v20 = v17;
      while (1)
      {
        v17 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v17 >= v37)
        {
          break;
        }

        v21 = *(v38 + 8 * v17);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
LABEL_17:
          v22 = v19 | (v17 << 6);
          (*(v3 + 16))(v43, *(v1[4] + 48) + *(v3 + 72) * v22, v2);
          if (_swift_isClassOrObjCExistentialType(v2, v2))
          {
            if (v4 == 8)
            {
              v23 = *v18;
              v24 = v3;
              v42 = v22;
              v25 = *v39;
              swift_unknownObjectRetain(v23);
              v25(v18, v2);
              v3 = v24;
              v4 = 8;
              v40[v42] = v23;
              goto LABEL_10;
            }

LABEL_28:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = v34;
          (*v33)(v34, v43, v2);
          v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v26, v2);
          v40[v22] = v27;
          goto LABEL_10;
        }
      }

      v28 = v36;
      v36;
      v29 = 0;
      atomic_compare_exchange_strong(v1 + 2, &v29, v28);
      if (v29)
      {
        swift_unknownObjectRelease(v28);
      }

      v7 = atomic_load(v1 + 2);
      if (!v7)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v30 = swift_unknownObjectRetain(v7);
      if (swift_dynamicCastClass(v30, v35))
      {
        v28;
        return v7;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

Swift::Bool __swiftcall _HashTable.isOccupied(_:)(Swift::_HashTable::Bucket a1)
{
  offset = a1.offset;
  LOBYTE(a1.offset) = 0;
  if ((offset & 0x8000000000000000) == 0 && v2 + 1 > offset)
  {
    a1.offset = (*(v1 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) >> offset) & 1;
  }

  return a1.offset;
}

atomic_ullong *_SwiftDictionaryNSEnumerator.nextObject()()
{
  offset = v0[4].offset;
  if (offset == v0[5].offset)
  {
    return 0;
  }

  v0[4].offset = _HashTable.occupiedBucket(after:)(v0[4]).offset;
  return _SwiftDictionaryNSEnumerator.bridgedKey(at:)(offset);
}

Swift::_HashTable::Bucket __swiftcall _HashTable.occupiedBucket(after:)(Swift::_HashTable::Bucket after)
{
  v3 = after.offset >> 6;
  if ((*(v1 + 8 * (after.offset >> 6)) & (-2 << SLOBYTE(after.offset))) != 0)
  {
    return (__clz(__rbit64(*(v1 + 8 * (after.offset >> 6)) & (-2 << SLOBYTE(after.offset)))) | after.offset & 0xFFFFFFFFFFFFFFC0);
  }

  result.offset = v2 + 1;
  v5 = v3 << 6;
  for (i = v3 + 1; i < (v2 + 64) >> 6; ++i)
  {
    v7 = *(v1 + 8 * i);
    v5 += 64;
    if (v7)
    {
      return (__clz(__rbit64(v7)) + v5);
    }
  }

  return result;
}

id _stdlib_atomicLoadARCRef(object:)(unint64_t *a1)
{
  result = atomic_load(a1);
  if (result)
  {
    return swift_unknownObjectRetain(result);
  }

  return result;
}

BOOL _stdlib_atomicInitializeARCRef(object:desired:)(atomic_ullong *a1, void *a2)
{
  swift_unknownObjectRetain(a2);
  v4 = 0;
  atomic_compare_exchange_strong(a1, &v4, a2);
  v5 = v4 == 0;
  if (v4)
  {
    swift_unknownObjectRelease(a2);
  }

  return v5;
}

Swift::_HashTable::Bucket_optional __swiftcall _HashTable.Iterator.next()()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = 0;
    v0[3] = (v1 - 1) & v1;
    v3 = __clz(__rbit64(v1)) | (v0[2] << 6);
  }

  else
  {
    v4 = v0[2];
    v5 = (v0[1] + 64) >> 6;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v5)
      {
        v3 = 0;
        v2 = 1;
        goto LABEL_10;
      }

      v0[2] = v6;
      v7 = *(*v0 + 8 * v6);
      v0[3] = v7;
      ++v4;
      if (v7)
      {
        v2 = 0;
        v0[3] = (v7 - 1) & v7;
        v3 = __clz(__rbit64(v7)) | (v6 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

LABEL_10:
  result.value.offset = v3;
  result.is_nil = v2;
  return result;
}

void *_SwiftDeferredNSDictionary.bridgeValues()(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  v43 = (&v32 - v6);
  if (!_swift_isClassOrObjCExistentialType(v2, v2))
  {
    v7 = atomic_load(v1 + 3);
    if (v7)
    {
      type metadata accessor for __BridgingHashBuffer(0);
      v9 = v8;
      v10 = swift_unknownObjectRetain(v7);
      if (swift_dynamicCastClass(v10, v9))
      {
        return v7;
      }
    }

    else
    {
      v34 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = v1[4];
      v12 = *(v11 + 32);
      type metadata accessor for __BridgingHashBuffer(0);
      v35 = v13;
      v14 = swift_allocObject(v13, ((8 << v12) + 40), 7uLL);
      v14[2] = v11;
      v14[3] = v11 + 64;
      v38 = v11 + 64;
      v14[4] = ~(-1 << v12);
      if (1 << v12 < 64)
      {
        v15 = ~(-1 << (1 << v12));
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v11 + 64);
      v36 = v14;
      v37 = ((1 << v12) + 63) >> 6;
      v33 = (v3 + 32);
      v39 = (v3 + 8);
      v40 = v14 + 5;
      v41 = v3 + 16;
      v11;
      v17 = 0;
      v18 = v43;
LABEL_10:
      if (v16)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        goto LABEL_17;
      }

      v20 = v17;
      while (1)
      {
        v17 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v17 >= v37)
        {
          break;
        }

        v21 = *(v38 + 8 * v17);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
LABEL_17:
          v22 = v19 | (v17 << 6);
          (*(v3 + 16))(v43, *(v1[4] + 56) + *(v3 + 72) * v22, v2);
          if (_swift_isClassOrObjCExistentialType(v2, v2))
          {
            if (v4 == 8)
            {
              v23 = *v18;
              v24 = v3;
              v42 = v22;
              v25 = *v39;
              swift_unknownObjectRetain(v23);
              v25(v18, v2);
              v3 = v24;
              v4 = 8;
              v40[v42] = v23;
              goto LABEL_10;
            }

LABEL_28:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v26 = v34;
          (*v33)(v34, v43, v2);
          v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v26, v2);
          v40[v22] = v27;
          goto LABEL_10;
        }
      }

      v28 = v36;
      v36;
      v29 = 0;
      atomic_compare_exchange_strong(v1 + 3, &v29, v28);
      if (v29)
      {
        swift_unknownObjectRelease(v28);
      }

      v7 = atomic_load(v1 + 3);
      if (!v7)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v30 = swift_unknownObjectRetain(v7);
      if (swift_dynamicCastClass(v30, v35))
      {
        v28;
        return v7;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

id @objc _SwiftDeferredNSDictionary.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

atomic_ullong *_SwiftDeferredNSDictionary.object(forKey:)(void *a1)
{
  v2 = v1;
  v33 = *v1;
  v4 = *(v33 + 104);
  v32 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&v32 - v5);
  v8 = *(v7 + 96);
  v11 = type metadata accessor for Optional(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v32 - v14);
  v16 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v32 - v17;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v8, v19, v15);
  if ((*(v16 + 48))(v15, 1, v8) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  (*(v16 + 32))(v18, v15, v8);
  v20 = v2[4];
  v21 = *(v33 + 112);
  v20;
  v22 = __RawDictionaryStorage.find<A>(_:)(v18, v8, v21);
  LOBYTE(v21) = v23;
  v20;
  v24 = (*(v16 + 8))(v18, v8);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v25 = _SwiftDeferredNSDictionary.bridgeValues()(v24);
  if (v25)
  {
    v26 = v25[v22 + 5];
    v27 = v25;
    swift_unknownObjectRetain(v26);
    v27;
    return v26;
  }

  else
  {
    v29 = *(v2[4] + 56);
    v30 = v32;
    (*(v32 + 16))(v6, v29 + *(v32 + 72) * v22, v4);
    v31 = _bridgeAnythingToObjectiveC<A>(_:)(v6, v4);
    (*(v30 + 8))(v6, v4);
    return v31;
  }
}

void *_SwiftDeferredNSDictionary.keyEnumerator()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  if (_swift_isClassOrObjCExistentialType(v3, v3))
  {
    v4 = v1[4];
    v5 = type metadata accessor for _SwiftDictionaryNSEnumerator(0, v3, *(v2 + 104), *(v2 + 112));
    v6 = swift_allocObject(v5, 0x30, 7uLL);
    v7 = v6;
    v8 = 0;
    v6[2] = v4;
    v6[3] = 0;
    v9 = (v4 + 64);
    v10 = -1 << *(v4 + 32);
    v11 = -v10;
    v12 = (63 - v10) >> 6;
    while (1)
    {
      v14 = *v9++;
      v13 = v14;
      if (v14)
      {
        break;
      }

      v8 -= 64;
      if (!--v12)
      {
        v15 = v11;
        goto LABEL_8;
      }
    }

    v15 = __clz(__rbit64(v13)) - v8;
LABEL_8:
    v6[4] = v15;
    v6[5] = v11;
    v4;
  }

  else
  {
    v16 = type metadata accessor for _SwiftDictionaryNSEnumerator(0, v3, *(v2 + 104), *(v2 + 112));
    v7 = swift_allocObject(v16, 0x30, 7uLL);
    v17 = v1;
    _SwiftDictionaryNSEnumerator.init(_:)(v17);
  }

  return v7;
}

void *_SwiftDeferredNSDictionary.getObjects(_:andKeys:count:)(uint64_t a1, void *a2, uint64_t a3)
{
  v120 = a2;
  v121 = a1;
  v117 = *(*v3 + 104);
  v5 = *(*(v117 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = (&v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v98 - v9);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v114 = (&v98 - v12);
  v118 = *(v13 + 96);
  v116 = *(v118 - 1);
  v14 = *(v116 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v16 = MEMORY[0x1EEE9AC00](v15);
  result = MEMORY[0x1EEE9AC00](v16);
  v115 = (&v98 - v21);
  if (v22 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3)
  {
    v109 = v20;
    v111 = v19;
    v106 = v18;
    v23 = _SwiftDeferredNSDictionary.bridgeKeys()(result);
    v122 = _SwiftDeferredNSDictionary.bridgeValues()(v23);
    if (v120)
    {
      v119 = v23;
      v110 = v14;
      v112 = a3;
      v113 = v3;
      if (v121)
      {
        v101 = v10;
        v109 = v5;
        v24 = 0;
        v25 = 0;
        v26 = v3[4];
        v29 = *(v26 + 64);
        v28 = v26 + 64;
        v27 = v29;
        v30 = 1 << *(v28 - 32);
        v31 = -1;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        v32 = v31 & v27;
        v33 = (v30 + 63) >> 6;
        v108 = (v119 + 5);
        v105 = v116 + 16;
        v100 = (v116 + 32);
        v107 = (v122 + 5);
        v103 = (v116 + 8);
        v104 = v111 + 16;
        v99 = (v111 + 32);
        v102 = (v111 + 8);
        while (1)
        {
          if (v32)
          {
            v35 = __clz(__rbit64(v32));
            v32 &= v32 - 1;
            goto LABEL_17;
          }

          v36 = v25;
          do
          {
            v25 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
              goto LABEL_80;
            }

            if (v25 >= v33)
            {
              goto LABEL_29;
            }

            v37 = *(v28 + 8 * v25);
            ++v36;
          }

          while (!v37);
          v35 = __clz(__rbit64(v37));
          v32 = (v37 - 1) & v37;
LABEL_17:
          v38 = v35 | (v25 << 6);
          if (v119)
          {
            v39 = *&v108[8 * v38];
            result = swift_unknownObjectRetain(v39);
            goto LABEL_22;
          }

          v40 = v118;
          (*(v116 + 16))(v115, *(v113[4] + 48) + *(v116 + 72) * v38, v118);
          if (_swift_isClassOrObjCExistentialType(v40, v40))
          {
            if (v110 == 8)
            {
              v41 = v32;
              v42 = v115;
              v39 = *v115;
              v43 = *v103;
              swift_unknownObjectRetain(*v115);
              v44 = v42;
              v32 = v41;
              result = v43(v44, v118);
              a3 = v112;
              goto LABEL_22;
            }

LABEL_80:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v49 = v106;
          v50 = v118;
          (*v100)(v106, v115, v118);
          result = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v49, v50);
          v39 = result;
LABEL_22:
          if (v24 == 0x1000000000000000)
          {
            __break(1u);
            goto LABEL_83;
          }

          v120[v24] = v39;
          swift_unknownObjectRelease(v39);
          if (v122)
          {
            v34 = *&v107[8 * v38];
            swift_unknownObjectRetain(v34);
          }

          else
          {
            v45 = *(v113[4] + 56) + *(v111 + 72) * v38;
            v46 = v117;
            (*(v111 + 16))(v114, v45, v117);
            if (_swift_isClassOrObjCExistentialType(v46, v46))
            {
              if (v109 != 8)
              {
                goto LABEL_80;
              }

              v47 = v114;
              v34 = *v114;
              v48 = *v102;
              swift_unknownObjectRetain(*v114);
              a3 = v112;
              v48(v47, v117);
            }

            else
            {
              v51 = v101;
              v52 = v117;
              (*v99)(v101, v114, v117);
              v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v51, v52);
            }
          }

          *(v121 + 8 * v24) = v34;
          swift_unknownObjectRelease(v34);
          if (++v24 == a3)
          {
LABEL_29:
            v122;
            v53 = v119;
            return v53;
          }
        }
      }

      v74 = v120;
      v122;
      v75 = 0;
      v76 = 0;
      v77 = v3[4];
      v80 = *(v77 + 64);
      v79 = v77 + 64;
      v78 = v80;
      v81 = 1 << *(v79 - 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v83 = v82 & v78;
      v84 = (v81 + 63) >> 6;
      v85 = v119;
      v121 = v116 + 16;
      v122 = v119 + 5;
      v115 = (v116 + 32);
      v117 = (v116 + 8);
      v86 = v109;
      while (v83)
      {
        v87 = __clz(__rbit64(v83));
        v83 &= v83 - 1;
        v88 = v87 | (v76 << 6);
        if (v85)
        {
LABEL_56:
          v89 = v122[v88];
          swift_unknownObjectRetain(v89);
          if (v75 == 0x1000000000000000)
          {
            goto LABEL_69;
          }
        }

        else
        {
LABEL_63:
          v92 = v118;
          (*(v116 + 16))(v86, *(v113[4] + 48) + *(v116 + 72) * v88, v118);
          if (_swift_isClassOrObjCExistentialType(v92, v92))
          {
            if (v110 != 8)
            {
              goto LABEL_80;
            }

            v89 = *v86;
            v93 = *v117;
            swift_unknownObjectRetain(*v86);
            v93(v86, v118);
            v85 = v119;
            if (v75 == 0x1000000000000000)
            {
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }
          }

          else
          {
            v94 = v106;
            v95 = v118;
            (*v115)(v106, v86, v118);
            v96 = v94;
            v85 = v119;
            v89 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v96, v95);
            if (v75 == 0x1000000000000000)
            {
              goto LABEL_69;
            }
          }
        }

        v74[v75] = v89;
        swift_unknownObjectRelease(v89);
        if (++v75 == v112)
        {
          goto LABEL_70;
        }
      }

      v90 = v76;
      while (1)
      {
        v76 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_79;
        }

        if (v76 >= v84)
        {
          break;
        }

        v91 = *(v79 + 8 * v76);
        ++v90;
        if (v91)
        {
          v83 = (v91 - 1) & v91;
          v88 = __clz(__rbit64(v91)) | (v76 << 6);
          if (v85)
          {
            goto LABEL_56;
          }

          goto LABEL_63;
        }
      }

LABEL_70:
      v53 = v85;
      return v53;
    }

    else
    {
      v23;
      if (v121)
      {
        v101 = v10;
        v109 = v5;
        v54 = 0;
        v55 = 0;
        v113 = v3;
        v56 = v3[4];
        v59 = *(v56 + 64);
        v58 = v56 + 64;
        v57 = v59;
        v60 = 1 << *(v58 - 32);
        v61 = -1;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        v62 = v61 & v57;
        v63 = (v60 + 63) >> 6;
        v64 = v122 + 5;
        v65 = v111;
        v118 = v122 + 5;
        v119 = (v111 + 16);
        v115 = (v111 + 32);
        v116 = v111 + 8;
        while (1)
        {
          if (!v62)
          {
            v67 = v55;
            while (1)
            {
              v55 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_78;
              }

              if (v55 >= v63)
              {
                break;
              }

              v68 = *(v58 + 8 * v55);
              ++v67;
              if (v68)
              {
                v66 = __clz(__rbit64(v68));
                v62 = (v68 - 1) & v68;
                goto LABEL_41;
              }
            }

LABEL_71:
            v53 = v122;
            return v53;
          }

          v66 = __clz(__rbit64(v62));
          v62 &= v62 - 1;
LABEL_41:
          v69 = v66 | (v55 << 6);
          if (v122)
          {
            v70 = v64[v69];
            result = swift_unknownObjectRetain(v70);
          }

          else
          {
            v71 = v117;
            (*(v65 + 16))(v7, *(v113[4] + 56) + *(v65 + 72) * v69, v117);
            if (_swift_isClassOrObjCExistentialType(v71, v71))
            {
              if (v109 != 8)
              {
                goto LABEL_80;
              }

              v70 = *v7;
              v120 = *v116;
              swift_unknownObjectRetain(v70);
              result = (v120)(v7, v117);
            }

            else
            {
              v72 = v101;
              v73 = v117;
              (*v115)(v101, v7, v117);
              result = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v72, v73);
              v70 = result;
            }

            v64 = v118;
          }

          if (v54 == 0x1000000000000000)
          {
            break;
          }

          *(v121 + 8 * v54) = v70;
          swift_unknownObjectRelease(v70);
          if (++v54 == a3)
          {
            goto LABEL_71;
          }
        }

LABEL_83:
        __break(1u);
      }

      else
      {
        v97 = v122;

        return v97;
      }
    }
  }

  return result;
}

void @objc _SwiftDeferredNSDictionary.enumerateKeysAndObjects(options:using:)(atomic_ullong *a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  a1;
  specialized _SwiftDeferredNSDictionary.enumerateKeysAndObjects(options:using:)(v5);
  a1;

  _Block_release(v5);
}

uint64_t _SwiftDeferredNSDictionary.countByEnumerating(with:objects:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 96);
  v56 = *(v7 - 1);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v55 = (&v41 - v12);
  v13 = v3[4];
  v14 = v13 + 64;
  v15 = -1 << *(v13 + 32);
  v16 = *v10;
  v17 = *(v10 + 8);
  v18 = *(v10 + 16);
  v19 = *(v10 + 24);
  v20 = *(v10 + 48);
  v57 = *(v10 + 32);
  v58 = v20;
  if (!v16)
  {
    v33 = 0;
    v19 = -v15;
    v34 = (63 - v15) >> 6;
    v35 = (v13 + 64);
    while (1)
    {
      v37 = *v35++;
      v36 = v37;
      if (v37)
      {
        break;
      }

      v33 -= 64;
      if (!--v34)
      {
        goto LABEL_36;
      }
    }

    v19 = __clz(__rbit64(v36)) - v33;
LABEL_36:
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v18 = &_fastEnumerationStorageMutationsTarget;
    v16 = 1;
    v17 = a2;
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v54 = -v15;
  if (v19 + v15 && (v19 >= v54 || ((*(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
  {
LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v51 = v17;
  v52 = v16;
  v53 = v18;
  v47 = v11;
  v21 = _SwiftDeferredNSDictionary.bridgeKeys()(v10);
  if (a3 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3)
  {
    v49 = v7;
    v22 = 0;
    v45 = v56 + 16;
    v46 = v21 + 40;
    v48 = (v56 + 8);
    v23 = (63 - v15) >> 6;
    v43 = (v56 + 32);
    v44 = v13 + 72;
    while (1)
    {
      if (v22 == a3)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v19 == v54)
      {
        break;
      }

      v50 = v21;
      if (v21)
      {
        v24 = *&v46[8 * v19];
        swift_unknownObjectRetain(v24);
      }

      else
      {
        v25 = v49;
        (*(v56 + 16))(v55, *(v3[4] + 48) + *(v56 + 72) * v19, v49);
        if (_swift_isClassOrObjCExistentialType(v25, v25))
        {
          if (v8 != 8)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v24 = *v55;
          v42 = *v48;
          swift_unknownObjectRetain(v24);
          v42(v55, v49);
        }

        else
        {
          v32 = v49;
          (*v43)(v47, v55, v49);
          v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v47, v32);
        }
      }

      if (v22 == 0x1000000000000000)
      {
        __break(1u);
        goto LABEL_47;
      }

      *(a2 + 8 * v22) = v24;
      swift_unknownObjectRelease(v24);
      v26 = v19 >> 6;
      if ((*(v14 + 8 * (v19 >> 6)) & (-2 << v19)) != 0)
      {
        v19 = __clz(__rbit64(*(v14 + 8 * (v19 >> 6)) & (-2 << v19))) | v19 & 0xFFFFFFFFFFFFFFC0;
        v21 = v50;
      }

      else
      {
        v27 = v26 << 6;
        v28 = v26 + 1;
        v29 = (v44 + 8 * v26);
        v21 = v50;
        while (v28 < v23)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            v19 = __clz(__rbit64(v30)) + v27;
            goto LABEL_25;
          }
        }

        v19 = v54;
      }

LABEL_25:
      if (++v22 == a3)
      {
        v22 = a3;
        goto LABEL_41;
      }
    }

    v19 = v54;
LABEL_41:
    if ((v19 & 0x8000000000000000) == 0)
    {
      v21;
      goto LABEL_34;
    }

LABEL_45:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v21;
  v22 = 0;
LABEL_34:
  v38 = v51;
  *a1 = v52;
  *(a1 + 8) = v38;
  *(a1 + 16) = v53;
  *(a1 + 24) = v19;
  v39 = v58;
  *(a1 + 32) = v57;
  *(a1 + 48) = v39;
  return v22;
}

uint64_t @objc _SwiftDictionaryNSEnumerator.init(coder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 112);
  swift_unknownObjectRetain(a3);

  return a4(v4, v5, v6);
}

uint64_t _SwiftDeferredNSDictionary.__ivar_destroyer()
{
  swift_unknownObjectRelease(*(v0 + 16));
  swift_unknownObjectRelease(*(v0 + 24));
  v1 = *(v0 + 32);

  return v1;
}

void _SwiftDeferredNSDictionary.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v0;
  swift_unknownObjectRelease(v1);
  swift_unknownObjectRelease(*(v0 + 24));
  v2 = *(v0 + 32);
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

void __CocoaDictionary.startIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects:0 andKeys:v4 + 3 count:v2];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaDictionary.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __CocoaDictionary.endIndex.getter(void *a1)
{
  v2 = [swift_unknownObjectRetain(a1) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    if (!__OFADD__(8 * v2, 24))
    {
      v4 = swift_bufferAllocate(v3, (8 * v2 + 24), 7uLL);
      v4[2] = v2;
      [a1 getObjects:0 andKeys:v4 + 3 count:v2];
      swift_unknownObjectRelease(a1);
      v5 = type metadata accessor for __CocoaDictionary.Index.Storage();
      v6 = swift_allocObject(v5, 0x20, 7uLL);
      v6[2] = a1;
      v6[3] = v4;
      swift_unknownObjectRetain(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t __CocoaDictionary.index(after:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v6, v7))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 16) != a3 || *(*(v6 + 24) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t __CocoaDictionary.formIndex(after:isUnique:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (*a1 < 0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = type metadata accessor for __CocoaDictionary.Index.Storage();
  result = swift_dynamicCastClass(v6, v7);
  if (!result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v6 + 16) != a3 || v5 >= *(*(v6 + 24) + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  a1[1] = v5 + 1;
  return result;
}

void *__CocoaDictionary.index(forKey:)(void *a1, id a2)
{
  v4 = [a2 &sel:a1 objectForKey:?];
  if (!v4)
  {
    return 0;
  }

  swift_unknownObjectRelease(v4);
  v5 = [swift_unknownObjectRetain(a2) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(8 * v5, 24))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = swift_bufferAllocate(v6, (8 * v5 + 24), 7uLL);
  v7[2] = v5;
  [a2 getObjects:0 andKeys:v7 + 3 count:v5];
  swift_unknownObjectRelease(a2);
  if ((v7[2] & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  v8 = 3;
  do
  {
    v9 = v7[v8];
    swift_unknownObjectRetain(v9);
    isEqual = swift_stdlib_NSObject_isEqual(a1, v9);
    swift_unknownObjectRelease(v9);
    ++v8;
  }

  while ((isEqual & 1) == 0);
  v11 = type metadata accessor for __CocoaDictionary.Index.Storage();
  v12 = swift_allocObject(v11, 0x20, 7uLL);
  v12[2] = a2;
  v12[3] = v7;
  swift_unknownObjectRetain(a2);
  return v12;
}

id __CocoaDictionary.lookup(_:)(uint64_t a1, id a2)
{
  v2 = [a2 &sel:a1 objectForKey:?];

  return v2;
}

void *__CocoaDictionary.lookup(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v5, v6))
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 16);
  if (v7 != a3)
  {
    goto LABEL_9;
  }

  v8 = *(*(v5 + 24) + 8 * a2 + 24);
  swift_unknownObjectRetain(v8);
  if (!swift_dynamicCastClass(v5, v6))
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (![v7 &sel:v8 objectForKey:?])
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v8;
}

id __CocoaDictionary.key(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized __CocoaDictionary.key(at:)(a1, a2, a3);

  return swift_unknownObjectRetain(v3);
}

id __CocoaDictionary.Index.key.getter(uint64_t a1, uint64_t a2)
{
  v2 = specialized __CocoaDictionary.Index.key.getter(a1, a2);

  return swift_unknownObjectRetain(v2);
}

id __CocoaDictionary.value(at:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v5, v6))
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 16);
  if (v7 != a3)
  {
    goto LABEL_9;
  }

  v8 = *(*(v5 + 24) + 8 * a2 + 24);
  swift_unknownObjectRetain(v8);
  if (!swift_dynamicCastClass(v5, v6))
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = [v7 &sel:v8 objectForKey:?];
  if (!v9)
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v10 = v9;
  swift_unknownObjectRelease(v8);
  return v10;
}

__objc2_class **__CocoaDictionary.mapValues<A, B, C>(_:)(void (*a1)(swift *), uint64_t a2, void *a3, uint64_t *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v87 = a1;
  v88 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Optional(0, v18, v16, v17);
  v90 = *(v77 - 8);
  v19 = MEMORY[0x1EEE9AC00](v77 - 8);
  v76 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v74 = &v64 - v22;
  v84 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v86 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for Optional(0, a4, v24, v25);
  v89 = *(v75 - 8);
  v26 = MEMORY[0x1EEE9AC00](v75 - 8);
  v78 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v79 = (&v64 - v29);
  v80 = *(a4 - 1);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v92 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v91 = (&v64 - v32);
  v33 = [a3 count];
  v93 = a4;
  if (v33)
  {
    v34 = v33;
    type metadata accessor for _DictionaryStorage(0, a4, a6, a7);
    v35 = static _DictionaryStorage.allocate(capacity:)(v34);
  }

  else
  {
    v35 = &_swiftEmptyDictionarySingleton;
  }

  v95 = v35;
  v36 = type metadata accessor for __CocoaDictionary.Iterator();
  v37 = swift_allocObject(v36, 0xE8, 7uLL);
  *(v37 + 1) = 0u;
  v82 = v37 + 2;
  v37[27] = 0;
  v83 = v37 + 27;
  *(v37 + 2) = 0u;
  *(v37 + 3) = 0u;
  *(v37 + 4) = 0u;
  *(v37 + 6) = 0u;
  *(v37 + 7) = 0u;
  *(v37 + 8) = 0u;
  *(v37 + 9) = 0u;
  v38 = v80;
  v73 = (v80 + 56);
  v39 = v89;
  v72 = (v89 + 2);
  v71 = (v80 + 48);
  *(v37 + 10) = 0u;
  *(v37 + 11) = 0u;
  v70 = (v39 + 1);
  v89 = (v38 + 32);
  v40 = v84;
  v69 = (v84 + 7);
  *(v37 + 12) = 0u;
  *(v37 + 5) = 0u;
  v81 = v37 + 10;
  v41 = v90;
  v68 = (v90 + 2);
  v67 = (v40 + 6);
  v37[28] = 0;
  v66 = (v41 + 1);
  v65 = (v40 + 4);
  v84 = v40 + 1;
  v37[26] = a3;
  swift_unknownObjectRetain(a3);
  v42 = 0;
  v85 = v37;
  while (1)
  {
    if (v42 != v37[28])
    {
      v44 = v37[3];
      if (!v44)
      {
        goto LABEL_31;
      }

      if (v42 >> 60)
      {
        __break(1u);
LABEL_30:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_12;
    }

    v43 = [v37[26] countByEnumeratingWithState:v82 objects:v81 count:16];
    v37[28] = v43;
    if (!v43)
    {
      break;
    }

    v37[27] = 0;
    v44 = v37[3];
    if (!v44)
    {
      goto LABEL_31;
    }

    v42 = 0;
LABEL_12:
    v45 = (v44 + 8 * v42);
    if ((v45 & 7) != 0)
    {
      goto LABEL_30;
    }

    v90 = v35;
    v46 = v8;
    v47 = a5;
    v48 = v15;
    v49 = a6;
    v50 = a7;
    v51 = *v45;
    v37[27] = v42 + 1;
    v52 = v37[26];
    swift_unknownObjectRetain(v51);
    v53 = [v52 &sel:v51 objectForKey:?];
    if (!v53)
    {
LABEL_31:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v54 = v53;
    v55 = v93;
    if (_swift_isClassOrObjCExistentialType(v93, v93))
    {
      v94[0] = v51;
      swift_dynamicCast(v91, v94, qword_1EEEAC710, v55, 7uLL);
    }

    else
    {
      (*v73)(v79, 1, 1, v55);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v51, v55, v79);
      (*v72)(v78, v79, v75);
      if ((*v71)(v78, 1, v55) == 1)
      {
        goto LABEL_32;
      }

      swift_unknownObjectRelease(v51);
      (*v70)(v79, v75);
      (*v89)(v91, v78, v55);
    }

    v56 = v50;
    if (_swift_isClassOrObjCExistentialType(v47, v47))
    {
      v94[0] = v54;
      v57 = v86;
      swift_dynamicCast(v86, v94, qword_1EEEAC710, v47, 7uLL);
      a6 = v49;
    }

    else
    {
      v60 = v74;
      (*v69)(v74, 1, 1, v47);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v54, v47, v60);
      v61 = v76;
      (*v68)(v76, v60, v77);
      if ((*v67)(v61, 1, v47) == 1)
      {
LABEL_32:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      a6 = v49;
      swift_unknownObjectRelease(v54);
      (*v66)(v60, v77);
      v57 = v86;
      (*v65)(v86, v76, v47);
    }

    v58 = v93;
    (*v89)(v92, v91, v93);
    v15 = v48;
    v87(v57);
    v8 = v46;
    if (v46)
    {
      (*(v80 + 8))(v92, v58);
      v85;
      (*v84)(v57, v47);
      v35 = v90;
      v62 = v90;
      goto LABEL_28;
    }

    a5 = v47;
    (*v84)(v57, v47);
    v59 = v90[2];
    a7 = v56;
    if (v90[3] <= v59)
    {
      type metadata accessor for _NativeDictionary(0, v93, a6, v56);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(&v59->isa + 1, 1);
    }

    v35 = v95;
    _NativeDictionary._unsafeInsertNew(key:value:)(v92, v15, v95, v93, a6, v56);
    v42 = *v83;
    v37 = v85;
    if ((*v83 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }
  }

  *v83 = -1;
LABEL_27:
  v62 = v37;
LABEL_28:
  v62;
  return v35;
}

id __CocoaDictionary.Index.dictionary.getter(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v1, v2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(v1 + 16);

  return swift_unknownObjectRetain(v3);
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance __CocoaDictionary()
{
  v1 = *v0;
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  swift_unknownObjectRelease(v1);
  return v2;
}

id protocol witness for IteratorProtocol.next() in conformance __CocoaDictionary.Iterator@<X0>(void *a1@<X8>)
{
  result = __CocoaDictionary.Iterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

int64_t Dictionary._bridgeToObjectiveCImpl()(int64_t result, uint64_t *a2, void *a3, uint64_t a4)
{
  if ((result & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.bridged()(result, a2, a3, a4);
  }

  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

__objc2_class **static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _SwiftDeferredNSDictionary(0, a2, a3, a4);
  v9 = swift_unknownObjectRetain(a1);
  v10 = swift_dynamicCastClass(v9, v8);
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRelease(a1);
    v12 = *(v11 + 32);
    v12;
    swift_unknownObjectRelease(a1);
  }

  else
  {
    v13 = type metadata accessor for _DictionaryStorage(0, a2, a3, a4);
    v12 = swift_dynamicCastClass(a1, v13);
    swift_unknownObjectRelease(a1);
    if (!v12)
    {
      swift_unknownObjectRelease(a1);
      if (a1 == &_swiftEmptyDictionarySingleton)
      {
        return &_swiftEmptyDictionarySingleton;
      }

      else
      {
        return 0;
      }
    }
  }

  return v12;
}

__objc2_class **_DictionaryBuilder.init(count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  type metadata accessor for _DictionaryStorage(0, a2, a3, a4);
  return static _DictionaryStorage.allocate(capacity:)(a1);
}

uint64_t _DictionaryBuilder.add(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  MEMORY[0x1EEE9AC00](v8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  if (*(*v3 + 16) >= v3[1])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(v15);
  (*(v7 + 16))(v10, a2, v6);
  return _NativeDictionary._unsafeInsertNew(key:value:)(v15, v10, v16, v12, v6, *(a3 + 32));
}

__n128 specialized _NativeDictionary._unsafeInsertNew(key:value:)(__int128 *a1, uint64_t a2, void *a3)
{
  v6 = a3[5];
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 8))(v19, v7, v8);
  v9 = v20;
  v10 = v21;
  __swift_project_boxed_opaque_existential_0Tm(v19, v20);
  v11 = (*(v10 + 40))(v6, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v12 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v11);
  if (v13)
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

  a3[(v12 >> 6) + 8] |= 1 << v12;
  v14 = a3[6] + 40 * v12;
  v15 = *a1;
  v16 = a1[1];
  *(v14 + 32) = *(a1 + 4);
  *v14 = v15;
  *(v14 + 16) = v16;
  v17 = a3[7] + 40 * v12;
  result = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = result;
  *(v17 + 32) = *(a2 + 32);
  ++a3[2];
  return result;
}

_OWORD *specialized _NativeDictionary._unsafeInsertNew(key:value:)(__int128 *a1, _OWORD *a2, void *a3)
{
  v6 = a3[5];
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 8))(v18, v7, v8);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_0Tm(v18, v19);
  v11 = (*(v10 + 40))(v6, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v12 = specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v11);
  if (v13)
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

  a3[(v12 >> 6) + 8] |= 1 << v12;
  v14 = a3[6] + 40 * v12;
  v15 = *a1;
  v16 = a1[1];
  *(v14 + 32) = *(a1 + 4);
  *v14 = v15;
  *(v14 + 16) = v16;
  result = outlined init with take of Any(a2, (a3[7] + 32 * v12));
  ++a3[2];
  return result;
}

uint64_t _NativeDictionary._unsafeInsertNew(key:value:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a6 + 32))(a3[5], a4, a6);
  v13 = __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v12, a4, a6);
  if (v14)
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(a4);
  }

  v15 = v13;
  a3[(v13 >> 6) + 8] |= 1 << v13;
  (*(*(a4 - 8) + 32))(a3[6] + *(*(a4 - 8) + 72) * v13, a1, a4);
  result = (*(*(a5 - 8) + 32))(a3[7] + *(*(a5 - 8) + 72) * v15, a2, a5);
  ++a3[2];
  return result;
}

uint64_t _DictionaryBuilder.take()(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::Void __swiftcall _NativeDictionary.uncheckedDestroy(at:)(Swift::_HashTable::Bucket at)
{
  v4 = v3;
  v5 = v1;
  (*(*(v2 - 8) + 8))(*(v1 + 48) + *(*(v2 - 8) + 72) * at.offset);
  v7 = *(v4 - 8);
  v8 = *(v7 + 8);
  v9 = *(v5 + 56) + *(v7 + 72) * at.offset;

  v8(v9, v4);
}

Swift::_HashTable::Bucket __swiftcall _HashTable.insertNew(hashValue:)(Swift::Int hashValue)
{
  v3 = v1;
  result.offset = _HashTable.nextHole(atOrAfter:)((v2 & hashValue)).offset;
  *(v3 + ((result.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << SLOBYTE(result.offset);
  return result;
}

Swift::Void __swiftcall _NativeDictionary.moveEntry(from:to:)(Swift::_HashTable::Bucket from, Swift::_HashTable::Bucket to)
{
  v5 = v4;
  v6 = v2;
  UnsafeMutablePointer.moveInitialize(from:count:)((*(v2 + 48) + *(*(v3 - 1) + 72) * from.offset), 1, (*(v2 + 48) + *(*(v3 - 1) + 72) * to.offset), v3);
  v9 = *(v6 + 56);
  v10 = *(*(v5 - 1) + 72);

  UnsafeMutablePointer.moveInitialize(from:count:)((v9 + v10 * from.offset), 1, (v9 + v10 * to.offset), v5);
}

Swift::Void __swiftcall _NativeDictionary.swapEntry(_:with:)(Swift::_HashTable::Bucket _, Swift::_HashTable::Bucket with)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  offset = _.offset;
  v9 = *(v4 - 8);
  v10 = MEMORY[0x1EEE9AC00](_.offset);
  v32 = &offset - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &offset - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 48);
  v19 = *(v13 + 32);
  v20 = *(v13 + 72);
  v21 = (v18 + v20 * v14);
  v23 = (v18 + v20 * v22);
  v19(v16, v21, v24);
  v19(v21, v23, v6);
  v19(v23, v16, v6);
  v25 = *(v7 + 56);
  v26 = *(v9 + 32);
  v27 = *(v9 + 72);
  v28 = (v25 + v27 * offset);
  v29 = (v25 + v27 * with.offset);
  v30 = v32;
  v26(v32, v28, v5);
  v26(v28, v29, v5);
  v26(v29, v30, v5);
}

void _swift_dictionaryDownCastIndirect(unint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v15 = *a1;
  v16 = *a1;
  v17 = _dictionaryDownCast<A, B, C, D>(_:)(v16, a3, a4, a5, a6, a7, a8);
  v15;
  *a2 = v17;
}

uint64_t _dictionaryDownCast<A, B, C, D>(_:)(int64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v281 = a7;
  v290 = a6;
  i = a1;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v279 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v278 = &v235 - v12;
  swift_getTupleTypeMetadata2(0, a4, a5, 0, 0);
  v277 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v276 = &v235 - v15;
  v268 = *(a5 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v273 = (&v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v272 = &v235 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v235 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v266 = &v235 - v24;
  v288 = a4;
  v265 = *(a4 - 1);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v271 = &v235 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v270 = &v235 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v264 = &v235 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v260 = &v235 - v31;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v33 = v32;
  v274 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v269 = &v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v259 = &v235 - v36;
  v39 = type metadata accessor for Optional(0, a3, v37, v38);
  v284 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v254 = &v235 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v235 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v251 = &v235 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v247 = &v235 - v47;
  v50 = type metadata accessor for Optional(0, a2, v48, v49);
  v286 = *(v50 - 8);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v253 = &v235 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v255 = &v235 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v267 = &v235 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v235 - v58;
  v263 = *(a3 - 1);
  v60 = MEMORY[0x1EEE9AC00](v57);
  v252 = &v235 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v250 = &v235 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v292 = &v235 - v65;
  v262 = *(a2 - 1);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v261 = &v235 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v256 = &v235 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v291 = &v235 - v70;
  v71 = v33;
  v74 = type metadata accessor for Optional(0, v33, v72, v73);
  v75 = MEMORY[0x1EEE9AC00](v74 - 8);
  v275 = &v235 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v283 = &v235 - v77;
  if (_swift_isClassOrObjCExistentialType(a2, a2) && _swift_isClassOrObjCExistentialType(a3, a3) && _swift_isClassOrObjCExistentialType(v288, &v288->Kind) && _swift_isClassOrObjCExistentialType(a5, a5))
  {
    if ((i & 0xC000000000000001) != 0)
    {
      v78 = i & 0xFFFFFFFFFFFFFF8;
      if (i < 0)
      {
        v78 = i;
      }

      v79 = (~(v78 >> 1) & 0x4000000000000000 | v78);
      i;
    }

    else
    {
      v233 = i;
      v234 = _NativeDictionary.bridged()(v233, a2, a3, v290);
      return ~(v234 >> 1) & 0x4000000000000000 | v234;
    }

    return v79;
  }

  v258 = v22;
  v246 = v50;
  v80 = i & 0xC000000000000001;
  if ((i & 0xC000000000000001) != 0)
  {
    if (i < 0)
    {
      v81 = i;
    }

    else
    {
      v81 = (i & 0xFFFFFFFFFFFFFF8);
    }

    v82 = [v81 count];
  }

  else
  {
    v82 = *(i + 16);
  }

  v245 = v59;
  if (v82)
  {
    v83 = v288;
    type metadata accessor for _DictionaryStorage(0, v288, a5, v281);
    v79 = static _DictionaryStorage.allocate(capacity:)(v82);
  }

  else
  {
    v79 = &_swiftEmptyDictionarySingleton;
    v83 = v288;
  }

  v84 = i;
  v289 = a3;
  v290 = a2;
  v285 = a5;
  v280 = v71;
  v257 = v39;
  v282 = v79;
  if (v83 == &type metadata for String)
  {
    v91 = v71;
    if (v80)
    {
      if (i < 0)
      {
        v92 = i;
      }

      else
      {
        v92 = i & 0xFFFFFFFFFFFFFF8;
      }

      v93 = type metadata accessor for __CocoaDictionary.Iterator();
      v94 = swift_allocObject(v93, 0xE8, 7uLL);
      v249 = 0;
      v95 = 0;
      p_Kind = 0;
      *(v94 + 208) = v92;
      *(v94 + 216) = 0;
      v84 = i;
      *(v94 + 16) = 0u;
      *(v94 + 32) = 0u;
      *(v94 + 48) = 0u;
      *(v94 + 64) = 0u;
      *(v94 + 80) = 0u;
      *(v94 + 96) = 0u;
      *(v94 + 112) = 0u;
      *(v94 + 128) = 0u;
      *(v94 + 144) = 0u;
      *(v94 + 160) = 0u;
      *(v94 + 176) = 0u;
      *(v94 + 192) = 0u;
      *(v94 + 224) = 0;
      v97 = v94 | 0x8000000000000000;
    }

    else
    {
      v164 = -1 << *(i + 32);
      v95 = ~v164;
      v165 = *(i + 64);
      v249 = i + 64;
      v166 = -v164;
      if (v166 < 64)
      {
        v167 = ~(-1 << v166);
      }

      else
      {
        v167 = -1;
      }

      p_Kind = (v167 & v165);
      v97 = i;
    }

    v168 = v267;
    v169 = v283;
    v269 = (v97 & 0x7FFFFFFFFFFFFFFFLL);
    v243 = (v262 + 56);
    v242 = (v286 + 16);
    v241 = (v262 + 48);
    v240 = (v286 + 8);
    v286 = (v262 + 32);
    v239 = (v263 + 56);
    v238 = (v284 + 2);
    v237 = (v263 + 48);
    v236 = (v284 + 1);
    v284 = (v263 + 32);
    v273 = (v274 + 7);
    v244 = v95;
    v248 = ((v95 + 64) >> 6);
    v261 = (v262 + 16);
    v255 = (v263 + 16);
    v272 = (v274 + 6);
    v270 = (v274 + 4);
    v275 = (v265 + 32);
    v274 = (v268 + 32);
    v252 = (v79 + 8);
    v254 = (v265 + 40);
    v253 = (v268 + 40);
    v84;
    v79;
    v170 = 0;
    v271 = v97;
    while (1)
    {
      if ((v97 & 0x8000000000000000) != 0)
      {
        v189 = v269;
        v190 = *(v269 + 27);
        if ((v190 & 0x8000000000000000) != 0)
        {
          goto LABEL_114;
        }

        if (v190 == *(v269 + 28))
        {
          v191 = [*(v269 + 26) countByEnumeratingWithState:v269 + 16 objects:v269 + 80 count:16];
          v189 = v269;
          *(v269 + 28) = v191;
          if (!v191)
          {
            *(v189 + 27) = -1;
LABEL_114:
            (*v273)(v169, 1, 1, v91);
            _sSh8IteratorV8_VariantOySS__GWOe_0(v97);
            goto LABEL_111;
          }

          *(v189 + 27) = 0;
          v192 = *(v189 + 3);
          if (!v192)
          {
            goto LABEL_123;
          }

          v190 = 0;
        }

        else
        {
          v192 = *(v269 + 3);
          if (!v192)
          {
            goto LABEL_123;
          }

          if (v190 >> 60)
          {
            goto LABEL_122;
          }
        }

        v193 = (v192 + 8 * v190);
        if ((v193 & 7) != 0)
        {
          goto LABEL_118;
        }

        v194 = *v193;
        *(v189 + 27) = v190 + 1;
        v195 = *(v189 + 26);
        swift_unknownObjectRetain(v194);
        v196 = [v195 &sel:v194 objectForKey:?];
        if (!v196)
        {
          goto LABEL_123;
        }

        v197 = v196;
        v198 = v290;
        if (_swift_isClassOrObjCExistentialType(v290, v290))
        {
          v293 = v194;
          swift_dynamicCast(v256, &v293, &unk_1EEEAC710, v198, 7);
        }

        else
        {
          i = v170;
          v288 = p_Kind;
          v229 = v245;
          (*v243)(v245, 1, 1, v198);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v194, v198, v229);
          v230 = v246;
          (*v242)(v168, v229, v246);
          if ((*v241)(v168, 1, v198) == 1)
          {
            goto LABEL_120;
          }

          swift_unknownObjectRelease(v194);
          (*v240)(v229, v230);
          (*v286)(v256, v168, v198);
          v170 = i;
          p_Kind = &v288->Kind;
        }

        v199 = v289;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v289, v289);
        v201 = v251;
        if (isClassOrObjCExistentialType)
        {
          v293 = v197;
          v202 = v250;
          swift_dynamicCast(v250, &v293, &unk_1EEEAC710, v199, 7);
        }

        else
        {
          v231 = v247;
          (*v239)(v247, 1, 1, v199);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v197, v199, v231);
          (*v238)(v201, v231, v39);
          if ((*v237)(v201, 1, v199) == 1)
          {
LABEL_120:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v197);
          (*v236)(v231, v39);
          v202 = v250;
          (*v284)(v250, v201, v199);
        }

        v203 = *(v91 + 48);
        (*v286)(v169, v256, v290);
        (*v284)(&v169[v203], v202, v199);
        (*v273)(v169, 0, 1, v91);
        v174 = v170;
        v288 = p_Kind;
      }

      else
      {
        v171 = p_Kind;
        v172 = v170;
        if (p_Kind)
        {
LABEL_82:
          v288 = ((v171 - 1) & v171);
          v176 = __clz(__rbit64(v171)) | (v172 << 6);
          v177 = v91;
          v178 = v262;
          v179 = *(v97 + 48) + *(v262 + 72) * v176;
          v180 = *(v262 + 16);
          v181 = v291;
          i = v170;
          v182 = v290;
          v180(v291, v179, v290);
          v183 = *(v97 + 56);
          v184 = v263;
          v185 = v292;
          v186 = v289;
          (*(v263 + 16))(v292, v183 + *(v263 + 72) * v176, v289);
          v187 = *(v177 + 48);
          v188 = *(v178 + 32);
          v91 = v177;
          v169 = v283;
          v188(v283, v181, v182);
          (*(v184 + 32))(&v169[v187], v185, v186);
          (*v273)(v169, 0, 1, v91);
          v174 = v172;
        }

        else
        {
          if (v248 <= v170 + 1)
          {
            v173 = (v170 + 1);
          }

          else
          {
            v173 = v248;
          }

          v174 = v173 - 1;
          v175 = v170;
          while (1)
          {
            v172 = v175 + 1;
            if (__OFADD__(v175, 1))
            {
              goto LABEL_117;
            }

            if (v172 >= v248)
            {
              break;
            }

            v171 = *(v249 + 8 * v172);
            ++v175;
            if (v171)
            {
              goto LABEL_82;
            }
          }

          (*v273)(v169, 1, 1, v91);
          v288 = 0;
        }
      }

      if ((*v272)(v169, 1, v91) == 1)
      {
        v163 = v271;
        goto LABEL_110;
      }

      i = v174;
      v204 = v259;
      (*v270)(v259, v169, v91);
      v205 = *(v91 + 48);
      v206 = *(v279 + 48);
      v208 = v290;
      v207 = v291;
      (*v286)(v291, v204, v290);
      v209 = v278;
      swift_dynamicCast(v278, v207, v208, &type metadata for String, 7);
      v210 = &v204[v205];
      v211 = v292;
      v212 = v289;
      (*v284)(v292, v210, v289);
      v213 = v285;
      swift_dynamicCast(&v209[v206], v211, v212, v285, 7);
      v214 = v276;
      v215 = *(v277 + 48);
      v216 = *v275;
      (*v275)(v276, v209, &type metadata for String);
      v217 = *v274;
      (*v274)(&v214[v215], &v209[v206], v213);
      v218 = v260;
      v216(v260, v214, &type metadata for String);
      v219 = &v214[v215];
      v220 = v266;
      v217(v266, v219, v213);
      v221 = v264;
      v216(v264, v218, &type metadata for String);
      v222 = v258;
      v217(v258, v220, v213);
      v79 = v282;
      v223 = __RawDictionaryStorage.find<A>(_:)(v221, &type metadata for String, v281);
      v224 = v223;
      if (v225)
      {
        (*(v265 + 40))(v79[6] + *(v265 + 72) * v223, v221, &type metadata for String);
        (*(v268 + 40))(v79[7] + *(v268 + 72) * v224, v222, v213);
      }

      else
      {
        if (v79[2] >= v79[3])
        {
          goto LABEL_120;
        }

        *&v252[(v223 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v223;
        v216(v79[6] + *(v265 + 72) * v223, v221, &type metadata for String);
        v217(v79[7] + *(v268 + 72) * v224, v222, v285);
        v226 = v79[2];
        v227 = __OFADD__(v226, 1);
        v228 = (&v226->isa + 1);
        if (v227)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v79[2] = v228;
      }

      v170 = i;
      p_Kind = &v288->Kind;
      v91 = v280;
      v39 = v257;
      v168 = v267;
      v97 = v271;
      v169 = v283;
    }
  }

  v256 = v44;
  if (v80)
  {
    if (i < 0)
    {
      v85 = i;
    }

    else
    {
      v85 = i & 0xFFFFFFFFFFFFFF8;
    }

    v86 = type metadata accessor for __CocoaDictionary.Iterator();
    v87 = swift_allocObject(v86, 0xE8, 7uLL);
    v251 = 0;
    v88 = 0;
    v89 = 0;
    *(v87 + 208) = v85;
    *(v87 + 216) = 0;
    v84 = i;
    *(v87 + 16) = 0u;
    *(v87 + 32) = 0u;
    *(v87 + 48) = 0u;
    *(v87 + 64) = 0u;
    *(v87 + 80) = 0u;
    *(v87 + 96) = 0u;
    *(v87 + 112) = 0u;
    *(v87 + 128) = 0u;
    *(v87 + 144) = 0u;
    *(v87 + 160) = 0u;
    *(v87 + 176) = 0u;
    *(v87 + 192) = 0u;
    *(v87 + 224) = 0;
    v90 = v87 | 0x8000000000000000;
  }

  else
  {
    v98 = -1 << *(i + 32);
    v88 = ~v98;
    v99 = *(i + 64);
    v251 = (i + 64);
    v100 = -v98;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    else
    {
      v101 = -1;
    }

    v89 = v101 & v99;
    v90 = i;
  }

  v102 = v274;
  v103 = v284;
  v258 = v90 & 0x7FFFFFFFFFFFFFFFLL;
  v248 = (v262 + 56);
  v247 = v286 + 16;
  v245 = (v262 + 48);
  v244 = (v286 + 8);
  v284 = (v262 + 32);
  v243 = (v263 + 56);
  v242 = (v103 + 2);
  v241 = (v263 + 48);
  v240 = (v103 + 1);
  v283 = (v263 + 32);
  v274 += 7;
  v249 = v88;
  v250 = ((v88 + 64) >> 6);
  v260 = (v262 + 16);
  v259 = (v263 + 16);
  v267 = (v102 + 6);
  v266 = (v102 + 4);
  v265 += 32;
  v264 = (v268 + 32);
  v84;
  v79;
  v104 = 0;
  v268 = v90;
  if ((v90 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_34:
  v105 = v89;
  v106 = v104;
  v107 = v289;
  v108 = v290;
  v109 = v280;
  if (v89)
  {
LABEL_42:
    i = (v105 - 1) & v105;
    v114 = __clz(__rbit64(v105)) | (v106 << 6);
    v115 = v262;
    v116 = *(v90 + 48) + *(v262 + 72) * v114;
    v117 = *(v262 + 16);
    v286 = v104;
    v118 = v291;
    v117(v291, v116, v290);
    v119 = v263;
    v120 = *(v90 + 56) + *(v263 + 72) * v114;
    v121 = v292;
    (*(v263 + 16))(v292, v120, v107);
    v122 = *(v109 + 48);
    v123 = *(v115 + 32);
    v113 = v275;
    v123(v275, v118, v108);
    (*(v119 + 32))(&v113[v122], v121, v107);
    (*v274)(v113, 0, 1, v109);
    v111 = v106;
    goto LABEL_58;
  }

  if (v250 <= (v104 + 1))
  {
    v110 = v104 + 1;
  }

  else
  {
    v110 = v250;
  }

  v111 = v110 - 1;
  v112 = v104;
  v113 = v275;
  while (1)
  {
    v106 = (v112 + 1);
    if (__OFADD__(v112, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v106 >= v250)
    {
      break;
    }

    v105 = *&v251[8 * v106];
    ++v112;
    if (v105)
    {
      goto LABEL_42;
    }
  }

  (*v274)(v275, 1, 1, v280);
  for (i = 0; ; i = v131)
  {
LABEL_58:
    if ((*v267)(v113, 1, v109) == 1)
    {
      v163 = v268;
      goto LABEL_110;
    }

    v142 = v269;
    (*v266)(v269, v113, v109);
    v143 = *(v109 + 48);
    v144 = *(v279 + 48);
    v145 = v291;
    (*v284)(v291, v142, v108);
    v146 = v278;
    v147 = &v288->Kind;
    swift_dynamicCast(v278, v145, v108, v288, 7);
    v148 = &v142[v143];
    v149 = v292;
    (*v283)(v292, v148, v107);
    v150 = v285;
    swift_dynamicCast(&v146[v144], v149, v107, v285, 7);
    v151 = v276;
    v152 = *(v277 + 48);
    v286 = v111;
    v153 = *v265;
    (*v265)(v276, v146, v147);
    v154 = *v264;
    (*v264)(&v151[v152], &v146[v144], v150);
    v155 = v270;
    v153(v270, v151, v147);
    v156 = v272;
    v154(v272, &v151[v152], v150);
    v157 = v271;
    v158 = v155;
    v159 = &v288->Kind;
    v153(v271, v158, &v288->Kind);
    v160 = v273;
    v154(v273, v156, v150);
    _NativeDictionary._unsafeInsertNew(key:value:)(v157, v160, v282, v159, v150, v281);
    v104 = v286;
    v89 = i;
    v90 = v268;
    if ((v268 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_43:
    v124 = v258;
    v125 = *(v258 + 216);
    v107 = v289;
    v108 = v290;
    v109 = v280;
    if ((v125 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    if (v125 == *(v258 + 224))
    {
      break;
    }

    v129 = *(v258 + 24);
    v127 = v256;
    v128 = v255;
    if (!v129)
    {
      goto LABEL_123;
    }

    if (v125 >> 60)
    {
      __break(1u);
      goto LABEL_120;
    }

LABEL_50:
    v130 = (v129 + 8 * v125);
    if ((v130 & 7) != 0)
    {
      goto LABEL_118;
    }

    v286 = v104;
    v131 = v89;
    v132 = *v130;
    v124[27] = v125 + 1;
    v133 = v124[26];
    swift_unknownObjectRetain(v132);
    v134 = [v133 &sel:v132 objectForKey:?];
    if (!v134)
    {
      goto LABEL_123;
    }

    v135 = v134;
    v136 = _swift_isClassOrObjCExistentialType(v108, v108);
    v137 = v253;
    if (v136)
    {
      v293 = v132;
      swift_dynamicCast(v261, &v293, &unk_1EEEAC710, v108, 7);
    }

    else
    {
      (*v248)(v128, 1, 1, v108);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v132, v108, v128);
      v161 = v246;
      (*v247)(v137, v128, v246);
      if ((*v245)(v137, 1, v108) == 1)
      {
        goto LABEL_120;
      }

      swift_unknownObjectRelease(v132);
      (*v244)(v128, v161);
      (*v284)(v261, v137, v108);
    }

    v138 = _swift_isClassOrObjCExistentialType(v107, v107);
    v139 = v254;
    v113 = v275;
    if (v138)
    {
      v293 = v135;
      v140 = v252;
      swift_dynamicCast(v252, &v293, &unk_1EEEAC710, v107, 7);
    }

    else
    {
      (*v243)(v127, 1, 1, v107);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v135, v107, v127);
      v162 = v257;
      (*v242)(v139, v127, v257);
      if ((*v241)(v139, 1, v107) == 1)
      {
        goto LABEL_120;
      }

      swift_unknownObjectRelease(v135);
      (*v240)(v127, v162);
      v140 = v252;
      (*v283)(v252, v139, v107);
    }

    v141 = *(v109 + 48);
    (*v284)(v113, v261, v108);
    (*v283)(&v113[v141], v140, v107);
    (*v274)(v113, 0, 1, v109);
    v111 = v286;
  }

  v126 = [*(v258 + 208) countByEnumeratingWithState:v258 + 16 objects:v258 + 80 count:16];
  v124[28] = v126;
  v127 = v256;
  v128 = v255;
  if (v126)
  {
    v124[27] = 0;
    v129 = v124[3];
    if (!v129)
    {
      goto LABEL_123;
    }

    v125 = 0;
    goto LABEL_50;
  }

  v124[27] = -1;
LABEL_109:
  (*v274)(v275, 1, 1, v109);
  v163 = v90;
LABEL_110:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v163);
  v79 = v282;
LABEL_111:
  v79;
  return v79;
}

BOOL _swift_dictionaryDownCastConditionalIndirect(unint64_t *a1, __objc2_class ***a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *a1;
  v17 = _dictionaryDownCastConditional<A, B, C, D>(_:)(v15, a3, a4, a5, a6, v16, a8);
  v14;
  if (v17)
  {
    *a2 = v17;
  }

  return v17 != 0;
}

__objc2_class **_dictionaryDownCastConditional<A, B, C, D>(_:)(int64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v342 = a7;
  v7 = a5;
  v12 = type metadata accessor for Optional(0, a5, a3, a4);
  v288 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v328 = (&v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v315 = &v280 - v15;
  v18 = type metadata accessor for Optional(0, a4, v16, v17);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v331 = &v280 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v346 = &v280 - v22;
  swift_getTupleTypeMetadata2(0, a4, v7, "key value ", 0);
  v341 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v324 = &v280 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v312 = &v280 - v26;
  swift_getTupleTypeMetadata2(0, a4, v7, 0, 0);
  v340 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v323 = (&v280 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v28);
  v311 = &v280 - v31;
  v326 = *(v7 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v322 = (&v280 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x1EEE9AC00](v32);
  v321 = &v280 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v320 = (&v280 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v308 = &v280 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v307 = &v280 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v304 = &v280 - v43;
  v351 = a4;
  v306 = *(a4 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v319 = (&v280 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v280 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v318 = &v280 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v303 = &v280 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v344 = &v280 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v302 = &v280 - v55;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v57 = v56;
  v347 = *(v56 - 8);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v336 = &v280 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v339 = (&v280 - v60);
  v300 = type metadata accessor for Optional(0, a3, v61, v62);
  v338 = *(v300 - 8);
  v63 = MEMORY[0x1EEE9AC00](v300);
  v299 = &v280 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v298 = &v280 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v294 = &v280 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v293 = &v280 - v69;
  v296 = type metadata accessor for Optional(0, a2, v70, v71);
  v292 = *(v296 - 8);
  v72 = MEMORY[0x1EEE9AC00](v296);
  v335 = &v280 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v334 = (&v280 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v325 = &v280 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v317 = &v280 - v79;
  v349 = a3;
  v333 = *(a3 - 1);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v327 = &v280 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v297 = &v280 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v313 = &v280 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v295 = &v280 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v310 = &v280 - v89;
  v350 = a2;
  v332 = *(a2 - 1);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v330 = &v280 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x1EEE9AC00](v90);
  v305 = (&v280 - v93);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v316 = &v280 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v301 = &v280 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v309 = &v280 - v98;
  v101 = type metadata accessor for Optional(0, v57, v99, v100);
  v102 = MEMORY[0x1EEE9AC00](v101 - 8);
  v337 = &v280 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v102);
  v329 = &v280 - v104;
  v105 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v106 = a1;
    }

    else
    {
      v106 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v107 = [v106 count];
    if (v107)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v107 = *(a1 + 16);
    if (v107)
    {
LABEL_6:
      v108 = v351;
      type metadata accessor for _DictionaryStorage(0, v351, v7, v342);
      v345 = static _DictionaryStorage.allocate(capacity:)(v107);
      goto LABEL_9;
    }
  }

  v345 = &_swiftEmptyDictionarySingleton;
  v108 = v351;
LABEL_9:
  v348 = v7;
  v343 = v57;
  v289 = v12;
  v291 = v18;
  v290 = v19;
  if (v108 == &type metadata for String)
  {
    if (v105)
    {
      if (a1 < 0)
      {
        v115 = a1;
      }

      else
      {
        v115 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v116 = type metadata accessor for __CocoaDictionary.Iterator();
      v117 = swift_allocObject(v116, 0xE8, 7uLL);
      v298 = 0;
      v118 = 0;
      v119 = 0;
      *(v117 + 208) = v115;
      *(v117 + 216) = 0;
      *(v117 + 16) = 0u;
      *(v117 + 32) = 0u;
      *(v117 + 48) = 0u;
      *(v117 + 64) = 0u;
      *(v117 + 80) = 0u;
      *(v117 + 96) = 0u;
      *(v117 + 112) = 0u;
      *(v117 + 128) = 0u;
      *(v117 + 144) = 0u;
      *(v117 + 160) = 0u;
      *(v117 + 176) = 0u;
      *(v117 + 192) = 0u;
      *(v117 + 224) = 0;
      v120 = v117 | 0x8000000000000000;
    }

    else
    {
      v199 = -1 << *(a1 + 32);
      v118 = ~v199;
      v200 = *(a1 + 64);
      v298 = (a1 + 64);
      v201 = -v199;
      if (v201 < 64)
      {
        v202 = ~(-1 << v201);
      }

      else
      {
        v202 = -1;
      }

      v119 = v202 & v200;
      v120 = a1;
    }

    v203 = v346;
    v204 = v344;
    v205 = v317;
    v299 = (v120 & 0x7FFFFFFFFFFFFFFFLL);
    v287 = (v332 + 56);
    v286 = (v292 + 2);
    v285 = (v332 + 48);
    v284 = (v292 + 1);
    v320 = (v332 + 32);
    v283 = (v333 + 56);
    v282 = (v338 + 16);
    v281 = (v333 + 48);
    v280 = (v338 + 8);
    v319 = (v333 + 32);
    v328 = (v347 + 56);
    v292 = v118;
    v297 = ((v118 + 64) >> 6);
    v337 = (v332 + 16);
    v336 = (v333 + 16);
    v327 = (v347 + 48);
    v322 = (v347 + 32);
    v323 = (v306 + 56);
    v335 = (v306 + 32);
    v324 = (v347 + 8);
    v321 = (v326 + 56);
    v330 = (v326 + 32);
    v206 = v345;
    v305 = v345 + 8;
    v318 = (v306 + 40);
    v314 = (v326 + 40);
    a1;
    v207 = 0;
    v208 = &type metadata for String;
    v209 = v339;
    v210 = v325;
    v338 = v120;
    v211 = v119;
    while (1)
    {
      v334 = v211;
      v331 = v207;
      if ((v120 & 0x8000000000000000) != 0)
      {
        v230 = v299;
        v231 = *(v299 + 27);
        if ((v231 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        if (v231 == *(v299 + 28))
        {
          v232 = [*(v299 + 26) countByEnumeratingWithState:v299 + 16 objects:v299 + 80 count:16];
          v230[28] = v232;
          if (!v232)
          {
            v230[27] = -1;
LABEL_116:
            (*v328)(v329, 1, 1, v343);
            _sSh8IteratorV8_VariantOySS__GWOe_0(v120);
            return v206;
          }

          v230[27] = 0;
          v233 = v230[3];
          if (!v233)
          {
            goto LABEL_124;
          }

          v231 = 0;
          v234 = v296;
        }

        else
        {
          v233 = *(v299 + 3);
          if (!v233)
          {
            goto LABEL_124;
          }

          v234 = v296;
          if (v231 >> 60)
          {
            goto LABEL_123;
          }
        }

        v235 = (v233 + 8 * v231);
        if ((v235 & 7) != 0)
        {
          goto LABEL_119;
        }

        v236 = *v235;
        v230[27] = v231 + 1;
        v237 = v230[26];
        swift_unknownObjectRetain(v236);
        v238 = [v237 &sel:v236 objectForKey:?];
        if (!v238)
        {
          goto LABEL_124;
        }

        v239 = v238;
        v240 = v350;
        if (_swift_isClassOrObjCExistentialType(v350, v350))
        {
          v352 = v236;
          swift_dynamicCast(v301, &v352, &unk_1EEEAC710, v240, 7);
        }

        else
        {
          (*v287)(v205, 1, 1, v240);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v236, v240, v205);
          (*v286)(v210, v205, v234);
          if ((*v285)(v210, 1, v240) == 1)
          {
            goto LABEL_121;
          }

          swift_unknownObjectRelease(v236);
          (*v284)(v205, v234);
          (*v320)(v301, v210, v240);
        }

        v241 = v349;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v349, v349);
        v243 = v294;
        v244 = v293;
        v245 = v295;
        if (isClassOrObjCExistentialType)
        {
          v352 = v239;
          swift_dynamicCast(v295, &v352, &unk_1EEEAC710, v241, 7);
          v246 = v245;
        }

        else
        {
          (*v283)(v293, 1, 1, v241);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v239, v241, v244);
          v277 = v300;
          (*v282)(v243, v244, v300);
          if ((*v281)(v243, 1, v241) == 1)
          {
            goto LABEL_121;
          }

          swift_unknownObjectRelease(v239);
          (*v280)(v244, v277);
          v246 = v295;
          (*v319)(v295, v243, v241);
        }

        v225 = v343;
        v247 = *(v343 + 48);
        v217 = v329;
        (*v320)(v329, v301, v350);
        (*v319)(&v217[v247], v246, v241);
        (*v328)(v217, 0, 1, v225);
        v215 = v331;
        v351 = v334;
        v7 = v348;
      }

      else
      {
        v212 = v211;
        v213 = v207;
        if (v211)
        {
LABEL_78:
          v351 = ((v212 - 1) & v212);
          v218 = __clz(__rbit64(v212)) | (v213 << 6);
          v219 = v338;
          v220 = v208;
          v221 = v332;
          (*(v332 + 16))(v309, *(v338 + 48) + *(v332 + 72) * v218, v350);
          v222 = v333;
          v223 = v310;
          v224 = v349;
          (*(v333 + 16))(v310, *(v219 + 56) + *(v333 + 72) * v218, v349);
          v225 = v343;
          v226 = *(v343 + 48);
          v227 = *(v221 + 32);
          v208 = v220;
          v7 = v348;
          v217 = v329;
          v227();
          v228 = *(v222 + 32);
          v209 = v339;
          v229 = v223;
          v204 = v344;
          v203 = v346;
          v228(&v217[v226], v229, v224);
          (*v328)(v217, 0, 1, v225);
          v215 = v213;
        }

        else
        {
          if (v297 <= (v207 + 1))
          {
            v214 = v207 + 1;
          }

          else
          {
            v214 = v297;
          }

          v215 = v214 - 1;
          v216 = v207;
          v217 = v329;
          while (1)
          {
            v213 = (v216 + 1);
            if (__OFADD__(v216, 1))
            {
              goto LABEL_118;
            }

            if (v213 >= v297)
            {
              break;
            }

            v212 = *&v298[8 * v213];
            ++v216;
            if (v212)
            {
              goto LABEL_78;
            }
          }

          v225 = v343;
          (*v328)(v329, 1, 1, v343);
          v351 = 0;
        }
      }

      if ((*v327)(v217, 1, v225) == 1)
      {
        v196 = v338;
        goto LABEL_113;
      }

      (*v322)(v209, v217, v225);
      v248 = *(v225 + 48);
      v249 = v316;
      v250 = v350;
      (*v337)(v316, v209, v350);
      if (!swift_dynamicCast(v203, v249, v250, v208, 6))
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v338);
        (*v323)(v203, 1, 1, &type metadata for String);
        (*v324)(v209, v225);
        v197 = *(v290 + 8);
        v198 = v203;
LABEL_107:
        v278 = &v323;
LABEL_110:
        v197(v198, *(v278 - 32));
        v345;
        return 0;
      }

      v347 = v215;
      (*v323)(v203, 0, 1, v208);
      v251 = *v335;
      (*v335)(v204, v203, v208);
      v252 = &v209[v248];
      v253 = v313;
      v254 = v349;
      (*v336)(v313, v252, v349);
      (*v324)(v209, v225);
      v255 = v315;
      if ((swift_dynamicCast(v315, v253, v254, v7, 6) & 1) == 0)
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v338);
        (*v321)(v255, 1, 1, v7);
        (*(v306 + 8))(v204, &type metadata for String);
        v197 = *(v288 + 8);
        v198 = v255;
LABEL_109:
        v278 = &v321;
        goto LABEL_110;
      }

      (*v321)(v255, 0, 1, v7);
      v256 = *v330;
      v257 = v307;
      (*v330)(v307, v255, v7);
      v258 = *(v341 + 48);
      v259 = v312;
      v251(v312, v204, v208);
      v256(&v259[v258], v257, v7);
      v260 = v340;
      v261 = *(v340 + 48);
      v262 = v311;
      v251(v311, v259, v208);
      v263 = &v262[v261];
      v7 = v348;
      v256(v263, &v259[v258], v348);
      v264 = *(v260 + 48);
      v265 = v302;
      v251(v302, v262, v208);
      v266 = &v262[v264];
      v267 = v304;
      v256(v304, v266, v7);
      v268 = v303;
      v251(v303, v265, v208);
      v269 = v308;
      v256(v308, v267, v7);
      v206 = v345;
      v270 = __RawDictionaryStorage.find<A>(_:)(v268, v208, v342);
      v271 = v270;
      if (v272)
      {
        (*(v306 + 40))(v206[6] + *(v306 + 72) * v270, v268, v208);
        (*(v326 + 40))(v206[7] + *(v326 + 72) * v271, v269, v7);
        v207 = v347;
      }

      else
      {
        v273 = v347;
        if (v206[2] >= v206[3])
        {
          goto LABEL_121;
        }

        *(v305 + ((v270 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v270;
        v251(v206[6] + *(v306 + 72) * v270, v268, v208);
        v256(v206[7] + *(v326 + 72) * v271, v269, v7);
        v274 = v206[2];
        v275 = __OFADD__(v274, 1);
        v276 = (&v274->isa + 1);
        if (v275)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v206[2] = v276;
        v207 = v273;
      }

      v211 = v351;
      v204 = v344;
      v120 = v338;
      v209 = v339;
      v210 = v325;
      v205 = v317;
      v203 = v346;
    }
  }

  v314 = v48;
  if (v105)
  {
    if (a1 < 0)
    {
      v109 = a1;
    }

    else
    {
      v109 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v110 = type metadata accessor for __CocoaDictionary.Iterator();
    v111 = swift_allocObject(v110, 0xE8, 7uLL);
    v303 = 0;
    v112 = 0;
    v113 = 0;
    *(v111 + 208) = v109;
    *(v111 + 216) = 0;
    *(v111 + 16) = 0u;
    *(v111 + 32) = 0u;
    *(v111 + 48) = 0u;
    *(v111 + 64) = 0u;
    *(v111 + 80) = 0u;
    *(v111 + 96) = 0u;
    *(v111 + 112) = 0u;
    *(v111 + 128) = 0u;
    *(v111 + 144) = 0u;
    *(v111 + 160) = 0u;
    *(v111 + 176) = 0u;
    *(v111 + 192) = 0u;
    *(v111 + 224) = 0;
    v114 = v111 | 0x8000000000000000;
  }

  else
  {
    v121 = -1 << *(a1 + 32);
    v112 = ~v121;
    v122 = *(a1 + 64);
    v303 = (a1 + 64);
    v123 = -v121;
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    else
    {
      v124 = -1;
    }

    v113 = (v124 & v122);
    v114 = a1;
  }

  v126 = v334;
  v125 = v335;
  v304 = (v114 & 0x7FFFFFFFFFFFFFFFLL);
  v295 = (v332 + 56);
  v294 = (v292 + 2);
  v293 = (v332 + 48);
  ++v292;
  v308 = (v332 + 32);
  v287 = (v333 + 56);
  v286 = (v338 + 16);
  v285 = (v333 + 48);
  v284 = (v338 + 8);
  v307 = (v333 + 32);
  v329 = (v347 + 56);
  v301 = v112;
  v302 = ((v112 + 64) >> 6);
  v339 = (v332 + 16);
  v338 = v333 + 16;
  v325 = (v347 + 48);
  v315 = (v347 + 32);
  v316 = (v306 + 56);
  v312 = (v306 + 32);
  v317 = (v347 + 8);
  v313 = (v326 + 56);
  v311 = (v326 + 32);
  a1;
  v127 = 0;
  v326 = v114;
  v344 = v113;
  while ((v326 & 0x8000000000000000) == 0)
  {
    v156 = v113;
    v157 = v127;
    v158 = v127;
    v159 = v349;
    v131 = v350;
    v132 = v343;
    if (v113)
    {
      goto LABEL_52;
    }

    v136 = v349;
    if (v302 <= (v157 + 1))
    {
      v160 = v157 + 1;
    }

    else
    {
      v160 = v302;
    }

    v149 = v160 - 1;
    v161 = v157;
    v150 = v336;
    v146 = v337;
    do
    {
      v158 = (v161 + 1);
      if (__OFADD__(v161, 1))
      {
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v158 >= v302)
      {
        (*v329)(v337, 1, 1, v343);
        v347 = 0;
        goto LABEL_53;
      }

      v156 = *&v303[8 * v158];
      ++v161;
    }

    while (!v156);
    v159 = v349;
LABEL_52:
    v347 = (v156 - 1) & v156;
    v162 = __clz(__rbit64(v156)) | (v158 << 6);
    v163 = v332;
    v164 = v309;
    (*(v332 + 16))(v309, *(v114 + 48) + *(v332 + 72) * v162, v350);
    v165 = *(v114 + 56);
    v166 = v333;
    v167 = v310;
    (*(v333 + 16))(v310, v165 + *(v333 + 72) * v162, v159);
    v168 = *(v132 + 48);
    v169 = *(v163 + 32);
    v170 = v337;
    v169(v337, v164, v131);
    v171 = v167;
    v146 = v170;
    v136 = v159;
    (*(v166 + 32))(&v170[v168], v171, v159);
    (*v329)(v170, 0, 1, v132);
    v149 = v158;
    v150 = v336;
LABEL_53:
    if ((*v325)(v146, 1, v132) == 1)
    {
      v196 = v326;
      goto LABEL_113;
    }

    v346 = v149;
    (*v315)(v150, v146, v132);
    v172 = *(v132 + 48);
    v173 = v330;
    (*v339)(v330, v150, v131);
    v174 = v331;
    if (!swift_dynamicCast(v331, v173, v131, v351, 6))
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v326);
      (*v316)(v174, 1, 1, v351);
      (*v317)(v150, v132);
      v197 = *(v290 + 8);
      v198 = v174;
      goto LABEL_107;
    }

    v175 = v351;
    (*v316)(v174, 0, 1, v351);
    v176 = *v312;
    v177 = v314;
    (*v312)(v314, v174, v175);
    v178 = &v150[v172];
    v179 = v327;
    (*v338)(v327, v178, v136);
    (*v317)(v150, v132);
    v180 = v328;
    v181 = v348;
    if ((swift_dynamicCast(v328, v179, v136, v348, 6) & 1) == 0)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v326);
      (*v313)(v180, 1, 1, v181);
      (*(v306 + 8))(v177, v351);
      v197 = *(v288 + 8);
      v198 = v180;
      goto LABEL_109;
    }

    (*v313)(v180, 0, 1, v181);
    v182 = *v311;
    v183 = v321;
    (*v311)(v321, v180, v181);
    v184 = *(v341 + 48);
    v185 = v351;
    v186 = v324;
    v176(v324, v177, v351);
    v182(&v186[v184], v183, v181);
    v187 = v340;
    v344 = *(v340 + 48);
    v188 = v323;
    v176(v323, v186, v185);
    v182(v188 + v344, &v186[v184], v181);
    v189 = *(v187 + 48);
    v190 = v318;
    v176(v318, v188, v185);
    v191 = v188 + v189;
    v192 = v320;
    v182(v320, v191, v181);
    v193 = v319;
    v176(v319, v190, v185);
    v194 = v322;
    v182(v322, v192, v181);
    v195 = v193;
    v126 = v334;
    _NativeDictionary._unsafeInsertNew(key:value:)(v195, v194, v345, v185, v181, v342);
    v127 = v346;
    v113 = v347;
    v125 = v335;
    v114 = v326;
    v344 = v347;
  }

  v128 = v304;
  v129 = *(v304 + 27);
  v130 = v349;
  v131 = v350;
  v132 = v343;
  if ((v129 & 0x8000000000000000) == 0)
  {
    if (v129 != *(v304 + 28))
    {
      v134 = *(v304 + 3);
      if (!v134)
      {
        goto LABEL_124;
      }

      if (v129 >> 60)
      {
        __break(1u);
        goto LABEL_121;
      }

LABEL_32:
      v135 = (v134 + 8 * v129);
      if ((v135 & 7) != 0)
      {
        goto LABEL_119;
      }

      v136 = v130;
      v137 = *v135;
      v128[27] = v129 + 1;
      v138 = v128[26];
      swift_unknownObjectRetain(v137);
      v139 = [v138 &sel:v137 objectForKey:?];
      if (!v139)
      {
        goto LABEL_124;
      }

      v140 = v139;
      v141 = _swift_isClassOrObjCExistentialType(v131, v131);
      v142 = v299;
      if (v141)
      {
        v352 = v137;
        swift_dynamicCast(v305, &v352, &unk_1EEEAC710, v131, 7);
      }

      else
      {
        (*v295)(v126, 1, 1, v131);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v137, v131, v126);
        v151 = v125;
        v152 = v126;
        v153 = v126;
        v154 = v125;
        v155 = v296;
        (*v294)(v151, v152, v296);
        if ((*v293)(v154, 1, v131) == 1)
        {
          goto LABEL_121;
        }

        swift_unknownObjectRelease(v137);
        (*v292)(v153, v155);
        (*v308)(v305, v154, v131);
      }

      v143 = _swift_isClassOrObjCExistentialType(v136, v136);
      v144 = v300;
      v145 = v298;
      v146 = v337;
      if (v143)
      {
        v352 = v140;
        v147 = v297;
        swift_dynamicCast(v297, &v352, &unk_1EEEAC710, v136, 7);
LABEL_38:
        v148 = *(v132 + 48);
        (*v308)(v146, v305, v131);
        (*v307)(&v146[v148], v147, v136);
        (*v329)(v146, 0, 1, v132);
        v149 = v127;
        v347 = v344;
        v150 = v336;
        goto LABEL_53;
      }

      (*v287)(v298, 1, 1, v136);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v140, v136, v145);
      (*v286)(v142, v145, v144);
      if ((*v285)(v142, 1, v136) != 1)
      {
        swift_unknownObjectRelease(v140);
        (*v284)(v145, v144);
        v147 = v297;
        (*v307)(v297, v142, v136);
        goto LABEL_38;
      }

LABEL_121:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v133 = [*(v304 + 26) countByEnumeratingWithState:v304 + 16 objects:v304 + 80 count:16];
    v128 = v304;
    *(v304 + 28) = v133;
    if (v133)
    {
      v128[27] = 0;
      v134 = v128[3];
      if (!v134)
      {
        goto LABEL_124;
      }

      v129 = 0;
      goto LABEL_32;
    }

    v128[27] = -1;
  }

  (*v329)(v337, 1, 1, v132);
  v196 = v114;
LABEL_113:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v196);
  return v345;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2)
{
  v5 = _swift_stdlib_Hashing_parameters ^ *(v2 + 40);
  v9 = 0u;
  v10 = 0u;
  v8[0] = 0;
  v8[1] = v5 ^ 0x736F6D6570736575;
  v8[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v8[3] = v5 ^ 0x6C7967656E657261;
  v8[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v8, a1, a2);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  v3 = *(v1 + 40);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  (*(v5 + 8))(v10, v4, v5);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_0Tm(v10, v11);
  v8 = (*(v7 + 40))(v3, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*(a3 + 32))(*(v4 + 40));

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8, a2, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v16 = ~v4;
    do
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v5, v21);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      (*(v9 + 8))(v18, v8, v9);
      v10 = v19;
      v11 = v20;
      __swift_project_boxed_opaque_existential_0Tm(v18, v19);
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v12);
      (*(v13 + 8))(v17, v12, v13);
      v14 = (*(v11 + 16))(v17, v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      outlined destroy of AnyHashable(v21);
      if (v14)
      {
        break;
      }

      v5 = (v5 + 1) & v16;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v16 = ~v4;
    do
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v5, v21);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      (*(v9 + 8))(v18, v8, v9);
      v10 = v19;
      v11 = v20;
      __swift_project_boxed_opaque_existential_0Tm(v18, v19);
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v12);
      (*(v13 + 8))(v17, v12, v13);
      v14 = (*(v11 + 16))(v17, v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      outlined destroy of AnyHashable(v21);
      if (v14)
      {
        break;
      }

      v5 = (v5 + 1) & v16;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    v9 = a2 & 0x6000000000000000;
    do
    {
      v10 = (*(v3 + 48) + 16 * v5);
      v11 = v10[1];
      if (*v10 == a1 && v11 == a2)
      {
        break;
      }

      v13 = (~v11 & 0x6000000000000000) == 0 && v9 == 0x6000000000000000;
      if (!v13 && (_stringCompareInternal(_:_:expecting:)(*v10, v11, a1, a2, 0) & 1) != 0)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    v9 = a2 & 0x6000000000000000;
    do
    {
      v10 = (*(v3 + 48) + 16 * v5);
      v11 = v10[1];
      if (*v10 == a1 && v11 == a2)
      {
        break;
      }

      v13 = (~v11 & 0x6000000000000000) == 0 && v9 == 0x6000000000000000;
      if (!v13 && (_stringCompareInternal(_:_:expecting:)(*v10, v11, a1, a2, 0) & 1) != 0)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21 = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v24 + 48) + v16 * v11, a3);
      v19 = (*(*(v23 + 8) + 8))(v8, v22, a3);
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t _DictionaryStorage.deinit()
{
  if (v0[2] < 1)
  {
    return v0;
  }

  v1 = *v0;
  v2 = *(*v0 + 176);
  if (*(*(v2 - 8) + 82))
  {
    v5 = *(v2 - 8);
    v6 = 0;
    v7 = 1 << *(v0 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v0[6];
    v10 = v8 & v0[8];
    for (i = (v7 + 63) >> 6; v10; result = (*(v5 + 8))(v9 + *(v5 + 72) * (v12 | (v6 << 6)), v2))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_3;
      }

      v14 = v0[v6 + 8];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    v3 = *(v1 + 184);
    if ((*(*(v3 - 8) + 82) & 1) == 0)
    {
LABEL_4:
      v0[2] = 0;
      return v0;
    }

    v15 = *(v3 - 8);
    v16 = 0;
    v17 = 1 << *(v0 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v0[7];
    v20 = v18 & v0[8];
    for (j = (v17 + 63) >> 6; v20; result = (*(v15 + 8))(v19 + *(v15 + 72) * (v22 | (v16 << 6)), v3))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_26:
      ;
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= j)
      {
        goto LABEL_4;
      }

      v24 = v0[v16 + 8];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
  return result;
}

void _DictionaryStorage.__deallocating_deinit()
{
  _DictionaryStorage.deinit();

  swift_deallocClassInstance(v0);
}

id @objc _DictionaryStorage.copy(with:)()
{
  v0 = specialized _SwiftDeferredNSDictionary.copy(with:)();

  return swift_unknownObjectRetain(v0);
}

void *_DictionaryStorage.keyEnumerator()()
{
  v1 = type metadata accessor for _SwiftDictionaryNSEnumerator(0, *(*v0 + 176), *(*v0 + 184), *(*v0 + 192));
  v2 = swift_allocObject(v1, 0x30, 7uLL);
  v3 = v2;
  v4 = 0;
  v2[2] = v0;
  v2[3] = 0;
  v5 = (v0 + 8);
  v6 = -1 << *(v0 + 32);
  v7 = -v6;
  v8 = (63 - v6) >> 6;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    if (v10)
    {
      break;
    }

    v4 -= 64;
    if (!--v8)
    {
      v11 = v7;
      goto LABEL_6;
    }
  }

  v11 = __clz(__rbit64(v9)) - v4;
LABEL_6:
  v2[4] = v11;
  v2[5] = v7;
  v0;
  return v3;
}

void *@objc _DictionaryStorage.keyEnumerator()()
{
  v0 = _DictionaryStorage.keyEnumerator()();

  return v0;
}

uint64_t _DictionaryStorage.countByEnumerating(with:objects:count:)(uint64_t a1, atomic_ullong a2)
{
  v4 = *(*v2 + 176);
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v43 - v11);
  v13 = (v2 + 64);
  v14 = -1 << *(v2 + 32);
  v15 = *v8;
  v16 = v8[1];
  v17 = v8[2];
  v18 = v8[3];
  v19 = *(v8 + 3);
  v59 = *(v8 + 2);
  v60 = v19;
  if (!v15)
  {
    goto LABEL_26;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v20 = -v14;
  if (v18 + v14 && (v18 >= v20 || ((*(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v9)
  {
    v45 = v16;
    v46 = v15;
    v21 = 0;
    v22 = v5 + 2;
    v43 = (v5 + 4);
    v44 = v10;
    v58 = (v5 + 1);
    v49 = (63 - v14) >> 6;
    v47 = v17;
    v48 = v2 + 72;
    while (1)
    {
      if (v21 == v9)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v18 == v20)
      {
        break;
      }

      v52 = v13;
      v56 = v8;
      v57 = v9;
      v23 = *(v2 + 48) + v5[9] * v18;
      v24 = v5[2];
      v50 = v22;
      v24(v12, v23, v4);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
      v54 = v4;
      v55 = v12;
      v53 = v6;
      v51 = v20;
      if (isClassOrObjCExistentialType)
      {
        if (v6 != 8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v6 = *v12;
        v26 = v5;
        v27 = a2;
        v28 = *v58;
        swift_unknownObjectRetain(*v12);
        v8 = v28(v12, v4);
        a2 = v27;
        v5 = v26;
        if (v21 == 0x1000000000000000)
        {
LABEL_25:
          __break(1u);
LABEL_26:
          v36 = 0;
          v18 = -v14;
          v37 = (63 - v14) >> 6;
          v38 = v13;
          while (1)
          {
            v40 = *v38++;
            v39 = v40;
            if (v40)
            {
              break;
            }

            v36 -= 64;
            if (!--v37)
            {
              goto LABEL_34;
            }
          }

          v18 = __clz(__rbit64(v39)) - v36;
LABEL_34:
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v17 = &_fastEnumerationStorageMutationsTarget;
          v15 = 1;
          v16 = a2;
          if (!a2)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v35 = v44;
        (*v43)(v44, v12, v4);
        v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v35, v4);
        v6 = v8;
        if (v21 == 0x1000000000000000)
        {
          goto LABEL_25;
        }
      }

      *(a2 + 8 * v21) = v6;
      swift_unknownObjectRelease(v6);
      v29 = v18 >> 6;
      v13 = v52;
      if ((v52[v18 >> 6] & (-2 << v18)) != 0)
      {
        v18 = __clz(__rbit64(v52[v18 >> 6] & (-2 << v18))) | v18 & 0xFFFFFFFFFFFFFFC0;
        v8 = v56;
        v9 = v57;
        v4 = v54;
        v12 = v55;
        v6 = v53;
        v22 = v50;
        v20 = v51;
      }

      else
      {
        v30 = v29 << 6;
        v31 = v29 + 1;
        v32 = (v48 + 8 * v29);
        v8 = v56;
        v9 = v57;
        v4 = v54;
        v12 = v55;
        v6 = v53;
        v22 = v50;
        v20 = v51;
        while (v31 < v49)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            v18 = __clz(__rbit64(v33)) + v30;
            goto LABEL_22;
          }
        }

        v18 = v51;
      }

LABEL_22:
      if (++v21 == v9)
      {
        v21 = v9;
        v20 = v18;
        goto LABEL_39;
      }
    }

    v18 = v20;
LABEL_39:
    v15 = v46;
    v17 = v47;
    v16 = v45;
    if (v20 < 0)
    {
LABEL_40:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    v21 = 0;
  }

  *v8 = v15;
  v8[1] = v16;
  v8[2] = v17;
  v8[3] = v18;
  v41 = v60;
  *(v8 + 2) = v59;
  *(v8 + 3) = v41;
  return v21;
}

atomic_ullong *_DictionaryStorage.object(forKey:)(void *a1)
{
  v26 = *v1;
  v3 = *(v26 + 184);
  v25 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v5 = (&v25 - v4);
  v7 = *(v6 + 176);
  v10 = type metadata accessor for Optional(0, v7, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v25 - v13);
  v15 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  _conditionallyBridgeFromObjectiveC<A>(_:_:)(a1, v7, v18, v14);
  if ((*(v15 + 48))(v14, 1, v7) == 1)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v15 + 32))(v17, v14, v7);
    v19 = __RawDictionaryStorage.find<A>(_:)(v17, v7, *(v26 + 192));
    v21 = v20;
    (*(v15 + 8))(v17, v7);
    if (v21)
    {
      v22 = v25;
      (*(v25 + 16))(v5, v1[7] + *(v25 + 72) * v19, v3);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)(v5, v3);
      (*(v22 + 8))(v5, v3);
      return v23;
    }
  }

  return 0;
}

void _DictionaryStorage.getObjects(_:andKeys:count:)(void (**a1)(char *, uint64_t *), void (**a2)(id *, char *, uint64_t *), id *a3)
{
  v176 = a2;
  v177 = a1;
  v181 = *(*(*v3 + 184) - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = (&v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v160 - v9);
  v175 = v11;
  v12 = MEMORY[0x1EEE9AC00](v8);
  v179 = &v160 - v13;
  v182 = v3;
  v15 = *(*(v14 + 176) - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = (&v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v160 - v20);
  v174 = v22;
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v160 - v23;
  v187 = v25;
  v188 = v24;
  swift_getTupleTypeMetadata2(255, v24, v25, "key value ", 0);
  v27 = v26;
  v185 = type metadata accessor for Optional(0, v26, v28, v29);
  v30 = MEMORY[0x1EEE9AC00](v185);
  v32 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v184 = &v160 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v171 = (&v160 - v38);
  MEMORY[0x1EEE9AC00](v37);
  v183 = &v160 - v42;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_87:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v166 = v40;
  v180 = v15;
  v167 = a3;
  if (!a3)
  {
    return;
  }

  v186 = v27;
  if (!v176)
  {
    if (!v177)
    {
      return;
    }

    v96 = 0;
    v97 = 0;
    v98 = *(v182 + 64);
    v163 = (v182 + 64);
    v99 = 1 << *(v182 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & v98;
    v102 = (v99 + 63) >> 6;
    v173 = v27 - 8;
    v166 = (v180 + 16);
    v165 = (v181 + 16);
    v164 = (v180 + 32);
    v176 = (v181 + 32);
    v169 = (v181 + 8);
    v171 = (v180 + 8);
    v172 = (v39 + 32);
    v170 = v167 - 1;
    v168 = v7;
    v167 = v32;
    if ((v100 & v98) != 0)
    {
LABEL_36:
      v174 = v96;
      v183 = ((v101 - 1) & v101);
      v103 = __clz(__rbit64(v101)) | (v97 << 6);
      goto LABEL_45;
    }

    while (1)
    {
      v104 = v102 <= v97 + 1 ? v97 + 1 : v102;
      v105 = v104 - 1;
      v106 = v184;
      do
      {
        v107 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_82;
        }

        if (v107 >= v102)
        {
          v183 = 0;
          v118 = 1;
          goto LABEL_46;
        }

        v108 = v163[v107];
        ++v97;
      }

      while (!v108);
      v174 = v96;
      v183 = ((v108 - 1) & v108);
      v103 = __clz(__rbit64(v108)) | (v107 << 6);
      v97 = v107;
LABEL_45:
      v109 = v182;
      v110 = v180;
      (*(v180 + 16))(v178, *(v182 + 48) + *(v180 + 72) * v103, v188);
      v111 = v181;
      v112 = *(v109 + 56) + *(v181 + 72) * v103;
      v113 = v179;
      v114 = v187;
      (*(v181 + 16))(v179, v112, v187);
      v115 = v186;
      v116 = *(v186 + 48);
      v32 = v167;
      (*(v110 + 32))();
      v117 = *(v111 + 32);
      v27 = v115;
      v117(&v32[v116], v113, v114);
      v118 = 0;
      v105 = v97;
      v7 = v168;
      v106 = v184;
      v96 = v174;
LABEL_46:
      v119 = *(v27 - 8);
      (*(v119 + 56))(v32, v118, 1, v27);
      (*v172)(v106, v32, v185);
      if ((*(v119 + 48))(v106, 1, v27) == 1)
      {
        return;
      }

      v120 = *v176;
      v121 = v187;
      (*v176)(v7, &v106[*(v27 + 48)], v187);
      if (_swift_isClassOrObjCExistentialType(v121, v121))
      {
        if (v175 != 8)
        {
          goto LABEL_83;
        }

        v122 = v32;
        v123 = *v7;
        v124 = *v169;
        swift_unknownObjectRetain(*v7);
        v125 = v7;
        v124(v7, v187);
      }

      else
      {
        v122 = v32;
        v126 = v179;
        v125 = v7;
        v127 = v187;
        v120(v179, v7, v187);
        v123 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v126, v127);
      }

      if (v96 == 0x1000000000000000)
      {
        goto LABEL_86;
      }

      v177[v96] = v123;
      swift_unknownObjectRelease(v123);
      if (v96 == v170)
      {
        (*v171)(v184, v188);
        return;
      }

      ++v96;
      (*v171)(v184, v188);
      v97 = v105;
      v101 = v183;
      v7 = v125;
      v32 = v122;
      if (v183)
      {
        goto LABEL_36;
      }
    }
  }

  v43 = *(v182 + 64);
  v162 = v182 + 64;
  v44 = 1 << *(v182 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v161 = (v44 + 63) >> 6;
  v173 = v27 - 8;
  v170 = (v180 + 16);
  v169 = (v181 + 16);
  v47 = (v180 + 32);
  v184 = (v181 + 32);
  v172 = (v39 + 32);
  v168 = (v180 + 32);
  if (!v177)
  {
    v128 = 0;
    v129 = 0;
    v171 = (v180 + 8);
    v177 = (v181 + 8);
    v175 = v167 - 1;
    v167 = v18;
    v183 = v41;
    if (v46)
    {
LABEL_57:
      v130 = (v46 - 1) & v46;
      v131 = __clz(__rbit64(v46)) | (v129 << 6);
      goto LABEL_66;
    }

    while (1)
    {
      v132 = v161 <= v129 + 1 ? v129 + 1 : v161;
      v133 = v132 - 1;
      do
      {
        v134 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_81;
        }

        if (v134 >= v161)
        {
          v46 = 0;
          v149 = 1;
          v146 = v166;
          goto LABEL_67;
        }

        v135 = *(v162 + 8 * v134);
        ++v129;
      }

      while (!v135);
      v130 = (v135 - 1) & v135;
      v131 = __clz(__rbit64(v135)) | (v134 << 6);
      v129 = v134;
LABEL_66:
      v136 = v182;
      v137 = v180;
      v138 = v178;
      v139 = v188;
      (*(v180 + 16))(v178, *(v182 + 48) + *(v180 + 72) * v131, v188);
      v140 = v181;
      v141 = *(v136 + 56) + *(v181 + 72) * v131;
      v142 = v179;
      v143 = v187;
      (*(v181 + 16))(v179, v141, v187);
      v144 = *(v186 + 48);
      v145 = *(v137 + 32);
      v146 = v166;
      v147 = v138;
      v27 = v186;
      v148 = v139;
      v47 = v168;
      v145(v166, v147, v148);
      (*(v140 + 32))(&v146[v144], v142, v143);
      v149 = 0;
      v133 = v129;
      v46 = v130;
      v18 = v167;
LABEL_67:
      v150 = *(v27 - 8);
      (*(v150 + 56))(v146, v149, 1, v27);
      v151 = v183;
      (*v172)(v183, v146, v185);
      if ((*(v150 + 48))(v151, 1, v27) == 1)
      {
        return;
      }

      v152 = *v47;
      v153 = v188;
      (*v47)(v18, v151, v188);
      if (_swift_isClassOrObjCExistentialType(v153, v153))
      {
        if (v174 != 8)
        {
          goto LABEL_83;
        }

        v154 = v133;
        v155 = *v18;
        v156 = *v171;
        swift_unknownObjectRetain(*v18);
        v156(v18, v188);
      }

      else
      {
        v154 = v133;
        v158 = v178;
        v159 = v188;
        v152(v178, v18, v188);
        v155 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v158, v159);
      }

      if (v128 == 0x1000000000000000)
      {
        break;
      }

      v157 = *(v27 + 48);
      v176[v128] = v155;
      swift_unknownObjectRelease(v155);
      if (v128 == v175)
      {
        (*v177)(&v151[v157], v187);
        return;
      }

      ++v128;
      (*v177)(&v151[v157], v187);
      v129 = v154;
      if (v46)
      {
        goto LABEL_57;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v48 = 0;
  v49 = 0;
  v166 = (v181 + 8);
  v165 = (v180 + 8);
  v163 = v10;
  v164 = v21;
  do
  {
    if (v46)
    {
      v50 = (v46 - 1) & v46;
      v51 = __clz(__rbit64(v46)) | (v49 << 6);
      goto LABEL_18;
    }

    if (v161 <= v49 + 1)
    {
      v52 = v49 + 1;
    }

    else
    {
      v52 = v161;
    }

    v53 = v52 - 1;
    v54 = v171;
    do
    {
      v55 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (v55 >= v161)
      {
        v46 = 0;
        v71 = 1;
        v49 = v53;
        goto LABEL_19;
      }

      v56 = *(v162 + 8 * v55);
      ++v49;
    }

    while (!v56);
    v50 = (v56 - 1) & v56;
    v51 = __clz(__rbit64(v56)) | (v55 << 6);
    v49 = v55;
LABEL_18:
    v57 = v182;
    v58 = v180;
    v59 = v178;
    v60 = v188;
    (*(v180 + 16))(v178, *(v182 + 48) + *(v180 + 72) * v51, v188);
    v61 = v181;
    v62 = *(v57 + 56) + *(v181 + 72) * v51;
    v63 = v179;
    v64 = v187;
    (*(v181 + 16))(v179, v62, v187);
    v65 = *(v186 + 48);
    v66 = *(v58 + 32);
    v67 = v171;
    v68 = v59;
    v27 = v186;
    v69 = v60;
    v47 = v168;
    v66(v171, v68, v69);
    v70 = *(v61 + 32);
    v54 = v67;
    v70(v67 + v65, v63, v64);
    v71 = 0;
    v46 = v50;
    v10 = v163;
    v21 = v164;
LABEL_19:
    v72 = *(v27 - 8);
    (*(v72 + 56))(v54, v71, 1, v27);
    v73 = v183;
    (*v172)(v183, v54, v185);
    if ((*(v72 + 48))(v73, 1, v27) == 1)
    {
      return;
    }

    v74 = *(v27 + 48);
    v75 = *v47;
    v76 = v47;
    v77 = v21;
    v78 = v21;
    v79 = v10;
    v80 = v183;
    v81 = v76;
    v75(v78, v183, v188);
    v82 = *v184;
    v83 = &v80[v74];
    v10 = v79;
    v84 = v187;
    (*v184)(v79, v83, v187);
    if (_swift_isClassOrObjCExistentialType(v84, v84))
    {
      if (v175 == 8)
      {
        v85 = *v79;
        v86 = *v166;
        swift_unknownObjectRetain(*v79);
        v86(v79, v187);
        v21 = v77;
        goto LABEL_23;
      }

LABEL_83:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v89 = v46;
    v90 = v179;
    v91 = v187;
    v82(v179, v10, v187);
    v92 = v90;
    v46 = v89;
    v21 = v164;
    v85 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v92, v91);
LABEL_23:
    if (v48 == 0x1000000000000000)
    {
      __break(1u);
      goto LABEL_85;
    }

    v47 = v81;
    v177[v48] = v85;
    swift_unknownObjectRelease(v85);
    if (_swift_isClassOrObjCExistentialType(v188, v188))
    {
      v27 = v186;
      if (v174 != 8)
      {
        goto LABEL_83;
      }

      v87 = *v21;
      v88 = *v165;
      swift_unknownObjectRetain(*v21);
      v88(v21, v188);
    }

    else
    {
      v93 = v178;
      v94 = v188;
      v75(v178, v164, v188);
      v95 = v93;
      v21 = v164;
      v87 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v95, v94);
      v27 = v186;
    }

    v176[v48] = v87;
    swift_unknownObjectRelease(v87);
    v48 = (v48 + 1);
  }

  while (v48 != v167);
}

uint64_t @objc _SwiftDeferredNSDictionary.getObjects(_:andKeys:count:)(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  a1;
  a6(a3, a4, a5);

  return a1;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_AOTt2g5(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v6 = a1;
  v7 = 1 << a1;
  v8 = ((1 << a1) + 63) >> 6;
  v9 = canonical specialized generic type metadata accessor for _DictionaryStorage<AnyHashable, AnyHashable>();
  v10 = swift_allocObject(v9, ((((40 << v6) + 8 * v8 + 71) & 0xFFFFFFFFFFFFFFF8) + (40 << v6)), 7uLL);
  v11 = v10 + 4;
  v12 = &v10[4].i64[v8];
  v10[1].i64[0] = 0;
  v10->i64;
  v10[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v10[2].i8[0] = a1;
  v10[2].i8[1] = 0;
  v10[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v10);
  }

  v10[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v13 = v6;
  }

  else
  {
    v13 = v10;
  }

  if ((a4 & 1) == 0)
  {
    v13 = a3;
  }

  v10[2].i64[1] = v13;
  v10[3].i64[0] = v12;
  v10[3].i64[1] = v12 + 40 * v7;
  v10;
  if (v7 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v11);
  }

  else
  {
    v11->i64[0] = -1 << v7;
  }

  return v10;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, Any>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (32 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11->i64;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v11[2].i8[0] = a1;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_ypTt2g5(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v6 = a1;
  v7 = 1 << a1;
  v8 = ((1 << a1) + 63) >> 6;
  v9 = canonical specialized generic type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
  v10 = swift_allocObject(v9, ((((40 << v6) + 8 * v8 + 71) & 0xFFFFFFFFFFFFFFF8) + (32 << v6)), 7uLL);
  v11 = v10 + 4;
  v12 = &v10[4].i64[v8];
  v10[1].i64[0] = 0;
  v10->i64;
  v10[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v10[2].i8[0] = a1;
  v10[2].i8[1] = 0;
  v10[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v10);
  }

  v10[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v13 = v6;
  }

  else
  {
    v13 = v10;
  }

  if ((a4 & 1) == 0)
  {
    v13 = a3;
  }

  v10[2].i64[1] = v13;
  v10[3].i64[0] = v12;
  v10[3].i64[1] = v12 + 40 * v7;
  v10;
  if (v7 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v11);
  }

  else
  {
    v11->i64[0] = -1 << v7;
  }

  return v10;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_SSTt2g5(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v6 = a1;
  v7 = 1 << a1;
  v8 = ((1 << a1) + 63) >> 6;
  v9 = canonical specialized generic type metadata accessor for _DictionaryStorage<AnyHashable, String>();
  v10 = swift_allocObject(v9, ((((40 << v6) + 8 * v8 + 71) & 0xFFFFFFFFFFFFFFF8) + (16 << v6)), 7uLL);
  v11 = v10 + 4;
  v12 = &v10[4].i64[v8];
  v10[1].i64[0] = 0;
  v10->i64;
  v10[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v10[2].i8[0] = a1;
  v10[2].i8[1] = 0;
  v10[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v10);
  }

  v10[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v13 = v6;
  }

  else
  {
    v13 = v10;
  }

  if ((a4 & 1) == 0)
  {
    v13 = a3;
  }

  v10[2].i64[1] = v13;
  v10[3].i64[0] = v12;
  v10[3].i64[1] = v12 + 40 * v7;
  v10;
  if (v7 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v11);
  }

  else
  {
    v11->i64[0] = -1 << v7;
  }

  return v10;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_s11AnyHashableVTt2g5(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, AnyHashable>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (40 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11->i64;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v11[2].i8[0] = a1;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SSTt2g5(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, String>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (16 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11->i64;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v11[2].i8[0] = a1;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SiTt2g5(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v7 = a1;
  v8 = 1 << a1;
  v9 = ((1 << a1) + 63) >> 6;
  v10 = canonical specialized generic type metadata accessor for _DictionaryStorage<String, Int>();
  v11 = swift_allocObject(v10, ((((16 << v7) + 8 * v9 + 71) & 0xFFFFFFFFFFFFFFF8) + (8 << v7)), 7uLL);
  v12 = v11 + 4;
  v13 = &v11[4].i64[v9];
  v11[1].i64[0] = 0;
  v11->i64;
  v11[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v11[2].i8[0] = a1;
  v11[2].i8[1] = 0;
  v11[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v11);
  }

  v11[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v11;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v11[2].i64[1] = v14;
  v11[3].i64[0] = v13;
  v11[3].i64[1] = v13 + 16 * v8;
  v11;
  if (v8 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v12);
  }

  else
  {
    v12->i64[0] = -1 << v8;
  }

  return v11;
}

int64x2_t *_ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSO_SiTt2g5Tm(char a1, uint64_t a2, int64x2_t *a3, char a4, uint64_t (*a5)(void))
{
  v8 = a1;
  v9 = 1 << a1;
  v10 = ((1 << a1) + 63) >> 6;
  v11 = a5(0);
  v12 = swift_allocObject(v11, ((((8 << v8) + 8 * v10 + 71) & 0xFFFFFFFFFFFFFFF8) + (8 << v8)), 7uLL);
  v13 = v12 + 4;
  v14 = &v12[4].i64[v10];
  v12[1].i64[0] = 0;
  v12->i64;
  v12[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v12[2].i8[0] = a1;
  v12[2].i8[1] = 0;
  v12[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v12);
  }

  v12[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v12;
  }

  if ((a4 & 1) == 0)
  {
    v15 = a3;
  }

  v12[2].i64[1] = v15;
  v12[3].i64[0] = v14;
  v12[3].i64[1] = v14 + 8 * v9;
  v12;
  if (v9 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v10, v13);
  }

  else
  {
    v13->i64[0] = -1 << v9;
  }

  return v12;
}

int64x2_t *specialized static _DictionaryStorage.allocate(scale:age:seed:)(char a1, uint64_t a2, int64x2_t *a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v10 = 1 << a1;
  v11 = ((1 << a1) + 63) >> 6;
  v12 = type metadata accessor for _DictionaryStorage(0, a5, &unk_1EEEBE0E0, a6);
  v13 = *(*(a5 - 8) + 80);
  v14 = v13 + 8 * v11;
  v15 = (*(*(a5 - 8) + 72) << v9) + 7;
  v16 = swift_allocObject(v12, (((v15 + ((v14 + 64) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + (16 << v9)), v13 | 7);
  v17 = v16 + 4;
  v18 = (v16[4].u64 + v14) & ~v13;
  v16[1].i64[0] = 0;
  v16->i64;
  v16[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v16[2].i8[0] = a1;
  v16[2].i8[1] = 0;
  v16[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v16);
  }

  v16[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v19 = v9;
  }

  else
  {
    v19 = v16;
  }

  if ((a4 & 1) == 0)
  {
    v19 = a3;
  }

  v16[2].i64[1] = v19;
  v16[3].i64[0] = v18;
  v16[3].i64[1] = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  v16;
  if (v10 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v17);
  }

  else
  {
    v17->i64[0] = -1 << v10;
  }

  return v16;
}

int64x2_t *static _DictionaryStorage.allocate(scale:age:seed:)(char a1, uint64_t a2, int64x2_t *a3, char a4)
{
  v5 = v4;
  v8 = a1;
  v9 = 1 << a1;
  v10 = *(*(v4 + 176) - 8);
  v11 = *(v10 + 80);
  v21 = ((1 << a1) + 63) >> 6;
  v12 = v11 + 8 * v21;
  v13 = *(v10 + 72) << a1;
  v14 = *(*(*(v5 + 184) - 8) + 80);
  v15 = v13 + v14;
  v16 = swift_allocObject(v5, (((((v12 + 64) & ~v11) + v13 + v14) & ~v14) + (*(*(*(v5 + 184) - 8) + 72) << a1)), v11 | v14 | 7);
  v17 = v16 + 4;
  v18 = (v16[4].u64 + v12) & ~v11;
  v16[1].i64[0] = 0;
  v16->i64;
  v16[1].i64[1] = specialized static _HashTable.capacity(forScale:)(a1);
  v16[2].i8[0] = a1;
  v16[2].i8[1] = 0;
  v16[2].i16[1] = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v16);
  }

  v16[2].i32[1] = a2;
  if (qword_1ED42CFC8)
  {
    v19 = v8;
  }

  else
  {
    v19 = v16;
  }

  if ((a4 & 1) == 0)
  {
    v19 = a3;
  }

  v16[2].i64[1] = v19;
  v16[3].i64[0] = v18;
  v16[3].i64[1] = (v18 + v15) & ~v14;
  v16;
  if (v9 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v21, v17);
  }

  else
  {
    v17->i64[0] = -1 << v9;
  }

  return v16;
}

uint64_t Int16.init(_builtinIntegerLiteral:)(unsigned __int16 *a1, unint64_t a2)
{
  if (a2 >> 8 <= 0x10)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall _HashTable.clear()()
{
  if (v1 + 1 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v1 + 64) >> 6, v0);
  }

  else
  {
    v0->i64[0] = -1 << (v1 + 1);
  }
}

unint64_t _sSh8_VariantV8asNatives01_C3SetVyxGvpSHRzlAByx_GTK_0@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void _sSh8_VariantV8asNatives01_C3SetVyxGvpSHRzlAByx_GTk_0(atomic_ullong **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1;
  v4;
  *a2 = v3;
}

__objc2_class **_NativeDictionary.init(_:capacity:)(void *a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional(0, a4, a3, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v53 - v16;
  v68 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v73 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Optional(0, a3, v19, v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = *(a3 - 1);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v72 = (&v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    swift_unknownObjectRelease(a1);
    return &_swiftEmptyDictionarySingleton;
  }

  v66 = v25;
  v67 = v26;
  v63 = v14;
  v64 = v27;
  v65 = v10;
  v30 = v28;
  type metadata accessor for _DictionaryStorage(0, a3, a4, a5);
  v31 = specialized static _HashTable.scale(forCapacity:)(a2);
  v32 = specialized static Hasher._hash(seed:_:)(0, a1);
  LOBYTE(v75) = 0;
  v33 = static _DictionaryStorage.allocate(scale:age:seed:)(v31, v32, 0, 1);
  v75 = v33;
  v34 = type metadata accessor for __CocoaDictionary.Iterator();
  v35 = swift_allocObject(v34, 0xE8, 7uLL);
  v36 = 0;
  *(v35 + 1) = 0u;
  v70 = v35 + 2;
  v35[27] = 0;
  v71 = v35 + 27;
  *(v35 + 2) = 0u;
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 6) = 0u;
  *(v35 + 7) = 0u;
  *(v35 + 8) = 0u;
  *(v35 + 9) = 0u;
  v61 = (v30 + 16);
  v62 = (v24 + 56);
  *(v35 + 10) = 0u;
  *(v35 + 11) = 0u;
  v59 = (v30 + 8);
  v60 = (v24 + 48);
  v58 = (v24 + 32);
  v37 = v68;
  *(v35 + 12) = 0u;
  *(v35 + 5) = 0u;
  v69 = v35 + 10;
  v56 = (v11 + 16);
  v57 = (v37 + 7);
  v55 = (v37 + 6);
  v35[28] = 0;
  v54 = (v11 + 8);
  v68 = v37 + 4;
  v35[26] = a1;
  v38 = &type metadata for Swift.AnyObject;
  while (1)
  {
    if (v36 != v35[28])
    {
      v40 = v35[3];
      if (!v40)
      {
        goto LABEL_28;
      }

      if (v36 >> 60)
      {
        __break(1u);
LABEL_27:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_10;
    }

    v39 = [v35[26] countByEnumeratingWithState:v70 objects:v69 count:16];
    v35[28] = v39;
    if (!v39)
    {
      break;
    }

    v35[27] = 0;
    v40 = v35[3];
    if (!v40)
    {
      goto LABEL_28;
    }

    v36 = 0;
LABEL_10:
    v41 = (v40 + 8 * v36);
    if ((v41 & 7) != 0)
    {
      goto LABEL_27;
    }

    v42 = v38;
    v43 = v17;
    v44 = *v41;
    v35[27] = v36 + 1;
    v45 = v35[26];
    swift_unknownObjectRetain(v44);
    v46 = [v45 &sel:v44 objectForKey:?];
    if (!v46)
    {
LABEL_28:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v47 = v46;
    if (_swift_isClassOrObjCExistentialType(a3, a3))
    {
      v74 = v44;
      swift_dynamicCast(v72, &v74, v38 + 1, a3, 7uLL);
    }

    else
    {
      v49 = v67;
      (*v62)(v67, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v44, a3, v49);
      v50 = v64;
      (*v61)(v64, v67, v66);
      if ((*v60)(v50, 1, a3) == 1)
      {
        goto LABEL_29;
      }

      swift_unknownObjectRelease(v44);
      (*v59)(v67, v66);
      (*v58)(v72, v64, a3);
      v38 = v42;
    }

    if (_swift_isClassOrObjCExistentialType(a4, a4))
    {
      v74 = v47;
      swift_dynamicCast(v73, &v74, v38 + 1, a4, 7uLL);
    }

    else
    {
      (*v57)(v43, 1, 1, a4);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v47, a4, v43);
      v51 = v63;
      (*v56)(v63, v43, v65);
      if ((*v55)(v51, 1, a4) == 1)
      {
LABEL_29:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v47);
      (*v54)(v43, v65);
      (*v68)(v73, v51, a4);
      v38 = v42;
    }

    v48 = v33[1].u64[0];
    if (v33[1].i64[1] <= v48)
    {
      type metadata accessor for _NativeDictionary(0, a3, a4, a5);
      _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48 + 1, 1);
    }

    v33 = v75;
    _NativeDictionary._unsafeInsertNew(key:value:)(v72, v73, v75, a3, a4, a5);
    v36 = *v71;
    v17 = v43;
    if ((*v71 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  v35[27] = -1;
LABEL_24:
  v35;
  return v33;
}

uint64_t _NativeDictionary.startIndex.getter(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 64);
  v3 = -1 << *(a1 + 32);
  v4 = -v3;
  v5 = (63 - v3) >> 6;
  while (1)
  {
    v7 = *v2++;
    v6 = v7;
    if (v7)
    {
      break;
    }

    v1 -= 64;
    if (!--v5)
    {
      return v4;
    }
  }

  return __clz(__rbit64(v6)) - v1;
}

Swift::Int _NativeDictionary.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, swift *a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v27 = v12;
    if (v12 >= 0)
    {
      v16 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = v12;
    }

    v17 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v16, v17))
    {
      goto LABEL_21;
    }

    if (*(a4 + 36) == specialized static Hasher._hash(seed:_:)(0, *(v16 + 16)))
    {
      if (!swift_dynamicCastClass(v16, v17))
      {
        goto LABEL_21;
      }

      v18 = *(v16 + 24);
      if (*(v18 + 16) <= a2)
      {
        goto LABEL_20;
      }

      v19 = *(v18 + 8 * a2 + 24);
      v20 = swift_unknownObjectRetain(v19);
      _forceBridgeFromObjectiveC<A>(_:_:)(v20, a5, v21, v14);
      swift_unknownObjectRelease(v19);
      __RawDictionaryStorage.find<A>(_:)(v14, a5, a7);
      v23 = v22;
      (*(v11 + 8))(v14, a5);
      if (v23)
      {
        if (swift_dynamicCastClass(v16, v17))
        {
          v24 = *(v16 + 16);
          swift_unknownObjectRetain(v24);
          if (swift_dynamicCastClass(v16, v17))
          {
            if (*(*(v16 + 24) + 16) > a2)
            {
              v27;
              swift_unknownObjectRelease(v24);
              return v27;
            }

LABEL_20:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v12 < 0 || -(-1 << *(a4 + 32)) <= v12 || ((*(a4 + 64 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0 || *(a4 + 36) != a2)
  {
    goto LABEL_19;
  }

  return _HashTable.occupiedBucket(after:)(v12).offset;
}

unint64_t _NativeDictionary.index(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  result = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t _NativeDictionary.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
  return v5 & 1;
}

uint64_t _NativeDictionary.lookup(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a2 + 16) && (v9 = __RawDictionaryStorage.find<A>(_:)(a1, a3, a5), (v10 & 1) != 0))
  {
    v15 = *(a4 - 8);
    (*(v15 + 16))(a6, *(a2 + 56) + *(v15 + 72) * v9, a4);
    v11 = v15;
    v12 = 0;
  }

  else
  {
    v11 = *(a4 - 8);
    v12 = 1;
  }

  v13 = *(v11 + 56);

  return v13(a6, v12, 1, a4);
}

uint64_t _NativeDictionary.lookup(_:)(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, swift *a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a7 - 1);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    v20 = v16;
    if (a3 >= 0)
    {
      a3 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v21 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(a3, v21))
    {
      goto LABEL_17;
    }

    if (*(a6 + 36) != specialized static Hasher._hash(seed:_:)(0, *(a3 + 16)))
    {
      goto LABEL_15;
    }

    if (!swift_dynamicCastClass(a3, v21))
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v22 = *(a3 + 24);
    if (*(v22 + 16) <= a4)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v23 = *(v22 + 8 * a4 + 24);
    v24 = swift_unknownObjectRetain(v23);
    _forceBridgeFromObjectiveC<A>(_:_:)(v24, a7, v25, v18);
    swift_unknownObjectRelease(v23);
    a3 = __RawDictionaryStorage.find<A>(_:)(v18, a7, a9);
    LOBYTE(v23) = v26;
    (*(v15 + 8))(v18, a7);
    if (v23)
    {
      v16 = v20;
      goto LABEL_14;
    }

LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < 0 || 1 << *(a6 + 32) <= a3 || ((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0 || *(a6 + 36) != a4)
  {
    goto LABEL_15;
  }

LABEL_14:
  (*(v15 + 16))(v16, *(a6 + 48) + *(v15 + 72) * a3, a7);
  return (*(*(a8 - 8) + 16))(a2, *(a6 + 56) + *(*(a8 - 8) + 72) * a3, a8);
}

uint64_t _NativeDictionary.key(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, swift *a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    if (v12 >= 0)
    {
      v16 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = v12;
    }

    v17 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v16, v17))
    {
      goto LABEL_18;
    }

    if (*(a3 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v16 + 16)))
    {
      goto LABEL_16;
    }

    if (!swift_dynamicCastClass(v16, v17))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = *(v16 + 24);
    if (*(v18 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v19 = *(v18 + 8 * a2 + 24);
    v20 = swift_unknownObjectRetain(v19);
    _forceBridgeFromObjectiveC<A>(_:_:)(v20, a4, v21, v14);
    swift_unknownObjectRelease(v19);
    v22 = __RawDictionaryStorage.find<A>(_:)(v14, a4, a5);
    v24 = v23;
    (*(v11 + 8))(v14, a4);
    if (v24)
    {
      v12 = v22;
      return (*(v11 + 16))(a6, *(a3 + 48) + *(v11 + 72) * v12, a4);
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v12 < 0 || 1 << *(a3 + 32) <= v12 || ((*(a3 + 8 * (v12 >> 6) + 64) >> v12) & 1) == 0 || *(a3 + 36) != a2)
  {
    goto LABEL_16;
  }

  return (*(v11 + 16))(a6, *(a3 + 48) + *(v11 + 72) * v12, a4);
}

uint64_t _NativeDictionary.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, swift *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 1);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    if (v14 >= 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = v14;
    }

    v19 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v18, v19))
    {
      goto LABEL_18;
    }

    if (*(a3 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v18 + 16)))
    {
      goto LABEL_16;
    }

    if (!swift_dynamicCastClass(v18, v19))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v20 = *(v18 + 24);
    if (*(v20 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v21 = *(v20 + 8 * a2 + 24);
    v22 = swift_unknownObjectRetain(v21);
    _forceBridgeFromObjectiveC<A>(_:_:)(v22, a4, v23, v16);
    swift_unknownObjectRelease(v21);
    v24 = __RawDictionaryStorage.find<A>(_:)(v16, a4, a6);
    LOBYTE(v21) = v25;
    (*(v13 + 8))(v16, a4);
    if (v21)
    {
      v14 = v24;
      return (*(*(a5 - 8) + 16))(a7, *(a3 + 56) + *(*(a5 - 8) + 72) * v14, a5);
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v14 < 0 || 1 << *(a3 + 32) <= v14 || ((*(a3 + 8 * (v14 >> 6) + 64) >> v14) & 1) == 0 || *(a3 + 36) != a2)
  {
    goto LABEL_16;
  }

  return (*(*(a5 - 8) + 16))(a7, *(a3 + 56) + *(*(a5 - 8) + 72) * v14, a5);
}

void (*_NativeDictionary.subscript.modify(void *a1, uint64_t a2, char a3, void *a4))(uint64_t a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc(0x90, 0x6BB9uLL);
  }

  else
  {
    v8 = malloc(0x90uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v4;
  v10 = a4[2];
  v8[2] = v10;
  v43 = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (swift_coroFrameAlloc)
  {
    v13 = swift_coroFrameAlloc(v12, 0x6BB9uLL);
  }

  else
  {
    v13 = malloc(v12);
  }

  v9[4] = v13;
  v14 = a4[3];
  v9[5] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v9[6] = v15;
  v17 = *(v15 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[7] = swift_coroFrameAlloc(v17, 0x6BB9uLL);
    v9[8] = swift_coroFrameAlloc(v17, 0x6BB9uLL);
    v18 = swift_coroFrameAlloc(v17, 0x6BB9uLL);
  }

  else
  {
    v9[7] = malloc(v17);
    v9[8] = malloc(v17);
    v18 = malloc(v17);
  }

  v9[9] = v18;
  v21 = type metadata accessor for Optional(0, v14, v19, v20);
  v9[10] = v21;
  v22 = *(v21 - 8);
  v9[11] = v22;
  v23 = *(v22 + 64);
  if (swift_coroFrameAlloc)
  {
    v9[12] = swift_coroFrameAlloc(v23, 0x6BB9uLL);
    v9[13] = swift_coroFrameAlloc(v23, 0x6BB9uLL);
    v24 = swift_coroFrameAlloc(v23, 0x6BB9uLL);
  }

  else
  {
    v9[12] = malloc(v23);
    v9[13] = malloc(v23);
    v24 = malloc(v23);
  }

  v25 = v24;
  v9[14] = v24;
  v42 = v4;
  v26 = *v4;
  v27 = a4;
  v28 = a4[4];
  v9[15] = v28;
  v29 = a2;
  v31 = __RawDictionaryStorage.find<A>(_:)(a2, v43, v28);
  *(v9 + 136) = v30 & 1;
  v32 = *(v26 + 16);
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_26;
  }

  v35 = v30;
  v36 = *(v26 + 24);
  if (v36 >= v34 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (v36 >= v34 && (a3 & 1) == 0)
  {
    _NativeDictionary.copy()();
    goto LABEL_21;
  }

  _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, a3 & 1);
  v27 = v43;
  v37 = __RawDictionaryStorage.find<A>(_:)(v29, v43, v28);
  if ((v35 & 1) != (v38 & 1))
  {
LABEL_26:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v27);
  }

  v31 = v37;
LABEL_21:
  v9[16] = v31;
  if (v35)
  {
    (*(v16 + 32))(v25, *(*v42 + 56) + *(v16 + 72) * v31, v14);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  (*(v16 + 56))(v25, v39, 1, v14);
  return _NativeDictionary.subscript.modify;
}

void _NativeDictionary.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*(*a1 + 88) + 16);
  v6 = *(*a1 + 40);
  v7 = (*(*a1 + 48) + 48);
  v8 = *(*a1 + 112);
  if ((a2 & 1) == 0)
  {
    v12 = v3[13];
    v5(v12, v8, v4);
    v13 = (*v7)(v12, 1, v6);
    v14 = *(v3 + 136);
    if (v13 == 1)
    {
      (*(v3[11] + 8))(v3[13], v3[10]);
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    v20 = v3[1];
    v21 = *(v3[6] + 32);
    v21(v3[9], v3[13], v3[5]);
    v18 = *v20;
    v22 = v3[16];
    v23 = v3[9];
    if (v14)
    {
      v21(v18[7] + *(v3[6] + 72) * v22, v3[9], v3[5]);
      goto LABEL_15;
    }

    v32 = v3[8];
    v33 = v3[4];
    v26 = v3[5];
    v28 = v3[2];
    (*(v3[3] + 16))(v33, *v3, v28);
    v21(v32, v23, v26);
    v29 = v22;
    v30 = v33;
    v31 = v32;
LABEL_14:
    _NativeDictionary._insert(at:key:value:)(v29, v30, v31, v18, v28, v26);
    goto LABEL_15;
  }

  v9 = v3[12];
  v5(v9, v8, v4);
  v10 = (*v7)(v9, 1, v6);
  v11 = *(v3 + 136);
  if (v10 != 1)
  {
    v16 = v3[1];
    v17 = *(v3[6] + 32);
    v17(v3[7], v3[12], v3[5]);
    v18 = *v16;
    v19 = v3[16];
    if (v11)
    {
      v17(v18[7] + *(v3[6] + 72) * v19, v3[7], v3[5]);
      goto LABEL_15;
    }

    v25 = v3[7];
    v24 = v3[8];
    v27 = v3[4];
    v26 = v3[5];
    v28 = v3[2];
    (*(v3[3] + 16))(v27, *v3, v28);
    v17(v24, v25, v26);
    v29 = v19;
    v30 = v27;
    v31 = v24;
    goto LABEL_14;
  }

  (*(v3[11] + 8))(v3[12], v3[10]);
  if (v11)
  {
LABEL_7:
    v15.offset = v3[16];
    (*(v3[3] + 8))(*(*v3[1] + 48) + *(v3[3] + 72) * v15.offset, v3[2]);
    _NativeDictionary._delete(at:)(v15);
  }

LABEL_15:
  v34 = v3[13];
  v35 = v3[14];
  v36 = v3[12];
  v37 = v3[9];
  v39 = v3[7];
  v38 = v3[8];
  v40 = v3[4];
  (*(v3[11] + 8))(v35, v3[10]);
  free(v35);
  free(v34);
  free(v36);
  free(v37);
  free(v38);
  free(v39);
  free(v40);

  free(v3);
}

uint64_t Dictionary._Variant.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = Dictionary._Variant.subscript.modify(v13, a2, a3);
  v8 = v7;
  v11 = type metadata accessor for Optional(0, a3[3], v9, v10);
  (*(*(v11 - 8) + 40))(v8, a1, v11);
  (v6)(v13, 0);
  return (*(*(a3[2] - 8) + 8))(a2);
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(unint64_t a1, unint64_t a2, char a3)
{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(unint64_t a1, unint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v11 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      v20 = result;
      a4();
      return v20;
    }

    a5(v17, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_10:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
    }
  }

  return result;
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(void *a1, char a2)
{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  return specialized _NativeDictionary.mutatingFind(_:isUnique:)(a1, a2, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

unint64_t specialized _NativeDictionary.mutatingFind(_:isUnique:)(void *a1, char a2, void (*a3)(void), void (*a4)(uint64_t, void))
{
  v9 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 >= v15 && (a2 & 1) == 0)
    {
      v18 = result;
      a3();
      return v18;
    }

    a4(v15, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_10:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
    }
  }

  return result;
}

unint64_t _NativeDictionary.mutatingFind(_:isUnique:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  result = __RawDictionaryStorage.find<A>(_:)(a1, v7, v8);
  v11 = *(v6 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = *(v6 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      _NativeDictionary.copy()();
      return v17;
    }

    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = __RawDictionaryStorage.find<A>(_:)(a1, v7, v8);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_10:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v7);
    }
  }

  return result;
}

int64x2_t *specialized _NativeDictionary.copy()()
{
  v1 = *v0;
  v2 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SSTt2g5(*(*v0 + 32), *(*v0 + 36), *(*v0 + 40), 0);
  v3 = v2;
  if (*(v1 + 16))
  {
    result = v2 + 4;
    v5 = ((1 << v3[2].i8[0]) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    v3[1].i64[0] = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = 16 * (v13 | (v7 << 6));
        v17 = (*(v1 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = (*(v1 + 56) + v16);
        v21 = *v20;
        v22 = v20[1];
        v23 = (v3[3].i64[0] + v16);
        *v23 = v19;
        v23[1] = v18;
        v24 = (v3[3].i64[1] + v16);
        *v24 = v21;
        v24[1] = v22;
        v18;
        result = v22;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = v1;
    *v0 = v3;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v30[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_s11AnyHashableVTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v29 = v6;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        v20 = 16 * v19;
        v21 = (*(v1 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v24 = 40 * v19;
        outlined init with copy of AnyHashable(*(v1 + 56) + 40 * v19, v30);
        v25 = (v29[3].i64[0] + v20);
        *v25 = v23;
        v25[1] = v22;
        v26 = v29[3].i64[1] + v24;
        v27 = v31;
        v28 = v30[1];
        *v26 = v30[0];
        *(v26 + 16) = v28;
        *(v26 + 32) = v27;
        result = v22;
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
        result = v1;
        v6 = v29;
        goto LABEL_21;
      }

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
LABEL_21:
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v27[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v26 = v6;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        v20 = 16 * v19;
        v21 = (*(v1 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v24 = 32 * v19;
        outlined init with copy of Any(*(v1 + 56) + 32 * v19, v27);
        v25 = (v26[3].i64[0] + v20);
        *v25 = v23;
        v25[1] = v22;
        outlined init with take of Any(v27, (v26[3].i64[1] + v24));
        result = v22;
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
        result = v1;
        v6 = v26;
        goto LABEL_21;
      }

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
LABEL_21:
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v27[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_SSTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        outlined init with copy of AnyHashable(*(v1 + 48) + 40 * v19, v27);
        v20 = (*(v1 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = v6[3].i64[0] + 40 * v19;
        v24 = v28;
        v25 = v27[1];
        *v23 = v27[0];
        *(v23 + 16) = v25;
        *(v23 + 32) = v24;
        v26 = (v6[3].i64[1] + 16 * v19);
        *v26 = v22;
        v26[1] = v21;
        result = v21;
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

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = *(*v0 + 36);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  LOBYTE(v25[0]) = 0;
  v5 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_ypTt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 4;
    v8 = ((1 << v6[2].i8[0]) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 64 + 8 * v8)
    {
      result = memmove(result, (v1 + 64), 8 * v8);
    }

    v10 = 0;
    v6[1].i64[0] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 64);
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
        v20 = 40 * v19;
        outlined init with copy of AnyHashable(*(v1 + 48) + 40 * v19, v25);
        v19 *= 32;
        outlined init with copy of Any(*(v1 + 56) + v19, v24);
        v21 = v6[3].i64[0] + v20;
        v22 = v25[0];
        v23 = v25[1];
        *(v21 + 32) = v26;
        *v21 = v22;
        *(v21 + 16) = v23;
        result = outlined init with take of Any(v24, (v6[3].i64[1] + v19));
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

      v18 = *(v1 + 64 + 8 * v10);
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
    result = v1;
    *v0 = v6;
  }

  return result;
}

{
  v1 = *v0;
  v2 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_SiTt2g5(*(*v0 + 32), *(*v0 + 36), *(*v0 + 40), 0);
  v3 = v2;
  if (*(v1 + 16))
  {
    result = v2 + 4;
    v5 = ((1 << v3[2].i8[0]) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    v3[1].i64[0] = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = (*(v1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v1 + 56) + 8 * v16);
        v21 = (v3[3].i64[0] + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(v3[3].i64[1] + 8 * v16) = v20;
        result = v18;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = v1;
    *v0 = v3;
  }

  return result;
}

int64x2_t *specialized _NativeDictionary.copy()(uint64_t (*a1)(void))
{
  v2 = *v1;
  v3 = _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSO_SiTt2g5Tm(*(*v1 + 32), *(*v1 + 36), *(*v1 + 40), 0, a1);
  v4 = v3;
  if (*(v2 + 16))
  {
    result = v3 + 4;
    v6 = ((1 << v4[2].i8[0]) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v4[1].i64[0] = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v4[3].i64[1] + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(v4[3].i64[0] + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = v2;
    *v1 = v4;
  }

  return result;
}

int64x2_t *specialized _NativeDictionary.copy()(uint64_t a1)
{
  v42 = *(*(a1 + 16) - 8);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v4;
  v5 = *v1;
  v6 = *(*v1 + 36);
  v7 = *(*v1 + 40);
  v8 = *(v2 + 32);
  LOBYTE(v2) = *(*v1 + 32);
  v44 = 0;
  v9 = specialized static _DictionaryStorage.allocate(scale:age:seed:)(v2, v6, v7, 0, v4, v8);
  v10 = v9;
  if (*(v5 + 16))
  {
    result = v9 + 4;
    v12 = ((1 << v10[2].i8[0]) + 63) >> 6;
    v34 = v1;
    v35 = (v5 + 64);
    if (v10 != v5 || result >= v5 + 64 + 8 * v12)
    {
      result = memmove(result, v35, 8 * v12);
    }

    v14 = 0;
    v15 = *(v5 + 16);
    v41 = v10;
    v10[1].i64[0] = v15;
    v16 = 1 << *(v5 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v5 + 64);
    v19 = (v16 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v38 = v5;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v42;
        v25 = *(v42 + 72) * v23;
        v27 = v39;
        v26 = v40;
        (*(v42 + 16))(v39, *(v5 + 48) + v25, v40);
        v23 *= 16;
        v28 = *(v5 + 56) + v23;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v41;
        result = (*(v24 + 32))(v41[3].i64[0] + v25, v27, v26);
        v32 = v31[3].i64[1] + v23;
        *v32 = v29;
        v5 = v38;
        *(v32 + 8) = v30;
        v18 = v43;
      }

      while (v43);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        result = v5;
        v1 = v34;
        v10 = v41;
        goto LABEL_21;
      }

      v22 = *(v35 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    result = v5;
LABEL_21:
    *v1 = v10;
  }

  return result;
}

Swift::Void __swiftcall _NativeDictionary.copy()()
{
  v2 = v1;
  v55 = *(*(v0 + 24) - 8);
  v3 = (MEMORY[0x1EEE9AC00])();
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(*(v3 + 16) - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v7;
  v8 = *(v5 + 32);
  v52 = v9;
  type metadata accessor for _DictionaryStorage(0, v7, v9, v8);
  v10 = *v1;
  v11 = (*v1)[2].u32[1];
  v12 = (*v1)[2].i64[1];
  v13 = (*v1)[2].i8[0];
  v57 = 0;
  v14 = static _DictionaryStorage.allocate(scale:age:seed:)(v13, v11, v12, 0);
  v15 = v14;
  if (*(v10 + 16))
  {
    v16 = v14 + 4;
    v17 = ((1 << v15[2].i8[0]) + 63) >> 6;
    v41 = v2;
    v42 = (v10 + 64);
    if (v15 != v10 || v16 >= v10 + 64 + 8 * v17)
    {
      memmove(v16, v42, 8 * v17);
    }

    v19 = 0;
    v20 = *(v10 + 16);
    v53 = v15;
    v15[1].i64[0] = v20;
    v21 = 1 << *(v10 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v10 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = v54 + 16;
    v47 = v24;
    v44 = v54 + 32;
    v45 = v55 + 16;
    v43 = v55 + 32;
    v48 = v10;
    v26 = v49;
    v25 = v50;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v56 = (v23 - 1) & v23;
LABEL_17:
        v30 = v27 | (v19 << 6);
        v31 = v54;
        v32 = *(v54 + 72) * v30;
        (*(v54 + 16))(v26, *(v10 + 48) + v32, v25);
        v33 = v55;
        v34 = *(v55 + 72) * v30;
        v35 = *(v10 + 56) + v34;
        v36 = v51;
        v37 = v52;
        (*(v55 + 16))(v51, v35, v52);
        v38 = v53;
        (*(v31 + 32))(v53[3].i64[0] + v32, v26, v25);
        v39 = v37;
        v10 = v48;
        (*(v33 + 32))(v38[3].i64[1] + v34, v36, v39);
        v24 = v47;
        v23 = v56;
      }

      while (v56);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        v10;
        v2 = v41;
        v15 = v53;
        goto LABEL_21;
      }

      v29 = *(v42 + v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v56 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v10;
LABEL_21:
    *v2 = v15;
  }
}

uint64_t _NativeDictionary.updateValue(_:forKey:isUnique:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v37 = a1;
  v38 = a5;
  v10 = *(a4 + 16);
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v15 = *(v14 + 32);
  v18 = __RawDictionaryStorage.find<A>(_:)(v16, v10, v15);
  v19 = v13[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v13[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      _NativeDictionary.copy()();
      goto LABEL_7;
    }

    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a3 & 1);
    v32 = __RawDictionaryStorage.find<A>(_:)(a2, v10, v15);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v6;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v36 + 16))(v12, a2, v10);
      v34 = *(a4 + 24);
      _NativeDictionary._insert(at:key:value:)(v18, v12, v37, v24, v10, v34);
      return (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v10);
  }

LABEL_7:
  v24 = *v6;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = *(a4 + 24);
  v36 = *(v26 - 8);
  v27 = *(v36 + 72) * v18;
  v28 = *(v36 + 32);
  v29 = v38;
  v28(v38, v25 + v27, v26);
  v28(v24[7] + v27, v37, v26);
  v30 = *(v36 + 56);

  return v30(v29, 0, 1, v26);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);

    return a3;
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return outlined init with take of Any(a1, v17);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v16 & 1) != (v22 & 1))
      {
        goto LABEL_17;
      }

      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    specialized _NativeDictionary.copy()();
  }

  v18 = *v5;
  if ((v16 & 1) == 0)
  {
LABEL_13:
    outlined init with copy of AnyHashable(a3, v30);
    v18[(v12 >> 6) + 8] |= 1 << v12;
    v23 = v18[6] + 40 * v12;
    v24 = v31;
    v25 = v30[1];
    *v23 = v30[0];
    *(v23 + 16) = v25;
    *(v23 + 32) = v24;
    v26 = (v18[7] + 16 * v12);
    *v26 = a1;
    v26[1] = a2;
    v27 = v18[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      v18[2] = v29;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  v20 = v19[1];
  *v19 = a1;
  v19[1] = a2;

  v20;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return outlined assign with take of AnyHashable(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = *(a1 + 16);
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
  }

  v21[2] = v29;

  return a3;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    v25;
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
  }

  v23[2] = v29;

  a4;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), void (*a6)(uint64_t, void), unint64_t a7)
{
  v12 = v7;
  v16 = *v7;
  result = a4(a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 < v22 || (a3 & 1) != 0)
    {
      a6(v22, a3 & 1);
      result = a4(a2);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      a7 = result;
      specialized _NativeDictionary.copy()(a5);
      result = a7;
    }
  }

  v26 = *v12;
  if (v23)
  {
    *(v26[7] + 8 * result) = a1;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  *(v26[6] + 8 * result) = a2;
  *(v26[7] + 8 * result) = a1;
  v27 = v26[2];
  v21 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v21)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(a7);
  }

  v26[2] = v28;
  return result;
}

uint64_t _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  v32 = *(v9 - 8);
  v33 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v14 = *(v13 + 32);
  v17 = __RawDictionaryStorage.find<A>(_:)(v15, v9, v14);
  v18 = v12[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v12[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      _NativeDictionary.copy()();
      goto LABEL_9;
    }

    _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v23 = __RawDictionaryStorage.find<A>(_:)(a2, v9, v14);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v9);
  }

LABEL_9:
  v25 = v33;
  v26 = *v5;
  if (v21)
  {
    v27 = *(*(a4 + 24) - 8);
    v28 = *(v27 + 40);
    v29 = v26[7] + *(v27 + 72) * v17;
    v30 = v33;

    return v28(v29, v30);
  }

  else
  {
    (*(v32 + 16))(v11, a2, v9);
    return _NativeDictionary._insert(at:key:value:)(v17, v11, v25, v26, v9, *(a4 + 24));
  }
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(void *a1, Swift::Int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v13 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v13;
  }

  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *(*(*v3 + 48) + 16 * a2);
  v8 = (v6 + 16 * a2);
  v10 = *v8;
  v9 = v8[1];
  *a1 = v10;
  a1[1] = v9;
  v11.offset = a2;
  specialized _NativeDictionary._delete(at:)(v11, v5);
  return v7;
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, Swift::Int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v12;
  }

  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *(*(*v3 + 48) + 16 * a2);
  v8 = v6 + 40 * a2;
  v9 = *(v8 + 16);
  *a1 = *v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(v8 + 32);
  v10.offset = a2;
  specialized _NativeDictionary._delete(at:)(v10, v5);
  return v7;
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(_OWORD *a1, Swift::Int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
  }

  v6 = *v3;
  v7 = *(*(v6 + 48) + 16 * a2);
  outlined init with take of Any((*(v6 + 56) + 32 * a2), a1);
  v8.offset = a2;
  specialized _NativeDictionary._delete(at:)(v8, v6);
  return v7;
}

uint64_t specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, Swift::_HashTable::Bucket before, char a3)
{
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v12;
  }

  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *(*v3 + 48) + 40 * before.offset;
  v8 = *(v7 + 16);
  *a1 = *v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = *(v7 + 32);
  v9 = *(v6 + 16 * before.offset);
  v10.offset = before.offset;
  specialized _NativeDictionary._delete(at:)(v10, v5);
  return v9;
}

Swift::Int specialized _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, _OWORD *a2, Swift::Int a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v12 = a2;
    v13 = a1;
    specialized _NativeDictionary.copy()();
    a1 = v13;
    a2 = v12;
  }

  v6 = *v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48) + 40 * a3;
  v9 = *(v8 + 16);
  *a1 = *v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(v8 + 32);
  outlined init with take of Any((v7 + 32 * a3), a2);
  v10.offset = a3;

  return specialized _NativeDictionary._delete(at:)(v10, v6);
}

void _NativeDictionary.uncheckedRemove(at:isUnique:)(uint64_t a1, uint64_t a2, Swift::_HashTable::Bucket a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    v10 = a1;
    _NativeDictionary.copy()();
    a1 = v10;
  }

  v9 = *v5;
  (*(*(*(a5 + 16) - 8) + 32))(a1, *(v9 + 48) + *(*(*(a5 + 16) - 8) + 72) * a3.offset, *(a5 + 16));
  (*(*(*(a5 + 24) - 8) + 32))(a2, *(v9 + 56) + *(*(*(a5 + 24) - 8) + 72) * a3.offset, *(a5 + 24));

  _NativeDictionary._delete(at:)(a3);
}

Swift::Void __swiftcall _NativeDictionary.removeAll(isUnique:)(Swift::Bool isUnique)
{
  v3 = v1;
  v4 = *v2;
  if (isUnique)
  {
    v5 = 0;
    v6 = v4 + 4;
    v7 = 1 << v4[2].i8[0];
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v4[4].i64[0];
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = v11 | (v5 << 6);
      (*(*(v3[2] - 8) + 8))(v4[3].i64[0] + *(*(v3[2] - 8) + 72) * v14);
      (*(*(v3[3] - 8) + 8))(v4[3].i64[1] + *(*(v3[3] - 8) + 72) * v14);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6->u64[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v18 = 1 << v4[2].i8[0];
    if (v18 > 63)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v18 + 63) >> 6, v4 + 4);
    }

    else
    {
      v6->i64[0] = -1 << v18;
    }

    v4[1].i64[0] = 0;
    ++v4[2].i32[1];
  }

  else
  {
    v15 = v2;
    v16 = v4[2].i8[0];
    type metadata accessor for _DictionaryStorage(0, v1[2], v1[3], v1[4]);
    v17 = static _DictionaryStorage.allocate(scale:age:seed:)(v16, 0x100000000, 0, 1);
    v4;
    *v15 = v17;
  }
}

int64x2_t *_NativeDictionary.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a1;
  v77 = a2;
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v59 - v21;
  v66 = v22;
  type metadata accessor for _DictionaryStorage(0, v23, v22, v24);
  v25 = *(a3 + 36);
  v26 = *(a3 + 40);
  v27 = *(a3 + 32);
  v84 = 0;
  result = static _DictionaryStorage.allocate(scale:age:seed:)(v27, v25, v26, 0);
  v29 = a5;
  v30 = result;
  v31 = 0;
  v32 = *(a3 + 64);
  v61 = a3 + 64;
  v78 = a3;
  v33 = 1 << *(a3 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v60 = (v33 + 63) >> 6;
  v68 = v14 + 16;
  v69 = v18 + 16;
  v79 = v18;
  v36 = v18 + 32;
  v37 = v29;
  v74 = v14;
  v70 = (v14 + 8);
  v71 = result;
  v64 = result + 4;
  v65 = v9;
  v63 = v9 + 32;
  v67 = v12;
  v62 = v29;
  if (v35)
  {
    while (1)
    {
      v38 = __clz(__rbit64(v35));
      v80 = (v35 - 1) & v35;
LABEL_10:
      v83 = v38 | (v31 << 6);
      v41 = v78;
      v42 = v79;
      v43 = *(v78 + 48);
      v44 = v83;
      v45 = *(v79 + 16);
      v81 = *(v79 + 72) * v83;
      v46 = v72;
      v45(v72, v43 + v81, a4);
      v47 = *(v41 + 56) + *(v74 + 72) * v44;
      v48 = v75;
      (*(v74 + 16))(v75, v47, v37);
      v49 = *(v42 + 32);
      v50 = v37;
      v51 = v73;
      v52 = v36;
      v49(v73, v46, a4);
      v53 = v67;
      v54 = v82;
      v76(v48);
      v82 = v54;
      if (v54)
      {
        break;
      }

      (*v70)(v48, v50);
      v55 = v83;
      *(v64->i64 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
      v30 = v71;
      v49((v71[3].i64[0] + v81), v51, a4);
      result = (*(v65 + 32))(*(v30 + 56) + *(v65 + 72) * v55, v53, v66);
      v56 = *(v30 + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      v37 = v62;
      if (v57)
      {
        goto LABEL_17;
      }

      v36 = v52;
      *(v30 + 16) = v58;
      v35 = v80;
      if (!v80)
      {
        goto LABEL_5;
      }
    }

    v30 = v71;
    v71;
    (*(v79 + 8))(v51, a4);
    (*v70)(v48, v50);
    return v30;
  }

  else
  {
LABEL_5:
    v39 = v31;
    while (1)
    {
      v31 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v31 >= v60)
      {
        return v30;
      }

      v40 = *(v61 + 8 * v31);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v80 = (v40 - 1) & v40;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

atomic_ullong *DiscontiguousSlice.subranges.getter@<X0>(uint64_t a1@<X0>, atomic_ullong **a2@<X8>)
{
  v3 = *(v2 + *(a1 + 36));
  *a2 = v3;
  return v3;
}

uint64_t DiscontiguousSlice.init(_base:subranges:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for DiscontiguousSlice(0, a3, a4, v9);
  *(a5 + *(result + 36)) = v8;
  return result;
}

uint64_t static DiscontiguousSlice<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for DiscontiguousSlice(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, v7, v8);
  return Sequence<>.elementsEqual<A>(_:)(a2, v7, v7, WitnessTable, WitnessTable, a5) & 1;
}

uint64_t Sequence<>.elementsEqual<A>(_:)(char *a1, unint64_t a2, unint64_t a3, int **a4, int **a5, uint64_t a6)
{
  v84 = a1;
  v81 = a6;
  v73 = a5;
  swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v11 = v10;
  v66 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v63 - v14;
  v17 = type metadata accessor for Optional(255, v11, v15, v16);
  swift_getTupleTypeMetadata2(0, v17, v17, 0, 0);
  v79 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v80 = v17;
  v67 = *(v17 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v78 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v77 = &v63 - v25;
  v72 = a3;
  AssociatedConformanceWitness = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v85 = v28;
  v65 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v63 - v30;
  v32 = a2;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a4;
  swift_getAssociatedTypeWitness(0, a4, v32, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v38 = v37;
  v64 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v63 - v39;
  (*(v33 + 16))(v35, v83, v32);
  v41 = v36[4];
  v82 = v40;
  (v41)(v32, v36);
  v42 = v72;
  (*(AssociatedConformanceWitness + 16))(v27, v84, v72);
  v43 = *(v73 + 32);
  v84 = v31;
  v44 = v73;
  v43(v42);
  v83 = v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, v32, v38, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v74 = *(AssociatedConformanceWitness + 16);
  v75 = AssociatedConformanceWitness + 16;
  v73 = swift_getAssociatedConformanceWitness(v44, v42, v85, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v71 = *(v73 + 16);
  v72 = (v73 + 16);
  v45 = (v67 + 32);
  v46 = (v66 + 48);
  v47 = (v66 + 32);
  v68 = v81 + 8;
  v48 = (v66 + 8);
  while (1)
  {
    v49 = v77;
    v74(v83, AssociatedConformanceWitness);
    v50 = v78;
    v71(v85, v73);
    v51 = *(v79 + 48);
    v52 = *v45;
    v53 = v49;
    v54 = v80;
    (*v45)(v21, v53, v80);
    v52(&v21[v51], v50, v54);
    v55 = *v46;
    if ((*v46)(v21, 1, v11) == 1)
    {
      break;
    }

    if (v55(&v21[v51], 1, v11) == 1)
    {
      (*(v65 + 8))(v84, v85);
      (*(v64 + 8))(v82, v83);
      (*v48)(v21, v11);
      return 0;
    }

    v56 = *v47;
    v57 = v69;
    (*v47)(v69, v21, v11);
    v58 = v70;
    v56(v70, &v21[v51], v11);
    v59 = (*(v81 + 8))(v57, v58, v11);
    v60 = *v48;
    (*v48)(v58, v11);
    v60(v57, v11);
    if ((v59 & 1) == 0)
    {
      (*(v65 + 8))(v84, v85);
      (*(v64 + 8))(v82, v83);
      return 0;
    }
  }

  (*(v65 + 8))(v84, v85);
  (*(v64 + 8))(v82, v83);
  v61 = v55(&v21[v51], 1, v11);
  result = 1;
  if (v61 == 1)
  {
    return result;
  }

  (*(v67 + 8))(&v21[v51], v80);
  return 0;
}

uint64_t DiscontiguousSlice<>.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v104 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, v7, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v124 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v81 - v10;
  swift_getAssociatedTypeWitness(0, v7, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v120 = v11;
  v122 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v81 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, v6, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v118 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v13);
  v105 = *(v118 - 8);
  v14 = MEMORY[0x1EEE9AC00](v118);
  v90 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v81 - v16;
  v102 = type metadata accessor for DiscontiguousSlice.Index(0, v6, v7, v17);
  v121 = *(v102 - 8);
  v18 = MEMORY[0x1EEE9AC00](v102);
  v123 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v81 - v20;
  v21 = *(v7 + 8);
  v125 = v6;
  swift_getAssociatedTypeWitness(0, v21, v6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v117 = v22;
  v109 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v116 = &v81 - v24;
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a2, v28);
  v31 = type metadata accessor for IndexingIterator(0, a2, WitnessTable, v30);
  v81 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v81 - v32;
  v34 = DiscontiguousSlice.count.getter(a2);
  v93 = a1;
  Hasher._combine(_:)(v34);
  v35 = *(v25 + 16);
  v35(v27, v3, a2);
  v35(v33, v27, a2);
  v82 = v31;
  v36 = &v33[*(v31 + 36)];
  DiscontiguousSlice.startIndex.getter(a2, v37, v36);
  (*(v25 + 8))(v27, a2);
  v106 = *(v7 + 72);
  v107 = v7 + 72;
  v38 = *(a2 + 36);
  v39 = v102;
  v40 = *(v102 + 36);
  v100 = *(AssociatedConformanceWitness + 8);
  v98 = *(v100 + 8);
  v99 = v100 + 8;
  v127 = v33;
  v41 = *&v33[v38];
  v42 = (v121 + 8);
  v113 = v105 + 16;
  v126 = v7;
  v43 = v7 + 88;
  v44 = v41;
  v45 = v36;
  v111 = v105 + 8;
  v112 = v43;
  v95 = (v109 + 16);
  v110 = (v122 + 8);
  v94 = (v121 + 32);
  v97 = *(v41 + 16);
  v88 = AssociatedConformanceWitness + 16;
  v85 = (v124 + 8);
  v83 = (v124 + 16);
  v84 = (v124 + 32);
  v87 = v104 + 24;
  v86 = (v109 + 8);
  v124 = v40;
  v46 = v40;
  v91 = v9;
  v114 = v44;
  v115 = v36;
  v89 = (v121 + 8);
  while (1)
  {
    v50 = v101;
    v51 = &v101[v46];
    v106(v125, v126);
    *v50 = v97;
    v52 = v98(v45 + v124, v51, v9, v100);
    v53 = *v42;
    (*v42)(v50, v39);
    if (v52)
    {
      break;
    }

    v54 = *v45;
    if ((*v45 & 0x8000000000000000) != 0 || v54 >= *(v44 + 16) || (v108 = v53, v55 = v105, v56 = v44 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v121 = *(v105 + 72), v122 = v56, v57 = *(v105 + 16), v58 = v96, v59 = v118, v57(v96, v56 + v121 * v54, v118), v60 = v126, v61 = *(v126 + 11), v62 = v119, v63 = v125, v61(v58, v125, v126), v64 = v58, v65 = v115, v109 = *(v55 + 8), (v109)(v64, v59), v66 = v120, v67 = swift_getAssociatedConformanceWitness(v60, v63, v120, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection), v68 = (*(v67 + 80))(v128, &v65[v124], v66, v67), (*v95)(v116), v68(v128, 0), v69 = *v110, (*v110)(v62, v66), v70 = v123, v71 = v114, (*v94)(v123, v65, v39), v72 = *v70, (*v70 & 0x8000000000000000) != 0) || v72 >= *(v71 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v73 = v90;
    v74 = v118;
    v57(v90, v122 + v72 * v121, v118);
    v75 = v119;
    v61(v73, v125, v126);
    v76 = v92;
    v77 = v120;
    (*(v67 + 184))(&v123[*(v39 + 36)], v120, v67);
    v69(v75, v77);
    v9 = v91;
    v78 = (*(AssociatedConformanceWitness + 16))(v76, &v73[*(v74 + 36)], v91);
    (v109)(v73, v74);
    if (v78)
    {
      v45 = v115;
      (*v84)(&v115[v124], v76, v9);
      v39 = v102;
      v44 = v114;
    }

    else
    {
      (*v85)(v76, v9);
      ++v72;
      v44 = v114;
      v45 = v115;
      v79 = *(v114 + 16);
      if (v72 >= v79)
      {
        v106(v125, v126);
        v72 = v79;
      }

      else
      {
        (*v83)(&v115[v124], v122 + v72 * v121, v9);
      }

      v39 = v102;
    }

    v47 = v108;
    *v45 = v72;
    v42 = v89;
    v47(v123, v39);
    v49 = v116;
    v48 = v117;
    (*(v104 + 24))(v93, v117);
    (*v86)(v49, v48);
    v46 = *(v39 + 36);
  }

  return (*(v81 + 8))(v127, v82);
}

uint64_t DiscontiguousSlice.count.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v43 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v35 - v7;
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v41 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v12 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = *(a1 + 36);
  v44 = v1;
  v17 = *(v1 + v16);
  v18 = v17[2];
  if (v18)
  {
    v19 = v13 + 16;
    v39 = v13 + 8;
    v40 = v3 + 88;
    v38 = (v6 + 8);
    v17;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      if (v21 >= v18)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v22 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21;
      v23 = *(v13 + 16);
      v36 = v19;
      v23(v15, v22, v12);
      v24 = v41;
      v25 = v42;
      (*(v3 + 88))(v15, v41, v3);
      v37 = v13;
      v26 = *(v13 + 8);
      v27 = v15;
      v28 = v15;
      v29 = v12;
      v26(v28, v12);
      v30 = v43;
      v31 = swift_getAssociatedConformanceWitness(v3, v24, v43, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
      v32 = (*(v31 + 112))(v30, v31);
      result = (*v38)(v25, v30);
      v34 = __OFADD__(v20, v32);
      v20 += v32;
      if (v34)
      {
        break;
      }

      ++v21;
      v18 = v17[2];
      v12 = v29;
      v15 = v27;
      v19 = v36;
      v13 = v37;
      if (v21 == v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v17;
    v20 = 0;
LABEL_9:
    v17;
    return v20;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> DiscontiguousSlice<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  specialized Hasher.init(_seed:)(a1, v6);
  DiscontiguousSlice<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t DiscontiguousSlice.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness(0, *&v2, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.SubSequence);
  v163 = v4;
  v175 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v162 = &v143 - v5;
  swift_getAssociatedTypeWitness(255, *&v2, v3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(*&v2, v3, v6, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v170 = v7;
  v161 = type metadata accessor for Range(0, v7, AssociatedConformanceWitness, v8);
  v172 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v143 - v9;
  v11 = type metadata accessor for DiscontiguousSlice.Index(0, v3, *&v2, v10);
  v151 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v143 - v12);
  v14 = *(*&v2 + 8);
  v179 = v3;
  swift_getAssociatedTypeWitness(0, v14, v3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v173 = v15;
  *&v149 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v176 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v158 = &v143 - v19;
  v20 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a1, v23);
  v26 = type metadata accessor for IndexingIterator(0, a1, WitnessTable, v25);
  v145 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v143 - v27;
  0xE000000000000000;
  v183 = 91;
  v184 = 0xE100000000000000;
  v29 = *(v20 + 16);
  v29(v22, v178, a1);
  v29(v28, v22, a1);
  v30 = v11;
  v146 = v26;
  v31 = &v28[*(v26 + 36)];
  DiscontiguousSlice.startIndex.getter(a1, v32, v31);
  (*(v20 + 8))(v22, a1);
  v168 = *(*&v2 + 72);
  v169 = *&v2 + 72;
  v159 = a1;
  v33 = *(a1 + 36);
  v34 = v28;
  v35 = v31;
  v36 = *(v11 + 36);
  v167 = *(AssociatedConformanceWitness + 8);
  v165 = *(v167 + 8);
  v166 = v167 + 8;
  v157 = v33;
  v164 = *(*&v34[v33] + 16);
  v178 = (v151 + 1);
  v155 = *&v2 + 88;
  v154 = (v172 + 1);
  v153 = (v149 + 16);
  v152 = (v175 + 8);
  v151 += 4;
  v172 = (v149 + 32);
  v175 = 1;
  v149 = xmmword_18071DB30;
  v147 = xmmword_18071DB40;
  v37 = v36;
  v148 = v2;
  v174 = v30;
  v177 = v31;
  v150 = v36;
  v156 = v13;
  while (1)
  {
    v42 = v13 + v37;
    v168(v179, *&v2);
    *v13 = v164;
    v43 = v170;
    v44 = v165(v35 + v36, v42, v170, v167);
    v45 = *v178;
    (*v178)(v13, v30);
    if (v44)
    {
      break;
    }

    v47 = *v35;
    v182 = *&v34[v157];
    v48 = type metadata accessor for RangeSet.Ranges(0, v43, AssociatedConformanceWitness, v46);
    v49 = v34;
    v50 = v179;
    v51 = v36;
    v52 = v160;
    RangeSet.Ranges.subscript.getter(v47, v48, v53, v160);
    v54 = v162;
    (*(*&v2 + 88))(v52, v50, v2);
    v55 = v52;
    v56 = v174;
    (*v154)(v55, v161);
    v57 = v2;
    v58 = v2;
    v59 = v163;
    v60 = swift_getAssociatedConformanceWitness(v57, v50, v163, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.SubSequence: Collection);
    v61 = (*(v60 + 80))(&v181, v177 + v51, v59, v60);
    v62 = v158;
    v38 = v173;
    (*v153)(v158);
    v61(&v181, 0);
    v63 = v54;
    v64 = v59;
    v2 = v58;
    v13 = v156;
    v34 = v49;
    v65 = v176;
    v35 = v177;
    (*v152)(v63, v64);
    (*v151)(v13, v35, v56);
    DiscontiguousSlice.index(after:)(v13, v159, v35);
    v45(v13, v56);
    v66 = *v172;
    v67 = v62;
    v30 = v56;
    (*v172)(v65, v67, v38);
    if (v175)
    {
      goto LABEL_4;
    }

    v69 = v183;
    v68 = v184;
    v70 = HIBYTE(v184) & 0xF;
    v71 = v183 & 0xFFFFFFFFFFFFLL;
    if ((v184 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v184) & 0xF;
    }

    else
    {
      v72 = v183 & 0xFFFFFFFFFFFFLL;
    }

    if (!v72 && (v183 & ~v184 & 0x2000000000000000) == 0)
    {
      v184;
      v183 = 8236;
      v184 = 0xE200000000000000;
      v2 = v148;
      v30 = v174;
      v38 = v173;
      goto LABEL_4;
    }

    if ((v184 & 0x2000000000000000) == 0 || v70 > 0xD)
    {
      0xE200000000000000;
      if ((v68 & 0x1000000000000000) != 0)
      {
        v72 = String.UTF8View._foreignCount()();
      }

      v80 = __OFADD__(v72, 2);
      v81 = v72 + 2;
      v82 = v174;
      if (v80)
      {
        __break(1u);
LABEL_118:
        v136 = String.UTF8View._foreignCount()();
        v109 = v136 + 1;
        if (!__OFADD__(v136, 1))
        {
          goto LABEL_69;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        v137 = v68;
        if ((*&v69 & 0x1000000000000000) != 0)
        {
          v81 = _StringGuts._foreignConvertedToSmall()(v81, *&v69);
          v142 = v141;
          *&v69;
          v69 = v142;
          v68 = v137;
        }

        else
        {
          if ((v81 & 0x1000000000000000) != 0)
          {
            v138 = ((*&v69 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v139 = v81 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v138 = _StringObject.sharedUTF8.getter(v81, *&v69);
          }

          closure #1 in _StringGuts._convertedToSmall()(v138, v139, &v181, v108);
          *&v69;
          v69 = *(&v181 + 8);
          v81 = v181;
        }

        goto LABEL_104;
      }

      if ((*&v69 & ~v68 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v68 & 0xFFFFFFFFFFFFFFFLL))
      {
        v83 = _StringGuts.nativeUnusedCapacity.getter(*&v69, v68);
        v2 = v148;
        if (v84)
        {
          goto LABEL_127;
        }

        if (v81 > 15)
        {
          goto LABEL_2;
        }

        if ((v68 & 0x2000000000000000) == 0)
        {
          if (v83 < 2)
          {
LABEL_26:
            if ((v68 & 0x1000000000000000) != 0)
            {
              v69 = _StringGuts._foreignConvertedToSmall()(*&v69, v68);
              v175 = v102;
            }

            else
            {
              if ((*&v69 & 0x1000000000000000) != 0)
              {
                v85 = ((v68 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v85 = _StringObject.sharedUTF8.getter(*&v69, v68);
                v71 = v105;
              }

              closure #1 in _StringGuts._convertedToSmall()(v85, v71, &v181, v79);
              v175 = *(&v181 + 1);
              v69 = v181;
            }

LABEL_33:
            v86 = 0xE200000000000000;
            0xE200000000000000;
            v87._rawBits = 131073;
            v88._rawBits = 1;
            v89._rawBits = _StringGuts.validateScalarRange(_:)(v88, v87, 0x202CuLL, 0xE200000000000000)._rawBits;
            if (v89._rawBits < 0x10000)
            {
              v89._rawBits |= 3;
            }

            if (v89._rawBits >> 16 || (v92 = 8236, (v90._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
            {
              v92 = specialized static String._copying(_:)(v89._rawBits, v90._rawBits, 0x202CuLL, 0xE200000000000000);
              v86 = v93;
              0xE200000000000000;
            }

            if ((v86 & 0x2000000000000000) != 0)
            {
              v86;
              v94 = v86;
            }

            else if ((v86 & 0x1000000000000000) != 0)
            {
              v92 = _StringGuts._foreignConvertedToSmall()(v92, v86);
              v144 = v106;
              v86;
              v94 = v144;
            }

            else
            {
              if ((v92 & 0x1000000000000000) != 0)
              {
                v103 = ((v86 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v104 = v92 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v103 = _StringObject.sharedUTF8.getter(v92, v86);
              }

              closure #1 in _StringGuts._convertedToSmall()(v103, v104, &v181, v91);
              v86;
              v94 = *(&v181 + 1);
              v92 = v181;
            }

            v95 = specialized _SmallString.init(_:appending:)(*&v69, v175, v92, v94);
            if (v97)
            {
              goto LABEL_127;
            }

            v98 = v95;
            v99 = v96;
            v68;
            swift_bridgeObjectRelease_n(0xE200000000000000, 2);
            v183 = v98;
            v184 = v99;
LABEL_3:
            v38 = v173;
            v30 = v82;
            goto LABEL_4;
          }

LABEL_2:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v81, 2);
          v181 = v147;
          closure #1 in _StringGuts.append(_:)(&v181, 2uLL, &v183, 1);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
          goto LABEL_3;
        }
      }

      else
      {
        v2 = v148;
        if (v81 > 15)
        {
          goto LABEL_2;
        }

        if ((v68 & 0x2000000000000000) == 0)
        {
          goto LABEL_26;
        }
      }

      v175 = v68;
      goto LABEL_33;
    }

    v73 = 8 * (HIBYTE(v184) & 7);
    v74 = (-255 << v73) - 1;
    v75 = 44 << v73;
    v76 = v70 + 1;
    if (v70 >= 8)
    {
      v78 = v74 & v184 | v75;
      v77 = 8 * (v76 & 7);
    }

    else
    {
      v69 = (v74 & v183 | v75);
      if (v70 != 7)
      {
        v69 = (((-255 << (8 * (v76 & 7u))) - 1) & *&v69 | (32 << (8 * (v76 & 7u))));
        v100 = v184;
        goto LABEL_46;
      }

      v77 = 0;
      v78 = v184;
    }

    v100 = ((-255 << v77) - 1) & v78 | (32 << v77);
LABEL_46:
    v184;
    0xE200000000000000;
    v101 = 0xE000000000000000;
    if (*&v69 & 0x8080808080808080 | v100 & 0x80808080808080)
    {
      v101 = 0xA000000000000000;
    }

    v183 = v69;
    v184 = (v101 & 0xFF00000000000000 | (v70 << 56) | v100 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v2 = v148;
    v30 = v174;
    v38 = v173;
LABEL_4:
    v39 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v39, &v180);
    *(inited + 1) = v149;
    inited[7] = v38;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v66(boxed_opaque_existential_0Tm, v176, v38);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v183);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v175 = 0;
    v37 = *(v30 + 36);
    v36 = v150;
  }

  (*(v145 + 8))(v34, v146);
  v2 = v183;
  v68 = v184;
  v81 = HIBYTE(v184) & 0xF;
  v69 = (v183 & 0xFFFFFFFFFFFFLL);
  if ((v184 & 0x2000000000000000) != 0)
  {
    v107 = HIBYTE(v184) & 0xF;
  }

  else
  {
    v107 = v183 & 0xFFFFFFFFFFFFLL;
  }

  if (!v107 && (v183 & ~v184 & 0x2000000000000000) == 0)
  {
    v184;
    return 93;
  }

  if ((v184 & 0x2000000000000000) == 0 || v81 == 15)
  {
    0xE100000000000000;
    if ((v68 & 0x1000000000000000) != 0)
    {
      goto LABEL_118;
    }

    v80 = __OFADD__(v107, 1);
    v109 = v107 + 1;
    if (v80)
    {
      goto LABEL_120;
    }

LABEL_69:
    v110 = *&v2 & ~v68;
    if ((v110 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v68 & 0xFFFFFFFFFFFFFFFLL))
    {
      v111 = _StringGuts.nativeUnusedCapacity.getter(*&v2, v68);
      if (v112)
      {
        goto LABEL_127;
      }

      if (v109 > 15)
      {
        goto LABEL_80;
      }

      if ((v68 & 0x2000000000000000) == 0)
      {
        if (v111 < 1)
        {
          goto LABEL_75;
        }

LABEL_80:
        v114 = v110 & 0x2000000000000000;
        v115 = _StringGuts.nativeUnusedCapacity.getter(*&v2, v68);
        if ((v116 & 1) != 0 || v115 <= 0)
        {
          if (v114)
          {
            swift_isUniquelyReferenced_nonNull_native(v68 & 0xFFFFFFFFFFFFFFFLL);
          }

          v117 = _StringGuts.nativeCapacity.getter(*&v2, v68);
          if (v118)
          {
            v119 = 0;
          }

          else
          {
            v119 = v117;
          }

          if (v119 + 0x4000000000000000 < 0)
          {
            __break(1u);
            goto LABEL_126;
          }

          v120 = 2 * v119;
          if (v120 > v109)
          {
            v109 = v120;
          }
        }

        else if (v114 && swift_isUniquelyReferenced_nonNull_native(v68 & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_94;
        }

        _StringGuts.grow(_:)(v109);
LABEL_94:
        v181 = xmmword_18071DB50;
        closure #1 in _StringGuts.append(_:)(&v181, 1uLL, &v183, 1);
        swift_bridgeObjectRelease_n(0xE100000000000000, 2);
        return v183;
      }
    }

    else
    {
      if (v109 > 15)
      {
        goto LABEL_80;
      }

      if ((v68 & 0x2000000000000000) == 0)
      {
LABEL_75:
        if ((v68 & 0x1000000000000000) != 0)
        {
          v2 = _StringGuts._foreignConvertedToSmall()(*&v2, v68);
          v109 = v135;
          goto LABEL_97;
        }

        if ((*&v2 & 0x1000000000000000) != 0)
        {
          v113 = ((v68 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_78:
          closure #1 in _StringGuts._convertedToSmall()(v113, *&v69, &v181, v108);
          v109 = *(&v181 + 1);
          v2 = v181;
LABEL_97:
          v69 = 0xE100000000000000;
          0xE100000000000000;
          v81 = 93;
          v121._rawBits = 1;
          v122._rawBits = 65537;
          v123._rawBits = _StringGuts.validateScalarRange(_:)(v121, v122, 0x5DuLL, 0xE100000000000000)._rawBits;
          if (v123._rawBits < 0x10000)
          {
            v123._rawBits |= 3;
          }

          if (v123._rawBits >> 16 || (v124._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
          {
            v81 = specialized static String._copying(_:)(v123._rawBits, v124._rawBits, 0x5DuLL, 0xE100000000000000);
            v69 = v125;
            0xE100000000000000;
          }

          if ((*&v69 & 0x2000000000000000) == 0)
          {
            goto LABEL_121;
          }

          *&v69;
LABEL_104:
          v126 = HIBYTE(v109) & 0xF;
          v127 = HIBYTE(*&v69) & 0xFLL;
          if (v127 + v126 <= 0xF)
          {
            0xE100000000000000;
            if (v127)
            {
              v128 = 0;
              v129 = 0;
              v130 = 8 * v126;
              do
              {
                v131 = *&v69 >> (v128 & 0x38);
                if (v129 < 8)
                {
                  v131 = v81 >> v128;
                }

                v132 = (v131 << (v130 & 0x38)) | ((-255 << (v130 & 0x38)) - 1) & v109;
                v133 = (v131 << v130) | ((-255 << v130) - 1) & *&v2;
                if (v126 <= 7)
                {
                  v2 = v133;
                }

                else
                {
                  v109 = v132;
                }

                ++v126;
                v130 += 8;
                v128 += 8;
                ++v129;
              }

              while (8 * v127 != v128);
            }

            v68;
            0xE100000000000000;
            return v2;
          }

LABEL_127:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_126:
        v113 = _StringObject.sharedUTF8.getter(*&v2, v68);
        v69 = v140;
        goto LABEL_78;
      }
    }

    v109 = v68;
    goto LABEL_97;
  }

  if (v81 < 8)
  {
    v2 = (((-255 << (8 * (HIBYTE(v184) & 7u))) - 1) & v183 | (93 << (8 * (HIBYTE(v184) & 7u))));
  }

  v184;
  0xE100000000000000;
  return v2;
}

uint64_t static DiscontiguousSlice.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v11 = *(type metadata accessor for DiscontiguousSlice.Index(0, a3, a4, v10) + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(*(AssociatedConformanceWitness + 8) + 8))(a1 + v11, a2 + v11, v9) & 1;
}

uint64_t DiscontiguousSlice.Index<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  return v5(a1, v6, a3);
}

Swift::Int DiscontiguousSlice.Index<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v3(&v6, v4, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> DiscontiguousSlice<A>.Index(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  specialized Hasher.init(_seed:)(a1, v6);
  DiscontiguousSlice.Index<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t static DiscontiguousSlice.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  v11 = *(type metadata accessor for DiscontiguousSlice.Index(0, a3, a4, v10) + 36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  return (*(AssociatedConformanceWitness + 16))(a1 + v11, a2 + v11, v9, AssociatedConformanceWitness) & 1;
}

uint64_t DiscontiguousSlice.Index.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  countAndFlagsBits = &v273 - v7;
  v9 = _StringGuts.init(_initialCapacity:)(27);
  v11 = v9;
  object = v10;
  v278._countAndFlagsBits = v9;
  v278._object = v10;
  v13 = HIBYTE(v10) & 0xF;
  v14 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v15 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v276 = v2;
  if (!v15 && (v9 & ~v10 & 0x2000000000000000) == 0)
  {
    v10;
    v278._countAndFlagsBits = 0x203A657361623CLL;
    v278._object = 0xE700000000000000;
    goto LABEL_68;
  }

  if ((v10 & 0x2000000000000000) == 0 || v13 > 8)
  {
    0xE700000000000000;
    if ((object & 0x1000000000000000) != 0)
    {
      goto LABEL_304;
    }

    v22 = v15 + 7;
    if (!__OFADD__(v15, 7))
    {
      goto LABEL_13;
    }

LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

  v16 = 8 * HIBYTE(v10);
  v17 = (-255 << (v16 & 0x38)) - 1;
  v18 = 60 << (v16 & 0x38);
  if (v13 >= 8)
  {
    v20 = v17 & v10 | v18;
    v19 = 8;
    goto LABEL_37;
  }

  v11 = v17 & v9 | v18;
  if (v13 == 7)
  {
    v19 = 0;
    v20 = v10;
LABEL_37:
    v35 = ((-255 << v19) - 1) & v20 | (98 << v19);
    v36 = (v16 + 16) & 0x38;
LABEL_38:
    v37 = ((-255 << v36) - 1) & v35 | (97 << v36);
    v38 = (v16 + 24) & 0x38;
LABEL_39:
    v39 = ((-255 << v38) - 1) & v37 | (115 << v38);
    v40 = v16 & 0x38 ^ 0x20;
LABEL_40:
    v41 = ((-255 << v40) - 1) & v39 | (101 << v40);
    v42 = (v16 + 40) & 0x38;
LABEL_41:
    v43 = ((-255 << v42) - 1) & v41 | (58 << v42);
    v44 = (v16 + 48) & 0x38;
    goto LABEL_42;
  }

  v11 = ((-255 << ((v16 + 8) & 0x38)) - 1) & v11 | (98 << ((v16 + 8) & 0x38));
  if (v13 >= 6)
  {
    v36 = 0;
    v35 = v10;
    goto LABEL_38;
  }

  v11 = ((-255 << ((v16 + 16) & 0x38)) - 1) & v11 | (97 << ((v16 + 16) & 0x38));
  if (v13 == 5)
  {
    v38 = 0;
    v37 = v10;
    goto LABEL_39;
  }

  v11 = ((-255 << ((v16 + 24) & 0x38)) - 1) & v11 | (115 << ((v16 + 24) & 0x38));
  if (v13 >= 4)
  {
    v40 = 0;
    v39 = v10;
    goto LABEL_40;
  }

  v11 = ((0xFFFFFF0100000000 << (8 * v13)) - 1) & v11 | (0x6500000000 << (8 * v13));
  if (v13 == 3)
  {
    v42 = 0;
    v41 = v10;
    goto LABEL_41;
  }

  v11 = ((-255 << ((v16 + 40) & 0x38)) - 1) & v11 | (58 << ((v16 + 40) & 0x38));
  if (v13 < 2)
  {
    v11 = ((0xFF01000000000000 << (8 * v13)) - 1) & v11 | (0x20000000000000 << (8 * v13));
    v45 = v10;
    goto LABEL_43;
  }

  v44 = 0;
  v43 = v10;
LABEL_42:
  v45 = ((-255 << v44) - 1) & v43 | (32 << v44);
LABEL_43:
  v10;
  0xE700000000000000;
  v46 = 0xA000000000000000;
  if (!(v11 & 0x8080808080808080 | v45 & 0x80808080808080))
  {
    v46 = 0xE000000000000000;
  }

  v278._countAndFlagsBits = v11;
  v278._object = ((v46 & 0xFF00000000000000 | (v13 << 56) | v45 & 0xFFFFFFFFFFFFFFLL) + 0x700000000000000);
  while (1)
  {
LABEL_68:
    (*(v6 + 16))(countAndFlagsBits, v2 + *(v3 + 36), v5);
    *&v277 = 0;
    *(&v277 + 1) = 0xE000000000000000;
    _debugPrint_unlocked<A, B>(_:_:)(countAndFlagsBits, &v277, v5, &type metadata for String, &protocol witness table for String);
    (*(v6 + 8))(countAndFlagsBits, v5);
    v5 = *(&v277 + 1);
    v2 = v277;
    countAndFlagsBits = v278._countAndFlagsBits;
    object = v278._object;
    v64 = (v278._object >> 56) & 0xF;
    v3 = v278._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v278._object & 0x2000000000000000) != 0)
    {
      v65 = (v278._object >> 56) & 0xF;
    }

    else
    {
      v65 = v278._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v65 && (v278._countAndFlagsBits & ~v278._object & 0x2000000000000000) == 0)
    {
      v278._object;
      v278._countAndFlagsBits = v2;
      v278._object = v5;
      goto LABEL_157;
    }

    v66 = (*(&v277 + 1) & 0x2000000000000000) == 0;
    v67 = HIBYTE(*(&v277 + 1)) & 0xFLL;
    if ((v278._object & 0x2000000000000000) == 0)
    {
      v68 = v277 & 0xFFFFFFFFFFFFLL;
      v14 = HIBYTE(*(&v277 + 1)) & 0xFLL;
      if ((*(&v277 + 1) & 0x2000000000000000) != 0)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if ((*(&v277 + 1) & 0x2000000000000000) == 0)
    {
      v68 = v277 & 0xFFFFFFFFFFFFLL;
      v66 = 1;
LABEL_77:
      v14 = v68;
      goto LABEL_78;
    }

    v97 = v64 + v67;
    if (v64 + v67 < 0x10)
    {
      if (v67)
      {
        v110 = 0;
        v111 = 0;
        v112 = 8 * v64;
        v113 = 8 * v67;
        v114 = v278._object;
        do
        {
          v115 = *(&v277 + 1) >> (v110 & 0x38);
          if (v111 < 8)
          {
            v115 = v277 >> v110;
          }

          v116 = (v115 << (v112 & 0x38)) | ((-255 << (v112 & 0x38)) - 1) & v114;
          v117 = (v115 << v112) | ((-255 << v112) - 1) & countAndFlagsBits;
          if (v64 <= 7)
          {
            countAndFlagsBits = v117;
          }

          else
          {
            v114 = v116;
          }

          ++v64;
          v112 += 8;
          v110 += 8;
          ++v111;
        }

        while (v113 != v110);
      }

      else
      {
        v114 = v278._object;
      }

      v278._object;
      v5;
      v118 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v114 & 0x80808080808080))
      {
        v118 = 0xE000000000000000;
      }

      v109 = (v118 & 0xFF00000000000000 | (v97 << 56) | v114 & 0xFFFFFFFFFFFFFFLL);
LABEL_156:
      v278._countAndFlagsBits = countAndFlagsBits;
      v278._object = v109;
      goto LABEL_157;
    }

    v66 = 0;
    v68 = v277 & 0xFFFFFFFFFFFFLL;
    v14 = HIBYTE(*(&v277 + 1)) & 0xFLL;
LABEL_78:
    LODWORD(v275) = v66;
    v273 = v68;
    v274 = HIBYTE(*(&v277 + 1)) & 0xFLL;
    if ((*(&v277 + 1) & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(*(&v277 + 1), 2);
      v235._rawBits = 1;
      v236._rawBits = (v14 << 16) | 1;
      v237._rawBits = _StringGuts.validateScalarRange(_:)(v235, v236, v2, v5)._rawBits;
      if (v237._rawBits < 0x10000)
      {
        v237._rawBits |= 3;
      }

      v11 = String.UTF8View.distance(from:to:)(v237, v238);
      v5;
      if ((object & 0x1000000000000000) == 0)
      {
LABEL_80:
        v69 = __OFADD__(v65, v11);
        v6 = v65 + v11;
        if (!v69)
        {
          break;
        }

        goto LABEL_303;
      }
    }

    else
    {
      *(&v277 + 1);
      v11 = v14;
      if ((object & 0x1000000000000000) == 0)
      {
        goto LABEL_80;
      }
    }

    v239 = String.UTF8View._foreignCount()();
    v6 = v239 + v11;
    if (!__OFADD__(v239, v11))
    {
      break;
    }

LABEL_303:
    __break(1u);
LABEL_304:
    v240 = String.UTF8View._foreignCount()();
    v22 = v240 + 7;
    if (__OFADD__(v240, 7))
    {
      goto LABEL_306;
    }

LABEL_13:
    v23 = v11 & ~object;
    if ((v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v24 = _StringGuts.nativeUnusedCapacity.getter(v11, object);
      if (v25)
      {
        goto LABEL_344;
      }

      if (v22 <= 15)
      {
        if ((object & 0x2000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v24 < 7)
        {
          goto LABEL_19;
        }
      }

LABEL_24:
      v28 = v23 & 0x2000000000000000;
      v29 = _StringGuts.nativeUnusedCapacity.getter(v11, object);
      if ((v30 & 1) != 0 || v29 <= 6)
      {
        if (v28)
        {
          swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL);
        }

        v31 = _StringGuts.nativeCapacity.getter(v11, object);
        if (v32)
        {
          v33 = 0;
        }

        else
        {
          v33 = v31;
        }

        if (v33 + 0x4000000000000000 < 0)
        {
          goto LABEL_336;
        }

        v34 = 2 * v33;
        if (v34 > v22)
        {
          v22 = v34;
        }

LABEL_34:
        _StringGuts.grow(_:)(v22);
        goto LABEL_35;
      }

      if (!v28 || !swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_34;
      }

LABEL_35:
      v277 = xmmword_18071DC50;
      closure #1 in _StringGuts.append(_:)(&v277, 7uLL, &v278, 1);
      swift_bridgeObjectRelease_n(0xE700000000000000, 2);
    }

    else
    {
      if (v22 > 15)
      {
        goto LABEL_24;
      }

      if ((object & 0x2000000000000000) != 0)
      {
LABEL_47:
        v275 = v3;
        v27 = object;
        goto LABEL_48;
      }

LABEL_19:
      v275 = v3;
      if ((object & 0x1000000000000000) != 0)
      {
        v11 = _StringGuts._foreignConvertedToSmall()(v11, object);
        v27 = v234;
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v26 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v26 = _StringObject.sharedUTF8.getter(v11, object);
          v14 = v258;
        }

        closure #1 in _StringGuts._convertedToSmall()(v26, v14, &v277, v21);
        v27 = *(&v277 + 1);
        v11 = v277;
      }

LABEL_48:
      v47 = 0x203A657361623CLL;
      v48 = 0xE700000000000000;
      0xE700000000000000;
      v49._rawBits = 1;
      v50._rawBits = 458753;
      v51._rawBits = _StringGuts.validateScalarRange(_:)(v49, v50, 0x203A657361623CuLL, 0xE700000000000000)._rawBits;
      if (v51._rawBits < 0x10000)
      {
        v51._rawBits |= 3;
      }

      if (v51._rawBits >> 16 || (v52._rawBits & 0xFFFFFFFFFFFF0000) != 0x70000)
      {
        v47 = specialized static String._copying(_:)(v51._rawBits, v52._rawBits, 0x203A657361623CuLL, 0xE700000000000000);
        v48 = v54;
        0xE700000000000000;
      }

      if ((v48 & 0x2000000000000000) != 0)
      {
        v48;
      }

      else if ((v48 & 0x1000000000000000) != 0)
      {
        v47 = _StringGuts._foreignConvertedToSmall()(v47, v48);
        v272 = v271;
        v48;
        v48 = v272;
      }

      else
      {
        if ((v47 & 0x1000000000000000) != 0)
        {
          v250 = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v251 = v47 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v250 = _StringObject.sharedUTF8.getter(v47, v48);
        }

        closure #1 in _StringGuts._convertedToSmall()(v250, v251, &v277, v53);
        v48;
        v48 = *(&v277 + 1);
        v47 = v277;
      }

      v55 = HIBYTE(v27) & 0xF;
      v56 = HIBYTE(v48) & 0xF;
      v274 = v56 + v55;
      if (v56 + v55 > 0xF)
      {
        goto LABEL_344;
      }

      0xE700000000000000;
      if (v56)
      {
        v57 = 0;
        v58 = 0;
        v59 = 8 * v55;
        do
        {
          v60 = v48 >> (v57 & 0x38);
          if (v58 < 8)
          {
            v60 = v47 >> v57;
          }

          v61 = (v60 << (v59 & 0x38)) | ((-255 << (v59 & 0x38)) - 1) & v27;
          v62 = (v60 << v59) | ((-255 << v59) - 1) & v11;
          if (v55 <= 7)
          {
            v11 = v62;
          }

          else
          {
            v27 = v61;
          }

          ++v55;
          v59 += 8;
          v57 += 8;
          ++v58;
        }

        while (8 * v56 != v57);
      }

      object;
      0xE700000000000000;
      v63 = 0xA000000000000000;
      if (!(v11 & 0x8080808080808080 | v27 & 0x80808080808080))
      {
        v63 = 0xE000000000000000;
      }

      v3 = v275;
      v278._countAndFlagsBits = v11;
      v278._object = (v63 & 0xFF00000000000000 | (v274 << 56) | v27 & 0xFFFFFFFFFFFFFFLL);
      v2 = v276;
    }
  }

  v70 = countAndFlagsBits & ~object;
  if ((v70 & 0x2000000000000000) != 0)
  {
    v71 = object & 0xFFFFFFFFFFFFFFFLL;
    if (swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v72 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
      if ((v73 & 1) == 0)
      {
        v74 = (object >> 61) & 1;
        if (v72 < v11)
        {
          LOBYTE(v74) = 1;
        }

        if (v6 > 15 || (v74 & 1) == 0)
        {
          v75 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v11;
          v77 = v75 & ~v76;
          goto LABEL_92;
        }

LABEL_99:
        if ((object & 0x2000000000000000) != 0)
        {
          v86 = object;
          goto LABEL_101;
        }

LABEL_307:
        if ((object & 0x1000000000000000) != 0)
        {
          countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
          v86 = v259;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v241 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v241 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
            v3 = v262;
          }

          closure #1 in _StringGuts._convertedToSmall()(v241, v3, &v277, v21);
          v86 = *(&v277 + 1);
          countAndFlagsBits = v277;
        }

LABEL_101:
        v5;
        v87._rawBits = 1;
        v88._rawBits = (v14 << 16) | 1;
        v89._rawBits = _StringGuts.validateScalarRange(_:)(v87, v88, v2, v5)._rawBits;
        if (v89._rawBits < 0x10000)
        {
          v89._rawBits |= 3;
        }

        if (v89._rawBits >> 16 || v90._rawBits >> 16 != v14)
        {
          v2 = specialized static String._copying(_:)(v89._rawBits, v90._rawBits, v2, v5);
          v92 = v98;
          v5;
        }

        else
        {
          v92 = v5;
        }

        if ((v92 & 0x2000000000000000) != 0)
        {
          v92;
        }

        else if ((v92 & 0x1000000000000000) != 0)
        {
          v2 = _StringGuts._foreignConvertedToSmall()(v2, v92);
          v261 = v260;
          v92;
          v92 = v261;
        }

        else
        {
          if ((v2 & 0x1000000000000000) != 0)
          {
            v242 = ((v92 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v243 = v2 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v242 = _StringObject.sharedUTF8.getter(v2, v92);
          }

          closure #1 in _StringGuts._convertedToSmall()(v242, v243, &v277, v91);
          v92;
          v92 = *(&v277 + 1);
          v2 = v277;
        }

        v99 = HIBYTE(v86) & 0xF;
        v100 = HIBYTE(v92) & 0xF;
        v101 = v100 + v99;
        if (v100 + v99 <= 0xF)
        {
          v5;
          if (v100)
          {
            v102 = 0;
            v103 = 0;
            v104 = 8 * v99;
            do
            {
              v105 = v92 >> (v102 & 0x38);
              if (v103 < 8)
              {
                v105 = v2 >> v102;
              }

              v106 = (v105 << (v104 & 0x38)) | ((-255 << (v104 & 0x38)) - 1) & v86;
              v107 = (v105 << v104) | ((-255 << v104) - 1) & countAndFlagsBits;
              if (v99 <= 7)
              {
                countAndFlagsBits = v107;
              }

              else
              {
                v86 = v106;
              }

              ++v99;
              v104 += 8;
              v102 += 8;
              ++v103;
            }

            while (8 * v100 != v102);
          }

          object;
          v5;
          v108 = 0xA000000000000000;
          if (!(countAndFlagsBits & 0x8080808080808080 | v86 & 0x80808080808080))
          {
            v108 = 0xE000000000000000;
          }

          v109 = (v108 & 0xFF00000000000000 | (v101 << 56) | v86 & 0xFFFFFFFFFFFFFFLL);
          goto LABEL_156;
        }
      }

LABEL_344:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  if (v6 <= 15)
  {
    goto LABEL_99;
  }

  v78 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object) >= v11;
  v77 = v78 & ~v79;
  if ((v70 & 0x2000000000000000) == 0)
  {
    goto LABEL_106;
  }

  v71 = object & 0xFFFFFFFFFFFFFFFLL;
LABEL_92:
  if (!swift_isUniquelyReferenced_nonNull_native(v71))
  {
LABEL_106:
    if (v77)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

  if ((v77 & 1) == 0)
  {
LABEL_107:
    v93 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, object);
    if (v94)
    {
      v95 = 0;
    }

    else
    {
      v95 = v93;
    }

    if (v95 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_336:
      __break(1u);
      goto LABEL_337;
    }

    v96 = 2 * v95;
    if (v96 > v6)
    {
      v6 = v96;
    }

LABEL_113:
    _StringGuts.grow(_:)(v6);
    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_114;
    }

LABEL_95:
    if (!v275)
    {
      v85 = (v5 >> 62) & 1;
      *&v277 = v2;
      *(&v277 + 1) = v5 & 0xFFFFFFFFFFFFFFLL;
      v83 = &v277;
      v84 = v274;
      goto LABEL_146;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v80 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v81 = v273;
      v82 = v273;
LABEL_98:
      v83 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v81, v80, v82);
      v85 = v2 >> 63;
LABEL_146:
      closure #1 in _StringGuts.append(_:)(v83, v84, &v278, v85);
      goto LABEL_147;
    }

LABEL_337:
    v252 = _StringObject.sharedUTF8.getter(v2, v5);
    if (v253 < v273)
    {
      goto LABEL_342;
    }

    v80 = v252;
    v82 = v253;
    v81 = v273;
    goto LABEL_98;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_114:
  _StringGuts._foreignAppendInPlace(_:)(v2, v5, 0, v14);
LABEL_147:
  swift_bridgeObjectRelease_n(v5, 2);
LABEL_157:
  v119 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", rangeOffset: ", 0xFuLL, 1);
  v120 = v119._countAndFlagsBits;
  v122 = v278._countAndFlagsBits;
  v121 = v278._object;
  v123 = (v278._object >> 56) & 0xF;
  v124 = v278._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v278._object & 0x2000000000000000) != 0)
  {
    v125 = (v278._object >> 56) & 0xF;
  }

  else
  {
    v125 = v278._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v125 && (v278._countAndFlagsBits & ~v278._object & 0x2000000000000000) == 0)
  {
    v278._object;
    v278 = v119;
    goto LABEL_221;
  }

  v126 = (v119._object & 0x2000000000000000) == 0;
  v127 = (v119._object >> 56) & 0xF;
  if ((v278._object & 0x2000000000000000) == 0)
  {
    v128 = v119._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v129 = (v119._object >> 56) & 0xF;
    if ((v119._object & 0x2000000000000000) == 0)
    {
LABEL_166:
      v129 = v128;
    }

    v275 = v128;
    if ((v119._object & 0x1000000000000000) == 0)
    {
      goto LABEL_168;
    }

LABEL_192:
    swift_bridgeObjectRetain_n(v119._object, 2);
    v149._rawBits = 1;
    v150._rawBits = (v129 << 16) | 1;
    v151._rawBits = _StringGuts.validateScalarRange(_:)(v149, v150, v119._countAndFlagsBits, v119._object)._rawBits;
    if (v151._rawBits < 0x10000)
    {
      v151._rawBits |= 3;
    }

    v133 = String.UTF8View.distance(from:to:)(v151, v152);
    v119._object;
    if ((v121 & 0x1000000000000000) != 0)
    {
      goto LABEL_195;
    }

LABEL_169:
    v69 = __OFADD__(v125, v133);
    v134 = v125 + v133;
    if (v69)
    {
      goto LABEL_197;
    }

LABEL_170:
    if ((v122 & ~v121 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v121 & 0xFFFFFFFFFFFFFFFLL))
    {
      v135 = _StringGuts.nativeUnusedCapacity.getter(v122, v121);
      if (v136)
      {
        goto LABEL_344;
      }

      v137 = (v121 >> 61) & 1;
      if (v135 < v133)
      {
        LODWORD(v137) = 1;
      }

      if (v134 <= 15 && v137)
      {
LABEL_177:
        if ((v121 & 0x2000000000000000) != 0)
        {
          v124 = v121;
        }

        else if ((v121 & 0x1000000000000000) != 0)
        {
          v122 = _StringGuts._foreignConvertedToSmall()(v122, v121);
          v124 = v263;
        }

        else
        {
          if ((v122 & 0x1000000000000000) != 0)
          {
            v244 = ((v121 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v244 = _StringObject.sharedUTF8.getter(v122, v121);
            v124 = v269;
          }

          closure #1 in _StringGuts._convertedToSmall()(v244, v124, &v277, v132);
          v124 = *(&v277 + 1);
          v122 = v277;
        }

        v119._object;
        v138._rawBits = 1;
        v139._rawBits = (v129 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v138, v139, v119._countAndFlagsBits, v119._object)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (rawBits >> 16 || v131 >> 16 != v129)
        {
          goto LABEL_198;
        }

        v141 = v119._object;
LABEL_199:
        if ((v141 & 0x2000000000000000) != 0)
        {
          v141;
        }

        else if ((v141 & 0x1000000000000000) != 0)
        {
          v120 = _StringGuts._foreignConvertedToSmall()(v120, v141);
          v265 = v264;
          v141;
          v141 = v265;
        }

        else
        {
          if ((v120 & 0x1000000000000000) != 0)
          {
            v245 = ((v141 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v246 = v120 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v245 = _StringObject.sharedUTF8.getter(v120, v141);
          }

          closure #1 in _StringGuts._convertedToSmall()(v245, v246, &v277, v140);
          v141;
          v141 = *(&v277 + 1);
          v120 = v277;
        }

        v154 = specialized _SmallString.init(_:appending:)(v122, v124, v120, v141);
        if (v156)
        {
          goto LABEL_344;
        }

        v157 = v154;
        v158 = v155;
        v121;
        swift_bridgeObjectRelease_n(v119._object, 2);
        v278._countAndFlagsBits = v157;
        v278._object = v158;
        goto LABEL_221;
      }
    }

    else if (v134 <= 15)
    {
      goto LABEL_177;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v134, v133);
    if ((v119._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v119._countAndFlagsBits, v119._object, 0, v129);
    }

    else
    {
      if (v126)
      {
        if ((v119._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v142 = (v119._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v143 = v275;
          v144 = v275;
        }

        else
        {
          v254 = _StringObject.sharedUTF8.getter(v119._countAndFlagsBits, v119._object);
          if (v255 < v275)
          {
            goto LABEL_342;
          }

          v142 = v254;
          v144 = v255;
          v143 = v275;
        }

        v145 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v143, v142, v144);
        v147 = v119._countAndFlagsBits >> 63;
      }

      else
      {
        v147 = (v119._object >> 62) & 1;
        *&v277 = v119._countAndFlagsBits;
        *(&v277 + 1) = v119._object & 0xFFFFFFFFFFFFFFLL;
        v145 = &v277;
        v146 = (v119._object >> 56) & 0xF;
      }

      closure #1 in _StringGuts.append(_:)(v145, v146, &v278, v147);
    }

    swift_bridgeObjectRelease_n(v119._object, 2);
    goto LABEL_221;
  }

  if ((v119._object & 0x2000000000000000) == 0)
  {
    v128 = v119._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v126 = 1;
    goto LABEL_166;
  }

  v148 = v123 + v127;
  if (v123 + v127 >= 0x10)
  {
    v126 = 0;
    v129 = (v119._object >> 56) & 0xF;
    v275 = v119._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v119._object & 0x1000000000000000) != 0)
    {
      goto LABEL_192;
    }

LABEL_168:
    rawBits = v119._object;
    v133 = v129;
    if ((v121 & 0x1000000000000000) == 0)
    {
      goto LABEL_169;
    }

LABEL_195:
    rawBits = String.UTF8View._foreignCount()();
    v134 = rawBits + v133;
    if (!__OFADD__(rawBits, v133))
    {
      goto LABEL_170;
    }

LABEL_197:
    __break(1u);
LABEL_198:
    v120 = specialized static String._copying(_:)(rawBits, v131, v119._countAndFlagsBits, v119._object);
    v141 = v153;
    v119._object;
    goto LABEL_199;
  }

  if (v127)
  {
    v159 = 0;
    v160 = 0;
    v161 = 8 * v123;
    v162 = v278._object;
    do
    {
      v163 = v119._object >> (v159 & 0x38);
      if (v160 < 8)
      {
        v163 = v119._countAndFlagsBits >> v159;
      }

      v164 = (v163 << (v161 & 0x38)) | ((-255 << (v161 & 0x38)) - 1) & v162;
      v165 = (v163 << v161) | ((-255 << v161) - 1) & v122;
      if (v123 <= 7)
      {
        v122 = v165;
      }

      else
      {
        v162 = v164;
      }

      ++v123;
      v161 += 8;
      v159 += 8;
      ++v160;
    }

    while (8 * v127 != v159);
  }

  else
  {
    v162 = v278._object;
  }

  v278._object;
  v119._object;
  v166 = 0xA000000000000000;
  if (!(v122 & 0x8080808080808080 | v162 & 0x80808080808080))
  {
    v166 = 0xE000000000000000;
  }

  v278._countAndFlagsBits = v122;
  v278._object = (v166 & 0xFF00000000000000 | (v148 << 56) | v162 & 0xFFFFFFFFFFFFFFLL);
LABEL_221:
  v167 = _int64ToString(_:radix:uppercase:)(*v276, 10, 0, swift_int64ToString);
  v169 = v167;
  v170 = v168;
  v172 = v278._countAndFlagsBits;
  v171 = v278._object;
  v173 = (v278._object >> 56) & 0xF;
  v174 = v278._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v278._object & 0x2000000000000000) != 0)
  {
    v175 = (v278._object >> 56) & 0xF;
  }

  else
  {
    v175 = v278._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v175 && (v278._countAndFlagsBits & ~v278._object & 0x2000000000000000) == 0)
  {
    v278._object;
    v278._countAndFlagsBits = v169;
    v278._object = v170;
    goto LABEL_281;
  }

  v176 = (v168 & 0x2000000000000000) == 0;
  v177 = HIBYTE(v168) & 0xF;
  if ((v278._object & 0x2000000000000000) == 0)
  {
    v178 = v167 & 0xFFFFFFFFFFFFLL;
    v179 = HIBYTE(v168) & 0xF;
    if ((v168 & 0x2000000000000000) == 0)
    {
LABEL_230:
      v179 = v178;
    }

    v276 = v178;
    if ((v168 & 0x1000000000000000) == 0)
    {
      goto LABEL_232;
    }

LABEL_257:
    swift_bridgeObjectRetain_n(v168, 2);
    v207._rawBits = 1;
    v208._rawBits = (v179 << 16) | 1;
    v209._rawBits = _StringGuts.validateScalarRange(_:)(v207, v208, v169, v170)._rawBits;
    if (v209._rawBits < 0x10000)
    {
      v209._rawBits |= 3;
    }

    v181 = String.UTF8View.distance(from:to:)(v209, v210);
    v170;
    if ((v171 & 0x1000000000000000) != 0)
    {
      goto LABEL_260;
    }

LABEL_233:
    v69 = __OFADD__(v175, v181);
    v182 = v175 + v181;
    if (v69)
    {
      goto LABEL_262;
    }

LABEL_234:
    if ((v172 & ~v171 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v171 & 0xFFFFFFFFFFFFFFFLL))
    {
      v183 = _StringGuts.nativeUnusedCapacity.getter(v172, v171);
      if (v184)
      {
        goto LABEL_344;
      }

      v185 = (v171 >> 61) & 1;
      if (v183 < v181)
      {
        LODWORD(v185) = 1;
      }

      if (v182 <= 15 && v185)
      {
        goto LABEL_241;
      }
    }

    else if (v182 <= 15)
    {
LABEL_241:
      if ((v171 & 0x2000000000000000) != 0)
      {
        v186 = v171;
      }

      else if ((v171 & 0x1000000000000000) != 0)
      {
        v172 = _StringGuts._foreignConvertedToSmall()(v172, v171);
        v186 = v266;
      }

      else
      {
        if ((v172 & 0x1000000000000000) != 0)
        {
          v247 = ((v171 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v247 = _StringObject.sharedUTF8.getter(v172, v171);
          v174 = v270;
        }

        closure #1 in _StringGuts._convertedToSmall()(v247, v174, &v277, v180);
        v186 = *(&v277 + 1);
        v172 = v277;
      }

      v170;
      v187._rawBits = 1;
      v188._rawBits = (v179 << 16) | 1;
      v189._rawBits = _StringGuts.validateScalarRange(_:)(v187, v188, v169, v170)._rawBits;
      if (v189._rawBits < 0x10000)
      {
        v189._rawBits |= 3;
      }

      v191 = Substring.description.getter(v189._rawBits, v190._rawBits, v169, v170);
      v193 = v192;
      v170;
      if ((v193 & 0x2000000000000000) != 0)
      {
        v193;
      }

      else if ((v193 & 0x1000000000000000) != 0)
      {
        v191 = _StringGuts._foreignConvertedToSmall()(v191, v193);
        v268 = v267;
        v193;
        v193 = v268;
      }

      else
      {
        if ((v191 & 0x1000000000000000) != 0)
        {
          v248 = ((v193 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v249 = v191 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v248 = _StringObject.sharedUTF8.getter(v191, v193);
        }

        closure #1 in _StringGuts._convertedToSmall()(v248, v249, &v277, v194);
        v193;
        v193 = *(&v277 + 1);
        v191 = v277;
      }

      v195 = specialized _SmallString.init(_:appending:)(v172, v186, v191, v193);
      if (v197)
      {
        goto LABEL_344;
      }

      v198 = v195;
      v199 = v196;
      v171;
      swift_bridgeObjectRelease_n(v170, 2);
      v278._countAndFlagsBits = v198;
      v278._object = v199;
      goto LABEL_281;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v182, v181);
    if ((v170 & 0x1000000000000000) != 0)
    {
      goto LABEL_263;
    }

    if (!v176)
    {
      v205 = (v170 >> 62) & 1;
      *&v277 = v169;
      *(&v277 + 1) = v170 & 0xFFFFFFFFFFFFFFLL;
      v203 = &v277;
      v204 = HIBYTE(v170) & 0xF;
      goto LABEL_275;
    }

    if ((v169 & 0x1000000000000000) != 0)
    {
      v200 = (v170 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v201 = v276;
      v202 = v276;
LABEL_254:
      v203 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v201, v200, v202);
      v205 = v169 >> 63;
LABEL_275:
      closure #1 in _StringGuts.append(_:)(v203, v204, &v278, v205);
      goto LABEL_276;
    }

    v256 = _StringObject.sharedUTF8.getter(v169, v170);
    if (v257 >= v276)
    {
      v200 = v256;
      v202 = v257;
      v201 = v276;
      goto LABEL_254;
    }

LABEL_342:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v168 & 0x2000000000000000) == 0)
  {
    v178 = v167 & 0xFFFFFFFFFFFFLL;
    v176 = 1;
    goto LABEL_230;
  }

  v206 = v173 + v177;
  if (v173 + v177 < 0x10)
  {
    if (v177)
    {
      v212 = 0;
      v213 = 0;
      v214 = 8 * v173;
      v215 = v278._object;
      do
      {
        v216 = v168 >> (v212 & 0x38);
        if (v213 < 8)
        {
          v216 = v167 >> v212;
        }

        v217 = (v216 << (v214 & 0x38)) | ((-255 << (v214 & 0x38)) - 1) & v215;
        v218 = (v216 << v214) | ((-255 << v214) - 1) & v172;
        if (v173 <= 7)
        {
          v172 = v218;
        }

        else
        {
          v215 = v217;
        }

        ++v173;
        v214 += 8;
        v212 += 8;
        ++v213;
      }

      while (8 * v177 != v212);
    }

    else
    {
      v215 = v278._object;
    }

    v278._object;
    v170;
    v219 = 0xA000000000000000;
    if (!(v172 & 0x8080808080808080 | v215 & 0x80808080808080))
    {
      v219 = 0xE000000000000000;
    }

    v278._countAndFlagsBits = v172;
    v278._object = (v219 & 0xFF00000000000000 | (v206 << 56) | v215 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v176 = 0;
    v179 = HIBYTE(v168) & 0xF;
    v276 = (v167 & 0xFFFFFFFFFFFFLL);
    if ((v168 & 0x1000000000000000) != 0)
    {
      goto LABEL_257;
    }

LABEL_232:
    v168;
    v181 = v179;
    if ((v171 & 0x1000000000000000) == 0)
    {
      goto LABEL_233;
    }

LABEL_260:
    v211 = String.UTF8View._foreignCount()();
    v182 = v211 + v181;
    if (!__OFADD__(v211, v181))
    {
      goto LABEL_234;
    }

LABEL_262:
    __break(1u);
LABEL_263:
    _StringGuts._foreignAppendInPlace(_:)(v169, v170, 0, v179);
LABEL_276:
    swift_bridgeObjectRelease_n(v170, 2);
  }

LABEL_281:
  v220 = v278._object;
  v221 = (v278._object >> 56) & 0xF;
  if ((v278._object & 0x2000000000000000) == 0)
  {
    v221 = v278._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v221 || (v278._countAndFlagsBits & ~v278._object & 0x2000000000000000) != 0)
  {
    if ((v278._object & 0x2000000000000000) != 0 && (v222 = specialized _SmallString.init(_:appending:)(v278._countAndFlagsBits, v278._object, 0x3EuLL, 0xE100000000000000), (v223 & 1) == 0))
    {
      v233 = v222;
      v220;
      0xE100000000000000;
      return v233;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(62, 0xE100000000000000, 0, 1, v224, v225, v226, v227, v228, v229, v230, v231);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v278._countAndFlagsBits;
    }
  }

  else
  {
    v278._object;
    return 62;
  }
}