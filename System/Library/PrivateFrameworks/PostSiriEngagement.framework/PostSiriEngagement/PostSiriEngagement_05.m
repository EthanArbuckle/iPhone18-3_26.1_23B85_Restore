Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement6SignalCGGMd, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement6SignalCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement0D13ExecutionStepCGGMd, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement0D13ExecutionStepCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement14TranscriptStepCGGMd, &_ss18_DictionaryStorageCySSSay18PostSiriEngagement14TranscriptStepCGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSay18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGGMd, &_ss18_DictionaryStorageCySSSgSay18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGGMR);
  v33 = a2;
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
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

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for Date();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_Say18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGTt1g504_s18de16Engagement36Homeik94ControlSignalFactoryC27processBiomeEventsToSignals02bmL013siriUISessionAA10PSESignalsVSayAA014g8BMHomee6J25F0VG_AA0bQ0VtFSSSgAJXEfU_Tf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = (a1 + 40);
  v4 = &selRef_recentCallStatus;
  while (1)
  {
    v6 = *v3;
    v7 = *(v3 - 1);
    v8 = [v7 v4[93]];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v1[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, 1);
      v1 = v32;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

      v14 = v19;
    }

    if (v18)
    {

      v21 = v1[7];
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      *(v22 + 2) = v25 + 1;
      v5 = &v22[16 * v25];
      *(v5 + 4) = v7;
      *(v5 + 5) = v6;
      v4 = &selRef_recentCallStatus;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_25ED7C750;
      *(v26 + 32) = v7;
      *(v26 + 40) = v6;
      v1[(v14 >> 6) + 8] |= 1 << v14;
      v27 = (v1[6] + 16 * v14);
      *v27 = v10;
      v27[1] = v12;
      *(v1[7] + 8 * v14) = v26;
      v28 = v1[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_21;
      }

      v1[2] = v30;
    }

    v3 += 2;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void static GeoCorrectionExample.runIdentifyCorrection()()
{
  v86 = type metadata accessor for ProtoNavigationUserFollowupContext();
  v0 = *(v86 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement27ProtoNavigationFollowupTypeOSgMd, &_s18SiriTaskEngagement27ProtoNavigationFollowupTypeOSgMR);
  v3 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v5 = &v80 - v4;
  v90 = type metadata accessor for ProtoTaskFeatureSet();
  v6 = *(v90 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v91 = *(v88 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v98 = &v80 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  v23 = type metadata accessor for ProtoTaskEngagementType();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v101 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v100 = &v80 - v28;
  v102 = type metadata accessor for ProtoSiriTaskEngagement();
  v115 = *(v102 - 8);
  isa = v115[8].isa;
  MEMORY[0x28223BE20](v102);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = static SiriTaskEngagementRetriever.retrieveAllSiriTaskEngagement(streamId:)();
  if (!v32)
  {
    if (one-time initialization token for engagement == -1)
    {
LABEL_28:
      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.engagement);
      v115 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v115, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_25ECEC000, v115, v77, "Failed to retrieve engagement features", v78, 2u);
        MEMORY[0x25F8CEE50](v78, -1, -1);
      }

      v79 = v115;

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_28;
  }

  v114 = *(v32 + 16);
  if (v114)
  {
    v33 = 0;
    v112 = v32 + ((LOBYTE(v115[10].isa) + 32) & ~LOBYTE(v115[10].isa));
    v111 = v115 + 2;
    v110 = *MEMORY[0x277D61510];
    v108 = (v24 + 8);
    v109 = (v24 + 104);
    v107 = v115 + 1;
    v84 = v91 + 16;
    v83 = v91 + 8;
    v82 = (v6 + 8);
    v94 = 0x800000025ED809D0;
    v93 = 0x800000025ED80A00;
    v92 = 0x800000025ED80A20;
    v81 = (v0 + 8);
    v106 = xmmword_25ED7C750;
    v97 = v5;
    v96 = v15;
    v95 = v20;
    v35 = v100;
    v34 = v101;
    v36 = v102;
    v104 = v22;
    v113 = v32;
    while (v33 < *(v32 + 16))
    {
      (v115[2].isa)(v31, v112 + v115[9].isa * v33, v36);
      ProtoSiriTaskEngagement.engagementType.getter();
      (*v109)(v34, v110, v23);
      lazy protocol witness table accessor for type ProtoTaskEngagementType and conformance ProtoTaskEngagementType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v37 = *v108;
      (*v108)(v34, v23);
      v37(v35, v23);
      if (v116 == v118)
      {
        v38 = *(ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter() + 16);

        if (v38)
        {
          v39 = ProtoSiriTaskEngagement.followupUserInitatedEngagements.getter();
          if (*(v39 + 16))
          {
            v40 = v91;
            v41 = v87;
            v42 = v88;
            (*(v91 + 16))(v87, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v88);

            v43 = v89;
            ProtoTaskEngagementFeatureSet.featureSet.getter();
            (*(v40 + 8))(v41, v42);
            ProtoTaskFeatureSet.navigationFeatureSet.getter();
            (*v82)(v43, v90);
            v44 = 0;
          }

          else
          {

            v44 = 1;
          }

          v50 = type metadata accessor for ProtoNavigationTaskFeatureSet();
          v51 = *(v50 - 8);
          (*(v51 + 56))(v22, v44, 1, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v52 = v22;
          v53 = swift_allocObject();
          *(v53 + 16) = v106;
          v116 = 0;
          v117 = 0xE000000000000000;
          _StringGuts.grow(_:)(47);

          v116 = 0xD00000000000002BLL;
          v117 = v94;
          outlined init with copy of ProtoNavigationTaskFeatureSet?(v52, v20);
          v105 = *(v51 + 48);
          v54 = v105(v20, 1, v50);
          v103 = v51;
          if (v54 == 1)
          {
            outlined destroy of ProtoNavigationTaskFeatureSet?(v20);
            v55 = 2;
          }

          else
          {
            v56 = ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.getter();
            (*(v51 + 8))(v20, v50);
            v55 = v56 & 1;
          }

          LOBYTE(v118) = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
          v57 = String.init<A>(describing:)();
          MEMORY[0x25F8CE090](v57);

          MEMORY[0x25F8CE090](2592, 0xE200000000000000);
          v58 = v116;
          v59 = v117;
          *(v53 + 56) = MEMORY[0x277D837D0];
          *(v53 + 32) = v58;
          *(v53 + 40) = v59;
          print(_:separator:terminator:)();

          v60 = swift_allocObject();
          *(v60 + 16) = v106;
          v116 = 0;
          v117 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);

          v116 = 0xD000000000000016;
          v117 = v93;
          v61 = v98;
          outlined init with copy of ProtoNavigationTaskFeatureSet?(v104, v98);
          if (v105(v61, 1, v50) == 1)
          {
            outlined destroy of ProtoNavigationTaskFeatureSet?(v61);
            v62 = 2;
          }

          else
          {
            v63 = ProtoNavigationTaskFeatureSet.isUserFollowup.getter();
            (*(v103 + 8))(v61, v50);
            v62 = v63 & 1;
          }

          LOBYTE(v118) = v62;
          v64 = String.init<A>(describing:)();
          MEMORY[0x25F8CE090](v64);

          MEMORY[0x25F8CE090](2592, 0xE200000000000000);
          v65 = v116;
          v66 = v117;
          *(v60 + 56) = MEMORY[0x277D837D0];
          *(v60 + 32) = v65;
          *(v60 + 40) = v66;
          print(_:separator:terminator:)();

          v67 = swift_allocObject();
          *(v67 + 16) = v106;
          v116 = 0;
          v117 = 0xE000000000000000;
          _StringGuts.grow(_:)(34);

          v116 = 0xD00000000000001ELL;
          v117 = v92;
          v22 = v104;
          v68 = v96;
          outlined init with copy of ProtoNavigationTaskFeatureSet?(v104, v96);
          if (v105(v68, 1, v50) == 1)
          {
            outlined destroy of ProtoNavigationTaskFeatureSet?(v68);
            v69 = 1;
            v70 = v97;
          }

          else
          {
            v71 = v85;
            ProtoNavigationTaskFeatureSet.followupContext.getter();
            (*(v103 + 8))(v68, v50);
            v70 = v97;
            ProtoNavigationUserFollowupContext.followupType.getter();
            (*v81)(v71, v86);
            v69 = 0;
          }

          v20 = v95;
          v35 = v100;
          v34 = v101;
          v72 = type metadata accessor for ProtoNavigationFollowupType();
          (*(*(v72 - 8) + 56))(v70, v69, 1, v72);
          v73 = String.init<A>(describing:)();
          MEMORY[0x25F8CE090](v73);

          MEMORY[0x25F8CE090](2592, 0xE200000000000000);
          v74 = v116;
          v75 = v117;
          *(v67 + 56) = MEMORY[0x277D837D0];
          *(v67 + 32) = v74;
          *(v67 + 40) = v75;
          print(_:separator:terminator:)();

          outlined destroy of ProtoNavigationTaskFeatureSet?(v22);
          v36 = v102;
        }

        else
        {
          if (one-time initialization token for engagement != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          __swift_project_value_buffer(v45, static Logger.engagement);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_25ECEC000, v46, v47, "No Geo PSE", v48, 2u);
            v49 = v48;
            v36 = v102;
            MEMORY[0x25F8CEE50](v49, -1, -1);
          }
        }
      }

      ++v33;
      (v107->isa)(v31, v36);
      v32 = v113;
      if (v114 == v33)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_35:
}

uint64_t outlined init with copy of ProtoNavigationTaskFeatureSet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ProtoNavigationTaskFeatureSet?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMd, &_s18SiriTaskEngagement015ProtoNavigationB10FeatureSetVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PostInteractionEngagementCollector.collect(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*v2 + 328);

  v6(partial apply for closure #1 in PostInteractionEngagementCollector.collect(callback:), v5);
}

uint64_t partial apply for closure #1 in PostInteractionEngagementCollector.collect(callback:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t PostInteractionEngagementCollector.perform()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](PostInteractionEngagementCollector.perform(), 0, 0);
}

{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = PostInteractionEngagementCollector.perform();
  v3 = *(v0 + 16);

  return MEMORY[0x2822008A0]();
}

{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = PostInteractionEngagementCollector.perform();
  }

  else
  {
    v3 = PostInteractionEngagementCollector.perform();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t closure #1 in PostInteractionEngagementCollector.perform()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  (*(*a2 + 328))(partial apply for closure #1 in closure #1 in PostInteractionEngagementCollector.perform(), v10);
}

uint64_t PostInteractionEngagementCollector.collectWithSiriExecution(completion:)(void (*a1)(void))
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.engagement);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v2;
    v19 = a1;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_25ECEC000, v16, v17, "Starting activity collector with Siri Execution", v18, 2u);
    v21 = v20;
    a1 = v19;
    v2 = v27;
    MEMORY[0x25F8CEE50](v21, -1, -1);
  }

  v22 = *(v2 + 48);
  UserDefaultsDomainProvider.lastCollectionDate.getter(v14);
  Date.init()();
  PostInteractionEngagementCollector.runPSECollection(startDate:endDate:)(v14, v12);
  (*(v5 + 16))(v9, v12, v4);
  v23 = UserDefaultsDomainProvider.lastCollectionDate.setter(v9);
  a1(v23);
  v24 = *(v5 + 8);
  v24(v12, v4);
  return (v24)(v14, v4);
}

uint64_t PostInteractionEngagementCollector.runPSECollection(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = type metadata accessor for UUID();
  v6 = *(v75 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v75);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v60 - v10;
  v72 = type metadata accessor for Date();
  v11 = *(v72 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v60 - v16;
  v17 = type metadata accessor for UISessionSignalBuilder(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v22 = type metadata accessor for SiriUISession(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v69 = v21;
  v68 = v22;
  v67 = v24;
  v66 = v23 + 56;
  (v24)(v20 + v21, 1, 1);
  v25 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks;
  *(v20 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v26 = v20 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *(v26 + 112) = 0;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *v26 = 0u;
  *(v20 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = v3;
  v84 = 0;
  v77 = v3;

  v76 = a2;
  v27 = UISessionSignalBuilder.buildSiriExecutionTasks(startDate:endDate:)(a1, a2);
  swift_beginAccess();
  v28 = *(v20 + v25);
  v83 = v20;
  *(v20 + v25) = v27;

  v78 = v27;
  if (v27 >> 62)
  {
    goto LABEL_14;
  }

  v29 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
    while (1)
    {
      v30 = 0;
      v65 = v78 & 0xC000000000000001;
      v64 = v78 & 0xFFFFFFFFFFFFFF8;
      v62 = (v11 + 8);
      v61 = v6 + 1;
      v63 = v29;
      v31 = v70;
      while (v65)
      {
        v32 = MEMORY[0x25F8CE460](v30, v78);
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_11:
          __break(1u);
          goto LABEL_18;
        }

LABEL_7:
        v82 = v33;
        v81 = MEMORY[0x25F8CE7F0]();
        v34 = UISessionSignalBuilder.fetchDataStreams(taskIndex:endDate:)(v30, v76);
        v35 = (*(*v32 + 352))(v34);
        v36 = *(*v32 + 376);
        v11 = v68;
        v37 = v31 + *(v68 + 20);
        v38 = v36(v35);
        v39 = v71;
        v36(v38);
        v40 = v31 + *(v11 + 24);
        Date.addingTimeInterval(_:)();
        (*v62)(v39, v72);
        v41 = v73;
        UUID.init()();
        v42 = UUID.uuidString.getter();
        v79 = v43;
        v80 = v42;
        v6 = v61;
        v44 = *v61;
        v45 = v30;
        v46 = v75;
        (*v61)(v41, v75);
        v47 = v74;
        UUID.init()();
        v48 = UUID.uuidString.getter();
        v50 = v49;
        v44(v47, v46);
        v51 = (v31 + *(v11 + 28));
        v52 = v79;
        *v51 = v80;
        v51[1] = v52;
        v53 = (v31 + *(v11 + 32));
        *v53 = v48;
        v53[1] = v50;
        v67(v31, 0, 1, v11);
        v54 = v69;
        v55 = v83;
        swift_beginAccess();
        outlined assign with take of SiriUISession?(v31, v55 + v54);
        swift_endAccess();
        v56 = v77;

        specialized UISessionSignalBuilder.buildSignalsAndTaskFeatureSets(task:completion:)(v32, v55, v56, &v84);
        v57 = v63;

        objc_autoreleasePoolPop(v81);

        v30 = v45 + 1;
        if (v82 == v57)
        {
          goto LABEL_18;
        }
      }

      if (v30 < *(v64 + 16))
      {
        break;
      }

      __break(1u);
LABEL_14:
      if (v78 < 0)
      {
        v58 = v78;
      }

      else
      {
        v58 = v78 & 0xFFFFFFFFFFFFFF8;
      }

      v29 = MEMORY[0x25F8CE500](v58);
      if (!v29)
      {
        goto LABEL_18;
      }
    }

    v32 = *(v78 + 8 * v30 + 32);

    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_18:
}

void *PostInteractionEngagementCollector.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t PostInteractionEngagementCollector.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t dispatch thunk of PostInteractionEngagementCollector.perform()()
{
  v2 = *(*v0 + 320);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of PostInteractionEngagementCollector.perform();

  return v6();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in closure #1 in PostInteractionEngagementCollector.perform()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

void AppIntentTranscriptSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v3;
    v6 = a2;
    v7 = 0x800000025ED80A80;
    v8 = (a1 + 40);
    v34 = MEMORY[0x277D84F90];
    v9 = &selRef_recentCallStatus;
    do
    {
      v10 = *v8;
      v11 = *(v8 - 1);
      v12 = [v11 v9[102]];
      if (v12 && (v13 = v12, v14 = [v12 identifier], v13, v14))
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v35 = String.lowercased()();
        lazy protocol witness table accessor for type String and conformance String();
        v18 = StringProtocol.contains<A>(_:)();

        if (v18)
        {
          if (one-time initialization token for engagement != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Logger.engagement);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = v7;
            v24 = swift_slowAlloc();
            v35._countAndFlagsBits = v24;
            *v22 = 136315138;
            v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v35._countAndFlagsBits);

            *(v22 + 4) = v25;
            _os_log_impl(&dword_25ECEC000, v20, v21, "Ignore IF SearchToolControl (Prewarm search tool): %s", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v24);
            v26 = v24;
            v7 = v23;
            MEMORY[0x25F8CEE50](v26, -1, -1);
            v27 = v22;
            v6 = a2;
            v5 = v33;
            MEMORY[0x25F8CEE50](v27, -1, -1);
          }

          else
          {
          }

          v9 = &selRef_recentCallStatus;
        }

        else
        {

          if ((*(*v5 + 88))(v11, v6, v10))
          {

            MEMORY[0x25F8CE160](v28);
            v9 = &selRef_recentCallStatus;
            if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v29 = v7;
              v30 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v7 = v29;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v34 = v36;
          }

          else
          {

            v9 = &selRef_recentCallStatus;
          }
        }
      }

      else
      {
      }

      v8 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  *a3 = v34;
  a3[1] = MEMORY[0x277D84F90];
}

uint64_t AppIntentTranscriptSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v469 = &v457 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v470 = &v457 - v8;
  v472 = type metadata accessor for Date();
  v9 = *(v472 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v472);
  v13 = &v457 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v457 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v457 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v471 = &v457 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v457 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v457 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v457 - v29;
  v473 = a1;
  v31 = [a1 resolvedAction];
  if (!v31)
  {
    goto LABEL_7;
  }

  v32 = v31;
  v33 = [v31 identifier];

  if (!v33)
  {
    goto LABEL_7;
  }

  v464 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (![v473 source])
  {

LABEL_7:
    if (one-time initialization token for engagement != -1)
    {
LABEL_241:
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.engagement);
    v55 = v473;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v476 = v59;
      *v58 = 136315138;
      v60 = [v55 resolvedAction];
      if (v60 && (v61 = v60, v62 = [v60 identifier], v61, v62))
      {
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      *&v478 = v63;
      *(&v478 + 1) = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v66 = String.init<A>(describing:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v476);

      *(v58 + 4) = v68;
      _os_log_impl(&dword_25ECEC000, v56, v57, "This event: %s is not a valid event", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x25F8CEE50](v59, -1, -1);
      MEMORY[0x25F8CEE50](v58, -1, -1);
    }

    return 0;
  }

  v468 = v25;
  v465 = v35;
  v480 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  v36 = v9[7];
  v37 = v472;
  v467 = v9 + 7;
  v466 = v36;
  v36(v30, 0, 1, v472);
  v38 = v9[2];
  v38(v18, a2, v37);
  v39 = type metadata accessor for SiriUISession(0);
  v38(v16, a2 + *(v39 + 20), v37);
  v40 = v9;
  outlined init with copy of Date?(v30, v28);
  v41 = v9[6];
  v461 = v41(v28, 1, v37);
  v463 = v9 + 6;
  *&v462 = v41;
  if (v461 == 1)
  {
    v70 = v9[1];
    v70(v16, v37);
    v70(v18, v37);
    outlined destroy of Date?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v460 = 0x3FF0000000000000;
    v43 = 0;
    v47 = 0.0;
    v53 = 0.0;
  }

  else
  {
    (v9[4])(v13, v28, v37);
    Date.timeIntervalSinceReferenceDate.getter();
    v43 = v42;
    Date.timeIntervalSinceReferenceDate.getter();
    v45 = v44;
    Date.timeIntervalSinceReferenceDate.getter();
    v47 = v45 - v46;
    Date.timeIntervalSinceReferenceDate.getter();
    v49 = v48;
    Date.timeIntervalSinceReferenceDate.getter();
    v51 = v50;
    v52 = v9[1];
    v52(v13, v37);
    v52(v16, v37);
    v52(v18, v37);
    outlined destroy of Date?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v460 = 0;
    v53 = v49 - v51;
  }

  v71 = v473;
  [v473 source];
  v72 = BMAppIntentInvocationSourceAsString();
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76 = MEMORY[0x277D837D0];
  *(&v479 + 1) = MEMORY[0x277D837D0];
  *&v478 = v73;
  *(&v478 + 1) = v75;
  outlined init with take of Any(&v478, &v476);
  v77 = v480;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v474 = v77;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x656372756F73, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v79 = v474;
  v80 = [v71 source] == 3 || objc_msgSend(v71, sel_source) == 4;
  v81 = v472;
  v82 = MEMORY[0x277D839B0];
  *(&v479 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v478) = v80;
  outlined init with take of Any(&v478, &v476);
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v474 = v79;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x42646574616E6F64, 0xED00006972695379, v83);
  v84 = v474;
  v480 = v474;
  v85 = [v71 bundleID];
  if (v85)
  {
    v86 = v85;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    *(&v479 + 1) = v76;
    *&v478 = v87;
    *(&v478 + 1) = v89;
    outlined init with take of Any(&v478, &v476);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v474 = v84;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x4449656C646E7562, 0xE800000000000000, v90);
    v480 = v474;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x4449656C646E7562, 0xE800000000000000, &v478);
    outlined destroy of Date?(&v478, &_sypSgMd, &_sypSgMR);
  }

  v91 = v469;
  v92 = [v71 executionUUID];
  if (v92)
  {
    v93 = v92;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  v95 = type metadata accessor for UUID();
  v96 = *(v95 - 8);
  (*(v96 + 56))(v91, v94, 1, v95);
  v97 = v470;
  outlined init with take of DateInterval?(v91, v470, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v96 + 48))(v97, 1, v95) == 1)
  {
    outlined destroy of Date?(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6F69747563657865, 0xED0000444955556ELL, &v478);
    outlined destroy of Date?(&v478, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    *(&v479 + 1) = v95;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v478);
    (*(v96 + 32))(boxed_opaque_existential_0, v97, v95);
    outlined init with take of Any(&v478, &v476);
    v99 = v480;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v474 = v99;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x6F69747563657865, 0xED0000444955556ELL, v100);
    v480 = v474;
  }

  v101 = v471;
  v102 = v466;
  v103 = [v71 executionDate];
  if (v103)
  {
    v104 = v103;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  v102(v101, v105, 1, v81);
  v106 = v468;
  outlined init with take of DateInterval?(v101, v468, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v462)(v106, 1, v81) == 1)
  {
    outlined destroy of Date?(v106, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6F69747563657865, 0xED0000657461446ELL, &v478);
    outlined destroy of Date?(&v478, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    *(&v479 + 1) = v81;
    v107 = __swift_allocate_boxed_opaque_existential_0(&v478);
    (v40[4])(v107, v106, v81);
    outlined init with take of Any(&v478, &v476);
    v108 = v480;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v474 = v108;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x6F69747563657865, 0xED0000657461446ELL, v109);
    v480 = v474;
  }

  v110 = [v71 bundleID];
  v111 = &selRef_recentCallStatus;
  if (v110)
  {
    v112 = v110;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;
  }

  else
  {
    v113 = 0;
    v115 = 0xE000000000000000;
  }

  *&v478 = v113;
  *(&v478 + 1) = v115;
  *&v476 = 0x6C7070612E6D6F63;
  *(&v476 + 1) = 0xEA00000000002E65;
  lazy protocol witness table accessor for type String and conformance String();
  v116 = StringProtocol.contains<A>(_:)();

  *(&v479 + 1) = v82;
  LOBYTE(v478) = v116 & 1;
  outlined init with take of Any(&v478, &v476);
  v117 = v480;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v474 = v117;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0xD000000000000016, 0x800000025ED7E770, v118);
  v480 = v474;
  v119 = [v71 bundleID];
  if (v119)
  {
    v120 = v119;
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    *&v478 = v121;
    *(&v478 + 1) = v123;
    *&v476 = 46;
    *(&v476 + 1) = 0xE100000000000000;
    v124 = (StringProtocol.components<A>(separatedBy:)() + 16);
    if (*v124)
    {
      v125 = &v124[2 * *v124];
      v127 = *v125;
      v126 = v125[1];

      *&v478 = v127;
      *(&v478 + 1) = v126;
      v111 = &selRef_recentCallStatus;
      *&v476 = 0x6F69736E65747845;
      *(&v476 + 1) = 0xE90000000000006ELL;
      v474 = 0;
      v475 = 0xE000000000000000;
      v128 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v130 = v129;

      goto LABEL_43;
    }
  }

  v130 = 0xE900000000000074;
  v128 = 0x6E65746E49707041;
