void *sub_188FA1C48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1B0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v21 = *(v18 + 8);
        v20 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = v19;
        *(v23 + 8) = v21;
        *(v23 + 16) = v20;
        *(*(v4 + 56) + 8 * v17) = v22;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA1DBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B00);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v19;
        *(*(v4 + 56) + 8 * v17) = v21;

        result = v21;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA1F34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E38);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA2094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B30);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_188F8EA58(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_188E8FC60(v19, *(v4 + 56) + 16 * v17);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA2210()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E40);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        sub_188BBA230(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 16 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 16 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA23AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934EA8);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v21 = *(v19 + 8);
        v20 = *(v19 + 16);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(*(v2 + 56) + v17);
        *v22 = *v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v20;
        *(*(v4 + 56) + v17) = v23;

        result = swift_unknownObjectRetain();
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA253C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938AF0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA2688()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1A0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA27D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C190);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA2944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BB0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    v31 = v1;
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
        v17 = 48 * (v14 | (v8 << 6));
        sub_188C46604(*(v2 + 48) + v17, &v32);
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v18 + 40);
        v24 = (*(v4 + 48) + v17);
        v25 = v32;
        v26 = v33[0];
        v27 = *(v18 + 16);
        *(v24 + 25) = *(v33 + 9);
        *v24 = v25;
        v24[1] = v26;
        v28 = *(v4 + 56) + v17;
        *v28 = v19;
        *(v28 + 8) = v20;
        *(v28 + 16) = v27;
        *(v28 + 24) = v21;
        *(v28 + 32) = v22;
        *(v28 + 40) = v23;
        sub_188EC22E0(v19, v20, v27);
        v29 = v23;
        v30 = v21;
        result = v22;
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

        v1 = v31;
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

void *sub_188FA2B14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C250);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        result = sub_188C2F56C(*(v2 + 56) + 192 * v17, v29);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 192 * v17);
        v20 = v29[3];
        v21 = v29[1];
        v22 = v29[0];
        v19[2] = v29[2];
        v19[3] = v20;
        *v19 = v22;
        v19[1] = v21;
        v23 = v29[7];
        v24 = v29[5];
        v25 = v29[4];
        v19[6] = v29[6];
        v19[7] = v23;
        v19[4] = v25;
        v19[5] = v24;
        v26 = v29[8];
        v27 = v29[9];
        v28 = v30[0];
        *(v19 + 169) = *(v30 + 9);
        v19[9] = v27;
        v19[10] = v28;
        v19[8] = v26;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA2CD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C270);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        result = sub_188BB803C(v19, v20);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA2E5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C20);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 33);
        v29 = *(v22 + 40);
        v30 = (*(v4 + 48) + v18);
        *v30 = v21;
        v30[1] = v20;
        v31 = *(v4 + 56) + v17;
        *v31 = v23;
        *(v31 + 8) = v24;
        *(v31 + 16) = v25;
        *(v31 + 24) = v26;
        *(v31 + 32) = v27;
        *(v31 + 33) = v28;
        *(v31 + 40) = v29;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA3004()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C28);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA31C8()
{
  v1 = v0;
  v2 = type metadata accessor for UITextEffectView.EffectID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E68);
  v6 = *v0;
  v7 = sub_18A4A8458();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_188FA9C08(*(v6 + 48) + v22, v5, type metadata accessor for UITextEffectView.EffectID);
        v21 *= 40;
        sub_188A53994(*(v6 + 56) + v21, v24);
        sub_188FA968C(v5, *(v8 + 48) + v22, type metadata accessor for UITextEffectView.EffectID);
        result = sub_188A5EBAC(v24, *(v8 + 56) + v21);
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

        v1 = v23;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_188FA3428(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

id sub_188FA357C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938AE0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_188A55598(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_188A55538(v19, (*(v4 + 56) + 32 * v17));
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA3710()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C180);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        result = v19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA388C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

void *sub_188FA3A08(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

void *sub_188FA3B54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B60);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA3CA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C200);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA3E00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D60);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_188F48C58(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_188E904EC(v19, *(v4 + 56) + v17);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA3F90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1F0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA4100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B50);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA4288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E30);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA4408(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v6 = *v3;
  v7 = sub_18A4A8458();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v5;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
LABEL_17:
        v21 = 8 * (v18 | (v12 << 6));
        v22 = *(*(v6 + 48) + v21);
        sub_188A3F29C(*(v6 + 56) + v21, v24, a3);
        *(*(v8 + 48) + v21) = v22;
        result = sub_188A3F704(v24, *(v8 + 56) + v21, a3);
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

        v5 = v23;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void *sub_188FA45C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E20);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_188A55598(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_188A55538(v19, (*(v4 + 56) + 32 * v17));
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA476C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E80);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA48D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D40);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        v22 = v19;
        result = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA4A58(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
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

      v17 = *(v3 + 64 + 8 * v9);
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

void *sub_188FA4BD0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v6 = *v3;
  v7 = sub_18A4A8458();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        sub_188A53994(*(v6 + 56) + 40 * v21, v23);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = a3(v23, *(v8 + 56) + 40 * v21);
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

        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

char *sub_188FA4D5C()
{
  v1 = v0;
  v31 = sub_18A4A3538();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938E10);
  v3 = *v0;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_188FA4FD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C340);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA512C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D10);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *(v18 + 32);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 40 * v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 16) = v22;
        *(v21 + 32) = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        result = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA52B4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

void *sub_188FA5400()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D00);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_188FA952C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_188F166A0(v19, *(v4 + 56) + 32 * v17);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA55B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CE0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_188FA5724()
{
  v1 = v0;
  v2 = type metadata accessor for UITextEffectView.EffectID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CD0);
  v6 = *v0;
  v7 = sub_18A4A8458();
  v8 = v7;
  if (*(v6 + 16))
  {
    v26 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = *(v6 + 56);
        v24 = *(v3 + 72) * v21;
        v27 = *(*(v6 + 48) + 16 * v21);
        sub_188FA9C08(v23 + v24, v5, type metadata accessor for UITextEffectView.EffectID);
        *(*(v8 + 48) + v22) = v27;
        result = sub_188FA968C(v5, *(v8 + 56) + v24, type metadata accessor for UITextEffectView.EffectID);
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

        v1 = v26;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_188FA5974(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_18A4A29D8();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_18A4A8458();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
    }

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

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

id sub_188FA5BEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E48);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        result = v21;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA5D64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CA0);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 24 * v17;
        v19 = (*(v2 + 48) + 24 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v17 *= 16;
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v27 = (*(v4 + 56) + v17);
        *v27 = v24;
        v27[1] = v25;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA5EEC()
{
  v1 = v0;
  v2 = _s8CacheKeyVMa();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C290);
  v5 = *v0;
  v6 = sub_18A4A8458();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_188FA9C08(*(v5 + 48) + v21, v4, _s8CacheKeyVMa);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_188FA968C(v4, *(v7 + 48) + v21, _s8CacheKeyVMa);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
      }

      while (v15);
    }

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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_188FA6128()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E38);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA6298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C00);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA6414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C08);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_188FA6574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C330);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA66D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E30);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_188FA6830(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
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

      v17 = *(v3 + 64 + 8 * v9);
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

void *sub_188FA698C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C60);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v19;
        v24[1] = v20;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        v26 = v22;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA6B20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C40);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = sub_188BB395C(v19, v20, v23);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA6CA8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

