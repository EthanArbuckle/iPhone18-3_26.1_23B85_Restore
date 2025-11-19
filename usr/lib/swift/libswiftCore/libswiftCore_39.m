uint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  result = specialized static Hasher._hash(seed:_:)(*(a2 + 40), a1);
  v5 = a2 + 56;
  v6 = -1 << *(a2 + 32);
  v7 = result & ~v6;
  v8 = v7 >> 6;
  v9 = *(a2 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  v11 = *(a2 + 48);
  if (((1 << v7) & v9) != 0)
  {
    v12 = ~v6;
    do
    {
      if (*(v11 + 8 * v7) == a1)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for ObjectIdentifier);
      }

      v7 = (v7 + 1) & v12;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
    }

    while (((1 << v7) & v9) != 0);
  }

  *(v5 + 8 * v8) = v10 | v9;
  *(v11 + 8 * v7) = a1;
  ++*(a2 + 16);
  return result;
}

{
  result = specialized static Hasher._hash(seed:_:)(*(a2 + 40), a1);
  v5 = a2 + 56;
  v6 = -1 << *(a2 + 32);
  v7 = result & ~v6;
  v8 = v7 >> 6;
  v9 = *(a2 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  v11 = *(a2 + 48);
  if (((1 << v7) & v9) != 0)
  {
    v12 = ~v6;
    do
    {
      if (*(v11 + 8 * v7) == a1)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int);
      }

      v7 = (v7 + 1) & v12;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
    }

    while (((1 << v7) & v9) != 0);
  }

  *(v5 + 8 * v8) = v10 | v9;
  *(v11 + 8 * v7) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet._unsafeInsertNew(_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = _swift_stdlib_Hashing_parameters ^ *(a3 + 40);
  v21 = 0u;
  v22 = 0u;
  v20[0] = 0;
  v20[1] = v6 ^ 0x736F6D6570736575;
  v20[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v20[3] = v6 ^ 0x6C7967656E657261;
  v20[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v20, a1, a2);
  result = Hasher._finalize()();
  v8 = a3 + 56;
  v9 = -1 << *(a3 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(a3 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    do
    {
      v15 = (*(a3 + 48) + 16 * v10);
      result = *v15;
      v16 = v15[1];
      v17 = *v15 == a1 && v16 == a2;
      if (v17 || ((~v16 & 0x6000000000000000) == 0 ? (v18 = (a2 & 0x6000000000000000) == 0x6000000000000000) : (v18 = 0), !v18 && (result = _stringCompareInternal(_:_:expecting:)(result, v16, a1, a2, 0), (result & 1) != 0)))
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
    }

    while (((1 << v10) & v12) != 0);
  }

  *(v8 + 8 * v11) = v13 | v12;
  v19 = (*(a3 + 48) + 16 * v10);
  *v19 = a1;
  v19[1] = a2;
  ++*(a3 + 16);
  return result;
}

uint64_t _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 40);
  v13 = *(v12 + 32);
  v32 = a1;
  v14 = v12;
  v16 = v13(v11, v15, v12);
  v33 = a2;
  v17 = -1 << *(a2 + 32);
  v18 = v16 & ~v17;
  v19 = v18 >> 6;
  v31 = a2 + 56;
  v20 = *(a2 + 56 + 8 * (v18 >> 6));
  v21 = 1 << v18;
  v22 = *(v6 + 72);
  if (((1 << v18) & v20) != 0)
  {
    v23 = ~v17;
    v30 = v7;
    v24 = *(v7 + 16);
    v25 = (v7 + 8);
    do
    {
      v24(v9, *(v33 + 48) + v22 * v18, a3);
      v26 = (*(*(v14 + 8) + 8))(v9, v32, a3);
      (*v25)(v9, a3);
      if (v26)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(a3);
      }

      v18 = (v18 + 1) & v23;
      v19 = v18 >> 6;
      v20 = *(v31 + 8 * (v18 >> 6));
      v21 = 1 << v18;
    }

    while (((1 << v18) & v20) != 0);
    v7 = v30;
  }

  v27 = v32;
  *(v31 + 8 * v19) = v21 | v20;
  v28 = v33;
  result = (*(v7 + 32))(*(v33 + 48) + v22 * v18, v27, a3);
  ++*(v28 + 16);
  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    a1 = *(*v1 + 24);
  }

  v3 = specialized static _HashTable.scale(forCapacity:)(a1);
  result = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSS_Tt2g5(v3, 0x100000000, 0, 1);
  v5 = result;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = specialized _NativeSet._unsafeInsertNew(_:)(v15, v16, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = (*(v2 + 48) + 16 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v16;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_15;
      }

      v13 = *(v2 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    result = v2;
    *v1 = v5;
  }

  return result;
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    a1 = *(*v1 + 24);
  }

  v3 = specialized static _HashTable.scale(forCapacity:)(a1);
  v13[0] = 1;
  v4 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v3, 0x100000000, 0, 1);
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_13:
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * (v10 | (v5 << 6)), v13);
      specialized _NativeSet._unsafeInsertNew(_:)(v13, v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_15;
      }

      v12 = *(v2 + 56 + 8 * v5);
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

  else
  {
LABEL_15:
    v2;
    *v1 = v4;
  }
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void, uint64_t))
{
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    a1 = *(*v3 + 24);
  }

  v7 = specialized static _HashTable.scale(forCapacity:)(a1);
  result = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSO_Tt2g5Tm(v7, 0x100000000, 0, 1, a2);
  v9 = result;
  if (*(v6 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    for (i = (v11 + 63) >> 6; v13; result = a3(*(*(v6 + 48) + 8 * (v15 | (v10 << 6))), v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      ;
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_15;
      }

      v17 = *(v6 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    result = v6;
    *v3 = v9;
  }

  return result;
}

Swift::Void __swiftcall _NativeSet.copyAndResize(capacity:)(Swift::Int capacity)
{
  v3 = v2;
  v4 = *(v1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](capacity);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(*v2 + 24) <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(*v2 + 24);
  }

  v25 = *(v7 + 24);
  type metadata accessor for _SetStorage(0, v4, v25, v8);
  v13 = specialized static _HashTable.scale(forCapacity:)(v12);
  v26 = 1;
  v14 = static _SetStorage.allocate(scale:age:seed:)(v13, 0x100000000, 0, 1);
  if (*(v11 + 16))
  {
    v24 = v3;
    v15 = 0;
    v16 = 1 << *(v11 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      (*(v5 + 16))(v10, *(v11 + 48) + *(v5 + 72) * (v20 | (v15 << 6)), v4);
      _NativeSet._unsafeInsertNew(_:)(v10, v14, v4);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        v11;
        v3 = v24;
        goto LABEL_18;
      }

      v22 = *(v11 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v11;
LABEL_18:
    *v3 = v14;
  }
}

void *specialized _NativeSet.copy()()
{
  v1 = *v0;
  v2 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSS_Tt2g5(*(*v0 + 32), *(*v0 + 36), *(*v0 + 40), 0);
  v3 = v2;
  if (*(v1 + 16))
  {
    result = v2 + 7;
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 56 + 8 * v5)
    {
      result = memmove(result, (v1 + 56), 8 * v5);
    }

    v7 = 0;
    v3[2] = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 56);
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
        v18 = v17[1];
        v19 = (v3[6] + v16);
        *v19 = *v17;
        v19[1] = v18;
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

      v15 = *(v1 + 56 + 8 * v7);
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
  LOBYTE(v23[0]) = 0;
  v5 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v4, v2, v3, 0);
  v6 = v5;
  if (*(v1 + 16))
  {
    result = v5 + 7;
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v1 || result >= v1 + 56 + 8 * v8)
    {
      result = memmove(result, (v1 + 56), 8 * v8);
    }

    v10 = 0;
    v6[2] = *(v1 + 16);
    v11 = 1 << *(v1 + 32);
    v12 = *(v1 + 56);
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
        v19 = 40 * (v16 | (v10 << 6));
        result = outlined init with copy of AnyHashable(*(v1 + 48) + v19, v23);
        v20 = v6[6] + v19;
        v21 = v23[0];
        v22 = v23[1];
        *(v20 + 32) = v24;
        *v20 = v21;
        *(v20 + 16) = v22;
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

      v18 = *(v1 + 56 + 8 * v10);
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

void *specialized _NativeSet.copy()(uint64_t (*a1)(void))
{
  v2 = *v1;
  v3 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSO_Tt2g5Tm(*(*v1 + 32), *(*v1 + 36), *(*v1 + 40), 0, a1);
  v4 = v3;
  if (*(v2 + 16))
  {
    result = v3 + 7;
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    v4[2] = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v4[6] + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Void __swiftcall _NativeSet.copy()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  type metadata accessor for _SetStorage(0, v3, *(v5 + 24), v9);
  v10 = *(v8 + 36);
  v11 = *(v8 + 40);
  v12 = *(v8 + 32);
  v28 = 0;
  v13 = static _SetStorage.allocate(scale:age:seed:)(v12, v10, v11, 0);
  v14 = v13;
  if (*(v8 + 16))
  {
    v27[0] = v2;
    v15 = v13 + 7;
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v8 || v15 >= v8 + 56 + 8 * v16)
    {
      memmove(v15, (v8 + 56), 8 * v16);
    }

    v18 = 0;
    v14[2] = *(v8 + 16);
    v19 = 1 << *(v8 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v8 + 56);
    v22 = (v19 + 63) >> 6;
    v27[1] = v4 + 32;
    v27[2] = v4 + 16;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v4 + 72) * (v23 | (v18 << 6));
      (*(v4 + 16))(v7, *(v8 + 48) + v26, v3);
      (*(v4 + 32))(v14[6] + v26, v7, v3);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        v8;
        v2 = v27[0];
        goto LABEL_21;
      }

      v25 = *(v8 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v8;
LABEL_21:
    *v2 = v14;
  }
}

Swift::Bool __swiftcall _NativeSet.ensureUnique(isUnique:capacity:)(Swift::Bool isUnique, Swift::Int capacity)
{
  v4 = *(*v2 + 24);
  if (v4 >= capacity)
  {
    if (!isUnique)
    {
      _NativeSet.copy()();
    }
  }

  else if (isUnique)
  {
    _NativeSet.resize(capacity:)(capacity);
  }

  else
  {
    _NativeSet.copyAndResize(capacity:)(capacity);
  }

  return v4 < capacity;
}

Swift::_HashTable::Bucket __swiftcall _NativeSet.validatedBucket(for:)(Swift::_HashTable::Index a1)
{
  if (a1.bucket.offset < 0 || 1 << *(v1 + 32) <= a1.bucket.offset || ((*(v1 + 8 * (a1.bucket.offset >> 6) + 56) >> SLOBYTE(a1.bucket.offset)) & 1) == 0 || *(v1 + 36) != a1.age)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1.bucket;
}

