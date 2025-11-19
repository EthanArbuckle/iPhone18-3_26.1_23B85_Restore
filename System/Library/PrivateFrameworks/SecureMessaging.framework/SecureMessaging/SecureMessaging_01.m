uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
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
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
      return outlined assign with take of XPCUtils.XPCInterfaceRequest(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for XPCUtils.XPCInterfaceRequest);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
  v20 = *v4;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
      v26 = *v8;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v30 = v29[1];
    v31 = v29[3];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v33 = (v28[6] + 16 * v17);
  *v33 = a5;
  v33[1] = a6;
  v34 = (v28[7] + 32 * v17);
  *v34 = a1;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = a4;
  v35 = v28[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;

  return outlined copy of Data._Representation(a5, a6);
}

{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
      v26 = *v8;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = *v29;
    v31 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    return outlined consume of Data._Representation(v30, v31);
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v33 = (v28[6] + 32 * v17);
  *v33 = a3;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v34 = (v28[7] + 16 * v17);
  *v34 = a1;
  v34[1] = a2;
  v35 = v28[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;

  return outlined copy of Data._Representation(a5, a6);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
      v26 = *v8;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = *v29;
    v31 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    return outlined consume of Data._Representation(v30, v31);
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v33 = (v28[6] + 32 * v17);
  *v33 = a3;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v34 = (v28[7] + 16 * v17);
  *v34 = a1;
  v34[1] = a2;
  v35 = v28[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
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
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return outlined init with take of MLS.KeyUpdatePolicy(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

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
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
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
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return outlined init with take of MLS.KeyUpdatePolicy(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
      v24 = *v7;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 32 * v15);
  *v30 = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return outlined init with take of MLS.KeyUpdatePolicy(a1, v21);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(const void *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    v23 = (v20[6] + 48 * v9);
    v24 = *a2;
    v25 = a2[2];
    v23[1] = a2[1];
    v23[2] = v25;
    *v23 = v24;
    memcpy((v20[7] + 296 * v9), a1, 0x128uLL);
    v26 = v20[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v20[2] = v27;
      return outlined init with copy of MLS.InMemoryPersister.GroupEventStoreID(a2, &v28);
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 296 * v9;

  return outlined assign with take of MLS.InMemoryPersister.OutgoingEventEntry(a1, v21);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    v23 = (v20[6] + 48 * v9);
    v24 = *a2;
    v25 = a2[2];
    v23[1] = a2[1];
    v23[2] = v25;
    *v23 = v24;
    v26 = (v20[7] + 112 * v9);
    v27 = *a1;
    v28 = a1[2];
    v26[1] = a1[1];
    v26[2] = v28;
    *v26 = v27;
    v29 = a1[3];
    v30 = a1[4];
    v31 = a1[6];
    v26[5] = a1[5];
    v26[6] = v31;
    v26[3] = v29;
    v26[4] = v30;
    v32 = v20[2];
    v13 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v13)
    {
      v20[2] = v33;
      return outlined init with copy of MLS.InMemoryPersister.GroupEventStoreID(a2, &v34);
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 112 * v9;

  return outlined assign with take of MLS.InMemoryPersister.IncomingEventEntry(a1, v21);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v9 = v8;
  v18 = *v8;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a7 & 1) == 0)
  {
    if (v26 < v24 || (a7 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, a7 & 1);
      v28 = *v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
      if ((v25 & 1) != (v29 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v27 = result;
      specialized _NativeDictionary.copy()();
      result = v27;
    }
  }

  v30 = *v9;
  if (v25)
  {
    v31 = v30[7] + 24 * result;
    *v31 = a1;
    *(v31 + 8) = a8;
    *(v31 + 16) = a2 & 1;
    return result;
  }

  v30[(result >> 6) + 8] |= 1 << result;
  v32 = (v30[6] + 32 * result);
  *v32 = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a6;
  v33 = v30[7] + 24 * result;
  *v33 = a1;
  *(v33 + 8) = a8;
  *(v33 + 16) = a2 & 1;
  v34 = v30[2];
  v23 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30[2] = v35;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  v21 = (v20[6] + 48 * result);
  v22 = *a2;
  v23 = a2[2];
  v21[1] = a2[1];
  v21[2] = v23;
  *v21 = v22;
  *(v20[7] + 8 * result) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20[2] = v25;
  return outlined init with copy of MLS.InMemoryPersister.GroupMessageStoreID(a2, &v26);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for MetricCollector.Event();
  result = outlined init with take of XPCUtils.XPCInterfaceRequest(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for MetricCollector.Event);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  result = outlined init with take of XPCUtils.XPCInterfaceRequest(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for XPCUtils.XPCInterfaceRequest);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of MLS.KeyUpdatePolicy(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of MLS.KeyUpdatePolicy(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  v5 = *(a4 + 8);
  v6 = *(a4 + 16);
  v7 = *(a4 + 17);
  *(v4 + 16) = *a4;
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  *(v4 + 33) = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  *v9 = v4;
  v9[1] = specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(v4 + 34, v4 + 16);
}

uint64_t specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
  }

  else
  {
    v3 = specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  **(v0 + 40) = *(v0 + 34);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 56);
  return (*(v0 + 8))();
}

uint64_t specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  *(v9 + 88) = v13;
  *(v9 + 96) = v8;
  *(v9 + 72) = a6;
  *(v9 + 80) = a8;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 104) = *v8;
  *(v9 + 168) = *a7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static RegistrationActor.shared;
  *(v9 + 112) = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:), v10, 0);
}

uint64_t specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)()
{
  v20 = *(v0 + 168);
  v1 = *(v0 + 96);
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);
  v19 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  Logger.init(subsystem:category:)();
  v6 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.clientUUID);
  v7 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v8 = [v7 UUIDString];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.simUniqueID);
  *v12 = v5;
  v12[1] = v3;
  v13 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.simLabelID);
  *v13 = v2;
  v13[1] = v19;
  *(v1 + direct field offset for KDSRegistration.XPCCoordinator.uriSupportedState) = v20;
  v14 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.testPhoneNumberURI);
  *v14 = v21;
  v14[1] = v22;
  *(v1 + direct field offset for KDSRegistration.XPCCoordinator.listeners) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v15 = v12[1];
  v16 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.uniqueClientIdentifier);
  *v16 = *v12;
  v16[1] = v15;

  v17 = swift_task_alloc();
  *(v0 + 120) = v17;
  *v17 = v0;
  v17[1] = specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return specialized static XPCUtils.XPCClient.weakSharedInstance.getter();
}

{
  v1 = v0[16];
  v2 = v0[13];
  *(v0[12] + direct field offset for KDSRegistration.XPCCoordinator.xpcClient) = v1;
  v3 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);
  v0[17] = v3;
  v4 = swift_allocObject();
  v0[18] = v4;
  swift_weakInit();
  v5 = swift_allocObject();
  v0[19] = v5;
  *(v5 + 16) = *(v2 + 80);
  *(v5 + 24) = v4;
  v6 = *(*v3 + 352);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v10(&async function pointer to partial apply for closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:), v5);
}

{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v9 = *v0;

  v6 = *(v9 + 8);
  v7 = *(v1 + 96);

  return v6(v7);
}

uint64_t specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:), v3, 0);
}

uint64_t specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 80);
  v19 = type metadata accessor for KDSRegistration.XPCCoordinator();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = swift_task_alloc();
  *(v10 + 16) = v22;
  *v22 = v10;
  v22[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return (specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1)
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

unint64_t lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

uint64_t type metadata accessor for KDSRegistration.XPCRequest()
{
  result = type metadata singleton initialization cache for KDSRegistration.XPCRequest;
  if (!type metadata singleton initialization cache for KDSRegistration.XPCRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264F3C564()
{
  MEMORY[0x266755640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.XPCCoordinator.add(listener:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 24);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

uint64_t partial apply for closure #1 in KDSRegistration.XPCCoordinator.signWithParticipantKey(input:)@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return closure #1 in KDSRegistration.XPCCoordinator.signWithParticipantKey(input:)(v1[2], a1);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_264F3C968()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  outlined consume of Data._Representation(v0[4], v0[5]);
  v1 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #1 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(v1[6], v1[7], a1);
}

uint64_t partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(a1, a2, a3, a4, v4);
}

uint64_t partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredResult, @in_guaranteed KDSRegistration.RegistrationCompletedContext?) -> (@unowned Bool)(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredResult, @in_guaranteed KDSRegistration.RegistrationCompletedContext?) -> (@unowned Bool)(a1, a2, v7);
}

uint64_t partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
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
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

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
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

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
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

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
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

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
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

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
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

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
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264F3CE3C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for closure #1 in KDSRegistration.XPCCoordinator.obtainPhoneAuthenticationInfo(request:completion:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in KDSRegistration.XPCCoordinator.obtainPhoneAuthenticationInfo(request:completion:)(a1);
}

uint64_t partial apply for closure #2 in KDSRegistration.XPCCoordinator.obtainPhoneAuthenticationInfo(request:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in KDSRegistration.XPCCoordinator.obtainPhoneAuthenticationInfo(request:completion:)(a1, a2, v2);
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType);
  }

  return result;
}

uint64_t sub_264F3D278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_264F3D2C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void *sub_264F3D330@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_264F3D38C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 208))(&v4);
}

uint64_t sub_264F3D3F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_264F3D43C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);

  return v3(v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for KDSRegistration.XPCCoordinator()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 248);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.setupXPCConnection()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6();
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.update(supportedState:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.isRegistered(context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.signWithParticipantKey(input:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 296);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t sub_264F3DF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264F3E050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

void type metadata completion function for KDSRegistration.XPCRequest()
{
  type metadata accessor for CheckedContinuation<Data, Error>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for CheckedContinuation<Data, Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<Data, Error>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<Data, Error>);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.XPCRequest.RequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.XPCRequest.RequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_264F3E61C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type XPCActor and conformance XPCActor(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of MLS.FetchMemberResult<MLS.AllMember>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 126 >= 2 && a4 - 254 >= 2)
  {
    return outlined consume of MLS.AllMember();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult);
  }

  return result;
}

uint64_t outlined consume of MLS.FetchGroupRecoveryInfoResult(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15 && (a2 & 0xF000000000000000) != 0xB000000000000000)
  {
    outlined consume of Data._Representation(result, a2);

    return outlined consume of Data?(a3, a4);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult and conformance MLS.ReceiveResult()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError()
{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult and conformance MLS.SendResult()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult;
  if (!lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult);
  }

  return result;
}

uint64_t outlined consume of MLS.SendResult(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return outlined consume of Data?(a1, a2);
  }

  return a1;
}

uint64_t outlined init with take of MLS.KeyUpdatePolicy(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined assign with take of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest);
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

uint64_t partial apply for specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6);
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
    lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
    lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264F3F65C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264F3F694()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(v3);
}

uint64_t MLS.QueuedFTDInfo.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t MLS.QueuedFTDInfo.messageIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MLS.QueuedFTDInfo.clientContext.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

__n128 MLS.QueuedFTDInfo.init(destination:messageIdentifier:clientContext:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u64[0];
  v7 = a1[1].n128_u8[8];
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u64[0] = v6;
  a6[1].n128_u8[8] = v7;
  a6[2].n128_u64[0] = a2;
  a6[2].n128_u64[1] = a3;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u64[1] = a5;
  return result;
}

uint64_t MLS.EventQueue.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EventQueue.groupIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8);

  return v1;
}

uint64_t MLS.EventQueue.enqueueFTDBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock);
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock + 8);

  return v1;
}

uint64_t MLS.EventQueue.Event.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MLS.EventQueue.Event.eventState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of MLS.OutgoingEventState?(v8, v7, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
}

