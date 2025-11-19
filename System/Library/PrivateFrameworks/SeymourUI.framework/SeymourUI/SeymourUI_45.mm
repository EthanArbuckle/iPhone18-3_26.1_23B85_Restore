void *sub_20BA10774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A40);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
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

void *sub_20BA10914()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7695C0);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        swift_unknownObjectRetain();
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

void *sub_20BA10AA0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_20C13DE64();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    v18 = v8;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v22 = v19 | (v12 << 6);
        v23 = v36;
        v24 = *(v36 + 72) * v22;
        v26 = v33;
        v25 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v24, v34);
        v27 = *(*(v6 + 56) + v22);
        result = (*(v23 + 32))(*(v18 + 48) + v24, v26, v25);
        *(*(v18 + 56) + v22) = v27;
        v16 = v37;
      }

      while (v37);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v21 = *(v30 + v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v37 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_20BA10D14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769260);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;

        result = sub_20B8E083C(v22, v24);
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

id sub_20BA10EA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7692F8);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

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

void *sub_20BA11070()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B980);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + v17) = v18;
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

void *sub_20BA111E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769350);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_20BA11358(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_20C13DE64();
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

void *sub_20BA114E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769238);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v19;
        v23[1] = v20;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
        v25 = v22;
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

void *sub_20BA11674(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_20C13DE64();
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

void *sub_20BA117C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A88);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
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

void *sub_20BA11978()
{
  v1 = v0;
  v2 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7692B0);
  v5 = *v0;
  v6 = sub_20C13DE64();
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
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_20BA15784(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + v20) = v21;
        result = sub_20BA1587C(v4, *(v7 + 56) + v22, type metadata accessor for SessionEventPresentationCoordinator.QueueItem);
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

void *sub_20BA11B98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A38);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_20BA11D78(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_20C13DE64();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
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

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_20BA11FF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769290);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v17 *= 56;
        v20 = *(v2 + 56) + v17;
        v22 = *(v20 + 16);
        v21 = *(v20 + 32);
        v23 = *v20;
        v33 = *(v20 + 48);
        v31 = v22;
        v32 = v21;
        v30 = v23;
        *(*(v4 + 48) + v18) = v19;
        v24 = *(v4 + 56) + v17;
        v25 = v30;
        v26 = v31;
        v27 = v32;
        *(v24 + 48) = v33;
        *(v24 + 16) = v26;
        *(v24 + 32) = v27;
        *v24 = v25;
        v28 = v19;
        result = sub_20B7B2490(&v30, v29);
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

void *sub_20BA121F0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v41 = a1(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_20C13DE64();
  v8 = v7;
  if (*(v6 + 16))
  {
    v36 = v4;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v14;
    v15 = 1 << *(v6 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v6 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v6;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v6 + 56);
        v25 = (*(v6 + 48) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v43;
        v29 = *(v43 + 72) * v22;
        v30 = v40;
        v31 = v41;
        (*(v43 + 16))(v40, v24 + v29, v41);
        v32 = v42;
        v33 = (*(v42 + 48) + v23);
        *v33 = v26;
        v33[1] = v27;
        v34 = *(v32 + 56) + v29;
        v6 = v39;
        (*(v28 + 32))(v34, v30, v31);

        v17 = v44;
      }

      while (v44);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v36;
        v8 = v42;
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_20BA124A0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_20C13DE64();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
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

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

id sub_20BA1271C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7692C0);
  v2 = *v0;
  v3 = sub_20C13DE64();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
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

void *sub_20BA12888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764680);
  MEMORY[0x28223BE20](v30);
  v31 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_20C136C64();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v29 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RemoteBrowsingSourceCoordinator.State();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13BB84();
  MEMORY[0x28223BE20](v20 - 8);
  v32 = sub_20C13ACC4();
  v36[3] = v32;
  v36[4] = MEMORY[0x277D4F328];
  v36[0] = a1;
  a5[2] = a3;
  a5[3] = a4;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v33 = a4;
  a5[4] = sub_20C13A914();
  v34 = a2;
  v21 = a2;
  v22 = v15;
  sub_20B51CC64(v21, (a5 + 5));
  sub_20B51CC64(v36, (a5 + 10));
  sub_20C13B534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769570);
  swift_allocObject();
  a5[15] = sub_20C13A414();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A510);
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769580);
  v24 = swift_allocObject();
  *(v24 + ((*(*v24 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_20BA1587C(v19, v24 + *(*v24 + *MEMORY[0x277D841D0] + 16), type metadata accessor for RemoteBrowsingSourceCoordinator.State);
  a5[16] = v24;
  sub_20C13B174();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &qword_27C768690);

    sub_20C13A404();
  }

  else
  {
    v25 = *(v15 + 32);
    v26 = v29;
    v25(v29, v13, v14);
    v27 = v31;
    (*(v22 + 16))(v31, v26, v14);
    swift_storeEnumTagMultiPayload();
    sub_20C13A424();
    sub_20B520158(v27, &qword_27C764680);
    (*(v22 + 8))(v26, v14);
  }

  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v35);
  swift_allocObject();
  swift_weakInit();
  sub_20BA158F4();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v35);

  swift_allocObject();
  swift_weakInit();
  sub_20B86FB30();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v35);

  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);

  __swift_destroy_boxed_opaque_existential_1(v36);
  return a5;
}

