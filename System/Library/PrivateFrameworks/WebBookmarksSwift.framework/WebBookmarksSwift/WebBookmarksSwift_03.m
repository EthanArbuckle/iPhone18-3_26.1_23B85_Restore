uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(char **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xB8uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[19] = a3;
  v10[20] = v4;
  v10[18] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 176) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[21] = v13;
  if (v19)
  {
    v24 = *(*v5 + 56) + 48 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 24);
    v28 = *(v24 + 40);
  }

  else
  {
    v25 = 0;
    v28 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
  }

  v11[12] = v25;
  *(v11 + 13) = v26;
  *(v11 + 15) = v27;
  v11[17] = v28;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v5 = *(*a1 + 13);
  v4 = *(*a1 + 14);
  v6 = *(*a1 + 15);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 17);
  v9 = (*a1)[176];
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      if (((*a1)[176] & 1) == 0)
      {
        goto LABEL_15;
      }

      v22 = *(v2 + 21);
      v23 = **(v2 + 20);
      v24 = *(*a1 + 12);
      v25 = *(*a1 + 14);
      v26 = *(*a1 + 15);
      outlined destroy of String(*(v23 + 48) + 16 * v22);
      specialized _NativeDictionary._delete(at:)(v22, v23);
      goto LABEL_14;
    }

    v10 = *(v2 + 21);
    v11 = **(v2 + 20);
    if ((v9 & 1) == 0)
    {
      v12 = *(v2 + 18);
      v27 = *(v2 + 19);
      *(v2 + 6) = v3;
      *(v2 + 7) = v5;
      *(v2 + 8) = v4;
      *(v2 + 9) = v6;
      *(v2 + 10) = v7;
      *(v2 + 11) = v8;
      v15 = v2 + 48;
      v14 = v27;
      goto LABEL_13;
    }