void *sub_188FA6E08(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

id sub_188FA6F54()
{
  v1 = v0;
  v2 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C310);
  v5 = *v0;
  v6 = sub_18A4A8458();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_188FA9C08(*(v5 + 48) + v21, v4, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_188FA968C(v4, *(v7 + 48) + v21, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = v22;
      }

      while (v15);
    }

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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_188FA7190()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C300);
  v6 = *v0;
  v7 = sub_18A4A8458();
  v8 = v7;
  if (*(v6 + 16))
  {
    v27 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_188FA9C08(*(v6 + 48) + v22, v5, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v21 *= 72;
        sub_188FA95D0(*(v6 + 56) + v21, v28);
        result = sub_188FA968C(v5, *(v8 + 48) + v22, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v23 = *(v8 + 56) + v21;
        v24 = v28[1];
        v25 = v28[2];
        v26 = v28[3];
        *(v23 + 64) = v29;
        *(v23 + 32) = v25;
        *(v23 + 48) = v26;
        *(v23 + 16) = v24;
        *v23 = v28[0];
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

        v1 = v27;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_188FA73F8()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C2F0);
  v4 = *v0;
  v5 = sub_18A4A8458();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    v30 = v4;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v31;
        v22 = *(v32 + 72) * v20;
        sub_188FA9C08(*(v4 + 48) + v22, v31, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v20 *= 2;
        v23 = (*(v4 + 56) + v20);
        v24 = *v23;
        v25 = v23[1];
        v26 = v33;
        result = sub_188FA968C(v21, *(v33 + 48) + v22, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v27 = (*(v26 + 56) + v20);
        *v27 = v24;
        v4 = v30;
        v27[1] = v25;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v33;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_188FA765C()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938DE0);
  v6 = *v0;
  v7 = sub_18A4A8458();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_188FA9C08(*(v6 + 48) + v22, v5, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v21 *= 16;
        v23 = *(v8 + 48);
        v26 = *(*(v6 + 56) + v21);
        result = sub_188FA968C(v5, v23 + v22, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        *(*(v8 + 56) + v21) = v26;
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

        v1 = v25;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_188FA789C()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938DD0);
  v8 = *v0;
  v9 = sub_18A4A8458();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_188FA9C08(*(v8 + 48) + v24, v7, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v25 = *(v29 + 72) * v23;
        sub_188FA9C08(*(v8 + 56) + v25, v4, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
        sub_188FA968C(v7, *(v10 + 48) + v24, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        result = sub_188FA968C(v4, *(v10 + 56) + v25, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
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

LABEL_18:
    *v1 = v10;
  }

  return result;
}

id sub_188FA7B88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C220);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
        result = *(&v23 + 1);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_188FA7D14()
{
  v1 = v0;
  v29 = sub_18A4A3CC8();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1C0);
  v3 = *v0;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
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

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_188FA7F80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B70);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = (*(v4 + 56) + 32 * v17);
        *v23 = v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        v24 = v20;
        v25 = v21;
        result = v22;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA8100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C210);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v17 *= 16;
        v23 = (*(v4 + 48) + v18);
        v24 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(*(v4 + 56) + v17) = v24;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_188FA82A4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

void *sub_188FA8404(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_18A4A29D8();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_18A4A8458();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v23 = v32;
        v24 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v20 *= 16;
        v25 = v34;
        v26 = *(v34 + 48);
        v27 = *(v21 + 32);
        v36 = *(*(v5 + 56) + v20);
        v27(v26 + v22, v23, v24);
        *(*(v25 + 56) + v20) = v36;

        v15 = v37;
      }

      while (v37);
    }

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

        v3 = v29;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

void *sub_188FA8684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938DA8);
  v2 = *v0;
  v3 = sub_18A4A8458();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        v19 = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_188FA8800()
{
  v1 = v0;
  v31 = sub_18A4A5448();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1D0);
  v3 = *v0;
  v4 = sub_18A4A8458();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_188FA8A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938DA0);
  v2 = *v0;
  v3 = sub_18A4A8458();
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
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_188A55598(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_188A55538(v25, (*(v4 + 56) + v22));
        result = sub_188E90558(v20, v21);
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

id sub_188FA8CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x78);
  v14 = MEMORY[0x1E69E7CC0];
  *(v5 + v13) = sub_188E8E870(MEMORY[0x1E69E7CC0]);
  *(v5 + *((*v11 & *v5) + 0x80)) = v14;
  *(v5 + *((*v11 & *v5) + 0x90)) = MEMORY[0x1E69E7CD0];
  *(v5 + *((*v11 & *v5) + 0x98)) = 0;
  *(v5 + *((*v11 & *v5) + 0xA0)) = 0;
  *(v5 + *((*v11 & *v5) + 0xA8)) = v14;
  *(v5 + *((*v11 & *v5) + 0xB0)) = v14;
  (*(*(*((v12 & v10) + 0x50) - 8) + 16))(v5 + *((*v11 & *v5) + 0x60), a1, *((v12 & v10) + 0x50));
  v15 = (v5 + *((*v11 & *v5) + 0x70));
  *v15 = a4;
  v15[1] = a5;
  v16 = (v5 + *((*v11 & *v5) + 0x68));
  *v16 = a2;
  v16[1] = a3;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for UITransitionComponentSystemView();
  return objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

unint64_t sub_188FA8F58()
{
  result = qword_1ED490230;
  if (!qword_1ED490230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED490230);
  }

  return result;
}

void sub_188FA8FB4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + v2) = sub_188E8E870(MEMORY[0x1E69E7CC0]);
  *(v0 + *((*v1 & *v0) + 0x80)) = v3;
  *(v0 + *((*v1 & *v0) + 0x90)) = MEMORY[0x1E69E7CD0];
  *(v0 + *((*v1 & *v0) + 0x98)) = 0;
  *(v0 + *((*v1 & *v0) + 0xA0)) = 0;
  *(v0 + *((*v1 & *v0) + 0xA8)) = v3;
  *(v0 + *((*v1 & *v0) + 0xB0)) = v3;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188FA9228()
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

uint64_t sub_188FA9588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188FA962C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_188FA968C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_188FA9700(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_188FA970C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t sub_188FA9718(uint64_t a1)
{
  v3 = sub_18A4A29D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35[-1] - v11;
  v13 = type metadata accessor for UILayoutComponentResponse(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_188FA9C08(a1, v15, type metadata accessor for UILayoutComponentResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *v15;
      v24 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
      swift_beginAccess();
      v25 = *(v1 + v24);
      if (*(v25 + 16))
      {
        v26 = sub_188E8B63C(v23);
        if (v27)
        {
          [*(*(v25 + 56) + 8 * v26) removeFromSuperview];
        }
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v35[0] = *v15;
      sub_188F9C424(v35);
    }

    else
    {
      *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98)) = 1;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v4 + 32);
      v17(v9, v15, v3);
      (*(v4 + 16))(v6, v9, v3);
      v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
      v19 = *(v1 + v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v18) = v19;
      v34 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_188E4C280(0, *(v19 + 2) + 1, 1, v19);
        *(v1 + v18) = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_188E4C280(v21 > 1, v22 + 1, 1, v19);
      }

      *(v19 + 2) = v22 + 1;
      v34(&v19[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22], v6, v3);
      *(v1 + v18) = v19;
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v28 = *v15;
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
      swift_beginAccess();
      v30 = *(v1 + v29);
      if (*(v30 + 16))
      {
        v31 = sub_188E8B63C(v28);
        if (v32)
        {
          [v1 addSubview_];
        }
      }
    }
  }

  else
  {
    sub_188A3F704(v15, v12, &qword_1EA938E28);
    sub_188F9BE60(v12);
    sub_188FA9C70(v12);
  }

  return 1;
}

