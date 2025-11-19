char *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v44 = a1(0);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v33 - v5;
  v42 = type metadata accessor for UUID();
  v46 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v33 = v4;
    v34 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v45 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = v46 + 16;
    v39 = v18;
    v36 = v46 + 32;
    v37 = v47 + 16;
    v35 = v47 + 32;
    v40 = v7;
    v20 = v41;
    v19 = v42;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v48 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = v46;
        v26 = *(v46 + 72) * v24;
        (*(v46 + 16))(v20, *(v7 + 48) + v26, v19);
        v27 = v47;
        v28 = *(v47 + 72) * v24;
        v29 = v43;
        v30 = v44;
        (*(v47 + 16))(v43, *(v7 + 56) + v28, v44);
        v31 = v45;
        (*(v25 + 32))(*(v45 + 48) + v26, v20, v19);
        v32 = *(v31 + 56);
        v7 = v40;
        result = (*(v27 + 32))(v32 + v28, v29, v30);
        v18 = v39;
        v17 = v48;
      }

      while (v48);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v33;
        v9 = v45;
        goto LABEL_18;
      }

      v23 = *(v34 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v4 = v9;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo29TGIE5AdapterConfigurationObjCCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo17TGIE5FunctionObjCCGMd);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t outlined init with copy of (LogitCollection, Int)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitCollection_p_SitMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  specialized _NativeSet.insertNew(_:at:isUnique:)(a1, a2, a3, &_ss11_SetStorageCySo29TGIE5AdapterConfigurationObjCCGMd, &_ss11_SetStorageCySo29TGIE5AdapterConfigurationObjCCGMR, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
}

{
  specialized _NativeSet.insertNew(_:at:isUnique:)(a1, a2, a3, &_ss11_SetStorageCySo17TGIE5FunctionObjCCGMd, &_ss11_SetStorageCySo17TGIE5FunctionObjCCGMR, &lazy cache variable for type metadata for TGIE5FunctionObjC);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a4);
      goto LABEL_12;
    }

    v11 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    type metadata accessor for TGIE5FunctionObjC(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *LinkedList.Node.init(value:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + *(*v1 + 96)) = 0;
  *(v1 + *(*v1 + 104)) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t LinkedList.Node.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  swift_unownedRelease();
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 96));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t LinkedList.Node.__deallocating_deinit()
{
  LinkedList.Node.deinit();

  return swift_deallocClassInstance();
}

uint64_t LinkedList.remove(node:)(uint64_t a1)
{
  v3 = *(*a1 + 96);
  v4 = *(a1 + v3);
  v5 = *(*a1 + 104);
  swift_beginAccess();
  v6 = *(a1 + v5);
  swift_unownedRetainStrong();
  if (*v1 && *v1 == a1)
  {
    swift_unownedRetainStrong();

    *v1 = v6;
  }

  else
  {
  }

  if (v1[1] == a1)
  {
    v7 = *(a1 + v3);

    v1[1] = v7;
  }

  if (v4)
  {
    v8 = *(*v4 + 104);
    swift_beginAccess();

    swift_unownedRelease();
    *(v4 + v8) = v6;
    swift_endAccess();
    swift_unownedRetain();
  }

  if (v6)
  {
    *(v6 + *(*v6 + 96)) = v4;
  }

  *(a1 + v3) = 0;

  swift_beginAccess();
  swift_unownedRelease();
  *(a1 + v5) = 0;
  return swift_endAccess();
}

uint64_t LinkedList.append(node:)(uint64_t a1)
{
  v3 = v1[1];
  if (v3)
  {
    *(a1 + *(*a1 + 96)) = v3;

    v4 = *(*v3 + 104);
    swift_beginAccess();
    swift_unownedRelease();
    *(v3 + v4) = a1;
    swift_endAccess();

    swift_unownedRetain();
  }

  else
  {
    swift_retain_n();

    *v1 = a1;
  }

  v1[1] = a1;
  return result;
}

uint64_t Dictionary.addIfNil(_:forKey:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Dictionary._Variant();
  v4 = Dictionary._Variant.subscript.modify();
  v5 = type metadata accessor for Optional();
  Optional.setIfNil(_:)(a1, v5, a2);
  return v4(&v7, 0);
}

uint64_t Optional.setIfNil(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v9, v10);
  }

  v12 = (*(v7 + 8))(v3, a2);
  a1(v12);
  (*(v11 + 16))(v3, a3, v10);
  return (*(v11 + 56))(v3, 0, 1, v10);
}

uint64_t AsyncLRUCache.KeyRef.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

Swift::Int AsyncLRUCache.KeyRef.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](*(v0 + *(*v0 + 120)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AsyncLRUCache<A, B>.KeyRef()
{
  Hasher.init(_seed:)();
  AsyncLRUCache.KeyRef.hash(into:)();
  return Hasher._finalize()();
}

uint64_t default argument 4 of AsyncLRUCache.CacheData.init(key:value:cost:fallbackStarted:waiters:)()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  type metadata accessor for CheckedContinuation();

  return static Array._allocateUninitialized(_:)();
}

uint64_t AsyncLRUCache.CacheData.init(key:value:cost:fallbackStarted:waiters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for AsyncLRUCache.CacheData();
  v12 = v11[13];
  v13 = type metadata accessor for Optional();
  result = (*(*(v13 - 8) + 32))(&a6[v12], a2, v13);
  *&a6[v11[14]] = a3;
  a6[v11[15]] = a4;
  *&a6[v11[16]] = a5;
  return result;
}

uint64_t AsyncLRUCache.nodes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t AsyncLRUCache.__allocating_init(totalCostLimit:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AsyncLRUCache.init(totalCostLimit:)(a1);
  return v2;
}

void *AsyncLRUCache.init(totalCostLimit:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  type metadata accessor for AsyncLRUCache.CacheData();
  v1[14] = 0;
  v1[15] = 0;
  v3 = type metadata accessor for AsyncLRUCache.KeyRef();
  v4 = type metadata accessor for LinkedList.Node();
  swift_getTupleTypeMetadata2();
  v5 = static Array._allocateUninitialized(_:)();
  WitnessTable = swift_getWitnessTable();
  v7 = specialized Dictionary.init(dictionaryLiteral:)(v5, v3, v4, WitnessTable);

  v1[16] = v7;
  v1[17] = 0;
  v1[18] = a1;
  return v1;
}

uint64_t AsyncLRUCache.cached(key:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
  *(v5 + 80) = a1;
  v6 = *v4;
  v7 = *(*v4 + 88);
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = v6[10];
  *(v5 + 144) = v8;
  v9 = v6[12];
  *(v5 + 152) = v9;
  v10 = v6[13];
  *(v5 + 160) = v10;
  *&v11 = v8;
  *(&v11 + 1) = v7;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  *(v5 + 32) = v12;
  *(v5 + 16) = v11;
  *(v5 + 168) = type metadata accessor for AsyncLRUCache.ValueOrNode();
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](AsyncLRUCache.cached(key:fallback:), 0, 0);
}

uint64_t AsyncLRUCache.cached(key:fallback:)()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 56) = v1;
  *(v0 + 64) = *(v0 + 152);
  type metadata accessor for AsyncLRUCache.KeyRef();
  swift_allocObject();
  v3 = specialized AsyncLRUCache.KeyRef.init(key:)(v2);
  *(v0 + 184) = v3;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = AsyncLRUCache.cached(key:fallback:);
  v5 = *(v0 + 176);

  return AsyncLRUCache.value(key:)(v5, v3);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = AsyncLRUCache.cached(key:fallback:);
  }

  else
  {

    v2 = AsyncLRUCache.cached(key:fallback:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[22];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[12];
    v0[26] = *v1;
    v0[27] = v1[1];
    v0[28] = v1[2];
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = AsyncLRUCache.cached(key:fallback:);
    v4 = v0[17];

    return v7(v4);
  }

  else
  {
    (*(v0[16] + 32))(v0[10], v1, v0[15]);

    v6 = v0[1];

    return v6();
  }
}

{
  AsyncLRUCache.setValue(_:node:cost:)(v0[17], v0[26], v0[27], v0[28], v0[30]);

  return MEMORY[0x2822009F8](AsyncLRUCache.cached(key:fallback:), 0, 0);
}

{

  swift_unknownObjectRelease();
  (*(v0[16] + 32))(v0[10], v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](AsyncLRUCache.cached(key:fallback:), *(v0 + 112), 0);
}

{
  AsyncLRUCache.setError(_:node:)(*(v0 + 248), *(v0 + 208), *(v0 + 216), *(v0 + 224));

  return MEMORY[0x2822009F8](AsyncLRUCache.cached(key:fallback:), 0, 0);
}

{
  swift_willThrow();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AsyncLRUCache.cached(key:fallback:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = AsyncLRUCache.cached(key:fallback:);
  }

  else
  {
    v4 = AsyncLRUCache.cached(key:fallback:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t AsyncLRUCache.cached(key:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 240) >= 1)
  {
    return MEMORY[0x2822009F8](AsyncLRUCache.cached(key:fallback:), *(v3 + 112), 0);
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t AsyncLRUCache.value(key:)(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  v4 = *v2;
  v3[48] = *v2;
  v5 = *(v4 + 88);
  v3[49] = v5;
  v6 = type metadata accessor for Optional();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = *(v5 - 8);
  v3[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](AsyncLRUCache.value(key:), v2, 0);
}

uint64_t AsyncLRUCache.value(key:)()
{
  v73 = v0;
  v1 = v0;
  v63 = v0[52];
  v66 = v0[53];
  v2 = v0[51];
  v60 = v0[50];
  v3 = v0[48];
  v4 = v0[49];
  v0[43] = v0[46];
  swift_beginAccess();
  v5 = v3[10];
  v0[55] = v5;
  v6 = v3[12];
  v0[56] = v6;
  v7 = v3[13];
  v0[57] = v7;
  v0[2] = v5;
  v0[3] = v4;
  v0[4] = v6;
  v0[5] = v7;
  type metadata accessor for AsyncLRUCache.KeyRef();
  v69 = v5;
  v70 = v6;
  v0[6] = v5;
  v0[7] = v4;
  v8 = v0 + 6;
  v8[2] = v6;
  v8[3] = v7;
  v71 = v7;
  type metadata accessor for AsyncLRUCache.CacheData();
  v9 = type metadata accessor for LinkedList.Node();
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  Dictionary.addIfNil(_:forKey:)(partial apply for implicit closure #1 in AsyncLRUCache.value(key:), (v8 + 36));
  swift_endAccess();
  v10 = v8[36];
  v8[52] = v10;
  v11 = v10 + *(*v10 + 88);
  v68 = v8;
  swift_beginAccess();
  v12 = swift_checkMetadataState();
  (*(v2 + 16))(v63, v11 + *(v12 + 52), v60);
  if ((*(v66 + 48))(v63, 1, v4) == 1)
  {
    (*(v1[51] + 8))(v1[52], v1[50]);
    if (*(v11 + *(v12 + 60)) == 1)
    {
      v13 = v10;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.device);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v72 = v18;
        *v17 = 136642819;

        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v72);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_220940000, v15, v16, "AsyncLRUCache hit: wait for fallback %{sensitive}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x223D90A10](v18, -1, -1);
        MEMORY[0x223D90A10](v17, -1, -1);
      }

      else
      {
      }

      v45 = v1[49];
      v46 = v1[47];
      v1[18] = v69;
      v1[19] = v45;
      v1[20] = v70;
      v1[21] = v71;
      type metadata accessor for AsyncLRUCache();
      WitnessTable = swift_getWitnessTable();
      v48 = swift_task_alloc();
      v1[59] = v48;
      *v48 = v1;
      v48[1] = AsyncLRUCache.value(key:);
      v49 = v1[49];
      v50 = v1[45];

      return MEMORY[0x2822008A0](v50, v46, WitnessTable, 0x656B2865756C6176, 0xEB00000000293A79, partial apply for closure #1 in AsyncLRUCache.value(key:), v13, v49);
    }

    v67 = v12;
    v62 = v8 + 30;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v65 = v9;
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.device);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v59 = v10;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v72 = v36;
      *v35 = 136642819;
      v37 = v34;

      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v72);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_220940000, v33, v37, "AsyncLRUCache miss %{sensitive}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223D90A10](v36, -1, -1);
      MEMORY[0x223D90A10](v35, -1, -1);
    }

    else
    {
    }

    v51 = v1[49];
    v58 = v1[47];
    v52 = v1[45];
    *(v11 + *(v67 + 60)) = 1;
    v1[10] = v69;
    v1[11] = v51;
    v1[12] = v70;
    v1[13] = v71;
    type metadata accessor for AsyncLRUCache();
    v53 = swift_getWitnessTable();
    v1[44] = v59;
    (*(*(v65 - 8) + 32))(v62, v68 + 38, v65);
    v54 = (v62 + *(type metadata accessor for ActorIsolated() + 28));
    *v54 = v58;
    v54[1] = v53;
    v55 = v1[38];
    *v52 = *(v1 + 18);
    *(v52 + 16) = v55;
    v1[14] = v69;
    v1[15] = v51;
    v1[16] = v70;
    v1[17] = v71;
    type metadata accessor for AsyncLRUCache.ValueOrNode();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v64 = (v1[53] + 32);
    v61 = *v64;
    (*v64)(v1[54], v1[52], v1[49]);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.device);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v27;
      *v26 = 136642819;

      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v72);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_220940000, v24, v25, "AsyncLRUCache hit %{sensitive}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223D90A10](v27, -1, -1);
      MEMORY[0x223D90A10](v26, -1, -1);
    }

    else
    {
    }

    v42 = v1[54];
    v43 = v1[49];
    v44 = v1[45];
    swift_beginAccess();
    type metadata accessor for LinkedList();
    LinkedList.remove(node:)(v10);
    LinkedList.append(node:)(v10);
    swift_endAccess();

    v61(v44, v42, v43);
    v1[26] = v69;
    v1[27] = v43;
    v1[28] = v70;
    v1[29] = v71;
    type metadata accessor for AsyncLRUCache.ValueOrNode();
    swift_storeEnumTagMultiPayload();
  }

  v56 = v1[1];

  return v56();
}

