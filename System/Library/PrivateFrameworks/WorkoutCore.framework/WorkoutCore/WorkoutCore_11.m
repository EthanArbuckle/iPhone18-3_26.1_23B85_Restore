id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v17 + 1);
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySuGMd, &_ss11_SetStorageCySuGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x20F2E7FD0](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      v19 = *(v17 + 16);
      v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v19 + v20) + 1);
      v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v22 = *(v19 + v21);

      v23 = v22;
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v2 = v31;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v19);
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v32 = v1;
    v33 = a1 + 32;
    while (1)
    {
      v6 = *(v33 + v4);
      v34 = v4 + 1;
      v7 = *(v3 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 > 3)
          {
            if (*(*(v3 + 48) + v10) > 5u)
            {
              if (v14 == 6)
              {
                v18 = 0x5F65676172657661;
                v19 = 0xED00007265776F70;
                if (v6 > 3)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                v19 = 0xE400000000000000;
                v18 = 1701736302;
                if (v6 > 3)
                {
                  goto LABEL_32;
                }
              }
            }

            else
            {
              if (v14 == 4)
              {
                v18 = 0x5F65676172657661;
              }

              else
              {
                v18 = 0xD000000000000013;
              }

              if (v14 == 4)
              {
                v19 = 0xEF65636E65646163;
              }

              else
              {
                v19 = 0x800000020B4544E0;
              }

              if (v6 > 3)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            v15 = 0xD000000000000015;
            if (v14 == 2)
            {
              v15 = 0xD000000000000012;
            }

            v16 = 0x800000020B4544B0;
            if (v14 == 2)
            {
              v16 = 0x800000020B454490;
            }

            v17 = 0x5F676E696C6C6F72;
            if (*(*(v3 + 48) + v10))
            {
              v17 = 0x5F65676172657661;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v18 = v17;
            }

            else
            {
              v18 = v15;
            }

            if (*(*(v3 + 48) + v10) <= 1u)
            {
              v19 = 0xEC00000065636170;
            }

            else
            {
              v19 = v16;
            }

            if (v6 > 3)
            {
LABEL_32:
              v20 = 1701736302;
              if (v6 == 6)
              {
                v20 = 0x5F65676172657661;
              }

              v21 = 0xED00007265776F70;
              if (v6 != 6)
              {
                v21 = 0xE400000000000000;
              }

              if (v6 == 4)
              {
                v22 = 0x5F65676172657661;
              }

              else
              {
                v22 = 0xD000000000000013;
              }

              v23 = 0xEF65636E65646163;
              if (v6 != 4)
              {
                v23 = 0x800000020B4544E0;
              }

              if (v6 <= 5)
              {
                v24 = v22;
              }

              else
              {
                v24 = v20;
              }

              if (v6 <= 5)
              {
                v25 = v23;
              }

              else
              {
                v25 = v21;
              }

              if (v18 != v24)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            }
          }

          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v28 = 0xD000000000000012;
            }

            else
            {
              v28 = 0xD000000000000015;
            }

            if (v6 == 2)
            {
              v25 = 0x800000020B454490;
            }

            else
            {
              v25 = 0x800000020B4544B0;
            }

            if (v18 != v28)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v26 = 0x5F676E696C6C6F72;
            v25 = 0xEC00000065636170;
            if (v6)
            {
              v26 = 0x5F65676172657661;
            }

            if (v18 != v26)
            {
              goto LABEL_55;
            }
          }

LABEL_54:
          if (v19 == v25)
          {

            goto LABEL_4;
          }

LABEL_55:
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v29 = *(v3 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v3 + 16) = v31;
LABEL_4:
      v4 = v34;
      if (v34 == v32)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo9HRCDeviceC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo9HRCDeviceCGMd, &_ss11_SetStorageCySo9HRCDeviceCGMR);
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
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F2E7A20](v7, v1);
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
        type metadata accessor for HRCDevice();
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
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
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
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v3 + 40);
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for HRCDevice();
        while (1)
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v28) = v30 | v29;
        *(*(v3 + 48) + 8 * v27) = v24;
        v34 = *(v3 + 16);
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore17ConfigurationTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10 + 1);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x20F2E7A20](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo19NLWorkoutSplitsTypeV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo19NLWorkoutSplitsTypeVGMd, &_ss11_SetStorageCySo19NLWorkoutSplitsTypeVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
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

unint64_t type metadata accessor for HRCDevice()
{
  result = lazy cache variable for type metadata for HRCDevice;
  if (!lazy cache variable for type metadata for HRCDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HRCDevice);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static NLSessionActivityGoal.canonical()()
{
  v0 = [objc_opt_self() secondUnit];
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:300.0];

  [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v1];

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance NLSessionActivityGoal@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() secondUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:300.0];

  [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v3];
  result = swift_dynamicCastUnknownClassUnconditional();
  *a1 = result;
  return result;
}

uint64_t key path getter for TrackRunningMirroredSnapshot.trackModeEnabled : TrackRunningMirroredSnapshot@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for TrackRunningMirroredSnapshot.trackModeEnabled : TrackRunningMirroredSnapshot(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t TrackRunningMirroredSnapshot.trackModeEnabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TrackRunningMirroredSnapshot.trackModeEnabled.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*TrackRunningMirroredSnapshot.trackModeEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return TrackRunningMirroredSnapshot.trackModeEnabled.modify;
}

void TrackRunningMirroredSnapshot.trackModeEnabled.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for TrackRunningMirroredSnapshot.$trackModeEnabled : TrackRunningMirroredSnapshot(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for TrackRunningMirroredSnapshot.$trackModeEnabled : TrackRunningMirroredSnapshot(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t TrackRunningMirroredSnapshot.$trackModeEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TrackRunningMirroredSnapshot.$trackModeEnabled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*TrackRunningMirroredSnapshot.$trackModeEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMirroredSnapshot__trackModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningMirroredSnapshot.$trackModeEnabled.modify;
}

void TrackRunningMirroredSnapshot.$trackModeEnabled.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t TrackRunningMirroredSnapshot.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMirroredSnapshot__trackModeEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackRunningMirroredSnapshot.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMirroredSnapshot__trackModeEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackRunningMirroredSnapshot()
{
  result = type metadata singleton initialization cache for TrackRunningMirroredSnapshot;
  if (!type metadata singleton initialization cache for TrackRunningMirroredSnapshot)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrackRunningMirroredSnapshot()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t LocationPositionPublisher.locations.getter()
{
  return LocationPositionPublisher.locations.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for LocationPositionPublisher.locations : LocationPositionPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for LocationPositionPublisher.locations : LocationPositionPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for LocationPositionPublisher.locations : LocationPositionPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for LocationPositionPublisher.locations : LocationPositionPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LocationPositionPublisher.locations.setter()
{
  return LocationPositionPublisher.locations.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LocationPositionPublisher.locations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LocationPositionPublisher.locations.modify;
}

uint64_t key path setter for LocationPositionPublisher.$locations : LocationPositionPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t LocationPositionPublisher.$locations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LocationPositionPublisher.$locations.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocationPositionPublisher.$locations.modify;
}

uint64_t (*LocationPositionPublisher.routePoints.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LocationPositionPublisher.routePoints.modify;
}

uint64_t key path setter for LocationPositionPublisher.$routePoints : LocationPositionPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMd, &_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t LocationPositionPublisher.$routePoints.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMd, &_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LocationPositionPublisher.$routePoints.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMd, &_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocationPositionPublisher.$routePoints.modify;
}

uint64_t LocationPositionPublisher.routePosition.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for LocationPositionPublisher.routePosition : LocationPositionPublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  return result;
}

uint64_t key path setter for LocationPositionPublisher.routePosition : LocationPositionPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 12);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LocationPositionPublisher.routePosition.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LocationPositionPublisher.routePosition.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LocationPositionPublisher.routePosition.modify;
}

void LocationPositionPublisher.locations.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t LocationPositionPublisher.$locations.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for LocationPositionPublisher.$locations : LocationPositionPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LocationPositionPublisher.$routePosition : LocationPositionPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t LocationPositionPublisher.$routePosition.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LocationPositionPublisher.$routePosition.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocationPositionPublisher.$routePosition.modify;
}

void LocationPositionPublisher.$locations.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t LocationPositionPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  LocationPositionPublisher.init()();
  return v3;
}

