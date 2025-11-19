uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo28NLSessionBackgroundAssertionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo28NLSessionBackgroundAssertionCGMR);
}

{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMd, &_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMd, &_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v31, v45, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      }

      else
      {
        outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v31, v45, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
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
      *v21 = v28;
      v21[1] = v29;
      result = _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMR);
}

{
  v3 = v2;
  v57 = type metadata accessor for Date();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Station.Mood();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMR);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for Station.Mood();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMR);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for Station.Mood();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo32HKDatabaseAccessibilityAssertionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo32HKDatabaseAccessibilityAssertionCGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t closure #1 in CompoundActivityItemsDataSource.compoundDataSourceDidUpdate(withItems:section:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundItems;
  swift_beginAccess();

  v7 = *&a1[v6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v160 = *&a1[v6];
  *&a1[v6] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a2, isUniquelyReferenced_nonNull_native);
  v9 = v160;
  v156 = a1;
  *&a1[v6] = v160;
  swift_endAccess();
  v144 = v9 + 64;
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v149 = v9;
  swift_retain_n();
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v146 = v13;
  while (v12)
  {
LABEL_10:
    v17 = *(*(v149 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    v18 = *(v17 + 16);
    if (v18)
    {
      v159[0] = MEMORY[0x277D84F90];

      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = (v17 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        ObjectType = swift_getObjectType();
        v23 = *(v21 + 24);
        v24 = v20;
        v23(ObjectType, v21);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = *(v159[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 += 2;
        --v18;
      }

      while (v18);
      v26 = v159[0];
      v13 = v146;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v6 = v26 >> 62;
    if (v26 >> 62)
    {
      v154 = __CocoaSet.count.getter();
    }

    else
    {
      v154 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v15 >> 62;
    if (v15 >> 62)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v28 + v154;
    if (__OFADD__(v28, v154))
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      swift_once();
      goto LABEL_46;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v27)
      {
LABEL_27:
        __CocoaSet.count.getter();
      }

      else
      {
        v30 = v15 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
        v32 = *(v30 + 16);
      }

      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v30 = v31 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v27)
    {
      goto LABEL_27;
    }

    v30 = v15 & 0xFFFFFFFFFFFFFF8;
    v31 = v15;
    if (v29 > *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

LABEL_29:
    v33 = *(v30 + 16);
    v34 = *(v30 + 24);
    if (v6)
    {
      v36 = v30;
      v37 = __CocoaSet.count.getter();
      v30 = v36;
      v35 = v37;
    }

    else
    {
      v35 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 &= v12 - 1;
    if (v35)
    {
      if (((v34 >> 1) - v33) < v154)
      {
        goto LABEL_154;
      }

      v38 = v30 + 8 * v33 + 32;
      v148 = v30;
      if (v6)
      {
        if (v35 < 1)
        {
          goto LABEL_156;
        }

        v6 = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [CompoundActivityPickerItem] and conformance [A], &_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
        for (i = 0; i != v35; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
          v40 = specialized protocol witness for Collection.subscript.read in conformance [A](v159, i, v26);
          v42 = *v41;
          (v40)(v159, 0);
          *(v38 + 8 * i) = v42;
        }

        v13 = v146;
      }

      else
      {
        v6 = v26 & 0xFFFFFFFFFFFFFF8;
        type metadata accessor for CompoundActivityPickerItem();
        swift_arrayInitWithCopy();
      }

      v15 = v31;
      if (v154 > 0)
      {
        v43 = *(v148 + 16);
        if (__OFADD__(v43, v154))
        {
          goto LABEL_155;
        }

        *(v148 + 16) = v43 + v154;
        v15 = v31;
      }
    }

    else
    {

      v15 = v31;
      if (v154 > 0)
      {
        goto LABEL_153;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
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
      goto LABEL_152;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v144 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  if (one-time initialization token for activityPicker != -1)
  {
    goto LABEL_157;
  }

LABEL_46:
  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static WOLog.activityPicker);

  v45 = Logger.logObject.getter();
  LOBYTE(v46) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v45, v46))
  {

    goto LABEL_51;
  }

  v6 = swift_slowAlloc();
  *v6 = 134217984;
  if (v15 >> 62)
  {
    goto LABEL_163;
  }

  v47 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    *(v6 + 4) = v47;

    _os_log_impl(&dword_20AEA4000, v45, v46, "Compound: allCompoundItems.count: %ld", v6, 0xCu);
    MEMORY[0x20F2E9420](v6, -1, -1);

LABEL_51:
    v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore26CompoundActivityPickerItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v147 = v15 >> 62;
    if (v15 >> 62)
    {
      v49 = __CocoaSet.count.getter();
    }

    else
    {
      v49 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v155 = OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_standardActivityTypeProvider;
    if (v49)
    {
      v50 = 0;
      v150 = v15 & 0xFFFFFFFFFFFFFF8;
      v152 = v15 & 0xC000000000000001;
      v157 = v15;
      while (1)
      {
        if (v152)
        {
          v54 = MEMORY[0x20F2E7A20](v50, v15);
        }

        else
        {
          if (v50 >= *(v150 + 16))
          {
            goto LABEL_146;
          }

          v54 = *(v15 + 8 * v50 + 32);
        }

        v55 = v54;
        v56 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_145;
        }

        v57 = v49;
        v58 = [*&v156[v155] activityTypeKeyForActivityType_];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v15 = v55;
        v6 = swift_isUniquelyReferenced_nonNull_native();
        v159[0] = v48;
        v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v61);
        v64 = v48[2];
        v65 = (v63 & 1) == 0;
        v66 = __OFADD__(v64, v65);
        v67 = v64 + v65;
        if (v66)
        {
          goto LABEL_147;
        }

        v68 = v63;
        if (v48[3] < v67)
        {
          break;
        }

        if (v6)
        {
          goto LABEL_66;
        }

        v6 = v62;
        specialized _NativeDictionary.copy()();
        v62 = v6;
        if (v68)
        {
LABEL_55:
          v51 = v62;

          v48 = v159[0];
          v52 = *(v159[0] + 56);
          v53 = *(v52 + 8 * v51);
          *(v52 + 8 * v51) = v15;

          goto LABEL_56;
        }

LABEL_67:
        v48 = v159[0];
        *(v159[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
        v70 = (v48[6] + 16 * v62);
        *v70 = v59;
        v70[1] = v61;
        *(v48[7] + 8 * v62) = v15;

        v71 = v48[2];
        v66 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v66)
        {
          goto LABEL_149;
        }

        v48[2] = v72;
LABEL_56:
        ++v50;
        v49 = v57;
        v15 = v157;
        if (v56 == v57)
        {
          goto LABEL_72;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v6);
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v61);
      if ((v68 & 1) != (v69 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_66:
      if (v68)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    }

LABEL_72:
    v162 = v48;
    v46 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v73))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v48[2];
      _os_log_impl(&dword_20AEA4000, v46, v73, "Compound: allCompoundItemsByKey.count: %ld", v6, 0xCu);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    if (v147)
    {
      v74 = __CocoaSet.count.getter();
    }

    else
    {
      v74 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v75 = MEMORY[0x277D84F90];
    if (v74)
    {
      v159[0] = MEMORY[0x277D84F90];
      v45 = v159;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v74 & 0x8000000000000000) == 0)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v76 = 0;
          do
          {
            v77 = v76 + 1;
            v78 = *(MEMORY[0x20F2E7A20]() + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType);
            swift_unknownObjectRelease();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v79 = *(v159[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v76 = v77;
          }

          while (v74 != v77);
        }

        else
        {
          v80 = (v15 + 32);
          do
          {
            v81 = *v80++;
            v82 = *(v81 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v83 = *(v159[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            --v74;
          }

          while (v74);
        }

        v75 = v159[0];
        break;
      }

      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      v47 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 134217984;
    if (v75 >> 62)
    {
      v87 = __CocoaSet.count.getter();
    }

    else
    {
      v87 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v86 + 4) = v87;

    _os_log_impl(&dword_20AEA4000, v84, v85, "Compound: allActivityTypes.count: %ld", v86, 0xCu);
    MEMORY[0x20F2E9420](v86, -1, -1);
  }

  else
  {
  }

  v88 = *&v156[v155];
  _sSo17OS_dispatch_queueCMaTm_7(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v90 = Array._bridgeToObjectiveC()().super.isa;
  v91 = [v88 workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:isa unsupportedActivities:v90];

  v92 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 134217984;
    if (v92 >> 62)
    {
      v96 = __CocoaSet.count.getter();
    }

    else
    {
      v96 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v95 + 4) = v96;

    _os_log_impl(&dword_20AEA4000, v93, v94, "Compound: orderedActivityTypes.count: %ld", v95, 0xCu);
    MEMORY[0x20F2E9420](v95, -1, -1);
  }

  else
  {
  }

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;

    _os_log_impl(&dword_20AEA4000, v97, v98, "Compound: compactMap by orderedActivityTypes:", v99, 2u);
    MEMORY[0x20F2E9420](v99, -1, -1);
  }

  else
  {
  }

  v100 = v156;
  v101 = specialized Sequence.compactMap<A>(_:)(v92, v100);

  v161 = v101;
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 134217984;
    if (v101 >> 62)
    {
      v141 = v104;
      v105 = __CocoaSet.count.getter();
      v104 = v141;
    }

    else
    {
      v105 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v104 + 4) = v105;
    v106 = v103;
    v107 = v104;
    _os_log_impl(&dword_20AEA4000, v102, v106, "Compound: orderedCompoundItems.count: %ld", v104, 0xCu);
    MEMORY[0x20F2E9420](v107, -1, -1);
  }

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 134217984;
    swift_beginAccess();
    *(v110 + 4) = v162[2];
    _os_log_impl(&dword_20AEA4000, v108, v109, "Compound: append rest of unordered items, allCompoundItemsByKey.count: %ld", v110, 0xCu);
    MEMORY[0x20F2E9420](v110, -1, -1);
  }

  swift_beginAccess();
  v111 = v162;
  v45 = v162[2];
  v15 = MEMORY[0x277D84F90];
  if (v45)
  {
    v46 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore26CompoundActivityPickerItemC_Tt1g5(v45, 0);
    v112 = specialized Sequence._copySequenceContents(initializing:)(v159, &v46[4], v45, v111);
    v6 = v159[0];
    v15 = v159[3];

    outlined consume of [String : CompoundActivityPickerItem].Iterator._Variant();
    if (v112 == v45)
    {
      v15 = MEMORY[0x277D84F90];
      goto LABEL_109;
    }

    goto LABEL_162;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_109:
  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v46);
  swift_endAccess();
  v113 = v161;

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();
  v6 = v113 >> 62;
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 134217984;
    if (v6)
    {
      v117 = __CocoaSet.count.getter();
    }

    else
    {
      v117 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v116 + 4) = v117;

    _os_log_impl(&dword_20AEA4000, v114, v115, "Compound: orderedCompoundItems.count: %ld", v116, 0xCu);
    MEMORY[0x20F2E9420](v116, -1, -1);
  }

  else
  {
  }

  v118 = [*&v100[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers] allObjects];
  v119 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v119 >> 62)
  {
    v120 = __CocoaSet.count.getter();
    if (!v120)
    {
      goto LABEL_143;
    }

LABEL_116:
    v121 = 0;
    v122 = v119 & 0xC000000000000001;
    v151 = v119 + 32;
    v153 = v119 & 0xFFFFFFFFFFFFFF8;
    v156 = (v119 & 0xC000000000000001);
    v143 = v120;
    v145 = v119;
    while (1)
    {
      while (1)
      {
        if (v122)
        {
          v123 = MEMORY[0x20F2E7A20](v121, v119);
          v66 = __OFADD__(v121++, 1);
          if (v66)
          {
            goto LABEL_148;
          }
        }

        else
        {
          if (v121 >= *(v153 + 16))
          {
            goto LABEL_150;
          }

          v123 = *(v151 + 8 * v121);
          swift_unknownObjectRetain();
          v66 = __OFADD__(v121++, 1);
          if (v66)
          {
            goto LABEL_148;
          }
        }

        swift_getObjectType();
        v124 = swift_conformsToProtocol2();
        if (v124)
        {
          if (v123)
          {
            break;
          }
        }

        swift_unknownObjectRelease();
        if (v121 == v120)
        {
          goto LABEL_143;
        }
      }

      v158 = v124;
      if (v6)
      {
        v125 = __CocoaSet.count.getter();
        if (v125)
        {
LABEL_128:
          v159[0] = v15;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125 & ~(v125 >> 63), 0);
          if (v125 < 0)
          {
            goto LABEL_151;
          }

          v126 = v159[0];
          if ((v113 & 0xC000000000000001) != 0)
          {
            v127 = 0;
            do
            {
              v128 = MEMORY[0x20F2E7A20](v127, v113);
              v159[0] = v126;
              v130 = *(v126 + 16);
              v129 = *(v126 + 24);
              if (v130 >= v129 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1);
                v126 = v159[0];
              }

              ++v127;
              v131 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
              *(v126 + 16) = v130 + 1;
              v132 = v126 + 16 * v130;
              *(v132 + 32) = v128;
              *(v132 + 40) = v131;
            }

            while (v125 != v127);
          }

          else
          {
            v133 = 32;
            do
            {
              v134 = *(v113 + v133);
              v159[0] = v126;
              v136 = *(v126 + 16);
              v135 = *(v126 + 24);
              v137 = v134;
              if (v136 >= v135 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
                v126 = v159[0];
              }

              v138 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
              *(v126 + 16) = v136 + 1;
              v139 = v126 + 16 * v136;
              *(v139 + 32) = v137;
              *(v139 + 40) = v138;
              v133 += 8;
              --v125;
            }

            while (v125);
          }

          v15 = MEMORY[0x277D84F90];
          v119 = v145;
          v6 = v113 >> 62;
          v120 = v143;
          goto LABEL_142;
        }
      }

      else
      {
        v125 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v125)
        {
          goto LABEL_128;
        }
      }

      v126 = v15;
LABEL_142:
      v140 = swift_getObjectType();
      (*(v158 + 8))(v126, 3, v140);
      swift_unknownObjectRelease();

      v122 = v156;
      if (v121 == v120)
      {
        goto LABEL_143;
      }
    }
  }

  v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v120)
  {
    goto LABEL_116;
  }