uint64_t MLS.EventQueue.Event.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.EventQueue.Event(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EventQueue.Event.sendBlock.getter()
{
  v1 = (v0 + *(type metadata accessor for MLS.EventQueue.Event(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MLS.EventQueue.Event.init(identifier:eventState:continuation:sendBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v11 = *(a3 + 48);
  *(a7 + 48) = *(a3 + 32);
  *(a7 + 64) = v11;
  *(a7 + 80) = *(a3 + 64);
  v12 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v12;
  v13 = type metadata accessor for MLS.EventQueue.Event(0);
  v14 = *(v13 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  result = (*(*(v15 - 8) + 32))(a7 + v14, a4, v15);
  v17 = (a7 + *(v13 + 28));
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t MLS.EventQueue.__allocating_init(groupIdentifier:bag:enqueueFTDBlock:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  MLS.EventQueue.init(groupIdentifier:bag:enqueueFTDBlock:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t MLS.EventQueue.init(groupIdentifier:bag:enqueueFTDBlock:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  Logger.init(subsystem:category:)();
  v11 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 1;
  v12 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
  v13 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = (v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  *v14 = a1;
  v14[1] = a2;
  outlined init with copy of ServerBag.MLS(a3, v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_bag);
  v15 = (v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock);
  *v15 = a4;
  v15[1] = a5;
  v16 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue) = MEMORY[0x277D84F90];
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue) = v16;
  v17 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *v17 = 0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 120) = 0;
  *(v17 + 128) = 0;
  return v5;
}

uint64_t MLS.EventQueue.enqueue(identifier:eventState:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a4;
  v7 = *(a3 + 48);
  *(v6 + 48) = *(a3 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a3 + 64);
  *(v6 + 88) = a1;
  v8 = *(a3 + 16);
  *(v6 + 16) = *a3;
  *(v6 + 32) = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 128) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.enqueue(identifier:eventState:sendBlock:), v9, 0);
}

uint64_t MLS.EventQueue.enqueue(identifier:eventState:sendBlock:)()
{
  v19 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v18);
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue enqueue { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  v14 = *(v0 + 104);
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  *(v13 + 48) = v0 + 16;
  *(v13 + 56) = v14;
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);

    v5 = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 112) = a5;
  *(v7 + 120) = a6;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  v8 = *(a3 + 48);
  *(v7 + 48) = *(a3 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a3 + 64);
  v9 = *(a3 + 16);
  *(v7 + 16) = *a3;
  *(v7 + 32) = v9;
  v10 = *a4;
  *(v7 + 128) = v6;
  *(v7 + 136) = v10;
  *(v7 + 188) = *(a4 + 2);
  *(v7 + 144) = a4[2];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v7 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:), v11, 0);
}

uint64_t MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:)()
{
  v43 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v37 = *(v0 + 144);
    v6 = *(v0 + 188);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v10 = v38;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v38);
    *(v9 + 12) = 2080;
    *(v0 + 184) = v6;
    *&v41[0] = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v41[0] + 1) = v11;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    *(v0 + 88) = v37;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v12);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v41[0], *(&v41[0] + 1), &v38);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v4, v5, "EventQueue reenqueueAtFront { identifier: %s, blockingVersion: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v14 = *(v0 + 144);
  v15 = *(v0 + 188);
  v16 = *(v0 + 128);
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v38 = *(v0 + 136);
  v39 = v15;
  v40 = v14;
  v19 = *(v0 + 64);
  v41[2] = *(v0 + 48);
  v41[3] = v19;
  v42 = *(v0 + 80);
  v20 = *(v0 + 32);
  v41[0] = *v1;
  v41[1] = v20;
  MLS.EventQueue.transitionToWaitingOnGroupVersionState(groupVersion:eventState:identifier:requireReflection:)(&v38, v41, v17, v18, 0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v41[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v41);
    _os_log_impl(&dword_264F1F000, v21, v22, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x266755550](v26, -1, -1);
    MEMORY[0x266755550](v25, -1, -1);
  }

  v27 = *(v0 + 152);
  v28 = *(v0 + 128);
  v30 = *(v0 + 96);
  v29 = *(v0 + 104);
  v31 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v32 = swift_task_alloc();
  v33 = *(v0 + 112);
  *(v28 + v31) = 0;
  *(v0 + 160) = v32;
  *(v32 + 16) = v28;
  *(v32 + 24) = v30;
  *(v32 + 32) = v29;
  *(v32 + 40) = 1;
  *(v32 + 48) = v1;
  *(v32 + 56) = v33;
  v34 = *(MEMORY[0x277D85A40] + 4);
  v35 = swift_task_alloc();
  *(v0 + 168) = v35;
  *v35 = v0;
  v35[1] = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a2;
  *(v8 + 104) = a4;
  v9 = *(a3 + 48);
  *(v8 + 48) = *(a3 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a3 + 64);
  *(v8 + 88) = a1;
  v10 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v11, 0);
}

uint64_t MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v19);
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue reenqueueAtFrontBehindSelfHeal { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *(v13 + 32) = v0 + 16;
  *(v13 + 40) = v14;
  *(v13 + 56) = v10;
  *(v13 + 64) = v15;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  *(v0 + 160) = v17;
  *v17 = v0;
  v17[1] = MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[19];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a8;
  v75 = a3;
  v76 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v73 = *(v14 - 8);
  v74 = v14;
  v68 = *(v73 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v70 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v64 - v21;
  v23 = type metadata accessor for MLS.EventQueue.Event(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v27 = static MLSActor.shared;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = v27;
  v28 = *(v73 + 16);
  v29 = &v26[*(v23 + 24)];
  v30 = a1;
  v66 = v73 + 16;
  v65 = v28;
  v28(v29, a1, v74);
  v31 = v75;
  *v26 = a2;
  *(v26 + 1) = v31;
  v32 = *(a4 + 48);
  *(v26 + 3) = *(a4 + 32);
  *(v26 + 4) = v32;
  *(v26 + 10) = *(a4 + 64);
  v33 = *(a4 + 16);
  *(v26 + 1) = *a4;
  *(v26 + 2) = v33;
  v34 = &v26[*(v23 + 28)];
  *v34 = a5;
  *(v34 + 1) = a6;
  swift_beginAccess();
  outlined init with copy of MLS.EventQueue.Event(v26, v22);

  v35 = a4;
  v36 = v31;
  outlined init with copy of MLS.OutgoingEventState?(v35, v77, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v22);
  swift_endAccess();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v77[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v75, v77);
    _os_log_impl(&dword_264F1F000, v37, v38, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x266755550](v40, -1, -1);
    v41 = v39;
    v36 = v75;
    MEMORY[0x266755550](v41, -1, -1);
  }

  v42 = v76 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *(v76 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
  MLS.EventQueue.clearWaitingOnReflection(identifier:)(a2, v36);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  v45 = os_log_type_enabled(v43, v44);
  v72 = a2;
  v64 = v26;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v77[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v75, v77);
    _os_log_impl(&dword_264F1F000, v43, v44, "EventQueue transitionToWaitingOnSelfHealSendState { identifier: %s }", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266755550](v47, -1, -1);
    v48 = v46;
    v36 = v75;
    MEMORY[0x266755550](v48, -1, -1);
  }

  *(v42 + 121) = 1;

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v36, v77);
    _os_log_impl(&dword_264F1F000, v49, v50, "EventQueue reenqueueAtFrontBehindSelfHeal self healing { identifier: %s }", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x266755550](v52, -1, -1);
    MEMORY[0x266755550](v51, -1, -1);
  }

  v53 = v30;
  v54 = type metadata accessor for TaskPriority();
  v55 = v70;
  (*(*(v54 - 8) + 56))(v70, 1, 1, v54);
  v56 = v69;
  v57 = v74;
  v65(v69, v53, v74);
  v58 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v59 = v73;
  v60 = (*(v73 + 80) + 72) & ~*(v73 + 80);
  v61 = swift_allocObject();
  *(v61 + 2) = v67;
  *(v61 + 3) = v58;
  v62 = v72;
  *(v61 + 4) = v71;
  *(v61 + 5) = a9;
  *(v61 + 6) = v76;
  *(v61 + 7) = v62;
  *(v61 + 8) = v36;
  (*(v59 + 32))(&v61[v60], v56, v57);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v61);

  return outlined destroy of MLS.EventQueue.Event(v64);
}

uint64_t closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v12;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[12] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v9, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)()
{
  v1 = (v0[8] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  v3 = *v1;
  v2 = v1[1];
  v8 = (v0[6] + *v0[6]);
  v4 = *(v0[6] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  v6 = v0[7];

  return v8(v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  }

  else
  {
    v6 = closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v19 = v0;
  v1 = v0[10];
  v2 = v0[8];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v18);
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue reenqueueAtFrontBehindSelfHeal self healing finished { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = v0[10];

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[9];
    v12 = v0[10];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v18);
    _os_log_impl(&dword_264F1F000, v10, v11, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  *(v0[8] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 121) = 0;
  MLS.EventQueue.dequeueIfNeeded()();
  v16 = v0[1];

  return v16();
}

{
  v40 = v0;
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v9 = v0[9];
    v8 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v39);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_264F1F000, v5, v6, "EventQueue reenqueueAtFrontBehindSelfHeal self healing failed { identifier: %s, error: %@ }", v10, 0x16u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v15 = v0[8];
  v16 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
  result = swift_beginAccess();
  if (*(*(v15 + v16) + 16))
  {
    v18 = v0[10];
    specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    swift_endAccess();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[9];
      v21 = v0[10];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v39);
      _os_log_impl(&dword_264F1F000, v19, v20, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v23, -1, -1);
    }

    v25 = v0[14];
    v27 = v0[10];
    v26 = v0[11];
    v28 = (v0[8] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
    v28[121] = 0;
    v0[5] = v25;
    v29 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = v0[9];
      v32 = v0[10];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v39);
      _os_log_impl(&dword_264F1F000, v30, v31, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266755550](v35, -1, -1);
      MEMORY[0x266755550](v34, -1, -1);
    }

    v36 = v0[14];
    v37 = v0[8];
    *v28 = 0;
    MLS.EventQueue.dequeueIfNeeded()();

    v38 = v0[1];

    return v38();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[95] = v6;
  v7[94] = a6;
  v7[93] = a5;
  v7[92] = a4;
  v7[91] = a3;
  v7[90] = a2;
  v7[89] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[96] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:), v8, 0);
}

uint64_t MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:)()
{
  v73 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 720);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 720);
    v6 = *(v0 + 712);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v72 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v72);
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue reenqueueMatchingEventBehindSelfHeal { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = *(v0 + 760) + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v10 = *(v9 + 24);
  v11 = *(v9 + 40);
  v12 = *(v9 + 56);
  *(v0 + 136) = *(v9 + 8);
  *(v0 + 184) = v12;
  *(v0 + 168) = v11;
  *(v0 + 152) = v10;
  v13 = *(v9 + 88);
  v14 = *(v9 + 104);
  v15 = *(v9 + 120);
  *(v0 + 200) = *(v9 + 72);
  *(v0 + 248) = v15;
  *(v0 + 232) = v14;
  *(v0 + 216) = v13;
  v16 = *(v9 + 24);
  v17 = *(v9 + 56);
  v18 = *(v9 + 8);
  *(v0 + 48) = *(v9 + 40);
  *(v0 + 64) = v17;
  *(v0 + 16) = v18;
  *(v0 + 32) = v16;
  v19 = *(v9 + 88);
  v20 = *(v9 + 104);
  v21 = *(v9 + 72);
  *(v0 + 128) = *(v9 + 120);
  *(v0 + 96) = v19;
  *(v0 + 112) = v20;
  *(v0 + 80) = v21;
  v22 = *(v0 + 48);
  if (v22)
  {
    v23 = *(v0 + 40);
    if (v23 == *(v0 + 712) && *(v0 + 720) == v22 || (v24 = *(v0 + 40), v25 = *(v0 + 48), v26 = *(v0 + 720), v27 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = *(v0 + 720), (v27 & 1) != 0))
    {

      outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 376, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 720);
        v32 = *(v0 + 712);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v72 = v34;
        *v33 = 136315394;
        *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v72);
        *(v33 + 12) = 2080;
        v35 = *(v0 + 72);
        v36 = *(v0 + 104);
        *(v0 + 600) = *(v0 + 88);
        *(v0 + 616) = v36;
        *(v0 + 632) = *(v0 + 120);
        *(v0 + 568) = *(v0 + 56);
        *(v0 + 584) = v35;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 56, v0 + 640, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        v37 = String.init<A>(describing:)();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v72);

        *(v33 + 14) = v39;
        _os_log_impl(&dword_264F1F000, v29, v30, "EventQueue reenqueueMatchingEventBehindSelfHeal self healing then retrying state { identifier: %s, eventState: %s }", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v34, -1, -1);
        MEMORY[0x266755550](v33, -1, -1);
      }

      v40 = *(v0 + 760);
      v41 = *(v0 + 56);
      *(v0 + 560) = *(v0 + 120);
      v42 = *(v0 + 104);
      *(v0 + 528) = *(v0 + 88);
      *(v0 + 544) = v42;
      v43 = *(v0 + 72);
      *(v0 + 496) = v41;
      *(v0 + 512) = v43;
      v70 = (*v40 + 296);
      v71 = (*v70 + **v70);
      v44 = (*v70)[1];
      v45 = swift_task_alloc();
      *(v0 + 776) = v45;
      *v45 = v0;
      v45[1] = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
      v46 = *(v0 + 760);
      v47 = *(v0 + 752);
      v48 = *(v0 + 744);
      v49 = *(v0 + 736);
      v50 = *(v0 + 728);
      v51 = *(v0 + 720);
      v52 = *(v0 + 712);

      return v71(v52, v51, v0 + 496, v50, v49, v48, v47);
    }

    v61 = *(v0 + 720);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 256, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v0 + 720);
      v65 = *(v0 + 712);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v72 = v67;
      *v66 = 136315394;
      *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, &v72);
      *(v66 + 12) = 2080;

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v72);

      *(v66 + 14) = v68;
      _os_log_impl(&dword_264F1F000, v62, v63, "EventQueue reenqueueMatchingEventBehindSelfHeal state waiting for reflection has different identifier. Ignoring { identifier: %s, waitingIdentifier: %s }", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v67, -1, -1);
      MEMORY[0x266755550](v66, -1, -1);
    }

    outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  }

  else
  {
    v54 = *(v0 + 720);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 720);
      v58 = *(v0 + 712);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v72 = v60;
      *v59 = 136315138;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v72);
      _os_log_impl(&dword_264F1F000, v55, v56, "EventQueue reenqueueMatchingEventBehindSelfHeal no state waiting reflection. Ignoring { identifier: %s }", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266755550](v60, -1, -1);
      MEMORY[0x266755550](v59, -1, -1);
    }
  }

  v69 = *(v0 + 8);

  return v69();
}