uint64_t LocationPositionPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  v20 = *(v1 - 8);
  v21 = v1;
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v17 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit10RoutePointVGMd, &_sSay10WorkoutKit10RoutePointVGMR);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v17, v9, v5);
  v18 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  Published.init(initialValue:)();
  (*(v20 + 32))(v0 + v18, v4, v21);
  return v0;
}

uint64_t LocationPositionPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t LocationPositionPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LocationPositionPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t LocationPositionPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  LocationPositionPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v3, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  return v4;
}

size_t LocationPositionPublisher.protobuf.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoutePoint();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v18 = a1 + *(v17 + 24);
  UnknownStorage.init()();
  v19 = *(v17 + 28);
  v21 = *(v5 + 56);
  v20 = v5 + 56;
  v59 = a1;
  v53 = v19;
  v54 = v21;
  v21(a1 + v19, 1, 1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v2;
  static Published.subscript.getter();

  v22 = v67;
  if (v67 >> 62)
  {
    v49 = v67;
    v50 = __CocoaSet.count.getter();
    v22 = v49;
    v23 = v50;
  }

  else
  {
    v23 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v13;
  v56 = v20;
  v57 = v4;
  if (v23)
  {
    v24 = v22;
    v67 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      return result;
    }

    v63 = v23;
    v52 = v16;
    v26 = 0;
    v27 = v67;
    v28 = v24;
    v62 = v24 & 0xC000000000000001;
    v29 = v24;
    do
    {
      if (v62)
      {
        v30 = MEMORY[0x20F2E7A20](v26, v28);
      }

      else
      {
        v30 = *(v28 + 8 * v26 + 32);
      }

      v31 = v30;
      *(&v51 - 2) = MEMORY[0x28223BE20](v30);
      lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);
      static Message.with(_:)();

      v67 = v27;
      v33 = *(v27 + 2);
      v32 = *(v27 + 3);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v27 = v67;
      }

      ++v26;
      *(v27 + 2) = v33 + 1;
      outlined init with take of Apple_Workout_Core_CLLocation(v12, &v27[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33], type metadata accessor for Apple_Workout_Core_CLLocation);
      v28 = v29;
    }

    while (v63 != v26);

    v13 = v60;
    v16 = v52;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  *v59 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = *(v67 + 16);
  if (v34)
  {
    v35 = *(v61 + 16);
    v36 = *(v61 + 80);
    v52 = v67;
    v37 = (v67 + ((v36 + 32) & ~v36));
    v62 = *(v61 + 72);
    v63 = v35;
    v38 = (v61 + 8);
    v39 = MEMORY[0x277D84F90];
    v61 += 16;
    (v35)(v16, v37, v13);
    while (1)
    {
      v40 = RoutePoint.dataRepresentation.getter();
      v42 = v41;
      (*v38)(v16, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
      }

      v44 = *(v39 + 2);
      v43 = *(v39 + 3);
      if (v44 >= v43 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v39);
      }

      *(v39 + 2) = v44 + 1;
      v45 = &v39[16 * v44];
      *(v45 + 4) = v40;
      *(v45 + 5) = v42;
      v13 = v60;
      v37 += v62;
      if (!--v34)
      {
        break;
      }

      v63(v16, v37, v60);
    }
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v46 = v59;
  v59[1] = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v64 = v67;
  v65 = v68;
  v66 = v69;
  v47 = v55;
  RacePosition.protobuf.getter(v55);
  v48 = v53;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(v46 + v53, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_CLLocation(v47, v46 + v48, type metadata accessor for Apple_Workout_Core_RacePosition);
  return v54(v46 + v48, 0, 1, v57);
}

uint64_t closure #1 in closure #1 in LocationPositionPublisher.protobuf.getter(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 coordinate];
  *a1 = v9;
  [a2 coordinate];
  a1[1] = v10;
  [a2 altitude];
  a1[2] = v11;
  [a2 horizontalAccuracy];
  a1[3] = v12;
  [a2 verticalAccuracy];
  a1[4] = v13;
  v14 = [a2 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  result = (*(v5 + 8))(v8, v4);
  a1[5] = v16;
  return result;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit10RoutePointVSgMd, &_s10WorkoutKit10RoutePointVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v69 - v13;
  v14 = type metadata accessor for RoutePoint();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14);
  v81 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v26 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *v1;
  v28 = *(*v1 + 16);
  v29 = MEMORY[0x277D84F90];
  v76 = v1;
  v77 = a1;
  if (v28)
  {
    v86 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v30 = v18;
    v31 = v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v32 = *(v23 + 72);
    v33 = (v30 + 8);
    do
    {
      outlined init with copy of Apple_Workout_Core_CLLocation(v31, v26);
      v34 = *v26;
      v35 = v26[1];
      v36 = v26[2];
      v37 = v26[3];
      v39 = v26[4];
      v38 = *(v26 + 5);
      Date.init(timeIntervalSinceReferenceDate:)();
      v40 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v40 initWithCoordinate:isa altitude:v34 horizontalAccuracy:v35 verticalAccuracy:v36 timestamp:{v37, v39}];

      (*v33)(v21, v17);
      outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v26, type metadata accessor for Apple_Workout_Core_CLLocation);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = v86[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v31 += v32;
      --v28;
    }

    while (v28);
    v29 = v86;
    v1 = v76;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v29;

  result = static Published.subscript.setter();
  v44 = v1[1];
  v82 = *(v44 + 16);
  v45 = v75;
  if (v82)
  {
    v46 = 0;
    v47 = v79;
    v48 = (v78 + 56);
    v80 = (v78 + 32);
    v49 = (v44 + 40);
    v50 = MEMORY[0x277D84F90];
    while (v46 < *(v44 + 16))
    {
      outlined copy of Data._Representation(*(v49 - 1), *v49);
      RoutePoint.init(from:)();
      (*v48)(v45, 0, 1, v47);
      v51 = *v80;
      (*v80)(v81, v45, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
      }

      v53 = v50[2];
      v52 = v50[3];
      if (v53 >= v52 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v50);
      }

      v50[2] = v53 + 1;
      v54 = v50 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v53;
      v47 = v79;
      result = (v51)(v54, v81, v79);
      ++v46;
      v49 += 2;
      if (v82 == v46)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v86 = v50;

    static Published.subscript.setter();
    v55 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 28);
    v56 = v76;
    v57 = v72;
    outlined init with copy of Apple_Workout_Core_RacePosition?(v76 + v55, v72);
    v58 = v74;
    v59 = *(v73 + 48);
    v60 = v59(v57, 1, v74);
    result = _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(v57, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    if (v60 != 1)
    {
      v61 = v56 + v55;
      v62 = v70;
      outlined init with copy of Apple_Workout_Core_RacePosition?(v61, v70);
      if (v59(v62, 1, v58) == 1)
      {
        v63 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
        v64 = v71;
        (*(*(v63 - 8) + 56))(v71, 1, 1, v63);
        v65 = v64 + *(v58 + 20);
        UnknownStorage.init()();
        if (v59(v62, 1, v58) != 1)
        {
          _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(v62, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
        }
      }

      else
      {
        v64 = v71;
        outlined init with take of Apple_Workout_Core_CLLocation(v62, v71, type metadata accessor for Apple_Workout_Core_RacePosition);
      }

      Apple_Workout_Core_RacePosition.decoded.getter(&v86);
      outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v64, type metadata accessor for Apple_Workout_Core_RacePosition);
      v66 = v86;
      v67 = v87;
      v68 = v88;
      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v66;
      v84 = v67;
      v85 = v68;

      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t LocationPositionPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static LocationPositionPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance LocationPositionPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  LocationPositionPublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v4, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance LocationPositionPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static LocationPositionPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance LocationPositionPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static LocationPositionPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E11_CLLocationVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E11_CLLocationVGMR, type metadata accessor for Apple_Workout_Core_CLLocation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence24AudioSynthesisVoiceAssetVGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence24AudioSynthesisVoiceAssetVGMR, MEMORY[0x277D0A548]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMR, MEMORY[0x277CE4038]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMR, MEMORY[0x277CE4030]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore9ChronicleC5Entry33_4187E426563C81360BECB91D6C999F5FLLVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore9ChronicleC5Entry33_4187E426563C81360BECB91D6C999F5FLLVGMR, type metadata accessor for Chronicle.Entry);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
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
  result = _swift_stdlib_malloc_size_1(v17);
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static LocationPositionPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationPositionPublisher();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  LocationPositionPublisher.init()();
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_LocationPositionPublisher.decodeInto(publisher:)(v14);
    outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v10, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  return v14;
}