{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 376);
  if (v0)
  {
    v4 = AsyncLRUCache.value(key:);
  }

  else
  {
    v4 = AsyncLRUCache.value(key:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  v5 = *(v0 + 448);

  *(v0 + 176) = v1;
  *(v0 + 184) = v2;
  *(v0 + 192) = v5;
  type metadata accessor for AsyncLRUCache.ValueOrNode();
  swift_storeEnumTagMultiPayload();

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t implicit closure #1 in AsyncLRUCache.value(key:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  *&v10 = *(v4 + 80);
  *(&v10 + 1) = v6;
  v19 = *(v5 + 96);
  v18[0] = v19;
  v18[1] = v10;
  v11 = type metadata accessor for AsyncLRUCache.CacheData();
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  type metadata accessor for LinkedList.Node();
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6);

  v14 = default argument 4 of AsyncLRUCache.CacheData.init(key:value:cost:fallbackStarted:waiters:)();
  AsyncLRUCache.CacheData.init(key:value:cost:fallbackStarted:waiters:)(a1, v9, 0, 0, v14, v13);
  v15 = swift_allocObject();
  v16 = *v15;
  *(v15 + *(*v15 + 96)) = 0;
  *(v15 + *(*v15 + 104)) = 0;
  result = (*(*(*(v16 + 80) - 8) + 32))(v15 + *(*v15 + 88), v13);
  *a2 = v15;
  return result;
}

uint64_t closure #1 in AsyncLRUCache.value(key:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v2 = type metadata accessor for CheckedContinuation();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t AsyncLRUCache.setError(_:node:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v54 = a4;
  v8 = *v4;
  v9 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v10 = *(v8 + 88);
  v11 = type metadata accessor for CheckedContinuation();
  v12 = *(v11 - 8);
  v46 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = v54;
  v15 = *(v8 + 80);
  v54 = *(v9 + 96);
  *&v56 = v15;
  *(&v56 + 1) = v10;
  v57 = v54;
  type metadata accessor for AsyncLRUCache();
  swift_getWitnessTable();
  *&v56 = v15;
  *(&v56 + 1) = v10;
  v50 = v10;
  v57 = v54;
  type metadata accessor for AsyncLRUCache.CacheData();
  v16 = type metadata accessor for LinkedList.Node();
  v17 = type metadata accessor for ActorIsolated();
  v18 = *(v58 + *(v17 + 28));
  v51 = v4;
  if (v18 != v4)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  v48 = v16;
  v49 = v15;
  (*(*(*(v17 + 16) - 8) + 16))(&v56, v58);
  v19 = *(*v56 + 88);
  v53 = v56;
  v20 = (v56 + v19);
  swift_beginAccess();
  v47 = swift_checkMetadataState();
  v21 = *(v47 + 64);
  v52 = v20;
  v22 = *(v20 + v21);

  if (MEMORY[0x223D8E980](v23, v11))
  {
    v24 = 0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v12 + 16))(v14, v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v11);
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v46 != 8)
        {
          __break(1u);
          return result;
        }

        *&v56 = result;
        (*(v12 + 16))(v14, &v56, v11);
        swift_unknownObjectRelease();
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      *&v56 = a1;
      v27 = a1;
      CheckedContinuation.resume(throwing:)();
      (*(v12 + 8))(v14, v11);
      ++v24;
    }

    while (v26 != MEMORY[0x223D8E980](v22, v11));
  }

  v29 = static Array._allocateUninitialized(_:)();
  v16 = v52;
  *(v52 + *(v47 + 64)) = v29;

  if (one-time initialization token for device != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Log.device);
  v31 = a1;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v56 = v36;
    *v34 = 136643075;

    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v56);
    v16 = v52;

    *(v34 + 4) = v40;
    *(v34 + 12) = 2112;
    v41 = a1;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v42;
    *v35 = v42;
    _os_log_impl(&dword_220940000, v32, v33, "AsyncLRUCache respond with error for %{sensitive}s: %@", v34, 0x16u);
    outlined destroy of NSObject?(v35);
    MEMORY[0x223D90A10](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x223D90A10](v36, -1, -1);
    MEMORY[0x223D90A10](v34, -1, -1);
  }

  else
  {
  }

  v43 = v50;
  v44 = v49;
  v55 = *v16;
  swift_beginAccess();
  *&v45 = v44;
  *(&v45 + 1) = v43;
  v56 = v45;
  v57 = v54;
  type metadata accessor for AsyncLRUCache.KeyRef();
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
}

void AsyncLRUCache.setValue(_:node:cost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v75 = a1;
  v9 = *v5;
  v10 = *v5;
  v11 = *(*v5 + 88);
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v74 = v65 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v13 = type metadata accessor for CheckedContinuation();
  v14 = *(v13 - 8);
  v65[0] = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v65 - v15;
  v80[0] = a2;
  v80[1] = a3;
  v80[2] = a4;
  v17 = *(v9 + 80);
  v72 = *(v10 + 96);
  *&v78 = v17;
  *(&v78 + 1) = v11;
  v79 = v72;
  type metadata accessor for AsyncLRUCache();
  swift_getWitnessTable();
  *&v78 = v17;
  *(&v78 + 1) = v11;
  v76 = v11;
  v79 = v72;
  type metadata accessor for AsyncLRUCache.CacheData();
  v18 = type metadata accessor for LinkedList.Node();
  v19 = type metadata accessor for ActorIsolated();
  if (*(v80 + *(v19 + 28)) != v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  v65[1] = v18;
  v66 = v17;
  v68 = v5;
  (*(*(*(v19 + 16) - 8) + 16))(&v78, v80);
  v20 = *(*v78 + 88);
  v67 = v78;
  v21 = (v78 + v20);
  swift_beginAccess();
  v70 = swift_checkMetadataState();
  v71 = v21;
  v22 = *&v21[*(v70 + 64)];

  if (MEMORY[0x223D8E980](v23, v13))
  {
    v24 = 0;
    v25 = (v73 + 16);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v14 + 16))(v16, v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v24, v13);
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v28 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v65[0] != 8)
        {
          __break(1u);
          return;
        }

        *&v78 = v28;
        (*(v14 + 16))(v16, &v78, v13);
        swift_unknownObjectRelease();
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      (*v25)(v74, v75, v76);
      CheckedContinuation.resume(returning:)();
      (*(v14 + 8))(v16, v13);
      ++v24;
    }

    while (v27 != MEMORY[0x223D8E980](v22, v13));
  }

  v29 = static Array._allocateUninitialized(_:)();
  v16 = v71;
  swift_beginAccess();
  v30 = v70;
  *&v16[*(v70 + 64)] = v29;
  v31 = *(v30 + 52);
  v32 = v76;
  v33 = type metadata accessor for Optional();
  (*(*(v33 - 8) + 8))(&v16[v31], v33);
  v34 = v73;
  (*(v73 + 16))(&v16[v31], v75, v32);
  (*(v34 + 56))(&v16[v31], 0, 1, v32);
  v35 = v69;
  *&v16[*(v30 + 56)] = v69;
  swift_endAccess();

  v18 = v68;
  if ((AsyncLRUCache.makeCostAvailable(cost:)(v35) & 1) == 0)
  {
    if (one-time initialization token for device == -1)
    {
LABEL_19:
      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Log.device);
      swift_retain_n();
      swift_retain_n();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v78 = v56;
        *v55 = 136643331;

        v16 = v71;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;

        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v78);

        *(v55 + 4) = v60;
        *(v55 + 12) = 2048;
        v61 = *&v16[*(v70 + 56)];

        *(v55 + 14) = v61;

        *(v55 + 22) = 2048;
        v62 = *(v18 + 144);

        *(v55 + 24) = v62;

        _os_log_impl(&dword_220940000, v53, v54, "AsyncLRUCache respond for %{sensitive}s with cost %lld exceeding limit %lld", v55, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x223D90A10](v56, -1, -1);
        MEMORY[0x223D90A10](v55, -1, -1);
      }

      else
      {
      }

      v63 = v66;
      v77 = *v16;
      swift_beginAccess();
      *&v64 = v63;
      *(&v64 + 1) = v76;
      v78 = v64;
      v79 = v72;
      type metadata accessor for AsyncLRUCache.KeyRef();
      swift_getWitnessTable();
      type metadata accessor for Dictionary();
      Dictionary.removeValue(forKey:)();
      swift_endAccess();

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_19;
  }

  swift_beginAccess();
  type metadata accessor for LinkedList();
  LinkedList.append(node:)(v67);
  swift_endAccess();
  v36 = *(v18 + 136);
  v37 = __OFADD__(v36, v35);
  v38 = v36 + v35;
  if (v37)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v18 + 136) = v38;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Log.device);
  swift_retain_n();
  swift_retain_n();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v78 = v76;
    *v42 = 136643587;

    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v30;
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v46, &v78);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2048;
    v48 = *&v16[*(v44 + 56)];

    *(v42 + 14) = v48;

    *(v42 + 22) = 2048;
    v49 = *(v18 + 136);

    *(v42 + 24) = v49;

    *(v42 + 32) = 2048;
    v50 = *(v18 + 144);

    *(v42 + 34) = v50;

    _os_log_impl(&dword_220940000, v40, v41, "AsyncLRUCache added %{sensitive}s with cost %lld; allocated %lld of %lld", v42, 0x2Au);
    v51 = v76;
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x223D90A10](v51, -1, -1);
    MEMORY[0x223D90A10](v42, -1, -1);
  }

  else
  {
  }
}

uint64_t AsyncLRUCache.makeCostAvailable(cost:)(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 144);
  if (v3 < result)
  {
    return v3 >= v2;
  }

  while (1)
  {
    v4 = *(v1 + 136);
    v5 = __OFADD__(v2, v4);
    v6 = v2 + v4;
    if (v5)
    {
      break;
    }

    if (v3 >= v6)
    {
      return v3 >= v2;
    }

    v7 = AsyncLRUCache.nodes.getter();

    if (!v7)
    {
      return v3 >= v2;
    }

    AsyncLRUCache.remove(node:)(v7);
  }

  __break(1u);
  return result;
}

void AsyncLRUCache.remove(node:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v4[11];
  v6 = v4[12];
  v7 = v4[13];
  v26 = v4[10];
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v8 = type metadata accessor for AsyncLRUCache.CacheData();
  type metadata accessor for LinkedList();
  LinkedList.remove(node:)(a1);
  swift_endAccess();
  v9 = a1 + *(*a1 + 88);
  swift_beginAccess();
  swift_beginAccess();
  v27 = v5;
  v28 = v6;
  v29 = v7;
  type metadata accessor for AsyncLRUCache.KeyRef();
  type metadata accessor for LinkedList.Node();
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();

  v10 = *(v9 + *(v8 + 56));
  v11 = v2[17];
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v2[17] = v13;
    if (one-time initialization token for device == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.device);
  swift_retain_n();
  swift_retain_n();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v17 = 136643587;

    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v26);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    v22 = *(v9 + *(v8 + 56));

    *(v17 + 14) = v22;

    *(v17 + 22) = 2048;
    v23 = v2[17];

    *(v17 + 24) = v23;

    *(v17 + 32) = 2048;
    v24 = v2[18];

    *(v17 + 34) = v24;

    _os_log_impl(&dword_220940000, v15, v16, "AsyncLRUCache evicted %{sensitive}s with cost %lld; allocated %lld of %lld", v17, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x223D90A10](v25, -1, -1);
    MEMORY[0x223D90A10](v17, -1, -1);
  }

  else
  {
  }
}

uint64_t AsyncLRUCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncLRUCache.__deallocating_deinit()
{
  AsyncLRUCache.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
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
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (MEMORY[0x223D8E960](a1, TupleTypeMetadata2))
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x223D8E990](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t specialized AsyncLRUCache.KeyRef.init(key:)(uint64_t a1)
{
  (*(*(*(*v1 + 80) - 8) + 16))(v1 + *(*v1 + 112), a1, *(*v1 + 80));
  Hasher.init()();
  dispatch thunk of Hashable.hash(into:)();
  *(v1 + *(*v1 + 120)) = Hasher.finalize()();
  return v1;
}

uint64_t type metadata completion function for LinkedList.Node()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of AsyncLRUCache.cached(key:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 232) + **(*v4 + 232));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return v12(a1, a2, a3, a4);
}