LABEL_7:
    v16 = (v11[7] + 48 * v10);
    *v16 = v3;
    v16[1] = v5;
    v16[2] = v4;
    v16[3] = v6;
    v16[4] = v7;
    v16[5] = v8;
    goto LABEL_15;
  }

  if (v5)
  {
    v10 = *(v2 + 21);
    v11 = **(v2 + 20);
    if ((v9 & 1) == 0)
    {
      v12 = *(v2 + 18);
      v13 = *(v2 + 19);
      *v2 = v3;
      *(v2 + 1) = v5;
      *(v2 + 2) = v4;
      *(v2 + 3) = v6;
      *(v2 + 4) = v7;
      *(v2 + 5) = v8;
      v14 = v13;
      v15 = v2;
LABEL_13:
      v24 = v3;
      specialized _NativeDictionary._insert(at:key:value:)(v10, v12, v14, v15, v11);

LABEL_14:
      v3 = v24;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if ((*a1)[176])
  {
    v17 = *(v2 + 21);
    v18 = **(v2 + 20);
    v19 = *(*a1 + 12);
    v20 = *(*a1 + 14);
    v21 = *(*a1 + 15);
    outlined destroy of String(*(v18 + 48) + 16 * v17);
    specialized _NativeDictionary._delete(at:)(v17, v18);
    v3 = v19;
  }

LABEL_15:
  v28 = *(v2 + 12);
  v29 = *(v2 + 13);
  v31 = *(v2 + 14);
  v30 = *(v2 + 15);
  v32 = *(v2 + 16);
  v33 = *(v2 + 17);
  outlined copy of ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection?(v3, v5);
  outlined consume of ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection?(v28, v29);

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(void ***a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v24 = (*(*v5 + 56) + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *v11 = v25;
  v11[1] = v26;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (void ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(*a1 + 48);
  if (v3)
  {
    v5 = v1[5];
    v6 = *v1[4];
    if (v4)
    {
      v7 = (v6[7] + 16 * v5);
      *v7 = v3;
      v7[1] = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v5, v1[2], v1[3], v3, v2, v6);
    }
  }

  else if ((*a1)[6])
  {
    v8 = v1[5];
    v9 = *v1[4];
    outlined destroy of String(*(v9 + 48) + 16 * v8);
    specialized _NativeDictionary._delete(at:)(v8, v9);
  }

  v10 = *v1;
  v11 = v3;

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    outlined destroy of String(*(v7 + 48) + 16 * v6);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
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
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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
      v12 = *(a2 + 40);
      v13 = (*(a2 + 48) + 16 * v6);
      v14 = *v13;
      v15 = v13[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();

      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 56 * v3;
        v23 = (v21 + 56 * v6);
        if (v3 != v6 || v22 >= v23 + 56)
        {
          v9 = *v23;
          v10 = v23[1];
          v11 = v23[2];
          *(v22 + 48) = *(v23 + 6);
          *(v22 + 16) = v10;
          *(v22 + 32) = v11;
          *v22 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 56 * v9;
    v15 = *(v14 + 48);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    specialized _NativeDictionary._delete(at:)(v9, v12);
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

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(MEMORY[0x277CCB248], &_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    specialized _NativeSet._delete(at:)(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = specialized Set._Variant._migrateToNative(_:removing:)();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  specialized _NativeSet._delete(at:)(v13);
  result = v20;
  *v10 = v21;
  return result;
}

{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v6)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    String.hash(into:)();
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 1;
  }

  v10 = ~v8;
  v38 = ~v8;
  while (1)
  {
    v11 = *(*(v4 + 48) + 8 * v9);
    if (v11)
    {
      v12 = v11;
      if ([v12 acceptanceStatus] != 2 || (v13 = objc_msgSend(v12, sel_userIdentity), v14 = objc_msgSend(v13, sel_userRecordID), v13, !v14))
      {

LABEL_16:
        goto LABEL_9;
      }

      v15 = [v14 recordName];

      if (!a1)
      {
        goto LABEL_16;
      }
    }

    else if (!a1)
    {
      goto LABEL_42;
    }

    v16 = a1;
    if ([v16 acceptanceStatus] != 2 || (v17 = objc_msgSend(v16, sel_userIdentity), v18 = objc_msgSend(v17, sel_userRecordID), v17, !v18))
    {

      goto LABEL_9;
    }

    v19 = [v18 recordName];

    if (!v11)
    {
      goto LABEL_9;
    }

    if ([v11 acceptanceStatus] == 2)
    {
      v20 = [v11 userIdentity];
      v21 = [v20 userRecordID];

      if (v21)
      {
        v22 = [v21 recordName];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v24;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0;
    }

    if ([v16 acceptanceStatus] == 2)
    {
      break;
    }

    v29 = 0;
    v26 = 0;
    if (v21)
    {
      goto LABEL_31;
    }

LABEL_38:

    v10 = v38;
    if (!v26)
    {
      goto LABEL_42;
    }

LABEL_9:
    v9 = (v9 + 1) & v10;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 1;
    }
  }

  v25 = [v16 userIdentity];
  v26 = [v25 userRecordID];

  if (v26)
  {
    v37 = v23;
    v27 = v2;
    v28 = [v26 recordName];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v30;

    v2 = v27;
    v23 = v37;
    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  v29 = 0;
  if (!v21)
  {
    goto LABEL_38;
  }

LABEL_31:
  if (!v26)
  {

    v10 = v38;
    goto LABEL_9;
  }

  if (v23 != v29 || v21 != v26)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v38;
    if (v31)
    {
      goto LABEL_42;
    }

    goto LABEL_9;
  }

LABEL_42:
  v33 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v2;
  v39 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v35 = v39;
  }

  v36 = *(*(v35 + 48) + 8 * v9);
  specialized _NativeSet._delete(at:)(v9);
  result = v36;
  *v2 = v39;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo18CKShareParticipantC_Tt1g5(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  specialized _NativeSet._delete(at:)(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
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
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
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
      v25 = v10;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        if (v12)
        {
          v13 = v12;
          if ([v13 acceptanceStatus] == 2 && (v14 = objc_msgSend(v13, sel_userIdentity), v15 = objc_msgSend(v14, sel_userRecordID), v14, v15))
          {
            v16 = [v15 recordName];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            Hasher._combine(_:)(1u);
            v10 = v25;
            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }
        }

        else
        {
          String.hash(into:)();
          v13 = 0;
        }

        v17 = Hasher._finalize()();

        v18 = v17 & v7;
        if (v2 >= v10)
        {
          if (v18 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v18 >= v10)
        {
          goto LABEL_17;
        }

        if (v2 >= v18)
        {
LABEL_17:
          v19 = *(v3 + 48);
          v20 = (v19 + 8 * v2);
          v21 = (v19 + 8 * v6);
          if (v2 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
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

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18CKShareParticipantCGMd, &_ss11_SetStorageCySo18CKShareParticipantCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
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

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x2743D7610](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = v1 + 32;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v38)
    {
      v23 = *(v3 + 40);
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for CKShareParticipant(0, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
        do
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v39;
      }

      *(v6 + 8 * v28) = v30 | v29;
      *(*(v3 + 48) + 8 * v27) = v24;
      v34 = *(v3 + 16);
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject)
  {
    type metadata accessor for CKShareParticipant(255, &lazy cache variable for type metadata for CKShareParticipant, 0x277CBC6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject);
  }

  return result;
}

uint64_t outlined copy of PresenceUpdateMessage?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined copy of PresenceUpdateMessage.Kind(result, a2);
  }

  return result;
}

uint64_t outlined consume of PresenceUpdateMessage?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined consume of PresenceUpdateMessage.Kind(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for CKShareParticipant(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Participant and conformance Participant(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined copy of ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection?(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  return result;
}

char *CKShareGroupSessionProvider.__allocating_init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = specialized CKShareGroupSessionProvider.init(id:activity:share:)(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a3);
  return v12;
}

uint64_t CKShareGroupSessionProvider.id.getter()
{
  v0 = specialized CKShareGroupSessionProvider.id.getter();

  return v0;
}

uint64_t CKShareGroupSessionProvider.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t CKShareGroupSessionProvider.state.getter()
{
  specialized CKShareGroupSessionProvider.state.getter();
}

uint64_t CKShareGroupSessionProvider.state.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t CKShareGroupSessionProvider.presenceInfo.getter()
{
  specialized CKShareGroupSessionProvider.presenceInfo.getter();
}

uint64_t CKShareGroupSessionProvider.presenceInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t CKShareGroupSessionProvider.members.getter()
{
  specialized CKShareGroupSessionProvider.members.getter();
}

uint64_t CKShareGroupSessionProvider.members.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t CKShareGroupSessionProvider.share.didset()
{
  swift_beginAccess();
  v1 = v0[6];
  v2 = *(*v0 + 144);
  swift_beginAccess();
  v3 = *(v0 + v2);

  v4 = v3;
  CKShare.members.getter();

  CurrentValueSubject.send(_:)();
}

size_t CKShare.members.getter()
{
  v1 = type metadata accessor for AddressableMember();
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 participants];
  type metadata accessor for CKShareParticipant();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = MEMORY[0x277D84F90];
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_43:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    v39 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v10 = 0;
  v11 = v6 & 0xC000000000000001;
  v39 = MEMORY[0x277D84F90];
  do
  {
    v12 = v10;
    while (1)
    {
      if (v11)
      {
        v13 = MEMORY[0x2743D7610](v12, v6);
      }

      else
      {
        if (v12 >= *(v7 + 16))
        {
          goto LABEL_42;
        }

        v13 = *(v6 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if ([v13 acceptanceStatus] != 2)
      {
        goto LABEL_7;
      }

      v15 = [v14 userIdentity];
      v16 = [v15 lookupInfo];

      if (!v16)
      {
        goto LABEL_7;
      }

      v17 = v11;
      v18 = v7;
      v19 = [v16 emailAddress];
      if (v19)
      {
        v20 = v19;
        v21 = [objc_opt_self() normalizedEmailAddressHandleForValue_];
        goto LABEL_19;
      }

      v22 = [v16 phoneNumber];
      if (v22)
      {
        break;
      }

      v11 = v17;
LABEL_7:

LABEL_8:
      ++v12;
      if (v10 == v8)
      {
        v9 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }

    v20 = v22;
    v21 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v22 isoCountryCode:0];
LABEL_19:
    v23 = v21;

    v7 = v18;
    v11 = v17;
    if (!v23)
    {
      goto LABEL_8;
    }

    MEMORY[0x2743D7260]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v17;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v39 = v44;
    v9 = MEMORY[0x277D84F90];
  }

  while (v10 != v8);
LABEL_28:

  v25 = v39;
  if (v39 >> 62)
  {
    v26 = __CocoaSet.count.getter();
    if (!v26)
    {
      goto LABEL_45;
    }

LABEL_30:
    v44 = v9;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v29 = v25;
      v40 = v25 & 0xC000000000000001;
      v30 = v44;
      do
      {
        if (v40)
        {
          v31 = MEMORY[0x2743D7610](v28, v29);
        }

        else
        {
          v31 = *(v29 + 8 * v28 + 32);
        }

        v32 = v31;
        v33 = [v31 normalizedValue];
        if (!v33)
        {
          v33 = [v32 value];
        }

        v34 = v33;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v41;
        AddressableMember.init(handle:)();

        v44 = v30;
        v37 = *(v30 + 16);
        v36 = *(v30 + 24);
        if (v37 >= v36 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1);
          v30 = v44;
        }

        ++v28;
        *(v30 + 16) = v37 + 1;
        (*(v43 + 32))(v30 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37, v35, v42);
      }

      while (v26 != v28);

      goto LABEL_46;
    }

    __break(1u);
  }

  else
  {
    v26 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_30;
    }

LABEL_45:

    v30 = MEMORY[0x277D84F90];
LABEL_46:
    v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v30);

    return v38;
  }

  return result;
}

id CKShareGroupSessionProvider.share.getter()
{
  v0 = specialized CKShareGroupSessionProvider.share.getter();

  return v0;
}

void CKShareGroupSessionProvider.share.setter(void *a1)
{
  specialized CKShareGroupSessionProvider.share.setter(a1);
}

uint64_t (*CKShareGroupSessionProvider.share.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *(*v1 + 144);
  swift_beginAccess();
  return CKShareGroupSessionProvider.share.modify;
}

uint64_t CKShareGroupSessionProvider.share.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return CKShareGroupSessionProvider.share.didset();
  }

  return result;
}

char *CKShareGroupSessionProvider.init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  v7 = specialized CKShareGroupSessionProvider.init(id:activity:share:)(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a3);
  return v7;
}

id CKShareParticipant.handle.getter()
{
  v1 = [v0 userIdentity];
  v2 = [v1 lookupInfo];

  if (v2)
  {
    v3 = [v2 emailAddress];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() normalizedEmailAddressHandleForValue_];
LABEL_6:
      v7 = v5;

      return v7;
    }

    v6 = [v2 phoneNumber];
    if (v6)
    {
      v4 = v6;
      v5 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v6 isoCountryCode:0];
      goto LABEL_6;
    }
  }

  return 0;
}