uint64_t type metadata accessor for LocationPositionPublisher()
{
  result = type metadata singleton initialization cache for LocationPositionPublisher;
  if (!type metadata singleton initialization cache for LocationPositionPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LocationPositionPublisher()
{
  type metadata accessor for Published<[CLLocation]>(319, &lazy cache variable for type metadata for Published<[CLLocation]>, &_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Published<[CLLocation]>(319, &lazy cache variable for type metadata for Published<[RoutePoint]>, &_sSay10WorkoutKit10RoutePointVGMd, &_sSay10WorkoutKit10RoutePointVGMR);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Published<RacePosition>();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<[CLLocation]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Published<RacePosition>()
{
  if (!lazy cache variable for type metadata for Published<RacePosition>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RacePosition>);
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LowPowerModeMonitor.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 56);
  return result;
}

uint64_t LowPowerModeMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LowPowerModeMonitor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return LowPowerModeMonitor.delegate.modify;
}

void LowPowerModeMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path getter for LowPowerModeMonitor.lowPowerModeEnabled : LowPowerModeMonitor@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for LowPowerModeMonitor.lowPowerModeEnabled : LowPowerModeMonitor(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LowPowerModeMonitor.lowPowerModeEnabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LowPowerModeMonitor.lowPowerModeEnabled.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*LowPowerModeMonitor.lowPowerModeEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LowPowerModeMonitor.lowPowerModeEnabled.modify;
}

void LowPowerModeMonitor.lowPowerModeEnabled.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for LowPowerModeMonitor.$lowPowerModeEnabled : LowPowerModeMonitor(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LowPowerModeMonitor.$lowPowerModeEnabled : LowPowerModeMonitor(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t LowPowerModeMonitor.$lowPowerModeEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LowPowerModeMonitor.$lowPowerModeEnabled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LowPowerModeMonitor.$lowPowerModeEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore19LowPowerModeMonitor__lowPowerModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LowPowerModeMonitor.$lowPowerModeEnabled.modify;
}

void LowPowerModeMonitor.$lowPowerModeEnabled.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t LowPowerModeMonitor.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LowPowerModeMonitor.init(delegate:)(a1, a2);
  return v7;
}

uint64_t LowPowerModeMonitor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  swift_beginAccess();
  LOBYTE(v12) = v5;
  Published.init(initialValue:)();
  swift_endAccess();
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x277CCA5E8];
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = partial apply for closure #1 in LowPowerModeMonitor.init(delegate:);
  v16 = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  ObjectType = &block_descriptor_9;
  v9 = _Block_copy(aBlock);

  v10 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  ObjectType = swift_getObjectType();
  swift_unknownObjectRelease();
  aBlock[0] = v10;
  swift_beginAccess();
  outlined assign with take of Any?(aBlock, v2 + 16);
  swift_endAccess();
  return v2;
}

uint64_t closure #1 in LowPowerModeMonitor.init(delegate:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = partial apply for closure #1 in closure #1 in LowPowerModeMonitor.init(delegate:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_14_1;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t closure #1 in closure #1 in LowPowerModeMonitor.init(delegate:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LowPowerModeMonitor.lowPowerModeDidChange()();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LowPowerModeMonitor.deinit()
{
  swift_beginAccess();
  outlined init with copy of Any?(v0 + 16, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, v7);
    v1 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(v7, v8);
    [v1 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    outlined destroy of Any?(&v5);
  }

  outlined destroy of Any?(v0 + 16);
  outlined destroy of weak LowPowerModeMonitorDelegate?(v0 + 48);
  v2 = OBJC_IVAR____TtC11WorkoutCore19LowPowerModeMonitor__lowPowerModeEnabled;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t LowPowerModeMonitor.__deallocating_deinit()
{
  swift_beginAccess();
  outlined init with copy of Any?(v0 + 16, &v7);
  if (v8)
  {
    outlined init with take of Any(&v7, v9);
    v1 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(v9, v10);
    [v1 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    outlined destroy of Any?(&v7);
  }

  outlined destroy of Any?(v0 + 16);
  outlined destroy of weak LowPowerModeMonitorDelegate?(v0 + 48);
  v2 = OBJC_IVAR____TtC11WorkoutCore19LowPowerModeMonitor__lowPowerModeEnabled;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t LowPowerModeMonitor.lowPowerModeDidChange()()
{
  v1 = v0;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16) = v3;

  static Published.subscript.setter();
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v15)
    {
      v9 = 5457241;
    }

    else
    {
      v9 = 20302;
    }

    if (v15)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[LowPowerMode] lowPowerModeDidChange (lowPowerModeEnabled: %s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v13 + 8))(v15, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LowPowerModeMonitor@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LowPowerModeMonitor();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LowPowerModeMonitor()
{
  result = type metadata singleton initialization cache for LowPowerModeMonitor;
  if (!type metadata singleton initialization cache for LowPowerModeMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LowPowerModeMonitor()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void static PacerAlertsStore.save(pacerAlerts:activityType:)(uint64_t a1, void *a2)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v56[0] = a1;
  type metadata accessor for PacerAlerts();
  lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts(&lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  v23 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v55[0] = 0;
  v25 = [v23 propertyListWithData:isa options:0 format:0 error:v55];

  v26 = *&v55[0];
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v27 = objc_opt_self();
    v28 = [v27 standardUserDefaults];
    v29 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
    v53 = v28;
    v30 = [v28 dictionaryForKey_];

    if (v30)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v33 = [a2 uniqueIdentifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    outlined init with copy of Any(v56, v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v34, v36, isUniquelyReferenced_nonNull_native);

    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
    [v53 setObject:v38 forKey:v39];

    v40 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
    [v27 fu:v40 backupStandardUserDefaultsKey:?];

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static WOLog.alerts);
    v42 = a2;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *&v55[0] = 0;
      *v45 = 138412546;
      *(v45 + 4) = v42;
      *v46 = v42;
      *(v45 + 12) = 2080;
      *(&v55[0] + 1) = 0xE000000000000000;
      v48 = v42;
      _StringGuts.grow(_:)(43);

      swift_beginAccess();
      if (*(a1 + 16))
      {
        v49 = 1702195828;
      }

      else
      {
        v49 = 0x65736C6166;
      }

      if (*(a1 + 16))
      {
        v50 = 0xE400000000000000;
      }

      else
      {
        v50 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v49, v50);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000020B458350, &v54);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_20AEA4000, v43, v44, "Saved PacerAlerts to user defaults for activityType=%@ pacerAlerts=%s", v45, 0x16u);
      outlined destroy of NSObject?(v46);
      MEMORY[0x20F2E9420](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x20F2E9420](v47, -1, -1);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    outlined consume of Data._Representation(v20, v22);

    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  else
  {
    v31 = v26;
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v20, v22);
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.alerts);
    v8 = a2;
    v9 = v32;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v56[0] = v14;
      *v12 = 138412546;
      *(v12 + 4) = v8;
      *v13 = v8;
      *(v12 + 12) = 2080;
      *&v55[0] = v32;
      v15 = v8;
      v16 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v56);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Failed to encode and save PacerAlerts for activityType=%@. error=%s", v12, 0x16u);
      outlined destroy of NSObject?(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    else
    {
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t specialized static PacerAlertsStore.read(for:)(void *a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.alerts);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_16;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20AEA4000, v24, v25, "PacerAlerts for all activity types not present in user defaults.", v26, 2u);
    v27 = v26;
    goto LABEL_15;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_11;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_11:

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.alerts);
    v29 = a1;
    v24 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v30))
    {
      goto LABEL_16;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v29;
    *v32 = v29;
    v33 = v29;
    _os_log_impl(&dword_20AEA4000, v24, v30, "PacerAlerts for activity type not present in user defaults. activityType=%@", v31, 0xCu);
    outlined destroy of NSObject?(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    v27 = v31;
LABEL_15:
    MEMORY[0x20F2E9420](v27, -1, -1);
LABEL_16:

    type metadata accessor for PacerAlerts();
    result = swift_allocObject();
    *(result + 16) = 1;
    goto LABEL_17;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, v65);

  outlined init with take of Any(v65, v66);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v65[0] = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v65];
  swift_unknownObjectRelease();
  v16 = *&v65[0];
  if (v15)
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = type metadata accessor for PropertyListDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    type metadata accessor for PacerAlerts();
    lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts(&lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v63 = *&v65[0];
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static WOLog.alerts);

    v53 = a1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64 = v62;
      *&v65[0] = 0;
      *v56 = 136315394;
      *(&v65[0] + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      swift_beginAccess();
      if (*(v63 + 16))
      {
        v58 = 1702195828;
      }

      else
      {
        v58 = 0x65736C6166;
      }

      if (*(v63 + 16))
      {
        v59 = 0xE400000000000000;
      }

      else
      {
        v59 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v58, v59);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000020B458350, &v64);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2112;
      *(v56 + 14) = v53;
      *v57 = v53;
      v61 = v53;
      _os_log_impl(&dword_20AEA4000, v54, v55, "Successfully read user pacerAlerts=%s for activityType=%@", v56, 0x16u);
      outlined destroy of NSObject?(v57);
      MEMORY[0x20F2E9420](v57, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x20F2E9420](v62, -1, -1);
      MEMORY[0x20F2E9420](v56, -1, -1);
    }

    outlined consume of Data._Representation(v17, v19);

    __swift_destroy_boxed_opaque_existential_0(v66);
    result = v63;
  }

  else
  {
    v36 = v16;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.alerts);
    v39 = a1;
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v65[0] = v45;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2080;
      v46 = v39;
      v47 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v48 = String.init<A>(describing:)();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v65);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_20AEA4000, v41, v42, "Failed to decode PacerAlerts for activityType=%@. error=%s", v43, 0x16u);
      outlined destroy of NSObject?(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    else
    {
    }

    type metadata accessor for PacerAlerts();
    v51 = swift_allocObject();
    *(v51 + 16) = 1;
    __swift_destroy_boxed_opaque_existential_0(v66);
    result = v51;
  }

