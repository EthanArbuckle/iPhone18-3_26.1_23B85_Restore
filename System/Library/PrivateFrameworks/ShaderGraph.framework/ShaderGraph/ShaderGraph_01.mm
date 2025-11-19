void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
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
    v16 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 80);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[10 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 80 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

    return outlined init with take of MetalFunctionNode(a1, v21);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
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
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v18 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(*(v20 + 56) + 8 * result) = a1;
  }

  else
  {
    v21 = *(a2 + 8);
    v23 = *(a2 + 16);
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v20);

    return outlined init with copy of String(&v23, &v22);
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

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
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v18 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(*(v20 + 56) + 8 * result) = a1;
  }

  else
  {
    v21 = *(a2 + 8);
    v23 = *(a2 + 16);
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v20);

    return outlined init with copy of String(&v23, &v22);
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    v23 = v22[7] + 152 * v11;

    return outlined assign with take of NodeDef(a1, v23);
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
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v22);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    v26 = *(a3 + 48);
    v30[2] = *(a3 + 32);
    v30[3] = v26;
    v31 = *(a3 + 64);
    v27 = *(a3 + 16);
    v30[0] = *a3;
    v30[1] = v27;
    v28 = *(a3 + 72);
    specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v22);
    outlined init with copy of SGDataTypeStorage(v30, &v29);
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
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
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
    v21 = v20[7] + 48 * v9;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    v25 = *(v21 + 32);
    v24 = *(v21 + 40);
    v26 = a1[1];
    *v21 = *a1;
    *(v21 + 16) = v26;
    *(v21 + 32) = a1[2];
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
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
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v18 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMR);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
  }

  else
  {
    v21 = *(a2 + 16);
    v23 = *(a2 + 24);
    v24 = v21;
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v20);
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v24, v22);
    return outlined init with copy of String(&v23, v22);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = result;
      a4();
      result = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v23 = *v9;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v24 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v9;
  if (v20)
  {
    *(*(v25 + 56) + 8 * result) = a1;
  }

  else
  {

    return a6(result, a2, a1, v25);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
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
    goto LABEL_14;
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
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 48 * v9;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *(v21 + 25) = *(a1 + 25);
    v25 = a1[1];
    *v21 = *a1;
    *(v21 + 16) = v25;
    outlined consume of NodePersonality(v22);
  }

  else
  {
    v27 = *(a2 + 48);
    v31[2] = *(a2 + 32);
    v31[3] = v27;
    v32 = *(a2 + 64);
    v28 = *(a2 + 16);
    v31[0] = *a2;
    v31[1] = v28;
    v29 = *(a2 + 72);
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
    outlined init with copy of SGDataTypeStorage(v31, &v30);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v22);
  }
}

uint64_t specialized static NodePersonality.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
        v38 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
        v39[0] = v14;
        *(v39 + 9) = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
        v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v34 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v35 = v15;
        v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v36 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v37 = v16;
        v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v30 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v31 = v17;
        v18 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v32 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v33 = v18;
        if (a2 >> 61 != 6)
        {
          goto LABEL_56;
        }

        v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
        v47 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v48 = v19;
        v49[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
        *(v49 + 9) = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
        v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v43 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v44 = v20;
        v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v45 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v46 = v21;
        v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v40 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v41 = v22;
        v42 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        outlined init with copy of UserGraph(&v40, &v29);
        v23 = specialized static UserGraph.== infix(_:_:)(&v30, &v40);
        outlined destroy of UserGraph(&v40);
        return v23 & 1;
      }

      v27 = 0xE000000000000000;
      if (a1 == 0xE000000000000000 || (v27 = 0xE000000000000008, a1 == 0xE000000000000008))
      {
        if (a2 != v27)
        {
          goto LABEL_56;
        }
      }

      else if (a2 != 0xE000000000000010)
      {
        goto LABEL_56;
      }

LABEL_53:
      v23 = 1;
      return v23 & 1;
    }

    if (v2 == 4)
    {
      if (a2 >> 61 != 4)
      {
        goto LABEL_56;
      }
    }

    else if (a2 >> 61 != 5)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (a2 >> 61 == 1)
        {
          v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v24 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return (*(*v5 + 128))(v7) & 1;
          }
        }
      }

      else
      {
        v3 = *(a1 + 64);
        v32 = *(a1 + 48);
        v33 = v3;
        LOBYTE(v34) = *(a1 + 80);
        v4 = *(a1 + 32);
        v30 = *(a1 + 16);
        v31 = v4;
        if (!(a2 >> 61))
        {
          v5 = *(a1 + 88);
          v6 = *(a2 + 48);
          v41 = *(a2 + 32);
          v42 = v6;
          v43 = *(a2 + 64);
          LOBYTE(v44) = *(a2 + 80);
          v40 = *(a2 + 16);
          v7 = *(a2 + 88);
          if (specialized static SGDataTypeStorage.== infix(_:_:)(&v30, &v40))
          {
            return (*(*v5 + 128))(v7) & 1;
          }
        }
      }

      goto LABEL_56;
    }

    if (v2 == 2)
    {
      if (a2 >> 61 == 2)
      {
        v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 0;
        if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          v10 = 0xD000000000000010;
        }

        else
        {
          v10 = 0x65636166727573;
        }

        if (v9)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0x8000000265F2BA10;
        }

        if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          v12 = 0xD000000000000010;
        }

        else
        {
          v12 = 0x65636166727573;
        }

        if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          v13 = 0x8000000265F2BA10;
        }

        else
        {
          v13 = 0xE700000000000000;
        }

        if (v10 == v12 && v11 == v13)
        {

          return (*(*v5 + 128))(v7) & 1;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
          return (*(*v5 + 128))(v7) & 1;
        }
      }

LABEL_56:
      v23 = 0;
      return v23 & 1;
    }

    if (a2 >> 61 != 3)
    {
      goto LABEL_56;
    }
  }

  if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
    goto LABEL_53;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t specialized NodePersonalityType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodePersonalityType.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t outlined copy of NodePersonality(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t outlined consume of NodePersonality(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t specialized MetalShaderProgram.add<A>(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalLiteralValueNode();
  v13 = v8;
  v14 = &protocol witness table for MetalLiteralValueNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalLiteralValueNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalPassthroughNode();
  v13 = v8;
  v14 = &protocol witness table for MetalPassthroughNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 112))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalPassthroughNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalFunctionCallNode();
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionCallNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionCallNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  swift_beginAccess();
  v3 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v1 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v7 = type metadata accessor for RESurfaceShaderFunctionNode();
  v11 = v7;
  v12 = &protocol witness table for RESurfaceShaderFunctionNode;
  *&v10 = a1;
  v3[2] = v6 + 1;
  outlined init with take of MetalFunctionNode(&v10, &v3[5 * v6 + 4]);
  *(v1 + 16) = v3;
  swift_endAccess();
  swift_beginAccess();
  v8 = *(a1 + 88);
  v11 = v7;
  v12 = &protocol witness table for RESurfaceShaderFunctionNode;
  *&v10 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v10, v8);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalFunctionParameterNode();
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionParameterNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 112))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionParameterNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalFunctionDefinitionNode();
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionDefinitionNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 128))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionDefinitionNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalStructGetterNode();
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalStructGetterOffsetNode();
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterOffsetNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterOffsetNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph5InputVG_AH5input_AF17MetalFunctionNode_pSg01fJ0tsAE_pTg504_s11d9Graph0aB4j77V18mapConnectedInputs33_F5CF7A5B5C82F3474CCCF23EC0D47689LL7context4intoSayAA5f13V5input_AA013hI85C0_pSg01fC0tGAA04UserB8CompilerC14CompileContextVz_AA0tA7ProgramCztKFAiJ_AlMtAIKXEfU_AF04UserE8CompilerC14CompileContextVAF0deJ0VAF0hD7ProgramCTf1cn_nTf4nngXn_n(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = MEMORY[0x277D84F90];
  v95 = *(a1 + 16);
  if (!v95)
  {
    return v4;
  }

  v129 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95, 0);
  v7 = 0;
  v4 = v129;
  v94 = a1 + 32;
  v92 = a2;
  while (1)
  {
    v105 = v7;
    v8 = (v94 + 56 * v7);
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    v13 = v8[4];
    v14 = *(v8 + 40);
    v15 = v8[6];
    *&v130 = v10;
    *(&v130 + 1) = v9;
    v102 = v11;
    *&v131 = v11;
    *(&v131 + 1) = v12;
    v96 = v13;
    *&v132 = v13;
    v97 = v14;
    BYTE8(v132) = v14;
    v98 = v15;
    v133 = v15;
    v16 = a2[1];
    v119 = *a2;
    v120 = v16;
    v17 = a2[2];
    v18 = a2[3];
    v20 = a2[6];
    v19 = a2[7];
    v21 = a2[4];
    v124 = a2[5];
    v125 = v20;
    v122 = v18;
    v123 = v21;
    v121 = v17;
    v22 = a2[8];
    v23 = a2[9];
    *(v128 + 9) = *(a2 + 153);
    v127 = v22;
    v128[0] = v23;
    v126 = v19;
    v24 = v120;
    v25 = *(&v119 + 1) + 32;
    v26 = *(*(&v119 + 1) + 16);
    v134 = v12;
    if (v119)
    {
      break;
    }

    if (!v26)
    {
LABEL_5:

LABEL_46:
      v115 = v130;
      v116 = v131;
      v117 = v132;
      *v118 = v133;
      memset(&v118[8], 0, 40);
      goto LABEL_47;
    }

    result = 0;
    while (*(v25 + 8 * result) != v10)
    {
      if (v26 == ++result)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
    if (result >= *(v24 + 16))
    {
      goto LABEL_70;
    }

    v29 = (v24 + 48 * result);
    v31 = v29[7];
    v30 = v29[8];
    v32 = v29[9];
    v33 = *(v30 + 16);
    if (!v31)
    {

      v93 = v32;

      if (!v33)
      {
        outlined init with copy of UserGraph(&v119, v112);
LABEL_44:

        a2 = v92;
        goto LABEL_45;
      }

      v99 = v9;
      outlined init with copy of UserGraph(&v119, v112);
      v35 = 0;
      v36 = (v30 + 80);
      while (1)
      {
        if (*(v36 - 6) != v10)
        {
          goto LABEL_19;
        }

        v37 = *(v36 - 4);
        v38 = *(v36 - 3);
        v100 = *(v36 - 2);
        v39 = *(v36 - 8);
        v103 = *v36;
        v40 = *(**(v36 - 5) + 128);

        if ((v40(v99) & 1) == 0)
        {

          goto LABEL_19;
        }

        if (v37 == v102 && v38 == v134)
        {

          if (v39)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v42 & 1) == 0)
          {
            goto LABEL_19;
          }

          if (v39)
          {
LABEL_28:
            v43 = v97;
            if (v103 != v98)
            {
              v43 = 0;
            }

            if (v43)
            {
              goto LABEL_37;
            }

            goto LABEL_19;
          }
        }

        v44 = v97 ^ 1;
        if (v100 != v96)
        {
          v44 = 0;
        }

        if (v44 == 1 && v103 == v98)
        {
LABEL_37:
          a2 = v92;
          v9 = v99;
          goto LABEL_39;
        }

LABEL_19:
        v36 += 7;
        if (v33 == ++v35)
        {
          goto LABEL_44;
        }
      }
    }

    outlined init with copy of UserGraph(&v119, v112);
    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v130, v30 + 32, v33, v31 + 16, v31 + 32);
    if (v34)
    {

LABEL_45:

      outlined destroy of UserGraph(&v119);
      goto LABEL_46;
    }

    v35 = result;
    v93 = v32;
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_39:
    if (v35 >= *(v93 + 16))
    {
      goto LABEL_72;
    }

    v45 = (v93 + 56 * v35);
    v46 = v45[5];
    v47 = v45[7];
    v48 = v45[8];
    v49 = v45[9];
    v50 = v45[10];
    v104 = v45[4];
    v101 = v45[6];
    outlined copy of Output?(v104, v46);

    if (!v46)
    {
      outlined destroy of UserGraph(&v119);
      goto LABEL_46;
    }

    outlined consume of Output?(v104, v46);
    v51 = *(*v9 + 144);

    v53 = v51(v52);
    if (v53)
    {
      v54 = v53;
    }

    else
    {
      v63 = (*(*v46 + 144))();
      if (!v63)
      {
        *&v112[0] = 0;
        *(&v112[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        MEMORY[0x266771550](0xD000000000000022, 0x8000000265F2D680);
        MEMORY[0x266771550](v102, v134);
        MEMORY[0x266771550](0x646F6E206E6F2027, 0xEB00000000272065);
        v106 = 1701080942;
        v107 = 0xE400000000000000;
        *&v111[0] = a3;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v84);

        MEMORY[0x266771550](v106, v107);

        v85 = MEMORY[0x266771550](0x3D65707954202E27, 0xE900000000000027);
        v86 = (*(*v9 + 136))(v85);
        MEMORY[0x266771550](v86);

        MEMORY[0x266771550](39, 0xE100000000000000);
        v87 = v112[0];
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v88 = 38;
        *(v88 + 8) = v87;
        swift_willThrow();

        outlined destroy of UserGraph(&v119);

        return v4;
      }

      v54 = v63;
    }

    v64 = a2[3];
    v112[2] = a2[2];
    v112[3] = v64;
    v65 = a2[7];
    v112[6] = a2[6];
    v112[7] = v65;
    v66 = a2[5];
    v112[4] = a2[4];
    v112[5] = v66;
    v114 = *(a2 + 24);
    v67 = a2[11];
    v112[10] = a2[10];
    v113 = v67;
    v68 = a2[9];
    v112[8] = a2[8];
    v112[9] = v68;
    v69 = a2[1];
    v112[0] = *a2;
    v112[1] = v69;
    v70 = *a4;
    v71 = *(&v113 + 1);
    if (!*(*(&v113 + 1) + 16))
    {
      outlined init with copy of UserGraphCompiler.CompileContext(v112, &v106);

LABEL_60:
      v110 = 0;
      v108 = 0u;
      v109 = 0u;
LABEL_61:

      goto LABEL_62;
    }

    outlined init with copy of UserGraphCompiler.CompileContext(v112, &v106);

    v72 = specialized __RawDictionaryStorage.find<A>(_:)(&v130);
    if ((v73 & 1) == 0)
    {
      goto LABEL_60;
    }

    (*(*v70 + 272))(&v108, *(*(v71 + 56) + 8 * v72));
    if (!v90)
    {
      v90 = 0;
      goto LABEL_61;
    }

    v110 = 0;
    v108 = 0u;
    v109 = 0u;

    v90 = 0;
LABEL_62:
    outlined destroy of UserGraphCompiler.CompileContext(v112);
    if (!*(&v109 + 1))
    {
      result = outlined destroy of [Input](&v108, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
      v74 = *(*a4 + 48);
      if (__OFADD__(v74, 1))
      {
        goto LABEL_73;
      }

      *(*a4 + 48) = v74 + 1;
      v75 = type metadata accessor for MetalPassthroughNode();
      v76 = swift_allocObject();
      v77 = MEMORY[0x277D84F90];
      *(v76 + 24) = v54;
      *(v76 + 32) = v77;
      *(v76 + 40) = 0;
      *(v76 + 16) = v74;

      v78 = specialized MetalShaderProgram.add<A>(_:)(v76);

      v80 = (*(*v78 + 112))(v79);
      v81 = *(a2 + 23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = *(a2 + 23);
      *(a2 + 23) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, &v130, isUniquelyReferenced_nonNull_native);
      v83 = *(a2 + 23);
      *(a2 + 23) = v106;

      v115 = v130;
      v116 = v131;
      v117 = v132;
      *v118 = v133;
      *&v118[32] = v75;
      *&v118[40] = &protocol witness table for MetalPassthroughNode;

      outlined destroy of UserGraph(&v119);

      *&v118[8] = v78;

      v55 = v105;
      goto LABEL_48;
    }

    outlined destroy of UserGraph(&v119);

    outlined init with take of MetalFunctionNode(&v108, v111);
    v115 = v130;
    v116 = v131;
    v117 = v132;
    *v118 = v133;
    outlined init with take of MetalFunctionNode(v111, &v118[8]);
LABEL_47:
    v55 = v105;
LABEL_48:
    v129 = v4;
    v57 = *(v4 + 16);
    v56 = *(v4 + 24);
    if (v57 >= v56 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
      v55 = v105;
      v4 = v129;
    }

    v7 = v55 + 1;
    *(v4 + 16) = v57 + 1;
    v58 = (v4 + 96 * v57);
    v59 = v116;
    v58[2] = v115;
    v58[3] = v59;
    v60 = v117;
    v61 = *v118;
    v62 = *&v118[32];
    v58[6] = *&v118[16];
    v58[7] = v62;
    v58[4] = v60;
    v58[5] = v61;
    if (v7 == v95)
    {
      return v4;
    }
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v10, v25, v26, v119 + 16, v119 + 32);
  if (v28)
  {
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of [Input](uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of MetalFunctionNode(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError()
{
  result = lazy protocol witness table cache variable for type UserGraphError and conformance UserGraphError;
  if (!lazy protocol witness table cache variable for type UserGraphError and conformance UserGraphError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraphError and conformance UserGraphError);
  }

  return result;
}

uint64_t outlined destroy of [Input](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType()
{
  result = lazy protocol witness table cache variable for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType;
  if (!lazy protocol witness table cache variable for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodePersonality and conformance NodePersonality()
{
  result = lazy protocol witness table cache variable for type NodePersonality and conformance NodePersonality;
  if (!lazy protocol witness table cache variable for type NodePersonality and conformance NodePersonality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodePersonality and conformance NodePersonality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodePersonalityType and conformance NodePersonalityType()
{
  result = lazy protocol witness table cache variable for type NodePersonalityType and conformance NodePersonalityType;
  if (!lazy protocol witness table cache variable for type NodePersonalityType and conformance NodePersonalityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodePersonalityType and conformance NodePersonalityType);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph15NodePersonalityO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for NodePersonality(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for NodePersonality(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NodePersonality(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NodePersonality.ShaderType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NodePersonality.ShaderType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NodePersonalityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NodePersonalityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SGDataType and conformance SGDataType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of MetalFunctionNode(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined copy of Output?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of Output?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for SGBlending(uint64_t a1, unint64_t *a2)
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

uint64_t OrderedSet.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[1] = a3;
  v19[2] = a4;
  v6 = type metadata accessor for Mirror.AncestorRepresentation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v19 - v13;
  v19[4] = a1;
  v19[5] = a2;
  v19[3] = a2;
  v15 = *MEMORY[0x277D84BF0];
  v16 = type metadata accessor for Mirror.DisplayStyle();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  type metadata accessor for OrderedSet();
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  (*(v7 + 104))(v10, *MEMORY[0x277D84C38], v6);

  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

Swift::String __swiftcall NestedError.summarized()()
{
  v1 = v0;
  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v2 = v21;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = (v3 + 16);

  outlined copy of NestedError(v1);
  swift_beginAccess();
  do
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      *v4 = v6;
      v7 = v5;
      outlined copy of NestedError(v6);
      outlined consume of NestedError?(v1);
      v1 = v6;
    }

    else
    {
      *v4 = 0xF000000000000007;
      v1 = 0xF000000000000007;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v22 = v2;
    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      v20 = v8;
      v13 = v9;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v8 = v20;
      v2 = v22;
    }

    *(v2 + 16) = v11 + 1;
    v12 = v2 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while ((~v1 & 0xF000000000000007) != 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void NestedError.last()(unint64_t a1)
{
  outlined copy of NestedError(a1);
  specialized Sequence.reversed()(a1);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    __break(1u);
  }
}

void specialized Sequence.reversed()(unint64_t a1)
{
  v1 = a1;
  outlined copy of NestedError(a1);
  swift_beginAccess();
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = (MEMORY[0x277D84F90] + 32);
  v34 = v1;
  do
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = v5;
      outlined copy of NestedError(v6);
      outlined consume of NestedError?(v1);
      v1 = v6;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = v1;
      v1 = 0xF000000000000007;
      if (v2)
      {
LABEL_4:
        v8 = __OFSUB__(v2--, 1);
        if (v8)
        {
          goto LABEL_35;
        }

        goto LABEL_20;
      }
    }

    v9 = v3[3];
    if (((v9 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_36;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    v15 = v14 >> 3;
    v12[2] = v11;
    v12[3] = 2 * (v14 >> 3);
    v16 = (v12 + 4);
    v17 = v3[3] >> 1;
    if (v3[2])
    {
      v18 = v3 + 4;
      if (v12 != v3 || v16 >= v18 + 8 * v17)
      {
        memmove(v12 + 4, v18, 8 * v17);
      }

      v3[2] = 0;
    }

    v4 = (v16 + 8 * v17);
    v19 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

    v3 = v12;
    v8 = __OFSUB__(v19, 1);
    v2 = v19 - 1;
    if (v8)
    {
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
LABEL_40:
      __break(1u);
      return;
    }

LABEL_20:
    *v4++ = v5;
  }

  while ((~v1 & 0xF000000000000007) != 0);
  v20 = v3[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v2);
    v22 = v21 - v2;
    if (v8)
    {
      goto LABEL_40;
    }

    v3[2] = v22;
  }

  outlined consume of NestedError(v34);
  v23 = v3[2];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v25 = v23 + 3;
    v26 = 4;
    do
    {
      if (v26 != v25)
      {
        v27 = v3[2];
        if (v26 - 4 >= v27)
        {
          goto LABEL_37;
        }

        if (v25 - 4 >= v27)
        {
          goto LABEL_38;
        }

        v28 = v3[v26];
        v29 = v3[v25];
        v30 = v28;
        v31 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        v32 = v3[v26];
        v3[v26] = v29;

        if (v25 - 4 >= v3[2])
        {
          goto LABEL_39;
        }

        v33 = v3[v25];
        v3[v25] = v28;
      }

      --v25;
      ++v26;
      --v24;
    }

    while (v24);
  }
}

unint64_t specialized Sequence.reversed()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      v20 = v19;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5(v19, 0);
      specialized Array._copyContents(initializing:)(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = __CocoaSet.count.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x266772030]();
          v11 = MEMORY[0x266772030](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

id NestedError.first()(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v1 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v2 = v1;
  return v1;
}

uint64_t NestedError.debugDescription.getter(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NestedError()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v1 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t NestedError.makeIterator()(unint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NestedError.makeIterator();
  *(v3 + 24) = v2;
  outlined copy of NestedError(a1);
  return v3;
}

void closure #1 in NestedError.makeIterator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = 0;
  v5 = *(a1 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v4 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      swift_beginAccess();
      *(a1 + 16) = v6;
      v7 = v4;
      outlined copy of NestedError(v6);
      outlined consume of NestedError?(v5);
    }

    else
    {
      swift_beginAccess();
      *(a1 + 16) = 0xF000000000000007;
      v4 = v5;
    }
  }

  *a2 = v4;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance NestedError@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMR);
  result = swift_allocObject();
  *(result + 16) = closure #1 in NestedError.makeIterator()partial apply;
  *(result + 24) = v4;
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NestedError()
{
  v1 = *v0;
  specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  v3 = v2;
  outlined consume of NestedError(v1);
  return v3;
}

char *specialized ContiguousArray.reserveCapacity(_:)(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

unint64_t specialized NestedError.init(_:_:)(uint64_t a1, id a2)
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v7;
  }

  else
  {

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return v5 | 0x8000000000000000;
}

uint64_t sub_265D8E548()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(v1);
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void outlined consume of NestedError(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
  }

  else
  {
  }
}

id outlined copy of NestedError(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
  }

  else
  {
    return a1;
  }
}

void outlined consume of NestedError?(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(a1);
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

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for NestedError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for NestedError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_265D8E788()
{
  outlined consume of NestedError(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t RESurfaceShaderMaterial.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RESurfaceShaderMaterial.surfaceShader.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  outlined copy of NodePersonality(v3);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t RESurfaceShaderMaterial.debugHash.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return v1;
}

__n128 RESurfaceShaderMaterial.init(name:surfaceShader:geometryModifier:graph:uniforms:textureAssignments:customUniformsType:debugHash:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *(a4 + 32);
  v12 = *(a4 + 40);
  v13 = *a3;
  v17 = a3[5] & 1;
  *&v16[119] = a5[7];
  *&v16[135] = a5[8];
  *&v16[151] = a5[9];
  *&v16[160] = *(a5 + 153);
  *&v16[55] = a5[3];
  *&v16[71] = a5[4];
  *&v16[87] = a5[5];
  *&v16[103] = a5[6];
  *&v16[7] = *a5;
  *&v16[23] = a5[1];
  *&v16[39] = a5[2];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = *(a3 + 1);
  *(a9 + 40) = *(a3 + 3);
  *(a9 + 56) = v17;
  v14 = *(a4 + 16);
  *(a9 + 64) = *a4;
  *(a9 + 80) = v14;
  *(a9 + 96) = v11;
  *(a9 + 104) = v12;
  *(a9 + 105) = *v16;
  *(a9 + 121) = *&v16[16];
  *(a9 + 137) = *&v16[32];
  *(a9 + 201) = *&v16[96];
  *(a9 + 185) = *&v16[80];
  *(a9 + 169) = *&v16[64];
  *(a9 + 153) = *&v16[48];
  result = *&v16[128];
  *(a9 + 265) = *&v16[160];
  *(a9 + 249) = *&v16[144];
  *(a9 + 233) = *&v16[128];
  *(a9 + 217) = *&v16[112];
  *(a9 + 288) = a6;
  *(a9 + 296) = a7;
  *(a9 + 304) = a8;
  *(a9 + 312) = a10;
  *(a9 + 320) = a11;
  return result;
}

void *RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(a1);
  if (!v2)
  {
    return memcpy(a2, __src, 0x148uLL);
  }

  return result;
}

uint64_t $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v30 = a3;
  v31 = a5;
  v8 = type metadata accessor for OSSignpostError();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v29 = static os_signpost_type_t.end.getter();
  v32 = a6;

  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = v13;
    v27 = v12;

    checkForErrorAndConsumeState(state:)();

    v19 = v28;
    if ((*(v28 + 88))(v11, v8) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v19 + 8))(v11, v8);
      v21 = "%{private,mask.hash}s %s";
      v20 = 3;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = v20;
    *(v23 + 1) = v20;
    *(v23 + 2) = 2160;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, a4, &v33);
    *(v23 + 22) = 2080;
    *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v33);
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v17, v29, v25, "surfaceShaderMaterial", v21, v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v24, -1, -1);
    MEMORY[0x266773120](v23, -1, -1);

    return (*(v18 + 8))(v16, v27);
  }

  else
  {

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t UserGraph.surfaceNode()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v33 = v1[8];
  v34[0] = v2;
  *(v34 + 9) = *(v1 + 153);
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v33, &v32);
  v3 = v32;

  v5 = v3[2];
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 9;
    v8 = MEMORY[0x277D84F90];
    v27 = v3[2];
    while (1)
    {
      v29 = v8;
      v9 = &v7[6 * v6];
      v10 = v5 - v6;
      while (1)
      {
        if (v6 >= v3[2])
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 - 5);
        if (v11 >> 61 == 5)
        {
          break;
        }

LABEL_4:
        v9 += 48;
        ++v6;
        if (!--v10)
        {
          v8 = v29;
          goto LABEL_17;
        }
      }

      v12 = *(v9 - 4);
      v13 = *(v9 - 3);
      v35 = *v9;
      v30 = *(v9 - 2);
      v31 = *(v9 - 1);
      v14 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      outlined copy of NodePersonality(v11);
      if (((1 << specialized Surface.init(nodeDefID:)(v14, v15)) & 0x28) != 0)
      {
        break;
      }

      v8 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v29;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1);
        v8 = v32;
      }

      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v8 = v32;
      }

      ++v6;
      v8[2] = v17 + 1;
      v18 = &v8[6 * v17];
      v18[4] = v11;
      v18[5] = v12;
      v18[6] = v13;
      v18[7] = v30;
      v18[8] = v31;
      *(v18 + 72) = v35;
      v7 = v3 + 9;
      v5 = v27;
      if (v10 == 1)
      {
        goto LABEL_17;
      }
    }

    result = outlined consume of NodePersonality(v11);
    goto LABEL_4;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  if (v8[2])
  {
    v19 = v8[4];
    v20 = v8[5];
    v22 = v8[6];
    v21 = v8[7];
    v23 = v8;
    v24 = v8[8];
    v25 = *(v23 + 72);
    outlined copy of NodePersonality(v19);

    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = v22;
    *(a1 + 24) = v21;
    *(a1 + 32) = v24;
    *(a1 + 40) = v25;
  }

  else
  {

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v26 = 3;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t UserGraph.geometryModifierNode()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v37 = v1[8];
  v38[0] = v3;
  *(v38 + 9) = *(v1 + 153);
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v37, &v36);
  v4 = v36;

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 72;
    v9 = MEMORY[0x277D84F90];
    v31 = *(v4 + 16);
    v32 = a1;
    v30 = v4 + 72;
    v34 = v4;
    while (1)
    {
      v33 = v9;
      v10 = (v8 + 48 * v7);
      v11 = v6 - v7;
      while (1)
      {
        if (v7 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 5);
        if (v12 >> 61 == 5)
        {
          break;
        }

LABEL_4:
        v10 += 48;
        ++v7;
        if (!--v11)
        {
          a1 = v32;
          v9 = v33;
          goto LABEL_17;
        }
      }

      v13 = *(v10 - 4);
      v14 = *(v10 - 3);
      v15 = *v10;
      v16 = *(v10 - 2);
      v17 = *(v10 - 1);
      v18 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v35 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      outlined copy of NodePersonality(v12);
      if (specialized Surface.init(nodeDefID:)(v35, v18) != 3)
      {
        break;
      }

      v19 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v33;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
        v19 = v36;
      }

      v20 = v15;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v20 = v15;
        v19 = v36;
      }

      ++v7;
      *(v19 + 16) = v22 + 1;
      v23 = v19 + 48 * v22;
      *(v23 + 32) = v12;
      *(v23 + 40) = v13;
      *(v23 + 48) = v14;
      *(v23 + 56) = v16;
      *(v23 + 64) = v17;
      *(v23 + 72) = v20;
      v6 = v31;
      a1 = v32;
      v4 = v34;
      v9 = v19;
      v8 = v30;
      if (v11 == 1)
      {
        goto LABEL_17;
      }
    }

    result = outlined consume of NodePersonality(v12);
    v4 = v34;
    goto LABEL_4;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_17:

  if (*(v9 + 16))
  {
    v24 = *(v9 + 32);
    v25 = *(v9 + 40);
    v27 = *(v9 + 48);
    v26 = *(v9 + 56);
    v28 = *(v9 + 64);
    v29 = *(v9 + 72);
    outlined copy of NodePersonality(v24);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v27 = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
  }

  *a1 = v24;
  *(a1 + 8) = v25;
  *(a1 + 16) = v27;
  *(a1 + 24) = v26;
  *(a1 + 32) = v28;
  *(a1 + 40) = v29;
  return result;
}