uint64_t _NativeSet.validatedBucket(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, swift *a5, uint64_t a6)
{
  v35 = a6;
  v9 = a1;
  v10 = *(a5 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = v32 - v14;
  if (v15)
  {
    if (v9 >= 0)
    {
      v9 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v16 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v9, v16))
    {
      goto LABEL_22;
    }

    if (*(a4 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v9 + 16)))
    {
      goto LABEL_18;
    }

    if (!swift_dynamicCastClass(v9, v16))
    {
LABEL_22:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v17 = *(v9 + 24);
    if (*(v17 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = *(v17 + 8 * a2 + 24);
    v19 = swift_unknownObjectRetain(v18);
    _forceBridgeFromObjectiveC<A>(_:_:)(v19, a5, v20, v36);
    swift_unknownObjectRelease(v18);
    v21 = (*(v35 + 32))(*(a4 + 40), a5);
    v33 = a4 + 56;
    v34 = a4;
    v22 = -1 << *(a4 + 32);
    v9 = v21 & ~v22;
    if (((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      (*(v10 + 8))(v36, a5);
      goto LABEL_18;
    }

    v23 = ~v22;
    v26 = *(v10 + 16);
    v24 = v10 + 16;
    v25 = v26;
    v27 = *(v24 + 56);
    v28 = (v24 - 8);
    v32[1] = v28 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v25(v13, *(v34 + 48) + v27 * v9, a5);
      v29 = (*(*(v35 + 8) + 8))(v13, v36, a5);
      v30 = *v28;
      (*v28)(v13, a5);
      if (v29)
      {
        break;
      }

      v9 = (v9 + 1) & v23;
      if (((*(v33 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v30(v36, a5);
        goto LABEL_18;
      }
    }

    v30(v36, a5);
  }

  else if (v9 < 0 || 1 << *(a4 + 32) <= v9 || ((*(a4 + 8 * (v9 >> 6) + 56) >> v9) & 1) == 0 || *(a4 + 36) != a2)
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v9;
}

unint64_t Set.Index._asCocoa.getter(unint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t __CocoaDictionary.Index.age.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = a3();
  if (!swift_dynamicCastClass(v3, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return specialized static Hasher._hash(seed:_:)(0, *(v3 + 16));
}

id __CocoaSet.Index.element.getter(uint64_t a1, uint64_t a2)
{
  v2 = specialized __CocoaSet.Index.element.getter(a1, a2);

  return swift_unknownObjectRetain(v2);
}

void Set.Index._asNative.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

uint64_t _NativeSet.startIndex.getter(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 56);
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

Swift::_HashTable::Bucket specialized _NativeSet.index(after:)(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1 || ((*(a4 + 56 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0 || *(a4 + 36) != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _HashTable.occupiedBucket(after:)(a1);
}

Swift::_HashTable::Bucket _NativeSet.index(after:)(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1 || ((*(a4 + 56 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0 || *(a4 + 36) != a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _HashTable.occupiedBucket(after:)(a1);
}

unint64_t _NativeSet.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v11 + 16))
  {
    return 0;
  }

  v12 = (*(a4 + 32))(*(a2 + 40), a3, a4);
  v13 = -1 << *(a2 + 32);
  v14 = v12 & ~v13;
  v25 = a2 + 56;
  if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v23 = a4;
  v24 = a1;
  v15 = ~v13;
  v16 = v8 + 16;
  v17 = *(v8 + 16);
  v18 = *(v16 + 56);
  v19 = (v16 - 8);
  while (1)
  {
    v17(v10, *(a2 + 48) + v18 * v14, a3);
    v20 = (*(*(v23 + 8) + 8))(v10, v24, a3);
    (*v19)(v10, a3);
    if (v20)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v25 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  return v14;
}

uint64_t _NativeSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v11 + 16) && (v12 = (*(a4 + 32))(*(a2 + 40), a3, a4), v13 = -1 << *(a2 + 32), v14 = v12 & ~v13, v25 = a2 + 56, ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
  {
    v23 = a4;
    v24 = a1;
    v15 = ~v13;
    v16 = v8 + 16;
    v17 = *(v8 + 16);
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    do
    {
      v17(v10, *(a2 + 48) + v18 * v14, a3);
      v20 = (*(*(v23 + 8) + 8))(v10, v24, a3);
      (*v19)(v10, a3);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v25 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t _NativeSet.element(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, swift *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a5;
  v9 = a1;
  v11 = *(a4 - 1);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = v37 - v15;
  if (v16)
  {
    if (v9 >= 0)
    {
      v9 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v17 = type metadata accessor for __CocoaSet.Index.Storage();
    if (!swift_dynamicCastClass(v9, v17))
    {
      goto LABEL_22;
    }

    if (*(a3 + 36) != specialized static Hasher._hash(seed:_:)(0, *(v9 + 16)))
    {
      goto LABEL_20;
    }

    if (!swift_dynamicCastClass(v9, v17))
    {
LABEL_22:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v18 = *(v9 + 24);
    if (*(v18 + 16) <= a2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v38 = a6;
    v19 = *(v18 + 8 * a2 + 24);
    v20 = swift_unknownObjectRetain(v19);
    _forceBridgeFromObjectiveC<A>(_:_:)(v20, a4, v21, v42);
    swift_unknownObjectRelease(v19);
    v22 = (*(v41 + 32))(*(a3 + 40), a4);
    v39 = a3 + 56;
    v40 = a3;
    v23 = -1 << *(a3 + 32);
    v24 = v22 & ~v23;
    if (((*(a3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      (*(v11 + 8))(v42, a4);
      goto LABEL_20;
    }

    v25 = ~v23;
    v28 = *(v11 + 16);
    v27 = v11 + 16;
    v26 = v28;
    v29 = *(v27 + 56);
    v30 = v27;
    v31 = (v27 - 8);
    v37[2] = v30 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37[1] = v31 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v32 = v29;
      v33 = v26;
      v26(v14, *(v40 + 48) + v29 * v24, a4);
      v34 = (*(*(v41 + 8) + 8))(v14, v42, a4);
      v35 = *v31;
      (*v31)(v14, a4);
      if (v34)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      v26 = v33;
      v29 = v32;
      if (((*(v39 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        v35(v42, a4);
        goto LABEL_20;
      }
    }

    v35(v42, a4);
    return (v33)(v38, *(v40 + 48) + v32 * v24, a4);
  }

  else
  {
    if (v9 < 0 || 1 << *(a3 + 32) <= v9 || ((*(a3 + 8 * (v9 >> 6) + 56) >> v9) & 1) == 0 || *(a3 + 36) != a2)
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return (*(v11 + 16))(a6, *(a3 + 48) + *(v11 + 72) * v9, a4);
  }
}

void ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(uint64_t a1)
{
  v3 = _StringGuts.init(_initialCapacity:)(186);
  v5 = v3;
  v6 = v4;
  v235 = v3;
  v236 = v4;
  v7 = 0x800000018066DAB0 | 0x8000000000000000;
  v8 = HIBYTE(v4) & 0xF;
  v9 = (v3 & 0xFFFFFFFFFFFFLL);
  if ((v4 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 && (v3 & ~v4 & 0x2000000000000000) == 0)
  {
    v4;
    v235 = 0xD00000000000001CLL;
    v236 = 0x800000018066DAB0 | 0x8000000000000000;
    goto LABEL_83;
  }

  v1 = (0x800000018066DAB0 & 0x2000000000000000);
  v11 = (0x800000018066DAB0 >> 56) & 0xF;
  if ((0x800000018066DAB0 & 0x2000000000000000 & v4) != 0)
  {
    v12 = v8 + v11;
    if (v8 + v11 <= 0xF)
    {
      v1 = a1;
      if (v11)
      {
        v52 = 0;
        v53 = 0;
        v54 = 8 * v8;
        v38 = v4;
        do
        {
          v55 = v8 + v53;
          v46 = v53 >= 8;
          v56 = v53 + 1;
          v57 = v7 >> (v52 & 0x38);
          if (!v46)
          {
            v57 = 0xD00000000000001CLL >> v52;
          }

          v58 = (v57 << ((v54 + v52) & 0x38)) | ((-255 << ((v54 + v52) & 0x38)) - 1) & v38;
          v59 = (v57 << (v54 + v52)) | ((-255 << (v54 + v52)) - 1) & *&v5;
          if (v55 <= 7)
          {
            v5 = v59;
          }

          else
          {
            v38 = v58;
          }

          v52 += 8;
          v53 = v56;
        }

        while (v11 != v56);
      }

      else
      {
        v38 = v4;
      }

      v4;
      0x800000018066DAB0 | 0x8000000000000000;
      v60 = 0xA000000000000000;
      if (!(*&v5 & 0x8080808080808080 | v38 & 0x80808080808080))
      {
        v60 = 0xE000000000000000;
      }

      v235 = v5;
      v236 = v60 & 0xFF00000000000000 | (v12 << 56) | v38 & 0xFFFFFFFFFFFFFFLL;
      a1 = v1;
      goto LABEL_83;
    }
  }

  if (v1)
  {
    v13 = (0x800000018066DAB0 >> 56) & 0xF;
  }

  else
  {
    v13 = 28;
  }

  v232 = v13;
  if ((0x800000018066DAB0 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n(0x800000018066DAB0 | 0x8000000000000000, 2);
    v197._rawBits = 1;
    v198._rawBits = (v13 << 16) | 1;
    v199._rawBits = _StringGuts.validateScalarRange(_:)(v197, v198, 0xD00000000000001CLL, 0x800000018066DAB0 | 0x8000000000000000)._rawBits;
    if (v199._rawBits < 0x10000)
    {
      v199._rawBits |= 3;
    }

    v13 = String.UTF8View.distance(from:to:)(v199, v200);
    0x800000018066DAB0 | 0x8000000000000000;
    if ((v6 & 0x1000000000000000) == 0)
    {
LABEL_14:
      v15 = __OFADD__(v10, v13);
      v16 = v10 + v13;
      if (!v15)
      {
LABEL_15:
        v231 = a1;
        v17 = *&v5 & ~v6;
        if ((v17 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
        {
          v18 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v6);
          if (v19)
          {
            goto LABEL_261;
          }

          if (v16 > 15)
          {
            goto LABEL_26;
          }

          if ((v6 & 0x2000000000000000) == 0)
          {
            if (v18 < v13)
            {
LABEL_21:
              if ((v6 & 0x1000000000000000) == 0)
              {
                v20 = v232;
                if ((*&v5 & 0x1000000000000000) != 0)
                {
                  v21 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v21 = _StringObject.sharedUTF8.getter(*&v5, v6);
                  v9 = v220;
                }

                closure #1 in _StringGuts._convertedToSmall()(v21, *&v9, &v233, v14);
                v5 = v233;
                v22 = v234;
                goto LABEL_44;
              }

              v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v6);
              v22 = v194;
LABEL_43:
              v20 = v232;
LABEL_44:
              v7;
              v33._rawBits = 1;
              v34._rawBits = (v20 << 16) | 1;
              v35._rawBits = _StringGuts.validateScalarRange(_:)(v33, v34, 0xD00000000000001CLL, v7)._rawBits;
              if (v35._rawBits < 0x10000)
              {
                v35._rawBits |= 3;
              }

              if (v35._rawBits >> 16 || v36._rawBits >> 16 != v20)
              {
                v9 = specialized static String._copying(_:)(v35._rawBits, v36._rawBits, 0xD00000000000001CLL, v7);
                v1 = v39;
                v7;
              }

              else
              {
                v9 = 0xD00000000000001CLL;
                v1 = (0x800000018066DAB0 | 0x8000000000000000);
              }

              if ((*&v1 & 0x2000000000000000) == 0)
              {
                goto LABEL_312;
              }

              *&v1;
              while (1)
              {
                v40 = HIBYTE(v22) & 0xF;
                v41 = HIBYTE(*&v1) & 0xFLL;
                if ((v41 + v40) > 0xF)
                {
                  goto LABEL_261;
                }

                v7;
                if (v41)
                {
                  v42 = 0;
                  v43 = 0;
                  v44 = 8 * v40;
                  do
                  {
                    v45 = v40 + v43;
                    v46 = v43 >= 8;
                    v47 = v43 + 1;
                    v48 = *&v1 >> (v42 & 0x38);
                    if (!v46)
                    {
                      v48 = *&v9 >> v42;
                    }

                    v49 = (v48 << ((v44 + v42) & 0x38)) | ((-255 << ((v44 + v42) & 0x38)) - 1) & v22;
                    v50 = (v48 << (v44 + v42)) | ((-255 << (v44 + v42)) - 1) & *&v5;
                    if (v45 <= 7)
                    {
                      v5 = v50;
                    }

                    else
                    {
                      v22 = v49;
                    }

                    v42 += 8;
                    v43 = v47;
                  }

                  while (v41 != v47);
                }

                v6;
                v7;
                v51 = 0xA000000000000000;
                if (!(*&v5 & 0x8080808080808080 | v22 & 0x80808080808080))
                {
                  v51 = 0xE000000000000000;
                }

                v235 = v5;
                v236 = v51 & 0xFF00000000000000 | ((v41 + v40) << 56) | v22 & 0xFFFFFFFFFFFFFFLL;
                a1 = v231;
LABEL_83:
                TypeName = swift_getTypeName(a1, 0);
                if (v62 < 0)
                {
LABEL_291:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v5 = TypeName;
                a1 = v62;
                v7 = 0;
                if (_allASCII(_:)(TypeName, v62))
                {
                  v64 = 1;
LABEL_86:
                  if (!a1)
                  {
                    goto LABEL_90;
                  }

                  if (a1 > 15)
                  {
                    a1 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(*&v5, a1, a1, v64 & 1);
                    v1 = *(a1 + 24);
                    goto LABEL_91;
                  }

                  v120 = a1 - 8;
                  v121 = 8;
                  if (a1 < 8)
                  {
                    v121 = a1;
                  }

                  v122 = v121 - 1;
                  if ((v121 - 1) >= 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v122 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if (v122 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    __break(1u);
LABEL_329:
                    v218 = _StringObject.sharedUTF8.getter(*&v1, a1);
                    if (v219 < v230)
                    {
                      goto LABEL_291;
                    }

                    goto LABEL_346;
                  }

                  if (a1 >= 4)
                  {
                    v123 = v121 & 0xC;
                    v63.i32[0] = **&v5;
                    v131 = vmovl_u16(*&vmovl_u8(v63));
                    v132.i64[0] = v131.u32[0];
                    v132.i64[1] = v131.u32[1];
                    v133.i64[0] = 255;
                    v133.i64[1] = 255;
                    v134 = vandq_s8(v132, v133);
                    v132.i64[0] = v131.u32[2];
                    v132.i64[1] = v131.u32[3];
                    v135 = vshlq_u64(vandq_s8(v132, v133), xmmword_18071DBA0);
                    v136.i32[1] = 0;
                    v137 = vshlq_u64(v134, xmmword_18071DBB0);
                    if (v123 != 4)
                    {
                      v136.i32[0] = *(*&v5 + 4);
                      v138 = vmovl_u16(*&vmovl_u8(v136));
                      v139.i64[0] = v138.u32[2];
                      v139.i64[1] = v138.u32[3];
                      v140 = vandq_s8(v139, v133);
                      v139.i64[0] = v138.u32[0];
                      v139.i64[1] = v138.u32[1];
                      v135 = vorrq_s8(vshlq_u64(v140, xmmword_18071DBD0), v135);
                      v137 = vorrq_s8(vshlq_u64(vandq_s8(v139, v133), xmmword_18071DBC0), v137);
                    }

                    v141 = vorrq_s8(v137, v135);
                    v1 = vorr_s8(*v141.i8, *&vextq_s8(v141, v141, 8uLL));
                    if (v121 != v123)
                    {
                      v124 = 8 * v123;
                      goto LABEL_208;
                    }
                  }

                  else
                  {
                    v123 = 0;
                    v124 = 0;
                    v1 = 0;
LABEL_208:
                    v142 = v121 - v123;
                    v143 = (*&v5 + v123);
                    do
                    {
                      v144 = *v143++;
                      *&v1 |= v144 << (v124 & 0x38);
                      v124 += 8;
                      --v142;
                    }

                    while (v142);
                  }

                  if (a1 < 9)
                  {
                    v146 = 0;
                  }

                  else
                  {
                    v145 = 0;
                    v146 = 0;
                    v147 = (*&v5 + 8);
                    do
                    {
                      v148 = *v147++;
                      v146 |= v148 << v145;
                      v145 += 8;
                      --v120;
                    }

                    while (v120);
                  }

                  v149 = 0xA000000000000000;
                  if (((v146 | *&v1) & 0x8080808080808080) == 0)
                  {
                    v149 = 0xE000000000000000;
                  }

                  a1 = v149 | (a1 << 56) | v146;
                  goto LABEL_91;
                }

                if (!a1)
                {
LABEL_90:
                  v1 = 0;
                  a1 = 0xE000000000000000;
                  goto LABEL_91;
                }

                v6 = 0;
                v80 = (*&v5 + a1);
                v64 = 1;
                v81 = v5;
                v82 = v5;
                while (1)
                {
                  v84 = *v82++;
                  v83 = v84;
                  if ((v84 & 0x80000000) == 0)
                  {
                    v85 = 1;
                    goto LABEL_126;
                  }

                  if ((v83 + 11) <= 0xCCu)
                  {
                    LOBYTE(v233) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v83);
                    goto LABEL_166;
                  }

                  if (v83 > 0xDFu)
                  {
                    break;
                  }

                  if (v82 == v80 || (*v82 & 0xC0) != 0x80)
                  {
LABEL_334:
                    v223 = 4;
                    goto LABEL_335;
                  }

                  v64 = 0;
                  v82 = v81 + 2;
                  v85 = 2;
LABEL_126:
                  v6 += v85;
                  v81 = v82;
                  if (v82 == v80)
                  {
                    goto LABEL_86;
                  }
                }

                if (v83 == 224)
                {
                  if (v82 == v80)
                  {
                    goto LABEL_334;
                  }

                  if (v81[1] - 192 < 0xFFFFFFE0)
                  {
                    goto LABEL_338;
                  }

                  goto LABEL_150;
                }

                if (v83 <= 0xECu)
                {
                  goto LABEL_148;
                }

                if (v83 == 237)
                {
                  if (v82 == v80)
                  {
                    goto LABEL_334;
                  }

                  v86 = v81[1];
                  if (v86 > 0x9F || (v86 & 0xC0) != 0x80)
                  {
                    v223 = 1;
                    goto LABEL_335;
                  }

                  goto LABEL_150;
                }

                if (v83 <= 0xEFu)
                {
LABEL_148:
                  if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
                  {
                    goto LABEL_334;
                  }

LABEL_150:
                  if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80)
                  {
                    goto LABEL_334;
                  }

                  v64 = 0;
                  v82 = v81 + 3;
                  v85 = 3;
                  goto LABEL_126;
                }

                if (v83 == 240)
                {
                  break;
                }

                if (v83 <= 0xF3u)
                {
                  if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
                  {
                    goto LABEL_334;
                  }

LABEL_160:
                  if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80 || v81 + 3 == v80 || (v81[3] & 0xC0) != 0x80)
                  {
                    goto LABEL_334;
                  }

                  v64 = 0;
                  v82 = v81 + 4;
                  v85 = 4;
                  goto LABEL_126;
                }

                if (v82 == v80)
                {
                  goto LABEL_334;
                }

                v87 = v81[1];
                if (v87 <= 0x8F && (v87 & 0xC0) == 0x80)
                {
                  goto LABEL_160;
                }

                v223 = 2;
LABEL_335:
                LOBYTE(v233) = v223;
LABEL_166:
                swift_willThrowTypedImpl(&v233, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
                v88 = specialized Collection.subscript.getter(v6, *&v5, a1);
                v11 = findInvalidRange #1 (_:) in validateUTF8(_:)(v88, v89, v90, v91);
                v233 = 0;
                v234 = 0xE000000000000000;
                if (__OFADD__(a1, 15))
                {
                  __break(1u);
LABEL_317:
                  __break(1u);
                  goto LABEL_318;
                }

                v1 = v92;
                _StringGuts.reserveCapacity(_:)(a1 + 15);
                v93 = v11;
                while (2)
                {
                  v94 = specialized Collection.subscript.getter(v93, *&v5, a1);
                  v98 = v233 & 0xFFFFFFFFFFFFLL;
                  if ((v234 & 0x2000000000000000) != 0)
                  {
                    v98 = HIBYTE(v234) & 0xF;
                  }

                  v15 = __OFADD__(v98, a1);
                  v99 = v98 + a1;
                  if (v15)
                  {
                    __break(1u);
LABEL_195:
                    __break(1u);
                    goto LABEL_196;
                  }

                  v100 = v94;
                  if (__OFADD__(v99, 3))
                  {
                    goto LABEL_195;
                  }

                  v101 = v95;
                  v102 = v96;
                  v103 = v97;
                  _StringGuts.reserveCapacity(_:)(v99 + 3);
                  v104 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v100, v101, v102, v103);
                  v105 = (v234 & 0xFFFFFFFFFFFFFFFLL);
                  __StringStorage.appendInPlace(_:isASCII:)(v104, v106, 0);
                  v233 = v105[3];
                  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v233);
                  v107 = specialized Collection.subscript.getter(*&v1, *&v5, a1);
                  v5 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v107, v108, v109, v110);
                  a1 = v111;
                  if (validateUTF8(_:)(*&v5, v111) < 0)
                  {
                    v1 = v112;
                    if (!a1)
                    {
                      goto LABEL_305;
                    }

                    continue;
                  }

                  break;
                }

                while (2)
                {
                  _StringGuts.appendInPlace(_:isASCII:)(*&v5, a1, 0);
LABEL_305:
                  v1 = v233;
                  a1 = v234;
LABEL_91:
                  v5 = v235;
                  v6 = v236;
                  v65 = HIBYTE(v236) & 0xF;
                  v16 = v235 & 0xFFFFFFFFFFFFLL;
                  if ((v236 & 0x2000000000000000) != 0)
                  {
                    v13 = HIBYTE(v236) & 0xF;
                  }

                  else
                  {
                    v13 = v235 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v13 && (v235 & ~v236 & 0x2000000000000000) == 0)
                  {
                    v236;
                    v235 = v1;
                    v236 = a1;
                    goto LABEL_231;
                  }

                  v66 = (a1 & 0x2000000000000000) == 0;
                  v11 = HIBYTE(a1) & 0xF;
                  if ((v236 & 0x2000000000000000) == 0)
                  {
                    v67 = *&v1 & 0xFFFFFFFFFFFFLL;
                    v9 = (HIBYTE(a1) & 0xF);
                    if ((a1 & 0x2000000000000000) != 0)
                    {
                      goto LABEL_103;
                    }

LABEL_102:
                    v9 = v67;
                    goto LABEL_103;
                  }

                  if ((a1 & 0x2000000000000000) == 0)
                  {
                    v67 = *&v1 & 0xFFFFFFFFFFFFLL;
                    v66 = 1;
                    goto LABEL_102;
                  }

                  v119 = v65 + v11;
                  if (v65 + v11 < 0x10)
                  {
                    if (v11)
                    {
                      v150 = 0;
                      v151 = 0;
                      v152 = 8 * v65;
                      v130 = v236;
                      do
                      {
                        v153 = v65 + v151;
                        v46 = v151 >= 8;
                        v154 = v151 + 1;
                        v155 = a1 >> (v150 & 0x38);
                        if (!v46)
                        {
                          v155 = *&v1 >> v150;
                        }

                        v156 = (v155 << ((v152 + v150) & 0x38)) | ((-255 << ((v152 + v150) & 0x38)) - 1) & v130;
                        v157 = (v155 << (v152 + v150)) | ((-255 << (v152 + v150)) - 1) & *&v5;
                        if (v153 <= 7)
                        {
                          v5 = v157;
                        }

                        else
                        {
                          v130 = v156;
                        }

                        v150 += 8;
                        v151 = v154;
                      }

                      while (v11 != v154);
                    }

                    else
                    {
                      v130 = v236;
                    }

                    v236;
                    a1;
                    v158 = 0xA000000000000000;
                    if (!(*&v5 & 0x8080808080808080 | v130 & 0x80808080808080))
                    {
                      v158 = 0xE000000000000000;
                    }

                    v235 = v5;
                    v236 = v158 & 0xFF00000000000000 | (v119 << 56) | v130 & 0xFFFFFFFFFFFFFFLL;
                    goto LABEL_231;
                  }

                  v66 = 0;
                  v67 = *&v1 & 0xFFFFFFFFFFFFLL;
                  v9 = (HIBYTE(a1) & 0xF);
LABEL_103:
                  LODWORD(v231) = v66;
                  v230 = v67;
                  v232 = v9;
                  if ((a1 & 0x1000000000000000) != 0)
                  {
LABEL_298:
                    swift_bridgeObjectRetain_n(a1, 2);
                    v202._rawBits = 1;
                    v203._rawBits = (*&v9 << 16) | 1;
                    v204._rawBits = _StringGuts.validateScalarRange(_:)(v202, v203, *&v1, a1)._rawBits;
                    if (v204._rawBits < 0x10000)
                    {
                      v204._rawBits |= 3;
                    }

                    v9 = String.UTF8View.distance(from:to:)(v204, v205);
                    a1;
                    if ((v6 & 0x1000000000000000) == 0)
                    {
                      goto LABEL_105;
                    }
                  }

                  else
                  {
                    a1;
                    if ((v6 & 0x1000000000000000) == 0)
                    {
LABEL_105:
                      v15 = __OFADD__(v13, *&v9);
                      v69 = v13 + *&v9;
                      if (!v15)
                      {
                        break;
                      }

                      goto LABEL_303;
                    }
                  }

                  v206 = String.UTF8View._foreignCount()();
                  v69 = v206 + *&v9;
                  if (__OFADD__(v206, *&v9))
                  {
LABEL_303:
                    __break(1u);
                    continue;
                  }

                  break;
                }

                if ((*&v5 & ~v6 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
                {
                  if (v69 <= 15)
                  {
                    if ((v6 & 0x2000000000000000) != 0)
                    {
                      goto LABEL_176;
                    }

LABEL_112:
                    if ((v6 & 0x1000000000000000) != 0)
                    {
                      v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v6);
                      v11 = v195;
                      goto LABEL_177;
                    }

                    v72 = v232;
                    if ((*&v5 & 0x1000000000000000) != 0)
                    {
                      v73 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v73 = _StringObject.sharedUTF8.getter(*&v5, v6);
                      v16 = v221;
                    }

                    closure #1 in _StringGuts._convertedToSmall()(v73, v16, &v233, v68);
                    if (!v7)
                    {
                      v5 = v233;
                      v11 = v234;
                      goto LABEL_178;
                    }

                    goto LABEL_345;
                  }

LABEL_118:
                  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v69, *&v9);
                  if ((a1 & 0x1000000000000000) == 0)
                  {
                    if (v231)
                    {
                      if ((*&v1 & 0x1000000000000000) == 0)
                      {
                        goto LABEL_329;
                      }

                      v74 = (a1 & 0xFFFFFFFFFFFFFFFLL) + 32;
                      v75 = v230;
                      v76 = v230;
                      goto LABEL_122;
                    }

                    v79 = (a1 >> 62) & 1;
                    v233 = v1;
                    v234 = a1 & 0xFFFFFFFFFFFFFFLL;
                    v77 = &v233;
                    v78 = v11;
                    goto LABEL_219;
                  }

LABEL_196:
                  _StringGuts._foreignAppendInPlace(_:)(*&v1, a1, 0, v232);
                  goto LABEL_220;
                }

                v70 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v6);
                if (v71)
                {
                  goto LABEL_261;
                }

                if (v69 > 15)
                {
                  goto LABEL_118;
                }

                if ((v6 & 0x2000000000000000) == 0)
                {
                  if (v70 < *&v9)
                  {
                    goto LABEL_112;
                  }

                  goto LABEL_118;
                }

LABEL_176:
                v11 = v6;
LABEL_177:
                v72 = v232;
LABEL_178:
                a1;
                v113._rawBits = 1;
                v114._rawBits = (v72 << 16) | 1;
                v115._rawBits = _StringGuts.validateScalarRange(_:)(v113, v114, *&v1, a1)._rawBits;
                if (v115._rawBits < 0x10000)
                {
                  v115._rawBits |= 3;
                }

                if (v115._rawBits >> 16)
                {
                  v117 = 0;
                }

                else
                {
                  v117 = v116._rawBits >> 16 == v72;
                }

                if (v117)
                {
                  v9 = a1;
                }

                else
                {
                  v1 = specialized static String._copying(_:)(v115._rawBits, v116._rawBits, *&v1, a1);
                  v9 = v118;
                  a1;
                }

                if ((*&v9 & 0x2000000000000000) != 0)
                {
                  *&v9;
                  goto LABEL_200;
                }

LABEL_318:
                if ((*&v9 & 0x1000000000000000) != 0)
                {
                  v1 = _StringGuts._foreignConvertedToSmall()(*&v1, *&v9);
                  v227 = v226;
                  *&v9;
                  v9 = v227;
LABEL_200:
                  v125 = specialized _SmallString.init(_:appending:)(*&v5, v11, *&v1, *&v9);
                  if (v127)
                  {
                    goto LABEL_261;
                  }

                  v128 = v125;
                  v129 = v126;
                  v6;
                  swift_bridgeObjectRelease_n(a1, 2);
                  v235 = v128;
                  v236 = v129;
                }

                else
                {
                  if ((*&v1 & 0x1000000000000000) != 0)
                  {
                    v214 = ((*&v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v215 = *&v1 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v214 = _StringObject.sharedUTF8.getter(*&v1, *&v9);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v214, v215, &v233, v26);
                  if (!v7)
                  {
                    *&v9;
                    v1 = v233;
                    v9 = v234;
                    goto LABEL_200;
                  }

                  do
                  {
LABEL_345:
                    v7;
                    __break(1u);
LABEL_346:
                    v74 = v218;
                    v76 = v219;
                    v75 = v230;
LABEL_122:
                    v77 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v75, v74, v76);
                    v79 = *&v1 >> 63;
LABEL_219:
                    closure #1 in _StringGuts.append(_:)(v77, v78, &v235, v79);
                  }

                  while (v7);
LABEL_220:
                  swift_bridgeObjectRelease_n(a1, 2);
                }

LABEL_231:
                a1 = 0x800000018066DAD0 | 0x8000000000000000;
                v5 = v235;
                v6 = v236;
                v159 = HIBYTE(v236) & 0xF;
                v9 = (v235 & 0xFFFFFFFFFFFFLL);
                if ((v236 & 0x2000000000000000) != 0)
                {
                  v160 = HIBYTE(v236) & 0xF;
                }

                else
                {
                  v160 = v235 & 0xFFFFFFFFFFFFLL;
                }

                if (!v160 && (v235 & ~v236 & 0x2000000000000000) == 0)
                {
                  v236;
                  v235 = 0xD00000000000009CLL;
                  v236 = 0x800000018066DAD0 | 0x8000000000000000;
                  goto LABEL_287;
                }

                v22 = 0x800000018066DAD0 & 0x2000000000000000;
                v1 = ((0x800000018066DAD0 >> 56) & 0xF);
                if ((0x800000018066DAD0 & 0x2000000000000000 & v236) != 0)
                {
                  v161 = v159 + *&v1;
                  if (v159 + *&v1 <= 0xF)
                  {
                    if (v1)
                    {
                      v184 = 0;
                      v185 = 0;
                      v186 = 8 * v159;
                      v181 = v236;
                      do
                      {
                        v187 = v159 + v185;
                        v46 = v185 >= 8;
                        v188 = v185 + 1;
                        v189 = a1 >> (v184 & 0x38);
                        if (!v46)
                        {
                          v189 = 0xD00000000000009CLL >> v184;
                        }

                        v190 = (v189 << ((v186 + v184) & 0x38)) | ((-255 << ((v186 + v184) & 0x38)) - 1) & v181;
                        v191 = (v189 << (v186 + v184)) | ((-255 << (v186 + v184)) - 1) & *&v5;
                        if (v187 <= 7)
                        {
                          v5 = v191;
                        }

                        else
                        {
                          v181 = v190;
                        }

                        v184 += 8;
                        v185 = v188;
                      }

                      while (*&v1 != v188);
                    }

                    else
                    {
                      v181 = v236;
                    }

                    v236;
                    a1;
                    v192 = 0xA000000000000000;
                    if (!(*&v5 & 0x8080808080808080 | v181 & 0x80808080808080))
                    {
                      v192 = 0xE000000000000000;
                    }

                    v235 = v5;
                    v236 = v192 & 0xFF00000000000000 | (v161 << 56) | v181 & 0xFFFFFFFFFFFFFFLL;
                    goto LABEL_287;
                  }
                }

                if (v22)
                {
                  v162 = (0x800000018066DAD0 >> 56) & 0xF;
                }

                else
                {
                  v162 = 156;
                }

                v232 = v162;
                if ((0x800000018066DAD0 & 0x1000000000000000) != 0)
                {
                  swift_bridgeObjectRetain_n(0x800000018066DAD0 | 0x8000000000000000, 2);
                  v207._rawBits = 1;
                  v208._rawBits = (v162 << 16) | 1;
                  v209._rawBits = _StringGuts.validateScalarRange(_:)(v207, v208, 0xD00000000000009CLL, 0x800000018066DAD0 | 0x8000000000000000)._rawBits;
                  if (v209._rawBits < 0x10000)
                  {
                    v209._rawBits |= 3;
                  }

                  v162 = String.UTF8View.distance(from:to:)(v209, v210);
                  0x800000018066DAD0 | 0x8000000000000000;
                  if ((v6 & 0x1000000000000000) == 0)
                  {
                    goto LABEL_244;
                  }
                }

                else
                {
                  0x800000018066DAD0 | 0x8000000000000000;
                  if ((v6 & 0x1000000000000000) == 0)
                  {
LABEL_244:
                    v15 = __OFADD__(v160, v162);
                    v163 = v160 + v162;
                    if (!v15)
                    {
                      goto LABEL_245;
                    }

                    goto LABEL_311;
                  }
                }

                v211 = String.UTF8View._foreignCount()();
                v163 = v211 + v162;
                if (!__OFADD__(v211, v162))
                {
LABEL_245:
                  if ((*&v5 & ~v6 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
                  {
                    v164 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v6);
                    if (v165)
                    {
                      goto LABEL_261;
                    }

                    if (v163 > 15)
                    {
                      goto LABEL_250;
                    }

                    if ((v6 & 0x2000000000000000) == 0)
                    {
                      if (v164 < v162)
                      {
LABEL_279:
                        if ((v6 & 0x1000000000000000) == 0)
                        {
                          v169 = v232;
                          if ((*&v5 & 0x1000000000000000) != 0)
                          {
                            v193 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
                          }

                          else
                          {
                            v193 = _StringObject.sharedUTF8.getter(*&v5, v6);
                            v9 = v222;
                          }

                          closure #1 in _StringGuts._convertedToSmall()(v193, *&v9, &v233, v37);
                          if (v7)
                          {
                            goto LABEL_345;
                          }

                          v5 = v233;
                          v1 = v234;
LABEL_256:
                          0x800000018066DAD0 | 0x8000000000000000;
                          v170._rawBits = 1;
                          v171._rawBits = (v169 << 16) | 1;
                          v172._rawBits = _StringGuts.validateScalarRange(_:)(v170, v171, 0xD00000000000009CLL, 0x800000018066DAD0 | 0x8000000000000000)._rawBits;
                          if (v172._rawBits < 0x10000)
                          {
                            v172._rawBits |= 3;
                          }

                          v174 = Substring.description.getter(v172._rawBits, v173._rawBits, 0xD00000000000009CLL, 0x800000018066DAD0 | 0x8000000000000000);
                          v176 = v175;
                          0x800000018066DAD0 | 0x8000000000000000;
                          if ((v176 & 0x2000000000000000) != 0)
                          {
                            v176;
                          }

                          else if ((v176 & 0x1000000000000000) != 0)
                          {
                            v174 = _StringGuts._foreignConvertedToSmall()(*&v174, v176);
                            v229 = v228;
                            v176;
                            v176 = v229;
                          }

                          else
                          {
                            if ((*&v174 & 0x1000000000000000) != 0)
                            {
                              v216 = ((v176 & 0xFFFFFFFFFFFFFFFLL) + 32);
                              v217 = *&v174 & 0xFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v216 = _StringObject.sharedUTF8.getter(*&v174, v176);
                            }

                            closure #1 in _StringGuts._convertedToSmall()(v216, v217, &v233, v177);
                            if (v7)
                            {
                              goto LABEL_345;
                            }

                            v176;
                            v174 = v233;
                            v176 = v234;
                          }

                          v178 = specialized _SmallString.init(_:appending:)(*&v5, *&v1, *&v174, v176);
                          if ((v180 & 1) == 0)
                          {
                            v182 = v178;
                            v183 = v179;
                            v6;
                            swift_bridgeObjectRelease_n(0x800000018066DAD0 | 0x8000000000000000, 2);
                            v235 = v182;
                            v236 = v183;
                            goto LABEL_287;
                          }

LABEL_261:
                          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                        }

                        v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v6);
                        v1 = v196;
LABEL_255:
                        v169 = v232;
                        goto LABEL_256;
                      }

LABEL_250:
                      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v163, v162);
                      if ((0x800000018066DAD0 & 0x1000000000000000) != 0)
                      {
                        _StringGuts._foreignAppendInPlace(_:)(0xD00000000000009CLL, 0x800000018066DAD0 | 0x8000000000000000, 0, v232);
                      }

                      else
                      {
                        if (v22)
                        {
                          v168 = (0x800000018066DAD0 >> 62) & 1;
                          v233 = 0xD00000000000009CLL;
                          v234 = 0x800000018066DAD0 & 0xFFFFFFFFFFFFF0;
                          v166 = &v233;
                          v167 = (0x800000018066DAD0 >> 56) & 0xF;
                        }

                        else
                        {
                          v166 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 156, (0x800000018066DAD0 & 0xFFFFFFFFFFFFFF0) + 32, 156);
                          LOBYTE(v168) = 1;
                        }

                        closure #1 in _StringGuts.append(_:)(v166, v167, &v235, v168);
                        if (v7)
                        {
                          goto LABEL_345;
                        }
                      }

                      swift_bridgeObjectRelease_n(0x800000018066DAD0 | 0x8000000000000000, 2);
LABEL_287:
                      _assertionFailure(_:_:flags:)("Fatal error", 11, 2, v235, v236, 0);
                    }
                  }

                  else
                  {
                    if (v163 > 15)
                    {
                      goto LABEL_250;
                    }

                    if ((v6 & 0x2000000000000000) == 0)
                    {
                      goto LABEL_279;
                    }
                  }

                  v1 = v6;
                  goto LABEL_255;
                }

LABEL_311:
                __break(1u);
LABEL_312:
                if ((*&v1 & 0x1000000000000000) != 0)
                {
                  v9 = _StringGuts._foreignConvertedToSmall()(*&v9, *&v1);
                  v225 = v224;
                  *&v1;
                  v1 = v225;
                }

                else
                {
                  if ((*&v9 & 0x1000000000000000) != 0)
                  {
                    v212 = ((*&v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v213 = *&v9 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v212 = _StringObject.sharedUTF8.getter(*&v9, *&v1);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v212, v213, &v233, v37);
                  *&v1;
                  v9 = v233;
                  v1 = v234;
                }
              }

              if (v82 == v80)
              {
                goto LABEL_334;
              }

              if (v81[1] - 192 < 0xFFFFFFD0)
              {
LABEL_338:
                v223 = 3;
                goto LABEL_335;
              }

              goto LABEL_160;
            }

LABEL_26:
            a1 = v17 & 0x2000000000000000;
            v23 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v6);
            if ((v24 & 1) != 0 || v23 < v13)
            {
              v9 = v232;
              if (a1)
              {
                swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL);
              }

              v25 = _StringGuts.nativeCapacity.getter(*&v5, v6);
              if (v27)
              {
                v28 = 0;
              }

              else
              {
                v28 = v25;
              }

              if (v28 + 0x4000000000000000 < 0)
              {
                goto LABEL_317;
              }

              v29 = 2 * v28;
              if (v29 > v16)
              {
                v16 = v29;
              }
            }

            else
            {
              v9 = v232;
              if (a1)
              {
                a1 = v231;
                if (swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
                {
                  goto LABEL_38;
                }

                goto LABEL_37;
              }
            }

            a1 = v231;
LABEL_37:
            _StringGuts.grow(_:)(v16);
LABEL_38:
            if ((0x800000018066DAB0 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(0xD00000000000001CLL, 0x800000018066DAB0 | 0x8000000000000000, 0, *&v9);
            }

            else
            {
              if (v1)
              {
                v32 = (0x800000018066DAB0 >> 62) & 1;
                v233 = 0xD00000000000001CLL;
                v234 = 0x800000018066DAB0 & 0xFFFFFFFFFFFFF0;
                v30 = &v233;
                v31 = (0x800000018066DAB0 >> 56) & 0xF;
              }

              else
              {
                v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 28, (0x800000018066DAB0 & 0xFFFFFFFFFFFFFF0) + 32, 28);
                LOBYTE(v32) = 1;
              }

              closure #1 in _StringGuts.append(_:)(v30, v31, &v235, v32);
            }

            swift_bridgeObjectRelease_n(0x800000018066DAB0 | 0x8000000000000000, 2);
            goto LABEL_83;
          }
        }

        else
        {
          if (v16 > 15)
          {
            goto LABEL_26;
          }

          if ((v6 & 0x2000000000000000) == 0)
          {
            goto LABEL_21;
          }
        }

        v22 = v6;
        goto LABEL_43;
      }

LABEL_297:
      __break(1u);
      goto LABEL_298;
    }
  }

  else
  {
    0x800000018066DAB0 | 0x8000000000000000;
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

  v201 = String.UTF8View._foreignCount()();
  v16 = v201 + v13;
  if (!__OFADD__(v201, v13))
  {
    goto LABEL_15;
  }

  goto LABEL_297;
}

uint64_t specialized _NativeSet._unsafeInsertNew(_:at:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v4 = (*(a4 + 48) + 16 * a3);
  *v4 = result;
  v4[1] = a2;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

uint64_t specialized _NativeSet._unsafeInsertNew(_:at:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v3 = *(a3 + 48) + 40 * a2;
  v4 = *(result + 16);
  *v3 = *result;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(result + 32);
  v5 = *(a3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t _NativeSet._unsafeInsertNew(_:at:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(*(a4 - 8) + 32))(*(a3 + 48) + *(*(a4 - 8) + 72) * a2, a1, a4);
  v6 = *(a3 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v8;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v5 + 1, canonical specialized generic type metadata accessor for _SetStorage<ObjectIdentifier>, specialized _NativeSet._unsafeInsertNew(_:));
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = specialized _NativeSet.copy()(canonical specialized generic type metadata accessor for _SetStorage<ObjectIdentifier>);
        a2 = v7;
        goto LABEL_12;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v5 + 1, canonical specialized generic type metadata accessor for _SetStorage<ObjectIdentifier>, specialized _NativeSet._unsafeInsertNew(_:));
    }

    v8 = *v3;
    result = specialized static Hasher._hash(seed:_:)(*(*v3 + 40), v4);
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (*(*(v8 + 48) + 8 * a2) != v4)
      {
        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_15:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for ObjectIdentifier);
    }
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v11 + 16) = v14;
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = specialized _NativeSet.copy()();
        goto LABEL_12;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    v10 = *(v5 + 24);
    v11 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm(v5, v10);
    (*(v11 + 8))(v36, v10, v11);
    v12 = v37;
    v13 = v38;
    __swift_project_boxed_opaque_existential_0Tm(v36, v37);
    v14 = (*(v13 + 40))(v9, v12, v13);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v15 = -1 << *(v8 + 32);
    a2 = v14 & ~v15;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      while (1)
      {
        outlined init with copy of AnyHashable(*(v8 + 48) + 40 * a2, v36);
        v17 = v37;
        v18 = v38;
        __swift_project_boxed_opaque_existential_0Tm(v36, v37);
        (*(v18 + 8))(v33, v17, v18);
        v19 = v34;
        v20 = v35;
        __swift_project_boxed_opaque_existential_0Tm(v33, v34);
        v21 = *(v5 + 24);
        v22 = *(v5 + 32);
        __swift_project_boxed_opaque_existential_0Tm(v5, v21);
        (*(v22 + 8))(v32, v21, v22);
        v23 = (*(v20 + 16))(v32, v19, v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        result = outlined destroy of AnyHashable(v36);
        if (v23)
        {
          break;
        }

        a2 = (a2 + 1) & v16;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_15:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
    }
  }

LABEL_12:
  v24 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = *(v24 + 48) + 40 * a2;
  v26 = *v5;
  v27 = *(v5 + 16);
  *(v25 + 32) = *(v5 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = *(v24 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v24 + 16) = v30;
  return result;
}

{
  v75 = result;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    v8 = *v3;
  }

  else
  {
    v9 = v6 + 1;
    if (a3)
    {
      if (v7 > v6)
      {
        v9 = *(*v3 + 24);
      }

      v10 = specialized static _HashTable.scale(forCapacity:)(v9);
      LOBYTE(v80) = 1;
      v8 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v10, 0x100000000, 0, 1);
      if (*(v5 + 16))
      {
        v11 = 0;
        v12 = (v5 + 56);
        v13 = 1 << *(v5 + 32);
        v14 = -1;
        if (v13 < 64)
        {
          v14 = ~(-1 << v13);
        }

        v15 = v14 & *(v5 + 56);
        v16 = (v13 + 63) >> 6;
        if (v15)
        {
LABEL_11:
          v17 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          goto LABEL_17;
        }

LABEL_12:
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
            v42 = 1 << *(v5 + 32);
            if (v42 >= 64)
            {
              specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v42 + 63) >> 6, (v5 + 56));
            }

            else
            {
              *v12 = -1 << v42;
            }

            *(v5 + 16) = 0;
            goto LABEL_55;
          }

          v19 = v12[v11];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v15 = (v19 - 1) & v19;
LABEL_17:
            v20 = *(v5 + 48) + 40 * (v17 | (v11 << 6));
            v80 = *v20;
            v81 = *(v20 + 16);
            v82 = *(v20 + 32);
            specialized _NativeSet._unsafeInsertNew(_:)(&v80, v8);
            if (v15)
            {
              goto LABEL_11;
            }

            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

LABEL_55:
      v5;
      *v3 = v8;
      v52 = v8[5];
      v53 = *(v75 + 24);
      v54 = *(v75 + 32);
      __swift_project_boxed_opaque_existential_0Tm(v75, v53);
      (*(v54 + 8))(&v80, v53, v54);
      v55 = *(&v81 + 1);
      v56 = v82;
      __swift_project_boxed_opaque_existential_0Tm(&v80, *(&v81 + 1));
      v57 = (*(v56 + 40))(v52, v55, v56);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v80);
      v58 = v8 + 7;
      v59 = -1 << *(v8 + 32);
      a2 = v57 & ~v59;
      if ((*(v8 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a2))
      {
        v60 = ~v59;
        while (1)
        {
          v61 = v8;
          outlined init with copy of AnyHashable(v8[6] + 40 * a2, &v80);
          v62 = *(&v81 + 1);
          v63 = v82;
          __swift_project_boxed_opaque_existential_0Tm(&v80, *(&v81 + 1));
          (*(v63 + 8))(v77, v62, v63);
          v64 = v78;
          v65 = v79;
          __swift_project_boxed_opaque_existential_0Tm(v77, v78);
          v66 = *(v75 + 24);
          v67 = *(v75 + 32);
          __swift_project_boxed_opaque_existential_0Tm(v75, v66);
          (*(v67 + 8))(v76, v66, v67);
          v68 = (*(v65 + 16))(v76, v64, v65);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          result = outlined destroy of AnyHashable(&v80);
          if (v68)
          {
            break;
          }

          a2 = (a2 + 1) & v60;
          v8 = v61;
          if (((*(v58 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

LABEL_65:
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
      }
    }

    else
    {
      if (v7 <= v6)
      {
        v43 = specialized static _HashTable.scale(forCapacity:)(v9);
        LOBYTE(v80) = 1;
        v8 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v43, 0x100000000, 0, 1);
        if (!*(v5 + 16))
        {
          goto LABEL_55;
        }

        v44 = 0;
        v45 = 1 << *(v5 + 32);
        v46 = -1;
        if (v45 < 64)
        {
          v46 = ~(-1 << v45);
        }

        v47 = v46 & *(v5 + 56);
        v48 = (v45 + 63) >> 6;
        if (!v47)
        {
          goto LABEL_45;
        }

        while (1)
        {
          v49 = __clz(__rbit64(v47));
          for (v47 &= v47 - 1; ; v47 = (v51 - 1) & v51)
          {
            outlined init with copy of AnyHashable(*(v5 + 48) + 40 * (v49 | (v44 << 6)), &v80);
            specialized _NativeSet._unsafeInsertNew(_:)(&v80, v8);
            if (v47)
            {
              break;
            }

LABEL_45:
            v50 = v44;
            do
            {
              v44 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                goto LABEL_63;
              }

              if (v44 >= v48)
              {
                goto LABEL_55;
              }

              v51 = *(v5 + 56 + 8 * v44);
              ++v50;
            }

            while (!v51);
            v49 = __clz(__rbit64(v51));
          }
        }
      }

      v21 = *(v5 + 36);
      v22 = *(v5 + 40);
      v23 = *(v5 + 32);
      LOBYTE(v80) = 0;
      v24 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v23, v21, v22, 0);
      v8 = v24;
      if (*(v5 + 16))
      {
        v25 = v24 + 7;
        v26 = ((1 << *(v8 + 32)) + 63) >> 6;
        if (v8 != v5 || v25 >= v5 + 56 + 8 * v26)
        {
          memmove(v25, (v5 + 56), 8 * v26);
        }

        v28 = 0;
        v29 = v8;
        v8[2] = *(v5 + 16);
        v30 = 1 << *(v5 + 32);
        v31 = *(v5 + 56);
        v32 = -1;
        if (v30 < 64)
        {
          v32 = ~(-1 << v30);
        }

        v33 = v32 & v31;
        v34 = (v30 + 63) >> 6;
        if ((v32 & v31) == 0)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v35 = __clz(__rbit64(v33));
          for (v33 &= v33 - 1; ; v33 = (v37 - 1) & v37)
          {
            v38 = 40 * (v35 | (v28 << 6));
            outlined init with copy of AnyHashable(*(v5 + 48) + v38, &v80);
            v39 = v29[6] + v38;
            v40 = v80;
            v41 = v81;
            *(v39 + 32) = v82;
            *v39 = v40;
            *(v39 + 16) = v41;
            if (v33)
            {
              break;
            }

LABEL_31:
            v36 = v28;
            v8 = v29;
            do
            {
              v28 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_62;
              }

              if (v28 >= v34)
              {
                goto LABEL_52;
              }

              v37 = *(v5 + 56 + 8 * v28);
              ++v36;
            }

            while (!v37);
            v35 = __clz(__rbit64(v37));
          }
        }
      }

LABEL_52:
      result = v5;
      *v3 = v8;
    }
  }

LABEL_59:
  v8[(a2 >> 6) + 7] |= 1 << a2;
  v69 = v8[6] + 40 * a2;
  v70 = *v75;
  v71 = *(v75 + 16);
  *(v69 + 32) = *(v75 + 32);
  *v69 = v70;
  *(v69 + 16) = v71;
  v72 = v8[2];
  v73 = __OFADD__(v72, 1);
  v74 = v72 + 1;
  if (v73)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v8[2] = v74;
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v5 + 1, canonical specialized generic type metadata accessor for _SetStorage<Int>, specialized _NativeSet._unsafeInsertNew(_:));
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = specialized _NativeSet.copy()(canonical specialized generic type metadata accessor for _SetStorage<Int>);
        a2 = v7;
        goto LABEL_12;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v5 + 1, canonical specialized generic type metadata accessor for _SetStorage<Int>, specialized _NativeSet._unsafeInsertNew(_:));
    }

    v8 = *v3;
    result = specialized static Hasher._hash(seed:_:)(*(*v3 + 40), v4);
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (*(*(v8 + 48) + 8 * a2) != v4)
      {
        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_15:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int);
    }
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v11 + 16) = v14;
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_21;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = _swift_stdlib_Hashing_parameters ^ *(*v4 + 40);
  v24 = 0u;
  v25 = 0u;
  v23[0] = 0;
  v23[1] = v11 ^ 0x736F6D6570736575;
  v23[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v23[3] = v11 ^ 0x6C7967656E657261;
  v23[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  String.hash(into:)(v23, v7, a2);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      result = *v14;
      v15 = v14[1];
      v16 = *v14 == v7 && v15 == a2;
      if (v16 || ((~v15 & 0x6000000000000000) == 0 ? (v17 = (a2 & 0x6000000000000000) == 0x6000000000000000) : (v17 = 0), !v17 && (result = _stringCompareInternal(_:_:expecting:)(result, v15, v7, a2, 0), (result & 1) != 0)))
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_21:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v7;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v33 = v4;
  v34 = v8;
  if (v13 <= v12 || (v9 & 1) == 0)
  {
    if (v9)
    {
      _NativeSet.resize(capacity:)(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        _NativeSet.copy()();
        goto LABEL_12;
      }

      _NativeSet.copyAndResize(capacity:)(v12 + 1);
    }

    v14 = *v4;
    v15 = *(*v4 + 40);
    v16 = *(*(a4 + 24) + 32);
    v35 = *(a4 + 24);
    v17 = v16(v15, v7);
    v18 = v14 + 56;
    v36 = v14;
    v19 = -1 << *(v14 + 32);
    a2 = v17 & ~v19;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v23 = *(v8 + 16);
      v22 = v8 + 16;
      v21 = v23;
      v24 = *(v22 + 56);
      while (1)
      {
        v21(v11, *(v36 + 48) + v24 * a2, v7);
        v25 = (*(*(v35 + 8) + 8))(v11, v37, v7);
        (*(v22 - 8))(v11, v7);
        if (v25)
        {
          break;
        }

        a2 = (a2 + 1) & v20;
        if (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_15:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v7);
    }
  }

LABEL_12:
  v26 = v34;
  v27 = *v33;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v37, v7);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v27 + 16) = v31;
  return result;
}

__n128 specialized _NativeSet.update(with:isUnique:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a1, v9);
  (*(v10 + 8))(&v111, v9, v10);
  v11 = *(&v112 + 1);
  v12 = v113;
  __swift_project_boxed_opaque_existential_0Tm(&v111, *(&v112 + 1));
  v13 = v11;
  v14 = v7;
  v15 = (*(v12 + 40))(v8, v13, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(&v111);
  v16 = -1 << *(v7 + 32);
  v17 = v15 & ~v16;
  v104 = a3;
  __src = (v7 + 56);
  if ((*(v7 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v101 = a2;
    v18 = ~v16;
    while (1)
    {
      v19 = v14;
      outlined init with copy of AnyHashable(*(v14 + 48) + 40 * v17, &v111);
      v20 = *(&v112 + 1);
      v21 = v113;
      __swift_project_boxed_opaque_existential_0Tm(&v111, *(&v112 + 1));
      (*(v21 + 8))(v108, v20, v21);
      v22 = v109;
      v23 = v110;
      __swift_project_boxed_opaque_existential_0Tm(v108, v109);
      v25 = *(a1 + 24);
      v24 = *(a1 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a1, v25);
      (*(v24 + 8))(v107, v25, v24);
      v26 = (*(v23 + 16))(v107, v22, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      outlined destroy of AnyHashable(&v111);
      if (v26)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      v14 = v19;
      if (((*(__src->i64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v27 = 1;
        goto LABEL_8;
      }
    }

    v27 = 0;
    v14 = v19;
LABEL_8:
    v28 = v26 ^ 1;
    a2 = v101;
  }

  else
  {
    v28 = 1;
    v27 = 1;
  }

  v29 = *(v14 + 16);
  v30 = v29 + v27;
  if (__OFADD__(v29, v27))
  {
    goto LABEL_78;
  }

  v31 = *(v14 + 24);
  if (v31 < v30 || (a2 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      if (v31 < v30)
      {
        v66 = specialized static _HashTable.scale(forCapacity:)(v30);
        LOBYTE(v111) = 1;
        v34 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v66, 0x100000000, 0, 1);
        v102 = v28;
        if (!*(v14 + 16))
        {
          goto LABEL_66;
        }

        v67 = 0;
        v68 = 1 << *(v14 + 32);
        v69 = *(v14 + 56);
        v70 = -1;
        if (v68 < 64)
        {
          v70 = ~(-1 << v68);
        }

        v71 = v70 & v69;
        v72 = (v68 + 63) >> 6;
        if ((v70 & v69) == 0)
        {
          goto LABEL_55;
        }

        while (1)
        {
          v73 = __clz(__rbit64(v71));
          for (v71 &= v71 - 1; ; v71 = (v75 - 1) & v75)
          {
            outlined init with copy of AnyHashable(*(v14 + 48) + 40 * (v73 | (v67 << 6)), &v111);
            specialized _NativeSet._unsafeInsertNew(_:)(&v111, v34);
            if (v71)
            {
              break;
            }

LABEL_55:
            v74 = v67;
            do
            {
              v67 = v74 + 1;
              if (__OFADD__(v74, 1))
              {
                goto LABEL_77;
              }

              if (v67 >= v72)
              {
                goto LABEL_66;
              }

              v75 = __src->u64[v67];
              ++v74;
            }

            while (!v75);
            v73 = __clz(__rbit64(v75));
          }
        }
      }

      v45 = *(v14 + 36);
      v46 = *(v14 + 40);
      v47 = *(v14 + 32);
      LOBYTE(v111) = 0;
      v48 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v47, v45, v46, 0);
      v32 = v48;
      if (*(v14 + 16))
      {
        v49 = (v48 + 7);
        v50 = ((1 << *(v32 + 32)) + 63) >> 6;
        if (v32 != v14 || v49 >= &__src->i8[8 * v50])
        {
          memmove(v49, __src, 8 * v50);
        }

        v52 = 0;
        v32[2] = *(v14 + 16);
        v53 = 1 << *(v14 + 32);
        v54 = *(v14 + 56);
        v55 = -1;
        if (v53 < 64)
        {
          v55 = ~(-1 << v53);
        }

        v56 = v55 & v54;
        v57 = (v53 + 63) >> 6;
        if ((v55 & v54) == 0)
        {
          goto LABEL_41;
        }

        while (1)
        {
          v58 = __clz(__rbit64(v56));
          for (v56 &= v56 - 1; ; v56 = (v60 - 1) & v60)
          {
            v61 = 40 * (v58 | (v52 << 6));
            outlined init with copy of AnyHashable(*(v14 + 48) + v61, &v111);
            v62 = v32[6] + v61;
            v63 = v111;
            v64 = v112;
            *(v62 + 32) = v113;
            *v62 = v63;
            *(v62 + 16) = v64;
            if (v56)
            {
              break;
            }

LABEL_41:
            v59 = v52;
            do
            {
              v52 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                goto LABEL_76;
              }

              if (v52 >= v57)
              {
                goto LABEL_62;
              }

              v60 = __src->u64[v52];
              ++v59;
            }

            while (!v60);
            v58 = __clz(__rbit64(v60));
          }
        }
      }

LABEL_62:
      v14;
      *v103 = v32;
      if ((v28 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    if (v31 > v30)
    {
      v30 = *(v14 + 24);
    }

    v33 = specialized static _HashTable.scale(forCapacity:)(v30);
    LOBYTE(v111) = 1;
    v34 = _ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(v33, 0x100000000, 0, 1);
    v102 = v28;
    if (!*(v14 + 16))
    {
LABEL_66:
      v14;
      *v103 = v34;
      v76 = v34[5];
      v77 = *(a1 + 24);
      v78 = *(a1 + 32);
      __swift_project_boxed_opaque_existential_0Tm(a1, v77);
      (*(v78 + 8))(&v111, v77, v78);
      v79 = *(&v112 + 1);
      v80 = v113;
      __swift_project_boxed_opaque_existential_0Tm(&v111, *(&v112 + 1));
      v81 = (*(v80 + 40))(v76, v79, v80);
      __swift_destroy_boxed_opaque_existential_1Tm(&v111);
      v82 = v34 + 7;
      __srca = v34;
      v83 = -1 << *(v34 + 32);
      v17 = v81 & ~v83;
      if ((*(v82 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v84 = ~v83;
        while (1)
        {
          outlined init with copy of AnyHashable(__srca[6] + 40 * v17, &v111);
          v85 = *(&v112 + 1);
          v86 = v113;
          __swift_project_boxed_opaque_existential_0Tm(&v111, *(&v112 + 1));
          (*(v86 + 8))(v108, v85, v86);
          v87 = v109;
          v88 = v110;
          __swift_project_boxed_opaque_existential_0Tm(v108, v109);
          v89 = *(a1 + 24);
          v90 = *(a1 + 32);
          __swift_project_boxed_opaque_existential_0Tm(a1, v89);
          (*(v90 + 8))(v107, v89, v90);
          LOBYTE(v87) = (*(v88 + 16))(v107, v87, v88);
          __swift_destroy_boxed_opaque_existential_1Tm(v107);
          __swift_destroy_boxed_opaque_existential_1Tm(v108);
          outlined destroy of AnyHashable(&v111);
          if (v87)
          {
            break;
          }

          v17 = (v17 + 1) & v84;
          if (((*(v82 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        a3 = v104;
        v32 = __srca;
        if ((v102 & 1) == 0)
        {
          goto LABEL_74;
        }

LABEL_80:
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable);
      }

LABEL_70:
      a3 = v104;
      v32 = __srca;
      if ((v102 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_71;
    }

    v35 = 0;
    v36 = 1 << *(v14 + 32);
    v37 = *(v14 + 56);
    v38 = -1;
    if (v36 < 64)
    {
      v38 = ~(-1 << v36);
    }

    v39 = v38 & v37;
    v40 = (v36 + 63) >> 6;
    if ((v38 & v37) != 0)
    {
LABEL_21:
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      goto LABEL_27;
    }

LABEL_22:
    v42 = v35;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v40)
      {
        v65 = 1 << *(v14 + 32);
        if (v65 >= 64)
        {
          specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v65 + 63) >> 6, __src);
        }

        else
        {
          __src->i64[0] = -1 << v65;
        }

        *(v14 + 16) = 0;
        goto LABEL_66;
      }

      v43 = __src->u64[v35];
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v39 = (v43 - 1) & v43;
LABEL_27:
        v44 = *(v14 + 48) + 40 * (v41 | (v35 << 6));
        v111 = *v44;
        v112 = *(v44 + 16);
        v113 = *(v44 + 32);
        specialized _NativeSet._unsafeInsertNew(_:)(&v111, v34);
        if (v39)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v32 = v14;
  if (v28)
  {
LABEL_71:
    v32[(v17 >> 6) + 7] |= 1 << v17;
    v91 = v32[6] + 40 * v17;
    result = *a1;
    v93 = *(a1 + 16);
    *(v91 + 32) = *(a1 + 32);
    *v91 = result;
    *(v91 + 16) = v93;
    v94 = v32[2];
    v95 = __OFADD__(v94, 1);
    v96 = v94 + 1;
    if (!v95)
    {
      v32[2] = v96;
      *(a3 + 32) = 0;
      result.n128_u64[0] = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    goto LABEL_79;
  }

LABEL_74:
  v97 = v32[6] + 40 * v17;
  v98 = *(v97 + 16);
  *a3 = *v97;
  *(a3 + 16) = v98;
  *(a3 + 32) = *(v97 + 32);
  v99 = v32[6] + 40 * v17;
  result = *a1;
  v100 = *(a1 + 16);
  *(v99 + 32) = *(a1 + 32);
  *v99 = result;
  *(v99 + 16) = v100;
  return result;
}

uint64_t _NativeSet.update(with:isUnique:)@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v60) = a2;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = *(*v5 + 40);
  v16 = *(v15 + 24);
  v17 = *(v16 + 32);
  v62 = v16;
  v63 = a1;
  v55 = v17;
  v56 = v16 + 32;
  v18 = (v17)(v14, v9);
  v19 = v13;
  v20 = v13 + 56;
  v21 = -1 << *(v13 + 32);
  v22 = v18 & ~v21;
  v61 = v20;
  v23 = *(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22;
  v58 = v10;
  v59 = a4;
  v57 = v5;
  if (v23)
  {
    v54 = a3;
    v24 = ~v21;
    v25 = v10 + 16;
    v26 = *(v10 + 16);
    v27 = *(v25 + 56);
    while (1)
    {
      v28 = v19;
      v26(v12, v19[6] + v27 * v22, v9);
      v29 = (*(*(v62 + 8) + 8))(v12, v63, v9);
      (*(v25 - 8))(v12, v9);
      if (v29)
      {
        break;
      }

      v22 = (v22 + 1) & v24;
      v19 = v28;
      if (((*(v61 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        v30 = 1;
        goto LABEL_8;
      }
    }

    v30 = 0;
    v19 = v28;
LABEL_8:
    v31 = v29 ^ 1u;
    v10 = v58;
    a4 = v59;
    v5 = v57;
  }

  else
  {
    v31 = 1;
    v30 = 1;
  }

  v32 = v19[2];
  v33 = v32 + v30;
  if (__OFADD__(v32, v30))
  {
    __break(1u);
    goto LABEL_31;
  }

  v34 = v19[3];
  if (v34 >= v33 && (v60 & 1) != 0)
  {
    if ((v31 & 1) == 0)
    {
LABEL_13:
      v35 = *(v10 + 72) * v22;
LABEL_28:
      v50 = *v5;
      v51 = *(*v5 + 48);
      v52 = *(v10 + 32);
      v52(a4, v51 + v35, v9);
      v52(*(v50 + 48) + v35, v63, v9);
      v49 = 0;
      return (*(v10 + 56))(a4, v49, 1, v9);
    }
  }

  else
  {
    if (v60)
    {
      v54 = v31;
      _NativeSet.resize(capacity:)(v33);
    }

    else
    {
      if (v34 >= v33)
      {
        _NativeSet.copy()();
        if ((v31 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      v54 = v31;
      _NativeSet.copyAndResize(capacity:)(v33);
    }

    v36 = *v5;
    v37 = v55(*(*v5 + 40), v9, v62);
    v38 = v36 + 56;
    v61 = v36;
    v39 = -1 << *(v36 + 32);
    v22 = v37 & ~v39;
    if ((*(v38 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v40 = v38;
      v60 = ~v39;
      v41 = *(v10 + 16);
      v42 = *(v10 + 72);
      v43 = (v10 + 8);
      while (1)
      {
        v35 = v42 * v22;
        v41(v12, *(v61 + 48) + v42 * v22, v9);
        v44 = (*(*(v62 + 8) + 8))(v12, v63, v9);
        (*v43)(v12, v9);
        if (v44)
        {
          break;
        }

        v22 = (v22 + 1) & v60;
        if (((*(v40 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v5 = v57;
      v10 = v58;
      a4 = v59;
      if ((v54 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v9);
    }

LABEL_24:
    v5 = v57;
    v10 = v58;
    a4 = v59;
    if ((v54 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_25:
  v45 = *v5;
  *(*v5 + 8 * (v22 >> 6) + 56) |= 1 << v22;
  (*(v10 + 32))(*(v45 + 48) + *(v10 + 72) * v22, v63, v9);
  v46 = *(v45 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v45 + 16) = v48;
  v49 = 1;
  return (*(v10 + 56))(a4, v49, 1, v9);
}

uint64_t _NativeSet._unsafeUpdate(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *(*v2 + 40);
  v10 = *(v9 + 24);
  v11 = *(v10 + 32);
  v34 = v12;
  v32 = v10;
  v13 = v11(v8, v3);
  v14 = -1 << *(v7 + 32);
  v15 = v13 & ~v14;
  v16 = v15 >> 6;
  v33 = v7 + 56;
  v17 = *(v7 + 56 + 8 * (v15 >> 6));
  v18 = 1 << v15;
  if (((1 << v15) & v17) != 0)
  {
    v30 = v4;
    v31 = ~v14;
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    while (1)
    {
      v19(v6, *(v7 + 48) + v22 * v15, v3);
      v23 = (*(*(v32 + 8) + 8))(v6, v34, v3);
      (*(v20 - 8))(v6, v3);
      if (v23)
      {
        return (*(v30 + 40))(*(v7 + 48) + v22 * v15, v34, v3);
      }

      v15 = (v15 + 1) & v31;
      v16 = v15 >> 6;
      v17 = *(v33 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if (((1 << v15) & v17) == 0)
      {
        v4 = v30;
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (*(v7 + 16) >= *(v7 + 24))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v24 = v34;
    *(v33 + 8 * v16) = v18 | v17;
    result = (*(v4 + 32))(*(v7 + 48) + *(v4 + 72) * v15, v24, v3);
    v26 = *(v7 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      *(v7 + 16) = v28;
    }
  }

  return result;
}

uint64_t _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v5 = a1;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  if (v13 == result)
  {
    return 1;
  }

  if (*(v13 + 16) != *(v5 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = *(v13 + 56);
  v35 = v13 + 56;
  v18 = 1 << *(v13 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v43 = v6 + 32;
  v42 = v47 + 32;
  v45 = v5 + 56;
  v46 = v6 + 16;
  v22 = v6 + 8;
  v36 = v21;
  v37 = &v35 - v14;
  v38 = v6;
  v39 = v13;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v41 = (v20 - 1) & v20;
LABEL_13:
      v26 = *(v13 + 48);
      v44 = *(v6 + 72);
      v27 = *(v6 + 16);
      v27(v15, v26 + v44 * (v23 | (v16 << 6)), a3);
      (*(v6 + 32))(v48, v15, a3);
      v28 = (*(v47 + 32))(*(v5 + 40), a3);
      v29 = -1 << *(v5 + 32);
      v30 = v28 & ~v29;
      if (((*(v45 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v22 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = v5;
      v32 = ~v29;
      while (1)
      {
        v27(v9, *(v31 + 48) + v30 * v44, a3);
        v33 = (*(*(v47 + 8) + 8))(v9, v48, a3);
        v34 = *v22;
        (*v22)(v9, a3);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v45 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v48, a3);
          return 0;
        }
      }

      result = (v34)(v48, a3);
      v5 = v31;
      v6 = v38;
      v13 = v39;
      v21 = v36;
      v15 = v37;
      v20 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v22)(v48, a3);
    return 0;
  }

LABEL_8:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return 1;
    }

    v25 = *(v35 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v41 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _NativeDictionary.Iterator.nextKey()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  if (v4)
  {
    v2[4] = (v4 - 1) & v4;
    v5 = __clz(__rbit64(v4)) | (v2[3] << 6);
LABEL_8:
    v10 = *(*v2 + 48);
    v11 = *(result + 16);
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
        v15 = *(result + 16);
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

uint64_t _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a3 - 1);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v28 - v10);
  v13 = *(v12 + 16);
  v35 = v9;
  if (v13 == [v9 count])
  {
    v30 = v8;
    v31 = a2;
    v14 = 0;
    v15 = a2 + 56;
    v16 = 1 << *(a2 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a2 + 56);
    v19 = (v16 + 63) >> 6;
    v29 = (v5 + 32);
    v32 = (v5 + 8);
    v33 = v5 + 16;
    if (v18)
    {
      goto LABEL_5;
    }

    while (2)
    {
      v21 = v14;
      do
      {
        v14 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v14 >= v19)
        {
          return 1;
        }

        v22 = *(v15 + 8 * v14);
        ++v21;
      }

      while (!v22);
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
LABEL_11:
      (*(v5 + 16))(v11, *(a2 + 48) + *(v5 + 72) * (v20 | (v14 << 6)), a3);
      if (_swift_isClassOrObjCExistentialType(a3, a3))
      {
        if (v34 == 8)
        {
          v23 = *v11;
          v24 = *v32;
          swift_unknownObjectRetain(*v11);
          v24(v11, a3);
          goto LABEL_14;
        }

LABEL_21:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v26 = v30;
      (*v29)(v30, v11, a3);
      v23 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v26, a3);
LABEL_14:
      v25 = [v35 member_];
      swift_unknownObjectRelease(v23);
      if (v25)
      {
        swift_unknownObjectRelease(v25);
        a2 = v31;
        if (!v18)
        {
          continue;
        }

LABEL_5:
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        goto LABEL_11;
      }

      break;
    }
  }

  return 0;
}

BOOL __CocoaDictionary.contains(_:)(uint64_t a1, id a2, SEL *a3)
{
  v3 = [a2 *a3];
  v4 = v3;
  if (v3)
  {
    swift_unknownObjectRelease(v3);
  }

  return v4 != 0;
}

Swift::Int __swiftcall _NativeSet.hashValue(at:)(Swift::_HashTable::Bucket at)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = *(v2 - 8);
  v8 = MEMORY[0x1EEE9AC00](at.offset);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v11 + 48) + *(v12 + 72) * v8);
  v13 = (*(v4 + 32))(*(v6 + 40), v5, v4);
  (*(v7 + 8))(v10, v5);
  return v13;
}

Swift::Void __swiftcall _NativeSet.moveEntry(from:to:)(Swift::_HashTable::Bucket from, Swift::_HashTable::Bucket to)
{
  v5 = *(v2 + 48);
  v6 = *(*(v3 - 1) + 72);
  v7 = v6 * to.offset;
  v8 = (v5 + v6 * to.offset);
  v9 = v6 * from.offset;
  v10 = (v5 + v9);
  v11 = v5 + v9 + v6;
  if (v7 < v9 || v8 >= v11)
  {
    swift_arrayInitWithTakeFrontToBack(v8, v10, 1, v3);
  }

  else if (v7 != v9)
  {
    swift_arrayInitWithTakeBackToFront(v8, v10, 1, v3);
  }
}

uint64_t protocol witness for _HashTableDelegate.hashValue(at:) in conformance _NativeSet<A>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  (*(v5 + 16))(v8, *(v9 + 48) + *(v10 + 72) * v6, v4);
  v11 = (*(*(a2 + 24) + 32))(*(v9 + 40), v4);
  (*(v5 + 8))(v8, v4);
  return v11;
}

char *protocol witness for _HashTableDelegate.moveEntry(from:to:) in conformance _NativeSet<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 48);
  v6 = *(a3 + 16);
  v7 = *(*(v6 - 1) + 72);
  v8 = v7 * a2;
  result = (v5 + v7 * a2);
  v10 = v7 * a1;
  v11 = (v5 + v10);
  v12 = v5 + v10 + v7;
  if (v8 < v10 || result >= v12)
  {
    return swift_arrayInitWithTakeFrontToBack(result, v11, 1, v6);
  }

  if (v8 != v10)
  {
    return swift_arrayInitWithTakeBackToFront(result, v11, 1, v6);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2.offset = result;
  v3 = *v1;
  v4 = (*v1 + 7);
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    *v1;
    v8.offset = _HashTable.previousHole(before:)(v2).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8.offset + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = _swift_stdlib_Hashing_parameters ^ *(v3 + 40);
        v21[0] = 0;
        v21[1] = v13 ^ 0x736F6D6570736575;
        v21[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
        v21[3] = v13 ^ 0x6C7967656E657261;
        v21[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
        v22 = 0u;
        v23 = 0u;
        v12;
        String.hash(into:)(v21, v11, v12);
        v12;
        v14 = Hasher._finalize()() & v7;
        if (v2.offset >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2.offset >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2.offset);
          v17 = (v15 + 16 * v6);
          if (v2.offset != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2.offset = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    result = v3;
    *(v4 + ((v2.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(v2.offset)) - 1;
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

{
  v2.offset = result;
  v3 = *v1;
  v4 = (*v1 + 7);
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    *v1;
    v8.offset = _HashTable.previousHole(before:)(v2).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8.offset + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = _swift_stdlib_Hashing_parameters ^ *(v3 + 40);
        v21[0] = 0;
        v21[1] = v13 ^ 0x736F6D6570736575;
        v21[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
        v21[3] = v13 ^ 0x6C7967656E657261;
        v21[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
        v22 = 0u;
        v23 = 0u;
        v12;
        String.hash(into:)(v21, v11, v12);
        v12;
        v14 = Hasher._finalize()() & v7;
        if (v2.offset >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2.offset >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2.offset);
          v17 = (v15 + 16 * v6);
          if (v2.offset != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2.offset = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    result = v3;
    *(v4 + ((v2.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(v2.offset)) - 1;
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

{
  v2.offset = result;
  v3 = *v1;
  v4 = (*v1 + 7);
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    *v1;
    v8.offset = _HashTable.previousHole(before:)(v2).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8.offset + 1) & v7;
      do
      {
        v10 = v4;
        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v6, v31);
        v11 = *(v3 + 40);
        v12 = v32;
        v13 = v33;
        __swift_project_boxed_opaque_existential_0Tm(v31, v32);
        (*(v13 + 8))(v28, v12, v13);
        v14 = v29;
        v15 = v30;
        __swift_project_boxed_opaque_existential_0Tm(v28, v29);
        v16 = (*(v15 + 40))(v11, v14, v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        outlined destroy of AnyHashable(v31);
        v17 = v16 & v7;
        if (v2.offset >= v9)
        {
          if (v17 >= v9 && v2.offset >= v17)
          {
LABEL_16:
            v20 = *(v3 + 48);
            v21 = v20 + 40 * v2.offset;
            v22 = (v20 + 40 * v6);
            v4 = v10;
            if (v2.offset != v6 || v21 >= v22 + 40)
            {
              v23 = *v22;
              v24 = v22[1];
              *(v21 + 32) = *(v22 + 4);
              *v21 = v23;
              *(v21 + 16) = v24;
              v2.offset = v6;
            }

            goto LABEL_5;
          }
        }

        else if (v17 >= v9 || v2.offset >= v17)
        {
          goto LABEL_16;
        }

        v4 = v10;
LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    result = v3;
    *(v4 + ((v2.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(v2.offset)) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2.offset = result;
  v3 = *v1;
  v4 = (*v1 + 7);
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    *v1;
    v8.offset = _HashTable.previousHole(before:)(v2).offset;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8.offset + 1) & v7;
      do
      {
        v10 = v4;
        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v6, v31);
        v11 = *(v3 + 40);
        v12 = v32;
        v13 = v33;
        __swift_project_boxed_opaque_existential_0Tm(v31, v32);
        (*(v13 + 8))(v28, v12, v13);
        v14 = v29;
        v15 = v30;
        __swift_project_boxed_opaque_existential_0Tm(v28, v29);
        v16 = (*(v15 + 40))(v11, v14, v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        outlined destroy of AnyHashable(v31);
        v17 = v16 & v7;
        if (v2.offset >= v9)
        {
          if (v17 >= v9 && v2.offset >= v17)
          {
LABEL_16:
            v20 = *(v3 + 48);
            v21 = v20 + 40 * v2.offset;
            v22 = (v20 + 40 * v6);
            v4 = v10;
            if (v2.offset != v6 || v21 >= v22 + 40)
            {
              v23 = *v22;
              v24 = v22[1];
              *(v21 + 32) = *(v22 + 4);
              *v21 = v23;
              *(v21 + 16) = v24;
              v2.offset = v6;
            }

            goto LABEL_5;
          }
        }

        else if (v17 >= v9 || v2.offset >= v17)
        {
          goto LABEL_16;
        }

        v4 = v10;
LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    result = v3;
    *(v4 + ((v2.offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << SLOBYTE(v2.offset)) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Void __swiftcall _NativeSet._delete(at:)(Swift::_HashTable::Bucket at)
{
  v3 = v1;
  offset = at.offset;
  v5 = *(v1 + 16);
  v42 = *(v5 - 1);
  v6 = MEMORY[0x1EEE9AC00](at.offset);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = (*v2 + 7);
  v11 = -1 << *(*v2 + 32);
  v12 = (v6 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    *v2;
    v36 = v13;
    v14.offset = _HashTable.previousHole(before:)(offset).offset;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = v36;
      v41 = (v14.offset + 1) & v36;
      v40 = *(v3 + 24);
      v38 = *(v40 + 32);
      v39 = v40 + 32;
      v37 = *(v42 + 16);
      v16 = *(v42 + 72);
      v42 += 16;
      v43 = v16;
      v17 = (v42 - 8);
      v18 = v9;
      while (1)
      {
        v19 = v10;
        v20 = v43 * v12;
        v21 = v15;
        v37(v8, *(v18 + 48) + v43 * v12, v5);
        v22 = v18;
        v23 = v38(*(v18 + 40), v5, v40);
        (*v17)(v8, v5);
        v15 = v21;
        v24 = v23 & v21;
        if (offset >= v41)
        {
          if (v24 < v41 || offset < v24)
          {
LABEL_4:
            v18 = v22;
            goto LABEL_5;
          }
        }

        else if (v24 < v41 && offset < v24)
        {
          goto LABEL_4;
        }

        v18 = v22;
        v27 = *(v22 + 48);
        v28 = v43 * offset;
        v29 = (v27 + v43 * offset);
        v30 = (v27 + v20);
        v31 = v27 + v20 + v43;
        if (v43 * offset < v20 || v29 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack(v29, v30, 1, v5);
LABEL_24:
          v15 = v21;
          offset = v12;
          goto LABEL_5;
        }

        offset = v12;
        if (v28 != v20)
        {
          swift_arrayInitWithTakeBackToFront(v29, v30, 1, v5);
          goto LABEL_24;
        }

LABEL_5:
        v12 = (v12 + 1) & v15;
        v10 = v19;
        if (((*(v19 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          v18;
          goto LABEL_28;
        }
      }
    }

    v9;
    v18 = v9;
LABEL_28:
    *(v10 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
  }

  else
  {
    *(v10 + ((offset >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << offset) - 1;
    v18 = v9;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

void _NativeSet.uncheckedRemove(at:isUnique:)(Swift::_HashTable::Bucket a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v7 = a4;
    _NativeSet.copy()();
    a4 = v7;
  }

  (*(*(*(a3 + 16) - 8) + 32))(a4, *(*v4 + 48) + *(*(*(a3 + 16) - 8) + 72) * a1.offset);

  _NativeSet._delete(at:)(a1);
}

Swift::Void __swiftcall _NativeSet.removeAll(isUnique:)(Swift::Bool isUnique)
{
  v4 = v1;
  v5 = *v3;
  if (isUnique)
  {
    v6 = 0;
    v7 = (v5 + 56);
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      (*(*(*(v4 + 16) - 8) + 8))(*(v5 + 48) + *(*(*(v4 + 16) - 8) + 72) * (v12 | (v6 << 6)));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v5 + 32);
    if (v18 > 63)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v18 + 63) >> 6, (v5 + 56));
    }

    else
    {
      *v7 = -1 << v18;
    }

    *(v5 + 16) = 0;
    ++*(v5 + 36);
  }

  else
  {
    v15 = v3;
    v16 = *(v5 + 32);
    type metadata accessor for _SetStorage(0, *(v1 + 16), *(v1 + 24), v2);
    v17 = static _SetStorage.allocate(scale:age:seed:)(v16, 0x100000000, 0, 1);
    v5;
    *v15 = v17;
  }
}

void *_ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZs11AnyHashableV_Tt2g5(char a1, uint64_t a2, void *a3, char a4)
{
  v8 = a1;
  v9 = 1 << a1;
  v10 = ((1 << a1) + 63) >> 6;
  v11 = canonical specialized generic type metadata accessor for _SetStorage<AnyHashable>();
  v12 = swift_allocObject(v11, (((8 * v10 + 63) & 0x3FFFFFFFFFFFFFF8) + (40 << v8)), 7uLL);
  v13 = (v12 + 7);
  v12[2] = 0;
  v12;
  v12[3] = specialized static _HashTable.capacity(forScale:)(a1);
  *(v12 + 32) = a1;
  *(v12 + 33) = 0;
  *(v12 + 17) = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v12);
  }

  *(v12 + 9) = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v12[5] = v14;
  v12[6] = &v12[v10 + 7];
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

void *_ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSS_Tt2g5(char a1, uint64_t a2, void *a3, char a4)
{
  v8 = a1;
  v9 = 1 << a1;
  v10 = ((1 << a1) + 63) >> 6;
  v11 = canonical specialized generic type metadata accessor for _SetStorage<String>();
  v12 = swift_allocObject(v11, (((8 * v10 + 63) & 0x3FFFFFFFFFFFFFF8) + (16 << v8)), 7uLL);
  v13 = (v12 + 7);
  v12[2] = 0;
  v12;
  v12[3] = specialized static _HashTable.capacity(forScale:)(a1);
  *(v12 + 32) = a1;
  *(v12 + 33) = 0;
  *(v12 + 17) = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v12);
  }

  *(v12 + 9) = a2;
  if (qword_1ED42CFC8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  if ((a4 & 1) == 0)
  {
    v14 = a3;
  }

  v12[5] = v14;
  v12[6] = &v12[v10 + 7];
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

void *_ss11_SetStorageC8allocate5scale3age4seedAByxGs4Int8V_s5Int32VSgSiSgtFZSO_Tt2g5Tm(char a1, uint64_t a2, void *a3, char a4, uint64_t (*a5)(void))
{
  v9 = a1;
  v10 = 1 << a1;
  v11 = ((1 << a1) + 63) >> 6;
  v12 = a5(0);
  v13 = swift_allocObject(v12, (((8 * v11 + 63) & 0x3FFFFFFFFFFFFFF8) + (8 << v9)), 7uLL);
  v14 = (v13 + 7);
  v13[2] = 0;
  v13;
  v13[3] = specialized static _HashTable.capacity(forScale:)(a1);
  *(v13 + 32) = a1;
  *(v13 + 33) = 0;
  *(v13 + 17) = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v13);
  }

  *(v13 + 9) = a2;
  if (qword_1ED42CFC8)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13;
  }

  if ((a4 & 1) == 0)
  {
    v15 = a3;
  }

  v13[5] = v15;
  v13[6] = &v13[v11 + 7];
  v13;
  if (v10 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v14);
  }

  else
  {
    v14->i64[0] = -1 << v10;
  }

  return v13;
}

void *static _SetStorage.allocate(scale:age:seed:)(char a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = a1;
  v10 = 1 << a1;
  v11 = *(*(v4 + 168) - 8);
  v12 = ((1 << a1) + 63) >> 6;
  v13 = *(v11 + 80);
  v14 = v13 + 8 * v12;
  v15 = swift_allocObject(v5, (((v14 + 56) & ~v13) + (*(v11 + 72) << a1)), v13 | 7);
  v16 = (v15 + 7);
  v17 = (v15 + v14 + 56) & ~v13;
  v15[2] = 0;
  v15;
  v15[3] = specialized static _HashTable.capacity(forScale:)(a1);
  *(v15 + 32) = a1;
  *(v15 + 33) = 0;
  *(v15 + 17) = 0;
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = specialized static Hasher._hash(seed:_:)(0, v15);
  }

  *(v15 + 9) = a2;
  if (qword_1ED42CFC8)
  {
    v18 = v9;
  }

  else
  {
    v18 = v15;
  }

  if ((a4 & 1) == 0)
  {
    v18 = a3;
  }

  v15[5] = v18;
  v15[6] = v17;
  v15;
  if (v10 > 63)
  {
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v12, v16);
  }

  else
  {
    v16->i64[0] = -1 << v10;
  }

  return v15;
}

uint64_t _NativeSet.Iterator.iterator.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[1] = result;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  return result;
}

uint64_t _NativeSet.makeIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 56);
  result = a1 + 56;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance _NativeSet<A>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = -1 << *(*v1 + 32);
  v4 = ~v3;
  *a1 = *v1;
  v7 = *(v2 + 56);
  v5 = v2 + 56;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = v5;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
}

uint64_t _NativeSet.isSubset<A>(of:)(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v11 = isStackAllocationSafe;
  v26 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 32);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = isStackAllocationSafe;
  v25 = a2;
  v13 = ((1 << v12) + 63) >> 6;
  v14 = (8 * v13);
  if (v12 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v15 = (&v18 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v15);
    closure #1 in _NativeSet.isSubset<A>(of:)(v15, v11, a2, a3, a4, a5, a6, &v19);
    return v19;
  }

  else
  {
    v17 = swift_slowAlloc(v14, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v17);
    partial apply for closure #1 in _NativeSet.isSubset<A>(of:)(v17, v13);
    v17;
    return v19;
  }
}

uint64_t closure #1 in _NativeSet.isSubset<A>(of:)@<X0>(uint64_t a1@<X0>, void (**a2)(char *, void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, const char *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v78 = a2;
  v56 = a1;
  v54 = a8;
  v77 = a4;
  v57 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v71 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v52 - v14;
  v18 = type metadata accessor for Optional(0, v15, v16, v17);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v52 - v20;
  v22 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v26 = v25;
  v53 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v52 - v27;
  (*(v22 + 16))(v24, v78, a5);
  (*(a7 + 32))(a5, a7);
  v29 = a7;
  v30 = v77;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v29, a5, v26, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = *(AssociatedConformanceWitness + 16);
  v68 = v28;
  v69 = v26;
  v66 = AssociatedConformanceWitness + 16;
  v67 = AssociatedConformanceWitness;
  v65 = v32;
  (v32)(v26);
  v33 = v57;
  v63 = v57[6];
  v64 = v57 + 6;
  if (v63(v21, 1, v30) != 1)
  {
    v55 = 0;
    v37 = v33[4];
    v36 = v33 + 4;
    v59 = a6 + 32;
    v60 = v37;
    v75 = a6;
    v76 = a3 + 56;
    v70 = v36 - 2;
    v61 = v36;
    v62 = v21;
    v78 = (v36 - 3);
    v38 = v72;
    v74 = a3;
    v37(v72, v21, v30);
    while (1)
    {
      v41 = (*(a6 + 32))(*(a3 + 40), v30, a6);
      v42 = -1 << *(a3 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v76 + 8 * (v43 >> 6))) == 0)
      {
        break;
      }

      v58 = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73 = ~v42;
      v46 = v57[9];
      v47 = v57[2];
      while (1)
      {
        v48 = v71;
        v49 = v77;
        v47(v71, *(v74 + 48) + v46 * v43, v77);
        v50 = (*(*(v75 + 8) + 8))(v48, v38, v49);
        v39 = *v78;
        (*v78)(v48, v49);
        if (v50)
        {
          break;
        }

        v38 = v72;
        v43 = (v43 + 1) & v73;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v76 + 8 * (v43 >> 6))) == 0)
        {
          a3 = v74;
          a6 = v75;
          v30 = v77;
          goto LABEL_6;
        }
      }

      v38 = v72;
      v30 = v77;
      result = v39(v72, v77);
      v51 = *(v56 + 8 * v44);
      *(v56 + 8 * v44) = v51 | v45;
      if ((v51 & v45) != 0)
      {
        a3 = v74;
        a6 = v75;
LABEL_7:
        v40 = v62;
        goto LABEL_8;
      }

      a3 = v74;
      a6 = v75;
      v40 = v62;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        return result;
      }

      if (v55 + 1 == *(v74 + 16))
      {
        v34 = 1;
        goto LABEL_3;
      }

      ++v55;
LABEL_8:
      v65(v69, v67);
      if (v63(v40, 1, v30) == 1)
      {
        goto LABEL_2;
      }

      v60(v38, v40, v30);
    }

    v39 = *v78;
LABEL_6:
    v39(v38, v30);
    goto LABEL_7;
  }

LABEL_2:
  v34 = 0;
LABEL_3:
  result = (*(v53 + 8))(v68, v69);
  *v54 = v34;
  return result;
}

uint64_t _NativeSet.isStrictSubset<A>(of:)(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = isStackAllocationSafe;
  v26 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 32);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = isStackAllocationSafe;
  v25 = a2;
  v13 = ((1 << v12) + 63) >> 6;
  v14 = (8 * v13);
  if (v12 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v15 = (&v18 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v15);
    closure #1 in _NativeSet.isStrictSubset<A>(of:)(v15, v11, a2, a3, a4, a5, a6, &v19);
    return v19;
  }

  else
  {
    v17 = swift_slowAlloc(v14, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v17);
    partial apply for closure #1 in _NativeSet.isStrictSubset<A>(of:)(v17, v13);
    v17;
    return v19;
  }
}

uint64_t closure #1 in _NativeSet.isStrictSubset<A>(of:)@<X0>(uint64_t a1@<X0>, void (**a2)(char *, void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v11 = a4;
  v78 = a2;
  v54 = a1;
  v53 = a8;
  v58 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v72 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v51 - v15;
  v19 = type metadata accessor for Optional(0, v18, v16, v17);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v57 = &v51 - v21;
  v22 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v26 = v25;
  v52 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v51 - v27;
  (*(v22 + 16))(v24, v78, a5);
  (*(a7 + 32))(a5, a7);
  v29 = a5;
  v30 = v57;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, v29, v26, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = *(AssociatedConformanceWitness + 16);
  v68 = v28;
  v69 = v26;
  v66 = AssociatedConformanceWitness + 16;
  v67 = AssociatedConformanceWitness;
  v65 = v32;
  (v32)(v26);
  v33 = v58;
  v63 = v58[6];
  v64 = v58 + 6;
  if (v63(v30, 1, v11) != 1)
  {
    v55 = 0;
    v70 = 0;
    v56 = 0;
    v37 = v33[4];
    v36 = v33 + 4;
    v60 = a6 + 32;
    v61 = v37;
    v71 = v36 - 2;
    v62 = v36;
    v77 = a3 + 56;
    v78 = (v36 - 3);
    v75 = a3;
    v76 = a6;
    v74 = v11;
    v37(v79, v30, v11);
    while (1)
    {
      v38 = (*(a6 + 32))(*(a3 + 40), v11, a6);
      v39 = -1 << *(a3 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      v42 = 1 << v40;
      if (((1 << v40) & *(v77 + 8 * (v40 >> 6))) != 0)
      {
        v59 = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v73 = ~v39;
        v43 = v58[9];
        v44 = v58[2];
        while (1)
        {
          v45 = v74;
          v46 = v72;
          v44(v72, *(v75 + 48) + v43 * v40, v74);
          v47 = (*(*(v76 + 8) + 8))(v46, v79, v45);
          v48 = *v78;
          (*v78)(v46, v45);
          if (v47)
          {
            break;
          }

          v40 = (v40 + 1) & v73;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v77 + 8 * (v40 >> 6))) == 0)
          {
            a3 = v75;
            a6 = v76;
            v11 = v74;
            v30 = v57;
            goto LABEL_14;
          }
        }

        v11 = v74;
        result = v48(v79, v74);
        v50 = *(v54 + 8 * v41);
        *(v54 + 8 * v41) = v50 | v42;
        if ((v50 & v42) != 0)
        {
          a3 = v75;
          a6 = v76;
          v30 = v57;
        }

        else
        {
          a3 = v75;
          a6 = v76;
          v30 = v57;
          if (__OFADD__(v56, 1))
          {
            __break(1u);
            return result;
          }

          if (((v56 + 1 == *(v75 + 16)) & v55) != 0)
          {
            goto LABEL_23;
          }

          ++v56;
        }

        v65(v69, v67);
      }

      else
      {
        v48 = *v78;
LABEL_14:
        v48(v79, v11);
        if ((v70 & 1) == 0)
        {
          v49 = *(a3 + 16);
          v55 = 1;
          if (v56 == v49)
          {
LABEL_23:
            v34 = 1;
            goto LABEL_3;
          }
        }

        v65(v69, v67);
        v70 = 1;
      }

      if (v63(v30, 1, v11) == 1)
      {
        break;
      }

      v61(v79, v30, v11);
    }
  }

  v34 = 0;
LABEL_3:
  result = (*(v52 + 8))(v68, v69);
  *v53 = v34;
  return result;
}

uint64_t _NativeSet.isStrictSuperset<A>(of:)(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v11 = isStackAllocationSafe;
  v26 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 32);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = isStackAllocationSafe;
  v25 = a2;
  v13 = ((1 << v12) + 63) >> 6;
  v14 = (8 * v13);
  if (v12 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v15 = (&v18 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v15);
    closure #1 in _NativeSet.isStrictSuperset<A>(of:)(v15, v11, a2, a3, a4, a5, a6, &v19);
    return v19;
  }

  else
  {
    v17 = swift_slowAlloc(v14, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v17);
    partial apply for closure #1 in _NativeSet.isStrictSuperset<A>(of:)(v17, v13);
    v17;
    return v19;
  }
}

uint64_t closure #1 in _NativeSet.isStrictSuperset<A>(of:)@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X2>, void *a3@<X3>, uint64_t a4@<X4>, const char *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v68 = a8;
  v79 = a6;
  v80 = a3;
  v77 = a2;
  v66 = a1;
  v72 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v76 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v55 - v13;
  v17 = type metadata accessor for Optional(0, v16, v14, v15);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v55 - v19;
  v21 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v25 = v24;
  v67 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - v26;
  (*(v21 + 16))(v23, v77, a5);
  (*(a7 + 32))(a5, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, v25, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v29 = *(AssociatedConformanceWitness + 16);
  v70 = v27;
  v71 = v25;
  v30 = v79;
  v64 = AssociatedConformanceWitness + 16;
  v65 = AssociatedConformanceWitness;
  v63 = v29;
  (v29)(v25);
  v32 = v72 + 6;
  v31 = v72[6];
  v33 = 1;
  v69 = v20;
  v34 = v20;
  v35 = a4;
  v62 = v31;
  if ((v31)(v34, 1, a4) == 1)
  {
LABEL_16:
    result = (*(v67 + 8))(v70, v71);
    *v68 = v33;
    return result;
  }

  v56 = 0;
  v36 = v72[4];
  v37 = v80 + 7;
  v74 = v72 + 2;
  v38 = (v72 + 1);
  v60 = v32;
  v59 = v72 + 4;
  v58 = v36;
  v57 = v30 + 32;
  v77 = (v72 + 1);
  v78 = v35;
  while (1)
  {
    v39 = v35;
    v36(v81, v69, v35);
    v40 = v80;
    v41 = (*(v30 + 32))(v80[5], v39, v30);
    v42 = -1 << *(v40 + 32);
    v43 = v41 & ~v42;
    v44 = v43 >> 6;
    v45 = 1 << v43;
    if (((1 << v43) & v37[v43 >> 6]) == 0)
    {
      (*v38)(v81, v39);
LABEL_15:
      v33 = 0;
      goto LABEL_16;
    }

    v61 = v38 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73 = ~v42;
    v75 = v72[9];
    v46 = v72[2];
    while (1)
    {
      v47 = v76;
      v48 = v78;
      v46(v76, v80[6] + v75 * v43, v78);
      v49 = (*(*(v79 + 8) + 8))(v47, v81, v48);
      v50 = *v77;
      (*v77)(v47, v48);
      if (v49)
      {
        break;
      }

      v43 = (v43 + 1) & v73;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & v37[v43 >> 6]) == 0)
      {
        v50(v81, v78);
        goto LABEL_15;
      }
    }

    result = (v50)(v81, v78);
    v52 = *(v66 + 8 * v44);
    *(v66 + 8 * v44) = v52 | v45;
    if ((v52 & v45) != 0)
    {
      v30 = v79;
      v53 = v69;
      goto LABEL_13;
    }

    v30 = v79;
    v53 = v69;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v56 + 1 == v80[2])
    {
      goto LABEL_15;
    }

    ++v56;
LABEL_13:
    v63(v71, v65);
    v33 = 1;
    v35 = v78;
    v54 = v62(v53, 1);
    v36 = v58;
    v38 = v77;
    if (v54 == 1)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

__objc2_class **_NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v15)
  {
    a4;
    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage(0, a5, v25, v12);
  result = static _SetStorage.allocate(capacity:)(a3);
  v16 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v24 = v11 + 16;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_16:
    (*(v11 + 16))(v14, *(a4 + 48) + *(v11 + 72) * (v20 | (v19 << 6)), a5);
    result = _NativeSet._unsafeInsertNew(_:)(v14, v16, a5);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
LABEL_18:
      a4;
      return v16;
    }
  }

  v21 = v19;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      goto LABEL_18;
    }

    v22 = a1[v19];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

__objc2_class **_NativeSet.subtracting<A>(_:)(void (**a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, int **a6)
{
  v100 = a5;
  v109 = a1;
  v111 = *MEMORY[0x1E69E9840];
  v84 = type metadata accessor for Optional(0, a3, a3, a4);
  v83 = *(v84 - 8);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v12 = (&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v78 - v14;
  v86 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v103 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v107 = &v78 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v99 = &v78 - v21;
  v22 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a6;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v27 = v26;
  v85 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v78 - v28;
  if (!*(a2 + 16))
  {
    a2;
    return &_swiftEmptySetSingleton;
  }

  v87 = v12;
  (*(v22 + 16))(v24, v109, a4);
  (v25[4])(a4, v25);
  v82 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, a4, v27, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v31 = *(AssociatedConformanceWitness + 16);
  v97 = AssociatedConformanceWitness + 16;
  v98 = AssociatedConformanceWitness;
  v96 = v31;
  (v31)(v27);
  v32 = v86;
  v94 = v86[6];
  v95 = v86 + 6;
  v33 = v94(v15, 1, a3);
  v34 = a2;
  v35 = v15;
  v36 = v85;
  if (v33 == 1)
  {
LABEL_3:
    (*(v83 + 8))(v35, v84);
    (*(v36 + 8))(v29, v27);
    return v34;
  }

  v91 = v32[4];
  v90 = v100 + 32;
  v104 = v32 + 2;
  v92 = v32 + 4;
  v108 = (a2 + 56);
  v109 = (v32 + 1);
  v89 = v27;
  v93 = v29;
  v81 = v25;
  v79 = v15;
  while (1)
  {
    v91(v99, v35, a3);
    v37 = v34[5];
    v88 = *(v100 + 32);
    v38 = v88(v37, a3);
    v39 = -1 << *(v34 + 32);
    v40 = v38 & ~v39;
    v41 = v40 >> 6;
    v42 = 1 << v40;
    if (((1 << v40) & *&v108[8 * (v40 >> 6)]) != 0)
    {
      break;
    }

    (*v109)(v99, a3);
LABEL_12:
    v29 = v93;
    v96(v27, v98);
    if (v94(v35, 1, a3) == 1)
    {
      goto LABEL_3;
    }
  }

  v80 = (v109 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v101 = ~v39;
  v43 = v86[9];
  v105 = v86[2];
  v106 = v43;
  while (1)
  {
    v44 = v107;
    v105(v107, v34[6] + v106 * v40, a3);
    v45 = *(v100 + 8);
    v46 = *(v45 + 8);
    v47 = v46(v44, v99, a3, v45);
    v48 = v44;
    v49 = *v109;
    (*v109)(v48, a3);
    if (v47)
    {
      break;
    }

    v40 = (v40 + 1) & v101;
    v41 = v40 >> 6;
    v42 = 1 << v40;
    if (((1 << v40) & *&v108[8 * (v40 >> 6)]) == 0)
    {
      v27 = v89;
      v36 = v85;
      v35 = v79;
      v49(v99, a3);
      goto LABEL_12;
    }
  }

  v101 = v46;
  v50 = (v49)(v99, a3);
  v80 = &v78;
  isStackAllocationSafe = MEMORY[0x1EEE9AC00](v50);
  v52 = v82;
  *(&v78 - 8) = a3;
  *(&v78 - 7) = v52;
  v53 = v81;
  *(&v78 - 6) = v100;
  *(&v78 - 5) = v53;
  *(&v78 - 4) = v34;
  *(&v78 - 3) = v40;
  v55 = (8 * v54);
  v56 = v93;
  *(&v78 - 2) = v93;
  v79 = v54;
  if (v57 >= 0xE)
  {
    goto LABEL_34;
  }

  do
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v58 = &v78 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.initialize(from:count:)(v108, v59, v58);
    v60 = v34[2];
    v61 = *&v58[8 * v41] & ~v42;
    v86 = v58;
    *&v58[8 * v41] = v61;
    v99 = &v60[-1].info + 7;
    v55 = v87;
    v96(v89, v98);
    if (v94(v55, 1, a3) == 1)
    {
LABEL_16:
      (*(v83 + 8))(v55, v84);
      v34 = _NativeSet.extractSubset(using:count:)(v86, v79, v99, v34, a3, v100);
      goto LABEL_17;
    }

    v102 = v34;
    while (1)
    {
      v63 = v49;
      v91(v103, v55, a3);
      v64 = (v88)(v34[5], a3, v100);
      v65 = -1 << *(v34 + 32);
      v42 = v64 & ~v65;
      v66 = v42 >> 6;
      v41 = 1 << v42;
      if (((1 << v42) & *&v108[8 * (v42 >> 6)]) == 0)
      {
        goto LABEL_20;
      }

      v67 = v107;
      v105(v107, v102[6] + v42 * v106, a3);
      v68 = (v101)(v67, v103, a3, v45);
      v69 = v67;
      v49 = v63;
      v63(v69, a3);
      if ((v68 & 1) == 0)
      {
        v70 = ~v65;
        while (1)
        {
          v42 = (v42 + 1) & v70;
          v66 = v42 >> 6;
          v41 = 1 << v42;
          if (((1 << v42) & *&v108[8 * (v42 >> 6)]) == 0)
          {
            break;
          }

          v71 = v107;
          v105(v107, v102[6] + v42 * v106, a3);
          v72 = (v101)(v71, v103, a3, v45);
          v63(v71, a3);
          if (v72)
          {
            v49 = v63;
            goto LABEL_29;
          }
        }

LABEL_20:
        v49 = v63;
        v63(v103, a3);
        v34 = v102;
LABEL_21:
        v56 = v93;
        v55 = v87;
        goto LABEL_22;
      }

LABEL_29:
      v49(v103, a3);
      v73 = v86[v66];
      v86[v66] = v73 & ~v41;
      v34 = v102;
      if ((v73 & v41) == 0)
      {
        goto LABEL_21;
      }

      v74 = v99 - 1;
      v56 = v93;
      v55 = v87;
      if (__OFSUB__(v99, 1))
      {
        break;
      }

      --v99;
      if (!v74)
      {
        v102;
        v34 = &_swiftEmptySetSingleton;
        goto LABEL_17;
      }

LABEL_22:
      v96(v89, v98);
      if (v94(v55, 1, a3) == 1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_34:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while (isStackAllocationSafe);
  v75 = v79;
  v76 = swift_slowAlloc(v55, 0xFFFFFFFFFFFFFFFFLL);
  type metadata accessor for _NativeSet(0, a3, v100, v77);
  closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v76, v75, v108, v75, partial apply for closure #1 in _NativeSet.subtracting<A>(_:));
  v34;
  v76;
  v34 = v110;
  v56 = v93;
LABEL_17:
  (*(v85 + 8))(v56, v89);
  return v34;
}

__objc2_class **closure #1 in _NativeSet.subtracting<A>(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, uint64_t a8@<X7>, __objc2_class ***a9@<X8>, int **a10)
{
  v12 = a6;
  v71 = a5;
  v55 = a2;
  v56 = a9;
  v54 = type metadata accessor for Optional(0, a6, a3, a4);
  v53 = *(v54 - 8);
  v16 = MEMORY[0x1EEE9AC00](v54);
  v18 = &v52 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v73 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v52 - v21;
  v77 = a3;
  v22 = *(a3 + 16);
  v23 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v24 = -1 << a4;
  v26 = v25;
  v27 = *(a1 + v23) & (v24 - 1);
  v57 = a1;
  *(a1 + v23) = v27;
  v58 = v22 - 1;
  swift_getAssociatedTypeWitness(255, a10, a7, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v29 = v28;
  v30 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a10, a7, v28, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = *(AssociatedConformanceWitness + 16);
  v70 = v29;
  v33 = swift_checkMetadataState(0, v29);
  v68 = AssociatedConformanceWitness + 16;
  v69 = AssociatedConformanceWitness;
  v67 = v32;
  v32(v33, AssociatedConformanceWitness);
  v65 = *(v26 + 48);
  v66 = v26 + 48;
  if (v65(v18, 1, v12) != 1)
  {
    v59 = v26;
    v60 = v18;
    v37 = *(v26 + 32);
    v36 = v26 + 32;
    v62 = a8 + 32;
    v63 = v37;
    v75 = a8;
    v76 = v77 + 56;
    v72 = v36 - 16;
    v64 = v36;
    v78 = v12;
    v79 = (v36 - 24);
    v34 = v77;
    v37(v80, v18, v12);
    while (1)
    {
      v40 = (*(a8 + 32))(*(v34 + 40), v12, a8);
      v41 = -1 << *(v34 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      v44 = 1 << v42;
      if (((1 << v42) & *(v76 + 8 * (v42 >> 6))) != 0)
      {
        v61 = v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v74 = ~v41;
        v45 = *(v59 + 72);
        v46 = *(v59 + 16);
        while (1)
        {
          v47 = v78;
          v48 = v73;
          v46(v73, *(v77 + 48) + v45 * v42, v78);
          v49 = (*(*(v75 + 8) + 8))(v48, v80, v47);
          v38 = *v79;
          (*v79)(v48, v47);
          if (v49)
          {
            break;
          }

          v42 = (v42 + 1) & v74;
          v43 = v42 >> 6;
          v44 = 1 << v42;
          if (((1 << v42) & *(v76 + 8 * (v42 >> 6))) == 0)
          {
            a8 = v75;
            v34 = v77;
            v30 = v60;
            goto LABEL_7;
          }
        }

        v12 = v78;
        result = (v38)(v80, v78);
        v50 = v57[v43];
        v57[v43] = v50 & ~v44;
        if ((v50 & v44) != 0)
        {
          v51 = v58 - 1;
          a8 = v75;
          v34 = v77;
          v30 = v60;
          if (__OFSUB__(v58, 1))
          {
            __break(1u);
            return result;
          }

          --v58;
          if (!v51)
          {
            result = &_swiftEmptySetSingleton;
            goto LABEL_4;
          }
        }

        else
        {
          a8 = v75;
          v34 = v77;
          v30 = v60;
        }
      }

      else
      {
        v38 = *v79;
LABEL_7:
        v12 = v78;
        v38(v80, v78);
      }

      v39 = swift_checkMetadataState(0, v70);
      v67(v39, v69);
      if (v65(v30, 1, v12) == 1)
      {
        goto LABEL_3;
      }

      v63(v80, v30, v12);
    }
  }

  v34 = v77;
LABEL_3:
  (*(v53 + 8))(v30, v54);
  v34;
  result = _NativeSet.extractSubset(using:count:)(v57, v55, v58, v34, v12, a8);
LABEL_4:
  *v56 = result;
  return result;
}

void _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v47[9] = *MEMORY[0x1E69E9840];
  v6 = *(a4 - 8);
  isStackAllocationSafe = MEMORY[0x1EEE9AC00](a1);
  v41 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = isStackAllocationSafe;
  LOBYTE(v9) = *(v10 + 32);
  v43 = v11;
  v47[3] = v11;
  v47[4] = v8;
  v47[5] = v10;
  v47[6] = isStackAllocationSafe;
  v47[7] = v12;
  v13 = ((1 << v9) + 63) >> 6;
  v14 = 8 * v13;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  do
  {
    v46 = v4;
    v33 = v8;
    v35 = &v32;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v32 = v15;
    v34 = (&v32 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v15, v34);
    v14 = 0;
    v44 = a3;
    v17 = *(a3 + 56);
    a3 += 56;
    v16 = v17;
    v36 = 0;
    v37 = a3;
    v18 = 1 << *(a3 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v21 = (v18 + 63) >> 6;
    v39 = v6 + 16;
    v40 = v6;
    v38 = v6 + 8;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v45 = (v20 - 1) & v20;
LABEL_12:
      v6 = v43;
      v25 = v40;
      v26 = v41;
      a3 = v22 | (v14 << 6);
      (*(v40 + 16))(v41, *(v44 + 48) + *(v40 + 72) * a3, v43);
      v4 = v46;
      v27 = v42(v26);
      (*(v25 + 8))(v26, v6);
      v46 = v4;
      if (v4)
      {
        v44;
        swift_willThrow();
        return;
      }

      v20 = v45;
      if (v27)
      {
        *(v34->i64 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_17:
          _NativeSet.extractSubset(using:count:)(v34, v32, v36, v44, v43, v33);
          return;
        }
      }
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        goto LABEL_17;
      }

      v24 = *(v37 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v45 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    v29 = v13;
    v30 = v8;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v8 = v30;
  }

  while ((isStackAllocationSafe & 1) != 0);
  v31 = swift_slowAlloc(v14, 0xFFFFFFFFFFFFFFFFLL);
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v29, v31);
  partial apply for closure #1 in _NativeSet.filter(_:)(v31, v29, v47);
  a3;
  v31;
}

__objc2_class **closure #1 in _NativeSet.filter(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, __objc2_class ***a6@<X8>)
{
  v29 = a5;
  v30 = a1;
  v37 = a3;
  v27 = a2;
  v28 = a6;
  v39 = a4;
  result = MEMORY[0x1EEE9AC00](a1);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v7;
  v9 = 0;
  v38 = v10;
  v11 = *(v10 + 56);
  v31 = 0;
  v32 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v33 = v7 + 8;
  v34 = v7 + 16;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_11:
    v19 = v39;
    v20 = v35;
    v21 = v36;
    v22 = v16 | (v9 << 6);
    (*(v36 + 16))(v35, v38[6] + *(v36 + 72) * v22, v39);
    v23 = v41;
    v24 = v37(v20);
    result = (*(v21 + 8))(v20, v19);
    v41 = v23;
    if (v23)
    {
      return result;
    }

    v14 = v40;
    if (v24)
    {
      *(v30 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v26 = v38;
        v38;
        result = _NativeSet.extractSubset(using:count:)(v30, v27, v31, v26, v39, v29);
        *v28 = result;
        return result;
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v15)
    {
      goto LABEL_16;
    }

    v18 = *(v32 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v40 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

__objc2_class **_NativeSet.intersection(_:)(uint64_t isStackAllocationSafe, uint64_t a2, __objc2_class **a3, __objc2_class **a4)
{
  v7 = isStackAllocationSafe;
  v15[8] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a2;
  v15[6] = isStackAllocationSafe;
  v9 = ((1 << v8) + 63) >> 6;
  v10 = (8 * v9);
  if (v8 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v11 = (&v15[-1] - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v11);
    closure #1 in _NativeSet.intersection(_:)(v11, v9, a2, v7, a3, a4, v15);
    a2;
    return v15[0];
  }

  else
  {
    v13 = swift_slowAlloc(v10, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v9, v13);
    partial apply for closure #1 in _NativeSet.intersection(_:)(v13, v9, v15);
    a2;
    v13;
    return v15[0];
  }
}

__objc2_class **closure #1 in _NativeSet.intersection(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __objc2_class ***a7@<X8>)
{
  v68 = a7;
  v67 = a2;
  v73 = a1;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v80 = (v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v66 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v81 = (v66 - v18);
  result = MEMORY[0x1EEE9AC00](v17);
  v72 = v66 - v20;
  v22 = *(v21 + 16);
  v24 = *(v23 + 16);
  v85 = v11 + 16;
  v83 = v21;
  v84 = v25;
  v82 = v23;
  v76 = v11;
  if (v24 >= v22)
  {
    v75 = 0;
    v47 = 0;
    v48 = *(a3 + 56);
    v70 = a3 + 56;
    v49 = 1 << *(a3 + 32);
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v51 = v50 & v48;
    v52 = (v49 + 63) >> 6;
    v72 = (a6 + 32);
    v79 = a4 + 56;
    v81 = (v11 + 8);
    j = v52;
    if (v51)
    {
      goto LABEL_30;
    }

LABEL_31:
    v54 = v47;
    while (1)
    {
      v47 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v47 >= v52)
      {
LABEL_44:
        a3;
        result = _NativeSet.extractSubset(using:count:)(v73, v67, v75, a3, a5, a6);
        *v68 = result;
        return result;
      }

      v55 = *(v70 + 8 * v47);
      ++v54;
      if (v55)
      {
        v53 = __clz(__rbit64(v55));
        for (i = ((v55 - 1) & v55); ; i = ((v51 - 1) & v51))
        {
          v56 = v53 | (v47 << 6);
          v57 = *(a3 + 48);
          v58 = *(v11 + 72);
          v77 = v56;
          v59 = *(v11 + 16);
          v59(v80, v57 + v58 * v56, a5);
          v60 = (*(a6 + 32))(*(a4 + 40), a5, a6);
          v61 = -1 << *(a4 + 32);
          v62 = v60 & ~v61;
          if ((*(v79 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
          {
            v71 = v81 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v63 = ~v61;
            while (1)
            {
              v59(v16, *(v82 + 48) + v62 * v58, a5);
              v64 = (*(*(v84 + 8) + 8))(v16, v80, a5);
              v65 = *v81;
              (*v81)(v16, a5);
              if (v64)
              {
                break;
              }

              v62 = (v62 + 1) & v63;
              if (((*(v79 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
              {
                a6 = v84;
                goto LABEL_42;
              }
            }

            result = (v65)(v80, a5);
            v11 = v76;
            *(v73 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
            v52 = j;
            v32 = __OFADD__(v75++, 1);
            a3 = v83;
            a6 = v84;
            a4 = v82;
            v51 = i;
            if (v32)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v65 = *v81;
LABEL_42:
            result = (v65)(v80, a5);
            a4 = v82;
            a3 = v83;
            v11 = v76;
            v52 = j;
            v51 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v53 = __clz(__rbit64(v51));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v75 = 0;
    v26 = 0;
    v27 = *(a4 + 56);
    v66[0] = a4 + 56;
    v28 = 1 << *(a4 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v69 = a6 + 32;
    v70 = v11 + 32;
    v77 = a3 + 56;
    v80 = (v11 + 8);
    v71 = v31;
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_10:
    v34 = v26;
    while (1)
    {
      v26 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v26 >= v31)
      {
        goto LABEL_44;
      }

      v35 = *(v66[0] + 8 * v26);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        for (j = (v35 - 1) & v35; ; j = (v30 - 1) & v30)
        {
          v36 = *(v11 + 72);
          v37 = *(a4 + 48) + v36 * (v33 | (v26 << 6));
          v38 = v72;
          i = *(v11 + 16);
          v79 = v36;
          i(v72, v37, a5);
          (*(v11 + 32))(v81, v38, a5);
          v39 = (*(a6 + 32))(*(a3 + 40), a5, a6);
          a3 = v83;
          v40 = -1 << *(v83 + 32);
          v41 = v39 & ~v40;
          v42 = v41 >> 6;
          v43 = 1 << v41;
          if (((1 << v41) & *(v77 + 8 * (v41 >> 6))) != 0)
          {
            v66[1] = v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v44 = ~v40;
            while (1)
            {
              i(v16, *(a3 + 48) + v41 * v79, a5);
              v45 = (*(*(v84 + 8) + 8))(v16, v81, a5);
              v46 = *v80;
              (*v80)(v16, a5);
              if (v45)
              {
                break;
              }

              v41 = (v41 + 1) & v44;
              v42 = v41 >> 6;
              v43 = 1 << v41;
              a3 = v83;
              if (((1 << v41) & *(v77 + 8 * (v41 >> 6))) == 0)
              {
                a6 = v84;
                goto LABEL_21;
              }
            }

            result = (v46)(v81, a5);
            v30 = j;
            v73[v42] |= v43;
            v11 = v76;
            v32 = __OFADD__(v75++, 1);
            a3 = v83;
            a6 = v84;
            a4 = v82;
            v31 = v71;
            if (v32)
            {
              goto LABEL_48;
            }

            if (!v30)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v46 = *v80;
LABEL_21:
            result = (v46)(v81, a5);
            a4 = v82;
            v11 = v76;
            v31 = v71;
            v30 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v33 = __clz(__rbit64(v30));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

__objc2_class **_NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2, __objc2_class **a3, __objc2_class **a4, __objc2_class **a5, __objc2_class **a6)
{
  v11 = isStackAllocationSafe;
  v19[10] = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 32);
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = isStackAllocationSafe;
  v19[8] = a2;
  v13 = ((1 << v12) + 63) >> 6;
  v14 = (8 * v13);
  if (v12 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v15 = (&v19[-1] - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v15);
    closure #1 in _NativeSet.genericIntersection<A>(_:)(v15, v13, v11, a2, a3, a4, a5, a6, v19);
    a2;
    return v19[0];
  }

  else
  {
    v17 = swift_slowAlloc(v14, 0xFFFFFFFFFFFFFFFFLL);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v13, v17);
    partial apply for closure #1 in _NativeSet.genericIntersection<A>(_:)(v17, v13, v19);
    a2;
    v17;
    return v19[0];
  }
}

__objc2_class **closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X2>, atomic_ullong *a4@<X3>, uint64_t a5@<X4>, const char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __objc2_class ***a9@<X8>)
{
  v74 = a4;
  v75 = a7;
  v11 = a5;
  v73 = a3;
  v51 = a2;
  v54 = a1;
  v52 = a9;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v69 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v50 - v15;
  v19 = type metadata accessor for Optional(0, v18, v16, v17);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  v23 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a8, a6, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v27 = v26;
  v50 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - v28;
  (*(v23 + 16))(v25, v73, a6);
  (*(a8 + 32))(a6, a8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a8, a6, v27, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v31 = *(AssociatedConformanceWitness + 16);
  v66 = v29;
  v67 = v27;
  v64 = AssociatedConformanceWitness + 16;
  v65 = AssociatedConformanceWitness;
  v63 = v31;
  (v31)(v27);
  v56 = v12;
  v61 = v12[6];
  v62 = v12 + 6;
  v32 = v61(v22, 1, v11);
  v53 = 0;
  if (v32 == 1)
  {
LABEL_2:
    (*(v50 + 8))(v66, v67);
    v33 = v74;
    v74;
    result = _NativeSet.extractSubset(using:count:)(v54, v51, v53, v33, v11, v75);
    *v52 = result;
    return result;
  }

  v53 = 0;
  v35 = v56[4];
  v58 = v75 + 32;
  v59 = v35;
  v72 = v11;
  v73 = v74 + 7;
  v68 = v56 + 2;
  v60 = v56 + 4;
  v36 = (v56 + 1);
  v55 = v22;
  v71 = (v56 + 1);
  v35(v76, v22, v11);
  while (1)
  {
    v38 = v74;
    v39 = (*(v75 + 32))(v74[5], v11);
    v40 = -1 << *(v38 + 32);
    v41 = v39 & ~v40;
    v42 = v41 >> 6;
    v43 = 1 << v41;
    if (((1 << v41) & v73[v41 >> 6]) != 0)
    {
      break;
    }

    v37 = *v36;
LABEL_5:
    v37(v76, v11);
LABEL_6:
    v63(v67, v65);
    if (v61(v22, 1, v11) == 1)
    {
      goto LABEL_2;
    }

    v59(v76, v22, v11);
  }

  v57 = v36 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v70 = ~v40;
  v44 = v56[9];
  v45 = v56[2];
  while (1)
  {
    v46 = v69;
    v47 = v72;
    v45(v69, v74[6] + v44 * v41, v72);
    v48 = (*(*(v75 + 8) + 8))(v46, v76, v47);
    v37 = *v71;
    (*v71)(v46, v47);
    if (v48)
    {
      break;
    }

    v41 = (v41 + 1) & v70;
    v42 = v41 >> 6;
    v43 = 1 << v41;
    if (((1 << v41) & v73[v41 >> 6]) == 0)
    {
      v36 = v71;
      v11 = v72;
      v22 = v55;
      goto LABEL_5;
    }
  }

  v36 = v71;
  v11 = v72;
  result = (v37)(v76, v72);
  v49 = v54[v42];
  v54[v42] = v49 | v43;
  if ((v49 & v43) != 0)
  {
    v22 = v55;
    goto LABEL_6;
  }

  v22 = v55;
  if (!__OFADD__(v53, 1))
  {
    ++v53;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t _SwiftNewtypeWrapper<>.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v6, a1, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(v6 + 24))(a1, v6);
  v12 = (*(a4 + 16))(v8, a4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t _SwiftNewtypeWrapper<>.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v8 + 24))(a2, v8);
  (*(a5 + 24))(a1, v10, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _SwiftNewtypeWrapper<>._rawHashValue(seed:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(v8 + 24))(a2, v8);
  v14 = (*(a5 + 32))(a1, v10, a5);
  (*(v11 + 8))(v13, v10);
  return v14;
}

double _SwiftNewtypeWrapper._toCustomAnyHashable()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 8))(v2, a1);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t _SwiftNewtypeWrapper<>._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  a5[3] = type metadata accessor for _NewtypeWrapperAnyHashableBox(0, v10);
  a5[4] = &protocol witness table for _NewtypeWrapperAnyHashableBox<A>;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a5);
  return (*(*(a1 - 8) + 32))(boxed_opaque_existential_0Tm, v5, a1);
}

uint64_t _NewtypeWrapperAnyHashableBox._canonicalBox.getter(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = a1[2];
  swift_getAssociatedTypeWitness(0, v2, v3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-1] - v6;
  (*(v2 + 24))(v3, v2);
  AnyHashable.init<A>(_:)(v7, v5, a1[5], v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_0Tm(v12, v13);
  (*(v9 + 8))(v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t _ConcreteHashableBox._base.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = v3;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_0Tm, v2, v3);
}

uint64_t _NewtypeWrapperAnyHashableBox._unbox<A>()@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, swift *a3@<X8>)
{
  v32 = a3;
  v5 = *(a1 + 16);
  v31 = *(*(a1 + 32) + 8);
  swift_getAssociatedTypeWitness(0, v31, v5, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = (&v29 - v7);
  v10 = type metadata accessor for Optional(0, a2, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v29 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v3, v5);
  v21 = swift_dynamicCast(v17, v19, v5, a2, 6uLL);
  v22 = *(a2 - 1);
  v23 = *(v22 + 56);
  v23(v17, v21 ^ 1u, 1, a2);
  (*(v11 + 32))(v14, v17, v10);
  if ((*(v22 + 48))(v14, 1, a2) == 1)
  {
    v24 = v29;
    (v31[3])(v5);
    v25 = v32;
    v26 = swift_dynamicCast(v32, v24, v30, a2, 6uLL);
    v23(v25, v26 ^ 1u, 1, a2);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v28 = v32;
    (*(v22 + 32))(v32, v14, a2);
    return (v23)(v28, 0, 1, a2);
  }
}

uint64_t _NewtypeWrapperAnyHashableBox._downCastConditional<A>(into:)(char *a1, uint64_t a2, Class *a3)
{
  v42 = a1;
  v5 = *(a2 + 16);
  v41 = *(*(a2 + 32) + 8);
  swift_getAssociatedTypeWitness(0, v41, v5, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = (&v36 - v7);
  v40 = type metadata accessor for Optional(0, a3, v8, v9);
  v43 = *(v40 - 8);
  v10 = MEMORY[0x1EEE9AC00](v40);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v36 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a3 - 1);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v36 - v23;
  (*(v25 + 16))(v18, v3, v5);
  v26 = swift_dynamicCast(v15, v18, v5, a3, 6uLL);
  v27 = *(v19 + 56);
  if (v26)
  {
    v28 = 1;
    v27(v15, 0, 1, a3);
    v29 = *(v19 + 32);
    v29(v24, v15, a3);
    v29(v42, v24, a3);
  }

  else
  {
    v27(v15, 1, 1, a3);
    v30 = *(v43 + 8);
    v31 = v15;
    v32 = v40;
    v43 += 8;
    v37 = v30;
    v30(v31, v40);
    v33 = v38;
    (v41[3])(v5);
    if (swift_dynamicCast(v12, v33, v39, a3, 6uLL))
    {
      v28 = 1;
      v27(v12, 0, 1, a3);
      v34 = *(v19 + 32);
      v34(v22, v12, a3);
      v34(v42, v22, a3);
    }

    else
    {
      v27(v12, 1, 1, a3);
      v37(v12, v32);
      return 0;
    }
  }

  return v28;
}

uint64_t _SwiftNewtypeWrapper<>._bridgeToObjectiveC()(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v5 + 24))(a1, v5);
  v11 = (*(a3 + 16))(v7, a3);
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a2;
  v30 = a1;
  v29 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v29, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - v9;
  v12 = type metadata accessor for Optional(0, a3, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v18 = type metadata accessor for Optional(0, v7, v16, v17);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v13 + 8))(v32, v12);
  (*(v8 + 56))(v24, 1, 1, v7);
  (*(v31 + 24))(v30, v24, v7);
  (*(v19 + 32))(v22, v24, v18);
  if ((*(v8 + 48))(v22, 1, v7) == 1)
  {
    (*(*(a3 - 8) + 56))(v15, 1, 1, a3);
  }

  else
  {
    v25 = v28;
    (*(v8 + 32))(v28, v22, v7);
    (v29[2])(v25, a3);
  }

  return (*(v13 + 32))(v32, v15, v12);
}

uint64_t static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a2;
  v30 = a1;
  v29 = *(a4 + 8);
  swift_getAssociatedTypeWitness(0, v29, a3, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - v9;
  v12 = type metadata accessor for Optional(0, a3, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v18 = type metadata accessor for Optional(0, v7, v16, v17);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v13 + 8))(v32, v12);
  (*(v8 + 56))(v24, 1, 1, v7);
  LODWORD(v31) = (*(v31 + 32))(v30, v24, v7);
  (*(v19 + 32))(v22, v24, v18);
  if ((*(v8 + 48))(v22, 1, v7) == 1)
  {
    (*(*(a3 - 8) + 56))(v15, 1, 1, a3);
  }

  else
  {
    v25 = v28;
    (*(v8 + 32))(v28, v22, v7);
    (v29[2])(v25, a3);
  }

  (*(v13 + 32))(v32, v15, v12);
  return v31 & 1;
}

uint64_t static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 + 8);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for RawRepresentable, associated type descriptor for RawRepresentable.RawValue);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v16 = type metadata accessor for Optional(0, a2, v14, v15);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v21 - v17;
  (*(a4 + 40))(a1, v11, a4);
  (*(v9 + 16))(v13, a2, v9);
  v19 = *(a2 - 8);
  if ((*(v19 + 48))(v18, 1, a2) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v19 + 32))(a5, v18, a2);
}

uint64_t static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional(0, a3, a3, a4);
  (*(*(v8 - 8) + 8))(a2, v8);
  v12 = a1;
  v9 = *(a4 + 8);
  v10 = *(v9 + 16);
  swift_unknownObjectRetain(a1);
  return v10(&v12, a3, v9);
}

BOOL static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional(0, a3, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v16 = *(v9 + 8);
  v16(a2, v8);
  v17 = a1;
  v12 = *(a4 + 8);
  v13 = *(v12 + 16);
  swift_unknownObjectRetain(a1);
  v13(&v17, a3, v12);
  (*(v9 + 16))(v11, a2, v8);
  v14 = (*(*(a3 - 8) + 48))(v11, 1, a3) != 1;
  v16(v11, v8);
  return v14;
}

uint64_t static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Optional(0, a2, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - v10;
  if (!v9 || (v17 = v9, v12 = *(a3 + 8), v13 = *(v12 + 16), swift_unknownObjectRetain(v9), v13(&v17, a2, v12), v14 = *(a2 - 8), (*(v14 + 48))(v11, 1, a2) == 1))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v14 + 32))(a5, v11, a2);
}

uint64_t Unicode._InternalNFC.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  (*(v5 + 32))(v8, v2, v4);
  (*(v9 + 32))(v4, v9);
  return Unicode._InternalNFC.Iterator.init(source:)(v12, v4, v9, a2);
}

__n128 _ss7UnicodeO12_InternalNFCV8IteratorV6sourceAFy_x_GAEQz_tcfCSs0A10ScalarViewV_Tt1g5@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[2].n128_u64[0];
  if ((a1[1].n128_u64[1] & 0x2000000000000000) != 0)
  {
    v2 = a1[1].n128_u64[1];
  }

  result = *a1;
  v5 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  *(a2 + 42) = (v2 & 0x4000000000000000) != 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0x1000000000000;
  *(a2 + 80) = &_swiftEmptyArrayStorage;
  *(a2 + 88) = 0;
  *(a2 + 92) = 0;
  *(a2 + 96) = 1;
  return result;
}

uint64_t Unicode._InternalNFC.Iterator.init(source:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v9 = v8;
  v10 = *(v8 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v28 - v14);
  v16 = *(v10 + 16);
  v16(a4, a1, v9);
  v16(v15, a1, v9);
  if (swift_dynamicCast(&v28, v15, v9, &type metadata for String.UnicodeScalarView.Iterator, 6uLL))
  {
    (*(v10 + 8))(a1, v9);
    v17 = v28;
    LOBYTE(v28) = 1;
    LOBYTE(v36) = 1;
    if ((v29 & 0x2000000000000000) != 0)
    {
      v17 = v29;
    }

    v18 = (v17 >> 62) & 1;
    v29;
    result = type metadata accessor for Unicode._InternalNFC.Iterator(0, a2, a3, v19);
    v21 = a4 + *(result + 36);
    *v21 = 1;
    *(v21 + 2) = v18;
    *(v21 + 3) = v36;
    *(v21 + 7) = v37;
    *(v21 + 8) = 1;
    *(v21 + 9) = v28;
    *(v21 + 12) = *(&v28 + 3);
    *(v21 + 16) = &_swiftEmptyArrayStorage;
    *(v21 + 24) = 0;
    *(v21 + 27) = v35;
    *(v21 + 25) = v34;
    *(v21 + 28) = 0x1000000000000;
    *(v21 + 40) = &_swiftEmptyArrayStorage;
    *(v21 + 48) = 0;
    *(v21 + 49) = v32;
    *(v21 + 51) = v33;
    *(v21 + 52) = 0;
    *(v21 + 56) = 1;
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySs17UnicodeScalarViewVGMd, _ss16IndexingIteratorVySs17UnicodeScalarViewVGMR);
    if (swift_dynamicCast(&v28, v13, v9, v22, 6uLL))
    {
      v24 = v30;
      LOBYTE(v28) = 1;
      LOBYTE(v36) = 1;
      if ((v31 & 0x2000000000000000) != 0)
      {
        v24 = v31;
      }

      v25 = (v24 >> 62) & 1;
      v31;
      result = type metadata accessor for Unicode._InternalNFC.Iterator(0, a2, a3, v26);
      v27 = a4 + *(result + 36);
      *v27 = 1;
      *(v27 + 2) = v25;
      *(v27 + 3) = v36;
      *(v27 + 7) = v37;
      *(v27 + 8) = 1;
      *(v27 + 9) = v28;
      *(v27 + 12) = *(&v28 + 3);
      *(v27 + 16) = &_swiftEmptyArrayStorage;
      *(v27 + 24) = 0;
      *(v27 + 27) = v35;
      *(v27 + 25) = v34;
      *(v27 + 28) = 0x1000000000000;
      *(v27 + 40) = &_swiftEmptyArrayStorage;
      *(v27 + 48) = 0;
      *(v27 + 49) = v32;
      *(v27 + 51) = v33;
    }

    else
    {
      LOBYTE(v36) = 1;
      LOBYTE(v34) = 1;
      result = type metadata accessor for Unicode._InternalNFC.Iterator(0, a2, a3, v23);
      v27 = a4 + *(result + 36);
      *v27 = 1;
      *(v27 + 2) = 0;
      *(v27 + 8) = 1;
      *(v27 + 16) = &_swiftEmptyArrayStorage;
      *(v27 + 24) = 0;
      *(v27 + 28) = 0x1000000000000;
      *(v27 + 40) = &_swiftEmptyArrayStorage;
      *(v27 + 48) = 0;
    }

    *(v27 + 52) = 0;
    *(v27 + 56) = 1;
  }

  return result;
}

unint64_t specialized Unicode._InternalNFC.Iterator.next()(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 41) & 1) == 0)
  {
    if (*(v2 + 42))
    {
      v4 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(v2, a2);
      if ((v4 & 0x100000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(v2 + 40, closure #1 in Unicode._InternalNFC.Iterator.next()specialized partial apply);
      if ((v4 & 0x100000000) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  v3 = 1;
  *(v2 + 41) = 1;
  if ((*(v2 + 42) & 1) == 0)
  {
    v4 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(v2 + 40);
    if ((v4 & 0x100000000) == 0)
    {
      v3 = 0;
      return v4 | (v3 << 32);
    }

    v5 = *(v2 + 92);
    v6 = *(v2 + 96);
    *(v2 + 92) = v4;
    *(v2 + 96) = 1;
    if (v6 != 1)
    {
      v3 = 0;
      LODWORD(v4) = v5;
      return v4 | (v3 << 32);
    }

    if (!*(*(v2 + 80) + 16))
    {
      LODWORD(v4) = 0;
      *(v2 + 88) = 0;
      v3 = 1;
      return v4 | (v3 << 32);
    }

    if ((*(v2 + 88) & 1) == 0)
    {
      specialized MutableCollection<>.reverse()();
      *(v2 + 88) = 1;
    }

    LODWORD(v4) = specialized RangeReplaceableCollection<>.removeLast()();
LABEL_16:
    v3 = 0;
    return v4 | (v3 << 32);
  }

  LODWORD(v4) = 0;
  return v4 | (v3 << 32);
}

Swift::Unicode::Scalar_optional __swiftcall Unicode._InternalNFC.Iterator.next()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v1 + *(v0 + 36);
  if ((*(v4 + 1) & 1) == 0)
  {
    if (*(v4 + 2) == 1)
    {
      swift_getAssociatedTypeWitness(255, v3, v2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
      v8 = v7;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v2, v7, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
      v10 = *(AssociatedConformanceWitness + 16);
      v11 = swift_checkMetadataState(0, v8);
      v10(&v15, v11, AssociatedConformanceWitness);
      if ((v15 & 0x100000000) == 0)
      {
        v5 = 0;
        LODWORD(v6) = v15;
        return (v6 | (v5 << 32));
      }
    }

    else
    {
      v6 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(v1 + *(v0 + 36), partial apply for closure #1 in Unicode._InternalNFC.Iterator.next());
      if ((v6 & 0x100000000) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  v5 = 1;
  *(v4 + 1) = 1;
  if ((*(v4 + 2) & 1) == 0)
  {
    v6 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(v4);
    if ((v6 & 0x100000000) == 0)
    {
      v5 = 0;
      return (v6 | (v5 << 32));
    }

    v12 = *(v4 + 52);
    v13 = *(v4 + 56);
    *(v4 + 52) = v6;
    *(v4 + 56) = 1;
    if (v13 != 1)
    {
      v5 = 0;
      LODWORD(v6) = v12;
      return (v6 | (v5 << 32));
    }

    if (!*(*(v4 + 40) + 16))
    {
      LODWORD(v6) = 0;
      *(v4 + 48) = 0;
      v5 = 1;
      return (v6 | (v5 << 32));
    }

    if ((*(v4 + 48) & 1) == 0)
    {
      specialized MutableCollection<>.reverse()();
      *(v4 + 48) = 1;
    }

    LODWORD(v6) = specialized RangeReplaceableCollection<>.removeLast()();
LABEL_16:
    v5 = 0;
    return (v6 | (v5 << 32));
  }

  LODWORD(v6) = 0;
  return (v6 | (v5 << 32));
}

unint64_t specialized closure #1 in Unicode._InternalNFC.Iterator.next()(unint64_t *a1, uint64_t a2)
{
  v2._rawBits = a1[4];
  v3 = v2._rawBits >> 14;
  v4 = a1[1] >> 14;
  if (v2._rawBits >> 14 == v4)
  {
    v5 = 0;
    goto LABEL_38;
  }

  v7 = *a1;
  v9 = a1[2];
  v8 = a1[3];
  v10 = (v8 & 0x1000000000000000) == 0 || (v9 & 0x800000000000000) != 0;
  v11 = a1[4] & 0xC;
  v12 = 4 << v10;
  if ((v2._rawBits & 1) == 0 || v11 == v12)
  {
    v15 = v2._rawBits >> 14;
    rawBits = a1[4];
    if (v11 == v12)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v2)._rawBits;
      v15 = rawBits >> 14;
    }

    if (v15 < v7 >> 14 || v15 >= v4)
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((rawBits & 1) == 0)
    {
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      if ((v8 & 0x1000000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v13 = v3 < v4 && v3 >= v7 >> 14;
    rawBits = a1[4];
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
LABEL_23:
    v17 = rawBits >> 16;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v33 = v9;
      v34 = v8 & 0xFFFFFFFFFFFFFFLL;
      v18 = &v33;
    }

    else if ((v9 & 0x1000000000000000) != 0)
    {
      v18 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = v8;
      v32 = rawBits >> 16;
      v18 = _StringObject.sharedUTF8.getter(v9, v31);
      v17 = v32;
    }

    value = _decodeScalar(_:startingAt:)(v18, a2, v17);
    goto LABEL_28;
  }

LABEL_41:
  value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
LABEL_28:
  v20 = value;
  v22 = a1[2];
  v21 = a1[3];
  v23._rawBits = _StringGuts.validateScalarIndex(_:)(v2)._rawBits;
  if ((v21 & 0x1000000000000000) != 0)
  {
    v29 = String.UnicodeScalarView._foreignIndex(after:)(v23)._rawBits;
  }

  else
  {
    v24 = v23._rawBits >> 16;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v33 = v22;
      v34 = v21 & 0xFFFFFFFFFFFFFFLL;
      v26 = *(&v33 + v24);
    }

    else
    {
      if ((v22 & 0x1000000000000000) != 0)
      {
        v25 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v25 = _StringObject.sharedUTF8.getter(v22, v21);
      }

      v26 = v25[v24];
    }

    v27 = v26;
    v28 = __clz(v26 ^ 0xFF) - 24;
    if (v27 >= 0)
    {
      LOBYTE(v28) = 1;
    }

    v29 = ((v24 + v28) << 16) | 5;
  }

  a1[4] = v29;
  v5 = v20;
LABEL_38:
  LOBYTE(v33) = v3 == v4;
  return v5 | ((v3 == v4) << 32);
}

uint64_t protocol witness for IteratorProtocol.next() in conformance Unicode._InternalNFC<A>.Iterator@<X0>(uint64_t a1@<X8>)
{
  *&result = Unicode._InternalNFC.Iterator.next()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t specialized Unicode._NFDNormalizer._resume(consuming:)(uint64_t a1, Swift::String::Index *a2)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(*(a1 + 8) + 16))
    {
      goto LABEL_5;
    }

    *(a1 + 16) = 0;
    *(a1 + 27) = 0;
    *a1 = 1;
  }

  if (*(a1 + 26))
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  if ((v9 & 0x7F8) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (!*(*(a1 + 8) + 16))
  {
    if ((v9 & 1) == 0)
    {
      v5 = 0;
      *(a1 + 24) = 0;
      *(a1 + 20) = 0;
      *(a1 + 26) = 1;
      v4 = v8 | (v9 << 32);
      goto LABEL_8;
    }

LABEL_23:
    if (v8 - 55204 >= 0xFFFFD45C)
    {
      Unicode._NFDNormalizer.decomposeHangul(_:)(v8);
    }

    else
    {
      Unicode._NFDNormalizer.decomposeSlow(_:)(v8, v9);
    }

    while (1)
    {
LABEL_26:
      v15._rawBits = a2[4]._rawBits;
      v16 = v15._rawBits >> 14;
      v17 = a2[1]._rawBits >> 14;
      if (v15._rawBits >> 14 == v17)
      {
        v4 = 0;
        *(a1 + 24) = 0;
        *(a1 + 20) = 0;
        v5 = 1;
        *(a1 + 26) = 1;
        goto LABEL_8;
      }

      rawBits = a2->_rawBits;
      v20 = a2[2]._rawBits;
      v19 = a2[3]._rawBits;
      v21 = (v19 & 0x1000000000000000) == 0 || (v20 & 0x800000000000000) != 0;
      v22 = a2[4]._rawBits & 0xC;
      v23 = 4 << v21;
      if ((v15._rawBits & 1) != 0 && v22 != v23)
      {
        break;
      }

      v24 = a2[4]._rawBits;
      if (v22 == v23)
      {
        v24 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2[4])._rawBits;
        v16 = v24 >> 14;
        if (v24 >> 14 < rawBits >> 14)
        {
          goto LABEL_59;
        }
      }

      else if (v16 < rawBits >> 14)
      {
        goto LABEL_59;
      }

      if (v16 >= v17)
      {
        goto LABEL_59;
      }

      if (v24)
      {
        goto LABEL_40;
      }

      v24 = _StringGuts.scalarAlignSlow(_:)(v24)._rawBits;
      if ((v19 & 0x1000000000000000) != 0)
      {
LABEL_62:
        value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v24 & 0xFFFFFFFFFFFF0000))._0._value;
        goto LABEL_46;
      }

LABEL_41:
      v25 = v24 >> 16;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v38 = v20;
        v39 = v19 & 0xFFFFFFFFFFFFFFLL;
        v26 = &v38;
      }

      else if ((v20 & 0x1000000000000000) != 0)
      {
        v26 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v36 = v19;
        v37 = v24 >> 16;
        v26 = _StringObject.sharedUTF8.getter(v20, v36);
        v25 = v37;
      }

      value = _decodeScalar(_:startingAt:)(v26, a2, v25);
LABEL_46:
      v8 = value;
      v29 = a2[2]._rawBits;
      v28 = a2[3]._rawBits;
      v30._rawBits = _StringGuts.validateScalarIndex(_:)(v15)._rawBits;
      if ((v28 & 0x1000000000000000) != 0)
      {
        a2[4]._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v30)._rawBits;
      }

      else
      {
        v31 = v30._rawBits >> 16;
        if ((v28 & 0x2000000000000000) != 0)
        {
          v38 = v29;
          v39 = v28 & 0xFFFFFFFFFFFFFFLL;
          v33 = *(&v38 + v31);
        }

        else
        {
          if ((v29 & 0x1000000000000000) != 0)
          {
            v32 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v32 = _StringObject.sharedUTF8.getter(v29, v28);
          }

          v33 = v32[v31];
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        a2[4]._rawBits = ((v31 + v35) << 16) | 5;
      }

      if (v8 < 0xC0)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v9 = _swift_stdlib_getNormData(v8) | ((v8 - 44032) >> 2 < 0xAE9);
      if ((v9 & 0x7F8) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      if (v9)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v10);
      *(a1 + 8) = v10;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v10[2]->isa + 1, 1, v10);
        *(a1 + 8) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = (v13 + 1);
      v14 = &v10[v13];
      *(v14 + 8) = v8;
      *(v14 + 18) = v9;
      *(a1 + 8) = v10;
    }

    if (v16 >= v17 || (v24 = a2[4]._rawBits, v16 < rawBits >> 14))
    {
LABEL_59:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_40:
    if ((v19 & 0x1000000000000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_41;
  }

  *(a1 + 20) = v8;
  *(a1 + 24) = v9;
  *(a1 + 26) = 0;
  Unicode._NormDataBuffer.sort()();
  *(a1 + 27) = 1;
  *a1 = 0;
  v4 = *(*(a1 + 8) + 16);
  if (!v4)
  {
    *(a1 + 16) = 0;
    v5 = 1;
    goto LABEL_8;
  }

LABEL_5:
  if ((*(a1 + 16) & 1) == 0)
  {
    specialized MutableCollection<>.reverse()();
    *(a1 + 16) = 1;
  }

  v6 = specialized RangeReplaceableCollection<>.removeLast()();
  v5 = 0;
  v4 = v6 & 0xFFFFFFFFFFFFLL;
LABEL_8:
  LOBYTE(v38) = v5;
  return v4 | (v5 << 48);
}

unint64_t Unicode._NFDNormalizer._resume(consuming:)(uint64_t (*a1)(void))
{
  v2 = v1;
  if (*v1)
  {
    if (*v1 != 1)
    {
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 48);
    }
  }

  else
  {
    if (*(*(v1 + 8) + 16))
    {
LABEL_14:
      if ((*(v2 + 16) & 1) == 0)
      {
        specialized MutableCollection<>.reverse()();
        *(v2 + 16) = 1;
      }

      v14 = specialized RangeReplaceableCollection<>.removeLast()();
      v5 = 0;
      v4 = v14 & 0xFFFFFFFFFFFFLL;
      return v4 | (v5 << 48);
    }

    *(v1 + 16) = 0;
    *(v1 + 27) = 0;
    *v1 = 1;
  }

  if (*(v1 + 26) != 1)
  {
    LODWORD(v6) = *(v1 + 20);
    v7 = *(v1 + 24);
    if ((v7 & 0x7F8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  while (1)
  {
    while (1)
    {
      v6 = a1();
      if ((v6 & 0x100000000) != 0)
      {
        v4 = 0;
        *(v2 + 24) = 0;
        *(v2 + 20) = 0;
        v5 = 1;
        *(v2 + 26) = 1;
        return v4 | (v5 << 48);
      }

      if (v6 < 0xC0)
      {
        v7 = 0;
        break;
      }

      v16 = v6;
      NormData = _swift_stdlib_getNormData(v6);
      LODWORD(v6) = v16;
      v7 = NormData | ((v16 - 44032) >> 2 < 0xAE9);
      if (((NormData | ((v16 - 44032) >> 2 < 0xAE9)) & 0x7F8) == 0)
      {
        break;
      }

LABEL_8:
      if (v7)
      {
        goto LABEL_22;
      }

      v8 = v6;
      v9 = *(v2 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v9);
      *(v2 + 8) = v9;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v9[2]->isa + 1, 1, v9);
        *(v2 + 8) = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = (v12 + 1);
      v13 = &v9[v12];
      *(v13 + 8) = v8;
      *(v13 + 18) = v7;
      *(v2 + 8) = v9;
    }

LABEL_20:
    if (*(*(v2 + 8) + 16))
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      v5 = 0;
      *(v2 + 24) = 0;
      *(v2 + 20) = 0;
      *(v2 + 26) = 1;
      v4 = v6 | (v7 << 32);
      return v4 | (v5 << 48);
    }

LABEL_22:
    if ((v6 - 55204) > 0xFFFFD45B)
    {
      Unicode._NFDNormalizer.decomposeHangul(_:)(v6);
    }

    else
    {
      Unicode._NFDNormalizer.decomposeSlow(_:)(v6, v7);
    }
  }

  *(v2 + 20) = v6;
  *(v2 + 24) = v7;
  *(v2 + 26) = 0;
  Unicode._NormDataBuffer.sort()();
  *(v2 + 27) = 1;
  *v2 = 0;
  v4 = *(*(v2 + 8) + 16);
  if (v4)
  {
    goto LABEL_14;
  }

  *(v2 + 16) = 0;
  v5 = 1;
  return v4 | (v5 << 48);
}

unint64_t specialized Unicode._NFCNormalizer._resume(consumingNFD:)(uint64_t a1)
{
  if (*a1)
  {
    goto LABEL_7;
  }

  if (!*(*(a1 + 40) + 16))
  {
    *(a1 + 48) = 0;
    *a1 = 1;
LABEL_7:
    v17 = Unicode._NFDNormalizer._flush()();
    if ((*&v17.value.scalar._value & 0x1000000000000) != 0)
    {
LABEL_34:
      LODWORD(v4) = 0;
      LOBYTE(v3) = 1;
      return v4 | (v3 << 32);
    }

    v4 = *&v17.value.scalar._value;
    while (1)
    {
      if (*(a1 + 56))
      {
        if ((v4 & 0x7F800000000) != 0)
        {
          LOBYTE(v3) = 0;
          return v4 | (v3 << 32);
        }

        *(a1 + 52) = v4;
      }

      else
      {
        v6 = *(a1 + 52);
        v7 = *(a1 + 40);
        v8 = v7[2];
        if (v8)
        {
          v3 = (v4 >> 35);
          if (v3 <= (WORD2(v7[v8 + 3]) >> 3))
          {
            if (!(v4 >> 35))
            {
              *(a1 + 52) = v4;
              *(a1 + 56) = 0;
              LODWORD(v4) = v6;
              *a1 = 0;
              return v4 | (v3 << 32);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*(a1 + 40));
            *(a1 + 40) = v7;
            if (!isUniquelyReferenced_nonNull_native)
            {
              v11 = &v8->isa + 1;
LABEL_33:
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 1, v7);
              *(a1 + 40) = v7;
            }

            goto LABEL_29;
          }

          if ((v4 & 0x600000000) == 0)
          {
            goto LABEL_25;
          }

          v9 = specialized Unicode._NFCNormalizer.composeHangul(_:and:)(*(a1 + 52), v4);
          if ((v9 & 0x100000000) != 0)
          {
            LODWORD(v9) = _swift_stdlib_getComposition(v6, v4);
            if (v9 == -1)
            {
              goto LABEL_25;
            }
          }
        }

        else if ((v4 & 0x600000000) == 0 || (v9 = specialized Unicode._NFCNormalizer.composeHangul(_:and:)(*(a1 + 52), v4), (v9 & 0x100000000) != 0) && (LODWORD(v9) = _swift_stdlib_getComposition(v6, v4), v9 == -1))
        {
          if ((v4 & 0x7F800000000) == 0)
          {
            LOBYTE(v3) = 0;
            *(a1 + 52) = v4;
            *(a1 + 56) = 0;
            LODWORD(v4) = v6;
            return v4 | (v3 << 32);
          }

LABEL_25:
          v10 = swift_isUniquelyReferenced_nonNull_native(v7);
          *(a1 + 40) = v7;
          if (!v10)
          {
            v11 = &v7[2]->isa + 1;
            goto LABEL_33;
          }

LABEL_29:
          v14 = v7[2];
          v13 = v7[3];
          if (v14 >= v13 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
          }

          v7[2] = (v14 + 1);
          v15 = &v7[v14];
          *(v15 + 8) = v4;
          *(v15 + 18) = WORD2(v4);
          *(a1 + 40) = v7;
          goto LABEL_11;
        }

        *(a1 + 52) = v9;
      }

      *(a1 + 56) = 0;
LABEL_11:
      *&v5 = Unicode._NFDNormalizer._flush()();
      v4 = v5;
      if ((v5 & 0x1000000000000) != 0)
      {
        goto LABEL_34;
      }
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    specialized MutableCollection<>.reverse()();
    *(a1 + 48) = 1;
  }

  v2 = specialized RangeReplaceableCollection<>.removeLast()();
  LOBYTE(v3) = 0;
  LODWORD(v4) = v2;
  return v4 | (v3 << 32);
}

Swift::tuple_scalar_Unicode_Scalar_normData_Unicode__NormData_optional __swiftcall Unicode._NFDNormalizer._flush()()
{
  *v0 = 2;
  v1 = (v0 + 8);
  v2 = *(v0 + 8);
  if ((*(v0 + 27) & 1) == 0)
  {
    v3 = v2[2];
    if (v3 >= 2)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*(v0 + 8));
      *v1 = v2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      *v1 = v2;
      v11 = v2 + 22;
      for (i = 1; i != v3; ++i)
      {
        v13 = v2[2];
        if (i >= v13)
        {
          goto LABEL_24;
        }

        if ((WORD2(v2[i + 4]) >> 3) < (WORD2(v2[i + 3]) >> 3))
        {
          v14 = i;
          v15 = v11;
          while (v14 < v13)
          {
            v16 = v14 - 1;
            if (v16 >= v13)
            {
              break;
            }

            v17 = *v15;
            v18 = *(v15 - 1);
            v19 = *(v15 - 4);
            *(v15 - 1) = *(v15 - 3);
            *v15 = v19;
            *(v15 - 3) = v18;
            *(v15 - 4) = v17;
            if (!v16)
            {
              goto LABEL_22;
            }

            v13 = v2[2];
            if (v16 >= v13)
            {
              break;
            }

            v20 = v16 - 1;
            if (v20 >= v13)
            {
              break;
            }

            v21 = *(v15 - 4);
            v22 = *(v15 - 8);
            v15 -= 4;
            v14 = v20 + 1;
            if ((v21 >> 3) >= (v22 >> 3))
            {
              goto LABEL_22;
            }
          }

LABEL_24:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_22:
        v11 += 4;
      }

      *v1 = v2;
    }

    *(v0 + 27) = 1;
  }

  if (v2[2])
  {
    if ((*(v0 + 16) & 1) == 0)
    {
      specialized MutableCollection<>.reverse()();
      *(v0 + 16) = 1;
    }

    v4 = specialized RangeReplaceableCollection<>.removeLast()();
    v6 = 0;
  }

  else
  {
    v8 = *(v0 + 20);
    v7 = v0 + 20;
    *(v7 - 4) = 0;
    v4 = v8 | (*(v7 + 4) << 32);
    v6 = *(v7 + 6);
    *v7 = 0;
    *(v7 + 4) = 0;
    *(v7 + 6) = 1;
  }

  v9 = v4 & 0xFFFFFFFFFFFFLL | (v6 << 48);
  result.value = v9;
  result.is_nil = v5;
  return result;
}

uint64_t static UInt32.% infix(_:_:)(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

uint64_t Unicode._InternalNFD.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 32))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  (*(v7 + 32))(v4, v7);
  result = type metadata accessor for Unicode._InternalNFD.Iterator(0, v4, v7, v8);
  v10 = a2 + *(result + 36);
  *v10 = 1;
  *(v10 + 8) = &_swiftEmptyArrayStorage;
  *(v10 + 16) = 0;
  *(v10 + 20) = 0x1000000000000;
  return result;
}

unint64_t specialized Unicode._InternalNFD.Iterator.next()()
{
  v1 = v0;
  v2 = specialized Unicode._NFDNormalizer._resume(consuming:)(&v0[5], v0);
  if ((v2 & 0x1000000000000) != 0)
  {
    p_rawBits = &v0[6]._rawBits;
    rawBits = v1[6]._rawBits;
    LOBYTE(v1[5]._rawBits) = 2;
    if ((v1[8]._rawBits & 0x1000000) == 0)
    {
      v6 = rawBits[2];
      if (v6 >= 2)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(rawBits);
        *p_rawBits = rawBits;
        if (!isUniquelyReferenced_nonNull_native)
        {
          rawBits = specialized _ArrayBuffer._consumeAndCreateNew()(rawBits);
        }

        *p_rawBits = rawBits;
        v13 = rawBits + 22;
        for (i = 1; i != v6; ++i)
        {
          v15 = rawBits[2];
          if (i >= v15)
          {
            goto LABEL_29;
          }

          if ((WORD2(rawBits[i + 4]) >> 3) < (WORD2(rawBits[i + 3]) >> 3))
          {
            v16 = i;
            v17 = v13;
            while (v16 < v15)
            {
              v18 = v16 - 1;
              if (v18 >= v15)
              {
                break;
              }

              v19 = *v17;
              v20 = *(v17 - 1);
              v21 = *(v17 - 4);
              *(v17 - 1) = *(v17 - 3);
              *v17 = v21;
              *(v17 - 3) = v20;
              *(v17 - 4) = v19;
              if (!v18)
              {
                goto LABEL_27;
              }

              v15 = rawBits[2];
              if (v18 >= v15)
              {
                break;
              }

              v22 = v18 - 1;
              if (v22 >= v15)
              {
                break;
              }

              v23 = *(v17 - 4);
              v24 = *(v17 - 8);
              v17 -= 4;
              v16 = v22 + 1;
              if ((v23 >> 3) >= (v24 >> 3))
              {
                goto LABEL_27;
              }
            }

LABEL_29:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_27:
          v13 += 4;
        }

        *p_rawBits = rawBits;
      }

      BYTE3(v1[8]._rawBits) = 1;
    }

    if (rawBits[2])
    {
      if ((v1[7]._rawBits & 1) == 0)
      {
        specialized MutableCollection<>.reverse()();
        LOBYTE(v1[7]._rawBits) = 1;
      }

      LODWORD(v2) = specialized RangeReplaceableCollection<>.removeLast()();
      v3 = 0;
    }

    else
    {
      rawBits_high = HIDWORD(v1[7]._rawBits);
      v7 = &v1[7]._rawBits + 4;
      *(v7 - 4) = 0;
      v9 = rawBits_high;
      v10 = v7[6];
      *v7 = 0;
      *(v7 + 2) = 0;
      v7[6] = 1;
      if (v10)
      {
        LODWORD(v2) = 0;
      }

      else
      {
        LODWORD(v2) = v9;
      }

      v3 = (v10 & 1) != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 32);
}

Swift::Unicode::Scalar_optional __swiftcall Unicode._InternalNFD.Iterator.next()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness(0, v1, v2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  swift_getAssociatedConformanceWitness(v1, v2, v3, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v4 = Unicode._NFDNormalizer._resume(consuming:)(partial apply for closure #1 in Unicode._NFDNormalizer.resume<A>(consuming:));
  if ((v4 & 0x1000000000000) != 0)
  {
    *&v4 = Unicode._NFDNormalizer._flush()();
    v5 = (v4 & 0x1000000000000) >> 48;
    if ((v4 & 0x1000000000000) != 0)
    {
      LODWORD(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return (v4 | ((v5 & 1) << 32));
}

uint64_t protocol witness for IteratorProtocol.next() in conformance Unicode._InternalNFD<A>.Iterator@<X0>(uint64_t a1@<X8>)
{
  *&result = Unicode._InternalNFD.Iterator.next()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

Swift::Void __swiftcall Unicode._NormDataBuffer.sort()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v0);
    *v0 = v1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    *v0 = v1;
    v4 = v1 + 22;
    for (i = 1; i != v2; ++i)
    {
      v6 = v1[2];
      if (i >= v6)
      {
        goto LABEL_16;
      }

      if ((WORD2(v1[i + 4]) >> 3) < (WORD2(v1[i + 3]) >> 3))
      {
        v7 = i;
        v8 = v4;
        while (v7 < v6)
        {
          v9 = v7 - 1;
          if (v9 >= v6)
          {
            break;
          }

          v10 = *v8;
          v11 = *(v8 - 1);
          v12 = *(v8 - 4);
          *(v8 - 1) = *(v8 - 3);
          *v8 = v12;
          *(v8 - 3) = v11;
          *(v8 - 4) = v10;
          if (!v9)
          {
            goto LABEL_14;
          }

          v6 = v1[2];
          if (v9 >= v6)
          {
            break;
          }

          v13 = v9 - 1;
          if (v13 >= v6)
          {
            break;
          }

          v14 = *(v8 - 4);
          v15 = *(v8 - 8);
          v8 -= 4;
          v7 = v13 + 1;
          if ((v14 >> 3) >= (v15 >> 3))
          {
            goto LABEL_14;
          }
        }

LABEL_16:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_14:
      v4 += 4;
    }

    *v0 = v1;
  }
}

__objc2_class **Unicode._NFDNormalizer.decomposeHangul(_:)(int a1)
{
  v2 = a1 - 44032;
  v3 = (a1 - 44032) / 0x24Cu;
  v4 = *(v1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native(v4);
  *(v1 + 8) = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(v1 + 8) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v8;
  v9 = v4 + 8 * v7;
  *(v9 + 32) = v3 + 4352;
  *(v9 + 36) = 0;
  v10 = (v2 - 588 * v3) / 0x1Cu + 4449;
  *(v1 + 8) = v4;
  v11 = *(v4 + 24);
  v12 = v7 + 2;
  if ((v7 + 2) > (v11 >> 1))
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v7 + 2, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v12;
  v13 = v4 + 8 * v8;
  *(v13 + 32) = v10;
  *(v13 + 36) = 4;
  *(v1 + 8) = v4;
  if (v2 % 0x1C)
  {
    v14 = v2 % 0x1C + 4519;
    v15 = *(v4 + 24);
    if ((v7 + 3) > (v15 >> 1))
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v7 + 3, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v7 + 3;
    v16 = v4 + 8 * v12;
    *(v16 + 32) = v14;
    *(v16 + 36) = 4;
    *(v1 + 8) = v4;
  }

  return result;
}

uint64_t Unicode._NFDNormalizer.decomposeSlow(_:)(int a1, __int16 a2)
{
  result = _swift_stdlib_getDecompositionEntry(a1);
  if ((result & 0x3FFFF) == a1)
  {
    v7 = _swift_stdlib_nfd_decomp[result >> 18];
    if (_swift_stdlib_nfd_decomp[result >> 18])
    {
      v8 = (result >> 18) + 0x180675AC3;
      v9 = *(v2 + 8);
      do
      {
        v10 = _decodeScalar(_:startingAt:)(v8, v6, 0);
        if (v7 < v11)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v8)
        {
          v8 += v11;
        }

        else
        {
          v8 = 0;
        }

        v7 -= v11;
        if (v7 < 0 || (v12 = v10, v7) && !v8)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v10 >= 0x300)
        {
          v13 = _swift_stdlib_getNormData(v10) | ((v10 - 44032) >> 2 < 0xAE9);
        }

        else
        {
          v13 = 0;
        }

        result = swift_isUniquelyReferenced_nonNull_native(v9);
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v15 + 1;
        v16 = v9 + 8 * v15;
        *(v16 + 32) = v12;
        *(v16 + 36) = v13;
      }

      while (v7);
      *(v2 + 8) = v9;
    }
  }

  else
  {
    v17 = *(v2 + 8);
    result = swift_isUniquelyReferenced_nonNull_native(v17);
    *(v2 + 8) = v17;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
      *(v2 + 8) = result;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = v19 + 1;
    v20 = v17 + 8 * v19;
    *(v20 + 32) = a1;
    *(v20 + 36) = a2;
    *(v2 + 8) = v17;
  }

  return result;
}

uint64_t static UInt32./ infix(_:_:)(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

uint64_t _decodeScalar(_:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + a3);
  v4 = *(a1 + a3);
  result = *(a1 + a3);
  if (v4 < 0)
  {
    v6 = (__clz(result ^ 0xFF) - 24);
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        return ((result & 0xF) << 12) | ((v3[1] & 0x3F) << 6) | v3[2] & 0x3F;
      }

      else
      {
        return ((result & 0xF) << 18) | ((v3[1] & 0x3F) << 12) | ((v3[2] & 0x3F) << 6) | v3[3] & 0x3F;
      }
    }

    else if (v6 != 1)
    {
      return v3[1] & 0x3F | ((result & 0x1F) << 6);
    }
  }

  return result;
}

uint64_t ObjectIdentifier.debugDescription.getter(Swift::UInt64 a1)
{
  v4 = _StringGuts.init(_initialCapacity:)(20);
  v6 = v4;
  v7 = v5;
  v170 = v4;
  v171 = v5;
  v8 = 0x800000018066DB90 | 0x8000000000000000;
  v9 = HIBYTE(v5) & 0xF;
  v10 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v11 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 && (v4 & ~v5 & 0x2000000000000000) == 0)
  {
    v5;
    v170 = 0xD000000000000011;
    v171 = 0x800000018066DB90 | 0x8000000000000000;
    goto LABEL_86;
  }

  v12 = 0x800000018066DB90 & 0x2000000000000000;
  v2 = (0x800000018066DB90 >> 56) & 0xF;
  if ((0x800000018066DB90 & 0x2000000000000000 & v5) != 0)
  {
    v1 = v9 + v2;
    if (v9 + v2 <= 0xF)
    {
      if (v2)
      {
        v32 = 0;
        v33 = 0;
        v34 = 8 * v9;
        v35 = v5;
        do
        {
          v36 = v8 >> (v32 & 0x38);
          if (v33 < 8)
          {
            v36 = 0xD000000000000011 >> v32;
          }

          v37 = (v36 << (v34 & 0x38)) | ((-255 << (v34 & 0x38)) - 1) & v35;
          v38 = (v36 << v34) | ((-255 << v34) - 1) & v6;
          if (v9 <= 7)
          {
            v6 = v38;
          }

          else
          {
            v35 = v37;
          }

          ++v9;
          v34 += 8;
          v32 += 8;
          ++v33;
        }

        while (8 * v2 != v32);
      }

      else
      {
        v35 = v5;
      }

      v5;
      0x800000018066DB90 | 0x8000000000000000;
      v56 = 0xA000000000000000;
      if (!(v6 & 0x8080808080808080 | v35 & 0x80808080808080))
      {
        v56 = 0xE000000000000000;
      }

      v55 = v56 & 0xFF00000000000000 | (v1 << 56) | v35 & 0xFFFFFFFFFFFFFFLL;
LABEL_79:
      v170 = v6;
      v171 = v55;
      goto LABEL_86;
    }
  }

  v167 = a1;
  if (v12)
  {
    v13 = (0x800000018066DB90 >> 56) & 0xF;
  }

  else
  {
    v13 = 17;
  }

  v165 = v13;
  if ((0x800000018066DB90 & 0x1000000000000000) == 0)
  {
    0x800000018066DB90 | 0x8000000000000000;
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_238:
    v146 = String.UTF8View._foreignCount()();
    v16 = v146 + v13;
    if (!__OFADD__(v146, v13))
    {
      goto LABEL_14;
    }

LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  swift_bridgeObjectRetain_n(v8, 2);
  v142._rawBits = 1;
  v143._rawBits = (v13 << 16) | 1;
  v144._rawBits = _StringGuts.validateScalarRange(_:)(v142, v143, 0xD000000000000011, v8)._rawBits;
  if (v144._rawBits < 0x10000)
  {
    v144._rawBits |= 3;
  }

  v13 = String.UTF8View.distance(from:to:)(v144, v145);
  v8;
  if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_238;
  }

LABEL_13:
  v15 = __OFADD__(v11, v13);
  v16 = v11 + v13;
  if (v15)
  {
    goto LABEL_240;
  }

LABEL_14:
  v17 = v6 & ~v7;
  if ((v17 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v16 > 15)
    {
      goto LABEL_25;
    }

    if ((v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

  v18 = _StringGuts.nativeUnusedCapacity.getter(v6, v7);
  if (v19)
  {
    goto LABEL_263;
  }

  if (v16 > 15)
  {
    goto LABEL_25;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
LABEL_49:
    v2 = v7;
    goto LABEL_50;
  }

  if (v18 < v13)
  {
LABEL_20:
    if ((v7 & 0x1000000000000000) == 0)
    {
      v20 = v165;
      if ((v6 & 0x1000000000000000) != 0)
      {
        v21 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v21 = _StringObject.sharedUTF8.getter(v6, v7);
        v10 = v156;
      }

      closure #1 in _StringGuts._convertedToSmall()(v21, v10, &v169, v14);
      v2 = *(&v169 + 1);
      v6 = v169;
LABEL_51:
      v10 = 0xD000000000000011;
      v8;
      v39._rawBits = 1;
      v40._rawBits = (v20 << 16) | 1;
      v41._rawBits = _StringGuts.validateScalarRange(_:)(v39, v40, 0xD000000000000011, v8)._rawBits;
      if (v41._rawBits < 0x10000)
      {
        v41._rawBits |= 3;
      }

      if (v41._rawBits >> 16 || v42._rawBits >> 16 != v20)
      {
        v10 = specialized static String._copying(_:)(v41._rawBits, v42._rawBits, 0xD000000000000011, v8);
        v1 = v43;
        v8;
      }

      else
      {
        v1 = 0x800000018066DB90 | 0x8000000000000000;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        v1;
LABEL_61:
        v44 = HIBYTE(v2) & 0xF;
        v45 = HIBYTE(v1) & 0xF;
        v46 = v45 + v44;
        if (v45 + v44 > 0xF)
        {
          goto LABEL_263;
        }

        v8;
        if (v45)
        {
          v47 = 0;
          v48 = 0;
          v49 = 8 * v44;
          v50 = 8 * v45;
          a1 = v167;
          do
          {
            v51 = v1 >> (v47 & 0x38);
            if (v48 < 8)
            {
              v51 = v10 >> v47;
            }

            v52 = (v51 << (v49 & 0x38)) | ((-255 << (v49 & 0x38)) - 1) & v2;
            v53 = (v51 << v49) | ((-255 << v49) - 1) & v6;
            if (v44 <= 7)
            {
              v6 = v53;
            }

            else
            {
              v2 = v52;
            }

            ++v44;
            v49 += 8;
            v47 += 8;
            ++v48;
          }

          while (v50 != v47);
        }

        else
        {
          a1 = v167;
        }

        v7;
        v8;
        v54 = 0xA000000000000000;
        if (!(v6 & 0x8080808080808080 | v2 & 0x80808080808080))
        {
          v54 = 0xE000000000000000;
        }

        v55 = v54 & 0xFF00000000000000 | (v46 << 56) | v2 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_79;
      }

LABEL_241:
      if ((v1 & 0x1000000000000000) != 0)
      {
        v10 = _StringGuts._foreignConvertedToSmall()(v10, v1);
        v160 = v159;
        v1;
        v1 = v160;
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v147 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v148 = v10 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v147 = _StringObject.sharedUTF8.getter(v10, v1);
        }

        closure #1 in _StringGuts._convertedToSmall()(v147, v148, &v169, v14);
        v1;
        v1 = *(&v169 + 1);
        v10 = v169;
      }

      goto LABEL_61;
    }

    v6 = _StringGuts._foreignConvertedToSmall()(v6, v7);
    v2 = v139;
LABEL_50:
    v20 = v165;
    goto LABEL_51;
  }

LABEL_25:
  v22 = v17 & 0x2000000000000000;
  v23 = _StringGuts.nativeUnusedCapacity.getter(v6, v7);
  if ((v24 & 1) != 0 || v23 < v13)
  {
    a1 = v167;
    if (v22)
    {
      swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL);
    }

    v25 = _StringGuts.nativeCapacity.getter(v6, v7);
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    if (v27 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_246;
    }

    v28 = 2 * v27;
    if (v28 > v16)
    {
      v16 = v28;
    }
  }

  else
  {
    a1 = v167;
    if (v22 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_36;
    }
  }

  _StringGuts.grow(_:)(v16);
LABEL_36:
  if ((0x800000018066DB90 & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(0xD000000000000011, v8, 0, v165);
  }

  else
  {
    if (v12)
    {
      v29 = (0x800000018066DB90 >> 62) & 1;
      *&v169 = 0xD000000000000011;
      *(&v169 + 1) = 0x800000018066DB90 & 0xFFFFFFFFFFFFF0;
      v30 = &v169;
      v31 = (0x800000018066DB90 >> 56) & 0xF;
    }

    else
    {
      v30 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 17, (0x800000018066DB90 & 0xFFFFFFFFFFFFFF0) + 32, 17);
      LOBYTE(v29) = 1;
    }

    closure #1 in _StringGuts.append(_:)(v30, v31, &v170, v29);
  }

  swift_bridgeObjectRelease_n(v8, 2);
LABEL_86:
  v57 = _uint64ToString(_:radix:uppercase:)(a1, 16, 0);
  countAndFlagsBits = v57._countAndFlagsBits;
  object = v57._object;
  if ((v57._object & 0x1000000000000000) != 0)
  {
    v61 = String.UTF16View._foreignCount()();
  }

  else
  {
    v60 = (v57._object >> 56) & 0xF;
    if ((v57._object & 0x2000000000000000) == 0)
    {
      v60 = v57._countAndFlagsBits;
    }

    v61 = String.UTF16View._nativeGetOffset(for:)(((v60 << 16) | 7));
  }

  v62 = 16 - v61;
  if (__OFSUB__(16, v61))
  {
    __break(1u);
LABEL_234:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v62 < 0)
  {
    goto LABEL_234;
  }

  if (v62)
  {
    v63 = v61 - 16;
    do
    {
      if (!v63)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      countAndFlagsBits = specialized static String.+ infix(_:_:)(0x30uLL, 0xE100000000000000, countAndFlagsBits, object);
      v65 = v64;
      object;
      0xE100000000000000;
      object = v65;
    }

    while (!__CFADD__(v63++, 1));
  }

  else
  {
    v65 = v57._object;
  }

  v8 = specialized static String.+ infix(_:_:)(0x7830uLL, 0xE200000000000000, countAndFlagsBits, v65);
  v12 = v67;
  v65;
  0xE200000000000000;
  v68 = v170;
  v7 = v171;
  v69 = HIBYTE(v171) & 0xF;
  v70 = v170 & 0xFFFFFFFFFFFFLL;
  if ((v171 & 0x2000000000000000) != 0)
  {
    v71 = HIBYTE(v171) & 0xF;
  }

  else
  {
    v71 = v170 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71 && (v170 & ~v171 & 0x2000000000000000) == 0)
  {
    v171;
    v170 = v8;
    v171 = v12;
    goto LABEL_193;
  }

  v2 = HIBYTE(v12) & 0xF;
  if ((v171 & 0x2000000000000000) == 0)
  {
    v168 = (v12 & 0x2000000000000000) == 0;
    v72 = v8 & 0xFFFFFFFFFFFFLL;
    v73 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) != 0)
    {
LABEL_111:
      v166 = v72;
      if ((v12 & 0x1000000000000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_150;
    }

LABEL_110:
    v73 = v72;
    goto LABEL_111;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    v72 = v8 & 0xFFFFFFFFFFFFLL;
    v168 = 1;
    goto LABEL_110;
  }

  v100 = v69 + v2;
  if (v69 + v2 < 0x10)
  {
    if (v2)
    {
      v118 = 0;
      v119 = 0;
      v120 = 8 * v69;
      v121 = 8 * v2;
      v2 = v171;
      do
      {
        v122 = v12 >> (v118 & 0x38);
        if (v119 < 8)
        {
          v122 = v8 >> v118;
        }

        v123 = (v122 << (v120 & 0x38)) | ((-255 << (v120 & 0x38)) - 1) & v2;
        v124 = (v122 << v120) | ((-255 << v120) - 1) & v68;
        if (v69 <= 7)
        {
          v68 = v124;
        }

        else
        {
          v2 = v123;
        }

        ++v69;
        v120 += 8;
        v118 += 8;
        ++v119;
      }

      while (v121 != v118);
    }

    else
    {
      v2 = v171;
    }

    v171;
    v12;
    v125 = 0xA000000000000000;
    if (!(v68 & 0x8080808080808080 | v2 & 0x80808080808080))
    {
      v125 = 0xE000000000000000;
    }

    v117 = v125 | (v100 << 56);
    goto LABEL_192;
  }

  v168 = 0;
  v73 = HIBYTE(v12) & 0xF;
  v166 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x1000000000000000) == 0)
  {
LABEL_112:
    v12;
    v75 = v73;
    if ((v7 & 0x1000000000000000) == 0)
    {
      goto LABEL_113;
    }

LABEL_153:
    v105 = String.UTF8View._foreignCount()();
    v76 = v105 + v75;
    if (!__OFADD__(v105, v75))
    {
      goto LABEL_114;
    }

LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

LABEL_150:
  swift_bridgeObjectRetain_n(v12, 2);
  v101._rawBits = 1;
  v102._rawBits = (v73 << 16) | 1;
  v103._rawBits = _StringGuts.validateScalarRange(_:)(v101, v102, v8, v12)._rawBits;
  if (v103._rawBits < 0x10000)
  {
    v103._rawBits |= 3;
  }

  v75 = String.UTF8View.distance(from:to:)(v103, v104);
  v12;
  if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_153;
  }

LABEL_113:
  v15 = __OFADD__(v71, v75);
  v76 = v71 + v75;
  if (v15)
  {
    goto LABEL_155;
  }

LABEL_114:
  v77 = v68 & ~v7;
  if ((v77 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
  {
    v78 = _StringGuts.nativeUnusedCapacity.getter(v68, v7);
    if (v79)
    {
      goto LABEL_263;
    }

    if (v76 > 15)
    {
      goto LABEL_125;
    }

    if ((v7 & 0x2000000000000000) == 0)
    {
      if (v78 < v75)
      {
        goto LABEL_120;
      }

LABEL_125:
      v81 = v77 & 0x2000000000000000;
      v82 = _StringGuts.nativeUnusedCapacity.getter(v68, v7);
      if ((v83 & 1) != 0 || v82 < v75)
      {
        if (v81)
        {
          swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL);
        }

        v84 = _StringGuts.nativeCapacity.getter(v68, v7);
        if (v86)
        {
          v87 = 0;
        }

        else
        {
          v87 = v84;
        }

        if (v87 + 0x4000000000000000 < 0)
        {
          __break(1u);
          goto LABEL_254;
        }

        v88 = 2 * v87;
        if (v88 > v76)
        {
          v76 = v88;
        }
      }

      else if (v81 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
LABEL_136:
        if ((v12 & 0x1000000000000000) == 0)
        {
          if (v168)
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v89 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v90 = v166;
              v91 = v166;
            }

            else
            {
              v154 = _StringObject.sharedUTF8.getter(v8, v12);
              if (v155 < v166)
              {
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v89 = v154;
              v91 = v155;
              v90 = v166;
            }

            v92 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v90, v89, v91);
            v94 = v8 >> 63;
          }

          else
          {
            v94 = (v12 >> 62) & 1;
            *&v169 = v8;
            *(&v169 + 1) = v12 & 0xFFFFFFFFFFFFFFLL;
            v92 = &v169;
            v93 = HIBYTE(v12) & 0xF;
          }

          closure #1 in _StringGuts.append(_:)(v92, v93, &v170, v94);
          goto LABEL_187;
        }

LABEL_156:
        _StringGuts._foreignAppendInPlace(_:)(v8, v12, 0, v73);
LABEL_187:
        swift_bridgeObjectRelease_n(v12, 2);
        goto LABEL_193;
      }

      _StringGuts.grow(_:)(v76);
      goto LABEL_136;
    }
  }

  else
  {
    if (v76 > 15)
    {
      goto LABEL_125;
    }

    if ((v7 & 0x2000000000000000) == 0)
    {
LABEL_120:
      if ((v7 & 0x1000000000000000) != 0)
      {
        v68 = _StringGuts._foreignConvertedToSmall()(v68, v7);
        v2 = v140;
      }

      else
      {
        if ((v68 & 0x1000000000000000) != 0)
        {
          v80 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v80 = _StringObject.sharedUTF8.getter(v68, v7);
          v70 = v157;
        }

        closure #1 in _StringGuts._convertedToSmall()(v80, v70, &v169, v74);
        v2 = *(&v169 + 1);
        v68 = v169;
      }

      goto LABEL_143;
    }
  }

  v2 = v7;
LABEL_143:
  v12;
  v95._rawBits = 1;
  v96._rawBits = (v73 << 16) | 1;
  v97._rawBits = _StringGuts.validateScalarRange(_:)(v95, v96, v8, v12)._rawBits;
  if (v97._rawBits < 0x10000)
  {
    v97._rawBits |= 3;
  }

  if (v97._rawBits >> 16 || v98._rawBits >> 16 != v73)
  {
    v8 = specialized static String._copying(_:)(v97._rawBits, v98._rawBits, v8, v12);
    v22 = v106;
    v12;
  }

  else
  {
    v22 = v12;
  }

  if ((v22 & 0x2000000000000000) == 0)
  {
    goto LABEL_249;
  }

  v22;
  while (1)
  {
    v107 = HIBYTE(v2) & 0xF;
    v108 = HIBYTE(v22) & 0xF;
    v109 = v108 + v107;
    if (v108 + v107 > 0xF)
    {
      goto LABEL_263;
    }

    v12;
    if (v108)
    {
      v110 = 0;
      v111 = 0;
      v112 = 8 * v107;
      do
      {
        v113 = v22 >> (v110 & 0x38);
        if (v111 < 8)
        {
          v113 = v8 >> v110;
        }

        v114 = (v113 << (v112 & 0x38)) | ((-255 << (v112 & 0x38)) - 1) & v2;
        v115 = (v113 << v112) | ((-255 << v112) - 1) & v68;
        if (v107 <= 7)
        {
          v68 = v115;
        }

        else
        {
          v2 = v114;
        }

        ++v107;
        v112 += 8;
        v110 += 8;
        ++v111;
      }

      while (8 * v108 != v110);
    }

    v7;
    v12;
    v116 = 0xA000000000000000;
    if (!(v68 & 0x8080808080808080 | v2 & 0x80808080808080))
    {
      v116 = 0xE000000000000000;
    }

    v117 = v116 | (v109 << 56);
LABEL_192:
    v170 = v68;
    v171 = v117 & 0xFF00000000000000 | v2 & 0xFFFFFFFFFFFFFFLL;
LABEL_193:
    v7 = v170;
    v12 = v171;
    v22 = HIBYTE(v171) & 0xF;
    v8 = v170 & 0xFFFFFFFFFFFFLL;
    if ((v171 & 0x2000000000000000) != 0)
    {
      v126 = HIBYTE(v171) & 0xF;
    }

    else
    {
      v126 = v170 & 0xFFFFFFFFFFFFLL;
    }

    if (!v126 && (v170 & ~v171 & 0x2000000000000000) == 0)
    {
      v171;
      return 41;
    }

    if ((v171 & 0x2000000000000000) != 0 && v22 != 15)
    {
      break;
    }

    0xE100000000000000;
    if ((v12 & 0x1000000000000000) != 0)
    {
LABEL_246:
      v149 = String.UTF8View._foreignCount()();
      v68 = v149 + 1;
      if (!__OFADD__(v149, 1))
      {
LABEL_205:
        if ((v7 & ~v12 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v12 & 0xFFFFFFFFFFFFFFFLL))
        {
          v128 = _StringGuts.nativeUnusedCapacity.getter(v7, v12);
          if (v129)
          {
            goto LABEL_263;
          }

          if (v68 > 15)
          {
            goto LABEL_216;
          }

          if ((v12 & 0x2000000000000000) == 0)
          {
            if (v128 < 1)
            {
LABEL_211:
              if ((v12 & 0x1000000000000000) != 0)
              {
                v7 = _StringGuts._foreignConvertedToSmall()(v7, v12);
                v8 = v141;
              }

              else
              {
                if ((v7 & 0x1000000000000000) != 0)
                {
                  v130 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v130 = _StringObject.sharedUTF8.getter(v7, v12);
                  v8 = v158;
                }

                closure #1 in _StringGuts._convertedToSmall()(v130, v8, &v169, v99);
                v8 = *(&v169 + 1);
                v7 = v169;
              }

LABEL_219:
              v68 = 0xE100000000000000;
              0xE100000000000000;
              v73 = 41;
              v131._rawBits = 1;
              v132._rawBits = 65537;
              v133._rawBits = _StringGuts.validateScalarRange(_:)(v131, v132, 0x29uLL, 0xE100000000000000)._rawBits;
              if (v133._rawBits < 0x10000)
              {
                v133._rawBits |= 3;
              }

              if (v133._rawBits >> 16 || (v134._rawBits & 0xFFFFFFFFFFFF0000) != 0x10000)
              {
                v73 = specialized static String._copying(_:)(v133._rawBits, v134._rawBits, 0x29uLL, 0xE100000000000000);
                v68 = v135;
                0xE100000000000000;
              }

              if ((v68 & 0x2000000000000000) != 0)
              {
                v68;
LABEL_226:
                v136 = specialized _SmallString.init(_:appending:)(v7, v8, v73, v68);
                if ((v137 & 1) == 0)
                {
                  v138 = v136;
                  v12;
                  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
                  return v138;
                }

LABEL_263:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_254:
              if ((v68 & 0x1000000000000000) != 0)
              {
                v73 = _StringGuts._foreignConvertedToSmall()(v73, v68);
                v164 = v163;
                v68;
                v68 = v164;
              }

              else
              {
                if ((v73 & 0x1000000000000000) != 0)
                {
                  v152 = ((v68 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v153 = v73 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v152 = _StringObject.sharedUTF8.getter(v73, v68);
                }

                closure #1 in _StringGuts._convertedToSmall()(v152, v153, &v169, v85);
                v68;
                v68 = *(&v169 + 1);
                v73 = v169;
              }

              goto LABEL_226;
            }

LABEL_216:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v68, 1);
            v169 = xmmword_18071DC90;
            closure #1 in _StringGuts.append(_:)(&v169, 1uLL, &v170, 1);
            swift_bridgeObjectRelease_n(0xE100000000000000, 2);
            return v170;
          }
        }

        else
        {
          if (v68 > 15)
          {
            goto LABEL_216;
          }

          if ((v12 & 0x2000000000000000) == 0)
          {
            goto LABEL_211;
          }
        }

        v8 = v12;
        goto LABEL_219;
      }
    }

    else
    {
      v15 = __OFADD__(v126, 1);
      v68 = v126 + 1;
      if (!v15)
      {
        goto LABEL_205;
      }
    }

    __break(1u);
LABEL_249:
    if ((v22 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts._foreignConvertedToSmall()(v8, v22);
      v162 = v161;
      v22;
      v22 = v162;
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v150 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v151 = v8 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v150 = _StringObject.sharedUTF8.getter(v8, v22);
      }

      closure #1 in _StringGuts._convertedToSmall()(v150, v151, &v169, v99);
      v22;
      v22 = *(&v169 + 1);
      v8 = v169;
    }
  }

  if (v22 < 8)
  {
    v7 = ((-255 << (8 * (HIBYTE(v171) & 7u))) - 1) & v170 | (41 << (8 * (HIBYTE(v171) & 7u)));
  }

  v171;
  0xE100000000000000;
  return v7;
}