uint64_t sub_188FA9C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188FA9C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188FA9CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9352B0);
  v4 = sub_18A4A8778();
  swift_unknownObjectRelease();
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = sub_188A403F4(v4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_188F8EA58(*(a3 + 56) + 16 * v5, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_188F8EAB4(v9);
  if (!Strong)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_188FA9D8C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_188A403F4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_188A3F29C(*(a2 + 56) + 8 * v3, v7, &unk_1EA93B9E0);
  Strong = swift_weakLoadStrong();
  sub_188A3F5FC(v7, &unk_1EA93B9E0);
  if (!Strong)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_188FA9E28()
{
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  swift_beginAccess();
}

uint64_t sub_188FA9ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_188FA9FA4(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_188F8E240(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;

    return sub_188B57EA4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188FAB9F8(&qword_1ED490BC0);
    sub_18A4A2BF8();
  }
}

uint64_t sub_188FAA0DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;

  return sub_188B57EA4();
}

uint64_t sub_188FAA14C()
{
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_188FAA1E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_18A4A86C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188FAB9F8(&qword_1ED490BC0);
    sub_18A4A2BF8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_188FAA344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

uint64_t sub_188FAA380(uint64_t a1)
{
  v2 = v1;
  result = swift_weakLoadStrong();
  if (a1)
  {
    if (result)
    {
      v5 = result;

      if (v5 == a1)
      {
        return result;
      }
    }

    swift_getKeyPath();
    v14 = a1;
    sub_188FAB9F8(&qword_1ED490BC0);

    sub_18A4A2C08();

    swift_beginAccess();
    v6 = *(a1 + 48);

    v7 = sub_188FA9D8C(v2, v6);

    if (v7)
    {
      swift_getKeyPath();
      sub_18A4A2C08();

      v14 = a1;
      swift_getKeyPath();
      sub_18A4A2C28();

      swift_beginAccess();
      sub_189000190(v2, v13);
      sub_188A3F5FC(v13, &qword_1EA937058);
      swift_endAccess();
      sub_188B57EA4();
      v14 = a1;
      swift_getKeyPath();
      sub_18A4A2C18();
    }
  }

  else if (!result)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    v14 = v8;
    sub_188FAB9F8(&qword_1ED490BC0);
    sub_18A4A2C08();

    swift_beginAccess();
    v9 = *(v8 + 48);

    v10 = sub_188FA9D8C(v2, v9);

    if ((v10 & 1) == 0)
    {
      swift_getKeyPath();
      v13[0] = v8;
      sub_18A4A2C08();

      v13[0] = v8;
      swift_getKeyPath();
      sub_18A4A2C28();

      swift_beginAccess();
      if (*(*(v8 + 48) + 16) >= 6uLL)
      {
        v11 = sub_188FABA74(*(v8 + 48));

        *(v8 + 48) = v11;
      }

      swift_weakInit();
      swift_weakAssign();
      v12[8] = 0;
      sub_188B57110(v12, v2);
      swift_endAccess();
      sub_188B57EA4();
      v13[0] = v8;
      swift_getKeyPath();
      sub_18A4A2C18();
    }
  }

  return result;
}

uint64_t sub_188FAA738()
{
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  swift_beginAccess();
}

uint64_t sub_188FAA7DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_188FAA888(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_188F8E45C(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;

    return sub_188B57EA4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188FAB9F8(&qword_1ED490BC0);
    sub_18A4A2BF8();
  }
}

uint64_t sub_188FAA9C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;

  return sub_188B57EA4();
}

uint64_t sub_188FAAA30()
{
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();
}

uint64_t sub_188FAAAC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  *a2 = *(v3 + 56);
}

uint64_t sub_188FAAB58(uint64_t a1)
{
  if (!*(v1 + 56))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188FAB9F8(&qword_1ED490BC0);
    sub_18A4A2BF8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_188F8E240(v3, a1);

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 56) = a1;
}

uint64_t sub_188FAACAC()
{
  swift_getKeyPath();
  v14 = v0;
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  if (!v0[7])
  {
    swift_getKeyPath();
    v14 = v0;
    sub_18A4A2C08();

    swift_beginAccess();
    v1 = v0[6];
    swift_getKeyPath();
    v14 = v0;

    sub_18A4A2C08();

    swift_beginAccess();
    v2 = v0[2];
    v3 = -1 << *(v1 + 32);
    v4 = ~v3;
    v5 = *(v1 + 64);
    v6 = -v3;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v14 = v1;
    v15 = v1 + 64;
    v16 = v4;
    v17 = 0;
    v18 = v7 & v5;

    sub_1890A2A38();
    if (v8)
    {
      do
      {
        v9 = sub_188FAACAC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v2;
        sub_188FABE2C(v9, sub_188FABDFC, 0, isUniquelyReferenced_nonNull_native, &v13);

        v2 = v13;
        sub_1890A2A38();
      }

      while (v11);
    }

    sub_188E036A4();
    sub_188FAAB58(v2);
  }

  swift_getKeyPath();
  v14 = v0;
  sub_18A4A2C08();

  result = v0[7];
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_188FAAF08@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_188FAACAC();
  v5 = 0;
  v6 = -1 << *(v4 + 32);
  v7 = ~v6;
  v8 = *(v4 + 64);
  v9 = -v6;
  v10 = v9 < 64;
  v11 = -1 << v9;
  if (v10)
  {
    v12 = ~v11;
  }

  else
  {
    v12 = -1;
  }

  v21 = v4;
  v22 = v4 + 64;
  v23 = v7;
  v24 = 0;
  v25 = v12 & v8;
  while (1)
  {
    sub_1890A28A4();
    if (!v14)
    {
      break;
    }

    v15 = v13;
    ObjectType = swift_getObjectType();
    (*(v15 + 40))(&v20, a1, ObjectType, v15);
    swift_unknownObjectRelease();
    if (v20 == 2)
    {
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        break;
      }
    }

    else if (v20 == 1)
    {
      result = sub_188E036A4();
      v19 = 1;
      goto LABEL_13;
    }
  }

  result = sub_188E036A4();
  v19 = 2 * (v5 > 0);
LABEL_13:
  *a2 = v19;
  return result;
}