{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v7 = *v1;
  *(*v1 + 784) = v0;

  v4 = *(v2 + 768);
  if (v0)
  {
    v5 = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
  }

  else
  {
    v5 = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  v1 = *(v0 + 8);
  v2 = *(v0 + 784);

  return v1();
}

uint64_t MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[123] = v4;
  v5[122] = a4;
  v5[121] = a3;
  v5[120] = a2;
  v5[119] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[124] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:), v6, 0);
}

uint64_t MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:)()
{
  v74 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 960);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 960);
    v6 = *(v0 + 952);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v73 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v73);
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue retryMatchingEvent { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = *(v0 + 984) + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v10 = *(v9 + 24);
  v11 = *(v9 + 40);
  v12 = *(v9 + 56);
  *(v0 + 136) = *(v9 + 8);
  *(v0 + 184) = v12;
  *(v0 + 168) = v11;
  *(v0 + 152) = v10;
  v13 = *(v9 + 88);
  v14 = *(v9 + 104);
  v15 = *(v9 + 120);
  *(v0 + 200) = *(v9 + 72);
  *(v0 + 248) = v15;
  *(v0 + 232) = v14;
  *(v0 + 216) = v13;
  v16 = *(v9 + 24);
  v17 = *(v9 + 56);
  v18 = *(v9 + 8);
  *(v0 + 48) = *(v9 + 40);
  *(v0 + 64) = v17;
  *(v0 + 16) = v18;
  *(v0 + 32) = v16;
  v19 = *(v9 + 88);
  v20 = *(v9 + 104);
  v21 = *(v9 + 72);
  *(v0 + 128) = *(v9 + 120);
  *(v0 + 96) = v19;
  *(v0 + 112) = v20;
  *(v0 + 80) = v21;
  v22 = *(v0 + 48);
  v23 = *(v0 + 960);
  if (v22)
  {
    v24 = *(v0 + 952);
    v25 = *(v0 + 40);
    if (v25 == v24 && v23 == v22)
    {
      goto LABEL_8;
    }

    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    v28 = *(v0 + 952);
    v29 = *(v0 + 960);
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v30 = *(v0 + 984);
      v23 = *(v0 + 960);
      v24 = *(v0 + 952);
LABEL_8:
      v31 = (v0 + 736);
      *v9 = 0;
      v32 = *(v0 + 216);
      *(v0 + 440) = *(v0 + 200);
      *(v0 + 456) = v32;
      *(v0 + 472) = *(v0 + 232);
      *(v0 + 488) = *(v0 + 248);
      v33 = *(v0 + 152);
      *(v0 + 376) = *(v0 + 136);
      *(v0 + 392) = v33;
      v34 = *(v0 + 184);
      *(v0 + 408) = *(v0 + 168);
      *(v0 + 424) = v34;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 376, v0 + 496, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontMR);
      MLS.EventQueue.clearWaitingOnReflection(identifier:)(v24, v23);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 616, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v0 + 960);
        v38 = *(v0 + 952);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v73 = v40;
        *v39 = 136315394;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v73);
        *(v39 + 12) = 2080;
        v41 = *(v0 + 72);
        v42 = *(v0 + 104);
        *(v0 + 840) = *(v0 + 88);
        *(v0 + 856) = v42;
        *(v0 + 872) = *(v0 + 120);
        *(v0 + 808) = *(v0 + 56);
        *(v0 + 824) = v41;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 56, v0 + 880, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        v43 = String.init<A>(describing:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v73);

        *(v39 + 14) = v45;
        _os_log_impl(&dword_264F1F000, v35, v36, "EventQueue retryMatchingEvent retrying state { identifier: %s, eventState: %s }", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v40, -1, -1);
        MEMORY[0x266755550](v39, -1, -1);
      }

      v46 = *(v0 + 992);
      v47 = *(v0 + 984);
      v48 = *(v0 + 960);
      v49 = *(v0 + 952);
      v50 = *(v0 + 72);
      v51 = *(v0 + 104);
      *(v0 + 768) = *(v0 + 88);
      *(v0 + 784) = v51;
      *(v0 + 800) = *(v0 + 120);
      *v31 = *(v0 + 56);
      *(v0 + 752) = v50;
      lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
      v52 = swift_task_alloc();
      *(v0 + 1000) = v52;
      v53 = *(v0 + 968);
      *(v52 + 16) = v47;
      *(v52 + 24) = v49;
      *(v52 + 32) = v48;
      *(v52 + 40) = 1;
      *(v52 + 48) = v31;
      *(v52 + 56) = v53;
      v54 = *(MEMORY[0x277D85A40] + 4);
      v55 = swift_task_alloc();
      *(v0 + 1008) = v55;
      *v55 = v0;
      v55[1] = MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:);

      return MEMORY[0x2822008A0]();
    }

    v63 = *(v0 + 960);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 256, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v0 + 960);
      v67 = *(v0 + 952);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73 = v69;
      *v68 = 136315394;
      *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, &v73);
      *(v68 + 12) = 2080;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v22, &v73);

      *(v68 + 14) = v70;
      _os_log_impl(&dword_264F1F000, v64, v65, "EventQueue retryMatchingEvent state waiting for reflection has different identifier. Ignoring { identifier: %s, waitingIdentifier: %s }", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v69, -1, -1);
      MEMORY[0x266755550](v68, -1, -1);
    }

    outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  }

  else
  {
    v56 = *(v0 + 960);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 960);
      v60 = *(v0 + 952);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v73 = v62;
      *v61 = 136315138;
      *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, &v73);
      _os_log_impl(&dword_264F1F000, v57, v58, "EventQueue retryMatchingEvent no state waiting reflection. Ignoring { identifier: %s }", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x266755550](v62, -1, -1);
      MEMORY[0x266755550](v61, -1, -1);
    }
  }

  v71 = *(v0 + 8);

  return v71();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v9 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v4 = *(v2 + 992);
    v5 = MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:);
  }

  else
  {
    v6 = *(v2 + 1000);
    v7 = *(v2 + 992);

    v5 = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[125];

  outlined destroy of NSObject?((v0 + 17), &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  v2 = v0[1];
  v3 = v0[127];

  return v2();
}

uint64_t MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 296) = a5;
  *(v6 + 304) = v5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a4;
  *(v6 + 272) = a1;
  v7 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v7;
  v8 = a3[3];
  *(v6 + 48) = a3[2];
  *(v6 + 64) = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 312) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:), v9, 0);
}

uint64_t MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)()
{
  v25 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 80, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v24);
    *(v8 + 12) = 2080;
    v10 = *(v0 + 32);
    *(v0 + 144) = *v1;
    *(v0 + 160) = v10;
    v11 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v11;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 208, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v4, v5, "EventQueue enqueueSelfHeal { identifier: %s, ftdInfo: %s }", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v16 = *(v0 + 304);
  v15 = *(v0 + 312);
  v17 = *(v0 + 296);
  v18 = *(v0 + 272);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  v20 = *(v0 + 280);
  *(v19 + 16) = v1;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = v20;
  *(v19 + 56) = v17;
  v21 = *(MEMORY[0x277D85A40] + 4);
  v22 = swift_task_alloc();
  *(v0 + 328) = v22;
  *v22 = v0;
  v22[1] = MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:);

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 312);
    v5 = MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:);
  }

  else
  {
    v7 = *(v2 + 312);
    v6 = *(v2 + 320);

    v5 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[40];

  v2 = v0[1];
  v3 = v0[42];

  return v2();
}

uint64_t closure #1 in MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a6;
  v70 = a7;
  v71 = a1;
  v11 = *(a2 + 16);
  v81 = *a2;
  v82 = v11;
  v12 = *(a2 + 48);
  v83 = *(a2 + 32);
  v84 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = type metadata accessor for MLS.EventQueue.Event(0);
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = (&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v68 = &v65 - v24;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v72 = a4;
  v73 = v20;
  if (*(a2 + 40))
  {
    v65 = *(a2 + 40);
    v25 = *(a2 + 16);
    v78 = *a2;
    v79 = v25;
    v80 = *(a2 + 32);
    v77 = *(a2 + 48);
    outlined init with copy of MLS.OutgoingEventState?(a2, v76, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

    v26 = Logger.logObject.getter();
    v27 = a5;
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v26, v28);
    v30 = 0x27FFBF000uLL;
    v66 = v27;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v76[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v27, v76);
      *(v31 + 12) = 2048;
      v33 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
      swift_beginAccess();
      *(v31 + 14) = *(*(a3 + v33) + 16);

      _os_log_impl(&dword_264F1F000, v26, v28, "EventQueue enqueueSelfHeal enqueueing ftdInfo { identifier: %s, ftdQueueCount: %ld }", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266755550](v32, -1, -1);
      v34 = v31;
      v30 = 0x27FFBF000;
      MEMORY[0x266755550](v34, -1, -1);
    }

    else
    {
    }

    v35 = *(v30 + 960);
    swift_beginAccess();
    v36 = *(a3 + v35);
    v76[0] = v81;
    v76[1] = v82;
    v76[2] = v83;
    v76[3] = v84;
    outlined init with copy of MLS.QueuedFTDInfo(v76, v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v35) = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      *(a3 + v35) = v36;
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
    }

    *(v36 + 2) = v39 + 1;
    v40 = &v36[64 * v39];
    v41 = v80;
    v42 = v79;
    *(v40 + 2) = v78;
    *(v40 + 3) = v42;
    v43 = v65;
    *(v40 + 8) = v41;
    *(v40 + 9) = v43;
    *(v40 + 5) = v77;
    *(a3 + v35) = v36;
    swift_endAccess();
    outlined destroy of NSObject?(a2, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    a5 = v66;
    v20 = v73;
  }

  v44 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
  swift_beginAccess();
  outlined init with copy of MLS.OutgoingEventState?(a3 + v44, v19, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  if ((*(v74 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of NSObject?(v19, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75[0] = v48;
      *v47 = 136315138;
      v49 = v72;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, a5, v75);
      _os_log_impl(&dword_264F1F000, v45, v46, "EventQueue enqueueSelfHeal enqueueing selfHealEvent { identifier: %s }", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266755550](v48, -1, -1);
      MEMORY[0x266755550](v47, -1, -1);
    }

    else
    {

      v49 = v72;
    }

    v59 = v73;
    v60 = *(v73 + 24);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    (*(*(v61 - 8) + 16))(&v17[v60], v71, v61);
    *v17 = v49;
    *(v17 + 1) = a5;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *(v17 + 3) = 0u;
    *(v17 + 4) = 0u;
    *(v17 + 10) = 0;
    v62 = &v17[*(v59 + 28)];
    v63 = v70;
    *v62 = v69;
    *(v62 + 1) = v63;
    (*(v74 + 56))(v17, 0, 1, v59);
    swift_beginAccess();

    outlined assign with take of MLS.EventQueue.Event?(v17, a3 + v44);
    swift_endAccess();
    return MLS.EventQueue.dequeueIfNeeded()();
  }

  else
  {
    v50 = v68;
    outlined init with take of MLS.EventQueue.Event(v19, v68);
    v51 = v67;
    outlined init with copy of MLS.EventQueue.Event(v50, v67);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v75[0] = v55;
      *v54 = 136315394;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, a5, v75);
      *(v54 + 12) = 2080;
      v56 = *v51;
      v57 = v51[1];

      outlined destroy of MLS.EventQueue.Event(v51);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v75);

      *(v54 + 14) = v58;
      _os_log_impl(&dword_264F1F000, v52, v53, "EventQueue enqueueSelfHeal reusing selfHealEvent { identifier: %s, selfHealIdentifier: %s }", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v55, -1, -1);
      MEMORY[0x266755550](v54, -1, -1);
    }

    else
    {

      outlined destroy of MLS.EventQueue.Event(v51);
    }

    MLS.EventQueue.dequeueIfNeeded()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return outlined destroy of MLS.EventQueue.Event(v50);
  }
}

uint64_t MLS.EventQueue.acknowledge(receivedVersion:identifier:dueToReflection:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v22 = a4;
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v23);
    *(v12 + 12) = 2080;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v13;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v8;
    v16 = v7;
    v17 = a2;
    MEMORY[0x2667545A0](v14);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v23);

    *(v12 + 14) = v18;
    a2 = v17;
    v7 = v16;
    v8 = v15;
    _os_log_impl(&dword_264F1F000, v10, v11, "EventQueue acknowledgeReceivedVersion { identifier: %s, receivedVersion: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v21, -1, -1);
    v19 = v12;
    a4 = v22;
    MEMORY[0x266755550](v19, -1, -1);
  }

  v24 = v7;
  LODWORD(v25) = v8;
  v26 = v9;
  MLS.EventQueue.transitionStateDueToReceivingGroupVersion(_:identifier:dueToReflection:)(&v24, a2, a3, a4 & 1);
  return MLS.EventQueue.dequeueIfNeeded()();
}