LABEL_143:
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

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F2E7940](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

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

{
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  swift_beginAccess();
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v5);
      swift_beginAccess();
      if (*(v7 + 32) == *(a1 + 32) && *(v7 + 40) == *(a1 + 40))
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(v2 + 48);
    swift_beginAccess();
    swift_beginAccess();
    do
    {
      v9 = *(v8 + 8 * v5);
      swift_beginAccess();
      v10 = *(v9 + 16);
      v11 = *(a1 + 16);
      swift_beginAccess();
      v12 = *(v10 + 32);
      v13 = *(v10 + 40);
      swift_beginAccess();
      v14 = v12 == *(v11 + 32) && v13 == *(v11 + 40);
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_beginAccess();
        if (*(v9 + 24) == *(a1 + 24))
        {
          break;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id protocol witness for CompoundActivityPickerItemProtocol.compoundItem.getter in conformance StandardActivityPickerItem()
{
  v1 = *&v0[OBJC_IVAR___NLStandardActivityPickerItem_activityType];
  v2 = type metadata accessor for CompoundActivityPickerItem();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v0;
  v7.receiver = v3;
  v7.super_class = v2;
  v4 = v0;
  v5 = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
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
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v9 = *v8;
      if (v8[1] < 0)
      {
        if (a2 < 0 && v9 == a1)
        {
          return result;
        }
      }

      else if ((a2 & 0x8000000000000000) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11WorkoutCore26CompoundActivityPickerItemCGMd, &_ss18_DictionaryStorageCySS11WorkoutCore26CompoundActivityPickerItemCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSdGMd, &_ss18_DictionaryStorageCySiSdGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x20F2E7FD0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

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
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCGMR);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCGMR);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v34 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSdGMd, &_ss18_DictionaryStorageCys5Int32VSdGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x20F2E7FC0](*(v8 + 40), v21, 4);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMd, &_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMR);
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 4 * v23);
      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 4 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11WorkoutCore28DataLinkMirroredHostExpectedOSo7NSTimerCGMd, &_ss18_DictionaryStorageCy11WorkoutCore28DataLinkMirroredHostExpectedOSo7NSTimerCGMR, lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
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
      v25 = *(*(v5 + 56) + v21);
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
      *(*(v8 + 56) + v16) = v25;
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMR);
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v21 + 5);
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
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((v33 & 1) == 0)
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySd11WorkoutCore26MeanDistributionByPositionC6BucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore26MeanDistributionByPositionC6BucketCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo31NLCompoundActivityPickerSectionVSay11WorkoutCore08CompounddE12ItemProtocol_pGGMd, &_ss18_DictionaryStorageCySo31NLCompoundActivityPickerSectionVSay11WorkoutCore08CompounddE12ItemProtocol_pGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11WorkoutCore0C8SignpostOSayAC0c8IntervalE0CGGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C8SignpostOSayAC0c8IntervalE0CGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore16ExternalProviderCSayAC0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore16ExternalProviderCSayAC0C13ConfigurationCGGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      swift_beginAccess();
      v24 = *(v21 + 32);
      v25 = *(v21 + 40);

      String.hash(into:)();

      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMd, &_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        outlined copy of Data._Representation(v37, *(&v37 + 1));
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore23BackgroundAssertionTypeOSDy10Foundation4UUIDVSo09NLSessioneF0CGGMd, &_ss18_DictionaryStorageCy11WorkoutCore23BackgroundAssertionTypeOSDy10Foundation4UUIDVSo09NLSessioneF0CGGMR);
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v21);
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
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((v33 & 1) == 0)
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerCGMd, &_ss18_DictionaryStorageCy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerCGMR, lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMR);
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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
      *(*(v8 + 56) + 8 * v16) = v22;
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

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSayyycGGMd, &_ss18_DictionaryStorageCySSSayyycGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      swift_beginAccess();
      v24 = *(v21 + 16);
      swift_beginAccess();
      v25 = *(v24 + 32);
      v26 = *(v24 + 40);

      String.hash(into:)();

      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v21 + 24));
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay11WorkoutCore08Standardc3AddC3RowCGGMd, &_ss18_DictionaryStorageCySSSay11WorkoutCore08Standardc3AddC3RowCGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v3;
    v38 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *(v23 + 8);
      v25 = *v23;
      v26 = *(v22 + 4 * v21);
      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();
      dispatch thunk of Hashable.hash(into:)();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      *(*(v8 + 56) + 4 * v16) = v26;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_ss18_DictionaryStorageCySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
}