LABEL_43:
  *(&v479 + 1) = MEMORY[0x277D837D0];
  *&v478 = v128;
  *(&v478 + 1) = v130;
  outlined init with take of Any(&v478, &v476);
  v131 = v480;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v474 = v131;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0xD000000000000011, 0x800000025ED806E0, v132);
  v480 = v474;
  v133 = [v71 resolvedAction];
  v134 = v465;
  if (!v133)
  {
LABEL_247:
    v454 = v461 != 1;
    v455 = v480;
    type metadata accessor for Signal();
    result = swift_allocObject();
    *(result + 16) = v43;
    *(result + 24) = v47;
    *(result + 32) = v53;
    v456 = v460;
    *(result + 40) = 0;
    *(result + 48) = v456;
    *(result + 56) = v454;
    *(result + 64) = 0x6E65746E49707041;
    *(result + 72) = 0xE900000000000074;
    *(result + 80) = v464;
    *(result + 88) = v134;
    *(result + 96) = 1;
    *(result + 104) = v455;
    return result;
  }

  v135 = v133;
  v136 = [v133 parameters];

  type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for BMAppIntentInvocationProperty, 0x277CF0FF8);
  v137 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v137 >> 62)
  {
    if (v137 < 0)
    {
      v453 = v137;
    }

    else
    {
      v453 = v137 & 0xFFFFFFFFFFFFFF8;
    }

    v139 = MEMORY[0x25F8CE500](v453);
    if (v139)
    {
      goto LABEL_46;
    }

    goto LABEL_246;
  }

  v139 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v139)
  {
LABEL_246:

    v134 = v465;
    goto LABEL_247;
  }

LABEL_46:
  v140 = 0;
  v471 = 0;
  v472 = v137 & 0xC000000000000001;
  v469 = (v137 & 0xFFFFFFFFFFFFFF8);
  v458 = "ent Transcript PSE Schema.";
  v141 = &off_279A51000;
  *&v138 = 136315138;
  v459 = v138;
  *&v138 = 138412290;
  v462 = v138;
  v142 = &selRef_recentCallStatus;
  v466 = v137;
  v470 = v139;
  while (1)
  {
    if (v472)
    {
      v143 = MEMORY[0x25F8CE460](v140, v137);
    }

    else
    {
      if (v140 >= *(v469 + 2))
      {
        goto LABEL_240;
      }

      v143 = *(v137 + 8 * v140 + 32);
    }

    v144 = v143;
    if (__OFADD__(v140, 1))
    {
      __break(1u);
LABEL_240:
      __break(1u);
      goto LABEL_241;
    }

    v473 = (v140 + 1);
    v145 = [v143 *(v141 + 507)];
    if (!v145)
    {
      goto LABEL_101;
    }

    v146 = v145;
    v147 = [v145 v142[107]];

    if (!v147)
    {
      goto LABEL_101;
    }

    v148 = [v147 containerType];

    if (v148 != 3)
    {
      goto LABEL_101;
    }

    v149 = [v144 v111[33]];
    if (v149)
    {
      v150 = v149;
      v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v153 = v152;

      if (v151 != 0x746567726174 || v153 != 0xE600000000000000)
      {
        v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v141 = &off_279A51000;
        if (v154)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

LABEL_64:
      v141 = &off_279A51000;

LABEL_65:
      v160 = [v144 *(v141 + 507)];
      if (v160 && (v161 = v160, v162 = [v160 v142[107]], v161, v162) && (v163 = objc_msgSend(v162, sel_entity), v162, v163) && (v164 = objc_msgSend(v163, v111[33]), v163, v164))
      {
        v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v167 = v166;

        *(&v479 + 1) = MEMORY[0x277D837D0];
        *&v478 = v165;
        *(&v478 + 1) = v167;
        outlined init with take of Any(&v478, &v476);
        v168 = v480;
        v169 = swift_isUniquelyReferenced_nonNull_native();
        v474 = v168;
        v170 = specialized __RawDictionaryStorage.find<A>(_:)(0x7954797469746E65, 0xEA00000000006570);
        v172 = v168[2];
        v173 = (v171 & 1) == 0;
        v174 = __OFADD__(v172, v173);
        v175 = v172 + v173;
        if (v174)
        {
          goto LABEL_249;
        }

        v176 = v171;
        if (v168[3] >= v175)
        {
          if ((v169 & 1) == 0)
          {
            v448 = v170;
            specialized _NativeDictionary.copy()();
            v170 = v448;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v175, v169);
          v170 = specialized __RawDictionaryStorage.find<A>(_:)(0x7954797469746E65, 0xEA00000000006570);
          if ((v176 & 1) != (v177 & 1))
          {
            goto LABEL_254;
          }
        }

        v141 = &off_279A51000;
        v178 = v474;
        if (v176)
        {
          v377 = (v474[7] + 32 * v170);
          __swift_destroy_boxed_opaque_existential_0(v377);
          outlined init with take of Any(&v476, v377);
          v480 = v178;
        }

        else
        {
          v474[(v170 >> 6) + 8] |= 1 << v170;
          v378 = (v178[6] + 16 * v170);
          *v378 = 0x7954797469746E65;
          v378[1] = 0xEA00000000006570;
          outlined init with take of Any(&v476, (v178[7] + 32 * v170));
          v379 = v178[2];
          v174 = __OFADD__(v379, 1);
          v380 = v379 + 1;
          if (v174)
          {
            goto LABEL_252;
          }

          v178[2] = v380;
          v480 = v178;
        }
      }

      else
      {
        v178 = v480;
        v179 = specialized __RawDictionaryStorage.find<A>(_:)(0x7954797469746E65, 0xEA00000000006570);
        if (v180)
        {
          v181 = v179;
          v182 = swift_isUniquelyReferenced_nonNull_native();
          *&v476 = v178;
          if (!v182)
          {
            specialized _NativeDictionary.copy()();
            v178 = v476;
          }

          v183 = *(v178[6] + 16 * v181 + 8);

          outlined init with take of Any((v178[7] + 32 * v181), &v478);
          specialized _NativeDictionary._delete(at:)(v181, v178);
          v480 = v178;
        }

        else
        {
          v478 = 0u;
          v479 = 0u;
        }

        outlined destroy of Date?(&v478, &_sypSgMd, &_sypSgMR);
      }

      v184 = [v144 *(v141 + 507)];
      if (!v184 || (v185 = v184, v186 = [v184 displayRepresentation], v185, !v186) || (v187 = objc_msgSend(v186, sel_title), v186, !v187) || (v188 = objc_msgSend(v187, sel_key), v187, !v188))
      {
        v200 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
        if (v201)
        {
          v202 = v200;
          v203 = v480;
          v204 = swift_isUniquelyReferenced_nonNull_native();
          *&v476 = v203;
          if (!v204)
          {
            specialized _NativeDictionary.copy()();
            v203 = v476;
          }

          v205 = *(*(v203 + 48) + 16 * v202 + 8);

          outlined init with take of Any((*(v203 + 56) + 32 * v202), &v478);
          specialized _NativeDictionary._delete(at:)(v202, v203);
          v480 = v203;
        }

        else
        {
          v478 = 0u;
          v479 = 0u;
        }

        v141 = &off_279A51000;
        outlined destroy of Date?(&v478, &_sypSgMd, &_sypSgMR);
LABEL_93:
        v206 = [v144 *(v141 + 507)];
        if (v206)
        {
          v207 = v206;
          v208 = [v206 *(v141 + 507)];

          if (v208)
          {
            v209 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v211 = v210;

            type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
            type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
            v468 = v211;
            v212 = v471;
            v213 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
            v471 = v212;
            if (v212)
            {
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v214 = type metadata accessor for Logger();
              __swift_project_value_buffer(v214, static Logger.engagement);
              v215 = v471;
              v216 = v471;
              v217 = Logger.logObject.getter();
              v218 = static os_log_type_t.error.getter();

              v219 = os_log_type_enabled(v217, v218);
              v137 = v466;
              if (v219)
              {
                v220 = swift_slowAlloc();
                v221 = swift_slowAlloc();
                *v220 = v462;
                v222 = v215;
                v223 = _swift_stdlib_bridgeErrorToNSError();
                *(v220 + 4) = v223;
                *v221 = v223;
                _os_log_impl(&dword_25ECEC000, v217, v218, "Can't decode entityValue, error: %@", v220, 0xCu);
                outlined destroy of Date?(v221, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x25F8CEE50](v221, -1, -1);
                v224 = v220;
                v141 = &off_279A51000;
                MEMORY[0x25F8CEE50](v224, -1, -1);

                outlined consume of Data._Representation(v209, v468);
              }

              else
              {

                outlined consume of Data._Representation(v209, v468);
              }

              v471 = 0;
              v139 = v470;
              v142 = &selRef_recentCallStatus;
            }

            else
            {
              v341 = v213;
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v342 = type metadata accessor for Logger();
              __swift_project_value_buffer(v342, static Logger.engagement);
              v343 = v341;
              v344 = Logger.logObject.getter();
              v345 = static os_log_type_t.debug.getter();

              v346 = os_log_type_enabled(v344, v345);
              v467 = v343;
              if (v346)
              {
                v347 = swift_slowAlloc();
                v348 = swift_slowAlloc();
                *&v478 = v348;
                *v347 = v459;
                *&v476 = v341;
                v349 = v343;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8LNEntityCSgMd, &_sSo8LNEntityCSgMR);
                v350 = String.init<A>(describing:)();
                v352 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v350, v351, &v478);

                *(v347 + 4) = v352;
                _os_log_impl(&dword_25ECEC000, v344, v345, "Decoded entityValue: %s", v347, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v348);
                v353 = v348;
                v111 = &selRef_recentCallStatus;
                MEMORY[0x25F8CEE50](v353, -1, -1);
                v354 = v347;
                v142 = &selRef_recentCallStatus;
                MEMORY[0x25F8CEE50](v354, -1, -1);
              }

              if (v341)
              {
                v355 = v467;
                v356 = [v467 v111[33]];
                v357 = [v356 instanceIdentifier];

                v358 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v360 = v359;

                *(&v479 + 1) = MEMORY[0x277D837D0];
                *&v478 = v358;
                *(&v478 + 1) = v360;
                outlined init with take of Any(&v478, &v476);
                v361 = v480;
                v362 = swift_isUniquelyReferenced_nonNull_native();
                v474 = v361;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0xD000000000000010, v458 | 0x8000000000000000, v362);

                outlined consume of Data._Representation(v209, v468);
                v480 = v474;
              }

              else
              {
                specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, v458 | 0x8000000000000000, &v478);

                outlined consume of Data._Representation(v209, v468);
                outlined destroy of Date?(&v478, &_sypSgMd, &_sypSgMR);
              }

              v141 = &off_279A51000;
              v137 = v466;
              v139 = v470;
            }

            goto LABEL_48;
          }
        }

LABEL_47:

        goto LABEL_48;
      }

      v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v191 = v190;

      *(&v479 + 1) = MEMORY[0x277D837D0];
      *&v478 = v189;
      *(&v478 + 1) = v191;
      outlined init with take of Any(&v478, &v476);
      v192 = swift_isUniquelyReferenced_nonNull_native();
      v474 = v178;
      v193 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
      v195 = v178[2];
      v196 = (v194 & 1) == 0;
      v174 = __OFADD__(v195, v196);
      v197 = v195 + v196;
      if (v174)
      {
        goto LABEL_250;
      }

      v198 = v194;
      if (v178[3] >= v197)
      {
        if ((v192 & 1) == 0)
        {
          v449 = v193;
          specialized _NativeDictionary.copy()();
          v193 = v449;
          v381 = v474;
          if (v198)
          {
            goto LABEL_194;
          }

          goto LABEL_236;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v197, v192);
        v193 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
        if ((v198 & 1) != (v199 & 1))
        {
          goto LABEL_254;
        }
      }

      v381 = v474;
      if (v198)
      {
LABEL_194:
        v382 = (v381[7] + 32 * v193);
        __swift_destroy_boxed_opaque_existential_0(v382);
        outlined init with take of Any(&v476, v382);
LABEL_238:
        v480 = v381;
        v141 = &off_279A51000;
        goto LABEL_93;
      }

LABEL_236:
      v381[(v193 >> 6) + 8] |= 1 << v193;
      v450 = (v381[6] + 16 * v193);
      *v450 = 0x6954797469746E65;
      v450[1] = 0xEB00000000656C74;
      outlined init with take of Any(&v476, (v381[7] + 32 * v193));
      v451 = v381[2];
      v174 = __OFADD__(v451, 1);
      v452 = v451 + 1;
      if (v174)
      {
        goto LABEL_253;
      }

      v381[2] = v452;
      goto LABEL_238;
    }

LABEL_61:
    v155 = [v144 v111[33]];
    if (v155)
    {
      v156 = v155;
      v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v159 = v158;

      if (v157 == 0x7465737361 && v159 == 0xE500000000000000)
      {
        goto LABEL_64;
      }

      v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v141 = &off_279A51000;
      if (v225)
      {
        goto LABEL_65;
      }
    }