LABEL_17:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for PacerAlertsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PacerAlertsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PacerAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t Apple_Workout_Core_GoalType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_GoalType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_GoalType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_GoalType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_Goal.value.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for Apple_Workout_Core_Goal.value : Apple_Workout_Core_Goal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v7, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v7, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_Goal.value : Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  outlined destroy of Apple_Workout_Core_HKQuantity?(a2 + v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_Goal.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v1 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_Goal.value.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v8, v14);
  }

  return Apple_Workout_Core_Goal.value.modify;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_HKQuantity(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_Goal.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_HKQuantity?(v4, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_Goal.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v0 + v1, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_Goal.requiredDistance.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_Goal.requiredDistance : Apple_Workout_Core_Goal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v7, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v7, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_Goal.requiredDistance : Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  outlined destroy of Apple_Workout_Core_HKQuantity?(a2 + v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_Goal.requiredDistance.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v1 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_Goal.requiredDistance.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v8, v14);
  }

  return Apple_Workout_Core_Goal.requiredDistance.modify;
}

void Apple_Workout_Core_Goal.value.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_HKQuantity((*a1)[5], v4);
    outlined destroy of Apple_Workout_Core_HKQuantity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_HKQuantity(v5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_HKQuantity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_Goal.hasRequiredDistance.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_HKQuantity?(v4, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_Goal.clearRequiredDistance()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v0 + v1, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_Goal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_Goal.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_Goal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v3 = a1 + v2[5];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = a1 + v2[7];

  return v8(v6, 1, 1, v5);
}

void Apple_Workout_Core_GoalPublisher.goal.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_GoalPublisher.goal.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_GoalPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_Goal(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_GoalPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_GoalPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)();
          break;
        case 2:
          closure #2 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)();
          break;
        case 1:
          lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  type metadata accessor for Apple_Workout_Core_HKQuantity();
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  type metadata accessor for Apple_Workout_Core_HKQuantity();
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_Goal.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      closure #2 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(v0);
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_Goal(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v5, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKQuantity(v10);
}

uint64_t closure #2 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v11 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v5, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKQuantity(v10);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_Goal@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[5];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + a1[7];

  return v9(v7, 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_Goal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_Goal;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_Goal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Goal()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_GoalType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Workout_Core_GoalPublisher.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_GoalPublisher.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 3) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int Apple_Workout_Core_Goal.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_GoalPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_GoalPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_GoalPublisher;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_GoalType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Goal()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_GoalPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Goal()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_Goal.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v48 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v45 - v23;
  v49 = a1;
  v25 = *a1;
  v26 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_38;
        }
      }

      else if (v25 != 3)
      {
        goto LABEL_38;
      }
    }

    else if (v26)
    {
      if (v25 != 1)
      {
        goto LABEL_38;
      }
    }

    else if (v25)
    {
      goto LABEL_38;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_38;
  }

  v46 = v9;
  v47 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v27 = *(v47 + 24);
  v28 = *(v18 + 48);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v49 + v27, v24);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a2 + v27, &v24[v28]);
  v29 = *(v5 + 48);
  if (v29(v24, 1, v4) == 1)
  {
    if (v29(&v24[v28], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity?(v24, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  outlined init with copy of Apple_Workout_Core_HKQuantity?(v24, v17);
  if (v29(&v24[v28], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_HKQuantity(v17);
LABEL_19:
    v35 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
    v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
LABEL_36:
    v40 = v24;
    goto LABEL_37;
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(&v24[v28], v11);
  if (*v17 != *v11 || (*(v17 + 1) == *(v11 + 1) ? (v37 = *(v17 + 2) == *(v11 + 2)) : (v37 = 0), !v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    outlined destroy of Apple_Workout_Core_HKQuantity(v11);
    outlined destroy of Apple_Workout_Core_HKQuantity(v17);
    v35 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
    v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
    goto LABEL_36;
  }

  v45[1] = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_HKQuantity(v11);
  outlined destroy of Apple_Workout_Core_HKQuantity(v17);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v24, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if ((v38 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  v30 = v47;
  v31 = *(v47 + 28);
  v32 = *(v18 + 48);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v49 + v31, v22);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a2 + v31, &v22[v32]);
  if (v29(v22, 1, v4) != 1)
  {
    v39 = v48;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v22, v48);
    if (v29(&v22[v32], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity(v39);
      goto LABEL_34;
    }

    v42 = v46;
    outlined init with take of Apple_Workout_Core_HKQuantity(&v22[v32], v46);
    if (*v39 != *v42 || (*(v39 + 8) != *(v42 + 8) || *(v39 + 16) != *(v42 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity(v42);
      outlined destroy of Apple_Workout_Core_HKQuantity(v39);
      v35 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
      v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
      v40 = v22;
      goto LABEL_37;
    }

    v43 = *(v4 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_HKQuantity(v42);
    outlined destroy of Apple_Workout_Core_HKQuantity(v39);
    outlined destroy of Apple_Workout_Core_HKQuantity?(v22, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    if (v44)
    {
      goto LABEL_13;
    }

LABEL_38:
    v34 = 0;
    return v34 & 1;
  }

  if (v29(&v22[v32], 1, v4) != 1)
  {
LABEL_34:
    v35 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
    v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
    v40 = v22;
LABEL_37:
    outlined destroy of Apple_Workout_Core_HKQuantity?(v40, v35, v36);
    goto LABEL_38;
  }

  outlined destroy of Apple_Workout_Core_HKQuantity?(v22, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_13:
  v33 = *(v30 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v34 & 1;
}

uint64_t specialized static Apple_Workout_Core_GoalPublisher.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 3) == *(a2 + 12))
  {
    v4 = *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_GoalType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_GoalType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_GoalType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B9_GoalTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B9_GoalTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_GoalType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_GoalType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_GoalType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_GoalType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_GoalType(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_Goal()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_HKQuantity?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_HKQuantity?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_HKQuantity?)
  {
    type metadata accessor for Apple_Workout_Core_HKQuantity();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_Core_HKQuantity?);
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_GoalPublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int HeartRateZone.Bound.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateZone.Bound()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateZone.Bound()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

void HeartRateZone.minimumSpan.getter()
{
  if (__OFADD__(*(v0 + 32), 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40);
  }
}

unsigned __int8 *HeartRateZone.configurableSpan(bound:)(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 32);
  v4 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + 40);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = __OFSUB__(v7, v3);
  v8 = v7 - v3;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v2 ^ 1;
  v6 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v6)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = 230.0 - ((v10 - 1) * 4.0 + 10.0);
  if (v10 <= 0)
  {
    v11 = 230.0;
  }

  if (v4 * 4.0 + 50.0 > v11)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t Array<A>.replacing(index:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (a3 & 0x8000000000000000) != 0 || (v7 = a3, (a3 & 0x4000000000000000) != 0))
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
  }

  if (a1 < 0)
  {
    goto LABEL_130;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;

  if (a1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = a1;
      while (v10 <= a1)
      {
        v11 = v10 - 1;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x20F2E7A20](v10 - 1, v7);
          v14 = MEMORY[0x20F2E7A20](v10, v7);
        }

        else
        {
          v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11 >= v12)
          {
            goto LABEL_90;
          }

          if (v10 >= v12)
          {
            goto LABEL_92;
          }

          v13 = v7 + 8 * v10;
          v3 = *(v13 + 24);
          v14 = *(v13 + 32);
        }

        v15 = *(v14 + 16);

        v16 = *(v3 + 32);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_91;
        }

        v17 = *(v3 + 40);
        if (v16 + 1 == v17)
        {
          v18 = -10.0;
        }

        else
        {
          v18 = -4.0;
        }

        v19 = v15 + v18;
        if (v19 >= *(v3 + 16))
        {
          v20 = *(v3 + 16);
        }

        else
        {
          v20 = v19;
        }

        type metadata accessor for HeartRateZone();
        result = swift_allocObject();
        v21 = floor(v20);
        v22 = floor(v15);
        if (v20 > v15 || v21 > v22)
        {
          goto LABEL_93;
        }

        v24 = result;
        *(result + 16) = v21;
        *(result + 24) = v22;
        *(result + 32) = v16;
        *(result + 40) = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_94;
        }

        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x18);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x18) = v24;

        --v10;
        if (!v11)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
    }

    else
    {
      v3 = a1;
      while (v3 <= a1)
      {
        v26 = v7 & 0xFFFFFFFFFFFFFF8;
        v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 - 1 >= v27)
        {
          goto LABEL_96;
        }

        v28 = v3;
        if (v3 >= v27)
        {
          goto LABEL_97;
        }

        v29 = v7 + 8 * v3;
        v30 = *(v29 + 24);
        v31 = *(v30 + 32);
        if (__OFADD__(v31, 1))
        {
          goto LABEL_98;
        }

        v32 = *(*(v29 + 32) + 16);
        v33 = *(v30 + 40);
        if (v31 + 1 == v33)
        {
          v34 = -10.0;
        }

        else
        {
          v34 = -4.0;
        }

        v35 = v32 + v34;
        if (v35 >= *(v30 + 16))
        {
          v36 = *(v30 + 16);
        }

        else
        {
          v36 = v35;
        }

        type metadata accessor for HeartRateZone();
        result = swift_allocObject();
        v37 = floor(v36);
        v38 = floor(v32);
        if (v36 > v32 || v37 > v38)
        {
          goto LABEL_99;
        }

        v40 = result;
        *(result + 16) = v37;
        *(result + 24) = v38;
        *(result + 32) = v31;
        *(result + 40) = v33;

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);

          v26 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        if (v3 - 1 >= *(v26 + 16))
        {
          goto LABEL_100;
        }

        v41 = v26 + 8 * v3;
        v42 = *(v41 + 24);
        *(v41 + 24) = v40;

        --v3;
        if (v28 == 1)
        {
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_56:
  v3 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_137;
  }

  if (a3 >> 62)
  {
    goto LABEL_138;
  }

  result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v3)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
  }

  else
  {
    while (v3 != result)
    {
      if (v3 >= result)
      {
        goto LABEL_140;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v43 = result - 1;
        while (1)
        {
          v44 = a1 + 1;
          if ((v7 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x20F2E7A20](a1 + 1, v7);
            result = a1;
            if (__OFSUB__(v44, 1))
            {
              goto LABEL_141;
            }

            v47 = MEMORY[0x20F2E7A20](a1, v7);
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
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
              goto LABEL_131;
            }

            if (v44 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_124;
            }

            if (a1 == -1)
            {
              goto LABEL_126;
            }

            v45 = v7 + 8 * a1;
            v47 = *(v45 + 32);
            v46 = *(v45 + 40);
          }

          v48 = *(v47 + 24);

          v49 = *(v46 + 32);
          if (__OFADD__(v49, 1))
          {
            goto LABEL_125;
          }

          v50 = *(v46 + 40);
          if (v49 + 1 == v50)
          {
            v51 = 10.0;
          }

          else
          {
            v51 = 4.0;
          }

          v52 = v48 + v51;
          if (*(v46 + 24) > v52)
          {
            v53 = *(v46 + 24);
          }

          else
          {
            v53 = v52;
          }

          type metadata accessor for HeartRateZone();
          v54 = swift_allocObject();
          v55 = floor(v48);
          v56 = floor(v53);
          if (v48 > v53 || v55 > v56)
          {
            goto LABEL_127;
          }

          v58 = v54;
          *(v54 + 16) = v55;
          *(v54 + 24) = v56;
          *(v54 + 32) = v49;
          *(v54 + 40) = v50;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          }

          if (v3 < 0)
          {
            goto LABEL_128;
          }

          if (v44 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v59 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x28);
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x28) = v58;

          if (v43 == ++a1)
          {
            return v7;
          }
        }
      }