char *CKShareGroupSessionProvider.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 128)]);
  outlined destroy of Member?(&v0[*(*v0 + 136)]);

  return v0;
}

uint64_t CKShareGroupSessionProvider.__deallocating_deinit()
{
  CKShareGroupSessionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance CKShareGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = specialized CKShareGroupSessionProvider.id.getter();
  a1[1] = v4;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17WebBookmarksSwift20ParticipantHandleMapC0E4KindO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind();
  result = MEMORY[0x2743D7430](v2, &type metadata for ParticipantHandleMap.ParticipantKind, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      specialized Set._Variant.insert(_:)(&v8, v6);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for AddressableMember();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
  result = MEMORY[0x2743D7430](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for CKShareParticipant();
    v5 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant);
    result = MEMORY[0x2743D7430](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2743D7610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

char *specialized CKShareGroupSessionProvider.init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v67 = *v4;
  v10 = v67;
  v11 = type metadata accessor for PresenceSessionInfo();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for GroupSessionProviderState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 104))(&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CCB1A8]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v4 + 4) = CurrentValueSubject.init(_:)();
  static PresenceSessionInfo.default.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v4 + 5) = CurrentValueSubject.init(_:)();
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  v23 = *(*v4 + 128);
  v24 = *(v10 + 80);
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v4[v23], a3, v24);
  *&v4[*(*v4 + 144)] = a4;
  v26 = a4;
  *&v64 = CKShare.members.getter();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *(v4 + 6) = CurrentValueSubject.init(_:)();
  v30 = [v26 currentUserParticipant];
  if (v30 && (v31 = v30, v32 = CKShareParticipant.handle.getter(), v31, v32))
  {
    v33 = [v32 normalizedValue];
    if (!v33)
    {
      v33 = [v32 value];
    }

    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v65 + 1) = type metadata accessor for AddressableMember();
    v66 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
    __swift_allocate_boxed_opaque_existential_1(&v64);
    AddressableMember.init(handle:)();

    v35 = &v5[*(*v5 + 136)];
    v36 = v65;
    *v35 = v64;
    *(v35 + 1) = v36;
    *(v35 + 4) = v66;
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.tabGroup);
    v38 = v26;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v64 = v62;
      *v41 = 136315138;
      v42 = [v38 recordID];
      v63 = v23;
      v43 = v42;
      v44 = [v42 ckShortDescription];
      HIDWORD(v61) = v40;
      v45 = v38;
      v46 = v25;
      v47 = v44;

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v25 = v46;
      v38 = v45;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v64);

      *(v41 + 4) = v51;
      v23 = v63;
      _os_log_impl(&dword_272D1B000, v39, BYTE4(v61), "Share %s does not have a currentUserParticipant", v41, 0xCu);
      v52 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x2743D7F00](v52, -1, -1);
      MEMORY[0x2743D7F00](v41, -1, -1);
    }

    v53 = *(v67 + 88);
    type metadata accessor for CKShareGroupSessionProvider.Errors();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();

    v54 = *(v5 + 3);

    v55 = *(v5 + 4);

    v56 = *(v5 + 5);

    v57 = *(v5 + 6);

    (*(v25 + 8))(&v5[v23], v24);

    type metadata accessor for CKShareGroupSessionProvider();
    v58 = *(*v5 + 48);
    v59 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
  }

  return v5;
}

