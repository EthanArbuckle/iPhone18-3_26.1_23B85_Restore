void *sub_1D880B9DC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1D8B166B0();
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
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
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

void *sub_1D880BB0C()
{
  v1 = v0;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D70);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for CVTrackSnapshot);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for CVTrackSnapshot);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880BD18()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest.Originator(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D30);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for DetectionRequest.Originator);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for DetectionRequest.Originator);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D880BF24(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_1D8B166B0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
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

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_1D880C15C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D98);
  v2 = *v0;
  v3 = sub_1D8B166B0();
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

void *sub_1D880C29C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D58);
  v2 = *v0;
  v3 = sub_1D8B166B0();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1D880C3EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D88);
  v2 = *v0;
  v3 = sub_1D8B166B0();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1D880C540()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D68);
  v2 = *v0;
  v3 = sub_1D8B166B0();
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

void *sub_1D880C680()
{
  v1 = v0;
  v2 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D60);
  v6 = *v0;
  v7 = sub_1D8B166B0();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D881BDC4(*(v6 + 48) + v21, v5, type metadata accessor for TrackManager.TrackedProcessorState);
        result = sub_1D881BFE4(v5, *(v8 + 48) + v21, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1D880C88C()
{
  v1 = v0;
  v2 = type metadata accessor for BuiltInAction(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FF0);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1D881BDC4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for BuiltInAction);
      sub_1D8B16D20();
      BuiltInAction.hash(into:)(v29);
      result = sub_1D8B16D80();
      v19 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for BuiltInAction);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880CB64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E60);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D8B16D20();
      sub_1D8B15A60();

      result = sub_1D8B16D80();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D880CE24()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F40);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1D881BDC4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v29);
      result = sub_1D8B16D80();
      v19 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for BundleClassification.ClassificationType);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880D0FC()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPin(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E78);
  result = sub_1D8B166C0();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    for (i = (v10 + 63) >> 6; v12; result = sub_1D88B7EE4(v5, v8))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      sub_1D881BDC4(*(v6 + 48) + *(v3 + 72) * (v14 | (v9 << 6)), v5, type metadata accessor for ActionPin);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_13;
      }

      v16 = *(v6 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1D880D2C8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DB8);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D8B16D20();

      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D880D500()
{
  v1 = v0;
  v2 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E68);
  result = sub_1D8B166C0();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    for (i = (v10 + 63) >> 6; v12; result = sub_1D88B80A8(v5, v8))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      sub_1D881BDC4(*(v6 + 48) + *(v3 + 72) * (v14 | (v9 << 6)), v5, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_13;
      }

      v16 = *(v6 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1D880D6CC()
{
  v1 = v0;
  v38 = type metadata accessor for BuiltInAction(0);
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v37 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63FA8);
  result = sub_1D8B166C0();
  v12 = result;
  if (*(v10 + 16))
  {
    v33 = v1;
    v13 = 0;
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = (v2 + 48);
    v36 = result;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v40 = (v16 - 1) & v16;
LABEL_15:
      v23 = *(v10 + 48);
      v39 = *(v37 + 72);
      sub_1D87A0E38(v23 + v39 * (v20 | (v13 << 6)), v9, &qword_1ECA63188);
      sub_1D8B16D20();
      sub_1D87A0E38(v9, v7, &qword_1ECA63188);
      if ((*v35)(v7, 1, v38) == 1)
      {
        sub_1D8B16D40();
      }

      else
      {
        v24 = v34;
        sub_1D881BFE4(v7, v34, type metadata accessor for BuiltInAction);
        sub_1D8B16D40();
        BuiltInAction.hash(into:)(v41);
        sub_1D881BD44(v24, type metadata accessor for BuiltInAction);
      }

      result = sub_1D8B16D80();
      v12 = v36;
      v25 = -1 << *(v36 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D881F6FC(v9, *(v12 + 48) + v19 * v39, &qword_1ECA63188);
      ++*(v12 + 16);
      v16 = v40;
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v33;
        goto LABEL_29;
      }

      v22 = *(v10 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v12;
  }

  return result;
}

uint64_t sub_1D880DB04()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DB0);
  result = sub_1D8B166C0();
  v8 = result;
  if (*(v6 + 16))
  {
    v21 = v0;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = result + 56; v12; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v23 + 72);
      sub_1D881BDC4(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5, type metadata accessor for CVBundle);
      sub_1D8B16D20();
      sub_1D891CA54(v24);
      v19 = v22;
      sub_1D87CF97C(v24, *&v5[*(v22 + 20)]);
      sub_1D87CF97C(v24, *&v5[*(v19 + 24)]);
      sub_1D893983C(v24, *&v5[*(v19 + 28)]);
      sub_1D8B16D80();
      v20 = sub_1D8B165A0();
      *(i + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1D881BFE4(v5, *(v8 + 48) + v20 * v18, type metadata accessor for CVBundle);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v1 = v21;
        goto LABEL_16;
      }

      v17 = *(v6 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1D880DDA4()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest.Annotation(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D28);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1D881BDC4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8B16D20();
      DetectionRequest.Annotation.hash(into:)(v29);
      result = sub_1D8B16D80();
      v19 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for DetectionRequest.Annotation);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880E07C()
{
  v1 = v0;
  v32 = sub_1D8B15270();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EE0);
  v6 = sub_1D8B166C0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D881BBCC(&qword_1EE0E3A80, MEMORY[0x1E69E0220]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D880E398()
{
  v1 = v0;
  v2 = type metadata accessor for ProcessorState(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E30);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1D881BDC4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for ProcessorState);
      sub_1D8B16D20();
      sub_1D8A36918(v29);
      result = sub_1D8B16D80();
      v19 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for ProcessorState);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880E670()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest(0);
  v31 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E20);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
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
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_1D881BDC4(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for DetectionRequest);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](*v4);
      DetectionRequest.Originator.hash(into:)(v32);
      sub_1D8818BD0(v32, *&v4[v2[6]]);
      sub_1D88911A0(*&v4[v2[7]], *&v4[v2[7] + 8], *&v4[v2[7] + 16], *&v4[v2[7] + 24]);
      v21 = *&v4[v2[8]];
      if (v21 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x1DA720250](*&v21);
      result = sub_1D8B16D80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v15 * v20, type metadata accessor for DetectionRequest);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_28;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880E9B0()
{
  v1 = v0;
  v32 = sub_1D8B13240();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D50);
  v6 = sub_1D8B166C0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D880ECCC()
{
  v1 = v0;
  v2 = type metadata accessor for TextDetectorResult(0);
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EB8);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v20 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v21 + 72);
      sub_1D881BDC4(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4, type metadata accessor for TextDetectorResult);
      sub_1D8B16D20();
      TextDetectorResult.hash(into:)(v22);
      sub_1D8B16D80();
      v18 = sub_1D8B165A0();
      *(i + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v18 * v17, type metadata accessor for TextDetectorResult);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v16 = *(v5 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880EF34(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1D8B166C0();
  v6 = result;
  if (*(v4 + 16))
  {
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
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v17);
      result = sub_1D8B16D80();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v2;
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

uint64_t sub_1D880F14C()
{
  v1 = v0;
  v32 = sub_1D8B152F0();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EC0);
  v6 = sub_1D8B166C0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D881BBCC(&qword_1EE0E3A70, MEMORY[0x1E69E0248]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D880F468()
{
  v1 = v0;
  v32 = sub_1D8B15240();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EC8);
  v6 = sub_1D8B166C0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D881BBCC(&qword_1EE0E3A90, MEMORY[0x1E69E01E8]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D880F784()
{
  v1 = v0;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D70);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v20 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v21 + 72);
      sub_1D881BDC4(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4, type metadata accessor for CVTrackSnapshot);
      sub_1D8B16D20();
      CVTrackSnapshot.hash(into:)(v22);
      sub_1D8B16D80();
      v18 = sub_1D8B165A0();
      *(i + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v18 * v17, type metadata accessor for CVTrackSnapshot);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v16 = *(v5 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880F9EC()
{
  v1 = v0;
  v32 = sub_1D8B13990();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E98);
  v6 = sub_1D8B166C0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D881BBCC(&qword_1ECA63E88, MEMORY[0x1E69E03C0]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D880FD08()
{
  v1 = v0;
  v2 = type metadata accessor for DetectionRequest.Originator(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D30);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1D881BDC4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for DetectionRequest.Originator);
      sub_1D8B16D20();
      DetectionRequest.Originator.hash(into:)(v29);
      result = sub_1D8B16D80();
      v19 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1D881BFE4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for DetectionRequest.Originator);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D880FFE0()
{
  v1 = v0;
  v32 = sub_1D8B13AD0();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DD0);
  v6 = sub_1D8B166C0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D881BBCC(&qword_1ECA63170, MEMORY[0x1E69E03D8]);
      result = sub_1D8B15790();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D88102FC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D98);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D8B16D10();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D88104EC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D58);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);

      sub_1D8B157A0();
      result = sub_1D8B16D80();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D8810774()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D88);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      v24 = v15;
      sub_1D8B16D20();

      CVDetection.hash(into:)(v23);
      result = sub_1D8B16D80();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D88109A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D68);
  result = sub_1D8B166C0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D8B16D10();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D8810BA0()
{
  v1 = v0;
  v2 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D60);
  result = sub_1D8B166C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v36 = result + 56;
    for (i = v5; v12; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = *(v5 + 48);
      v18 = *(v38 + 72);
      sub_1D881BDC4(v17 + v18 * (v14 | (v8 << 6)), v4, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8B16D20();
      v19 = *v4;
      v20 = v4[1];
      v21 = v4[2];
      v22 = v4[4];
      v23 = v4[6];
      v24 = v4[7];
      v25 = v4[8];
      v26 = v4[9];
      if (*v4 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x1DA720250](*&v19);
      if (v20 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v20;
      }

      MEMORY[0x1DA720250](*&v27);
      if (v21 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v21;
      }

      MEMORY[0x1DA720250](*&v28);
      sub_1D8B16D40();
      if (v22 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v22;
      }

      MEMORY[0x1DA720250](*&v29);
      sub_1D8B16D40();
      sub_1D88911A0(v23, v24, v25, v26);
      v30 = v39;
      sub_1D8A36918(v40);
      MEMORY[0x1DA720210](*(v4 + *(v30 + 24)));
      sub_1D8B16D80();
      v31 = v36;
      v32 = sub_1D8B165A0();
      *(v31 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v33 = *(v7 + 48) + v32 * v18;
      v5 = i;
      result = sub_1D881BFE4(v4, v33, type metadata accessor for TrackManager.TrackedProcessorState);
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

        v1 = v35;
        goto LABEL_27;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D8810EE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D308(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D8810F4C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D8810F4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D8B15D60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D881205C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D8811044(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8811044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = *a4;
  v5 = (*a4 + a3);
  v6 = result - a3;
  v7 = &unk_1F5423000;
LABEL_5:
  v108 = a3;
  v8 = *(v4 + a3);
  v106 = v6;
  v107 = v5;
  while (1)
  {
    v9 = v7[2024];
    if (v9 <= 1)
    {
      if (!v7[2024])
      {
        v10 = 0xEA00000000007265;
        v11 = 0x7474756853657270;
        goto LABEL_17;
      }

      v13 = 0x686372616573;
      goto LABEL_15;
    }

    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v10 = 0xE700000000000000;
        v11 = 0x6E49746C697562;
        goto LABEL_17;
      }

      v13 = 0x6D6165727473;
LABEL_15:
      v11 = v13 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v12 = 25964;
      goto LABEL_16;
    }

    v11 = 0x7261507473726966;
    v12 = 31092;
LABEL_16:
    v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_17:
    if (v8 <= 1u)
    {
      if (!v8)
      {
        v14 = 0xEA00000000007265;
        v15 = 0x7474756853657270;
        goto LABEL_28;
      }

      v17 = 0x686372616573;
      goto LABEL_26;
    }

    if (v8 == 2)
    {
      v15 = 0x7261507473726966;
      v16 = 31092;
LABEL_27:
      v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_28;
    }

    if (v8 != 3)
    {
      v17 = 0x6D6165727473;
LABEL_26:
      v15 = v17 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v16 = 25964;
      goto LABEL_27;
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E49746C697562;
LABEL_28:
    v18 = *(v5 - 1);
    if (v11 == v15 && v10 == v14)
    {
      v19 = 0;
LABEL_31:

      goto LABEL_35;
    }

    v20 = sub_1D8B16BA0();

    if (v20)
    {
      v19 = 0;
      goto LABEL_34;
    }

    if (byte_1F54237E9 <= 1u)
    {
      if (!byte_1F54237E9)
      {
        v26 = 0xEA00000000007265;
        v27 = 0x7474756853657270;
        goto LABEL_89;
      }

      v40 = 0x686372616573;
      goto LABEL_87;
    }

    if (byte_1F54237E9 != 2)
    {
      if (byte_1F54237E9 == 3)
      {
        v26 = 0xE700000000000000;
        v27 = 0x6E49746C697562;
        goto LABEL_89;
      }

      v40 = 0x6D6165727473;
LABEL_87:
      v27 = v40 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v39 = 25964;
      goto LABEL_88;
    }

    v27 = 0x7261507473726966;
    v39 = 31092;
LABEL_88:
    v26 = v39 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_89:
    if (v8 <= 1u)
    {
      if (!v8)
      {
        v41 = 0xEA00000000007265;
        v42 = 0x7474756853657270;
        goto LABEL_100;
      }

      v44 = 0x686372616573;
      goto LABEL_98;
    }

    if (v8 == 2)
    {
      v42 = 0x7261507473726966;
      v43 = 31092;
LABEL_99:
      v41 = v43 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_100;
    }

    if (v8 != 3)
    {
      v44 = 0x6D6165727473;
LABEL_98:
      v42 = v44 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v43 = 25964;
      goto LABEL_99;
    }

    v41 = 0xE700000000000000;
    v42 = 0x6E49746C697562;
LABEL_100:
    if (v27 == v42 && v26 == v41)
    {
      v19 = 1;
      v7 = &unk_1F5423000;
      goto LABEL_31;
    }

    v45 = sub_1D8B16BA0();

    if (v45)
    {
      v19 = 1;
      goto LABEL_34;
    }

    if (byte_1F54237EA <= 1u)
    {
      if (!byte_1F54237EA)
      {
        v46 = 0xEA00000000007265;
        v47 = 0x7474756853657270;
        goto LABEL_143;
      }

      v58 = 0x686372616573;
      goto LABEL_141;
    }

    if (byte_1F54237EA != 2)
    {
      if (byte_1F54237EA == 3)
      {
        v46 = 0xE700000000000000;
        v47 = 0x6E49746C697562;
        goto LABEL_143;
      }

      v58 = 0x6D6165727473;
LABEL_141:
      v47 = v58 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v57 = 25964;
      goto LABEL_142;
    }

    v47 = 0x7261507473726966;
    v57 = 31092;
LABEL_142:
    v46 = v57 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_143:
    if (v8 <= 1u)
    {
      if (!v8)
      {
        v59 = 0xEA00000000007265;
        v60 = 0x7474756853657270;
        goto LABEL_154;
      }

      v62 = 0x686372616573;
      goto LABEL_152;
    }

    if (v8 == 2)
    {
      v60 = 0x7261507473726966;
      v61 = 31092;
LABEL_153:
      v59 = v61 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_154;
    }

    if (v8 != 3)
    {
      v62 = 0x6D6165727473;
LABEL_152:
      v60 = v62 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v61 = 25964;
      goto LABEL_153;
    }

    v59 = 0xE700000000000000;
    v60 = 0x6E49746C697562;
LABEL_154:
    if (v47 == v60 && v46 == v59)
    {
      v19 = 2;
      v7 = &unk_1F5423000;
      goto LABEL_31;
    }

    v63 = sub_1D8B16BA0();

    if (v63)
    {
      v19 = 2;
      goto LABEL_34;
    }

    if (byte_1F54237EB <= 1u)
    {
      if (!byte_1F54237EB)
      {
        v64 = 0xEA00000000007265;
        v65 = 0x7474756853657270;
        goto LABEL_197;
      }

      v76 = 0x686372616573;
      goto LABEL_195;
    }

    if (byte_1F54237EB != 2)
    {
      if (byte_1F54237EB == 3)
      {
        v64 = 0xE700000000000000;
        v65 = 0x6E49746C697562;
        goto LABEL_197;
      }

      v76 = 0x6D6165727473;
LABEL_195:
      v65 = v76 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v75 = 25964;
      goto LABEL_196;
    }

    v65 = 0x7261507473726966;
    v75 = 31092;
LABEL_196:
    v64 = v75 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_197:
    if (v8 <= 1u)
    {
      if (!v8)
      {
        v77 = 0xEA00000000007265;
        v78 = 0x7474756853657270;
        goto LABEL_208;
      }

      v80 = 0x686372616573;
      goto LABEL_206;
    }

    if (v8 == 2)
    {
      v78 = 0x7261507473726966;
      v79 = 31092;
LABEL_207:
      v77 = v79 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_208;
    }

    if (v8 != 3)
    {
      v80 = 0x6D6165727473;
LABEL_206:
      v78 = v80 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v79 = 25964;
      goto LABEL_207;
    }

    v77 = 0xE700000000000000;
    v78 = 0x6E49746C697562;
LABEL_208:
    if (v65 == v78 && v64 == v77)
    {
      v19 = 3;
      v7 = &unk_1F5423000;
      goto LABEL_31;
    }

    v81 = sub_1D8B16BA0();

    if (v81)
    {
      v19 = 3;
      goto LABEL_34;
    }

    if (byte_1F54237EC <= 1u)
    {
      if (!byte_1F54237EC)
      {
        v82 = 0xEA00000000007265;
        v83 = 0x7474756853657270;
        goto LABEL_251;
      }

      v94 = 0x686372616573;
      goto LABEL_249;
    }

    if (byte_1F54237EC != 2)
    {
      if (byte_1F54237EC == 3)
      {
        v82 = 0xE700000000000000;
        v83 = 0x6E49746C697562;
        goto LABEL_251;
      }

      v94 = 0x6D6165727473;
LABEL_249:
      v83 = v94 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v93 = 25964;
      goto LABEL_250;
    }

    v83 = 0x7261507473726966;
    v93 = 31092;
LABEL_250:
    v82 = v93 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_251:
    if (v8 <= 1u)
    {
      if (!v8)
      {
        v95 = 0xEA00000000007265;
        v96 = 0x7474756853657270;
        goto LABEL_262;
      }

      v98 = 0x686372616573;
      goto LABEL_260;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v95 = 0xE700000000000000;
        v96 = 0x6E49746C697562;
        goto LABEL_262;
      }

      v98 = 0x6D6165727473;
LABEL_260:
      v96 = v98 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v97 = 25964;
      goto LABEL_261;
    }

    v96 = 0x7261507473726966;
    v97 = 31092;
LABEL_261:
    v95 = v97 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_262:
    if (v83 == v96 && v82 == v95)
    {
      v19 = 4;
      v7 = &unk_1F5423000;
      goto LABEL_31;
    }

    v99 = sub_1D8B16BA0();

    if ((v99 & 1) == 0)
    {
      goto LABEL_286;
    }

    v19 = 4;
LABEL_34:
    v7 = &unk_1F5423000;
LABEL_35:
    v21 = v7[2024];
    if (v21 <= 1)
    {
      if (!v7[2024])
      {
        v22 = 0xEA00000000007265;
        v23 = 0x7474756853657270;
        if (v18 > 1)
        {
          goto LABEL_54;
        }

        goto LABEL_39;
      }

      v29 = 0x686372616573;
    }

    else
    {
      if (v21 == 2)
      {
        v23 = 0x7261507473726966;
        v28 = 31092;
        goto LABEL_53;
      }

      if (v21 == 3)
      {
        v22 = 0xE700000000000000;
        v23 = 0x6E49746C697562;
        if (v18 > 1)
        {
          goto LABEL_54;
        }

        goto LABEL_39;
      }

      v29 = 0x6D6165727473;
    }

    v23 = v29 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v28 = 25964;
LABEL_53:
    v22 = v28 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v18 > 1)
    {
LABEL_54:
      if (v18 == 2)
      {
        v25 = 0x7261507473726966;
        v31 = 31092;
LABEL_60:
        v24 = v31 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_61;
      }

      if (v18 == 3)
      {
        v24 = 0xE700000000000000;
        v25 = 0x6E49746C697562;
        goto LABEL_61;
      }

      v30 = 0x6D6165727473;
LABEL_59:
      v25 = v30 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v31 = 25964;
      goto LABEL_60;
    }

LABEL_39:
    if (v18)
    {
      v30 = 0x686372616573;
      goto LABEL_59;
    }

    v24 = 0xEA00000000007265;
    v25 = 0x7474756853657270;
LABEL_61:
    if (v23 == v25 && v22 == v24)
    {
      v32 = 0;
LABEL_64:

      goto LABEL_68;
    }

    v33 = sub_1D8B16BA0();

    if (v33)
    {
      v32 = 0;
      goto LABEL_67;
    }

    if (byte_1F54237E9 <= 1u)
    {
      if (!byte_1F54237E9)
      {
        v35 = 0xEA00000000007265;
        v36 = 0x7474756853657270;
        if (v18 > 1)
        {
          goto LABEL_115;
        }

        goto LABEL_77;
      }

      v49 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237E9 == 2)
      {
        v36 = 0x7261507473726966;
        v48 = 31092;
        goto LABEL_114;
      }

      if (byte_1F54237E9 == 3)
      {
        v35 = 0xE700000000000000;
        v36 = 0x6E49746C697562;
        if (v18 > 1)
        {
          goto LABEL_115;
        }

        goto LABEL_77;
      }

      v49 = 0x6D6165727473;
    }

    v36 = v49 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v48 = 25964;
LABEL_114:
    v35 = v48 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v18 > 1)
    {
LABEL_115:
      if (v18 == 2)
      {
        v38 = 0x7261507473726966;
        v51 = 31092;
LABEL_121:
        v37 = v51 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_122;
      }

      if (v18 == 3)
      {
        v37 = 0xE700000000000000;
        v38 = 0x6E49746C697562;
        goto LABEL_122;
      }

      v50 = 0x6D6165727473;
LABEL_120:
      v38 = v50 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v51 = 25964;
      goto LABEL_121;
    }

LABEL_77:
    if (v18)
    {
      v50 = 0x686372616573;
      goto LABEL_120;
    }

    v37 = 0xEA00000000007265;
    v38 = 0x7474756853657270;
LABEL_122:
    if (v36 == v38 && v35 == v37)
    {
      v32 = 1;
      v7 = &unk_1F5423000;
      goto LABEL_64;
    }

    v52 = sub_1D8B16BA0();

    if (v52)
    {
      v32 = 1;
      goto LABEL_67;
    }

    if (byte_1F54237EA <= 1u)
    {
      if (!byte_1F54237EA)
      {
        v53 = 0xEA00000000007265;
        v54 = 0x7474756853657270;
        if (v18 > 1)
        {
          goto LABEL_169;
        }

        goto LABEL_131;
      }

      v67 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237EA == 2)
      {
        v54 = 0x7261507473726966;
        v66 = 31092;
        goto LABEL_168;
      }

      if (byte_1F54237EA == 3)
      {
        v53 = 0xE700000000000000;
        v54 = 0x6E49746C697562;
        if (v18 > 1)
        {
          goto LABEL_169;
        }

        goto LABEL_131;
      }

      v67 = 0x6D6165727473;
    }

    v54 = v67 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v66 = 25964;