uint64_t sub_20BA12FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v116 = &v98 - v5;
  v6 = sub_20C13A2E4();
  v146 = *(v6 - 8);
  v147 = v6;
  MEMORY[0x28223BE20](v6);
  v114 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v153 = &v98 - v9;
  v10 = sub_20C13AF94();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v151 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BA84();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v150 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v148 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v98 - v14;
  v15 = sub_20C138F64();
  v222[3] = v15;
  v222[4] = MEMORY[0x277D541E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v222);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a1, v15);
  sub_20C133AC4();
  v17 = MEMORY[0x20F2EB1F0](a2);
  sub_20C133AA4();
  LODWORD(v117) = v221[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v18 = v217[0];
  v19 = v217[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DF0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E10);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20C138F44();
  swift_unknownObjectRetain();
  v145 = sub_20C138F34();
  swift_unknownObjectRetain();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E20);
  v152 = v17;
  sub_20C133AA4();
  sub_20C13ACE4();
  swift_allocObject();
  v144 = sub_20C13ACD4();
  v20 = sub_20C13B8E4();
  v21 = objc_opt_self();
  swift_unknownObjectRetain();
  v22 = [v21 ams_sharedAccountStore];
  v23 = sub_20B51C88C(0, &qword_281100580);
  v211 = MEMORY[0x277D4FB68];
  v210 = v23;
  *&v209 = v22;
  v24 = sub_20C13B8D4();
  sub_20C13B8C4();
  sub_20C13A504();
  swift_allocObject();
  v25 = sub_20C13A4F4();
  v143 = v25;
  type metadata accessor for AvatarSettingsCoordinator();
  v26 = swift_allocObject();
  swift_unknownObjectRetain();

  v27 = v25;
  v28 = v19;
  v142 = sub_20B51C8F8(v24, v27, v18, v19, v26);
  v29 = objc_allocWithZone(SMUSystemDisplayMonitor);
  swift_unknownObjectRetain();
  v30 = [v29 init];
  v210 = &type metadata for SystemDisplayLayoutMonitorProvider;
  v211 = &off_2822E8A68;
  type metadata accessor for AppOcclusionMonitor();
  v31 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v209, &type metadata for SystemDisplayLayoutMonitorProvider);
  v141 = sub_20B51CE40(v18, v28, v30, v31);
  __swift_destroy_boxed_opaque_existential_1(&v209);
  type metadata accessor for AppStateMonitor();
  swift_allocObject();
  v32 = swift_unknownObjectRetain();
  v140 = sub_20B51E890(v32, v28);
  swift_unknownObjectRelease();
  sub_20C13A2F4();
  sub_20C13A304();
  v33 = sub_20C13C914();

  v34 = sub_20C13C914();

  v35 = [objc_opt_self() bagForProfile:v33 profileVersion:v34];

  v119 = sub_20C1394E4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v149 = sub_20C1394D4();
  sub_20B51CC64(v217, &v209);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51CC64(v212, v207);
  sub_20C138784();
  swift_allocObject();
  v99 = v28;
  v139 = sub_20C138774();
  type metadata accessor for MetricNavigationTracker(0);
  swift_allocObject();
  v36 = swift_unknownObjectRetain();
  v138 = sub_20B51F310(v36, v28);
  swift_unknownObjectRelease();
  v211 = MEMORY[0x277D4FAB0];
  v210 = v20;
  v136 = v24;
  *&v209 = v24;
  sub_20B51CC64(v213, v208);
  sub_20B51C88C(0, &qword_281100530);

  v132 = v35;
  sub_20C13D374();
  sub_20C138E34();
  sub_20C138E24();
  sub_20C138E14();
  v115 = sub_20C138D84();
  swift_allocObject();
  v123 = sub_20C138D74();
  sub_20B51CC64(v219, &v209);
  v112 = type metadata accessor for ContentRatingCache();
  swift_allocObject();
  swift_unknownObjectRetain();
  v37 = v99;
  v127 = sub_20B51EC00(&v209, v18, v99);
  v38 = v135;
  sub_20B522414(v135);
  v39 = v137;
  v40 = sub_20C137CB4();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v40(sub_20B52347C, v41);

  (*(v148 + 8))(v38, v39);
  v42 = sub_20C138984();
  swift_allocObject();
  v43 = sub_20C138974();
  v211 = MEMORY[0x277D540E8];
  v210 = v42;
  *&v209 = v43;
  v104 = v43;
  sub_20B51CC64(v221, v208);
  sub_20C138A44();
  swift_allocObject();

  v137 = sub_20C138A34();
  sub_20C138C94();
  swift_allocObject();

  v135 = sub_20C138C84();
  v44 = sub_20C1390F4();
  sub_20B51CC64(v213, &v209);
  swift_unknownObjectRetain();
  v45 = sub_20C1390E4();
  type metadata accessor for LocaleAnalyzer();
  v134 = swift_allocObject();
  *(v134 + 16) = 0;
  v46 = MEMORY[0x277D54290];
  v211 = MEMORY[0x277D54290];
  v210 = v44;
  *&v209 = v45;
  v133 = v45;
  v113 = type metadata accessor for MarketingSubscriptionStatusProvider();
  v47 = swift_allocObject();
  sub_20B51C710(&v209, v47 + 16);
  sub_20B51CC64(v217, &v209);
  sub_20B51CC64(v215, v208);
  v207[4] = v46;
  v207[3] = v44;
  v207[0] = v45;
  sub_20C139494();
  swift_allocObject();
  swift_retain_n();
  swift_unknownObjectRetain();
  v48 = sub_20C139484();
  v49 = v132;
  sub_20C13BA74();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = [objc_opt_self() bundleForClass_];
  v52 = sub_20C13A6C4();
  swift_allocObject();
  v53 = sub_20C13A6B4();
  v211 = MEMORY[0x277D4E258];
  v210 = v52;
  *&v209 = v53;
  v54 = sub_20C138BF4();
  swift_allocObject();
  v55 = sub_20C138BD4();
  sub_20C138BE4();
  v211 = MEMORY[0x277D54168];
  v210 = v54;
  *&v209 = v55;
  v118 = v55;
  sub_20B51CC64(v222, v208);
  sub_20C138504();
  swift_allocObject();

  v132 = sub_20C1384F4();
  sub_20B51CC64(v222, &v209);
  sub_20C1391B4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v56 = v37;
  v129 = sub_20C1391A4();
  sub_20C13AF84();
  sub_20C139014();
  swift_allocObject();
  swift_unknownObjectRetain();
  v128 = sub_20C139004();
  sub_20B51CC64(v216, &v209);
  sub_20B51CC64(v214, v208);
  sub_20C1394B4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v131 = sub_20C1394A4();
  swift_unknownObjectRetain();
  v57 = v49;
  v125 = v48;

  v148 = v47;

  v58 = sub_20B51EF48(v57, v18, v37, v48, v47);
  v103 = v58;
  swift_unknownObjectRelease();
  sub_20B51CC64(v218, &v209);
  v59 = objc_allocWithZone(type metadata accessor for EngagementPresentationCoordinator());
  swift_unknownObjectRetain();

  v130 = sub_20B51FBBC(&v209, v18, v37, v58, v59);
  swift_unknownObjectRelease();
  EngagementPresentationCoordinator.activate()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51CC64(&v209, v208);
  sub_20B51CC64(v212, v207);
  v60 = sub_20C138C14();
  swift_allocObject();
  v61 = sub_20C138C04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E30);
  sub_20C133AA4();
  sub_20B51CC64(v208, &v204);
  v62 = MEMORY[0x277D543F0];
  v203 = MEMORY[0x277D543F0];
  v63 = v119;
  v202 = v119;
  v64 = v149;
  *&v201 = v149;
  v200 = MEMORY[0x277D54170];
  v199 = v60;
  v102 = v61;
  v198[0] = v61;
  sub_20C138E04();
  swift_allocObject();
  swift_unknownObjectRetain();

  v126 = sub_20C138DF4();
  sub_20B51CC64(v212, &v204);
  type metadata accessor for ActiveWorkoutPlanProvider();
  v65 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v65[22] = 0;
  v65[23] = 0;
  v65[14] = v18;
  v65[15] = v56;
  v66 = v65;
  sub_20B51CC64(&v204, (v65 + 17));
  v110 = sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v67 = sub_20C13A914();
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v124 = v66;
  v66[16] = v67;
  sub_20B523510();
  v68 = sub_20C13AFF4();
  swift_allocObject();
  v69 = sub_20C13AFE4();
  v206 = MEMORY[0x277D4F4B8];
  v205 = v68;
  *&v204 = v69;
  v101 = v69;
  sub_20B51CC64(v207, &v201);
  v200 = v62;
  v199 = v63;
  v198[0] = v64;
  swift_unknownObjectRetain();

  sub_20C1380F4();
  sub_20C1395F4();
  swift_allocObject();
  v121 = sub_20C1395E4();
  sub_20C13AAB4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v70 = v56;
  v122 = sub_20C13AAA4();
  sub_20C13AA94();
  sub_20C13A2D4();
  v71 = objc_allocWithZone(type metadata accessor for MarketingPlacementProvider());
  swift_unknownObjectRetain();
  v120 = v57;
  LODWORD(v63) = v117;
  v72 = sub_20B52438C(v120, v18, v56, v117, v71);
  swift_unknownObjectRelease();
  v73 = sub_20C13CDF4();
  v74 = v116;
  (*(*(v73 - 8) + 56))(v116, 1, 1, v73);
  v75 = swift_allocObject();
  v75[2] = 0;
  v75[3] = 0;
  v75[4] = v72;
  v100 = v72;
  sub_20B6383D0(0, 0, v74, &unk_20C1551D0, v75);

  sub_20B51CC64(v220, &v204);
  v203 = MEMORY[0x277D54188];
  v202 = v115;
  *&v201 = v123;
  v200 = &off_2822DF468;
  v76 = v113;
  v199 = v113;
  v198[0] = v148;
  type metadata accessor for CatalogTipUpsellCoordinator();
  v77 = swift_allocObject();
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v198, v76);
  v79 = MEMORY[0x28223BE20](v78);
  v81 = (&v98 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v82 + 16))(v81, v79);
  v83 = *v81;
  v197[4] = &off_2822DF468;
  v197[3] = v76;
  v197[0] = v83;
  *(v77 + 168) = 0x5472656E69617274;
  *(v77 + 176) = 0xEF6F656469567069;
  *(v77 + 16) = v18;
  *(v77 + 24) = v56;
  sub_20B51CC64(&v204, v77 + 32);
  sub_20B51CC64(&v201, v77 + 72);
  sub_20B51CC64(v197, v77 + 112);
  *(v77 + 152) = v63;
  swift_allocObject();
  swift_unknownObjectRetain_n();

  v84 = sub_20C13A914();
  __swift_destroy_boxed_opaque_existential_1(&v204);
  __swift_destroy_boxed_opaque_existential_1(&v201);
  __swift_destroy_boxed_opaque_existential_1(v197);
  *(v77 + 160) = v84;
  __swift_destroy_boxed_opaque_existential_1(v198);
  swift_getObjectType();
  v116 = v77;
  swift_allocObject();
  swift_weakInit();
  sub_20B52466C();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v204);
  type metadata accessor for FilterPropertyStringBuilder();
  swift_allocObject();

  v115 = sub_20B524B24();

  sub_20B524CB4();
  type metadata accessor for WorkoutPlanStringBuilder();
  v85 = swift_allocObject();
  v86 = v114;
  (*(v146 + 16))(v114, v153, v147);
  swift_unknownObjectRetain();
  v87 = v118;

  v113 = sub_20B5253C0(v18, v70, v63, v86, v87, v85);
  sub_20B51CC64(&v209, &v204);
  v203 = &off_2822F98B8;
  v202 = v112;
  *&v201 = v127;
  type metadata accessor for ContentAvailabilityFilter();
  v88 = swift_allocObject();
  v114 = v88;
  sub_20B51C710(&v204, v88 + 16);
  sub_20B51C710(&v201, v88 + 56);
  type metadata accessor for MetricMarketingPurchaseTracker();
  swift_allocObject();
  swift_unknownObjectRetain();

  v112 = sub_20B5265AC(v18, v70);
  swift_unknownObjectRelease();
  sub_20C13BAC4();
  sub_20B51CC64(&v209, &v204);
  sub_20B51CC64(v219, &v201);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40);
  sub_20C133AA4();
  v111 = sub_20C13BAB4();
  sub_20B51CC64(v208, &v204);
  v203 = MEMORY[0x277D543F0];
  v202 = v119;
  *&v201 = v149;
  sub_20C139614();
  swift_allocObject();
  swift_unknownObjectRetain();

  v119 = sub_20C139604();
  swift_unknownObjectRetain();
  sub_20C133AA4();
  sub_20B51CC64(v213, &v201);
  type metadata accessor for WorkoutAnalyticsReporter();
  v89 = swift_allocObject();
  swift_defaultActor_initialize();
  v90 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_lock;
  v91 = *MEMORY[0x277D0A920];
  v92 = sub_20C13B7C4();
  (*(*(v92 - 8) + 104))(v89 + v90, v91, v92);
  v93 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_state;
  v94 = *MEMORY[0x277D4F258];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A0);
  (*(*(v95 - 8) + 104))(v89 + v93, v94, v95);
  *(v89 + 112) = v18;
  *(v89 + 120) = v70;
  *(v89 + 128) = v63;
  sub_20B51CC64(&v204, v89 + 136);
  sub_20B51CC64(&v201, v89 + 176);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v89 + 216) = sub_20C13A914();
  swift_getObjectType();
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v198);
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v198);
  sub_20C13A5E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A774();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v198);
  __swift_destroy_boxed_opaque_existential_1(&v201);
  __swift_destroy_boxed_opaque_existential_1(&v204);
  v191 = v222;
  v190 = v111;
  v154 = v136;
  v155 = v124;
  v156 = v120;
  v157 = v144;
  v158 = v141;
  v159 = v140;
  v160 = v126;
  v161 = v137;
  v162 = v145;
  v163 = v142;
  v164 = v116;
  v165 = v143;
  v166 = v114;
  v167 = v127;
  v168 = v130;
  v169 = v115;
  v170 = v122;
  v171 = v134;
  v172 = v123;
  v173 = v125;
  v96 = v100;
  v174 = v100;
  v175 = v112;
  v176 = v153;
  v177 = v148;
  v178 = v132;
  v179 = v138;
  v180 = v139;
  v181 = v131;
  v182 = v150;
  v183 = v151;
  v184 = v135;
  v185 = v133;
  v186 = v128;
  v187 = v121;
  v188 = v149;
  v189 = v118;
  v192 = v129;
  v193 = v89;
  v194 = v102;
  v195 = v113;
  v196 = v119;
  v117 = sub_20C133A94();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v207);
  __swift_destroy_boxed_opaque_existential_1(v208);
  __swift_destroy_boxed_opaque_existential_1(&v209);
  __swift_destroy_boxed_opaque_existential_1(v212);
  __swift_destroy_boxed_opaque_existential_1(v213);
  __swift_destroy_boxed_opaque_existential_1(v214);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(v216);
  __swift_destroy_boxed_opaque_existential_1(v217);
  __swift_destroy_boxed_opaque_existential_1(v218);
  __swift_destroy_boxed_opaque_existential_1(v219);
  __swift_destroy_boxed_opaque_existential_1(v220);
  __swift_destroy_boxed_opaque_existential_1(v221);
  (*(v146 + 8))(v153, v147);
  (*(v108 + 8))(v151, v109);
  (*(v106 + 8))(v150, v107);
  __swift_destroy_boxed_opaque_existential_1(v222);
  return v117;
}

void *sub_20BA14CE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_20C13A814();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13AD04();
  v18[3] = v12;
  v18[4] = MEMORY[0x277D4F358];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a3, v12);
  (*(v9 + 104))(v11, *MEMORY[0x277D4EEE8], v8);
  sub_20C13CEB4();
  v17[0] = v14;
  sub_20C13A384();
  a4[2] = a1;
  a4[3] = a2;
  type metadata accessor for AttentionAwarenessMonitor();
  swift_allocObject();
  v15 = swift_unknownObjectRetain_n();
  a4[4] = sub_20BFD4964(v15, a2);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  a4[5] = sub_20C13A914();
  sub_20B51CC64(v18, (a4 + 6));
  type metadata accessor for RemoteBrowsingIdleMonitor.State(0);
  swift_storeEnumTagMultiPayload();
  swift_getObjectType();
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  sub_20C13A974();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  sub_20C13A6F4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_allocObject();
  swift_weakInit();
  sub_20B86FADC();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_allocObject();
  swift_weakInit();

  sub_20B86FB30();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);

  return a4;
}