uint64_t MLS.EventQueue.acknowledgeSentAck(identifier:selfHealTimeoutBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v22);
    _os_log_impl(&dword_264F1F000, v9, v10, "EventQueue acknowledgeSentAck { identifier: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v22);
    _os_log_impl(&dword_264F1F000, v13, v14, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  v17 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *v17 = 0;
  if (*(v17 + 40))
  {
    v18 = a3 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = *(*v5 + 344);

    v19(a1, a2, a3, a4);
    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(a3);
  }

  return MLS.EventQueue.dequeueIfNeeded()();
}

uint64_t MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v30);
    _os_log_impl(&dword_264F1F000, v14, v15, "EventQueue kickReflectionTimeoutTask called { identifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  v18 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  if (*(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 128))
  {
    v19 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 128);

    MEMORY[0x266754760](v20, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = one-time initialization token for shared;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static MLSActor.shared;
  v24 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v24;
  v25[4] = v5;
  v25[5] = a1;
  v25[6] = a2;
  v25[7] = a3;
  v25[8] = a4;

  v26 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:), v25);
  v27 = *(v18 + 128);
  *(v18 + 128) = v26;
}

uint64_t closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = type metadata accessor for ContinuousClock();
  v8[22] = v9;
  v10 = *(v9 - 8);
  v8[23] = v10;
  v11 = *(v10 + 64) + 15;
  v8[24] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  v8[25] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:), v12, 0);
}

uint64_t closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)()
{
  v1 = v0[24];
  v2 = (v0[17] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_bag);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  static Clock<>.continuous.getter();
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);
  v9 = v0[24];

  return (specialized Clock.sleep(for:tolerance:))(v5, v7, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = v2[25];
  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v6 = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);
  }

  else
  {
    v6 = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v41 = v0;
  v1 = *(v0 + 216);
  static Task<>.checkCancellation()();
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  if (v1)
  {
    v4 = *(v0 + 152);

    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v40[0] = v12;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v40);
      *(v10 + 12) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      *v11 = v14;
      _os_log_impl(&dword_264F1F000, v6, v7, "EventQueue kickReflectionTimeoutTask cancelled { identifier: %s, error: %@ }", v10, 0x16u);
      outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 192);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    *(v0 + 224) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v40);
      _os_log_impl(&dword_264F1F000, v15, v16, "EventQueue kickReflectionTimeoutTask kicking self heal { identifier: %s }", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266755550](v20, -1, -1);
      MEMORY[0x266755550](v19, -1, -1);
    }

    v21 = *(v0 + 160);
    v22 = *(v0 + 136);
    v23 = v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
    v24 = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v25 = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    v26 = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    *(v0 + 48) = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    *(v0 + 64) = v25;
    *(v0 + 16) = v26;
    *(v0 + 32) = v24;
    v27 = *(v23 + 88);
    v28 = *(v23 + 104);
    v29 = *(v23 + 72);
    *(v0 + 128) = *(v23 + 120);
    *(v0 + 96) = v27;
    *(v0 + 112) = v28;
    *(v0 + 80) = v29;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0u;
    *(v23 + 56) = 0u;
    *(v23 + 72) = 0u;
    *(v23 + 88) = 0u;
    *(v23 + 104) = 0u;
    *(v23 + 120) = 0;
    v30 = *(v23 + 128);
    *(v23 + 128) = 0;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);

    v31 = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
    v32 = *(v22 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8);
    v39 = (v21 + *v21);
    v33 = v21[1];
    v34 = swift_task_alloc();
    *(v0 + 232) = v34;
    *v34 = v0;
    v34[1] = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);
    v35 = *(v0 + 168);

    return v39(v31, v32);
  }
}

{
  v18 = v0;
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[17];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v17);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_264F1F000, v5, v6, "EventQueue kickReflectionTimeoutTask cancelled { identifier: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[24];

  v15 = v0[1];

  return v15();
}

{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {
    v4 = v3[25];

    return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:), v4, 0);
  }

  else
  {
    v5 = v3[24];

    v6 = v3[1];

    return v6();
  }
}

{
  v21 = v0;
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[19];
  v4 = v0[17];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[30];
  if (v8)
  {
    v11 = v0[18];
    v10 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v20);
    *(v12 + 12) = 2112;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "EventQueue kickReflectionTimeoutTask failed self heal { identifier: %s, error: %@ }", v12, 0x16u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t closure #1 in MLS.EventQueue.enqueue(identifier:eventState:enqueueFirst:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a7;
  v51 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = &v45 - v16;
  v50 = type metadata accessor for MLS.EventQueue.Event(0);
  v48 = *(v50 - 8);
  v17 = *(v48 + 64);
  v18 = MEMORY[0x28223BE20](v50);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = a8;
    v25 = v24;
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v25 = 136315650;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v53);
    *(v25 + 12) = 1024;
    *(v25 + 14) = a5 & 1;
    *(v25 + 18) = 2048;
    v26 = a6;
    v27 = a4;
    v28 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    swift_beginAccess();
    v29 = *(a2 + v28);
    a4 = v27;
    a6 = v26;
    *(v25 + 20) = *(v29 + 16);

    _os_log_impl(&dword_264F1F000, v22, v23, "EventQueue enqueue { identifier: %s, enqueueFirst: %{BOOL}d, queueCount: %ld }", v25, 0x1Cu);
    v30 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266755550](v30, -1, -1);
    v31 = v25;
    a8 = v46;
    MEMORY[0x266755550](v31, -1, -1);
  }

  else
  {
  }

  v32 = v50;
  v33 = *(v50 + 24);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v34 - 8) + 16))(&v21[v33], v51, v34);
  *v21 = a3;
  *(v21 + 1) = a4;
  v35 = *(a6 + 48);
  *(v21 + 3) = *(a6 + 32);
  *(v21 + 4) = v35;
  *(v21 + 10) = *(a6 + 64);
  v36 = *(a6 + 16);
  *(v21 + 1) = *a6;
  *(v21 + 2) = v36;
  v37 = &v21[*(v32 + 28)];
  *v37 = v49;
  *(v37 + 1) = a8;
  if (a5)
  {
    swift_beginAccess();
    v38 = v47;
    outlined init with copy of MLS.EventQueue.Event(v21, v47);

    outlined init with copy of MLS.OutgoingEventState?(a6, v53, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v38);
  }

  else
  {
    outlined init with copy of MLS.EventQueue.Event(v21, v52);
    v39 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    swift_beginAccess();
    v40 = *(a2 + v39);

    outlined init with copy of MLS.OutgoingEventState?(a6, v53, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v39) = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
      *(a2 + v39) = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    outlined init with take of MLS.EventQueue.Event(v52, v40 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v43);
    *(a2 + v39) = v40;
  }

  swift_endAccess();
  MLS.EventQueue.dequeueIfNeeded()();
  return outlined destroy of MLS.EventQueue.Event(v21);
}

void MLS.EventQueue.transitionToWaitingOnGroupVersionState(groupVersion:eventState:identifier:requireReflection:)(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = a1[2];
  v13 = a2[3];
  v57 = a2[2];
  v58 = v13;
  v59 = *(a2 + 8);
  v14 = a2[1];
  v55 = *a2;
  v56 = v14;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = 0x27FFBF000uLL;
  v45 = a3;
  if (os_log_type_enabled(v15, v16))
  {
    v44 = v12;
    v18 = swift_slowAlloc();
    v43 = a5;
    v19 = swift_slowAlloc();
    v46[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v46);
    *(v18 + 12) = 2080;
    *&v47 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v47 + 1) = v20;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v10;
    v23 = v11;
    MEMORY[0x2667545A0](v21);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, *(&v47 + 1), v46);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion + 16);
    v26 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion + 24);
    v47 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion);
    *&v48 = v25;
    BYTE8(v48) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO12GroupVersionVSgMd, &_s15SecureMessaging3MLSO12GroupVersionVSgMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v46);
    v17 = 0x27FFBF000;

    *(v18 + 24) = v29;
    v11 = v23;
    v10 = v22;
    *(v18 + 32) = 1024;
    *(v18 + 34) = v43 & 1;
    _os_log_impl(&dword_264F1F000, v15, v16, "EventQueue transitionToWaitingOnGroupVersionState { identifier: %s, groupVersion: %s, currentGroupVersion: %s, requireReflection: %{BOOL}d }", v18, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    v30 = v18;
    v12 = v44;
    MEMORY[0x266755550](v30, -1, -1);

    a5 = v43;
  }

  else
  {
  }

  v31 = v6 + *(v17 + 936);
  if (*(v31 + 24))
  {
    goto LABEL_8;
  }

  v32 = *(v31 + 16);
  v33 = *(v31 + 8);
  v34 = v32 < v12;
  v35 = v11 == v33;
  v36 = v11 > v33;
  if (v35)
  {
    v36 = v34;
  }

  if (v36)
  {
LABEL_8:
    MLS.EventQueue.clearWaitingOnReflection(identifier:)(v45, a4);
    v37 = v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
    v38 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
    v51 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
    v52 = v38;
    v53 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
    v54 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
    v39 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v47 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    v48 = v39;
    v40 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    v49 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    v50 = v40;
    *(v37 + 8) = v10;
    *(v37 + 16) = v11;
    *(v37 + 24) = v12;
    *(v37 + 32) = v45;
    *(v37 + 40) = a4;
    *(v37 + 112) = v59;
    v41 = v58;
    *(v37 + 80) = v57;
    *(v37 + 96) = v41;
    v42 = v56;
    *(v37 + 48) = v55;
    *(v37 + 64) = v42;
    *(v37 + 120) = a5 & 1;

    outlined init with copy of MLS.OutgoingEventState?(&v55, v46, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    outlined destroy of NSObject?(&v47, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  }
}

uint64_t MLS.EventQueue.clearWaitingOnReflection(identifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v18[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v18);
    _os_log_impl(&dword_264F1F000, v6, v7, "EventQueue clearWaitingOnReflection { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v11 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
  v18[4] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
  v18[5] = v11;
  v18[6] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
  v19 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
  v12 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
  v18[0] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
  v18[1] = v12;
  v13 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
  v18[2] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
  v18[3] = v13;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0;
  outlined destroy of NSObject?(v18, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  if (*(v10 + 128))
  {
    v14 = *(v10 + 128);

    MEMORY[0x266754760](v15, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

    v16 = *(v10 + 128);
  }

  *(v10 + 128) = 0;
}

uint64_t MLS.EventQueue.transitionStateDueToReceivingGroupVersion(_:identifier:dueToReflection:)(uint64_t *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v60 = *a1;
  v8 = *(a1 + 2);
  v9 = a1[2];

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v61 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v58 = a4;
    v12 = swift_slowAlloc();
    v57 = v8;
    v13 = swift_slowAlloc();
    *&v63 = v13;
    *v12 = 136315906;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v63);
    *(v12 + 12) = 2080;
    LODWORD(v77) = v57;
    *&v84 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v84 + 1) = v14;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    *&v77 = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, *(&v84 + 1), &v63);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    v17 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
    v88 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
    v89 = v17;
    v90 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
    LOBYTE(v91) = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
    v18 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v84 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    v85 = v18;
    v19 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    v86 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    v87 = v19;
    v81 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
    v82 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
    *v83 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
    v83[16] = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
    v77 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    v78 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v79 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    v80 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    outlined init with copy of MLS.OutgoingEventState?(&v84, v74, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v63);

    *(v12 + 24) = v22;
    *(v12 + 32) = 1024;
    *(v12 + 34) = v58 & 1;
    _os_log_impl(&dword_264F1F000, v10, v11, "EventQueue transitionStateDueToReceivingGroupVersion { identifier: %s, groupVersion: %s, waitingGroupVersion: %s, dueToReflection: %{BOOL}d }", v12, 0x26u);
    swift_arrayDestroy();
    v23 = v13;
    v8 = v57;
    MEMORY[0x266755550](v23, -1, -1);
    v24 = v12;
    a4 = v58;
    MEMORY[0x266755550](v24, -1, -1);
  }

  v25 = v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion;
  if (*(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion + 24))
  {
    goto LABEL_7;
  }

  v26 = *(v25 + 8);
  v27 = *(v25 + 16) < v61;
  v28 = v8 == v26;
  v29 = v8 > v26;
  if (!v28)
  {
    v27 = v29;
  }

  if (v27)
  {
LABEL_7:
    *v25 = v60;
    *(v25 + 8) = v8;
    *(v25 + 16) = v61;
    *(v25 + 24) = 0;
  }

  v30 = (v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
  v31 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 112);
  v90 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 96);
  v91 = v31;
  v92 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 128);
  v32 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 48);
  v86 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 32);
  v87 = v32;
  v33 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 80);
  v88 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 64);
  v89 = v33;
  v34 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 16);
  v84 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
  v85 = v34;
  v35 = v34;
  v36 = *(&v34 + 1);
  if (!*(&v86 + 1))
  {
    v50 = v30[3];
    v81 = v30[4];
    v51 = v30[6];
    v82 = v30[5];
    *v83 = v51;
    *&v83[9] = *(v30 + 105);
    v77 = v84;
    v78 = v34;
    v79 = v86;
    v80 = v50;
    v52 = *(v30 + 121);
    *&v83[32] = *(v30 + 16);
    *&v83[25] = v52;
    outlined init with copy of MLS.EventQueue.QueueState(&v84, v74);
    v53 = &v77;
    return outlined destroy of MLS.EventQueue.QueueState(v53);
  }

  v74[0] = v84;
  v74[1] = v34;
  v74[2] = v86;
  v37 = v30[6];
  v74[5] = v30[5];
  *v75 = v37;
  *&v75[9] = *(v30 + 105);
  v38 = v30[3];
  v74[4] = v30[4];
  v74[3] = v38;
  v39 = *(v30 + 121);
  *&v76[7] = *(v30 + 16);
  *v76 = v39;
  outlined init with copy of MLS.EventQueue.QueueState(&v84, &v63);
  outlined destroy of MLS.EventQueue.QueueState(v74);
  v40 = v30[4];
  v82 = v30[5];
  v41 = v30[7];
  *v83 = v30[6];
  *&v83[16] = v41;
  v42 = *v30;
  v78 = v30[1];
  v43 = v30[3];
  v79 = v30[2];
  v80 = v43;
  v81 = v40;
  *&v83[32] = *(v30 + 16);
  v77 = v42;
  v44 = v83[24];
  if (!*(&v79 + 1))
  {
    v54 = v30[1];
    v63 = *v30;
    v64 = v54;
    v65 = *(v30 + 4);
    v66 = 0;
    v55 = v30[6];
    v69 = v30[5];
    v70 = v55;
    v71 = *(v30 + 14);
    v56 = v30[4];
    v67 = v30[3];
    v68 = v56;
    v72 = v83[24];
    *&v73[7] = *(v30 + 16);
    *v73 = *(v30 + 121);
    outlined init with copy of MLS.EventQueue.QueueState(&v77, v62);
    v53 = &v63;
    return outlined destroy of MLS.EventQueue.QueueState(v53);
  }

  v45 = v30[1];
  v63 = *v30;
  v64 = v45;
  v65 = *(v30 + 4);
  v66 = *(&v79 + 1);
  v46 = v30[6];
  v69 = v30[5];
  v70 = v46;
  v71 = *(v30 + 14);
  v47 = v30[4];
  v67 = v30[3];
  v68 = v47;
  v72 = v83[24];
  *v73 = *(v30 + 121);
  *&v73[7] = *(v30 + 16);
  outlined init with copy of MLS.EventQueue.QueueState(&v77, v62);
  result = outlined destroy of MLS.EventQueue.QueueState(&v63);
  v49 = v61 < v36;
  if (v8 != v35)
  {
    v49 = v8 < v35;
  }

  if (!v49 && ((v44 & 1) == 0 || (a4 & 1) != 0))
  {
    return MLS.EventQueue.clearWaitingOnReflection(identifier:)(a2, a3);
  }

  return result;
}