uint64_t UserGraph.replaceRootNodeWithInternal(root:customUniformsType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v4 = *a1;
  if (*a1 >> 61 != 5)
  {
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2D6B0);
    MEMORY[0x266771550](0xD000000000000022, 0x8000000265F2D6F0);
    v80 = *(v3 + 24);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v21);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2D720);
    v23 = 0xE000000000000000;
    v22 = 0;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v25 = 6;
    goto LABEL_27;
  }

  *&v76 = *a1;
  v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = v6 == 0xD000000000000022 && 0x8000000265F2BBE0 == v5;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v8 = v6 == 0xD000000000000021 && 0x8000000265F2BC10 == v5;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 0xD00000000000001FLL || 0x8000000265F2BC40 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 0xD000000000000021 || 0x8000000265F2D740 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v6 == 0xD00000000000002BLL && 0x8000000265F2D770 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD00000000000002FLL && 0x8000000265F2D7A0 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (one-time initialization token for geometry_parameters_private != -1)
        {
          goto LABEL_64;
        }

        goto LABEL_52;
      }

      v61 = one-time initialization token for shared;

      if (v61 != -1)
      {
        swift_once();
      }

      if (!*(static NodeDefStore.shared + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v6, v5), (v62 & 1) == 0))
      {
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v63 = 28;
        *(v63 + 8) = v6;
        *(v63 + 16) = v5;
        return swift_willThrow();
      }

      _StringGuts.grow(_:)(36);

      *(&v78 + 1) = 0x8000000265F2D7D0;
      MEMORY[0x266771550](v6, v5);

      MEMORY[0x266771550](39, 0xE100000000000000);
      v23 = 0x8000000265F2D7D0;
      v22 = 0xD000000000000054;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      v25 = 29;