LABEL_168:
    v53 = v66 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v18 > 1)
    {
LABEL_169:
      if (v18 == 2)
      {
        v56 = 0x7261507473726966;
        v69 = 31092;
LABEL_175:
        v55 = v69 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_176;
      }

      if (v18 == 3)
      {
        v55 = 0xE700000000000000;
        v56 = 0x6E49746C697562;
        goto LABEL_176;
      }

      v68 = 0x6D6165727473;
LABEL_174:
      v56 = v68 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v69 = 25964;
      goto LABEL_175;
    }

LABEL_131:
    if (v18)
    {
      v68 = 0x686372616573;
      goto LABEL_174;
    }

    v55 = 0xEA00000000007265;
    v56 = 0x7474756853657270;
LABEL_176:
    if (v54 == v56 && v53 == v55)
    {
      v32 = 2;
      v7 = &unk_1F5423000;
      goto LABEL_64;
    }

    v70 = sub_1D8B16BA0();

    if (v70)
    {
      v32 = 2;
      goto LABEL_67;
    }

    if (byte_1F54237EB <= 1u)
    {
      if (!byte_1F54237EB)
      {
        v71 = 0xEA00000000007265;
        v72 = 0x7474756853657270;
        if (v18 > 1)
        {
          goto LABEL_223;
        }

        goto LABEL_185;
      }

      v85 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237EB == 2)
      {
        v72 = 0x7261507473726966;
        v84 = 31092;
        goto LABEL_222;
      }

      if (byte_1F54237EB == 3)
      {
        v71 = 0xE700000000000000;
        v72 = 0x6E49746C697562;
        if (v18 > 1)
        {
          goto LABEL_223;
        }

        goto LABEL_185;
      }

      v85 = 0x6D6165727473;
    }

    v72 = v85 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v84 = 25964;
LABEL_222:
    v71 = v84 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v18 > 1)
    {
LABEL_223:
      if (v18 == 2)
      {
        v74 = 0x7261507473726966;
        v87 = 31092;
LABEL_229:
        v73 = v87 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_230;
      }

      if (v18 == 3)
      {
        v73 = 0xE700000000000000;
        v74 = 0x6E49746C697562;
        goto LABEL_230;
      }

      v86 = 0x6D6165727473;
LABEL_228:
      v74 = v86 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v87 = 25964;
      goto LABEL_229;
    }

LABEL_185:
    if (v18)
    {
      v86 = 0x686372616573;
      goto LABEL_228;
    }

    v73 = 0xEA00000000007265;
    v74 = 0x7474756853657270;
LABEL_230:
    if (v72 == v74 && v71 == v73)
    {
      v32 = 3;
      v7 = &unk_1F5423000;
      goto LABEL_64;
    }

    v88 = sub_1D8B16BA0();

    if (v88)
    {
      v32 = 3;
      goto LABEL_67;
    }

    if (byte_1F54237EC <= 1u)
    {
      if (!byte_1F54237EC)
      {
        v89 = 0xEA00000000007265;
        v90 = 0x7474756853657270;
        if (v18 <= 1)
        {
          goto LABEL_239;
        }

        goto LABEL_273;
      }

      v101 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237EC == 2)
      {
        v90 = 0x7261507473726966;
        v100 = 31092;
        goto LABEL_272;
      }

      if (byte_1F54237EC == 3)
      {
        v89 = 0xE700000000000000;
        v90 = 0x6E49746C697562;
        if (v18 <= 1)
        {
          goto LABEL_239;
        }

        goto LABEL_273;
      }

      v101 = 0x6D6165727473;
    }

    v90 = v101 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v100 = 25964;
LABEL_272:
    v89 = v100 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v18 <= 1)
    {
LABEL_239:
      if (!v18)
      {
        v91 = 0xEA00000000007265;
        v92 = 0x7474756853657270;
        goto LABEL_280;
      }

      v102 = 0x686372616573;
LABEL_278:
      v92 = v102 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v103 = 25964;
      goto LABEL_279;
    }

LABEL_273:
    if (v18 != 2)
    {
      if (v18 == 3)
      {
        v91 = 0xE700000000000000;
        v92 = 0x6E49746C697562;
        goto LABEL_280;
      }

      v102 = 0x6D6165727473;
      goto LABEL_278;
    }

    v92 = 0x7261507473726966;
    v103 = 31092;
LABEL_279:
    v91 = v103 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_280:
    if (v90 == v92 && v89 == v91)
    {
      v32 = 4;
      v7 = &unk_1F5423000;
      goto LABEL_64;
    }

    v104 = sub_1D8B16BA0();

    if ((v104 & 1) == 0)
    {
      goto LABEL_287;
    }

    v32 = 4;
LABEL_67:
    v7 = &unk_1F5423000;