uint64_t type metadata completion function for AsyncLRUCache.KeyRef()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for LinkedList()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LinkedList(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for LinkedList(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for AsyncLRUCache.ValueOrNode()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncLRUCache.CacheData();
    type metadata accessor for LinkedList.Node();
    result = type metadata accessor for ActorIsolated();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncLRUCache.ValueOrNode(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for AsyncLRUCache.ValueOrNode(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t type metadata completion function for ActorIsolated()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Actor();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActorIsolated(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for ActorIsolated(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t type metadata accessor for Actor()
{
  result = lazy cache variable for type metadata for Actor;
  if (!lazy cache variable for type metadata for Actor)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Actor);
  }

  return result;
}

uint64_t type metadata completion function for AsyncLRUCache.CacheData()
{
  result = type metadata accessor for AsyncLRUCache.KeyRef();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
      type metadata accessor for CheckedContinuation();
      result = type metadata accessor for Array();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncLRUCache.CacheData(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 23;
  if (!v5)
  {
    v9 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for AsyncLRUCache.CacheData(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 8) & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 8) & ~v10) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v20 = ((a1 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;
      v26 = (a1 + v10 + 8) & ~v10;

      v24(v26, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int __swiftcall CompositeLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  v6 = v3;
  v7 = isPrompt;
  swift_beginAccess();
  if (forPreviousNode < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v3 + 16);
  v11 = *(v10 + 16);
  if (v11 <= forPreviousNode)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    *(v6 + 16) = result;
    goto LABEL_7;
  }

  v12 = (v10 + 24 * forPreviousNode);
  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(token);
    if (v17)
    {
      return *(*(v15 + 56) + 8 * v16);
    }
  }

  v36 = forPreviousNode;
  v33 = v11;
  outlined init with copy of DeterministicLanguageModelProtocol(v3 + 24, v38);
  v20 = v39;
  v19 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v21 = v7;
  v22 = token;
  v35 = v14;
  v23 = *(v19 + 16);

  v4 = v23(v13, token, v21 & 1, v20, v19);
  __swift_destroy_boxed_opaque_existential_1(v38);
  outlined init with copy of DeterministicLanguageModelProtocol(v3 + 72, v38);
  v24 = v39;
  v25 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v26 = v35;
  v34 = v22;
  v3 = (*(v25 + 16))(v26, v22, v21 & 1, v24, v25);

  __swift_destroy_boxed_opaque_existential_1(v38);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v7 = *(v6 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v29 = *(v7 + 16);
  v28 = *(v7 + 24);
  if (v29 >= v28 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v29 + 1;
  v30 = (v7 + 32 + 24 * v29);
  *v30 = v4;
  v30[1] = v3;
  v30[2] = v5;
  *(v6 + 16) = v7;
  if (*(v7 + 16) > v36)
  {
    v31 = v7 + 32 + 24 * v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v31 + 16);
    *(v31 + 16) = 0x8000000000000000;
    v18 = v33;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v34, isUniquelyReferenced_nonNull_native);
    *(v31 + 16) = v37;

    *(v6 + 16) = v7;
    swift_endAccess();
    return v18;
  }

  __break(1u);
  return result;
}

float CompositeLanguageModel.CompositeLogitCollection.subscript.getter(Swift::Int a1)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for ContiguousBitSet();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogitIndexSet();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v40 = &v38 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v38 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = *(v1 + 3);
  v18 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(v1, v17);
  (*(v18 + 8))(v17, v18);
  outlined init with copy of LogitIndexSet(v16, v14);
  v41 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v38;
    outlined destroy of LogitIndexSet(v16);
    v20 = v39;
    if (*v14 > v39)
    {
      v21 = -65504.0;
      v22 = v19;
      v23 = v40;
      goto LABEL_8;
    }

    v29 = v14[1];
    v22 = v19;
    v23 = v40;
    if (v29 <= v39)
    {
      goto LABEL_7;
    }

LABEL_5:
    v27 = *(v2 + 3);
    v28 = *(v2 + 4);
    __swift_project_boxed_opaque_existential_1(v2, v27);
    v21 = (*(v28 + 24))(v20, v27, v28);
    goto LABEL_8;
  }

  v24 = v38;
  (*(v38 + 32))(v5, v14, v3);
  v25 = v39;
  v26 = ContiguousBitSet.contains(_:)(v39);
  (*(v24 + 8))(v5, v3);
  outlined destroy of LogitIndexSet(v16);
  v20 = v25;
  v22 = v24;
  v23 = v40;
  if (v26)
  {
    goto LABEL_5;
  }

LABEL_7:
  v21 = -65504.0;
LABEL_8:
  v30 = v2[20];
  v31 = *(v2 + 8);
  v32 = *(v2 + 9);
  __swift_project_boxed_opaque_existential_1(v2 + 5, v31);
  (*(v32 + 8))(v31, v32);
  outlined init with copy of LogitIndexSet(v23, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v23);
    if (*v9 > v20 || v9[1] <= v20)
    {
      goto LABEL_11;
    }

LABEL_13:
    v35 = *(v2 + 8);
    v36 = *(v2 + 9);
    __swift_project_boxed_opaque_existential_1(v2 + 5, v35);
    v33 = (*(v36 + 24))(v20, v35, v36);
    return (v21 * v30) + (v33 * v2[21]);
  }

  (*(v22 + 32))(v5, v9, v3);
  v34 = ContiguousBitSet.contains(_:)(v20);
  (*(v22 + 8))(v5, v3);
  outlined destroy of LogitIndexSet(v23);
  if (v34)
  {
    goto LABEL_13;
  }

LABEL_11:
  v33 = -65504.0;
  return (v21 * v30) + (v33 * v2[21]);
}

uint64_t protocol witness for LogitCollection.testForNaN() in conformance CompositeLanguageModel.CompositeLogitCollection()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  if ((*(v2 + 16))(v1, v2))
  {
    return 1;
  }

  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  return (*(v5 + 16))(v4, v5) & 1;
}

uint64_t CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 208) = a3;
  *(v4 + 120) = a1;
  return MEMORY[0x2822009F8](CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v1 = *(*(v0 + 120) + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90]);
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, v2);
  v22 = v0;
  if (v1)
  {
    v5 = (*(v0 + 120) + 32);
    v23 = *(v0 + 136);
    result = swift_beginAccess();
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 = *(v23 + 16);
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_14;
      }

      v10 = v9 + 24 * v7;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v3 + 2);
      v14 = *(v3 + 3);

      if (v13 >= v14 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1, v3);
      }

      *(v3 + 2) = v13 + 1;
      *&v3[8 * v13 + 32] = v11;
      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      *&v4[8 * v16 + 32] = v12;
      if (!--v1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_10:
    *(v22 + 144) = v3;
    *(v22 + 152) = v4;
    outlined init with copy of DeterministicLanguageModelProtocol(*(v22 + 136) + 24, v22 + 16);
    v17 = *(v22 + 40);
    v18 = *(v22 + 48);
    __swift_project_boxed_opaque_existential_1((v22 + 16), v17);
    v24 = (*(v18 + 24) + **(v18 + 24));
    v19 = swift_task_alloc();
    *(v22 + 160) = v19;
    *v19 = v22;
    v19[1] = CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
    v20 = *(v22 + 208);
    v21 = *(v22 + 128);

    return v24(v3, v21, v20, v17, v18);
  }

  return result;
}

{
  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 72, v0 + 56);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
  v9 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  v5 = *(v0 + 152);
  v6 = *(v0 + 208);
  v7 = *(v0 + 128);

  return v9(v5, v7, v6, v2, v3);
}

{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v4 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay24TokenGenerationInference15LogitCollection_pGAJG_AhI_ps5NeverOTg504_s24fg11Inference15ij7_pAaB_pn9B_pIgnnr_n4B_p_n4B_ptn5B_ps5K11OIegnrzr_TRAhI_pAhI_pAhI_pIgnnr_Tf1cn_nTf4ng_n(v2, v1, partial apply for closure #1 in CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v3);

  v5 = v0[1];

  return v5(v4);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {

    v4 = CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v4 = CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {

    v5 = CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for LogitIndexSet();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  outlined init with copy of DeterministicLanguageModelProtocol(a1, v26);
  outlined init with copy of DeterministicLanguageModelProtocol(a2, v23);
  v14 = *(a3 + 64);
  v15 = *(a3 + 112);
  v16 = type metadata accessor for CompositeLanguageModel.CompositeLogitCollection();
  a4[3] = v16;
  a4[4] = &protocol witness table for CompositeLanguageModel.CompositeLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  outlined init with copy of DeterministicLanguageModelProtocol(v26, boxed_opaque_existential_1);
  outlined init with copy of DeterministicLanguageModelProtocol(v23, (boxed_opaque_existential_1 + 5));
  *(boxed_opaque_existential_1 + 20) = v14;
  *(boxed_opaque_existential_1 + 21) = v15;
  v18 = v27;
  v19 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v19 + 8))(v18, v19);
  v20 = v24;
  v21 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v21 + 8))(v20, v21);
  outlined init with copy of LogitIndexSet(v13, boxed_opaque_existential_1 + *(v16 + 32));
  LogitIndexSet.formUnion(_:)(v11);
  outlined destroy of LogitIndexSet(v11);
  outlined destroy of LogitIndexSet(v13);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t CompositeLanguageModel.__deallocating_deinit()
{

  outlined destroy of [Int](v0 + 24, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_p2lm_Sf5scaletMd);
  outlined destroy of [Int](v0 + 72, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_p2lm_Sf5scaletMd);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance CompositeLanguageModel(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return CompositeLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2, a3);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay24TokenGenerationInference15LogitCollection_pGAJG_AhI_ps5NeverOTg504_s24fg11Inference15ij7_pAaB_pn9B_pIgnnr_n4B_p_n4B_ptn5B_ps5K11OIegnrzr_TRAhI_pAhI_pAhI_pIgnnr_Tf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, _OWORD *, char *), uint64_t a4)
{
  v43 = a4;
  v42 = a3;
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v50[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v10 = v50[0];
  v40 = v7;
  v41 = v6;
  v39 = v8;
  v38 = a2;
  v37 = a1;
  if (v8)
  {
    v11 = a1 + 32;
    v12 = a2 + 32;
    while (v6)
    {
      result = outlined init with copy of DeterministicLanguageModelProtocol(v11, &v45);
      if (!v7)
      {
        goto LABEL_24;
      }

      outlined init with take of LogitCollection(&v45, v48);
      outlined init with copy of DeterministicLanguageModelProtocol(v12, v49 + 8);
      v42(&v45, v48, v49 + 8);
      outlined destroy of [Int](v48, &_s24TokenGenerationInference15LogitCollection_p_AaB_ptMd);
      v50[0] = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      v15 = *(&v46 + 1);
      v16 = *&v47[0];
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      v50[4] = &v36;
      MEMORY[0x28223BE20](v17);
      v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v14, v19, v50, v15, v16);
      result = __swift_destroy_boxed_opaque_existential_1(&v45);
      --v7;
      v10 = v50[0];
      --v6;
      v12 += 40;
      v11 += 40;
      if (!--v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_11:
    v21 = v41;
    v22 = v40;
    if (v41 <= v40)
    {
      return v10;
    }

    v23 = v39;
    v24 = 40 * v39 + 32;
    v25 = v37 + v24;
    v26 = v38 + v24;
    while (v23 < v21)
    {
      result = outlined init with copy of DeterministicLanguageModelProtocol(v25, v44);
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_26;
      }

      if (v22 == v23)
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
        return v10;
      }

      if (v23 >= v22)
      {
        goto LABEL_27;
      }

      outlined init with take of LogitCollection(v44, &v45);
      outlined init with copy of DeterministicLanguageModelProtocol(v26, v47 + 8);
      v48[1] = v46;
      v49[0] = v47[0];
      v49[1] = v47[1];
      v49[2] = v47[2];
      v48[0] = v45;
      v42(&v45, v48, v49 + 8);
      outlined destroy of [Int](v48, &_s24TokenGenerationInference15LogitCollection_p_AaB_ptMd);
      v50[0] = v10;
      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      }

      ++v23;
      v25 += 40;
      v26 += 40;
      v30 = *(&v46 + 1);
      v31 = *&v47[0];
      v32 = __swift_mutable_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      MEMORY[0x28223BE20](v32);
      v34 = &v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v34);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v29, v34, v50, v30, v31);
      result = __swift_destroy_boxed_opaque_existential_1(&v45);
      v10 = v50[0];
      v21 = v41;
      v22 = v40;
      if (v27 == v41)
      {
        return v10;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CompositeLanguageModel.CompositeLogitCollection()
{
  result = type metadata singleton initialization cache for CompositeLanguageModel.CompositeLogitCollection;
  if (!type metadata singleton initialization cache for CompositeLanguageModel.CompositeLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata completion function for CompositeLanguageModel.CompositeLogitCollection()
{
  result = type metadata accessor for LogitCollection();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LogitIndexSet();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for LogitCollection()
{
  result = lazy cache variable for type metadata for LogitCollection;
  if (!lazy cache variable for type metadata for LogitCollection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LogitCollection);
  }

  return result;
}

uint64_t DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 168) = a3;
  *(v4 + 104) = a1;
  return MEMORY[0x2822009F8](DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  *(v0 + 128) = v2;
  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v2 == 1)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v1 + 24, v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v14 = (*(v4 + 24) + **(v4 + 24));
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
    v6 = *(v0 + 168);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);

    return v14(v8, v7, v6, v3, v4);
  }

  else
  {

    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
    v11 = *(v0 + 168);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);

    return MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(v13, v12, v11);
  }
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  outlined consume of DelayedMaskedLanguageModel.MaskResolution(v0[16]);
  v1 = v0[8];
  v2 = v0[1];

  return v2(v1);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of DelayedMaskedLanguageModel.MaskResolution(*(v0 + 128));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[18] = v1;

  if (v1)
  {
    v4 = DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v4 = DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v4 = DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

Swift::Int __swiftcall DelayedMaskedLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  v7 = *(v3 + 16);
  if (v7 == 1)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v3 + 24, v12);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 16))(forPreviousNode, token, isPrompt, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v10;
  }

  if (v7)
  {

    v10 = MaskedLanguageModel.node(forPreviousNode:token:isPrompt:)(forPreviousNode, token, isPrompt);
    outlined consume of DelayedMaskedLanguageModel.MaskResolution(v7);
    return v10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall DelayedMaskedLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v5 = *prompt.queryTokens._rawValue;
  v4 = *(prompt.queryTokens._rawValue + 1);
  v6 = *(prompt.queryTokens._rawValue + 2);
  v7 = *(v2 + 16);
  if (v7 == 1)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v2 + 24, v13);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12[0] = v5;
    v12[1] = v4;
    v12[2] = v6;
    v10 = (*(v9 + 64))(forPreviousNode, v12, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v10;
  }

  if (v7)
  {
    v13[0] = *prompt.queryTokens._rawValue;
    v13[1] = v4;
    v13[2] = v6;

    v16.queryTokens._rawValue = v13;
    v10 = MaskedLanguageModel.node(forPreviousNode:prompt:)(forPreviousNode, v16);
    outlined consume of DelayedMaskedLanguageModel.MaskResolution(v7);
    return v10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t DelayedMaskedLanguageModel.__deallocating_deinit()
{
  outlined consume of DelayedMaskedLanguageModel.MaskResolution(*(v0 + 16));
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_24TokenGenerationInference26DelayedMaskedLanguageModelC14MaskResolution33_43B38D216B45299537E2DDC15A03F28DLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DelayedMaskedLanguageModel.MaskResolution(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DelayedMaskedLanguageModel.MaskResolution(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DelayedMaskedLanguageModel.MaskResolution(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.startNode.getter in conformance DelayedMaskedLanguageModel()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  v3 = __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  v4 = *(v1 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = (*(v2 + 8))(v1, v2);
  (*(v4 + 8))(v6, v1);
  return v7;
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance DelayedMaskedLanguageModel(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return DelayedMaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2, a3);
}

unint64_t outlined consume of DelayedMaskedLanguageModel.MaskResolution(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 168) = a6;
  *(v7 + 176) = v6;
  *(v7 + 248) = a4;
  *(v7 + 152) = a3;
  *(v7 + 160) = a5;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  *(v7 + 184) = *(a5 - 8);
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

uint64_t DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)()
{
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 176), *(v0 + 160));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference43UnbatchedDeterministicLanguageModelProtocol_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v17 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    v3[1] = DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:);
    v4 = *(v0 + 248);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);

    return v17(v7, v5, v6, v4, v1, v2);
  }

  else
  {
    v18 = *(v0 + 168);
    v9 = *(v0 + 144);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    outlined destroy of UnbatchedDeterministicLanguageModelProtocol?(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    *(v0 + 216) = v10;
    *(v10 + 16) = xmmword_220AE8A30;
    *(v10 + 32) = v9;
    v16 = (*(v18 + 24) + **(v18 + 24));
    v11 = swift_task_alloc();
    *(v0 + 224) = v11;
    *v11 = v0;
    v11[1] = DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:);
    v12 = *(v0 + 168);
    v13 = *(v0 + 248);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);

    return v16(v10, v14, v13, v15, v12);
  }
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:);
  }

  else
  {
    v2 = DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 232);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 136);
    outlined init with copy of DeterministicLanguageModelProtocol(v1 + 32, v0 + 96);

    outlined init with take of RandomNumberGenerator((v0 + 96), v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {

    __break(1u);
  }

  return result;
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:);
  }

  else
  {

    v4 = DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance TGICAPILanguageModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return (specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:))(a1, a2, a3);
}