uint64_t MLS.EventQueue.dequeueIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.EventQueue.Event(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v49 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = (&v47 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = v2;
    v21 = v20;
    v47 = swift_slowAlloc();
    v63 = v47;
    *v21 = 67110402;
    v52 = v3;
    v22 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
    *(v21 + 4) = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
    *(v21 + 8) = 2080;
    v23 = *(v22 + 88);
    v61[4] = *(v22 + 72);
    v61[5] = v23;
    v61[6] = *(v22 + 104);
    v62 = *(v22 + 120);
    v24 = *(v22 + 24);
    v61[0] = *(v22 + 8);
    v61[1] = v24;
    v25 = *(v22 + 56);
    v61[2] = *(v22 + 40);
    v61[3] = v25;
    v26 = *(v22 + 88);
    v57 = *(v22 + 72);
    v58 = v26;
    v59 = *(v22 + 104);
    v60 = *(v22 + 120);
    v27 = *(v22 + 24);
    *&v53[120] = *(v22 + 8);
    v54 = v27;
    v28 = *(v22 + 56);
    v55 = *(v22 + 40);
    v56 = v28;
    v48 = v8;
    outlined init with copy of MLS.OutgoingEventState?(v61, v53, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v63);

    *(v21 + 10) = v31;
    *(v21 + 18) = 1024;
    LODWORD(v31) = *(v22 + 121);

    *(v21 + 20) = v31;

    *(v21 + 24) = 1024;
    v32 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
    swift_beginAccess();
    outlined init with copy of MLS.OutgoingEventState?(v1 + v32, v17, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
    LODWORD(v32) = (*(v52 + 48))(v17, 1, v51) != 1;
    outlined destroy of NSObject?(v17, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);

    *(v21 + 26) = v32;
    v3 = v52;

    *(v21 + 30) = 2048;
    v33 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    swift_beginAccess();
    v34 = *(*(v1 + v33) + 16);

    *(v21 + 32) = v34;

    *(v21 + 40) = 2048;
    v35 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
    swift_beginAccess();
    v36 = *(*(v1 + v35) + 16);

    *(v21 + 42) = v36;
    v8 = v48;

    _os_log_impl(&dword_264F1F000, v18, v19, "EventQueue dequeueIfNeeded { waitingOnSentAck: %{BOOL}d, waitingOnGroupVersion: %s, waitingOnSelfHealSend: %{BOOL}d, selfHealEvent: %{BOOL}d, queueCount: %ld, ftdQueueCount: %ld }", v21, 0x32u);
    v37 = v47;
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266755550](v37, -1, -1);
    v38 = v21;
    v2 = v51;
    MEMORY[0x266755550](v38, -1, -1);
  }

  else
  {
  }

  v39 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
  swift_beginAccess();
  outlined init with copy of MLS.OutgoingEventState?(v1 + v39, v15, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  if ((*(v3 + 48))(v15, 1, v2) != 1)
  {
    outlined init with take of MLS.EventQueue.Event(v15, v8);
    if (*(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state))
    {
      return outlined destroy of MLS.EventQueue.Event(v8);
    }

    v46 = v50;
    (*(v3 + 56))(v50, 1, 1, v2);
    swift_beginAccess();
    outlined assign with take of MLS.EventQueue.Event?(v46, v1 + v39);
LABEL_14:
    swift_endAccess();
    MLS.EventQueue.runEvent(event:)(v8);
    return outlined destroy of MLS.EventQueue.Event(v8);
  }

  result = outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  v41 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  if ((*(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) & 1) == 0 && !*(v41 + 40) && (*(v41 + 121) & 1) == 0)
  {
    v42 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
    swift_beginAccess();
    if (*(*(v1 + v42) + 16))
    {
      MLS.EventQueue.flushFTDQueue()();
    }

    v43 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    result = swift_beginAccess();
    v44 = *(v1 + v43);
    if (*(v44 + 16))
    {
      swift_beginAccess();
      v45 = v44 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v8 = v49;
      outlined init with copy of MLS.EventQueue.Event(v45, v49);
      specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t MLS.EventQueue.flushFTDQueue()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
    swift_beginAccess();
    *(v11 + 4) = *(*(v1 + v12) + 16);

    _os_log_impl(&dword_264F1F000, v9, v10, "EventQueue flushFTDQueue called { ftdQueueCount: %ld", v11, 0xCu);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  v13 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v37 = v13;
    v16 = type metadata accessor for TaskPriority();
    v17 = *(v16 - 8);
    v18 = *(v17 + 56);
    v17 += 56;
    v41 = v18;
    v39 = (v17 - 8);
    v40 = v17;
    v38 = (v17 - 48);

    v19 = 32;
    v43 = v8;
    v42 = v14;
    do
    {
      v20 = *(v14 + v19);
      v21 = *(v14 + v19 + 16);
      v22 = *(v14 + v19 + 48);
      v51 = *(v14 + v19 + 32);
      v52 = v22;
      v49 = v20;
      v50 = v21;
      v41(v8, 1, 1, v16);
      outlined init with copy of MLS.QueuedFTDInfo(&v49, v48);

      outlined init with copy of MLS.QueuedFTDInfo(&v49, v48);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v23 = static MLSActor.shared;
      v24 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v24;
      *(v25 + 32) = v1;
      v26 = v50;
      *(v25 + 40) = v49;
      *(v25 + 56) = v26;
      v27 = v52;
      *(v25 + 72) = v51;
      *(v25 + 88) = v27;
      outlined init with copy of MLS.OutgoingEventState?(v8, v6, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v24) = (*v39)(v6, 1, v16);

      if (v24 == 1)
      {
        outlined destroy of NSObject?(v6, &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v38)(v6, v16);
      }

      v28 = v1;
      v29 = *(v25 + 16);
      v30 = *(v25 + 24);
      swift_unknownObjectRetain();

      if (v29)
      {
        swift_getObjectType();
        v31 = dispatch thunk of Actor.unownedExecutor.getter();
        v33 = v32;
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      outlined destroy of NSObject?(v43, &_sScPSgMd, &_sScPSgMR);
      if (v33 | v31)
      {
        v45 = 0;
        v44 = 0;
        v46 = v31;
        v47 = v33;
      }

      v1 = v28;
      swift_task_create();
      outlined destroy of MLS.QueuedFTDInfo(&v49);

      v19 += 64;
      --v15;
      v8 = v43;
      v14 = v42;
    }

    while (v15);

    v13 = v37;
    v34 = *(v1 + v37);
  }

  *(v1 + v13) = MEMORY[0x277D84F90];
}

uint64_t closure #1 in MLS.EventQueue.flushFTDQueue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[36] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.flushFTDQueue(), v6, 0);
}

uint64_t closure #1 in MLS.EventQueue.flushFTDQueue()()
{
  v30 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);

  outlined init with copy of MLS.QueuedFTDInfo(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  outlined destroy of MLS.QueuedFTDInfo(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier), *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8), &v29);
    *(v7 + 12) = 2080;
    v9 = v5[3];
    v11 = *v5;
    v10 = v5[1];
    *(v0 + 176) = v5[2];
    *(v0 + 192) = v9;
    *(v0 + 144) = v11;
    *(v0 + 160) = v10;
    outlined init with copy of MLS.QueuedFTDInfo(v5, v0 + 208);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v29);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue enqueueFTDBlock called { group: %s ftdInfo: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v16 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock);
  v18 = *(v16 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock + 8);
  v19 = (v16 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  v20 = *v19;
  v21 = v19[1];
  v22 = v15[3];
  v24 = *v15;
  v23 = v15[1];
  *(v0 + 112) = v15[2];
  *(v0 + 128) = v22;
  *(v0 + 80) = v24;
  *(v0 + 96) = v23;
  v28 = (v17 + *v17);
  v25 = v17[1];
  v26 = swift_task_alloc();
  *(v0 + 296) = v26;
  *v26 = v0;
  v26[1] = closure #1 in MLS.EventQueue.flushFTDQueue();

  return v28(v20, v21, v0 + 80);
}

{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {
    v4 = v3[36];

    return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.flushFTDQueue(), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v1 = *(v0 + 304);
  return (*(v0 + 8))();
}

uint64_t MLS.EventQueue.runEvent(event:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v42 - v6;
  v8 = type metadata accessor for MLS.EventQueue.Event(0);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v45 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (v42 - v11);
  v13 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  outlined init with copy of MLS.EventQueue.Event(a1, v42 - v11);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v43 = v7;
    v18 = v17;
    v46 = v17;
    *v16 = 136315138;
    v42[1] = v13;
    v19 = v2;
    v20 = v9;
    v21 = a1;
    v22 = *v12;
    v23 = v12[1];

    outlined destroy of MLS.EventQueue.Event(v12);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v46);

    *(v16 + 4) = v24;
    a1 = v21;
    v9 = v20;
    v2 = v19;
    _os_log_impl(&dword_264F1F000, v14, v15, "EventQueue runEvent called { identifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v25 = v18;
    v7 = v43;
    MEMORY[0x266755550](v25, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v12);
  }

  v26 = *a1;
  v27 = a1[1];

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = a1;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v46);
    _os_log_impl(&dword_264F1F000, v28, v29, "EventQueue moving to waitingOnSentAck { identifier: %s }", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266755550](v32, -1, -1);
    v33 = v31;
    a1 = v30;
    MEMORY[0x266755550](v33, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 1;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
  v35 = v45;
  outlined init with copy of MLS.EventQueue.Event(a1, v45);
  v36 = one-time initialization token for shared;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = static MLSActor.shared;
  v38 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v39 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v38;
  outlined init with take of MLS.EventQueue.Event(v35, v40 + v39);
  *(v40 + ((v9 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in MLS.EventQueue.runEvent(event:), v40);
}

uint64_t closure #1 in MLS.EventQueue.runEvent(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[120] = a5;
  v5[119] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR) - 8) + 64) + 15;
  v5[121] = swift_task_alloc();
  v7 = type metadata accessor for MLS.EventQueue.Event(0);
  v5[122] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v5[127] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v5[128] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.runEvent(event:), v9, 0);
}