LABEL_101:
    v226 = [v144 v111[33]];
    if (!v226)
    {
      goto LABEL_120;
    }

    v227 = v226;
    v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v230 = v229;

    if (v228 == 0x6850686372616573 && v230 == 0xEC00000065736172)
    {

      v141 = &off_279A51000;
    }

    else
    {
      v231 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v141 = &off_279A51000;
      if ((v231 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v232 = [v144 *(v141 + 507)];
    if (v232)
    {
      v233 = v232;
      v234 = [v232 *(v141 + 507)];

      if (v234)
      {
        v235 = v141;
        v236 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v238 = v237;

        v239 = [v144 v235 + 376];
        if (v239)
        {
          v240 = v239;
          v241 = [v239 v142[107]];

          if (v241)
          {
            v242 = [v241 containerType];

            if (v242 == 7)
            {
              v243 = [v144 value];
              if (v243)
              {
                v244 = v243;
                v245 = [v243 v142[107]];

                if (v245)
                {
                  v246 = [v245 primitive];

                  if (v246 == 1)
                  {
                    v247 = [v144 value];
                    if (v247 && (v248 = v247, v249 = [v247 displayRepresentation], v248, v249) && (v250 = objc_msgSend(v249, sel_title), v249, v250) && (v251 = objc_msgSend(v250, sel_key), v250, v251))
                    {
                      v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v254 = v253;

                      *(&v479 + 1) = MEMORY[0x277D837D0];
                      *&v478 = v252;
                      *(&v478 + 1) = v254;
                      outlined init with take of Any(&v478, &v476);
                      v255 = v480;
                      v256 = swift_isUniquelyReferenced_nonNull_native();
                      v474 = v255;
                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x6954797469746E65, 0xEB00000000656C74, v256);
                      v480 = v474;
                    }

                    else
                    {
                      v383 = v480;
                      v384 = specialized __RawDictionaryStorage.find<A>(_:)(0x6954797469746E65, 0xEB00000000656C74);
                      if (v385)
                      {
                        v386 = v384;
                        v387 = swift_isUniquelyReferenced_nonNull_native();
                        *&v476 = v383;
                        if ((v387 & 1) == 0)
                        {
                          specialized _NativeDictionary.copy()();
                          v383 = v476;
                        }

                        v388 = *(*(v383 + 48) + 16 * v386 + 8);

                        outlined init with take of Any((*(v383 + 56) + 32 * v386), &v478);
                        specialized _NativeDictionary._delete(at:)(v386, v383);
                        v480 = v383;
                      }

                      else
                      {
                        v478 = 0u;
                        v479 = 0u;
                      }

                      outlined destroy of Date?(&v478, &_sypSgMd, &_sypSgMR);
                    }

                    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
                    v389 = type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
                    v390 = v471;
                    v391 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
                    v471 = v390;
                    if (v390)
                    {
                      if (one-time initialization token for engagement != -1)
                      {
                        swift_once();
                      }

                      v392 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v392, static Logger.engagement);
                      v282 = v471;
                      v393 = v471;
                      v284 = Logger.logObject.getter();
                      v394 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v284, v394))
                      {
                        v395 = swift_slowAlloc();
                        v396 = swift_slowAlloc();
                        *v395 = v462;
                        v397 = v282;
                        v398 = _swift_stdlib_bridgeErrorToNSError();
                        *(v395 + 4) = v398;
                        *v396 = v398;
                        _os_log_impl(&dword_25ECEC000, v284, v394, "Can't decode value, error: %@", v395, 0xCu);
                        outlined destroy of Date?(v396, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                        MEMORY[0x25F8CEE50](v396, -1, -1);
                        MEMORY[0x25F8CEE50](v395, -1, -1);

                        v290 = v236;
                        v291 = v238;
                        goto LABEL_208;
                      }

                      v439 = v236;
                      v440 = v238;
                      goto LABEL_224;
                    }

                    v399 = v391;
                    if (one-time initialization token for engagement != -1)
                    {
                      swift_once();
                    }

                    v400 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v400, static Logger.engagement);
                    v401 = v399;
                    v402 = Logger.logObject.getter();
                    v468 = v399;
                    v403 = v402;
                    v404 = static os_log_type_t.debug.getter();

                    LODWORD(v463) = v404;
                    v405 = v404;
                    v406 = v403;
                    v407 = os_log_type_enabled(v403, v405);
                    v467 = v401;
                    if (v407)
                    {
                      v408 = swift_slowAlloc();
                      v409 = swift_slowAlloc();
                      *&v478 = v409;
                      *v408 = v459;
                      *&v476 = v468;
                      v410 = v401;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCSgMd, &_sSo8NSStringCSgMR);
                      v411 = String.init<A>(describing:)();
                      v413 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v411, v412, &v478);
                      v111 = &selRef_recentCallStatus;

                      *(v408 + 4) = v413;
                      _os_log_impl(&dword_25ECEC000, v406, v463, "Decoded value: %s", v408, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v409);
                      MEMORY[0x25F8CEE50](v409, -1, -1);
                      v414 = v408;
                      v142 = &selRef_recentCallStatus;
                      MEMORY[0x25F8CEE50](v414, -1, -1);
                    }

                    if (!v468)
                    {
                      specialized Dictionary._Variant.removeValue(forKey:)(0x6850686372616573, 0xEC00000065736172, &v476);
                      outlined destroy of Date?(&v476, &_sypSgMd, &_sypSgMR);

                      outlined consume of Data._Representation(v236, v238);
                      goto LABEL_227;
                    }

                    *(&v479 + 1) = v389;
                    v415 = v467;
                    *&v478 = v467;
                    outlined init with take of Any(&v478, &v476);
                    v416 = v415;
                    v417 = v480;
                    v418 = swift_isUniquelyReferenced_nonNull_native();
                    v474 = v417;
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x6850686372616573, 0xEC00000065736172, v418);

                    outlined consume of Data._Representation(v236, v238);
LABEL_221:
                    v480 = v474;
LABEL_227:
                    v137 = v466;
LABEL_228:
                    v139 = v470;
                    v141 = &off_279A51000;
                    goto LABEL_48;
                  }
                }
              }
            }
          }
        }

        outlined consume of Data._Representation(v236, v238);
        v139 = v470;
        v141 = &off_279A51000;
      }
    }

LABEL_120:
    v257 = [v144 v111[33]];
    if (!v257)
    {
      goto LABEL_139;
    }

    v258 = v257;
    v259 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v261 = v260;

    if (v259 == 0x7265755172657375 && v261 == 0xE900000000000079)
    {

      v141 = &off_279A51000;
    }

    else
    {
      v262 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v141 = &off_279A51000;
      if ((v262 & 1) == 0)
      {
        goto LABEL_139;
      }
    }

    v263 = [v144 *(v141 + 507)];
    if (v263)
    {
      v264 = v263;
      v265 = [v263 *(v141 + 507)];

      if (v265)
      {
        v266 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v267 = v141;
        v269 = v268;

        v270 = [v144 v267 + 376];
        if (v270)
        {
          v271 = v270;
          v272 = [v270 v142[107]];

          if (v272)
          {
            v273 = [v272 containerType];

            if (v273 == 7)
            {
              v274 = [v144 value];
              if (v274)
              {
                v275 = v274;
                v276 = [v274 v142[107]];

                if (v276)
                {
                  v277 = [v276 primitive];

                  if (v277 == 1)
                  {
                    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
                    v278 = type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
                    v279 = v471;
                    v280 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
                    v471 = v279;
                    if (v279)
                    {
                      if (one-time initialization token for engagement != -1)
                      {
                        swift_once();
                      }

                      v281 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v281, static Logger.engagement);
                      v282 = v471;
                      v283 = v471;
                      v284 = Logger.logObject.getter();
                      v285 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v284, v285))
                      {
                        v286 = swift_slowAlloc();
                        v287 = swift_slowAlloc();
                        *v286 = v462;
                        v288 = v282;
                        v289 = _swift_stdlib_bridgeErrorToNSError();
                        *(v286 + 4) = v289;
                        *v287 = v289;
                        _os_log_impl(&dword_25ECEC000, v284, v285, "Can't decode value, error: %@", v286, 0xCu);
                        outlined destroy of Date?(v287, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                        MEMORY[0x25F8CEE50](v287, -1, -1);
                        MEMORY[0x25F8CEE50](v286, -1, -1);

                        v290 = v266;
                        v291 = v269;
LABEL_208:
                        outlined consume of Data._Representation(v290, v291);

LABEL_225:
                        v471 = 0;
                        v137 = v466;
                        v139 = v470;
                        v141 = &off_279A51000;
                        v142 = &selRef_recentCallStatus;
                        goto LABEL_48;
                      }

                      v439 = v266;
                      v440 = v269;
LABEL_224:
                      outlined consume of Data._Representation(v439, v440);

                      goto LABEL_225;
                    }

                    v419 = v280;
                    if (one-time initialization token for engagement != -1)
                    {
                      swift_once();
                    }

                    v420 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v420, static Logger.engagement);
                    v421 = v419;
                    v422 = Logger.logObject.getter();
                    v468 = v419;
                    v423 = v422;
                    v424 = static os_log_type_t.debug.getter();

                    LODWORD(v463) = v424;
                    v425 = v424;
                    v426 = v423;
                    v427 = os_log_type_enabled(v423, v425);
                    v467 = v421;
                    if (v427)
                    {
                      v428 = swift_slowAlloc();
                      v429 = swift_slowAlloc();
                      *&v478 = v429;
                      *v428 = v459;
                      *&v476 = v468;
                      v430 = v421;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCSgMd, &_sSo8NSStringCSgMR);
                      v431 = String.init<A>(describing:)();
                      v433 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v431, v432, &v478);
                      v111 = &selRef_recentCallStatus;

                      *(v428 + 4) = v433;
                      _os_log_impl(&dword_25ECEC000, v426, v463, "Decoded value: %s", v428, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v429);
                      MEMORY[0x25F8CEE50](v429, -1, -1);
                      v434 = v428;
                      v142 = &selRef_recentCallStatus;
                      MEMORY[0x25F8CEE50](v434, -1, -1);
                    }

                    if (!v468)
                    {
                      v441 = v480;
                      v442 = specialized __RawDictionaryStorage.find<A>(_:)(0x7265755172657375, 0xE900000000000079);
                      if (v443)
                      {
                        v444 = v442;
                        v445 = swift_isUniquelyReferenced_nonNull_native();
                        v474 = v441;
                        if ((v445 & 1) == 0)
                        {
                          specialized _NativeDictionary.copy()();
                          v441 = v474;
                        }

                        v446 = *(*(v441 + 48) + 16 * v444 + 8);

                        outlined init with take of Any((*(v441 + 56) + 32 * v444), &v476);
                        specialized _NativeDictionary._delete(at:)(v444, v441);
                        v480 = v441;
                      }

                      else
                      {
                        v476 = 0u;
                        v477 = 0u;
                      }

                      v137 = v466;

                      outlined consume of Data._Representation(v266, v269);
                      outlined destroy of Date?(&v476, &_sypSgMd, &_sypSgMR);
                      goto LABEL_228;
                    }

                    *(&v479 + 1) = v278;
                    v435 = v467;
                    *&v478 = v467;
                    outlined init with take of Any(&v478, &v476);
                    v436 = v435;
                    v437 = v480;
                    v438 = swift_isUniquelyReferenced_nonNull_native();
                    v474 = v437;
                    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v476, 0x7265755172657375, 0xE900000000000079, v438);

                    outlined consume of Data._Representation(v266, v269);
                    goto LABEL_221;
                  }
                }
              }
            }
          }
        }

        outlined consume of Data._Representation(v266, v269);
        v139 = v470;
        v141 = &off_279A51000;
      }
    }

LABEL_139:
    v292 = [v144 v111[33]];
    if (!v292)
    {
      goto LABEL_47;
    }

    v293 = v292;
    v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v296 = v295;

    if (v294 == 0x6169726574697263 && v296 == 0xE800000000000000)
    {

      v141 = &off_279A51000;
    }

    else
    {
      v297 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v141 = &off_279A51000;
      if ((v297 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v298 = [v144 *(v141 + 507)];
    if (!v298)
    {
      goto LABEL_47;
    }

    v299 = v298;
    v300 = [v298 *(v141 + 507)];

    if (!v300)
    {
      goto LABEL_47;
    }

    v301 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v303 = v302;

    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for LNStringSearchCriteria, 0x277D23918);
    v467 = v301;
    v468 = v303;
    v304 = v471;
    v305 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v471 = v304;
    if (v304)
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v306 = type metadata accessor for Logger();
      __swift_project_value_buffer(v306, static Logger.engagement);
      v307 = v471;
      v308 = v471;
      v309 = Logger.logObject.getter();
      v310 = static os_log_type_t.error.getter();

      v311 = os_log_type_enabled(v309, v310);
      v137 = v466;
      if (v311)
      {
        v312 = swift_slowAlloc();
        v313 = swift_slowAlloc();
        *v312 = v462;
        v314 = v307;
        v315 = _swift_stdlib_bridgeErrorToNSError();
        *(v312 + 4) = v315;
        *v313 = v315;
        _os_log_impl(&dword_25ECEC000, v309, v310, "Can't decode value, error: %@", v312, 0xCu);
        outlined destroy of Date?(v313, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x25F8CEE50](v313, -1, -1);
        v316 = v312;
        v141 = &off_279A51000;
        MEMORY[0x25F8CEE50](v316, -1, -1);

        outlined consume of Data._Representation(v467, v468);
      }

      else
      {

        outlined consume of Data._Representation(v467, v468);
      }

      v471 = 0;
      v142 = &selRef_recentCallStatus;
      goto LABEL_48;
    }

    v317 = v305;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v318 = type metadata accessor for Logger();
    __swift_project_value_buffer(v318, static Logger.engagement);
    v319 = v317;
    v320 = Logger.logObject.getter();
    v321 = static os_log_type_t.debug.getter();
    v463 = v319;

    if (os_log_type_enabled(v320, v321))
    {
      v322 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      *&v476 = v323;
      *v322 = v459;
      if (v317)
      {
        v324 = [v463 term];
        v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v327 = v326;

        v139 = v470;
      }

      else
      {
        v325 = 0;
        v327 = 0;
      }

      *&v478 = v325;
      *(&v478 + 1) = v327;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v368 = String.init<A>(describing:)();
      v370 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v368, v369, &v476);

      *(v322 + 4) = v370;
      _os_log_impl(&dword_25ECEC000, v320, v321, "Decoded value: %s", v322, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v323);
      MEMORY[0x25F8CEE50](v323, -1, -1);
      MEMORY[0x25F8CEE50](v322, -1, -1);

      v141 = &off_279A51000;
      v142 = &selRef_recentCallStatus;
      v111 = &selRef_recentCallStatus;
      if (!v317)
      {
LABEL_180:
        v371 = v480;
        v372 = specialized __RawDictionaryStorage.find<A>(_:)(0x6169726574697263, 0xE800000000000000);
        if (v373)
        {
          v374 = v372;
          v375 = swift_isUniquelyReferenced_nonNull_native();
          v474 = v371;
          v137 = v466;
          if ((v375 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v371 = v474;
          }

          v376 = *(*(v371 + 48) + 16 * v374 + 8);

          outlined init with take of Any((*(v371 + 56) + 32 * v374), &v476);
          specialized _NativeDictionary._delete(at:)(v374, v371);
          v480 = v371;
        }

        else
        {
          v476 = 0u;
          v477 = 0u;
          v137 = v466;
        }

        outlined consume of Data._Representation(v467, v468);
        outlined destroy of Date?(&v476, &_sypSgMd, &_sypSgMR);
        goto LABEL_48;
      }
    }

    else
    {

      v111 = &selRef_recentCallStatus;
      if (!v317)
      {
        goto LABEL_180;
      }
    }

    v328 = [v463 term];
    v329 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v331 = v330;

    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v478 = v329;
    *(&v478 + 1) = v331;
    outlined init with take of Any(&v478, &v476);
    v332 = v480;
    v333 = swift_isUniquelyReferenced_nonNull_native();
    v474 = v332;
    v334 = specialized __RawDictionaryStorage.find<A>(_:)(0x6169726574697263, 0xE800000000000000);
    v336 = v332[2];
    v337 = (v335 & 1) == 0;
    v174 = __OFADD__(v336, v337);
    v338 = v336 + v337;
    if (v174)
    {
      break;
    }

    v339 = v335;
    if (v332[3] >= v338)
    {
      if ((v333 & 1) == 0)
      {
        v447 = v334;
        specialized _NativeDictionary.copy()();
        v334 = v447;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v338, v333);
      v334 = specialized __RawDictionaryStorage.find<A>(_:)(0x6169726574697263, 0xE800000000000000);
      if ((v339 & 1) != (v340 & 1))
      {
        goto LABEL_254;
      }
    }

    v137 = v466;
    v363 = v474;
    if (v339)
    {
      v364 = (v474[7] + 32 * v334);
      __swift_destroy_boxed_opaque_existential_0(v364);
      outlined init with take of Any(&v476, v364);
    }

    else
    {
      v474[(v334 >> 6) + 8] |= 1 << v334;
      v365 = (v363[6] + 16 * v334);
      *v365 = 0x6169726574697263;
      v365[1] = 0xE800000000000000;
      outlined init with take of Any(&v476, (v363[7] + 32 * v334));
      v366 = v363[2];
      v174 = __OFADD__(v366, 1);
      v367 = v366 + 1;
      if (v174)
      {
        goto LABEL_251;
      }

      v363[2] = v367;
    }

    outlined consume of Data._Representation(v467, v468);
    v480 = v363;
    v141 = &off_279A51000;
LABEL_48:
    ++v140;
    if (v473 == v139)
    {
      goto LABEL_246;
    }
  }

  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
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
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Date() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t PSESELFEmitter.getPSEDonationSource(pseDonationSource:)(char a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t PSESELFEmitter.getPSETriggerOrigin()()
{
  swift_beginAccess();
  v0 = static PSEStruct.pseTriggerOrigin;
  v1 = qword_280FEE450;
  v2 = static PSEStruct.pseTriggerOrigin == 0x6E61747369737361 && qword_280FEE450 == 0xEA00000000006474;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  result = 2;
  if (v0 != 0x636E657265666E69 || v1 != 0xEA00000000006465)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PSESELFEmitter.getPSEAppFollowup(appLaunchBundleId:taskAppPattern:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  if (!a2)
  {
    return v4;
  }

  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || !a4)
  {
    return v4;
  }

  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return v4;
  }

  v4 = 1;
  if (a1 == a3 && a2 == a4)
  {
    return v4;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t PSESELFEmitter.getPSEAppFollowupForMaps(appLaunchBundleId:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    return 1;
  }

  v4 = StringProtocol.contains<A>(_:)();
  result = 4;
  if ((v4 & 1) == 0)
  {
    if (StringProtocol.contains<A>(_:)())
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t PSESELFEmitter.getPSEAppLaunchReason(reason:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 1769105747 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65726373656D6F48 && a2 == 0xEA00000000006E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  result = 4;
  if (a1 != 0x726568744FLL || a2 != 0xE500000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized PSESELFEmitter.applyMissingDonationMonitor(task:)(uint64_t a1)
{
  v2 = type metadata accessor for ReliabilityCategory();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v75 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v74 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v74 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v74 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v74 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v74 - v19;
  (*(*a1 + 280))(v18);
  v21 = String.lowercased()();

  v80 = v21;
  v78 = 0x7373656D646E6573;
  v79 = 0xEB00000000656761;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.engagement);
    v23 = *MEMORY[0x277D616D8];
    v24 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v24 - 8) + 104))(v20, v23, v24);
    v26 = v76;
    v25 = v77;
    (*(v76 + 104))(v20, *MEMORY[0x277D61678], v77);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v80._countAndFlagsBits = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000057, 0x800000025ED80CF0, &v80._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v27, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x25F8CEE50](v30, -1, -1);
      MEMORY[0x25F8CEE50](v29, -1, -1);
    }

LABEL_6:

    type metadata accessor for SiriTaskEngagementUtils();
    v31 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v33 = v32;