uint64_t specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = a7;
  *(v7 + 184) = a3;
  *(v7 + 104) = a1;
  *(v7 + 112) = a5;
  *(v7 + 136) = type metadata accessor for LogitIndexSet();
  *(v7 + 144) = swift_task_alloc();
  v8 = type metadata accessor for ContiguousBitSet();
  *(v7 + 152) = v8;
  *(v7 + 160) = *(v8 - 8);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

void *specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v103 = v0;
  v1 = *(*(v0 + 104) + 16);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
  v3 = result;
  if (!v1)
  {
LABEL_97:

    v87 = *(v0 + 8);

    return v87(v3);
  }

  v4 = 0;
  v5 = *(v0 + 112);
  v98 = v5 & 0xC000000000000001;
  v93 = v5 & 0xFFFFFFFFFFFFFF8;
  v94 = *(v0 + 104) + 32;
  v6 = v5 + 32;
  v7 = *(v0 + 160);
  v89 = (v7 + 8);
  v90 = (v7 + 32);
  v88 = *(v0 + 144);
  v95 = v6;
  v96 = *(v0 + 128);
  v92 = v1;
  while (*(v0 + 184) != 1)
  {
    v16 = *(v94 + 8 * v4);
    if (v98)
    {
      v86 = *(v0 + 112);
      v18 = *(MEMORY[0x223D8EEA0](*(v94 + 8 * v4), v86) + 58);

      v17 = MEMORY[0x223D8EEA0](v16, v86);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      if (v16 >= *(v93 + 16))
      {
        goto LABEL_102;
      }

      v17 = *(v95 + 8 * v16);
      v18 = *(v17 + 58);
    }

    swift_beginAccess();
    v19 = *(v17 + 48);

    v20 = specialized _NativeDictionary.filter(_:)(v19);

    v21 = *(v20 + 16);
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v22 = swift_allocObject();
      v23 = _swift_stdlib_malloc_size(v22);
      v24 = v23 - 32;
      if (v23 < 32)
      {
        v24 = v23 - 25;
      }

      v22[2] = v21;
      v22[3] = 2 * (v24 >> 3);
      v25 = specialized Sequence._copySequenceContents(initializing:)(&v100, v22 + 4, v21, v20);
      result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
      if (v25 != v21)
      {
        goto LABEL_103;
      }
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v97 = v4;
    if (v98)
    {
      v26 = MEMORY[0x223D8EEA0](v16, *(v0 + 112));
    }

    else
    {
      v26 = *(v95 + 8 * v16);
    }

    swift_beginAccess();
    v27 = *(v26 + 48);

    v28 = specialized _NativeDictionary.filter(_:)(v27);

    v30 = specialized _NativeDictionary.filter(_:)(v29);

    if ((v18 & 1) == 0)
    {

      if (!v22[2])
      {

        v22 = *(v0 + 120);
      }

      v1 = v92;
      v4 = v97;
      *(v0 + 40) = type metadata accessor for PrefixGuidedLanguageModel.PrefixLogitCollection();
      *(v0 + 48) = &protocol witness table for PrefixGuidedLanguageModel.PrefixLogitCollection;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      v48 = v22[2];
      if (v48 != 1)
      {
        if (!v48)
        {

          if (one-time initialization token for empty != -1)
          {
            swift_once();
          }

          v49 = __swift_project_value_buffer(*(v0 + 136), static LogitIndexSet.empty);
          _s24TokenGenerationInference13LogitIndexSetOWOcTm_0(v49, boxed_opaque_existential_1, type metadata accessor for LogitIndexSet);
          goto LABEL_7;
        }

        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
        v102 = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
        v100 = v22;
        ContiguousBitSet.init(_:)();
        if (ContiguousBitSet.isDense.getter())
        {
          v53 = ContiguousBitSet.first.getter();
          if (v54 & 1) != 0 || (v55 = v53, v56 = ContiguousBitSet.last.getter(), (v57))
          {
            if (one-time initialization token for empty != -1)
            {
              swift_once();
            }

            v58 = *(v0 + 144);
            v59 = *(v0 + 136);
            (*v89)(*(v0 + 168), *(v0 + 152));
            v60 = __swift_project_value_buffer(v59, static LogitIndexSet.empty);
            _s24TokenGenerationInference13LogitIndexSetOWOcTm_0(v60, v58, type metadata accessor for LogitIndexSet);
            goto LABEL_92;
          }

          v84 = v56;
          result = (*v89)(*(v0 + 168), *(v0 + 152));
          v85 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            goto LABEL_112;
          }

          if (v85 < v55)
          {
            goto LABEL_113;
          }

          **(v0 + 144) = v55;
          *(v88 + 8) = v85;
        }

        else
        {
          (*v90)(*(v0 + 144), *(v0 + 168), *(v0 + 152));
        }

        swift_storeEnumTagMultiPayload();
LABEL_92:
        outlined init with take of LogitIndexSet(*(v0 + 144), boxed_opaque_existential_1);
        goto LABEL_7;
      }

      v51 = v22[4];

      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_108;
      }

      if (v52 < v51)
      {
        goto LABEL_109;
      }

      *boxed_opaque_existential_1 = v51;
      boxed_opaque_existential_1[1] = v52;
      goto LABEL_6;
    }

    v31 = *(v30 + 16);

    if (v31)
    {
      if (v96 < 0)
      {
        goto LABEL_104;
      }

      v32 = MEMORY[0x223D8EB00](*(v0 + 128), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
      if (v96)
      {
        v33 = 0;
        do
        {
          v36 = v32 + 56;
          v37 = v33;
          while (1)
          {
            v33 = v37 + 1;
            v38 = MEMORY[0x223D8F400](*(v32 + 40), v37);
            v39 = -1 << *(v32 + 32);
            v40 = v38 & ~v39;
            if (((*(v36 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              break;
            }

            v41 = ~v39;
            while (*(*(v32 + 48) + 8 * v40) != v37)
            {
              v40 = (v40 + 1) & v41;
              if (((*(v36 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            ++v37;
            if (v33 == *(v0 + 128))
            {
              goto LABEL_37;
            }
          }

LABEL_29:
          v34 = *(v0 + 128);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = v32;
          specialized _NativeSet.insertNew(_:at:isUnique:)(v37, v40, isUniquelyReferenced_nonNull_native);
          v32 = v100;
        }

        while (v33 != v34);
      }

LABEL_37:
      v42 = *(v28 + 16);
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v43 = swift_allocObject();
        v44 = _swift_stdlib_malloc_size(v43);
        v45 = v44 - 32;
        if (v44 < 32)
        {
          v45 = v44 - 25;
        }

        v43[2] = v42;
        v43[3] = 2 * (v45 >> 3);
        v46 = specialized Sequence._copySequenceContents(initializing:)(&v100, v43 + 4, v42, v28);
        result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
        if (v46 != v42)
        {
          goto LABEL_105;
        }
      }

      else
      {

        v43 = MEMORY[0x277D84F90];
      }

      v61 = MEMORY[0x223D8EB00](v43[2], MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
      v62 = v61;
      v63 = v43[2];
      if (v63)
      {
        v91 = v3;
        v64 = 0;
        v65 = v61 + 56;
        do
        {
          while (1)
          {
            v66 = v43[v64++ + 4];
            v67 = MEMORY[0x223D8F400](*(v62 + 40), v66);
            v68 = -1 << *(v62 + 32);
            v69 = v67 & ~v68;
            if ((*(v65 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
            {
              break;
            }

LABEL_68:
            v71 = swift_isUniquelyReferenced_nonNull_native();
            v100 = v62;
            specialized _NativeSet.insertNew(_:at:isUnique:)(v66, v69, v71);
            v62 = v100;
            if (v64 == v63)
            {
              goto LABEL_70;
            }

            v65 = (v100 + 7);
          }

          v70 = ~v68;
          while (*(*(v62 + 48) + 8 * v69) != v66)
          {
            v69 = (v69 + 1) & v70;
            if (((*(v65 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
            {
              goto LABEL_68;
            }
          }
        }

        while (v64 != v63);
LABEL_70:

        v3 = v91;
      }

      else
      {
      }

      if (*(v62 + 16) <= *(v32 + 16) >> 3)
      {
        v100 = v32;
        specialized Set._subtract<A>(_:)(v62);

        v72 = v100;
      }

      else
      {
        v72 = specialized _NativeSet.subtracting<A>(_:)(v62, v32);
      }

      v73 = *(v72 + 16);
      v1 = v92;
      v4 = v97;
      if (v73)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v74 = swift_allocObject();
        v75 = _swift_stdlib_malloc_size(v74);
        v76 = v75 - 32;
        if (v75 < 32)
        {
          v76 = v75 - 25;
        }

        v74[2] = v73;
        v74[3] = 2 * (v76 >> 3);
        v77 = specialized Sequence._copySequenceContents(initializing:)(&v100, v74 + 4, v73, v72);
        result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
        if (v77 != v73)
        {
          goto LABEL_106;
        }
      }

      else
      {

        v74 = MEMORY[0x277D84F90];
      }

      *(v0 + 40) = type metadata accessor for PrefixGuidedLanguageModel.PrefixLogitCollection();
      *(v0 + 48) = &protocol witness table for PrefixGuidedLanguageModel.PrefixLogitCollection;
      v78 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      v79 = v74[2];
      if (v79 != 1)
      {
        if (v79)
        {
          v83 = *(v0 + 176);
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
          v102 = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd);
          v100 = v74;
          ContiguousBitSet.init(_:)();
          LogitIndexSet.init(_:)(v83, v78);
        }

        else
        {

          if (one-time initialization token for empty != -1)
          {
            swift_once();
          }

          v80 = __swift_project_value_buffer(*(v0 + 136), static LogitIndexSet.empty);
          _s24TokenGenerationInference13LogitIndexSetOWOcTm_0(v80, v78, type metadata accessor for LogitIndexSet);
        }

        goto LABEL_7;
      }

      v81 = v74[4];

      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_110;
      }

      if (v82 < v81)
      {
        goto LABEL_111;
      }

      *v78 = v81;
      v78[1] = v82;
      goto LABEL_6;
    }

    *(v0 + 40) = type metadata accessor for UnconstrainedLogitCollection();
    *(v0 + 48) = &protocol witness table for UnconstrainedLogitCollection;
    result = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    if (v96 < 0)
    {
      goto LABEL_107;
    }

    v50 = *(v0 + 128);
    *result = 0;
    result[1] = v50;
    swift_storeEnumTagMultiPayload();
    v1 = v92;
    v4 = v97;
LABEL_7:
    v99 = v3;
    v10 = v3[2];
    v9 = v3[3];
    if (v10 >= v9 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
      v99 = v3;
    }

    ++v4;
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v11);
    v14 = *(v11 - 8);
    v15 = swift_task_alloc();
    (*(v14 + 16))(v15, v13, v11);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v15, &v99, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    if (v4 == v1)
    {
      goto LABEL_97;
    }
  }

  *(v0 + 40) = type metadata accessor for UnconstrainedLogitCollection();
  *(v0 + 48) = &protocol witness table for UnconstrainedLogitCollection;
  result = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  if ((v96 & 0x8000000000000000) == 0)
  {
    v8 = *(v0 + 128);
    *result = 0;
    result[1] = v8;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

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
  return result;
}

{
  v48 = v0;
  v1 = *(v0[10] + 16);
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
  v46 = v1;
  if (!v1)
  {
LABEL_36:

    v39 = v0[1];

    return v39(v2);
  }

  v3 = v0[15];
  v40 = v0[13];
  v4 = v0[11];
  v43 = OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_unconstrainedLogitCollection;
  v44 = OBJC_IVAR____TtC24TokenGenerationInference42OneTokenHealingPrefixMatchingLanguageModel_nodeStates;
  v45 = v0[10] + 32;
  result = swift_beginAccess();
  v6 = 0;
  v41 = (v3 + 8);
  v42 = (v3 + 32);
  while (1)
  {
    v7 = *(v45 + 8 * v6);
    if (v7 == -1)
    {
LABEL_12:
      v0[5] = type metadata accessor for UnconstrainedLogitCollection();
      v0[6] = &protocol witness table for UnconstrainedLogitCollection;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      _s24TokenGenerationInference13LogitIndexSetOWOcTm_0(v4 + v43, boxed_opaque_existential_1, type metadata accessor for UnconstrainedLogitCollection);
      goto LABEL_29;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = *(v4 + v44);
    if (v7 >= *(v8 + 16))
    {
      goto LABEL_40;
    }

    v9 = *(v8 + 8 * v7 + 32);
    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_12;
    }

    v0[5] = type metadata accessor for UnweightedSparseLogitCollection();
    v0[6] = &protocol witness table for UnweightedSparseLogitCollection;
    result = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v11 = result;
    if (v10 != 1)
    {
      v47[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVyS2i_GMd);
      v47[5] = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type [Int : Int].Keys and conformance [A : B].Keys, &_sSD4KeysVyS2i_GMd);
      v47[1] = v9;
      swift_bridgeObjectRetain_n();
      ContiguousBitSet.init(_:)();
      if (ContiguousBitSet.isDense.getter())
      {
        v18 = ContiguousBitSet.first.getter();
        if (v19 & 1) != 0 || (v20 = v18, v21 = ContiguousBitSet.last.getter(), (v22))
        {
          if (one-time initialization token for empty != -1)
          {
            swift_once();
          }

          v23 = v0[13];
          v24 = v0[12];
          (*v41)(v0[16], v0[14]);
          v25 = __swift_project_value_buffer(v24, static LogitIndexSet.empty);
          _s24TokenGenerationInference13LogitIndexSetOWOcTm_0(v25, v23, type metadata accessor for LogitIndexSet);
          goto LABEL_28;
        }

        v37 = v21;
        result = (*v41)(v0[16], v0[14]);
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_46;
        }

        if (v38 < v20)
        {
          goto LABEL_47;
        }

        *v0[13] = v20;
        *(v40 + 8) = v38;
      }

      else
      {
        (*v42)(v0[13], v0[16], v0[14]);
      }

      swift_storeEnumTagMultiPayload();
LABEL_28:
      outlined init with take of LogitIndexSet(v0[13], v11);

      goto LABEL_29;
    }

    v12 = 0;
    v13 = 0;
    v14 = v9 + 64;
    v15 = 1 << *(v9 + 32);
    while (1)
    {
      v16 = *(v14 + 8 * v13);
      if (v16)
      {
        break;
      }

      ++v13;
      v12 -= 64;
      if ((v15 + 63) >> 6 == v13)
      {
        goto LABEL_48;
      }
    }

    v26 = __clz(__rbit64(v16));
    if (v26 - v15 == v12)
    {
      goto LABEL_48;
    }

    if (-v12 < 0)
    {
      goto LABEL_41;
    }

    v27 = v26 - v12;
    if (v27 >= v15)
    {
      goto LABEL_42;
    }

    if (((*(v14 + 8 * (v13 & 0x3FFFFFFFFFFFFFFLL)) >> v26) & 1) == 0)
    {
      goto LABEL_43;
    }

    v28 = *(*(v9 + 48) + 8 * v27);
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_44;
    }

    if (v29 < v28)
    {
      goto LABEL_45;
    }

    *result = v28;
    result[1] = v29;
    swift_storeEnumTagMultiPayload();
LABEL_29:
    v47[0] = v2;
    v31 = v2[2];
    v30 = v2[3];
    if (v31 >= v30 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v2, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
      v47[0] = v2;
    }

    ++v6;
    v32 = v0[5];
    v33 = v0[6];
    v34 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v32);
    v35 = *(v32 - 8);
    v36 = swift_task_alloc();
    (*(v35 + 16))(v36, v34, v32);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v31, v36, v47, v32, v33);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    if (v6 == v46)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 152) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x2822009F8](UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 104) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
  if (v1)
  {
    v3 = *(v0 + 64);
    v4 = *(*(v0 + 88) + 16);
    *(v0 + 120) = v2;
    *(v0 + 128) = 0;
    *(v0 + 112) = v4;
    v5 = *(v3 + 32);
    v13 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
    v7 = *(v0 + 88);
    v8 = *(v0 + 152);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);

    return v13(v0 + 16, v5, v9, v8, v10, v7);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12(v2);
  }
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v2 = UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 120);
  *(v0 + 56) = v1;
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
    *(v0 + 56) = v1;
  }

  v18 = *(v0 + 128) + 1;
  v19 = *(v0 + 104);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v4);
  v7 = *(v4 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v4);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v3, v8, (v0 + 56), v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  if (v18 == v19)
  {
    v9 = *(v0 + 8);

    return v9(v1);
  }

  else
  {
    v11 = *(v0 + 128) + 1;
    *(v0 + 120) = v1;
    *(v0 + 128) = v11;
    v12 = *(*(v0 + 64) + 8 * v11 + 32);
    v20 = (*(v0 + 112) + **(v0 + 112));
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
    v14 = *(v0 + 88);
    v15 = *(v0 + 152);
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);

    return v20(v0 + 16, v12, v16, v15, v17, v14);
  }
}