void *sub_20BA15278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = sub_20C13ACC4();
  v15[4] = MEMORY[0x277D4F320];
  v15[0] = a4;
  swift_defaultActor_initialize();
  a5[26] = 0;
  sub_20B51CC64(a1, (a5 + 14));
  a5[19] = a2;
  a5[20] = a3;
  sub_20B51CC64(v15, (a5 + 21));
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  v11 = [v10 sharedInstance];
  v12 = [v11 selectedUserProfile];

  a5[26] = v12;
  swift_unknownObjectRelease();
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:a5 selector:sel_handleSelectedUserProfileChanged_ name:*MEMORY[0x277D4FB78] object:0];

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

uint64_t sub_20BA153C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v13[3] = sub_20C13ACC4();
  v13[4] = MEMORY[0x277D4F318];
  v13[0] = a4;
  v12[3] = v8;
  v12[4] = sub_20B51CCC8(&qword_27C7691F0, type metadata accessor for RemoteBrowsingWorkoutPlanClient);
  v12[0] = a5;
  type metadata accessor for RemoteBrowsingCompletedWorkoutObserver();
  v9 = swift_allocObject();
  sub_20B51CC64(a1, v9 + 16);
  sub_20B51CC64(v13, v9 + 56);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v9 + 96) = sub_20C13A914();
  sub_20B51CC64(v12, v9 + 104);
  swift_getObjectType();
  type metadata accessor for RemoteBrowsingWorkoutCompleted();
  swift_allocObject();
  swift_weakInit();
  sub_20B51CCC8(&qword_27C769568, type metadata accessor for RemoteBrowsingWorkoutCompleted);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_20BA155D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = sub_20C13ACC4();
  v10[4] = MEMORY[0x277D4F318];
  v10[0] = a4;
  sub_20B51CC64(a1, a5 + 16);
  sub_20B51CC64(v10, a5 + 56);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + 96) = sub_20C13A914();
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BA157F0();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(&v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return a5;
}

uint64_t sub_20BA15784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BA157F0()
{
  result = qword_27C769560;
  if (!qword_27C769560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769560);
  }

  return result;
}

uint64_t sub_20BA1587C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20BA158F4()
{
  result = qword_27C769588;
  if (!qword_27C769588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769588);
  }

  return result;
}

uint64_t sub_20BA15960(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B7E6E5C(a1, v1);
}

uint64_t sub_20BA15A3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = sub_20C132E94();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_20C132EE4();
  MEMORY[0x28223BE20](v5 - 8);
  v18 = sub_20C136894();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = v17;
  sub_20C135384();
  sub_20C132E84();
  sub_20C136874();
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanClient), *(v13 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanClient + 24));
  sub_20C1398C4();
  v14 = sub_20C137CB4();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v14(sub_20B52347C, v15);

  (*(v1 + 8))(v3, v0);
  return (*(v6 + 8))(v8, v18);
}

void sub_20BA15DCC()
{
  v2 = v1;
  v3 = sub_20C132E94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanStringBuilder);
  sub_20C1353B4();
  if (v8 == 1.0)
  {
    v25 = v6;
    __swift_project_boxed_opaque_existential_1((v7 + 48), *(v7 + 72));
    v2 = v1;
    v6 = v25;
  }

  else
  {
    sub_20C1353B4();
    __swift_project_boxed_opaque_existential_1((v7 + 48), *(v7 + 72));
  }

  v24 = sub_20B5E107C();
  sub_20C1353D4();
  v9 = objc_opt_self();
  v10 = sub_20C132DE4();
  v11 = [v9 localizedStringFromDate:v10 dateStyle:3 timeStyle:0];

  if (!v11)
  {
    sub_20C13C954();
    v11 = sub_20C13C914();
  }

  (*(v4 + 8))(v6, v3);
  v12 = sub_20BA183E8();
  if (v2)
  {

    return;
  }

  v25 = v12;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = sub_20C100D54();
    v14 = sub_20C13C914();

    [v13 setText_];
    swift_unknownObjectRelease();
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC9SeymourUI35WorkoutPlanCompletionViewController_descriptionLabel) setText_];
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20C10519C(v25);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_20C1353B4();
  if (v16 != 1.0)
  {
    sub_20C1353B4();
    if (v19 == 0.0)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      sub_20C105068();
      goto LABEL_27;
    }
  }

  sub_20C1353B4();
  if (v17 == 1.0)
  {
    v18 = 0;
  }

  else
  {
    sub_20C1353B4();
    if (v20 == 0.0)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  v21 = type metadata accessor for WorkoutPlanCompletionMedalView();
  v22 = objc_allocWithZone(v21);
  v22[OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionMedalView_completionLevel] = v18;
  v26.receiver = v22;
  v26.super_class = v21;
  v23 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_20B8B6398();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20C104DDC(v23);

LABEL_27:
    swift_unknownObjectRelease();
    return;
  }
}

uint64_t sub_20BA161F8(uint64_t a1, char a2)
{
  *(v3 + 440) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_20C13BB84();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  sub_20C133594();
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_20C133274();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_20C1357B4();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  v7 = sub_20C133134();
  *(v3 + 120) = v7;
  *(v3 + 128) = *(v7 - 8);
  *(v3 + 136) = swift_task_alloc();
  v8 = sub_20C133154();
  *(v3 + 144) = v8;
  *(v3 + 152) = *(v8 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  *(v3 + 176) = swift_task_alloc();
  v9 = sub_20C132E94();
  *(v3 + 184) = v9;
  *(v3 + 192) = *(v9 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  *(v3 + 248) = swift_task_alloc();
  v10 = sub_20C135814();
  *(v3 + 256) = v10;
  *(v3 + 264) = *(v10 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v11 = sub_20C132EE4();
  *(v3 + 288) = v11;
  *(v3 + 296) = *(v11 - 8);
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  v12 = sub_20C133954();
  *(v3 + 320) = v12;
  *(v3 + 328) = *(v12 - 8);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BA166B0, 0, 0);
}

uint64_t sub_20BA166B0()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanClient;
  v0[44] = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanClient;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  sub_20C135384();
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_20BA167A4;
  v6 = v0[43];
  v7 = v0[39];

  return MEMORY[0x2821ADF20](v6, v7, v3, v4);
}

uint64_t sub_20BA167A4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 296);
  v5 = *(*v1 + 288);
  v2[46] = v0;

  v6 = *(v4 + 8);
  v2[47] = v6;
  v2[48] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_20BA17BD8;
  }

  else
  {
    v7 = sub_20BA16928;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20BA16928()
{
  v1 = v0[47];
  v2 = v0[36];
  v3 = v0[37];
  v4 = (v0[3] + v0[44]);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  sub_20C133854();
  v9 = sub_20BE8D710(v8);
  v0[49] = v9;
  swift_setDeallocating();
  v1(v8 + v7, v2);
  swift_deallocClassInstance();
  v10 = swift_task_alloc();
  v0[50] = v10;
  *v10 = v0;
  v10[1] = sub_20BA16A88;

  return MEMORY[0x2821ADEF0](v9, v5, v6);
}

uint64_t sub_20BA16A88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v5 = sub_20BA17D58;
  }

  else
  {
    *(v4 + 416) = a1;
    v5 = sub_20BA16BD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BA16BD4()
{
  v90 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  sub_20BEDD6DC(v0[52], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[42];
    v5 = v0[43];
    v6 = v0[40];
    v7 = v0[41];
    sub_20B520158(v0[31], &unk_27C762300);
    sub_20C13B454();
    (*(v7 + 16))(v4, v5, v6);
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[47];
      v11 = v0[41];
      v75 = v0[42];
      v77 = v0[40];
      v12 = v0[38];
      v13 = v0[36];
      v82 = v0[5];
      v84 = v0[4];
      v87 = v0[7];
      v14 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v89 = v80;
      *v14 = 136315138;
      sub_20C133854();
      sub_20B6225C4(&qword_27C763EF0, MEMORY[0x277CC95F0]);
      v15 = sub_20C13DFA4();
      v17 = v16;
      v10(v12, v13);
      v18 = *(v11 + 8);
      v18(v75, v77);
      v19 = sub_20B51E694(v15, v17, &v89);
      v20 = v18;

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20B517000, v8, v9, "[WorkoutPlanCompletionPresenter] Failed to query workout plan template with identifier %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x20F2F6A40](v80, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);

      (*(v82 + 8))(v87, v84);
    }

    else
    {
      v40 = v0[41];
      v39 = v0[42];
      v41 = v0[40];
      v42 = v0[7];
      v43 = v0[4];
      v44 = v0[5];

      v20 = *(v40 + 8);
      v20(v39, v41);
      (*(v44 + 8))(v42, v43);
    }

    v45 = v0[43];
    v46 = v0[40];
    v47 = sub_20C134E24();
    sub_20B6225C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D51198], v47);
    swift_willThrow();
    v20(v45, v46);
    goto LABEL_16;
  }

  v21 = v0[24];
  v88 = v0[23];
  v23 = v0[21];
  v22 = v0[22];
  v25 = v0[18];
  v24 = v0[19];
  v27 = v0[16];
  v26 = v0[17];
  v28 = v0[15];
  (*(v0[33] + 32))(v0[35], v0[31], v0[32]);
  sub_20C132E64();
  sub_20C133014();
  (*(v27 + 104))(v26, *MEMORY[0x277CC9968], v28);
  sub_20C1330F4();
  (*(v27 + 8))(v26, v28);
  v29 = *(v24 + 8);
  v29(v23, v25);
  if ((*(v21 + 48))(v22, 1, v88) == 1)
  {
    v30 = v0[41];
    v83 = v0[40];
    v85 = v0[43];
    v31 = v0[35];
    v33 = v0[32];
    v32 = v0[33];
    v34 = v0[30];
    v36 = v0[23];
    v35 = v0[24];
    sub_20B520158(v0[22], &qword_27C762AC0);
    v37 = sub_20C134E24();
    sub_20B6225C4(&unk_27C762270, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D511B0], v37);
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v30 + 8))(v85, v83);
LABEL_16:

    v73 = v0[1];

    return v73();
  }

  v49 = v0[51];
  (*(v0[24] + 32))(v0[29], v0[22], v0[23]);
  sub_20C1338D4();
  if (v49)
  {
    v86 = v0[43];
    v50 = v0[40];
    v51 = v0[41];
    v52 = v0[35];
    v53 = v0[32];
    v54 = v0[33];
    v55 = v0[30];
    v56 = v0[23];
    v57 = *(v0[24] + 8);
    v57(v0[29], v56);
    v57(v55, v56);
    (*(v54 + 8))(v52, v53);
    (*(v51 + 8))(v86, v50);
    goto LABEL_16;
  }

  v59 = v0[29];
  v58 = v0[30];
  v60 = v0[27];
  v62 = v0[23];
  v61 = v0[24];
  v63 = v0[13];
  v64 = v0[14];
  v78 = v0[12];
  if (sub_20C132E04())
  {
    v65 = v59;
  }

  else
  {
    v65 = v58;
  }

  v76 = *(v61 + 16);
  v76(v60, v65, v62);
  sub_20C135804();
  sub_20C1357A4();
  (*(v63 + 8))(v64, v78);
  sub_20C133014();
  sub_20C132D54();
  v66 = v0[25];
  v79 = v0[23];
  v81 = v0[26];
  v67 = (v0[3] + v0[44]);
  v29(v0[20], v0[18]);

  sub_20C1357D4();
  v76(v66, v81, v79);
  sub_20C133014();
  sub_20C133554();
  sub_20C133264();
  v68 = v67[3];
  v69 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v70 = swift_task_alloc();
  v0[53] = v70;
  *v70 = v0;
  v70[1] = sub_20BA17874;
  v71 = v0[11];
  v72 = v0[2];

  return MEMORY[0x2821ADF08](v72, v71, v68, v69);
}