LABEL_68:
    if (1 << v19 >= (1 << v32))
    {
      goto LABEL_4;
    }

    if (!v4)
    {
      break;
    }

    v8 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v8;
    if (__CFADD__(v6++, 1))
    {
LABEL_4:
      a3 = v108 + 1;
      v5 = v107 + 1;
      v6 = v106 - 1;
      if (v108 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
  return result;
}

uint64_t sub_1D881205C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v263 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_638:
    v5 = *v263;
    if (!*v263)
    {
      goto LABEL_676;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_670;
    }

    goto LABEL_640;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8;
  v264 = v8;
  if (v8 + 1 >= v7)
  {
    v106 = v8 + 1;
    goto LABEL_296;
  }

  v268 = v7;
  v11 = *a3;
  v272 = *(*a3 + v8 + 1);
  v271 = *(v11 + v8);
  result = sub_1D87E70C4(&v272, &v271);
  if (v6)
  {
  }

  v12 = result;
  v13 = v8;
  do
  {
    if (v268 - 2 == v13)
    {
      v106 = v268;
      goto LABEL_286;
    }

    if (byte_1F54237E8 <= 1u)
    {
      if (byte_1F54237E8)
      {
        v15 = 0x6261686372616573;
      }

      else
      {
        v15 = 0x7474756853657270;
      }

      if (byte_1F54237E8)
      {
        v14 = 0xEA0000000000656CLL;
      }

      else
      {
        v14 = 0xEA00000000007265;
      }
    }

    else
    {
      if (byte_1F54237E8 == 2)
      {
        v15 = 0x7261507473726966;
        v16 = 31092;
      }

      else
      {
        if (byte_1F54237E8 == 3)
        {
          v14 = 0xE700000000000000;
          v15 = 0x6E49746C697562;
          goto LABEL_23;
        }

        v15 = 0x62616D6165727473;
        v16 = 25964;
      }

      v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_23:
    v17 = *(v11 + v13 + 2);
    if (v17 <= 1)
    {
      if (!*(v11 + v13 + 2))
      {
        v18 = 0xEA00000000007265;
        v19 = 0x7474756853657270;
        goto LABEL_34;
      }

      v21 = 0x686372616573;
      goto LABEL_32;
    }

    if (v17 == 2)
    {
      v19 = 0x7261507473726966;
      v20 = 31092;
LABEL_33:
      v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_34;
    }

    if (v17 != 3)
    {
      v21 = 0x6D6165727473;
LABEL_32:
      v19 = v21 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v20 = 25964;
      goto LABEL_33;
    }

    v18 = 0xE700000000000000;
    v19 = 0x6E49746C697562;
LABEL_34:
    v22 = *(v11 + v13 + 1);
    if (v15 == v19 && v14 == v18)
    {
      v23 = 0;
LABEL_37:

      goto LABEL_40;
    }

    v24 = sub_1D8B16BA0();

    if (v24)
    {
      v23 = 0;
      goto LABEL_40;
    }

    if (byte_1F54237E9 <= 1u)
    {
      if (!byte_1F54237E9)
      {
        v29 = 0xEA00000000007265;
        v30 = 0x7474756853657270;
        if (v17 > 1)
        {
          goto LABEL_91;
        }

        goto LABEL_53;
      }

      v43 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237E9 == 2)
      {
        v30 = 0x7261507473726966;
        v42 = 31092;
        goto LABEL_90;
      }

      if (byte_1F54237E9 == 3)
      {
        v29 = 0xE700000000000000;
        v30 = 0x6E49746C697562;
        if (v17 > 1)
        {
          goto LABEL_91;
        }

        goto LABEL_53;
      }

      v43 = 0x6D6165727473;
    }

    v30 = v43 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v42 = 25964;
LABEL_90:
    v29 = v42 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v17 > 1)
    {
LABEL_91:
      if (v17 == 2)
      {
        v32 = 0x7261507473726966;
        v45 = 31092;
LABEL_97:
        v31 = v45 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_98;
      }

      if (v17 == 3)
      {
        v31 = 0xE700000000000000;
        v32 = 0x6E49746C697562;
        goto LABEL_98;
      }

      v44 = 0x6D6165727473;
LABEL_96:
      v32 = v44 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v45 = 25964;
      goto LABEL_97;
    }

LABEL_53:
    if (v17)
    {
      v44 = 0x686372616573;
      goto LABEL_96;
    }

    v31 = 0xEA00000000007265;
    v32 = 0x7474756853657270;
LABEL_98:
    if (v30 == v32 && v29 == v31)
    {
      v23 = 1;
      goto LABEL_37;
    }

    v46 = sub_1D8B16BA0();

    if (v46)
    {
      v23 = 1;
      goto LABEL_40;
    }

    if (byte_1F54237EA <= 1u)
    {
      if (!byte_1F54237EA)
      {
        v47 = 0xEA00000000007265;
        v48 = 0x7474756853657270;
        if (v17 > 1)
        {
          goto LABEL_145;
        }

        goto LABEL_107;
      }

      v61 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237EA == 2)
      {
        v48 = 0x7261507473726966;
        v60 = 31092;
        goto LABEL_144;
      }

      if (byte_1F54237EA == 3)
      {
        v47 = 0xE700000000000000;
        v48 = 0x6E49746C697562;
        if (v17 > 1)
        {
          goto LABEL_145;
        }

        goto LABEL_107;
      }

      v61 = 0x6D6165727473;
    }

    v48 = v61 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v60 = 25964;
LABEL_144:
    v47 = v60 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v17 > 1)
    {
LABEL_145:
      if (v17 == 2)
      {
        v50 = 0x7261507473726966;
        v63 = 31092;
LABEL_151:
        v49 = v63 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_152;
      }

      if (v17 == 3)
      {
        v49 = 0xE700000000000000;
        v50 = 0x6E49746C697562;
        goto LABEL_152;
      }

      v62 = 0x6D6165727473;
LABEL_150:
      v50 = v62 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v63 = 25964;
      goto LABEL_151;
    }

LABEL_107:
    if (v17)
    {
      v62 = 0x686372616573;
      goto LABEL_150;
    }

    v49 = 0xEA00000000007265;
    v50 = 0x7474756853657270;
LABEL_152:
    if (v48 == v50 && v47 == v49)
    {
      v23 = 2;
      goto LABEL_37;
    }

    v64 = sub_1D8B16BA0();

    if (v64)
    {
      v23 = 2;
      goto LABEL_40;
    }

    if (byte_1F54237EB <= 1u)
    {
      if (!byte_1F54237EB)
      {
        v65 = 0xEA00000000007265;
        v66 = 0x7474756853657270;
        if (v17 > 1)
        {
          goto LABEL_199;
        }

        goto LABEL_161;
      }

      v79 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237EB == 2)
      {
        v66 = 0x7261507473726966;
        v78 = 31092;
        goto LABEL_198;
      }

      if (byte_1F54237EB == 3)
      {
        v65 = 0xE700000000000000;
        v66 = 0x6E49746C697562;
        if (v17 > 1)
        {
          goto LABEL_199;
        }

        goto LABEL_161;
      }

      v79 = 0x6D6165727473;
    }

    v66 = v79 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v78 = 25964;
LABEL_198:
    v65 = v78 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v17 > 1)
    {
LABEL_199:
      if (v17 == 2)
      {
        v68 = 0x7261507473726966;
        v81 = 31092;
LABEL_205:
        v67 = v81 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_206;
      }

      if (v17 == 3)
      {
        v67 = 0xE700000000000000;
        v68 = 0x6E49746C697562;
        goto LABEL_206;
      }

      v80 = 0x6D6165727473;
LABEL_204:
      v68 = v80 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v81 = 25964;
      goto LABEL_205;
    }

LABEL_161:
    if (v17)
    {
      v80 = 0x686372616573;
      goto LABEL_204;
    }

    v67 = 0xEA00000000007265;
    v68 = 0x7474756853657270;
LABEL_206:
    if (v66 == v68 && v65 == v67)
    {
      v23 = 3;
      goto LABEL_37;
    }

    v82 = sub_1D8B16BA0();

    if (v82)
    {
      v23 = 3;
      goto LABEL_40;
    }

    if (byte_1F54237EC <= 1u)
    {
      if (!byte_1F54237EC)
      {
        v83 = 0xEA00000000007265;
        v84 = 0x7474756853657270;
        goto LABEL_246;
      }

      v93 = 0x686372616573;
      goto LABEL_244;
    }

    if (byte_1F54237EC != 2)
    {
      if (byte_1F54237EC == 3)
      {
        v83 = 0xE700000000000000;
        v84 = 0x6E49746C697562;
        goto LABEL_246;
      }

      v93 = 0x6D6165727473;
LABEL_244:
      v84 = v93 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v92 = 25964;
      goto LABEL_245;
    }

    v84 = 0x7261507473726966;
    v92 = 31092;
LABEL_245:
    v83 = v92 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_246:
    if (v17 <= 1)
    {
      if (!v17)
      {
        v94 = 0xEA00000000007265;
        v95 = 0x7474756853657270;
        goto LABEL_257;
      }

      v97 = 0x686372616573;
      goto LABEL_255;
    }

    if (v17 != 2)
    {
      if (v17 == 3)
      {
        v94 = 0xE700000000000000;
        v95 = 0x6E49746C697562;
        goto LABEL_257;
      }

      v97 = 0x6D6165727473;
LABEL_255:
      v95 = v97 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v96 = 25964;
      goto LABEL_256;
    }

    v95 = 0x7261507473726966;
    v96 = 31092;
LABEL_256:
    v94 = v96 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_257:
    if (v84 == v95 && v83 == v94)
    {
      v23 = 4;
      goto LABEL_37;
    }

    v98 = sub_1D8B16BA0();

    if ((v98 & 1) == 0)
    {
      goto LABEL_679;
    }

    v23 = 4;
LABEL_40:
    if (byte_1F54237E8 <= 1u)
    {
      if (!byte_1F54237E8)
      {
        v25 = 0xEA00000000007265;
        v26 = 0x7474756853657270;
        if (v22 > 1)
        {
          goto LABEL_61;
        }

        goto LABEL_44;
      }

      v34 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237E8 == 2)
      {
        v26 = 0x7261507473726966;
        v33 = 31092;
        goto LABEL_60;
      }

      if (byte_1F54237E8 == 3)
      {
        v25 = 0xE700000000000000;
        v26 = 0x6E49746C697562;
        if (v22 > 1)
        {
          goto LABEL_61;
        }

        goto LABEL_44;
      }

      v34 = 0x6D6165727473;
    }

    v26 = v34 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v33 = 25964;
LABEL_60:
    v25 = v33 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v22 > 1)
    {
LABEL_61:
      if (v22 == 2)
      {
        v28 = 0x7261507473726966;
        v36 = 31092;
LABEL_67:
        v27 = v36 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_68;
      }

      if (v22 == 3)
      {
        v27 = 0xE700000000000000;
        v28 = 0x6E49746C697562;
        goto LABEL_68;
      }

      v35 = 0x6D6165727473;
LABEL_66:
      v28 = v35 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v36 = 25964;
      goto LABEL_67;
    }

LABEL_44:
    if (v22)
    {
      v35 = 0x686372616573;
      goto LABEL_66;
    }

    v27 = 0xEA00000000007265;
    v28 = 0x7474756853657270;
LABEL_68:
    if (v26 == v28 && v25 == v27)
    {
      v5 = 0;
LABEL_71:

      goto LABEL_8;
    }

    v37 = sub_1D8B16BA0();

    if (v37)
    {
      v5 = 0;
      goto LABEL_8;
    }

    if (byte_1F54237E9 <= 1u)
    {
      if (!byte_1F54237E9)
      {
        v38 = 0xEA00000000007265;
        v39 = 0x7474756853657270;
        if (v22 > 1)
        {
          goto LABEL_115;
        }

        goto LABEL_77;
      }

      v52 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237E9 == 2)
      {
        v39 = 0x7261507473726966;
        v51 = 31092;
        goto LABEL_114;
      }

      if (byte_1F54237E9 == 3)
      {
        v38 = 0xE700000000000000;
        v39 = 0x6E49746C697562;
        if (v22 > 1)
        {
          goto LABEL_115;
        }

        goto LABEL_77;
      }

      v52 = 0x6D6165727473;
    }

    v39 = v52 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v51 = 25964;
LABEL_114:
    v38 = v51 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v22 > 1)
    {
LABEL_115:
      if (v22 == 2)
      {
        v41 = 0x7261507473726966;
        v54 = 31092;
LABEL_121:
        v40 = v54 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_122;
      }

      if (v22 == 3)
      {
        v40 = 0xE700000000000000;
        v41 = 0x6E49746C697562;
        goto LABEL_122;
      }

      v53 = 0x6D6165727473;
LABEL_120:
      v41 = v53 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v54 = 25964;
      goto LABEL_121;
    }

LABEL_77:
    if (v22)
    {
      v53 = 0x686372616573;
      goto LABEL_120;
    }

    v40 = 0xEA00000000007265;
    v41 = 0x7474756853657270;
LABEL_122:
    if (v39 == v41 && v38 == v40)
    {
      v5 = 1;
      goto LABEL_71;
    }

    v55 = sub_1D8B16BA0();

    if (v55)
    {
      v5 = 1;
      goto LABEL_8;
    }

    if (byte_1F54237EA <= 1u)
    {
      if (!byte_1F54237EA)
      {
        v56 = 0xEA00000000007265;
        v57 = 0x7474756853657270;
        if (v22 > 1)
        {
          goto LABEL_169;
        }

        goto LABEL_131;
      }

      v70 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237EA == 2)
      {
        v57 = 0x7261507473726966;
        v69 = 31092;
        goto LABEL_168;
      }

      if (byte_1F54237EA == 3)
      {
        v56 = 0xE700000000000000;
        v57 = 0x6E49746C697562;
        if (v22 > 1)
        {
          goto LABEL_169;
        }

        goto LABEL_131;
      }

      v70 = 0x6D6165727473;
    }

    v57 = v70 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v69 = 25964;
LABEL_168:
    v56 = v69 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v22 > 1)
    {
LABEL_169:
      if (v22 == 2)
      {
        v59 = 0x7261507473726966;
        v72 = 31092;
LABEL_175:
        v58 = v72 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_176;
      }

      if (v22 == 3)
      {
        v58 = 0xE700000000000000;
        v59 = 0x6E49746C697562;
        goto LABEL_176;
      }

      v71 = 0x6D6165727473;
LABEL_174:
      v59 = v71 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v72 = 25964;
      goto LABEL_175;
    }

LABEL_131:
    if (v22)
    {
      v71 = 0x686372616573;
      goto LABEL_174;
    }

    v58 = 0xEA00000000007265;
    v59 = 0x7474756853657270;
LABEL_176:
    if (v57 == v59 && v56 == v58)
    {
      v5 = 2;
      goto LABEL_71;
    }

    v73 = sub_1D8B16BA0();

    if (v73)
    {
      v5 = 2;
      goto LABEL_8;
    }

    if (byte_1F54237EB <= 1u)
    {
      if (!byte_1F54237EB)
      {
        v74 = 0xEA00000000007265;
        v75 = 0x7474756853657270;
        if (v22 > 1)
        {
          goto LABEL_221;
        }

        goto LABEL_185;
      }

      v86 = 0x686372616573;
    }

    else
    {
      if (byte_1F54237EB == 2)
      {
        v75 = 0x7261507473726966;
        v85 = 31092;
        goto LABEL_220;
      }

      if (byte_1F54237EB == 3)
      {
        v74 = 0xE700000000000000;
        v75 = 0x6E49746C697562;
        if (v22 > 1)
        {
          goto LABEL_221;
        }

        goto LABEL_185;
      }

      v86 = 0x6D6165727473;
    }

    v75 = v86 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v85 = 25964;