{
  return (*(v0 + 8))();
}

uint64_t specialized DeterministicLanguageModelProtocol.node(forPreviousNode:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = a1;
  if (*(a3 + 16))
  {
    v26 = a1;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.device);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_220940000, v17, v18, "Ignoring prompt modules, using flattened prompt", v19, 2u);
      MEMORY[0x223D90A10](v19, -1, -1);
    }

    v15 = v26;
  }

  v29 = a2;
  v30 = a3;
  v31 = a4;
  SamplingDecoderPrompt.flattened.getter();
  v21 = v20;
  v27[0] = a5;
  v27[1] = a6;
  v27[2] = a7;
  v28 = a8 & 1;
  MEMORY[0x28223BE20](v20);
  v24[2] = v27;
  v25 = 1;
  v22 = specialized Sequence.reduce<A>(_:_:)(v15, partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:), v24, v21);

  return v22;
}

uint64_t specialized DeterministicLanguageModelProtocol.node(forPreviousNode:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v7 = v5;
  if (*(a3 + 16))
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.device);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_220940000, v13, v14, "Ignoring prompt modules, using flattened prompt", v15, 2u);
      MEMORY[0x223D90A10](v15, -1, -1);
    }
  }

  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  SamplingDecoderPrompt.flattened.getter();
  v17 = v16;
  v22[0] = v7;
  MEMORY[0x28223BE20](v16);
  v20[2] = v22;
  v21 = 1;
  v18 = specialized Sequence.reduce<A>(_:_:)(a1, a5, v20, v17);

  return v18;
}

Swift::Int __swiftcall DeterministicLanguageModelProtocol.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v3 = v2;
  rawValue = prompt.healingOverflowTokens._rawValue;
  v5 = prompt.promptModulesTokens._rawValue;
  if (*(*(prompt.queryTokens._rawValue + 1) + 16))
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.device);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220940000, v8, v9, "Ignoring prompt modules, using flattened prompt", v10, 2u);
      MEMORY[0x223D90A10](v10, -1, -1);
    }
  }

  SamplingDecoderPrompt.flattened.getter();
  v15 = v5;
  v16 = rawValue;
  v17 = v3;
  v18 = 1;
  v12 = specialized Sequence.reduce<A>(_:_:)(forPreviousNode, partial apply for closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:), v14, v11);

  return v12;
}

Swift::Int __swiftcall DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)(Swift::Int forPreviousNode, Swift::OpaquePointer tokens, Swift::Bool isPrompt)
{
  v7 = v3;
  v8 = v4;
  v9 = isPrompt;
  return specialized Sequence.reduce<A>(_:_:)(forPreviousNode, partial apply for closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:), &v6, tokens._rawValue);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance PrefixGuidedLanguageModel(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2, a3, v8, v9, v11, v10);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance GrammarGuidedLanguageModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2, a3);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance LookupLanguageModel<A>(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2, a3, a4, &protocol witness table for LookupLanguageModel<A>);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance WeightedFiniteStateLanguageModel(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return (specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:))(a1, a2, v6, v7, v8, v9);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance OneTokenHealingPrefixMatchingLanguageModel(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(a1);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScCySay10Foundation4DataVGs5Error_pGGMd);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10Foundation4DataVGs5Error_pGMd) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10Foundation4DataVGs5Error_pGMd) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26E5TransformerLanguageModelC05draftJ0_AC16DraftingBehaviorV8behaviortGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference19LanguageModelRunner_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LanguageModelRunner_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSfGMd);
  result = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  if (v6)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v8 = v7 | (v3 << 6);
LABEL_10:
      v11 = *(*(a1 + 48) + 8 * v8);
      v12 = *(*(a1 + 56) + 16 * v8 + 8);
      *(result + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
      *(result[6] + 8 * v8) = v11;
      *(result[7] + 4 * v8) = v12;
      v13 = result[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        break;
      }

      result[2] = v15;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= ((v4 + 63) >> 6))
      {
        return result;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v8 = __clz(__rbit64(v10)) | (v3 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary.Keys.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of RandomNumberGenerator(&v12, v10 + 40 * a1 + 32);
}

uint64_t dispatch thunk of DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of SamplingDecoder.decodeNextChunk();

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  return partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)(a1, a2, specialized TGICAPILanguageModel.node(forPreviousNode:token:isPrompt:), a3);
}

{
  return partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)(a1, a2, specialized SpeculativeStreamingLanguageModel.node(forPreviousNode:token:isPrompt:), a3);
}

uint64_t specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for LogitIndexSet();
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for ContiguousBitSet();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a1;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

Swift::Int partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X1>, Swift::Int *a3@<X8>)
{
  result = CompositeLanguageModel.node(forPreviousNode:token:isPrompt:)(*a1, *a2, *(v3 + 24));
  *a3 = result;
  return result;
}

uint64_t _s24TokenGenerationInference13LogitIndexSetOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(*a1, *a2);
  *a4 = result;
  return result;
}

uint64_t outlined destroy of UnbatchedDeterministicLanguageModelProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference43UnbatchedDeterministicLanguageModelProtocol_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(*(v3 + 24) + 16))(*a1, *a2, *(v3 + 40), *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)(*a1, *a2, *(*(v3 + 16) + 16), *(*(v3 + 16) + 24), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (result != -1 && ((a4 & 1) == 0 || (a5 & 1) == 0))
  {
    if (*(a3 + 16) > result)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v5 = *(a3 + 8 * result + 32);
        if (!*(v5 + 16))
        {
          return -1;
        }

        v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
        if (v7)
        {
          return *(*(v5 + 56) + 16 * v6);
        }

        else
        {
          return -1;
        }
      }

      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(a1, a3, a4, v4, ObjectType, a2);
}

double E5TransformerLanguageModel.totalLatency.getter()
{
  swift_beginAccess();
  v0 = Duration.components.getter();
  Duration.components.getter();
  return v1 * 1.0e-18 + v0;
}

void specialized Zip2Sequence.makeIterator()(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v4 = *v1;
  v3 = v1[1];
  if (v2 < 1)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(v3 + 16);
    if (v4 >= v5)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v6 = v3 + 32 + 48 * v4;
    LOBYTE(v7) = *(v6 + 16);
    v4 = *(v6 + 8);
    if (v2 != 1 && (v7 & 1) == 0)
    {
      v8 = 2;
      while ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= v5)
        {
          goto LABEL_27;
        }

        v9 = v3 + 32 + 48 * v4;
        v7 = *(v9 + 16);
        v4 = *(v9 + 8);
        if (v8 < v2)
        {
          ++v8;
          if (!v7)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

LABEL_13:
  v10 = v1[9];
  v12 = v1[5];
  v11 = v1[6];
  if (v10 < 1)
  {
    LOBYTE(v15) = 0;
    goto LABEL_25;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = *(v11 + 16);
  if (v12 < v13)
  {
    v14 = v11 + 32 + 48 * v12;
    LOBYTE(v15) = *(v14 + 16);
    v12 = *(v14 + 8);
    if (v10 != 1 && (v15 & 1) == 0)
    {
      v16 = 2;
      while ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 >= v13)
        {
          goto LABEL_29;
        }

        v17 = v11 + 32 + 48 * v12;
        v15 = *(v17 + 16);
        v12 = *(v17 + 8);
        if (v16 < v10)
        {
          ++v16;
          if (!v15)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_28;
    }

LABEL_25:
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = v3;
    *(a1 + 24) = v12;
    *(a1 + 32) = v15;
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
    return;
  }

LABEL_29:
  __break(1u);
}

unint64_t protocol witness for NodeStateProtocol.init() in conformance E5TransformerLanguageModel.NodeState@<X0>(uint64_t a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return result;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance E5TransformerLanguageModel.NodeState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[4];
  v4 = *a2;
  if (*(a1 + 40))
  {
    v3 = -1;
  }

  if (a2[5])
  {
    if (v2 == v4)
    {
      v5 = -1;
      return v3 < v5;
    }
  }

  else if (v2 == v4)
  {
    v5 = a2[4];
    return v3 < v5;
  }

  return v2 < v4;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance E5TransformerLanguageModel.NodeState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[4];
  if (*(a2 + 40))
  {
    v4 = -1;
  }

  if (a1[5])
  {
    if (v3 == v2)
    {
      v5 = -1;
LABEL_8:
      v6 = v4 < v5;
      goto LABEL_10;
    }
  }

  else if (v3 == v2)
  {
    v5 = a1[4];
    goto LABEL_8;
  }

  v6 = v3 < v2;
LABEL_10:
  v7 = v6;
  return v7 ^ 1u;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance E5TransformerLanguageModel.NodeState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[4];
  v4 = *a2;
  if (*(a1 + 40))
  {
    v3 = -1;
  }

  if (a2[5])
  {
    if (v2 == v4)
    {
      v5 = -1;
LABEL_8:
      v6 = v3 < v5;
      goto LABEL_10;
    }
  }

  else if (v2 == v4)
  {
    v5 = a2[4];
    goto LABEL_8;
  }

  v6 = v2 < v4;
LABEL_10:
  v7 = v6;
  return v7 ^ 1u;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance E5TransformerLanguageModel.NodeState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[4];
  if (*(a2 + 40))
  {
    v4 = -1;
  }

  if (a1[5])
  {
    if (v3 == v2)
    {
      v5 = -1;
      return v4 < v5;
    }
  }

  else if (v3 == v2)
  {
    v5 = a1[4];
    return v4 < v5;
  }

  return v3 < v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance E5TransformerLanguageModel.NodeState(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return specialized static E5TransformerLanguageModel.NodeState.== infix(_:_:)(&v5, &v7) & 1;
}

Swift::Int __swiftcall E5TransformerLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v3 = *(prompt.queryTokens._rawValue + 1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = forPreviousNode == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = v2;
    v7 = *prompt.queryTokens._rawValue;
    v8 = MEMORY[0x277D84F90];
    if (v4)
    {
      v23 = *prompt.queryTokens._rawValue;
      v24[0] = MEMORY[0x277D84F90];
      v9 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v8 = v24[0];
      v10 = (v3 + 32);
      do
      {
        v11 = *v10;
        v25 = v6;
        MEMORY[0x28223BE20](v9);
        v21 = &v25;
        LOBYTE(v22) = 1;

        v12 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:), v20, v11);

        v24[0] = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v9 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v8 = v24[0];
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 8 * v14 + 32) = v12;
        ++v10;
        --v4;
      }

      while (v4);
      v7 = v23;
    }

    *(v6 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_allPromptModuleNodes) = v8;

    v24[0] = v6;
    MEMORY[0x28223BE20](v15);
    v21 = v24;
    LOBYTE(v22) = 1;
    return specialized Sequence.reduce<A>(_:_:)(0, closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)specialized partial apply, v20, v7);
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(72);
    MEMORY[0x223D8E780](0xD000000000000010, 0x8000000220AFF150);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v17);

    MEMORY[0x223D8E780](0xD000000000000022, 0x8000000220AFF170);
    v25 = forPreviousNode;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v18);

    MEMORY[0x223D8E780](0xD000000000000012, 0x8000000220AFF1A0);
    v22 = 0;
    v21 = 77;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t E5TransformerLanguageModel.compareNodesByPositionAndToken(_:_:)(unint64_t a1, unint64_t a2)
{
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v2 + 56);
  v7 = *(v6 + 16);
  if (v7 <= a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 <= a2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v8 = v6 + 32;
  v9 = (v8 + 48 * a1);
  v10 = *v9;
  v11 = *(v9 + 40);
  v12 = v9[4];
  v13 = (v8 + 48 * a2);
  v14 = *v13;
  if (v11)
  {
    v15 = -1;
  }

  else
  {
    v15 = v12;
  }

  if (v13[5])
  {
    if (v10 == v14)
    {
      v16 = -1;
      return v15 < v16;
    }
  }

  else if (v10 == v14)
  {
    v16 = v13[4];
    return v15 < v16;
  }

  return v10 < v14;
}