LABEL_31:
    MEMORY[0x25F8CDB30](v20, v31, v33);

    return (*(v26 + 8))(v20, v25);
  }

  v80 = v21;
  v78 = 0x6C61637472617473;
  v79 = 0xE90000000000006CLL;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.engagement);
    v35 = *MEMORY[0x277D616D8];
    v36 = type metadata accessor for AppIntentEventDataIssues();
    (*(*(v36 - 8) + 104))(v17, v35, v36);
    v26 = v76;
    v25 = v77;
    (*(v76 + 104))(v17, *MEMORY[0x277D61678], v77);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v80._countAndFlagsBits = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x800000025ED80C90, &v80._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v37, v38, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x25F8CEE50](v40, -1, -1);
      MEMORY[0x25F8CEE50](v39, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v31 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v33 = v41;
    v20 = v17;
    goto LABEL_31;
  }

  v80 = v21;
  v78 = 0x6964656D79616C70;
  v79 = 0xE900000000000061;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.engagement);
    v43 = *MEMORY[0x277D616F8];
    v44 = type metadata accessor for NowPlayingEventDataIssues();
    (*(*(v44 - 8) + 104))(v14, v43, v44);
    v26 = v76;
    v25 = v77;
    (*(v76 + 104))(v14, *MEMORY[0x277D61688], v77);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v80._countAndFlagsBits = v48;
      *v47 = 136315138;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000055, 0x800000025ED80C30, &v80._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v45, v46, "%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x25F8CEE50](v48, -1, -1);
      MEMORY[0x25F8CEE50](v47, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v31 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v33 = v49;
    v20 = v14;
    goto LABEL_31;
  }

  v80 = v21;
  v78 = 0x686C6F72746E6F63;
  v79 = 0xEB00000000656D6FLL;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.engagement);
    v51 = *MEMORY[0x277D61758];
    v52 = type metadata accessor for HomeKitClientAccessoryControlEventDataIssues();
    (*(*(v52 - 8) + 104))(v11, v51, v52);
    v26 = v76;
    v25 = v77;
    (*(v76 + 104))(v11, *MEMORY[0x277D616B0], v77);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v80._countAndFlagsBits = v56;
      *v55 = 136315138;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000054, 0x800000025ED80BD0, &v80._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v53, v54, "%s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x25F8CEE50](v56, -1, -1);
      MEMORY[0x25F8CEE50](v55, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v31 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v33 = v57;
    v20 = v11;
    goto LABEL_31;
  }

  v80 = v21;
  v78 = 1936744813;
  v79 = 0xE400000000000000;
  if (StringProtocol.contains<A>(_:)())
  {

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.engagement);
    v59 = *MEMORY[0x277D61648];
    v60 = type metadata accessor for MapsEventDataIssues();
    (*(*(v60 - 8) + 104))(v8, v59, v60);
    v26 = v76;
    v25 = v77;
    (*(v76 + 104))(v8, *MEMORY[0x277D61660], v77);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v80._countAndFlagsBits = v64;
      *v63 = 136315138;
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000050, 0x800000025ED80B70, &v80._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v61, v62, "%s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x25F8CEE50](v64, -1, -1);
      MEMORY[0x25F8CEE50](v63, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v31 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    v33 = v65;
    v20 = v8;
    goto LABEL_31;
  }

  v80 = v21;
  v78 = 0x6D72616C61;
  v79 = 0xE500000000000000;
  v67 = StringProtocol.contains<A>(_:)();

  if (v67)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.engagement);
    v69 = *MEMORY[0x277D616B8];
    v70 = type metadata accessor for AlarmEventDataIssues();
    v20 = v75;
    (*(*(v70 - 8) + 104))(v75, v69, v70);
    v26 = v76;
    v25 = v77;
    (*(v76 + 104))(v20, *MEMORY[0x277D61668], v77);
    v27 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v80._countAndFlagsBits = v73;
      *v72 = 136315138;
      *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000051, 0x800000025ED80B10, &v80._countAndFlagsBits);
      _os_log_impl(&dword_25ECEC000, v27, v71, "%s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x25F8CEE50](v73, -1, -1);
      MEMORY[0x25F8CEE50](v72, -1, -1);
    }

    goto LABEL_6;
  }

  return result;
}

void specialized PSESELFEmitter.emitPSESELFInstrumentation(signals:task:)(uint64_t a1, uint64_t a2)
{
  v7 = [objc_opt_self() sharedConnection];
  if (!v7)
  {
    __break(1u);
    goto LABEL_259;
  }

  v8 = v7;
  v9 = [v7 effectiveBoolValueForSetting_];

  if (v9 != 1)
  {
LABEL_23:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.engagement);
    osloga = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(osloga, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25ECEC000, osloga, v21, "D&U is not allowed.", v22, 2u);
      MEMORY[0x25F8CEE50](v22, -1, -1);
    }

    return;
  }

  v122 = a2;
  v129 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_212:
    if (a1 < 0)
    {
      v105 = a1;
    }

    else
    {
      v105 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x25F8CE500](v105);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_216:
    a1 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v120 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v2 = v122;
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_220;
    }

    goto LABEL_217;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_216;
  }

LABEL_5:
  v11 = 0;
  oslog = (a1 & 0xC000000000000001);
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (oslog)
    {
      v13 = MEMORY[0x25F8CE460](v11, a1);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
        goto LABEL_212;
      }

      v13 = *(a1 + 8 * v11 + 32);

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_22;
      }
    }

    v16 = (*(*v13 + 144))() == 0x636E75614C707041 && v15 == 0xE900000000000068;
    if (v16)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    (*(*v13 + 120))(&v127, v18);
    if (v128 > 30.0)
    {
LABEL_6:

      goto LABEL_7;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(v129 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_7:
    ++v11;
  }

  while (v14 != v10);
  v23 = 0;
  v118 = v129;
  v129 = MEMORY[0x277D84F90];
  v123 = a1;
  while (oslog)
  {
    v24 = MEMORY[0x25F8CE460](v23, a1);
    a1 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_54;
    }

LABEL_36:
    if ((*(*v24 + 144))() == 0x636E75614C707041 && v25 == 0xE900000000000068)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if ((*(*v24 + 168))(v28) == 0x65726373656D6F48 && v29 == 0xEA00000000006E65)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    (*(*v24 + 120))(&v127, v32);
    if (v128 <= 30.0)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *(v129 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_32;
    }

LABEL_31:

LABEL_32:
    ++v23;
    v16 = a1 == v10;
    a1 = v123;
    if (v16)
    {
      goto LABEL_55;
    }
  }

  if (v23 >= *(v12 + 16))
  {
    goto LABEL_204;
  }

  v24 = *(a1 + 8 * v23 + 32);

  a1 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_36;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  v34 = 0;
  v117 = v129;
  v129 = MEMORY[0x277D84F90];
  while (2)
  {
    if (oslog)
    {
      v35 = MEMORY[0x25F8CE460](v34, a1);
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_77;
      }

LABEL_61:
      if ((*(*v35 + 144))() == 0x736C6C6143 && v37 == 0xE500000000000000)
      {
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v41 = (*(*v35 + 216))(v40);
      if (!*(v41 + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v43 & 1) == 0))
      {

        goto LABEL_57;
      }

      outlined init with copy of Any(*(v41 + 56) + 32 * v42, &v127);

      if (swift_dynamicCast())
      {
        if (v126)
        {
          (*(*v35 + 120))(&v127);
          if (v128 <= 30.0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v44 = *(v129 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_57:
            ++v34;
            v16 = v36 == v10;
            a1 = v123;
            if (v16)
            {
              goto LABEL_78;
            }

            continue;
          }
        }
      }

LABEL_73:

      goto LABEL_57;
    }

    break;
  }

  if (v34 >= *(v12 + 16))
  {
    goto LABEL_205;
  }

  v35 = *(a1 + 8 * v34 + 32);

  v36 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
    goto LABEL_61;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  v45 = 0;
  v116 = v129;
  v129 = MEMORY[0x277D84F90];
  a1 = 0xE800000000000000;
  while (2)
  {
    if (oslog)
    {
      v46 = MEMORY[0x25F8CE460](v45, v123);
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_100;
      }

LABEL_84:
      if ((*(*v46 + 144))() == 0x736567617373654DLL && v48 == 0xE800000000000000)
      {
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v50 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      v52 = (*(*v46 + 216))(v51);
      if (!*(v52 + 16) || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v54 & 1) == 0))
      {

        goto LABEL_80;
      }

      outlined init with copy of Any(*(v52 + 56) + 32 * v53, &v127);

      if (swift_dynamicCast())
      {
        if (v126)
        {
          (*(*v46 + 120))(&v127);
          if (v128 <= 30.0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v55 = *(v129 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_80:
            ++v45;
            if (v47 == v10)
            {
              goto LABEL_101;
            }

            continue;
          }
        }
      }

LABEL_96:

      goto LABEL_80;
    }

    break;
  }

  if (v45 >= *(v12 + 16))
  {
    goto LABEL_206;
  }

  v46 = *(v123 + 8 * v45 + 32);

  v47 = v45 + 1;
  if (!__OFADD__(v45, 1))
  {
    goto LABEL_84;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  v56 = 0;
  v121 = v129;
  v129 = MEMORY[0x277D84F90];
  a1 = 0xE400000000000000;
  while (2)
  {
    if (oslog)
    {
      v57 = MEMORY[0x25F8CE460](v56, v123);
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_123;
      }

LABEL_105:
      if ((*(*v57 + 144))() == 1936744781 && v59 == 0xE400000000000000)
      {
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      v63 = (*(*v57 + 216))(v62);
      if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v65 & 1) != 0))
      {
        outlined init with copy of Any(*(v63 + 56) + 32 * v64, &v127);

        if (swift_dynamicCast() & 1) != 0 && (v126)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v66 = *(v129 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_119;
        }
      }

      else
      {
      }

LABEL_118:

LABEL_119:
      ++v56;
      if (v58 == v10)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  if (v56 >= *(v12 + 16))
  {
    goto LABEL_207;
  }

  v57 = *(v123 + 8 * v56 + 32);

  v58 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_105;
  }

LABEL_123:
  __break(1u);
LABEL_124:
  v67 = 0;
  v120 = v129;
  v129 = MEMORY[0x277D84F90];
  a1 = v123;
  while (2)
  {
    if (oslog)
    {
      v68 = MEMORY[0x25F8CE460](v67, a1);
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_141;
      }

LABEL_130:
      if ((*(*v68 + 144))() == 0x6F747541656D6F48 && v70 == 0xEE006E6F6974616DLL)
      {
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v72 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      (*(*v68 + 120))(&v127, v73);
      if (v128 <= 30.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v74 = *(v129 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_126:
        a1 = v123;
        ++v67;
        if (v69 == v10)
        {
          goto LABEL_142;
        }

        continue;
      }

LABEL_125:

      goto LABEL_126;
    }

    break;
  }

  if (v67 >= *(v12 + 16))
  {
    goto LABEL_208;
  }

  v68 = *(a1 + 8 * v67 + 32);

  v69 = v67 + 1;
  if (!__OFADD__(v67, 1))
  {
    goto LABEL_130;
  }

LABEL_141:
  __break(1u);
LABEL_142:
  v75 = 0;
  v115 = v129;
  v129 = MEMORY[0x277D84F90];
  while (2)
  {
    if (oslog)
    {
      v76 = MEMORY[0x25F8CE460](v75, a1);
      v77 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_159;
      }

LABEL_148:
      if ((*(*v76 + 144))() == 0x6D72616C41 && v78 == 0xE500000000000000)
      {
      }

      else
      {
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v80 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      (*(*v76 + 120))(&v127, v81);
      if (v128 <= 30.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *(v129 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_144:
        ++v75;
        if (v77 == v10)
        {
          goto LABEL_160;
        }

        continue;
      }

LABEL_143:

      goto LABEL_144;
    }

    break;
  }

  if (v75 >= *(v12 + 16))
  {
    goto LABEL_209;
  }

  v76 = *(a1 + 8 * v75 + 32);

  v77 = v75 + 1;
  if (!__OFADD__(v75, 1))
  {
    goto LABEL_148;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  a1 = 0;
  v119 = v129;
  v129 = MEMORY[0x277D84F90];
  while (2)
  {
    if (oslog)
    {
      v83 = MEMORY[0x25F8CE460](a1, v123);
      v84 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_182;
      }

LABEL_166:
      if ((*(*v83 + 144))() == 0x636973754DLL && v85 == 0xE500000000000000)
      {
      }

      else
      {
        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v87 & 1) == 0)
        {
          goto LABEL_178;
        }
      }

      v89 = (*(*v83 + 216))(v88);
      if (!*(v89 + 16) || (v90 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000025ED7E770), (v91 & 1) == 0))
      {

        goto LABEL_162;
      }

      outlined init with copy of Any(*(v89 + 56) + 32 * v90, &v127);

      if (swift_dynamicCast())
      {
        if (v126)
        {
          (*(*v83 + 120))(&v127);
          if (v128 <= 30.0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v92 = *(v129 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_162:
            ++a1;
            if (v84 == v10)
            {
              goto LABEL_183;
            }

            continue;
          }
        }
      }

LABEL_178:

      goto LABEL_162;
    }

    break;
  }

  if (a1 >= *(v12 + 16))
  {
    goto LABEL_210;
  }

  v83 = *(v123 + 8 * a1 + 32);

  v84 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_166;
  }

LABEL_182:
  __break(1u);
LABEL_183:
  v93 = 0;
  a1 = v129;
  v129 = MEMORY[0x277D84F90];
  v94 = v115;
  while (2)
  {
    if (oslog)
    {
      v95 = MEMORY[0x25F8CE460](v93, v123);
      v96 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_200;
      }

LABEL_189:
      if ((*(*v95 + 144))() == 0x6E65746E49707041 && v97 == 0xE900000000000074)
      {
      }

      else
      {
        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v99 & 1) == 0)
        {
          goto LABEL_184;
        }
      }

      (*(*v95 + 120))(&v127, v100);
      if (v128 <= 30.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v101 = *(v129 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_185:
        ++v93;
        if (v96 == v10)
        {
          goto LABEL_201;
        }

        continue;
      }

LABEL_184:

      goto LABEL_185;
    }

    break;
  }

  if (v93 >= *(v12 + 16))
  {
    goto LABEL_211;
  }

  v95 = *(v123 + 8 * v93 + 32);

  v96 = v93 + 1;
  if (!__OFADD__(v93, 1))
  {
    goto LABEL_189;
  }

LABEL_200:
  __break(1u);
LABEL_201:
  v102 = v129;
  v103 = v117;
  v3 = v118;
  v104 = v116;
  v2 = v122;
  if ((v116 & 0x8000000000000000) == 0)
  {
LABEL_217:
    if ((v104 & 0x4000000000000000) != 0)
    {
      goto LABEL_220;
    }

    if (*(v104 + 16) > 0)
    {
      goto LABEL_219;
    }

LABEL_221:

    v106 = v121;
    if (v121 < 0 || (v121 & 0x4000000000000000) != 0)
    {
      v106 = v121;
      if (MEMORY[0x25F8CE500](v121) >= 1)
      {
        goto LABEL_224;
      }
    }

    else if (*(v121 + 16) >= 1)
    {
LABEL_224:

      type metadata accessor for PSESMSSELFEmitter();
      swift_allocObject();
      PSESMSSELFEmitter.emitPSESMS(smsSignals:appLaunchSignals:task:)(v106, v103, v2);
      goto LABEL_230;
    }

    v107 = v120;
    if (v120 < 0 || (v120 & 0x4000000000000000) != 0)
    {
      v107 = v120;
      if (MEMORY[0x25F8CE500](v120) >= 1)
      {
        goto LABEL_229;
      }
    }

    else if (*(v120 + 16) >= 1)
    {
LABEL_229:

      type metadata accessor for PSEGeoSELFEmitter();
      swift_allocObject();
      PSEGeoSELFEmitter.emitPSEGeo(geoSignals:appLaunchSignals:task:)(v107, v103, v2);
      goto LABEL_230;
    }

    if (v94 < 0 || (v94 & 0x4000000000000000) != 0)
    {
      if (MEMORY[0x25F8CE500](v94) >= 1)
      {
        goto LABEL_237;
      }
    }

    else if (*(v94 + 16) >= 1)
    {
LABEL_237:

      type metadata accessor for PSEHomeSELFEmitter();
      swift_allocObject();
      PSEHomeSELFEmitter.emitPSEHome(homeSignals:appLaunchSignals:task:)(v94, v103, v2);

      goto LABEL_231;
    }

    v108 = v119;
    if (v119 < 0 || (v119 & 0x4000000000000000) != 0)
    {
      v108 = v119;
      if (MEMORY[0x25F8CE500](v119) >= 1)
      {
        goto LABEL_242;
      }
    }

    else if (*(v119 + 16) >= 1)
    {
LABEL_242:

      type metadata accessor for PSEAlarmSELFEmitter();
      swift_allocObject();
      PSEAlarmSELFEmitter.emitPSEAlarm(alarmSignals:appLaunchSignals:task:)(v108, v103, v2);
      goto LABEL_230;
    }

    if (v102 < 0 || (v102 & 0x4000000000000000) != 0)
    {
      if (MEMORY[0x25F8CE500](v102) >= 1)
      {
        goto LABEL_247;
      }
    }

    else if (*(v102 + 16) >= 1)
    {
      goto LABEL_247;
    }

    v4 = v103;
    if ((*(*v2 + 280))() == 0xD000000000000014 && 0x800000025ED7FA70 == v109)
    {

      goto LABEL_252;
    }

    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v110)
    {
LABEL_247:

LABEL_252:
      type metadata accessor for PSEAppIntentTranscriptSELFEmitter();
      swift_allocObject();
      PSEAppIntentTranscriptSELFEmitter.emitPSEAppIntentTranscript(appIntentTranscriptSignals:appLaunchSignals:task:)(v102, v3, v2);

      goto LABEL_231;
    }

    if ((a1 & 0x8000000000000000) == 0 && (a1 & 0x4000000000000000) == 0)
    {
      if (*(a1 + 16) >= 1)
      {
LABEL_257:

        type metadata accessor for PSEMediaSELFEmitter();
        swift_allocObject();
        PSEMediaSELFEmitter.emitPSEMedia(mediaSignals:appLaunchSignals:task:)(a1, v4, v2);

        goto LABEL_232;
      }

LABEL_260:

      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static Logger.engagement);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_25ECEC000, v112, v113, "There is no specific PSE signals is available for supported domains for SELF Logging. Submit as Generic PSE (with/without App Launch info)", v114, 2u);
        MEMORY[0x25F8CEE50](v114, -1, -1);
      }

      specialized PSESELFEmitter.applyMissingDonationMonitor(task:)(v122);
      type metadata accessor for PSEGenericSELFEmitter();
      swift_allocObject();
      PSEGenericSELFEmitter.emitPSEGeneric(appLaunchSignals:task:)(v3, v122);
      goto LABEL_231;
    }

LABEL_259:
    if (MEMORY[0x25F8CE500](a1) >= 1)
    {
      goto LABEL_257;
    }

    goto LABEL_260;
  }

LABEL_220:
  if (MEMORY[0x25F8CE500](v104) <= 0)
  {
    goto LABEL_221;
  }

LABEL_219:

  type metadata accessor for PSEPhoneCallSELFEmitter();
  swift_allocObject();
  PSEPhoneCallSELFEmitter.emitPSEPhoneCall(phoneCallSignals:appLaunchSignals:task:)(v104, v103, v2);
LABEL_230:

LABEL_231:

LABEL_232:
}

unint64_t SynapseTypesAlarmRelatedConstants.rawValue.getter(unsigned __int8 a1)
{
  if (a1)
  {
    v1 = 0xD00000000000005DLL;
  }

  else
  {
    v1 = 0xD00000000000005ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000005DLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SynapseTypesAlarmRelatedConstants(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SynapseTypesAlarmRelatedConstants.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SynapseTypesAlarmRelatedConstants.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SynapseTypesAlarmRelatedConstants()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SynapseTypesAlarmRelatedConstants.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SynapseTypesAlarmRelatedConstants()
{
  SynapseTypesAlarmRelatedConstants.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SynapseTypesAlarmRelatedConstants()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SynapseTypesAlarmRelatedConstants.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SynapseTypesAlarmRelatedConstants@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SynapseTypesAlarmRelatedConstants@<X0>(unint64_t *a1@<X8>)
{
  result = SynapseTypesAlarmRelatedConstants.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized SynapseTypesAlarmRelatedConstants.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SynapseTypesAlarmRelatedConstants.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants()
{
  result = lazy protocol witness table cache variable for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants;
  if (!lazy protocol witness table cache variable for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SynapseTypesAlarmRelatedConstants and conformance SynapseTypesAlarmRelatedConstants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SynapseTypesAlarmRelatedConstants] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SynapseTypesAlarmRelatedConstants] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SynapseTypesAlarmRelatedConstants] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18PostSiriEngagement33SynapseTypesAlarmRelatedConstantsOGMd, &_sSay18PostSiriEngagement33SynapseTypesAlarmRelatedConstantsOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SynapseTypesAlarmRelatedConstants] and conformance [A]);
  }

  return result;
}