LABEL_220:
    v74 = v85 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v22 > 1)
    {
LABEL_221:
      if (v22 == 2)
      {
        v77 = 0x7261507473726966;
        v88 = 31092;
LABEL_227:
        v76 = v88 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_228;
      }

      if (v22 == 3)
      {
        v76 = 0xE700000000000000;
        v77 = 0x6E49746C697562;
        goto LABEL_228;
      }

      v87 = 0x6D6165727473;
LABEL_226:
      v77 = v87 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v88 = 25964;
      goto LABEL_227;
    }

LABEL_185:
    if (v22)
    {
      v87 = 0x686372616573;
      goto LABEL_226;
    }

    v76 = 0xEA00000000007265;
    v77 = 0x7474756853657270;
LABEL_228:
    if (v75 == v77 && v74 == v76)
    {
      v5 = 3;
      goto LABEL_71;
    }

    v89 = sub_1D8B16BA0();

    if (v89)
    {
      v5 = 3;
      goto LABEL_8;
    }

    if (byte_1F54237EC <= 1u)
    {
      if (!byte_1F54237EC)
      {
        v90 = 0xEA00000000007265;
        v91 = 0x7474756853657270;
        goto LABEL_267;
      }

      v100 = 0x686372616573;
      goto LABEL_265;
    }

    if (byte_1F54237EC != 2)
    {
      if (byte_1F54237EC == 3)
      {
        v90 = 0xE700000000000000;
        v91 = 0x6E49746C697562;
        goto LABEL_267;
      }

      v100 = 0x6D6165727473;
LABEL_265:
      v91 = v100 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v99 = 25964;
      goto LABEL_266;
    }

    v91 = 0x7261507473726966;
    v99 = 31092;
LABEL_266:
    v90 = v99 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_267:
    if (v22 <= 1)
    {
      if (!v22)
      {
        v101 = 0xEA00000000007265;
        v102 = 0x7474756853657270;
        goto LABEL_278;
      }

      v104 = 0x686372616573;
      goto LABEL_276;
    }

    if (v22 != 2)
    {
      if (v22 == 3)
      {
        v101 = 0xE700000000000000;
        v102 = 0x6E49746C697562;
        goto LABEL_278;
      }

      v104 = 0x6D6165727473;
LABEL_276:
      v102 = v104 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v103 = 25964;
      goto LABEL_277;
    }

    v102 = 0x7261507473726966;
    v103 = 31092;
LABEL_277:
    v101 = v103 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_278:
    if (v91 == v102 && v90 == v101)
    {
      v5 = 4;
      goto LABEL_71;
    }

    v105 = sub_1D8B16BA0();

    if ((v105 & 1) == 0)
    {
      goto LABEL_680;
    }

    v5 = 4;
LABEL_8:
    ++v13;
  }

  while (((v12 ^ (1 << v23 >= (1 << v5))) & 1) != 0);
  v106 = v13 + 1;
LABEL_286:
  v6 = 0;
  v10 = v264;
  if (v12)
  {
    if (v106 >= v264)
    {
      if (v264 < v106)
      {
        v107 = v106 - 1;
        v108 = v264;
        do
        {
          if (v108 != v107)
          {
            v111 = *a3;
            if (!*a3)
            {
              goto LABEL_673;
            }

            v109 = *(v111 + v108);
            *(v111 + v108) = *(v111 + v107);
            *(v111 + v107) = v109;
          }
        }

        while (++v108 < v107--);
      }

      goto LABEL_296;
    }

LABEL_669:
    __break(1u);
LABEL_670:
    result = sub_1D885CC68(v9);
    v9 = result;
LABEL_640:
    v256 = v6;
    v273 = v9;
    v257 = *(v9 + 2);
    if (v257 >= 2)
    {
      while (*a3)
      {
        v6 = v257 - 1;
        v258 = *&v9[16 * v257];
        v259 = *&v9[16 * v257 + 24];
        sub_1D88144B8((*a3 + v258), (*a3 + *&v9[16 * v257 + 16]), *a3 + v259, v5);
        if (v256)
        {
        }

        if (v259 < v258)
        {
          goto LABEL_663;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D885CC68(v9);
        }

        if (v257 - 2 >= *(v9 + 2))
        {
          goto LABEL_664;
        }

        v260 = &v9[16 * v257];
        *v260 = v258;
        *(v260 + 1) = v259;
        v273 = v9;
        result = sub_1D885CBDC(v257 - 1);
        v9 = v273;
        v257 = *(v273 + 2);
        if (v257 <= 1)
        {
        }
      }

      goto LABEL_674;
    }
  }

LABEL_296:
  v112 = a3[1];
  if (v106 >= v112)
  {
    goto LABEL_304;
  }

  if (__OFSUB__(v106, v10))
  {
    goto LABEL_666;
  }

  if (v106 - v10 >= a4)
  {
    goto LABEL_304;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_667;
  }

  if (v10 + a4 < v112)
  {
    v112 = v10 + a4;
  }

  if (v112 < v10)
  {
LABEL_668:
    __break(1u);
    goto LABEL_669;
  }

  if (v106 == v112)
  {
LABEL_304:
    v8 = v106;
    if (v106 < v10)
    {
      goto LABEL_665;
    }

    goto LABEL_305;
  }

  v265 = v112;
  v262 = v6;
  v159 = *a3;
  v160 = (*a3 + v106);
  v161 = v10 - v106;