uint64_t closure #1 in MLS.EventQueue.runEvent(event:)()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = (v2 + *(*(v0 + 976) + 28));
  v4 = *v3;
  v5 = v3[1];
  *(v0 + 536) = *(v2 + 16);
  v7 = *(v2 + 48);
  v6 = *(v2 + 64);
  v8 = *(v2 + 32);
  *(v0 + 600) = *(v2 + 80);
  *(v0 + 568) = v7;
  *(v0 + 584) = v6;
  *(v0 + 552) = v8;
  v10 = *(v2 + 48);
  v9 = *(v2 + 64);
  v11 = *(v2 + 32);
  *(v0 + 672) = *(v2 + 80);
  *(v0 + 640) = v10;
  *(v0 + 656) = v9;
  *(v0 + 624) = v11;
  *(v0 + 608) = *(v2 + 16);
  v12 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  v13 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 536, v0 + 680, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  v17 = (v4 + *v4);
  v14 = v4[1];
  v15 = swift_task_alloc();
  *(v0 + 1032) = v15;
  *v15 = v0;
  v15[1] = closure #1 in MLS.EventQueue.runEvent(event:);

  return v17(v0 + 16, v0 + 608, v12, v13);
}

{
  v2 = *v1;
  v3 = *v1 + 608;
  v4 = *(*v1 + 1032);
  v14 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v5 = *(v2 + 1024);
    *(v2 + 752) = *v3;
    v7 = *(v3 + 32);
    v6 = *(v3 + 48);
    v8 = *(v3 + 16);
    *(v2 + 816) = *(v3 + 64);
    *(v2 + 784) = v7;
    *(v2 + 800) = v6;
    *(v2 + 768) = v8;
    outlined destroy of NSObject?(v2 + 752, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v9 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  else
  {
    v5 = *(v2 + 1024);
    *(v2 + 824) = *v3;
    v11 = *(v3 + 32);
    v10 = *(v3 + 48);
    v12 = *(v3 + 16);
    *(v2 + 888) = *(v3 + 64);
    *(v2 + 856) = v11;
    *(v2 + 872) = v10;
    *(v2 + 840) = v12;
    outlined destroy of NSObject?(v2 + 824, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v9 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

{
  v103 = v0;
  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  v4 = *(v0 + 1016);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v1;
  *(v0 + 1048) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  outlined init with copy of MLS.EventQueue.Event(v6, v4);
  outlined init with copy of MLS.EventQueue.Result(v0 + 120, v0 + 224);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of MLS.EventQueue.Result(v0 + 120);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1016);
    v10 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v95 = v89;
    *v10 = 136315394;
    v11 = *v9;
    v12 = v9[1];

    outlined destroy of MLS.EventQueue.Event(v9);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v95);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = *(v0 + 168);
    v15 = *(v0 + 200);
    *(v0 + 392) = *(v0 + 184);
    *(v0 + 408) = v15;
    *(v0 + 424) = *(v0 + 216);
    v16 = *(v0 + 136);
    *(v0 + 328) = *(v0 + 120);
    *(v0 + 344) = v16;
    *(v0 + 360) = *(v0 + 152);
    *(v0 + 376) = v14;
    outlined init with copy of MLS.EventQueue.Result(v0 + 120, v0 + 432);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v95);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v7, v8, "EventQueue runEvent sendBlock returned { identifier: %s, result: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v89, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 1016);

    outlined destroy of MLS.EventQueue.Event(v20);
  }

  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v32 = *(v0 + 200);
  v31 = *(v0 + 208);
  if (*(v0 + 216) <= 1u)
  {
    v33 = *(v0 + 976);
    v34 = *(v0 + 960);
    v35 = *(v0 + 952);
    if (*(v0 + 216))
    {
      v92 = *(v0 + 120);
      v93 = v21;
      v94 = v24;
      *&v95 = v23;
      *(&v95 + 1) = v26;
      v96 = v25;
      v97 = v28;
      v98 = v27;
      v99 = v30;
      v100 = v29;
      v101 = v32;
      v102 = v31;
      v36 = *v35;
      v37 = v35[1];
      v38 = 0;
    }

    else
    {
      v92 = *(v0 + 120);
      v93 = v21;
      v94 = v24;
      *&v95 = v23;
      *(&v95 + 1) = v26;
      v96 = v25;
      v97 = v28;
      v98 = v27;
      v99 = v30;
      v100 = v29;
      v101 = v32;
      v102 = v31;
      v36 = *v35;
      v37 = v35[1];
      v38 = 1;
    }

    MLS.EventQueue.transitionToWaitingOnGroupVersionState(groupVersion:eventState:identifier:requireReflection:)(&v92, &v95, v36, v37, v38);
    v67 = *(v33 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    outlined destroy of MLS.EventQueue.Result(v0 + 120);
LABEL_25:
    v82 = *(v0 + 1016);
    v83 = *(v0 + 1008);
    v84 = *(v0 + 1000);
    v85 = *(v0 + 992);
    v86 = *(v0 + 984);
    v87 = *(v0 + 968);

    v88 = *(v0 + 8);

    return v88();
  }

  if (*(v0 + 216) != 2)
  {
    v68 = v21 | v22 | v24 | v23 | v26 | v25 | v28 | v27 | v30 | v29 | v32;
    v69 = *(v0 + 976);
    v70 = *(v0 + 952);
    if (v68 | v31)
    {
      v71 = *(v69 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v75 = *(v69 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      v76 = *v70;
      v77 = v70[1];

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v95 = v81;
        *v80 = 136315138;
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v95);
        _os_log_impl(&dword_264F1F000, v78, v79, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x266755550](v81, -1, -1);
        MEMORY[0x266755550](v80, -1, -1);
      }

      *(*(v0 + 960) + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
      MLS.EventQueue.dequeueIfNeeded()();
    }

    goto LABEL_25;
  }

  v39 = *(v0 + 968);
  v40 = *(v0 + 960);
  v41 = *(v0 + 952);
  *(v0 + 1056) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
  swift_beginAccess();
  outlined init with copy of MLS.EventQueue.Event(v41, v39);
  v42 = *(v0 + 128);

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v39);
  swift_endAccess();
  v43 = *v41;
  *(v0 + 1064) = *v41;
  v44 = v41[1];
  *(v0 + 1072) = v44;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v90 = v43;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v95 = v48;
    *v47 = 136315138;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v95);
    _os_log_impl(&dword_264F1F000, v45, v46, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266755550](v48, -1, -1);
    MEMORY[0x266755550](v47, -1, -1);
  }

  v49 = *(v0 + 960);
  v50 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *(v0 + 1080) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v51 = v49 + v50;
  *(v49 + v50) = 0;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v95 = v55;
    *v54 = 136315138;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v44, &v95);
    _os_log_impl(&dword_264F1F000, v52, v53, "EventQueue transitionToWaitingOnSelfHealSendState { identifier: %s }", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266755550](v55, -1, -1);
    MEMORY[0x266755550](v54, -1, -1);
  }

  v56 = *(v0 + 1008);
  v57 = *(v0 + 952);
  *(v51 + 121) = 1;
  outlined init with copy of MLS.EventQueue.Event(v57, v56);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 1008);
  if (v60)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v95 = v63;
    *v62 = 136315138;
    v64 = *v61;
    v65 = v61[1];

    outlined destroy of MLS.EventQueue.Event(v61);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v95);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_264F1F000, v58, v59, "EventQueue runEvent self healing { identifier: %s }", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x266755550](v63, -1, -1);
    MEMORY[0x266755550](v62, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v61);
  }

  v91 = (v22 + *v22);
  v72 = *(v22 + 4);
  v73 = swift_task_alloc();
  *(v0 + 1088) = v73;
  *v73 = v0;
  v73[1] = closure #1 in MLS.EventQueue.runEvent(event:);

  return v91();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v4 = *v1;
  *(*v1 + 1096) = v0;

  v5 = *(v2 + 1024);
  if (v0)
  {
    v6 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  else
  {
    v6 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v30 = v0;
  v1 = v0[131];
  v2 = v0[120];
  outlined init with copy of MLS.EventQueue.Event(v0[119], v0[125]);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[125];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    v9 = *v6;
    v10 = v6[1];

    outlined destroy of MLS.EventQueue.Event(v6);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue runEvent self healing finished { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v6);
  }

  v12 = v0[134];
  v13 = v0[131];
  v14 = v0[120];

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[134];
    v18 = v0[133];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v29);
    _os_log_impl(&dword_264F1F000, v15, v16, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v19, -1, -1);
  }

  *(v0[120] + v0[135] + 121) = 0;
  MLS.EventQueue.dequeueIfNeeded()();
  outlined destroy of MLS.EventQueue.Result((v0 + 15));
  outlined destroy of MLS.EventQueue.Result((v0 + 15));
  v21 = v0[127];
  v22 = v0[126];
  v23 = v0[125];
  v24 = v0[124];
  v25 = v0[123];
  v26 = v0[121];

  v27 = v0[1];

  return v27();
}

{
  v35 = v0;
  v1 = v0[130];
  v2 = v0[120];
  outlined init with copy of MLS.EventQueue.Event(v0[119], v0[124]);
  v3 = v1;
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[124];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v11 = v34;
    *v9 = 136315394;
    v12 = *v8;
    v13 = v8[1];

    outlined destroy of MLS.EventQueue.Event(v8);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v34);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_264F1F000, v5, v6, "EventQueue runEvent failed { identifier: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v8);
  }

  v17 = v0[119];
  v18 = *(v0[122] + 24);
  v0[118] = v1;
  v19 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v20 = *v17;
  v21 = v17[1];

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);
    _os_log_impl(&dword_264F1F000, v22, v23, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x266755550](v25, -1, -1);
    MEMORY[0x266755550](v24, -1, -1);
  }

  *(v0[120] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
  MLS.EventQueue.dequeueIfNeeded()();

  v26 = v0[127];
  v27 = v0[126];
  v28 = v0[125];
  v29 = v0[124];
  v30 = v0[123];
  v31 = v0[121];

  v32 = v0[1];

  return v32();
}

{
  v66 = v0;
  v1 = v0[137];
  v2 = v0[131];
  v3 = v0[120];
  outlined init with copy of MLS.EventQueue.Event(v0[119], v0[123]);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[137];
    v8 = v0[123];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v65[0] = v11;
    *v9 = 136315394;
    v12 = *v8;
    v13 = v8[1];

    outlined destroy of MLS.EventQueue.Event(v8);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v65);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_264F1F000, v5, v6, "EventQueue runEvent self healing failed { identifier: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v17 = v0[123];

    outlined destroy of MLS.EventQueue.Event(v17);
  }

  v18 = v0[132];
  v19 = v0[120];
  result = swift_beginAccess();
  if (*(*(v19 + v18) + 16))
  {
    v21 = v0[134];
    v22 = v0[131];
    v23 = v0[120] + v0[132];
    specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    swift_endAccess();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = &protocol conformance descriptor for MLS.Credential;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[134];
      v28 = v0[133];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v65[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v65);
      _os_log_impl(&dword_264F1F000, v24, v25, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266755550](v30, -1, -1);
      MEMORY[0x266755550](v29, -1, -1);
    }

    v31 = v0[137];
    *(v0[120] + v0[135] + 121) = 0;
    swift_willThrow();
    outlined destroy of MLS.EventQueue.Result((v0 + 15));
    outlined destroy of MLS.EventQueue.Result((v0 + 15));
    v32 = v0[137];
    v33 = v0[120];
    outlined init with copy of MLS.EventQueue.Event(v0[119], v0[124]);
    v34 = v32;
    v35 = v32;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[124];
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v65[0] = swift_slowAlloc();
      v42 = v65[0];
      *v40 = 136315394;
      v43 = *v39;
      v44 = v39[1];

      outlined destroy of MLS.EventQueue.Event(v39);
      v45 = v43;
      v26 = &protocol conformance descriptor for MLS.Credential;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v65);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2112;
      v47 = v32;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v48;
      *v41 = v48;
      _os_log_impl(&dword_264F1F000, v36, v37, "EventQueue runEvent failed { identifier: %s, error: %@ }", v40, 0x16u);
      outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266755550](v42, -1, -1);
      MEMORY[0x266755550](v40, -1, -1);
    }

    else
    {

      outlined destroy of MLS.EventQueue.Event(v39);
    }

    v49 = v0[119];
    v50 = *(v0[122] + 24);
    v0[118] = v32;
    v51 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    v52 = *v49;
    v53 = v49[1];

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v65[0] = v57;
      *v56 = v26[20];
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v65);
      _os_log_impl(&dword_264F1F000, v54, v55, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x266755550](v57, -1, -1);
      MEMORY[0x266755550](v56, -1, -1);
    }

    *(v0[120] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
    MLS.EventQueue.dequeueIfNeeded()();

    v58 = v0[127];
    v59 = v0[126];
    v60 = v0[125];
    v61 = v0[124];
    v62 = v0[123];
    v63 = v0[121];

    v64 = v0[1];

    return v64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLS.EventQueue.deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_bag));
  v4 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock + 8);

  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 112);
  v12[6] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 96);
  v12[7] = v5;
  v13 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 128);
  v6 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 32);
  v12[3] = v6;
  v7 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 64);
  v12[5] = v7;
  v8 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
  v12[1] = v8;
  outlined destroy of MLS.EventQueue.QueueState(v12);
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  v9 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue);

  v10 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue);

  return v0;
}