uint64_t CompoundActivityTypeProvider.workoutActivityTypesInFrequencyOrderDescending(withDefaultActivities:unsupportedActivities:)(unint64_t a1, unint64_t a2)
{
  v37 = a2;
  if (![objc_opt_self() isRunningInStoreDemoMode])
  {
    v36 = a1;
    v4 = *(*(v2 + 16) + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    OS_dispatch_queue.sync<A>(execute:)();

    v39 = specialized Array._copyToContiguousArray()(v5);
    specialized MutableCollection<>.sort(by:)(&v39);

    v6 = v39;
    a1 = MEMORY[0x277D84F90];
    if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = *(v39 + 16);
      if (v7)
      {
LABEL_6:
        v39 = a1;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v7 < 0)
        {
          goto LABEL_58;
        }

        v8 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x20F2E7A20](v8, v6);
          }

          else
          {
            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          ++v8;
          v11 = *&v9[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v12 = *(v39 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v7 != v8);

        v13 = v39;
LABEL_15:
        v39 = a1;
        if (v13 >> 62)
        {
          goto LABEL_37;
        }

        for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
        {
          a1 = MEMORY[0x277D84F90];
          if (!i)
          {
            break;
          }

          v15 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x20F2E7A20](v15, v13);
            }

            else
            {
              if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v17 = *(v13 + 8 * v15 + 32);
            }

            v18 = v17;
            v19 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            v20 = [v17 isGuided];
            if ((v20 & 1) != 0 || (v38[0] = v18, MEMORY[0x28223BE20](v20), v35 = v38, (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v34, v37) & 1) == 0))
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v16 = *(v39 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v15;
            if (v19 == i)
            {
              v21 = v39;
              a1 = MEMORY[0x277D84F90];
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          ;
        }

        v21 = MEMORY[0x277D84F90];
LABEL_31:

        if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
        {
          if (__CocoaSet.count.getter())
          {
            return v21;
          }
        }

        else if (*(v21 + 16))
        {
          return v21;
        }

        if (one-time initialization token for activityPicker != -1)
        {
          goto LABEL_59;
        }

        while (1)
        {
          v22 = type metadata accessor for Logger();
          __swift_project_value_buffer(v22, static WOLog.activityPicker);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_20AEA4000, v23, v24, "ActivityPickerListStore's fetchVisibleActivities is empty. Generating list from NLSmartGoalStore", v25, 2u);
            MEMORY[0x20F2E9420](v25, -1, -1);
          }

          v39 = a1;
          if (v36 >> 62)
          {
            v26 = __CocoaSet.count.getter();
            if (!v26)
            {
              return a1;
            }
          }

          else
          {
            v26 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v26)
            {
              return a1;
            }
          }

          v27 = 0;
          a1 = v36 & 0xC000000000000001;
          v28 = v36 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (a1)
            {
              v30 = MEMORY[0x20F2E7A20](v27, v36);
            }

            else
            {
              if (v27 >= *(v28 + 16))
              {
                goto LABEL_57;
              }

              v30 = *(v36 + 8 * v27 + 32);
            }

            v31 = v30;
            v32 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            v38[0] = v30;
            MEMORY[0x28223BE20](v30);
            v35 = v38;
            if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v34, v37))
            {
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v29 = *(v39 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v27;
            if (v32 == v26)
            {
              return v39;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          swift_once();
        }
      }
    }

    v13 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  return a1;
}