void PSEPhoneCallSELFEmitter.emitPSEPhoneCall(phoneCallSignals:appLaunchSignals:task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v243 = a1;
  v244 = a3;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v220 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v238 = &v220 - v15;
  MEMORY[0x28223BE20](v14);
  v239 = &v220 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v237 = &v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v236 = &v220 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v220 - v23;
  v25 = type metadata accessor for UUID();
  v241 = *(v25 - 8);
  v26 = *(v241 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v235 = &v220 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v233 = &v220 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v234 = &v220 - v32;
  MEMORY[0x28223BE20](v31);
  v240 = &v220 - v33;
  v34 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v34)
  {
    v35 = v34;
    v242 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v242)
    {
      v232 = [objc_allocWithZone(MEMORY[0x277D5A188]) init];
      if (v232)
      {
        v231 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v231)
        {
          v230 = v3;
          v36 = [objc_allocWithZone(MEMORY[0x277D5A180]) init];
          if (v36)
          {
            v37 = v36;
            v38 = v243;
            v39 = v243 >> 62;
            if (v243 >> 62)
            {
              if (v243 < 0)
              {
                v208 = v243;
              }

              else
              {
                v208 = v243 & 0xFFFFFFFFFFFFFF8;
              }

              v223 = v243 >> 62;
              v209 = MEMORY[0x25F8CE500](v208);
              v39 = v223;
              if (v209)
              {
LABEL_8:
                v221 = v38 & 0xC000000000000001;
                v224 = v37;
                v223 = v39;
                if ((v38 & 0xC000000000000001) != 0)
                {
                  v41 = MEMORY[0x25F8CE460](0, v38);
                  v40 = v41;
                }

                else
                {
                  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_141;
                  }

                  v40 = *(v38 + 32);
                }

                v229 = v40;
                (*(*v40 + 120))(&v247, v41);
                v42 = v231;
                v43 = (*(*v40 + 144))([v231 setEventDonationTimeInSecondsSince2001_]);
                v44 = MEMORY[0x25F8CDFC0](v43);

                [v42 setDomain_];

                v45 = (*(*&v229->flags + 168))();
                v46 = MEMORY[0x25F8CDFC0](v45);

                [v42 setAction_];

                v47 = v229;
                v48 = (*&v229->flags + 216);
                v228 = *v48;
                v227 = v48;
                v49 = v228();
                v50 = *(v49 + 16);
                v222 = v13;
                if (v50 && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v52 & 1) != 0))
                {
                  outlined init with copy of Any(*(v49 + 56) + 32 * v51, &v247);

                  if (swift_dynamicCast())
                  {
                    v53 = v245;
                  }

                  else
                  {
                    v53 = 2;
                  }
                }

                else
                {

                  v53 = 2;
                }

                v56 = v224;
                v57 = v241;
                v58 = (*(*v230 + 104))(v53);
                [v231 setIsDonatedBySiri_];
                if (a2 >> 62)
                {
                  if (a2 < 0)
                  {
                    v219 = a2;
                  }

                  else
                  {
                    v219 = a2 & 0xFFFFFFFFFFFFFF8;
                  }

                  v59 = MEMORY[0x25F8CE500](v219);
                }

                else
                {
                  v59 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v225 = v25;
                if (v59)
                {
                  if ((a2 & 0xC000000000000001) != 0)
                  {
                    v61 = MEMORY[0x25F8CE460](0, a2);
                    v60 = v61;
                  }

                  else
                  {
                    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_144;
                    }

                    v60 = *(a2 + 32);
                  }

                  (*(*v60 + 120))(&v247, v61);
                  v62 = (*(*v60 + 216))([v231 setAppLaunchTimeInSecondsSince2001_]);
                  if (*(v62 + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v64 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v62 + 56) + 32 * v63, &v247);

                    v65 = swift_dynamicCast();
                    v66 = v245;
                    if (!v65)
                    {
                      v66 = 0;
                    }

                    v220 = v66;
                    if (v65)
                    {
                      v67 = v246;
                    }

                    else
                    {
                      v67 = 0;
                    }
                  }

                  else
                  {

                    v220 = 0;
                    v67 = 0;
                  }

                  v68 = (*(*v244 + 256))();
                  if (v68[2])
                  {
                    v69 = v68[4];
                    v70 = v68[5];
                  }

                  else
                  {
                    v69 = 0;
                    v70 = 0;
                  }

                  v72 = v230;
                  v73 = (*(*v230 + 120))(v220, v67, v69, v70);

                  v74 = v231;
                  v75 = (*(*v60 + 168))([v231 setAppFollowup_]);
                  v76 = (*(*v72 + 136))(v75);

                  [v74 setAppLaunchReason_];

                  v25 = v225;
                  v56 = v224;
                  v57 = v241;
                }

                else
                {
                  v71 = [v231 setAppFollowup_];
                }

                v77 = (v228)(v71);
                if (*(v77 + 16) && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(0x617275446C6C6163, 0xEC0000006E6F6974), (v79 & 1) != 0))
                {
                  outlined init with copy of Any(*(v77 + 56) + 32 * v78, &v247);

                  if (swift_dynamicCast())
                  {
                    v80 = *&v245;
LABEL_45:
                    v81 = [v56 setCallDurationInSeconds_];
                    v82 = (v228)(v81);
                    if (*(v82 + 16) && (v83 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7F380), (v84 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v82 + 56) + 32 * v83, &v247);

                      if (swift_dynamicCast())
                      {
                        v85 = *&v245;
LABEL_51:
                        v86 = [v56 setTimeToEstablishInSeconds_];
                        v87 = (v228)(v86);
                        if (*(v87 + 16) && (v88 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000025ED7F3A0), (v89 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v87 + 56) + 32 * v88, &v247);

                          if (swift_dynamicCast())
                          {
                            v90.n128_u64[0] = v245;
                            goto LABEL_57;
                          }
                        }

                        else
                        {
                        }

                        v90.n128_u64[0] = 0;
LABEL_57:
                        v91 = [v56 setRecentCallStatus_];
                        v92 = (v228)(v91);
                        if (*(v92 + 16) && (v93 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7F3C0), (v94 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v92 + 56) + 32 * v93, &v247);

                          if (swift_dynamicCast())
                          {
                            v95.n128_u64[0] = v245;
                          }

                          else
                          {
                            v95.n128_u64[0] = 0;
                          }
                        }

                        else
                        {

                          v95.n128_u64[0] = 0;
                        }

                        [v56 setDisconnectedReason_];
                        if (v223)
                        {
                          v97 = v243;
                          if (v243 < 0)
                          {
                            v99 = v243;
                          }

                          else
                          {
                            v99 = v243 & 0xFFFFFFFFFFFFFF8;
                          }

                          v98 = MEMORY[0x25F8CE500](v99);
                        }

                        else
                        {
                          v97 = v243;
                          v98 = *((v243 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        v226 = v5;
                        if (v98 >= 2)
                        {
                          if (v221)
                          {
                            v100 = MEMORY[0x25F8CE460](1, v97);
                          }

                          else
                          {
                            if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                            {
                              __break(1u);
                              return;
                            }

                            v100 = *(v97 + 40);
                          }

                          (*(*v100 + 120))(&v247);

                          v96.n128_f64[0] = v248;
                          if (v248 <= 30.0)
                          {
                            if (v221)
                            {
                              v101 = MEMORY[0x25F8CE460](1, v243, v248);
                            }

                            else
                            {
                              v101 = *(v243 + 40);
                            }

                            v102 = (*(*v101 + 216))();

                            if (*(v102 + 16) && (v103 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v104 & 1) != 0))
                            {
                              outlined init with copy of Any(*(v102 + 56) + 32 * v103, &v247);

                              if ((swift_dynamicCast() & 1) != 0 && (v245 & 1) == 0)
                              {
                                [v56 setHasUserInitiatedFollowup_];
                                v105 = [v231 setHasUserInitiatedFollowup_];
                                v106 = (v228)(v105);
                                if (v221)
                                {
                                  v107 = MEMORY[0x25F8CE460](1, v243);
                                }

                                else
                                {
                                  v107 = *(v243 + 40);
                                }

                                v202 = (*(*v107 + 216))();

                                v203 = (*(*v230 + 168))(v106, v202);

                                v204 = [v224 setContactMatch_];
                                v205 = (v228)(v204);
                                if (v221)
                                {
                                  v206 = MEMORY[0x25F8CE460](1, v243);
                                }

                                else
                                {
                                  v206 = *(v243 + 40);
                                }

                                v207 = (*(*v206 + 216))();

                                v56 = v224;
                                (*(*v230 + 160))(v205, v207, v224);

                                v25 = v225;
                                v112 = v231;
LABEL_93:
                                v113 = v232;
                                [v232 setCommonSignal_];
                                [v113 setCallSignal_];
                                v114 = v240;
                                UUID.init()();
                                v115 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                isa = UUID._bridgeToObjectiveC()().super.isa;
                                v117 = [v115 initWithNSUUID_];

                                v119 = (v57 + 1);
                                v118 = v57[1];
                                v118(v114, v25);
                                v120 = v242;
                                [v242 setPseId_];

                                (*(*v244 + 160))();
                                UUID.init(uuidString:)();

                                v121 = v25;
                                v122 = v57[6];
                                v228 = (v57 + 6);
                                v123 = v122(v24, 1, v121);
                                v243 = v118;
                                if (v123 == 1)
                                {
                                  v124 = outlined destroy of UUID?(v24);
                                }

                                else
                                {
                                  v125 = v57[4];
                                  v126 = v122;
                                  v127 = v234;
                                  v125(v234, v24, v121);
                                  v128 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                  v129 = UUID._bridgeToObjectiveC()().super.isa;
                                  v130 = [v128 initWithNSUUID_];

                                  [v120 setUiSessionId_];
                                  v131 = v127;
                                  v122 = v126;
                                  v124 = (v118)(v131, v121);
                                }

                                v132 = ((*(*v244 + 208))(v124) + 16);
                                v133 = *v132;
                                v47 = &SiriExecutionTask;
                                v227 = v119;
                                if (v133)
                                {
                                  v134 = &v132[2 * v133];
                                  v135 = *v134;
                                  v136 = v134[1];

                                  v137 = v236;
                                  UUID.init(uuidString:)();

                                  v138 = v225;
                                  if (v122(v137, 1, v225) != 1)
                                  {
                                    v154 = v233;
                                    (*(v241 + 32))(v233, v137, v138);
                                    v155 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                    v156 = UUID._bridgeToObjectiveC()().super.isa;
                                    v157 = [v155 initWithNSUUID_];

                                    [v242 setOriginalLastRequestId_];
                                    v158 = v154;
                                    v47 = &SiriExecutionTask;
                                    v153 = v243;
                                    v152 = (v243)(v158, v138);
                                    v148 = v237;
                                    goto LABEL_106;
                                  }

                                  outlined destroy of UUID?(v137);
                                }

                                else
                                {
                                }

                                if (one-time initialization token for engagement != -1)
                                {
                                  swift_once();
                                }

                                v139 = type metadata accessor for Logger();
                                __swift_project_value_buffer(v139, static Logger.engagement);
                                v140 = *MEMORY[0x277D615E0];
                                v141 = type metadata accessor for EngagementSignalCollectionError();
                                v142 = v239;
                                (*(*(v141 - 8) + 104))(v239, v140, v141);
                                (*(v6 + 104))(v142, *MEMORY[0x277D616A8], v226);
                                v143 = Logger.logObject.getter();
                                v144 = static os_log_type_t.debug.getter();
                                if (os_log_type_enabled(v143, v144))
                                {
                                  v145 = swift_slowAlloc();
                                  v146 = swift_slowAlloc();
                                  v247 = *&v146;
                                  *v145 = 136315138;
                                  *(v145 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v247);
                                  _os_log_impl(&dword_25ECEC000, v143, v144, "%s", v145, 0xCu);
                                  __swift_destroy_boxed_opaque_existential_0(v146);
                                  v147 = v146;
                                  v47 = &SiriExecutionTask;
                                  MEMORY[0x25F8CEE50](v147, -1, -1);
                                  MEMORY[0x25F8CEE50](v145, -1, -1);
                                }

                                v148 = v237;
                                type metadata accessor for SiriTaskEngagementUtils();
                                v149 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                                v150 = v239;
                                MEMORY[0x25F8CDB30](v239, v149, v151);

                                v152 = (*(v6 + 8))(v150, v226);
                                v153 = v243;
LABEL_106:
                                (*(*v244 + 184))(v152);
                                UUID.init(uuidString:)();

                                v159 = v225;
                                if (v122(v148, 1, v225) != 1)
                                {
                                  v175 = v47;
                                  v176 = v235;
                                  (*(v241 + 32))(v235, v148, v159);
                                  v177 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                                  v178 = UUID._bridgeToObjectiveC()().super.isa;
                                  v179 = [v177 initWithNSUUID_];

                                  v180 = v242;
                                  [v242 setTaskId_];

                                  v181 = v176;
                                  v47 = v175;
                                  v174 = v153(v181, v159);
                                  a2 = v180;
                                  v13 = v232;
                                  goto LABEL_112;
                                }

                                outlined destroy of UUID?(v148);
                                a2 = v242;
                                if (*&v47[20].flags == -1)
                                {
LABEL_108:
                                  v160 = type metadata accessor for Logger();
                                  __swift_project_value_buffer(v160, static Logger.engagement);
                                  v161 = *MEMORY[0x277D615C8];
                                  v162 = type metadata accessor for EngagementSignalCollectionError();
                                  v163 = v238;
                                  (*(*(v162 - 8) + 104))(v238, v161, v162);
                                  (*(v6 + 104))(v163, *MEMORY[0x277D616A8], v226);
                                  v164 = Logger.logObject.getter();
                                  v165 = static os_log_type_t.debug.getter();
                                  if (os_log_type_enabled(v164, v165))
                                  {
                                    v166 = swift_slowAlloc();
                                    v167 = a2;
                                    v168 = v47;
                                    v169 = swift_slowAlloc();
                                    v247 = *&v169;
                                    *v166 = 136315138;
                                    *(v166 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v247);
                                    _os_log_impl(&dword_25ECEC000, v164, v165, "%s", v166, 0xCu);
                                    __swift_destroy_boxed_opaque_existential_0(v169);
                                    v170 = v169;
                                    v47 = v168;
                                    a2 = v167;
                                    MEMORY[0x25F8CEE50](v170, -1, -1);
                                    MEMORY[0x25F8CEE50](v166, -1, -1);
                                  }

                                  v13 = v232;
                                  type metadata accessor for SiriTaskEngagementUtils();
                                  v171 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                                  v172 = v238;
                                  MEMORY[0x25F8CDB30](v238, v171, v173);

                                  v174 = (*(v6 + 8))(v172, v226);
LABEL_112:
                                  v182 = (*(*v244 + 328))(v174);
                                  v183 = (*(*v182 + 104))(v182);

                                  v184 = v230;
                                  v185 = [a2 setSiriEngagementTaskSuccess_];
                                  [a2 setTriggerOrigin_];
                                  [v35 setEventMetadata_];
                                  [v35 setCallSignalGenerated_];
                                  if (*&v47[20].flags == -1)
                                  {
LABEL_113:
                                    v186 = type metadata accessor for Logger();
                                    __swift_project_value_buffer(v186, static Logger.engagement);
                                    v187 = *MEMORY[0x277D61638];
                                    v188 = type metadata accessor for SELFPSELogged();
                                    v189 = v222;
                                    (*(*(v188 - 8) + 104))(v222, v187, v188);
                                    v190 = v189;
                                    (*(v6 + 104))(v189, *MEMORY[0x277D61658], v226);
                                    v191 = Logger.logObject.getter();
                                    v192 = static os_log_type_t.debug.getter();
                                    if (os_log_type_enabled(v191, v192))
                                    {
                                      v193 = swift_slowAlloc();
                                      v194 = swift_slowAlloc();
                                      v247 = *&v194;
                                      *v193 = 136315138;
                                      *(v193 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000025ED80E10, &v247);
                                      _os_log_impl(&dword_25ECEC000, v191, v192, "%s", v193, 0xCu);
                                      __swift_destroy_boxed_opaque_existential_0(v194);
                                      MEMORY[0x25F8CEE50](v194, -1, -1);
                                      v195 = v193;
                                      v13 = v232;
                                      MEMORY[0x25F8CEE50](v195, -1, -1);
                                    }

                                    type metadata accessor for SiriTaskEngagementUtils();
                                    v196 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                                    MEMORY[0x25F8CDB30](v190, v196, v197);

                                    (*(v6 + 8))(v190, v226);
                                    v198 = [objc_opt_self() sharedAnalytics];
                                    v199 = [v198 defaultMessageStream];

                                    v200 = v240;
                                    UUID.init()();
                                    v201 = UUID._bridgeToObjectiveC()().super.isa;
                                    (v243)(v200, v225);
                                    [v199 emitMessage:v35 isolatedStreamUUID:v201];

                                    return;
                                  }

LABEL_141:
                                  swift_once();
                                  goto LABEL_113;
                                }

LABEL_144:
                                swift_once();
                                goto LABEL_108;
                              }
                            }

                            else
                            {
                            }
                          }
                        }

                        v108 = (v228)(v96);
                        if (*(v108 + 16) && (v109 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v110 & 1) != 0))
                        {
                          outlined init with copy of Any(*(v108 + 56) + 32 * v109, &v247);

                          if ((swift_dynamicCast() & 1) != 0 && (v245 & 1) == 0)
                          {
                            v111 = 1;
LABEL_92:
                            [v56 setHasUserInitiatedFollowup_];
                            v112 = v231;
                            [v231 setHasUserInitiatedFollowup_];
                            [v56 setContactMatch_];
                            goto LABEL_93;
                          }
                        }

                        else
                        {
                        }

                        v111 = 0;
                        goto LABEL_92;
                      }
                    }

                    else
                    {
                    }

                    v85 = -1.0;
                    goto LABEL_51;
                  }
                }

                else
                {
                }

                v80 = -1.0;
                goto LABEL_45;
              }
            }

            else if (*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_8;
            }

            v35 = v231;
            v54 = v242;
          }

          else
          {
            v37 = v35;
            v35 = v242;
            v54 = v231;
          }

          v55 = v232;
        }

        else
        {
          v55 = v242;
          v54 = v232;
        }

        v35 = v55;
      }

      else
      {
        v54 = v242;
      }

      v35 = v54;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v210 = type metadata accessor for Logger();
  __swift_project_value_buffer(v210, static Logger.engagement);
  v211 = *MEMORY[0x277D615B0];
  v212 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v212 - 8) + 104))(v10, v211, v212);
  (*(v6 + 104))(v10, *MEMORY[0x277D616A8], v5);
  v213 = Logger.logObject.getter();
  v214 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v213, v214))
  {
    v215 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v247 = *&v216;
    *v215 = 136315138;
    *(v215 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x800000025ED80DD0, &v247);
    _os_log_impl(&dword_25ECEC000, v213, v214, "%s", v215, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v216);
    MEMORY[0x25F8CEE50](v216, -1, -1);
    MEMORY[0x25F8CEE50](v215, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v217 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v10, v217, v218);

  (*(v6 + 8))(v10, v5);
}