uint64_t MLS.EventQueue.__deallocating_deinit()
{
  MLS.EventQueue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

BOOL specialized static MLS.QueuedFTDInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v17 = *(a2 + 48);
  v18 = *(a1 + 48);
  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  v21[0] = *a1;
  v21[1] = v2;
  v21[2] = v3;
  v22 = v13;
  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v9;
  v20 = v14;
  outlined copy of MLS.AllMember();
  outlined copy of MLS.AllMember();
  LOBYTE(v9) = specialized static MLS.AllMember.== infix(_:_:)(v21, v19);
  outlined consume of MLS.AllMember();
  outlined consume of MLS.AllMember();
  if ((v9 & 1) == 0 || (v4 != v10 || v5 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    if (v12 >> 60 == 15)
    {
      outlined copy of Data?(v18, v6);
      outlined copy of Data?(v17, v12);
      outlined consume of Data?(v18, v6);
      return 1;
    }

    goto LABEL_9;
  }

  if (v12 >> 60 == 15)
  {
LABEL_9:
    outlined copy of Data?(v18, v6);
    outlined copy of Data?(v17, v12);
    outlined consume of Data?(v18, v6);
    outlined consume of Data?(v17, v12);
    return 0;
  }

  outlined copy of Data?(v18, v6);
  outlined copy of Data?(v17, v12);
  v16 = specialized static Data.== infix(_:_:)(v18, v6, v17, v12);
  outlined consume of Data?(v17, v12);
  outlined consume of Data?(v18, v6);
  return (v16 & 1) != 0;
}

uint64_t outlined init with copy of ServerBag.MLS(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MLSActor and conformance MLSActor()
{
  result = lazy protocol witness table cache variable for type MLSActor and conformance MLSActor;
  if (!lazy protocol witness table cache variable for type MLSActor and conformance MLSActor)
  {
    type metadata accessor for MLSActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLSActor and conformance MLSActor);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264F49554()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for MLS.QueuedFTDInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.QueuedFTDInfo(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t type metadata accessor for MLS.EventQueue.Event(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MLS.EventQueue()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for MLS.EventQueue.Event?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MLS.EventQueue.enqueue(identifier:eventState:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 280);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 288);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 296);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 304);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 312);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 320);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

void type metadata accessor for MLS.EventQueue.Event?()
{
  if (!lazy cache variable for type metadata for MLS.EventQueue.Event?)
  {
    type metadata accessor for MLS.EventQueue.Event(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MLS.EventQueue.Event?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO18OutgoingEventStateVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO10EventQueueC6ResultO(uint64_t a1)
{
  if ((*(a1 + 96) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EventQueue.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.EventQueue.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.EventQueue.Result(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t sub_264F4A3A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264F4A474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MLS.EventQueue.Event()
{
  type metadata accessor for MLS.OutgoingEventState?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<(), Error>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for MLS.OutgoingEventState?()
{
  if (!lazy cache variable for type metadata for MLS.OutgoingEventState?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MLS.OutgoingEventState?);
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Error>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(), Error>);
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for MLS.EventQueue.QueueState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.EventQueue.QueueState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of MLS.EventQueue.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.EventQueue.Event(uint64_t a1)
{
  v2 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264F4A8D4()
{
  v1 = type metadata accessor for MLS.EventQueue.Event(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 24))
  {

    outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v6 + 32), *(v6 + 40), *(v6 + 48));
    v8 = *(v6 + 64);

    v9 = *(v6 + 80);
    if (v9 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v6 + 72), v9);
    }
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = *(v6 + *(v1 + 28) + 8);

  v14 = *(v0 + v10);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

uint64_t outlined consume of MLS.OutgoingEventState.EventSpecificState(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 6u)
  {
    if (a3 != 7)
    {
      if (a3 != 8 && a3 != 9)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_10:
}

uint64_t outlined init with take of MLS.EventQueue.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MLS.EventQueue.runEvent(event:)(uint64_t a1)
{
  v4 = *(type metadata accessor for MLS.EventQueue.Event(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventQueue.runEvent(event:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264F4ACD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  outlined consume of MLS.AllMember();
  v7 = *(v0 + 80);

  v8 = *(v0 + 96);
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 88), v8);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.EventQueue.flushFTDQueue()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventQueue.flushFTDQueue()(a1, v4, v5, v6, (v1 + 5));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t outlined init with copy of MLS.OutgoingEventState?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of MLS.EventQueue.Event?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F4B048()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t secureMessagingLogger(category:)(char *a1)
{
  v2 = *a1;
  LogCategory.rawValue.getter();

  return Logger.init(subsystem:category:)();
}

SecureMessaging::LogCategory_optional __swiftcall LogCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t LogCategory.rawValue.getter()
{
  result = 0x50586E6F6D656144;
  switch(*v0)
  {
    case 1:
      result = 0x5041746E65696C43;
      break;
    case 2:
      result = 0x43505870756F7247;
      break;
    case 3:
      result = 0x6172747369676552;
      break;
    case 4:
      result = 1819242324;
      break;
    case 5:
      result = 0x6574696C7153;
      break;
    case 6:
    case 9:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x6E65696C43534C4DLL;
      break;
    case 0xD:
      result = 0x435058534C4DLL;
      break;
    case 0xE:
      result = 0xD000000000000017;
      break;
    case 0xF:
      result = 0x6F6D656144534C4DLL;
      break;
    case 0x10:
      result = 0x6144435058534C4DLL;
      break;
    case 0x11:
      result = 0x7466697753534C4DLL;
      break;
    case 0x12:
    case 0x14:
      result = 0x746E657645534C4DLL;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x16:
      result = 4411480;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LogCategory(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = LogCategory.rawValue.getter();
  v4 = v3;
  if (v2 == LogCategory.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type LogCategory and conformance LogCategory()
{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LogCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LogCategory()
{
  v2 = *v0;
  LogCategory.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LogCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LogCategory@<X0>(unint64_t *a1@<X8>)
{
  result = LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LogCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x266755570](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, a2, a3);
  }

  return result;
}

BOOL specialized MLS.DefaultKeyUpdatePolicy.shouldUpdateKey(eventsSinceLastUpdate:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  LODWORD(a1) = *(a1 + 16);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  if (a1 == 1)
  {
    result = 1;
    if (v7 > 0x1D)
    {
      return result;
    }

    v12 = 86400.0;
    goto LABEL_8;
  }

  if (v10 < v8 + 604800.0)
  {
    return 0;
  }

  result = 1;
  if (v7 <= 0x31)
  {
    v12 = 2592000.0;
LABEL_8:
    if (v8 + v12 > v10)
    {
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1, 0.0, 1.0);
      return v13 < 0.1;
    }
  }

  return result;
}

uint64_t MLS.IncomingEventType.identifier.getter(void *a1)
{
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v87 = a1[2];
  v2 = v87;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v6 = type metadata accessor for MLS.IncomingInternalStateUpdated();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v64 - v8;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v9 = type metadata accessor for MLS.IncomingResendApplicationMessage();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v9);
  v80 = &v64 - v11;
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v12 = type metadata accessor for MLS.IncomingApplicationSignatureVerified();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v64 - v14;
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v15 = type metadata accessor for MLS.IncomingGroupNameChange();
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v15);
  v74 = &v64 - v17;
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v18 = type metadata accessor for MLS.IncomingDowngradeRecommended();
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v18);
  v71 = &v64 - v20;
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v70 = type metadata accessor for MLS.IncomingSelfKicked();
  v69 = *(v70 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v64 - v22;
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v67 = type metadata accessor for MLS.IncomingMemberKicked();
  v66 = *(v67 - 8);
  v23 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v25 = (&v64 - v24);
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v26 = type metadata accessor for MLS.IncomingMemberAdded();
  v65 = *(v26 - 8);
  v27 = *(v65 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v64 - v28);
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v30 = type metadata accessor for MLS.IncomingGroupCreated();
  v64 = *(v30 - 8);
  v31 = *(v64 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v64 - v32);
  v87 = v2;
  v88 = v3;
  v89 = v5;
  v90 = v4;
  v34 = type metadata accessor for MLS.IncomingApplicationMessage();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v64 - v38);
  v40 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42, v86, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v51 = v71;
        v50 = v72;
        v52 = v73;
        (*(v72 + 32))(v71, v42, v73);
      }

      else
      {
        v51 = v74;
        v50 = v75;
        v52 = v76;
        (*(v75 + 32))(v74, v42, v76);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v51 = v77;
      v50 = v78;
      v52 = v79;
      (*(v78 + 32))(v77, v42, v79);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v51 = v80;
      v50 = v81;
      v52 = v82;
      (*(v81 + 32))(v80, v42, v82);
    }

    else
    {
      v51 = v83;
      v50 = v84;
      v52 = v85;
      (*(v84 + 32))(v83, v42, v85);
    }

LABEL_20:
    v47 = *v51;
    v61 = *(v51 + 1);
    v62 = *(v50 + 8);

    v62(v51, v52);
    return v47;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v55 = v65;
      (*(v65 + 32))(v29, v42, v26);
      v47 = *v29;
      v56 = v29[1];
      v57 = *(v55 + 8);

      v57(v29, v26);
      return v47;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v45 = v66;
      v46 = v67;
      (*(v66 + 32))(v25, v42, v67);
      v47 = *v25;
      v48 = v25[1];
      v49 = *(v45 + 8);

      v49(v25, v46);
      return v47;
    }

    v50 = v69;
    v51 = v68;
    v52 = v70;
    (*(v69 + 32))(v68, v42, v70);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v58 = v64;
    (*(v64 + 32))(v33, v42, v30);
    v47 = *v33;
    v59 = v33[1];
    v60 = *(v58 + 8);

    v60(v33, v30);
  }

  else
  {
    (*(v35 + 32))(v39, v42, v34);
    v47 = *v39;
    v53 = v39[1];
    v54 = *(v35 + 8);

    v54(v39, v34);
  }

  return v47;
}

uint64_t MLS.IncomingEventType.sender.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v76 = a1[2];
  v3 = v76;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v7 = type metadata accessor for MLS.IncomingInternalStateUpdated();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v51 - v9;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v10 = type metadata accessor for MLS.IncomingResendApplicationMessage();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v51 - v12;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v13 = type metadata accessor for MLS.IncomingApplicationSignatureVerified();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v51 - v15;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v16 = type metadata accessor for MLS.IncomingGroupNameChange();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16);
  v62 = &v51 - v18;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v19 = type metadata accessor for MLS.IncomingDowngradeRecommended();
  v60 = *(v19 - 8);
  v61 = v19;
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v19);
  v59 = &v51 - v21;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v58 = type metadata accessor for MLS.IncomingSelfKicked();
  v57 = *(v58 - 8);
  v22 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - v23;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v55 = type metadata accessor for MLS.IncomingMemberKicked();
  v54 = *(v55 - 8);
  v24 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v51 - v25;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v26 = type metadata accessor for MLS.IncomingMemberAdded();
  v52 = *(v26 - 8);
  v27 = *(v52 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v51 - v28;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v30 = type metadata accessor for MLS.IncomingGroupCreated();
  v51 = *(v30 - 8);
  v31 = *(v51 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v51 - v32;
  v76 = v3;
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v34 = type metadata accessor for MLS.IncomingApplicationMessage();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v51 - v38;
  v40 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v51 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42, v74, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v46 = v59;
        v45 = v60;
        v47 = v61;
        (*(v60 + 32))(v59, v42, v61);
      }

      else
      {
        v46 = v62;
        v45 = v63;
        v47 = v64;
        (*(v63 + 32))(v62, v42, v64);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v46 = v65;
      v45 = v66;
      v47 = v67;
      (*(v66 + 32))(v65, v42, v67);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v46 = v68;
      v45 = v69;
      v47 = v70;
      (*(v69 + 32))(v68, v42, v70);
    }

    else
    {
      v46 = v71;
      v45 = v72;
      v47 = v73;
      (*(v72 + 32))(v71, v42, v73);
    }

LABEL_20:
    (*(*(v3 - 8) + 16))(v75, &v46[*(v47 + 52)], v3);
    return (*(v45 + 8))(v46, v47);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v49 = v52;
      (*(v52 + 32))(v29, v42, v26);
      (*(*(v3 - 8) + 16))(v75, &v29[*(v26 + 52)], v3);
      return (*(v49 + 8))(v29, v26);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v45 = v54;
      v46 = v53;
      v47 = v55;
      (*(v54 + 32))(v53, v42, v55);
    }

    else
    {
      v45 = v57;
      v46 = v56;
      v47 = v58;
      (*(v57 + 32))(v56, v42, v58);
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v50 = v51;
    (*(v51 + 32))(v33, v42, v30);
    (*(*(v3 - 8) + 16))(v75, &v33[*(v30 + 52)], v3);
    return (*(v50 + 8))(v33, v30);
  }

  else
  {
    (*(v35 + 32))(v39, v42, v34);
    (*(*(v3 - 8) + 16))(v75, &v39[*(v34 + 52)], v3);
    return (*(v35 + 8))(v39, v34);
  }
}

Swift::Int MLS.IncomingEventType.MatchableType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.IncomingEventType<A, B>.MatchableType()
{
  Hasher.init(_seed:)();
  MLS.IncomingEventType.MatchableType.hash(into:)();
  return Hasher._finalize()();
}

BOOL MLS.IncomingEventType.matches(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v6;
  (*(v4 + 16))(v8, v2, a2);
  v10 = v9 == swift_getEnumCaseMultiPayload();
  (*(v4 + 8))(v8, a2);
  return v10;
}

uint64_t MLS.IncomingEventType.innerEvent.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = a1[2];
  v9 = a1[3];
  v12 = a1[4];
  v11 = a1[5];
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v16 = a1[2];
      v17 = v9;
      v18 = v12;
      v19 = v11;
      if (EnumCaseMultiPayload == 5)
      {
        v13 = type metadata accessor for MLS.IncomingDowngradeRecommended();
      }

      else
      {
        v13 = type metadata accessor for MLS.IncomingGroupNameChange();
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v16 = a1[2];
      v17 = v9;
      v18 = v12;
      v19 = v11;
      v13 = type metadata accessor for MLS.IncomingApplicationSignatureVerified();
    }

    else
    {
      v16 = a1[2];
      v17 = v9;
      v18 = v12;
      v19 = v11;
      if (EnumCaseMultiPayload == 8)
      {
        v13 = type metadata accessor for MLS.IncomingResendApplicationMessage();
      }

      else
      {
        v13 = type metadata accessor for MLS.IncomingInternalStateUpdated();
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v16 = a1[2];
    v17 = v9;
    v18 = v12;
    v19 = v11;
    if (EnumCaseMultiPayload)
    {
      v13 = type metadata accessor for MLS.IncomingGroupCreated();
    }

    else
    {
      v13 = type metadata accessor for MLS.IncomingApplicationMessage();
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v16 = a1[2];
    v17 = v9;
    v18 = v12;
    v19 = v11;
    v13 = type metadata accessor for MLS.IncomingMemberAdded();
  }

  else
  {
    v16 = a1[2];
    v17 = v9;
    v18 = v12;
    v19 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v13 = type metadata accessor for MLS.IncomingMemberKicked();
    }

    else
    {
      v13 = type metadata accessor for MLS.IncomingSelfKicked();
    }
  }

  a2[3] = v13;
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v13 - 8) + 32))(boxed_opaque_existential_1, v6, v13);
}