BOOL sub_188FAB024(uint64_t a1)
{
  sub_188FAACAC();

  do
  {
    sub_1890A28A4();
    v4 = v3;
    if (!v3)
    {
      break;
    }

    v5 = v2;
    ObjectType = swift_getObjectType();
    LOBYTE(v5) = (*(v5 + 48))(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  while ((v5 & 1) == 0);

  sub_188E036A4();
  return v4 != 0;
}

uint64_t sub_188FAB1D8(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188FABDC0;
  *(v4 + 24) = v3;
  v9[4] = sub_188A4B574;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_53;
  v5 = _Block_copy(v9);
  v6 = a1;

  [v6 appendProem:v1 block:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_188FAB340(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  v36 = a2;
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  if (*(a2 + 32))
  {

    v4 = sub_18A4A7258();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_18A4A7258();
  v28 = a1;

  swift_unknownObjectRelease();
  swift_getKeyPath();
  v36 = a2;
  sub_18A4A2C08();

  swift_beginAccess();
  v6 = *(a2 + 16);
  v41 = MEMORY[0x1E69E7CC0];

  sub_188E6D154(0, 0, 0);
  v7 = v41;
  v8 = -1 << *(v6 + 32);
  v9 = ~v8;
  v10 = *(v6 + 64);
  v11 = -v8;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v36 = v6;
  v37 = v6 + 64;
  v38 = v9;
  v39 = 0;
  v40 = v12 & v10;

  sub_1890A28A4();
  if (v13)
  {
    v14 = v13;
    do
    {
      v34 = 60;
      v35 = 0xE100000000000000;
      v33[3] = swift_getObjectType();
      v33[0] = v14;
      sub_188A3F29C(v33, &v29, &qword_1EA934050);
      if (v30)
      {
        sub_188A55538(&v29, &v31);
        *&v29 = 60;
        *(&v29 + 1) = 0xE100000000000000;
        __swift_project_boxed_opaque_existential_0(&v31, v32);
        swift_unknownObjectRetain();
        sub_18A4A86A8();
        ObjCClassFromObject = swift_getObjCClassFromObject();
        swift_unknownObjectRelease();
        class_getName(ObjCClassFromObject);
        v16 = sub_18A4A7398();
        MEMORY[0x18CFE22D0](v16);

        MEMORY[0x18CFE22D0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v31, v32);
        sub_18A4A86A8();
        sub_188F9257C();
        swift_unknownObjectRetain();
        v17 = sub_18A4A7418();
        MEMORY[0x18CFE22D0](v17);
        swift_unknownObjectRelease_n();

        MEMORY[0x18CFE22D0](30768, 0xE200000000000000);

        MEMORY[0x18CFE22D0](62, 0xE100000000000000);
        v18 = *(&v29 + 1);
        v19 = v29;
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      }

      else
      {
        swift_unknownObjectRetain();
        sub_188A3F5FC(&v29, &qword_1EA934050);
        v18 = 0xE500000000000000;
        v19 = 0x296C696E28;
      }

      sub_188A3F5FC(v33, &qword_1EA934050);
      MEMORY[0x18CFE22D0](v19, v18);

      MEMORY[0x18CFE22D0](62, 0xE100000000000000);
      swift_unknownObjectRelease();
      v20 = v34;
      v21 = v35;
      v41 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_188E6D154((v22 > 1), v23 + 1, 1);
        v7 = v41;
      }

      *(v7 + 16) = v23 + 1;
      v24 = v7 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      sub_1890A28A4();
      v14 = v25;
    }

    while (v25);
  }

  sub_188E036A4();
  v26 = sub_18A4A7518();

  v27 = sub_18A4A7258();
}

unint64_t sub_188FAB84C()
{
  result = qword_1EA938E50;
  if (!qword_1EA938E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA938E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938E50);
  }

  return result;
}

uint64_t sub_188FAB8E4()
{
  v1 = [objc_opt_self() descriptionForRootObject_];
  v2 = sub_18A4A7288();

  return v2;
}

uint64_t sub_188FAB94C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  sub_18A4A2C08();

  swift_beginAccess();
  *a1 = *(v3 + 48);
}

uint64_t sub_188FAB9F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScrollPocketCollectorModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188FABA74(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_188FABBD4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_188FABD48(v8, v4, v2);
  result = MEMORY[0x18CFEA5B0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_188FABBD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    sub_188A3F29C(*(a3 + 56) + 8 * v14, v18, &unk_1EA93B9E0);
    if (swift_weakLoadStrong())
    {

      result = sub_188A3F5FC(v18, &unk_1EA93B9E0);
      *(v17 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_18914CF54(v17, a2, v4, a3);
      }
    }

    else
    {
      result = sub_188A3F5FC(v18, &unk_1EA93B9E0);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_18914CF54(v17, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_188FABD48(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_188FABBD4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_188FABDFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_188F8EA58((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t sub_188FABE2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v36 = a1;
  v37 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v38 = v8;
  v39 = 0;
  v40 = v11 & v9;
  v41 = a2;
  v42 = a3;

  sub_189037DD4(&v33);
  if (!v34 && v35 == 1)
  {
LABEL_21:
    sub_188E036A4();
  }

  while (1)
  {
    v12 = v33;
    sub_188E8FC60(&v34, v32);
    v13 = *a5;
    v14 = sub_188A403F4(v12);
    v16 = *(v13 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (*(v13 + 24) < v19)
    {
      sub_1890BC04C(v19, a4 & 1);
      v14 = sub_188A403F4(v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v20)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    if (a4)
    {
      goto LABEL_11;
    }

    v25 = v14;
    sub_188FA2094();
    v14 = v25;
    if (v20)
    {
LABEL_12:
      v22 = *a5;
      v23 = v14;
      sub_188F8EA58(*(*a5 + 56) + 16 * v14, v30);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v24 = v30;
      }

      else
      {
        v24 = v32;
      }

      sub_188F8EA58(v24, v31);
      sub_188F8EAB4(v30);
      sub_188F8EAB4(v32);
      sub_188EA2354(v31, *(v22 + 56) + 16 * v23);
      goto LABEL_19;
    }

LABEL_17:
    v26 = *a5;
    *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v26[6] + 8 * v14) = v12;
    sub_188E8FC60(v32, v26[7] + 16 * v14);
    v27 = v26[2];
    v18 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v18)
    {
      goto LABEL_23;
    }

    v26[2] = v28;
LABEL_19:
    sub_189037DD4(&v33);
    a4 = 1;
    if (!v34 && v35 == 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

uint64_t sub_188FAC090()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_188FAC0E8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldExpandItem.getter()
{
  v0 = sub_188FAD61C();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_188FAC1A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v5 = *(a1 + a2 - 40);
  v6 = *(a1 + a2 - 32);
  v7 = *(a1 + a2 - 24);
  v8 = *(a1 + a2 - 16);
  v9 = *(a1 + a2 - 8);
  type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  v10 = sub_188FAD61C();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = swift_allocObject();
    v10 = v12;
    v14[2] = v4;
    v14[3] = v5;
    v14[4] = v6;
    v14[5] = v7;
    v14[6] = v8;
    v14[7] = v9;
    v14[8] = v12;
    v14[9] = v13;
    v15 = sub_188FAD7B0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a3 = v15;
  a3[1] = v14;
  return sub_188A52E38(v10);
}

id sub_188FAC29C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 48);
  v5 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v9 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v10 = *a1;
  v11 = a1[1];
  if (*a1)
  {
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v6;
    v12[5] = v7;
    v12[6] = v9;
    v12[7] = v8;
    v12[8] = v10;
    v12[9] = v11;
    v13 = sub_188FAD7AC;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  sub_188A52E38(v10);
  v14 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  return UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldExpandItem.setter(v13, v12, v14);
}

uint64_t sub_188FAC37C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  LOBYTE(a2) = v3(v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return a2 & 1;
}

uint64_t (*UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldExpandItem.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_188FAC440;
}

uint64_t UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willExpandItem.getter()
{
  v0 = sub_188FAD628();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_188FAC4B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v5 = *(a1 + a2 - 40);
  v6 = *(a1 + a2 - 32);
  v7 = *(a1 + a2 - 24);
  v8 = *(a1 + a2 - 16);
  v9 = *(a1 + a2 - 8);
  type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  v10 = sub_188FAD628();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = swift_allocObject();
    v10 = v12;
    *(v14 + 2) = v4;
    *(v14 + 3) = v5;
    *(v14 + 4) = v6;
    *(v14 + 5) = v7;
    *(v14 + 6) = v8;
    *(v14 + 7) = v9;
    *(v14 + 8) = v12;
    *(v14 + 9) = v13;
    v15 = sub_188FAD7A8;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a3 = v15;
  a3[1] = v14;
  return sub_188A52E38(v10);
}

id sub_188FAC5B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 48);
  v5 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v9 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v10 = *a1;
  v11 = a1[1];
  if (*a1)
  {
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v6;
    v12[5] = v7;
    v12[6] = v9;
    v12[7] = v8;
    v12[8] = v10;
    v12[9] = v11;
    v13 = sub_188FAD7C8;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  sub_188A52E38(v10);
  v14 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  return UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willExpandItem.setter(v13, v12, v14);
}

uint64_t sub_188FAC690(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t (*UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willExpandItem.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_188FAC74C;
}

uint64_t UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldCollapseItem.getter()
{
  v0 = sub_188FAD634();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_188FAC7C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v5 = *(a1 + a2 - 40);
  v6 = *(a1 + a2 - 32);
  v7 = *(a1 + a2 - 24);
  v8 = *(a1 + a2 - 16);
  v9 = *(a1 + a2 - 8);
  type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  v10 = sub_188FAD634();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = swift_allocObject();
    v10 = v12;
    v14[2] = v4;
    v14[3] = v5;
    v14[4] = v6;
    v14[5] = v7;
    v14[6] = v8;
    v14[7] = v9;
    v14[8] = v12;
    v14[9] = v13;
    v15 = sub_188FAD774;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a3 = v15;
  a3[1] = v14;
  return sub_188A52E38(v10);
}

id sub_188FAC8BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 48);
  v5 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v9 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v10 = *a1;
  v11 = a1[1];
  if (*a1)
  {
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v6;
    v12[5] = v7;
    v12[6] = v9;
    v12[7] = v8;
    v12[8] = v10;
    v12[9] = v11;
    v13 = sub_188FAD73C;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  sub_188A52E38(v10);
  v14 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  return UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldCollapseItem.setter(v13, v12, v14);
}

uint64_t sub_188FAC99C(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_188A55598(v11, v14);
  swift_dynamicCast();
  v12 = a2(v10);
  (*(v8 + 8))(v10, a6);
  return v12 & 1;
}

uint64_t (*UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldCollapseItem.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_188FACAE8;
}

uint64_t UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willCollapseItem.getter()
{
  v0 = sub_188FAD674();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_188FACB5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v5 = *(a1 + a2 - 40);
  v6 = *(a1 + a2 - 32);
  v7 = *(a1 + a2 - 24);
  v8 = *(a1 + a2 - 16);
  v9 = *(a1 + a2 - 8);
  type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  v10 = sub_188FAD674();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = swift_allocObject();
    v10 = v12;
    *(v14 + 2) = v4;
    *(v14 + 3) = v5;
    *(v14 + 4) = v6;
    *(v14 + 5) = v7;
    *(v14 + 6) = v8;
    *(v14 + 7) = v9;
    *(v14 + 8) = v12;
    *(v14 + 9) = v13;
    v15 = sub_188FAD714;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a3 = v15;
  a3[1] = v14;
  return sub_188A52E38(v10);
}

id sub_188FACC58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 48);
  v5 = *(a3 + a4 - 40);
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v9 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v10 = *a1;
  v11 = a1[1];
  if (*a1)
  {
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v6;
    v12[5] = v7;
    v12[6] = v9;
    v12[7] = v8;
    v12[8] = v10;
    v12[9] = v11;
    v13 = sub_188FAD6EC;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  sub_188A52E38(v10);
  v14 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  return UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willCollapseItem.setter(v13, v12, v14);
}

uint64_t sub_188FACD38(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_188A55598(v11, v13);
  swift_dynamicCast();
  a2(v10);
  return (*(v8 + 8))(v10, a6);
}

uint64_t (*UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willCollapseItem.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_188FACE7C;
}

uint64_t UICollectionViewDiffableDataSource.SectionSnapshotHandlers.snapshotForExpandingParent.getter()
{
  v0 = sub_188FAD6B0();
  sub_188A52E38(v0);
  return v0;
}

uint64_t sub_188FACEF0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  v2 = sub_188FAD6B0();
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v2;
  a1[1] = v4;
  return sub_188A52E38(v2);
}

id sub_188FACF70(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[1];
  }

  else
  {
    v2 = 0;
  }

  sub_188A52E38(v1);
  v3 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  return UICollectionViewDiffableDataSource.SectionSnapshotHandlers.snapshotForExpandingParent.setter(v1, v2, v3);
}

id UICollectionViewDiffableDataSource.SectionSnapshotHandlers.snapshotForExpandingParent.setter(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(v3 + 72);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  sub_188A52E38(a1);
  sub_188A55B8C(v7);
  if (a1)
  {
    v8 = *v3;
    v9 = swift_allocObject();
    v10 = a3[2];
    *(v9 + 16) = a3[1];
    *(v9 + 32) = v10;
    *(v9 + 48) = a3[3];
    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    v14[4] = sub_188FAD6B8;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188FAD2B0;
    v14[3] = &block_descriptor_26_4;
    v11 = _Block_copy(v14);

    [v8 setSnapshotForExpandingParentItemHandler_];
    _Block_release(v11);
    return sub_188A55B8C(a1);
  }

  else
  {
    v13 = *v3;

    return [v13 setSnapshotForExpandingParentItemHandler_];
  }
}

unint64_t sub_188FAD154(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, char *, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A55598(v13, v17);
  swift_dynamicCast();
  static NSDiffableDataSourceSectionSnapshot._unconditionallyBridgeFromObjectiveC(_:)(a2, &v16);
  a3(&v18, v12, &v16);

  (*(v10 + 8))(v12, a7);
  v17[0] = v18;
  type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v14 = NSDiffableDataSourceSectionSnapshot._bridgeToObjectiveC()();

  return v14;
}

id sub_188FAD2B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v7 = v5(v9, v6);

  __swift_destroy_boxed_opaque_existential_0Tm(v9);

  return v7;
}

uint64_t (*UICollectionViewDiffableDataSource.SectionSnapshotHandlers.snapshotForExpandingParent.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  *a1 = v4;
  a1[1] = v5;
  sub_188A52E38(v4);
  return sub_188FAD39C;
}

uint64_t sub_188FAD3DC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7, v8);
  }

  a4(*a1, v7);
  a3(v6, v7, v8);

  return a5(v6, v7);
}

id UICollectionViewDiffableDataSource.SectionSnapshotHandlers.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  result = [objc_allocWithZone(UICollectionViewDiffableDataSourceSectionSnapshotHandlers) init];
  *a1 = result;
  return result;
}