uint64_t PSEPhoneCallSELFEmitter.getPSEPhoneContactMatch(firstPhoneSignalData:secondPhoneSignalData:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a2 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v7 & 1) == 0) || (outlined init with copy of Any(*(a2 + 56) + 32 * v6, v11), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  if (!*(v10 + 16))
  {

    goto LABEL_11;
  }

  v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v10, v10);

  if (v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t PSEPhoneCallSELFEmitter.getRecentCallStatus(recentCallStatus:)(double a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 1.0)
  {
    return 1;
  }

  if (a1 == 2.0)
  {
    return 2;
  }

  if (a1 == 4.0)
  {
    return 3;
  }

  if (a1 == 16.0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 8.0)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t PSEPhoneCallSELFEmitter.getDisconnectedReason(disconnectedReason:)(double a1)
{
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 == 1.0)
  {
    return 4;
  }

  if (a1 == 2.0)
  {
    return 2;
  }

  if (a1 == 3.0)
  {
    return 3;
  }

  if (a1 == 4.0)
  {
    return 18;
  }

  if (a1 == 5.0)
  {
    return 6;
  }

  if (a1 == 6.0)
  {
    return 1;
  }

  if (a1 == 7.0)
  {
    return 19;
  }

  if (a1 == 8.0)
  {
    return 14;
  }

  if (a1 == 9.0)
  {
    return 15;
  }

  if (a1 == 10.0)
  {
    return 16;
  }

  if (a1 == 11.0)
  {
    return 13;
  }

  if (a1 == 12.0)
  {
    return 5;
  }

  if (a1 == 13.0)
  {
    return 8;
  }

  if (a1 == 14.0)
  {
    return 11;
  }

  if (a1 == 15.0)
  {
    return 7;
  }

  if (a1 == 16.0)
  {
    return 17;
  }

  if (a1 == 17.0)
  {
    return 12;
  }

  if (a1 == 18.0)
  {
    return 9;
  }

  if (a1 == 19.0)
  {
    return 10;
  }

  if (a1 == 20.0)
  {
    return 20;
  }

  if (a1 == 21.0)
  {
    return 21;
  }

  if (a1 == 22.0)
  {
    return 22;
  }

  if (a1 == 23.0)
  {
    return 23;
  }

  if (a1 == 24.0)
  {
    return 24;
  }

  if (a1 == 25.0)
  {
    return 25;
  }

  if (a1 == 26.0)
  {
    return 26;
  }

  if (a1 == 27.0)
  {
    return 27;
  }

  if (a1 == 28.0)
  {
    return 28;
  }

  if (a1 == 29.0)
  {
    return 29;
  }

  if (a1 == 30.0)
  {
    return 30;
  }

  if (a1 == 31.0)
  {
    return 31;
  }

  if (a1 == 32.0)
  {
    return 32;
  }

  if (a1 == 33.0)
  {
    return 33;
  }

  if (a1 == 34.0)
  {
    return 34;
  }

  if (a1 == 35.0)
  {
    return 35;
  }

  if (a1 == 36.0)
  {
    return 36;
  }

  if (a1 == 1000.0)
  {
    return 1000;
  }

  if (a1 == 1001.0)
  {
    return 1001;
  }

  return 0;
}

void PSESMSSELFEmitter.emitPSESMS(smsSignals:appLaunchSignals:task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v220 = a1;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v197 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v215 = v197 - v15;
  MEMORY[0x28223BE20](v14);
  v216 = v197 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v214 = v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v213 = v197 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v197 - v23;
  v219 = type metadata accessor for UUID();
  v217 = *(v219 - 8);
  v25 = *(v217 + 64);
  v26 = MEMORY[0x28223BE20](v219);
  v212 = v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v210 = v197 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v211 = v197 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v197 - v32;
  v34 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v34)
  {
    v35 = v34;
    v208 = v33;
    v36 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v36)
    {
      v37 = v36;
      v209 = [objc_allocWithZone(MEMORY[0x277D5A200]) init];
      if (v209)
      {
        v207 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v207)
        {
          v38 = [objc_allocWithZone(MEMORY[0x277D5A1F8]) init];
          if (v38)
          {
            v39 = v220;
            v40 = (v220 >> 62);
            v205 = v38;
            if (v220 >> 62)
            {
              if (v220 < 0)
              {
                v184 = v220;
              }

              else
              {
                v184 = v220 & 0xFFFFFFFFFFFFFF8;
              }

              v185 = (v220 >> 62);
              v186 = MEMORY[0x25F8CE500](v184);
              v40 = v185;
              v39 = v220;
              if (v186)
              {
LABEL_8:
                v203 = v39 & 0xC000000000000001;
                v199 = v13;
                v206 = v40;
                v198 = v5;
                if ((v39 & 0xC000000000000001) != 0)
                {
                  v43 = MEMORY[0x25F8CE460](0);
                  v41 = v207;
                }

                else
                {
                  v41 = v207;
                  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_115;
                  }

                  v42 = *(v39 + 32);
                }

                v44 = v43;
                (*(*v43 + 120))(&v223);
                v45 = (*(*v44 + 144))([v41 setEventDonationTimeInSecondsSince2001_]);
                v5 = v41;
                v46 = MEMORY[0x25F8CDFC0](v45);

                [v41 setDomain_];

                v47 = (*(*v44 + 168))();
                v48 = MEMORY[0x25F8CDFC0](v47);

                [v41 setAction_];

                v49 = *(*v44 + 216);
                v50 = *v44 + 216;
                v200 = v44;
                v201 = v49;
                v197[1] = v50;
                v51 = v49();
                if (*(v51 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v53 & 1) != 0))
                {
                  outlined init with copy of Any(*(v51 + 56) + 32 * v52, &v223);

                  if (swift_dynamicCast())
                  {
                    v54 = v221;
                  }

                  else
                  {
                    v54 = 2;
                  }
                }

                else
                {

                  v54 = 2;
                }

                [v41 setIsDonatedBySiri_];
                if (a2 >> 62)
                {
                  if (a2 < 0)
                  {
                    v196 = a2;
                  }

                  else
                  {
                    v196 = a2 & 0xFFFFFFFFFFFFFF8;
                  }

                  v57 = MEMORY[0x25F8CE500](v196);
                }

                else
                {
                  v57 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v204 = a3;
                if (v57)
                {
                  if ((a2 & 0xC000000000000001) != 0)
                  {
                    v59 = MEMORY[0x25F8CE460](0, a2);
                    v58 = v59;
                  }

                  else
                  {
                    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_118;
                    }

                    v58 = *(a2 + 32);
                  }

                  (*(*v58 + 120))(&v223, v59);
                  v60 = (*(*v58 + 216))([v207 setAppLaunchTimeInSecondsSince2001_]);
                  if (*(v60 + 16) && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v62 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v60 + 56) + 32 * v61, &v223);

                    v63 = swift_dynamicCast();
                    v64 = v221;
                    if (!v63)
                    {
                      v64 = 0;
                    }

                    v202 = v64;
                    if (v63)
                    {
                      v65 = v222;
                    }

                    else
                    {
                      v65 = 0;
                    }
                  }

                  else
                  {

                    v202 = 0;
                    v65 = 0;
                  }

                  v66 = (*(*a3 + 256))();
                  if (v66[2])
                  {
                    v67 = v66[4];
                    v68 = v66[5];
                  }

                  else
                  {
                    v67 = 0;
                    v68 = 0;
                  }

                  v70 = v218;
                  v71 = (*(*v218 + 120))(v202, v65, v67, v68);

                  v72 = v207;
                  v73 = (*(*v58 + 168))([v207 setAppFollowup_]);
                  v74 = (*(*v70 + 136))(v73);

                  [v72 setAppLaunchReason_];
                }

                else
                {
                  [v41 setAppFollowup_];
                }

                v75 = v209;
                v76 = v220;
                if (v206)
                {
                  if (v220 < 0)
                  {
                    v78 = v220;
                  }

                  else
                  {
                    v78 = v220 & 0xFFFFFFFFFFFFFF8;
                  }

                  v77 = MEMORY[0x25F8CE500](v78);
                  v76 = v220;
                }

                else
                {
                  v77 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v79 = v207;
                a3 = v204;
                v206 = v37;
                v80 = v208;
                if (v77 >= 2)
                {
                  if (v203)
                  {
                    v81 = MEMORY[0x25F8CE460](1, v76);
                  }

                  else
                  {
                    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                    {
                      __break(1u);
                      return;
                    }

                    v81 = *(v76 + 40);
                  }

                  (*(*v81 + 120))(&v223);

                  v69 = v224;
                  if (v224 <= 30.0)
                  {
                    if (v203)
                    {
                      v82 = MEMORY[0x25F8CE460](1, v220, v224);
                    }

                    else
                    {
                      v82 = *(v220 + 40);
                    }

                    v83 = (*(*v82 + 216))();

                    if (*(v83 + 16) && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v85 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v83 + 56) + 32 * v84, &v223);

                      if ((swift_dynamicCast() & 1) != 0 && (v221 & 1) == 0)
                      {
                        [v205 setHasUserInitiatedFollowup_];
                        [v79 setHasUserInitiatedFollowup_];
                        if (v203)
                        {
                          v86 = MEMORY[0x25F8CE460](1, v220);
                        }

                        else
                        {
                          v86 = *(v220 + 40);
                        }

                        (*(*v86 + 120))(&v223);

                        [v205 setUserFollowupEventDonationTimeInSecondsSince2001_];
                        if (v203)
                        {
                          v169 = MEMORY[0x25F8CE460](1, v220);
                        }

                        else
                        {
                          v169 = *(v220 + 40);
                        }

                        v170 = (*(*v169 + 168))();
                        v172 = v171;

                        v173 = (*(*v218 + 176))(v170, v172);

                        v174 = [v205 setMessageUserFollowupAction_];
                        v175 = (v201)(v174);
                        if (v203)
                        {
                          v176 = MEMORY[0x25F8CE460](1, v220);
                        }

                        else
                        {
                          v176 = *(v220 + 40);
                        }

                        v177 = (*(*v176 + 216))();

                        v178 = (*(*v218 + 168))(v175, v177);

                        v179 = [v205 setContactMatch_];
                        v180 = (v201)(v179);
                        if (v203)
                        {
                          v181 = MEMORY[0x25F8CE460](1, v220);
                        }

                        else
                        {
                          v181 = *(v220 + 40);
                        }

                        v182 = (*(*v181 + 216))();

                        v183 = v180;
                        v87 = v205;
                        (*(*v218 + 160))(v183, v182, v205);

                        v79 = v207;
LABEL_61:
                        [v75 setCommonSignal_];
                        [v75 setMessageSignal_];
                        UUID.init()();
                        v88 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                        isa = UUID._bridgeToObjectiveC()().super.isa;
                        v90 = [v88 initWithNSUUID_];

                        v91 = v217;
                        v93 = (v217 + 8);
                        v92 = *(v217 + 8);
                        v94 = v80;
                        v37 = v219;
                        v92(v94, v219);
                        [v206 setPseId_];

                        (*(*a3 + 160))();
                        UUID.init(uuidString:)();
                        v95 = v91;

                        v96 = *(v91 + 48);
                        v203 = v91 + 48;
                        v202 = v96;
                        v97 = v96(v24, 1, v37);
                        v220 = v92;
                        if (v97 == 1)
                        {
                          v98 = outlined destroy of UUID?(v24);
                        }

                        else
                        {
                          v99 = v92;
                          v100 = a3;
                          v101 = v211;
                          (*(v95 + 32))(v211, v24, v37);
                          v102 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          v103 = UUID._bridgeToObjectiveC()().super.isa;
                          v104 = [v102 initWithNSUUID_];

                          [v206 setUiSessionId_];
                          v105 = v101;
                          a3 = v100;
                          v98 = v99(v105, v37);
                        }

                        v5 = v198;
                        v106 = ((*(*a3 + 208))(v98) + 16);
                        if (*v106)
                        {
                          v107 = &v106[2 * *v106];
                          v108 = *v107;
                          v109 = v107[1];

                          v37 = v219;

                          v110 = v213;
                          UUID.init(uuidString:)();

                          if (v202(v110, 1, v37) != 1)
                          {
                            v126 = v210;
                            (*(v217 + 32))(v210, v110, v37);
                            v127 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                            v128 = UUID._bridgeToObjectiveC()().super.isa;
                            v129 = [v127 initWithNSUUID_];

                            [v206 setOriginalLastRequestId_];
                            v125 = v220;
                            v124 = (v220)(v126, v37);
                            v120 = v214;
                            goto LABEL_74;
                          }

                          outlined destroy of UUID?(v110);
                        }

                        else
                        {
                        }

                        if (one-time initialization token for engagement != -1)
                        {
                          swift_once();
                        }

                        v111 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v111, static Logger.engagement);
                        v112 = *MEMORY[0x277D615E0];
                        v113 = type metadata accessor for EngagementSignalCollectionError();
                        v114 = v216;
                        (*(*(v113 - 8) + 104))(v216, v112, v113);
                        (*(v6 + 104))(v114, *MEMORY[0x277D616A8], v5);
                        v115 = Logger.logObject.getter();
                        v116 = static os_log_type_t.debug.getter();
                        if (os_log_type_enabled(v115, v116))
                        {
                          v117 = swift_slowAlloc();
                          v118 = swift_slowAlloc();
                          v223 = *&v118;
                          *v117 = 136315138;
                          *(v117 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v223);
                          _os_log_impl(&dword_25ECEC000, v115, v116, "%s", v117, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v118);
                          v119 = v118;
                          v37 = v219;
                          MEMORY[0x25F8CEE50](v119, -1, -1);
                          MEMORY[0x25F8CEE50](v117, -1, -1);
                        }

                        v120 = v214;
                        type metadata accessor for SiriTaskEngagementUtils();
                        v121 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                        v122 = v216;
                        MEMORY[0x25F8CDB30](v216, v121, v123);

                        v124 = (*(v6 + 8))(v122, v5);
                        a3 = v204;
                        v125 = v220;
LABEL_74:
                        (*(*a3 + 184))(v124);
                        UUID.init(uuidString:)();

                        v130 = v202(v120, 1, v37);
                        v201 = v93;
                        if (v130 != 1)
                        {
                          v145 = v212;
                          (*(v217 + 32))(v212, v120, v37);
                          v146 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          v147 = UUID._bridgeToObjectiveC()().super.isa;
                          v148 = [v146 initWithNSUUID_];

                          v144 = v206;
                          [v206 setTaskId_];

                          v143 = v125(v145, v37);
                          a2 = v209;
                          goto LABEL_80;
                        }

                        outlined destroy of UUID?(v120);
                        a2 = v209;
                        if (one-time initialization token for engagement == -1)
                        {
LABEL_76:
                          v131 = type metadata accessor for Logger();
                          __swift_project_value_buffer(v131, static Logger.engagement);
                          v132 = *MEMORY[0x277D615C8];
                          v133 = type metadata accessor for EngagementSignalCollectionError();
                          v134 = v215;
                          (*(*(v133 - 8) + 104))(v215, v132, v133);
                          (*(v6 + 104))(v134, *MEMORY[0x277D616A8], v5);
                          v135 = Logger.logObject.getter();
                          v136 = static os_log_type_t.debug.getter();
                          if (os_log_type_enabled(v135, v136))
                          {
                            v137 = swift_slowAlloc();
                            v138 = swift_slowAlloc();
                            v223 = *&v138;
                            *v137 = 136315138;
                            *(v137 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v223);
                            _os_log_impl(&dword_25ECEC000, v135, v136, "%s", v137, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v138);
                            v139 = v138;
                            v37 = v219;
                            MEMORY[0x25F8CEE50](v139, -1, -1);
                            MEMORY[0x25F8CEE50](v137, -1, -1);
                          }

                          type metadata accessor for SiriTaskEngagementUtils();
                          v140 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                          v141 = v215;
                          MEMORY[0x25F8CDB30](v215, v140, v142);

                          v143 = (*(v6 + 8))(v141, v5);
                          v144 = v206;
LABEL_80:
                          v149 = (*(*a3 + 328))(v143);
                          v150 = (*(*v149 + 104))(v149);

                          v151 = v218;
                          v152 = [v144 setSiriEngagementTaskSuccess_];
                          [v144 setTriggerOrigin_];
                          [v35 setEventMetadata_];
                          [v35 setMessageSignalGenerated_];
                          if (one-time initialization token for engagement == -1)
                          {
LABEL_81:
                            v153 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v153, static Logger.engagement);
                            v154 = *MEMORY[0x277D61630];
                            v155 = type metadata accessor for SELFPSELogged();
                            v156 = v199;
                            (*(*(v155 - 8) + 104))(v199, v154, v155);
                            v157 = v156;
                            (*(v6 + 104))(v156, *MEMORY[0x277D61658], v5);
                            v158 = Logger.logObject.getter();
                            v159 = static os_log_type_t.debug.getter();
                            if (os_log_type_enabled(v158, v159))
                            {
                              v160 = swift_slowAlloc();
                              v161 = swift_slowAlloc();
                              v223 = *&v161;
                              *v160 = 136315138;
                              *(v160 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000025ED80EC0, &v223);
                              _os_log_impl(&dword_25ECEC000, v158, v159, "%s", v160, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v161);
                              v162 = v161;
                              v37 = v219;
                              MEMORY[0x25F8CEE50](v162, -1, -1);
                              MEMORY[0x25F8CEE50](v160, -1, -1);
                            }

                            type metadata accessor for SiriTaskEngagementUtils();
                            v163 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                            MEMORY[0x25F8CDB30](v157, v163, v164);

                            (*(v6 + 8))(v157, v5);
                            v165 = [objc_opt_self() sharedAnalytics];
                            v166 = [v165 defaultMessageStream];

                            v167 = v208;
                            UUID.init()();
                            v168 = UUID._bridgeToObjectiveC()().super.isa;
                            (v220)(v167, v37);
                            [v166 emitMessage:v35 isolatedStreamUUID:v168];

                            return;
                          }

LABEL_115:
                          swift_once();
                          goto LABEL_81;
                        }

LABEL_118:
                        swift_once();
                        goto LABEL_76;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v87 = v205;
                [v205 setHasUserInitiatedFollowup_];
                [v79 setHasUserInitiatedFollowup_];
                [v87 setMessageUserFollowupAction_];
                [v87 setContactMatch_];
                goto LABEL_61;
              }
            }

            else if (*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_8;
            }

            v56 = v205;
            v35 = v207;
          }

          else
          {
            v56 = v35;
            v35 = v37;
            v37 = v207;
          }

          v55 = v37;

          v37 = v209;
        }

        else
        {
          v55 = v209;
        }

        v35 = v37;
        v37 = v55;
      }

      v35 = v37;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v187 = type metadata accessor for Logger();
  __swift_project_value_buffer(v187, static Logger.engagement);
  v188 = *MEMORY[0x277D615B0];
  v189 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v189 - 8) + 104))(v10, v188, v189);
  (*(v6 + 104))(v10, *MEMORY[0x277D616A8], v5);
  v190 = Logger.logObject.getter();
  v191 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v190, v191))
  {
    v192 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v223 = *&v193;
    *v192 = 136315138;
    *(v192 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000025ED80E90, &v223);
    _os_log_impl(&dword_25ECEC000, v190, v191, "%s", v192, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v193);
    MEMORY[0x25F8CEE50](v193, -1, -1);
    MEMORY[0x25F8CEE50](v192, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v194 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v10, v194, v195);

  (*(v6 + 8))(v10, v5);
}

uint64_t PSESMSSELFEmitter.getPSEMessageContactMatch(firstSMSSignalData:secondSMSSignalData:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAD0);
    if (v5)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        if (*(a2 + 16))
        {
          v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAF0);
          if (v7)
          {
            outlined init with copy of Any(*(a2 + 56) + 32 * v6, v17);
            if (swift_dynamicCast())
            {
              if (*(v16 + 16))
              {
                v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v16);

                v9 = (v8 & 1) == 0;
                goto LABEL_18;
              }
            }
          }
        }
      }
    }
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v10, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a2 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v13 & 1) == 0) || (outlined init with copy of Any(*(a2 + 56) + 32 * v12, v17), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

    return 0;
  }

  if (!*(v16 + 16))
  {

    goto LABEL_21;
  }

  v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v16);

  v9 = (v14 & 1) == 0;