uint64_t sub_20BA17874()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_20BA17EF0;
  }

  else
  {
    v2 = sub_20BA17988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BA17988()
{
  v16 = v0[43];
  v1 = v0[41];
  v14 = v0[35];
  v15 = v0[40];
  v2 = v0[33];
  v12 = v0[30];
  v13 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v8 = v0[23];
  (*(v0[10] + 8))();
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  v9(v3, v8);
  v9(v4, v8);
  v9(v12, v8);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20BA17BD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BA17D58()
{
  (*(v0[41] + 8))(v0[43], v0[40]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BA17EF0()
{
  v54 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[54];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  sub_20C13B454();
  (*(v8 + 16))(v5, v6, v7);
  v9 = v4;
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v41 = v0[47];
    v12 = v0[38];
    v13 = v0[36];
    v42 = v11;
    v14 = v0[33];
    v15 = v0[34];
    v51 = v0[32];
    v45 = v0[5];
    v47 = v0[4];
    v49 = v0[6];
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v16 = 136315394;
    sub_20C1357D4();
    sub_20B6225C4(&qword_27C763EF0, MEMORY[0x277CC95F0]);
    v17 = sub_20C13DFA4();
    v19 = v18;
    v41(v12, v13);
    v20 = v51;
    v52 = *(v14 + 8);
    v52(v15, v20);
    v21 = sub_20B51E694(v17, v19, &v53);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v4;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v43 = v23;
    _os_log_impl(&dword_20B517000, v10, v42, "[WorkoutPlanCompletionPresenter] Failed to find valid start date to repeat workout plan template %s with error: %@", v16, 0x16u);
    sub_20B520158(v43, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    MEMORY[0x20F2F6A40](v16, -1, -1);

    (*(v45 + 8))(v49, v47);
  }

  else
  {
    v25 = v0[33];
    v24 = v0[34];
    v26 = v0[32];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];

    v52 = *(v25 + 8);
    v52(v24, v26);
    (*(v28 + 8))(v27, v29);
  }

  v30 = v0[41];
  v48 = v0[40];
  v50 = v0[43];
  v46 = v0[35];
  v31 = v0[32];
  v33 = v0[29];
  v32 = v0[30];
  v35 = v0[27];
  v34 = v0[28];
  v36 = v0[23];
  v37 = v0[24];
  swift_willThrow();
  v38 = *(v37 + 8);
  v38(v35, v36);
  v38(v34, v36);
  v38(v33, v36);
  v38(v32, v36);
  v52(v46, v31);
  (*(v30 + 8))(v50, v48);

  v39 = v0[1];

  return v39();
}

uint64_t sub_20BA183E8()
{
  v2 = v0;
  sub_20C1353B4();
  if (v3 != 1.0)
  {
    sub_20C1353B4();
    if (v11 == 0.0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v4 = v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder + 16);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder + 48);
  v118 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder + 32);
  v119 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder + 16);
  v117[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder);
  v117[1] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder + 48);
  v114 = v118;
  v115 = v8;
  v120 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder + 64);
  v116 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder + 64);
  v112 = v117[0];
  v113 = v5;
  sub_20B7A3194(v117, &v107);
  sub_20C1353E4();
  sub_20BAAB91C(v9);
  if (v1)
  {
    v109 = v114;
    v110 = v115;
    v111 = v116;
    v107 = v112;
    v108 = v113;
    sub_20B7A3B8C(&v107);
    return v4;
  }

  v12 = v10;
  v109 = v114;
  v110 = v115;
  v111 = v116;
  v107 = v112;
  v108 = v113;
  sub_20B7A3B8C(&v107);
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanStringBuilder);
  sub_20C135374();
  v74 = v13;
  __swift_project_boxed_opaque_existential_1((v13 + 48), *(v13 + 72));
  v70 = sub_20B5E107C();
  v15 = v14;
  v16 = *(v4 + 48);
  v104 = *(v4 + 32);
  v105 = v16;
  v106 = *(v4 + 64);
  v17 = *(v4 + 16);
  v102 = *v4;
  v103 = v17;
  v18 = v12;
  v19 = sub_20C1353A4();
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v20 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v22 = [v20 stringFromNumber_];

  if (!v22)
  {
    sub_20BA18E84();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();

LABEL_11:

    return v4;
  }

  v71 = v18;
  v73 = v15;
  v23 = sub_20C13C954();
  v25 = v24;

  v99 = v104;
  v100 = v105;
  v101 = v106;
  v97 = v102;
  v98 = v103;
  v26 = sub_20C138BA4();
  v75 = sub_20BAACEB0(v23, v25, v23, v25, 0, 0xE000000000000000, v26, 0);

  __swift_project_boxed_opaque_existential_1((v74 + 48), *(v74 + 72));
  v29 = sub_20B5E107C();
  v31 = v30;
  v32 = *(v4 + 48);
  v94 = *(v4 + 32);
  v95 = v32;
  v96 = *(v4 + 64);
  v33 = *(v4 + 16);
  v92 = *v4;
  v93 = v33;
  v34 = sub_20C135374();
  [v20 setMaximumFractionDigits_];
  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v36 = [v20 stringFromNumber_];

  if (!v36)
  {
    sub_20BA18E84();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();

    goto LABEL_11;
  }

  v68 = v29;
  v69 = v31;
  v37 = sub_20C13C954();
  v39 = v38;

  v89 = v94;
  v90 = v95;
  v91 = v96;
  v87 = v92;
  v88 = v93;
  v40 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v42 = sub_20BAACEB0(v37, v39, v37, v39, 0, 0xE000000000000000, v40, 0);

  __swift_project_boxed_opaque_existential_1((v74 + 48), *(v74 + 72));
  v43 = sub_20B5E107C();
  v45 = v44;
  v46 = *(v4 + 16);
  v47 = *(v4 + 48);
  v84 = *(v4 + 32);
  v85 = v47;
  v48 = *(v4 + 16);
  v83[0] = *v4;
  v83[1] = v48;
  v49 = *(v4 + 48);
  v80 = v84;
  v81 = v49;
  v86 = *(v4 + 64);
  v82 = *(v4 + 64);
  v78 = v83[0];
  v79 = v46;
  sub_20B7A3194(v83, v76);
  sub_20C1353C4();
  v66 = sub_20BAAB954(v50);
  v67 = v45;
  v76[2] = v80;
  v76[3] = v81;
  v77 = v82;
  v76[0] = v78;
  v76[1] = v79;
  sub_20B7A3B8C(v76);
  v51 = sub_20BAB29F4(*(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_unitPreferencesProvider), *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_unitPreferencesProvider + 8));
  v53 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769648);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C14F980;
  *(v4 + 32) = v70;
  *(v4 + 40) = v73;
  *(v4 + 48) = v71;
  v72 = v71;

  sub_20C1353C4();
  if (v54 > 0.0)
  {

    v55 = v66;
    v4 = sub_20BC07E5C(1, 2, 1, v4);
    *(v4 + 16) = 2;
    *(v4 + 56) = v51;
    *(v4 + 64) = v53;
    *(v4 + 72) = v55;
  }

  if (sub_20C135374() < 1)
  {
    v59 = v72;
  }

  else
  {
    v56 = *(v4 + 16);
    v57 = *(v4 + 24);

    v58 = v42;
    if (v56 >= v57 >> 1)
    {
      v64 = v57 > 1;
      v65 = v58;
      v4 = sub_20BC07E5C(v64, v56 + 1, 1, v4);
      v58 = v65;
    }

    v59 = v72;
    *(v4 + 16) = v56 + 1;
    v60 = (v4 + 24 * v56);
    v60[4] = v43;
    v60[5] = v67;
    v60[6] = v58;
  }

  if (sub_20C1353A4() < 1)
  {
  }

  else
  {
    v62 = *(v4 + 16);
    v61 = *(v4 + 24);
    if (v62 >= v61 >> 1)
    {
      v4 = sub_20BC07E5C((v61 > 1), v62 + 1, 1, v4);
    }

    *(v4 + 16) = v62 + 1;
    v63 = (v4 + 24 * v62);
    v63[4] = v68;
    v63[5] = v69;
    v63[6] = v75;
  }

  return v4;
}

uint64_t sub_20BA18C54()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanSummary;
  v2 = sub_20C1353F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanClient);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanCompletionPresenter()
{
  result = qword_27C769630;
  if (!qword_27C769630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BA18DBC()
{
  result = sub_20C1353F4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_20BA18E84()
{
  result = qword_27C769640;
  if (!qword_27C769640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769640);
  }

  return result;
}

uint64_t sub_20BA18ED8(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanSummary;
  v25 = sub_20C1353F4();
  v27 = *(v25 - 8);
  (*(v27 + 16))(v2 + v4, a2, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v5 = v28;
  v24 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763C60);
  sub_20C133AA4();
  type metadata accessor for UnitPreferencesProvider();
  v6 = swift_allocObject();
  v7 = *(&v31 + 1);
  v8 = v32;
  v9 = v33;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = sub_20BE47870(v5, v24, v13, v6, v7, v8, *(&v8 + 1), v9, *(&v9 + 1));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v30);
  v16 = (v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_unitPreferencesProvider);
  *v16 = v15;
  v16[1] = &off_2822EE5E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B52E424(&v30, v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanClient);
  v17 = v16[1];
  v18 = swift_unknownObjectRetain();
  SummaryStringBuilder.init(unitPreferencesProvider:)(v18, v17, &v30);
  v19 = v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_summaryStringBuilder;
  v20 = v33;
  *(v19 + 32) = v32;
  *(v19 + 48) = v20;
  *(v19 + 64) = v34;
  v21 = v31;
  *v19 = v30;
  *(v19 + 16) = v21;
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  (*(v27 + 8))(v26, v25);
  *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionPresenter_workoutPlanStringBuilder) = v28;
  return v2;
}