uint64_t specialized CKShareGroupSessionProvider.id.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t outlined init with copy of Member?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized CKShareGroupSessionProvider.share.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized CKShareGroupSessionProvider.share.setter(void *a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  return CKShareGroupSessionProvider.share.didset();
}

uint64_t outlined destroy of Member?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v3 = *a1;
  *a3 = a2();
}

uint64_t keypath_set_2Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t type metadata completion function for CKShareGroupSessionProvider(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalDeviceCoordinationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalDeviceCoordinationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PersonalDeviceCoordinationActivity@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMd, &_ss22KeyedDecodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PersonalDeviceCoordinationActivity(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMd, &_ss22KeyedEncodingContainerVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV10CodingKeys33_2E2785385871484D9EC6B327441CA1D2LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity()
{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity and conformance PersonalDeviceCoordinationActivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDeviceCoordinationActivity.CodingKeys and conformance PersonalDeviceCoordinationActivity.CodingKeys);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17WebBookmarksSwift21PresenceUpdateMessageV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PresenceUpdateMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PresenceUpdateMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6907764;
    }

    else
    {
      v3 = 107;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE200000000000000;
    v3 = 26484;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 103;
    }

    else
    {
      v3 = 26980;
    }

    if (v2 == 3)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 6907764;
    }

    else
    {
      v6 = 107;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE200000000000000;
    if (v3 != 26484)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE100000000000000;
    if (v3 != 103)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    if (v3 != 26980)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return *a1 < *a2;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    v2 = a1[1];
    v3 = a1[2];
    v4 = a2[1];
    v5 = a2[2];
    if (v4 == v2 && v5 == v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = *a2 < *a1;
  }

  return (v7 & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    if (a1[1] == a2[1] && a1[2] == a2[2])
    {
      v3 = 0;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = *a1 < *a2;
  }

  return (v3 & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a2 != *a1)
  {
    return *a2 < *a1;
  }

  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CRDTGeneration(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CRDTGeneration()
{
  v1 = v0[1];
  v2 = v0[2];
  v5 = *v0;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743D7240](v3);

  MEMORY[0x2743D7240](8236, 0xE200000000000000);
  MEMORY[0x2743D7240](v1, v2);
  MEMORY[0x2743D7240](15904, 0xE200000000000000);
  return 8252;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresenceUpdateMessage.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PresenceUpdateMessage.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresenceUpdateMessage.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PresenceUpdateMessage.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PresenceUpdateMessage.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PresenceUpdateMessage.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 107;
  v5 = 0xE200000000000000;
  v6 = 26484;
  v7 = 0xE100000000000000;
  v8 = 103;
  if (v2 != 3)
  {
    v8 = 26980;
    v7 = 0xE200000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6907764;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PresenceUpdateMessage.CodingKeys()
{
  v1 = *v0;
  v2 = 107;
  v3 = 26484;
  v4 = 103;
  if (v1 != 3)
  {
    v4 = 26980;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6907764;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PresenceUpdateMessage.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized PresenceUpdateMessage.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PresenceUpdateMessage.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PresenceUpdateMessage.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t PresenceUpdateMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMd, &_ss22KeyedEncodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v18[15] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v18[14] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3[1])
  {
    v15 = *v3;
    v17 = v3[2];
    v16 = v3[3];
    v18[13] = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18[12] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18[11] = 2;
  }

  else
  {
    v18[10] = 0;
  }

  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t PresenceUpdateMessage.description.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = *v0;
    _StringGuts.grow(_:)(94);
    MEMORY[0x2743D7240](0xD000000000000038, 0x8000000272D68A00);
    MEMORY[0x2743D7240](v4, v1);
    MEMORY[0x2743D7240](0xD000000000000011, 0x8000000272D68A40);
    MEMORY[0x2743D7240](v3, v2);
    v5 = 0x6172656E6567203BLL;
    v6 = 0xEE00203A6E6F6974;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v5 = 0xD000000000000031;
    v6 = 0x8000000272D68A60;
  }

  MEMORY[0x2743D7240](v5, v6);
  v8 = *(v0 + 2);
  v9 = v0[6];
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2743D7240](62, 0xE100000000000000);
  return 0;
}

double protocol witness for Decodable.init(from:) in conformance PresenceUpdateMessage@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PresenceUpdateMessage.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PresenceUpdateMessage(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  a1[2] = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  result = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  a1[3] = result;
  return result;
}

unint64_t specialized PresenceUpdateMessage.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PresenceUpdateMessage.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized PresenceUpdateMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMd, &_ss22KeyedDecodingContainerVy17WebBookmarksSwift21PresenceUpdateMessageV10CodingKeys33_D1800A617CCBB8875C2948DFDD679592LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_3;
  }

  v34 = 3;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 4;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v28 = v11;
  v32 = 0;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  v18._countAndFlagsBits = v15;
  v18._object = v17;
  v19 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PresenceUpdateMessage.KindCodingValue.init(rawValue:), v18);

  if (v19 == 1)
  {
    v31 = 1;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v24;
    v30 = 2;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v25;
    (*(v6 + 8))(v9, v5);
    v22 = v26;
    v21 = v27;
    goto LABEL_7;
  }

  if (v19)
  {
    lazy protocol witness table accessor for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of PresenceUpdateMessage.Kind(0, 0);
  }

  (*(v6 + 8))(v9, v5);
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_7:
  outlined copy of PresenceUpdateMessage.Kind(v22, v21);

  __swift_destroy_boxed_opaque_existential_1(a1);
  outlined consume of PresenceUpdateMessage.Kind(v22, v21);

  *a2 = v22;
  a2[1] = v21;
  a2[2] = v19;
  a2[3] = v20;
  v23 = v28;
  a2[4] = v29;
  a2[5] = v23;
  a2[6] = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessage.CodingKeys and conformance PresenceUpdateMessage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError()
{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError;
  if (!lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceUpdateMessageError and conformance PresenceUpdateMessageError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresenceUpdateMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PresenceUpdateMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRDTGeneration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CRDTGeneration(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PresenceUpdateMessage.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PresenceUpdateMessage.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PresenceUpdateMessage.Kind(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRDTGeneration and conformance CRDTGeneration()
{
  result = lazy protocol witness table cache variable for type CRDTGeneration and conformance CRDTGeneration;
  if (!lazy protocol witness table cache variable for type CRDTGeneration and conformance CRDTGeneration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRDTGeneration and conformance CRDTGeneration);
  }

  return result;
}

void type metadata completion function for GroupSession.JoinState(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for GroupSession();
  if (v3 <= 0x3F)
  {
    type metadata accessor for (DispatchWorkItem, CheckedContinuation<(), Error>)();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (DispatchWorkItem, CheckedContinuation<(), Error>)()
{
  if (!lazy cache variable for type metadata for (DispatchWorkItem, CheckedContinuation<(), Error>))
  {
    type metadata accessor for DispatchWorkItem();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DispatchWorkItem, CheckedContinuation<(), Error>));
    }
  }
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB58]();
}