LABEL_356:
  v267 = v160;
  v269 = v106;
  v162 = *(v159 + v106);
  v266 = v161;
  while (2)
  {
    if (byte_1F54237E8 <= 1u)
    {
      if (byte_1F54237E8)
      {
        v166 = 0x686372616573;
        goto LABEL_366;
      }

      v163 = 0xEA00000000007265;
      v164 = 0x7474756853657270;
    }

    else
    {
      if (byte_1F54237E8 == 2)
      {
        v164 = 0x7261507473726966;
        v165 = 31092;
      }

      else
      {
        if (byte_1F54237E8 == 3)
        {
          v163 = 0xE700000000000000;
          v164 = 0x6E49746C697562;
          goto LABEL_368;
        }

        v166 = 0x6D6165727473;
LABEL_366:
        v164 = v166 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v165 = 25964;
      }

      v163 = v165 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_368:
    if (v162 <= 1u)
    {
      if (!v162)
      {
        v167 = 0xEA00000000007265;
        v168 = 0x7474756853657270;
        goto LABEL_379;
      }

      v170 = 0x686372616573;
      goto LABEL_377;
    }

    if (v162 == 2)
    {
      v168 = 0x7261507473726966;
      v169 = 31092;
LABEL_378:
      v167 = v169 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_379;
    }

    if (v162 != 3)
    {
      v170 = 0x6D6165727473;
LABEL_377:
      v168 = v170 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v169 = 25964;
      goto LABEL_378;
    }

    v167 = 0xE700000000000000;
    v168 = 0x6E49746C697562;
LABEL_379:
    v171 = *(v160 - 1);
    if (v164 == v168 && v163 == v167)
    {
      v172 = 0;
      goto LABEL_382;
    }

    v173 = sub_1D8B16BA0();

    if (v173)
    {
      v172 = 0;
      goto LABEL_385;
    }

    if (byte_1F54237E9 <= 1u)
    {
      if (byte_1F54237E9)
      {
        v191 = 0x686372616573;
        goto LABEL_436;
      }

      v178 = 0xEA00000000007265;
      v179 = 0x7474756853657270;
    }

    else
    {
      if (byte_1F54237E9 == 2)
      {
        v179 = 0x7261507473726966;
        v190 = 31092;
      }

      else
      {
        if (byte_1F54237E9 == 3)
        {
          v178 = 0xE700000000000000;
          v179 = 0x6E49746C697562;
          goto LABEL_438;
        }

        v191 = 0x6D6165727473;
LABEL_436:
        v179 = v191 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v190 = 25964;
      }

      v178 = v190 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_438:
    if (v162 <= 1u)
    {
      if (!v162)
      {
        v192 = 0xEA00000000007265;
        v193 = 0x7474756853657270;
        goto LABEL_449;
      }

      v195 = 0x686372616573;
      goto LABEL_447;
    }

    if (v162 == 2)
    {
      v193 = 0x7261507473726966;
      v194 = 31092;
LABEL_448:
      v192 = v194 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_449;
    }

    if (v162 != 3)
    {
      v195 = 0x6D6165727473;
LABEL_447:
      v193 = v195 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v194 = 25964;
      goto LABEL_448;
    }

    v192 = 0xE700000000000000;
    v193 = 0x6E49746C697562;
LABEL_449:
    if (v179 == v193 && v178 == v192)
    {
      v172 = 1;
LABEL_382:

      goto LABEL_385;
    }

    v196 = sub_1D8B16BA0();

    if (v196)
    {
      v172 = 1;
      goto LABEL_385;
    }

    if (byte_1F54237EA <= 1u)
    {
      if (byte_1F54237EA)
      {
        v209 = 0x686372616573;
        goto LABEL_490;
      }

      v197 = 0xEA00000000007265;
      v198 = 0x7474756853657270;
    }

    else
    {
      if (byte_1F54237EA == 2)
      {
        v198 = 0x7261507473726966;
        v208 = 31092;
      }

      else
      {
        if (byte_1F54237EA == 3)
        {
          v197 = 0xE700000000000000;
          v198 = 0x6E49746C697562;
          goto LABEL_492;
        }

        v209 = 0x6D6165727473;
LABEL_490:
        v198 = v209 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v208 = 25964;
      }

      v197 = v208 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_492:
    if (v162 <= 1u)
    {
      if (!v162)
      {
        v210 = 0xEA00000000007265;
        v211 = 0x7474756853657270;
        goto LABEL_503;
      }

      v213 = 0x686372616573;
      goto LABEL_501;
    }

    if (v162 == 2)
    {
      v211 = 0x7261507473726966;
      v212 = 31092;
LABEL_502:
      v210 = v212 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_503;
    }

    if (v162 != 3)
    {
      v213 = 0x6D6165727473;
LABEL_501:
      v211 = v213 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v212 = 25964;
      goto LABEL_502;
    }

    v210 = 0xE700000000000000;
    v211 = 0x6E49746C697562;
LABEL_503:
    if (v198 == v211 && v197 == v210)
    {
      v172 = 2;
      goto LABEL_382;
    }

    v214 = sub_1D8B16BA0();

    if (v214)
    {
      v172 = 2;
      goto LABEL_385;
    }

    if (byte_1F54237EB <= 1u)
    {
      if (byte_1F54237EB)
      {
        v227 = 0x686372616573;
        goto LABEL_544;
      }

      v215 = 0xEA00000000007265;
      v216 = 0x7474756853657270;
    }

    else
    {
      if (byte_1F54237EB == 2)
      {
        v216 = 0x7261507473726966;
        v226 = 31092;
      }

      else
      {
        if (byte_1F54237EB == 3)
        {
          v215 = 0xE700000000000000;
          v216 = 0x6E49746C697562;
          goto LABEL_546;
        }

        v227 = 0x6D6165727473;
LABEL_544:
        v216 = v227 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v226 = 25964;
      }

      v215 = v226 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_546:
    if (v162 <= 1u)
    {
      if (!v162)
      {
        v228 = 0xEA00000000007265;
        v229 = 0x7474756853657270;
        goto LABEL_557;
      }

      v231 = 0x686372616573;
      goto LABEL_555;
    }

    if (v162 == 2)
    {
      v229 = 0x7261507473726966;
      v230 = 31092;
LABEL_556:
      v228 = v230 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_557;
    }

    if (v162 != 3)
    {
      v231 = 0x6D6165727473;
LABEL_555:
      v229 = v231 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v230 = 25964;
      goto LABEL_556;
    }

    v228 = 0xE700000000000000;
    v229 = 0x6E49746C697562;
LABEL_557:
    if (v216 == v229 && v215 == v228)
    {
      v172 = 3;
      goto LABEL_382;
    }

    v232 = sub_1D8B16BA0();

    if (v232)
    {
      v172 = 3;
      goto LABEL_385;
    }

    if (byte_1F54237EC <= 1u)
    {
      if (byte_1F54237EC)
      {
        v245 = 0x686372616573;
        goto LABEL_598;
      }

      v233 = 0xEA00000000007265;
      v234 = 0x7474756853657270;
    }

    else
    {
      if (byte_1F54237EC == 2)
      {
        v234 = 0x7261507473726966;
        v244 = 31092;
      }

      else
      {
        if (byte_1F54237EC == 3)
        {
          v233 = 0xE700000000000000;
          v234 = 0x6E49746C697562;
          goto LABEL_600;
        }

        v245 = 0x6D6165727473;
LABEL_598:
        v234 = v245 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v244 = 25964;
      }

      v233 = v244 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_600:
    if (v162 <= 1u)
    {
      if (v162)
      {
        v249 = 0x686372616573;
        goto LABEL_609;
      }

      v246 = 0xEA00000000007265;
      v247 = 0x7474756853657270;
    }

    else
    {
      if (v162 == 2)
      {
        v247 = 0x7261507473726966;
        v248 = 31092;
      }

      else
      {
        if (v162 == 3)
        {
          v246 = 0xE700000000000000;
          v247 = 0x6E49746C697562;
          goto LABEL_611;
        }

        v249 = 0x6D6165727473;
LABEL_609:
        v247 = v249 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v248 = 25964;
      }

      v246 = v248 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_611:
    if (v234 == v247 && v233 == v246)
    {
      v172 = 4;
      goto LABEL_382;
    }

    v250 = sub_1D8B16BA0();

    if ((v250 & 1) == 0)
    {
      goto LABEL_677;
    }

    v172 = 4;
LABEL_385:
    if (byte_1F54237E8 <= 1u)
    {
      if (byte_1F54237E8)
      {
        v181 = 0x686372616573;
        goto LABEL_402;
      }

      v174 = 0xEA00000000007265;
      v175 = 0x7474756853657270;
      if (v171 > 1)
      {
        goto LABEL_404;
      }
    }

    else
    {
      if (byte_1F54237E8 == 2)
      {
        v175 = 0x7261507473726966;
        v180 = 31092;
      }

      else
      {
        if (byte_1F54237E8 == 3)
        {
          v174 = 0xE700000000000000;
          v175 = 0x6E49746C697562;
          if (v171 <= 1)
          {
            goto LABEL_389;
          }

LABEL_404:
          if (v171 == 2)
          {
            v177 = 0x7261507473726966;
            v183 = 31092;
          }

          else
          {
            if (v171 == 3)
            {
              v176 = 0xE700000000000000;
              v177 = 0x6E49746C697562;
              goto LABEL_411;
            }

            v182 = 0x6D6165727473;
LABEL_409:
            v177 = v182 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
            v183 = 25964;
          }

          v176 = v183 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_411;
        }

        v181 = 0x6D6165727473;
LABEL_402:
        v175 = v181 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v180 = 25964;
      }

      v174 = v180 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v171 > 1)
      {
        goto LABEL_404;
      }
    }

LABEL_389:
    if (v171)
    {
      v182 = 0x686372616573;
      goto LABEL_409;
    }

    v176 = 0xEA00000000007265;
    v177 = 0x7474756853657270;
LABEL_411:
    if (v175 == v177 && v174 == v176)
    {
      v5 = 0;
      goto LABEL_414;
    }

    v184 = sub_1D8B16BA0();

    if (v184)
    {
      v5 = 0;
      goto LABEL_417;
    }

    if (byte_1F54237E9 <= 1u)
    {
      if (byte_1F54237E9)
      {
        v200 = 0x686372616573;
        goto LABEL_462;
      }

      v186 = 0xEA00000000007265;
      v187 = 0x7474756853657270;
      if (v171 > 1)
      {
        goto LABEL_464;
      }
    }

    else
    {
      if (byte_1F54237E9 == 2)
      {
        v187 = 0x7261507473726966;
        v199 = 31092;
      }

      else
      {
        if (byte_1F54237E9 == 3)
        {
          v186 = 0xE700000000000000;
          v187 = 0x6E49746C697562;
          if (v171 <= 1)
          {
            goto LABEL_426;
          }

LABEL_464:
          if (v171 == 2)
          {
            v189 = 0x7261507473726966;
            v202 = 31092;
          }

          else
          {
            if (v171 == 3)
            {
              v188 = 0xE700000000000000;
              v189 = 0x6E49746C697562;
              goto LABEL_471;
            }

            v201 = 0x6D6165727473;
LABEL_469:
            v189 = v201 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
            v202 = 25964;
          }

          v188 = v202 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_471;
        }

        v200 = 0x6D6165727473;
LABEL_462:
        v187 = v200 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v199 = 25964;
      }

      v186 = v199 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v171 > 1)
      {
        goto LABEL_464;
      }
    }

LABEL_426:
    if (v171)
    {
      v201 = 0x686372616573;
      goto LABEL_469;
    }

    v188 = 0xEA00000000007265;
    v189 = 0x7474756853657270;
LABEL_471:
    if (v187 == v189 && v186 == v188)
    {
      v5 = 1;
LABEL_414:

      goto LABEL_417;
    }

    v203 = sub_1D8B16BA0();

    if (v203)
    {
      v5 = 1;
      goto LABEL_417;
    }

    if (byte_1F54237EA <= 1u)
    {
      if (byte_1F54237EA)
      {
        v218 = 0x686372616573;
        goto LABEL_516;
      }

      v204 = 0xEA00000000007265;
      v205 = 0x7474756853657270;
      if (v171 > 1)
      {
        goto LABEL_518;
      }
    }

    else
    {
      if (byte_1F54237EA == 2)
      {
        v205 = 0x7261507473726966;
        v217 = 31092;
      }

      else
      {
        if (byte_1F54237EA == 3)
        {
          v204 = 0xE700000000000000;
          v205 = 0x6E49746C697562;
          if (v171 <= 1)
          {
            goto LABEL_480;
          }

LABEL_518:
          if (v171 == 2)
          {
            v207 = 0x7261507473726966;
            v220 = 31092;
          }

          else
          {
            if (v171 == 3)
            {
              v206 = 0xE700000000000000;
              v207 = 0x6E49746C697562;
              goto LABEL_525;
            }

            v219 = 0x6D6165727473;
LABEL_523:
            v207 = v219 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
            v220 = 25964;
          }

          v206 = v220 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_525;
        }

        v218 = 0x6D6165727473;
LABEL_516:
        v205 = v218 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v217 = 25964;
      }

      v204 = v217 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v171 > 1)
      {
        goto LABEL_518;
      }
    }

LABEL_480:
    if (v171)
    {
      v219 = 0x686372616573;
      goto LABEL_523;
    }

    v206 = 0xEA00000000007265;
    v207 = 0x7474756853657270;
LABEL_525:
    if (v205 == v207 && v204 == v206)
    {
      v5 = 2;
      goto LABEL_414;
    }

    v221 = sub_1D8B16BA0();

    if (v221)
    {
      v5 = 2;
      goto LABEL_417;
    }

    if (byte_1F54237EB <= 1u)
    {
      if (byte_1F54237EB)
      {
        v236 = 0x686372616573;
        goto LABEL_570;
      }

      v222 = 0xEA00000000007265;
      v223 = 0x7474756853657270;
      if (v171 > 1)
      {
        goto LABEL_572;
      }
    }

    else
    {
      if (byte_1F54237EB == 2)
      {
        v223 = 0x7261507473726966;
        v235 = 31092;
      }

      else
      {
        if (byte_1F54237EB == 3)
        {
          v222 = 0xE700000000000000;
          v223 = 0x6E49746C697562;
          if (v171 <= 1)
          {
            goto LABEL_534;
          }

LABEL_572:
          if (v171 == 2)
          {
            v225 = 0x7261507473726966;
            v238 = 31092;
          }

          else
          {
            if (v171 == 3)
            {
              v224 = 0xE700000000000000;
              v225 = 0x6E49746C697562;
              goto LABEL_579;
            }

            v237 = 0x6D6165727473;
LABEL_577:
            v225 = v237 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
            v238 = 25964;
          }

          v224 = v238 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_579;
        }

        v236 = 0x6D6165727473;
LABEL_570:
        v223 = v236 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v235 = 25964;
      }

      v222 = v235 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v171 > 1)
      {
        goto LABEL_572;
      }
    }

LABEL_534:
    if (v171)
    {
      v237 = 0x686372616573;
      goto LABEL_577;
    }

    v224 = 0xEA00000000007265;
    v225 = 0x7474756853657270;
LABEL_579:
    if (v223 == v225 && v222 == v224)
    {
      v5 = 3;
      goto LABEL_414;
    }

    v239 = sub_1D8B16BA0();

    if (v239)
    {
      v5 = 3;
      goto LABEL_417;
    }

    if (byte_1F54237EC <= 1u)
    {
      if (!byte_1F54237EC)
      {
        v240 = 0xEA00000000007265;
        v241 = 0x7474756853657270;
        if (v171 > 1)
        {
          goto LABEL_622;
        }

LABEL_588:
        if (!v171)
        {
          v242 = 0xEA00000000007265;
          v243 = 0x7474756853657270;
          goto LABEL_629;
        }

        v253 = 0x686372616573;
        goto LABEL_627;
      }

      v252 = 0x686372616573;
      goto LABEL_620;
    }

    if (byte_1F54237EC == 2)
    {
      v241 = 0x7261507473726966;
      v251 = 31092;
      goto LABEL_621;
    }

    if (byte_1F54237EC != 3)
    {
      v252 = 0x6D6165727473;
LABEL_620:
      v241 = v252 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v251 = 25964;
LABEL_621:
      v240 = v251 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v171 > 1)
      {
        goto LABEL_622;
      }

      goto LABEL_588;
    }

    v240 = 0xE700000000000000;
    v241 = 0x6E49746C697562;
    if (v171 <= 1)
    {
      goto LABEL_588;
    }

LABEL_622:
    if (v171 == 2)
    {
      v243 = 0x7261507473726966;
      v254 = 31092;
    }

    else
    {
      if (v171 == 3)
      {
        v242 = 0xE700000000000000;
        v243 = 0x6E49746C697562;
        goto LABEL_629;
      }

      v253 = 0x6D6165727473;
LABEL_627:
      v243 = v253 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v254 = 25964;
    }

    v242 = v254 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_629:
    if (v241 == v243 && v240 == v242)
    {
      v5 = 4;
      goto LABEL_414;
    }

    v255 = sub_1D8B16BA0();

    if ((v255 & 1) == 0)
    {
      goto LABEL_678;
    }

    v5 = 4;
LABEL_417:
    if (1 << v172 >= (1 << v5))
    {
      goto LABEL_355;
    }

    if (v159)
    {
      v162 = *v160;
      *v160 = *(v160 - 1);
      *--v160 = v162;
      if (!__CFADD__(v161++, 1))
      {
        continue;
      }

LABEL_355:
      v106 = v269 + 1;
      v160 = v267 + 1;
      v161 = v266 - 1;
      if (v269 + 1 != v265)
      {
        goto LABEL_356;
      }

      v6 = v262;
      v8 = v265;
      if (v265 < v264)
      {
        goto LABEL_665;
      }

LABEL_305:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D87C7C5C(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v114 = *(v9 + 2);
      v113 = *(v9 + 3);
      v115 = v114 + 1;
      if (v114 >= v113 >> 1)
      {
        result = sub_1D87C7C5C((v113 > 1), v114 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v115;
      v116 = &v9[16 * v114];
      *(v116 + 4) = v264;
      *(v116 + 5) = v8;
      v117 = *v263;
      if (!*v263)
      {
        goto LABEL_675;
      }

      if (v114)
      {
        while (2)
        {
          v118 = v115 - 1;
          if (v115 >= 4)
          {
            v123 = &v9[16 * v115 + 32];
            v124 = *(v123 - 64);
            v125 = *(v123 - 56);
            v129 = __OFSUB__(v125, v124);
            v126 = v125 - v124;
            if (v129)
            {
              goto LABEL_652;
            }

            v128 = *(v123 - 48);
            v127 = *(v123 - 40);
            v129 = __OFSUB__(v127, v128);
            v121 = v127 - v128;
            v122 = v129;
            if (v129)
            {
              goto LABEL_653;
            }

            v130 = &v9[16 * v115];
            v132 = *v130;
            v131 = *(v130 + 1);
            v129 = __OFSUB__(v131, v132);
            v133 = v131 - v132;
            if (v129)
            {
              goto LABEL_655;
            }

            v129 = __OFADD__(v121, v133);
            v134 = v121 + v133;
            if (v129)
            {
              goto LABEL_658;
            }

            if (v134 >= v126)
            {
              v152 = &v9[16 * v118 + 32];
              v154 = *v152;
              v153 = *(v152 + 1);
              v129 = __OFSUB__(v153, v154);
              v155 = v153 - v154;
              if (v129)
              {
                goto LABEL_662;
              }

              if (v121 < v155)
              {
                v118 = v115 - 2;
              }
            }

            else
            {
LABEL_324:
              if (v122)
              {
                goto LABEL_654;
              }

              v135 = &v9[16 * v115];
              v137 = *v135;
              v136 = *(v135 + 1);
              v138 = __OFSUB__(v136, v137);
              v139 = v136 - v137;
              v140 = v138;
              if (v138)
              {
                goto LABEL_657;
              }

              v141 = &v9[16 * v118 + 32];
              v143 = *v141;
              v142 = *(v141 + 1);
              v129 = __OFSUB__(v142, v143);
              v144 = v142 - v143;
              if (v129)
              {
                goto LABEL_660;
              }

              if (__OFADD__(v139, v144))
              {
                goto LABEL_661;
              }

              if (v139 + v144 < v121)
              {
                goto LABEL_338;
              }

              if (v121 < v144)
              {
                v118 = v115 - 2;
              }
            }
          }

          else
          {
            if (v115 == 3)
            {
              v119 = *(v9 + 4);
              v120 = *(v9 + 5);
              v129 = __OFSUB__(v120, v119);
              v121 = v120 - v119;
              v122 = v129;
              goto LABEL_324;
            }

            v145 = &v9[16 * v115];
            v147 = *v145;
            v146 = *(v145 + 1);
            v129 = __OFSUB__(v146, v147);
            v139 = v146 - v147;
            v140 = v129;
LABEL_338:
            if (v140)
            {
              goto LABEL_656;
            }

            v148 = &v9[16 * v118];
            v150 = *(v148 + 4);
            v149 = *(v148 + 5);
            v129 = __OFSUB__(v149, v150);
            v151 = v149 - v150;
            if (v129)
            {
              goto LABEL_659;
            }

            if (v151 < v139)
            {
              break;
            }
          }

          v156 = v118 - 1;
          if (v118 - 1 >= v115)
          {
            __break(1u);
LABEL_650:
            __break(1u);
LABEL_651:
            __break(1u);
LABEL_652:
            __break(1u);
LABEL_653:
            __break(1u);
LABEL_654:
            __break(1u);
LABEL_655:
            __break(1u);
LABEL_656:
            __break(1u);
LABEL_657:
            __break(1u);
LABEL_658:
            __break(1u);
LABEL_659:
            __break(1u);
LABEL_660:
            __break(1u);
LABEL_661:
            __break(1u);
LABEL_662:
            __break(1u);
LABEL_663:
            __break(1u);
LABEL_664:
            __break(1u);
LABEL_665:
            __break(1u);
LABEL_666:
            __break(1u);
LABEL_667:
            __break(1u);
            goto LABEL_668;
          }

          if (!*a3)
          {
            goto LABEL_672;
          }

          v157 = *&v9[16 * v156 + 32];
          v5 = *&v9[16 * v118 + 40];
          sub_1D88144B8((*a3 + v157), (*a3 + *&v9[16 * v118 + 32]), *a3 + v5, v117);
          if (v6)
          {
          }

          if (v5 < v157)
          {
            goto LABEL_650;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D885CC68(v9);
          }

          if (v156 >= *(v9 + 2))
          {
            goto LABEL_651;
          }

          v158 = &v9[16 * v156];
          *(v158 + 4) = v157;
          *(v158 + 5) = v5;
          v273 = v9;
          result = sub_1D885CBDC(v118);
          v9 = v273;
          v115 = *(v273 + 2);
          if (v115 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_638;
      }

      goto LABEL_4;
    }

    break;
  }

  __break(1u);
LABEL_672:
  __break(1u);
LABEL_673:
  __break(1u);
LABEL_674:
  __break(1u);
LABEL_675:
  __break(1u);
LABEL_676:
  __break(1u);
LABEL_677:
  __break(1u);
LABEL_678:
  __break(1u);
LABEL_679:
  __break(1u);
LABEL_680:
  __break(1u);
  return result;
}

uint64_t sub_1D88144B8(unsigned __int8 *__src, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < (a3 - a2))
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      v206 = &v4[v8];
      while (byte_1F54237E8 > 1u)
      {
        if (byte_1F54237E8 != 2)
        {
          if (byte_1F54237E8 == 3)
          {
            v11 = 0xE700000000000000;
            v12 = 0x6E49746C697562;
            goto LABEL_19;
          }

          v14 = 0x6D6165727473;
LABEL_17:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v13 = 25964;
          goto LABEL_18;
        }

        v12 = 0x7261507473726966;
        v13 = 31092;
LABEL_18:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_19:
        v15 = *v6;
        if (v15 <= 1)
        {
          if (*v6)
          {
            v19 = 0x686372616573;
LABEL_28:
            v17 = v19 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
            v18 = 25964;
LABEL_29:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
            goto LABEL_30;
          }

          v16 = 0xEA00000000007265;
          v17 = 0x7474756853657270;
        }

        else
        {
          if (v15 == 2)
          {
            v17 = 0x7261507473726966;
            v18 = 31092;
            goto LABEL_29;
          }

          if (v15 != 3)
          {
            v19 = 0x6D6165727473;
            goto LABEL_28;
          }

          v16 = 0xE700000000000000;
          v17 = 0x6E49746C697562;
        }

LABEL_30:
        v20 = *v4;
        v208 = v4;
        if (v12 == v17 && v11 == v16)
        {
          v21 = 0;
LABEL_33:

          goto LABEL_37;
        }

        v22 = sub_1D8B16BA0();

        if (v22)
        {
          v21 = 0;
          goto LABEL_36;
        }

        if (byte_1F54237E9 <= 1u)
        {
          if (!byte_1F54237E9)
          {
            v27 = 0xEA00000000007265;
            v28 = 0x7474756853657270;
            if (v15 <= 1)
            {
              goto LABEL_50;
            }

            goto LABEL_102;
          }

          v45 = 0x686372616573;
        }

        else
        {
          if (byte_1F54237E9 == 2)
          {
            v28 = 0x7261507473726966;
            v44 = 31092;
            goto LABEL_101;
          }

          if (byte_1F54237E9 == 3)
          {
            v27 = 0xE700000000000000;
            v28 = 0x6E49746C697562;
            if (v15 <= 1)
            {
              goto LABEL_50;
            }

            goto LABEL_102;
          }

          v45 = 0x6D6165727473;
        }

        v28 = v45 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v44 = 25964;
LABEL_101:
        v27 = v44 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v15 <= 1)
        {
LABEL_50:
          if (v15)
          {
            v46 = 0x686372616573;
            goto LABEL_107;
          }

          v29 = 0xEA00000000007265;
          v30 = 0x7474756853657270;
          goto LABEL_109;
        }

LABEL_102:
        if (v15 == 2)
        {
          v30 = 0x7261507473726966;
          v47 = 31092;
          goto LABEL_108;
        }

        if (v15 != 3)
        {
          v46 = 0x6D6165727473;
LABEL_107:
          v30 = v46 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v47 = 25964;
LABEL_108:
          v29 = v47 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_109;
        }

        v29 = 0xE700000000000000;
        v30 = 0x6E49746C697562;
LABEL_109:
        if (v28 == v30 && v27 == v29)
        {
          v21 = 1;
          v4 = v208;
          goto LABEL_33;
        }

        v48 = sub_1D8B16BA0();

        if (v48)
        {
          v21 = 1;
          goto LABEL_36;
        }

        if (byte_1F54237EA <= 1u)
        {
          if (!byte_1F54237EA)
          {
            v49 = 0xEA00000000007265;
            v50 = 0x7474756853657270;
            if (v15 <= 1)
            {
              goto LABEL_118;
            }

            goto LABEL_156;
          }

          v63 = 0x686372616573;
        }

        else
        {
          if (byte_1F54237EA == 2)
          {
            v50 = 0x7261507473726966;
            v62 = 31092;
            goto LABEL_155;
          }

          if (byte_1F54237EA == 3)
          {
            v49 = 0xE700000000000000;
            v50 = 0x6E49746C697562;
            if (v15 <= 1)
            {
              goto LABEL_118;
            }

            goto LABEL_156;
          }

          v63 = 0x6D6165727473;
        }

        v50 = v63 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v62 = 25964;
LABEL_155:
        v49 = v62 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v15 <= 1)
        {
LABEL_118:
          if (v15)
          {
            v64 = 0x686372616573;
            goto LABEL_161;
          }

          v51 = 0xEA00000000007265;
          v52 = 0x7474756853657270;
          goto LABEL_163;
        }

LABEL_156:
        if (v15 == 2)
        {
          v52 = 0x7261507473726966;
          v65 = 31092;
          goto LABEL_162;
        }

        if (v15 != 3)
        {
          v64 = 0x6D6165727473;
LABEL_161:
          v52 = v64 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v65 = 25964;
LABEL_162:
          v51 = v65 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_163;
        }

        v51 = 0xE700000000000000;
        v52 = 0x6E49746C697562;
LABEL_163:
        if (v50 == v52 && v49 == v51)
        {
          v21 = 2;
          v4 = v208;
          goto LABEL_33;
        }

        v66 = sub_1D8B16BA0();

        if (v66)
        {
          v21 = 2;
          goto LABEL_36;
        }

        if (byte_1F54237EB <= 1u)
        {
          if (!byte_1F54237EB)
          {
            v67 = 0xEA00000000007265;
            v68 = 0x7474756853657270;
            goto LABEL_203;
          }

          v77 = 0x686372616573;
          goto LABEL_201;
        }

        if (byte_1F54237EB != 2)
        {
          if (byte_1F54237EB == 3)
          {
            v67 = 0xE700000000000000;
            v68 = 0x6E49746C697562;
            goto LABEL_203;
          }

          v77 = 0x6D6165727473;
LABEL_201:
          v68 = v77 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v76 = 25964;
          goto LABEL_202;
        }

        v68 = 0x7261507473726966;
        v76 = 31092;
LABEL_202:
        v67 = v76 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_203:
        if (v15 <= 1)
        {
          if (v15)
          {
            v81 = 0x686372616573;
LABEL_212:
            v79 = v81 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
            v80 = 25964;
LABEL_213:
            v78 = v80 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
            goto LABEL_214;
          }

          v78 = 0xEA00000000007265;
          v79 = 0x7474756853657270;
        }

        else
        {
          if (v15 == 2)
          {
            v79 = 0x7261507473726966;
            v80 = 31092;
            goto LABEL_213;
          }

          if (v15 != 3)
          {
            v81 = 0x6D6165727473;
            goto LABEL_212;
          }

          v78 = 0xE700000000000000;
          v79 = 0x6E49746C697562;
        }

LABEL_214:
        if (v68 == v79 && v67 == v78)
        {
          v21 = 3;
          v4 = v208;
          goto LABEL_33;
        }

        v82 = sub_1D8B16BA0();

        if (v82)
        {
          v21 = 3;
          goto LABEL_36;
        }

        if (byte_1F54237EC <= 1u)
        {
          if (!byte_1F54237EC)
          {
            v83 = 0xEA00000000007265;
            v84 = 0x7474756853657270;
            goto LABEL_257;
          }

          v95 = 0x686372616573;
          goto LABEL_255;
        }

        if (byte_1F54237EC != 2)
        {
          if (byte_1F54237EC == 3)
          {
            v83 = 0xE700000000000000;
            v84 = 0x6E49746C697562;
            goto LABEL_257;
          }

          v95 = 0x6D6165727473;
LABEL_255:
          v84 = v95 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v94 = 25964;
          goto LABEL_256;
        }

        v84 = 0x7261507473726966;
        v94 = 31092;
LABEL_256:
        v83 = v94 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_257:
        if (v15 <= 1)
        {
          if (!v15)
          {
            v96 = 0xEA00000000007265;
            v97 = 0x7474756853657270;
            goto LABEL_268;
          }

          v99 = 0x686372616573;
          goto LABEL_266;
        }

        if (v15 != 2)
        {
          if (v15 == 3)
          {
            v96 = 0xE700000000000000;
            v97 = 0x6E49746C697562;
            goto LABEL_268;
          }

          v99 = 0x6D6165727473;
LABEL_266:
          v97 = v99 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v98 = 25964;
          goto LABEL_267;
        }

        v97 = 0x7261507473726966;
        v98 = 31092;
LABEL_267:
        v96 = v98 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_268:
        if (v84 == v97 && v83 == v96)
        {
          v21 = 4;
          v4 = v208;
          goto LABEL_33;
        }

        v100 = sub_1D8B16BA0();

        if ((v100 & 1) == 0)
        {
          __break(1u);
          goto LABEL_596;
        }

        v21 = 4;
LABEL_36:
        v4 = v208;
LABEL_37:
        if (byte_1F54237E8 <= 1u)
        {
          if (!byte_1F54237E8)
          {
            v23 = 0xEA00000000007265;
            v24 = 0x7474756853657270;
            if (v20 <= 1)
            {
              goto LABEL_41;
            }

            goto LABEL_58;
          }

          v32 = 0x686372616573;
        }

        else
        {
          if (byte_1F54237E8 == 2)
          {
            v24 = 0x7261507473726966;
            v31 = 31092;
            goto LABEL_57;
          }

          if (byte_1F54237E8 == 3)
          {
            v23 = 0xE700000000000000;
            v24 = 0x6E49746C697562;
            if (v20 <= 1)
            {
              goto LABEL_41;
            }

            goto LABEL_58;
          }

          v32 = 0x6D6165727473;
        }

        v24 = v32 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v31 = 25964;
LABEL_57:
        v23 = v31 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v20 <= 1)
        {
LABEL_41:
          if (v20)
          {
            v33 = 0x686372616573;
            goto LABEL_63;
          }

          v25 = 0xEA00000000007265;
          v26 = 0x7474756853657270;
          goto LABEL_65;
        }

LABEL_58:
        if (v20 == 2)
        {
          v26 = 0x7261507473726966;
          v34 = 31092;
          goto LABEL_64;
        }

        if (v20 != 3)
        {
          v33 = 0x6D6165727473;
LABEL_63:
          v26 = v33 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v34 = 25964;
LABEL_64:
          v25 = v34 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_65;
        }

        v25 = 0xE700000000000000;
        v26 = 0x6E49746C697562;
LABEL_65:
        if (v24 == v26 && v23 == v25)
        {
          v35 = 0;
LABEL_68:

          goto LABEL_72;
        }

        v36 = sub_1D8B16BA0();

        if (v36)
        {
          v35 = 0;
          goto LABEL_71;
        }

        if (byte_1F54237E9 <= 1u)
        {
          if (!byte_1F54237E9)
          {
            v40 = 0xEA00000000007265;
            v41 = 0x7474756853657270;
            if (v20 <= 1)
            {
              goto LABEL_83;
            }

            goto LABEL_126;
          }

          v54 = 0x686372616573;
        }

        else
        {
          if (byte_1F54237E9 == 2)
          {
            v41 = 0x7261507473726966;
            v53 = 31092;
            goto LABEL_125;
          }

          if (byte_1F54237E9 == 3)
          {
            v40 = 0xE700000000000000;
            v41 = 0x6E49746C697562;
            if (v20 <= 1)
            {
              goto LABEL_83;
            }

            goto LABEL_126;
          }

          v54 = 0x6D6165727473;
        }

        v41 = v54 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v53 = 25964;
LABEL_125:
        v40 = v53 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v20 <= 1)
        {
LABEL_83:
          if (v20)
          {
            v55 = 0x686372616573;
            goto LABEL_131;
          }

          v42 = 0xEA00000000007265;
          v43 = 0x7474756853657270;
          goto LABEL_133;
        }

LABEL_126:
        if (v20 == 2)
        {
          v43 = 0x7261507473726966;
          v56 = 31092;
          goto LABEL_132;
        }

        if (v20 != 3)
        {
          v55 = 0x6D6165727473;
LABEL_131:
          v43 = v55 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v56 = 25964;
LABEL_132:
          v42 = v56 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_133;
        }

        v42 = 0xE700000000000000;
        v43 = 0x6E49746C697562;
LABEL_133:
        if (v41 == v43 && v40 == v42)
        {
          v35 = 1;
          v4 = v208;
          goto LABEL_68;
        }

        v57 = sub_1D8B16BA0();

        if (v57)
        {
          v35 = 1;
          goto LABEL_71;
        }

        if (byte_1F54237EA <= 1u)
        {
          if (!byte_1F54237EA)
          {
            v58 = 0xEA00000000007265;
            v59 = 0x7474756853657270;
            if (v20 <= 1)
            {
              goto LABEL_142;
            }

            goto LABEL_178;
          }

          v70 = 0x686372616573;
        }

        else
        {
          if (byte_1F54237EA == 2)
          {
            v59 = 0x7261507473726966;
            v69 = 31092;
            goto LABEL_177;
          }

          if (byte_1F54237EA == 3)
          {
            v58 = 0xE700000000000000;
            v59 = 0x6E49746C697562;
            if (v20 <= 1)
            {
              goto LABEL_142;
            }

            goto LABEL_178;
          }

          v70 = 0x6D6165727473;
        }

        v59 = v70 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v69 = 25964;
LABEL_177:
        v58 = v69 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v20 <= 1)
        {
LABEL_142:
          if (v20)
          {
            v71 = 0x686372616573;
            goto LABEL_183;
          }

          v60 = 0xEA00000000007265;
          v61 = 0x7474756853657270;
          goto LABEL_185;
        }

LABEL_178:
        if (v20 == 2)
        {
          v61 = 0x7261507473726966;
          v72 = 31092;
          goto LABEL_184;
        }

        if (v20 != 3)
        {
          v71 = 0x6D6165727473;
LABEL_183:
          v61 = v71 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v72 = 25964;
LABEL_184:
          v60 = v72 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_185;
        }

        v60 = 0xE700000000000000;
        v61 = 0x6E49746C697562;
LABEL_185:
        if (v59 == v61 && v58 == v60)
        {
          v35 = 2;
          v4 = v208;
          goto LABEL_68;
        }

        v73 = sub_1D8B16BA0();

        if (v73)
        {
          v35 = 2;
          goto LABEL_71;
        }

        if (byte_1F54237EB <= 1u)
        {
          if (!byte_1F54237EB)
          {
            v74 = 0xEA00000000007265;
            v75 = 0x7474756853657270;
            goto LABEL_228;
          }

          v86 = 0x686372616573;
          goto LABEL_226;
        }

        if (byte_1F54237EB != 2)
        {
          if (byte_1F54237EB == 3)
          {
            v74 = 0xE700000000000000;
            v75 = 0x6E49746C697562;
            goto LABEL_228;
          }

          v86 = 0x6D6165727473;
LABEL_226:
          v75 = v86 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v85 = 25964;
          goto LABEL_227;
        }

        v75 = 0x7261507473726966;
        v85 = 31092;
LABEL_227:
        v74 = v85 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_228:
        if (v20 <= 1)
        {
          if (v20)
          {
            v90 = 0x686372616573;
LABEL_237:
            v88 = v90 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
            v89 = 25964;
LABEL_238:
            v87 = v89 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
            goto LABEL_239;
          }

          v87 = 0xEA00000000007265;
          v88 = 0x7474756853657270;
        }

        else
        {
          if (v20 == 2)
          {
            v88 = 0x7261507473726966;
            v89 = 31092;
            goto LABEL_238;
          }

          if (v20 != 3)
          {
            v90 = 0x6D6165727473;
            goto LABEL_237;
          }

          v87 = 0xE700000000000000;
          v88 = 0x6E49746C697562;
        }

LABEL_239:
        if (v75 == v88 && v74 == v87)
        {
          v35 = 3;
          v4 = v208;
          goto LABEL_68;
        }

        v91 = sub_1D8B16BA0();

        if (v91)
        {
          v35 = 3;
          goto LABEL_71;
        }

        if (byte_1F54237EC <= 1u)
        {
          if (!byte_1F54237EC)
          {
            v92 = 0xEA00000000007265;
            v93 = 0x7474756853657270;
            goto LABEL_278;
          }

          v103 = 0x686372616573;
          goto LABEL_276;
        }

        if (byte_1F54237EC != 2)
        {
          if (byte_1F54237EC == 3)
          {
            v92 = 0xE700000000000000;
            v93 = 0x6E49746C697562;
            goto LABEL_278;
          }

          v103 = 0x6D6165727473;
LABEL_276:
          v93 = v103 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v102 = 25964;
          goto LABEL_277;
        }

        v93 = 0x7261507473726966;
        v102 = 31092;
LABEL_277:
        v92 = v102 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_278:
        if (v20 <= 1)
        {
          if (!v20)
          {
            v104 = 0xEA00000000007265;
            v105 = 0x7474756853657270;
            goto LABEL_289;
          }

          v107 = 0x686372616573;
          goto LABEL_287;
        }

        if (v20 != 2)
        {
          if (v20 == 3)
          {
            v104 = 0xE700000000000000;
            v105 = 0x6E49746C697562;
            goto LABEL_289;
          }

          v107 = 0x6D6165727473;
LABEL_287:
          v105 = v107 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v106 = 25964;
          goto LABEL_288;
        }

        v105 = 0x7261507473726966;
        v106 = 31092;
LABEL_288:
        v104 = v106 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_289:
        if (v93 == v105 && v92 == v104)
        {
          v35 = 4;
          v4 = v208;
          goto LABEL_68;
        }

        v108 = sub_1D8B16BA0();

        if ((v108 & 1) == 0)
        {
          goto LABEL_597;
        }

        v35 = 4;
LABEL_71:
        v4 = v208;
LABEL_72:
        v10 = v206;
        if (1 << v21 >= (1 << v35))
        {
          v39 = v4 + 1;
          v38 = v4;
          v37 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v39)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          v37 = v6 + 1;
          v38 = v6;
          if (v7 >= v6 && v7 < v37)
          {
            goto LABEL_87;
          }
        }

        *v7 = *v38;