LABEL_18:
  if (v9)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t PSESMSSELFEmitter.getPSEMessageUserFollowupAction(userAction:)()
{
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    return 3;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 4;
  }

  if (StringProtocol.contains<A>(_:)())
  {
    return 2;
  }

  return 0;
}

uint64_t closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.engagement);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a5;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    type metadata accessor for AbstractActivityCollector();

    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25ECEC000, v11, v12, "Starting %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v18 = v14;
    a5 = v24;
    MEMORY[0x25F8CEE50](v18, -1, -1);
    MEMORY[0x25F8CEE50](v13, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v20 = *(*a1 + 88);

  v21 = a2;

  v22 = a5;
  v20(partial apply for closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:), v19);
}

void closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v41 = a4;
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v43 - 8);
  v14 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.engagement);

  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a5;
    v24 = v23;
    v44 = a2;
    aBlock[0] = v23;
    *v22 = 136315394;
    type metadata accessor for AbstractActivityCollector();
    v38 = v11;

    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v44 = a1;
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, aBlock);
    v11 = v38;

    *(v22 + 14) = v31;
    _os_log_impl(&dword_25ECEC000, v19, v20, "%s completed with error? %s (nil is good)", v22, 0x16u);
    swift_arrayDestroy();
    v32 = v24;
    a5 = v37;
    MEMORY[0x25F8CEE50](v32, -1, -1);
    v33 = v22;
    v10 = v39;
    MEMORY[0x25F8CEE50](v33, -1, -1);
  }

  if (a1)
  {
    static DispatchWorkItemFlags.barrier.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = v41;
    *(v34 + 24) = a5;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_46;
    v35 = _Block_copy(aBlock);

    v36 = v42;
    static DispatchQoS.unspecified.getter();
    MEMORY[0x25F8CE2F0](0, v36, v16, v35);
    _Block_release(v35);
    (*(v11 + 8))(v36, v10);
    (*(v40 + 8))(v16, v43);
  }

  dispatch_group_leave(a6);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t closure #1 in closure #1 in closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *(a1 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  *(a1 + 16) = v4;
  return swift_endAccess();
}

void closure #3 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for ReliabilityCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v37[1] = a3;
    v38 = a2;
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.engagement);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v39 = 0xD000000000000022;
    v40 = 0x800000025ED81170;
    swift_beginAccess();
    v12 = *(a1 + 16);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v14 = MEMORY[0x25F8CE190](v12, v13);
    v16 = v15;

    MEMORY[0x25F8CE090](v14, v16);

    v17 = v39;
    v18 = v40;
    v19 = *MEMORY[0x277D615C0];
    v20 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v20 - 8) + 104))(v10, v19, v20);
    (*(v7 + 104))(v10, *MEMORY[0x277D616A8], v6);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37[0] = v6;
      v24 = v17;
      v25 = v23;
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v18, &v39);
      _os_log_impl(&dword_25ECEC000, v21, v22, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x25F8CEE50](v26, -1, -1);
      v6 = v37[0];
      MEMORY[0x25F8CEE50](v25, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v27 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v10, v27, v28);

    (*(v7 + 8))(v10, v6);
    v29 = objc_opt_self();
    swift_beginAccess();
    v30 = *(a1 + 16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v32 = [v29 getErrorFailedCollectors_];

    v38(v32, 1);
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.engagement);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_25ECEC000, v34, v35, "All collectors run successfully", v36, 2u);
      MEMORY[0x25F8CEE50](v36, -1, -1);
    }

    a2(1, 0);
  }
}

uint64_t ActivityDispatcher.getJSONObjectFromCollectorDefinitions(collectorDefinitions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v75 = a3;
  v80 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v72 - v14;
  v16 = type metadata accessor for String.Encoding();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.engagement);
    v37 = *MEMORY[0x277D615B8];
    v38 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v38 - 8) + 104))(v13, v37, v38);
    (*(v6 + 104))(v13, *MEMORY[0x277D616A8], v5);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v78 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000025ED80F30, &v78);
      _os_log_impl(&dword_25ECEC000, v39, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x25F8CEE50](v42, -1, -1);
      MEMORY[0x25F8CEE50](v41, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v43 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v13, v43, v44);

    result = (*(v6 + 8))(v13, v5);
    goto LABEL_13;
  }

  v74 = v5;
  static String.Encoding.utf8.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;
  (*(v17 + 8))(v20, v16);
  if (v23 >> 60 == 15)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.engagement);
    *&v78 = 0;
    *(&v78 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    MEMORY[0x25F8CE090](0xD00000000000004DLL, 0x800000025ED80F60);
    MEMORY[0x25F8CE090](a1, a2);
    v25 = v78;
    v26 = *MEMORY[0x277D615E8];
    v27 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v27 - 8) + 104))(v15, v26, v27);
    v28 = v74;
    (*(v6 + 104))(v15, *MEMORY[0x277D616A8], v74);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v78 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, *(&v25 + 1), &v78);
      _os_log_impl(&dword_25ECEC000, v29, v30, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x25F8CEE50](v32, -1, -1);
      MEMORY[0x25F8CEE50](v31, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v33 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v15, v33, v34);

    result = (*(v6 + 8))(v15, v28);
LABEL_13:
    v45 = v75;
    *v75 = 0u;
    v45[1] = 0u;
    goto LABEL_22;
  }

  v78 = 0u;
  v79 = 0u;
  v46 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v76 = 0;
  v48 = [v46 JSONObjectWithData:isa options:4 error:&v76];

  v49 = v76;
  v50 = v21;
  if (v48)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data?(v21, v23);
    swift_unknownObjectRelease();
    result = outlined destroy of Date?(&v78, &_sypSgMd, &_sypSgMR);
    v78 = v77[0];
    v79 = v77[1];
  }

  else
  {
    v51 = v49;
    v52 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.engagement);
    *&v77[0] = 0;
    *(&v77[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    MEMORY[0x25F8CE090](0xD000000000000052, 0x800000025ED80FB0);
    v76 = v52;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v55 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v55);

    v56 = v77[0];
    v57 = *MEMORY[0x277D615A0];
    v58 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v58 - 8) + 104))(v10, v57, v58);
    v59 = v74;
    (*(v6 + 104))(v10, *MEMORY[0x277D616A8], v74);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v72 = v50;
      v63 = v62;
      v64 = swift_slowAlloc();
      v73 = v52;
      v65 = v64;
      *&v77[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, *(&v56 + 1), v77);
      _os_log_impl(&dword_25ECEC000, v60, v61, "%s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      v66 = v65;
      v52 = v73;
      MEMORY[0x25F8CEE50](v66, -1, -1);
      v50 = v72;
      MEMORY[0x25F8CEE50](v63, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v67 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v10, v67, v68);

    outlined consume of Data?(v50, v23);

    result = (*(v6 + 8))(v10, v59);
  }

  v69 = v79;
  v70 = v75;
  *v75 = v78;
  v70[1] = v69;
LABEL_22:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
  }

  else
  {
    a2 = 0x800000025ED81030;
    a1 = 0xD0000000000000DDLL;
  }

  ActivityDispatcher.getJSONObjectFromCollectorDefinitions(collectorDefinitions:)(a1, a2, &aBlock);
  if (v50)
  {
    v42 = v9;
    v22 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v43 = a4;
      v23 = v53;
      v24 = *(v53 + 16);

      if (v24)
      {
        if (*(v23 + 16))
        {
          v25 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED81010);
          if (v26)
          {
            outlined init with copy of Any(*(v23 + 56) + 32 * v25, &aBlock);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, "jF");
            v27 = swift_dynamicCast();
            v28 = v43;
            if ((v27 & 1) == 0)
            {
LABEL_17:
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v36 = type metadata accessor for Logger();
              __swift_project_value_buffer(v36, static Logger.engagement);
              v37 = Logger.logObject.getter();
              v38 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 0;
                _os_log_impl(&dword_25ECEC000, v37, v38, "Trying to run with no activity dictionaries - disregarding", v39, 2u);
                MEMORY[0x25F8CEE50](v39, -1, -1);
              }

              v40 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
              a3();
              goto LABEL_24;
            }

            v29 = v53;
            if (*(v53 + 16))
            {
              type metadata accessor for OS_dispatch_queue();
              v30 = v44;
              (*(v44 + 104))(v20, *MEMORY[0x277D851C8], v17);
              v41 = static OS_dispatch_queue.global(qos:)();
              (*(v30 + 8))(v20, v17);
              v31 = swift_allocObject();
              v31[2] = v4;
              v31[3] = v29;
              v31[4] = v22;
              v31[5] = v28;
              v51 = partial apply for closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:);
              v52 = v31;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              v49 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v50 = &block_descriptor_1;
              v32 = _Block_copy(&aBlock);
              v33 = v4;

              static DispatchQoS.unspecified.getter();
              v53 = MEMORY[0x277D84F90];
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              v34 = v42;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v35 = v41;
              MEMORY[0x25F8CE2F0](0, v16, v12, v32);
              _Block_release(v32);

              (*(v47 + 8))(v12, v34);
              (*(v45 + 8))(v16, v46);

              return;
            }
          }
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    outlined destroy of Date?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  v40 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
  a3();
LABEL_24:
}

void closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;

    specialized ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(a2, partial apply for closure #1 in closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:), v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for ReliabilityCategory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v36 = a4;
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.engagement);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v38 = 0xD000000000000018;
    v39 = 0x800000025ED811A0;
    v37 = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v15);

    v17 = v38;
    v16 = v39;
    v18 = *MEMORY[0x277D615A8];
    v19 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v19 - 8) + 104))(v12, v18, v19);
    (*(v9 + 104))(v12, *MEMORY[0x277D616A8], v8);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = a3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v38);
      _os_log_impl(&dword_25ECEC000, v20, v21, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x25F8CEE50](v24, -1, -1);
      v25 = v23;
      a3 = v35;
      MEMORY[0x25F8CEE50](v25, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v26 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v12, v26, v27);

    (*(v9 + 8))(v12, v8);
    v28 = a1;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.engagement);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25ECEC000, v30, v31, "DispatchSerially success", v32, 2u);
      MEMORY[0x25F8CEE50](v32, -1, -1);
    }

    v28 = 0;
  }

  return a3(v28);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t ActivityDispatcher.runEngagementCollector(collectionDefinition:completion:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1[1];
  v13 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 48);
  if (one-time initialization token for defaultParameters != -1)
  {
    swift_once();
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(static Constants.defaultParameters);
  v14[1] = v12;
  v14[0] = v13;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  if (specialized ActivityDispatcher.adaptActivityCollectionParameter(collectionDefinition:)(v14))
  {
  }

  type metadata accessor for PostSiriEngagementMetricsCollector();
  swift_allocObject();
  v8 = PostSiriEngagementMetricsCollector.init(parameters:)();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(*v8 + 88);

  v10(partial apply for closure #1 in ActivityDispatcher.runEngagementCollector(collectionDefinition:completion:), v9);
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = outlined init with take of Any(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t closure #1 in ActivityDispatcher.runEngagementCollector(collectionDefinition:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for ReliabilityCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a3;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.engagement);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v35 = 0xD000000000000027;
    v36 = 0x800000025ED81140;
    v34 = a1;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v13 = String.init<A>(describing:)();
    MEMORY[0x25F8CE090](v13);

    v15 = v35;
    v14 = v36;
    v16 = *MEMORY[0x277D615C0];
    v17 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v17 - 8) + 104))(v10, v16, v17);
    (*(v7 + 104))(v10, *MEMORY[0x277D616A8], v6);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = a2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v35);
      _os_log_impl(&dword_25ECEC000, v18, v19, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25F8CEE50](v22, -1, -1);
      v23 = v21;
      a2 = v32;
      MEMORY[0x25F8CEE50](v23, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v24 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v10, v24, v25);

    (*(v7 + 8))(v10, v6);
    a2(a1);
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.engagement);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_25ECEC000, v27, v28, "Engagement processing success", v29, 2u);
    MEMORY[0x25F8CEE50](v29, -1, -1);
  }

  return (a2)(0);
}

uint64_t specialized ActivityDispatcher.getCollectorClassObjectFromString(collectorID:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for ReliabilityCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AbstractActivityCollector();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = [v10 infoDictionary];
  if (v11)
  {
    v12 = v11;
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C646E75424643, 0xEC000000656D614ELL), (v15 & 1) != 0))
    {
      outlined init with copy of Any(*(v13 + 56) + 32 * v14, &v37);

      if (swift_dynamicCast())
      {
        v37 = v36[0];
        v38 = v36[1];
        MEMORY[0x25F8CE090](46, 0xE100000000000000);
        MEMORY[0x25F8CE090](a1, a2);
        v16 = MEMORY[0x25F8CDFC0](v37, v38);

        v17 = [v10 classNamed_];

        if (v17)
        {
          swift_getObjCClassMetadata();
          v18 = swift_dynamicCastMetatype();
          if (v18)
          {
            v19 = v18;

            return v19;
          }
        }
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.engagement);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v37 = a1;
  v38 = a2;
  MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED81210);
  v22 = [v10 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  MEMORY[0x25F8CE090](v23, v25);

  v27 = v37;
  v26 = v38;
  v28 = *MEMORY[0x277D615D0];
  v29 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v29 - 8) + 104))(v8, v28, v29);
  (*(v5 + 104))(v8, *MEMORY[0x277D616A8], v4);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v37);
    _os_log_impl(&dword_25ECEC000, v30, v31, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x25F8CEE50](v33, -1, -1);
    MEMORY[0x25F8CEE50](v32, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v34 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v8, v34, v35);

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t specialized ActivityDispatcher.createCollectorFromParameters(parameters:)(uint64_t a1)
{
  v2 = type metadata accessor for ReliabilityCategory();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x800000025ED811C0), (v8 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v7, &v39), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v37;
    v9 = v38;
    v11 = specialized ActivityDispatcher.getCollectorClassObjectFromString(collectorID:)(v37, v38);
    if (v11)
    {
      v12 = *(v11 + 80);

      v14 = v12(v13);

      return v14;
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.engagement);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315394;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v39);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2080;
      v34 = Dictionary.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v39);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_25ECEC000, v29, v30, "Failed to construct collector: %s with parameters: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8CEE50](v32, -1, -1);
      MEMORY[0x25F8CEE50](v31, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.engagement);
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v39 = 0xD000000000000026;
    v40 = 0x800000025ED811E0;
    v17 = Dictionary.description.getter();
    MEMORY[0x25F8CE090](v17);

    MEMORY[0x25F8CE090](32, 0xE100000000000000);
    v19 = v39;
    v18 = v40;
    v20 = *MEMORY[0x277D615D0];
    v21 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v21 - 8) + 104))(v6, v20, v21);
    (*(v3 + 104))(v6, *MEMORY[0x277D616A8], v2);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v39);
      _os_log_impl(&dword_25ECEC000, v22, v23, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F8CEE50](v25, -1, -1);
      MEMORY[0x25F8CEE50](v24, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v26 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v6, v26, v27);

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t specialized ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v43 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v45 = *(v57 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = [objc_opt_self() getExecQ];
  v55 = swift_allocObject();
  *(v55 + 16) = MEMORY[0x277D84F90];
  v50 = dispatch_group_create();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 32);
    v53 = &v61;
    v52 = (v46 + 8);
    v51 = (v45 + 8);
    *&v10 = 136315138;
    v47 = v10;
    v48 = v4;
    v49 = v7;
    do
    {
      v16 = *v12;
      v17 = one-time initialization token for engagement;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.engagement);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock = v22;
        *v21 = v47;
        v23 = Dictionary.description.getter();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &aBlock);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_25ECEC000, v19, v20, "Creating collector with %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        v26 = v22;
        v4 = v48;
        v7 = v49;
        MEMORY[0x25F8CEE50](v26, -1, -1);
        MEMORY[0x25F8CEE50](v21, -1, -1);
      }

      v27 = specialized ActivityDispatcher.createCollectorFromParameters(parameters:)(v16);
      if (v27)
      {
        v28 = v27;
        v29 = v50;
        dispatch_group_enter(v50);
        v30 = swift_allocObject();
        v32 = v54;
        v31 = v55;
        v30[2] = v28;
        v30[3] = v32;
        v30[4] = v31;
        v30[5] = v16;
        v30[6] = v29;
        v63 = partial apply for closure #1 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
        v64 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v60 = 1107296256;
        v61 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v62 = &block_descriptor_37;
        v33 = _Block_copy(&aBlock);

        v32;

        v34 = v29;
        v35 = v56;
        static DispatchQoS.unspecified.getter();
        v58 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x25F8CE2F0](0, v35, v7, v33);
        _Block_release(v33);

        (*v52)(v7, v4);
        (*v51)(v35, v57);
      }

      else
      {
        static DispatchWorkItemFlags.barrier.getter();
        v13 = swift_allocObject();
        *(v13 + 16) = v55;
        *(v13 + 24) = v16;
        v63 = partial apply for closure #2 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
        v64 = v13;
        aBlock = MEMORY[0x277D85DD0];
        v60 = 1107296256;
        v61 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v62 = &block_descriptor_25;
        v14 = _Block_copy(&aBlock);

        v15 = v56;
        static DispatchQoS.unspecified.getter();
        MEMORY[0x25F8CE2F0](0, v15, v7, v14);
        _Block_release(v14);
        (*v51)(v15, v57);
        (*v52)(v7, v4);
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  v36 = swift_allocObject();
  v37 = v43;
  v36[2] = v55;
  v36[3] = v37;
  v36[4] = v44;
  v63 = partial apply for closure #3 in ActivityDispatcher.dispatchSerially(collectorDefinitions:completion:);
  v64 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v62 = &block_descriptor_31;
  v38 = _Block_copy(&aBlock);

  v39 = v56;
  static DispatchQoS.unspecified.getter();
  v58 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v54;
  v41 = v50;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v38);

  (*(v46 + 8))(v7, v4);
  (*(v45 + 8))(v39, v57);
}

void specialized ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, void))
{
  v45 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
  }

  else
  {
    a2 = 0x800000025ED81030;
    a1 = 0xD0000000000000DDLL;
  }

  _Block_copy(a4);
  ActivityDispatcher.getJSONObjectFromCollectorDefinitions(collectorDefinitions:)(a1, a2, &aBlock);
  if (v50)
  {
    v43 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v42 = v7;
      v22 = v53;
      v23 = *(v53 + 16);

      if (v23)
      {
        if (*(v22 + 16))
        {
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED81010);
          if (v25)
          {
            outlined init with copy of Any(*(v22 + 56) + 32 * v24, &aBlock);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, "jF");
            if (!swift_dynamicCast())
            {
LABEL_18:
              if (one-time initialization token for engagement != -1)
              {
                swift_once();
              }

              v37 = type metadata accessor for Logger();
              __swift_project_value_buffer(v37, static Logger.engagement);
              v38 = Logger.logObject.getter();
              v39 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                *v40 = 0;
                _os_log_impl(&dword_25ECEC000, v38, v39, "Trying to run with no activity dictionaries - disregarding", v40, 2u);
                MEMORY[0x25F8CEE50](v40, -1, -1);
              }

              v34 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
              goto LABEL_16;
            }

            v26 = v53;
            if (*(v53 + 16))
            {
              type metadata accessor for OS_dispatch_queue();
              v27 = v44;
              (*(v44 + 104))(v19, *MEMORY[0x277D851C8], v16);
              v28 = static OS_dispatch_queue.global(qos:)();
              (*(v27 + 8))(v19, v16);
              v29 = swift_allocObject();
              v30 = v45;
              v29[2] = v45;
              v29[3] = v26;
              v29[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
              v29[5] = v20;
              v51 = closure #1 in ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)partial apply;
              v52 = v29;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              v49 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v50 = &block_descriptor_13;
              v31 = _Block_copy(&aBlock);
              v32 = v30;

              static DispatchQoS.unspecified.getter();
              v53 = MEMORY[0x277D84F90];
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              v33 = v42;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              MEMORY[0x25F8CE2F0](0, v15, v11, v31);
              _Block_release(v31);

              (*(v43 + 8))(v11, v33);
              (*(v46 + 8))(v15, v47);

              return;
            }
          }
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    outlined destroy of Date?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  v34 = [objc_opt_self() getErrorNoCollectorDefinitionsToRun];
LABEL_16:
  v35 = v34;
  v36 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v36);
}