double UICollectionViewDiffableDataSource.sectionSnapshotHandlers.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + qword_1EA940A40) sectionSnapshotHandlers];
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = v3;
  return result;
}

uint64_t sub_188FAD548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v21 = *(a1 + 32);
  v22 = v4;
  v6 = *(a1 + 48);
  v23 = *(a1 + 64);
  v7 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v7;
  v18[1] = v5;
  v18[2] = v21;
  v8 = *(a1 + 64);
  v18[3] = v6;
  v18[4] = v8;
  v9 = *(a3 + a4 - 32);
  v10 = *(a3 + a4 - 8);
  v24 = *(a1 + 80);
  v19 = *(a1 + 80);
  v18[0] = v20[0];
  v14[0] = v9;
  v11 = *(a3 + a4 - 24);
  v14[1] = *(a3 + a4 - 24);
  v15 = v11;
  v16 = v10;
  v17 = v10;
  v12 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
  (*(*(v12 - 8) + 16))(v14, v20, v12);
  return UICollectionViewDiffableDataSource.sectionSnapshotHandlers.setter(v18);
}

uint64_t sub_188FAD774@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 64))();
  *a1 = result & 1;
  return result;
}

id static CornerMaskingContextTrait.defaultValue.getter()
{
  if (qword_1ED491A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED491AA0;

  return v1;
}

id sub_188FAD878@<X0>(void *a1@<X8>)
{
  if (qword_1ED491A90 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED491AA0;
  *a1 = qword_1ED491AA0;

  return v2;
}

void UIView.cornerMaskingConfiguration.getter(_OWORD *a1@<X8>)
{
  v3 = [(UIView *)v1 _typedStorage];
  sub_18901F268(a1);
}

__n128 sub_188FAD97C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [(UIView *)*a1 _typedStorage];
  sub_18901F268(v6);

  v4 = v7[0];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 58) = *(v7 + 10);
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

void (*UIView.cornerMaskingConfiguration.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 320) = v1;
  v5 = [(UIView *)v1 _typedStorage];
  v6 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v7 = *(&v5->super.isa + v6);
  if (*(v7 + 16) && (v8 = sub_188A403F4(&_s29CornerMaskingConfigurationKeyVN), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v4[5] = v10[1];
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    *(v4 + 138) = *(v10 + 74);
    v4[7] = v12;
    v4[8] = v13;
    v4[6] = v11;
    memmove(v4, v10 + 1, 0x4AuLL);
    sub_188A74E4C((v4 + 5), (v4 + 10));
  }

  else
  {
    swift_endAccess();
    *(v4 + 58) = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  return sub_188FADB04;
}

void sub_188FADB04(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[12] = v5;
    v2[13] = v4;
    *(v2 + 218) = *(v2 + 58);
    v6 = v2[1];
    v7 = *v2;
    v2[10] = *v2;
    v2[11] = v6;
    v8 = v2[3];
    v15 = v5;
    v16[0] = v8;
    *(v16 + 10) = *(v2 + 58);
    v13 = v7;
    v14 = v3;
    sub_188A74E4C((v2 + 10), (v2 + 15));
    UIView.cornerMaskingConfiguration.setter(&v13);
    v9 = v2[3];
    v2[7] = v2[2];
    v2[8] = v9;
    *(v2 + 138) = *(v2 + 58);
    v10 = v2[1];
    v2[5] = *v2;
    v2[6] = v10;
    sub_188A3F5FC((v2 + 5), &qword_1EA938E70);
  }

  else
  {
    v11 = v2[3];
    v15 = v2[2];
    v16[0] = v11;
    *(v16 + 10) = *(v2 + 58);
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    UIView.cornerMaskingConfiguration.setter(&v13);
  }

  free(v2);
}

_OWORD *sub_188FADBE8()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = sub_188A7A640();

  if (!v3)
  {
    _s24CornerCenterLayoutGuidesCMa();
    v3 = swift_allocObject();
    v3[1] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    v3[4] = 0u;
    v4 = [(UIView *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F90);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(&v4->super.isa + v6);
    *(&v4->super.isa + v6) = 0x8000000000000000;
    sub_188A40430(v5, &_s24CornerCenterLayoutGuidesC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v4->super.isa + v6) = v9;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_188FADD10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F98);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64FD70;
  v2 = v0[2];
  v3 = v0[3];
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = v3;
  *(v1 + 56) = 1;
  v4 = v0[4];
  v5 = v0[5];
  *(v1 + 64) = v4;
  *(v1 + 72) = 2;
  *(v1 + 80) = v5;
  *(v1 + 88) = 3;
  v6 = v0[6];
  v7 = v0[7];
  *(v1 + 96) = v6;
  *(v1 + 104) = 4;
  *(v1 + 112) = v7;
  *(v1 + 120) = 5;
  v9 = v0[8];
  v8 = v0[9];
  *(v1 + 128) = v9;
  *(v1 + 136) = 6;
  *(v1 + 144) = v8;
  *(v1 + 152) = 7;
  v10 = v8;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v9;
  return v1;
}

void sub_188FADE0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _updateConcentricConstraintsIfNecessary];
  }
}