char *sub_20BA191C4(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI8WeekView_displays] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC9SeymourUI8WeekView_stackView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI8WeekView_styleProvider];
  *v12 = [objc_opt_self() systemFontOfSize_];
  *(v12 + 8) = xmmword_20C168BD0;
  *&v4[OBJC_IVAR____TtC9SeymourUI8WeekView_items] = v9;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for WeekView();
  v13 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI8WeekView_stackView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI8WeekView_stackView];
  v16 = v13;
  [v15 setAxis_];
  [*&v13[v14] setAlignment_];
  [*&v13[v14] setDistribution_];
  v17 = *&v13[v14];
  v18 = v16;
  [v18 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14FE90;
  v21 = [*&v13[v14] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [*&v13[v14] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v20 + 40) = v26;
  v27 = [*&v13[v14] topAnchor];
  v28 = [v18 topAnchor];

  v29 = &v18[OBJC_IVAR____TtC9SeymourUI8WeekView_styleProvider];
  v30 = [v27 constraintEqualToAnchor:v28 constant:*&v18[OBJC_IVAR____TtC9SeymourUI8WeekView_styleProvider + 16]];

  *(v20 + 48) = v30;
  v31 = [*&v13[v14] bottomAnchor];
  v32 = [v18 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-v29[1]];

  *(v20 + 56) = v33;
  sub_20B51C88C(0, &qword_281100500);
  v34 = sub_20C13CC54();

  [v19 activateConstraints_];

  [v18 setAccessibilityElementsHidden_];
  return v18;
}

void sub_20BA195EC(uint64_t a1)
{
  v2 = a1;
  *(v1 + OBJC_IVAR____TtC9SeymourUI8WeekView_items) = a1;

  v3 = *(v2 + 16);
  v4 = [*(v1 + OBJC_IVAR____TtC9SeymourUI8WeekView_stackView) arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v5 = sub_20C13CC74();

  if (v5 >> 62)
  {
    goto LABEL_10;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
  {

    if (__OFSUB__(v3, i))
    {
      break;
    }

    sub_20BA1990C(v3 - i);
    if (!v3)
    {
      return;
    }

    v7 = 0;
    v8 = (v2 + 40);
    while ((v3 & ~(v3 >> 63)) != v7)
    {
      v9 = *(v8 - 1);
      v2 = *v8;

      sub_20BA1972C(v7, v9, v2, v1);

      v8 += 2;
      if (v3 == ++v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    ;
  }

  __break(1u);
}

void sub_20BA1972C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC9SeymourUI8WeekView_displays;
  swift_beginAccess();
  v8 = *(a4 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x20F2F5430](a1, v8);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      goto LABEL_18;
    }

    v9 = *(v8 + 8 * a1 + 32);
  }

  v10 = sub_20C13C914();
  [v9 setText_];

  a3 = *(a4 + v7);
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_16:

    v11 = MEMORY[0x20F2F5430](a1, a3);

    goto LABEL_9;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v11 = *(a3 + 8 * a1 + 32);
LABEL_9:
  [v11 setTextAlignment_];

  a3 = *(a4 + v7);
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v12 = MEMORY[0x20F2F5430](a1, a3);

    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v12 = *(a3 + 8 * a1 + 32);
LABEL_13:
    [v12 setFont_];

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_20BA1990C(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    if (a1 < 1)
    {
      v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI8WeekView_stackView);
      v9 = [v8 arrangedSubviews];
      sub_20B51C88C(0, &qword_27C762910);
      v10 = sub_20C13CC74();

      sub_20BCC85A8(v3, v10);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = v16 >> 1;
      v18 = (v16 >> 1) - v14;
      if (v16 >> 1 == v14)
      {
LABEL_9:
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = OBJC_IVAR____TtC9SeymourUI8WeekView_displays;
        if (v14 > v17)
        {
          v17 = v14;
        }

        v20 = v17 - v14;
        v21 = (v12 + 8 * v14);
        while (v20)
        {
          v22 = *v21;
          [v8 removeArrangedSubview_];
          [v22 removeFromSuperview];
          swift_beginAccess();
          v23 = *(v2 + v19);
          if (v23 >> 62)
          {
            if (!sub_20C13DB34())
            {
LABEL_24:
              __break(1u);
              break;
            }
          }

          else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *(v2 + v19) = v23;
          if (v23 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            v23 = sub_20BF98A94(v23);
          }

          v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v25)
          {
            goto LABEL_26;
          }

          v26 = v25 - 1;
          v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 8 * v26 + 0x20);
          *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) = v26;
          *(v2 + v19) = v23;
          swift_endAccess();

          --v20;
          ++v21;
          if (!--v18)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
      }
    }

    else
    {
      v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI8WeekView_stackView);
      v5 = OBJC_IVAR____TtC9SeymourUI8WeekView_displays;
      do
      {
        v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        [v6 setTranslatesAutoresizingMaskIntoConstraints_];
        [v4 addArrangedSubview_];
        swift_beginAccess();
        v7 = v6;
        MEMORY[0x20F2F43B0]();
        if (*((*(v2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
        swift_endAccess();

        --v3;
      }

      while (v3);
    }
  }
}

id sub_20BA19BB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeekView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BA19C8C()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI8WeekView_displays) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC9SeymourUI8WeekView_stackView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI8WeekView_styleProvider;
  *v4 = [objc_opt_self() systemFontOfSize_];
  *(v4 + 8) = xmmword_20C168BD0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI8WeekView_items) = v1;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BA19DA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  sub_20C1325F4();
  if (v15)
  {
    sub_20B51C88C(0, &unk_27C769690);
    if (swift_dynamicCast())
    {
      v9 = v13[1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_20B520158(v14, &unk_27C768A00);
    v9 = 0;
  }

  v10 = [v9 selectedUserProfile];
  v11 = sub_20C13CDF4();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v10;

  sub_20B6383D0(0, 0, v4, &unk_20C168D98, v12);
}

uint64_t sub_20BA1A11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20BA1A13C, a4, 0);
}