LABEL_101:
      v60 = result - 1;
      while ((v3 & 0x8000000000000000) == 0)
      {
        v61 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((a1 + 1) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }

        v62 = v7 + 8 * a1;
        v63 = *(v62 + 40);
        v64 = *(v63 + 32);
        if (__OFADD__(v64, 1))
        {
          goto LABEL_134;
        }

        v65 = *(*(v62 + 32) + 24);
        v66 = *(v63 + 40);
        if (v64 + 1 == v66)
        {
          v67 = 10.0;
        }

        else
        {
          v67 = 4.0;
        }

        v68 = v65 + v67;
        if (*(v63 + 24) > v68)
        {
          v69 = *(v63 + 24);
        }

        else
        {
          v69 = v68;
        }

        type metadata accessor for HeartRateZone();
        v70 = swift_allocObject();
        v71 = floor(v65);
        v72 = floor(v69);
        if (v65 > v69 || v71 > v72)
        {
          goto LABEL_135;
        }

        v74 = v70;
        *(v70 + 16) = v71;
        *(v70 + 24) = v72;
        *(v70 + 32) = v64;
        *(v70 + 40) = v66;

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);

          v61 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        if ((a1 + 1) >= *(v61 + 16))
        {
          goto LABEL_136;
        }

        v75 = v61 + 8 * a1;
        v76 = *(v75 + 40);
        *(v75 + 40) = v74;

        if (v60 == ++a1)
        {
          return v7;
        }
      }

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
      result = __CocoaSet.count.getter();
      if (result < v3)
      {
        goto LABEL_139;
      }
    }

    return v7;
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type HeartRateZone.Bound and conformance HeartRateZone.Bound()
{
  result = lazy protocol witness table cache variable for type HeartRateZone.Bound and conformance HeartRateZone.Bound;
  if (!lazy protocol witness table cache variable for type HeartRateZone.Bound and conformance HeartRateZone.Bound)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZone.Bound and conformance HeartRateZone.Bound);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateZone.Bound(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateZone.Bound(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static NLWorkoutDemoUtilities.workoutDemoSessionURL()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D09540];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = MEMORY[0x20F2E6C00](v3, v5);

  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458400);
    v11 = [v9 stringForKey_];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for URL();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, v12, 1, v13);
}

id static NLWorkoutDemoUtilities.workoutDemoSession()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v32 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  static NLWorkoutDemoUtilities.workoutDemoSessionURL()(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.workoutVoice);
    (*(v5 + 16))(v9, v11, v4);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v32[1] = v5;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      v33 = v32[0];
      *v16 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v5 + 8);
      v20(v9, v4);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v33);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20AEA4000, v13, v14, "[DemoMode] Loading demo session config at url: %s", v16, 0xCu);
      v22 = v32[0];
      __swift_destroy_boxed_opaque_existential_0(v32[0]);
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    else
    {

      v20 = *(v5 + 8);
      v20(v9, v4);
    }

    v23 = Data.init(contentsOf:options:)();
    v25 = v24;
    v26 = type metadata accessor for JSONDecoder();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type WorkoutDemoSession and conformance WorkoutDemoSession();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v23, v25);
    v30 = objc_allocWithZone(type metadata accessor for WorkoutDemoSessionBridge());
    v31 = WorkoutDemoSessionBridge.init(_:)(&v33);
    v20(v11, v4);
    return v31;
  }
}