void *protocol witness for Decodable.init(from:) in conformance ActivityTypeListItem@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ActivityTypeListItem());
  result = ActivityTypeListItem.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for ActivityTypeListItem()
{
  result = type metadata singleton initialization cache for ActivityTypeListItem;
  if (!type metadata singleton initialization cache for ActivityTypeListItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ActivityTypeListItem.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore20ActivityTypeListItemC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore20ActivityTypeListItemC10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v24 = v30;
    __swift_destroy_boxed_opaque_existential_1(v29);
    type metadata accessor for ActivityTypeListItem();
    v15 = *((*MEMORY[0x277D85000] & *v24) + 0x30);
    v16 = *((*MEMORY[0x277D85000] & *v24) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v6;
    v14 = v8;
    v34 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v32;
    v18 = v33;
    _sSo23FIUIWorkoutActivityTypeCMaTm_0(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    outlined copy of Data._Representation(v19, v18);
    v20 = FIUIWorkoutActivityType.init(data:)(v19, v18);
    v21 = v30;
    v22 = v20;
    v26 = FIUIWorkoutActivityType.activityTypeForRegistry()();

    v25 = OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType;
    *&v21[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType] = v26;
    LOBYTE(v32) = 1;
    _s10Foundation4DateVACSeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 32))(&v21[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_orderDate], v27, v3);
    v23 = type metadata accessor for ActivityTypeListItem();
    v31.receiver = v21;
    v31.super_class = v23;
    v24 = objc_msgSendSuper2(&v31, sel_init);
    outlined consume of Data._Representation(v19, v18);
    (*(v14 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return v24;
}

unint64_t lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ActivityTypeListItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ActivityTypeListItem.CodingKeys()
{
  if (*v0)
  {
    result = 0x746144726564726FLL;
  }

  else
  {
    result = 0x7974697669746361;
  }

  *v0;
  return result;
}

id FIUIWorkoutActivityType.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v19 = v17;
    v20[0] = *v18;
    *(v20 + 9) = *&v18[9];
    v10 = FIUIWorkoutActivityType.ActivityType.fiuiActivityType()();
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = [v10 identifier];
    v15 = [v10 isIndoor];
    v14 = [v10 isPartOfMultiSport];
    v11 = [v10 metadata];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v4 = [v21 initWithActivityTypeIdentifier:v16 isIndoor:v15 isPartOfMultiSport:v14 metadata:isa auxiliaryTypeIdentifier:{objc_msgSend(v10, sel_auxiliaryTypeIdentifier)}];

    outlined destroy of FIUIWorkoutActivityType.ActivityType(&v19);

    outlined consume of Data._Representation(a1, a2);
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType()
{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType);
  }

  return result;
}

uint64_t specialized FIUIWorkoutActivityType.ActivityType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF033_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF033_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v22) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v22) = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 3;
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v22;
  v21 = v23;
  LOBYTE(v22) = 4;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v24 & 1;
  v14 = v19 & 1;
  v16 = v20;
  v15 = v21;
  outlined copy of Data?(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = outlined consume of Data?(v16, v15);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x726F6F646E497369;
  v4 = 0x617461646174656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t storeEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata()
{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

void *specialized FIUIWorkoutActivityType.ActivityTypeMetadata.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF8Metadata33_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF8Metadata33_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *protocol witness for Decodable.init(from:) in conformance FIUIWorkoutActivityType.ActivityTypeMetadata@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized FIUIWorkoutActivityType.ActivityTypeMetadata.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t FIUIWorkoutActivityType.ActivityTypeMetadata.metadata()(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (a2 >> 60 == 15)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20B423930;
  *(v7 + 32) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  *(v7 + 40) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(v7 + 48) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(v7 + 56) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
  *(v7 + 64) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  *(v7 + 72) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSTimeZone, 0x277CBEBB0);
  outlined copy of Data?(a1, a2);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  if (!v2)
  {

    if (v8[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        outlined consume of Data?(a1, a2);
        return v8[5];
      }
    }

    else
    {
      outlined destroy of Any?(v8);
    }

    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    outlined consume of Data?(a1, a2);
    return v3;
  }

  outlined consume of Data?(a1, a2);

  return v3;
}

id FIUIWorkoutActivityType.ActivityType.fiuiActivityType()()
{
  v2 = *v0;
  v1 = v0[1];
  FIUIWorkoutActivityType.ActivityTypeMetadata.metadata()(v0[3], v0[4]);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  v5 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithActivityTypeIdentifier:v2 isIndoor:v3 isPartOfMultiSport:v4 metadata:isa auxiliaryTypeIdentifier:v1];

  return v7;
}

uint64_t type metadata accessor for NSKeyedUnarchiver(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17NSKeyedUnarchiverCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17NSKeyedUnarchiverCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17NSKeyedUnarchiverCMaTm_2(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17NSKeyedUnarchiverCMaTm_3(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17NSKeyedUnarchiverCMaTm_4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id FIUIWorkoutActivityType.activityTypeForRegistry()()
{
  v1 = v0;
  v2 = [v0 metadata];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v3;
  v4 = *MEMORY[0x277D0A6F8];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary._Variant.removeValue(forKey:)(v5, v6, v15);

  outlined destroy of Any?(v15);
  v7 = *MEMORY[0x277D0A700];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary._Variant.removeValue(forKey:)(v8, v9, v15);

  outlined destroy of Any?(v15);
  v10 = [v1 effectiveTypeIdentifier];
  v11 = [v1 isIndoor];
  if (*(v16 + 16))
  {
    v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:v10 isIndoor:v11 metadata:v12.super.isa];

  return v13;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSeAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSeAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSeAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSeAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static WorkoutConfigurationOccurrenceStore.fetchConfigurationsSynchronously(with:)(void *a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[ConfigurationStore] loading all workout_configurations from database", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 24);
  result = v8(v6, v7);
  v11 = v10;
  if (v10)
  {
    v29 = v8;
    v12 = result;
    swift_getErrorValue();
    v13 = v11;
    v14 = Error.domain.getter();
    v16 = v15;
    v17 = *MEMORY[0x277CCA050];
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        return v12;
      }
    }

    v21 = v11;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v11;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_20AEA4000, v22, v23, "[ConfigurationStore] retry loading all workout_configurations from database on error: %@", v24, 0xCu);
      _sSo8NSObjectCSgWOhTm_3(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v25, -1, -1);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    v28 = v29(v6, v7);
    return v28;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;
  swift_unknownObjectRetain();
  v4(v6);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed Any) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void closure #1 in QueryClient.fetchConfigurationsSynchronously()(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v5 = aBlock[6];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchConfigurationsSynchronously();
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_429;
    v7 = _Block_copy(aBlock);

    v8 = a3;

    [v5 remote:v7 fetchAllConfigurationsAsSerializedPersistenceWithCompletion:?];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.core);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Unable to interpret proxy for fetch", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v13 = swift_allocError();
    swift_beginAccess();
    v14 = *(a2 + 24);
    *(a2 + 24) = v13;
  }
}

uint64_t sub_20AEBB0D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void closure #1 in closure #1 in QueryClient.fetchConfigurationsSynchronously()(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for NSFastEnumerationIterator();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  if (a2 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v33 = v13;
  v17 = objc_allocWithZone(MEMORY[0x277D7E7E0]);
  outlined copy of Data._Representation(a1, a2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v19 = [v17 initWithData_];

  if (!v19)
  {
    outlined consume of Data?(a1, a2);
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v20 = [v19 persistences];
  if (!v20)
  {
    outlined consume of Data?(a1, a2);

    goto LABEL_14;
  }

  v30 = v19;
  v31 = v11;
  v32 = a5;
  v16 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v29 = v20;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  while (v37)
  {
    outlined init with take of Any(&v36, &v35);
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOHealthBridgeProtoPersistence, 0x277D7E7D8);
    if (swift_dynamicCast())
    {
      v21 = v34;
      v22 = objc_opt_self();
      v28 = v21;
      v27[1] = [v22 persistenceFromProto_];
      MEMORY[0x20F2E6F30]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v16 = v38;
    }

    NSFastEnumerationIterator.next()();
  }

  (*(v31 + 8))(v15, v33);
  outlined consume of Data?(a1, a2);

LABEL_15:
  v23 = QueryClient.handleRetrievedPersistences(_:)(v16);

  swift_beginAccess();
  v24 = *(a4 + 16);
  v25 = *(a4 + 24);
  *(a4 + 16) = v23;
  *(a4 + 24) = a3;
  v26 = a3;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

Swift::Void __swiftcall UnlockedSinceBootMonitor.stopMonitoring()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedSinceBootMonitor.stopMonitoring()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UnlockedSinceBootMonitor.stopMonitoring();
    *(v14 + 24) = v10;
    aBlock[4] = partial apply for closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_8;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }
}