void sub_188FADEAC()
{
  v1 = sub_188FAE06C(0, v0, &selRef_topAnchor, &selRef_leftAnchor);
  v2 = *(sub_188FAF9F8() + 2);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 rightAnchor];
  v4 = [v1 bottomAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 2);
    *(v6 + 2) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

id sub_188FAE06C(unsigned __int8 a1, void *a2, SEL *a3, SEL *a4)
{
  sub_188FADBE8();
  v8 = sub_188FAFC80(a1);
  v9 = v8;

  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(UILayoutGuide) init];
  [a2 addLayoutGuide_];
  [v11 _setLockedToOwningView_];
  result = [a2 _frameLayoutItem];
  if (result)
  {
    v12 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18A64E3F0;
    v14 = [v11 widthAnchor];
    v15 = [v14 constraintEqualToConstant_];

    *(v13 + 32) = v15;
    v16 = [v11 heightAnchor];
    v17 = [v16 constraintEqualToConstant_];

    *(v13 + 40) = v17;
    v18 = sub_188FAF1C4(v11, v12, a3, a4);
    sub_18920BB88(v18);
    sub_188A34624(0, &qword_1ED48CFF0);
    v19 = sub_18A4A7518();
    [v11 _setSystemConstraints_];

    v20 = v11;
    v28 = sub_188FADBE8();
    sub_188FAF9E4(v11, a1);
    v21 = [(UIView *)a2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F90);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    v23 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(&v21->super.isa + v23);
    *(&v21->super.isa + v23) = 0x8000000000000000;
    sub_188A40430(v22, &_s24CornerCenterLayoutGuidesC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v21->super.isa + v23) = v27;
    swift_endAccess();

    [a2 _updateConcentricConstraintsIfNecessary];
    v25 = objc_opt_self();
    v26 = sub_18A4A7518();

    [v25 activateConstraints_];
    swift_unknownObjectRelease();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_188FAE3EC()
{
  v1 = sub_188FAE06C(1u, v0, &selRef_topAnchor, &selRef_rightAnchor);
  v2 = *(sub_188FAF9F8() + 3);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 leftAnchor];
  v4 = [v1 bottomAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 3);
    *(v6 + 3) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_188FAE5F0()
{
  v1 = sub_188FAE06C(2u, v0, &selRef_bottomAnchor, &selRef_leftAnchor);
  v2 = *(sub_188FAF9F8() + 4);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 rightAnchor];
  v4 = [v1 topAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 4);
    *(v6 + 4) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_188FAE7F4()
{
  v1 = sub_188FAE06C(3u, v0, &selRef_bottomAnchor, &selRef_rightAnchor);
  v2 = *(sub_188FAF9F8() + 5);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 leftAnchor];
  v4 = [v1 topAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 5);
    *(v6 + 5) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_188FAE9F8()
{
  v1 = sub_188FAE06C(4u, v0, &selRef_topAnchor, &selRef_leadingAnchor);
  v2 = *(sub_188FAF9F8() + 6);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 trailingAnchor];
  v4 = [v1 bottomAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 6);
    *(v6 + 6) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_188FAEBFC()
{
  v1 = sub_188FAE06C(5u, v0, &selRef_topAnchor, &selRef_trailingAnchor);
  v2 = *(sub_188FAF9F8() + 7);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 leadingAnchor];
  v4 = [v1 bottomAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 7);
    *(v6 + 7) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_188FAEE00()
{
  v1 = sub_188FAE06C(6u, v0, &selRef_bottomAnchor, &selRef_leadingAnchor);
  v2 = *(sub_188FAF9F8() + 8);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 trailingAnchor];
  v4 = [v1 topAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

void sub_188FAF004()
{
  v1 = sub_188FAE06C(7u, v0, &selRef_bottomAnchor, &selRef_trailingAnchor);
  v2 = *(sub_188FAF9F8() + 9);
  v2;

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [v1 leadingAnchor];
  v4 = [v1 topAnchor];
  v5 = [objc_opt_self() layoutPointWithXAxisAnchor:v3 yAxisAnchor:v4];

  if (v5)
  {
    v5;
    v6 = sub_188FAF9F8();
    v7 = *(v6 + 9);
    *(v6 + 9) = v5;

    v8 = [(UIView *)v0 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(&v8->super.isa + v10);
    *(&v8->super.isa + v10) = 0x8000000000000000;
    sub_188A40430(v9, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v8->super.isa + v10) = v12;
    swift_endAccess();

LABEL_4:
    return;
  }

  __break(1u);
}

id sub_188FAF1C4(void *a1, void *a2, SEL *a3, SEL *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18A64E3F0;
  v9 = [a1 *a3];
  result = [a2 *a3];
  if (result)
  {
    v11 = result;
    v12 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v12;
    v13 = [a1 *a4];
    result = [a2 *a4];
    if (result)
    {
      v14 = result;
      v15 = [v13 constraintEqualToAnchor_];

      *(v8 + 40) = v15;
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_188FAF300(void *a1, uint64_t a2)
{
  if (byte_1ED4A3680 != 1 || (a2 ^ (a2 - 1)) <= a2 - 1)
  {
    goto LABEL_21;
  }

  if (![(UIView *)v2 _containsView:a1])
  {
    sub_18A4A80E8();

    v6 = [a1 description];
    v7 = sub_18A4A7288();
    v9 = v8;

    MEMORY[0x18CFE22D0](v7, v9);

    MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A6994B0);
    v10 = [v2 description];
    v11 = sub_18A4A7288();
    v13 = v12;

    MEMORY[0x18CFE22D0](v11, v13);

    goto LABEL_17;
  }

  if ((_UIViewMaskingConfigurationSPIEnabled() & 1) == 0)
  {
    [a1 effectiveRadiusForCorner_];
    return [v2 _containerConcentricRadiusForCorner_];
  }

  sub_188C9D3F4();
  sub_188C9D3F4();
  swift_getKeyPath();
  sub_188C9DC00();
  sub_18A4A2C08();

  if (a2 != 1 && a2 != 8 && a2 != 4 && a2 != 2)
  {
LABEL_21:
    while (1)
    {
LABEL_17:
      sub_18A4A8398();
      __break(1u);
    }
  }

  swift_getKeyPath();
  sub_18A4A2C08();
}

double sub_188FAF738@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 58) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_188FAF74C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_188C9DC00();
  sub_18A4A2C08();

  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  v5 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

__n128 sub_188FAF7CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188C9DC00();
  sub_18A4A2C08();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  result = *(v3 + 48);
  v6 = *(v3 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_188FAF84C(_OWORD *a1)
{
  result = sub_18A4A7918();
  if (result)
  {
    v4 = a1[1];
    v1[1] = *a1;
    v1[2] = v4;
    v5 = a1[3];
    v1[3] = a1[2];
    v1[4] = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188C9DC00();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_188FAF948()
{
  v1 = OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_17B53E6B37083F827808D3D6C806BD1021CornerRadiiResolution___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_188FAF9E4(uint64_t a1, unsigned __int8 a2)
{
  v3 = *v2 + 8 * a2;
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

_OWORD *sub_188FAF9F8()
{
  v1 = v0;
  v2 = [(UIView *)v0 _typedStorage];
  v3 = sub_18901F34C();

  if (!v3)
  {
    _s24CornerCenterLayoutPointsCMa();
    v3 = swift_allocObject();
    v3[1] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    v3[4] = 0u;
    v4 = [(UIView *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938F88);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(&v4->super.isa + v6);
    *(&v4->super.isa + v6) = 0x8000000000000000;
    sub_188A40430(v5, &_s24CornerCenterLayoutPointsC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v4->super.isa + v6) = v9;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_188FAFB48(void *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  if ([a1 respondsToSelector_])
  {
    [v6 *a2];
    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

__n128 sub_188FAFCD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  *(v1 + 48) = *(v2 + 32);
  *(v1 + 64) = v5;
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ConcentricCorner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConcentricCorner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_188FAFE7C()
{
  result = qword_1EA938FB8;
  if (!qword_1EA938FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938FB8);
  }

  return result;
}

id (*UIImageReader.Configuration.prefersHighDynamicRange.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) prefersHighDynamicRange];
  return sub_188FAFF84;
}

id sub_188FAFFE0(char a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA939030);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939038);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

id (*UIImageReader.Configuration.preparesImagesForDisplay.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) preparesImagesForDisplay];
  return sub_188FB0130;
}

id UIImageReader.Configuration.preferredThumbnailSize.setter(double a1, double a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA939030);
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939038);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 setPreferredThumbnailSize_];
}

id (*UIImageReader.Configuration.preferredThumbnailSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*(*v1 + 16) preferredThumbnailSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_188FB02C4;
}

id UIImageReader.Configuration.pixelsPerInch.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA939030);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939038);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setPixelsPerInch_];
}

id (*UIImageReader.Configuration.pixelsPerInch.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) pixelsPerInch];
  *a1 = v3;
  return sub_188FB0450;
}