uint64_t static NLWorkoutDemoUtilities.fitnessContextDemoConfigURL()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D09540];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = MEMORY[0x20F2E6C00](v3, v5);

  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B458420);
    v11 = [v9 stringForKey_];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for URL();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, v12, 1, v13);
}

uint64_t static NLWorkoutDemoUtilities.fitnessContextDemoConfig()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  static NLWorkoutDemoUtilities.fitnessContextDemoConfigURL()(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v27 = 1;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v14, static WOLog.workoutVoice);
    (*(v7 + 16))(v11, v13, v6);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = a1;
      v19 = v18;
      v31 = swift_slowAlloc();
      v34 = v31;
      *v19 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v15;
      v22 = v21;
      v23 = *(v7 + 8);
      v23(v11, v6);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v34);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_20AEA4000, v16, v17, "[DemoMode] Loading fitness context demo config at url: %s", v19, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v25, -1, -1);
      v26 = v19;
      a1 = v33;
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    else
    {

      v23 = *(v7 + 8);
      v23(v11, v6);
    }

    static FitnessContextDemoConfig.load(from:)();
    v23(v13, v6);
    v27 = 0;
  }

  v28 = type metadata accessor for FitnessContextDemoConfig();
  return (*(*(v28 - 8) + 56))(a1, v27, 1, v28);
}

unint64_t static NLWorkoutDemoUtilities.estimatedCalories(for:duration:distance:)(uint64_t a1, objc_class *a2, Swift::Double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithWorkoutActivityType_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v5.value.super.isa = a2;
  v7 = FIUIWorkoutActivityType.estimatedCalories(healthStore:duration:distance:)(static WorkoutCoreInjector.healthStore, a3, v5);

  return v7;
}

id static NLWorkoutDemoUtilities.demoActivityRingProgressProvider()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for FitnessContextDemoConfig();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  static NLWorkoutDemoUtilities.fitnessContextDemoConfig()(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.workoutVoice);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[DemoMode] Using demo activity ring progress provider", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    (*(v5 + 16))(v9, v11, v4);
    v17 = specialized NLActivityDemoRingProgressProvider.__allocating_init(config:)(v9);
    (*(v5 + 8))(v11, v4);
    return v17;
  }
}

id NLWorkoutDemoUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NLWorkoutDemoUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLWorkoutDemoUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NLWorkoutDemoUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLWorkoutDemoUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static NLWorkoutDemoUtilities.shoulOverrideVoiceAvailabilityState()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale.LanguageCode();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isRunningInStoreDemoMode])
  {
    return 0;
  }

  static Locale.current.getter();
  Locale.language.getter();
  (*(v10 + 8))(v13, v9);
  Locale.Language.languageCode.getter();
  (*(v5 + 8))(v8, v4);
  if ((*(v15 + 48))(v3, 1, v14) != 1)
  {
    v20 = (*(v15 + 32))(v18, v3, v14);
    if (MEMORY[0x20F2E4850](v20) == 28261 && v21 == 0xE200000000000000)
    {

      (*(v15 + 8))(v18, v14);
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v15 + 8))(v18, v14);
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  outlined destroy of URL?(v3, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  return 0;
}

unint64_t lazy protocol witness table accessor for type WorkoutDemoSession and conformance WorkoutDemoSession()
{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession and conformance WorkoutDemoSession;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession and conformance WorkoutDemoSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession and conformance WorkoutDemoSession);
  }

  return result;
}