uint64_t E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2);
}

uint64_t closure #1 in E5TransformerLanguageModel.nodesAreLinear(nodes:)(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(a3 + 56);
  v8 = *(v7 + 16);
  if (v4 >= v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >= v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = v7 + 32;
  v10 = (v9 + 48 * v4);
  v11 = v10[4];
  v12 = *v10;
  v13 = *(v10 + 40);
  v14 = (v9 + 48 * v5);
  v15 = *v14;
  if (*(v14 + 40))
  {
    v16 = -1;
  }

  else
  {
    v16 = v14[4];
  }

  if (v13)
  {
    v17 = -1;
  }

  else
  {
    v17 = v11;
  }

  v18 = v16 < v17;
  v19 = v15 == v12;
  v20 = v15 < v12;
  if (v19)
  {
    return v18;
  }

  else
  {
    return v20;
  }
}

uint64_t E5TransformerLanguageModel.leftContextTokens(forNode:)(unint64_t a1)
{
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = *(v1 + 56);
  if (*(v4 + 16) > a1)
  {
    v5 = *(v4 + 48 * a1 + 32);

    v6 = specialized NodeStorage.nodes(previousAndIncluding:position:)(a1, v5, 0, v4);
    v8 = v7;

    v9 = MEMORY[0x277D84F90];
    while ((v6 & 0x8000000000000000) == 0)
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v1 + 56);
      if (v6 >= *(v10 + 16))
      {
        goto LABEL_17;
      }

      v11 = 48 * v6;
      v12 = v8 + 32 + 48 * v6;
      v6 = *(v12 + 8);
      v13 = *(v12 + 16);
      v14 = v10 + v11;
      if ((*(v14 + 72) & 1) == 0)
      {
        v15 = *(v14 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 16) = v17 + 1;
        *(v9 + 8 * v17 + 32) = v15;
      }

      if (v13)
      {

        return specialized Sequence.reversed()(v9);
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t E5TransformerLanguageModel.tokenMasks(queryNodes:promptModuleContextCount:)(uint64_t a1, uint64_t a2)
{
  v55 = *(v2 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes);

  specialized Array.append<A>(contentsOf:)(v5);
  v6 = v55;
  v7 = *(a1 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v56 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  if (a2 < 0)
  {
    goto LABEL_64;
  }

  v49 = a2;
  v8 = v56;
  v46 = a1 + 32;
  swift_beginAccess();
  v9 = 0;
  v45 = v7;
  while (1)
  {
    v10 = *(v46 + 8 * v9);
    *&v53 = 0;
    *(&v53 + 1) = v49;
    v54 = MEMORY[0x277D84F90];
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

    v51 = v8;
    v11 = *(v47 + 56);
    if (v10 >= *(v11 + 16))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v50 = v9;
    v12 = *(v11 + 48 * v10 + 32);

    v13 = specialized _copySequenceToContiguousArray<A>(_:)(v10, v11, v12, 0);

    v14 = *(v13 + 16);
    if (v14 >= 2)
    {
      v15 = v14 >> 1;
      v16 = v14 + 3;
      v17 = 4;
      do
      {
        if (v17 != v16)
        {
          v18 = *(v13 + 16);
          if (v17 - 4 >= v18)
          {
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (v16 - 4 >= v18)
          {
            goto LABEL_58;
          }

          v19 = *(v13 + 8 * v17);
          v20 = *(v13 + 8 * v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          }

          *(v13 + 8 * v17) = v20;
          *(v13 + 8 * v16) = v19;
        }

        --v16;
        ++v17;
        --v15;
      }

      while (v15);
      v14 = *(v13 + 16);
    }

    if (v14)
    {
      break;
    }

LABEL_46:

    v40 = v53;
    v8 = v51;
    v42 = *(v51 + 2);
    v41 = *(v51 + 3);
    if (v42 >= v41 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
      v40 = v53;
      v8 = v51;
    }

    v9 = v50 + 1;
    *(v8 + 2) = v42 + 1;
    v43 = &v8[24 * v42];
    *(v43 + 2) = v40;
    *(v43 + 6) = v54;
    if (v50 + 1 == v45)
    {
LABEL_52:

      return v8;
    }
  }

  v21 = 0;
  v48 = 0;
  v22 = 1;
  v23 = v49;
  v52 = v49;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 >= *(v13 + 16))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v25 = *(v13 + 32 + 8 * v21);
    if (!v25)
    {
      v24 = v22;
      goto LABEL_19;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    v26 = *(v6 + 16);
    v27 = v26 > v22;
    v28 = v26 - v22;
    if (!v27)
    {
      goto LABEL_56;
    }

    if (*(v55 + 32 + 8 * v22) != v25)
    {
      break;
    }

    v24 = v22;
LABEL_35:
    v8 = v54;
    if (*(v54 + 2))
    {
      v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v33 + 16) = 1;
      *(v33 + 32) = 1;
      v34 = *(v54 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v36 = *(v54 + 3) >> 1, v36 <= v34))
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34 + 1, 1, v54);
        v36 = *(v8 + 3) >> 1;
      }

      v6 = v55;
      if (!*(v33 + 16))
      {
        goto LABEL_65;
      }

      v37 = *(v8 + 2);
      if (v36 <= v37)
      {
        goto LABEL_59;
      }

      v8[v37 + 32] = *(v33 + 32);

      ++*(v8 + 2);
      v54 = v8;
    }

    else
    {
      if (__OFADD__(v23++, 1))
      {
        goto LABEL_60;
      }

      *(&v53 + 1) = v23;
      v52 = v23;
    }

LABEL_19:
    ++v21;
    v22 = v24;
    if (v21 == v14)
    {
      goto LABEL_46;
    }
  }

  v29 = 1;
  do
  {
    if (v28 + v29 == 2)
    {
      __break(1u);
      goto LABEL_52;
    }

    v24 = v22 + 1;
    v30 = *(v55 + 40 + 8 * v22);
    --v29;
    ++v22;
  }

  while (v30 != v25);
  if (!v29)
  {
    goto LABEL_35;
  }

  v31 = -v29;
  if (*(v8 + 2) || (v23 = v52) != 0)
  {
    v32 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v32 + 16) = v31;
    bzero((v32 + 32), v31);
    specialized Array.append<A>(contentsOf:)(v32);
LABEL_34:
    v6 = v55;
    goto LABEL_35;
  }

  v39 = v48 - v29;
  if (!__OFADD__(v48, v31))
  {
    v23 = 0;
    v48 -= v29;
    *&v53 = v39;
    goto LABEL_34;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v9 = *a4;

    v10 = v9 + 8 * v6 - 8;
    v11 = a1 - v6;
LABEL_4:
    swift_beginAccess();
    v12 = *(v9 + 8 * v6);
    v13 = 48 * v12;
    v14 = v11;
    v15 = v10;
    while (1)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:

        __break(1u);
        return result;
      }

      v16 = *(a5 + 56);
      v17 = *(v16 + 16);
      if (v12 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *v15;
      if (*v15 >= v17)
      {
        goto LABEL_27;
      }

      v19 = v16 + 32;
      v20 = *(v19 + 48 * v12);
      v21 = (v19 + 48 * v18);
      v22 = *v21;
      if (*(v19 + v13 + 40))
      {
        v23 = -1;
      }

      else
      {
        v23 = *(v19 + v13 + 32);
      }

      if (v21[5])
      {
        if (v20 != v22)
        {
          goto LABEL_18;
        }

        if (v23 >= -1)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v20 != v22)
        {
LABEL_18:
          if (v20 >= v22)
          {
            goto LABEL_3;
          }

          goto LABEL_19;
        }

        if (v23 >= v21[4])
        {
          goto LABEL_3;
        }
      }

LABEL_19:
      if (!v9)
      {
        goto LABEL_28;
      }

      *v15 = v12;
      v15[1] = v18;
      --v15;
      if (__CFADD__(v14++, 1))
      {
LABEL_3:
        ++v6;
        v10 += 8;
        --v11;
        if (v6 != a2)
        {
          goto LABEL_4;
        }
      }
    }
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, char *__dst, uint64_t a5)
{
  v6 = __dst;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (__dst != __src || &__src[8 * v12] <= __dst)
    {
      memmove(__dst, __src, 8 * v12);
    }

    v16 = &v6[8 * v12];
    result = swift_beginAccess();
    if (v10 >= 8 && v8 < v7)
    {
      do
      {
        v18 = *v8;
        if ((*v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v19 = *(a5 + 56);
        v20 = *(v19 + 16);
        if (v18 >= v20)
        {
          goto LABEL_68;
        }

        if (*v6 >= v20)
        {
          goto LABEL_71;
        }

        v21 = v19 + 32;
        v22 = (v21 + 48 * v18);
        v23 = *v22;
        v24 = *(v22 + 40);
        v25 = v22[4];
        v26 = (v21 + 48 * *v6);
        v27 = *v26;
        if (v24)
        {
          v28 = -1;
        }

        else
        {
          v28 = v25;
        }

        if (v26[5])
        {
          if (v23 == v27)
          {
            if (v28 >= -1)
            {
              goto LABEL_23;
            }

            goto LABEL_29;
          }
        }

        else if (v23 == v27)
        {
          if (v28 >= v26[4])
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }

        if (v23 >= v27)
        {
LABEL_23:
          v18 = *v6;
          v29 = v9 == v6;
          v6 += 8;
          if (v29)
          {
            goto LABEL_25;
          }

LABEL_24:
          *v9 = v18;
          goto LABEL_25;
        }

LABEL_29:
        v29 = v9 == v8;
        v8 += 8;
        if (!v29)
        {
          goto LABEL_24;
        }

LABEL_25:
        v9 += 8;
      }

      while (v6 < v16 && v8 < v7);
    }

    v8 = v9;
LABEL_62:
    if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v8, v6, 8 * ((v16 - v6) / 8));
    }

    return 1;
  }

  if (__dst != a2 || &a2[8 * v15] <= __dst)
  {
    memmove(__dst, a2, 8 * v15);
  }

  v16 = &v6[8 * v15];
  result = swift_beginAccess();
  if (v13 < 8 || v8 <= v9)
  {
    goto LABEL_62;
  }