uint64_t sub_20BA1A13C()
{
  sub_20BA1A19C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BA1A19C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  result = (*(v5 + 8))(v7, v4);
  v9 = *(v2 + 208);
  if (!v9)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    *(v2 + 208) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_20BA1CA68();
    return sub_20C13A764();
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ((sub_20BA1A370(v9) & 1) == 0)
  {
    *(v2 + 208) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_20BA1CA68();
    sub_20C13A764();
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_20BA1A370(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = [v2 identifier];
  v9 = sub_20C13C954();
  v11 = v10;

  v12 = [a1 identifier];
  v13 = sub_20C13C954();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {
  }

  else
  {
    v16 = sub_20C13DFF4();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = [v2 iCloudAltDSID];
  if (v17)
  {
    v18 = v17;
    v19 = sub_20C13C954();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 iCloudAltDSID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_20C13C954();
    v26 = v25;

    if (v21)
    {
      if (!v26)
      {
        goto LABEL_31;
      }

      if (v19 == v24 && v21 == v26)
      {
      }

      else
      {
        v27 = sub_20C13DFF4();

        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v26)
    {
      goto LABEL_31;
    }
  }

  else if (v21)
  {
    goto LABEL_31;
  }

  v28 = [v2 iTunesAltDSID];
  if (v28)
  {
    v29 = v28;
    v30 = sub_20C13C954();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [a1 iTunesAltDSID];
  if (!v33)
  {
    if (!v32)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v34 = v33;
  v35 = sub_20C13C954();
  v37 = v36;

  if (!v32)
  {
    if (!v37)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (!v37)
  {
LABEL_31:

    return 0;
  }

  if (v30 != v35 || v32 != v37)
  {
    v39 = sub_20C13DFF4();

    if (v39)
    {
      goto LABEL_34;
    }

    return 0;
  }

LABEL_34:
  v40 = [v2 isSelected];
  return v40 ^ [a1 isSelected] ^ 1;
}

uint64_t sub_20BA1A708()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20BA1A77C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C136F14();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C137B04();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_20C1369B4();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_20C135334();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_20C135D54();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_20C13B894();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  v2[27] = swift_task_alloc();
  v8 = sub_20C136C64();
  v2[28] = v8;
  v2[29] = *(v8 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BA1AAE4, v1, 0);
}

uint64_t sub_20BA1AAE4()
{
  v2 = v0 + 29;
  v1 = v0[29];
  v3 = v0[28];
  v4 = v0[27];
  __swift_project_boxed_opaque_existential_1((v0[3] + 168), *(v0[3] + 192));
  sub_20C13B174();
  if ((*(v1 + 48))(v4, 1, v3) == 1)
  {
    v5 = v0[3];
    sub_20B520158(v0[27], &qword_27C768690);
    v6 = v5[17];
    v7 = v5[18];
    __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
    v8 = swift_task_alloc();
    v0[37] = v8;
    *v8 = v0;
    v8[1] = sub_20BA1BB28;
    v9 = v0[2];

    return MEMORY[0x2821AFC18](v9, v6, v7);
  }

  v10 = v0 + 30;
  v11 = v0[26];
  v12 = v0[25];
  v14 = v0 + 24;
  v13 = v0[24];
  v15 = v0[2];
  (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
  (*(v12 + 16))(v11, v15, v13);
  v16 = (*(v12 + 88))(v11, v13);
  if (v16 == *MEMORY[0x277D4FA60])
  {
    v17 = v0[19];
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    v21 = v0[16];
    v22 = v0[14];
    sub_20C136C24();
    sub_20C135314();
    (*(v21 + 8))(v19, v20);
    if ((*(v18 + 48))(v22, 1, v17) == 1)
    {
      v23 = v0[14];
LABEL_11:
      sub_20B520158(v23, &unk_27C762370);
      v30 = sub_20C13B8A4();
      sub_20BA1CA20(&qword_27C762380, MEMORY[0x277D4FA88]);
      swift_allocError();
      (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D4FA70], v30);
      swift_willThrow();
      v14 = v0 + 28;
LABEL_16:
      (*(*v2 + 8))(*v10, *v14);

      v44 = v0[1];

      return v44();
    }

    v32 = v0 + 23;
    v33 = v0[3];
    (*(v0[20] + 32))(v0[23], v0[14], v0[19]);
    v34 = *(v33 + 208);
    if (v34 && (v35 = [v34 iTunesAltDSID]) != 0)
    {
      v36 = v35;
      v37 = sub_20C13C954();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_20C135D44();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = v0[12];
    if (EnumCaseMultiPayload == 1)
    {
      v48 = v0[5];
      v47 = v0[6];
      v49 = v0[4];
      (*(v48 + 32))(v47, v46, v49);
      v50 = sub_20C136F04();
    }

    else
    {
      v48 = v0[8];
      v47 = v0[9];
      v49 = v0[7];
      (*(v48 + 32))(v47, v46, v49);
      v50 = sub_20C137AD4();
    }

    v59 = v50;
    v60 = v51;
    (*(v48 + 8))(v47, v49);
    if (v39)
    {
      if (v60)
      {
        if (v37 == v59 && v39 == v60)
        {

LABEL_44:
          v75 = v0[3];
          v77 = v75[17];
          v76 = v75[18];
          __swift_project_boxed_opaque_existential_1(v75 + 14, v77);
          v78 = swift_task_alloc();
          v0[31] = v78;
          *v78 = v0;
          v78[1] = sub_20BA1B600;

          return MEMORY[0x2821AFC58](v77, v76);
        }

        v74 = sub_20C13DFF4();

        if (v74)
        {
          goto LABEL_44;
        }

        goto LABEL_33;
      }
    }

    else if (!v60)
    {
      goto LABEL_44;
    }

LABEL_33:
    v61 = v0[22];
    v62 = v0[23];
    v63 = v0[19];
    v64 = v0[20];
    sub_20B51C88C(0, &qword_27C7683B0);
    (*(v64 + 16))(v61, v62, v63);
LABEL_50:
    v94 = sub_20C13D8B4();
    v84 = v0[29];
    v83 = v0[30];
    v85 = v0[28];
    (*(v0[20] + 8))(*v32, v0[19]);
    (*(v84 + 8))(v83, v85);

    v86 = v0[1];

    return v86(v94);
  }

  v24 = *v10;
  if (v16 != *MEMORY[0x277D4FA68])
  {
    v40 = *v2;
    v41 = v0[28];
    v42 = sub_20C1356F4();
    sub_20BA1CA20(&qword_27C769680, MEMORY[0x277D51BF0]);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51BD0], v42);
    swift_willThrow();
    (*(v40 + 8))(v24, v41);
    v2 = v0 + 25;
    v10 = v0 + 26;
    goto LABEL_16;
  }

  v25 = v0[20];
  v93 = v0[19];
  v26 = v0[16];
  v27 = v0[17];
  v28 = v0[15];
  v29 = v0[13];
  sub_20C136C24();
  sub_20C135304();
  (*(v26 + 8))(v27, v28);
  if ((*(v25 + 48))(v29, 1, v93) == 1)
  {
    v23 = v0[13];
    goto LABEL_11;
  }

  v32 = v0 + 21;
  v52 = v0[3];
  (*(v0[20] + 32))(v0[21], v0[13], v0[19]);
  v53 = *(v52 + 208);
  if (v53 && (v54 = [v53 iCloudAltDSID]) != 0)
  {
    v55 = v54;
    v56 = sub_20C13C954();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  sub_20C135D44();
  v65 = swift_getEnumCaseMultiPayload();
  v66 = v0[11];
  if (v65 == 1)
  {
    v68 = v0[5];
    v67 = v0[6];
    v69 = v0[4];
    (*(v68 + 32))(v67, v66, v69);
    v70 = sub_20C136F04();
  }

  else
  {
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v68 + 32))(v67, v66, v69);
    v70 = sub_20C137AD4();
  }

  v72 = v70;
  v73 = v71;
  (*(v68 + 8))(v67, v69);
  if (!v58)
  {
    if (!v73)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

  if (!v73)
  {
LABEL_48:

    goto LABEL_49;
  }

  if (v56 != v72 || v58 != v73)
  {
    v87 = sub_20C13DFF4();

    if (v87)
    {
      goto LABEL_54;
    }

LABEL_49:
    v79 = v0[21];
    v80 = v0[22];
    v81 = v0[19];
    v82 = v0[20];
    sub_20B51C88C(0, &qword_27C7683B0);
    (*(v82 + 16))(v80, v79, v81);
    goto LABEL_50;
  }

LABEL_54:
  v88 = v0[3];
  v89 = v88[17];
  v90 = v88[18];
  __swift_project_boxed_opaque_existential_1(v88 + 14, v89);
  v91 = swift_task_alloc();
  v0[34] = v91;
  *v91 = v0;
  v91[1] = sub_20BA1B894;

  return MEMORY[0x2821AFC28](v89, v90);
}

uint64_t sub_20BA1B600(uint64_t a1)
{
  v4 = *v2;
  v4[32] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_20BA1BDEC;
  }

  else
  {
    v4[33] = a1;
    v6 = sub_20BA1B73C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20BA1B73C()
{
  v6 = v0[33];
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[20] + 8))(v0[23], v0[19]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_20BA1B894(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_20BA1BF38;
  }

  else
  {
    v4[36] = a1;
    v6 = sub_20BA1B9D0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20BA1B9D0()
{
  v6 = v0[36];
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_20BA1BB28(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_20BA1BDEC()
{
  (*(v0[20] + 8))(v0[23], v0[19]);
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BA1BF38()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BA1C084(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B5ADE04;

  return sub_20BA1A77C(a1);
}

uint64_t sub_20BA1C11C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_20BA1C13C, v3, 0);
}

uint64_t sub_20BA1C13C()
{
  v1 = v0[3];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20BA1C1FC;
  v5 = v0[2];

  return MEMORY[0x2821AFC38](v5, v2, v3);
}

uint64_t sub_20BA1C1FC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_20BA1C2FC()
{
  v2 = sub_20C13B894();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[4] = v3;
  v1[5] = v4;

  return MEMORY[0x2822009F8](sub_20BA1C3B8, v4, 0);
}

uint64_t sub_20BA1C3B8()
{
  (*(v0[3] + 104))(v0[4], *MEMORY[0x277D4FA68], v0[2]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_20BA1C470;
  v2 = v0[4];

  return sub_20BA1A77C(v2);
}

uint64_t sub_20BA1C470(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  if (v1)
  {
    v5 = v4[5];
    (*(v4[3] + 8))(v4[4], v4[2]);

    return MEMORY[0x2822009F8](sub_20BA1C5F8, v5, 0);
  }

  else
  {
    (*(v4[3] + 8))(v4[4], v4[2]);

    v6 = v4[1];

    return v6(a1);
  }
}

uint64_t sub_20BA1C5F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BA1C65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RemoteBrowsingAccountProvider();

  return MEMORY[0x2821AFC50](a1, v5, a3);
}

uint64_t sub_20BA1C6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RemoteBrowsingAccountProvider();

  return MEMORY[0x2821AFC78](a1, v5, a3);
}

uint64_t sub_20BA1C704(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RemoteBrowsingAccountProvider();

  return MEMORY[0x2821AFC70](v3, a2);
}

uint64_t sub_20BA1C74C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for RemoteBrowsingAccountProvider();
  *v4 = v2;
  v4[1] = sub_20BA1C7F4;

  return MEMORY[0x2821AFC68](v5, a2);
}

uint64_t sub_20BA1C7F4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_20BA1C920()
{
  v1 = sub_20C1356F4();
  sub_20BA1CA20(&qword_27C769680, MEMORY[0x277D51BF0]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51B98], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20BA1CA20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BA1CA68()
{
  result = qword_27C7706D0;
  if (!qword_27C7706D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7706D0);
  }

  return result;
}

uint64_t sub_20BA1CABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20BA1A11C(a1, v4, v5, v7, v6);
}

uint64_t sub_20BA1CB7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BA1CBD4();
  }

  return result;
}

void sub_20BA1CBD4()
{
  v1 = v0;
  v2 = sub_20C133B04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  v7 = OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_lastUpdatedValue;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  sub_20C133AF4();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  ObjectType = swift_getObjectType();
  v11 = sub_20BEC6C70(ObjectType, v6, v9);
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v12 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = [v12 stringFromNumber_];

  if (v14)
  {
    v15 = sub_20C13C954();
    v17 = v16;

    v18 = sub_20BEC6B94(ObjectType, v6);
    if (qword_27C760920 != -1)
    {
      swift_once();
    }

    v19 = [qword_27C76A548 unitStringFromValue:qword_20C168E08[v18] unit:v11];
    v20 = sub_20C13C954();
    v22 = v21;

    v32[1] = v20;
    v32[2] = v22;
    sub_20B5F6EB0();
    v23 = sub_20C13D9E4();
    v25 = v24;

    v26 = v1 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_display;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v26 + 8);
      v28 = swift_getObjectType();
      (*(v27 + 8))(v15, v17, v23, v25, v28, v27);
      swift_unknownObjectRelease();
    }

    v29 = v1 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_externalOverlayDisplay;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      v31 = swift_getObjectType();
      (*(v30 + 8))(v15, v17, v23, v25, v31, v30);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_20BA1CF44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133B04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 24);
  sub_20C133AF4();
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = sub_20BEC6C70(ObjectType, v10, v12);
  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v15 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v17 = [v15 stringFromNumber_];

  if (v17)
  {
    v50 = sub_20C13C954();
    v51 = v18;

    v19 = sub_20BEC6B94(ObjectType, v10);
    if (qword_27C760920 != -1)
    {
      swift_once();
    }

    v20 = [qword_27C76A548 unitStringFromValue:qword_20C168E08[v19] unit:v14];
    v21 = sub_20C13C954();
    v23 = v22;

    v55[0] = v21;
    v55[1] = v23;
    sub_20B5F6EB0();
    v49 = sub_20C13D9E4();
    v25 = v24;

    v26 = OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_lastUpdatedValue;
    swift_beginAccess();
    (*(v5 + 24))(v2 + v26, a1, v4);
    swift_endAccess();
    v27 = v54;
    sub_20C13B564();
    (*(v5 + 16))(v7, a1, v4);
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1F4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v30 = 136446210;
      sub_20BA1D694();
      v32 = sub_20C13DFA4();
      v33 = v7;
      v34 = v25;
      v36 = v35;
      (*(v5 + 8))(v33, v4);
      v37 = sub_20B51E694(v32, v36, v55);
      v25 = v34;

      *(v30 + 4) = v37;
      _os_log_impl(&dword_20B517000, v28, v29, "Updating the metrics presenter with energy metric value: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      MEMORY[0x20F2F6A40](v30, -1, -1);

      (*(v52 + 8))(v54, v53);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      (*(v52 + 8))(v27, v53);
    }

    v38 = v50;
    v39 = v2 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_display;
    Strong = swift_unknownObjectWeakLoadStrong();
    v41 = v51;
    v42 = v49;
    if (Strong)
    {
      v43 = *(v39 + 8);
      v44 = swift_getObjectType();
      (*(v43 + 8))(v38, v41, v42, v25, v44, v43);
      swift_unknownObjectRelease();
    }

    v45 = v2 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_externalOverlayDisplay;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = *(v45 + 8);
      v47 = swift_getObjectType();
      (*(v46 + 8))(v38, v41, v42, v25, v47, v46);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_20BA1D4A4()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_lastUpdatedValue;
  v2 = sub_20C133B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_externalOverlayDisplay);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_display);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionActiveEnergyMetricPresenter()
{
  result = qword_27C7696A8;
  if (!qword_27C7696A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BA1D5DC()
{
  result = sub_20C133B04();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_20BA1D694()
{
  result = qword_27C7696B8;
  if (!qword_27C7696B8)
  {
    sub_20C133B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7696B8);
  }

  return result;
}

uint64_t sub_20BA1D6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C133B04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_externalOverlayDisplay + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v10 = v14[1];
  v11 = (v3 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_eventHub);
  *v11 = v14[0];
  v11[1] = v10;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_subscriptionToken) = sub_20C13A914();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  swift_unknownObjectRetain();
  sub_20C13CE94();
  sub_20C133AE4();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC9SeymourUI34SessionActiveEnergyMetricPresenter_lastUpdatedValue, v9, v6);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B52A8B0();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v3;
}