LABEL_87:
        ++v7;
        if (v4 < v206)
        {
          v6 = v37;
          if (v37 < v5)
          {
            continue;
          }
        }

        goto LABEL_588;
      }

      if (!byte_1F54237E8)
      {
        v11 = 0xEA00000000007265;
        v12 = 0x7474756853657270;
        goto LABEL_19;
      }

      v14 = 0x686372616573;
      goto LABEL_17;
    }

LABEL_588:
    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_593;
    }

LABEL_592:
    if (v6 >= v10)
    {
      goto LABEL_593;
    }

    return 1;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_591:
    if (v6 != v4)
    {
      goto LABEL_593;
    }

    goto LABEL_592;
  }

  v209 = v4;
  do
  {
    v109 = v6 - 1;
    --v5;
    v205 = v6 - 1;
    while (1)
    {
      if (byte_1F54237E8 <= 1u)
      {
        if (!byte_1F54237E8)
        {
          v110 = 0xEA00000000007265;
          v111 = 0x7474756853657270;
          goto LABEL_314;
        }

        v113 = 0x686372616573;
        goto LABEL_312;
      }

      if (byte_1F54237E8 != 2)
      {
        if (byte_1F54237E8 == 3)
        {
          v110 = 0xE700000000000000;
          v111 = 0x6E49746C697562;
          goto LABEL_314;
        }

        v113 = 0x6D6165727473;
LABEL_312:
        v111 = v113 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v112 = 25964;
        goto LABEL_313;
      }

      v111 = 0x7261507473726966;
      v112 = 31092;
LABEL_313:
      v110 = v112 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_314:
      v115 = v10 - 1;
      v114 = *(v10 - 1);
      v207 = v10;
      if (v114 <= 1)
      {
        if (!*(v10 - 1))
        {
          v116 = 0xEA00000000007265;
          v117 = 0x7474756853657270;
          goto LABEL_325;
        }

        v119 = 0x686372616573;
        goto LABEL_323;
      }

      if (v114 == 2)
      {
        v117 = 0x7261507473726966;
        v118 = 31092;
LABEL_324:
        v116 = v118 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_325;
      }

      if (v114 != 3)
      {
        v119 = 0x6D6165727473;
LABEL_323:
        v117 = v119 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v118 = 25964;
        goto LABEL_324;
      }

      v116 = 0xE700000000000000;
      v117 = 0x6E49746C697562;
LABEL_325:
      v120 = *v109;
      if (v111 == v117 && v110 == v116)
      {
        v121 = 0;
LABEL_328:

        goto LABEL_332;
      }

      v122 = sub_1D8B16BA0();

      if (v122)
      {
        v121 = 0;
        goto LABEL_331;
      }

      if (byte_1F54237E9 <= 1u)
      {
        if (!byte_1F54237E9)
        {
          v127 = 0xEA00000000007265;
          v128 = 0x7474756853657270;
          if (v114 > 1)
          {
            goto LABEL_389;
          }

          goto LABEL_345;
        }

        v142 = 0x686372616573;
      }

      else
      {
        if (byte_1F54237E9 == 2)
        {
          v128 = 0x7261507473726966;
          v141 = 31092;
          goto LABEL_388;
        }

        if (byte_1F54237E9 == 3)
        {
          v127 = 0xE700000000000000;
          v128 = 0x6E49746C697562;
          if (v114 > 1)
          {
            goto LABEL_389;
          }

          goto LABEL_345;
        }

        v142 = 0x6D6165727473;
      }

      v128 = v142 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v141 = 25964;
LABEL_388:
      v127 = v141 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v114 > 1)
      {
LABEL_389:
        if (v114 == 2)
        {
          v130 = 0x7261507473726966;
          v144 = 31092;
LABEL_395:
          v129 = v144 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_396;
        }

        if (v114 == 3)
        {
          v129 = 0xE700000000000000;
          v130 = 0x6E49746C697562;
          goto LABEL_396;
        }

        v143 = 0x6D6165727473;
LABEL_394:
        v130 = v143 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v144 = 25964;
        goto LABEL_395;
      }

LABEL_345:
      if (v114)
      {
        v143 = 0x686372616573;
        goto LABEL_394;
      }

      v129 = 0xEA00000000007265;
      v130 = 0x7474756853657270;
LABEL_396:
      if (v128 == v130 && v127 == v129)
      {
        v121 = 1;
        v4 = v209;
        goto LABEL_328;
      }

      v145 = sub_1D8B16BA0();

      if (v145)
      {
        v121 = 1;
        goto LABEL_331;
      }

      if (byte_1F54237EA <= 1u)
      {
        if (!byte_1F54237EA)
        {
          v146 = 0xEA00000000007265;
          v147 = 0x7474756853657270;
          if (v114 > 1)
          {
            goto LABEL_443;
          }

          goto LABEL_405;
        }

        v160 = 0x686372616573;
      }

      else
      {
        if (byte_1F54237EA == 2)
        {
          v147 = 0x7261507473726966;
          v159 = 31092;
          goto LABEL_442;
        }

        if (byte_1F54237EA == 3)
        {
          v146 = 0xE700000000000000;
          v147 = 0x6E49746C697562;
          if (v114 > 1)
          {
            goto LABEL_443;
          }

          goto LABEL_405;
        }

        v160 = 0x6D6165727473;
      }

      v147 = v160 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v159 = 25964;
LABEL_442:
      v146 = v159 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v114 > 1)
      {
LABEL_443:
        if (v114 == 2)
        {
          v149 = 0x7261507473726966;
          v162 = 31092;
LABEL_449:
          v148 = v162 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_450;
        }

        if (v114 == 3)
        {
          v148 = 0xE700000000000000;
          v149 = 0x6E49746C697562;
          goto LABEL_450;
        }

        v161 = 0x6D6165727473;
LABEL_448:
        v149 = v161 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v162 = 25964;
        goto LABEL_449;
      }