LABEL_37:
  v30 = v8 - 8;
  v31 = v7;
  v32 = v16;
  while (1)
  {
    v34 = *(v32 - 8);
    v32 -= 8;
    v33 = v34;
    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    v35 = *(a5 + 56);
    v36 = *(v35 + 16);
    if (v33 >= v36)
    {
      goto LABEL_69;
    }

    v37 = *v30;
    if (*v30 >= v36)
    {
      goto LABEL_70;
    }

    v38 = v35 + 32;
    v39 = (v38 + 48 * v33);
    v40 = *v39;
    v41 = *(v39 + 40);
    result = v39[4];
    v42 = (v38 + 48 * v37);
    v43 = *v42;
    if (v41)
    {
      v44 = -1;
    }

    else
    {
      v44 = result;
    }

    if (v42[5])
    {
      if (v40 == v43)
      {
        v45 = -1;
        goto LABEL_50;
      }
    }

    else if (v40 == v43)
    {
      v45 = v42[4];
LABEL_50:
      v7 = v31 - 8;
      if (v44 < v45)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    v7 = v31 - 8;
    if (v40 < v43)
    {
LABEL_55:
      if (v31 != v8)
      {
        *v7 = v37;
      }

      if (v16 <= v6 || (v8 -= 8, v30 <= v9))
      {
        v8 = v30;
        goto LABEL_62;
      }

      goto LABEL_37;
    }

LABEL_53:
    if (v16 != v31)
    {
      *v7 = v33;
    }

    v16 = v32;
    v31 = v7;
    if (v32 <= v6)
    {
      v16 = v32;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = result;
  if ((a4 & 1) != 0 || !a3)
  {
    v7 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 24);

    v12 = v7 + 4;
    v13 = v17 >> 1;
LABEL_16:
    v18 = a2 + 32;
    v19 = v7;
    while ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 >= *(a2 + 16))
      {
        goto LABEL_42;
      }

      v20 = v18 + 40 * v5;
      v21 = *v20;
      v22 = *(v20 + 8);
      if (v13)
      {
        v7 = v19;
        v23 = __OFSUB__(v13--, 1);
        if (v23)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v7 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v7);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v7[2] = v26;
        v7[3] = 2 * (v28 >> 3);
        v30 = (v7 + 4);
        v31 = v19[3] >> 1;
        if (v19[2])
        {
          v32 = v19 + 4;
          if (v7 != v19 || v30 >= v32 + 8 * v31)
          {
            memmove(v7 + 4, v32, 8 * v31);
          }

          v19[2] = 0;
        }

        v12 = (v30 + 8 * v31);
        v33 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v18 = a2 + 32;
        v23 = __OFSUB__(v33, 1);
        v13 = v33 - 1;
        if (v23)
        {
          goto LABEL_43;
        }
      }

      *v12++ = v5;
      v5 = v21;
      v19 = v7;
      if (v22)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_41;
  }

  if (a3 <= 0)
  {
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  v8 = result - 32;
  if (result < 32)
  {
    v8 = result - 25;
  }

  v9 = 2 * (v8 >> 3);
  v7[2] = a3;
  v7[3] = v9;
  if (a3 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = 0;
  v11 = 0;
  v12 = v7 + 4;
  v13 = (v9 >> 1) - a3;
  v14 = v5;
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11)
    {
      goto LABEL_49;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (v14 >= *(a2 + 16))
    {
      goto LABEL_46;
    }

    v16 = a2 + 32 + 40 * v14;
    v11 = *(v16 + 8);
    v5 = *v16;
    *v12++ = v14;
    ++v10;
    v14 = v5;
    if (v15 == a3)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_36:
      v34 = v7[3];
      if (v34 >= 2)
      {
        v35 = v34 >> 1;
        v23 = __OFSUB__(v35, v13);
        v36 = v35 - v13;
        if (v23)
        {
          goto LABEL_48;
        }

        v7[2] = v36;
      }

      return v7;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a4 & 1) != 0 || !a3)
  {
    v7 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 24);

    v12 = v7 + 4;
    v13 = v17 >> 1;
LABEL_16:
    v18 = a2 + 32;
    v19 = v7;
    while ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 >= *(a2 + 16))
      {
        goto LABEL_42;
      }

      v20 = v18 + 48 * v5;
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      if (v13)
      {
        v7 = v19;
        v23 = __OFSUB__(v13--, 1);
        if (v23)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v7 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v7);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v7[2] = v26;
        v7[3] = 2 * (v28 >> 3);
        v30 = (v7 + 4);
        v31 = v19[3] >> 1;
        if (v19[2])
        {
          v32 = v19 + 4;
          if (v7 != v19 || v30 >= v32 + 8 * v31)
          {
            memmove(v7 + 4, v32, 8 * v31);
          }

          v19[2] = 0;
        }

        v12 = (v30 + 8 * v31);
        v33 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v18 = a2 + 32;
        v23 = __OFSUB__(v33, 1);
        v13 = v33 - 1;
        if (v23)
        {
          goto LABEL_43;
        }
      }

      *v12++ = v5;
      v5 = v21;
      v19 = v7;
      if (v22)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_41;
  }

  if (a3 <= 0)
  {
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  v8 = result - 32;
  if (result < 32)
  {
    v8 = result - 25;
  }

  v9 = 2 * (v8 >> 3);
  v7[2] = a3;
  v7[3] = v9;
  if (a3 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = 0;
  v11 = 0;
  v12 = v7 + 4;
  v13 = (v9 >> 1) - a3;
  v14 = v5;
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11)
    {
      goto LABEL_49;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (v14 >= *(a2 + 16))
    {
      goto LABEL_46;
    }

    v16 = a2 + 32 + 48 * v14;
    v11 = *(v16 + 16);
    v5 = *(v16 + 8);
    *v12++ = v14;
    ++v10;
    v14 = v5;
    if (v15 == a3)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_36:
      v34 = v7[3];
      if (v34 >= 2)
      {
        v35 = v34 >> 1;
        v23 = __OFSUB__(v35, v13);
        v36 = v35 - v13;
        if (v23)
        {
          goto LABEL_48;
        }

        v7[2] = v36;
      }

      return v7;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return partial apply for specialized closure #1 in DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)(a1, a2, a3);
}

{
  result = specialized E5TransformerLanguageModel.node(forPreviousNode:token:isPrompt:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t specialized static E5TransformerLanguageModel.NodeState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_SiTt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized NodeStorage.nodes(previousAndIncluding:position:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) <= result)
  {

    _StringGuts.grow(_:)(21);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v4);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3[1];
  if (v9 < 1)
  {
    swift_retain_n();
    v12 = MEMORY[0x277D84F90];
LABEL_117:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_163;
    }

    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_119;
  }

  swift_retain_n();
  swift_beginAccess();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v113 = a4;
  v114 = a1;
  while (2)
  {
    v13 = v11 + 1;
    if (v11 + 1 >= v9)
    {
      goto LABEL_35;
    }

    v14 = (*a3 + 8 * v11);
    v16 = *v14;
    v15 = v14 + 2;
    v17 = E5TransformerLanguageModel.compareNodesByPositionAndToken(_:_:)(*(*a3 + 8 * v13), v16);
    v18 = v11 + 2;
    do
    {
      if (v9 == v18)
      {
        goto LABEL_24;
      }

      v21 = *v15;
      if ((*v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_133;
      }

      v22 = *(a5 + 56);
      v23 = *(v22 + 16);
      if (v21 >= v23)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v24 = *(v15 - 1);
      if (v24 >= v23)
      {
        goto LABEL_135;
      }

      v25 = v22 + 32;
      v26 = v22 + 32 + 48 * v21;
      v27 = *v26;
      v28 = *(v26 + 40);
      v29 = *(v26 + 32);
      v30 = (v25 + 48 * v24);
      v31 = *v30;
      if (v28)
      {
        v29 = -1;
      }

      if (v30[5])
      {
        if (v27 != v31)
        {
          goto LABEL_6;
        }

        v32 = -1;
      }

      else
      {
        if (v27 != v31)
        {
LABEL_6:
          v19 = v27 < v31;
          goto LABEL_7;
        }

        v32 = v30[4];
      }

      v19 = v29 < v32;
LABEL_7:
      v20 = v19;
      ++v18;
      ++v15;
    }

    while (((v17 ^ v20) & 1) == 0);
    v9 = v18 - 1;
LABEL_24:
    if (v17)
    {
      if (v9 >= v11)
      {
        if (v11 < v9)
        {
          v33 = v9 - 1;
          v34 = v11;
          do
          {
            if (v34 != v33)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v35 = *(v36 + 8 * v34);
              *(v36 + 8 * v34) = *(v36 + 8 * v33);
              *(v36 + 8 * v33) = v35;
            }

            v19 = ++v34 < v33--;
          }

          while (v19);
        }

        goto LABEL_34;
      }

LABEL_156:
      __break(1u);
LABEL_157:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
LABEL_119:
      v104 = *(v12 + 2);
      if (v104 < 2)
      {
LABEL_127:
      }

      while (1)
      {
        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_161;
        }

        v106 = *&v12[16 * v104];
        v107 = *&v12[16 * v104 + 24];
        v108 = (v105 + 8 * v106);
        v109 = (v105 + 8 * *&v12[16 * v104 + 16]);
        v110 = (v105 + 8 * v107);

        specialized _merge<A>(low:mid:high:buffer:by:)(v108, v109, v110, __dst, a5);
        if (v6)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_150;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
        }

        if (v104 - 2 >= *(v12 + 2))
        {
          goto LABEL_151;
        }

        v111 = &v12[16 * v104];
        *v111 = v106;
        *(v111 + 1) = v107;
        specialized Array.remove(at:)(v104 - 1);
        v104 = *(v12 + 2);
        if (v104 <= 1)
        {
          goto LABEL_127;
        }
      }
    }

LABEL_34:
    v13 = v9;
LABEL_35:
    v37 = a3[1];
    if (v13 >= v37)
    {
      goto LABEL_65;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_153;
    }

    if (v13 - v11 >= a4)
    {
      goto LABEL_65;
    }

    if (__OFADD__(v11, a4))
    {
      goto LABEL_154;
    }

    if (v11 + a4 < v37)
    {
      v37 = v11 + a4;
    }

    if (v37 < v11)
    {
      goto LABEL_155;
    }

    if (v13 == v37)
    {
      goto LABEL_65;
    }

    v38 = *a3;
    v39 = *a3 + 8 * v13 - 8;
    v40 = v11 - v13;
    while (2)
    {
      v41 = *(v38 + 8 * v13);
      v42 = 48 * v41;
      v43 = v40;
      v44 = v39;
      while (2)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v45 = *(a5 + 56);
        v46 = *(v45 + 16);
        if (v41 >= v46)
        {
          goto LABEL_131;
        }

        v47 = *v44;
        if (*v44 >= v46)
        {
          goto LABEL_132;
        }

        v48 = v45 + 32;
        v49 = *(v48 + 48 * v41);
        v50 = (v48 + 48 * v47);
        v51 = *v50;
        if (*(v48 + v42 + 40))
        {
          v52 = -1;
        }

        else
        {
          v52 = *(v48 + v42 + 32);
        }

        if (v50[5])
        {
          if (v49 == v51)
          {
            if (v52 >= -1)
            {
              break;
            }

            goto LABEL_60;
          }

LABEL_59:
          if (v49 >= v51)
          {
            break;
          }
        }

        else
        {
          if (v49 != v51)
          {
            goto LABEL_59;
          }

          if (v52 >= v50[4])
          {
            break;
          }
        }

LABEL_60:
        if (!v38)
        {

          __break(1u);
LABEL_159:

          __break(1u);
LABEL_160:

          __break(1u);
LABEL_161:

          __break(1u);
LABEL_162:

          __break(1u);
LABEL_163:

          __break(1u);
          return result;
        }

        *v44 = v41;
        v44[1] = v47;
        --v44;
        if (!__CFADD__(v43++, 1))
        {
          continue;
        }

        break;
      }

      ++v13;
      v39 += 8;
      --v40;
      if (v13 != v37)
      {
        continue;
      }

      break;
    }

    v13 = v37;
LABEL_65:
    if (v13 < v11)
    {
      goto LABEL_152;
    }

    v115 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v55 = *(v12 + 2);
    v54 = *(v12 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v12);
    }

    *(v12 + 2) = v56;
    v57 = &v12[16 * v55];
    *(v57 + 4) = v11;
    *(v57 + 5) = v115;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_162;
    }

    if (!v55)
    {
LABEL_3:
      v9 = a3[1];
      a1 = v114;
      v11 = v115;
      a4 = v113;
      if (v115 >= v9)
      {
        goto LABEL_117;
      }

      continue;
    }

    break;
  }

  while (2)
  {
    v58 = v56 - 1;
    if (v56 >= 4)
    {
      v63 = &v12[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_139;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_140;
      }

      v70 = &v12[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_142;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_145;
      }

      if (v74 >= v66)
      {
        v92 = &v12[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_149;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }
      }

      else
      {
LABEL_85:
        if (v62)
        {
          goto LABEL_141;
        }

        v75 = &v12[16 * v56];
        v77 = *v75;
        v76 = *(v75 + 1);
        v78 = __OFSUB__(v76, v77);
        v79 = v76 - v77;
        v80 = v78;
        if (v78)
        {
          goto LABEL_144;
        }

        v81 = &v12[16 * v58 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_147;
        }

        if (__OFADD__(v79, v84))
        {
          goto LABEL_148;
        }

        if (v79 + v84 < v61)
        {
          goto LABEL_99;
        }

        if (v61 < v84)
        {
          v58 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v59 = *(v12 + 4);
        v60 = *(v12 + 5);
        v69 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        v62 = v69;
        goto LABEL_85;
      }

      v85 = &v12[16 * v56];
      v87 = *v85;
      v86 = *(v85 + 1);
      v69 = __OFSUB__(v86, v87);
      v79 = v86 - v87;
      v80 = v69;
LABEL_99:
      if (v80)
      {
        goto LABEL_143;
      }

      v88 = &v12[16 * v58];
      v90 = *(v88 + 4);
      v89 = *(v88 + 5);
      v69 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v69)
      {
        goto LABEL_146;
      }

      if (v91 < v79)
      {
        goto LABEL_3;
      }
    }

    v96 = v58 - 1;
    if (v58 - 1 >= v56)
    {
      goto LABEL_136;
    }

    v97 = *a3;
    if (!*a3)
    {
      goto LABEL_159;
    }

    v98 = *&v12[16 * v96 + 32];
    v99 = *&v12[16 * v58 + 40];
    v100 = (v97 + 8 * v98);
    v101 = (v97 + 8 * *&v12[16 * v58 + 32]);
    v102 = (v97 + 8 * v99);

    specialized _merge<A>(low:mid:high:buffer:by:)(v100, v101, v102, __dst, a5);
    if (!v6)
    {
      if (v99 < v98)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      }

      if (v96 >= *(v12 + 2))
      {
        goto LABEL_138;
      }

      v103 = &v12[16 * v96];
      *(v103 + 4) = v98;
      *(v103 + 5) = v99;
      specialized Array.remove(at:)(v58);
      v56 = *(v12 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }
}

{
  v6 = v5;
  v8 = a3[1];
  v119 = MEMORY[0x277D84F90];
  if (v8 < 1)
  {
    swift_retain_n();
LABEL_113:
    v107 = *a1;
    if (*a1)
    {

      specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v119, v107, a3, a5);
      if (v6)
      {

        goto LABEL_116;
      }
    }

    goto LABEL_150;
  }

  swift_retain_n();
  swift_beginAccess();
  v10 = 0;
  v113 = a5;
  v114 = MEMORY[0x277D84F90];
  v109 = a4;