id sub_20BA1DB84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *a1);
  v7 = &v6[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_20C137C24();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  sub_20B69AB5C(v5, &v6[v9]);
  swift_endAccess();
  v10 = [v6 backgroundColor];
  if (!v10)
  {
    v11 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];
    v10 = v11;
  }

  [v6 setStackImage_];
  v12 = &v6[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
  v13 = *&v6[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_20B583ECC(v13);
  sub_20B626760(0, 0);
  return sub_20B6262FC(0);
}

uint64_t sub_20BA1DD44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = v1 + *a1;
  v8 = *v6;
  v7 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  (*(v7 + 176))(0, 0, 1, ObjectType, v7);
  v10 = sub_20C137C24();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  (*(v7 + 16))(v5, ObjectType, v7);
  v11 = [v8 backgroundColor];
  if (!v11)
  {
    v12 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];
    v11 = v12;
  }

  (*(v7 + 120))(0, ObjectType, v7);
  (*(v7 + 152))(0, 0, ObjectType, v7);
  (*(v7 + 280))(ObjectType, v7, 1.0);
  (*(v7 + 296))(0, 0, ObjectType, v7);
  return (*(v7 + 264))(0, ObjectType, v7);
}

uint64_t sub_20BA1DF60(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA66640;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA1E428(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI14CircleItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65450;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA1E8F0(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65308;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA1EDB8(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA653AC;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA1F280(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA654F4;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA1F748(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64CA0;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA1FC10(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65598;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA200D8(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v45 = a2;
  v46 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v40 - v20;
  v22 = *(v5 + OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchFallbackArtworkHandler);
  if (v22)
  {
    v43 = v9;

    v22(v23, a3, a4);
    sub_20B583ECC(v22);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v24 = *(v15 + 32);
      v40[1] = v15 + 32;
      v41 = v24;
      v42 = v8;
      v24(v21, v13, v14);
      v25 = *(v5 + OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView);
      [v25 setContentMode_];
      v26 = [objc_opt_self() secondarySystemBackgroundColor];
      [v25 setBackgroundColor_];

      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v30 = v45;
      v29 = v46;
      v28[2] = v27;
      v28[3] = v29;
      v28[4] = v30;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_20BA66788;
      *(v31 + 24) = v28;
      (*(v15 + 16))(v17, v21, v14);
      v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v33 = swift_allocObject();
      v41(v33 + v32, v17, v14);
      v34 = (v33 + ((v16 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v34 = sub_20B5F7760;
      v34[1] = v31;
      sub_20B584050(v29);
      v35 = v44;
      sub_20C137C94();
      v36 = v42;
      v37 = sub_20C137CB4();
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      v37(sub_20B5DF6DC, v38);

      (*(v43 + 8))(v35, v36);
      return (*(v15 + 8))(v21, v14);
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v19);
  }

  sub_20B520158(v13, &unk_27C766670);
  result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView);
  if (v46)
  {
    return v46(result);
  }

  return result;
}

uint64_t sub_20BA205CC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA6659C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA20A94(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64DE8;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA20F5C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64A10;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA21424(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65B5C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA218EC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65E90;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA21DB4(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65FD8;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2227C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA664F8;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA22744(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64D44;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA22C0C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65C00;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA230D4(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA6511C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA2359C(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65264;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA23A64(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64B58;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA23F2C(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA66454;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA243F4(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65D48;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA248BC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA66268;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA24D84(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65DEC;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2524C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65828;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA25714(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA656E0;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA25BDC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64E8C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA260A4(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64AB4;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2656C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA661C4;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA26A34(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA66120;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA26EFC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65CA4;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA273C4(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA658CC;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2788C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64F30;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA27D54(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65F34;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2821C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA666E4;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA286E4(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA6563C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA28BAC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65078;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA29074(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64BFC;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2953C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65A14;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA29A04(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA651C0;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA29ECC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA6607C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2A394(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA6630C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2A85C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64FD4;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2AD24(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])(v13);
  v17 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA64884;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v17, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v17, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2B1EC(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65970;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2B6B4(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA663B0;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA2BB7C(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65AB8;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

id sub_20BA2C044(uint64_t (*a1)(id), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2CEC8(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA65784;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2C50C(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_20BA2D06C(v12, a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C766670);
    result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView);
    if (v43)
    {
      return v43(result);
    }
  }

  else
  {
    v39 = v8;
    v38 = *(v14 + 32);
    v41 = v19;
    v38(v19, v12, v13);
    v21 = *(v4 + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView);
    [v21 setContentMode_];
    v22 = [objc_opt_self() secondarySystemBackgroundColor];
    v37 = v7;
    v23 = v22;
    [v21 setBackgroundColor_];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v42;
    v26 = v43;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BA6682C;
    *(v28 + 24) = v25;
    (*(v14 + 16))(v16, v41, v13);
    v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v30 = swift_allocObject();
    v38((v30 + v29), v16, v13);
    v31 = (v30 + ((v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B5F7760;
    v31[1] = v28;
    sub_20B584050(v26);
    v32 = v40;
    sub_20C137C94();
    v33 = v37;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v39 + 8))(v32, v33);
    return (*(v14 + 8))(v41, v13);
  }

  return result;
}

uint64_t sub_20BA2C9B0(uint64_t (*a1)(uint64_t), uint64_t a2, double a3, double a4)
{
  v42 = a2;
  v43 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = v4 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 16))(v4, ObjectType, v20, a3, a4);
    swift_unknownObjectRelease();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v38 = v7;
      v39 = v18;
      v37 = *(v13 + 32);
      v37(v18, v11, v12);
      v22 = *(v4 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
      [v22 setContentMode_];
      v23 = [objc_opt_self() secondarySystemBackgroundColor];
      [v22 setBackgroundColor_];

      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v27 = v42;
      v26 = v43;
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_20BA669D4;
      *(v28 + 24) = v25;
      (*(v13 + 16))(v15, v39, v12);
      v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v30 = swift_allocObject();
      v37((v30 + v29), v15, v12);
      v31 = (v30 + ((v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v31 = sub_20B5F7760;
      v31[1] = v28;
      sub_20B584050(v26);
      v32 = v40;
      sub_20C137C94();
      v33 = v38;
      v34 = sub_20C137CB4();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      v34(sub_20B5DF6DC, v35);

      (*(v41 + 8))(v32, v33);
      return (*(v13 + 8))(v39, v12);
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_20B520158(v11, &unk_27C766670);
  result = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
  if (v43)
  {
    return v43(result);
  }

  return result;
}

uint64_t sub_20BA2CEC8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 176))(v7, ObjectType, v9, a2, a3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B5F6F04();
      v12 = swift_allocError();
      *(swift_allocObject() + 16) = v12;
      v13 = v12;
      sub_20B51C88C(0, &qword_27C7626E8);
      sub_20C137CA4();
      swift_unknownObjectRelease();
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v11, 1, v14);
}

uint64_t sub_20BA2D06C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 176))(v7, ObjectType, v9, a2, a3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B5F6F04();
      v12 = swift_allocError();
      *(swift_allocObject() + 16) = v12;
      v13 = v12;
      sub_20B51C88C(0, &qword_27C7626E8);
      sub_20C137CA4();
      swift_unknownObjectRelease();
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v11, 1, v14);
}

uint64_t sub_20BA2D244()
{
  result = sub_20C13D514();
  qword_27C7696C0 = v1;
  qword_27C7696C8 = v2;
  return result;
}

uint64_t sub_20BA2D2C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20BA2D32C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20B8DD284;
}

id CatalogTipPlainView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CatalogTipPlainView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView];
  v11 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v12 = sub_20B91B5FC(1);
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *v10 = v12;
  v10[1] = &off_2822B63E8;
  v13 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  [v14 setFont_];

  [v14 setNumberOfLines_];
  [v14 setAdjustsFontSizeToFitWidth_];
  [v14 setMinimumScaleFactor_];
  [v14 setLineBreakMode_];
  [v14 setAdjustsFontForContentSizeCategory_];
  *&v5[v13] = v14;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = objc_opt_self();
  v19 = [v18 secondaryLabelColor];
  [v17 setTextColor_];

  v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_subtitleLabel;
  v24 = [v15 fontWithDescriptor:v20 size:0.0];

  [v17 setFont_];
  [v17 setNumberOfLines_];
  [v17 setAdjustsFontSizeToFitWidth_];
  [v17 setMinimumScaleFactor_];
  [v17 setLineBreakMode_];
  [v17 setAdjustsFontForContentSizeCategory_];
  *&v5[v23] = v17;
  v25 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_separatorView;
  v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [v18 systemGray3Color];
  [v26 setBackgroundColor_];

  *&v5[v25] = v26;
  v28 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_detailLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v29 setTextColor_];

  v31 = [v15 preferredFontForTextStyle_];
  [v29 setFont_];

  [v29 setNumberOfLines_];
  [v29 setMinimumScaleFactor_];
  [v29 setLineBreakMode_];
  [v29 setAdjustsFontForContentSizeCategory_];
  *&v5[v28] = v29;
  *&v5[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v34.receiver = v5;
  v34.super_class = type metadata accessor for CatalogTipPlainView();
  v32 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20BA2D978();

  return v32;
}

void sub_20BA2D978()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_titleLabel];
  [v0 addSubview_];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_subtitleLabel];
  [v0 addSubview_];
  v60 = *&v0[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_separatorView];
  [v0 addSubview_];
  v62 = *&v0[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_detailLabel];
  [v0 addSubview_];
  v61 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C1638B0;
  v6 = [v2 heightAnchor];
  if (qword_27C7608B8 != -1)
  {
    swift_once();
  }

  v7 = [v6 constraintEqualToConstant_];

  *(v5 + 32) = v7;
  v8 = [v2 widthAnchor];
  v9 = [v8 &selRef_visibleCells + 1];

  *(v5 + 40) = v9;
  v10 = [v2 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:15.0];

  *(v5 + 48) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-10.0];

  *(v5 + 56) = v15;
  v16 = [v2 topAnchor];
  v17 = [v0 &selRef_setLineBreakMode_];
  v18 = [v16 constraintEqualToAnchor:v17 constant:15.0];

  *(v5 + 64) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 &selRef_secondaryLabel + 5];
  v21 = [v19 constraintLessThanOrEqualToAnchor:v20 constant:-15.0];

  *(v5 + 72) = v21;
  v22 = [v3 trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-15.0];

  *(v5 + 80) = v24;
  v25 = [v3 &selRef_setLineBreakMode_];
  v26 = [v0 &selRef_setLineBreakMode_];
  v27 = [v25 constraintEqualToAnchor:v26 constant:10.0];

  *(v5 + 88) = v27;
  v28 = [v3 &selRef_secondaryLabel + 5];
  v29 = [v4 &selRef_setLineBreakMode_];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-6.0];

  *(v5 + 96) = v30;
  v31 = [v4 leadingAnchor];
  v32 = [v3 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v5 + 104) = v33;
  v34 = [v4 trailingAnchor];
  v35 = [v3 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v5 + 112) = v36;
  v37 = [v4 &selRef_secondaryLabel + 5];
  v38 = [v60 topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-15.0];

  *(v5 + 120) = v39;
  v40 = [v60 leadingAnchor];
  v41 = [v3 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v5 + 128) = v42;
  v43 = [v60 trailingAnchor];
  v44 = [v3 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v5 + 136) = v45;
  v46 = [v60 bottomAnchor];
  v47 = [v62 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-10.0];

  *(v5 + 144) = v48;
  v49 = [v62 leadingAnchor];
  v50 = [v3 leadingAnchor];
  v51 = [v49 &selRef:v50 alertControllerReleasedDictationButton:? + 5];

  *(v5 + 152) = v51;
  v52 = [v62 trailingAnchor];
  v53 = [v3 trailingAnchor];
  v54 = [v52 &selRef:v53 alertControllerReleasedDictationButton:? + 5];

  *(v5 + 160) = v54;
  v55 = [v62 bottomAnchor];
  v56 = [v0 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-10.0];

  *(v5 + 168) = v57;
  v58 = [v60 heightAnchor];
  sub_20C1387F4();
  v59 = [v58 constraintEqualToConstant_];

  *(v5 + 176) = v59;
  sub_20B51C88C(0, &qword_281100500);
  v63 = sub_20C13CC54();

  [v61 activateConstraints_];
}

id sub_20BA2E230()
{
  sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
  [*(v0 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_titleLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_subtitleLabel) setText_];
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_detailLabel);

  return [v1 setText_];
}

id sub_20BA2E2B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v156 = a4;
  v160 = a3;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v142 = &v124 - v10;
  v140 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v124 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v15 - 8);
  v150 = &v124 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v153 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v139 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v18;
  MEMORY[0x28223BE20](v19);
  v145 = &v124 - v20;
  v148 = sub_20C1391C4();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v149 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C138A64();
  v151 = *(v22 - 8);
  v152 = v22;
  MEMORY[0x28223BE20](v22);
  v154 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v24 - 8);
  v146 = &v124 - v25;
  v162 = sub_20C137C24();
  v158 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v157 = v26;
  v161 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C13C554();
  v28 = *(v27 - 8);
  *&v29 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v31 = (&v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *a1;
  v33 = a1[1];
  v34 = a1[2];
  v165 = *(v5 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_titleLabel);
  [v165 setAttributedText_];
  v164 = *(v5 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_subtitleLabel);
  [v164 setAttributedText_];
  v163 = *(v5 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_detailLabel);
  [v163 setAttributedText_];
  v159 = sub_20C138054();
  v36 = v35;
  sub_20B51C88C(0, &qword_281100530);
  *v31 = sub_20C13D374();
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  LOBYTE(v34) = sub_20C13C584();
  result = (*(v28 + 8))(v31, v27);
  if (v34)
  {
    v39 = *(v5 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
    v38 = *(v5 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView + 8);
    ObjectType = swift_getObjectType();
    [v39 setContentMode_];
    if (sub_20BA640CC(a2, v39, v38, 0))
    {
      v130 = v17;
      v124 = v14;
      v41 = swift_allocObject();
      v126 = v5;
      swift_unknownObjectWeakInit();
      v137 = v38;
      v42 = v158;
      v43 = *(v158 + 16);
      v44 = v161;
      v131 = a2;
      v45 = v162;
      v133 = v158 + 16;
      v132 = v43;
      v43(v161, a2, v162);
      v46 = *(v42 + 80);
      v47 = (v46 + 24) & ~v46;
      v125 = v157 + 7;
      v48 = (v157 + 7 + v47) & 0xFFFFFFFFFFFFFFF8;
      v136 = v39;
      v135 = ObjectType;
      v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
      v155 = v36;
      v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
      v134 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
      v129 = v46;
      v51 = swift_allocObject();
      *(v51 + 16) = v41;
      v52 = v42;
      v53 = v137;
      v54 = *(v52 + 32);
      v55 = v51 + v47;
      v56 = v155;
      v128 = v52 + 32;
      v127 = v54;
      v54(v55, v44, v45);
      v57 = (v51 + v48);
      v58 = v156;
      *v57 = v160;
      v57[1] = v58;
      v59 = (v51 + v49);
      v60 = v135;
      v61 = v136;
      *v59 = v159;
      v59[1] = v56;
      *(v51 + v50) = 2;
      v62 = v51 + v134;
      *v62 = MEMORY[0x277D84F90];
      *(v62 + 8) = 0;
      v63 = (v51 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8));
      *v63 = 0;
      v63[1] = 0;
      v64 = *(v53 + 152);

      v64(sub_20BA64608, v51, v60, v53);

      [v61 bounds];
      if (v65 > 0.0)
      {
        v67 = v66;
        if (v66 > 0.0)
        {
          v68 = v65;
          v69 = v61;
          v70 = v129;
          v134 = ~v129;
          (*(v53 + 120))(0, v60, v53);
          v71 = v146;
          v72 = v131;
          v73 = v162;
          v132(v146, v131, v162);
          (*(v158 + 56))(v71, 0, 1, v73);
          (*(v53 + 16))(v71, v60, v53);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v74 = sub_20C13D5A4();
          [v69 setBackgroundColor_];

          (*(v53 + 176))(COERCE_DOUBLE(*&v68), COERCE_DOUBLE(*&v67), 0, v60, v53);
          v75 = swift_allocObject();
          v76 = v126;
          swift_unknownObjectWeakInit();
          v77 = v161;
          v78 = v72;
          v79 = v162;
          v132(v161, v78, v162);
          v80 = (v70 + 16) & v134;
          v81 = (v125 + v80) & 0xFFFFFFFFFFFFFFF8;
          v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
          v83 = swift_allocObject();
          v127(v83 + v80, v77, v79);
          *(v83 + v81) = v75;
          v84 = (v83 + v82);
          *v84 = v68;
          v84[1] = v67;
          v158 = v83;
          v85 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v85 = 0;
          v85[1] = 0;
          v132(v77, v131, v79);
          (*(v147 + 104))(v149, *MEMORY[0x277D542A8], v148);

          v86 = v154;
          sub_20C138A54();
          v87 = v76 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v88 = *(v87 + 8);
            v89 = swift_getObjectType();
            v90 = v150;
            (*(v88 + 8))(v76, v86, v89, v88);
            swift_unknownObjectRelease();
            v91 = v153;
            v92 = v130;
            if ((*(v153 + 48))(v90, 1, v130) != 1)
            {
              v93 = *(v91 + 32);
              v93(v145, v90, v92);
              v94 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v95 = v161;
              v96 = v162;
              v132(v161, v131, v162);
              v97 = (v129 + 40) & v134;
              v98 = v97 + v157;
              v99 = (v97 + v157) & 0xFFFFFFFFFFFFFFF8;
              v100 = swift_allocObject();
              *(v100 + 2) = v94;
              v100[3] = v68;
              v100[4] = v67;
              v127(v100 + v97, v95, v96);
              *(v100 + v98) = 0;
              v101 = v100 + v99;
              *(v101 + 1) = 0;
              *(v101 + 2) = 0;
              v102 = swift_allocObject();
              *(v102 + 16) = sub_20BA64654;
              *(v102 + 24) = v100;
              v103 = v139;
              v104 = v130;
              (*(v91 + 16))(v139, v145, v130);
              v105 = (*(v91 + 80) + 16) & ~*(v91 + 80);
              v106 = (v138 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
              v107 = swift_allocObject();
              v93((v107 + v105), v103, v104);
              v108 = (v107 + v106);
              *v108 = sub_20B5F67A4;
              v108[1] = v102;
              v109 = v158;
              v110 = v142;
              sub_20C137C94();
              v111 = swift_allocObject();
              *(v111 + 16) = sub_20BA64620;
              *(v111 + 24) = v109;
              v112 = swift_allocObject();
              *(v112 + 16) = sub_20BA64694;
              *(v112 + 24) = v111;
              v113 = v143;
              v114 = v141;
              v115 = v144;
              (*(v143 + 16))(v141, v110, v144);
              v116 = (*(v113 + 80) + 16) & ~*(v113 + 80);
              v117 = (v140 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
              v118 = swift_allocObject();
              (*(v113 + 32))(v118 + v116, v114, v115);
              v119 = (v118 + v117);
              *v119 = sub_20B5DF204;
              v119[1] = v112;

              v120 = v124;
              sub_20C137C94();
              v121 = *(v113 + 8);
              v121(v110, v115);
              v122 = sub_20C137CB4();
              v123 = swift_allocObject();
              *(v123 + 16) = 0;
              *(v123 + 24) = 0;
              v122(sub_20B52347C, v123);

              v121(v120, v115);
              (*(v91 + 8))(v145, v130);
              (*(v151 + 8))(v154, v152);
LABEL_11:
              [v165 setLineBreakMode_];
              [v164 setLineBreakMode_];
              return [v163 setLineBreakMode_];
            }
          }

          else
          {
            v90 = v150;
            (*(v153 + 56))(v150, 1, 1, v130);
          }

          sub_20B520158(v90, &unk_27C766670);
          sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);

          (*(v151 + 8))(v86, v152);
          goto LABEL_11;
        }
      }
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_20BA2F2C4(char *a1, double a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6)
{
  sub_20B51C88C(0, &qword_27C769700);
  sub_20BA646BC();
  sub_20C13CF74();
  v10 = *&a1[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_detailLabel];
  v11 = a5;
  v12 = a1;
  [v10 setAlpha_];
  v13 = sub_20C13CF64();

  v14.receiver = v12;
  v14.super_class = type metadata accessor for CatalogTipPlainView();
  objc_msgSendSuper2(&v14, *a6, v13, v11);
}

id CatalogTipPlainView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogTipPlainView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BA2F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, uint64_t), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = *(v149 + 152);

        sub_20B584050(v61);
        v148(sub_20BA6666C, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F160C(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA666B8;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA66684;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}