LABEL_405:
      if (v114)
      {
        v161 = 0x686372616573;
        goto LABEL_448;
      }

      v148 = 0xEA00000000007265;
      v149 = 0x7474756853657270;
LABEL_450:
      if (v147 == v149 && v146 == v148)
      {
        v121 = 2;
        v4 = v209;
        goto LABEL_328;
      }

      v163 = sub_1D8B16BA0();

      if (v163)
      {
        v121 = 2;
        goto LABEL_331;
      }

      if (byte_1F54237EB <= 1u)
      {
        if (!byte_1F54237EB)
        {
          v164 = 0xEA00000000007265;
          v165 = 0x7474756853657270;
          goto LABEL_490;
        }

        v174 = 0x686372616573;
        goto LABEL_488;
      }

      if (byte_1F54237EB != 2)
      {
        if (byte_1F54237EB == 3)
        {
          v164 = 0xE700000000000000;
          v165 = 0x6E49746C697562;
          goto LABEL_490;
        }

        v174 = 0x6D6165727473;
LABEL_488:
        v165 = v174 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v173 = 25964;
        goto LABEL_489;
      }

      v165 = 0x7261507473726966;
      v173 = 31092;
LABEL_489:
      v164 = v173 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_490:
      if (v114 <= 1)
      {
        if (!v114)
        {
          v175 = 0xEA00000000007265;
          v176 = 0x7474756853657270;
          goto LABEL_501;
        }

        v178 = 0x686372616573;
        goto LABEL_499;
      }

      if (v114 == 2)
      {
        v176 = 0x7261507473726966;
        v177 = 31092;
LABEL_500:
        v175 = v177 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_501;
      }

      if (v114 != 3)
      {
        v178 = 0x6D6165727473;
LABEL_499:
        v176 = v178 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v177 = 25964;
        goto LABEL_500;
      }

      v175 = 0xE700000000000000;
      v176 = 0x6E49746C697562;
LABEL_501:
      if (v165 == v176 && v164 == v175)
      {
        v121 = 3;
        v4 = v209;
        goto LABEL_328;
      }

      v179 = sub_1D8B16BA0();

      if (v179)
      {
        v121 = 3;
        goto LABEL_331;
      }

      if (byte_1F54237EC <= 1u)
      {
        if (!byte_1F54237EC)
        {
          v180 = 0xEA00000000007265;
          v181 = 0x7474756853657270;
          goto LABEL_544;
        }

        v192 = 0x686372616573;
        goto LABEL_542;
      }

      if (byte_1F54237EC != 2)
      {
        if (byte_1F54237EC == 3)
        {
          v180 = 0xE700000000000000;
          v181 = 0x6E49746C697562;
          goto LABEL_544;
        }

        v192 = 0x6D6165727473;
LABEL_542:
        v181 = v192 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v191 = 25964;
        goto LABEL_543;
      }

      v181 = 0x7261507473726966;
      v191 = 31092;
LABEL_543:
      v180 = v191 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_544:
      if (v114 <= 1)
      {
        if (!v114)
        {
          v193 = 0xEA00000000007265;
          v194 = 0x7474756853657270;
          goto LABEL_555;
        }

        v196 = 0x686372616573;
        goto LABEL_553;
      }

      if (v114 != 2)
      {
        if (v114 == 3)
        {
          v193 = 0xE700000000000000;
          v194 = 0x6E49746C697562;
          goto LABEL_555;
        }

        v196 = 0x6D6165727473;
LABEL_553:
        v194 = v196 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v195 = 25964;
        goto LABEL_554;
      }

      v194 = 0x7261507473726966;
      v195 = 31092;
LABEL_554:
      v193 = v195 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_555:
      if (v181 == v194 && v180 == v193)
      {
        v121 = 4;
        v4 = v209;
        goto LABEL_328;
      }

      v197 = sub_1D8B16BA0();

      if ((v197 & 1) == 0)
      {
LABEL_596:
        __break(1u);
LABEL_597:
        __break(1u);
LABEL_598:
        __break(1u);
        return result;
      }

      v121 = 4;
LABEL_331:
      v4 = v209;
LABEL_332:
      if (byte_1F54237E8 <= 1u)
      {
        if (!byte_1F54237E8)
        {
          v123 = 0xEA00000000007265;
          v124 = 0x7474756853657270;
          if (v120 > 1)
          {
            goto LABEL_353;
          }

          goto LABEL_336;
        }

        v132 = 0x686372616573;
      }

      else
      {
        if (byte_1F54237E8 == 2)
        {
          v124 = 0x7261507473726966;
          v131 = 31092;
          goto LABEL_352;
        }

        if (byte_1F54237E8 == 3)
        {
          v123 = 0xE700000000000000;
          v124 = 0x6E49746C697562;
          if (v120 > 1)
          {
            goto LABEL_353;
          }

          goto LABEL_336;
        }

        v132 = 0x6D6165727473;
      }

      v124 = v132 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v131 = 25964;
LABEL_352:
      v123 = v131 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v120 > 1)
      {
LABEL_353:
        if (v120 == 2)
        {
          v126 = 0x7261507473726966;
          v134 = 31092;
LABEL_359:
          v125 = v134 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_360;
        }

        if (v120 == 3)
        {
          v125 = 0xE700000000000000;
          v126 = 0x6E49746C697562;
          goto LABEL_360;
        }

        v133 = 0x6D6165727473;
LABEL_358:
        v126 = v133 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v134 = 25964;
        goto LABEL_359;
      }

LABEL_336:
      if (v120)
      {
        v133 = 0x686372616573;
        goto LABEL_358;
      }

      v125 = 0xEA00000000007265;
      v126 = 0x7474756853657270;