LABEL_5:
  if (v10 + 1 >= v8)
  {
    v8 = v10 + 1;
    goto LABEL_32;
  }

  v11 = *a3;
  v12 = *(*a3 + 8 * (v10 + 1));
  v117 = *(*a3 + 8 * v10);
  v118 = v12;
  v13 = closure #1 in E5TransformerLanguageModel.nodesAreLinear(nodes:)(&v118, &v117, a5);
  if (v6)
  {
    goto LABEL_116;
  }

  v14 = v10 + 2;
  v15 = (v11 + 8 * v10 + 16);
  do
  {
    if (v8 == v14)
    {
      goto LABEL_22;
    }

    v16 = *v15;
    if ((*v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v17 = *(a5 + 56);
    v18 = *(v17 + 16);
    if (v16 >= v18)
    {
      goto LABEL_124;
    }

    v19 = *(v15 - 1);
    if (v19 >= v18)
    {
      goto LABEL_125;
    }

    v20 = v17 + 32;
    v21 = (v20 + 48 * v16);
    v22 = v21[4];
    v23 = *v21;
    v24 = *(v21 + 40);
    v25 = (v20 + 48 * v19);
    v26 = *v25;
    if (*(v25 + 40))
    {
      v27 = -1;
    }

    else
    {
      v27 = v25[4];
    }

    if (v24)
    {
      v28 = -1;
    }

    else
    {
      v28 = v22;
    }

    v29 = v27 < v28;
    if (v26 != v23)
    {
      v29 = v26 < v23;
    }

    ++v14;
    ++v15;
  }

  while ((v13 & 1) == v29);
  v8 = v14 - 1;
LABEL_22:
  if (v13)
  {
    if (v8 >= v10)
    {
      if (v10 < v8)
      {
        v30 = v8 - 1;
        v31 = v10;
        while (1)
        {
          if (v31 != v30)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_148;
            }

            v33 = *(v32 + 8 * v31);
            *(v32 + 8 * v31) = *(v32 + 8 * v30);
            *(v32 + 8 * v30) = v33;
          }

          v101 = ++v31 < v30--;
          if (!v101)
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_32;
    }

LABEL_145:
    __break(1u);
LABEL_146:

    __break(1u);
LABEL_147:

    __break(1u);
LABEL_148:

    __break(1u);
LABEL_149:

    __break(1u);
LABEL_150:

    __break(1u);
    return result;
  }

LABEL_32:
  v34 = a3[1];
  if (v8 >= v34)
  {
LABEL_41:
    v36 = v114;
    if (v8 < v10)
    {
      goto LABEL_141;
    }

    goto LABEL_42;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_142;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_41;
  }

  if (__OFADD__(v10, a4))
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v10 + a4 >= v34)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = v10 + a4;
  }

  if (v35 < v10)
  {
    goto LABEL_144;
  }

  if (v8 == v35)
  {
    goto LABEL_41;
  }

  v36 = v114;
  v89 = *a3;
  v90 = *a3 + 8 * v8 - 8;
  v91 = v10 - v8;
LABEL_93:
  v92 = *(v89 + 8 * v8);
  v93 = v91;
  v94 = v90;
  while ((v92 & 0x8000000000000000) == 0)
  {
    v95 = *(a5 + 56);
    v96 = *(v95 + 16);
    if (v92 >= v96)
    {
      goto LABEL_120;
    }

    v97 = *v94;
    if (*v94 >= v96)
    {
      goto LABEL_121;
    }

    v98 = v95 + 32;
    v99 = v98 + 48 * v92;
    v100 = v98 + 48 * v97;
    v101 = *v100 < *v99;
    if (*v100 == *v99)
    {
      v102 = *(v99 + 40);
      v103 = *(v99 + 32);
      if (v102)
      {
        v103 = -1;
      }

      v104 = *(v100 + 40);
      v105 = *(v100 + 32);
      if (v104)
      {
        v105 = -1;
      }

      v101 = v105 < v103;
    }

    if (v101)
    {
      if (!v89)
      {
        goto LABEL_146;
      }

      *v94 = v92;
      v94[1] = v97;
      --v94;
      if (!__CFADD__(v93++, 1))
      {
        continue;
      }
    }

    ++v8;
    v90 += 8;
    --v91;
    if (v8 != v35)
    {
      goto LABEL_93;
    }

    v8 = v35;
    if (v35 < v10)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

LABEL_42:
    v111 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v39;
    v40 = v36 + 32;
    v41 = &v36[16 * v38 + 32];
    *v41 = v10;
    *(v41 + 1) = v8;
    v119 = v36;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    v114 = v36;
    if (v38)
    {
      v116 = v6;
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v36 + 4);
          v44 = *(v36 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_62:
          if (v46)
          {
            goto LABEL_132;
          }

          v59 = &v36[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_135;
          }

          v65 = &v40[16 * v42];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_139;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v69 = &v36[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_76:
        if (v64)
        {
          goto LABEL_134;
        }

        v72 = &v40[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_137;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_83:
        if (v42 - 1 >= v39)
        {
          goto LABEL_126;
        }

        v80 = *a3;
        if (!*a3)
        {
          goto LABEL_147;
        }

        v81 = &v40[16 * v42 - 16];
        v82 = *v81;
        v83 = &v40[16 * v42];
        v84 = *(v83 + 1);
        v85 = (v80 + 8 * *v81);
        v86 = (v80 + 8 * *v83);
        v87 = (v80 + 8 * v84);

        specialized _merge<A>(low:mid:high:buffer:by:)(v85, v86, v87, __dst, v113);
        if (v116)
        {

          v119 = v114;
          goto LABEL_116;
        }

        v36 = v114;
        if (v84 < v82)
        {
          goto LABEL_127;
        }

        v88 = *(v114 + 2);
        if (v42 > v88)
        {
          goto LABEL_128;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        if (v42 >= v88)
        {
          goto LABEL_129;
        }

        v39 = v88 - 1;
        memmove(&v40[16 * v42], v83 + 16, 16 * (v88 - 1 - v42));
        *(v114 + 2) = v88 - 1;
        if (v88 <= 2)
        {
LABEL_3:
          v119 = v36;
          v6 = v116;
          goto LABEL_4;
        }
      }

      v47 = &v40[16 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_130;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_131;
      }

      v54 = &v36[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_133;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_136;
      }

      if (v58 >= v50)
      {
        v76 = &v40[16 * v42];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_140;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_4:
    v8 = a3[1];
    v10 = v111;
    a5 = v113;
    a4 = v109;
    if (v111 >= v8)
    {
      goto LABEL_113;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_116:
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY4_()
{
  (*(v0[10] + 8))(v0[12], v0[9]);
  v1 = v0[13];
  v2 = v0[14];

  return MEMORY[0x2822009F8](_ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY5_, v1, v2);
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY5_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined destroy of NodeStorage<E5TransformerLanguageModel.NodeState>.PreviousNodeIterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference11NodeStorageV08PreviousD8IteratorVyAA26E5TransformerLanguageModelC0D5StateV_GMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for E5TransformerLanguageModel.NodeState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for E5TransformerLanguageModel.NodeState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type E5TransformerLanguageModel.NodeState and conformance E5TransformerLanguageModel.NodeState()
{
  result = lazy protocol witness table cache variable for type E5TransformerLanguageModel.NodeState and conformance E5TransformerLanguageModel.NodeState;
  if (!lazy protocol witness table cache variable for type E5TransformerLanguageModel.NodeState and conformance E5TransformerLanguageModel.NodeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type E5TransformerLanguageModel.NodeState and conformance E5TransformerLanguageModel.NodeState);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t *a3, char *__dst, uint64_t a5)
{
  v6 = __dst;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (__dst != __src || &__src[8 * v12] <= __dst)
    {
      memmove(__dst, __src, 8 * v12);
    }

    v16 = &v6[8 * v12];
    result = swift_beginAccess();
    if (v10 >= 8 && v8 < v7)
    {
      while (1)
      {
        v18 = *v8;
        if ((*v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v19 = *(a5 + 56);
        v20 = *(v19 + 16);
        if (v18 >= v20)
        {
          goto LABEL_61;
        }

        if (*v6 >= v20)
        {
          goto LABEL_64;
        }

        v21 = v19 + 32;
        v22 = v21 + 48 * v18;
        v23 = v21 + 48 * *v6;
        v24 = *v23 < *v22;
        if (*v23 == *v22)
        {
          v25 = *(v22 + 40);
          v26 = *(v22 + 32);
          if (v25)
          {
            v26 = -1;
          }

          v27 = *(v23 + 40);
          v28 = *(v23 + 32);
          if (v27)
          {
            v28 = -1;
          }

          v24 = v28 < v26;
        }

        if (!v24)
        {
          break;
        }

        v29 = v9 == v8;
        v8 += 8;
        if (!v29)
        {
          goto LABEL_26;
        }

LABEL_27:
        v9 += 8;
        if (v6 >= v16 || v8 >= v7)
        {
          goto LABEL_29;
        }
      }

      v18 = *v6;
      v29 = v9 == v6;
      v6 += 8;
      if (v29)
      {
        goto LABEL_27;
      }

LABEL_26:
      *v9 = v18;
      goto LABEL_27;
    }

LABEL_29:
    v8 = v9;
    goto LABEL_55;
  }

  if (__dst != a2 || &a2[8 * v15] <= __dst)
  {
    memmove(__dst, a2, 8 * v15);
  }

  v16 = &v6[8 * v15];
  result = swift_beginAccess();
  if (v13 < 8 || v8 <= v9)
  {
LABEL_55:
    if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v8, v6, 8 * ((v16 - v6) / 8));
    }

    return 1;
  }

LABEL_35:
  v30 = v8 - 8;
  --v7;
  v31 = v16;
  while (1)
  {
    v33 = *(v31 - 8);
    v31 -= 8;
    v32 = v33;
    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    v34 = *(a5 + 56);
    v35 = *(v34 + 16);
    if (v32 >= v35)
    {
      goto LABEL_62;
    }

    v36 = *v30;
    if (*v30 >= v35)
    {
      goto LABEL_63;
    }

    v37 = v34 + 32;
    v38 = v37 + 48 * v32;
    v39 = v37 + 48 * v36;
    v40 = *v39 < *v38;
    if (*v39 == *v38)
    {
      v41 = *(v38 + 40);
      v42 = *(v38 + 32);
      if (v41)
      {
        v42 = -1;
      }

      v43 = *(v39 + 40);
      v44 = *(v39 + 32);
      if (v43)
      {
        v44 = -1;
      }

      v40 = v44 < v42;
    }

    if (v40)
    {
      if (v7 + 1 != v8)
      {
        *v7 = v36;
      }

      if (v16 <= v6 || (v8 -= 8, v30 <= v9))
      {
        v8 = v30;
        goto LABEL_55;
      }

      goto LABEL_35;
    }

    if (v7 + 1 != v16)
    {
      *v7 = v32;
    }

    --v7;
    v16 = v31;
    if (v31 <= v6)
    {
      v16 = v31;
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      specialized _merge<A>(low:mid:high:buffer:by:)(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t ImageEmbeddingCache.cached(image:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 112) = *a1;
  *(v4 + 128) = *(a1 + 16);
  return MEMORY[0x2822009F8](ImageEmbeddingCache.cached(image:fallback:), 0, 0);
}

{
  v4 = *(v3[16] + 16);
  v5 = v4 + 24;
  if (__OFADD__(v4, 24))
  {
    __break(1u);
    goto LABEL_8;
  }

  a1 = specialized static ImageEmbeddingCache.byteCount(embeddings:)(v3[25]);
  v3[27] = v5 + a1;
  if (__OFADD__(v5, a1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 + a1 < 1)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  a2 = v3[17];
  a1 = ImageEmbeddingCache.cached(image:fallback:);
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void ImageEmbeddingCache.cached(image:fallback:)()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  Hasher.init()();
  MEMORY[0x223D8F420](v3);
  MEMORY[0x223D8F420](v1);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(v0 + 128) + 32;
    while (v5 < *(v2 + 16))
    {
      v7 = v5 + 107;
      v8 = __OFADD__(v5, 107);
      Hasher._combine(_:)(*(v6 + v5));
      if (!v8)
      {
        v5 += 107;
        if (v7 < v4)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    *(v0 + 48) = v18;
    *(v0 + 64) = v19;
    *(v0 + 80) = v20;
    *(v0 + 16) = v16;
    *(v0 + 32) = v17;
    v13 = Hasher.finalize()();
    *(v0 + 136) = *(v11 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAA19ImageEmbeddingCacheC0F033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GMd);
    v14 = swift_allocObject();
    *(v0 + 144) = v14;
    v14[2] = v12;
    v14[3] = v10;
    v14[4] = v9;
    v14[5] = v13;
    Hasher.init()();
    MEMORY[0x223D8F420](v13);
    v14[6] = Hasher.finalize()();

    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = ImageEmbeddingCache.cached(image:fallback:);

    specialized AsyncLRUCache.value(key:)(v14);
  }
}

uint64_t ImageEmbeddingCache.cached(image:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v5;
  *(v7 + 160) = a1;
  *(v7 + 168) = a2;
  *(v7 + 176) = a3;
  *(v7 + 184) = v4;

  if (v4)
  {
    v8 = ImageEmbeddingCache.cached(image:fallback:);
  }

  else
  {

    *(v7 + 224) = a4;
    v8 = ImageEmbeddingCache.cached(image:fallback:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t ImageEmbeddingCache.cached(image:fallback:)()
{
  if (*(v0 + 224))
  {
    v5 = (*(v0 + 88) + **(v0 + 88));
    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = ImageEmbeddingCache.cached(image:fallback:);

    return v5();
  }

  else
  {
    v3 = *(v0 + 160);

    v4 = *(v0 + 8);

    return v4(v3);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  specialized AsyncLRUCache.setValue(_:node:cost:)(*(v0 + 200), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 216));

  return MEMORY[0x2822009F8](ImageEmbeddingCache.cached(image:fallback:), 0, 0);
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 200);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  specialized AsyncLRUCache.setError(_:node:)(*(v0 + 208), *(v0 + 160), *(v0 + 168));

  return MEMORY[0x2822009F8](ImageEmbeddingCache.cached(image:fallback:), 0, 0);
}

{
  swift_willThrow();

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageEmbeddingCache.cached(image:fallback:)(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v4 = v3[17];
    v5 = ImageEmbeddingCache.cached(image:fallback:);
  }

  else
  {
    v5 = ImageEmbeddingCache.cached(image:fallback:);
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}