void *specialized static NLWorkoutDemoUtilities.defaultWorkoutVoiceAssets(selecting:)(uint64_t a1)
{
  v77 = a1;
  v76 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v82 = *(v76 - 8);
  v1 = v82[8];
  MEMORY[0x28223BE20](v76);
  v75 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMR);
  v3 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v73 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v57 - v10;
  v11 = type metadata accessor for AudioSynthesisVoice();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = &v57 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMd, &_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMR);
  v18 = *(*(v71 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v71);
  v83 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v57 - v21;
  v69 = type metadata accessor for AudioSynthesisVoiceAsset();
  v22 = *(v69 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v69);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19FitnessIntelligence19AudioSynthesisVoiceVGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence19AudioSynthesisVoiceVGMR);
  v26 = *(v12 + 72);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = swift_allocObject();
  v28 = v58 + v27;
  AudioSynthesisVoice.init(name:language:)();
  v66 = v26;
  AudioSynthesisVoice.init(name:language:)();
  AudioSynthesisVoice.init(name:language:)();
  v85 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v29 = 0;
  v30 = v85;
  v31 = *(v13 + 16);
  v13 += 16;
  v65 = v31;
  v78 = (v13 + 16);
  v64 = (v13 + 40);
  v32 = (v13 + 32);
  v72 = v13;
  v60 = (v13 - 8);
  v63 = *MEMORY[0x277D0A530];
  v62 = (v82 + 13);
  v68 = v22;
  v61 = v22 + 32;
  v57 = v28;
  v33 = v28;
  v67 = v25;
  do
  {
    v82 = v30;
    v34 = v71;
    v35 = *(v71 + 48);
    v36 = v29;
    v37 = v32;
    v38 = v70;
    v80 = v33;
    v39 = v65;
    (v65)(&v70[v35]);
    v40 = v83;
    v81 = v36;
    *v83 = v36;
    v41 = *(v34 + 48);
    v42 = *v78;
    v43 = &v38[v35];
    v32 = v37;
    (*v78)(&v40[v41], v43, v11);
    v39(v84, &v40[v41], v11);
    v44 = &v40[v41];
    v45 = v79;
    v39(v79, v44, v11);
    (*v64)(v45, 0, 1, v11);
    v46 = *(v74 + 48);
    outlined init with copy of AudioSynthesisVoice?(v77, v5);
    outlined init with copy of AudioSynthesisVoice?(v45, &v5[v46]);
    v47 = *v37;
    if ((*v37)(v5, 1, v11) == 1)
    {
      outlined destroy of URL?(v45, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
      v48 = v47(&v5[v46], 1, v11);
      v49 = v67;
      v50 = v81;
      if (v48 == 1)
      {
        outlined destroy of URL?(v5, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    outlined init with copy of AudioSynthesisVoice?(v5, v73);
    if (v47(&v5[v46], 1, v11) == 1)
    {
      outlined destroy of URL?(v79, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
      (*v60)(v73, v11);
      v49 = v67;
      v50 = v81;
LABEL_7:
      outlined destroy of URL?(v5, &_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMR);
      goto LABEL_9;
    }

    v51 = v59;
    v42(v59, &v5[v46], v11);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AudioSynthesisVoice and conformance AudioSynthesisVoice, MEMORY[0x277D0A278]);
    v52 = v73;
    dispatch thunk of static Equatable.== infix(_:_:)();
    v53 = *v60;
    (*v60)(v51, v11);
    outlined destroy of URL?(v79, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    v53(v52, v11);
    outlined destroy of URL?(v5, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    v49 = v67;
    v50 = v81;
LABEL_9:
    (*v62)(v75, v63, v76);
    AudioSynthesisVoiceAsset.init(voice:userSelected:downloadStatus:)();
    outlined destroy of URL?(v83, &_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMd, &_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMR);
    v30 = v82;
    v85 = v82;
    v55 = v82[2];
    v54 = v82[3];
    if (v55 >= v54 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1);
      v30 = v85;
    }

    v29 = v50 + 1;
    v30[2] = v55 + 1;
    (*(v68 + 32))(v30 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v55, v49, v69);
    v33 = v80 + v66;
  }

  while (v29 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v30;
}

uint64_t outlined init with copy of AudioSynthesisVoice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id NLSessionActivityGoal.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v47 - v10);
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v13 = a1 + v12[5];
  UnknownStorage.init()();
  v14 = v12[6];
  v15 = *(v5 + 56);
  v15(a1 + v14, 1, 1, v4);
  v49 = v12[7];
  v50 = v15;
  v15(a1 + v49, 1, 1, v4);
  v16 = [v2 goalTypeIdentifier];
  v17 = 0;
  if (v16 <= 3)
  {
    v17 = qword_20B42BCC0[v16];
  }

  *a1 = v17;
  *(a1 + 8) = 1;
  v18 = [v2 value];
  v19 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
  if (v18)
  {
    v20 = v18;
    v21 = v11 + *(v4 + 24);
    UnknownStorage.init()();
    v22 = [v20 _unit];
    v23 = [v22 unitString];
    v48 = v14;
    v24 = v2;
    v25 = v23;

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v9;
    v29 = v28;

    v2 = v24;
    v11[1] = v26;
    v11[2] = v29;
    v9 = v27;
    v19 = 0x1FB6FE000;
    v30 = [v20 _unit];
    [v20 doubleValueForUnit_];
    v32 = v31;

    *v11 = v32;
    outlined init with copy of Apple_Workout_Core_HKQuantity(v11, v9);
    v33 = v48;
    outlined destroy of Apple_Workout_Core_HKQuantity?(a1 + v48);
    outlined init with take of Apple_Workout_Core_HKQuantity(v9, a1 + v33);
    v50(a1 + v33, 0, 1, v4);
    outlined destroy of Apple_Workout_Core_HKQuantity(v11);
  }

  v34 = v19;
  result = [v2 requiredDistance];
  if (result)
  {
    v36 = result;
    v37 = v11 + *(v4 + 24);
    UnknownStorage.init()();
    v38 = [v36 _unit];
    v39 = [v38 (v34 + 2936)];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v11[1] = v40;
    v11[2] = v42;
    v43 = [v36 &selRef_isWorkoutPickerFitnessJrModeEnabled + 7];
    [v36 doubleValueForUnit_];
    v45 = v44;

    *v11 = v45;
    outlined init with copy of Apple_Workout_Core_HKQuantity(v11, v9);
    v46 = v49;
    outlined destroy of Apple_Workout_Core_HKQuantity?(a1 + v49);
    outlined init with take of Apple_Workout_Core_HKQuantity(v9, a1 + v46);
    v50(a1 + v46, 0, 1, v4);
    return outlined destroy of Apple_Workout_Core_HKQuantity(v11);
  }

  return result;
}

id Apple_Workout_Core_Goal.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v77 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v74 = (&v68 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = (&v68 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = (&v68 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v75 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v68 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v68 = &v68 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v68 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  v29 = *(v0 + 8);
  v80 = *v0;
  v81 = v29;
  v79 = Apple_Workout_Core_GoalType.decoded.getter();
  v78 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v30 = *(v78 + 24);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v30, v28);
  v33 = *(v3 + 48);
  v31 = v3 + 48;
  v32 = v33;
  v34 = v33(v28, 1, v2);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v28);
  v35 = 0;
  if (v34 != 1)
  {
    v76 = v1;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v30, v26);
    v36 = v32(v26, 1, v2);
    v72 = v2;
    v73 = v32;
    v71 = v31;
    if (v36 == 1)
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0xE000000000000000;
      v37 = v12 + *(v2 + 24);
      UnknownStorage.init()();
      v38 = v32(v26, 1, v2);
      v39 = v69;
      if (v38 != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v26);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_HKQuantity(v26, v12);
      v39 = v69;
    }

    v40 = v12[1];
    v41 = v12[2];

    outlined destroy of Apple_Workout_Core_HKQuantity(v12);
    v42 = MEMORY[0x20F2E6C00](v40, v41);

    v43 = [objc_opt_self() unitFromString_];

    v44 = v68;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v76 + v30, v68);
    v46 = v72;
    v45 = v73;
    if (v73(v44, 1, v72) == 1)
    {
      *v39 = 0.0;
      v39[1] = 0.0;
      v39[2] = -2.68156159e154;
      v47 = v39 + *(v46 + 24);
      UnknownStorage.init()();
      if (v45(v44, 1, v46) != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v44);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_HKQuantity(v44, v39);
    }

    v48 = *v39;
    outlined destroy of Apple_Workout_Core_HKQuantity(v39);
    v49 = [objc_opt_self() quantityWithUnit:v43 doubleValue:v48];

    v35 = v49;
    v1 = v76;
    v2 = v72;
    v32 = v73;
  }

  v50 = *(v78 + 28);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v50, v21);
  v51 = v32(v21, 1, v2);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v21);
  if (v51 == 1)
  {
    v52 = 0;
  }

  else
  {
    v53 = v70;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v50, v70);
    if (v32(v53, 1, v2) == 1)
    {
      v54 = v74;
      *v74 = 0;
      v54[1] = 0;
      v54[2] = 0xE000000000000000;
      v55 = v54 + *(v2 + 24);
      UnknownStorage.init()();
      if (v32(v53, 1, v2) != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v53);
      }
    }

    else
    {
      v54 = v74;
      outlined init with take of Apple_Workout_Core_HKQuantity(v53, v74);
    }

    v56 = v54[1];
    v57 = v54[2];

    outlined destroy of Apple_Workout_Core_HKQuantity(v54);
    v58 = MEMORY[0x20F2E6C00](v56, v57);

    v59 = [objc_opt_self() unitFromString_];

    v60 = v75;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v50, v75);
    if (v32(v60, 1, v2) == 1)
    {
      v61 = v77;
      *v77 = 0.0;
      v61[1] = 0.0;
      v61[2] = -2.68156159e154;
      v62 = v61 + *(v2 + 24);
      UnknownStorage.init()();
      if (v32(v60, 1, v2) != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v60);
      }
    }

    else
    {
      v61 = v77;
      outlined init with take of Apple_Workout_Core_HKQuantity(v60, v77);
    }

    v63 = *v61;
    outlined destroy of Apple_Workout_Core_HKQuantity(v61);
    v64 = [objc_opt_self() quantityWithUnit:v59 doubleValue:v63];

    v52 = v64;
  }

  v65 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v66 = [v65 initWithGoalTypeIdentifier:v79 value:v35 requiredDistance:v52];

  return v66;
}

uint64_t Apple_Workout_Core_GoalType.decoded.getter()
{
  v1 = *v0;
  if (v0[1])
  {
    return qword_20B42BCC0[v1];
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.core);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v1;
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  return 0;
}

uint64_t outlined destroy of Apple_Workout_Core_HKQuantity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static VoiceFeedbackUtilities.fallback(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for languageFallbacks != -1)
  {
    swift_once();
  }

  v4 = static VoiceFeedbackUtilities.languageFallbacks;
  if (*(static VoiceFeedbackUtilities.languageFallbacks + 2))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v6)
    {
      v7 = (v4[7] + 16 * v5);
      a1 = *v7;
      v8 = v7[1];
    }
  }

  return a1;
}

uint64_t one-time initialization function for languageFallbacks()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for languageFallbacks);
  result = outlined destroy of (String, String)(&unk_2822419A0);
  static VoiceFeedbackUtilities.languageFallbacks = v0;
  return result;
}

uint64_t static VoiceFeedbackUtilities.languageFallbacks.getter()
{
  if (one-time initialization token for languageFallbacks != -1)
  {
    swift_once();
  }
}

id VoiceFeedbackUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceFeedbackUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceFeedbackUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VoiceFeedbackUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceFeedbackUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter()
{
  specialized static Locale.appLanguageId.getter();
  v0 = specialized Collection.prefix(_:)(2);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x20F2E6D00](v0, v2, v4, v6);
  v9 = v8;

  if (one-time initialization token for languageFallbacks != -1)
  {
    swift_once();
  }

  v10 = static VoiceFeedbackUtilities.languageFallbacks;
  if (*(static VoiceFeedbackUtilities.languageFallbacks + 2))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
    if (v12)
    {
      v13 = v11;

      v14 = (v10[7] + 16 * v13);
      v7 = *v14;
      v9 = v14[1];
    }
  }

  v15 = static Locale.appendRegionCode(to:)(v7, v9);

  return v15;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for WorkoutNotificationCenter.notification : WorkoutNotificationCenter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutNotificationCenter.notification : WorkoutNotificationCenter(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t WorkoutNotificationCenter.notification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutNotificationCenter.$notification : WorkoutNotificationCenter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutNotificationCenter.$notification : WorkoutNotificationCenter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutNotificationCenter.$notification.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutNotificationCenter.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
  Published.init(initialValue:)();
  *(v3 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) = 0;
  *(v3 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationTTL) = 0x403E000000000000;
  return v3;
}