uint64_t MLS.IncomingEventType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000002651E8470 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65724370756F7267 && a2 == 0xEC00000064657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64417265626D656DLL && a2 == 0xEB00000000646564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694B7265626D656DLL && a2 == 0xEC00000064656B63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63694B666C6573 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E8490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xEF65676E61684365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002651E84B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002651E84D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E84F0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t MLS.IncomingEventType.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000018;
    if (a1 != 8)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000001CLL;
    }

    v6 = 0xD000000000000014;
    if (a1 != 5)
    {
      v6 = 0x6D614E70756F7267;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65724370756F7267;
    v2 = 0x64417265626D656DLL;
    v3 = 0x694B7265626D656DLL;
    if (a1 != 3)
    {
      v3 = 0x6B63694B666C6573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t MLS.IncomingEventType.ApplicationMessageCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = MLS.IncomingEventType.ApplicationMessageCodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.ApplicationSignatureVerifiedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.ApplicationSignatureVerifiedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.DowngradeRecommendedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.DowngradeRecommendedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.GroupCreatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.GroupCreatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.InternalStateUpdatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.InternalStateUpdatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.MemberAddedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.MemberAddedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.MemberKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.MemberKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.ResendApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.ResendApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.SelfKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.SelfKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingEventType.encode(to:)(void *a1, void *a2)
{
  v170 = a1;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v174 = a2[2];
  v3 = v174;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v7 = type metadata accessor for MLS.IncomingEventType.InternalStateUpdatedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v164 = v7;
  v8 = type metadata accessor for KeyedEncodingContainer();
  v168 = *(v8 - 8);
  v169 = v8;
  v9 = *(v168 + 64);
  MEMORY[0x28223BE20](v8);
  v166 = v92 - v10;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v167 = type metadata accessor for MLS.IncomingInternalStateUpdated();
  v165 = *(v167 - 8);
  v11 = *(v165 + 64);
  MEMORY[0x28223BE20](v167);
  v162 = v92 - v12;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v13 = type metadata accessor for MLS.IncomingEventType.ResendApplicationMessageCodingKeys();
  v14 = swift_getWitnessTable();
  v156 = v13;
  v155 = v14;
  v15 = type metadata accessor for KeyedEncodingContainer();
  v160 = *(v15 - 8);
  v161 = v15;
  v16 = *(v160 + 64);
  MEMORY[0x28223BE20](v15);
  v158 = v92 - v17;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v159 = type metadata accessor for MLS.IncomingResendApplicationMessage();
  v157 = *(v159 - 8);
  v18 = *(v157 + 64);
  MEMORY[0x28223BE20](v159);
  v154 = v92 - v19;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v20 = type metadata accessor for MLS.IncomingEventType.ApplicationSignatureVerifiedCodingKeys();
  v21 = swift_getWitnessTable();
  v148 = v20;
  v147 = v21;
  v153 = type metadata accessor for KeyedEncodingContainer();
  v152 = *(v153 - 8);
  v22 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v150 = v92 - v23;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v151 = type metadata accessor for MLS.IncomingApplicationSignatureVerified();
  v149 = *(v151 - 8);
  v24 = *(v149 + 64);
  MEMORY[0x28223BE20](v151);
  v146 = v92 - v25;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v26 = type metadata accessor for MLS.IncomingEventType.GroupNameChangeCodingKeys();
  v27 = swift_getWitnessTable();
  v140 = v26;
  v139 = v27;
  v145 = type metadata accessor for KeyedEncodingContainer();
  v144 = *(v145 - 8);
  v28 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v142 = v92 - v29;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v143 = type metadata accessor for MLS.IncomingGroupNameChange();
  v141 = *(v143 - 8);
  v30 = *(v141 + 64);
  MEMORY[0x28223BE20](v143);
  v138 = v92 - v31;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v32 = type metadata accessor for MLS.IncomingEventType.DowngradeRecommendedCodingKeys();
  v33 = swift_getWitnessTable();
  v132 = v32;
  v131 = v33;
  v137 = type metadata accessor for KeyedEncodingContainer();
  v136 = *(v137 - 8);
  v34 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v134 = v92 - v35;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v135 = type metadata accessor for MLS.IncomingDowngradeRecommended();
  v133 = *(v135 - 8);
  v36 = *(v133 + 64);
  MEMORY[0x28223BE20](v135);
  v130 = v92 - v37;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v38 = type metadata accessor for MLS.IncomingEventType.SelfKickedCodingKeys();
  v39 = swift_getWitnessTable();
  v124 = v38;
  v123 = v39;
  v129 = type metadata accessor for KeyedEncodingContainer();
  v128 = *(v129 - 8);
  v40 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v126 = v92 - v41;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v127 = type metadata accessor for MLS.IncomingSelfKicked();
  v125 = *(v127 - 8);
  v42 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v122 = v92 - v43;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v44 = type metadata accessor for MLS.IncomingEventType.MemberKickedCodingKeys();
  v45 = swift_getWitnessTable();
  v116 = v44;
  v115 = v45;
  v121 = type metadata accessor for KeyedEncodingContainer();
  v120 = *(v121 - 8);
  v46 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v118 = v92 - v47;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v119 = type metadata accessor for MLS.IncomingMemberKicked();
  v117 = *(v119 - 8);
  v48 = *(v117 + 64);
  MEMORY[0x28223BE20](v119);
  v114 = v92 - v49;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v50 = type metadata accessor for MLS.IncomingEventType.MemberAddedCodingKeys();
  v51 = swift_getWitnessTable();
  v108 = v50;
  v107 = v51;
  v113 = type metadata accessor for KeyedEncodingContainer();
  v112 = *(v113 - 8);
  v52 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v110 = v92 - v53;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v111 = type metadata accessor for MLS.IncomingMemberAdded();
  v109 = *(v111 - 8);
  v54 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v106 = v92 - v55;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v56 = type metadata accessor for MLS.IncomingEventType.GroupCreatedCodingKeys();
  v57 = swift_getWitnessTable();
  v100 = v56;
  v99 = v57;
  v105 = type metadata accessor for KeyedEncodingContainer();
  v104 = *(v105 - 8);
  v58 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = v92 - v59;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v103 = type metadata accessor for MLS.IncomingGroupCreated();
  v101 = *(v103 - 8);
  v60 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v98 = v92 - v61;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  type metadata accessor for MLS.IncomingEventType.ApplicationMessageCodingKeys();
  v92[1] = swift_getWitnessTable();
  v97 = type metadata accessor for KeyedEncodingContainer();
  v96 = *(v97 - 8);
  v62 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v94 = v92 - v63;
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  v95 = type metadata accessor for MLS.IncomingApplicationMessage();
  v93 = *(v95 - 8);
  v64 = *(v93 + 64);
  v65 = MEMORY[0x28223BE20](v95);
  v92[0] = v92 - v66;
  v67 = *(a2 - 1);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v70 = v92 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v3;
  v175 = v4;
  v176 = v5;
  v177 = v6;
  type metadata accessor for MLS.IncomingEventType.CodingKeys();
  swift_getWitnessTable();
  v71 = type metadata accessor for KeyedEncodingContainer();
  v172 = *(v71 - 8);
  v173 = v71;
  v72 = *(v172 + 64);
  MEMORY[0x28223BE20](v71);
  v74 = (v92 - v73);
  v75 = v170[4];
  __swift_project_boxed_opaque_existential_1(v170, v170[3]);
  v170 = v74;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v67 + 16))(v70, v171, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v77 = v170;
      if (EnumCaseMultiPayload == 5)
      {
        v78 = v133;
        v79 = v130;
        v80 = v135;
        (*(v133 + 32))(v130, v70, v135);
        LOBYTE(v174) = 5;
        v81 = v134;
        v82 = v173;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v83 = v137;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v84 = &v168;
      }

      else
      {
        v78 = v141;
        v79 = v138;
        v80 = v143;
        (*(v141 + 32))(v138, v70, v143);
        LOBYTE(v174) = 6;
        v81 = v142;
        v82 = v173;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v83 = v145;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v84 = &v176;
      }
    }

    else
    {
      v77 = v170;
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v78 = v157;
          v79 = v154;
          v80 = v159;
          (*(v157 + 32))(v154, v70, v159);
          LOBYTE(v174) = 8;
          v81 = v158;
          v82 = v173;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_getWitnessTable();
          v83 = v161;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v85 = v160;
        }

        else
        {
          v78 = v165;
          v79 = v162;
          v80 = v167;
          (*(v165 + 32))(v162, v70, v167);
          LOBYTE(v174) = 9;
          v81 = v166;
          v82 = v173;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_getWitnessTable();
          v83 = v169;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v85 = v168;
        }

        goto LABEL_21;
      }

      v78 = v149;
      v79 = v146;
      v80 = v151;
      (*(v149 + 32))(v146, v70, v151);
      LOBYTE(v174) = 7;
      v81 = v150;
      v82 = v173;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v83 = v153;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v84 = &v178;
    }

LABEL_20:
    v85 = *(v84 - 32);
LABEL_21:
    (*(v85 + 8))(v81, v83);
    (*(v78 + 8))(v79, v80);
    return (*(v172 + 8))(v77, v82);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v78 = v109;
      v79 = v106;
      v80 = v111;
      (*(v109 + 32))(v106, v70, v111);
      LOBYTE(v174) = 2;
      v81 = v110;
      v82 = v173;
      v77 = v170;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v83 = v113;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v84 = &v144;
    }

    else
    {
      v77 = v170;
      if (EnumCaseMultiPayload == 3)
      {
        v78 = v117;
        v79 = v114;
        v80 = v119;
        (*(v117 + 32))(v114, v70, v119);
        LOBYTE(v174) = 3;
        v81 = v118;
        v82 = v173;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v83 = v121;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v84 = &v152;
      }

      else
      {
        v78 = v125;
        v79 = v122;
        v80 = v127;
        (*(v125 + 32))(v122, v70, v127);
        LOBYTE(v174) = 4;
        v81 = v126;
        v82 = v173;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v83 = v129;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v84 = &v160;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v78 = v101;
    v79 = v98;
    v80 = v103;
    (*(v101 + 32))(v98, v70, v103);
    LOBYTE(v174) = 1;
    v81 = v102;
    v82 = v173;
    v77 = v170;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    swift_getWitnessTable();
    v83 = v105;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v84 = &v136;
    goto LABEL_20;
  }

  v86 = v93;
  v87 = v92[0];
  v88 = v95;
  (*(v93 + 32))(v92[0], v70, v95);
  LOBYTE(v174) = 0;
  v89 = v94;
  v82 = v173;
  v77 = v170;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  swift_getWitnessTable();
  v90 = v97;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v96 + 8))(v89, v90);
  (*(v86 + 8))(v87, v88);
  return (*(v172 + 8))(v77, v82);
}