uint64_t UIImageReader.Configuration.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIImageReaderConfiguration) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939038);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

void sub_188FB050C()
{
  v0 = [objc_allocWithZone(UIImageReaderConfiguration) init];
  [v0 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA939030);
  swift_dynamicCast();
  qword_1EA939020 = v3;
  v1 = [(UIImageReaderConfiguration *)v3 _imageOptions];
  v2 = sub_18A4A70A8();

  qword_1EA939028 = v2;
}

void UIImageReader.init(configuration:)(uint64_t a1@<X0>, double **a2@<X8>)
{
  v3 = *(*a1 + 16);

  [v3 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA939030);
  swift_dynamicCast();
  *a2 = v6;
  v4 = [(UIImageReaderConfiguration *)v6 _imageOptions];
  v5 = sub_18A4A70A8();

  a2[1] = v5;
}

uint64_t static UIImageReader.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EA931D98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EA939020;
  v2 = qword_1EA939028;
  *a1 = qword_1EA939020;
  a1[1] = v2;
  v3 = v1;
}

id UIImageReader.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939038);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = v3;

  return v5;
}

double *UIImageReader.image(contentsOf:)()
{
  v1 = *v0;
  v2 = sub_18A4A28C8();
  [(UIImageReaderConfiguration *)v1 _checkIsFileURL:v2];

  v3 = sub_18A4A28C8();
  v4 = sub_18A4A7088();
  v5 = [(UIImageReaderConfiguration *)v1 _imageFromURL:v3 orData:0 imageRequestOptions:v4];

  return v5;
}

double *UIImageReader.image(data:)()
{
  v1 = *v0;
  v2 = sub_18A4A2918();
  v3 = sub_18A4A7088();
  v4 = [(UIImageReaderConfiguration *)v1 _imageFromURL:v2 orData:v3 imageRequestOptions:?];

  return v4;
}

uint64_t UIImageReader.image(contentsOf:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_188FB091C, 0, 0);
}

uint64_t sub_188FB091C()
{
  v1 = *(v0 + 24);
  v7 = *(v0 + 32);
  v2 = sub_18A4A28C8();
  [(UIImageReaderConfiguration *)v7 _checkIsFileURL:v2];

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_188A34624(0, &unk_1EA93A1A0);
  *v4 = v0;
  v4[1] = sub_188FB0A54;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000018A6994F0, sub_188FB0D80, v3, v5);
}

uint64_t sub_188FB0A54()
{

  return MEMORY[0x1EEE6DFA0](sub_188FB0B6C, 0, 0);
}

void sub_188FB0B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939040);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = sub_18A4A28C8();
  v9 = sub_18A4A7088();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_188FB1248;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BFF280;
  aBlock[3] = &block_descriptor_16_2;
  v12 = _Block_copy(aBlock);

  [(UIImageReaderConfiguration *)a2 _asyncImageFromURL:v8 orData:0 imageRequestOptions:v9 completion:v12];
  _Block_release(v12);
}

uint64_t UIImageReader.image(data:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_188FB0DB4, 0, 0);
}

uint64_t sub_188FB0DB4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_188A34624(0, &unk_1EA93A1A0);
  *v4 = v0;
  v4[1] = sub_188FB0ECC;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x6164286567616D69, 0xEC000000293A6174, sub_188FB11EC, v3, v5);
}

uint64_t sub_188FB0ECC()
{

  return MEMORY[0x1EEE6DFA0](sub_188FB12BC, 0, 0);
}

void sub_188FB0FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939040);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = sub_18A4A2918();
  v9 = sub_18A4A7088();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_188FB12C0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BFF280;
  aBlock[3] = &block_descriptor_56;
  v12 = _Block_copy(aBlock);

  [(UIImageReaderConfiguration *)a2 _asyncImageFromURL:v8 orData:v9 imageRequestOptions:v12 completion:?];
  _Block_release(v12);
}

uint64_t sub_188FB11F8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939040);
  return sub_18A4A7688();
}

_UITabBarVisualProviderFactory __swiftcall _UITabBarVisualProviderFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UITabBarVisualProviderFactory()
{
  result = qword_1EA939048;
  if (!qword_1EA939048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA939048);
  }

  return result;
}

uint64_t sub_188FB13B8()
{
  sub_18A4A44D8();
  sub_1891156F0();

  return sub_18A4A44F8();
}

id sub_188FB141C(uint64_t a1)
{
  v2 = objc_opt_self();

  v3 = sub_18A4A7258();

  v4 = sub_18A4A7258();

  v5 = [v2 _defineCGFloatTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

double _UISoftOutlineConfiguration.totalThickness.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[5];
  v4 = v0[4] * 2.8;
  if (!*(v0 + 56))
  {
    if (!*v0)
    {
      return v4 + v3 + v2;
    }

    if (v1 != 2)
    {
LABEL_10:
      v2 = 0.0;
      return v4 + v3 + v2;
    }

LABEL_8:
    v2 = v2 * 0.5;
    return v4 + v3 + v2;
  }

  if (*(v0 + 56) != 1)
  {
    return v2 + v4 + v3 + v4 + v3;
  }

  if (v1 == 2)
  {
    goto LABEL_8;
  }

  if (v1 != 1)
  {
    goto LABEL_10;
  }

  return v4 + v3 + v2;
}

uint64_t sub_188FB1578@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 41);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_188DF0BF8(v9, v8);
}

uint64_t sub_188FB15F0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration);
  swift_beginAccess();
  v4 = v3[1];
  v8[0] = *v3;
  v8[1] = v4;
  v9[0] = v3[2];
  *(v9 + 9) = *(v3 + 41);
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = a1[2];
  *(v3 + 41) = *(a1 + 41);
  v6 = sub_188F52F24(v8);
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v6);
}

uint64_t (*sub_188FB16AC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188FB1710;
}

uint64_t sub_188FB1710(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x80))(result);
  }

  return result;
}

