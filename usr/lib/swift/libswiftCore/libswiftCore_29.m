uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
  v7 = *v1;
  v11 = *v2;
  *v2 = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  outlined destroy of AnyHashable((*(v7 + 48) + 40 * v5));
  v8 = *(*(v7 + 56) + 16 * v5);
  v9.offset = v5;
  specialized _NativeDictionary._delete(at:)(v9, v7);
  *v2 = v7;
  return v8;
}

uint64_t Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 24);
  v38 = *(v7 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = *(v9 + 16);
  if ((*v4 & 0xC000000000000001) != 0)
  {
    v14 = v8;
    v15 = _bridgeAnythingToObjectiveC<A>(_:)(v8, *(v9 + 16));
    if (v12 < 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    v17 = [v16 &sel:v15 objectForKey:?];
    if (v17)
    {
      v37 = a3;
      swift_unknownObjectRelease(v17);
      v12;
      v18 = [v16 count];
      v19 = *(a2 + 32);
      v20 = _NativeDictionary.init(_:capacity:)(v16, v18, v13, v7, v19);
      v20;
      v21 = __RawDictionaryStorage.find<A>(_:)(v14, v13, v19);
      v23 = v22;
      v20;
      if ((v23 & 1) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      swift_unknownObjectRelease(v15);
      (*(*(v13 - 1) + 1))(v20[6] + *(*(v13 - 1) + 9) * v21, v13);
      v24 = *(v38 + 32);
      v24(v11, v20[7] + *(v38 + 72) * v21, v7);
      _NativeDictionary._delete(at:)(v21);
      v12;
      *v4 = v20;
      v25 = v37;
      v24(v37, v11, v7);
      return (*(v38 + 56))(v25, 0, 1, v7);
    }

    swift_unknownObjectRelease(v15);
  }

  else
  {
    v27 = *(a2 + 32);
    v28 = __RawDictionaryStorage.find<A>(_:)(v8, *(v9 + 16), v27);
    if (v29)
    {
      v30.offset = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
      v32 = *v4;
      v39 = *v4;
      *v4 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        type metadata accessor for _NativeDictionary(0, v13, v7, v27);
        _NativeDictionary.copy()();
        v32 = v39;
      }

      (*(*(v13 - 1) + 1))(*(v32 + 48) + *(*(v13 - 1) + 9) * v30.offset, v13);
      (*(v38 + 32))(a3, *(v32 + 56) + *(v38 + 72) * v30.offset, v7);
      _NativeDictionary._delete(at:)(v30);
      *v4 = v32;
      v33 = *(v38 + 56);
      v34 = a3;
      v35 = 0;
      goto LABEL_14;
    }
  }

  v33 = *(v38 + 56);
  v34 = a3;
  v35 = 1;
LABEL_14:

  return v33(v34, v35, 1, v7);
}

Swift::Void __swiftcall Dictionary.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for Dictionary._Variant(0, v1[2], v1[3], v1[4]);

  Dictionary._Variant.removeAll(keepingCapacity:)(keepingCapacity);
}

Swift::Void __swiftcall Dictionary._Variant.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = *v2;
  if (keepingCapacity)
  {
    v4 = v1;
    v5 = *(v1 + 16);
    if ((v3 & 0xC000000000000001) != 0)
    {
      if (v3 < 0)
      {
        v6 = *v2;
      }

      else
      {
        v6 = (v3 & 0xFFFFFFFFFFFFFF8);
      }

      if ([v6 count] > 0)
      {
        v7 = *(v4 + 24);
        v8 = [v6 count];
        v3;
        if (v8)
        {
          type metadata accessor for _DictionaryStorage(0, v5, v7, *(v4 + 32));
          v9 = static _DictionaryStorage.allocate(capacity:)(v8);
        }

        else
        {
          v9 = &_swiftEmptyDictionarySingleton;
        }

        *v2 = v9;
      }
    }

    else if (*(v3 + 16))
    {
      v10 = *(v1 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
      v12 = *v2;
      *v2 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v5, v10, *(v4 + 32));
      _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      *v2 = v12;
    }
  }

  else
  {
    *v2;
    *v2 = &_swiftEmptyDictionarySingleton;
  }
}

unint64_t Dictionary.values.getter()
{
  v0 = _swift_displayCrashMessage();

  return v0;
}

uint64_t (*Dictionary.values.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary.values.modify;
}

uint64_t swap<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 32);
  v9(v8, a1);
  (v9)(a1, a2, a3);
  return (v9)(a2, v8, a3);
}

void Dictionary.Keys.startIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects:0 andKeys:v5 + 3 count:v3];
        a1;
        v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = (a1 + 64);
    v10 = (63 - (-1 << *(a1 + 32))) >> 6;
    do
    {
      if (*v9++)
      {
        break;
      }

      v8 -= 64;
      --v10;
    }

    while (v10);
  }
}

void Dictionary.Keys.endIndex.getter(int64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = [swift_unknownObjectRetain(v2) count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v3 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v3, 24))
      {
        v5 = swift_bufferAllocate(v4, (8 * v3 + 24), 7uLL);
        v5[2] = v3;
        [v2 getObjects:0 andKeys:v5 + 3 count:v3];
        a1;
        v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
        v7 = swift_allocObject(v6, 0x20, 7uLL);
        v7[2] = v2;
        v7[3] = v5;
        a1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Int Dictionary.Keys.index(after:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, swift *a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) == 0)
  {
    return _NativeDictionary.index(after:)(a1, a2, a3 & 1, a4, a5, a6, a7);
  }

  if (a4 < 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  if ((a3 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 >= 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = a1;
  }

  v11 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v10, v11))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v10 + 16) != v9 || *(*(v10 + 24) + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8;
  return v8;
}

void Dictionary.Keys.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X3>, swift *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 1);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v14 & 0xC000000000000001) == 0)
  {
    if (v10)
    {
      v19 = v11;
      v20 = v9;
      if (v8 >= 0)
      {
        v21 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v21 = v8;
      }

      v22 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v21, v22))
      {
        goto LABEL_27;
      }

      if (*(a2 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v21 + 16)))
      {
        goto LABEL_24;
      }

      if (!swift_dynamicCastClass(v21, v22))
      {
LABEL_27:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v23 = *(v21 + 24);
      if (*(v23 + 16) <= v20)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v24 = *(v23 + 8 * v20 + 24);
      v25 = swift_unknownObjectRetain(v24);
      _forceBridgeFromObjectiveC<A>(_:_:)(v25, a3, v26, v13);
      swift_unknownObjectRelease(v24);
      v27 = __RawDictionaryStorage.find<A>(_:)(v13, a3, v19);
      LOBYTE(v24) = v28;
      (*(v7 + 8))(v13, a3);
      if (v24)
      {
        v8 = v27;
LABEL_23:
        (*(v7 + 16))(a4, *(a2 + 48) + *(v7 + 72) * v8, a3);
        return;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0 && 1 << *(a2 + 32) > v8 && ((*(a2 + 8 * (v8 >> 6) + 64) >> v8) & 1) != 0 && *(a2 + 36) == v9)
    {
      goto LABEL_23;
    }

LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v10 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 < 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = specialized __CocoaDictionary.key(at:)(v8, v9, v15);
  v17 = swift_unknownObjectRetain(v16);
  _forceBridgeFromObjectiveC<A>(_:_:)(v17, a3, v18, a4);

  swift_unknownObjectRelease(v16);
}

uint64_t Dictionary.Keys._customContainsEquatableElement(_:)(id *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
      return v9 & 1;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v6 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  v8 = [v7 &sel:v6 objectForKey:?];
  swift_unknownObjectRelease(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  swift_unknownObjectRelease(v8);
  v9 = 1;
  return v9 & 1;
}

uint64_t Dictionary._Variant.contains(_:)(id *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      __RawDictionaryStorage.find<A>(_:)(a1, a3, a5);
      return v9 & 1;
    }

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v6 = _bridgeAnythingToObjectiveC<A>(_:)(a1, a3);
  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  v8 = [v7 &sel:v6 objectForKey:?];
  swift_unknownObjectRelease(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  swift_unknownObjectRelease(v8);
  v9 = 1;
  return v9 & 1;
}

uint64_t Optional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t static Dictionary.Keys.== infix(_:_:)(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v98 = *(a3 - 1);
  v9 = *(v98 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v10);
  v99 = (&v76 - v11);
  v14 = type metadata accessor for Optional(0, v12, v12, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v76 - v21);
  v23 = a2 & 0xC000000000000001;
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0 && !v23 && a1 == a2)
  {
    return 1;
  }

  v97 = a2 & 0xC000000000000001;
  if (!v24)
  {
    v81 = v20;
    v82 = v19;
    v83 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v84 = v18;
    v29 = *(a1 + 16);
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_15:
    if (v29 == *(a2 + 16))
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v23)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v27 = a1;
    }

    else
    {
      v27 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v28 = a2;
    }

    if (v27 == v28)
    {
      return 1;
    }
  }

  else
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v81 = v20;
  v82 = v19;
  v83 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = v18;
  if (a1 < 0)
  {
    v30 = a1;
  }

  else
  {
    v30 = v26;
  }

  v29 = [v30 count];
  if (!v97)
  {
    goto LABEL_15;
  }

LABEL_22:
  if (a2 < 0)
  {
    v31 = a2;
  }

  else
  {
    v31 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  if (v29 != [v31 count])
  {
    return 0;
  }

LABEL_26:
  v89 = v9;
  v86 = a5;
  if (v24)
  {
    if (a1 < 0)
    {
      v32 = a1;
    }

    else
    {
      v32 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v33 = type metadata accessor for __CocoaDictionary.Iterator();
    v34 = swift_allocObject(v33, 0xE8, 7uLL);
    v85 = 0;
    v35 = 0;
    v36 = 0;
    *(v34 + 208) = v32;
    *(v34 + 216) = 0;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0u;
    *(v34 + 80) = 0u;
    *(v34 + 96) = 0u;
    *(v34 + 112) = 0u;
    *(v34 + 128) = 0u;
    *(v34 + 144) = 0u;
    *(v34 + 160) = 0u;
    *(v34 + 176) = 0u;
    *(v34 + 192) = 0u;
    *(v34 + 224) = 0;
    v37 = v34 | 0x8000000000000000;
  }

  else
  {
    v38 = -1 << *(a1 + 32);
    v35 = ~v38;
    v39 = *(a1 + 64);
    v85 = a1 + 64;
    v40 = -v38;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v36 = v41 & v39;
    v37 = a1;
  }

  v87 = v37 & 0x7FFFFFFFFFFFFFFFLL;
  v94 = (v98 + 56);
  v79 = (v15 + 16);
  v78 = (v98 + 48);
  v77 = (v15 + 8);
  v80 = v35;
  v42 = (v35 + 64) >> 6;
  v88 = v98 + 16;
  v92 = (v98 + 8);
  v93 = (v98 + 32);
  v43 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 < 0)
  {
    v43 = a2;
  }

  v90 = v43;
  a1;
  v44 = 0;
  v45 = v37;
  v96 = a2;
  while (1)
  {
    v46 = v36;
    v47 = v44;
    if ((v45 & 0x8000000000000000) == 0)
    {
      v48 = v36;
      if (!v36)
      {
        v49 = v44;
        while (1)
        {
          v44 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v44 >= v42)
          {
            (*v94)(v22, 1, 1, a3);
            v74 = v45;
            goto LABEL_69;
          }

          v48 = *(v85 + 8 * v44);
          ++v49;
          if (v48)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_78:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_44:
      v91 = v47;
      v36 = (v48 - 1) & v48;
      v50 = v98;
      (*(v98 + 16))(v22, *(v45 + 48) + *(v98 + 72) * (__clz(__rbit64(v48)) | (v44 << 6)), a3);
      (*(v50 + 56))(v22, 0, 1, a3);
      goto LABEL_56;
    }

    v51 = v87;
    v52 = *(v87 + 216);
    v53 = v94;
    if ((v52 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if (v52 != *(v87 + 224))
    {
      v55 = *(v87 + 24);
      if (!v55)
      {
LABEL_81:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v52 >> 60)
      {
        __break(1u);
LABEL_80:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      goto LABEL_52;
    }

    v54 = [*(v87 + 208) countByEnumeratingWithState:v87 + 16 objects:v87 + 80 count:16];
    v51[28] = v54;
    if (!v54)
    {
      break;
    }

    v51[27] = 0;
    v55 = v51[3];
    if (!v55)
    {
      goto LABEL_81;
    }

    v52 = 0;
LABEL_52:
    v56 = (v55 + 8 * v52);
    if ((v56 & 7) != 0)
    {
      goto LABEL_80;
    }

    v95 = v36;
    v57 = *v56;
    v51[27] = v52 + 1;
    swift_unknownObjectRetain(v57);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(a3, a3);
    v91 = v47;
    if (isClassOrObjCExistentialType)
    {
      v100 = v57;
      swift_dynamicCast(v22, &v100, qword_1EEEAC710, a3, 7uLL);
      v59 = *v53;
    }

    else
    {
      v76 = v45;
      v59 = *v53;
      v72 = v81;
      v59(v81, 1, 1, a3);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v57, a3, v72);
      v73 = v82;
      (*v79)(v82, v72, v84);
      if ((*v78)(v73, 1, a3) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*v77)(v72, v84);
      swift_unknownObjectRelease(v57);
      (*v93)(v22, v73, a3);
      v45 = v76;
      v47 = v91;
    }

    v59(v22, 0, 1, a3);
    v44 = v47;
    v46 = v95;
    v36 = v95;
LABEL_56:
    v60 = *v93;
    (*v93)(v99, v22, a3);
    if (v97)
    {
      v61 = _swift_isClassOrObjCExistentialType(a3, a3);
      v95 = v46;
      if (v61)
      {
        if (v89 != 8)
        {
          goto LABEL_78;
        }

        v62 = v45;
        v63 = v99;
        v64 = *v99;
        v65 = *v92;
        swift_unknownObjectRetain(*v99);
        v66 = v63;
        v45 = v62;
        a2 = v96;
        v65(v66, a3);
      }

      else
      {
        v71 = v83;
        v60(v83, v99, a3);
        v64 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v71, a3);
      }

      v67 = [v90 &sel:v64 objectForKey:?];
      swift_unknownObjectRelease(v64);
      if (!v67)
      {
        v75 = v45;
        goto LABEL_72;
      }

      swift_unknownObjectRelease(v67);
    }

    else
    {
      if (!*(a2 + 16))
      {
        _sSh8IteratorV8_VariantOySS__GWOe_0(v45);
        (*v92)(v99, a3);
        return 0;
      }

      v68 = v99;
      __RawDictionaryStorage.find<A>(_:)(v99, a3, v86);
      a2 = v96;
      v70 = v69;
      (*v92)(v68, a3);
      if ((v70 & 1) == 0)
      {
        v75 = v45;
LABEL_72:
        _sSh8IteratorV8_VariantOySS__GWOe_0(v75);
        return 0;
      }
    }
  }

  v51[27] = -1;
LABEL_76:
  (*v53)(v22, 1, 1, a3);
  v74 = v45;
LABEL_69:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v74);
  return 1;
}

uint64_t Dictionary._Variant.asCocoa.getter(int64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  a1;
  return v1;
}

uint64_t Dictionary.Keys.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 16);
    v11 = __CocoaDictionary.Iterator.nextKey()();
    if (v11)
    {
      v13 = v11;
      _forceBridgeFromObjectiveC<A>(_:_:)(v11, v10, v12, a2);
      swift_unknownObjectRelease(v13);
      v14 = *(*(v10 - 1) + 56);
      v15 = a2;
      v16 = 0;
    }

    else
    {
      v14 = *(*(v10 - 1) + 56);
      v15 = a2;
      v16 = 1;
    }

    return v14(v15, v16, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v20 = (v8 - 1) & v8;
      v21 = *(result + 16);
      v22 = *(v21 - 8);
      (*(v22 + 16))(a2, *(v4 + 48) + *(v22 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v21);
      result = (*(v22 + 56))(a2, 0, 1, v21);
      v19 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v19;
      v2[4] = v20;
    }

    else
    {
      v17 = (v6 + 64) >> 6;
      if (v17 <= v7 + 1)
      {
        v18 = v7 + 1;
      }

      else
      {
        v18 = (v6 + 64) >> 6;
      }

      v19 = v18 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v17)
        {
          result = (*(*(*(result + 16) - 8) + 56))(a2, 1, 1);
          v20 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t specialized Sequence<>.contains(_:)(unsigned __int16 a1, Swift::Int scalarLength, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = scalarLength & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = scalarLength;
    v7 = 0;
    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_11;
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
LABEL_12:
      v15[0] = v5;
      v15[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v8 = v15;
    }

    else if ((scalarLength & 0x1000000000000000) != 0)
    {
LABEL_20:
      v8 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
LABEL_8:
      v8 = _StringObject.sharedUTF8.getter(v5, a3);
    }

    for (i = _decodeScalar(_:startingAt:)(v8, scalarLength, v7); ; i = *&v11._0._value)
    {
      v7 += scalarLength;
      if (i >= 0x10000)
      {
        v12 = i;
        result = Unicode.Scalar.UTF16View.subscript.getter(1, i);
        v13 = (((v12 + 67043328) >> 10) - 10240);
        if (v13 != ((v12 + 67043328) >> 10) + 55296)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        result = 1;
        if (v13 == a1 || v14 == a1)
        {
          return result;
        }
      }

      else if (i == a1)
      {
        return 1;
      }

      if (v7 >= v3)
      {
        return 0;
      }

      if ((a3 & 0x1000000000000000) == 0)
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          goto LABEL_12;
        }

        if ((v5 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }

LABEL_11:
      v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v7 << 16));
      scalarLength = v11.scalarLength;
    }
  }

  return 0;
}

uint64_t Sequence<>.contains(_:)(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a3 + 48))();
  if (v8 == 2)
  {
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a4;
    v10[5] = a1;
    LOBYTE(v8) = Sequence.contains(where:)(partial apply for closure #1 in Sequence<>.contains(_:), v10, a2, a3);
  }

  return v8 & 1;
}

uint64_t (*Dictionary.Keys.subscript.read(swift **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, swift *a6))()
{
  v10 = *(a6 - 1);
  *a1 = a6;
  a1[1] = v10;
  v11 = v10[8];
  if (swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc(v11, 0x7516uLL);
  }

  else
  {
    v12 = malloc(v11);
  }

  a1[2] = v12;
  Dictionary.Keys.subscript.getter(a2, a5, a6, v12);
  return Dictionary.Keys.subscript.read;
}

void Dictionary.formIndex(after:)(uint64_t a1, uint64_t a2, swift *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!*(a1 + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v8 >= 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v11 = *a1;
    }

    v12 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v11, v12))
    {
      goto LABEL_18;
    }

    if (v11)
    {
      swift_isUniquelyReferenced_nonNull_native(v11);
    }

    if (!swift_dynamicCastClass(v11, v12))
    {
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v13 = a2;
    }

    if (*(v11 + 16) != v13 || v9 >= *(*(v11 + 24) + 16))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v14 = v9 + 1;
    v15 = 1;
  }

  else
  {
    v16 = _NativeDictionary.index(after:)(*a1, v9, v10, a2, a3, a6, a5);
    v14 = v17;
    v15 = v18;
    sub_180615F30(v8, v9, v10);
    v8 = v16;
  }

  *a1 = v8;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
}

void Dictionary.Values.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, swift *a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (v12)
    {
      v25 = v14;
      v26 = v13;
      if (v11 >= 0)
      {
        v27 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v27 = v11;
      }

      v28 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v27, v28))
      {
        goto LABEL_33;
      }

      if (*(a3 + 36) == specialized static Hasher._hash(seed:_:)(0, *(v27 + 16)))
      {
        if (!swift_dynamicCastClass(v27, v28))
        {
          goto LABEL_33;
        }

        v29 = *(v27 + 24);
        if (*(v29 + 16) <= a2)
        {
          goto LABEL_32;
        }

        v30 = *(v29 + 8 * a2 + 24);
        v31 = swift_unknownObjectRetain(v30);
        _forceBridgeFromObjectiveC<A>(_:_:)(v31, v26, v32, v16);
        swift_unknownObjectRelease(v30);
        v33 = __RawDictionaryStorage.find<A>(_:)(v16, v26, v25);
        v35 = v34;
        (*(v10 + 8))(v16, v26);
        if (v35)
        {
          v11 = v33;
LABEL_29:
          (*(*(a5 - 1) + 16))(a6, *(a3 + 56) + *(*(a5 - 1) + 72) * v11, a5);
          return;
        }
      }
    }

    else if ((v11 & 0x8000000000000000) == 0 && 1 << *(a3 + 32) > v11 && ((*(a3 + 8 * (v11 >> 6) + 64) >> v11) & 1) != 0 && *(a3 + 36) == a2)
    {
      goto LABEL_29;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if ((v12 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v11 >= 0)
  {
    v18 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v18, v19))
  {
    goto LABEL_33;
  }

  v20 = *(v18 + 16);
  if (v20 != a3)
  {
    goto LABEL_32;
  }

  v21 = *(*(v18 + 24) + 8 * a2 + 24);
  swift_unknownObjectRetain(v21);
  if (!swift_dynamicCastClass(v18, v19))
  {
LABEL_33:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = [v20 &sel:v21 objectForKey:?];
  if (!v22)
  {
LABEL_32:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = v22;
  swift_unknownObjectRelease(v21);
  _forceBridgeFromObjectiveC<A>(_:_:)(v23, a5, v24, a6);

  swift_unknownObjectRelease(v23);
}

void (*Dictionary.Values.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5))(void **a1)
{
  v6 = v5;
  v12 = a5[2];
  v29 = *(v12 - 1);
  v13 = *(v29 + 64);
  if (swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc(v13, 0xB3DAuLL);
  }

  else
  {
    v14 = malloc(v13);
  }

  v15 = v14;
  *a1 = v14;
  v16 = *v5;
  v17 = a5[3];
  if ((*v5 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v5);
    v19 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v30 = *v6;
      *v6 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v12, v17, a5[4]);
      _NativeDictionary.copy()();
      v19 = v30;
      *v6 = v30;
    }

    v19;
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_21:
    if (a2 < 0 || 1 << *(v19 + 32) <= a2 || ((*(v19 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0 || *(v19 + 36) != a3)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v16 < 0)
  {
    v18 = *v5;
  }

  else
  {
    v18 = (v16 & 0xFFFFFFFFFFFFFF8);
  }

  *v6;
  v19 = _NativeDictionary.init(_:capacity:)(v18, [v18 count], v12, v17, a5[4]);
  v19;
  v16;
  *v6 = v19;
  if ((a4 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (a2 >= 0)
  {
    v20 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v20 = a2;
  }

  v21 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v20, v21))
  {
    goto LABEL_28;
  }

  if (*(v19 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v20 + 16)))
  {
    goto LABEL_26;
  }

  if (!swift_dynamicCastClass(v20, v21))
  {
LABEL_28:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v20 + 24);
  if (*(v22 + 16) <= a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v23 = *(v22 + 8 * a3 + 24);
  v24 = swift_unknownObjectRetain(v23);
  _forceBridgeFromObjectiveC<A>(_:_:)(v24, v12, v25, v15);
  swift_unknownObjectRelease(v23);
  __RawDictionaryStorage.find<A>(_:)(v15, v12, a5[4]);
  LOBYTE(v23) = v26;
  (*(v29 + 8))(v15, v12);
  if ((v23 & 1) == 0)
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_25:
  v19;
  return Dictionary.Values.subscript.modify;
}

__objc2_class **Dictionary._Variant.ensureUniqueNative()(void *a1)
{
  v3 = *v1;
  v4 = a1[2];
  v5 = a1[3];
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v6 = *v1;
    }

    else
    {
      v6 = (v3 & 0xFFFFFFFFFFFFFF8);
    }

    *v1;
    v7 = _NativeDictionary.init(_:capacity:)(v6, [v6 count], v4, v5, a1[4]);
    v7;
    v3;
    *v1 = v7;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v1);
    v7 = *v1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v10 = *v1;
      *v1 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v4, v5, a1[4]);
      _NativeDictionary.copy()();
      v7 = v10;
      *v1 = v10;
    }

    v7;
  }

  return v7;
}