unint64_t specialized ActivityDispatcher.adaptActivityCollectionParameter(collectionDefinition:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v27 = *(a1 + 32);
    v4 = (v1 + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = 0xE900000000000074;
      v9 = v7 == 4;
      v10 = 0x636E75614C707041;
      if (v7 != 4)
      {
        v10 = 0x6D72616C41;
      }

      v11 = 0xE500000000000000;
      if (v9)
      {
        v11 = 0xE900000000000068;
      }

      if (v6 == 3)
      {
        v10 = 0x6E65746E49707041;
      }

      else
      {
        v8 = v11;
      }

      v12 = 0x6365784569726953;
      if (v6 != 1)
      {
        v12 = 0x6979616C50776F4ELL;
      }

      v13 = 0xED00006E6F697475;
      if (v6 != 1)
      {
        v13 = 0xEA0000000000676ELL;
      }

      if (!v6)
      {
        v12 = 0x495569726953;
        v13 = 0xE600000000000000;
      }

      if (v6 <= 2)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v6 <= 2)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
      --v3;
    }

    while (v3);
    v1 = v27;
    v19 = *(v27 + 16);
  }

  else
  {
    v19 = 0;
    v5 = MEMORY[0x277D84F90];
  }

  v20 = (v1 + 32);
  while (v19)
  {
    v21 = *v20++;
    --v19;
    if (!v21)
    {
      goto LABEL_40;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v23 = *(v5 + 2);
  v22 = *(v5 + 3);
  if (v23 >= v22 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
  }

  *(v5 + 2) = v23 + 1;
  v24 = &v5[16 * v23];
  *(v24 + 4) = 0x495569726953;
  *(v24 + 5) = 0xE600000000000000;
LABEL_40:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25ED7C750;
  *(inited + 32) = 0x614E6D6165727473;
  *(inited + 40) = 0xEB0000000073656DLL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 48) = v5;
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Date?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v26;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t StreamType.name.getter()
{
  v1 = *v0;
  v2 = 0x495569726953;
  v3 = 0x6E65746E49707041;
  v4 = 0x636E75614C707041;
  if (v1 != 4)
  {
    v4 = 0x6D72616C41;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6365784569726953;
  if (v1 != 1)
  {
    v5 = 0x6979616C50776F4ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ActivityCollectionParameter.startTime.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ActivityCollectionParameter.startTime.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ActivityCollectionParameter.endTime.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ActivityCollectionParameter.endTime.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ActivityCollectionParameter.streams.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ActivityCollectionParameter.timeWindowForCollection.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ActivityCollectionParameter.timeWindowForCollection.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ActivityCollectionParameter.init(collectionType:_:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return a1();
}

Swift::Int CollectionType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CollectionType()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CollectionType()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](0);
  return Hasher._finalize()();
}

Swift::Int StreamType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8CE700](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CollectionType and conformance CollectionType()
{
  result = lazy protocol witness table cache variable for type CollectionType and conformance CollectionType;
  if (!lazy protocol witness table cache variable for type CollectionType and conformance CollectionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionType and conformance CollectionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamType and conformance StreamType()
{
  result = lazy protocol witness table cache variable for type StreamType and conformance StreamType;
  if (!lazy protocol witness table cache variable for type StreamType and conformance StreamType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamType and conformance StreamType);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ActivityCollectionParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ActivityCollectionParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CollectionType(_WORD *result, int a2, int a3)
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

void CalendarEventSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, char *a2)
{
  v96 = a2;
  v95 = type metadata accessor for Date();
  v93 = *(v95 - 8);
  v3 = *(v93 + 64);
  v4 = MEMORY[0x28223BE20](v95);
  v94 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v84 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v84 - v24;
  v26 = MEMORY[0x25F8CE7F0](v23);
  v27 = v97;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v98, &v99);
  if (v27)
  {
    objc_autoreleasePoolPop(v26);
    return;
  }

  v85 = a1;
  v86 = v15;
  v87 = v17;
  v88 = v22;
  v28 = v95;
  v29 = v96;
  v91 = 0;
  v92 = v25;
  v30 = v94;
  v89 = v8;
  v90 = v10;
  objc_autoreleasePoolPop(v26);
  v31 = v99;
  v97 = [v99 intent];
  v32 = [v97 domain];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v33 == 0x7261646E656C6143 && v35 == 0xE800000000000000)
  {

    v36 = v29;
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v36 = v29;
    if ((v37 & 1) == 0)
    {

      return;
    }
  }

  v38 = [v97 verb];
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v39;

  v40 = [v85 absoluteTimestamp];
  if (v40)
  {
    v41 = v92;
    v42 = v40;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
    v41 = v92;
  }

  v44 = v93;
  v45 = v28;
  v46 = 1;
  (*(v93 + 56))(v41, v43, 1, v28);
  v47 = [v31 dateInterval];
  v48 = v86;
  if (v47)
  {
    v49 = v47;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  v96 = v31;
  v50 = type metadata accessor for DateInterval();
  v51 = *(v50 - 8);
  (*(v51 + 56))(v48, v46, 1, v50);
  v52 = v48;
  v53 = v87;
  outlined init with take of DateInterval?(v52, v87);
  v54 = 0;
  if (!(*(v51 + 48))(v53, 1, v50))
  {
    DateInterval.duration.getter();
    v54 = v55;
  }

  outlined destroy of Date?(v53, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v56 = *(v44 + 16);
  v57 = v90;
  v56(v90, v36, v45);
  v58 = type metadata accessor for SiriUISession(0);
  v59 = v89;
  v56(v89, &v36[*(v58 + 20)], v45);
  v60 = v92;
  v61 = v88;
  outlined init with copy of Date?(v92, v88);
  v62 = (*(v44 + 48))(v61, 1, v45);
  if (v62 == 1)
  {
    v76 = *(v44 + 8);
    v76(v59, v45);
    v76(v57, v45);
    outlined destroy of Date?(v60, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v74 = 0x3FF0000000000000;
    v64 = 0;
    v68 = 0.0;
    v75 = 0.0;
    v54 = 0;
  }

  else
  {
    (*(v44 + 32))(v30, v61, v45);
    Date.timeIntervalSinceReferenceDate.getter();
    v64 = v63;
    Date.timeIntervalSinceReferenceDate.getter();
    v66 = v65;
    Date.timeIntervalSinceReferenceDate.getter();
    v68 = v66 - v67;
    Date.timeIntervalSinceReferenceDate.getter();
    v70 = v69;
    Date.timeIntervalSinceReferenceDate.getter();
    v72 = v71;
    v73 = *(v44 + 8);
    v73(v30, v45);
    v73(v59, v45);
    v73(v57, v45);
    outlined destroy of Date?(v60, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v74 = 0;
    v75 = v70 - v72;
  }

  v77 = v97;
  v78 = [v97 domain];
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  type metadata accessor for Signal();
  v82 = swift_allocObject();
  *(v82 + 16) = v64;
  *(v82 + 24) = v68;
  *(v82 + 32) = v75;
  *(v82 + 40) = v54;
  *(v82 + 48) = v74;
  *(v82 + 56) = v62 != 1;
  *(v82 + 64) = v79;
  *(v82 + 72) = v81;
  v83 = v84;
  *(v82 + 80) = v94;
  *(v82 + 88) = v83;
  *(v82 + 96) = 1;
  *(v82 + 104) = MEMORY[0x277D84F98];
}

uint64_t UISessionSignalBuilder.__allocating_init(siriUISession:index:collector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = *(v4 + 48);
  v12 = *(v4 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v15 = type metadata accessor for SiriUISession(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v13 + v14, 1, 1, v15);
  *(v13 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v17 = v13 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *(v17 + 112) = 0;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  outlined init with take of SiriUISession(a1, v10);
  v16(v10, 0, 1, v15);
  swift_beginAccess();
  outlined assign with take of SiriUISession?(v10, v13 + v14);
  swift_endAccess();
  *(v13 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a3;
  return v13;
}

uint64_t SiriUISession.init(startDate:endDate:postEndDate:sessionID:uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  v17 = type metadata accessor for SiriUISession(0);
  v16(a8 + v17[5], a2, v15);
  result = (v16)(a8 + v17[6], a3, v15);
  v19 = (a8 + v17[7]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a8 + v17[8]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

uint64_t UISessionSignalBuilder.__allocating_init(collector:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v7 = type metadata accessor for SiriUISession(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v8 = v5 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *(v8 + 112) = 0;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  *(v5 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a1;
  return v5;
}

uint64_t SiriUISession.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriUISession.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriUISession.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriUISession.postEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriUISession.postEndDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriUISession(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriUISession.sessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriUISession(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriUISession.uuid.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriUISession(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t key path setter for UISessionSignalBuilder.siriUISession : UISessionSignalBuilder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  return (*(**a2 + 120))(v7);
}

uint64_t UISessionSignalBuilder.siriUISession.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
}

uint64_t UISessionSignalBuilder.siriUISession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  swift_beginAccess();
  outlined assign with take of SiriUISession?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t UISessionSignalBuilder.siriExecutionTasks.getter()
{
  v1 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t UISessionSignalBuilder.siriExecutionTasks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double UISessionSignalBuilder.postSiriDataStream.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream);
  swift_beginAccess();
  v4 = v3[5];
  v16 = v3[4];
  v17 = v4;
  v18 = v3[6];
  v19 = *(v3 + 14);
  v5 = v3[1];
  v12 = *v3;
  v13 = v5;
  v6 = v3[3];
  v14 = v3[2];
  v15 = v6;
  outlined init with copy of Date?(&v12, &v11, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
  v7 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v7;
  *(a1 + 96) = v18;
  *(a1 + 112) = v19;
  v8 = v13;
  *a1 = v12;
  *(a1 + 16) = v8;
  result = *&v14;
  v10 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v10;
  return result;
}

uint64_t UISessionSignalBuilder.postSiriDataStream.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  v14 = *(v3 + 96);
  v15 = *(v3 + 112);
  v16 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v16;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = *(a1 + 112);
  v17 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v17;
  v18 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v18;
  return outlined consume of PSEBiomeEventsSource?(v4);
}

uint64_t UISessionSignalBuilder.init(siriUISession:index:collector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v11 = type metadata accessor for SiriUISession(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v13 = v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0;
  outlined init with take of SiriUISession(a1, v9);
  v12(v9, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of SiriUISession?(v9, v3 + v10);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a3;
  return v3;
}

uint64_t UISessionSignalBuilder.init(collector:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
  v4 = type metadata accessor for SiriUISession(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = MEMORY[0x277D84F90];
  v5 = v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0;
  *(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = a1;
  return v1;
}

uint64_t outlined consume of PSEBiomeEventsSource?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t UISessionSignalBuilder.buildSignalsAndTaskFeatureSets(task:completion:)(void *a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v108 = a1;
  v7 = type metadata accessor for ReliabilityCategory();
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v104 - v13;
  v109 = 0;
  v15 = type metadata accessor for SiriUISession(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v3 + 112))(v18);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of Date?(v14, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    v121 = 0;
    v122 = 0uLL;
    return a2(&v121);
  }

  v104[1] = a3;
  v105 = a2;
  v22 = outlined init with take of SiriUISession(v14, v20);
  v23 = (*(*v3 + 160))(&v113, v22);
  if (!v113)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.engagement);
    v121 = 0;
    *&v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(123);
    MEMORY[0x25F8CE090](0xD000000000000078, 0x800000025ED81270);
    v30 = *(v15 + 32);
    v104[0] = v20;
    MEMORY[0x25F8CE090](*&v20[v30], *&v20[v30 + 8]);
    MEMORY[0x25F8CE090](46, 0xE100000000000000);
    v32 = v121;
    v31 = v122;
    v33 = *MEMORY[0x277D615D8];
    v34 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v34 - 8) + 104))(v10, v33, v34);
    v36 = v106;
    v35 = v107;
    (*(v106 + 104))(v10, *MEMORY[0x277D616A8], v107);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v121 = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v121);
      _os_log_impl(&dword_25ECEC000, v37, v38, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x25F8CEE50](v40, -1, -1);
      MEMORY[0x25F8CEE50](v39, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v41 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v10, v41, v42);

    (*(v36 + 8))(v10, v35);
    v121 = 0;
    v122 = 0uLL;
    v105(&v121);
    v43 = v104[0];
    return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v43, type metadata accessor for SiriUISession);
  }

  v121 = v113;
  v126 = v118;
  v127 = v119;
  v128 = v120;
  v122 = v114;
  v123 = v115;
  v124 = v116;
  v125 = v117;
  v24 = MEMORY[0x277D84F90];
  v111 = MEMORY[0x277D84F90];
  v112 = MEMORY[0x277D84F90];
  v25 = (*v108 + 280);
  v26 = *v25;
  v27 = v108;
  if ((*v25)(v23) == 0xD000000000000014 && 0x800000025ED7FA70 == v28)
  {

    goto LABEL_13;
  }

  v107 = v25;
  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
LABEL_13:
    v45 = v124;
    v46 = v27;
    if (*(v124 + 16))
    {
      type metadata accessor for AppIntentTranscriptSignalFactory();
      swift_allocObject();
      AppIntentTranscriptSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v45, v20, v110);

      specialized Array.append<A>(contentsOf:)(v47);

      specialized Array.append<A>(contentsOf:)(v48);
    }

    if (*(*(&v124 + 1) + 16) || *(v125 + 16) || *(*(&v125 + 1) + 16) || *(v126 + 16) || *(*(&v126 + 1) + 16) || *(v127 + 16) || *(*(&v127 + 1) + 16) || *(v128 + 16) || *(*(&v128 + 1) + 16))
    {
      type metadata accessor for PhotosSignalFactory();
      swift_allocObject();
      PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(&v121, v110);

LABEL_25:

      specialized Array.append<A>(contentsOf:)(v49);

      specialized Array.append<A>(contentsOf:)(v50);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v104[0] = v20;
  v63 = *(v122 + 16);
  v46 = v27;
  if (v63)
  {
    v64 = v122;
    v65 = *(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector);
    v110[0] = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v106 = v64;
    v66 = (v64 + 32);
    v67 = (v64 + 32);
    do
    {
      v68 = *v67;
      v67 += 2;
      v69 = v68;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v70 = *(v110[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v71 = specialized ContiguousArray._endMutation()();
      --v63;
    }

    while (v63);
    v72 = v110[0];
    v46 = v108;
    v73 = v26(v71);
    v74 = v109;
    v76 = (*(*v65 + 280))(v72, v73, v75);
    if (v74)
    {

      v109 = 0;
    }

    else
    {
      v77 = v76;
      v109 = 0;

      if (v77)
      {
        v78 = *(v106 + 16);
        v79 = MEMORY[0x277D84F90];
        if (v78)
        {
          v110[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray.reserveCapacity(_:)();
          do
          {
            v80 = *v66;
            v66 += 2;
            v81 = v80;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v82 = *(v110[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            --v78;
          }

          while (v78);
          v79 = v110[0];
        }

        (*(*v77 + 96))(v110, v79, v104[0]);

        specialized Array.append<A>(contentsOf:)(v83);

        specialized Array.append<A>(contentsOf:)(v84);
      }
    }
  }

  v85 = *(&v122 + 1);
  v20 = v104[0];
  if (*(*(&v122 + 1) + 16))
  {
    type metadata accessor for ExtendedAlarmSignalFactory();
    swift_allocObject();
    ExtendedAlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v85, v20, v110);

    specialized Array.append<A>(contentsOf:)(v86);

    specialized Array.append<A>(contentsOf:)(v87);
  }

  v24 = MEMORY[0x277D84F90];
  if (*(*(&v123 + 1) + 16))
  {
    type metadata accessor for HomeKitAccessoryControlSignalFactory();
    swift_allocObject();
    HomeKitAccessoryControlSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v20, v110);

    specialized Array.append<A>(contentsOf:)(v88);

    specialized Array.append<A>(contentsOf:)(v89);
  }

  v90 = v121;
  if (*(v121 + 16) && ((*(*v4 + 288))(v46) & 1) != 0)
  {
    v91 = type metadata accessor for NowPlayingSignalFactory();
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    v94 = swift_allocObject();
    v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15MRPlaybackStateV_SSTt0g5Tf4g_n(&outlined read-only object #0 of NowPlayingSignalFactory.init());
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MRPlaybackStateV_SStMd, &_sSo15MRPlaybackStateV_SStMR);
    swift_arrayDestroy();
    *(v94 + 16) = v95;
    v96 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
    v97 = type metadata accessor for Date();
    (*(*(v97 - 8) + 56))(v94 + v96, 1, 1, v97);
    v98 = *(v90 + 16);
    v99 = MEMORY[0x277D84F90];
    if (v98)
    {
      v110[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v100 = (v90 + 32);
      do
      {
        v101 = *v100;
        v100 += 2;
        v102 = v101;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v103 = *(v110[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v98;
      }

      while (v98);
      v99 = v110[0];
      v24 = MEMORY[0x277D84F90];
    }

    NowPlayingSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v99, v20, v110);

    goto LABEL_25;
  }

LABEL_26:
  v51 = v123;
  v52 = *(v123 + 16);
  if (v52)
  {
    type metadata accessor for AppLaunchSignalFactory();
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_25ED7CDB0;
    *(v53 + 32) = 0xD00000000000002BLL;
    *(v53 + 40) = 0x800000025ED80060;
    *(v53 + 48) = 0xD000000000000031;
    *(v53 + 56) = 0x800000025ED80090;
    *(v53 + 64) = 0xD00000000000002DLL;
    *(v53 + 72) = 0x800000025ED800D0;
    v110[0] = v24;
    specialized ContiguousArray.reserveCapacity(_:)();
    v54 = (v51 + 32);
    do
    {
      v55 = *v54;
      v54 += 2;
      v56 = v55;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v57 = *(v110[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v52;
    }

    while (v52);
    outlined destroy of Date?(&v113, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
    AppLaunchSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v110[0], v20, v110);

    specialized Array.append<A>(contentsOf:)(v58);

    specialized Array.append<A>(contentsOf:)(v59);
  }

  else
  {
    outlined destroy of Date?(&v113, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
  }

  v110[0] = specialized Array._copyToContiguousArray()(v60);
  v61 = v109;
  specialized MutableCollection<>.sort(by:)(v110);
  if (!v61)
  {

    v62 = v110[0];
    v110[0] = v46;
    v110[1] = v62;
    v110[2] = v111;

    v105(v110);
    outlined consume of PSETask?(v110[0]);
    v43 = v20;
    return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v43, type metadata accessor for SiriUISession);
  }

  __break(1u);
  return result;
}