uint64_t sub_20AEBB7A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEBB7DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t WorkoutConfigurationOccurrenceStore.deduplicate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[7] = MEMORY[0x277D84FA0];
  v7 = swift_allocObject();
  v52 = v7;
  *(v7 + 16) = MEMORY[0x277D84F90];
  v54 = (v7 + 16);

  v50 = a1;
  aBlock[0] = specialized Array._copyToContiguousArray()(v8);
  specialized MutableCollection<>.sort(by:)(aBlock);
  v51 = 0;
  v9 = aBlock[0];
  if (aBlock[0] < 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_17:

    v24 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v10 = *(aBlock[0] + 16);
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v10 < 1)
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_23;
  }

  v11 = 0;
  v12 = v9 & 0xC000000000000001;
  v53 = v9 & 0xC000000000000001;
  do
  {
    if (v12)
    {
      v13 = MEMORY[0x20F2E7A20](v11, v9);
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    v14 = v13;
    type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    v16 = v14;
    if (specialized Set._Variant.insert(_:)(aBlock, v15))
    {
    }

    else
    {
      v17 = v10;
      v18 = *(aBlock[0] + 16);
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      *(v19 + 24) = v18;
      v20 = v18;
      v21 = v16;
      v22 = v20;
      v23 = v54;
      MEMORY[0x20F2E6F30]();
      if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      WorkoutConfiguration.appendAlternativeUUIDs(from:)(v21);

      v10 = v17;
      v12 = v53;
    }

    ++v11;
  }

  while (v10 != v11);

  v24 = *v54;
LABEL_18:
  v25 = v52;
  v10 = v50;
  if (v24 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_20;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = v10;
    v28 = v43;
    v27[4] = v43;
    aBlock[4] = partial apply for closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_97;
    v29 = _Block_copy(aBlock);

    v30 = v28;

    v31 = v44;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v32 = v46;
    v33 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v31, v32, v29);
    _Block_release(v29);

    (*(v48 + 8))(v32, v33);
    (*(v45 + 8))(v31, v47);
    goto LABEL_28;
  }

  if (one-time initialization token for app != -1)
  {
    goto LABEL_30;
  }

LABEL_23:
  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.app);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    if (v10 >> 62)
    {
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v38;

    _os_log_impl(&dword_20AEA4000, v35, v36, "[deduplicate] no duplicates found in %ld workout_configurations", v37, 0xCu);
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  else
  {
  }

LABEL_28:

  v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11WorkoutCore0D28ConfigurationOccurrenceStoreC0dF6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCG_AF0dF0Cs5NeverOTg504_s11d8Core0A28fgh19C11deduplicate33_41jklmno25CLLySayAA0aC0CGAHFAgC0aC6I57AELLCcfu0_32b7aaa5b2ee757458ba0f95a71f2c664dAjGTf3nnnpk_nTf1cn_n(v39);

  swift_bridgeObjectRelease_n();
  return v40;
}

uint64_t sub_20AEBBE6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEBBEB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double protocol witness for Decodable.init(from:) in conformance FIUIWorkoutActivityType.ActivityType@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized FIUIWorkoutActivityType.ActivityType.init(from:)(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

void QueryClient.remoteSynchronousProxy(handler:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider);
  if (v5)
  {
    v10 = v5;
    v11 = [v10 shouldRetryOnInterruption];
    [v10 setShouldRetryOnInterruption_];
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v20 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any) -> ();
    v21 = v12;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ();
    v19 = &block_descriptor_462;
    v13 = _Block_copy(&v16);

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v20 = partial apply for closure #1 in QueryClient.remoteSynchronousProxy(handler:errorHandler:);
    v21 = v14;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v19 = &block_descriptor_468;
    v15 = _Block_copy(&v16);

    [v10 getSynchronousProxyWithHandler:v13 errorHandler:v15];
    _Block_release(v15);
    _Block_release(v13);
    LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

    if (a4)
    {
      __break(1u);
    }

    else
    {
      [v10 setShouldRetryOnInterruption_];
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityTypeListItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

Swift::Int _NativeDictionary.subscript.modifyspecialized (Swift::Int result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(*(v3 + 56) + 8 * *(result + 16)) = v1;
    }

    else
    {
      return specialized _NativeDictionary._insert(at:key:value:)(*(result + 16), *(result + 24), v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return specialized _NativeDictionary._delete(at:)(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t specialized static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:)(void *a1, void *a2)
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v5 = v4;
  v6 = specialized static WorkoutConfigurationOccurrenceStore.fetchConfigurationsSynchronously(with:)(a1);
  v7 = v6;
  v9 = v8;
  v10 = v6 >> 62;
  if (v6 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v42 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x20F2E7A20](v13, v7);
      }

      else
      {
        v14 = *(v7 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = specialized WorkoutConfiguration.sanitized()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = *(v42 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v11 != v13);
LABEL_10:
    static Date.timeIntervalSinceReferenceDate.getter();
    v19 = v18;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.app);

    v21 = v9;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 134218498;
      if (v10)
      {
        v26 = __CocoaSet.count.getter();
      }

      else
      {
        v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = v19 - v5;

      *(v24 + 4) = v26;

      *(v24 + 12) = 2112;
      if (v9)
      {
        v34 = v9;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v35;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      *(v24 + 14) = v35;
      *v25 = v36;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v33;
      _os_log_impl(&dword_20AEA4000, v22, v23, "[ConfigurationStore] loaded %ld workout_configurations from database, error: %@, elapsed time: %f seconds", v24, 0x20u);
      _sSo8NSObjectCSgWOhTm_3(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v25, -1, -1);
      MEMORY[0x20F2E9420](v24, -1, -1);

      if (!v9)
      {
        goto LABEL_26;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      if (!v9)
      {
LABEL_26:
        v37 = a2[3];
        v38 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v37);
        (*(v38 + 48))(v37, v38);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_20AEA4000, v39, v40, "[ConfigurationStore] workout_configurations loaded, stop monitoring first unlock", v41, 2u);
          MEMORY[0x20F2E9420](v41, -1, -1);
        }

        return v9 == 0;
      }
    }

    swift_getErrorValue();
    v27 = v9;
    if (Error.code.getter() == 101)
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 67109120;
        _os_log_impl(&dword_20AEA4000, v28, v29, "[ConfigurationStore] cannot load workout_configurations before first unlock (loaded: %{BOOL}d), start monitoring first unlock", v30, 8u);
        MEMORY[0x20F2E9420](v30, -1, -1);
      }

      v31 = a2[3];
      v32 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v31);
      (*(v32 + 40))(v31, v32);
    }

    return v9 == 0;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for QueryClientProtocol.fetchConfigurationsSynchronously() in conformance QueryClient()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  v7[2] = v2;
  v7[3] = v1;

  QueryClient.remoteSynchronousProxy(handler:errorHandler:)(closure #1 in QueryClient.fetchConfigurationsSynchronously()partial apply, v7, closure #2 in QueryClient.fetchConfigurationsSynchronously()partial apply, v2);

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  v5 = v4;

  return v3;
}