uint64_t _NativeDictionary.validatedBucket(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, swift *a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 1);
  result = MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    if (result >= 0)
    {
      v16 = result & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = result;
    }

    v17 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v16, v17))
    {
      goto LABEL_17;
    }

    if (*(a4 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v16 + 16)))
    {
      goto LABEL_15;
    }

    if (!swift_dynamicCastClass(v16, v17))
    {
LABEL_17:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = *(v16 + 24);
    if (*(v18 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v19 = *(v18 + 8 * a2 + 24);
    v20 = swift_unknownObjectRetain(v19);
    _forceBridgeFromObjectiveC<A>(_:_:)(v20, a5, v21, v14);
    swift_unknownObjectRelease(v19);
    v22 = __RawDictionaryStorage.find<A>(_:)(v14, a5, a7);
    LOBYTE(v19) = v23;
    (*(v11 + 8))(v14, a5);
    if (v19)
    {
      return v22;
    }

LABEL_15:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (result < 0 || 1 << *(a4 + 32) <= result || ((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0 || *(a4 + 36) != a2)
  {
    goto LABEL_15;
  }

  return result;
}

void Dictionary.Values.subscript.setter(uint64_t a1, int64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v32 = a4;
  v31 = a1;
  v10 = *(a5 + 16);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = *(v15 + 24);
  if ((*v5 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v5);
    v18 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v33 = v18;
      *v6 = 0x8000000000000000;
      type metadata accessor for _NativeDictionary(0, v10, v16, *(a5 + 32));
      _NativeDictionary.copy()();
      v18 = v33;
      *v6 = v33;
    }

    v18;
    if (v32)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (a2 < 0)
    {
      goto LABEL_23;
    }

    if (1 << *(v18 + 32) <= a2)
    {
      goto LABEL_23;
    }

    if (((*(v18 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = a2;
    if (*(v18 + 36) != a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v14 < 0)
  {
    v17 = *v5;
  }

  else
  {
    v17 = (v14 & 0xFFFFFFFFFFFFFF8);
  }

  v14;
  v18 = _NativeDictionary.init(_:capacity:)(v17, [v17 count], v10, v16, *(a5 + 32));
  v18;
  v14;
  *v6 = v18;
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (a2 >= 0)
  {
    v19 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v19 = a2;
  }

  v20 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v19, v20))
  {
    goto LABEL_25;
  }

  if (*(v18 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v19 + 16)))
  {
    goto LABEL_23;
  }

  if (!swift_dynamicCastClass(v19, v20))
  {
LABEL_25:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v21 = *(v19 + 24);
  if (*(v21 + 16) <= a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v22 = *(v21 + 8 * a3 + 24);
  v23 = swift_unknownObjectRetain(v22);
  _forceBridgeFromObjectiveC<A>(_:_:)(v23, v10, v24, v13);
  swift_unknownObjectRelease(v22);
  v25 = __RawDictionaryStorage.find<A>(_:)(v13, v10, *(a5 + 32));
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  if ((v27 & 1) == 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_22:
  v29 = *(v18 + 56);
  v18;
  (*(*(v16 - 1) + 5))(v29 + *(*(v16 - 1) + 9) * v25, v31, v16);
  sub_180615F30(a2, a3, v32 & 1);
}

BOOL Dictionary.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = [a1 count];
  }

  else
  {
    v3 = *(a1 + 16);
  }

  return v3 == 0;
}

uint64_t Dictionary.Values.swapAt(_:_:)(int64_t a1, uint64_t a2, char a3, int64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v13 = a1;
  v14 = *(a7 + 24);
  v15 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v73 = &v67[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v18 + 16);
  v74 = *(v19 - 1);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v71 = &v67[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v67[-v23];
  v26 = *(v25 + 32);
  v75 = v27;
  v76 = v26;
  result = static Dictionary.Index.== infix(_:_:)(v22, v30, v28 & 1, v31, v27, v29 & 1);
  if (result)
  {
    return result;
  }

  v70 = v15;
  v72 = v14;
  v33 = *v8;
  if ((*v8 & 0xC000000000000001) != 0)
  {
    if (v33 < 0)
    {
      v34 = *v8;
    }

    else
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFF8);
    }

    v35 = v8;
    v36 = *v8;
    v33;
    v37 = [v34 count];
    v38 = _NativeDictionary.init(_:capacity:)(v34, v37, v19, v72, v76);
    v39 = v36;
    v8 = v35;
    v39;
    *v35 = v38;
    v33 = v38;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v33);
  v41 = *v8;
  if (a3)
  {
    v68 = isUniquelyReferenced_nonNull_native;
    v69 = v8;
    if (v13 >= 0)
    {
      v13 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v42 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (!swift_dynamicCastClass(v13, v42))
    {
      goto LABEL_40;
    }

    v43 = specialized static Hasher._hash(seed:_:)(0, *(v13 + 16));
    v44 = v70;
    if (*(v41 + 36) != v43)
    {
      goto LABEL_38;
    }

    if (!swift_dynamicCastClass(v13, v42))
    {
      goto LABEL_40;
    }

    v45 = *(v13 + 24);
    if (*(v45 + 16) <= a2)
    {
      goto LABEL_39;
    }

    v46 = *(v45 + 8 * a2 + 24);
    v47 = swift_unknownObjectRetain(v46);
    _forceBridgeFromObjectiveC<A>(_:_:)(v47, v19, v48, v24);
    swift_unknownObjectRelease(v46);
    v13 = __RawDictionaryStorage.find<A>(_:)(v24, v19, v76);
    LOBYTE(v46) = v49;
    (*(v74 + 8))(v24, v19);
    if ((v46 & 1) == 0)
    {
      goto LABEL_38;
    }

    v8 = v69;
    LOBYTE(isUniquelyReferenced_nonNull_native) = v68;
  }

  else
  {
    v44 = v70;
    if (v13 < 0 || 1 << *(v41 + 32) <= v13 || ((*(v41 + 8 * (v13 >> 6) + 64) >> v13) & 1) == 0 || *(v41 + 36) != a2)
    {
      goto LABEL_38;
    }
  }

  if (a6)
  {
    v50 = isUniquelyReferenced_nonNull_native;
    if (a4 >= 0)
    {
      v51 = a4 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v51 = a4;
    }

    v52 = type metadata accessor for __CocoaDictionary.Index.Storage();
    if (swift_dynamicCastClass(v51, v52))
    {
      if (*(v41 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v51 + 16)))
      {
        goto LABEL_38;
      }

      if (swift_dynamicCastClass(v51, v52))
      {
        v53 = *(v51 + 24);
        if (*(v53 + 16) > v75)
        {
          v54 = *(v53 + 8 * v75 + 24);
          v55 = swift_unknownObjectRetain(v54);
          v56 = v71;
          _forceBridgeFromObjectiveC<A>(_:_:)(v55, v19, v57, v71);
          swift_unknownObjectRelease(v54);
          a4 = __RawDictionaryStorage.find<A>(_:)(v56, v19, v76);
          LOBYTE(v54) = v58;
          (*(v74 + 8))(v56, v19);
          if (v54)
          {
            LOBYTE(isUniquelyReferenced_nonNull_native) = v50;
            goto LABEL_34;
          }

LABEL_38:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_39:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

LABEL_40:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a4 < 0 || 1 << *(v41 + 32) <= a4 || ((*(v41 + 8 * (a4 >> 6) + 64) >> a4) & 1) == 0 || *(v41 + 36) != v75)
  {
    goto LABEL_38;
  }

LABEL_34:
  v77 = v41;
  *v8 = 0x8000000000000000;
  v59 = v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    type metadata accessor for _NativeDictionary(0, v19, v72, v76);
    _NativeDictionary.copy()();
    v41 = v77;
  }

  v60 = *(v44 + 32);
  v61 = *(v44 + 72);
  v62 = v61 * v13;
  v63 = *(v41 + 56) + v61 * v13;
  v64 = v72;
  v65 = v73;
  v60(v73, v63, v72);
  v66 = v61 * a4;
  UnsafeMutablePointer.moveInitialize(from:count:)((*(v41 + 56) + v66), 1, (*(v41 + 56) + v62), v64);
  result = (v60)(*(v41 + 56) + v66, v65, v64);
  *v59 = v41;
  return result;
}

__objc2_class **_NativeDictionary.init(_:)(void *a1, Class *a2, Class *a3, uint64_t a4)
{
  v8 = [a1 count];

  return _NativeDictionary.init(_:capacity:)(a1, v8, a2, a3, a4);
}

uint64_t (*Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return _ArrayBody.count.modify;
}

Swift::Void __swiftcall _NativeDictionary.swapValuesAt(_:_:isUnique:)(Swift::_HashTable::Bucket _, Swift::_HashTable::Bucket a2, Swift::Bool isUnique)
{
  v6 = *(v3 + 24);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](_.offset);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v11 & 1) == 0)
  {
    v17 = v8;
    _NativeDictionary.copy()();
    v8 = v17;
  }

  v12 = *v4;
  v13 = *(v7 + 32);
  v14 = *(v7 + 72);
  v15 = v14 * v8;
  v13(v10, *(v12 + 56) + v14 * v8, v6);
  v16 = v14 * a2.offset;
  UnsafeMutablePointer.moveInitialize(from:count:)((*(v12 + 56) + v16), 1, (*(v12 + 56) + v15), v6);
  v13((*(v12 + 56) + v16), v10, v6);
}

uint64_t (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, const char *a3, uint64_t a4))()
{
  if (swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc(0x58, 0xD5C6uLL);
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v11 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v12 = *(a4 + 8);
  v13 = type metadata accessor for Slice(0, a3, v12, v10);
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[5] = swift_coroFrameAlloc(v15, 0xD5C6uLL);
    v16 = swift_coroFrameAlloc(v15, 0xD5C6uLL);
  }

  else
  {
    v11[5] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness(255, v12, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a3, v18, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v22 = type metadata accessor for Range(0, v19, AssociatedConformanceWitness, v21);
  v11[7] = v22;
  v23 = *(v22 - 8);
  v24 = v23;
  v11[8] = v23;
  v25 = *(v23 + 64);
  if (swift_coroFrameAlloc)
  {
    v11[9] = swift_coroFrameAlloc(v25, 0xD5C6uLL);
    v26 = swift_coroFrameAlloc(v25, 0xD5C6uLL);
  }

  else
  {
    v11[9] = malloc(v25);
    v26 = malloc(v25);
  }

  v11[10] = v26;
  (*(v24 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v17);
  return MutableCollection<>.subscript.modify;
}

uint64_t (*Dictionary.Values.subscript.read(swift **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, swift *a7))()
{
  v13 = *(a7 - 1);
  *a1 = a7;
  a1[1] = v13;
  v14 = v13[8];
  if (swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc(v14, 0x278CuLL);
  }

  else
  {
    v15 = malloc(v14);
  }

  a1[2] = v15;
  Dictionary.Values.subscript.getter(a2, a3, a5, a6, a7, v15);
  return _ArrayBuffer.subscript.read;
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a1;
  v58 = a4;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  swift_getTupleTypeMetadata2(0, v8, v8, "lower upper ", 0);
  v10 = v9;
  v55 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v52 = *(v8 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a2, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v56 = type metadata accessor for Range(0, v8, AssociatedConformanceWitness, v22);
  v53 = *(v56 - 8);
  v23 = MEMORY[0x1EEE9AC00](v56);
  v54 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  (*(v6 + 64))(a2, v6);
  v27 = *(v6 + 72);
  v59 = v4;
  v57 = a2;
  v51 = v6;
  v27(a2, v6);
  if (((*(AssociatedConformanceWitness + 24))(v20, v18, v8, AssociatedConformanceWitness) & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v28 = v52;
  v29 = *(v52 + 32);
  v29(v15, v20, v8);
  v29(&v15[*(v10 + 48)], v18, v8);
  v30 = v29;
  v31 = v55;
  v32 = v26;
  v33 = v50;
  (*(v55 + 16))(v50, v15, v10);
  v48 = *(v10 + 48);
  v29(v32, v33, v8);
  v49 = v29;
  v34 = *(v28 + 8);
  v34(&v33[v48], v8);
  (*(v31 + 32))(v33, v15, v10);
  v35 = v56;
  v30(&v32[*(v56 + 36)], &v33[*(v10 + 48)], v8);
  v34(v33, v8);
  v36 = v51;
  v37 = v59;
  v38 = v60;
  v39 = v57;
  (*(v51 + 176))(v60, v32, v57, v51);
  v40 = v53;
  (*(v53 + 8))(v32, v35);
  v42 = type metadata accessor for Slice(0, v39, v36, v41);
  v43 = v58;
  (*(*(v39 - 8) + 16))(&v58[*(v42 + 40)], v37, v39);
  v44 = v54;
  (*(v40 + 16))(v54, v38, v35);
  v45 = v49;
  v49(v43, v44, v8);
  return v45(&v43[*(v42 + 36)], &v44[*(v35 + 36)], v8);
}

int64_t Dictionary.Keys.makeIterator()@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    if (result < 0)
    {
      v3 = result;
    }

    else
    {
      v3 = result & 0xFFFFFFFFFFFFFF8;
    }

    v4 = type metadata accessor for __CocoaDictionary.Iterator();
    v5 = swift_allocObject(v4, 0xE8, 7uLL);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    *(v5 + 208) = v3;
    *(v5 + 216) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 224) = 0;
    result = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1;
    v10 = -1 << *(result + 32);
    v6 = result + 64;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v9 = ~(-1 << v11);
    }

    v8 = v9 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  a2[4] = v8;
  return result;
}

uint64_t Dictionary.Keys.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Dictionary.Keys(0, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for [A : B].Keys, v4, v5);
  return Collection._makeCollectionDescription(withTypeName:)(0)._countAndFlagsBits;
}

uint64_t Dictionary.Keys.debugDescription.getter(uint64_t a1, int64_t a2)
{
  v208 = a2;
  v212 = a1;
  v209 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v198 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional(0, v4, v5, v6);
  v211 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v198 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v214 = (&v198 - v14);
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Dictionary.Keys", 0xFuLL, 1);
  countAndFlagsBits = v15._countAndFlagsBits;
  object = v15._object;
  v219 = 0;
  v220 = 0xE000000000000000;
  v17 = _StringGuts.init(_initialCapacity:)(4);
  inited = v17;
  v20 = v18;
  v217 = v17;
  v218 = v18;
  v21 = HIBYTE(v18) & 0xF;
  v22 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v23 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v206 = v3;
  v201 = v7;
  v202 = v10;
  v203 = v13;
  if (!v23 && (v17 & ~v18 & 0x2000000000000000) == 0)
  {
    v18;
    inited = 0;
    v33 = 0xE000000000000000;
    v217 = 0;
LABEL_21:
    v218 = v33;
LABEL_36:
    v41 = countAndFlagsBits;
    goto LABEL_37;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
    v18;
    0xE000000000000000;
    v32 = 0xA000000000000000;
    if (!(v20 & 0x80808080808080 | inited & 0x8080808080808080))
    {
      v32 = 0xE000000000000000;
    }

    v33 = v32 & 0xFF00000000000000 | (v21 << 56) | v20 & 0xFFFFFFFFFFFFFFLL;
    v217 = inited;
    goto LABEL_21;
  }

  0xE000000000000000;
  v25 = v22;
  if ((v20 & 0x1000000000000000) != 0)
  {
    v25 = String.UTF8View._foreignCount()();
    if ((inited & 0x2000000000000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((inited & 0x2000000000000000) == 0)
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v20 & 0xFFFFFFFFFFFFFFFLL))
  {
    v26 = _StringGuts.nativeUnusedCapacity.getter(inited, v20);
    if (v27)
    {
      goto LABEL_229;
    }

    if (v25 <= 15 && (v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (v25 > 15)
  {
LABEL_35:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v25, 0);
    v215 = 0uLL;
    closure #1 in _StringGuts.append(_:)(&v215, 0, &v217, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    inited = v217;
    v33 = v218;
    goto LABEL_36;
  }

LABEL_13:
  if ((v20 & 0x1000000000000000) != 0)
  {
    v29 = _StringGuts._foreignConvertedToSmall()(inited, v20);
    v30 = v34;
  }

  else
  {
    if ((inited & 0x1000000000000000) != 0)
    {
      v28 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v28 = _StringObject.sharedUTF8.getter(inited, v20);
      v22 = v187;
    }

    closure #1 in _StringGuts._convertedToSmall()(v28, v22, &v215, v24);
    v30 = *(&v215 + 1);
    v29 = v215;
  }

  v35 = 0xE000000000000000;
  0xE000000000000000;
  v36._rawBits = 1;
  v37._rawBits = 1;
  v38._rawBits = _StringGuts.validateScalarRange(_:)(v36, v37, 0, 0xE000000000000000)._rawBits;
  if (v38._rawBits < 0x10000)
  {
    v38._rawBits |= 3;
  }

  v41 = countAndFlagsBits;
  if (v38._rawBits >> 16 || v39._rawBits >= 0x10000)
  {
    v42 = specialized static String._copying(_:)(v38._rawBits, v39._rawBits, 0, 0xE000000000000000);
    v35 = v43;
    0xE000000000000000;
  }

  else
  {
    v42 = 0;
  }

  if ((v35 & 0x2000000000000000) != 0)
  {
    v35;
  }

  else
  {
    if ((v35 & 0x1000000000000000) != 0)
    {
      v42 = _StringGuts._foreignConvertedToSmall()(v42, v35);
      v195 = v194;
      v35;
      v35 = v195;
    }

    else
    {
      if ((v42 & 0x1000000000000000) != 0)
      {
        v183 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v184 = v42 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v183 = _StringObject.sharedUTF8.getter(v42, v35);
      }

      closure #1 in _StringGuts._convertedToSmall()(v183, v184, &v215, v40);
      v35;
      v35 = *(&v215 + 1);
      v42 = v215;
    }

    v3 = v206;
    v41 = countAndFlagsBits;
  }

  v44 = specialized _SmallString.init(_:appending:)(v29, v30, v42, v35);
  if (v46)
  {
    goto LABEL_229;
  }

  inited = v44;
  v33 = v45;
  v20;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  v217 = inited;
  v218 = v33;
LABEL_37:
  v47 = HIBYTE(v33) & 0xF;
  v48 = inited & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v49 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v49 = inited & 0xFFFFFFFFFFFFLL;
  }

  if (!v49 && (inited & ~v33 & 0x2000000000000000) == 0)
  {
    v15._object;
    v33;
    v217 = v41;
    v218 = v15._object;
    v55 = v208;
    goto LABEL_99;
  }

  v50 = (v15._object & 0x2000000000000000) == 0;
  v51 = (v15._object >> 56) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v52 = v41 & 0xFFFFFFFFFFFFLL;
    v3 = (v15._object >> 56) & 0xF;
    if ((v15._object & 0x2000000000000000) != 0)
    {
      goto LABEL_48;
    }

LABEL_47:
    v3 = v52;
    goto LABEL_48;
  }

  if ((v15._object & 0x2000000000000000) == 0)
  {
    v52 = v41 & 0xFFFFFFFFFFFFLL;
    v50 = 1;
    goto LABEL_47;
  }

  v69 = v47 + v51;
  if (v47 + v51 < 0x10)
  {
    if (v51)
    {
      v76 = 0;
      v77 = 0;
      v78 = 8 * v47;
      v79 = v33;
      v55 = v208;
      do
      {
        v80 = v15._object >> (v76 & 0x38);
        if (v77 < 8)
        {
          v80 = v41 >> v76;
        }

        v81 = (v80 << (v78 & 0x38)) | ((-255 << (v78 & 0x38)) - 1) & v79;
        v82 = (v80 << v78) | ((-255 << v78) - 1) & inited;
        if (v47 <= 7)
        {
          inited = v82;
        }

        else
        {
          v79 = v81;
        }

        ++v47;
        v78 += 8;
        v76 += 8;
        ++v77;
      }

      while (8 * v51 != v76);
    }

    else
    {
      v79 = v33;
      v55 = v208;
    }

    v33;
    v83 = 0xA000000000000000;
    if (!(inited & 0x8080808080808080 | v79 & 0x80808080808080))
    {
      v83 = 0xE000000000000000;
    }

    v217 = inited;
    v218 = v83 & 0xFF00000000000000 | (v69 << 56) | v79 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_99;
  }

  v50 = 0;
  v52 = v41 & 0xFFFFFFFFFFFFLL;
  v3 = (v15._object >> 56) & 0xF;
LABEL_48:
  *&v210 = v52;
  v53 = v3;
  if ((v15._object & 0x1000000000000000) == 0)
  {
    if ((v33 & 0x1000000000000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_203:
    v179 = String.UTF8View._foreignCount()();
    v55 = v179 + v53;
    if (!__OFADD__(v179, v53))
    {
      goto LABEL_51;
    }

LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  v174._rawBits = (v3 << 16) | 1;
  v175._rawBits = 1;
  v176._rawBits = _StringGuts.validateScalarRange(_:)(v175, v174, v41, v15._object)._rawBits;
  v207._rawBits = v177;
  if (v176._rawBits >= 0x10000)
  {
    rawBits = v176._rawBits;
  }

  else
  {
    rawBits = v176._rawBits | 3;
  }

  v15._object;
  v53 = String.UTF8View.distance(from:to:)(rawBits, v207);
  v15._object;
  if ((v33 & 0x1000000000000000) != 0)
  {
    goto LABEL_203;
  }

LABEL_50:
  v54 = __OFADD__(v49, v53);
  v55 = v49 + v53;
  if (v54)
  {
    goto LABEL_205;
  }

LABEL_51:
  if ((inited & ~v33 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v33 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v55 <= 15)
    {
      if ((v33 & 0x2000000000000000) == 0)
      {
        goto LABEL_57;
      }

LABEL_68:
      v48 = v33;
      goto LABEL_69;
    }

LABEL_62:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v55, v53);
    if ((v15._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v41, v15._object, 0, v3);
      v55 = v208;
    }

    else
    {
      v55 = v208;
      if (v50)
      {
        if ((v41 & 0x1000000000000000) != 0)
        {
          v59 = (v15._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v60 = v210;
          v61 = v210;
          v3 = v206;
        }

        else
        {
          v188 = _StringObject.sharedUTF8.getter(v41, v15._object);
          if (v189 < v210)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v59 = v188;
          v61 = v189;
          v55 = v208;
          v3 = v206;
          v41 = countAndFlagsBits;
          v60 = v210;
        }

        v62 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v60, v59, v61);
        closure #1 in _StringGuts.append(_:)(v62, v63, &v217, v41 < 0);
        goto LABEL_99;
      }

      *&v215 = v41;
      *(&v215 + 1) = v15._object & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v215, (v15._object >> 56) & 0xF, &v217, (v15._object & 0x4000000000000000) != 0);
    }

    v3 = v206;
    goto LABEL_99;
  }

  v56 = _StringGuts.nativeUnusedCapacity.getter(inited, v33);
  if (v57)
  {
    goto LABEL_229;
  }

  if (v55 > 15)
  {
    goto LABEL_62;
  }

  if ((v33 & 0x2000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (v56 >= v53)
  {
    goto LABEL_62;
  }

LABEL_57:
  if ((v33 & 0x1000000000000000) == 0)
  {
    v55 = v208;
    if ((inited & 0x1000000000000000) != 0)
    {
      v58 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v58 = _StringObject.sharedUTF8.getter(inited, v33);
      v48 = v190;
    }

    closure #1 in _StringGuts._convertedToSmall()(v58, v48, &v215, v31);
    v48 = *(&v215 + 1);
    inited = v215;
    goto LABEL_70;
  }

  inited = _StringGuts._foreignConvertedToSmall()(inited, v33);
  v48 = v172;
LABEL_69:
  v55 = v208;
LABEL_70:
  v15._object;
  v64._rawBits = 1;
  v65._rawBits = (v3 << 16) | 1;
  v66._rawBits = _StringGuts.validateScalarRange(_:)(v64, v65, v41, v15._object)._rawBits;
  if (v66._rawBits < 0x10000)
  {
    v66._rawBits |= 3;
  }

  if (v66._rawBits >> 16 || v67._rawBits >> 16 != v3)
  {
    v41 = specialized static String._copying(_:)(v66._rawBits, v67._rawBits, v41, v15._object);
    v53 = v70;
    v15._object;
  }

  else
  {
    v53 = v15._object;
  }

  v3 = v206;
  if ((v53 & 0x2000000000000000) == 0)
  {
    goto LABEL_209;
  }

  v53;
  while (1)
  {
    v71 = specialized _SmallString.init(_:appending:)(inited, v48, v41, v53);
    if (v73)
    {
      goto LABEL_229;
    }

    v74 = v71;
    v75 = v72;
    v33;
    v217 = v74;
    v218 = v75;
LABEL_99:
    v53 = v217;
    inited = v218;
    v84 = HIBYTE(v218) & 0xF;
    v48 = v217 & 0xFFFFFFFFFFFFLL;
    if ((v218 & 0x2000000000000000) != 0)
    {
      v85 = HIBYTE(v218) & 0xF;
    }

    else
    {
      v85 = v217 & 0xFFFFFFFFFFFFLL;
    }

    if (!v85 && (v217 & ~v218 & 0x2000000000000000) == 0)
    {
      v218;
      v97 = 0xE200000000000000;
      v53 = 23336;
      goto LABEL_138;
    }

    if ((v218 & 0x2000000000000000) != 0 && v84 <= 0xD)
    {
      v86 = 8 * (HIBYTE(v218) & 7);
      v87 = (-255 << v86) - 1;
      v88 = 40 << v86;
      v89 = v84 + 1;
      if (v84 >= 8)
      {
        v91 = v87 & v218 | v88;
        v90 = 8 * (v89 & 7);
LABEL_124:
        v98 = ((-255 << v90) - 1) & v91 | (91 << v90);
      }

      else
      {
        v53 = v87 & v217 | v88;
        if (v84 == 7)
        {
          v90 = 0;
          v91 = v218;
          goto LABEL_124;
        }

        v53 = ((-255 << (8 * (v89 & 7u))) - 1) & v53 | (91 << (8 * (v89 & 7u)));
        v98 = v218;
      }

      v218;
      0xE200000000000000;
      v110 = 0xA000000000000000;
      if (!(v53 & 0x8080808080808080 | v98 & 0x80808080808080))
      {
        v110 = 0xE000000000000000;
      }

      v97 = (v110 & 0xFF00000000000000 | (v84 << 56) | v98 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      goto LABEL_138;
    }

    0xE200000000000000;
    if ((inited & 0x1000000000000000) != 0)
    {
      break;
    }

    v54 = __OFADD__(v85, 2);
    v92 = v85 + 2;
    if (!v54)
    {
      goto LABEL_111;
    }

LABEL_208:
    __break(1u);
LABEL_209:
    if ((v53 & 0x1000000000000000) != 0)
    {
      v41 = _StringGuts._foreignConvertedToSmall()(v41, v53);
      v193 = v192;
      v53;
      v53 = v193;
    }

    else
    {
      if ((v41 & 0x1000000000000000) != 0)
      {
        v181 = ((v53 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v182 = v41 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v181 = _StringObject.sharedUTF8.getter(v41, v53);
      }

      closure #1 in _StringGuts._convertedToSmall()(v181, v182, &v215, v68);
      v53;
      v53 = *(&v215 + 1);
      v41 = v215;
    }
  }

LABEL_206:
  v180 = String.UTF8View._foreignCount()();
  v92 = v180 + 2;
  if (__OFADD__(v180, 2))
  {
    goto LABEL_208;
  }

LABEL_111:
  if ((v53 & ~inited & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(inited & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v92 > 15)
    {
      goto LABEL_122;
    }

    if ((inited & 0x2000000000000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_126;
  }

  v93 = _StringGuts.nativeUnusedCapacity.getter(v53, inited);
  if (v94)
  {
    goto LABEL_229;
  }

  if (v92 > 15)
  {
    goto LABEL_122;
  }

  if ((inited & 0x2000000000000000) != 0)
  {
LABEL_126:
    v96 = inited;
    goto LABEL_127;
  }

  if (v93 < 2)
  {
LABEL_117:
    if ((inited & 0x1000000000000000) != 0)
    {
      goto LABEL_196;
    }

    if ((v53 & 0x1000000000000000) != 0)
    {
      v95 = ((inited & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v95 = _StringObject.sharedUTF8.getter(v53, inited);
      v48 = v191;
    }

    closure #1 in _StringGuts._convertedToSmall()(v95, v48, &v215, v68);
    v96 = *(&v215 + 1);
    v53 = v215;
LABEL_127:
    0xE200000000000000;
    v99._rawBits = 1;
    v100._rawBits = 131073;
    v101._rawBits = _StringGuts.validateScalarRange(_:)(v99, v100, 0x5B28uLL, 0xE200000000000000)._rawBits;
    if (v101._rawBits < 0x10000)
    {
      v101._rawBits |= 3;
    }

    v103 = Substring.description.getter(v101._rawBits, v102._rawBits, 0x5B28uLL, 0xE200000000000000);
    v105 = v104;
    0xE200000000000000;
    if ((v105 & 0x2000000000000000) != 0)
    {
      v105;
    }

    else
    {
      if ((v105 & 0x1000000000000000) != 0)
      {
        v103 = _StringGuts._foreignConvertedToSmall()(v103, v105);
        v197 = v196;
        v105;
        v105 = v197;
      }

      else
      {
        if ((v103 & 0x1000000000000000) != 0)
        {
          v185 = ((v105 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v186 = v103 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v185 = _StringObject.sharedUTF8.getter(v103, v105);
        }

        closure #1 in _StringGuts._convertedToSmall()(v185, v186, &v215, v106);
        v105;
        v105 = *(&v215 + 1);
        v103 = v215;
      }

      v3 = v206;
    }

    v107 = specialized _SmallString.init(_:appending:)(v53, v96, v103, v105);
    if ((v109 & 1) == 0)
    {
      v53 = v107;
      v97 = v108;
      inited;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v55 = v208;
      goto LABEL_138;
    }

LABEL_229:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_122:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v92, 2);
  v215 = xmmword_18071DC30;
  closure #1 in _StringGuts.append(_:)(&v215, 2uLL, &v217, 1);
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  v53 = v217;
  v97 = v218;
LABEL_138:
  0xE000000000000000;
  v219 = v53;
  v220 = v97;
  inited = v212;
  v205 = object;
  if ((v212 & 0xC000000000000001) != 0)
  {
    if (v212 < 0)
    {
      v111 = v212;
    }

    else
    {
      v111 = v212 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = type metadata accessor for __CocoaDictionary.Iterator();
    v113 = swift_allocObject(v112, 0xE8, 7uLL);
    v114 = 0;
    v115 = 0;
    v116 = 0;
    *(v113 + 208) = v111;
    *(v113 + 216) = 0;
    *(v113 + 16) = 0u;
    *(v113 + 32) = 0u;
    *(v113 + 48) = 0u;
    *(v113 + 64) = 0u;
    *(v113 + 80) = 0u;
    *(v113 + 96) = 0u;
    *(v113 + 112) = 0u;
    *(v113 + 128) = 0u;
    *(v113 + 144) = 0u;
    *(v113 + 160) = 0u;
    *(v113 + 176) = 0u;
    *(v113 + 192) = 0u;
    *(v113 + 224) = 0;
    v117 = v113 | 0x8000000000000000;
  }

  else
  {
    v118 = -1 << *(v212 + 32);
    v115 = ~v118;
    v114 = v212 + 64;
    v119 = -v118;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    else
    {
      v120 = -1;
    }

    v116 = v120 & *(v212 + 64);
    v117 = v212;
  }

  object = v117 & 0x7FFFFFFFFFFFFFFFLL;
  countAndFlagsBits = (v209 + 56);
  v200 = (v211 + 16);
  v199 = (v209 + 48);
  v198 = (v211 + 8);
  v53 = v209 + 32;
  v204 = v115;
  v121 = (v115 + 64) >> 6;
  v207._rawBits = v209 + 16;
  inited;
  v212 = 0;
  v122 = 1;
  v210 = xmmword_18071DB30;
  v211 = v117;
  while ((v117 & 0x8000000000000000) == 0)
  {
    if (v116)
    {
      v133 = v212;
      goto LABEL_164;
    }

    v139 = v212;
    do
    {
      v133 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        __break(1u);
LABEL_196:
        v53 = _StringGuts._foreignConvertedToSmall()(v53, inited);
        v96 = v173;
        goto LABEL_127;
      }

      if (v133 >= v121)
      {
        (*countAndFlagsBits)(v214, 1, 1, v55);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v117);
        goto LABEL_183;
      }

      v116 = *(v114 + 8 * v133);
      ++v139;
    }

    while (!v116);
    v212 = v133;
LABEL_164:
    v140 = __clz(__rbit64(v116));
    v116 &= v116 - 1;
    v141 = v209;
    v142 = *(v117 + 48) + *(v209 + 72) * (v140 | (v133 << 6));
    v143 = v214;
    (*(v209 + 16))(v214, v142, v55);
    v144 = *(v141 + 56);
    v145 = v143;
    v144(v143, 0, 1, v55);
LABEL_171:
    v149 = *v53;
    (*v53)(v3, v145, v55);
    if ((v122 & 1) == 0)
    {
      v150 = v220;
      v151 = HIBYTE(v220) & 0xF;
      if ((v220 & 0x2000000000000000) == 0)
      {
        v151 = v219 & 0xFFFFFFFFFFFFLL;
      }

      if (v151 || (v219 & ~v220 & 0x2000000000000000) != 0)
      {
        if (v220 & 0x2000000000000000) == 0 || (v152 = specialized _SmallString.init(_:appending:)(v219, v220, 0x202CuLL, 0xE200000000000000), (v154))
        {
          0xE200000000000000;
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v123, v124, v125, v126, v127, v128, v129, v130);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        }

        else
        {
          v155 = v152;
          v156 = v153;
          v150;
          0xE200000000000000;
          v219 = v155;
          v220 = v156;
        }

        v55 = v208;
      }

      else
      {
        v220;
        v219 = 8236;
        v220 = 0xE200000000000000;
      }
    }

    v131 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v131, v216);
    *(inited + 16) = v210;
    *(inited + 56) = v55;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v149(boxed_opaque_existential_0Tm, v3, v55);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v219);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v122 = 0;
    v117 = v211;
  }

  v134 = *(object + 216);
  v136 = countAndFlagsBits;
  v135 = v214;
  if ((v134 & 0x8000000000000000) == 0)
  {
    if (v134 != *(object + 224))
    {
      v138 = *(object + 24);
      if (v138)
      {
        if (!(v134 >> 60))
        {
          goto LABEL_167;
        }

        __break(1u);
LABEL_198:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_228:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v137 = [*(object + 208) countByEnumeratingWithState:object + 16 objects:object + 80 count:16];
    *(object + 224) = v137;
    if (v137)
    {
      *(object + 216) = 0;
      v138 = *(object + 24);
      if (v138)
      {
        v134 = 0;
LABEL_167:
        v146 = (v138 + 8 * v134);
        if ((v146 & 7) == 0)
        {
          v147 = *v146;
          *(object + 216) = v134 + 1;
          swift_unknownObjectRetain(v147);
          if (_swift_isClassOrObjCExistentialType(v55, v55))
          {
            v217 = v147;
            v145 = v214;
            swift_dynamicCast(v214, &v217, qword_1EEEAC710, v55, 7uLL);
            v148 = *v136;
          }

          else
          {
            v148 = *v136;
            v148(v203, 1, 1, v55);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v147, v55, v203);
            (*v200)(v202, v203, v201);
            if ((*v199)(v202, 1, v55) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v198)(v203, v201);
            swift_unknownObjectRelease(v147);
            v145 = v214;
            (*v53)(v214, v202, v55);
          }

          v148(v145, 0, 1, v55);
          v3 = v206;
          goto LABEL_171;
        }

        goto LABEL_198;
      }

      goto LABEL_228;
    }

    *(object + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v117);
  (*v136)(v135, 1, 1, v55);
LABEL_183:
  v157 = v220;
  v158 = HIBYTE(v220) & 0xF;
  if ((v220 & 0x2000000000000000) == 0)
  {
    v158 = v219 & 0xFFFFFFFFFFFFLL;
  }

  v159 = v205;
  if (v158 || (v219 & ~v220 & 0x2000000000000000) != 0)
  {
    if ((v220 & 0x2000000000000000) != 0 && (v160 = specialized _SmallString.init(_:appending:)(v219, v220, 0x295DuLL, 0xE200000000000000), (v161 & 1) == 0))
    {
      v171 = v160;
      v157;
      v159;
      0xE200000000000000;
      return v171;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10589, 0xE200000000000000, 0, 2, v162, v163, v164, v165, v166, v167, v168, v169);
      v159;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v219;
    }
  }

  else
  {
    v220;
    v159;
    return 10589;
  }
}

uint64_t Dictionary.Values.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  inited = a1;
  v127 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v134 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Optional(0, v6, v6, v7);
  v8 = *(v119 - 8);
  v9 = MEMORY[0x1EEE9AC00](v119 - 8);
  v120 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v118 = &v115 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v115 - v13);
  0xE000000000000000;
  v137 = 91;
  v138 = 0xE100000000000000;
  if ((inited & 0xC000000000000001) != 0)
  {
    if (inited < 0)
    {
      v15 = inited;
    }

    else
    {
      v15 = inited & 0xFFFFFFFFFFFFFF8;
    }

    v16 = type metadata accessor for __CocoaDictionary.Iterator();
    v17 = swift_allocObject(v16, 0xE8, 7uLL);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *(v17 + 208) = v15;
    *(v17 + 216) = 0;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0u;
    *(v17 + 192) = 0u;
    *(v17 + 224) = 0;
    v21 = v17 | 0x8000000000000000;
  }

  else
  {
    v22 = -1 << *(inited + 32);
    v19 = ~v22;
    v18 = inited + 64;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(inited + 64);
    v21 = inited;
  }

  v123 = v21 & 0x7FFFFFFFFFFFFFFFLL;
  v117 = (v8 + 16);
  v116 = (v127 + 48);
  v115 = (v8 + 8);
  v25 = (v127 + 56);
  v26 = (v127 + 32);
  v122 = v19;
  v126 = (v19 + 64) >> 6;
  v125 = v127 + 16;
  inited;
  v133 = 0;
  v27 = 1;
  v132 = xmmword_18071DB30;
  v121 = xmmword_18071DB40;
  v129 = v25;
  v130 = v21;
  v131 = v26;
  v124 = v18;
  while ((v21 & 0x8000000000000000) == 0)
  {
    if (v20)
    {
      v33 = v133;
      goto LABEL_27;
    }

    v38 = v133;
    do
    {
      v33 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_131:
        inited = _StringGuts._foreignConvertedToSmall()(inited, v3);
        v26 = v108;
        goto LABEL_118;
      }

      if (v33 >= v126)
      {
        (*v25)(v14, 1, 1, v3);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v21);
        goto LABEL_92;
      }

      v20 = *(v18 + 8 * v33);
      ++v38;
    }

    while (!v20);
    v133 = v33;
LABEL_27:
    v39 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v40 = v127;
    (*(v127 + 16))(v14, *(v21 + 56) + *(v127 + 72) * (v39 | (v33 << 6)), v3);
    (*(v40 + 56))(v14, 0, 1, v3);
LABEL_35:
    v29 = v134;
    v28 = *v26;
    (*v26)(v134, v14, v3);
    if (v27)
    {
      goto LABEL_13;
    }

    v128 = v28;
    v48 = v14;
    v49 = v29;
    v50 = v137;
    inited = v138;
    v51 = HIBYTE(v138) & 0xF;
    v52 = v137 & 0xFFFFFFFFFFFFLL;
    if ((v138 & 0x2000000000000000) != 0)
    {
      v53 = HIBYTE(v138) & 0xF;
    }

    else
    {
      v53 = v137 & 0xFFFFFFFFFFFFLL;
    }

    if (!v53 && (v137 & ~v138 & 0x2000000000000000) == 0)
    {
      v138;
      v137 = 8236;
      v138 = 0xE200000000000000;
      v29 = v49;
      v14 = v48;
      v18 = v124;
      v25 = v129;
      v21 = v130;
      goto LABEL_77;
    }

    if ((v138 & 0x2000000000000000) == 0 || v51 > 0xD)
    {
      0xE200000000000000;
      if ((inited & 0x1000000000000000) != 0)
      {
        v87 = String.UTF8View._foreignCount()();
        v62 = v87 + 2;
        if (!__OFADD__(v87, 2))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v61 = __OFADD__(v53, 2);
        v62 = v53 + 2;
        if (!v61)
        {
LABEL_48:
          if ((*&v50 & ~inited & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(inited & 0xFFFFFFFFFFFFFFFLL))
          {
            v63 = _StringGuts.nativeUnusedCapacity.getter(*&v50, inited);
            if (v64)
            {
              goto LABEL_144;
            }

            v14 = v48;
            v18 = v124;
            if (v62 > 15)
            {
              goto LABEL_11;
            }

            if ((inited & 0x2000000000000000) == 0)
            {
              if (v63 < 2)
              {
LABEL_54:
                if ((inited & 0x1000000000000000) != 0)
                {
                  v50 = _StringGuts._foreignConvertedToSmall()(*&v50, inited);
                  v66 = v82;
                }

                else
                {
                  if ((*&v50 & 0x1000000000000000) != 0)
                  {
                    v65 = ((inited & 0xFFFFFFFFFFFFFFFLL) + 32);
                  }

                  else
                  {
                    v65 = _StringObject.sharedUTF8.getter(*&v50, inited);
                    v52 = v90;
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v65, v52, &v135, v60);
                  v66 = *(&v135 + 1);
                  v50 = v135;
                }

LABEL_61:
                v67 = 0xE200000000000000;
                0xE200000000000000;
                v68._rawBits = 131073;
                v69._rawBits = 1;
                v70._rawBits = _StringGuts.validateScalarRange(_:)(v69, v68, 0x202CuLL, 0xE200000000000000)._rawBits;
                if (v70._rawBits < 0x10000)
                {
                  v70._rawBits |= 3;
                }

                if (v70._rawBits >> 16 || (v73 = 8236, (v71._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
                {
                  v73 = specialized static String._copying(_:)(v70._rawBits, v71._rawBits, 0x202CuLL, 0xE200000000000000);
                  v67 = v74;
                  0xE200000000000000;
                }

                if ((v67 & 0x2000000000000000) != 0)
                {
                  v67;
                }

                else if ((v67 & 0x1000000000000000) != 0)
                {
                  v73 = _StringGuts._foreignConvertedToSmall()(v73, v67);
                  v92 = v91;
                  v67;
                  v67 = v92;
                }

                else
                {
                  if ((v73 & 0x1000000000000000) != 0)
                  {
                    v88 = ((v67 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v89 = v73 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v88 = _StringObject.sharedUTF8.getter(v73, v67);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v88, v89, &v135, v72);
                  v67;
                  v67 = *(&v135 + 1);
                  v73 = v135;
                }

                v75 = specialized _SmallString.init(_:appending:)(*&v50, v66, v73, v67);
                if ((v77 & 1) == 0)
                {
                  v78 = v75;
                  v79 = v76;
                  inited;
                  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
                  v137 = v78;
                  v138 = v79;
                  goto LABEL_12;
                }

LABEL_144:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_11:
              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v62, 2);
              v135 = v121;
              0xE200000000000000;
              _StringGuts.appendInPlace(_:isASCII:)(&v135, 2uLL, 1);
              0xE200000000000000;
LABEL_12:
              v25 = v129;
              v21 = v130;
              v26 = v131;
              v28 = v128;
              v29 = v134;
              goto LABEL_13;
            }
          }

          else
          {
            v14 = v48;
            v18 = v124;
            if (v62 > 15)
            {
              goto LABEL_11;
            }

            if ((inited & 0x2000000000000000) == 0)
            {
              goto LABEL_54;
            }
          }

          v66 = inited;
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_135:
      v109 = String.UTF8View._foreignCount()();
      v96 = v109 + 1;
      if (!__OFADD__(v109, 1))
      {
        goto LABEL_104;
      }

LABEL_137:
      __break(1u);
LABEL_138:
      if ((v96 & 0x1000000000000000) != 0)
      {
        v20 = _StringGuts._foreignConvertedToSmall()(v20, v96);
        v114 = v113;
        v96;
        v96 = v114;
      }

      else
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          v110 = ((v96 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v111 = v20 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v110 = _StringObject.sharedUTF8.getter(v20, v96);
        }

        closure #1 in _StringGuts._convertedToSmall()(v110, v111, &v135, v95);
        v96;
        v96 = *(&v135 + 1);
        v20 = v135;
      }

      goto LABEL_125;
    }

    v54 = 8 * (HIBYTE(v138) & 7);
    v55 = (-255 << v54) - 1;
    v56 = 44 << v54;
    v57 = v51 + 1;
    if (v51 >= 8)
    {
      v59 = v55 & v138 | v56;
      v58 = 8 * (v57 & 7);
      v25 = v129;
LABEL_71:
      v80 = ((-255 << v58) - 1) & v59 | (32 << v58);
    }

    else
    {
      v50 = (v55 & v137 | v56);
      v25 = v129;
      if (v51 == 7)
      {
        v58 = 0;
        v59 = v138;
        goto LABEL_71;
      }

      v50 = (((-255 << (8 * (v57 & 7u))) - 1) & *&v50 | (32 << (8 * (v57 & 7u))));
      v80 = v138;
    }

    v138;
    0xE200000000000000;
    v81 = 0xE000000000000000;
    if (*&v50 & 0x8080808080808080 | v80 & 0x80808080808080)
    {
      v81 = 0xA000000000000000;
    }

    v137 = v50;
    v138 = (v81 & 0xFF00000000000000 | (v51 << 56) | v80 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v29 = v49;
    v14 = v48;
    v18 = v124;
    v21 = v130;
LABEL_77:
    v26 = v131;
    v28 = v128;
LABEL_13:
    v30 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    v31 = v29;
    inited = swift_initStackObject(v30, v136);
    *(inited + 16) = v132;
    *(inited + 56) = v3;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    v28(boxed_opaque_existential_0Tm, v31, v3);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v137);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm((inited + 32));
    v27 = 0;
  }

  v34 = v123;
  v35 = *(v123 + 216);
  if ((v35 & 0x8000000000000000) == 0)
  {
    if (v35 != *(v123 + 224))
    {
      v37 = *(v123 + 24);
      if (!v37)
      {
        goto LABEL_143;
      }

      if (v35 >> 60)
      {
        __break(1u);
        goto LABEL_133;
      }

LABEL_30:
      v41 = (v37 + 8 * v35);
      if ((v41 & 7) == 0)
      {
        v42 = *v41;
        v34[27] = v35 + 1;
        v43 = v34[26];
        swift_unknownObjectRetain(v42);
        v44 = [v43 &sel:v42 objectForKey:?];
        if (v44)
        {
          v45 = v44;
          swift_unknownObjectRelease(v42);
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v3, v3);
          v25 = v129;
          if (isClassOrObjCExistentialType)
          {
            *&v135 = v45;
            swift_dynamicCast(v14, &v135, qword_1EEEAC710, v3, 7uLL);
            v47 = *v25;
          }

          else
          {
            v47 = *v129;
            v83 = v118;
            (*v129)(v118, 1, 1, v3);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v45, v3, v83);
            v84 = v120;
            v85 = v25;
            v86 = v119;
            (*v117)(v120, v83, v119);
            if ((*v116)(v84, 1, v3) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            (*v115)(v83, v86);
            swift_unknownObjectRelease(v45);
            (*v131)(v14, v120, v3);
            v18 = v124;
            v25 = v85;
          }

          v47(v14, 0, 1, v3);
          v21 = v130;
          v26 = v131;
          goto LABEL_35;
        }

LABEL_143:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_133:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v36 = [*(v123 + 208) countByEnumeratingWithState:v123 + 16 objects:v123 + 80 count:16];
    v34[28] = v36;
    if (v36)
    {
      v34[27] = 0;
      v37 = v34[3];
      if (!v37)
      {
        goto LABEL_143;
      }

      v35 = 0;
      goto LABEL_30;
    }

    v34[27] = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v21);
  (*v25)(v14, 1, 1, v3);
LABEL_92:
  inited = v137;
  v3 = v138;
  v20 = HIBYTE(v138) & 0xF;
  v26 = (v137 & 0xFFFFFFFFFFFFLL);
  if ((v138 & 0x2000000000000000) != 0)
  {
    v93 = HIBYTE(v138) & 0xF;
  }

  else
  {
    v93 = v137 & 0xFFFFFFFFFFFFLL;
  }

  if (!v93 && (v137 & ~v138 & 0x2000000000000000) == 0)
  {
    v138;
    return 93;
  }

  if ((v138 & 0x2000000000000000) != 0 && v20 != 15)
  {
    if (v20 < 8)
    {
      inited = ((-255 << (8 * (HIBYTE(v138) & 7u))) - 1) & v137 | (93 << (8 * (HIBYTE(v138) & 7u)));
    }

    v138;
    0xE100000000000000;
    return inited;
  }

  0xE100000000000000;
  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_135;
  }

  v61 = __OFADD__(v93, 1);
  v96 = v93 + 1;
  if (v61)
  {
    goto LABEL_137;
  }

LABEL_104:
  if ((inited & ~v3 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v3 & 0xFFFFFFFFFFFFFFFLL))
  {
    v97 = _StringGuts.nativeUnusedCapacity.getter(inited, v3);
    if (v98)
    {
      goto LABEL_144;
    }

    if (v96 > 15)
    {
      goto LABEL_115;
    }

    if ((v3 & 0x2000000000000000) == 0)
    {
      if (v97 < 1)
      {
        goto LABEL_110;
      }

LABEL_115:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v96, 1);
      v135 = xmmword_18071DB50;
      closure #1 in _StringGuts.append(_:)(&v135, 1uLL, &v137, 1);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v137;
    }

    goto LABEL_117;
  }

  if (v96 > 15)
  {
    goto LABEL_115;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
LABEL_117:
    v26 = v3;
    goto LABEL_118;
  }

LABEL_110:
  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_131;
  }

  if ((inited & 0x1000000000000000) != 0)
  {
    v99 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v99 = _StringObject.sharedUTF8.getter(inited, v3);
    v26 = v112;
  }

  closure #1 in _StringGuts._convertedToSmall()(v99, v26, &v135, v95);
  v26 = *(&v135 + 1);
  inited = v135;
LABEL_118:
  v96 = 0xE100000000000000;
  0xE100000000000000;
  v20 = 93;
  v100._rawBits = 1;
  v101._rawBits = 65537;
  v102._rawBits = _StringGuts.validateScalarRange(_:)(v100, v101, 0x5DuLL, 0xE100000000000000)._rawBits;
  if (v102._rawBits < 0x10000)
  {
    v102._rawBits |= 3;
  }

  if (v102._rawBits >> 16 || (v103._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
  {
    v20 = specialized static String._copying(_:)(v102._rawBits, v103._rawBits, 0x5DuLL, 0xE100000000000000);
    v96 = v104;
    0xE100000000000000;
  }

  if ((v96 & 0x2000000000000000) == 0)
  {
    goto LABEL_138;
  }

  v96;
LABEL_125:
  v105 = specialized _SmallString.init(_:appending:)(inited, v26, v20, v96);
  if (v106)
  {
    goto LABEL_144;
  }

  v107 = v105;
  v3;
  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  return v107;
}

uint64_t Dictionary.Values.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v212 = a1;
  v207 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v210 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = v5;
  v8 = type metadata accessor for Optional(0, v6, v5, v7);
  v209 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v203 = &v198 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v214 = (&v198 - v14);
  v219 = 0;
  v220 = 0xE000000000000000;
  v15 = _StringGuts.init(_initialCapacity:)(4);
  inited = v15;
  v18 = v16;
  v217 = v15;
  v218 = v16;
  v19 = HIBYTE(v16) & 0xF;
  v20 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v202 = v8;
  v201 = v11;
  if (!v21 && (v15 & ~v16 & 0x2000000000000000) == 0)
  {
    v16;
    inited = 0;
    v31 = 0xE000000000000000;
    v217 = 0;
LABEL_33:
    v218 = v31;
    goto LABEL_37;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    v16;
    0xE000000000000000;
    v30 = 0xA000000000000000;
    if (!(v18 & 0x80808080808080 | *&inited & 0x8080808080808080))
    {
      v30 = 0xE000000000000000;
    }

    v31 = v30 & 0xFF00000000000000 | (v19 << 56) | v18 & 0xFFFFFFFFFFFFFFLL;
LABEL_32:
    v217 = inited;
    goto LABEL_33;
  }

  0xE000000000000000;
  v23 = v20;
  if ((v18 & 0x1000000000000000) != 0)
  {
    v23 = String.UTF8View._foreignCount()();
    if ((*&inited & 0x2000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((*&inited & 0x2000000000000000) == 0)
  {
    goto LABEL_35;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
  {
    v24 = _StringGuts.nativeUnusedCapacity.getter(*&inited, v18);
    if (v25)
    {
      goto LABEL_220;
    }

    if (v23 <= 15 && (v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (v23 <= 15)
  {
LABEL_13:
    if ((v18 & 0x1000000000000000) != 0)
    {
      v27 = _StringGuts._foreignConvertedToSmall()(*&inited, v18);
      v28 = v32;
    }

    else
    {
      if ((*&inited & 0x1000000000000000) != 0)
      {
        v26 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v26 = _StringObject.sharedUTF8.getter(*&inited, v18);
        v20 = v189;
      }

      closure #1 in _StringGuts._convertedToSmall()(v26, v20, &v215, v22);
      v28 = *(&v215 + 1);
      v27 = v215;
    }

    v3 = 0xE000000000000000;
    0xE000000000000000;
    v33._rawBits = 1;
    v34._rawBits = 1;
    v35._rawBits = _StringGuts.validateScalarRange(_:)(v33, v34, 0, 0xE000000000000000)._rawBits;
    if (v35._rawBits < 0x10000)
    {
      v35._rawBits |= 3;
    }

    if (v35._rawBits >> 16 || v36._rawBits >= 0x10000)
    {
      v38 = specialized static String._copying(_:)(v35._rawBits, v36._rawBits, 0, 0xE000000000000000);
      v3 = v39;
      0xE000000000000000;
    }

    else
    {
      v38 = 0;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v3;
    }

    else if ((v3 & 0x1000000000000000) != 0)
    {
      v38 = _StringGuts._foreignConvertedToSmall()(v38, v3);
      v195 = v194;
      v3;
      v3 = v195;
    }

    else
    {
      if ((v38 & 0x1000000000000000) != 0)
      {
        v185 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v186 = v38 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v185 = _StringObject.sharedUTF8.getter(v38, v3);
      }

      closure #1 in _StringGuts._convertedToSmall()(v185, v186, &v215, v37);
      v3;
      v3 = *(&v215 + 1);
      v38 = v215;
    }

    v40 = specialized _SmallString.init(_:appending:)(v27, v28, v38, v3);
    if (v42)
    {
      goto LABEL_220;
    }

    inited = v40;
    v31 = v41;
    v18;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    goto LABEL_32;
  }

LABEL_36:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v23, 0);
  v215 = 0uLL;
  closure #1 in _StringGuts.append(_:)(&v215, 0, &v217, 1);
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  inited = v217;
  v31 = v218;
LABEL_37:
  v43 = HIBYTE(v31) & 0xF;
  v44 = *&inited & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v45 = *&inited & 0xFFFFFFFFFFFFLL;
  }

  v205 = 0x800000018066CAE0 | 0x8000000000000000;
  if (!v45 && (*&inited & ~v31 & 0x2000000000000000) == 0)
  {
    0x800000018066CAE0 | 0x8000000000000000;
    v31;
    v217 = 0xD000000000000011;
    v218 = 0x800000018066CAE0 | 0x8000000000000000;
    goto LABEL_92;
  }

  v46 = 0x800000018066CAE0 & 0x2000000000000000;
  v3 = (0x800000018066CAE0 >> 56) & 0xF;
  if ((0x800000018066CAE0 & 0x2000000000000000 & v31) == 0 || (v47 = v43 + v3, v43 + v3 > 0xF))
  {
    if (v46)
    {
      v48 = (0x800000018066CAE0 >> 56) & 0xF;
    }

    else
    {
      v48 = 17;
    }

    v49 = v48;
    if ((0x800000018066CAE0 & 0x1000000000000000) != 0)
    {
      v175._rawBits = (v48 << 16) | 1;
      v176._rawBits = 1;
      v177 = v205;
      v178._rawBits = _StringGuts.validateScalarRange(_:)(v176, v175, 0xD000000000000011, v205)._rawBits;
      v213._rawBits = v179;
      if (v178._rawBits >= 0x10000)
      {
        rawBits = v178._rawBits;
      }

      else
      {
        rawBits = v178._rawBits | 3;
      }

      v177;
      v49 = String.UTF8View.distance(from:to:)(rawBits, v213);
      v177;
      if ((v31 & 0x1000000000000000) == 0)
      {
LABEL_49:
        v50 = __OFADD__(v45, v49);
        v51 = v45 + v49;
        if (!v50)
        {
LABEL_50:
          if ((*&inited & ~v31 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v31 & 0xFFFFFFFFFFFFFFFLL))
          {
            v52 = _StringGuts.nativeUnusedCapacity.getter(*&inited, v31);
            if (v53)
            {
              goto LABEL_220;
            }

            if (v51 > 15)
            {
              goto LABEL_61;
            }

            if ((v31 & 0x2000000000000000) == 0)
            {
              if (v52 < v49)
              {
LABEL_56:
                if ((v31 & 0x1000000000000000) != 0)
                {
                  goto LABEL_190;
                }

                v54 = v205;
                if ((*&inited & 0x1000000000000000) != 0)
                {
                  v55 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v55 = _StringObject.sharedUTF8.getter(*&inited, v31);
                  v44 = v190;
                }

                closure #1 in _StringGuts._convertedToSmall()(v55, v44, &v215, v29);
                v3 = *(&v215 + 1);
                inited = v215;
                goto LABEL_76;
              }

LABEL_61:
              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v51, v49);
              if ((0x800000018066CAE0 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignAppendInPlace(_:)(0xD000000000000011, v205, 0, v48);
              }

              else if (v46)
              {
                *&v215 = 0xD000000000000011;
                *(&v215 + 1) = 0x800000018066CAE0 & 0xFFFFFFFFFFFFF0;
                closure #1 in _StringGuts.append(_:)(&v215, (0x800000018066CAE0 >> 56) & 0xF, &v217, (0x800000018066CAE0 & 0x4000000000000000) != 0);
              }

              else
              {
                v171 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 17, (0x800000018066CAE0 & 0xFFFFFFFFFFFFFF0) + 32, 17);
                closure #1 in _StringGuts.append(_:)(v171, v172, &v217, 1);
              }

              goto LABEL_92;
            }
          }

          else
          {
            if (v51 > 15)
            {
              goto LABEL_61;
            }

            if ((v31 & 0x2000000000000000) == 0)
            {
              goto LABEL_56;
            }
          }

          v3 = v31;
          goto LABEL_75;
        }

        goto LABEL_200;
      }
    }

    else if ((v31 & 0x1000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v181 = String.UTF8View._foreignCount()();
    v51 = v181 + v49;
    if (!__OFADD__(v181, v49))
    {
      goto LABEL_50;
    }

LABEL_200:
    __break(1u);
LABEL_201:
    v182 = String.UTF8View._foreignCount()();
    v83 = v182 + 2;
    if (!__OFADD__(v182, 2))
    {
      goto LABEL_104;
    }

LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v3)
  {
    v56 = 0;
    v57 = 0;
    v58 = 8 * v43;
    v59 = v31;
    do
    {
      v60 = (0x800000018066CAE0 | 0x8000000000000000) >> (v56 & 0x38);
      if (v57 < 8)
      {
        v60 = 0xD000000000000011 >> v56;
      }

      v61 = (v60 << (v58 & 0x38)) | ((-255 << (v58 & 0x38)) - 1) & v59;
      v62 = (v60 << v58) | ((-255 << v58) - 1) & *&inited;
      if (v43 <= 7)
      {
        inited = v62;
      }

      else
      {
        v59 = v61;
      }

      ++v43;
      v58 += 8;
      v56 += 8;
      ++v57;
    }

    while (8 * v3 != v56);
  }

  else
  {
    v59 = v31;
  }

  v31;
  v74 = 0xA000000000000000;
  if (!(*&inited & 0x8080808080808080 | v59 & 0x80808080808080))
  {
    v74 = 0xE000000000000000;
  }

  v217 = inited;
  v218 = v74 & 0xFF00000000000000 | (v47 << 56) | v59 & 0xFFFFFFFFFFFFFFLL;
LABEL_92:
  inited = v217;
  v31 = v218;
  v75 = HIBYTE(v218) & 0xF;
  v48 = *&v217 & 0xFFFFFFFFFFFFLL;
  if ((v218 & 0x2000000000000000) != 0)
  {
    v76 = HIBYTE(v218) & 0xF;
  }

  else
  {
    v76 = *&v217 & 0xFFFFFFFFFFFFLL;
  }

  if (!v76 && (*&v217 & ~v218 & 0x2000000000000000) == 0)
  {
    v218;
    v88 = 0xE200000000000000;
    inited = 23336;
    v48 = v211;
    goto LABEL_131;
  }

  if ((v218 & 0x2000000000000000) != 0 && v75 <= 0xD)
  {
    v77 = 8 * (HIBYTE(v218) & 7);
    v78 = (-255 << v77) - 1;
    v79 = 40 << v77;
    v80 = v75 + 1;
    if (v75 >= 8)
    {
      v82 = v78 & v218 | v79;
      v81 = 8 * (v80 & 7);
      v48 = v211;
    }

    else
    {
      inited = (v78 & *&v217 | v79);
      v48 = v211;
      if (v75 != 7)
      {
        inited = (((-255 << (8 * (v80 & 7u))) - 1) & *&inited | (91 << (8 * (v80 & 7u))));
        v89 = v218;
        goto LABEL_128;
      }

      v81 = 0;
      v82 = v218;
    }

    v89 = ((-255 << v81) - 1) & v82 | (91 << v81);
LABEL_128:
    v218;
    0xE200000000000000;
    v101 = 0xA000000000000000;
    if (!(*&inited & 0x8080808080808080 | v89 & 0x80808080808080))
    {
      v101 = 0xE000000000000000;
    }

    v88 = (v101 & 0xFF00000000000000 | (v75 << 56) | v89 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    goto LABEL_131;
  }

  0xE200000000000000;
  if ((v31 & 0x1000000000000000) != 0)
  {
    goto LABEL_201;
  }

  v50 = __OFADD__(v76, 2);
  v83 = v76 + 2;
  if (v50)
  {
    goto LABEL_203;
  }

LABEL_104:
  if ((*&inited & ~v31 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v31 & 0xFFFFFFFFFFFFFFFLL))
  {
    v84 = _StringGuts.nativeUnusedCapacity.getter(*&inited, v31);
    if (v85)
    {
      goto LABEL_220;
    }

    if (v83 <= 15)
    {
      if ((v31 & 0x2000000000000000) == 0)
      {
        if (v84 < 2)
        {
          goto LABEL_110;
        }

        goto LABEL_115;
      }

LABEL_119:
      v87 = v31;
LABEL_120:
      0xE200000000000000;
      v90._rawBits = 1;
      v91._rawBits = 131073;
      v92._rawBits = _StringGuts.validateScalarRange(_:)(v90, v91, 0x5B28uLL, 0xE200000000000000)._rawBits;
      if (v92._rawBits < 0x10000)
      {
        v92._rawBits |= 3;
      }

      v94 = Substring.description.getter(v92._rawBits, v93._rawBits, 0x5B28uLL, 0xE200000000000000);
      v96 = v95;
      0xE200000000000000;
      if ((v96 & 0x2000000000000000) != 0)
      {
        v96;
      }

      else if ((v96 & 0x1000000000000000) != 0)
      {
        v94 = _StringGuts._foreignConvertedToSmall()(v94, v96);
        v197 = v196;
        v96;
        v96 = v197;
      }

      else
      {
        if ((v94 & 0x1000000000000000) != 0)
        {
          v187 = ((v96 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v188 = v94 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v187 = _StringObject.sharedUTF8.getter(v94, v96);
        }

        closure #1 in _StringGuts._convertedToSmall()(v187, v188, &v215, v97);
        v96;
        v96 = *(&v215 + 1);
        v94 = v215;
      }

      v98 = specialized _SmallString.init(_:appending:)(*&inited, v87, v94, v96);
      if (v100)
      {
        goto LABEL_220;
      }

      inited = v98;
      v88 = v99;
      v31;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      v48 = v211;
      goto LABEL_131;
    }
  }

  else if (v83 <= 15)
  {
    if ((v31 & 0x2000000000000000) == 0)
    {
LABEL_110:
      if ((v31 & 0x1000000000000000) != 0)
      {
        inited = _StringGuts._foreignConvertedToSmall()(*&inited, v31);
        v87 = v174;
      }

      else
      {
        if ((*&inited & 0x1000000000000000) != 0)
        {
          v86 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v86 = _StringObject.sharedUTF8.getter(*&inited, v31);
          v48 = v191;
        }

        closure #1 in _StringGuts._convertedToSmall()(v86, v48, &v215, v67);
        v87 = *(&v215 + 1);
        inited = v215;
      }

      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_115:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v83, 2);
  v215 = xmmword_18071DC30;
  closure #1 in _StringGuts.append(_:)(&v215, 2uLL, &v217, 1);
  swift_bridgeObjectRelease_n(0xE200000000000000, 2);
  inited = v217;
  v88 = v218;
  v48 = v211;
LABEL_131:
  0xE000000000000000;
  v219 = inited;
  v220 = v88;
  inited = v212;
  if ((v212 & 0xC000000000000001) != 0)
  {
    if (v212 < 0)
    {
      v102 = v212;
    }

    else
    {
      v102 = v212 & 0xFFFFFFFFFFFFFF8;
    }

    v103 = type metadata accessor for __CocoaDictionary.Iterator();
    v104 = swift_allocObject(v103, 0xE8, 7uLL);
    v105 = 0;
    v106 = 0;
    v31 = 0;
    *(v104 + 208) = v102;
    *(v104 + 216) = 0;
    *(v104 + 16) = 0u;
    *(v104 + 32) = 0u;
    *(v104 + 48) = 0u;
    *(v104 + 64) = 0u;
    *(v104 + 80) = 0u;
    *(v104 + 96) = 0u;
    *(v104 + 112) = 0u;
    *(v104 + 128) = 0u;
    *(v104 + 144) = 0u;
    *(v104 + 160) = 0u;
    *(v104 + 176) = 0u;
    *(v104 + 192) = 0u;
    *(v104 + 224) = 0;
    v107 = v104 | 0x8000000000000000;
  }

  else
  {
    v108 = -1 << *(v212 + 32);
    v106 = ~v108;
    v105 = v212 + 64;
    v109 = -v108;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    else
    {
      v110 = -1;
    }

    v31 = v110 & *(v212 + 64);
    v107 = v212;
  }

  v111 = v107 & 0x7FFFFFFFFFFFFFFFLL;
  v213._rawBits = v207 + 56;
  v112 = v210;
  v200 = (v209 + 16);
  v199 = (v207 + 48);
  v198 = (v209 + 8);
  v113 = (v207 + 32);
  v204 = v106;
  v114 = (v106 + 64) >> 6;
  v206 = v207 + 16;
  *&inited;
  v212 = 0;
  v115 = 1;
  v208 = xmmword_18071DB30;
  v209 = v107;
  while ((v107 & 0x8000000000000000) == 0)
  {
    if (v31)
    {
      v126 = v212;
      goto LABEL_157;
    }

    v131 = v212;
    do
    {
      v126 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        __break(1u);
LABEL_190:
        inited = _StringGuts._foreignConvertedToSmall()(*&inited, v31);
        v3 = v173;
LABEL_75:
        v54 = v205;
LABEL_76:
        v44 = 0xD000000000000011;
        v54;
        v63._rawBits = 1;
        v64._rawBits = (v48 << 16) | 1;
        v65._rawBits = _StringGuts.validateScalarRange(_:)(v63, v64, 0xD000000000000011, v54)._rawBits;
        if (v65._rawBits < 0x10000)
        {
          v65._rawBits |= 3;
        }

        if (v65._rawBits >> 16 || v66._rawBits >> 16 != v48)
        {
          v44 = specialized static String._copying(_:)(v65._rawBits, v66._rawBits, 0xD000000000000011, v54);
          v48 = v68;
          v54;
        }

        else
        {
          v48 = v54;
        }

        if ((v48 & 0x2000000000000000) != 0)
        {
          v48;
          goto LABEL_86;
        }

LABEL_204:
        if ((v48 & 0x1000000000000000) != 0)
        {
          v44 = _StringGuts._foreignConvertedToSmall()(v44, v48);
          v193 = v192;
          v48;
          v48 = v193;
        }

        else
        {
          if ((v44 & 0x1000000000000000) != 0)
          {
            v183 = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v184 = v44 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v183 = _StringObject.sharedUTF8.getter(v44, v48);
          }

          closure #1 in _StringGuts._convertedToSmall()(v183, v184, &v215, v67);
          v48;
          v48 = *(&v215 + 1);
          v44 = v215;
        }

LABEL_86:
        v69 = specialized _SmallString.init(_:appending:)(*&inited, v3, v44, v48);
        if ((v71 & 1) == 0)
        {
          v72 = v69;
          v73 = v70;
          v31;
          v217 = v72;
          v218 = v73;
          goto LABEL_92;
        }

LABEL_220:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v126 >= v114)
      {
        (*v213._rawBits)(v214, 1, 1, v48);
        _sSh8IteratorV8_VariantOySS__GWOe_0(v107);
        goto LABEL_177;
      }

      v31 = *(v105 + 8 * v126);
      ++v131;
    }

    while (!v31);
    v212 = v126;
LABEL_157:
    v132 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v133 = v207;
    v134 = *(v107 + 56) + *(v207 + 72) * (v132 | (v126 << 6));
    v135 = v214;
    (*(v207 + 16))(v214, v134, v48);
    v136 = *(v133 + 56);
    v137 = v135;
    v136(v135, 0, 1, v48);
LABEL_165:
    v146 = *v113;
    (*v113)(v112, v137, v48);
    if ((v115 & 1) == 0)
    {
      v147 = v220;
      v148 = HIBYTE(v220) & 0xF;
      if ((v220 & 0x2000000000000000) == 0)
      {
        v148 = v219 & 0xFFFFFFFFFFFFLL;
      }

      if (v148 || (v219 & ~v220 & 0x2000000000000000) != 0)
      {
        if (v220 & 0x2000000000000000) == 0 || (v149 = specialized _SmallString.init(_:appending:)(v219, v220, 0x202CuLL, 0xE200000000000000), (v151))
        {
          0xE200000000000000;
          _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v116, v117, v118, v119, v120, v121, v122, v123);
          swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        }

        else
        {
          v152 = v149;
          v153 = v150;
          v147;
          0xE200000000000000;
          v219 = v152;
          v220 = v153;
        }

        v112 = v210;
        v48 = v211;
      }

      else
      {
        v220;
        v219 = 8236;
        v220 = 0xE200000000000000;
      }
    }

    v124 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v124, v216);
    *(*&inited + 16) = v208;
    *(*&inited + 56) = v48;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((*&inited + 32));
    v146(boxed_opaque_existential_0Tm, v112, v48);
    specialized _debugPrint<A>(_:separator:terminator:to:)(*&inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v219);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(*&inited);
    __swift_destroy_boxed_opaque_existential_1Tm((*&inited + 32));
    v115 = 0;
    v107 = v209;
  }

  v127 = *(v111 + 216);
  v128 = v214;
  if ((v127 & 0x8000000000000000) == 0)
  {
    if (v127 != *(v111 + 224))
    {
      v130 = *(v111 + 24);
      if (!v130)
      {
        goto LABEL_219;
      }

      if (v127 >> 60)
      {
        __break(1u);
        goto LABEL_193;
      }

LABEL_160:
      v138 = (v130 + 8 * v127);
      if ((v138 & 7) == 0)
      {
        v139 = *v138;
        *(v111 + 216) = v127 + 1;
        v140 = *(v111 + 208);
        swift_unknownObjectRetain(v139);
        v141 = [v140 &sel:v139 objectForKey:?];
        if (v141)
        {
          v142 = v141;
          swift_unknownObjectRelease(v139);
          v143 = v211;
          if (_swift_isClassOrObjCExistentialType(v211, v211))
          {
            v217 = v142;
            v137 = v214;
            swift_dynamicCast(v214, &v217, qword_1EEEAC710, v143, 7uLL);
            v144 = *v213._rawBits;
            v145 = v143;
          }

          else
          {
            v144 = *v213._rawBits;
            v154 = v203;
            (*v213._rawBits)(v203, 1, 1, v143);
            _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v142, v143, v154);
            v155 = v201;
            (*v200)(v201, v203, v202);
            if ((*v199)(v155, 1, v143) == 1)
            {
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v145 = v143;
            (*v198)(v203, v202);
            swift_unknownObjectRelease(v142);
            v137 = v214;
            (*v113)(v214, v201, v143);
          }

          v144(v137, 0, 1, v145);
          v48 = v145;
          v112 = v210;
          goto LABEL_165;
        }

LABEL_219:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_193:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v129 = [*(v111 + 208) countByEnumeratingWithState:v111 + 16 objects:v111 + 80 count:16];
    *(v111 + 224) = v129;
    if (v129)
    {
      *(v111 + 216) = 0;
      v130 = *(v111 + 24);
      if (!v130)
      {
        goto LABEL_219;
      }

      v127 = 0;
      goto LABEL_160;
    }

    *(v111 + 216) = -1;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v107);
  (*v213._rawBits)(v128, 1, 1, v48);
LABEL_177:
  v156 = v220;
  v157 = HIBYTE(v220) & 0xF;
  if ((v220 & 0x2000000000000000) == 0)
  {
    v157 = v219 & 0xFFFFFFFFFFFFLL;
  }

  v158 = v205;
  if (v157 || (v219 & ~v220 & 0x2000000000000000) != 0)
  {
    if ((v220 & 0x2000000000000000) != 0 && (v159 = specialized _SmallString.init(_:appending:)(v219, v220, 0x295DuLL, 0xE200000000000000), (v160 & 1) == 0))
    {
      v170 = v159;
      v156;
      v158;
      0xE200000000000000;
      return v170;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10589, 0xE200000000000000, 0, 2, v161, v162, v163, v164, v165, v166, v167, v168);
      v158;
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
      return v219;
    }
  }

  else
  {
    v220;
    v158;
    return 10589;
  }
}

__n128 Dictionary.Keys.Iterator.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

id __CocoaDictionary.Iterator.nextKey()()
{
  return __CocoaDictionary.Iterator.nextKey()();
}

{
  v1 = *(v0 + 216);
  if ((v1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if (v1 != *(v0 + 224))
  {
    v3 = *(v0 + 24);
    if (v3)
    {
      if (v1 >> 60)
      {
        __break(1u);
        goto LABEL_13;
      }

LABEL_9:
      v4 = (v3 + 8 * v1);
      if ((v4 & 7) == 0)
      {
        v5 = *v4;
        *(v0 + 216) = v1 + 1;
        return swift_unknownObjectRetain(v5);
      }

LABEL_13:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = [*(v0 + 208) countByEnumeratingWithState:v0 + 16 objects:v0 + 80 count:16];
  *(v0 + 224) = result;
  if (result)
  {
    *(v0 + 216) = 0;
    v3 = *(v0 + 24);
    if (v3)
    {
      v1 = 0;
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  *(v0 + 216) = -1;
  return result;
}

atomic_ullong *Dictionary.Keys.Iterator._base.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  result = _sSh8IteratorV8_VariantOyx__GSHRzlWOy_0(v3);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t Dictionary.Values.Iterator.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    v10 = *(result + 24);
    v11 = __CocoaDictionary.Iterator.next()();
    if (v11)
    {
      v13 = v12;
      swift_unknownObjectRelease(v11);
      _forceBridgeFromObjectiveC<A>(_:_:)(v13, v10, v14, a2);
      swift_unknownObjectRelease(v13);
      v15 = *(*(v10 - 1) + 56);
      v16 = a2;
      v17 = 0;
    }

    else
    {
      v15 = *(*(v10 - 1) + 56);
      v16 = a2;
      v17 = 1;
    }

    return v15(v16, v17, 1, v10);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    if (v8)
    {
      v9 = v2[3];
LABEL_13:
      v21 = (v8 - 1) & v8;
      v22 = *(result + 24);
      v23 = *(v22 - 8);
      (*(v23 + 16))(a2, *(v4 + 56) + *(v23 + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v22);
      result = (*(v23 + 56))(a2, 0, 1, v22);
      v20 = v9;
LABEL_14:
      *v2 = v4;
      v2[1] = v5;
      v2[2] = v6;
      v2[3] = v20;
      v2[4] = v21;
    }

    else
    {
      v18 = (v6 + 64) >> 6;
      if (v18 <= v7 + 1)
      {
        v19 = v7 + 1;
      }

      else
      {
        v19 = (v6 + 64) >> 6;
      }

      v20 = v19 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v18)
        {
          result = (*(*(*(result + 24) - 8) + 56))(a2, 1, 1);
          v21 = 0;
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v9);
        ++v7;
        if (v8)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id __CocoaDictionary.Iterator.next()()
{
  v1 = __CocoaDictionary.Iterator.nextKey()();
  if (v1 && ![*(v0 + 208) &sel:v1 objectForKey:?])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v1;
}

uint64_t _NativeDictionary.Iterator.nextValue()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  if (v4)
  {
    v2[4] = (v4 - 1) & v4;
    v5 = __clz(__rbit64(v4)) | (v2[3] << 6);
LABEL_8:
    v10 = *(*v2 + 56);
    v11 = *(result + 24);
    v16 = *(v11 - 8);
    (*(v16 + 16))(a2, v10 + *(v16 + 72) * v5, v11);
    v12 = *(v16 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
LABEL_9:

    return v12(v13, v14, 1, v15);
  }

  else
  {
    v6 = v2[3];
    v7 = (v2[2] + 64) >> 6;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        v15 = *(result + 24);
        v12 = *(*(v15 - 8) + 56);
        v13 = a2;
        v14 = 1;
        goto LABEL_9;
      }

      v2[3] = v8;
      v9 = *(v2[1] + 8 * v8);
      v2[4] = v9;
      ++v6;
      if (v9)
      {
        v2[4] = (v9 - 1) & v9;
        v5 = __clz(__rbit64(v9)) | (v8 << 6);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs11AnyHashableV_ADTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
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
  if (v7)
  {
    do
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
      v11 = v9 | (v3 << 6);
      v12 = a2;
LABEL_12:
      v15 = 40 * v11;
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v11, v38);
      outlined init with copy of AnyHashable(*(v2 + 56) + v15, &v35);
      if (!v38[3])
      {
        return 1;
      }

      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      v18 = v17;
      outlined destroy of AnyHashable(v38);
      if ((v18 & 1) == 0)
      {
        outlined destroy of AnyHashable(&v35);
        return 0;
      }

      v27 = v10;
      outlined init with copy of AnyHashable(*(v12 + 56) + 40 * v16, v32);
      v19 = v33;
      v20 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v20 + 8))(v29, v19, v20);
      v21 = v30;
      v22 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v23 = v36;
      v24 = v37;
      __swift_project_boxed_opaque_existential_0Tm(&v35, v36);
      (*(v24 + 8))(v28, v23, v24);
      v25 = (*(v22 + 16))(v28, v21, v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      outlined destroy of AnyHashable(v32);
      result = outlined destroy of AnyHashable(&v35);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      v7 = v27;
    }

    while (v27);
  }

  v13 = v3;
  v12 = a2;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v14 = *(v4 + 8 * v3);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v11 = __clz(__rbit64(v14)) | (v3 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_SiTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Dictionary<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v100 = a5;
  v101 = a6;
  v102 = *(a4 - 1);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v78 - v14;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - v21;
  swift_getTupleTypeMetadata2(255, v23, a4, "key value ", 0);
  v25 = v24;
  v28 = type metadata accessor for Optional(0, v24, v26, v27);
  v29 = MEMORY[0x1EEE9AC00](v28);
  result = MEMORY[0x1EEE9AC00](v29);
  v35 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v36 = a1;
    }

    else
    {
      v36 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    if (v35)
    {
      if (a2 < 0)
      {
        v37 = a2;
      }

      else
      {
        v37 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return swift_stdlib_NSObject_isEqual(v36, v37);
    }

    v38 = a2;
    goto LABEL_18;
  }

  v90 = &v78 - v33;
  v91 = v34;
  v89 = result;
  v92 = v20;
  v93 = v22;
  v94 = v17;
  if (v35)
  {
    if (a2 < 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    v38 = a1;
LABEL_18:
    v39 = v101;

    return _NativeDictionary<>.isEqual(to:)(v36, v38, a3, a4, v31, v39);
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v96 = v15;
  v86 = a2;
  v40 = 0;
  v82 = a1;
  v41 = *(a1 + 64);
  v80 = a1 + 64;
  v42 = 1 << *(a1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v41;
  v79 = (v42 + 63) >> 6;
  v88 = v25 - 8;
  v45 = v94;
  v81 = v94 + 16;
  v95 = v102 + 16;
  v97 = (v102 + 32);
  v98 = (v94 + 32);
  v87 = (v32 + 32);
  v83 = v101 + 8;
  v84 = (v102 + 8);
  v85 = (v94 + 8);
  v46 = v89;
  while (v44)
  {
    v99 = (v44 - 1) & v44;
    v47 = __clz(__rbit64(v44)) | (v40 << 6);
    v48 = v93;
LABEL_36:
    v53 = v82;
    (*(v45 + 16))(v48, *(v82 + 48) + *(v45 + 72) * v47, a3);
    v54 = *(v53 + 56);
    v55 = v102;
    v56 = v96;
    (*(v102 + 16))(v96, v54 + *(v102 + 72) * v47, a4);
    v57 = *(v25 + 48);
    v58 = *(v45 + 32);
    v59 = v91;
    v58(v91, v48, a3);
    (*(v55 + 32))(v59 + v57, v56, a4);
    v60 = 0;
    v46 = v89;
LABEL_37:
    v61 = *(v25 - 8);
    (*(v61 + 56))(v59, v60, 1, v25);
    v62 = v90;
    (*v87)(v90, v59, v46);
    v63 = (*(v61 + 48))(v62, 1, v25);
    v64 = v63 == 1;
    v65 = v92;
    if (v63 == 1)
    {
      return v64;
    }

    v66 = *(v25 + 48);
    (*v98)(v92, v62, a3);
    (*v97)(v12, &v62[v66], a4);
    v67 = v86;
    v68 = __RawDictionaryStorage.find<A>(_:)(v65, a3, v100);
    v69 = v65;
    v70 = v68;
    v72 = v71;
    (*v85)(v69, a3);
    if ((v72 & 1) == 0)
    {
      (*v84)(v12, a4);
      return 0;
    }

    v73 = v102;
    v74 = *(v67 + 56) + *(v102 + 72) * v70;
    v75 = v96;
    (*(v102 + 16))(v96, v74, a4);
    v76 = (*(v101 + 8))(v75, v12, a4);
    v77 = *(v73 + 8);
    v77(v75, a4);
    result = (v77)(v12, a4);
    v45 = v94;
    v44 = v99;
    if ((v76 & 1) == 0)
    {
      return v64;
    }
  }

  if (v79 <= v40 + 1)
  {
    v49 = v40 + 1;
  }

  else
  {
    v49 = v79;
  }

  v50 = v49 - 1;
  v48 = v93;
  while (1)
  {
    v51 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v51 >= v79)
    {
      v99 = 0;
      v60 = 1;
      v40 = v50;
      v59 = v91;
      goto LABEL_37;
    }

    v52 = *(v80 + 8 * v51);
    ++v40;
    if (v52)
    {
      v99 = (v52 - 1) & v52;
      v47 = __clz(__rbit64(v52)) | (v51 << 6);
      v40 = v51;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t _NativeDictionary<>.isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v82 = a6;
  v79 = a5;
  v91 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v65 - v13;
  v77 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v78 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v65 - v17;
  v90 = v18;
  swift_getTupleTypeMetadata2(255, v18, a4, "key value ", 0);
  v20 = v19;
  v81 = type metadata accessor for Optional(0, v19, v21, v22);
  v23 = MEMORY[0x1EEE9AC00](v81);
  result = MEMORY[0x1EEE9AC00](v23);
  v83 = &v65 - v27;
  if (a2 == a1)
  {
    return 1;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    return 0;
  }

  v80 = v26;
  v28 = 0;
  v69 = a2;
  v29 = *(a2 + 64);
  v66 = a2 + 64;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v75 = v20 - 8;
  v67 = v77 + 16;
  v84 = v91 + 16;
  v87 = (v77 + 32);
  v86 = (v91 + 32);
  v74 = (v25 + 32);
  v71 = (v77 + 8);
  v70 = v82 + 8;
  v72 = (v91 + 8);
  v73 = a1;
  v68 = v11;
  v85 = v20;
  while (v32)
  {
    v88 = (v32 - 1) & v32;
    v34 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_16:
    v41 = v69;
    v43 = v76;
    v42 = v77;
    v44 = v90;
    (*(v77 + 16))(v76, *(v69 + 48) + *(v77 + 72) * v34, v90);
    v45 = v91;
    v46 = v89;
    (*(v91 + 16))(v89, *(v41 + 56) + *(v91 + 72) * v34, a4);
    v20 = v85;
    v47 = *(v85 + 48);
    v48 = *(v42 + 32);
    v37 = v80;
    v48(v80, v43, v44);
    (*(v45 + 32))(v37 + v47, v46, a4);
    v49 = 0;
    v11 = v68;
    v38 = v83;
LABEL_17:
    v50 = *(v20 - 8);
    (*(v50 + 56))(v37, v49, 1, v20);
    (*v74)(v38, v37, v81);
    v51 = (*(v50 + 48))(v38, 1, v20);
    v52 = v51 == 1;
    if (v51 == 1)
    {
      return v52;
    }

    v53 = *(v20 + 48);
    v54 = v78;
    v55 = v90;
    (*v87)(v78, v38, v90);
    (*v86)(v11, &v38[v53], a4);
    v56 = v73;
    v57 = __RawDictionaryStorage.find<A>(_:)(v54, v55, v79);
    v59 = v58;
    (*v71)(v54, v55);
    if ((v59 & 1) == 0)
    {
      (*v72)(v11, a4);
      return 0;
    }

    v60 = v91;
    v61 = *(v56 + 56) + *(v91 + 72) * v57;
    v62 = v89;
    (*(v91 + 16))(v89, v61, a4);
    v63 = (*(v82 + 8))(v62, v11, a4);
    v64 = *(v60 + 8);
    v64(v62, a4);
    result = (v64)(v11, a4);
    v20 = v85;
    v32 = v88;
    if ((v63 & 1) == 0)
    {
      return v52;
    }
  }

  if (v33 <= v28 + 1)
  {
    v35 = v28 + 1;
  }

  else
  {
    v35 = v33;
  }

  v36 = v35 - 1;
  v37 = v80;
  v38 = v83;
  while (1)
  {
    v39 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v39 >= v33)
    {
      v88 = 0;
      v49 = 1;
      v28 = v36;
      goto LABEL_17;
    }

    v40 = *(v66 + 8 * v39);
    ++v28;
    if (v40)
    {
      v88 = (v40 - 1) & v40;
      v34 = __clz(__rbit64(v40)) | (v39 << 6);
      v28 = v39;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _NativeDictionary<>.isEqual(to:)(void *a1, uint64_t a2, uint64_t a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v7 = a3;
  v10 = type metadata accessor for Optional(0, a4, a3, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v52 - v16;
  v17 = *(a4 - 1);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v71 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v52 - v21;
  v22 = *(v7 - 1);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v62 = (&v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v76 = (&v52 - v25);
  v26 = *(a2 + 16);
  v73 = a1;
  if (v26 == [a1 count])
  {
    v58 = v14;
    v59 = v10;
    v27 = 0;
    v70 = a2;
    v28 = a2 + 64;
    v29 = 1 << *(a2 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(a2 + 64);
    v32 = (v29 + 63) >> 6;
    v67 = v17 + 16;
    v68 = v22 + 16;
    v60 = (v22 + 32);
    v65 = (v22 + 8);
    v57 = (v17 + 56);
    v56 = (v11 + 16);
    v55 = (v17 + 48);
    v54 = (v11 + 8);
    v53 = (v17 + 32);
    v63 = v74 + 8;
    v64 = v22;
    v69 = v17;
    v66 = (v17 + 8);
    while (1)
    {
      if (v31)
      {
        v33 = __clz(__rbit64(v31));
        v75 = (v31 - 1) & v31;
        goto LABEL_12;
      }

      v34 = v27;
      do
      {
        v27 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v27 >= v32)
        {
          return 1;
        }

        v35 = *(v28 + 8 * v27);
        ++v34;
      }

      while (!v35);
      v33 = __clz(__rbit64(v35));
      v75 = (v35 - 1) & v35;
LABEL_12:
      v36 = v33 | (v27 << 6);
      v37 = v70;
      (*(v22 + 16))(v76, *(v70 + 48) + *(v22 + 72) * v36, v7);
      (*(v69 + 16))(v77, *(v37 + 56) + *(v69 + 72) * v36, a4);
      if (_swift_isClassOrObjCExistentialType(v7, v7))
      {
        if (v72 == 8)
        {
          v38 = v76;
          v39 = *v76;
          v40 = *v65;
          swift_unknownObjectRetain(*v76);
          v40(v38, v7);
          goto LABEL_15;
        }

LABEL_28:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v47 = v62;
      (*v60)(v62, v76, v7);
      v39 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v47, v7);
LABEL_15:
      v41 = [v73 &sel:v39 objectForKey:?];
      swift_unknownObjectRelease(v39);
      if (!v41)
      {
        break;
      }

      if (_swift_isClassOrObjCExistentialType(a4, a4))
      {
        v42 = v7;
        v78 = v41;
        v43 = v71;
        swift_dynamicCast(v71, &v78, qword_1EEEAC710, a4, 7uLL);
      }

      else
      {
        v48 = v61;
        (*v57)(v61, 1, 1, a4);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v41, a4, v48);
        v49 = v58;
        v50 = v59;
        (*v56)(v58, v48, v59);
        if ((*v55)(v49, 1, a4) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v42 = v7;
        swift_unknownObjectRelease(v41);
        (*v54)(v48, v50);
        v43 = v71;
        (*v53)(v71, v49, a4);
      }

      v44 = v77;
      v45 = (*(v74 + 8))(v77, v43, a4);
      v46 = *v66;
      (*v66)(v44, a4);
      v46(v43, a4);
      v7 = v42;
      v22 = v64;
      v31 = v75;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }

    (*v66)(v77, a4);
  }

  return 0;
}

void specialized Dictionary<>.hash(into:)(__int128 *a1, unint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  a2;
  v9 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = 40 * (__clz(__rbit64(v7)) | (v11 << 6));
      outlined init with copy of AnyHashable(*(a2 + 48) + v12, &v29);
      outlined init with copy of AnyHashable(*(a2 + 56) + v12, &v37);
      v13 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {
        break;
      }

      v14 = v31;
      v15 = v37;
      v16 = v38;
      v17 = v39;
      v7 &= v7 - 1;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v34 = v15;
      v35 = v16;
      v36 = v17;
      v18 = a1[3];
      v31 = a1[2];
      v32 = v18;
      v33 = *(a1 + 8);
      v19 = a1[1];
      v29 = *a1;
      v30 = v19;
      __swift_project_boxed_opaque_existential_0Tm(&v37, v13);
      (*(v14 + 8))(v26, v13, v14);
      v20 = v27;
      v21 = v28;
      __swift_project_boxed_opaque_existential_0Tm(v26, v27);
      (*(v21 + 32))(&v29, v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      outlined destroy of AnyHashable(&v37);
      v22 = *(&v35 + 1);
      v23 = v36;
      __swift_project_boxed_opaque_existential_0Tm(&v34, *(&v35 + 1));
      (*(v23 + 8))(v26, v22, v23);
      v24 = v27;
      v25 = v28;
      __swift_project_boxed_opaque_existential_0Tm(v26, v27);
      (*(v25 + 32))(&v29, v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      outlined destroy of AnyHashable(&v34);
      v9 ^= Hasher._finalize()();
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
    a2;
    Hasher._combine(_:)(v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void Dictionary<>.hash(into:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a5;
  v129 = a6;
  v6 = a4;
  v7 = a3;
  v126 = a1;
  v105 = type metadata accessor for Optional(0, a4, a3, a4);
  v9 = *(v105 - 8);
  v10 = MEMORY[0x1EEE9AC00](v105);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v93 - v13;
  v17 = type metadata accessor for Optional(0, v7, v15, v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v108 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v109 = &v93 - v22;
  v115 = *(v6 - 1);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v107 = (&v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v134 = (&v93 - v26);
  v114 = *(v7 - 1);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v111 = (&v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v133 = &v93 - v29;
  swift_getTupleTypeMetadata2(255, v7, v6, "key value ", 0);
  v31 = v30;
  v124 = type metadata accessor for Optional(0, v30, v32, v33);
  v34 = MEMORY[0x1EEE9AC00](v124);
  v131 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v123 = &v93 - v37;
  v104 = v12;
  v103 = v14;
  v102 = v17;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v38 = a2;
    }

    else
    {
      v38 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = v36;
    v40 = type metadata accessor for __CocoaDictionary.Iterator();
    v41 = swift_allocObject(v40, 0xE8, 7uLL);
    v36 = v39;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    *(v41 + 208) = v38;
    *(v41 + 216) = 0;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    *(v41 + 48) = 0u;
    *(v41 + 64) = 0u;
    *(v41 + 80) = 0u;
    *(v41 + 96) = 0u;
    *(v41 + 112) = 0u;
    *(v41 + 128) = 0u;
    *(v41 + 144) = 0u;
    *(v41 + 160) = 0u;
    *(v41 + 176) = 0u;
    *(v41 + 192) = 0u;
    *(v41 + 224) = 0;
    v45 = v41 | 0x8000000000000000;
  }

  else
  {
    v46 = -1 << *(a2 + 32);
    v43 = ~v46;
    v42 = a2 + 64;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v44 = v48 & *(a2 + 64);
    v45 = a2;
  }

  v130 = v45;
  v110 = v45 & 0x7FFFFFFFFFFFFFFFLL;
  v101 = (v114 + 56);
  v100 = (v18 + 16);
  v99 = (v114 + 48);
  v98 = (v18 + 8);
  v49 = (v114 + 32);
  v97 = (v115 + 56);
  v96 = (v9 + 16);
  v95 = (v115 + 48);
  v94 = (v9 + 8);
  v50 = (v115 + 32);
  v122 = v31 - 8;
  v106 = v43;
  v127 = (v43 + 64) >> 6;
  v113 = v114 + 16;
  v112 = v115 + 16;
  v121 = (v36 + 32);
  v120 = v128 + 24;
  v119 = (v114 + 8);
  v118 = v129 + 24;
  v117 = (v115 + 8);
  a2;
  v51 = 0;
  v52 = 0;
  v135 = v7;
  v125 = v42;
  v116 = v6;
  while (2)
  {
    v132 = v52;
    v136 = v51;
    if ((v130 & 0x8000000000000000) != 0)
    {
      v66 = v110;
      v67 = __CocoaDictionary.Iterator.nextKey()();
      if (!v67)
      {
        v77 = 1;
        v56 = v52;
        v62 = v44;
        v58 = v131;
        goto LABEL_28;
      }

      v68 = v67;
      v69 = [*(v66 + 208) &sel:v67 objectForKey:?];
      if (!v69)
      {
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v70 = v69;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v7, v7);
      v72 = v108;
      v73 = v109;
      if (isClassOrObjCExistentialType)
      {
        *&v137[0] = v68;
        swift_dynamicCast(v111, v137, qword_1EEEAC710, v7, 7uLL);
      }

      else
      {
        (*v101)(v109, 1, 1, v7);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v68, v7, v73);
        v88 = v73;
        v89 = v102;
        (*v100)(v72, v88, v102);
        if ((*v99)(v72, 1, v7) == 1)
        {
          goto LABEL_39;
        }

        swift_unknownObjectRelease(v68);
        (*v98)(v109, v89);
        (*v49)(v111, v72, v7);
      }

      v74 = _swift_isClassOrObjCExistentialType(v6, v6);
      v75 = v132;
      if (v74)
      {
        *&v137[0] = v70;
        v64 = v107;
        swift_dynamicCast(v107, v137, qword_1EEEAC710, v6, 7uLL);
        v56 = v75;
        v62 = v44;
        v65 = v6;
        goto LABEL_27;
      }

      v90 = v103;
      (*v97)(v103, 1, 1, v6);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v70, v6, v90);
      v91 = v104;
      v92 = v105;
      (*v96)(v104, v90, v105);
      if ((*v95)(v91, 1, v6) != 1)
      {
        swift_unknownObjectRelease(v70);
        (*v94)(v90, v92);
        v64 = v107;
        (*v50)(v107, v91, v6);
        v56 = v75;
        v62 = v44;
        v65 = v6;
        goto LABEL_27;
      }

LABEL_39:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v53 = v44;
    v54 = v52;
    if (v44)
    {
LABEL_20:
      v59 = (v53 - 1) & v53;
      v60 = __clz(__rbit64(v53)) | (v54 << 6);
      v61 = v130;
      (*(v114 + 16))(v133, *(v130 + 48) + *(v114 + 72) * v60, v135);
      v62 = v59;
      v63 = *(v61 + 56) + *(v115 + 72) * v60;
      v64 = v134;
      v65 = v116;
      (*(v115 + 16))(v134, v63, v116);
      v56 = v54;
LABEL_27:
      v76 = *(v31 + 48);
      v58 = v131;
      (*v49)();
      (*v50)(&v58[v76], v64, v65);
      v77 = 0;
      v6 = v65;
      goto LABEL_28;
    }

    if (v127 <= v52 + 1)
    {
      v55 = v52 + 1;
    }

    else
    {
      v55 = v127;
    }

    v56 = v55 - 1;
    v57 = v52;
    v58 = v131;
    while (1)
    {
      v54 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v54 >= v127)
      {
        break;
      }

      v53 = *(v42 + 8 * v54);
      ++v57;
      if (v53)
      {
        goto LABEL_20;
      }
    }

    v62 = 0;
    v77 = 1;
    v6 = v116;
LABEL_28:
    v78 = *(v31 - 8);
    (*(v78 + 56))(v58, v77, 1, v31);
    v79 = v123;
    (*v121)(v123, v58, v124);
    if ((*(v78 + 48))(v79, 1, v31) != 1)
    {
      v80 = *(v31 + 48);
      v81 = v133;
      v82 = v79;
      v83 = v79;
      v7 = v135;
      (*v49)(v133, v82, v135);
      v84 = &v83[v80];
      v85 = v134;
      (*v50)(v134, v84, v6);
      v86 = *(v126 + 48);
      v137[2] = *(v126 + 32);
      v137[3] = v86;
      v138 = *(v126 + 64);
      v87 = *(v126 + 16);
      v137[0] = *v126;
      v137[1] = v87;
      (*(v128 + 24))(v137, v7);
      (*v119)(v81, v7);
      (*(v129 + 24))(v137, v6);
      (*v117)(v85, v6);
      v51 = Hasher._finalize()() ^ v136;
      v52 = v56;
      v44 = v62;
      v42 = v125;
      continue;
    }

    break;
  }

  _sSh8IteratorV8_VariantOySS__GWOe_0(v130);
  Hasher._combine(_:)(v136);
}

Swift::Int Dictionary<>.hashValue.getter(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0u;
  v10 = 0u;
  v6 = 0;
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v8 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  Dictionary<>.hash(into:)(&v6, a1, a2, a3, a4, a5);
  return Hasher._finalize()();
}

uint64_t Dictionary<>._toCustomAnyHashable()@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t *a6@<X8>)
{
  v12 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a1, a2, a3);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  result = type metadata accessor for _DictionaryAnyHashableBox(0, v14);
  a6[3] = result;
  a6[4] = &protocol witness table for _DictionaryAnyHashableBox<A, B>;
  *a6 = a1;
  a6[1] = v12;
  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_AOTt2g5);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v3;
  a1;
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = 40 * (v10 | (v9 << 6));
    outlined init with copy of AnyHashable(*(a1 + 48) + v11, v16);
    outlined init with copy of AnyHashable(*(a1 + 56) + v11, v18);
    v14[0] = v16[0];
    v14[1] = v16[1];
    v15 = v17;
    v12[0] = v18[0];
    v12[1] = v18[1];
    v13 = v19;
    specialized _NativeDictionary._unsafeInsertNew(key:value:)(v14, v12, v3);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v3;
      a1;
      return;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
}

atomic_ullong *specialized _dictionaryUpCast<A, B, C, D>(_:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v7 = v6;
  i = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v99 - v8;
  v11 = type metadata accessor for Optional(0, a3, v9, v10);
  v137 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v99 - v15;
  v19 = type metadata accessor for Optional(0, v4, v17, v18);
  v136 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v115 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v99 - v23;
  v122 = *(a3 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v114 = (&v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v134 = (&v99 - v27);
  v121 = *(v4 - 1);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v123 = (&v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v133 = (&v99 - v30);
  v33 = type metadata accessor for Optional(0, v7, v31, v32);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v99 - v34;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v36 = a1;
    }

    else
    {
      v36 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v37 = [v36 count];
    if (v37)
    {
      goto LABEL_6;
    }

LABEL_8:
    v131 = &_swiftEmptyDictionarySingleton;
    goto LABEL_9;
  }

  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_8;
  }

LABEL_6:
  v131 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v37, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_AOTt2g5);
LABEL_9:
  v109 = v16;
  v110 = v14;
  v132 = v7;
  v111 = v11;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v38 = a1;
    }

    else
    {
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = type metadata accessor for __CocoaDictionary.Iterator();
    v40 = swift_allocObject(v39, 0xE8, 7uLL);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    *(v40 + 208) = v38;
    *(v40 + 216) = 0;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 0u;
    *(v40 + 64) = 0u;
    *(v40 + 80) = 0u;
    *(v40 + 96) = 0u;
    *(v40 + 112) = 0u;
    *(v40 + 128) = 0u;
    *(v40 + 144) = 0u;
    *(v40 + 160) = 0u;
    *(v40 + 176) = 0u;
    *(v40 + 192) = 0u;
    *(v40 + 224) = 0;
    v44 = v40 | 0x8000000000000000;
  }

  else
  {
    v45 = -1 << *(a1 + 32);
    v42 = ~v45;
    v41 = a1 + 64;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v43 = v47 & *(a1 + 64);
    v44 = a1;
  }

  v48 = v137;
  v116 = v44 & 0x7FFFFFFFFFFFFFFFLL;
  v106 = (v121 + 56);
  v105 = (v136 + 2);
  v104 = (v121 + 48);
  v103 = (v136 + 1);
  v137 = (v121 + 32);
  v102 = (v122 + 56);
  v101 = (v48 + 2);
  v100 = (v122 + 48);
  v99 = (v48 + 1);
  v136 = (v122 + 32);
  v130 = (i + 56);
  v112 = v42;
  v113 = (v42 + 64) >> 6;
  v118 = v121 + 16;
  v117 = v122 + 16;
  v129 = (i + 48);
  v124 = (i + 32);
  v131;
  a1;
  v49 = 0;
  v135 = a3;
  v126 = v4;
  v108 = v19;
  v128 = v44;
  v50 = v43;
  v120 = v35;
  v119 = v41;
  if ((v44 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  v51 = v50;
  v52 = v49;
  if (v50)
  {
LABEL_27:
    i = (v51 - 1) & v51;
    v57 = __clz(__rbit64(v51)) | (v52 << 6);
    v58 = v121;
    v59 = v133;
    (*(v121 + 16))(v133, *(v44 + 48) + *(v121 + 72) * v57, v4);
    v60 = *(v44 + 56);
    v61 = v122;
    v62 = v60 + *(v122 + 72) * v57;
    v63 = *(v122 + 16);
    v127 = v50;
    v64 = v134;
    v65 = v4;
    v66 = v135;
    v63(v134, v62, v135);
    v56 = v132;
    v67 = *(v132 + 48);
    v68 = *(v58 + 32);
    v35 = v120;
    v69 = v59;
    v41 = v119;
    v68(v120, v69, v65);
    (*(v61 + 32))(&v35[v67], v64, v66);
    (*v130)(v35, 0, 1, v56);
    v54 = v52;
    goto LABEL_43;
  }

  if (v113 <= v49 + 1)
  {
    v53 = v49 + 1;
  }

  else
  {
    v53 = v113;
  }

  v54 = v53 - 1;
  v55 = v49;
  v56 = v132;
  while (1)
  {
    v52 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v52 >= v113)
    {
      break;
    }

    v51 = *(v41 + 8 * v52);
    ++v55;
    if (v51)
    {
      goto LABEL_27;
    }
  }

  (*v130)(v35, 1, 1, v132);
  for (i = 0; ; i = v50)
  {
LABEL_43:
    if ((*v129)(v35, 1, v56) == 1)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v128);
      goto LABEL_53;
    }

    v85 = v125;
    (*v124)(v125, v35, v56);
    v86 = *(v56 + 48);
    v87 = v133;
    v4 = v126;
    (*v137)(v133, v85, v126);
    swift_dynamicCast(v139, v87, v4, &type metadata for AnyHashable, 7uLL);
    v88 = &v85[v86];
    v89 = v134;
    v90 = v135;
    (*v136)(v134, v88, v135);
    swift_dynamicCast(&v141, v89, v90, &type metadata for AnyHashable, 7uLL);
    v145 = v140;
    v144[0] = v139[0];
    v144[1] = v139[1];
    v146 = v141;
    v147 = v142;
    v148 = v143;
    v150 = v143;
    v149[0] = v141;
    v149[1] = v142;
    specialized _NativeDictionary._unsafeInsertNew(key:value:)(v139, v149, v131);
    v49 = v54;
    v50 = i;
    v44 = v128;
    if ((v128 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v70 = v116;
    v71 = *(v116 + 216);
    v56 = v132;
    if ((v71 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    v127 = v49;
    if (v71 == *(v116 + 224))
    {
      break;
    }

    v74 = *(v116 + 24);
    v73 = v115;
    if (!v74)
    {
      goto LABEL_57;
    }

    if (v71 >> 60)
    {
      goto LABEL_55;
    }

LABEL_35:
    v75 = (v74 + 8 * v71);
    if ((v75 & 7) != 0)
    {
      goto LABEL_56;
    }

    v76 = *v75;
    v70[27] = v71 + 1;
    v77 = v70[26];
    swift_unknownObjectRetain(v76);
    v78 = [v77 &sel:v76 objectForKey:?];
    if (!v78)
    {
LABEL_57:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v79 = v78;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v4, v4);
    v81 = v135;
    if (isClassOrObjCExistentialType)
    {
      *&v144[0] = v76;
      swift_dynamicCast(v123, v144, qword_1EEEAC710, v4, 7uLL);
    }

    else
    {
      v91 = v107;
      (*v106)(v107, 1, 1, v4);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v76, v4, v91);
      v92 = v73;
      v93 = v108;
      (*v105)(v92, v91, v108);
      if ((*v104)(v115, 1, v4) == 1)
      {
        goto LABEL_58;
      }

      (*v103)(v91, v93);
      swift_unknownObjectRelease(v76);
      (*v137)(v123, v115, v4);
    }

    v82 = _swift_isClassOrObjCExistentialType(v81, v81);
    v83 = v114;
    if (v82)
    {
      *&v144[0] = v79;
      swift_dynamicCast(v114, v144, qword_1EEEAC710, v81, 7uLL);
    }

    else
    {
      v94 = v109;
      (*v102)(v109, 1, 1, v81);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v79, v81, v94);
      v95 = v110;
      v96 = v111;
      (*v101)(v110, v94, v111);
      if ((*v100)(v95, 1, v81) == 1)
      {
LABEL_58:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      (*v99)(v94, v96);
      swift_unknownObjectRelease(v79);
      v83 = v114;
      (*v136)(v114, v95, v81);
    }

    v84 = *(v56 + 48);
    (*v137)(v35, v123, v4);
    (*v136)(&v35[v84], v83, v81);
    (*v130)(v35, 0, 1, v56);
    v54 = v127;
  }

  v72 = [*(v116 + 208) countByEnumeratingWithState:v116 + 16 objects:v116 + 80 count:16];
  v70[28] = v72;
  v73 = v115;
  if (v72)
  {
    v70[27] = 0;
    v74 = v70[3];
    if (!v74)
    {
      goto LABEL_57;
    }

    v71 = 0;
    goto LABEL_35;
  }

  v70[27] = -1;
LABEL_52:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v44);
  (*v130)(v35, 1, 1, v56);
LABEL_53:
  v97 = v131;
  v131;
  return v97;
}

atomic_ullong *specialized _dictionaryUpCast<A, B, C, D>(_:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZSS_ypTt2g5);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v3;
  a1;
  v8 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v13 >= v7)
    {
      v3;
      a1;
      return v3;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    outlined init with copy of AnyHashable(*(a1 + 56) + 40 * v15, v34);
    v32 = v18;
    v33 = v17;
    v26[0] = v34[0];
    v26[1] = v34[1];
    v27 = v35;
    v17;
    swift_dynamicCast(v28, v26, &type metadata for AnyHashable, byte_1EEEAC6F8, 7uLL);
    outlined init with take of Any(v28, v30);
    outlined init with take of Any(v30, v31);
    outlined init with take of Any(v31, &v29);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
    if (v20)
    {
      v9 = (v3[6] + 16 * v19);
      v10 = v9[1];
      *v9 = v18;
      v9[1] = v17;
      v11 = v19;
      v10;
      v12 = (v3[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      outlined init with take of Any(&v29, v12);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v3[2] >= v3[3])
    {
      goto LABEL_20;
    }

    *(v3 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
    v21 = (v3[6] + 16 * v19);
    *v21 = v18;
    v21[1] = v17;
    result = outlined init with take of Any(&v29, (v3[7] + 32 * v19));
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    v8 = v13;
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v13 = v8;
  }

  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(unint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = _ss18_DictionaryStorageC8allocate8capacityAByxq_GSi_tFZs11AnyHashableV_AGTt0g5Tm(v2, _ss18_DictionaryStorageC8allocate5scale3age4seedAByxq_Gs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_ypTt2g5);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v3;
  result = a1;
  for (i = 0; v6; result = specialized _NativeDictionary._unsafeInsertNew(key:value:)(&v19, v16, v3))
  {
    v10 = i;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of AnyHashable(*(a1 + 56) + 40 * v12, v32);
    v30 = v15;
    v31 = v14;
    v27 = v32[0];
    v28 = v32[1];
    v29 = v33;
    v18[0] = v15;
    v18[1] = v14;
    v14;
    swift_dynamicCast(&v19, v18, &type metadata for String, &type metadata for AnyHashable, 7uLL);
    v16[0] = v27;
    v16[1] = v28;
    v17 = v29;
    swift_dynamicCast(v22, v16, &type metadata for AnyHashable, byte_1EEEAC6F8, 7uLL);
    v23 = v19;
    v24 = v20;
    v25 = v21;
    outlined init with take of Any(v22, v26);
    v19 = v23;
    v20 = v24;
    v21 = v25;
    outlined init with take of Any(v26, v16);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v3;
      a1;
      return v3;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

__objc2_class **_dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, Class *a4, Class *a5, uint64_t a6, uint64_t a7)
{
  v281 = a7;
  swift_getTupleTypeMetadata2(0, a4, a5, "key value ", 0);
  v280 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v279 = (&v235 - v13);
  swift_getTupleTypeMetadata2(0, a4, a5, 0, 0);
  v278 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v277 = &v235 - v16;
  v273 = *(a5 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v271 = (&v235 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v270 = (&v235 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v264 = &v235 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v260 = &v235 - v24;
  v275 = a4;
  v265 = *(a4 - 1);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v269 = &v235 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v268 = &v235 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v259 = &v235 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v258 = &v235 - v31;
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  v33 = v32;
  v285 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v267 = &v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v257 = &v235 - v36;
  v247 = type metadata accessor for Optional(0, a3, v37, v38);
  v274 = *(v247 - 8);
  v39 = MEMORY[0x1EEE9AC00](v247);
  v251 = (&v235 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v39);
  v255 = &v235 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v250 = &v235 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v272 = &v235 - v45;
  v48 = type metadata accessor for Optional(0, a2, v46, v47);
  v284 = *(v48 - 8);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v253 = &v235 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v254 = &v235 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = (&v235 - v54);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v266 = &v235 - v57;
  v263 = *(a3 - 1);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v252 = (&v235 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = MEMORY[0x1EEE9AC00](v58);
  v249 = (&v235 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v292 = &v235 - v63;
  v262 = *(a2 - 1);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v261 = (&v235 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = MEMORY[0x1EEE9AC00](v64);
  v256 = (&v235 - v67);
  MEMORY[0x1EEE9AC00](v66);
  v291 = &v235 - v68;
  v71 = type metadata accessor for Optional(0, v33, v69, v70);
  v72 = MEMORY[0x1EEE9AC00](v71 - 8);
  v276 = &v235 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  i = &v235 - v74;
  v75 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v76 = a1;
    if (a1 < 0)
    {
      v77 = a1;
    }

    else
    {
      v77 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    v78 = [v77 count];
  }

  else
  {
    v76 = a1;
    v78 = *(a1 + 16);
  }

  v245 = v55;
  if (v78)
  {
    v79 = v275;
    type metadata accessor for _DictionaryStorage(0, v275, a5, v281);
    v282 = static _DictionaryStorage.allocate(capacity:)(v78);
  }

  else
  {
    v282 = &_swiftEmptyDictionarySingleton;
    v79 = v275;
  }

  v287 = a3;
  v288 = a5;
  v289 = v33;
  v290 = a2;
  v246 = v48;
  if (v79 == &type metadata for String)
  {
    v87 = v282;
    v88 = v76;
    if (v75)
    {
      if (v76 < 0)
      {
        v89 = v76;
      }

      else
      {
        v89 = v76 & 0xFFFFFFFFFFFFFF8;
      }

      v90 = type metadata accessor for __CocoaDictionary.Iterator();
      v91 = swift_allocObject(v90, 0xE8, 7uLL);
      v251 = 0;
      v92 = 0;
      v93 = 0;
      *(v91 + 208) = v89;
      *(v91 + 216) = 0;
      *(v91 + 16) = 0u;
      *(v91 + 32) = 0u;
      *(v91 + 48) = 0u;
      *(v91 + 64) = 0u;
      *(v91 + 80) = 0u;
      *(v91 + 96) = 0u;
      *(v91 + 112) = 0u;
      *(v91 + 128) = 0u;
      *(v91 + 144) = 0u;
      *(v91 + 160) = 0u;
      *(v91 + 176) = 0u;
      *(v91 + 192) = 0u;
      *(v91 + 224) = 0;
      v94 = v91 | 0x8000000000000000;
    }

    else
    {
      v158 = -1 << *(v76 + 32);
      v92 = ~v158;
      v159 = *(v76 + 64);
      v251 = (v76 + 64);
      v160 = -v158;
      if (v160 < 64)
      {
        v161 = ~(-1 << v160);
      }

      else
      {
        v161 = -1;
      }

      v93 = (v161 & v159);
      v94 = v76;
    }

    v162 = v272;
    v163 = v266;
    v164 = i;
    v252 = (v94 & 0x7FFFFFFFFFFFFFFFLL);
    v243 = (v262 + 56);
    v242 = (v284 + 16);
    v241 = (v262 + 48);
    v240 = (v284 + 8);
    v283 = (v262 + 32);
    v239 = (v263 + 56);
    v238 = (v274 + 2);
    v237 = (v263 + 48);
    v236 = (v274 + 1);
    v276 = (v263 + 32);
    v271 = (v285 + 56);
    v244 = v92;
    v248 = ((v92 + 64) >> 6);
    v267 = (v262 + 16);
    v261 = (v263 + 16);
    v270 = (v285 + 48);
    v268 = (v285 + 32);
    v274 = (v273 + 32);
    v275 = (v265 + 32);
    v253 = (v87 + 8);
    v255 = (v265 + 40);
    v254 = (v273 + 40);
    v87;
    v88;
    v165 = 0;
    v269 = v94;
    v282 = v87;
    while (1)
    {
      if ((v94 & 0x8000000000000000) != 0)
      {
        v184 = v252;
        v185 = v252[27];
        if ((v185 & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        if (v185 == v252[28])
        {
          v186 = [v252[26] countByEnumeratingWithState:v252 + 2 objects:v252 + 10 count:16];
          *(v184 + 28) = v186;
          if (!v186)
          {
            *(v184 + 27) = -1;
LABEL_103:
            (*v271)(v164, 1, 1, v33);
            v157 = v94;
            goto LABEL_104;
          }

          *(v184 + 27) = 0;
          v187 = *(v184 + 3);
          if (!v187)
          {
            goto LABEL_112;
          }

          v185 = 0;
        }

        else
        {
          v187 = v252[3];
          if (!v187)
          {
            goto LABEL_112;
          }

          if (v185 >> 60)
          {
            goto LABEL_111;
          }
        }

        v188 = &v187[8 * v185];
        if ((v188 & 7) != 0)
        {
          goto LABEL_107;
        }

        v189 = v162;
        v169 = v165;
        v190 = *v188;
        *(v184 + 27) = v185 + 1;
        v191 = *(v184 + 26);
        swift_unknownObjectRetain(v190);
        v192 = [v191 &sel:v190 objectForKey:?];
        if (!v192)
        {
          goto LABEL_112;
        }

        v193 = v192;
        v284 = v93;
        v194 = v290;
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v290, v290);
        v196 = v250;
        if (isClassOrObjCExistentialType)
        {
          v293 = v190;
          swift_dynamicCast(v256, &v293, qword_1EEEAC710, v194, 7uLL);
        }

        else
        {
          (*v243)(v163, 1, 1, v194);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v190, v194, v163);
          v228 = v245;
          v229 = v246;
          (*v242)(v245, v163, v246);
          if ((*v241)(v228, 1, v194) == 1)
          {
            goto LABEL_109;
          }

          swift_unknownObjectRelease(v190);
          (*v240)(v163, v229);
          (*v283)(v256, v228, v194);
          v196 = v250;
        }

        v197 = v287;
        v198 = _swift_isClassOrObjCExistentialType(v287, v287);
        v199 = v249;
        if (v198)
        {
          v293 = v193;
          swift_dynamicCast(v249, &v293, qword_1EEEAC710, v197, 7uLL);
        }

        else
        {
          (*v239)(v189, 1, 1, v197);
          _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v193, v197, v189);
          v230 = v196;
          v231 = v196;
          v232 = v247;
          (*v238)(v230, v189, v247);
          if ((*v237)(v231, 1, v197) == 1)
          {
LABEL_109:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          swift_unknownObjectRelease(v193);
          (*v236)(v189, v232);
          (*v276)(v199, v231, v197);
        }

        v200 = *(v33 + 48);
        (*v283)(v164, v256, v290);
        (*v276)(&v164[v200], v199, v197);
        (*v271)(v164, 0, 1, v33);
        v285 = v284;
      }

      else
      {
        v166 = v93;
        v167 = v165;
        if (v93)
        {
LABEL_74:
          v285 = (v166 - 1) & v166;
          v171 = __clz(__rbit64(v166)) | (v167 << 6);
          v172 = v262;
          v174 = v290;
          v173 = v291;
          (*(v262 + 16))(v291, *(v94 + 48) + *(v262 + 72) * v171, v290);
          v175 = *(v94 + 56);
          v176 = v263;
          v177 = v175 + *(v263 + 72) * v171;
          v178 = *(v263 + 16);
          v284 = v93;
          v179 = v292;
          v180 = v287;
          v178(v292, v177, v287);
          v181 = *(v289 + 48);
          v182 = *(v172 + 32);
          v183 = v174;
          v164 = i;
          v33 = v289;
          v182(i, v173, v183);
          (*(v176 + 32))(&v164[v181], v179, v180);
          (*v271)(v164, 0, 1, v33);
          v169 = v167;
        }

        else
        {
          if (v248 <= (v165 + 1))
          {
            v168 = v165 + 1;
          }

          else
          {
            v168 = v248;
          }

          v169 = v168 - 1;
          v170 = v165;
          while (1)
          {
            v167 = (v170 + 1);
            if (__OFADD__(v170, 1))
            {
              goto LABEL_106;
            }

            if (v167 >= v248)
            {
              break;
            }

            v166 = v251[v167];
            ++v170;
            if (v166)
            {
              goto LABEL_74;
            }
          }

          (*v271)(v164, 1, 1, v33);
          v285 = 0;
        }
      }

      if ((*v270)(v164, 1, v33) == 1)
      {
        v157 = v269;
        goto LABEL_104;
      }

      v284 = v169;
      v201 = v257;
      (*v268)(v257, v164, v33);
      v202 = *(v33 + 48);
      v203 = *(v280 + 48);
      v205 = v290;
      v204 = v291;
      (*v283)(v291, v201, v290);
      v206 = v279;
      swift_dynamicCast(v279, v204, v205, &type metadata for String, 7uLL);
      v207 = &v201[v202];
      v208 = v292;
      v209 = v287;
      (*v276)(v292, v207, v287);
      swift_dynamicCast((v206 + v203), v208, v209, v288, 7uLL);
      v210 = v277;
      v211 = *(v278 + 48);
      v212 = *v275;
      (*v275)(v277, v206, &type metadata for String);
      v213 = *v274;
      v214 = v206 + v203;
      v215 = v288;
      (*v274)(&v210[v211], v214, v288);
      v216 = v258;
      (v212)(v258, v210, &type metadata for String);
      v217 = v260;
      v213(v260, &v210[v211], v215);
      v218 = v259;
      (v212)(v259, v216, &type metadata for String);
      v219 = v264;
      v213(v264, v217, v215);
      v220 = v282;
      v221 = __RawDictionaryStorage.find<A>(_:)(v218, &type metadata for String, v281);
      v222 = v221;
      if (v223)
      {
        (*(v265 + 40))(v220[6] + *(v265 + 72) * v221, v218, &type metadata for String);
        (*(v273 + 40))(v220[7] + *(v273 + 72) * v222, v219, v215);
        v165 = v284;
      }

      else
      {
        v224 = v284;
        if (v220[2] >= v220[3])
        {
          goto LABEL_109;
        }

        *&v253[(v221 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v221;
        (v212)(v220[6] + *(v265 + 72) * v221, v218, &type metadata for String);
        v213(v220[7] + *(v273 + 72) * v222, v219, v215);
        v225 = v220[2];
        v226 = __OFADD__(v225, 1);
        v227 = (&v225->isa + 1);
        if (v226)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v220[2] = v227;
        v165 = v224;
      }

      v93 = v285;
      v164 = i;
      v33 = v289;
      v162 = v272;
      v163 = v266;
      v94 = v269;
    }
  }

  v80 = v282;
  v81 = v76;
  if (v75)
  {
    if (v76 < 0)
    {
      v82 = v76;
    }

    else
    {
      v82 = v76 & 0xFFFFFFFFFFFFFF8;
    }

    v83 = type metadata accessor for __CocoaDictionary.Iterator();
    v84 = swift_allocObject(v83, 0xE8, 7uLL);
    v257 = 0;
    v85 = 0;
    v86 = 0;
    *(v84 + 208) = v82;
    *(v84 + 216) = 0;
    *(v84 + 16) = 0u;
    *(v84 + 32) = 0u;
    *(v84 + 48) = 0u;
    *(v84 + 64) = 0u;
    *(v84 + 80) = 0u;
    *(v84 + 96) = 0u;
    *(v84 + 112) = 0u;
    *(v84 + 128) = 0u;
    *(v84 + 144) = 0u;
    *(v84 + 160) = 0u;
    *(v84 + 176) = 0u;
    *(v84 + 192) = 0u;
    *(v84 + 224) = 0;
    v76 = v84 | 0x8000000000000000;
  }

  else
  {
    v95 = -1 << *(v76 + 32);
    v85 = ~v95;
    v96 = *(v76 + 64);
    v257 = (v76 + 64);
    v97 = -v95;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    else
    {
      v98 = -1;
    }

    v86 = (v98 & v96);
  }

  v260 = (v76 & 0x7FFFFFFFFFFFFFFFLL);
  v249 = (v262 + 56);
  v248 = v284 + 16;
  v245 = (v262 + 48);
  v244 = (v284 + 8);
  v284 = (v262 + 32);
  v243 = (v263 + 56);
  v242 = (v274 + 2);
  v241 = (v263 + 48);
  v240 = (v274 + 1);
  v283 = (v263 + 32);
  v274 = (v285 + 56);
  v250 = v85;
  v256 = ((v85 + 64) >> 6);
  v259 = (v262 + 16);
  v258 = (v263 + 16);
  v272 = (v285 + 48);
  v266 = (v285 + 32);
  v265 += 32;
  v264 = (v273 + 32);
  v80;
  v81;
  v99 = 0;
  v273 = v76;
  if (v76 < 0)
  {
    goto LABEL_35;
  }

LABEL_26:
  v100 = v86;
  v101 = v99;
  v102 = v287;
  v103 = v289;
  v104 = v290;
  if (v86)
  {
LABEL_34:
    v285 = v86;
    i = ((v100 - 1) & v100);
    v109 = __clz(__rbit64(v100)) | (v101 << 6);
    v110 = v262;
    v111 = v291;
    (*(v262 + 16))(v291, *(v76 + 48) + *(v262 + 72) * v109, v290);
    v112 = v263;
    v113 = *(v76 + 56) + *(v263 + 72) * v109;
    v114 = v292;
    (*(v263 + 16))(v292, v113, v102);
    v115 = *(v103 + 48);
    v116 = *(v110 + 32);
    v117 = v276;
    v116(v276, v111, v104);
    v118 = *(v112 + 32);
    v108 = v117;
    v118(&v117[v115], v114, v102);
    (*v274)(v117, 0, 1, v103);
    v106 = v101;
    goto LABEL_50;
  }

  if (v256 <= v99 + 1)
  {
    v105 = (v99 + 1);
  }

  else
  {
    v105 = v256;
  }

  v106 = v105 - 1;
  v107 = v99;
  v108 = v276;
  while (1)
  {
    v101 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v101 >= v256)
    {
      break;
    }

    v100 = *&v257[8 * v101];
    ++v107;
    if (v100)
    {
      goto LABEL_34;
    }
  }

  (*v274)(v276, 1, 1, v289);
  for (i = 0; ; i = v86)
  {
LABEL_50:
    if ((*v272)(v108, 1, v103) == 1)
    {
      v157 = v273;
      goto LABEL_104;
    }

    v136 = v267;
    (*v266)(v267, v108, v103);
    v137 = *(v103 + 48);
    v138 = *(v280 + 48);
    v139 = v291;
    (*v284)(v291, v136, v104);
    v140 = v279;
    v141 = v275;
    swift_dynamicCast(v279, v139, v104, v275, 7uLL);
    v142 = &v136[v137];
    v143 = v292;
    (*v283)(v292, v142, v102);
    v144 = v288;
    swift_dynamicCast((v140 + v138), v143, v102, v288, 7uLL);
    v145 = v277;
    v146 = *(v278 + 48);
    v285 = v106;
    v147 = *v265;
    (*v265)(v277, v140, v141);
    v148 = *v264;
    (*v264)(&v145[v146], v140 + v138, v144);
    v149 = v268;
    v147(v268, v145, v141);
    v150 = &v145[v146];
    v151 = v270;
    v148(v270, v150, v144);
    v152 = v269;
    v147(v269, v149, v141);
    v153 = v271;
    v148(v271, v151, v144);
    _NativeDictionary._unsafeInsertNew(key:value:)(v152, v153, v282, v141, v144, v281);
    v99 = v285;
    v86 = i;
    v76 = v273;
    if ((v273 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_35:
    v119 = v260;
    v120 = *(v260 + 27);
    v102 = v287;
    v103 = v289;
    v104 = v290;
    if ((v120 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    if (v120 == *(v260 + 28))
    {
      break;
    }

    v124 = *(v260 + 3);
    v122 = v255;
    v123 = v254;
    if (!v124)
    {
      goto LABEL_112;
    }

    if (v120 >> 60)
    {
      __break(1u);
      goto LABEL_109;
    }

LABEL_42:
    v125 = (v124 + 8 * v120);
    if ((v125 & 7) != 0)
    {
      goto LABEL_107;
    }

    v126 = *v125;
    v119[27] = v120 + 1;
    v127 = v119[26];
    swift_unknownObjectRetain(v126);
    v128 = [v127 &sel:v126 objectForKey:?];
    if (!v128)
    {
      goto LABEL_112;
    }

    v129 = v128;
    v130 = _swift_isClassOrObjCExistentialType(v104, v104);
    v131 = v253;
    if (v130)
    {
      v293 = v126;
      swift_dynamicCast(v261, &v293, qword_1EEEAC710, v104, 7uLL);
    }

    else
    {
      (*v249)(v123, 1, 1, v104);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v126, v104, v123);
      v154 = v131;
      v155 = v246;
      (*v248)(v154, v123, v246);
      if ((*v245)(v253, 1, v104) == 1)
      {
        goto LABEL_109;
      }

      swift_unknownObjectRelease(v126);
      (*v244)(v123, v155);
      (*v284)(v261, v253, v104);
    }

    v132 = _swift_isClassOrObjCExistentialType(v102, v102);
    v133 = v251;
    v134 = v252;
    if (v132)
    {
      v293 = v129;
      swift_dynamicCast(v252, &v293, qword_1EEEAC710, v102, 7uLL);
    }

    else
    {
      (*v243)(v122, 1, 1, v102);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v129, v102, v122);
      v156 = v247;
      (*v242)(v133, v122, v247);
      if ((*v241)(v133, 1, v102) == 1)
      {
        goto LABEL_109;
      }

      swift_unknownObjectRelease(v129);
      (*v240)(v122, v156);
      v134 = v252;
      (*v283)(v252, v133, v102);
    }

    v135 = *(v103 + 48);
    v108 = v276;
    (*v284)(v276, v261, v104);
    (*v283)(&v108[v135], v134, v102);
    (*v274)(v108, 0, 1, v103);
    v106 = v99;
  }

  v121 = [*(v260 + 26) countByEnumeratingWithState:v260 + 16 objects:v260 + 80 count:16];
  v119 = v260;
  *(v260 + 28) = v121;
  v122 = v255;
  v123 = v254;
  if (v121)
  {
    v119[27] = 0;
    v124 = v119[3];
    if (!v124)
    {
      goto LABEL_112;
    }

    v120 = 0;
    goto LABEL_42;
  }

  v119[27] = -1;
  v76 = v273;
LABEL_101:
  (*v274)(v276, 1, 1, v103);
  v157 = v76;
LABEL_104:
  _sSh8IteratorV8_VariantOySS__GWOe_0(v157);
  v233 = v282;
  v282;
  return v233;
}

unint64_t _DictionaryAnyHashableBox._base.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  a5[3] = type metadata accessor for Dictionary(0, a2, a3, a4);
  *a5 = a1;

  return a1;
}

void _DictionaryAnyHashableBox._canonicalBox.getter(unint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  a1;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
  a2[3] = &unk_1EEEBF448;
  a2[4] = &protocol witness table for _DictionaryAnyHashableBox<A, B>;
  *a2 = a1;
  a2[1] = v4;
}

uint64_t _DictionaryAnyHashableBox._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MirrorPath(a1, v10);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  if (!swift_dynamicCast(v9, v10, v4, qword_1EEEBF448, 6uLL))
  {
    return 2;
  }

  v5 = v9[0];
  v6 = v9[1];
  v7 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs11AnyHashableV_ADTt1g5(a3, v9[0]);
  v6;
  v5;
  return v7 & 1;
}

Swift::Int _DictionaryAnyHashableBox._hashValue.getter(uint64_t a1, unint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v3 = 0;
  v4 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  specialized Dictionary<>.hash(into:)(&v3, a2);
  return Hasher._finalize()();
}

Swift::Int __swiftcall _DictionaryAnyHashableBox._rawHashValue(_seed:)(Swift::Int _seed)
{
  v7 = 0u;
  v8 = 0u;
  *&v3 = 0;
  *(&v3 + 1) = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x736F6D6570736575;
  v4 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v5 = _swift_stdlib_Hashing_parameters ^ _seed ^ 0x6C7967656E657261;
  v6 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  specialized Dictionary<>.hash(into:)(&v3, v1);
  return Hasher._finalize()();
}

uint64_t _DictionaryAnyHashableBox._unbox<A>()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, Class *a4@<X4>, uint64_t a5@<X5>, swift *a6@<X8>)
{
  v12 = a1;
  v9 = type metadata accessor for Dictionary(0, a2, a3, a5);
  a1;
  v10 = swift_dynamicCast(a6, &v12, v9, a4, 6uLL);
  return (*(*(a4 - 1) + 7))(a6, v10 ^ 1u, 1, a4);
}

uint64_t _DictionaryAnyHashableBox._downCastConditional<A>(into:)(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6, uint64_t a7)
{
  v25 = a1;
  v12 = type metadata accessor for Optional(0, a6, a3, a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v25 - v15);
  v17 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v20 = type metadata accessor for Dictionary(0, a4, a5, a7);
  a2;
  v21 = swift_dynamicCast(v16, &v26, v20, a6, 6uLL);
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v16, 0, 1, a6);
    v23 = *(v17 + 32);
    v23(v19, v16, a6);
    v23(v25, v19, a6);
  }

  else
  {
    v22(v16, 1, 1, a6);
    (*(v13 + 8))(v16, v12);
  }

  return v21;
}

uint64_t Dictionary.description.getter(int64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v223 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v223 - v12;
  v234 = type metadata accessor for Optional(0, a2, v14, v15);
  v16 = *(v234 - 8);
  v17 = MEMORY[0x1EEE9AC00](v234 - 8);
  v256 = &v223 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v235 = (&v223 - v20);
  v248 = *(a3 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v265 = (&v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v240 = (&v223 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v246 = (&v223 - v26);
  v247 = *(a2 - 1);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v258 = &v223 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v242 = (&v223 - v30);
  MEMORY[0x1EEE9AC00](v29);
  v245 = &v223 - v31;
  swift_getTupleTypeMetadata2(255, a2, a3, "key value ", 0);
  v257 = v32;
  v253 = type metadata accessor for Optional(0, v32, v33, v34);
  v35 = *(v253 - 8);
  v36 = MEMORY[0x1EEE9AC00](v253);
  MEMORY[0x1EEE9AC00](v36);
  v260 = &v223 - v37;
  v267 = a2;
  v252 = v38;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      v232 = v11;
      v233 = v7;
      v272 = 91;
      v273 = 0xE100000000000000;
      v45 = -1 << *(a1 + 32);
      v42 = ~v45;
      v46 = *(a1 + 64);
      v241 = a1 + 64;
      v47 = -v45;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v43 = v48 & v46;
      v44 = a1;
      goto LABEL_12;
    }

    return 6109787;
  }

  if (a1 < 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  if (![v39 count])
  {
    return 6109787;
  }

  v232 = v11;
  v233 = v7;
  v272 = 91;
  v273 = 0xE100000000000000;
  v40 = type metadata accessor for __CocoaDictionary.Iterator();
  v41 = swift_allocObject(v40, 0xE8, 7uLL);
  v241 = 0;
  v42 = 0;
  v43 = 0;
  *(v41 + 208) = v39;
  *(v41 + 216) = 0;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 80) = 0u;
  *(v41 + 96) = 0u;
  *(v41 + 112) = 0u;
  *(v41 + 128) = 0u;
  *(v41 + 144) = 0u;
  *(v41 + 160) = 0u;
  *(v41 + 176) = 0u;
  *(v41 + 192) = 0u;
  *(v41 + 224) = 0;
  v44 = v41 | 0x8000000000000000;
LABEL_12:
  v259 = a3;
  v254 = v44;
  v49 = v44 & 0x7FFFFFFFFFFFFFFFLL;
  v231 = (v247 + 56);
  v230 = (v16 + 16);
  v229 = (v247 + 48);
  v228 = (v16 + 8);
  v266 = (v247 + 32);
  v227 = (v248 + 56);
  v226 = (v8 + 16);
  v225 = (v248 + 48);
  v224 = (v8 + 8);
  v268 = (v248 + 32);
  v50 = v257;
  v251 = v257 - 8;
  v236 = v42;
  v239 = (v42 + 64) >> 6;
  v244 = v247 + 16;
  v243 = v248 + 16;
  v250 = (v35 + 32);
  a1;
  v51 = 0;
  v52 = 1;
  v264 = xmmword_18071DB30;
  v238 = xmmword_18071DC40;
  v237 = xmmword_18071DB40;
  v53 = v256;
  v249 = v49;
  v255 = v13;
  while (1)
  {
    v56 = v43;
    v57 = v260;
    if ((v254 & 0x8000000000000000) != 0)
    {
      v71 = __CocoaDictionary.Iterator.nextKey()();
      if (!v71)
      {
        v81 = 1;
        v262 = v51;
        v263 = v56;
        v80 = v252;
        goto LABEL_34;
      }

      v72 = v71;
      v73 = v13;
      v74 = v50;
      v75 = [*(v49 + 208) &sel:v71 objectForKey:?];
      if (!v75)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v76 = v75;
      v77 = v267;
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType(v267, v267);
      v69 = v259;
      if (isClassOrObjCExistentialType)
      {
        *&v271 = v72;
        swift_dynamicCast(v242, &v271, qword_1EEEAC710, v77, 7uLL);
      }

      else
      {
        (*v231)(v235, 1, 1, v77);
        _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v72, v77, v235);
        v164 = v53;
        v165 = v234;
        (*v230)(v164, v235, v234);
        if ((*v229)(v256, 1, v77) == 1)
        {
          goto LABEL_245;
        }

        (*v228)(v235, v165);
        swift_unknownObjectRelease(v72);
        (*v266)(v242, v256, v77);
      }

      v50 = v74;
      if (_swift_isClassOrObjCExistentialType(v69, v69))
      {
        *&v271 = v76;
        v68 = v240;
        swift_dynamicCast(v240, &v271, qword_1EEEAC710, v69, 7uLL);
LABEL_32:
        v70 = v242;
        v262 = v51;
        v263 = v56;
        v66 = v267;
        goto LABEL_33;
      }

      (*v227)(v73, 1, 1, v69);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)(v76, v69, v73);
      v166 = v232;
      v167 = v233;
      (*v226)(v232, v73, v233);
      if ((*v225)(v166, 1, v69) != 1)
      {
        (*v224)(v73, v167);
        swift_unknownObjectRelease(v76);
        v68 = v240;
        (*v268)(v240, v166, v69);
        goto LABEL_32;
      }

LABEL_245:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v58 = v56;
    v59 = v51;
    if (v56)
    {
LABEL_25:
      v263 = (v58 - 1) & v58;
      v63 = __clz(__rbit64(v58)) | (v59 << 6);
      v64 = v245;
      v65 = v254;
      v66 = v267;
      (*(v247 + 16))(v245, *(v254 + 48) + *(v247 + 72) * v63, v267);
      v67 = *(v65 + 56) + *(v248 + 72) * v63;
      v68 = v246;
      v69 = v259;
      (*(v248 + 16))(v246, v67, v259);
      v70 = v64;
      v50 = v257;
      v262 = v59;
LABEL_33:
      v79 = *(v50 + 48);
      v80 = v252;
      (*v266)(v252, v70, v66);
      (*v268)((v80 + v79), v68, v69);
      v81 = 0;
LABEL_34:
      v57 = v260;
      goto LABEL_35;
    }

    if (v239 <= v51 + 1)
    {
      v60 = v51 + 1;
    }

    else
    {
      v60 = v239;
    }

    v61 = v60 - 1;
    v62 = v51;
    while (1)
    {
      v59 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_228;
      }

      if (v59 >= v239)
      {
        break;
      }

      v58 = *(v241 + 8 * v59);
      ++v62;
      if (v58)
      {
        goto LABEL_25;
      }
    }

    v262 = v61;
    v263 = 0;
    v81 = 1;
    v80 = v252;
LABEL_35:
    v82 = *(v50 - 8);
    (*(v82 + 56))(v80, v81, 1, v50);
    (*v250)(v57, v80, v253);
    if ((*(v82 + 48))(v57, 1, v50) == 1)
    {
      _sSh8IteratorV8_VariantOySS__GWOe_0(v254);
      v53 = v272;
      v49 = v273;
      v91 = HIBYTE(v273) & 0xF;
      v89 = (v272 & 0xFFFFFFFFFFFFLL);
      if ((v273 & 0x2000000000000000) != 0)
      {
        v178 = HIBYTE(v273) & 0xF;
      }

      else
      {
        v178 = v272 & 0xFFFFFFFFFFFFLL;
      }

      if (!v178 && (v272 & ~v273 & 0x2000000000000000) == 0)
      {
        v273;
        v273 = 0xE100000000000000;
        return 93;
      }

      if ((v273 & 0x2000000000000000) != 0 && v91 != 15)
      {
        v179 = 8 * (HIBYTE(v273) & 7);
        v180 = (-255 << v179) - 1;
        v181 = 93 << v179;
        v182 = v180 & v273 | v181;
        v183 = v180 & v272 | v181;
        if (v91 >= 8)
        {
          v184 = v182;
        }

        else
        {
          v184 = v273;
        }

        if (v91 < 8)
        {
          v53 = v183;
        }

        v273;
        0xE100000000000000;
        v185 = 0xA000000000000000;
        if (!(*&v53 & 0x8080808080808080 | v184 & 0x80808080808080))
        {
          v185 = 0xE000000000000000;
        }

        v186 = (v185 & 0xFF00000000000000 | (v91 << 56) | v184 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
        goto LABEL_224;
      }

      0xE100000000000000;
      if ((v49 & 0x1000000000000000) != 0)
      {
        goto LABEL_231;
      }

      v100 = __OFADD__(v178, 1);
      v188 = v178 + 1;
      if (v100)
      {
        goto LABEL_233;
      }

LABEL_177:
      v189 = *&v53 & ~v49;
      if ((v189 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL))
      {
        v190 = _StringGuts.nativeUnusedCapacity.getter(*&v53, v49);
        if (v191)
        {
          goto LABEL_241;
        }

        if (v188 > 15)
        {
          goto LABEL_188;
        }

        if ((v49 & 0x2000000000000000) == 0)
        {
          if (v190 < 1)
          {
            goto LABEL_183;
          }

LABEL_188:
          v193 = v189 & 0x2000000000000000;
          v194 = _StringGuts.nativeUnusedCapacity.getter(*&v53, v49);
          if ((v195 & 1) != 0 || v194 <= 0)
          {
            if (v193)
            {
              swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL);
            }

            v196 = _StringGuts.nativeCapacity.getter(*&v53, v49);
            if (v197)
            {
              v198 = 0;
            }

            else
            {
              v198 = v196;
            }

            if (v198 + 0x4000000000000000 < 0)
            {
              __break(1u);
              goto LABEL_241;
            }

            v199 = 2 * v198;
            if (v199 > v188)
            {
              v188 = v199;
            }
          }

          else if (v193 && swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_202;
          }

          _StringGuts.grow(_:)(v188);
LABEL_202:
          v271 = xmmword_18071DB50;
          closure #1 in _StringGuts.append(_:)(&v271, 1uLL, &v272, 1);
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          return v272;
        }

LABEL_204:
        v188 = v49;
LABEL_205:
        v89 = 0xE100000000000000;
        0xE100000000000000;
        v200._rawBits = 65537;
        v91 = 93;
        v201._rawBits = 1;
        v202._rawBits = _StringGuts.validateScalarRange(_:)(v201, v200, 0x5DuLL, 0xE100000000000000)._rawBits;
        if (v202._rawBits < 0x10000)
        {
          v202._rawBits |= 3;
        }

        if (v202._rawBits >> 16 || (v203._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
        {
          v91 = specialized static String._copying(_:)(v202._rawBits, v203._rawBits, 0x5DuLL, 0xE100000000000000);
          v89 = v204;
          0xE100000000000000;
        }

        if ((*&v89 & 0x2000000000000000) == 0)
        {
          goto LABEL_234;
        }

        *&v89;
        goto LABEL_212;
      }

      if (v188 > 15)
      {
        goto LABEL_188;
      }

      if ((v49 & 0x2000000000000000) != 0)
      {
        goto LABEL_204;
      }

LABEL_183:
      if ((v49 & 0x1000000000000000) == 0)
      {
        if ((*&v53 & 0x1000000000000000) != 0)
        {
          v192 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v192 = _StringObject.sharedUTF8.getter(*&v53, v49);
          v89 = v220;
        }

        closure #1 in _StringGuts._convertedToSmall()(v192, *&v89, &v271, v187);
        v188 = *(&v271 + 1);
        v53 = v271;
        goto LABEL_205;
      }

LABEL_229:
      v53 = _StringGuts._foreignConvertedToSmall()(*&v53, v49);
      v188 = v216;
      goto LABEL_205;
    }

    v83 = *(v50 + 48);
    v84 = *v266;
    v85 = v258;
    v86 = v267;
    (*v266)(v258, v57, v267);
    v87 = &v57[v83];
    v88 = v259;
    v261 = *v268;
    v261(v265, v87, v259);
    v53 = v256;
    if (v52)
    {
      goto LABEL_85;
    }

    v89 = v272;
    v49 = v273;
    v90 = HIBYTE(v273) & 0xF;
    v91 = v272 & 0xFFFFFFFFFFFFLL;
    if ((v273 & 0x2000000000000000) != 0)
    {
      v92 = HIBYTE(v273) & 0xF;
    }

    else
    {
      v92 = v272 & 0xFFFFFFFFFFFFLL;
    }

    if (!v92 && (v272 & ~v273 & 0x2000000000000000) == 0)
    {
      v273;
      v272 = 8236;
      v120 = 0xE200000000000000;
      goto LABEL_82;
    }

    if ((v273 & 0x2000000000000000) == 0 || v90 > 0xD)
    {
      break;
    }

    v93 = 8 * (HIBYTE(v273) & 7);
    v94 = (-255 << v93) - 1;
    v95 = 44 << v93;
    v96 = v90 + 1;
    if (v90 >= 8)
    {
      v98 = v94 & v273 | v95;
      v97 = 8 * (v96 & 7);
LABEL_65:
      v106 = ((-255 << v97) - 1) & v98 | (32 << v97);
    }

    else
    {
      v89 = (v94 & v272 | v95);
      if (v90 == 7)
      {
        v97 = 0;
        v98 = v273;
        goto LABEL_65;
      }

      v89 = (((-255 << (8 * (v96 & 7u))) - 1) & *&v89 | (32 << (8 * (v96 & 7u))));
      v106 = v273;
    }

    v273;
    0xE200000000000000;
    v121 = 0xE000000000000000;
    if (*&v89 & 0x8080808080808080 | v106 & 0x80808080808080)
    {
      v121 = 0xA000000000000000;
    }

    v120 = (v121 & 0xFF00000000000000 | (v90 << 56) | v106 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v272 = v89;
LABEL_82:
    v273 = v120;
LABEL_83:
    v85 = v258;
LABEL_84:
    v86 = v267;
LABEL_85:
    v122 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Any>();
    inited = swift_initStackObject(v122, &v270);
    *(inited + 1) = v264;
    inited[7] = v86;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
    v84(boxed_opaque_existential_0Tm, v85, v86);
    specialized _debugPrint<A>(_:separator:terminator:to:)(inited, 32, 0xE100000000000000, 0, 0xE000000000000000, &v272);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(inited);
    __swift_destroy_boxed_opaque_existential_1Tm(inited + 4);
    v126 = v272;
    v125 = v273;
    v127 = HIBYTE(v273) & 0xF;
    v49 = v272 & 0xFFFFFFFFFFFFLL;
    if ((v273 & 0x2000000000000000) != 0)
    {
      v128 = HIBYTE(v273) & 0xF;
    }

    else
    {
      v128 = v272 & 0xFFFFFFFFFFFFLL;
    }

    if (!v128 && (v272 & ~v273 & 0x2000000000000000) == 0)
    {
      v273;
      v272 = 8250;
      v273 = 0xE200000000000000;
      v13 = v255;
      goto LABEL_14;
    }

    if ((v273 & 0x2000000000000000) == 0 || v127 > 0xD)
    {
      0xE200000000000000;
      if ((v125 & 0x1000000000000000) != 0)
      {
        v128 = String.UTF8View._foreignCount()();
      }

      v100 = __OFADD__(v128, 2);
      v136 = v128 + 2;
      v13 = v255;
      if (!v100)
      {
        if ((*&v126 & ~v125 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v125 & 0xFFFFFFFFFFFFFFFLL))
        {
          v137 = _StringGuts.nativeUnusedCapacity.getter(*&v126, v125);
          if (v138)
          {
            goto LABEL_241;
          }

          if (v136 <= 15)
          {
            if ((v125 & 0x2000000000000000) == 0)
            {
              if (v137 < 2)
              {
                goto LABEL_104;
              }

              goto LABEL_13;
            }

LABEL_110:
            v140 = v125;
            goto LABEL_111;
          }
        }

        else if (v136 <= 15)
        {
          if ((v125 & 0x2000000000000000) == 0)
          {
LABEL_104:
            if ((v125 & 0x1000000000000000) != 0)
            {
              v126 = _StringGuts._foreignConvertedToSmall()(*&v126, v125);
              v140 = v162;
            }

            else
            {
              if ((*&v126 & 0x1000000000000000) != 0)
              {
                v139 = ((v125 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v139 = _StringObject.sharedUTF8.getter(*&v126, v125);
                v49 = v172;
              }

              closure #1 in _StringGuts._convertedToSmall()(v139, v49, &v271, v135);
              v140 = *(&v271 + 1);
              v126 = v271;
            }

LABEL_111:
            v141 = 0xE200000000000000;
            0xE200000000000000;
            v142._rawBits = 1;
            v143._rawBits = 131073;
            v144._rawBits = _StringGuts.validateScalarRange(_:)(v142, v143, 0x203AuLL, 0xE200000000000000)._rawBits;
            if (v144._rawBits < 0x10000)
            {
              v144._rawBits |= 3;
            }

            if (v144._rawBits >> 16 || (v147 = 8250, (v145._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
            {
              v147 = specialized static String._copying(_:)(v144._rawBits, v145._rawBits, 0x203AuLL, 0xE200000000000000);
              v141 = v148;
              0xE200000000000000;
            }

            if ((v141 & 0x2000000000000000) != 0)
            {
              v141;
            }

            else if ((v141 & 0x1000000000000000) != 0)
            {
              v147 = _StringGuts._foreignConvertedToSmall()(v147, v141);
              v175 = v174;
              v141;
              v141 = v175;
            }

            else
            {
              if ((v147 & 0x1000000000000000) != 0)
              {
                v168 = ((v141 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v169 = v147 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v168 = _StringObject.sharedUTF8.getter(v147, v141);
              }

              closure #1 in _StringGuts._convertedToSmall()(v168, v169, &v271, v146);
              v141;
              v141 = *(&v271 + 1);
              v147 = v271;
            }

            v149 = HIBYTE(v140) & 0xF;
            v150 = HIBYTE(v141) & 0xF;
            v151 = v150 + v149;
            v50 = v257;
            if (v150 + v149 <= 0xF)
            {
              0xE200000000000000;
              if (v150)
              {
                v152 = 0;
                v153 = 0;
                v154 = 8 * v149;
                v155 = 8 * v150;
                v53 = v256;
                do
                {
                  v156 = v141 >> (v152 & 0x38);
                  if (v153 < 8)
                  {
                    v156 = v147 >> v152;
                  }

                  v157 = (v156 << (v154 & 0x38)) | ((-255 << (v154 & 0x38)) - 1) & v140;
                  v158 = (v156 << v154) | ((-255 << v154) - 1) & *&v126;
                  if (v149 <= 7)
                  {
                    v126 = v158;
                  }

                  else
                  {
                    v140 = v157;
                  }

                  ++v149;
                  v154 += 8;
                  v152 += 8;
                  ++v153;
                }

                while (v155 != v152);
              }

              else
              {
                v53 = v256;
              }

              v125;
              0xE200000000000000;
              v161 = 0xE000000000000000;
              if (*&v126 & 0x8080808080808080 | v140 & 0x80808080808080)
              {
                v161 = 0xA000000000000000;
              }

              v272 = v126;
              v273 = v161 & 0xFF00000000000000 | (v151 << 56) | v140 & 0xFFFFFFFFFFFFFFLL;
              v88 = v259;
              v13 = v255;
              v49 = v249;
              goto LABEL_15;
            }

            goto LABEL_241;
          }

          goto LABEL_110;
        }

LABEL_13:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v136, 2);
        v271 = v238;
        closure #1 in _StringGuts.append(_:)(&v271, 2uLL, &v272, 1);
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
LABEL_14:
        v49 = v249;
        v50 = v257;
        goto LABEL_15;
      }

LABEL_228:
      __break(1u);
      goto LABEL_229;
    }

    v129 = 8 * (HIBYTE(v273) & 7);
    v130 = (-255 << v129) - 1;
    v131 = 58 << v129;
    v132 = v127 + 1;
    if (v127 >= 8)
    {
      v134 = v130 & v273 | v131;
      v133 = 8 * (v132 & 7);
      v49 = v249;
      v50 = v257;
LABEL_129:
      v159 = ((-255 << v133) - 1) & v134 | (32 << v133);
    }

    else
    {
      v126 = (v130 & v272 | v131);
      v49 = v249;
      v50 = v257;
      if (v127 == 7)
      {
        v133 = 0;
        v134 = v273;
        goto LABEL_129;
      }

      v126 = (((-255 << (8 * (v132 & 7u))) - 1) & *&v126 | (32 << (8 * (v132 & 7u))));
      v159 = v273;
    }

    v273;
    0xE200000000000000;
    v160 = 0xE000000000000000;
    if (*&v126 & 0x8080808080808080 | v159 & 0x80808080808080)
    {
      v160 = 0xA000000000000000;
    }

    v272 = v126;
    v273 = (v160 & 0xFF00000000000000 | (v127 << 56) | v159 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
    v13 = v255;
LABEL_15:
    v54 = swift_initStackObject(v122, &v269);
    *(v54 + 1) = v264;
    v54[7] = v88;
    v55 = __swift_allocate_boxed_opaque_existential_0Tm(v54 + 4);
    v261(v55, v265, v88);
    specialized _debugPrint<A>(_:separator:terminator:to:)(v54, 32, 0xE100000000000000, 0, 0xE000000000000000, &v272);
    0xE000000000000000;
    0xE100000000000000;
    swift_setDeallocating(v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v54 + 4);
    v52 = 0;
    v43 = v263;
    v51 = v262;
  }

  0xE200000000000000;
  if ((v49 & 0x1000000000000000) != 0)
  {
    v92 = String.UTF8View._foreignCount()();
  }

  v100 = __OFADD__(v92, 2);
  v101 = v92 + 2;
  v85 = v258;
  if (!v100)
  {
    if ((*&v89 & ~v49 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v101 > 15)
      {
        goto LABEL_61;
      }

      if ((v49 & 0x2000000000000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_67;
    }

    v102 = _StringGuts.nativeUnusedCapacity.getter(*&v89, v49);
    if ((v103 & 1) == 0)
    {
      if (v101 > 15)
      {
        goto LABEL_61;
      }

      if ((v49 & 0x2000000000000000) == 0)
      {
        if (v102 < 2)
        {
LABEL_56:
          if ((v49 & 0x1000000000000000) != 0)
          {
            v89 = _StringGuts._foreignConvertedToSmall()(*&v89, v49);
            v105 = v163;
          }

          else
          {
            if ((*&v89 & 0x1000000000000000) != 0)
            {
              v104 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v104 = _StringObject.sharedUTF8.getter(*&v89, v49);
              v91 = v173;
            }

            closure #1 in _StringGuts._convertedToSmall()(v104, v91, &v271, v99);
            v105 = *(&v271 + 1);
            v89 = v271;
          }

          goto LABEL_68;
        }

LABEL_61:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v101, 2);
        v271 = v237;
        closure #1 in _StringGuts.append(_:)(&v271, 2uLL, &v272, 1);
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        goto LABEL_84;
      }

LABEL_67:
      v105 = v49;
LABEL_68:
      v107 = 0xE200000000000000;
      0xE200000000000000;
      v108._rawBits = 1;
      v109._rawBits = 131073;
      v110._rawBits = _StringGuts.validateScalarRange(_:)(v108, v109, 0x202CuLL, 0xE200000000000000)._rawBits;
      if (v110._rawBits < 0x10000)
      {
        v110._rawBits |= 3;
      }

      if (v110._rawBits >> 16 || (v113 = 8236, (v111._rawBits & 0xFFFFFFFFFFFF0000) != 0x20000))
      {
        v113 = specialized static String._copying(_:)(v110._rawBits, v111._rawBits, 0x202CuLL, 0xE200000000000000);
        v107 = v114;
        0xE200000000000000;
      }

      if ((v107 & 0x2000000000000000) != 0)
      {
        v107;
      }

      else if ((v107 & 0x1000000000000000) != 0)
      {
        v113 = _StringGuts._foreignConvertedToSmall()(v113, v107);
        v177 = v176;
        v107;
        v107 = v177;
      }

      else
      {
        if ((v113 & 0x1000000000000000) != 0)
        {
          v170 = ((v107 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v171 = v113 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v170 = _StringObject.sharedUTF8.getter(v113, v107);
        }

        closure #1 in _StringGuts._convertedToSmall()(v170, v171, &v271, v112);
        v107;
        v107 = *(&v271 + 1);
        v113 = v271;
      }

      v115 = specialized _SmallString.init(_:appending:)(*&v89, v105, v113, v107);
      if ((v117 & 1) == 0)
      {
        v118 = v115;
        v119 = v116;
        v49;
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        v272 = v118;
        v273 = v119;
        goto LABEL_83;
      }
    }

LABEL_241:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __break(1u);
LABEL_231:
  v217 = String.UTF8View._foreignCount()();
  v188 = v217 + 1;
  if (!__OFADD__(v217, 1))
  {
    goto LABEL_177;
  }

LABEL_233:
  __break(1u);
LABEL_234:
  if ((*&v89 & 0x1000000000000000) != 0)
  {
    v91 = _StringGuts._foreignConvertedToSmall()(v91, *&v89);
    v222 = v221;
    *&v89;
    v89 = v222;
  }

  else
  {
    if ((v91 & 0x1000000000000000) != 0)
    {
      v218 = ((*&v89 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v219 = v91 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v218 = _StringObject.sharedUTF8.getter(v91, *&v89);
    }

    closure #1 in _StringGuts._convertedToSmall()(v218, v219, &v271, v187);
    *&v89;
    v89 = *(&v271 + 8);
    v91 = v271;
  }

LABEL_212:
  v205 = HIBYTE(v188) & 0xF;
  v206 = HIBYTE(*&v89) & 0xFLL;
  v207 = v206 + v205;
  if (v206 + v205 > 0xF)
  {
    goto LABEL_241;
  }

  0xE100000000000000;
  if (v206)
  {
    v208 = 0;
    v209 = 0;
    v210 = 8 * v205;
    do
    {
      v211 = *&v89 >> (v208 & 0x38);
      if (v209 < 8)
      {
        v211 = v91 >> v208;
      }

      v212 = (v211 << (v210 & 0x38)) | ((-255 << (v210 & 0x38)) - 1) & v188;
      v213 = (v211 << v210) | ((-255 << v210) - 1) & *&v53;
      if (v205 <= 7)
      {
        v53 = v213;
      }

      else
      {
        v188 = v212;
      }

      ++v205;
      v210 += 8;
      v208 += 8;
      ++v209;
    }

    while (8 * v206 != v208);
  }

  v49;
  0xE100000000000000;
  v214 = 0xA000000000000000;
  if (!(*&v53 & 0x8080808080808080 | v188 & 0x80808080808080))
  {
    v214 = 0xE000000000000000;
  }

  v186 = v214 & 0xFF00000000000000 | (v207 << 56) | v188 & 0xFFFFFFFFFFFFFFLL;
LABEL_224:
  v273 = v186;
  return v53;
}

uint64_t Dictionary.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Dictionary(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], v6, v7);
  return specialized Collection._makeKeyValuePairDescription<A, B>(withTypeName:)(v6, a2, a3, WitnessTable);
}

uint64_t specialized Error._domain.getter(unint64_t a1)
{
  TypeName = swift_getTypeName(a1, 1);
  if (v2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = TypeName;
  v4 = v2;
  v5 = validateUTF8(_:)(TypeName, v2);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v3, v4, v5 & 1, v8);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v3, v4, v6, v7);
}

uint64_t specialized Error._domain.getter(uint64_t a1, unint64_t a2)
{
  TypeName = swift_getTypeName(a2, 1);
  if (v3 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = TypeName;
  v5 = v3;
  v6 = validateUTF8(_:)(TypeName, v3);
  if ((v6 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v4, v5, v6 & 1, v9);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v4, v5, v7, v8);
}

uint64_t specialized Error._domain.getter()
{
  TypeName = swift_getTypeName(&type metadata for Unicode.UTF8.ValidationError, 1);
  if (v1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = TypeName;
  v3 = v1;
  v4 = validateUTF8(_:)(TypeName, v1);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v2, v3, v4 & 1, v7);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v2, v3, v5, v6);
}

uint64_t Error._domain.getter(swift::SwiftError *a1)
{
  DynamicType = swift_getDynamicType(v1, a1, 0);
  TypeName = swift_getTypeName(DynamicType, 1);
  if (v4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = TypeName;
  v6 = v4;
  v7 = validateUTF8(_:)(TypeName, v4);
  if ((v7 & 0x8000000000000000) == 0)
  {
    return specialized static String._uncheckedFromUTF8(_:isASCII:)(v5, v6, v7 & 1, v10);
  }

  return repairUTF8(_:firstKnownBrokenRange:)(v5, v6, v8, v9);
}

Swift::Bool __swiftcall Dictionary.Index._isUniquelyReferenced()()
{
  if (*(v0 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*v0 >= 0)
  {
    v1 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v1 = *v0;
  }

  v2 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v1, v2))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return !v1 || swift_isUniquelyReferenced_nonNull_native(v1);
}

unint64_t Dictionary.Index._asCocoa.getter(unint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

void Dictionary.Index._asNative.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

void *(*Dictionary.Index._asCocoa.modify(void *a1))(void *result)
{
  a1[2] = v1;
  if (*(v1 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v2;
  return Dictionary.Index._asCocoa.modify;
}

void *Dictionary.Index._asCocoa.modify(void *result)
{
  v2 = result[1];
  v1 = result[2];
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 16) = 1;
  return result;
}

void Dictionary.Index._asCocoa.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  sub_180615F30(*v2, *(v2 + 8), 1);
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 1;
}

BOOL static Dictionary.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 16) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 == a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 == a4;
}

BOOL static _HashTable.Index.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 == a3;
}

BOOL static Dictionary.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  if (a3)
  {
    if (a6)
    {
      if (a1 >= 0)
      {
        v9 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v9 = a1;
      }

      v10 = type metadata accessor for __CocoaDictionary.Index.Storage();
      if (!swift_dynamicCastClass(v9, v10))
      {
        goto LABEL_21;
      }

      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      if (!swift_dynamicCastClass(v7, v10))
      {
LABEL_21:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (*(v9 + 16) != *(v7 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return a2 < a5;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a6)
  {
    goto LABEL_20;
  }

  if (a2 != a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 < a4;
}

BOOL static _HashTable.Index.< infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 < a3;
}

void Dictionary.Index.hash(into:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    a3 = a2;
  }

  Hasher._combine(_:)(a4 & 1);
  Hasher._combine(_:)(a3);
}

Swift::Int Dictionary.Index.hashValue.getter(Swift::UInt a1, Swift::UInt a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    a2 = a1;
  }

  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t Dictionary.Iterator._variant.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Dictionary.Iterator._Variant(0, a1[2], a1[3], a1[4]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

__n128 Dictionary.Iterator.init(_variant:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

__n128 Dictionary.Iterator.init(_native:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

double Dictionary.Iterator.init(_cocoa:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1 | 0x8000000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

void (*Dictionary.Iterator._asNative.modify(atomic_ullong ***a1))(atomic_ullong ***a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x58, 0xCEBBuLL);
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5] = v1;
  v5 = *v1;
  v4[6] = *v1;
  v6 = *(v1 + 8);
  v4[7] = v6;
  v7 = *(v1 + 16);
  v4[8] = v7;
  v8 = *(v1 + 24);
  v4[9] = v8;
  v9 = *(v1 + 32);
  v4[10] = v9;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v5;
  return Dictionary.Iterator._asNative.modify;
}

uint64_t _NativeDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[4];
  if (v14)
  {
    v2[4] = (v14 - 1) & v14;
    v15 = __clz(__rbit64(v14)) | (v2[3] << 6);
LABEL_8:
    v20 = *v2;
    (*(v10 + 16))(v13, *(v20 + 48) + *(v10 + 72) * v15, v9);
    (*(v5 + 16))(v8, *(v20 + 56) + *(v5 + 72) * v15, v4);
    swift_getTupleTypeMetadata2(0, v9, v4, "key value ", 0);
    v22 = v21;
    v23 = *(v21 + 48);
    (*(v10 + 32))(a2, v13, v9);
    (*(v5 + 32))(a2 + v23, v8, v4);
    return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  else
  {
    v16 = v2[3];
    v17 = (v2[2] + 64) >> 6;
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v18 >= v17)
      {
        break;
      }

      v2[3] = v18;
      v19 = *(v2[1] + 8 * v18);
      v2[4] = v19;
      ++v16;
      if (v19)
      {
        v2[4] = (v19 - 1) & v19;
        v15 = __clz(__rbit64(v19)) | (v18 << 6);
        goto LABEL_8;
      }
    }

    swift_getTupleTypeMetadata2(0, v9, v4, "key value ", 0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a2, 1, 1, v24);
  }
}

uint64_t Dictionary.Iterator.customMirror.getter@<X0>(Class *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v23[0] = *v2;
  v23[1] = v5;
  v24 = *(v2 + 32);
  v20[0] = 0;
  v20[1] = 0;
  v6 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v6;
  v26 = *(v2 + 32);
  v7 = type metadata accessor for Dictionary.Iterator._Variant(0, a1[2], a1[3], a1[4]);
  (*(*(v7 - 8) + 16))(v21, v25, v7);
  v8 = static Mirror._superclassIterator<A>(_:_:)(v23, v20, a1);
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys05EmptyA0VySSSg5label_yp5valuetGGMR);
  v12 = swift_allocObject(v11, 0x30, 7uLL);
  v13 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v14 = swift_allocObject(v13, 0x18, 7uLL);
  v14[2] = 0;
  v15 = swift_allocObject(v13, 0x18, 7uLL);
  v15[2] = 0;
  v12[2] = v14;
  v12[3] = &protocol witness table for _IndexBox<A>;
  v12[4] = v15;
  v12[5] = &protocol witness table for _IndexBox<A>;
  v16 = *(v2 + 16);
  v21[0] = *v2;
  v21[1] = v16;
  v22 = *(v2 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v20, v21, a1, v17, 6uLL);
  v19 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  *a2 = a1;
  *(a2 + 8) = v12;
  *(a2 + 16) = 9;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v19;
  return result;
}

uint64_t Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t *a4@<X3>, Class *a5@<X4>, const char *a6@<X5>, swift *a7@<X6>, Class **a8@<X8>)
{
  v49 = a5;
  v50 = a1;
  v56 = a8;
  v55 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v53 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness(0, v17, v16, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v19 = v18;
  v57 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v54 = *a3;
  v22 = *a4;
  v23 = a4[1];
  v58[0] = v22;
  v58[1] = v23;
  v24 = static Mirror._superclassIterator<A>(_:_:)(a1, v58, a5);
  v51 = v25;
  v52 = v24;
  outlined consume of Mirror.AncestorRepresentation(v22, v23);
  v27 = type metadata accessor for _CollectionBox(0, a6, a7, v26);
  v28 = swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
  v29 = *(*v28 + 45);
  v30 = *(a6 - 1);
  v31 = *(v30 + 16);
  v48 = a2;
  v31(v28 + v29, a2, a6);
  (*(a7 + 8))(a6, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a6, v19, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v34 = type metadata accessor for _IndexBox(0, v19, AssociatedConformanceWitness, v33);
  v35 = swift_allocObject(v34, *(v34 + 48), *(v34 + 52));
  v36 = *(*v35 + 96);
  v37 = *(v57 + 32);
  v57 += 32;
  v37(v35 + v36, v21, v19);
  v38 = v48;
  (*(a7 + 9))(a6, a7);
  (*(v30 + 8))(v38, a6);
  v39 = v49;
  v40 = swift_allocObject(v34, *(v34 + 48), *(v34 + 52));
  v37(v40 + *(*v40 + 96), v21, v19);
  v28[2] = v35;
  v28[3] = &protocol witness table for _IndexBox<A>;
  v28[4] = v40;
  v28[5] = &protocol witness table for _IndexBox<A>;
  v41 = v53;
  (*(v55 + 32))(v53, v50, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v58, v41, v39, v42, 6uLL);
  v44 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  v45 = v56;
  *v56 = v39;
  v45[1] = v28;
  *(v45 + 16) = v54;
  v46 = v51;
  v45[3] = v52;
  v45[4] = v46;
  *(v45 + 40) = v44;
  return result;
}

void Dictionary.customMirror.getter(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a1;
  v9 = type metadata accessor for Dictionary(0, a2, a3, a4);
  v56[0] = 0;
  v56[1] = 0;
  a1;
  v10 = static Mirror._superclassIterator<A>(_:_:)(&v59, v56, v9);
  v12 = v11;
  v13 = swift_allocObject(&unk_1EEEADE80, 0x28, 7uLL);
  v13[2] = v9;
  v13[3] = v9;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for [A : B], v9, v14);
  v13[4] = WitnessTable;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSg5label_yp5valuetMd, _sSSSg5label_yp5valuetMR);
  v18 = swift_getWitnessTable(protocol conformance descriptor for [A : B], v9, v17);
  v19 = type metadata accessor for LazyMapSequence(255, v9, v16, v18);
  v58 = WitnessTable;
  v20 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v19, &v58);
  v22 = type metadata accessor for _CollectionBox(0, v19, v20, v21);
  v23 = swift_allocObject(v22, 0x48, 7uLL);
  v23[6] = a1;
  v23[7] = closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)partial apply;
  v23[8] = v13;
  v24 = a1 & 0xC000000000000001;
  v55 = a1 & 0xC000000000000001;
  v52 = v12;
  v53 = v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = (a1 & 0xFFFFFFFFFFFFFF8);
    }

    a1;
    v26 = [v25 count];
    type metadata accessor for __BridgingBufferStorage(0);
    if ((v26 - 0x1000000000000000) >> 61 == 7)
    {
      if (!__OFADD__(8 * v26, 24))
      {
        v28 = swift_bufferAllocate(v27, (8 * v26 + 24), 7uLL);
        v28[2] = v26;
        [v25 getObjects:0 andKeys:v28 + 3 count:v26];
        v29 = type metadata accessor for __CocoaDictionary.Index.Storage();
        v30 = swift_allocObject(v29, 0x20, 7uLL);
        v31 = 0;
        *(v30 + 16) = v25;
        *(v30 + 24) = v28;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = (a1 + 64);
  v33 = -1 << *(a1 + 32);
  v30 = -v33;
  v34 = (63 - v33) >> 6;
  while (1)
  {
    v36 = *v32++;
    v35 = v36;
    if (v36)
    {
      break;
    }

    v24 -= 64;
    if (!--v34)
    {
      goto LABEL_13;
    }
  }

  v30 = __clz(__rbit64(v35)) - v24;
LABEL_13:
  v31 = *(a1 + 36);
LABEL_14:
  v37 = type metadata accessor for Dictionary.Index(255, a2, a3, a4);
  v39 = type metadata accessor for _IndexBox(0, v37, &protocol witness table for [A : B].Index, v38);
  v40 = swift_allocObject(v39, 0x21, 7uLL);
  v40[2] = v30;
  v40[3] = v31;
  *(v40 + 32) = v55 != 0;
  if (!v55)
  {
    v46 = (1 << *(a1 + 32));
    v47 = *(a1 + 36);
    goto LABEL_22;
  }

  if (a1 < 0)
  {
    v41 = a1;
  }

  else
  {
    v41 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v42 = [swift_unknownObjectRetain(v41) count];
  type metadata accessor for __BridgingBufferStorage(0);
  if ((v42 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_27;
  }

  if (__OFADD__(8 * v42, 24))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v44 = swift_bufferAllocate(v43, (8 * v42 + 24), 7uLL);
  v44[2] = v42;
  [v41 getObjects:0 andKeys:v44 + 3 count:v42];
  a1;
  v45 = type metadata accessor for __CocoaDictionary.Index.Storage();
  v46 = swift_allocObject(v45, 0x20, 7uLL);
  v46[2] = v41;
  v46[3] = v44;
  v47 = v44[2];
  a1;
LABEL_22:
  v48 = swift_allocObject(v39, 0x21, 7uLL);
  v48[2] = v46;
  v48[3] = v47;
  *(v48 + 32) = v55 != 0;
  v23[2] = v40;
  v23[3] = &protocol witness table for _IndexBox<A>;
  v23[4] = v48;
  v23[5] = &protocol witness table for _IndexBox<A>;
  v57 = a1;
  a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  v50 = swift_dynamicCast(v56, &v57, v9, v49, 6uLL);
  v51 = v50;
  if (v50)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  *a5 = v9;
  *(a5 + 8) = v23;
  *(a5 + 16) = 6;
  *(a5 + 24) = v53;
  *(a5 + 32) = v52;
  *(a5 + 40) = v51;
}

void Dictionary.popFirst()(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = a1[2];
  v7 = *v2 & 0xC000000000000001;
  if (v7)
  {
    if (v5 < 0)
    {
      v8 = *v2;
    }

    else
    {
      v8 = (v5 & 0xFFFFFFFFFFFFFF8);
    }

    if ([v8 count])
    {
      v9 = [swift_unknownObjectRetain(v8) count];
      type metadata accessor for __BridgingBufferStorage(0);
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
        if (!__OFADD__(8 * v9, 24))
        {
          v11 = swift_bufferAllocate(v10, (8 * v9 + 24), 7uLL);
          v11[2] = v9;
          [v8 getObjects:0 andKeys:v11 + 3 count:v9];
          v5;
          v12 = type metadata accessor for __CocoaDictionary.Index.Storage();
          v13 = swift_allocObject(v12, 0x20, 7uLL);
          *(v13 + 16) = v8;
          *(v13 + 24) = v11;
          v5;
          v14 = 0;
LABEL_17:
          v26 = v7 != 0;
          v27 = a1[3];
          swift_getTupleTypeMetadata2(0, v6, v27, "key value ", 0);
          v29 = v28;
          v30 = *(v28 + 48);
          v31 = type metadata accessor for Dictionary._Variant(0, v6, v27, a1[4]);
          Dictionary._Variant.remove(at:)(a2, a2 + v30, v13, v14, v26, v31);
          sub_180615F30(v13, v14, v26);
          v22 = *(*(v29 - 8) + 56);
          v24 = a2;
          v25 = 0;
          v23 = v29;
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else if (*(v5 + 16))
  {
    v15 = 0;
    v16 = (v5 + 64);
    v17 = -1 << *(v5 + 32);
    v13 = -v17;
    v18 = (63 - v17) >> 6;
    while (1)
    {
      v20 = *v16++;
      v19 = v20;
      if (v20)
      {
        break;
      }

      v15 -= 64;
      if (!--v18)
      {
        goto LABEL_16;
      }
    }

    v13 = __clz(__rbit64(v19)) - v15;
LABEL_16:
    v14 = *(v5 + 36);
    goto LABEL_17;
  }

  swift_getTupleTypeMetadata2(0, v6, a1[3], "key value ", 0);
  v22 = *(*(v21 - 8) + 56);
  v23 = v21;
  v24 = a2;
  v25 = 1;
LABEL_18:

  v22(v24, v25, 1, v23);
}