LABEL_360:
      if (v124 == v126 && v123 == v125)
      {
        v135 = 0;
LABEL_363:

        goto LABEL_367;
      }

      v136 = sub_1D8B16BA0();

      if (v136)
      {
        v135 = 0;
        goto LABEL_366;
      }

      if (byte_1F54237E9 <= 1u)
      {
        if (!byte_1F54237E9)
        {
          v137 = 0xEA00000000007265;
          v138 = 0x7474756853657270;
          if (v120 > 1)
          {
            goto LABEL_413;
          }

          goto LABEL_375;
        }

        v151 = 0x686372616573;
      }

      else
      {
        if (byte_1F54237E9 == 2)
        {
          v138 = 0x7261507473726966;
          v150 = 31092;
          goto LABEL_412;
        }

        if (byte_1F54237E9 == 3)
        {
          v137 = 0xE700000000000000;
          v138 = 0x6E49746C697562;
          if (v120 > 1)
          {
            goto LABEL_413;
          }

          goto LABEL_375;
        }

        v151 = 0x6D6165727473;
      }

      v138 = v151 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v150 = 25964;
LABEL_412:
      v137 = v150 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v120 > 1)
      {
LABEL_413:
        if (v120 == 2)
        {
          v140 = 0x7261507473726966;
          v153 = 31092;
LABEL_419:
          v139 = v153 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_420;
        }

        if (v120 == 3)
        {
          v139 = 0xE700000000000000;
          v140 = 0x6E49746C697562;
          goto LABEL_420;
        }

        v152 = 0x6D6165727473;
LABEL_418:
        v140 = v152 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v153 = 25964;
        goto LABEL_419;
      }

LABEL_375:
      if (v120)
      {
        v152 = 0x686372616573;
        goto LABEL_418;
      }

      v139 = 0xEA00000000007265;
      v140 = 0x7474756853657270;
LABEL_420:
      if (v138 == v140 && v137 == v139)
      {
        v135 = 1;
        v4 = v209;
        goto LABEL_363;
      }

      v154 = sub_1D8B16BA0();

      if (v154)
      {
        v135 = 1;
        goto LABEL_366;
      }

      if (byte_1F54237EA <= 1u)
      {
        if (!byte_1F54237EA)
        {
          v155 = 0xEA00000000007265;
          v156 = 0x7474756853657270;
          if (v120 > 1)
          {
            goto LABEL_465;
          }

          goto LABEL_429;
        }

        v167 = 0x686372616573;
      }

      else
      {
        if (byte_1F54237EA == 2)
        {
          v156 = 0x7261507473726966;
          v166 = 31092;
          goto LABEL_464;
        }

        if (byte_1F54237EA == 3)
        {
          v155 = 0xE700000000000000;
          v156 = 0x6E49746C697562;
          if (v120 > 1)
          {
            goto LABEL_465;
          }

          goto LABEL_429;
        }

        v167 = 0x6D6165727473;
      }

      v156 = v167 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v166 = 25964;
LABEL_464:
      v155 = v166 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v120 > 1)
      {
LABEL_465:
        if (v120 == 2)
        {
          v158 = 0x7261507473726966;
          v169 = 31092;
LABEL_471:
          v157 = v169 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          goto LABEL_472;
        }

        if (v120 == 3)
        {
          v157 = 0xE700000000000000;
          v158 = 0x6E49746C697562;
          goto LABEL_472;
        }

        v168 = 0x6D6165727473;
LABEL_470:
        v158 = v168 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v169 = 25964;
        goto LABEL_471;
      }

LABEL_429:
      if (v120)
      {
        v168 = 0x686372616573;
        goto LABEL_470;
      }

      v157 = 0xEA00000000007265;
      v158 = 0x7474756853657270;
LABEL_472:
      if (v156 == v158 && v155 == v157)
      {
        v135 = 2;
        v4 = v209;
        goto LABEL_363;
      }

      v170 = sub_1D8B16BA0();

      if (v170)
      {
        v135 = 2;
        goto LABEL_366;
      }

      if (byte_1F54237EB <= 1u)
      {
        if (!byte_1F54237EB)
        {
          v171 = 0xEA00000000007265;
          v172 = 0x7474756853657270;
          goto LABEL_515;
        }

        v183 = 0x686372616573;
        goto LABEL_513;
      }

      if (byte_1F54237EB != 2)
      {
        if (byte_1F54237EB == 3)
        {
          v171 = 0xE700000000000000;
          v172 = 0x6E49746C697562;
          goto LABEL_515;
        }

        v183 = 0x6D6165727473;
LABEL_513:
        v172 = v183 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v182 = 25964;
        goto LABEL_514;
      }

      v172 = 0x7261507473726966;
      v182 = 31092;
LABEL_514:
      v171 = v182 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_515:
      if (v120 <= 1)
      {
        if (!v120)
        {
          v184 = 0xEA00000000007265;
          v185 = 0x7474756853657270;
          goto LABEL_526;
        }

        v187 = 0x686372616573;
        goto LABEL_524;
      }

      if (v120 == 2)
      {
        v185 = 0x7261507473726966;
        v186 = 31092;
LABEL_525:
        v184 = v186 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_526;
      }

      if (v120 != 3)
      {
        v187 = 0x6D6165727473;
LABEL_524:
        v185 = v187 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v186 = 25964;
        goto LABEL_525;
      }

      v184 = 0xE700000000000000;
      v185 = 0x6E49746C697562;
LABEL_526:
      if (v172 == v185 && v171 == v184)
      {
        v135 = 3;
        v4 = v209;
        goto LABEL_363;
      }

      v188 = sub_1D8B16BA0();

      if (v188)
      {
        v135 = 3;
        goto LABEL_366;
      }

      if (byte_1F54237EC <= 1u)
      {
        if (!byte_1F54237EC)
        {
          v189 = 0xEA00000000007265;
          v190 = 0x7474756853657270;
          goto LABEL_565;
        }

        v199 = 0x686372616573;
        goto LABEL_563;
      }

      if (byte_1F54237EC != 2)
      {
        if (byte_1F54237EC == 3)
        {
          v189 = 0xE700000000000000;
          v190 = 0x6E49746C697562;
          goto LABEL_565;
        }

        v199 = 0x6D6165727473;
LABEL_563:
        v190 = v199 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v198 = 25964;
        goto LABEL_564;
      }

      v190 = 0x7261507473726966;
      v198 = 31092;
LABEL_564:
      v189 = v198 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_565:
      if (v120 <= 1)
      {
        if (!v120)
        {
          v200 = 0xEA00000000007265;
          v201 = 0x7474756853657270;
          goto LABEL_576;
        }

        v203 = 0x686372616573;
        goto LABEL_574;
      }

      if (v120 != 2)
      {
        if (v120 == 3)
        {
          v200 = 0xE700000000000000;
          v201 = 0x6E49746C697562;
          goto LABEL_576;
        }

        v203 = 0x6D6165727473;
LABEL_574:
        v201 = v203 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v202 = 25964;
        goto LABEL_575;
      }

      v201 = 0x7261507473726966;
      v202 = 31092;
LABEL_575:
      v200 = v202 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_576:
      if (v190 == v201 && v189 == v200)
      {
        v135 = 4;
        v4 = v209;
        goto LABEL_363;
      }

      v204 = sub_1D8B16BA0();

      if ((v204 & 1) == 0)
      {
        goto LABEL_598;
      }

      v135 = 4;
LABEL_366:
      v4 = v209;
LABEL_367:
      v109 = v6 - 1;
      v10 = v207;
      if (1 << v121 < (1 << v135))
      {
        break;
      }

      if ((v5 + 1) < v207 || v5 >= v207)
      {
        *v5 = *v115;
      }

      --v5;
      v10 = v115;
      if (v115 <= v4)
      {
        v10 = v115;
        goto LABEL_591;
      }
    }

    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = *v205;
    }

    if (v207 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v205 > v7);
  v6 = v205;
  if (v205 == v4)
  {
    goto LABEL_592;
  }

LABEL_593:
  memmove(v6, v4, v10 - v4);
  return 1;
}

void sub_1D8816568(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v44 = a4;
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = type metadata accessor for BuiltInAction(0);
  v41 = *(v40[0] - 8);
  MEMORY[0x1EEE9AC00](v40[0]);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64010);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v40 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 56);
  v18 = -v15;
  *&v48 = a1;
  *(&v48 + 1) = a1 + 56;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v49 = v16;
  *v50 = v19 & v17;
  *&v50[8] = a2;
  *&v50[16] = 0;
  v50[24] = 0;
  v42 = v8;
  v20 = (v8 + 32);
  while (1)
  {
    sub_1D881A1C8(v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64018);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      v45 = v48;
      v46 = v49;
      v47[0] = *v50;
      *(v47 + 9) = *&v50[9];
      sub_1D87A14E4(&v45, &qword_1ECA64020);
      return;
    }

    v22 = *(v21 + 48);
    sub_1D881BFE4(v14, v11, type metadata accessor for BuiltInAction);
    v23 = *v20;
    v24 = v7;
    (*v20)(v43, &v14[v22], v7);
    v25 = *v44;
    v27 = sub_1D87EFA28(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1D8B16C30();
      __break(1u);
      goto LABEL_23;
    }

    v31 = v26;
    if (v25[3] < v30)
    {
      break;
    }

    if (a3)
    {
      if (v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1D896721C();
      if (v31)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v34 = *v44;
    *(*v44 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    sub_1D881BFE4(v11, v34[6] + *(v41 + 72) * v27, type metadata accessor for BuiltInAction);
    v7 = v24;
    v23((v34[7] + *(v42 + 72) * v27), v43, v24);
    v35 = v34[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_21;
    }

    v34[2] = v37;
    a3 = 1;
  }

  sub_1D896D538(v30, a3 & 1);
  v32 = sub_1D87EFA28(v11);
  if ((v31 & 1) != (v33 & 1))
  {
    goto LABEL_22;
  }

  v27 = v32;
  if ((v31 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v38 = swift_allocError();
  swift_willThrow();
  v51 = v38;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v42 + 8))(v43, v24);
    sub_1D881BD44(v11, type metadata accessor for BuiltInAction);
    v45 = v48;
    v46 = v49;
    v47[0] = *v50;
    *(v47 + 9) = *&v50[9];
    sub_1D87A14E4(&v45, &qword_1ECA64020);

    return;
  }

LABEL_23:
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B421B0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](39, 0xE100000000000000);
  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D8816AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RefinementState(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1D881BDC4(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for RefinementState);
      v24 = v23;
      v25 = v31;
      sub_1D881BFE4(v24, v31, type metadata accessor for RefinementState);
      sub_1D881BFE4(v25, a2, type metadata accessor for RefinementState);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D8816D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F98);
  v38 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v41;
      v28 = *(v41 + 48);
      v29 = sub_1D8B14D80();
      (*(*(v29 - 8) + 16))(v10, v28 + *(*(v29 - 8) + 72) * v26, v29);
      v30 = *(v27 + 56);
      v31 = type metadata accessor for BundleClassification(0);
      sub_1D881BDC4(v30 + *(*(v31 - 8) + 72) * v26, &v10[*(v40 + 48)], type metadata accessor for BundleClassification);
      a1 = v39;
      sub_1D881F6FC(v10, v39, &qword_1ECA63F98);
      sub_1D881F6FC(a1, a2, &qword_1ECA63F98);
      a3 = v37;
      if (v21 == v37)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v21;
      v32 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
    a3 = result;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D881706C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CVTrackSnapshot(0);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_24:
    a3 = 0;
    *a1 = a4;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    return a3;
  }

  if (!a3)
  {
    v37 = 0;
    v20 = 0;
    v21 = 0;
LABEL_29:
    *a1 = a4;
    a1[1] = v21;
LABEL_30:
    a1[2] = v20;
    a1[3] = v37;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v39 = v18;
    v40 = a3;
    v45 = v13;
    v38 = a1;
    v19 = 0;
    v20 = 0;
    a1 = 0;
    v21 = 0;
    v22 = (v16 + 56);
    v41 = v16 + 48;
    v42 = v16;
    v23 = 1;
    while (1)
    {
      v46 = v23;
      v44 = a1;
      if (!v20)
      {
        goto LABEL_8;
      }

      v24 = *(v20 + 16);
      if (v19 == v24)
      {
        break;
      }

LABEL_18:
      if (v19 >= v24)
      {
        goto LABEL_35;
      }

      v43 = a2;
      v29 = v42;
      v30 = *(v42 + 72);
      v31 = v19;
      sub_1D881BDC4(v20 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + v30 * v19, v11, type metadata accessor for CVTrackSnapshot);
      v47 = v31 + 1;
      (*(v29 + 56))(v11, 0, 1, v14);
      v32 = v45;
      sub_1D881F6FC(v11, v45, &qword_1ECA63E20);
      if ((*(v29 + 48))(v32, 1, v14) == 1)
      {
        goto LABEL_27;
      }

      v33 = v32;
      v34 = v39;
      sub_1D881BFE4(v33, v39, type metadata accessor for CVTrackSnapshot);
      v35 = v34;
      v36 = v43;
      result = sub_1D881BFE4(v35, v43, type metadata accessor for CVTrackSnapshot);
      if (v46 == v40)
      {
        a1 = v38;
        a3 = v40;
        v37 = v47;
        goto LABEL_29;
      }

      a2 = v36 + v30;
      a1 = v46;
      v23 = v46 + 1;
      v19 = v47;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    v25 = v19;
    (*v22)(v11, 1, 1, v14);
    result = sub_1D87A14E4(v11, &qword_1ECA63E20);
    v19 = v25;
LABEL_8:
    v26 = *(a4 + 16);
    if (v21 == v26)
    {
      v47 = v19;
LABEL_26:
      v32 = v45;
      (*v22)(v45, 1, 1, v14);
LABEL_27:
      a1 = v38;
      sub_1D87A14E4(v32, &qword_1ECA63E20);
      *a1 = a4;
      a1[1] = v21;
      a3 = v44;
      v37 = v47;
      goto LABEL_30;
    }

    if (v21 < v26)
    {
      while (1)
      {
        v20 = *(a4 + 32 + 8 * v21);

        if (v20)
        {
          v24 = *(v20 + 16);
          if (v24)
          {
            v19 = 0;
            ++v21;
            goto LABEL_18;
          }

          (*v22)(v11, 1, 1, v14);
          result = sub_1D87A14E4(v11, &qword_1ECA63E20);
        }

        v27 = *(a4 + 16);
        v28 = v21 + 1 >= v27;
        if (v21 + 1 == v27)
        {
          break;
        }

        ++v21;
        if (v28)
        {
          goto LABEL_34;
        }
      }

      v47 = 0;
      ++v21;
      goto LABEL_26;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D881750C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a4 + 8;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[8];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[6];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_1D881BDC4(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_1D881BFE4(v30, v16, v41);
      sub_1D881BFE4(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D8817790(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D88178CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D8817A7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (MEMORY[0x1EEE9AC00])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}