uint64_t sub_20AEBC914()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  outlined consume of Data?(v4, v9);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t QueryClient.handleRetrievedPersistences(_:)(unint64_t a1)
{
  v2 = v1;
  v113 = type metadata accessor for UUID();
  v4 = *(v113 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v102 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = type metadata accessor for WorkoutPlan();
  v11 = *(v101 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v89[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x277D84F90];
  v119 = MEMORY[0x277D84F90];
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = v14;
  if (!a1)
  {
    v86 = v14;
    goto LABEL_41;
  }

  v106 = (v15 + 16);
  v99 = v7;
  type metadata accessor for WorkoutConfigurationValidator();
  swift_initStackObject();
  v17 = WorkoutConfigurationValidator.init()();
  if (a1 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v16;
  v105 = v2;
  if (!v18)
  {
    v111 = MEMORY[0x277D84F90];
LABEL_40:

    v14 = *v106;
    v16 = v104;
    v86 = v111;
LABEL_41:
    if (v14 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_45;
      }

      if (!__CocoaSet.count.getter())
      {
        swift_retain_n();
        specialized closure #1 in QueryClient.handleRetrievedPersistences(_:)(0, v16);
        goto LABEL_44;
      }
    }

    else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_45:

      return v86;
    }

    v87 = swift_allocObject();
    v87[2] = partial apply for closure #1 in QueryClient.handleRetrievedPersistences(_:);
    v87[3] = v16;
    v87[4] = v14;
    v88 = swift_allocObject();
    *(v88 + 16) = partial apply for closure #1 in QueryClient.handleRetrievedPersistences(_:);
    *(v88 + 24) = v16;
    swift_retain_n();

    QueryClient.remoteProxy(handler:errorHandler:)(partial apply for closure #1 in QueryClient.savePersistences(_:completion:), v87, partial apply for closure #2 in QueryClient.savePersistences(_:completion:), v88);

LABEL_44:

    goto LABEL_45;
  }

  result = type metadata accessor for WorkoutConfiguration();
  if (v18 >= 1)
  {
    v21 = 0;
    v100 = 0;
    v116 = a1 & 0xC000000000000001;
    v97 = *MEMORY[0x277CE3FA0];
    v96 = (v8 + 104);
    v95 = (v8 + 8);
    v94 = (v11 + 8);
    v111 = MEMORY[0x277D84F90];
    v109 = (v4 + 8);
    *&v20 = 136315138;
    v107 = v20;
    *&v20 = 136315394;
    v98 = v20;
    v108 = v18;
    v110 = result;
    while (1)
    {
      if (v116)
      {
        v22 = MEMORY[0x20F2E7A20](v21, a1);
      }

      else
      {
        v22 = *(a1 + 8 * v21 + 32);
      }

      v23 = v22;
      static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v22, 1, v17, v118);
      if (!v118[3])
      {
        _sypSgWOhTm_2(v118, &_sypSgMd, &_sypSgMR);
LABEL_19:
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static WOLog.core);
        v27 = v23;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v118[0] = v115;
          *v30 = v107;
          v31 = [v27 uuid];
          v32 = v112;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v33 = v21;
          v34 = v17;
          v35 = a1;
          v36 = v113;
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v114) = v29;
          v39 = v38;
          v40 = v32;
          v18 = v108;
          v41 = v36;
          a1 = v35;
          v17 = v34;
          v21 = v33;
          (*v109)(v40, v41);
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v118);

          *(v30 + 4) = v42;
          _os_log_impl(&dword_20AEA4000, v28, v114, "Unable to deserialize WorkoutConfiguration from persistence, uuid: %s", v30, 0xCu);
          v43 = v115;
          __swift_destroy_boxed_opaque_existential_0(v115);
          MEMORY[0x20F2E9420](v43, -1, -1);
          MEMORY[0x20F2E9420](v30, -1, -1);
        }

        goto LABEL_8;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      v24 = v117;
      MEMORY[0x20F2E6F30]();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v84 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v111 = v119;
      v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
      swift_beginAccess();
      if (!*&v24[v25])
      {
        v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        swift_beginAccess();
        if (v24[v44] == 2)
        {
          goto LABEL_24;
        }

        v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf;
        swift_beginAccess();
        if ((v24[v45] & 1) == 0)
        {
          break;
        }
      }

LABEL_8:
      v21 = (v21 + 1);
      if (v18 == v21)
      {
        goto LABEL_40;
      }
    }

    [v23 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
    if (swift_dynamicCast())
    {
      v115 = v21;
      v114 = v117;
      v46 = v103;
      v47 = v100;
      WorkoutConfiguration.workoutPlanRepresentation()(v103);
      if (v47)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v100 = 0;
        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static WOLog.core);
        v51 = v23;
        v52 = v47;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v118[0] = v93;
          *v55 = v98;
          v56 = [v51 uuid];
          v91 = v53;
          v57 = v56;
          v58 = v18;
          v59 = v112;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
          v90 = v54;
          v92 = v51;
          v60 = a1;
          v61 = v113;
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v64 = v63;
          v65 = v59;
          v18 = v58;
          v66 = v61;
          a1 = v60;
          (*v109)(v65, v66);
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v118);

          *(v55 + 4) = v67;
          *(v55 + 12) = 2080;
          v117 = v47;
          v68 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v69 = String.init<A>(describing:)();
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v118);

          *(v55 + 14) = v71;
          v72 = v91;
          _os_log_impl(&dword_20AEA4000, v91, v90, "Unable to serialize %s with proto due to: %s", v55, 0x16u);
          v73 = v93;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v73, -1, -1);
          MEMORY[0x20F2E9420](v55, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v48 = v102;
        v49 = v99;
        (*v96)(v102, v97, v99);
        v74 = WorkoutPlan.dataRepresentation(as:)();
        v76 = v75;
        v100 = 0;
        (*v95)(v48, v49);
        (*v94)(v46, v101);
        v77 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v78 = *&v24[v77];
        v79 = v74;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v81 = v114;
        [v114 setPersistedProtoData_];

        WOPersistence.set(occurrence:)(v78);
        v82 = v81;
        v83 = v106;
        MEMORY[0x20F2E6F30]();
        if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v85 = *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        outlined consume of Data._Representation(v79, v76);

        v18 = v108;
      }

      v21 = v115;
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_20AEBD7C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEBD7F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEBD830()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void closure #1 in UnlockedSinceBootMonitor.stopMonitoring()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + 16) == -1)
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static WOLog.app);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_20AEA4000, v7, v8, "[UnlockedSinceBoot] not monitoring lock status notifications", v9, 2u);
        MEMORY[0x20F2E9420](v9, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static WOLog.app);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_20AEA4000, v3, v4, "[UnlockedSinceBoot] deregistering for lock status notifications", v5, 2u);
        MEMORY[0x20F2E9420](v5, -1, -1);
      }

      notify_cancel(*(v1 + 16));
      *(v1 + 16) = -1;
    }
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v46 = type metadata accessor for Date();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v46);
  v45 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = v36 - v7;
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v38 = v8 + 32;
  v49[0] = v8 + 32;
  v49[1] = v10;
  v11 = _minimumMergeRunLength(_:)(v10);
  if (v11 >= v10)
  {
    if (v10 >= 2)
    {
      v36[1] = a1;
      v36[2] = v1;
      v42 = (v3 + 8);
      v43 = (v3 + 16);
      v14 = -1;
      v15 = 1;
      v16 = v38;
      v37 = v10;
      do
      {
        v40 = v15;
        v41 = v14;
        v17 = *(v38 + 8 * v15);
        v50 = v14;
        v39 = v16;
        do
        {
          v18 = *v16;
          v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v20 = *&v17[v19];
          v21 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
          swift_beginAccess();
          v22 = v44;
          v23 = *v43;
          v24 = v46;
          (*v43)(v44, v20 + v21, v46);
          v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v26 = *&v18[v25];
          v27 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
          swift_beginAccess();
          v28 = v26 + v27;
          v29 = v45;
          v23(v45, v28, v24);
          v30 = v17;
          v31 = v18;
          LOBYTE(v27) = static Date.< infix(_:_:)();
          v32 = *v42;
          (*v42)(v29, v24);
          v32(v22, v24);

          if ((v27 & 1) == 0)
          {
            break;
          }

          v33 = *v16;
          v17 = v16[1];
          *v16 = v17;
          v16[1] = v33;
          --v16;
        }

        while (!__CFADD__(v50++, 1));
        v15 = v40 + 1;
        v16 = v39 + 1;
        v14 = v41 - 1;
      }

      while (v40 + 1 != v37);
    }
  }

  else
  {
    v12 = v11;
    if (v10 >= 2)
    {
      type metadata accessor for WorkoutConfiguration();
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10 >> 1;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v48[0] = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
    v48[1] = v10 >> 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v48, v47, v49, v12);
    *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v24 = v2 + 32;
  v27[0] = v2 + 32;
  v27[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v24;
      v23 = v4;
      do
      {
        v11 = *(v24 + 8 * v9);
        v28 = v8;
        v12 = v10;
        do
        {
          v13 = *v12;
          v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v15 = *(v11 + v14);
          v16 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          LODWORD(v15) = *(v15 + v16);
          v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v18 = *(v13 + v17);
          v19 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          if (*(v18 + v19) >= v15)
          {
            break;
          }

          v20 = *v12;
          v11 = v12[1];
          *v12 = v11;
          v12[1] = v20;
          --v12;
        }

        while (!__CFADD__(v8++, 1));
        ++v9;
        ++v10;
        v8 = v28 - 1;
      }

      while (v9 != v23);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for GoalWorkoutConfiguration();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v26[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v26[1] = v4 >> 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v26, v25, v27, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v22 = v2 + 32;
  v25[0] = (v2 + 32);
  v25[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v22;
      v21 = v4;
      do
      {
        v11 = *(v22 + 8 * v9);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          v15 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
          swift_beginAccess();
          v16 = *(v11 + v15);
          v17 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
          swift_beginAccess();
          if (*(v14 + v17) >= v16)
          {
            break;
          }

          v18 = *v13;
          v11 = v13[1];
          *v13 = v11;
          v13[1] = v18;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v21);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for RaceWorkoutConfiguration();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v24[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v4 >> 1;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v24, v23, v25, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v27 = v2 + 32;
  v26[0] = v2 + 32;
  v26[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v27;
      do
      {
        v12 = *(v27 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          swift_beginAccess();
          v16 = *(v12 + 16);
          swift_beginAccess();
          v17 = *(v16 + 16);
          v18 = *(v16 + 24);
          swift_beginAccess();
          v19 = *(v15 + 16);
          swift_beginAccess();
          if (v17 == *(v19 + 16) && v18 == *(v19 + 24))
          {
            break;
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v21 = *v14;
          v12 = v14[1];
          *v14 = v12;
          v14[1] = v21;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for QueriedExternalProvider();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v25[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v25[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v25, v24, v26, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

{
  v40 = type metadata accessor for Date();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v40);
  v41 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v31 - v7;
  NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0(NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0);
    *a1 = NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0;
  }

  v10 = *(NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0 + 16);
  v33 = NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0 + 32;
  v44[0] = NewAByxGyF11WorkoutCore20ActivityTypeListItemC_Tg5_0 + 32;
  v44[1] = v10;
  v11 = _minimumMergeRunLength(_:)(v10);
  if (v11 >= v10)
  {
    if (v10 >= 2)
    {
      v31[1] = a1;
      v31[2] = v1;
      v37 = (v3 + 8);
      v38 = (v3 + 16);
      v14 = -1;
      v15 = 1;
      v16 = v33;
      v32 = v10;
      do
      {
        v35 = v15;
        v36 = v14;
        v17 = *(v33 + 8 * v15);
        v45 = v14;
        v34 = v16;
        do
        {
          v18 = *v16;
          v19 = OBJC_IVAR___WOWorkoutChartDataElement_date;
          swift_beginAccess();
          v20 = v39;
          v21 = *v38;
          v22 = v40;
          (*v38)(v39, &v17[v19], v40);
          v23 = OBJC_IVAR___WOWorkoutChartDataElement_date;
          swift_beginAccess();
          v24 = v41;
          v21(v41, &v18[v23], v22);
          v25 = v17;
          v26 = v18;
          LOBYTE(v23) = static Date.< infix(_:_:)();
          v27 = *v37;
          (*v37)(v24, v22);
          v27(v20, v22);

          if ((v23 & 1) == 0)
          {
            break;
          }

          v28 = *v16;
          v17 = v16[1];
          *v16 = v17;
          v16[1] = v28;
          --v16;
        }

        while (!__CFADD__(v45++, 1));
        v15 = v35 + 1;
        v16 = v34 + 1;
        v14 = v36 - 1;
      }

      while (v35 + 1 != v32);
    }
  }

  else
  {
    v12 = v11;
    if (v10 >= 2)
    {
      type metadata accessor for WorkoutChartDataElement();
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10 >> 1;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v43[0] = ((v13 & 0xFFFFFFFFFFFFFF8) + 32);
    v43[1] = (v10 >> 1);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v43, v42, v44, v12);
    *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t WorkoutConfigurationOccurrenceStore.configurations.didset()
{
  *(v0 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated) = 0;
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(*(v2 + 16), 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v8, v4 + 4, v3, v2);

  sub_20AEBDF2C();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized Sequence.forEach(_:)(v4, &v8);

  v6 = *(v0 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations);
  *(v0 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations) = v8;
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      closure #1 in static WorkoutConfiguration.alternativeConfigurations(in:)(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      closure #1 in closure #2 in closure #1 in WorkoutConfigurationDataSource.load()(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void closure #3 in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
      swift_beginAccess();
      *(v6 + 4) = (*(&v3->isa + v7))[2];

      _os_log_impl(&dword_20AEA4000, v4, v5, "[ConfigurationStore] loaded %ld workout_configurations", v6, 0xCu);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    else
    {

      v4 = v3;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v8 = static Published.subscript.modify();
    if (__OFADD__(*v9, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v9;
      v8(v18, 0);

      v10 = v3;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        *(v13 + 4) = v18[0];

        _os_log_impl(&dword_20AEA4000, v11, v12, "[ConfigurationStore] modificationCountPublished: %ld, post data updated notification for loaded workout_configurations", v13, 0xCu);
        MEMORY[0x20F2E9420](v13, -1, -1);
      }

      else
      {

        v11 = v10;
      }

      v14 = v10 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        (*(v15 + 16))(ObjectType, v15);
        swift_unknownObjectRelease();
      }

      v17 = [objc_opt_self() defaultCenter];
      [v17 postNotificationName:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0 userInfo:0];
    }
  }
}

uint64_t WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore____lazy_storage___managedConfigurationsStore;
  if (*&v0[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore____lazy_storage___managedConfigurationsStore])
  {
    v2 = *&v0[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore____lazy_storage___managedConfigurationsStore];
  }

  else
  {
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v0[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient], v9);
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v0[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager], v8);
    v3 = *&v0[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_applicationSignificantTimeChangeNotificationName];
    v4 = v0;
    v5 = v3;
    v2 = _s11WorkoutCore0A26ManagedConfigurationsStoreC11queryClient26backgroundAssertionManager35systemConfigurationSyncStateHandler48applicationSignificantTimeChangeNotificationNameAcA05QueryG8Protocol_p_AA010BackgroundijW0_pAA06SystemlmnO0_pSo014NSNotificationU0atcfCTfq4nnenn_nAA0al10OccurrenceE0C_Tt3g5Tf4nngg_n(v9, v8, v4, v5);

    v6 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t _s11WorkoutCore0A26ManagedConfigurationsStoreC11queryClient26backgroundAssertionManager35systemConfigurationSyncStateHandler48applicationSignificantTimeChangeNotificationNameAcA05QueryG8Protocol_p_AA010BackgroundijW0_pAA06SystemlmnO0_pSo014NSNotificationU0atcfCTfq4nnenn_nAA0al10OccurrenceE0C_Tt3g5Tf4nngg_n(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  type metadata accessor for WorkoutManagedConfigurationsStore();
  v8 = swift_allocObject();
  v14[3] = type metadata accessor for WorkoutConfigurationOccurrenceStore();
  v14[4] = &protocol witness table for WorkoutConfigurationOccurrenceStore;
  v14[0] = a3;
  v9 = a3;
  *(v8 + 136) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore16ExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v8 + 144) = -1;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(a1, v8 + 16);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(a2, v8 + 56);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v14, v8 + 96);
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  [v11 addObserver:v8 selector:sel_handleSignificantTimeChangeNotification name:a4 object:0];

  v12 = [v10 defaultCenter];
  [v12 addObserver:v8 selector:sel_handleCalendarDayChangedNotification name:*MEMORY[0x277CBE580] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm_6(a2);
  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v14);
  return v8;
}

void thunk for @escaping @callee_guaranteed (@guaranteed AudioAccessoryDevice?, @unowned AAHRMDeviceHIDAbstraction) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

Swift::Void __swiftcall StandardActivityItemsDataSource.updateCompoundObservers()()
{
  v1 = StandardActivityItemsDataSource.queryCompoundActivityPickerItems()();
  v2 = [*(v0 + OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers) allObjects];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
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
      v6 = MEMORY[0x20F2E7A20](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7 && v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v1, 1, ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
}

uint64_t CompoundActivityItemsDataSource.compoundDataSourceDidUpdate(withItems:section:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.activityPicker);
  swift_bridgeObjectRetain_n();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315394;
    if (a2 == 1)
    {
      v17 = 0xE800000000000000;
      v18 = 0x647261646E617473;
    }

    else
    {
      if (a2)
      {
        swift_bridgeObjectRelease_n();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v17 = 0xE600000000000000;
      v18 = 0x646564697567;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    v20 = *(a1 + 16);

    *(v15 + 14) = v20;

    _os_log_impl(&dword_20AEA4000, v13, v14, "Compound: dataSource didUpdate section=%s items=%ld", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = a2;
  v21[4] = a1;
  v22 = objc_opt_self();

  v23 = v3;
  if ([v22 isMainThread])
  {
    closure #1 in CompoundActivityItemsDataSource.compoundDataSourceDidUpdate(withItems:section:)(v23, a2, a1);
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_7(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for closure #1 in CompoundActivityItemsDataSource.compoundDataSourceDidUpdate(withItems:section:);
    *(v26 + 24) = v21;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_2;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_9_1;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v28 = v32;
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v28, v27);
    _Block_release(v27);

    (*(v34 + 8))(v28, v29);
    return (*(v31 + 8))(v11, v33);
  }
}

uint64_t sub_20AEBF06C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEBF0AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for ActivityTypeListItem();
    v5 = lazy protocol witness table accessor for type ActivityTypeListItem and conformance NSObject();
    result = MEMORY[0x20F2E7290](i, v4, v5);
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
        v9 = MEMORY[0x20F2E7A20](j, a1);
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

unint64_t lazy protocol witness table accessor for type ActivityTypeListItem and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type ActivityTypeListItem and conformance NSObject;
  if (!lazy protocol witness table cache variable for type ActivityTypeListItem and conformance NSObject)
  {
    type metadata accessor for ActivityTypeListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance NSObject);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for ActivityTypeListItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11WorkoutCore20ActivityTypeListItemC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for ActivityTypeListItem();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ActivityTypeListItem();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t ActivityTypeListItem.isEqual(_:)(uint64_t a1)
{
  _s10Foundation4DateVSgWOcTm_2(a1, v10, &_sypSgMd, &_sypSgMR);
  if (v11)
  {
    type metadata accessor for ActivityTypeListItem();
    if (swift_dynamicCast())
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      v2 = OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType;
      v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType);
      v4 = *&v9[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType];
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        v6 = [v3 isStandard];
        v7 = [*&v9[v2] isStandard];

        return v6 ^ v7 ^ 1;
      }
    }
  }

  else
  {
    _s10Foundation4DateVSgWOhTm_4(v10, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sypSgWOhTm_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_4(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1);
    sub_20AEBDF2C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1);
    sub_20AEBDF2C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

id specialized Sequence._copySequenceContents(initializing:)(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for ActivityTypeListItem();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ActivityTypeListItem and conformance NSObject, type metadata accessor for ActivityTypeListItem);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for ActivityTypeListItem();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ActivityTypeListItem();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivitySegmentMarker, off_277D86C68);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v17 = a3;
    v7 = *(v4 + 8 * a3);
    v15 = v6;
    v16 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = static Date.> infix(_:_:)();

      if ((v11 & 1) == 0)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 = v16 + 8;
        v6 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v12;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v44 = type metadata accessor for DateInterval();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Date();
  v12 = *(*(v43 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = &v33 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v39 = (v15 + 8);
    v40 = (v8 + 8);
    v38 = v17;
    v18 = v17 + 16 * a3;
    v19 = a1 - a3;
LABEL_5:
    v36 = v18;
    v37 = a3;
    v35 = v19;
    v45 = v19;
    while (1)
    {
      v20 = *v18;
      v21 = *(v18 - 16);
      v46 = v21;
      v47 = v20;
      v22 = [v47 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = v41;
      DateInterval.end.getter();
      v24 = *v40;
      v25 = v44;
      (*v40)(v11, v44);
      v26 = [v21 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = v42;
      DateInterval.end.getter();
      v24(v11, v25);
      LOBYTE(v26) = static Date.< infix(_:_:)();
      v28 = *v39;
      v29 = v43;
      (*v39)(v27, v43);
      v28(v23, v29);

      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v18 = v36 + 16;
        v19 = v35 - 1;
        if (v37 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v30 = *v18;
      v31 = *(v18 + 8);
      *v18 = *(v18 - 16);
      *(v18 - 8) = v31;
      *(v18 - 16) = v30;
      v18 -= 16;
      if (__CFADD__(v45++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v36 = type metadata accessor for Date();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v21 timestamp];
      v24 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v23) = static Date.< infix(_:_:)();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  v36 = type metadata accessor for Date();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v21 startDate];
      v24 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v23) = static Date.< infix(_:_:)();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 segmentIndex];
      v13 = [v11 segmentIndex];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}