uint64_t WorkoutNotificationCenter.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter__notification;
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationTTL) = 0x403E000000000000;
  return v0;
}

void WorkoutNotificationCenter.add(_:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v39[-v10];
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  static Date.now.getter();
  v18 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  (*(v5 + 16))(v9, &a1[v18], v4);
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v9, v4);
  v21(v11, v4);
  if (v20 < 30.0)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static WOLog.dataLink);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&dword_20AEA4000, v24, v25, "Enqueue workout notification: %@", v26, 0xCu);
        outlined destroy of NSObject?(v27);
        MEMORY[0x20F2E9420](v27, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }

      v29 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications;
      swift_beginAccess();
      v30 = v23;
      MEMORY[0x20F2E6F30]();
      if (*((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static WOLog.dataLink);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_20AEA4000, v33, v34, "Dropping workout notification (TTL expired): %@", v35, 0xCu);
    outlined destroy of NSObject?(v36);
    MEMORY[0x20F2E9420](v36, -1, -1);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

LABEL_14:
  WorkoutNotificationCenter.processQueue()();
}

Swift::Void __swiftcall WorkoutNotificationCenter.dismissNotification()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8[1] = 0;

    static Published.subscript.setter();
    [*(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) invalidate];
    WorkoutNotificationCenter.processQueue()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall WorkoutNotificationCenter.resetNotificationDismissalTimer()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = aBlock[0];
  if (aBlock[0])
  {
    v2 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer;
    v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer);
    if (v3)
    {
      [v3 invalidate];
      v4 = objc_opt_self();
      v5 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
      swift_beginAccess();
      v6 = *(aBlock[0] + v5);
      v7 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in WorkoutNotificationCenter.resetNotificationDismissalTimer();
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
      aBlock[3] = &block_descriptor_10;
      v8 = _Block_copy(aBlock);

      v9 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:v6];

      _Block_release(v8);
      v1 = *(v0 + v2);
      *(v0 + v2) = v9;
    }
  }
}

void WorkoutNotificationCenter.processQueue()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = aBlock[0];
  if (!aBlock[0])
  {
    v9 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (!(v10 >> 62))
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_5;
    }

LABEL_13:
    if (!__CocoaSet.count.getter())
    {
      return;
    }

LABEL_5:
    swift_beginAccess();
    specialized RangeReplaceableCollection.removeFirst()();
    v12 = v11;
    swift_endAccess();
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.dataLink);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Display workout notification: %@", v17, 0xCu);
      outlined destroy of NSObject?(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v14;
    v20 = v14;

    static Published.subscript.setter();
    v21 = objc_opt_self();
    v22 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
    swift_beginAccess();
    v23 = *&v20[v22];
    v24 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in WorkoutNotificationCenter.processQueue();
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_19_0;
    v25 = _Block_copy(aBlock);

    v26 = [v21 scheduledTimerWithTimeInterval:0 repeats:v25 block:v23];

    _Block_release(v25);
    v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer);
    *(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) = v26;
  }
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x20F2E7A20](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_20;
  }

  if (!__CocoaSet.count.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = __CocoaSet.count.getter();
LABEL_16:
    if (v3)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t closure #1 in WorkoutNotificationCenter.resetNotificationDismissalTimer()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for OS_dispatch_queue();
    *v4 = static OS_dispatch_queue.main.getter();
    (*(v1 + 104))(v4, *MEMORY[0x277D85200], v0);
    v7 = _dispatchPreconditionTest(_:)();
    result = (*(v1 + 8))(v4, v0);
    if (v7)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = 0;

      static Published.subscript.setter();
      [*(v6 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) invalidate];
      WorkoutNotificationCenter.processQueue()();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t WorkoutNotificationCenter.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter__notification;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications);

  return v0;
}

uint64_t WorkoutNotificationCenter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter__notification;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutNotificationCenter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutNotificationCenter();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for WorkoutNotificationCenter()
{
  result = type metadata singleton initialization cache for WorkoutNotificationCenter;
  if (!type metadata singleton initialization cache for WorkoutNotificationCenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutNotificationCenter()
{
  type metadata accessor for Published<WorkoutNotification?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<WorkoutNotification?>()
{
  if (!lazy cache variable for type metadata for Published<WorkoutNotification?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<WorkoutNotification?>);
    }
  }
}

id NLActivityDemoRingProgressProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLActivityDemoRingProgressProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized NLActivityDemoRingProgressProvider.__allocating_init(config:)(uint64_t a1)
{
  v2 = type metadata accessor for FitnessContextDemoConfig.RingProgress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v49 = v7;
  v8 = objc_opt_self();
  v9 = [v8 largeCalorieUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.moveValue.getter();
  v11 = v10;
  v12 = *(v3 + 8);
  v48 = v2;
  v12(v6, v2);
  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v9 doubleValue:v11];

  [v7 setActiveEnergyBurned_];
  v15 = [v8 largeCalorieUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.moveGoal.getter();
  v17 = v16;
  v12(v6, v2);
  v47[0] = v12;
  v47[1] = v3 + 8;
  v18 = [v13 quantityWithUnit:v15 doubleValue:v17];

  v19 = v49;
  [v49 setActiveEnergyBurnedGoal_];

  v20 = [v8 countUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.standValue.getter();
  v22 = v21;
  v23 = v48;
  v12(v6, v48);
  v24 = [v13 quantityWithUnit:v20 doubleValue:v22];

  [v19 setAppleStandHours_];
  v25 = v8;
  v26 = [v8 countUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.standGoal.getter();
  v28 = v27;
  v29 = v47[0];
  (v47[0])(v6, v23);
  v30 = [v13 quantityWithUnit:v26 doubleValue:v28];

  [v19 setAppleStandHoursGoal_];
  v31 = v25;
  v32 = [v25 minuteUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.exerciseValue.getter();
  v34 = v33;
  v29(v6, v23);
  v35 = v29;
  v36 = [v13 quantityWithUnit:v32 doubleValue:v34];

  v37 = v49;
  [v49 setAppleExerciseTime_];

  v38 = [v31 minuteUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.exerciseGoal.getter();
  v40 = v39;
  v35(v6, v23);
  v41 = [v13 quantityWithUnit:v38 doubleValue:v40];

  [v37 setAppleExerciseTimeGoal_];
  v42 = type metadata accessor for NLActivityDemoRingProgressProvider();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR____TtC11WorkoutCore34NLActivityDemoRingProgressProvider_activitySummary] = v37;
  v50.receiver = v43;
  v50.super_class = v42;
  v44 = objc_msgSendSuper2(&v50, sel_init);
  v45 = type metadata accessor for FitnessContextDemoConfig();
  (*(*(v45 - 8) + 8))(a1, v45);
  return v44;
}

uint64_t PowerMetricsPublisher.livePowerZones.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PowerMetricsPublisher.currentPower.getter()
{
  return PowerMetricsPublisher.currentPower.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PowerMetricsPublisher.isFaked.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t key path getter for PowerMetricsPublisher.currentPower : PowerMetricsPublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return key path getter for PowerMetricsPublisher.currentPower : PowerMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for PowerMetricsPublisher.currentPower : PowerMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for PowerMetricsPublisher.currentPower : PowerMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PowerMetricsPublisher.currentPower.setter()
{
  return PowerMetricsPublisher.currentPower.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*PowerMetricsPublisher.currentPower.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return PowerMetricsPublisher.currentPower.modify;
}

uint64_t (*PowerMetricsPublisher.$currentPower.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__currentPower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$currentPower.modify;
}

uint64_t (*PowerMetricsPublisher.averagePower.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return PowerMetricsPublisher.averagePower.modify;
}

uint64_t (*PowerMetricsPublisher.$averagePower.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__averagePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$averagePower.modify;
}

uint64_t (*PowerMetricsPublisher.thirtySecondAveragePower.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return PowerMetricsPublisher.thirtySecondAveragePower.modify;
}

uint64_t key path setter for PowerMetricsPublisher.$currentPower : PowerMetricsPublisher(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t PowerMetricsPublisher.$currentPower.setter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*PowerMetricsPublisher.$thirtySecondAveragePower.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__thirtySecondAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$thirtySecondAveragePower.modify;
}