LABEL_27:
      *v24 = v25;
      *(v24 + 8) = v22;
      *(v24 + 16) = v23;
      return swift_willThrow();
    }
  }

  if (one-time initialization token for surface_parameters_private != -1)
  {
LABEL_56:
    swift_once();
  }

  v68 = 0;
  for (i = &static MetalDataType.re.surface_parameters_private; ; i = &static MetalDataType.re.geometry_parameters_private)
  {
    v10 = *i;

    v11 = *(v3 + 8);
    v145 = v11;
    v12 = *(v11 + 16);
    v77 = v10;
    v72 = v11;
    v74 = v3;
    if (v12)
    {
      *&v78 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = v78;
      v14 = (v11 + 56);
      do
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        *&v78 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);

        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v13 = v78;
        }

        *(v13 + 16) = v19 + 1;
        v20 = (v13 + 24 * v19);
        v20[4] = v16;
        v20[5] = v17;
        v20[6] = v15;
        v14 += 7;
        --v12;
      }

      while (v12);
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_265F1F670;
    *(v27 + 32) = 12324;
    *(v27 + 40) = 0xE200000000000000;
    *(v27 + 48) = v10;
    *&v78 = v27;
    swift_retain_n();
    specialized Array.append<A>(contentsOf:)(v13);
    v28 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_265F1F670;
    if (one-time initialization token for void != -1)
    {
      swift_once();
    }

    v30 = static MetalDataType.void;
    *(v29 + 32) = 7632239;
    *(v29 + 40) = 0xE300000000000000;
    *(v29 + 48) = v30;
    v69 = v30;
    swift_retain_n();
    v31 = v149;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v28, v29, v76, &v83);
    v32 = *(&v83 + 1);
    v33 = *v84;
    v66 = v83;
    v65 = *&v84[16];
    v64 = v84[24];
    swift_setDeallocating();
    v34 = *(v29 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v144 = *(v74 + 16);
    v3 = v144;
    outlined copy of NodePersonality(v76);
    outlined init with copy of [Input](&v145, &v78, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v144, &v78, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v32, v72, v31, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdge(from:to:));
    outlined consume of NodePersonality(v76);
    outlined destroy of [Input](&v145, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v144, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined copy of NodePersonality(v76);
    outlined init with copy of [Input](&v145, &v78, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v144, &v78, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v33, v3, v31, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdges(from:to:));
    outlined consume of NodePersonality(v76);
    outlined destroy of [Input](&v145, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v144, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v35 = *(v74 + 24);
    specialized UserGraph.removeEdges(connectedTo:)(v35);
    v36 = *(v31 + 64);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
      if ((v35 & 0x8000000000000000) != 0)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    if (v35 >= *(v36 + 2))
    {
      goto LABEL_55;
    }

    ShaderGraphNode.update(id:)(-7);
    *(v149 + 64) = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_265F1F670;
    *(v37 + 32) = 28265;
    *(v37 + 40) = 0xE200000000000000;
    *(v37 + 48) = v69;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_265F1F670;
    *(v38 + 32) = 7632239;
    *(v38 + 40) = 0xE300000000000000;
    *(v38 + 48) = v69;
    v39 = swift_allocObject();
    *(v39 + 16) = v68;
    *(v39 + 24) = a2;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v37, v38, v39 | 0x4000000000000000, &v85);
    v76 = v86;
    v70 = v85;
    v73 = v88;
    v75 = v87;
    LODWORD(a2) = v89;

    swift_setDeallocating();
    v40 = *(v38 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    swift_setDeallocating();
    v41 = *(v37 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_265F1F670;
    *(v42 + 32) = 7632239;
    *(v42 + 40) = 0xE300000000000000;
    *(v42 + 48) = v77;
    v43 = swift_allocObject();
    *(v43 + 16) = 12324;
    *(v43 + 24) = 0xE200000000000000;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v42, v43 | 0x6000000000000000, &v90);

    swift_setDeallocating();
    v44 = *(v42 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v143 = *&v91[0];
    specialized ShaderGraphNode.output(labeled:)(&v92, 7632239, 0xE300000000000000, *&v91[0]);
    if (!v93)
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v78 = v90;
      v79[0] = v91[0];
      *(v79 + 9) = *(v91 + 9);
      _print_unlocked<A, B>(_:_:)();
      v51 = v81;
      v52 = v82;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v53 = 14;
      *(v53 + 8) = v51;
      *(v53 + 16) = v52;
      swift_willThrow();

      v142 = v90;
      outlined destroy of NodePersonality(&v142);
      v141 = *(&v90 + 1);
      outlined destroy of [Input](&v141, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v143, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v140 = v85;
      outlined destroy of NodePersonality(&v140);
      v139 = v86;
      outlined destroy of [Input](&v139, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v138 = *(&v86 + 1);
      outlined destroy of [Input](&v138, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v137 = v83;
      outlined destroy of NodePersonality(&v137);
    }

    v115[0] = v92;
    v115[1] = v93;
    v116 = v94;
    v117 = v95;
    v118 = v96;
    v3 = v32;
    specialized ShaderGraphNode.output(labeled:)(&v97, 12324, 0xE200000000000000, v32);
    if (!v98)
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      MEMORY[0x266771550](12324, 0xE200000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v78 = v83;
      v79[0] = *v84;
      *(v79 + 9) = *&v84[9];
      _print_unlocked<A, B>(_:_:)();
      v54 = v81;
      v55 = v82;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v56 = 11;
      *(v56 + 8) = v54;
      *(v56 + 16) = v55;
      swift_willThrow();

      v119 = v116;
      outlined destroy of String(&v119);
      v136 = v90;
      outlined destroy of NodePersonality(&v136);
      v135 = *(&v90 + 1);
      outlined destroy of [Input](&v135, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v143, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v134 = v85;
      outlined destroy of NodePersonality(&v134);
      v133 = v86;
      outlined destroy of [Input](&v133, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v132 = *(&v86 + 1);
      outlined destroy of [Input](&v132, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v131 = v83;
      v57 = &v131;
      goto LABEL_43;
    }

    v111[0] = v97;
    v111[1] = v98;
    v112 = v99;
    v113 = v100;
    v114 = v101;
    UserGraph.connect(_:to:)(v115, v111);

    v121 = v112;
    outlined destroy of String(&v121);

    v120 = v116;
    outlined destroy of String(&v120);
    specialized ShaderGraphNode.output(labeled:)(&v102, 7632239, 0xE300000000000000, v33);
    if (!v103)
    {
      break;
    }

    v107[0] = v102;
    v107[1] = v103;
    v108 = v104;
    v109 = v105;
    v110 = v106;
    if (*(v76 + 16))
    {
      v45 = *(v76 + 40);
      v46 = *(v76 + 48);
      v47 = *(v76 + 56);
      v48 = *(v76 + 64);
      v49 = *(v76 + 72);
      v50 = *(v76 + 80);
      v146[0] = *(v76 + 32);
      v146[1] = v45;
      v146[2] = v46;
      v146[3] = v47;
      v146[4] = v48;
      v147 = v49;
      v148 = v50;

      UserGraph.connect(_:to:)(v107, v146);

      v122 = v108;
      outlined destroy of String(&v122);
      v124 = v90;
      outlined destroy of NodePersonality(&v124);
      v123 = *(&v90 + 1);
      outlined destroy of [Input](&v123, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      result = outlined destroy of [Input](&v143, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *a3 = v66;
      *(a3 + 8) = v32;
      *(a3 + 16) = v33;
      *(a3 + 32) = v65;
      *(a3 + 40) = v64;
      *(a3 + 48) = v70;
      *(a3 + 56) = v76;
      *(a3 + 72) = v75;
      *(a3 + 80) = v73;
      *(a3 + 88) = a2;
      return result;
    }

    __break(1u);
LABEL_64:
    swift_once();
LABEL_52:
    v68 = 1;
  }

  v81 = 0;
  v82 = 0xE000000000000000;
  MEMORY[0x266771550](7632239, 0xE300000000000000);
  MEMORY[0x266771550](32, 0xE100000000000000);
  v78 = v83;
  v79[0] = *v84;
  *(v79 + 9) = *&v84[9];
  _print_unlocked<A, B>(_:_:)();
  v58 = v81;
  v59 = v82;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v60 = 14;
  *(v60 + 8) = v58;
  *(v60 + 16) = v59;
  swift_willThrow();

  v130 = v90;
  outlined destroy of NodePersonality(&v130);
  v129 = *(&v90 + 1);
  outlined destroy of [Input](&v129, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v143, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v128 = v85;
  outlined destroy of NodePersonality(&v128);
  v127 = v86;
  outlined destroy of [Input](&v127, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v126 = *(&v86 + 1);
  outlined destroy of [Input](&v126, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v125 = v83;
  v57 = &v125;
LABEL_43:
  outlined destroy of NodePersonality(v57);
}

void *closure #2 in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(void *result)
{
  if (!(*result >> 61))
  {
    v1 = result[3];
    v2 = *(*result + 88);
    type metadata accessor for MaterialXDataType();
    result = swift_dynamicCastClass();
    if (result)
    {
      if (result[3])
      {
        v11[0] = 0;
        v11[1] = 0xE000000000000000;
        swift_retain_n();
        _StringGuts.grow(_:)(35);
        MEMORY[0x266771550](0xD000000000000011, 0x8000000265F2DA00);
        v11[3] = v1;
        v3 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v3);

        MEMORY[0x266771550](1701080942, 0xE400000000000000);

        MEMORY[0x266771550](0x6574614D20736920, 0xEE0020586C616972);
        _print_unlocked<A, B>(_:_:)();
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, logger);

        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v11[0] = v8;
          *v7 = 136315138;
          v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v11);

          *(v7 + 4) = v9;
          _os_log_impl(&dword_265D7D000, v5, v6, "%s", v7, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v8);
          MEMORY[0x266773120](v8, -1, -1);
          MEMORY[0x266773120](v7, -1, -1);
        }

        else
        {
        }

        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v10 = 44;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

void *RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  specialized Dictionary<>.init(_:)(a2);
  result = specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(a1);
  if (!v3)
  {
    return memcpy(a3, v7, 0x148uLL);
  }

  return result;
}

Swift::Bool __swiftcall RESurfaceShaderMaterial.surfaceShaderUsesCustomUniformType()()
{
  v1 = v0[16];
  v9[10] = v0[15];
  v10[0] = v1;
  *(v10 + 9) = *(v0 + 265);
  v2 = v0[12];
  v9[6] = v0[11];
  v9[7] = v2;
  v3 = v0[14];
  v9[8] = v0[13];
  v9[9] = v3;
  v4 = v0[8];
  v9[2] = v0[7];
  v9[3] = v4;
  v5 = v0[10];
  v9[4] = v0[9];
  v9[5] = v5;
  v6 = v0[2];
  v8 = v0[1];
  v9[0] = v6;
  *(v9 + 9) = *(v0 + 41);
  return UserGraph.uniqueArgumentCount(for:)(&v8) > 1;
}

uint64_t UserGraph.uniqueArgumentCount(for:)(uint64_t *a1)
{
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v15);
  v1 = v15;

  v3 = 0;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 48 * v3 + 32;
  while (1)
  {
    if (v4 == v3)
    {

      v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v5);

      v14 = *(v13 + 16);

      return v14;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(v1 + v6);
    v6 += 48;
    if (v7 >> 61 == 3)
    {
      v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall RESurfaceShaderMaterial.geometryModifierUsesCustomUniformType()()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v17[0] = v4;
  v17[1] = v1;
  v17[2] = v3;
  v18 = *(v0 + 88);
  v19 = v2 & 1;
  v15 = *(v0 + 240);
  *v16 = *(v0 + 256);
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  v14 = *(v0 + 224);
  v7 = *(v0 + 112);
  v8 = *(v0 + 128);
  v9 = *(v0 + 144);
  v10 = *(v0 + 160);
  *&v16[9] = *(v0 + 265);
  outlined copy of NodePersonality(v4);

  v5 = UserGraph.uniqueArgumentCount(for:)(v17);
  outlined consume of NodePersonality(v4);

  return v5 > 1;
}

unint64_t UserGraph.firstSurfaceOfType(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v38 = v2[8];
  v39[0] = v4;
  *(v39 + 9) = *(v2 + 153);
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v38, &v37);
  v5 = v37;

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 53;
    if (a1)
    {
      v9 = 54;
    }

    v35 = v9;
    v10 = v5 + 72;
    v34 = MEMORY[0x277D84F90];
    v32 = *(v5 + 16);
    while (1)
    {
      v11 = (v10 + 48 * v8);
      v12 = v7 - v8;
      while (1)
      {
        if (v8 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v14 = *(v11 - 5);
        if (v14 >> 61 == 5)
        {
          break;
        }

LABEL_9:
        v11 += 48;
        ++v8;
        if (!--v12)
        {
          goto LABEL_24;
        }
      }

      v15 = *(v11 - 4);
      v16 = *(v11 - 3);
      v36 = *(v11 - 1);
      v17 = *v11;
      v18 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      outlined copy of NodePersonality(v14);
      v20 = specialized Surface.init(nodeDefID:)(v18, v19);
      if (v20 <= 2)
      {
        goto LABEL_6;
      }

      if (v20 != 3)
      {
        break;
      }

      v13 = 54;
LABEL_7:
      if (v13 != v35)
      {
        goto LABEL_8;
      }

      v21 = v34;
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v34;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1);
        v21 = v37;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v24 = v23 + 1;
        v21 = v37;
      }

      ++v8;
      *(v21 + 16) = v24;
      v34 = v21;
      v25 = v21 + 48 * v23;
      *(v25 + 32) = v14;
      *(v25 + 40) = v15;
      *(v25 + 48) = v16;
      *(v25 + 56) = v36;
      *(v25 + 72) = v17;
      v10 = v5 + 72;
      v7 = v32;
      if (v12 == 1)
      {
        goto LABEL_24;
      }
    }

    if (v20 != 4)
    {
LABEL_8:

      result = outlined consume of NodePersonality(v14);
      goto LABEL_9;
    }

LABEL_6:
    v13 = 53;
    goto LABEL_7;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_24:

  if (*(v34 + 16))
  {
    v26 = *(v34 + 32);
    v27 = *(v34 + 40);
    v29 = *(v34 + 48);
    v28 = *(v34 + 56);
    v30 = *(v34 + 64);
    v31 = *(v34 + 72);
    outlined copy of NodePersonality(v26);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0;
    v31 = 0;
  }

  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29;
  *(a2 + 24) = v28;
  *(a2 + 32) = v30;
  *(a2 + 40) = v31;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.replaceInvalidImageNodes()()
{
  v2 = *(*(v0 + 64) + 16);

  v16 = v3;
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    while (v4 < v2)
    {
      v7 = v5 + 48 * v4;
      v8 = *(v7 + 24);
      if (v8 == -7)
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_15;
        }

        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *v7;
        v12 = *(v7 + 40);
        v13 = *(v7 + 32);
        v14[0] = v11;
        v14[1] = v9;
        v14[2] = v10;
        v14[3] = v8;
        v14[4] = v13;
        v15 = v12;
        outlined copy of NodePersonality(v11);

        closure #1 in UserGraph.replaceInvalidImageNodes()(v14, v0);
        outlined consume of NodePersonality(v11);
        if (v1)
        {

          goto LABEL_12;
        }
      }

      if (v4 >= v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void closure #1 in UserGraph.replaceInvalidImageNodes()(uint64_t a1, _OWORD *a2)
{
  v137 = *a1;
  if (*a1 >> 61 != 5)
  {
    return;
  }

  v2 = &v161;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v135 = *(a1 + 24);
  v131 = *(a1 + 32);
  v133 = *(a1 + 40);
  v6 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v7._object = 0x8000000265F2D870;
  v7._countAndFlagsBits = 0xD000000000000013;
  v8 = String.hasPrefix(_:)(v7);

  v263 = v4;
  if (!v8)
  {
    v129 = v3;
    v22 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v23._countAndFlagsBits = 0x6567616D695F444ELL;
    v23._object = 0xE800000000000000;
    v24 = String.hasPrefix(_:)(v23);

    if (!v24)
    {
      v26 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v27._countAndFlagsBits = 0xD000000000000017;
      v27._object = 0x8000000265F2D850;
      v28 = String.hasPrefix(_:)(v27);

      if (!v28)
      {
        v30 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v137 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

        v31._countAndFlagsBits = 0xD000000000000014;
        v31._object = 0x8000000265F2D830;
        v32 = String.hasPrefix(_:)(v31);

        if (!v32)
        {
          return;
        }
      }
    }

    v141 = *(v4 + 16);
    if (!v141)
    {
      return;
    }

    v9 = 0;
    for (i = (v4 + 80); ; i += 7)
    {
      if (v9 >= *(v4 + 16))
      {
        __break(1u);
LABEL_71:
        v142 = 0;
        v143 = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v149 = v9;
        v150 = v4;
        v151 = v3;
        v152 = v128;
        v153 = v126;
        v154 = v127;
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v114 = 14;
        *(v114 + 8) = 0;
        *(v114 + 16) = 0xE000000000000000;
        swift_willThrow();

        outlined destroy of String(&v245);

        *(v2 + 71) = *(i + 1);
        outlined destroy of String(v239);
        outlined destroy of [Input](v160, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

        outlined consume of NodePersonality(v9);

        outlined destroy of Edge(v144);

        *(v2 + 67) = v203;
        outlined destroy of String(v235);
        return;
      }

      v34 = *(i - 5);
      *v138 = *(i - 6);
      v3 = *(i - 4);
      v35 = *(i - 3);
      v36 = *(i - 2);
      v37 = *(i - 8);
      v2 = *i;
      v38 = one-time initialization token for filename;

      if (v38 != -1)
      {
        swift_once();
      }

      if ((*(*v34 + 128))(static MaterialXDataType.filename))
      {
        break;
      }

      ++v9;

      v4 = v263;
      if (v141 == v9)
      {
        return;
      }
    }

    v258[2] = v3;
    v258[3] = v35;
    v258[4] = v36;
    v259 = v37;
    v260 = v2;
    v258[1] = v34;
    v258[0] = *v138;
    v39 = a2[8];
    v40 = a2[9];
    v41 = a2[6];
    v261[7] = a2[7];
    v261[8] = v39;
    v262[0] = v40;
    *(v262 + 9) = *(a2 + 153);
    v42 = a2[5];
    v261[4] = a2[4];
    v261[5] = v42;
    v261[6] = v41;
    v43 = a2[1];
    v261[0] = *a2;
    v261[1] = v43;
    v44 = a2[3];
    v261[2] = a2[2];
    v261[3] = v44;
    outlined init with copy of UserGraph(v261, &v149);
    UserGraph.node(connectedTo:)(v258, &v176);
    outlined destroy of UserGraph(v261);
    v45 = v177;
    if (!v177)
    {

LABEL_79:

      return;
    }

    v46 = v178;
    v214 = v176;
    if (v176 >> 61 || *(v176 + 80) != 6)
    {

      outlined destroy of NodePersonality(&v214);
      v215 = v45;
      outlined destroy of [Input](&v215, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v216 = v46;
      outlined destroy of [Input](&v216, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      return;
    }

    v48 = *(v176 + 64);
    v47 = *(v176 + 72);
    v49 = *(v176 + 48);
    v50 = *(v176 + 56);
    v51 = *(v176 + 40);
    *v139 = *(v176 + 32);
    v53 = *(v176 + 16);
    v52 = *(v176 + 24);
    outlined copy of SGDataTypeStorage(v53, v52, v139[0], v51, v49, v50, v48, v47, 6);
    outlined destroy of NodePersonality(&v214);
    v217 = v45;
    outlined destroy of [Input](&v217, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v218 = v46;
    outlined destroy of [Input](&v218, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined consume of SGDataTypeStorage(v53, v52, v139[0], v51, v49, v50, v48, v47, 6);
    v54 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v54 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {
      v55 = v263;
      specialized ShaderGraphNode.output(labeled:)(&v179, 0x746C7561666564, 0xE700000000000000, v263);
      if (v180)
      {
        v210[0] = v179;
        v210[1] = v180;
        v211 = v181;
        v212 = v182;
        v213 = v183;
        v56 = a2[8];
        v57 = a2[9];
        v58 = a2[6];
        v256[7] = a2[7];
        v256[8] = v56;
        v257[0] = v57;
        *(v257 + 9) = *(a2 + 153);
        v59 = a2[5];
        v256[4] = a2[4];
        v256[5] = v59;
        v256[6] = v58;
        v60 = a2[1];
        v256[0] = *a2;
        v256[1] = v60;
        v61 = a2[3];
        v256[2] = a2[2];
        v256[3] = v61;
        outlined init with copy of UserGraph(v256, &v149);
        UserGraph.edge(to:)(v210, &v184);
        outlined destroy of UserGraph(v256);
        if (v185)
        {
          v222[0] = v184;
          v222[1] = v185;
          v223 = v186;
          v224 = v187;
          v225 = v188;
          v226 = v186;

          outlined init with copy of String(&v226, &v149);
          outlined destroy of [Input](&v184, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
          specialized ShaderGraphNode.output(labeled:)(&v189, 7632239, 0xE300000000000000, v129);
          if (!v190)
          {
            *&v144[0] = 0;
            *(&v144[0] + 1) = 0xE000000000000000;
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v149 = v137;
            v150 = v55;
            v151 = v129;
            v152 = v135;
            v153 = v131;
            v154 = v133;
            _print_unlocked<A, B>(_:_:)();
            v122 = v144[0];
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v123 = 14;
            *(v123 + 8) = v122;
            swift_willThrow();

            outlined destroy of String(&v226);

            v220 = v211;
            outlined destroy of String(&v220);

            return;
          }

          v206[0] = v189;
          v206[1] = v190;
          v207 = v191;
          v208 = v192;
          v209 = v193;
          UserGraph.moveEdges(from:to:)(v206, v222);

          v227 = v207;
          outlined destroy of String(&v227);
          specialized UserGraph.prune(_:)(v55, v129, v135);

          outlined destroy of String(&v226);

          v221 = v211;
          outlined destroy of String(&v221);
          goto LABEL_78;
        }

        v219 = v211;
        outlined destroy of String(&v219);
      }

      else
      {
        *&v144[0] = 0;
        *(&v144[0] + 1) = 0xE000000000000000;
        MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v149 = v137;
        v150 = v55;
        v151 = v129;
        v152 = v135;
        v153 = v131;
        v154 = v133;
        _print_unlocked<A, B>(_:_:)();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      __swift_project_value_buffer(v115, logger);
      outlined copy of NodePersonality(v137);

      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      outlined consume of NodePersonality(v137);

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        *&v144[0] = v119;
        *v118 = 136315138;
        v149 = 1701080942;
        v150 = 0xE400000000000000;
        v142 = v135;
        v120 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v120);

        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, v144);

        *(v118 + 4) = v121;
        _os_log_impl(&dword_265D7D000, v116, v117, "Could not replace image node '%s' with an invalid asset name by its default value because its default input is not connected to anything.", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        MEMORY[0x266773120](v119, -1, -1);
        MEMORY[0x266773120](v118, -1, -1);
      }
    }

LABEL_78:

    goto LABEL_79;
  }

  specialized ShaderGraphNode.output(labeled:)(&v155, 7632239, 0xE300000000000000, v3);
  v9 = v3;
  if (!v156)
  {
    goto LABEL_30;
  }

  v202[0] = v155;
  v202[1] = v156;
  v203 = v157;
  v204 = v158;
  v205 = v159;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[6];
  v254[7] = a2[7];
  v254[8] = v10;
  v255[0] = v11;
  *(v255 + 9) = *(a2 + 153);
  v13 = a2[5];
  v254[4] = a2[4];
  v254[5] = v13;
  v254[6] = v12;
  v14 = a2[1];
  v254[0] = *a2;
  v254[1] = v14;
  v15 = a2[3];
  v254[2] = a2[2];
  v254[3] = v15;
  outlined init with copy of UserGraph(v254, &v149);
  v16 = UserGraph.edges(from:)(v202);
  outlined destroy of UserGraph(v254);
  if (!*(v16 + 16))
  {

    v228 = v203;
    v20 = &v228;
    goto LABEL_29;
  }

  v17 = *(v16 + 96);
  v145 = *(v16 + 80);
  v146 = v17;
  v18 = *(v16 + 128);
  v147 = *(v16 + 112);
  v148 = v18;
  v19 = *(v16 + 48);
  v144[0] = *(v16 + 32);
  v144[1] = v19;
  v144[2] = *(v16 + 64);
  outlined init with copy of Edge(v144, &v149);

  if (*(&v145 + 1) == -7)
  {
    outlined destroy of Edge(v144);

    v229 = v203;
    v20 = &v229;
LABEL_29:
    outlined destroy of String(v20);
LABEL_30:
    if (one-time initialization token for logger == -1)
    {
LABEL_31:
      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, logger);
      outlined copy of NodePersonality(v137);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      outlined consume of NodePersonality(v137);

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v144[0] = v66;
        *v65 = 136315138;
        v149 = 1701080942;
        v150 = 0xE400000000000000;
        v142 = v135;
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v67);

        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, v144);

        *(v65 + 4) = v68;
        _os_log_impl(&dword_265D7D000, v63, v64, "Unable to find sample node connected to %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x266773120](v66, -1, -1);
        MEMORY[0x266773120](v65, -1, -1);
      }

      return;
    }

LABEL_82:
    swift_once();
    goto LABEL_31;
  }

  if ((*(&v145 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  v130 = v3;
  v69 = *(a2 + 8);
  if (*(&v145 + 1) >= *(v69 + 16))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
LABEL_65:
    v107 = type metadata accessor for Logger();
    __swift_project_value_buffer(v107, logger);
    outlined copy of NodePersonality(v9);

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    outlined consume of NodePersonality(v9);

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 136315138;
      v149 = 1701080942;
      v150 = 0xE400000000000000;
      v142 = v111;
      v112 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v112);

      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v142);

      *(v110 + 4) = v113;
      _os_log_impl(&dword_265D7D000, v108, v109, "Could not replace image node '%s' with an invalid asset name by its default value because its default input is not connected to anything.", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x266773120](v111, -1, -1);
      MEMORY[0x266773120](v110, -1, -1);

      v236 = v203;
      outlined destroy of String(&v236);
      outlined consume of NodePersonality(v9);

      outlined destroy of [Input](v160, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

      outlined destroy of Edge(v144);
    }

    else
    {

      v237 = v203;
      outlined destroy of String(&v237);
      outlined destroy of [Input](v160, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

      outlined destroy of Edge(v144);
      outlined consume of NodePersonality(v9);

LABEL_68:
    }

    return;
  }

  v70 = v69 + 48 * *(&v145 + 1);
  v71 = *(v70 + 40);
  v72 = *(v70 + 48);
  v128 = *(v70 + 56);
  v126 = *(v70 + 64);
  v127 = *(v70 + 72);
  v73 = *(v4 + 16);
  v134 = *(v70 + 32);
  outlined copy of NodePersonality(v134);
  v137 = v71;

  v132 = v72;

  *v140 = v73;
  if (!v73)
  {
LABEL_44:
    outlined consume of NodePersonality(v134);

    outlined destroy of Edge(v144);

    v230 = v203;
    v84 = &v230;
    goto LABEL_45;
  }

  v74 = 0;
  v75 = (v4 + 80);
  while (1)
  {
    if (v74 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v77 = *(v75 - 6);
    v76 = *(v75 - 5);
    v79 = *(v75 - 4);
    v78 = *(v75 - 3);
    v80 = *(v75 - 2);
    v81 = *(v75 - 8);
    v82 = *v75;
    v83 = one-time initialization token for filename;

    if (v83 != -1)
    {
      swift_once();
    }

    if ((*(*v76 + 128))(static MaterialXDataType.filename))
    {
      break;
    }

    ++v74;

    v75 += 7;
    v4 = v263;
    if (*v140 == v74)
    {
      goto LABEL_44;
    }
  }

  v249[2] = v79;
  v249[3] = v78;
  v249[4] = v80;
  v250 = v81;
  v251 = v82;
  v249[1] = v76;
  v249[0] = v77;
  v85 = a2[8];
  v86 = a2[9];
  v87 = a2[6];
  v252[7] = a2[7];
  v252[8] = v85;
  v253[0] = v86;
  *(v253 + 9) = *(a2 + 153);
  v88 = a2[5];
  v252[4] = a2[4];
  v252[5] = v88;
  v252[6] = v87;
  v89 = a2[1];
  v252[0] = *a2;
  v252[1] = v89;
  v90 = a2[3];
  v252[2] = a2[2];
  v252[3] = v90;
  outlined init with copy of UserGraph(v252, &v149);
  UserGraph.node(connectedTo:)(v249, v160);
  v91 = v160[0];
  v92 = v160[1];
  outlined destroy of UserGraph(v252);
  v2 = &v161;
  v4 = v137;
  if (!v92)
  {
    goto LABEL_55;
  }

  if (v91 >> 61)
  {
    outlined copy of NodePersonality(v91);

    v106 = &v231;
LABEL_62:

    *v106 = v203;
    outlined destroy of String(v106);

    outlined destroy of Edge(v144);
    outlined destroy of [Input](v160, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    outlined consume of NodePersonality(v134);

    outlined consume of NodePersonality(v91);

    goto LABEL_68;
  }

  if (*(v91 + 80) != 6)
  {
    outlined init with copy of [Input](v160, &v149, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    v106 = &v232;
    goto LABEL_62;
  }

  v124 = *(v91 + 72);
  *v125 = *(v91 + 64);
  v93 = *(v91 + 48);
  v94 = *(v91 + 56);
  v96 = *(v91 + 32);
  v95 = *(v91 + 40);
  v98 = *(v91 + 16);
  v97 = *(v91 + 24);
  outlined init with copy of [Input](v160, &v149, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
  outlined copy of SGDataTypeStorage(v98, v97, v96, v95, v93, v94, v125[0], v124, 6);
  outlined consume of NodePersonality(v91);

  v99 = v94;
  v4 = v137;
  outlined consume of SGDataTypeStorage(v98, v97, v96, v95, v93, v99, v125[0], v124, 6);
  v100 = HIBYTE(v97) & 0xF;
  v2 = &v161;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v100 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v100)
  {
    outlined destroy of [Input](v160, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

    outlined consume of NodePersonality(v134);

    outlined destroy of Edge(v144);

    v233 = v203;
    v84 = &v233;
    goto LABEL_45;
  }

LABEL_55:
  specialized ShaderGraphNode.output(labeled:)(&v161, 0x746C7561666564, 0xE700000000000000, v4);
  v9 = v134;
  if (!v162)
  {
    v142 = 0;
    v143 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v149 = v134;
    v150 = v4;
    v151 = v132;
    v152 = v128;
    v153 = v126;
    v154 = v127;
    _print_unlocked<A, B>(_:_:)();

    goto LABEL_64;
  }

  v198[0] = v161;
  v198[1] = v162;
  i = v198;
  v199 = v163;
  v200 = v164;
  v201 = v165;
  v101 = a2[6];
  v247[7] = a2[7];
  v102 = a2[9];
  v247[8] = a2[8];
  v248[0] = v102;
  *(v248 + 9) = *(a2 + 153);
  v103 = a2[5];
  v247[4] = a2[4];
  v247[5] = v103;
  v247[6] = v101;
  v104 = a2[1];
  v247[0] = *a2;
  v247[1] = v104;
  v105 = a2[3];
  v247[2] = a2[2];
  v247[3] = v105;
  outlined init with copy of UserGraph(v247, &v149);
  UserGraph.edge(to:)(v198, &v166);
  outlined destroy of UserGraph(v247);
  if (!v167)
  {

    v238 = v199;
    outlined destroy of String(&v238);
LABEL_64:
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_65;
    }

    goto LABEL_85;
  }

  v241[0] = v166;
  v241[1] = v167;
  v242 = v168;
  v243 = v169;
  v244 = v170;
  v245 = v168;

  outlined init with copy of String(&v245, &v149);
  outlined destroy of [Input](&v166, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
  v3 = v132;
  specialized ShaderGraphNode.output(labeled:)(&v171, 7632239, 0xE300000000000000, v132);
  if (!v172)
  {
    goto LABEL_71;
  }

  v194[0] = v171;
  v194[1] = v172;
  v195 = v173;
  v196 = v174;
  v197 = v175;
  UserGraph.moveEdges(from:to:)(v194, v241);
  specialized UserGraph.prune(_:)(v263, v130, v135);

  v246 = v195;
  outlined destroy of String(&v246);

  outlined destroy of String(&v245);

  v240 = v199;
  outlined destroy of String(&v240);
  outlined destroy of [Input](v160, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

  outlined consume of NodePersonality(v134);

  outlined destroy of Edge(v144);

  v234 = v203;
  v84 = &v234;
LABEL_45:
  outlined destroy of String(v84);
}

uint64_t UserGraphCompiler.compiledShaderProgram(for:)(uint64_t a1)
{
  type metadata accessor for MetalShaderProgram();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v3[2] = MEMORY[0x277D84F90];
  v3[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v4);
  v3[4] = v4;
  v3[5] = v4;
  v3[6] = 1;
  v5 = (*(*v1 + 120))(a1, v3);

  return v5;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v19;
    v4 = (a1 + 64);
    do
    {
      v10 = *(v4 - 4);
      v11 = *(v4 - 3);
      v12 = *(v4 - 2);
      v13 = *(v4 - 1);
      v14 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS_11ShaderGraph13MetalDataTypeCttMd, &_sSS_SS_11ShaderGraph13MetalDataTypeCttMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typettMd, &_sSS_SS19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typettMR);
      swift_dynamicCast();
      v5 = v18;
      v7 = *(v19 + 16);
      v6 = *(v19 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v18;
      }

      *(v19 + 16) = v7 + 1;
      v8 = v19 + 40 * v7;
      *(v8 + 32) = v15;
      *(v8 + 40) = v16;
      *(v8 + 48) = v17;
      *(v8 + 56) = v5;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7NodeDefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 176);
  v42 = *(a1 + 160);
  v43 = v4;
  v44 = *(a1 + 192);
  v5 = *(a1 + 112);
  v38 = *(a1 + 96);
  v39 = v5;
  v6 = *(a1 + 144);
  v40 = *(a1 + 128);
  v41 = v6;
  v7 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v7;
  v8 = *(a1 + 80);
  v36 = *(a1 + 64);
  v37 = v8;
  v10 = *(&v34 + 1);
  v9 = v34;
  outlined init with copy of [Input](&v34, v33, &_sSS_11ShaderGraph7NodeDefVtMd, &_sSS_11ShaderGraph7NodeDefVtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 200);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 152 * result;
    v16 = v36;
    *v15 = v35;
    *(v15 + 16) = v16;
    v17 = v37;
    v18 = v38;
    v19 = v40;
    *(v15 + 64) = v39;
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    *(v15 + 144) = v44;
    *(v15 + 112) = v21;
    *(v15 + 128) = v22;
    *(v15 + 96) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v26 = (v13 + 168);
    v27 = v13[9];
    v42 = v13[8];
    v43 = v27;
    v44 = *(v13 + 20);
    v28 = v13[5];
    v38 = v13[4];
    v39 = v28;
    v29 = v13[7];
    v40 = v13[6];
    v41 = v29;
    v30 = v13[1];
    v34 = *v13;
    v35 = v30;
    v31 = v13[3];
    v36 = v13[2];
    v37 = v31;
    v10 = *(&v34 + 1);
    v9 = v34;
    outlined init with copy of [Input](&v34, v33, &_sSS_11ShaderGraph7NodeDefVtMd, &_sSS_11ShaderGraph7NodeDefVtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    v13 = v26;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph11GeomPropDefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27[0] = v5;
  *(v27 + 9) = *(a1 + 89);
  v7 = *(&v24 + 1);
  v6 = v24;
  outlined init with copy of [Input](&v24, v23, &_sSS_11ShaderGraph11GeomPropDefVtMd, &_sSS_11ShaderGraph11GeomPropDefVtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 41) = *(v27 + 9);
    v12[1] = v14;
    v12[2] = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27[0] = v21;
    *(v27 + 9) = *(v10 + 57);
    v7 = *(&v24 + 1);
    v6 = v24;
    outlined init with copy of [Input](&v24, v23, &_sSS_11ShaderGraph11GeomPropDefVtMd, &_sSS_11ShaderGraph11GeomPropDefVtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph9InputSpecVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph0cD4NodeV2IDVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_G_AC0cdE0V2IDVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 3)
    {
      v5 = *(i - 8);
      v15 = *(i - 24);
      v16 = v5;
      v6 = *(i + 2);
      v17 = *(i + 1);
      v18 = *i;
      v19 = v5;
      outlined init with copy of SGDataTypeGraph.PersonalityKind(&v19, v14);
      outlined init with copy of String(&v18, v14);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v3[6] + 40 * result;
      v10 = v16;
      *v9 = v15;
      *(v9 + 16) = v10;
      *(v9 + 32) = v17;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [Input](v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *specialized Sequence.forEach(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  return specialized Sequence.forEach(_:)(a1, a2, a3, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdge(from:to:));
}

{
  return specialized Sequence.forEach(_:)(a1, a2, a3, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdges(from:to:));
}

void *specialized Sequence.forEach(_:)(void *result, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr), void (*a5)(void *, void *))
{
  v27 = a5;
  v5 = result[2];
  if (v5)
  {
    v7 = result + 10;
    do
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v13 = *(v7 - 5);
      v12 = *(v7 - 4);
      v24[0] = *(v7 - 6);
      v24[1] = v13;
      v24[2] = v12;
      v24[3] = v11;
      v24[4] = v10;
      v25 = v9;
      v26 = v8;
      result = a4(&v14);
      if (v15)
      {
        v19[0] = v14;
        v19[1] = v15;
        v20 = v16;
        v21 = v17;
        v22 = v18;

        v27(v19, v24);

        v23 = v20;
        outlined destroy of String(&v23);
      }

      v7 += 7;
      --v5;
    }

    while (v5);
  }

  return result;
}

unint64_t specialized UserGraph.transformMaterialXImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(result + 16);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 32;
  v198 = result + 32;
  v199 = *(result + 16);
  while (1)
  {
    v8 = v7 + 48 * v6;
    v9 = *v8;
    if (*v8 >> 61 != 5)
    {
      goto LABEL_5;
    }

    v201 = v6;
    v11 = *(v8 + 8);
    v10 = *(v8 + 16);
    v12 = *(v8 + 24);
    v13 = *(v8 + 32);
    v14 = *(v8 + 40);
    v15 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    outlined copy of NodePersonality(v9);

    v17._countAndFlagsBits = 0x6567616D695F444ELL;
    v17._object = 0xE800000000000000;
    LOBYTE(v15) = String.hasPrefix(_:)(v17);

    if (v15)
    {
      break;
    }

    outlined consume of NodePersonality(v9);

LABEL_4:
    v7 = v198;
    v5 = v199;
    v6 = v201;
LABEL_5:
    if (++v6 == v5)
    {
      return result;
    }
  }

  specialized ShaderGraphNode.output(labeled:)(&v217, 7632239, 0xE300000000000000, v10);
  v18 = v218;
  if (!v218)
  {
    v207 = 0;
    v208 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v209 = v9;
    *(&v209 + 1) = v11;
    *v210 = v10;
    *&v210[8] = v12;
    *&v210[16] = v13;
    v210[24] = v14;
    _print_unlocked<A, B>(_:_:)();
    v135 = v207;
    v136 = v208;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v138 = 14;
LABEL_159:
    *v137 = v138;
    *(v137 + 8) = v135;
    *(v137 + 16) = v136;
    swift_willThrow();
LABEL_161:
    outlined consume of NodePersonality(v9);
LABEL_168:
  }

  v371 = v219;
  v19 = outlined destroy of String(&v371);
  v20 = (*(*v18 + 144))(v19);

  if (!v20)
  {
    v207 = 0;
    v208 = 0xE000000000000000;
    *&v209 = v9;
    *(&v209 + 1) = v11;
    *v210 = v10;
    *&v210[8] = v12;
    *&v210[16] = v13;
    v210[24] = v14;
    _print_unlocked<A, B>(_:_:)();
    v135 = v207;
    v136 = v208;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v138 = 8;
    goto LABEL_159;
  }

  specialized ShaderGraphNode.metalTextureType.getter(v9);

  UserGraph.insertImageNode(metalTextureType:resultType:)(v21, v20, &v220);

  specialized ShaderGraphNode.output(labeled:)(&v222, 7632239, 0xE300000000000000, v10);
  if (!v223)
  {
    v207 = 0;
    v208 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v209 = v9;
    *(&v209 + 1) = v11;
    *v210 = v10;
    *&v210[8] = v12;
    *&v210[16] = v13;
    v210[24] = v14;
    _print_unlocked<A, B>(_:_:)();
    v139 = v207;
    v140 = v208;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v141 = 14;
    *(v141 + 8) = v139;
    *(v141 + 16) = v140;
    swift_willThrow();
    v445 = v220;
    outlined destroy of NodePersonality(&v445);
    v444 = *(&v220 + 1);
    outlined destroy of [Input](&v444, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v443 = *&v221[0];
    outlined destroy of [Input](&v443, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    goto LABEL_161;
  }

  v367[0] = v222;
  v367[1] = v223;
  v368 = v224;
  v369 = v225;
  v370 = v226;
  v442 = *&v221[0];
  specialized ShaderGraphNode.output(labeled:)(&v227, 7632239, 0xE300000000000000, *&v221[0]);
  if (!v228)
  {
    v207 = 0;
    v208 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v209 = v220;
    *v210 = v221[0];
    *&v210[9] = *(v221 + 9);
    _print_unlocked<A, B>(_:_:)();
    v142 = v207;
    v143 = v208;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v144 = 14;
    *(v144 + 8) = v142;
    *(v144 + 16) = v143;
    swift_willThrow();

    v372 = v368;
    outlined destroy of String(&v372);
    v441 = v220;
    outlined destroy of NodePersonality(&v441);
    v440 = *(&v220 + 1);
    outlined destroy of [Input](&v440, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    goto LABEL_166;
  }

  v363[0] = v227;
  v363[1] = v228;
  v364 = v229;
  v365 = v230;
  v366 = v231;
  UserGraph.moveEdges(from:to:)(v367, v363);

  v374 = v364;
  outlined destroy of String(&v374);

  v373 = v368;
  outlined destroy of String(&v373);
  *&v209 = 0;
  *(&v209 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  *&v209 = 0xD000000000000018;
  *(&v209 + 1) = 0x8000000265F2D8E0;
  v207 = 1701080942;
  v208 = 0xE400000000000000;
  v216 = v12;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v22);

  MEMORY[0x266771550](v207, v208);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v232);

  v439 = *&v233[0];
  specialized ShaderGraphNode.output(labeled:)(&v234, 7632239, 0xE300000000000000, *&v233[0]);
  if (!v235)
  {
    v207 = 0;
    v208 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v209 = v232;
    *v210 = v233[0];
    *&v210[9] = *(v233 + 9);
    _print_unlocked<A, B>(_:_:)();
    v145 = v207;
    v146 = v208;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v147 = 14;
    *(v147 + 8) = v145;
    *(v147 + 16) = v146;
    swift_willThrow();
    v438 = v232;
    outlined destroy of NodePersonality(&v438);
    v437 = *(&v232 + 1);
    outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v436 = v220;
    outlined destroy of NodePersonality(&v436);
    v435 = *(&v220 + 1);
    v148 = &v435;
LABEL_165:
    outlined destroy of [Input](v148, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
LABEL_166:
    outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_167:

    outlined consume of NodePersonality(v9);
    goto LABEL_168;
  }

  v359[0] = v234;
  v359[1] = v235;
  v360 = v236;
  v361 = v237;
  v362 = v238;
  v434 = *(&v220 + 1);
  v206 = *(&v220 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v239, 115, 0xE100000000000000, *(&v220 + 1));
  if (!v240)
  {
    v207 = 0;
    v208 = 0xE000000000000000;
    MEMORY[0x266771550](115, 0xE100000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v209 = v220;
    *v210 = v221[0];
    *&v210[9] = *(v221 + 9);
    _print_unlocked<A, B>(_:_:)();
    v149 = v207;
    v150 = v208;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v151 = 11;
    *(v151 + 8) = v149;
    *(v151 + 16) = v150;
    swift_willThrow();

    v375 = v360;
    outlined destroy of String(&v375);
    v433 = v232;
    outlined destroy of NodePersonality(&v433);
    v432 = *(&v232 + 1);
    outlined destroy of [Input](&v432, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v431 = v220;
    outlined destroy of NodePersonality(&v431);
    v148 = &v434;
    goto LABEL_165;
  }

  v355[0] = v239;
  v355[1] = v240;
  v356 = v241;
  v357 = v242;
  v358 = v243;
  UserGraph.connect(_:to:)(v359, v355);

  v377 = v356;
  outlined destroy of String(&v377);

  v376 = v360;
  outlined destroy of String(&v376);
  v204 = *(v11 + 16);
  if (!v204)
  {
    v402 = v220;

    outlined destroy of NodePersonality(&v402);
    outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v401 = v232;
    outlined destroy of NodePersonality(&v401);
    v400 = *(&v232 + 1);
    v127 = &v400;
LABEL_151:
    outlined destroy of [Input](v127, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined consume of NodePersonality(v9);

    result = swift_bridgeObjectRelease_n();
    goto LABEL_4;
  }

  v205 = v11 + 32;

  v23 = 0;
  v193 = v11;
  v194 = v9;
  while (1)
  {
    if (v23 >= *(v11 + 16))
    {
      __break(1u);
LABEL_172:

      v207 = 0;
      v208 = 0xE000000000000000;
      MEMORY[0x266771550](0x7365726464615F73, 0xE900000000000073);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v209 = v232;
      *v210 = v233[0];
      *&v210[9] = *(v233 + 9);
      _print_unlocked<A, B>(_:_:)();
      v155 = v207;
      v156 = v208;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v157 = 11;
      *(v157 + 8) = v155;
      *(v157 + 16) = v156;
      swift_willThrow();
      v419 = v220;
      outlined destroy of NodePersonality(&v419);
      outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v418 = v232;
      outlined destroy of NodePersonality(&v418);
      v134 = &v420;
      goto LABEL_155;
    }

    v24 = v205 + 56 * v23;
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    v30 = *(v24 + 40);
    v31 = *(v24 + 48);
    *&v446 = v26;
    *(&v446 + 1) = v25;
    *&v447 = v27;
    *(&v447 + 1) = v28;
    *&v448 = v29;
    BYTE8(v448) = v30;
    v449 = v31;
    v32 = v27 == 1701603686 && v28 == 0xE400000000000000;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v244, 1701603686, 0xE400000000000000, v206);
      if (!v245)
      {

        v207 = 0;
        v208 = 0xE000000000000000;
        MEMORY[0x266771550](1701603686, 0xE400000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v209 = v220;
        *v210 = v221[0];
        *&v210[9] = *(v221 + 9);
        _print_unlocked<A, B>(_:_:)();
        v128 = v207;
        v129 = v208;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v130 = 11;
        *(v130 + 8) = v128;
        *(v130 + 16) = v129;
        swift_willThrow();
        v411 = v220;
        outlined destroy of NodePersonality(&v411);
        outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v410 = v232;
        outlined destroy of NodePersonality(&v410);
        v409 = *(&v232 + 1);
        outlined destroy of [Input](&v409, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        goto LABEL_156;
      }

      v317[0] = v244;
      v317[1] = v245;
      v318 = v246;
      v319 = v247;
      v320 = v248;

      UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(&v446, v317, a2, a3);
      if (v4)
      {
        outlined consume of NodePersonality(v9);

        v408 = v220;
        outlined destroy of NodePersonality(&v408);
        outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v407 = v232;
        outlined destroy of NodePersonality(&v407);
        v406 = *(&v232 + 1);
        outlined destroy of [Input](&v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v399 = v318;
        outlined destroy of String(&v399);
      }

      v398 = v318;
      v33 = &v398;
LABEL_25:
      outlined destroy of String(v33);
LABEL_66:

      goto LABEL_67;
    }

    v34 = v27 == 0x746C7561666564 && v28 == 0xE700000000000000;
    v200 = v28;
    if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v249, 0x56746C7561666564, 0xEA00000000006C61, v206);
      if (!v250)
      {

        v207 = 0;
        v208 = 0xE000000000000000;
        MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v209 = v220;
        *v210 = v221[0];
        *&v210[9] = *(v221 + 9);
        _print_unlocked<A, B>(_:_:)();
        v131 = v207;
        v132 = v208;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v133 = 11;
        *(v133 + 8) = v131;
        *(v133 + 16) = v132;
        swift_willThrow();
        v414 = v220;
        outlined destroy of NodePersonality(&v414);
        outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v413 = v232;
        outlined destroy of NodePersonality(&v413);
        v412 = *(&v232 + 1);
        v134 = &v412;
        goto LABEL_155;
      }

      v35 = v249;
      v327[0] = v249;
      v327[1] = v250;
      v328 = v251;
      v329 = v252;
      v330 = v253;
      specialized OrderedDictionary.subscript.getter(v26, *v463, v463[1], v463[2], &v254);
      v36 = v255;
      if (v255)
      {
        v191 = v26;
        v195 = v4;
        v37 = v258;
        v38 = v257;
        v39 = v256;
        v40 = v254;

        specialized OrderedDictionary.subscript.getter(&v446, v39, v38, v37, &v259);
        v11 = v193;
        v9 = v194;
        v4 = v195;
        outlined consume of UserGraph.Adjacent?(v40, v36);
        v41 = v260;
        if (v260 > 1)
        {
          v42 = v261;
          v43 = v262;
          v44 = v263;
          v45 = v265;
          v184 = v259;
          v321[0] = v259;
          v321[1] = v260;
          v322 = v261;
          v323 = v262;
          v324 = v263;
          *v325 = *v264;
          *&v325[3] = *&v264[3];
          v326 = v265;
          v46 = specialized OrderedDictionary.subscript.modify(&v209, v35);
          if (*(v47 + 8))
          {
            v393 = v251;
            v397 = v322;
            v452[0] = v184;
            v452[1] = v41;
            v453 = v42;
            v454 = v43;
            v455 = v44 & 1;
            v456 = v45;
            v48 = v46;

            outlined init with copy of String(&v393, &v207);

            outlined init with copy of String(&v397, &v207);
            specialized OrderedDictionary.subscript.setter(v452, v327);
            v48(&v209, 0);
          }

          else
          {
            v46(&v209, 0);
          }

          v51 = specialized OrderedDictionary.subscript.modify(&v209, v191);
          v11 = v193;
          v9 = v194;
          v4 = v195;
          if (*(v52 + 8))
          {
            *v450 = xmmword_265F1F680;
            memset(&v450[2], 0, 32);
            v451 = 0;

            specialized OrderedDictionary.subscript.setter(v450, &v446);
          }

          v51(&v209, 0);
          v53 = v321[0];
          v54 = specialized OrderedDictionary.subscript.modify(&v209, v321[0]);
          if (*(v55 + 8))
          {
            v56 = specialized OrderedDictionary.subscript.modify(&v207, v321);
            if (*(v57 + 8))
            {
              specialized OrderedSet.remove(_:)(&v446, v266);
              outlined destroy of [Input](v266, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
            }

            v56(&v207, 0);
          }

          v54(&v209, 0);
          v58 = specialized OrderedDictionary.subscript.modify(&v209, v53);
          if (*(v59 + 8))
          {
            v60 = specialized OrderedDictionary.subscript.modify(&v207, v321);
            if (*(v61 + 8))
            {
              specialized OrderedSet._append(_:)(v327);
              v60(&v207, 0);
              v58(&v209, 0);

              v396 = v322;
              v62 = &v396;
            }

            else
            {
              v60(&v207, 0);
              v58(&v209, 0);

              v395 = v322;
              v62 = &v395;
            }
          }

          else
          {
            v58(&v209, 0);

            v394 = v322;
            v62 = &v394;
          }

          outlined destroy of String(v62);
        }
      }

      else
      {
      }

      v392 = v328;
      outlined destroy of String(&v392);
      goto LABEL_66;
    }

    v49 = v27 == 0x64726F6F63786574 && v28 == 0xE800000000000000;
    if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v267, 0x64726F6F63786574, 0xE800000000000000, v206);
      if (!v268)
      {

        v207 = 0;
        v208 = 0xE000000000000000;
        MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v209 = v220;
        *v210 = v221[0];
        *&v210[9] = *(v221 + 9);
        _print_unlocked<A, B>(_:_:)();
        v152 = v207;
        v153 = v208;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v154 = 11;
        *(v154 + 8) = v152;
        *(v154 + 16) = v153;
        swift_willThrow();
        v417 = v220;
        outlined destroy of NodePersonality(&v417);
        outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v416 = v232;
        outlined destroy of NodePersonality(&v416);
        v415 = *(&v232 + 1);
        v134 = &v415;
        goto LABEL_155;
      }

      v331[0] = v267;
      v331[1] = v268;
      v332 = v269;
      v333 = v270;
      v334 = v271;

      UserGraph.moveEdge(from:to:)(&v446, v331);

      v391 = v332;
      v50 = &v391;
      goto LABEL_44;
    }

    v63 = v27 == 0x7373657264646175 && v28 == 0xEC00000065646F6DLL;
    if (!v63 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v420 = *(&v232 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v272, 0x7365726464615F73, 0xE900000000000073, *(&v232 + 1));
    if (!v273)
    {
      goto LABEL_172;
    }

    v335[0] = v272;
    v335[1] = v273;
    v336 = v274;
    v337 = v275;
    v338 = v276;

    UserGraph.moveEdge(from:to:)(&v446, v335);

    v390 = v336;
    v50 = &v390;
LABEL_44:
    outlined destroy of String(v50);

LABEL_67:
    if (++v23 == v204)
    {
      v405 = v220;
      outlined destroy of NodePersonality(&v405);
      outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v404 = v232;
      outlined destroy of NodePersonality(&v404);
      v403 = *(&v232 + 1);
      v127 = &v403;
      goto LABEL_151;
    }
  }

  if (v27 == 0x7373657264646176 && v28 == 0xEC00000065646F6DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v423 = *(&v232 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v277, 0x7365726464615F74, 0xE900000000000073, *(&v232 + 1));
    if (!v278)
    {

      v207 = 0;
      v208 = 0xE000000000000000;
      MEMORY[0x266771550](0x7365726464615F74, 0xE900000000000073);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v209 = v232;
      *v210 = v233[0];
      *&v210[9] = *(v233 + 9);
      _print_unlocked<A, B>(_:_:)();
      v158 = v207;
      v159 = v208;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v160 = 11;
      *(v160 + 8) = v158;
      *(v160 + 16) = v159;
      swift_willThrow();
      v422 = v220;
      outlined destroy of NodePersonality(&v422);
      outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v421 = v232;
      outlined destroy of NodePersonality(&v421);
      v134 = &v423;
      goto LABEL_155;
    }

    v339[0] = v277;
    v339[1] = v278;
    v340 = v279;
    v341 = v280;
    v342 = v281;

    UserGraph.moveEdge(from:to:)(&v446, v339);

    v389 = v340;
    v50 = &v389;
    goto LABEL_44;
  }

  if ((v27 != 0x79747265746C6966 || v28 != 0xEA00000000006570) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if ((v27 != 0x726579616CLL || v28 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v27 != 0x6E6172656D617266 || v28 != 0xEA00000000006567) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v27 != 0x66666F656D617266 || v28 != 0xEB00000000746573))
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v27 == 0x646E65656D617266 && v28 == 0xEE006E6F69746361 || (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v9 = v194;
      }

      else
      {
        v121 = one-time initialization token for logger;

        if (v121 != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        __swift_project_value_buffer(v122, logger);

        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *&v209 = v126;
          *v125 = 136315138;
          *(v125 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v200, &v209);
          _os_log_impl(&dword_265D7D000, v123, v124, "Ignoring unexpected image node input '%s'", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v126);
          MEMORY[0x266773120](v126, -1, -1);
          MEMORY[0x266773120](v125, -1, -1);
        }

        else
        {
        }

        v9 = v194;
      }
    }

    goto LABEL_67;
  }

  v430 = *(&v232 + 1);
  v192 = *(&v232 + 1);
  specialized ShaderGraphNode.output(labeled:)(v282, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v232 + 1));
  if (!*(&v282[0] + 1))
  {

    v207 = 0;
    v208 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v209 = v232;
    *v210 = v233[0];
    *&v210[9] = *(v233 + 9);
    _print_unlocked<A, B>(_:_:)();
    v161 = v207;
    v162 = v208;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v163 = 11;
    *(v163 + 8) = v161;
    *(v163 + 16) = v162;
    swift_willThrow();
    v429 = v220;
    outlined destroy of NodePersonality(&v429);
    outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v428 = v232;
    v164 = &v428;
    goto LABEL_177;
  }

  result = *&v282[0];
  v351 = v282[0];
  v352 = v282[1];
  v353 = v282[2];
  v354 = v283;
  v64 = v463[1];
  v65 = v463[2];
  v66 = v64 + 32;
  v67 = *(v64 + 16);
  v188 = *v463;
  if (!*v463)
  {
    if (!v67)
    {
      goto LABEL_89;
    }

    v69 = 0;
    while (*(v66 + 8 * v69) != *&v282[0])
    {
      if (v67 == ++v69)
      {
        goto LABEL_89;
      }
    }

LABEL_81:
    v182 = v64;
    if (v69 >= *(v65 + 16))
    {
      goto LABEL_179;
    }

    v181 = v65;
    v70 = (v65 + 48 * v69);
    v72 = v70[7];
    v71 = v70[8];
    v73 = v70[9];
    v185 = *(v71 + 16);
    v196 = v4;
    if (v72)
    {

      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v351, v71 + 32, v185, v72 + 16, v72 + 32);
      v74 = v73;
      if ((v75 & 1) == 0)
      {
LABEL_105:
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        if (result >= *(v74 + 16))
        {
          goto LABEL_182;
        }

        v77 = (v74 + 56 * result);
        v78 = v77[5];
        v178 = v77[8];
        v180 = v77[4];
        v174 = v77[7];
        v176 = v77[6];
        v172 = v77[9];
        v186 = v77[10];
        outlined copy of Output?(v180, v78);

        if (v78)
        {

          outlined consume of Output?(v180, v78);
          LOBYTE(v207) = v172 & 1;
          v212 = v351;
          v213 = v352;
          v214 = v353;
          v215 = v354;
          *&v209 = v180;
          *(&v209 + 1) = v78;
          *v210 = v176;
          *&v210[8] = v174;
          *&v210[16] = v178;
          v210[24] = v172 & 1;
          v211 = v186;
          outlined destroy of Edge(&v209);
          goto LABEL_114;
        }

        goto LABEL_109;
      }
    }

    else
    {

      result = specialized Collection<>.firstIndex(of:)(&v351, v71 + 32, v185);
      v74 = v73;
      if ((v76 & 1) == 0)
      {
        goto LABEL_105;
      }
    }

LABEL_109:
    v65 = v181;
    v64 = v182;
    goto LABEL_110;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v282[0], v66, v67, *v463 + 16, *v463 + 32);
  if (v68)
  {
LABEL_89:
    v196 = v4;

LABEL_110:
    specialized OrderedDictionary.subscript.getter(v26, v188, v64, v65, &v304);
    v79 = v305;
    if (!v305)
    {
      goto LABEL_112;
    }

    v80 = v309;
    v81 = v308;
    v82 = v307;
    v83 = v306;
    v382 = v304;

    outlined destroy of [Input](&v382, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v381 = v79;
    outlined destroy of [Input](&v381, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v380 = v83;
    outlined destroy of [Input](&v380, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

    specialized OrderedDictionary.subscript.getter(&v446, v82, v81, v80, &v310);

    v84 = v311;
    if (v311 >= 2)
    {
      v189 = v316;
      v85 = v315;
      v86 = v314;
      v87 = v313;
      v88 = v312;
      v89 = v310;

      outlined destroy of [Input](&v310, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      LOBYTE(v207) = v85 & 1;
      v212 = v446;
      v213 = v447;
      v214 = v448;
      v215 = v449;
      *&v209 = v89;
      *(&v209 + 1) = v84;
      *v210 = v88;
      *&v210[8] = v87;
      *&v210[16] = v86;
      v210[24] = v85 & 1;
      v211 = v189;
      v460[0] = v89;
      v460[1] = v84;
      v9 = v194;
      v460[2] = v88;
      v460[3] = v87;
      v460[4] = v86;
      v461 = v85 & 1;
      v462 = v189;

      outlined destroy of Edge(&v209);
      UserGraph.connect(_:to:)(v460, &v351);

      v378 = v352;
      outlined destroy of String(&v378);
    }

    else
    {
LABEL_112:

      v379 = v352;
      outlined destroy of String(&v379);
    }

LABEL_114:
    specialized ShaderGraphNode.output(labeled:)(v284, 0x746C69665F70696DLL, 0xEA00000000007265, v192);
    if (!*(&v284[0] + 1))
    {

      v207 = 0;
      v208 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v209 = v232;
      *v210 = v233[0];
      *&v210[9] = *(v233 + 9);
      _print_unlocked<A, B>(_:_:)();
      v165 = v207;
      v166 = v208;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v167 = 11;
      *(v167 + 8) = v165;
      *(v167 + 16) = v166;
      swift_willThrow();
      v427 = v220;
      outlined destroy of NodePersonality(&v427);
      outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v426 = v232;
      outlined destroy of NodePersonality(&v426);
      outlined destroy of [Input](&v430, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      goto LABEL_156;
    }

    result = *&v284[0];
    v347 = v284[0];
    v348 = v284[1];
    v349 = v284[2];
    v350 = v285;
    v90 = *v463;
    v91 = v463[1];
    v92 = v463[2];
    v93 = v91 + 32;
    v94 = *(v91 + 16);
    if (*v463)
    {
      v95 = v463[2];
      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v284[0], v93, v94, v90 + 16, v90 + 32);
      if (v96)
      {
        v92 = v95;
LABEL_138:
        specialized OrderedDictionary.subscript.getter(v26, v90, v91, v92, &v291);
        v109 = v292;
        if (!v292)
        {
          goto LABEL_140;
        }

        v110 = v296;
        v111 = v295;
        v112 = v294;
        v113 = v293;
        v387 = v291;

        outlined destroy of [Input](&v387, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
        v386 = v109;
        outlined destroy of [Input](&v386, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
        v385 = v113;
        outlined destroy of [Input](&v385, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

        specialized OrderedDictionary.subscript.getter(&v446, v112, v111, v110, &v297);

        v114 = v298;
        if (v298 >= 2)
        {
          v115 = v303;
          v116 = v302;
          v117 = v301;
          v118 = v300;
          v119 = v299;
          v120 = v297;

          outlined destroy of [Input](&v297, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
          LOBYTE(v207) = v116 & 1;
          v212 = v446;
          v213 = v447;
          v214 = v448;
          v215 = v449;
          *&v209 = v120;
          *(&v209 + 1) = v114;
          *v210 = v119;
          *&v210[8] = v118;
          *&v210[16] = v117;
          v210[24] = v116 & 1;
          v211 = v115;
          v457[0] = v120;
          v457[1] = v114;
          v457[2] = v119;
          v457[3] = v118;
          v9 = v194;
          v457[4] = v117;
          v458 = v116 & 1;
          v459 = v115;

          outlined destroy of Edge(&v209);
          UserGraph.connect(_:to:)(v457, &v347);

          v383 = v348;
          outlined destroy of String(&v383);

          v4 = v196;
        }

        else
        {
LABEL_140:

          v384 = v348;
          outlined destroy of String(&v384);
          v4 = v196;
        }

        goto LABEL_142;
      }

      v97 = result;
      v190 = v91;
      v4 = v196;
      v92 = v95;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_180;
      }
    }

    else
    {
      if (!v94)
      {
        goto LABEL_138;
      }

      v97 = 0;
      while (*(v93 + 8 * v97) != *&v284[0])
      {
        if (v94 == ++v97)
        {
          goto LABEL_138;
        }
      }

      v190 = v463[1];
      v4 = v196;
    }

    v187 = v90;
    if (v97 >= *(v92 + 16))
    {
      goto LABEL_181;
    }

    v183 = v92;
    v98 = (v92 + 48 * v97);
    v100 = v98[7];
    v99 = v98[8];
    v101 = v98[9];
    v102 = *(v99 + 16);
    if (v100)
    {
      v103 = v98[8];

      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v347, v99 + 32, v102, v100 + 16, v100 + 32);
      if ((v104 & 1) == 0)
      {
        v197 = v101;
LABEL_132:
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_184;
        }

        if (result >= *(v197 + 16))
        {
          goto LABEL_185;
        }

        v106 = (v197 + 56 * result);
        v107 = v106[5];
        v108 = v106[9];
        v177 = v106[10];
        v179 = v106[4];
        v171 = v106[7];
        v173 = v106[6];
        v175 = v106[8];
        outlined copy of Output?(v179, v107);

        if (v107)
        {

          outlined consume of Output?(v179, v107);
          v212 = v347;
          LOBYTE(v207) = v108 & 1;
          v213 = v348;
          v214 = v349;
          v215 = v350;
          *&v209 = v179;
          *(&v209 + 1) = v107;
          *v210 = v173;
          *&v210[8] = v171;
          *&v210[16] = v175;
          v210[24] = v108 & 1;
          v211 = v177;
          outlined destroy of Edge(&v209);
LABEL_142:
          specialized ShaderGraphNode.output(labeled:)(&v286, 0x746C69665F6E696DLL, 0xEA00000000007265, v192);
          if (!v287)
          {

            v207 = 0;
            v208 = 0xE000000000000000;
            MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v209 = v232;
            *v210 = v233[0];
            *&v210[9] = *(v233 + 9);
            _print_unlocked<A, B>(_:_:)();
            v168 = v207;
            v169 = v208;
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v170 = 11;
            *(v170 + 8) = v168;
            *(v170 + 16) = v169;
            swift_willThrow();
            v425 = v220;
            outlined destroy of NodePersonality(&v425);
            outlined destroy of [Input](&v434, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            v424 = v232;
            v164 = &v424;
LABEL_177:
            outlined destroy of NodePersonality(v164);
            v134 = &v430;
LABEL_155:
            outlined destroy of [Input](v134, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v439, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_156:

            goto LABEL_167;
          }

          v343[0] = v286;
          v343[1] = v287;
          v344 = v288;
          v345 = v289;
          v346 = v290;
          UserGraph.moveEdge(from:to:)(&v446, v343);

          v388 = v344;
          v33 = &v388;
          goto LABEL_25;
        }

        v196 = v4;
        v92 = v183;
        goto LABEL_137;
      }
    }

    else
    {

      v197 = v101;

      result = specialized Collection<>.firstIndex(of:)(&v347, v99 + 32, v102);
      if ((v105 & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    v196 = v4;

    v92 = v183;
LABEL_137:
    v91 = v190;
    v90 = v187;
    goto LABEL_138;
  }

  v69 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_81;
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

unint64_t specialized UserGraph.transformMaterialXCubeimageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 72); ; i += 48)
  {
    result = *(i - 5);
    if (result >> 61 != 5)
    {
      goto LABEL_4;
    }

    v5 = *(i - 4);
    v6 = *(i - 3);
    v47 = *(i - 2);
    v44 = *(i - 1);
    v45 = *i;
    v7 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v273 = *(i - 5);
    outlined copy of NodePersonality(result);

    v9._object = 0x8000000265F2D850;
    v9._countAndFlagsBits = 0xD000000000000017;
    LOBYTE(v7) = String.hasPrefix(_:)(v9);

    if (v7)
    {
      break;
    }

LABEL_3:
    outlined consume of NodePersonality(v273);

LABEL_4:
    if (!--v3)
    {
      return result;
    }
  }

  specialized ShaderGraphNode.output(labeled:)(&v49, 7632239, 0xE300000000000000, v6);
  v10 = v50;
  if (!v50)
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v17 = v273;
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v18 = 14;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();
    v19 = v17;
    goto LABEL_46;
  }

  v182 = v51;
  v11 = outlined destroy of String(&v182);
  v12 = (*(*v10 + 144))(v11);

  if (!v12)
  {
    _StringGuts.grow(_:)(40);

    *&v48 = 0xD000000000000025;
    *(&v48 + 1) = 0x8000000265F2D890;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v20);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    MEMORY[0x266771550](39, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v21 = 2;
    *(v21 + 8) = v48;
    swift_willThrow();
LABEL_43:
    v19 = v273;
    goto LABEL_46;
  }

  v43 = v6;
  _StringGuts.grow(_:)(31);

  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v13);

  MEMORY[0x266771550](1701080942, 0xE400000000000000);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v52);

  specialized ShaderGraphNode.output(labeled:)(&v54, 0x79747265746C6966, 0xEA00000000006570, v5);
  if (!v55)
  {
    MEMORY[0x266771550](0x79747265746C6966, 0xEA00000000006570);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v22 = v273;
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v23 = 11;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();
    v272[0] = v52;
    outlined destroy of NodePersonality(v272);
    v271 = *(&v52 + 1);
    outlined destroy of [Input](&v271, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v270 = v53;
    outlined destroy of [Input](&v270, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v19 = v22;
    goto LABEL_46;
  }

  v178[0] = v54;
  v178[1] = v55;
  v179 = v56;
  v180 = v57;
  v181 = v58;
  v14 = *(&v52 + 1);
  v269 = *(&v52 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v59, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v52 + 1));
  if (!v60)
  {
    MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v24 = 11;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    swift_willThrow();

    v197 = v179;
    outlined destroy of String(&v197);
    v268 = v52;
    outlined destroy of NodePersonality(&v268);
    outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v267 = v53;
    v25 = &v267;
    goto LABEL_42;
  }

  v174[0] = v59;
  v174[1] = v60;
  v175 = v61;
  v176 = v62;
  v177 = v63;
  UserGraph.copyEdge(originalDestination:newDestination:)(v178, v174);

  v198 = v175;
  outlined destroy of String(&v198);
  specialized ShaderGraphNode.output(labeled:)(&v64, 0x746C69665F70696DLL, 0xEA00000000007265, v14);
  if (!v65)
  {
    MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v26 = 11;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();

    v196 = v179;
    outlined destroy of String(&v196);
    v266 = v52;
    outlined destroy of NodePersonality(&v266);
    outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v265 = v53;
    v25 = &v265;
    goto LABEL_42;
  }

  v170[0] = v64;
  v170[1] = v65;
  v171 = v66;
  v172 = v67;
  v173 = v68;
  UserGraph.copyEdge(originalDestination:newDestination:)(v178, v170);

  v199 = v171;
  outlined destroy of String(&v199);
  specialized ShaderGraphNode.output(labeled:)(&v69, 0x746C69665F6E696DLL, 0xEA00000000007265, v14);
  if (!v70)
  {
    MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v27 = 11;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();

    v195 = v179;
    outlined destroy of String(&v195);
    v264 = v52;
    outlined destroy of NodePersonality(&v264);
    outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v263 = v53;
    v25 = &v263;
    goto LABEL_42;
  }

  v166[0] = v69;
  v166[1] = v70;
  v167 = v71;
  v168 = v72;
  v169 = v73;
  UserGraph.moveEdge(from:to:)(v178, v166);

  v200 = v167;
  outlined destroy of String(&v200);
  specialized ShaderGraphNode.metalTextureType.getter(v273);

  UserGraph.insertCubeimageNode(metalTextureType:resultType:)(v15, v12, &v74);

  specialized ShaderGraphNode.output(labeled:)(&v76, 1701603686, 0xE400000000000000, v5);
  if (v77)
  {
    v162[0] = v76;
    v162[1] = v77;
    v163 = v78;
    v164 = v79;
    v165 = v80;
    v16 = *(&v74 + 1);
    v257 = *(&v74 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v81, 1701603686, 0xE400000000000000, *(&v74 + 1));
    if (!v82)
    {
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v31 = 11;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0xE000000000000000;
      swift_willThrow();

      v203 = v163;
      outlined destroy of String(&v203);
      v256 = v74;
      outlined destroy of NodePersonality(&v256);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v255 = v75;
      outlined destroy of [Input](&v255, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v193 = v179;
      outlined destroy of String(&v193);
      v254 = v52;
      outlined destroy of NodePersonality(&v254);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v253 = v53;
      v25 = &v253;
      goto LABEL_42;
    }

    v158[0] = v81;
    v158[1] = v82;
    v159 = v83;
    v160 = v84;
    v161 = v85;
    UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(v162, v158, a2, a3);
    if (v46)
    {

      v204 = v159;
      outlined destroy of String(&v204);

      v201 = v163;
      outlined destroy of String(&v201);
      v252 = v74;
      outlined destroy of NodePersonality(&v252);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v251 = v75;
      outlined destroy of [Input](&v251, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v192 = v179;
      outlined destroy of String(&v192);
      v250 = v52;
      outlined destroy of NodePersonality(&v250);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v249 = v53;
      outlined destroy of [Input](&v249, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      goto LABEL_43;
    }

    v205 = v159;
    outlined destroy of String(&v205);

    v202 = v163;
    outlined destroy of String(&v202);
    specialized ShaderGraphNode.output(labeled:)(&v86, 0x746C7561666564, 0xE700000000000000, v5);
    if (!v87)
    {
      MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v28 = v273;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v32 = 11;
      *(v32 + 8) = 0;
      *(v32 + 16) = 0xE000000000000000;
      swift_willThrow();
      v248 = v74;
      outlined destroy of NodePersonality(&v248);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v247 = v75;
      outlined destroy of [Input](&v247, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v191 = v179;
      outlined destroy of String(&v191);
      v246 = v52;
      outlined destroy of NodePersonality(&v246);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v245 = v53;
      v30 = &v245;
      goto LABEL_45;
    }

    v154[0] = v86;
    v154[1] = v87;
    v155 = v88;
    v156 = v89;
    v157 = v90;
    specialized ShaderGraphNode.output(labeled:)(&v91, 0x56746C7561666564, 0xEA00000000006C61, v16);
    if (!v92)
    {
      MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v33 = 11;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0xE000000000000000;
      swift_willThrow();

      v206 = v155;
      outlined destroy of String(&v206);
      v244 = v74;
      outlined destroy of NodePersonality(&v244);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v243 = v75;
      outlined destroy of [Input](&v243, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v190 = v179;
      outlined destroy of String(&v190);
      v242 = v52;
      outlined destroy of NodePersonality(&v242);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v241 = v53;
      v25 = &v241;
LABEL_42:
      outlined destroy of [Input](v25, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      goto LABEL_43;
    }

    v150[0] = v91;
    v150[1] = v92;
    v151 = v93;
    v152 = v94;
    v153 = v95;
    UserGraph.moveEdge(from:to:)(v154, v150);

    v208 = v151;
    outlined destroy of String(&v208);

    v207 = v155;
    outlined destroy of String(&v207);
    specialized ShaderGraphNode.output(labeled:)(&v96, 0x64726F6F63786574, 0xE800000000000000, v5);
    if (!v97)
    {
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v28 = v273;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v34 = 11;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0xE000000000000000;
      swift_willThrow();
      v240 = v74;
      outlined destroy of NodePersonality(&v240);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v239 = v75;
      outlined destroy of [Input](&v239, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v189 = v179;
      outlined destroy of String(&v189);
      v238 = v52;
      outlined destroy of NodePersonality(&v238);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v237 = v53;
      v30 = &v237;
      goto LABEL_45;
    }

    v146[0] = v96;
    v146[1] = v97;
    v147 = v98;
    v148 = v99;
    v149 = v100;
    specialized ShaderGraphNode.output(labeled:)(&v101, 0x64726F6F63786574, 0xE800000000000000, v16);
    if (!v102)
    {
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v35 = 11;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0xE000000000000000;
      swift_willThrow();

      v209 = v147;
      outlined destroy of String(&v209);
      v236 = v74;
      outlined destroy of NodePersonality(&v236);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v235 = v75;
      outlined destroy of [Input](&v235, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v188 = v179;
      outlined destroy of String(&v188);
      v234 = v52;
      outlined destroy of NodePersonality(&v234);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v233 = v53;
      v25 = &v233;
      goto LABEL_42;
    }

    v142[0] = v101;
    v142[1] = v102;
    v143 = v103;
    v144 = v104;
    v145 = v105;
    UserGraph.moveEdge(from:to:)(v146, v142);

    v211 = v143;
    outlined destroy of String(&v211);

    v210 = v147;
    outlined destroy of String(&v210);
    v232 = v53;
    specialized ShaderGraphNode.output(labeled:)(&v106, 7632239, 0xE300000000000000, v53);
    if (!v107)
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v36 = 14;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0xE000000000000000;
      swift_willThrow();
      v231 = v74;
      outlined destroy of NodePersonality(&v231);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v230 = v75;
      outlined destroy of [Input](&v230, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v187 = v179;
      outlined destroy of String(&v187);
      v229 = v52;
      v37 = &v229;
LABEL_41:
      outlined destroy of NodePersonality(v37);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v25 = &v232;
      goto LABEL_42;
    }

    v138[0] = v106;
    v138[1] = v107;
    v139 = v108;
    v140 = v109;
    v141 = v110;
    specialized ShaderGraphNode.output(labeled:)(&v111, 0x72656C706D6173, 0xE700000000000000, v16);
    if (!v112)
    {
      MEMORY[0x266771550](0x72656C706D6173, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v38 = 11;
      *(v38 + 8) = 0;
      *(v38 + 16) = 0xE000000000000000;
      swift_willThrow();

      v212 = v139;
      outlined destroy of String(&v212);
      v228 = v74;
      outlined destroy of NodePersonality(&v228);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v227 = v75;
      outlined destroy of [Input](&v227, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v186 = v179;
      outlined destroy of String(&v186);
      v226 = v52;
      v37 = &v226;
      goto LABEL_41;
    }

    v134[0] = v111;
    v134[1] = v112;
    v135 = v113;
    v136 = v114;
    v137 = v115;
    UserGraph.connect(_:to:)(v138, v134);

    v214 = v135;
    outlined destroy of String(&v214);

    v213 = v139;
    outlined destroy of String(&v213);
    specialized ShaderGraphNode.output(labeled:)(&v116, 7632239, 0xE300000000000000, v43);
    if (!v117)
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v28 = v273;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v39 = 14;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0xE000000000000000;
      swift_willThrow();
      v225 = v74;
      outlined destroy of NodePersonality(&v225);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v224 = v75;
      outlined destroy of [Input](&v224, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v185 = v179;
      outlined destroy of String(&v185);
      v223 = v52;
      outlined destroy of NodePersonality(&v223);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v30 = &v232;
      goto LABEL_45;
    }

    v130[0] = v116;
    v130[1] = v117;
    v131 = v118;
    v132 = v119;
    v133 = v120;
    v222 = v75;
    specialized ShaderGraphNode.output(labeled:)(&v121, 7632239, 0xE300000000000000, v75);
    if (!v122)
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v40 = 14;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0xE000000000000000;
      swift_willThrow();

      v215 = v131;
      outlined destroy of String(&v215);
      v221 = v74;
      outlined destroy of NodePersonality(&v221);
      outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v222, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v183 = v179;
      outlined destroy of String(&v183);
      v220 = v52;
      outlined destroy of NodePersonality(&v220);
      outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v232, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      goto LABEL_43;
    }

    v126[0] = v121;
    v126[1] = v122;
    v127 = v123;
    v128 = v124;
    v129 = v125;
    UserGraph.moveEdges(from:to:)(v130, v126);

    v217 = v127;
    outlined destroy of String(&v217);

    v216 = v131;
    outlined destroy of String(&v216);
    v219 = v74;
    outlined destroy of NodePersonality(&v219);
    outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v222, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v184 = v179;
    outlined destroy of String(&v184);
    v218 = v52;
    outlined destroy of NodePersonality(&v218);
    outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v232, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    goto LABEL_3;
  }

  MEMORY[0x266771550](1701603686, 0xE400000000000000);
  MEMORY[0x266771550](32, 0xE100000000000000);
  v28 = v273;
  _print_unlocked<A, B>(_:_:)();
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v29 = 11;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0xE000000000000000;
  swift_willThrow();
  v262 = v74;
  outlined destroy of NodePersonality(&v262);
  v261 = *(&v74 + 1);
  outlined destroy of [Input](&v261, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v260 = v75;
  outlined destroy of [Input](&v260, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v194 = v179;
  outlined destroy of String(&v194);
  v259 = v52;
  outlined destroy of NodePersonality(&v259);
  outlined destroy of [Input](&v269, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v258 = v53;
  v30 = &v258;
LABEL_45:
  outlined destroy of [Input](v30, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v19 = v28;
LABEL_46:
  outlined consume of NodePersonality(v19);
}

uint64_t specialized UserGraph.mapImageNodes(connectedTo:paramType:textureAssignments:customUniformsType:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 64);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < v6)
    {
      v10 = v5 + 32 + 48 * v8;
      v11 = *(v10 + 24);
      if (v11 == -7)
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_42;
        }

        if (v8 >= v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_43;
        }

        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        v14 = *v10;
        v15 = *(v10 + 40);
        v16 = *(v10 + 32);
        v62 = v14;
        v63 = v12;
        v64 = v13;
        *&v65 = v11;
        *(&v65 + 1) = v16;
        LOBYTE(v66) = v15;
        outlined copy of NodePersonality(v14);

        closure #1 in UserGraph.replaceInvalidImageNodes()(&v62, v77);
        outlined consume of NodePersonality(v14);
        if (v4)
        {
LABEL_22:
        }

        if (v8 >= v6)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_10:

  v17 = v77[9];
  v75 = v77[8];
  v76[0] = v17;
  *(v76 + 9) = *(v77 + 153);
  v18 = v77[5];
  v71 = v77[4];
  v72 = v18;
  v19 = v77[7];
  v73 = v77[6];
  v74 = v19;
  v20 = v77[1];
  v67 = *v77;
  v68 = v20;
  v21 = v77[3];
  v69 = v77[2];
  v70 = v21;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v62);
  v22 = v62;

  v23 = *(v22 + 16);
  v56 = v22;
  if (v23)
  {
    v24 = v22 + 40;
    do
    {
      v25 = *(v24 - 8);
      if (v25 >> 61 == 5)
      {
        v26 = *v24;
        v27 = *(v24 + 8);
        v61 = *(v24 + 16);
        v28 = *(v24 + 32);
        v30 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        outlined copy of NodePersonality(v25);

        v31._object = 0x8000000265F2D870;
        v31._countAndFlagsBits = 0xD000000000000013;
        LOBYTE(v30) = String.hasPrefix(_:)(v31);

        if (v30)
        {
          v62 = v25;
          v63 = v26;
          v64 = v27;
          v65 = v61;
          LOBYTE(v66) = v28;
          closure #2 in UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(&v62, v77, a2, a3);
          outlined consume of NodePersonality(v25);
          if (v4)
          {
            goto LABEL_22;
          }
        }

        else
        {
          outlined consume of NodePersonality(v25);
        }
      }

      v24 += 48;
      --v23;
    }

    while (v23);
  }

  specialized UserGraph.transformMaterialXImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(v56, a2, a3);
  if (v4)
  {
  }

  result = specialized UserGraph.transformMaterialXCubeimageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(v56, a2, a3);
  v32 = *(v56 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = v56 + 72;
    v35 = MEMORY[0x277D84F90];
    v52 = *(v56 + 16);
LABEL_26:
    v53 = v35;
    v36 = (v34 + 48 * v33);
    v37 = v32 - v33;
    while (v33 < *(v56 + 16))
    {
      v38 = *(v36 - 5);
      if (v38 >> 61 == 5)
      {
        v39 = *(v36 - 4);
        v40 = *(v36 - 3);
        v59 = *v36;
        v54 = *(v36 - 2);
        v55 = *(v36 - 1);
        v42 = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v41 = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        outlined copy of NodePersonality(v38);

        outlined copy of NodePersonality(v38);

        v43._countAndFlagsBits = 0xD000000000000014;
        v43._object = 0x8000000265F2D830;
        LOBYTE(v42) = String.hasPrefix(_:)(v43);

        outlined consume of NodePersonality(v38);

        if (v42)
        {
          v44 = v53;
          result = swift_isUniquelyReferenced_nonNull_native();
          v62 = v53;
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 16) + 1, 1);
            v44 = v62;
          }

          v45 = v59;
          v47 = v54;
          v46 = v55;
          v49 = *(v44 + 16);
          v48 = *(v44 + 24);
          v50 = v49 + 1;
          if (v49 >= v48 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
            v50 = v49 + 1;
            v47 = v54;
            v46 = v55;
            v45 = v59;
            v44 = v62;
          }

          ++v33;
          *(v44 + 16) = v50;
          v51 = v44 + 48 * v49;
          *(v51 + 32) = v38;
          *(v51 + 40) = v39;
          *(v51 + 48) = v40;
          *(v51 + 56) = v47;
          *(v51 + 64) = v46;
          *(v51 + 72) = v45;
          v35 = v44;
          v34 = v56 + 72;
          v32 = v52;
          if (v37 != 1)
          {
            goto LABEL_26;
          }

          goto LABEL_40;
        }

        outlined consume of NodePersonality(v38);
      }

      v36 += 48;
      ++v33;
      if (!--v37)
      {
        v35 = v53;
        goto LABEL_40;
      }
    }

LABEL_44:
    __break(1u);
    return result;
  }

  v35 = MEMORY[0x277D84F90];
LABEL_40:

  specialized Sequence.forEach(_:)(v35);
}

void *specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v571 = v1;
  v4 = v3;
  v386 = v5;
  v393 = v7;
  v394 = v6;
  v395 = v8;
  v383 = v9;
  v388 = v10;
  v11 = v2;
  v378 = v12;
  v13 = type metadata accessor for OSSignpostID();
  v392 = *(v13 - 8);
  v14 = *(v392 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v347 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v347 - v18);
  v20 = type metadata accessor for OSSignposter();
  v380 = *(v20 - 8);
  v21 = *(v380 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v347 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v11 + 32);
  v385 = *(v11 + 24);
  v391 = v11;
  v389 = v24;
  swift_bridgeObjectRetain_n();
  v387 = v4;
  v25 = v20;

  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v382 = v23;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  v28 = OS_os_log.signpostsEnabled.getter();
  v384 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v26, v27, v30, "surfaceShaderMaterial", "", v29, 2u);
    MEMORY[0x266773120](v29, -1, -1);
  }

  v31 = *(v392 + 16);
  v390 = v19;
  v381 = v13;
  v31(v17, v19, v13);
  v32 = type metadata accessor for OSSignpostIntervalState();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v379 = OSSignpostIntervalState.init(id:isOpen:)();
  v35 = v391;
  v36 = *(v391 + 6);
  v527 = v36;
  v37 = v391[8];
  v427 = v391[7];
  v428 = v37;
  v429[0] = v391[9];
  *(v429 + 9) = *(v391 + 153);
  v38 = v391[3];
  v39 = v391[5];
  v40 = v391[6];
  v424 = v391[4];
  v425 = v39;
  v426 = v40;
  v41 = v391[1];
  v420 = *v391;
  v421 = v41;
  v422 = v391[2];
  v423 = v38;
  outlined init with copy of [Input](&v527, &v406, &_sSay11ShaderGraph9InputSpecVGMd, &_sSay11ShaderGraph9InputSpecVGMR);
  outlined init with copy of UserGraph(v35, &v406);
  UserGraph.flatten()();
  if (one-time initialization token for debugMode == -1)
  {
    goto LABEL_4;
  }

  while (2)
  {
    swift_once();
LABEL_4:
    swift_beginAccess();
    v42 = static DebugConfig.debugMode;

    v43 = specialized Set.contains(_:)(3, v42);

    v377 = v36;
    if (v43 & 1) != 0 || (v44 = static DebugConfig.debugMode, , v45 = specialized Set.contains(_:)(6, v44), , (v45))
    {
      v569[7] = v427;
      v569[8] = v428;
      v570[0] = v429[0];
      *(v570 + 9) = *(v429 + 9);
      v569[4] = v424;
      v569[5] = v425;
      v569[6] = v426;
      v569[0] = v420;
      v569[1] = v421;
      v569[2] = v422;
      v569[3] = v423;
      v46 = v571;
      createDotText(representing:)(v569);
      v49 = v46;
      if (v46)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, logger);
        v51 = v46;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v406 = v55;
          *v54 = 136315138;
          swift_getErrorValue();
          v56 = Error.localizedDescription.getter();
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v406);

          *(v54 + 4) = v58;
          _os_log_impl(&dword_265D7D000, v52, v53, "%s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x266773120](v55, -1, -1);
          MEMORY[0x266773120](v54, -1, -1);
        }

        else
        {
        }

        v49 = 0;
        v61 = v390;
      }

      else
      {
        *&v406 = v385;
        *(&v406 + 1) = v389;
        v59 = v47;
        v60 = v48;

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v386, v387);
        MEMORY[0x266771550](0x617267726573755FLL, 0xEA00000000006870);
        specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v59, v60, v406, *(&v406 + 1), 7630692, 0xE300000000000000);

        v61 = v390;
      }
    }

    else
    {
      v61 = v390;
      v49 = v571;
    }

    v62 = &v420;
    v567[9] = v427;
    v567[10] = v428;
    v568[0] = v429[0];
    *(v568 + 9) = *(v429 + 9);
    v567[6] = v424;
    v567[7] = v425;
    v567[8] = v426;
    v567[2] = v420;
    v567[3] = v421;
    v567[4] = v422;
    v567[5] = v423;
    v63 = v566;
    UserGraph.surfaceNode()(v435);
    if (v49)
    {
      v571 = v49;

      *&v411[32] = v428;
      *&v411[48] = v429[0];
      *&v411[57] = *(v429 + 9);
      v409 = v424;
      v410 = v425;
      *v411 = v426;
      *&v411[16] = v427;
      v406 = v420;
      v407 = v421;
      v408[0] = v422;
      v408[1] = v423;
      outlined destroy of UserGraph(&v406);
      v64 = v382;
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

      outlined destroy of UserGraph(v391);
      v65 = 0;
      v66 = v61;
      v67 = v384;
      goto LABEL_18;
    }

    v526 = v435[0];
    v525 = v435[1];
    v524 = v435[2];
    v566[7] = v427;
    v566[8] = v428;
    v567[0] = v429[0];
    *(v567 + 9) = *(v429 + 9);
    v566[4] = v424;
    v566[5] = v425;
    v566[6] = v426;
    v566[0] = v420;
    v566[1] = v421;
    v566[2] = v422;
    v566[3] = v423;
    outlined init with copy of NodePersonality(&v526, &v406);
    outlined init with copy of [Input](&v525, &v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v524, &v406, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    UserGraph.geometryModifierNode()(v436);
    specialized UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(v435, v436);
    v571 = 0;
    v69 = v389;
    v36 = v562;
    outlined destroy of NodePersonality(&v526);
    outlined destroy of [Input](&v525, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v524, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v70 = static DebugConfig.debugMode;

    v71 = specialized Set.contains(_:)(3, v70);

    if (v71)
    {
      v564[7] = v427;
      v564[8] = v428;
      v565[0] = v429[0];
      *(v565 + 9) = *(v429 + 9);
      v564[4] = v424;
      v564[5] = v425;
      v564[6] = v426;
      v564[0] = v420;
      v564[1] = v421;
      v564[2] = v422;
      v564[3] = v423;
      v72 = v571;
      createDotText(representing:)(v564);
      v571 = v72;
      if (v72)
      {
        if (one-time initialization token for logger != -1)
        {
          goto LABEL_213;
        }

        goto LABEL_24;
      }

      *&v406 = 0;
      *(&v406 + 1) = 0xE000000000000000;
      v82 = v73;
      v36 = v74;
      _StringGuts.grow(_:)(25);

      *&v406 = v385;
      *(&v406 + 1) = v69;
      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v386, v387);
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2D9C0);
      specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v82, v36, v406, *(&v406 + 1), 7630692, 0xE300000000000000);
    }

LABEL_29:
    v83 = v424;
    v84 = *(v424 + 16);

    if (v84)
    {
      v86 = 0;
      v62 = 48;
      while (v86 < v84)
      {
        v88 = v83 + 32 + 48 * v86;
        v89 = *(v88 + 24);
        if (v89 == -7)
        {
          v87 = __OFADD__(v86++, 1);
          if (v87)
          {
            goto LABEL_143;
          }

          if (v86 >= v84)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v87 = __OFADD__(v86++, 1);
          if (v87)
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            outlined consume of NodePersonality(v85);

            outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v508 = v437;
            outlined destroy of NodePersonality(&v508);
            v507 = v438;
            outlined destroy of [Input](&v507, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v506 = v439;
            v115 = &v506;
LABEL_61:
            outlined destroy of [Input](v115, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            *&v411[32] = v428;
            *&v411[48] = v429[0];
            *&v411[57] = *(v429 + 9);
            v409 = v424;
            v410 = v425;
            *v411 = v426;
            *&v411[16] = v427;
            v406 = v420;
            v407 = v421;
            v408[0] = v422;
            v408[1] = v423;
            goto LABEL_62;
          }

          v90 = *v88;
          v63 = *(v88 + 8);
          v36 = *(v88 + 16);
          v91 = *(v88 + 40);
          v92 = *(v88 + 32);
          *v405 = v90;
          *&v405[8] = v63;
          *&v405[16] = v36;
          *&v405[24] = v89;
          *&v405[32] = v92;
          v405[40] = v91;
          outlined copy of NodePersonality(v90);

          v93 = v571;
          specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(v405, v395);
          v571 = v93;
          if (v93)
          {
            goto LABEL_60;
          }

          outlined consume of NodePersonality(v90);

          if (v86 >= v84)
          {
            goto LABEL_38;
          }
        }
      }

      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      v189 = v383;
      v67 = v384;
      v95 = v387;
      v113 = v388;
      v188 = v389;
      v187 = v390;
      goto LABEL_151;
    }

LABEL_38:

    v94 = v424;
    v95 = *(v424 + 16);

    if (v95)
    {
      v98 = 0;
      v62 = v94 + 32;
      while (v98 < v95)
      {
        v99 = v62 + 48 * v98;
        v100 = *(v99 + 24);
        if (v100 == -7)
        {
          v87 = __OFADD__(v98++, 1);
          if (v87)
          {
            goto LABEL_147;
          }

          if (v98 >= v95)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v87 = __OFADD__(v98++, 1);
          if (v87)
          {
            goto LABEL_148;
          }

          v90 = *v99;
          v63 = *(v99 + 8);
          v36 = *(v99 + 16);
          v101 = *(v99 + 40);
          v102 = *(v99 + 32);
          *v405 = v90;
          *&v405[8] = v63;
          *&v405[16] = v36;
          *&v405[24] = v100;
          *&v405[32] = v102;
          v405[40] = v101;
          outlined copy of NodePersonality(v90);

          v103 = v571;
          closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(v405, v395, v394, v393, &v420);
          v571 = v103;
          if (v103)
          {
LABEL_60:
            outlined consume of NodePersonality(v90);

            outlined destroy of [Input](v436, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            outlined destroy of NodePersonality(&v526);
            outlined destroy of [Input](&v525, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v115 = &v524;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v90);

          if (v98 >= v95)
          {
            goto LABEL_47;
          }
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

LABEL_47:

  v104 = v424;
  v95 = *(v424 + 16);

  if (v95)
  {
    v98 = 0;
    v62 = 48;
    do
    {
      while (1)
      {
        if (v98 >= v95)
        {
          goto LABEL_138;
        }

        v105 = v104 + 32 + 48 * v98;
        v106 = *(v105 + 24);
        v87 = __OFADD__(v98++, 1);
        v107 = v87;
        if (v106 == -7)
        {
          break;
        }

        if (v107)
        {
          goto LABEL_146;
        }

        v108 = *(v105 + 40);
        v109 = *(v105 + 32);
        v111 = *(v105 + 8);
        v110 = *(v105 + 16);
        *&v406 = *v105;
        v63 = v406;
        *(&v406 + 1) = v111;
        *&v407 = v110;
        *(&v407 + 1) = v106;
        *&v408[0] = v109;
        BYTE8(v408[0]) = v108;
        outlined copy of NodePersonality(v406);

        v112 = v571;
        closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(&v406, v395, v394, v393, &v420);
        v571 = v112;
        outlined consume of NodePersonality(v63);

        if (v98 >= v95)
        {
          goto LABEL_58;
        }
      }

      if (v107)
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }
    }

    while (v98 < v95);
  }

LABEL_58:

  v113 = &v420;
  v562[7] = v427;
  v562[8] = v428;
  v563[0] = v429[0];
  *(v563 + 9) = *(v429 + 9);
  v562[4] = v424;
  v562[5] = v425;
  v562[6] = v426;
  v562[0] = v420;
  v562[1] = v421;
  v562[2] = v422;
  v562[3] = v423;
  v114 = v571;
  UserGraph.surfaceNode()(&v437);
  v571 = v114;
  if (v114)
  {

    outlined destroy of [Input](v436, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    outlined destroy of NodePersonality(&v526);
    outlined destroy of [Input](&v525, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v524, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    *&v411[32] = v428;
    *&v411[48] = v429[0];
    *&v411[57] = *(v429 + 9);
    v409 = v424;
    v410 = v425;
    *v411 = v426;
    *&v411[16] = v427;
    v406 = v420;
    v407 = v421;
    v408[0] = v422;
    v408[1] = v423;
LABEL_62:
    outlined destroy of UserGraph(&v406);
    v64 = v382;
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

    outlined destroy of UserGraph(v391);
    v65 = 0;
    goto LABEL_63;
  }

  outlined destroy of NodePersonality(&v526);
  outlined destroy of [Input](&v525, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v524, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v559 = v427;
  v560 = v428;
  v561[0] = v429[0];
  *(v561 + 9) = *(v429 + 9);
  v556 = v424;
  v557 = v425;
  v558 = v426;
  v555[2] = v420;
  v555[3] = v421;
  v555[4] = v422;
  v555[5] = v423;
  UserGraph.geometryModifierNode()(&v440);
  v373 = v440;
  *&v374 = v441;
  v375 = *&v442[0];
  outlined destroy of [Input](v436, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
  v116 = static DebugConfig.debugMode;

  v117 = specialized Set.contains(_:)(3, v116);

  v118 = v387;
  if (v117)
  {
    v554[7] = v427;
    v554[8] = v428;
    v555[0] = v429[0];
    *(v555 + 9) = *(v429 + 9);
    v554[4] = v424;
    v554[5] = v425;
    v554[6] = v426;
    v554[0] = v420;
    v554[1] = v421;
    v554[2] = v422;
    v554[3] = v423;
    v119 = v424;
    v120 = v571;
    createDotText(representing:)(v554);
    v571 = v120;
    if (v120)
    {
      if (one-time initialization token for logger != -1)
      {
        goto LABEL_226;
      }

      goto LABEL_67;
    }

    v130 = v122;
    *&v406 = 0;
    *(&v406 + 1) = 0xE000000000000000;
    v117 = v121;
    _StringGuts.grow(_:)(32);
    v131 = v389;

    *&v406 = v385;
    *(&v406 + 1) = v131;
    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v386, v118);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2D9A0);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v117, v130, v406, *(&v406 + 1), 7630692, 0xE300000000000000);
  }

  else
  {
    v119 = v556;
  }

  while (1)
  {
    v132 = v390;
    isa = v119[2].isa;

    if (isa)
    {
      v113 = 0;
      v62 = 48;
      v136 = v132;
      while (1)
      {
        while (1)
        {
          if (v113 >= isa)
          {
            __break(1u);
            goto LABEL_162;
          }

          v137 = &v119[6 * v113 + 4];
          v138 = *(v137 + 24);
          if (v138 == -7)
          {
            break;
          }

          v87 = __OFADD__(v113++, 1);
          if (v87)
          {
            goto LABEL_168;
          }

          v117 = *v137;
          v139 = *(v137 + 8);
          v140 = *(v137 + 16);
          v141 = *(v137 + 40);
          v142 = *(v137 + 32);
          *v405 = v117;
          *&v405[8] = v139;
          *&v405[16] = v140;
          *&v405[24] = v138;
          *&v405[32] = v142;
          v405[40] = v141;
          outlined copy of NodePersonality(v117);

          v143 = v571;
          closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(v405, v395, v394, v393, &v420);
          v571 = v143;
          if (v143)
          {
            outlined consume of NodePersonality(v117);

            outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v523 = v437;
            outlined destroy of NodePersonality(&v523);
            v522 = v438;
            outlined destroy of [Input](&v522, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v521 = v439;
            v115 = &v521;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v117);

          v136 = v390;
          if (v113 >= isa)
          {
            goto LABEL_85;
          }
        }

        v87 = __OFADD__(v113++, 1);
        if (v87)
        {
          break;
        }

        if (v113 >= isa)
        {
          goto LABEL_85;
        }
      }

      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v136 = v132;
LABEL_85:
    v119 = v136;

    v144 = *(v424 + 16);

    v376 = v134;
    if (v144)
    {
      v145 = 0;
      v146 = v134 + 32;
      v62 = 48;
      while (v145 < v144)
      {
        v147 = v146 + 48 * v145;
        v148 = *(v147 + 24);
        if (v148 == -7)
        {
          v87 = __OFADD__(v145++, 1);
          if (v87)
          {
            goto LABEL_169;
          }

          if (v145 >= v144)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v87 = __OFADD__(v145++, 1);
          if (v87)
          {
            goto LABEL_170;
          }

          v117 = *v147;
          v149 = *(v147 + 8);
          v113 = *(v147 + 16);
          v150 = *(v147 + 40);
          v151 = *(v147 + 32);
          *v405 = v117;
          *&v405[8] = v149;
          *&v405[16] = v113;
          *&v405[24] = v148;
          *&v405[32] = v151;
          v405[40] = v150;
          outlined copy of NodePersonality(v117);

          v152 = v571;
          closure #1 in UserGraph.replaceMultiOutputNodes()(v405, &v420);
          v571 = v152;
          if (v152)
          {
            outlined consume of NodePersonality(v117);

            outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v520 = v437;
            outlined destroy of NodePersonality(&v520);
            v519 = v438;
            outlined destroy of [Input](&v519, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v518 = v439;
            v115 = &v518;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v117);

          v119 = v390;
          if (v145 >= v144)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

LABEL_95:

    v153 = v395;
    v154 = v571;
    specialized UserGraph.removePassthroughNodes(nodeDefStore:)(v395);
    v67 = v384;
    v571 = v154;
    if (v154)
    {

      outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      v517 = v437;
      outlined destroy of NodePersonality(&v517);
      v516 = v438;
      outlined destroy of [Input](&v516, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v515 = v439;
      outlined destroy of [Input](&v515, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *&v411[32] = v428;
      *&v411[48] = v429[0];
      *&v411[57] = *(v429 + 9);
      v409 = v424;
      v410 = v425;
      *v411 = v426;
      *&v411[16] = v427;
      v406 = v420;
      v407 = v421;
      v408[0] = v422;
      v408[1] = v423;
      outlined destroy of UserGraph(&v406);
      v64 = v382;
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

      outlined destroy of UserGraph(v391);
      v65 = 0;
      v66 = v119;
      goto LABEL_18;
    }

    v155 = *(v424 + 16);
    v156 = v424 + 32;
    v376 = v424;

    if (v155)
    {
      v157 = 0;
      while (v157 < v155)
      {
        v158 = (v156 + 48 * v157);
        if (v158[3] == -7)
        {
          v87 = __OFADD__(v157++, 1);
          if (v87)
          {
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }
        }

        else
        {
          v87 = __OFADD__(v157++, 1);
          if (v87)
          {
            goto LABEL_196;
          }

          v159 = *v158;
          if (*v158 >> 61 == 5)
          {
            v117 = v158[1];
            v160 = *((v159 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v153 = *((v159 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

            v161._countAndFlagsBits = 0x6567616D695F444ELL;
            v161._object = 0xE800000000000000;
            v62 = String.hasPrefix(_:)(v161);

            if (v62)
            {
              v153 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in UserGraph.removeEdgesToExplicitlyIgnoredInputs());
              swift_arrayDestroy();

              v162 = v571;
              specialized Sequence.forEach(_:)(v117, v153, &v420);
              v571 = v162;
              v134 = swift_bridgeObjectRelease_n();
            }

            v119 = v390;
          }
        }

        if (v157 >= v155)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_171;
    }

LABEL_108:
    v117 = v376;

    v163 = *(v117 + 16);

    if (v163)
    {
      v155 = 0;
      v62 = 48;
      v164 = v119;
      while (1)
      {
        while (1)
        {
          if (v155 >= v163)
          {
            __break(1u);
            goto LABEL_195;
          }

          v165 = (v156 + 48 * v155);
          if (v165[3] == -7)
          {
            break;
          }

          v87 = __OFADD__(v155++, 1);
          if (v87)
          {
            goto LABEL_212;
          }

          v117 = *v165;
          v153 = v165[1];
          v166 = v165[2];
          outlined copy of NodePersonality(*v165);

          v167 = v571;
          specialized Sequence.forEach(_:)(v153, &v420);
          v571 = v167;
          if (v167)
          {
            outlined consume of NodePersonality(v117);

            outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v514 = v437;
            outlined destroy of NodePersonality(&v514);
            v513 = v438;
            outlined destroy of [Input](&v513, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v512 = v439;
            v115 = &v512;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v117);

          v164 = v390;
          if (v155 >= v163)
          {
            goto LABEL_122;
          }
        }

        v87 = __OFADD__(v155++, 1);
        if (v87)
        {
          break;
        }

        if (v155 >= v163)
        {
          goto LABEL_122;
        }
      }

      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      swift_once();
LABEL_24:
      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, logger);
      v76 = v571;
      v77 = v571;
      v63 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v63, v36))
      {
        v62 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v406 = v78;
        *v62 = 136315138;
        swift_getErrorValue();
        v79 = Error.localizedDescription.getter();
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v406);

        *(v62 + 4) = v81;
        _os_log_impl(&dword_265D7D000, v63, v36, "%s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x266773120](v78, -1, -1);
        MEMORY[0x266773120](v62, -1, -1);
      }

      else
      {
      }

      v571 = 0;
      goto LABEL_29;
    }

    v164 = v119;
LABEL_122:
    v168 = v164;

    v169 = v571;
    specialized UserGraph.resolveSwizzleNodes(nodeDefStore:)();
    v571 = v169;
    if (v169)
    {

      outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      v511 = v437;
      outlined destroy of NodePersonality(&v511);
      v510 = v438;
      outlined destroy of [Input](&v510, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v509 = v439;
      outlined destroy of [Input](&v509, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *&v411[32] = v428;
      *&v411[48] = v429[0];
      *&v411[57] = *(v429 + 9);
      v409 = v424;
      v410 = v425;
      *v411 = v426;
      *&v411[16] = v427;
      v406 = v420;
      v407 = v421;
      v408[0] = v422;
      v408[1] = v423;
      outlined destroy of UserGraph(&v406);
      v64 = v382;
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

      outlined destroy of UserGraph(v391);
      v65 = 0;
      v66 = v168;
      v67 = v384;
      goto LABEL_18;
    }

    v170 = v424;
    v171 = *(v424 + 16);

    if (!v171)
    {
      break;
    }

    v172 = 0;
    v119 = v170 + 4;
    v62 = 48;
    while (1)
    {
      while (1)
      {
        if (v172 >= v171)
        {
          __break(1u);
          goto LABEL_217;
        }

        v173 = &v119[6 * v172];
        v174 = v173[3];
        if (v174 == -7)
        {
          break;
        }

        v87 = __OFADD__(v172++, 1);
        if (v87)
        {
          goto LABEL_225;
        }

        v117 = *v173;
        v175 = v173[1];
        v176 = v173[2];
        v177 = *(v173 + 40);
        v178 = v173[4];
        *v405 = v117;
        *&v405[8] = v175;
        *&v405[16] = v176;
        *&v405[24] = v174;
        *&v405[32] = v178;
        v405[40] = v177;
        outlined copy of NodePersonality(v117);

        v179 = v571;
        closure #1 in UserGraph.resolveEnvironmentRadianceNode()(v405, &v420);
        v571 = v179;
        v85 = v117;
        if (v179)
        {
          goto LABEL_144;
        }

        outlined consume of NodePersonality(v117);

        if (v172 >= v171)
        {
          goto LABEL_133;
        }
      }

      v87 = __OFADD__(v172++, 1);
      if (v87)
      {
        break;
      }

      if (v172 >= v171)
      {
        goto LABEL_133;
      }
    }

    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    swift_once();
LABEL_67:
    v123 = type metadata accessor for Logger();
    __swift_project_value_buffer(v123, logger);
    v124 = v571;
    v125 = v571;
    v113 = Logger.logObject.getter();
    v126 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v113, v126))
    {
      v62 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v406 = v117;
      *v62 = 136315138;
      swift_getErrorValue();
      v127 = Error.localizedDescription.getter();
      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, &v406);

      *(v62 + 4) = v129;
      _os_log_impl(&dword_265D7D000, v113, v126, "%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      MEMORY[0x266773120](v117, -1, -1);
      MEMORY[0x266773120](v62, -1, -1);
    }

    else
    {
    }

    v571 = 0;
  }

LABEL_133:

  v180 = static DebugConfig.debugMode;

  v181 = specialized Set.contains(_:)(3, v180);

  if ((v181 & 1) == 0)
  {
    goto LABEL_139;
  }

  v552[7] = v427;
  v552[8] = v428;
  v553[0] = v429[0];
  *(v553 + 9) = *(v429 + 9);
  v552[4] = v424;
  v552[5] = v425;
  v552[6] = v426;
  v552[0] = v420;
  v552[1] = v421;
  v552[2] = v422;
  v552[3] = v423;
  v182 = v571;
  createDotText(representing:)(v552);
  v63 = v182;
  v95 = v387;
  v62 = v388;
  v98 = v389;
  if (v182)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v183 = swift_allocObject();
    *(v183 + 16) = xmmword_265F1F670;
    swift_getErrorValue();
    v184 = v396;
    v185 = v397;
    *(v183 + 56) = v397;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v183 + 32));
    (*(*(v185 - 8) + 16))(boxed_opaque_existential_0, v184, v185);
    print(_:separator:terminator:)();

    v571 = 0;
    v187 = v390;
    v113 = v62;
    v188 = v98;
    goto LABEL_150;
  }

LABEL_149:
  v571 = v63;
  *&v406 = 0;
  *(&v406 + 1) = 0xE000000000000000;
  v190 = v96;
  v191 = v97;
  _StringGuts.grow(_:)(30);

  *&v406 = v385;
  *(&v406 + 1) = v98;
  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](v386, v95);
  MEMORY[0x266771550](0xD000000000000019, 0x8000000265F2D980);
  specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v190, v191, v406, *(&v406 + 1), 7630692, 0xE300000000000000);
  v188 = v98;

  v187 = v390;
  v113 = v62;
LABEL_150:
  v189 = v383;
  v67 = v384;
LABEL_151:
  v64 = v382;
  v192 = one-time initialization token for surface_parameters_private;

  if (v192 != -1)
  {
    swift_once();
  }

  v193 = v571;
  specialized UserGraph.mapImageNodes(connectedTo:paramType:textureAssignments:customUniformsType:)(&v437, v189, v113);
  v571 = v193;
  if (v193)
  {

    outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    v505 = v437;
    outlined destroy of NodePersonality(&v505);
    v504 = v438;
    outlined destroy of [Input](&v504, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v503 = v439;
    outlined destroy of [Input](&v503, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    *&v411[32] = v428;
    *&v411[48] = v429[0];
    *&v411[57] = *(v429 + 9);
    v409 = v424;
    v410 = v425;
    *v411 = v426;
    *&v411[16] = v427;
    v406 = v420;
    v407 = v421;
    v408[0] = v422;
    v408[1] = v423;
    outlined destroy of UserGraph(&v406);
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v64, v379, v385, v188, v386, v95);

    outlined destroy of UserGraph(v391);
    v65 = 1;
    v66 = v187;
    goto LABEL_18;
  }

  if (v441)
  {
    v467 = v440;
    v468 = v441;
    v469[0] = v442[0];
    *(v469 + 9) = *(v442 + 9);
    outlined copy of NodePersonality(v373);
    v194 = one-time initialization token for geometry_parameters_private;

    if (v194 != -1)
    {
      swift_once();
    }

    v195 = v571;
    specialized UserGraph.mapImageNodes(connectedTo:paramType:textureAssignments:customUniformsType:)(&v467, v189, v113);
    v571 = v195;
    if (v195)
    {

      v473 = v467;
      outlined destroy of NodePersonality(&v473);
      v474 = v468;
      outlined destroy of [Input](&v474, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v475 = *&v469[0];
      outlined destroy of [Input](&v475, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      v502 = v437;
      outlined destroy of NodePersonality(&v502);
      v501 = v438;
      outlined destroy of [Input](&v501, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v500 = v439;
      outlined destroy of [Input](&v500, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *&v411[32] = v428;
      *&v411[48] = v429[0];
      *&v411[57] = *(v429 + 9);
      v409 = v424;
      v410 = v425;
      *v411 = v426;
      *&v411[16] = v427;
      v406 = v420;
      v407 = v421;
      v408[0] = v422;
      v408[1] = v423;
      outlined destroy of UserGraph(&v406);
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v64, v379, v385, v188, v386, v95);

      outlined destroy of UserGraph(v391);
      v65 = 1;
      v66 = v390;
      goto LABEL_18;
    }

LABEL_163:

    v470 = v467;
    outlined destroy of NodePersonality(&v470);
    v471 = v468;
    outlined destroy of [Input](&v471, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v472 = *&v469[0];
    outlined destroy of [Input](&v472, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  else
  {
  }

  v196 = (2 * *(v424 + 16)) | 1;
  v551[0] = 0;
  v551[1] = v424;
  v551[2] = v424 + 32;
  v551[3] = 0;
  v551[4] = v196;
  v551[5] = closure #1 in UserGraph.nodes.getter;
  v551[6] = 0;
  v551[7] = closure #1 in UserGraph.transformSamplerNodes();
  v551[8] = 0;

  v197 = v571;
  specialized Sequence.forEach(_:)(v551, &v420);
  v119 = v197;
  outlined destroy of [Input](v551, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMd, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMR);
  v198 = static DebugConfig.debugMode;

  v199 = specialized Set.contains(_:)(3, v198);

  if (v199)
  {
    v62 = v113;
    v549[8] = v428;
    v550[0] = v429[0];
    *(v550 + 9) = *(v429 + 9);
    v549[4] = v424;
    v549[5] = v425;
    v549[6] = v426;
    v549[7] = v427;
    v549[0] = v420;
    v549[1] = v421;
    v549[2] = v422;
    v549[3] = v423;
    createDotText(representing:)(v549);
    if (v197)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_265F1F670;
      swift_getErrorValue();
      v201 = v398;
      v202 = v399;
      *(v200 + 56) = v399;
      v203 = __swift_allocate_boxed_opaque_existential_0((v200 + 32));
      (*(*(v202 - 8) + 16))(v203, v201, v202);
      print(_:separator:terminator:)();

      v119 = 0;
      goto LABEL_173;
    }

LABEL_172:
    v204 = v134;
    v205 = v135;
    *&v406 = 0;
    *(&v406 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v206 = v389;

    *&v406 = v385;
    *(&v406 + 1) = v206;
    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v386, v387);
    MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2D960);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v204, v205, v406, *(&v406 + 1), 7630692, 0xE300000000000000);

LABEL_173:
    v113 = v62;
  }

  UserGraph.replaceRootNodeWithInternal(root:customUniformsType:)(&v437, v113, &v406);
  v571 = v119;
  if (v119)
  {

    v499 = v437;
    outlined destroy of NodePersonality(&v499);
    v498 = v438;
    outlined destroy of [Input](&v498, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v497 = v439;
    outlined destroy of [Input](&v497, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
LABEL_176:
    *&v411[32] = v428;
    *&v411[48] = v429[0];
    *&v411[57] = *(v429 + 9);
    v409 = v424;
    v410 = v425;
    *v411 = v426;
    *&v411[16] = v427;
    v406 = v420;
    v407 = v421;
    v408[0] = v422;
    v408[1] = v423;
    outlined destroy of UserGraph(&v406);
    v64 = v382;
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

    outlined destroy of UserGraph(v391);
    v65 = 1;
    v67 = v384;
    v66 = v390;
    goto LABEL_18;
  }

  v155 = *(&v406 + 1);
  v207 = v406;
  v208 = v407;
  v209 = *&v408[0];
  v210 = BYTE8(v408[0]);
  v62 = *(&v408[1] + 1);
  v372 = *&v408[1];
  v376 = v409;
  v365 = v410;
  v366 = *(&v409 + 1);
  v364 = BYTE8(v410);
  v496 = v437;
  outlined destroy of NodePersonality(&v496);
  v495 = v438;
  outlined destroy of [Input](&v495, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v494 = v439;
  outlined destroy of [Input](&v494, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v370 = v207;
  v371 = v208;
  v532 = __PAIR128__(v155, v207);
  v533[0] = v208;
  *&v533[1] = v209;
  BYTE8(v533[1]) = v210;
  v117 = v441;
  if (!v441)
  {
    v373 = v62;
    v369 = v155;
    if (one-time initialization token for geometry_parameters_private != -1)
    {
      swift_once();
    }

    v212 = static MetalDataType.re.geometry_parameters_private;
    v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    v213 = swift_allocObject();
    v374 = xmmword_265F1F670;
    *(v213 + 16) = xmmword_265F1F670;
    *(v213 + 32) = 12324;
    *(v213 + 40) = 0xE200000000000000;
    *(v213 + 48) = v212;
    v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v214 = swift_allocObject();
    *(v214 + 16) = v374;
    v215 = one-time initialization token for void;
    v352 = v212;

    if (v215 != -1)
    {
      swift_once();
    }

    v216 = static MetalDataType.void;
    *(v214 + 32) = 7632239;
    *(v214 + 40) = 0xE300000000000000;
    *(v214 + 48) = v216;
    v217 = swift_allocObject();
    *(v217 + 16) = 0xD00000000000001FLL;
    *(v217 + 24) = 0x8000000265F2D920;
    *(v217 + 32) = v216;
    v218 = *(&v422 + 1);
    v219 = v424;
    v220 = *(v424 + 16);
    v357 = v216;
    swift_retain_n();

    v355 = v217;
    v367 = v218;
    specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v220, v218, 0, v213, v214, v217 | 0x2000000000000000, &v443);
    v358 = *(&v444[0] + 1);
    v359 = *&v444[1];
    v360 = BYTE8(v444[1]);
    v361 = v443;
    v362 = *&v444[0];
    v363 = *(&v443 + 1);
    v492 = *(&v443 + 1);
    v493 = v443;
    v491 = *&v444[0];
    outlined init with copy of NodePersonality(&v493, &v406);
    outlined init with copy of [Input](&v492, &v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v491, &v406, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v375 = v219;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v375 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v375 + 2) + 1, 1, v375);
    }

    v222 = *(v375 + 2);
    v221 = *(v375 + 3);
    if (v222 >= v221 >> 1)
    {
      v375 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v221 > 1), v222 + 1, 1, v375);
    }

    v223 = v492;
    v224 = v491;
    v225 = v375;
    *(v375 + 2) = v222 + 1;
    v226 = &v225[48 * v222];
    v227 = v444[0];
    v228 = v443;
    *(v226 + 57) = *(v444 + 9);
    *(v226 + 2) = v228;
    *(v226 + 3) = v227;
    *&v424 = v225;
    *(&v354 + 1) = *(&v444[0] + 1);
    outlined init with copy of NodePersonality(&v493, &v406);
    outlined init with copy of [Input](&v492, &v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v491, &v406, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.Adjacent.init(_:)(v223, v224, &v445);
    v229 = v445;
    v230 = v447;
    outlined destroy of NodePersonality(&v493);
    outlined destroy of [Input](&v492, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v491, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v546 = v446;
    v545 = v229;
    v547 = v230;
    v548 = v448;
    specialized OrderedDictionary.subscript.setter(&v545, *(&v354 + 1));

    v231 = swift_allocObject();
    *(v231 + 16) = v374;
    *(v231 + 32) = 28265;
    *(v231 + 40) = 0xE200000000000000;
    v232 = v357;
    *(v231 + 48) = v357;
    v233 = swift_allocObject();
    *(v233 + 16) = v374;
    v350 = 7632239;
    *(v233 + 32) = 7632239;
    *(v233 + 40) = 0xE300000000000000;
    *(v233 + 48) = v232;
    v234 = swift_allocObject();
    *(v234 + 16) = 1;
    *(v234 + 24) = v388;
    v235 = *(v225 + 2);

    v351 = v234;
    specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v235, v367, 0, v231, v233, v234 | 0x4000000000000000, &v449);
    v354 = v450[0];
    v355 = *&v450[1];
    LODWORD(v356) = BYTE8(v450[1]);
    v353 = *(&v449 + 1);
    v236 = v449;
    v489 = v236 >> 64;
    v357 = v236;
    v490 = v449;
    v488 = *&v450[0];
    outlined init with copy of NodePersonality(&v490, &v406);
    outlined init with copy of [Input](&v489, &v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v488, &v406, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v238 = *(v225 + 2);
    v237 = *(v225 + 3);
    if (v238 >= v237 >> 1)
    {
      v375 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v237 > 1), v238 + 1, 1, v375);
    }

    v239 = v489;
    v240 = v488;
    v241 = v375;
    *(v375 + 2) = v238 + 1;
    v242 = &v241[48 * v238];
    v243 = v450[0];
    v244 = v449;
    *(v242 + 57) = *(v450 + 9);
    *(v242 + 2) = v244;
    *(v242 + 3) = v243;
    *&v424 = v241;
    v349 = *(&v450[0] + 1);
    outlined init with copy of NodePersonality(&v490, &v406);
    outlined init with copy of [Input](&v489, &v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v488, &v406, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v348 = v239;
    specialized UserGraph.Adjacent.init(_:)(v239, v240, &v451);
    v245 = v451;
    v246 = v453;
    outlined destroy of NodePersonality(&v490);
    outlined destroy of [Input](&v489, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v488, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v542 = v452;
    v541 = v245;
    v543 = v246;
    v544 = v454;
    specialized OrderedDictionary.subscript.setter(&v541, v349);

    v247 = swift_allocObject();
    *(v247 + 16) = v374;
    *(v247 + 32) = v350;
    *(v247 + 40) = 0xE300000000000000;
    *(v247 + 48) = v352;
    v248 = swift_allocObject();
    *(v248 + 16) = 12324;
    *(v248 + 24) = 0xE200000000000000;
    v249 = *(v241 + 2);

    *&v374 = v248;
    specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v249, v367, 0, MEMORY[0x277D84F90], v247, v248 | 0x6000000000000000, &v455);
    v486 = *(&v455 + 1);
    v487 = v455;
    v485 = *&v456[0];
    outlined init with copy of NodePersonality(&v487, &v406);
    outlined init with copy of [Input](&v486, &v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v485, &v406, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v251 = *(v241 + 2);
    v250 = *(v241 + 3);
    if (v251 >= v250 >> 1)
    {
      v375 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v250 > 1), v251 + 1, 1, v375);
    }

    v252 = v486;
    v253 = v485;
    v254 = v375;
    *(v375 + 2) = v251 + 1;
    v255 = &v254[48 * v251];
    v256 = v456[0];
    v257 = v455;
    *(v255 + 57) = *(v456 + 9);
    *(v255 + 2) = v257;
    *(v255 + 3) = v256;
    *&v424 = v254;
    v258 = *(&v456[0] + 1);
    outlined init with copy of NodePersonality(&v487, &v406);
    outlined init with copy of [Input](&v486, &v406, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v485, &v406, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.Adjacent.init(_:)(v252, v253, &v457);
    v259 = v457;
    v260 = v459;
    outlined destroy of NodePersonality(&v487);
    outlined destroy of [Input](&v486, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v485, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v538 = v458;
    v537 = v259;
    v539 = v260;
    v540 = v460;
    specialized OrderedDictionary.subscript.setter(&v537, v258);

    v261 = v571;
    ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v461);
    v571 = v261;
    if (!v261)
    {
      ShaderGraphNode.subscript.getter(12324, 0xE200000000000000, v462);
      v571 = 0;
      UserGraph.connect(_:to:)(v461, v462);

      v484 = v463;
      outlined destroy of String(&v484);

      v483 = v461[1];
      outlined destroy of String(&v483);
      v280 = v571;
      result = ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v464);
      v571 = v280;
      if (!v280)
      {
        if (*(v348 + 16))
        {
          v281 = *(v348 + 40);
          v282 = *(v348 + 48);
          v283 = *(v348 + 56);
          v284 = *(v348 + 64);
          v285 = *(v348 + 72);
          v286 = *(v348 + 80);
          v534[0] = *(v348 + 32);
          v534[1] = v281;
          v534[2] = v282;
          v534[3] = v283;
          v534[4] = v284;
          v535 = v285;
          v536 = v286;

          UserGraph.connect(_:to:)(v464, v534);

          v482 = v464[1];
          outlined destroy of String(&v482);
          outlined destroy of NodePersonality(&v487);
          outlined destroy of [Input](&v486, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v262 = &_sSay11ShaderGraph6OutputVGMd;
          v263 = &_sSay11ShaderGraph6OutputVGMR;
          v264 = &v485;
          goto LABEL_198;
        }

        goto LABEL_277;
      }
    }

    outlined consume of NodePersonality(v372);

    outlined destroy of NodePersonality(&v493);
    outlined destroy of [Input](&v492, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v491, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v487);
    outlined destroy of [Input](&v486, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v485, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of NodePersonality(&v490);
    outlined destroy of [Input](&v489, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v488, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_215:
    outlined consume of NodePersonality(v370);

    *&v411[32] = v428;
    *&v411[48] = v429[0];
    *&v411[57] = *(v429 + 9);
    v409 = v424;
    v410 = v425;
    *v411 = v426;
    *&v411[16] = v427;
    v406 = v420;
    v407 = v421;
    v408[0] = v422;
    v408[1] = v423;
    outlined destroy of UserGraph(&v406);
    v64 = v382;
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

    outlined destroy of UserGraph(v391);
    v65 = 1;
    goto LABEL_63;
  }

  v153 = v440;
  v465[0] = v440;
  v465[1] = v441;
  v466[0] = v442[0];
  *(v466 + 9) = *(v442 + 9);
  outlined copy of NodePersonality(v373);

  v211 = v571;
  UserGraph.replaceRootNodeWithInternal(root:customUniformsType:)(v465, v113, &v406);
  v571 = v211;
  if (v211)
  {

    outlined consume of NodePersonality(v372);

    v479 = v153;
    outlined destroy of NodePersonality(&v479);
    v480 = v117;
    outlined destroy of [Input](&v480, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v481 = *&v466[0];
    outlined destroy of [Input](&v481, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of [Input](&v440, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    outlined consume of NodePersonality(v370);

    goto LABEL_176;
  }

LABEL_197:
  v373 = v62;
  v369 = v155;
  v363 = *(&v406 + 1);
  v361 = v406;
  v358 = *(&v407 + 1);
  v362 = v407;
  v359 = *&v408[0];
  v360 = BYTE8(v408[0]);
  v353 = *(&v408[1] + 1);
  v357 = *&v408[1];
  v354 = v409;
  v355 = v410;
  LODWORD(v356) = BYTE8(v410);
  v476 = v153;
  outlined destroy of NodePersonality(&v476);
  v477 = v117;
  outlined destroy of [Input](&v477, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v478 = *&v466[0];
  outlined destroy of [Input](&v478, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v262 = &_s11ShaderGraph0aB4NodeVSgMd;
  v263 = &_s11ShaderGraph0aB4NodeVSgMR;
  v264 = &v440;
LABEL_198:
  outlined destroy of [Input](v264, v262, v263);
  v265 = v424;
  v266 = *(v424 + 16);

  if (v266)
  {
    v267 = 0;
    while (1)
    {
      while (1)
      {
        if (v267 >= v266)
        {
          __break(1u);
          goto LABEL_255;
        }

        v268 = v265 + 32 + 48 * v267;
        v269 = *(v268 + 24);
        v87 = __OFADD__(v267++, 1);
        v270 = v87;
        if (v269 == -7)
        {
          break;
        }

        if (v270)
        {
          goto LABEL_268;
        }

        v271 = *(v268 + 40);
        v272 = *(v268 + 32);
        v274 = *(v268 + 8);
        v273 = *(v268 + 16);
        *&v406 = *v268;
        v275 = v406;
        *(&v406 + 1) = v274;
        *&v407 = v273;
        *(&v407 + 1) = v269;
        *&v408[0] = v272;
        BYTE8(v408[0]) = v271;
        outlined copy of NodePersonality(v406);

        v276 = v571;
        specialized closure #1 in UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(&v406, v395, v394, &v420);
        v571 = v276;
        outlined consume of NodePersonality(v275);

        if (v267 >= v266)
        {
          goto LABEL_209;
        }
      }

      if (v270)
      {
        break;
      }

      if (v267 >= v266)
      {
        goto LABEL_209;
      }
    }

    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    outlined consume of ShaderGraphNode?(v357, v353);
    outlined consume of NodePersonality(v372);
LABEL_273:

    goto LABEL_274;
  }

LABEL_209:

  v277 = v571;
  specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(&v532, 0);
  v571 = v277;
  if (v277)
  {

    outlined consume of NodePersonality(v370);

    outlined consume of ShaderGraphNode?(v357, v353);
    outlined consume of NodePersonality(v372);

    outlined consume of ShaderGraphNode?(v361, v363);
    goto LABEL_220;
  }

LABEL_217:
  v530[0] = v361;
  v530[1] = v363;
  v530[2] = v362;
  v530[3] = v358;
  v530[4] = v359;
  v531 = v360;
  outlined copy of NodePersonality(v361);

  v278 = v571;
  specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(v530, 1);
  v571 = v278;
  if (!v278)
  {
    outlined consume of NodePersonality(v361);

    v287 = v424;
    v288 = *(v424 + 16);

    if (v288)
    {
      v290 = 0;
      while (1)
      {
        while (1)
        {
          if (v290 >= v288)
          {
            __break(1u);
            goto LABEL_272;
          }

          v291 = (v287 + 32 + 48 * v290);
          if (v291[3] == -7)
          {
            break;
          }

          v87 = __OFADD__(v290++, 1);
          if (v87)
          {
            goto LABEL_276;
          }

          v293 = *v291;
          v292 = v291[1];
          v294 = v291[2];
          outlined copy of NodePersonality(*v291);

          v295 = v571;
          specialized Sequence.forEach(_:)(v292, &v420);
          v571 = v295;
          if (v295)
          {
            outlined consume of NodePersonality(v293);

            goto LABEL_250;
          }

          outlined consume of NodePersonality(v293);

          if (v290 >= v288)
          {
            goto LABEL_236;
          }
        }

        v87 = __OFADD__(v290++, 1);
        if (v87)
        {
          break;
        }

        if (v290 >= v288)
        {
          goto LABEL_236;
        }
      }

      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

LABEL_236:

    v296 = v571;
    UserGraph.rewireUniformInputs(customUniformsType:)(v388);
    v571 = v296;
    if (!v296)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMR);
      v297 = swift_allocObject();
      v298 = v372;
      v299 = v373;
      *(v297 + 32) = v372;
      *&v374 = v297 + 32;
      v300 = v376;
      *(v297 + 40) = v299;
      *(v297 + 48) = v300;
      v301 = v365;
      *(v297 + 56) = v366;
      *(v297 + 64) = v301;
      *(v297 + 72) = v364;
      v303 = v353;
      v302 = v354;
      *(v297 + 80) = v357;
      *(v297 + 88) = v303;
      v305 = *(&v354 + 1);
      v304 = v355;
      *(v297 + 96) = v302;
      *(v297 + 104) = v305;
      *(v297 + 112) = v304;
      *(v297 + 120) = v356;
      outlined copy of NodePersonality(v298);
      v373 = v299;

      outlined copy of ShaderGraphNode?(v357, v303);
      v306 = 0;
      v375 = (v297 + 16);
      v307 = MEMORY[0x277D84F90];
LABEL_239:
      v308 = &v375[48 * v306];
      while (++v306 != 3)
      {
        v309 = v308 + 48;
        v310 = *(v308 + 3);
        v308 += 48;
        if (v310)
        {
          v311 = *(v309 - 4);
          v368 = *v309;
          LODWORD(v367) = v309[8];
          v312 = *(v309 - 2);
          v366 = *(v309 - 1);
          outlined copy of NodePersonality(v311);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v307 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v307 + 2) + 1, 1, v307);
          }

          v314 = *(v307 + 2);
          v313 = *(v307 + 3);
          if (v314 >= v313 >> 1)
          {
            v307 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v313 > 1), v314 + 1, 1, v307);
          }

          *(v307 + 2) = v314 + 1;
          v315 = &v307[48 * v314];
          *(v315 + 4) = v311;
          *(v315 + 5) = v310;
          v316 = v366;
          *(v315 + 6) = v312;
          *(v315 + 7) = v316;
          *(v315 + 8) = v368;
          v315[72] = v367 & 1;
          goto LABEL_239;
        }
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      UserGraph.removeUnconnectedNodesAndEdges(roots:)(v307);

      v317 = v571;
      UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(&v532, v395, v394, v393, 0);
      v571 = v317;
      if (v317)
      {
        outlined consume of ShaderGraphNode?(v361, v363);
        outlined consume of ShaderGraphNode?(v357, v353);
        outlined consume of NodePersonality(v372);
      }

      else
      {
        outlined copy of ShaderGraphNode?(v361, v363);
        v318 = v571;
        UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(v530, v395, v394, v393, 1);
        v571 = v318;
        if (!v318)
        {
LABEL_255:

          outlined consume of NodePersonality(v361);

          v320 = v424;
          v321 = *(v424 + 16);

          if (!v321)
          {
LABEL_264:

            v418[7] = v427;
            v418[8] = v428;
            v419[0] = v429[0];
            *(v419 + 9) = *(v429 + 9);
            v418[4] = v424;
            v418[5] = v425;
            v418[6] = v426;
            v418[0] = v420;
            v418[1] = v421;
            v418[2] = v422;
            v418[3] = v423;
            *(&v431[7] + 7) = v427;
            *(&v431[8] + 7) = v428;
            *(&v431[9] + 7) = v429[0];
            v431[10] = *(v429 + 9);
            *(&v431[3] + 7) = v423;
            *(&v431[4] + 7) = v424;
            *(&v431[5] + 7) = v425;
            *(&v431[6] + 7) = v426;
            *(v431 + 7) = v420;
            *(&v431[1] + 7) = v421;
            *(&v431[2] + 7) = v422;
            v433 = v532;
            v434[0] = v533[0];
            *(v434 + 9) = *(v533 + 9);
            v331 = static DebugConfig.debugMode;
            outlined init with copy of UserGraph(v418, &v406);

            v332 = specialized Set.contains(_:)(3, v331);

            if ((v332 & 1) == 0)
            {
              goto LABEL_269;
            }

            v528[7] = v427;
            v528[8] = v428;
            v529[0] = v429[0];
            *(v529 + 9) = *(v429 + 9);
            v528[4] = v424;
            v528[5] = v425;
            v528[6] = v426;
            v528[0] = v420;
            v528[1] = v421;
            v528[2] = v422;
            v528[3] = v423;
            v333 = v571;
            createDotText(representing:)(v528);
            v571 = v333;
            if (!v333)
            {
LABEL_272:
              v339 = result;
              v340 = v289;
              *&v406 = 0;
              *(&v406 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(21);
              v341 = v389;

              *&v406 = v385;
              *(&v406 + 1) = v341;
              MEMORY[0x266771550](95, 0xE100000000000000);
              MEMORY[0x266771550](v386, v387);
              MEMORY[0x266771550](0xD000000000000010, 0x8000000265F2D940);
              specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v339, v340, v406, *(&v406 + 1), 7630692, 0xE300000000000000);
              outlined consume of ShaderGraphNode?(v357, v353);
              outlined consume of NodePersonality(v372);

              goto LABEL_273;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
            v334 = swift_allocObject();
            *(v334 + 16) = xmmword_265F1F670;
            v335 = v571;
            swift_getErrorValue();
            v336 = v400;
            v337 = v401;
            *(v334 + 56) = v401;
            v338 = __swift_allocate_boxed_opaque_existential_0((v334 + 32));
            (*(*(v337 - 8) + 16))(v338, v336, v337);
            print(_:separator:terminator:)();
            outlined consume of ShaderGraphNode?(v357, v353);
            outlined consume of NodePersonality(v372);

            v571 = 0;
LABEL_274:
            v403[8] = v428;
            v404[0] = v429[0];
            *(v404 + 9) = *(v429 + 9);
            v403[4] = v424;
            v403[5] = v425;
            v403[6] = v426;
            v403[7] = v427;
            v403[0] = v420;
            v403[1] = v421;
            v403[2] = v422;
            v403[3] = v423;
            outlined destroy of UserGraph(v403);
            v342 = v382;
            v344 = v385;
            v343 = v386;
            v345 = v389;
            v346 = v387;
            $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

            outlined destroy of UserGraph(v391);
            (*(v392 + 8))(v390, v381);
            (*(v380 + 8))(v342, v384);
            *&v405[16] = v433;
            *&v405[32] = v434[0];
            *&v405[41] = *(v434 + 9);
            *&v405[265] = v431[10];
            *&v405[217] = v431[7];
            *&v405[233] = v431[8];
            *&v405[249] = v431[9];
            *&v405[153] = v431[3];
            *&v405[169] = v431[4];
            *&v405[185] = v431[5];
            *&v405[201] = v431[6];
            *&v405[105] = v431[0];
            *&v405[121] = v431[1];
            *&v405[137] = v431[2];
            v407 = v433;
            v408[0] = v434[0];
            *(v408 + 9) = *(v434 + 9);
            *&v411[169] = v431[10];
            *&v411[121] = v431[7];
            *&v411[137] = v431[8];
            *&v411[153] = v431[9];
            *&v411[57] = v431[3];
            *&v411[73] = v431[4];
            *&v411[89] = v431[5];
            *&v411[105] = v431[6];
            *&v411[9] = v431[0];
            *&v411[25] = v431[1];
            *&v405[57] = *v432;
            *&v405[281] = v430[0];
            *v405 = v344;
            *&v405[8] = v345;
            *&v405[60] = *&v432[3];
            *&v405[64] = v361;
            *&v405[72] = v363;
            *&v405[80] = v362;
            *&v405[88] = v358;
            *&v405[96] = v359;
            v405[104] = v360;
            *&v405[284] = *(v430 + 3);
            *&v405[288] = v377;
            *&v405[296] = v383;
            *&v405[304] = v388;
            *&v405[312] = v343;
            *&v405[320] = v346;
            *&v406 = v344;
            *(&v406 + 1) = v345;
            HIDWORD(v408[1]) = *&v432[3];
            *(&v408[1] + 9) = *v432;
            *&v409 = v361;
            *(&v409 + 1) = v363;
            *&v410 = v362;
            *(&v410 + 1) = v358;
            *v411 = v359;
            v411[8] = v360;
            *&v411[41] = v431[2];
            *v412 = v430[0];
            *&v412[3] = *(v430 + 3);
            v413 = v377;
            v414 = v383;
            v415 = v388;
            v416 = v343;
            v417 = v346;
            outlined init with copy of RESurfaceShaderMaterial(v405, &v402);
            outlined destroy of RESurfaceShaderMaterial(&v406);
            return memcpy(v378, v405, 0x148uLL);
          }

          v322 = 0;
          while (v322 < v321)
          {
            v323 = v320 + 32 + 48 * v322;
            v324 = *(v323 + 24);
            if (v324 == -7)
            {
              v87 = __OFADD__(v322++, 1);
              if (v87)
              {
                goto LABEL_279;
              }

              if (v322 >= v321)
              {
                goto LABEL_264;
              }
            }

            else
            {
              v87 = __OFADD__(v322++, 1);
              if (v87)
              {
                goto LABEL_280;
              }

              v325 = *v323;
              v326 = *(v323 + 8);
              v327 = *(v323 + 16);
              v328 = *(v323 + 40);
              v329 = *(v323 + 32);
              *v405 = v325;
              *&v405[8] = v326;
              *&v405[16] = v327;
              *&v405[24] = v324;
              *&v405[32] = v329;
              v405[40] = v328;
              outlined copy of NodePersonality(v325);

              v330 = v571;
              closure #2 in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v405);
              v571 = v330;
              if (v330)
              {
                outlined consume of NodePersonality(v372);

                outlined consume of NodePersonality(v370);

                outlined consume of ShaderGraphNode?(v361, v363);
                outlined consume of ShaderGraphNode?(v357, v353);

                outlined consume of NodePersonality(v325);

                goto LABEL_219;
              }

              outlined consume of NodePersonality(v325);

              if (v322 >= v321)
              {
                goto LABEL_264;
              }
            }
          }

LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
          return result;
        }

        v319 = v361;
        outlined consume of ShaderGraphNode?(v361, v363);
        outlined consume of ShaderGraphNode?(v357, v353);
        outlined consume of NodePersonality(v372);

        outlined consume of NodePersonality(v319);
      }

      outlined consume of NodePersonality(v370);

      goto LABEL_219;
    }

LABEL_250:
    outlined consume of ShaderGraphNode?(v361, v363);
    outlined consume of ShaderGraphNode?(v357, v353);
    outlined consume of NodePersonality(v372);

    goto LABEL_215;
  }

  v279 = v361;
  outlined consume of ShaderGraphNode?(v361, v363);

  outlined consume of NodePersonality(v370);

  outlined consume of ShaderGraphNode?(v357, v353);
  outlined consume of NodePersonality(v372);

  outlined consume of NodePersonality(v279);

LABEL_219:

LABEL_220:
  *&v411[32] = v428;
  *&v411[48] = v429[0];
  *&v411[57] = *(v429 + 9);
  v409 = v424;
  v410 = v425;
  *v411 = v426;
  *&v411[16] = v427;
  v406 = v420;
  v407 = v421;
  v408[0] = v422;
  v408[1] = v423;
  outlined destroy of UserGraph(&v406);
  v64 = v382;
  $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v382, v379, v385, v389, v386, v387);

  outlined destroy of UserGraph(v391);
  v65 = 1;
LABEL_63:
  v67 = v384;
  v66 = v390;
LABEL_18:
  (*(v392 + 8))(v66, v381);
  (*(v380 + 8))(v64, v67);

  outlined destroy of [Input](&v527, &_sSay11ShaderGraph9InputSpecVGMd, &_sSay11ShaderGraph9InputSpecVGMR);

  if (v65)
  {
  }

  return result;
}