id static _UISoftOutlineConfiguration.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  result = [v2 whiteColor];
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 2;
  return result;
}

__n128 static _UISoftOutlineConfiguration.fresnel.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  a1->n128_u8[0] = 0;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = v6;
  __asm { FMOV            V0.2D, #2.0 }

  a1[2] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u8[8] = 0;
  return result;
}

_BYTE *_UISoftOutlineConfiguration.init(alignment:hardBorderColor:hardBorderThickness:softEdgeColor:softEdgeRadius:softEdgePadding:allowedRelativeEDRHeadroom:visibleRegion:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v9 = *a4;
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a7;
  *(a5 + 40) = a8;
  *(a5 + 48) = a9;
  *(a5 + 56) = v9;
  return result;
}

uint64_t _UISoftOutlineConfiguration.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0 + 56);
  MEMORY[0x18CFE37E0](*v0);
  sub_18A4A7C98();
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  MEMORY[0x18CFE3810](*&v6);
  sub_18A4A7C98();
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x18CFE3810](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x18CFE3810](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x18CFE3810](*&v9);
  return MEMORY[0x18CFE37E0](v5);
}

uint64_t _UISoftOutlineConfiguration.hashValue.getter()
{
  sub_18A4A8888();
  _UISoftOutlineConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_188FB1C5C()
{
  sub_18A4A8888();
  _UISoftOutlineConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_188FB1CA0()
{
  sub_18A4A8888();
  _UISoftOutlineConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

double _UISoftOutlineConfiguration.requiredPadding.getter()
{
  if (!*(v0 + 56))
  {
    return 0.0;
  }

  v1 = v0[2];
  if (*(v0 + 56) == 1)
  {
    v2 = *v0;
    v3 = v1 * 0.5;
    if (v2 != 1)
    {
      v1 = 0.0;
    }

    if (v2 == 2)
    {
      v1 = v3;
    }
  }

  return v0[4] * 2.8 + v0[5] + v1;
}

uint64_t sub_188FB1D6C@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *&v11[9] = *(v3 + 41);
  v10[1] = v5;
  *v11 = v6;
  v10[0] = v4;
  v7 = v3[1];
  *a2 = *v3;
  a2[1] = v7;
  a2[2] = v3[2];
  *(a2 + 41) = *(v3 + 41);
  return sub_188DF0BF8(v10, v9);
}

uint64_t sub_188FB1DF4(__int128 *a1, void **a2)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  v3 = *a2;
  v4 = (*a2 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *(v18 + 9) = *(v4 + 41);
  v17[1] = v6;
  v18[0] = v7;
  v17[0] = v5;
  v8 = v14;
  v9 = v15;
  v10 = v16[0];
  *(v4 + 41) = *(v16 + 9);
  v4[1] = v9;
  v4[2] = v10;
  *v4 = v8;
  sub_188DF0BF8(&v14, v13);
  v11 = sub_188F52F24(v17);
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v11);
}

id _UISoftOutlineView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id _UISoftOutlineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UISoftOutlineView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s5UIKit27_UISoftOutlineConfigurationV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = *(a1 + 56);
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v9 = *(a2 + 56);
  v10 = a2[2];
  v11 = a1[2];
  sub_188FA8F58();
  v12 = sub_18A4A7C88();
  result = 0;
  if ((v12 & 1) != 0 && v11 == v10)
  {
    v14 = sub_18A4A7C88() & (v3 == v7);
    if (v2 != v6)
    {
      v14 = 0;
    }

    if (v4 != v8)
    {
      v14 = 0;
    }

    if (v5 == v9)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_188FB220C()
{
  result = qword_1EA939068;
  if (!qword_1EA939068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939068);
  }

  return result;
}

unint64_t sub_188FB2264()
{
  result = qword_1EA939070;
  if (!qword_1EA939070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939070);
  }

  return result;
}

unint64_t sub_188FB22BC()
{
  result = qword_1EA939078;
  if (!qword_1EA939078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939078);
  }

  return result;
}

uint64_t sub_188FB2310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_188FB2358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FB24B4@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939090);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t UIScene.DestructionCondition.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_18A4A7288();

  return v2;
}

uint64_t UIScene.DestructionCondition.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

unint64_t sub_188FB2620()
{
  result = qword_1EA939098;
  if (!qword_1EA939098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939098);
  }

  return result;
}

unint64_t _UICloudChamber.Configuration.init(colors:cellCount:lifetime:lifetimeVariation:relativeSize:sizeVariation:growthRate:renderMode:spriteRadius:seed:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, double a8@<X7>, uint64_t a9@<X8>, char a10, double a11, char a12, double a13, char a14, unsigned __int8 *a15, double a16, char a17, uint64_t a18)
{
  v21 = result;
  v23 = *a15;
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (result >> 62)
  {
    v37 = a5;
    v38 = a4;
    result = sub_18A4A7F68();
    a4 = v38;
    a5 = v37;
  }

  else
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((result + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  a2 = 2 * result;
LABEL_7:
  v24 = a18;
  v25 = a17;
  v26 = a16;
  v27 = a11;
  if ((a18 & 0x100000000) != 0)
  {
    v42 = 0;
    v41 = a2;
    v39 = v21;
    v40 = a6;
    v28 = a5;
    v29 = a4;
    result = MEMORY[0x18CFEA5D0](&v42, 8);
    v25 = a17;
    v27 = a11;
    v26 = a16;
    a2 = v41;
    a4 = v29;
    a6 = v40;
    a5 = v28;
    v21 = v39;
    v24 = v42;
  }

  if (v23 == 7)
  {
    v30 = 0;
  }

  else
  {
    v30 = v23;
  }

  v31 = v26;
  if (v25)
  {
    v31 = 5.0;
  }

  v33 = 0.0;
  if (a14)
  {
    a13 = 0.0;
  }

  v34 = v27;
  if (a12)
  {
    v34 = 0.0;
  }

  v35 = a8;
  if (a10)
  {
    v35 = 0.7;
  }

  if ((a7 & 1) == 0)
  {
    v33 = a6;
  }

  v36 = a4;
  *a9 = v21;
  *(a9 + 8) = a2;
  if (a5)
  {
    v36 = 10.0;
  }

  *(a9 + 16) = v36;
  *(a9 + 24) = v33;
  *(a9 + 32) = v35;
  *(a9 + 40) = v34;
  *(a9 + 48) = a13;
  *(a9 + 56) = v30;
  *(a9 + 64) = v31;
  *(a9 + 72) = v24;
  return result;
}

uint64_t _UICloudChamber.Configuration.colors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _UICloudChamber.Configuration.RenderMode.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_188FB2B80@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration);
  swift_beginAccess();
  v11[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *(v12 + 12) = *(v3 + 60);
  v11[2] = v5;
  v12[0] = v6;
  v11[1] = v4;
  v7 = v3[3];
  a2[2] = v3[2];
  a2[3] = v7;
  *(a2 + 60) = *(v3 + 60);
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  return sub_188FB3FFC(v11, v10);
}

void sub_188FB2C1C(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v14 = a1[2];
  v15[0] = v2;
  *(v15 + 12) = *(a1 + 60);
  v3 = a1[1];
  v12 = *a1;
  v13 = v3;
  v4 = (*a2 + OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration);
  swift_beginAccess();
  v16[0] = *v4;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  *(v17 + 12) = *(v4 + 60);
  v16[2] = v6;
  v17[0] = v7;
  v16[1] = v5;
  v8 = v14;
  v9 = v15[0];
  v10 = v13;
  *(v4 + 60) = *(v15 + 12);
  v4[2] = v8;
  v4[3] = v9;
  v4[1] = v10;
  *v4 = v12;
  sub_188FB3FFC(&v12, v11);
  sub_188FB4034(v16);
  sub_188FB3530();
}

uint64_t sub_188FB2CE0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC5UIKit15_UICloudChamber_configuration);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12[0] = v4;
  *(v12 + 12) = *(v3 + 60);
  v5 = *(v12 + 12);
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  *(a1 + 60) = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_188FB3FFC(v10, v9);
}