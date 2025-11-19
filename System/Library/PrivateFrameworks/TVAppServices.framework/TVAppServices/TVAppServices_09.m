void sub_26CCE2194(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26CCE0F1C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26CCE2D8C();
      goto LABEL_12;
    }

    sub_26CCE3EFC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_26CD3AA8C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_26CD3AA9C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26CD3B01C();
  __break(1u);
}

uint64_t sub_26CCE2304(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_26CD3A20C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26CCE1144(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26CCE2EDC(MEMORY[0x277CC95F0], &qword_2804BD8B0, &qword_26CD47730);
      goto LABEL_12;
    }

    sub_26CCE4110(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0]);
  v15 = sub_26CD3A52C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0]);
      v23 = sub_26CD3A56C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26CD3B01C();
  __break(1u);
  return result;
}

uint64_t sub_26CCE25CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_26CCE14A0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_26CCE3114();
      goto LABEL_23;
    }

    sub_26CCE442C(v6 + 1);
  }

  v8 = *v5;
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_26CD3B0FC();
  v11 = v8 & 1;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v15 = *(v5 + 24);
  v14 = *(v5 + 32);
  sub_26CD3B11C();
  v36 = v12;
  v16 = v13;
  sub_26CD3A54C();
  v17 = v15;
  v18 = v14;
  sub_26CD3A54C();
  result = sub_26CD3B13C();
  v19 = v9 + 56;
  v20 = -1 << *(v9 + 32);
  a2 = result & ~v20;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v9 + 48);
    while (1)
    {
      v23 = (v22 + 40 * a2);
      if (*v23 == v11)
      {
        v24 = v23[3];
        v25 = v23[4];
        v26 = v23[1] == v36 && v23[2] == v16;
        if (v26 || (result = sub_26CD3AFDC(), (result & 1) != 0))
        {
          if (v24 == v17 && v25 == v18)
          {
            break;
          }

          result = sub_26CD3AFDC();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v21;
      if (((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = sub_26CD3B01C();
    __break(1u);
  }

LABEL_23:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 40 * a2;
  v30 = *(v35 + 16);
  *v29 = *v35;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(v35 + 32);
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }

  return result;
}

void *sub_26CCE27DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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

void *sub_26CCE2938()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD888, &qword_26CD476E8);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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

void *sub_26CCE2A94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E0, &qword_26CD47788);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_26CC54820(v27, &v26);
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

void *sub_26CCE2C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D8, &qword_26CD47780);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 25);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 25) = v18;
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

id sub_26CCE2D8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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

void *sub_26CCE2EDC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_26CD3AC1C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
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

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
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

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_26CCE3114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAD8, &qword_26CD42890);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v19;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;
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

uint64_t sub_26CCE328C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  result = sub_26CD3AC2C();
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
      sub_26CD3B0FC();

      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

uint64_t sub_26CCE34C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26CD39E2C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD880, &unk_26CD476D8);
  v10 = sub_26CD3AC2C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918]);
      result = sub_26CD3A52C();
      v25 = -1 << *(v10 + 32);
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_26CCE37E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD888, &qword_26CD476E8);
  result = sub_26CD3AC2C();
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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
      *v14 = v20;
      v14[1] = v19;
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

unint64_t sub_26CCE3A18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E0, &qword_26CD47788);
  result = sub_26CD3AC2C();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
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
    v26 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v20 = (*(v3 + 48) + ((v17 | (v7 << 6)) << 6));
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[3];
      v30 = v20[2];
      v31 = v23;
      v28 = v22;
      v29 = v21;
      v24 = *(v6 + 40);
      sub_26CD3B0FC();
      sub_26CC54820(&v28, v27);
      sub_26CD3A54C();
      sub_26CD3A54C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      if (v31)
      {
        sub_26CD3B11C();
        sub_26CD3A54C();
      }

      else
      {
        sub_26CD3B11C();
      }

      MEMORY[0x26D6ADB10](*(&v31 + 1));
      sub_26CD3B13C();
      v12 = -1 << *(v6 + 32);
      result = sub_26CD3AB8C();
      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = (*(v6 + 48) + (result << 6));
      v15 = v30;
      v14 = v31;
      v16 = v29;
      *v13 = v28;
      v13[1] = v16;
      v13[2] = v15;
      v13[3] = v14;
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

        v2 = v25;
        goto LABEL_21;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26CCE3CA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D8, &qword_26CD47780);
  result = sub_26CD3AC2C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v33 = *(v19 + 25);
      v34 = *(v19 + 24);
      v23 = *(v6 + 40);
      sub_26CD3B0FC();

      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v34;
      *(v15 + 25) = v33;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_26CCE3EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
  result = sub_26CD3AC2C();
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
      result = sub_26CD3AA8C();
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

uint64_t sub_26CCE4110(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26CD3A20C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8B0, &qword_26CD47730);
  v10 = sub_26CD3AC2C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0]);
      result = sub_26CD3A52C();
      v25 = -1 << *(v10 + 32);
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_26CCE442C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAD8, &qword_26CD42890);
  result = sub_26CD3AC2C();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v33 = (v9 + 63) >> 6;
    v34 = v3;
    v12 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(v3 + 48) + 40 * (v15 | (v7 << 6));
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 16);
      v23 = *(v18 + 24);
      v22 = *(v18 + 32);
      v24 = *(v6 + 40);
      sub_26CD3B0FC();
      sub_26CD3B11C();

      sub_26CD3A54C();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      *v14 = v19;
      v11 = v35;
      *(v14 + 8) = v21;
      *(v14 + 16) = v20;
      *(v14 + 24) = v23;
      *(v14 + 32) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v33)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
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

uint64_t sub_26CCE46C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_26CD3A20C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_26CD3A52C();
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
      sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0]);
      v22 = sub_26CD3A56C();
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
      sub_26CCE2EDC(MEMORY[0x277CC95F0], &qword_2804BD8B0, &qword_26CD47730);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_26CCE4990(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_26CCE4990(int64_t a1)
{
  v3 = sub_26CD3A20C();
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

    v15 = sub_26CD3AB7C();
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
        sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0]);
        v27 = sub_26CD3A52C();
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

uint64_t sub_26CCE4C98(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_26CD39E2C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
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

uint64_t sub_26CCE4F3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
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
    v38 = a4 + 64;
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
      v24 = *(a4 + 56);
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

void *sub_26CCE51EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      v21 = *(v18 + 24);
      v22 = *(v18 + 32);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      *(v11 + 24) = v21;
      *(v11 + 32) = v22;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26CCE5374(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26CCE5468;

  return v6(v2 + 32);
}

uint64_t sub_26CCE5468()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

double sub_26CCE557C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_26CCE559C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC37110;

  return sub_26CCDB99C(a1, v4, v5, v6);
}

uint64_t sub_26CCE5658(uint64_t a1)
{
  v3 = *(sub_26CD3A20C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_26CCDC3F4(a1, v4, v5);
}

uint64_t sub_26CCE56CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_26CCE57F8()
{
  result = qword_2804BD878;
  if (!qword_2804BD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD878);
  }

  return result;
}

void sub_26CCE5874()
{
  sub_26CCE606C(319, qword_280BBA950, type metadata accessor for TimedMetadataVendor.PlaybackState);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_26CD3A44C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TimedMetadataVendor.loadTimedMetadataFetchParams()(uint64_t a1)
{
  v4 = *(*v1 + 512);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC246B8;

  return v8(a1);
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

uint64_t sub_26CCE5EC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26CCE5F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_26CCE5FBC()
{
  sub_26CCE606C(319, &qword_280BBB690, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_26CCE60C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CCE606C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26CD3AADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26CCE60C0()
{
  if (!qword_280BB9BF8)
  {
    v0 = sub_26CD3AADC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BB9BF8);
    }
  }
}

uint64_t sub_26CCE6110(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC37110;

  return sub_26CCE5374(a1, v5);
}

uint64_t sub_26CCE61C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC246B8;

  return sub_26CCE5374(a1, v5);
}

uint64_t sub_26CCE6280(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v10 = *a1;
  v11 = a1[2];
  v3 = a1[4];
  v14 = a1[5];
  v4 = a1[7];
  v12 = a1[6];
  v5 = type metadata accessor for TimedMetadataFetcher();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 64) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;

  sub_26CD3A43C();
  swift_beginAccess();
  *(v8 + 32) = v10;
  *(v8 + 40) = v1;
  swift_beginAccess();
  *(v8 + 48) = v11;
  *(v8 + 56) = v2;
  swift_beginAccess();
  *(v8 + 64) = v13;
  *(v8 + 72) = v14;
  *(v8 + 80) = v12;
  *(v8 + 88) = v4;
  return v8;
}

unint64_t sub_26CCE6400()
{
  result = qword_2804BD8A0;
  if (!qword_2804BD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD8A0);
  }

  return result;
}

uint64_t sub_26CCE6454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC37110;

  return sub_26CCDCBB0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = sub_26CD3A20C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CCE6608()
{
  v1 = *(sub_26CD3A20C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26CCDC7FC(v2, v3);
}

uint64_t sub_26CCE666C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26CCE66BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC37110;

  return sub_26CC6D5E4(a1, v5);
}

uint64_t sub_26CCE6774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TimedMetadataFetcher.__allocating_init(programID:adamID:contentID:playablePassThrough:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 64) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  sub_26CD3A43C();
  swift_beginAccess();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  swift_beginAccess();
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  swift_beginAccess();
  *(v17 + 64) = a5;
  *(v17 + 72) = a6;
  *(v17 + 80) = a7;
  *(v17 + 88) = a8;
  return v17;
}

uint64_t TimedMetadataFetcher.FetcherError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CCE69AC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_26CCE69E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26CCE6A48(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_26CCE6ADC;
}

void sub_26CCE6ADC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t sub_26CCE6B60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_26CCE6BC0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_26CCE6C0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_26CCE6CB0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 56);
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_26CCE6D10()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_26CCE6D5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_26CCE6E00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 72);
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;
}

uint64_t sub_26CCE6E60()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_26CCE6EAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_26CCE6F50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

uint64_t sub_26CCE6FB0()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t sub_26CCE6FE8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t TimedMetadataFetcher.init(programID:adamID:contentID:playablePassThrough:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 64) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  sub_26CD3A43C();
  swift_beginAccess();
  v15 = *(v8 + 40);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  swift_beginAccess();
  v16 = *(v8 + 56);
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;

  swift_beginAccess();
  v17 = *(v8 + 72);
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;

  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  return v8;
}

uint64_t sub_26CCE71CC(uint64_t a1, unint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = *(v3 + 96);
  if (v11)
  {
    v12 = *(v3 + 96);

    v13 = sub_26CD3A42C();
    v14 = sub_26CD3A99C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26CC14000, v13, v14, "Fetching TimedMetadata is already in progress", v15, 2u);
      MEMORY[0x26D6AE340](v15, -1, -1);
    }
  }

  else
  {
    v16 = sub_26CD3A86C();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    sub_26CD3A84C();
    sub_26CCC706C(a1, a2);

    v17 = v3;
    v18 = sub_26CD3A83C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;
    *(v19 + 48) = v3;
    *(v19 + 56) = a3;
    v11 = sub_26CD282D8(0, 0, v10, &unk_26CD479C8, v19);
    v21 = *(v3 + 96);
    *(v17 + 96) = v11;
  }

  return v11;
}

uint64_t sub_26CCE73C8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v7 + 416) = a2;
  *(v7 + 400) = a6;
  *(v7 + 408) = a7;
  *(v7 + 384) = a1;
  *(v7 + 392) = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = sub_26CD3A84C();
  *(v7 + 440) = sub_26CD3A83C();
  v9 = sub_26CD3A80C();
  *(v7 + 448) = v9;
  *(v7 + 456) = v10;
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CCE74D8, v9, v10);
}

uint64_t sub_26CCE74D8()
{
  v71 = v0;
  v70[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  if (v1 >> 60 == 15)
  {
    v3 = v2[11];
    if (v3)
    {
      v4 = v2[10];
      v5 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v5 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        v6 = v2[11];
        swift_bridgeObjectRetain_n();
        v7 = sub_26CD3A42C();
        v8 = sub_26CD3A99C();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v70[0] = v10;
          *v9 = 136315138;
          *(v9 + 4) = sub_26CCF188C(v4, v3, v70);
          _os_log_impl(&dword_26CC14000, v7, v8, "Fetching timedMetadata with playablePassThrough: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x26D6AE340](v10, -1, -1);
          MEMORY[0x26D6AE340](v9, -1, -1);
        }

        v11 = [objc_opt_self() sharedConnection];
        if (v11)
        {
          v14 = v11;
          v15 = [v11 effectiveBoolValueForSetting_];

          *(v0 + 128) = v4;
          *(v0 + 136) = v3;
          *(v0 + 144) = 0u;
          *(v0 + 160) = 0u;
          v16 = *(v0 + 144);
          *(v0 + 184) = *(v0 + 128);
          *(v0 + 568) = 0;
          *(v0 + 176) = 0;
          *(v0 + 177) = v15 != 2;
          *(v0 + 200) = v16;
          *(v0 + 216) = *(v0 + 160);
          *(v0 + 232) = *(v0 + 176);
          v17 = swift_task_alloc();
          *(v0 + 464) = v17;
          *v17 = v0;
          v17[1] = sub_26CCE7E18;
          v18 = *MEMORY[0x277D85DE8];
LABEL_10:

          return TimedMetadataRequest.response()();
        }

        __break(1u);
LABEL_49:
        __break(1u);
        return MEMORY[0x2822009F8](v11, v12, v13);
      }
    }

    swift_beginAccess();
    v32 = v2[7];
    if (v32)
    {
      v33 = v2[6];
      v34 = *(v0 + 408);
      swift_beginAccess();
      v35 = *(v34 + 40);
      if (v35)
      {
        v36 = *(v34 + 32);
        v37 = *(v0 + 408);
        swift_beginAccess();
        v38 = *(v37 + 72);
        if (v38)
        {
          v39 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v39 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            v40 = HIBYTE(v35) & 0xF;
            if ((v35 & 0x2000000000000000) == 0)
            {
              v40 = v36 & 0xFFFFFFFFFFFFLL;
            }

            if (v40)
            {
              v41 = HIBYTE(v38) & 0xF;
              if ((v38 & 0x2000000000000000) == 0)
              {
                v41 = *(v37 + 64) & 0xFFFFFFFFFFFFLL;
              }

              if (v41)
              {
                v69 = *(v37 + 64);
                v42 = *(v0 + 408);
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                v43 = sub_26CD3A42C();
                v44 = sub_26CD3A99C();

                if (os_log_type_enabled(v43, v44))
                {
                  v45 = swift_slowAlloc();
                  v46 = swift_slowAlloc();
                  v70[0] = v46;
                  *v45 = 136315650;
                  *(v45 + 4) = sub_26CCF188C(v33, v32, v70);
                  *(v45 + 12) = 2080;
                  *(v45 + 14) = sub_26CCF188C(v36, v35, v70);
                  *(v45 + 22) = 2080;
                  *(v45 + 24) = sub_26CCF188C(v69, v38, v70);
                  _os_log_impl(&dword_26CC14000, v43, v44, "Fetching timedMetadata with adamId: %s, programId: %s, contentID: %s", v45, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x26D6AE340](v46, -1, -1);
                  MEMORY[0x26D6AE340](v45, -1, -1);
                }

                v11 = [objc_opt_self() sharedConnection];
                if (v11)
                {
                  v47 = v11;
                  v48 = [v11 effectiveBoolValueForSetting_];

                  *(v0 + 16) = v33;
                  *(v0 + 24) = v32;
                  *(v0 + 32) = v69;
                  *(v0 + 40) = v38;
                  v49 = *(v0 + 32);
                  *(v0 + 72) = *(v0 + 16);
                  *(v0 + 560) = 1;
                  *(v0 + 48) = v36;
                  *(v0 + 56) = v35;
                  *(v0 + 64) = 1;
                  *(v0 + 65) = v48 != 2;
                  *(v0 + 88) = v49;
                  *(v0 + 104) = *(v0 + 48);
                  *(v0 + 120) = *(v0 + 64);
                  v50 = swift_task_alloc();
                  *(v0 + 496) = v50;
                  *v50 = v0;
                  v50[1] = sub_26CCE8268;
                  v51 = *MEMORY[0x277D85DE8];
                  goto LABEL_10;
                }

                goto LABEL_49;
              }
            }
          }
        }
      }
    }

    v52 = *(v0 + 440);
    v53 = *(v0 + 408);

    v54 = sub_26CD3A42C();
    v55 = sub_26CD3A98C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26CC14000, v54, v55, "Unable to fetch timed metadata because of missing params", v56, 2u);
      MEMORY[0x26D6AE340](v56, -1, -1);
    }

    sub_26CCECDC8();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sub_26CCAE954(*(v0 + 392), v1);
    v20 = sub_26CD3A42C();
    v21 = sub_26CD3A99C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26CC14000, v20, v21, "Parsing provided existing data; not retrieving", v22, 2u);
      MEMORY[0x26D6AE340](v22, -1, -1);
    }

    v24 = *(v0 + 392);
    v23 = *(v0 + 400);
    *(v0 + 536) = v23;
    *(v0 + 528) = v24;
    v25 = objc_opt_self();
    v26 = sub_26CD3A09C();
    *(v0 + 368) = 0;
    v27 = [v25 JSONObjectWithData:v26 options:2 error:v0 + 368];

    v28 = *(v0 + 368);
    if (v27)
    {
      v29 = v28;
      sub_26CD3AB3C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
      if (swift_dynamicCast())
      {
        v30 = *(v0 + 416);
        v31 = *(v0 + 376);
        type metadata accessor for TimedMetadataParser();
        *(v0 + 544) = sub_26CCD0F3C(v31, v30);

        v68 = *MEMORY[0x277D85DE8];
        v11 = sub_26CCE86BC;
        v12 = 0;
        v13 = 0;

        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v59 = *(v0 + 440);
      v60 = *(v0 + 408);

      v61 = sub_26CD3A42C();
      v62 = sub_26CD3A99C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_26CC14000, v61, v62, "Error parsing timed-metadata response", v63, 2u);
        MEMORY[0x26D6AE340](v63, -1, -1);
      }

      sub_26CC2E794();
      swift_allocError();
      *v64 = 3;
    }

    else
    {
      v57 = *(v0 + 440);
      v58 = v28;

      sub_26CD39F8C();
    }

    swift_willThrow();
    sub_26CC18C50(v24, v23);
  }

  v65 = *(v0 + 424);

  v66 = *(v0 + 8);
  v67 = *MEMORY[0x277D85DE8];

  return v66();
}

uint64_t sub_26CCE7E18(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 464);
  v14 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v8 = v6[56];
    v9 = v6[57];
    v10 = sub_26CCE89C0;
  }

  else
  {
    v6[60] = a2;
    v6[61] = a1;
    sub_26CCECE1C((v6 + 16));
    v8 = v6[56];
    v9 = v6[57];
    v10 = sub_26CCE7F7C;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_26CCE7F7C()
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  v3 = *(v0 + 59);
  *(v0 + 67) = v2;
  *(v0 + 66) = v1;
  v4 = objc_opt_self();
  v5 = sub_26CD3A09C();
  v0[46] = 0.0;
  v6 = [v4 JSONObjectWithData:v5 options:2 error:v0 + 46];

  v7 = *(v0 + 46);
  if (!v6)
  {
    v12 = *(v0 + 55);
    v13 = v7;

    sub_26CD39F8C();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = v7;
  sub_26CD3AB3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = *(v0 + 55);
    v15 = *(v0 + 51);

    v16 = sub_26CD3A42C();
    v17 = sub_26CD3A99C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26CC14000, v16, v17, "Error parsing timed-metadata response", v18, 2u);
      MEMORY[0x26D6AE340](v18, -1, -1);
    }

    sub_26CC2E794();
    swift_allocError();
    *v19 = 3;
    goto LABEL_9;
  }

  v9 = v0[52];
  v10 = *(v0 + 47);
  type metadata accessor for TimedMetadataParser();
  *(v0 + 68) = sub_26CCD0F3C(v10, v9);
  if (v3)
  {
    v11 = *(v0 + 55);

LABEL_10:
    sub_26CC18C50(v1, v2);
    v20 = *(v0 + 53);

    v21 = *(v0 + 1);
    v22 = *MEMORY[0x277D85DE8];

    return v21();
  }

  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CCE86BC, 0, 0);
}

uint64_t sub_26CCE8268(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 496);
  v14 = *v3;
  *(*v3 + 504) = v2;

  if (v2)
  {
    v8 = v6[56];
    v9 = v6[57];
    v10 = sub_26CCE8A60;
  }

  else
  {
    v6[64] = a2;
    v6[65] = a1;
    sub_26CCECE1C((v6 + 2));
    v8 = v6[56];
    v9 = v6[57];
    v10 = sub_26CCE83D0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_26CCE83D0()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 65);
  v2 = *(v0 + 63);
  v3 = *(v0 + 64);
  *(v0 + 67) = v3;
  *(v0 + 66) = v1;
  v4 = objc_opt_self();
  v5 = sub_26CD3A09C();
  v0[46] = 0.0;
  v6 = [v4 JSONObjectWithData:v5 options:2 error:v0 + 46];

  v7 = *(v0 + 46);
  if (!v6)
  {
    v12 = *(v0 + 55);
    v13 = v7;

    sub_26CD39F8C();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = v7;
  sub_26CD3AB3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = *(v0 + 55);
    v15 = *(v0 + 51);

    v16 = sub_26CD3A42C();
    v17 = sub_26CD3A99C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26CC14000, v16, v17, "Error parsing timed-metadata response", v18, 2u);
      MEMORY[0x26D6AE340](v18, -1, -1);
    }

    sub_26CC2E794();
    swift_allocError();
    *v19 = 3;
    goto LABEL_9;
  }

  v9 = v0[52];
  v10 = *(v0 + 47);
  type metadata accessor for TimedMetadataParser();
  *(v0 + 68) = sub_26CCD0F3C(v10, v9);
  if (v2)
  {
    v11 = *(v0 + 55);

LABEL_10:
    sub_26CC18C50(v1, v3);
    v20 = *(v0 + 53);

    v21 = *(v0 + 1);
    v22 = *MEMORY[0x277D85DE8];

    return v21();
  }

  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CCE86BC, 0, 0);
}

uint64_t sub_26CCE86BC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 432);
  *(v0 + 552) = sub_26CD3A83C();
  v2 = sub_26CD3A80C();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CCE877C, v2, v3);
}

uint64_t sub_26CCE877C()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[51];

  swift_beginAccess();
  v6 = *(v5 + 104);
  *(v5 + 104) = v2;

  v7 = sub_26CD3A86C();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);

  v8 = sub_26CD3A83C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v5;
  v9[5] = v2;
  sub_26CCD5E38(0, 0, v3, &unk_26CD479E0, v9);

  v11 = v0[56];
  v12 = v0[57];
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CCE88FC, v11, v12);
}

uint64_t sub_26CCE88FC()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[55];
  v5 = v0[53];
  v6 = v0[48];

  *v6 = v1;
  v6[1] = v3;
  v6[2] = v2;

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_26CCE89C0()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[55];

  sub_26CCECE1C((v0 + 16));
  v2 = v0[59];
  v3 = v0[53];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_26CCE8A60()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[55];

  sub_26CCECE1C((v0 + 2));
  v2 = v0[63];
  v3 = v0[53];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_26CCE8B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = sub_26CD3A84C();
  v5[9] = sub_26CD3A83C();
  v8 = sub_26CD3A80C();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_26CCE8BD4, v8, v7);
}

uint64_t sub_26CCE8BD4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = *(v0[5] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_26CCE8D64;

    return v12(ObjectType, v3);
  }

  else
  {
    v9 = v0[9];

    v10 = v0[7];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_26CCE8D64(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 112) = a1;

  swift_unknownObjectRelease();
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_26CCE8EB0, v6, v5);
}

uint64_t sub_26CCE8EB0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  if (v1 == 1)
  {
    v3 = *(v0 + 40) + OBJC_IVAR____TtC13TVAppServices20TimedMetadataFetcher_logger;
    v4 = sub_26CD3A42C();
    v5 = sub_26CD3A99C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26CC14000, v4, v5, "Fetching songs playlist state", v6, 2u);
      MEMORY[0x26D6AE340](v6, -1, -1);
    }

    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);

    v11 = sub_26CD3A86C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);

    v12 = sub_26CD3A83C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v9;
    v13[5] = v10;
    sub_26CCD5E38(0, 0, v7, &unk_26CD479E8, v13);
  }

  v15 = *(v0 + 56);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26CCE9060(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 40) = a3;
  sub_26CD3A84C();
  *(v4 + 72) = sub_26CD3A83C();
  v6 = sub_26CD3A80C();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x2822009F8](sub_26CCE9100, v6, v5);
}

uint64_t sub_26CCE9100()
{
  v1 = *(v0 + 64);
  v2 = sub_26CCE71CC(*(v0 + 48), *(v0 + 56), *(v0 + 40));
  *(v0 + 96) = v2;
  v3 = *(MEMORY[0x277D857C8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD898, &unk_26CD47710);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  *v4 = v0;
  v4[1] = sub_26CCE91F8;
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v2, v5, v6, v7);
}

uint64_t sub_26CCE91F8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = v0;

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_26CCE93DC;
  }

  else
  {
    v8 = sub_26CCE9350;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26CCE9350()
{
  v2 = v0[8];
  v1 = v0[9];

  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v2 + 96);
  *(v2 + 96) = 0;

  v7 = v0[1];

  return v7(v4, v3, v5);
}

uint64_t sub_26CCE93DC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_26CCE9440(uint64_t a1)
{
  *(v2 + 456) = a1;
  *(v2 + 464) = v1;
  return MEMORY[0x2822009F8](sub_26CCE9460, 0, 0);
}

uint64_t sub_26CCE9460()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    v3 = *(v2 + 16);

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = 0;
      v6 = v2 + 32;
      while (v5 < *(v2 + 16))
      {
        sub_26CC19A84(v6, v0 + 272);
        sub_26CC19A84(v0 + 272, v0 + 312);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
        if (swift_dynamicCast())
        {
          v7 = *(v0 + 96);
          *(v0 + 208) = *(v0 + 80);
          *(v0 + 224) = v7;
          *(v0 + 240) = *(v0 + 112);
          *(v0 + 251) = *(v0 + 123);
          v8 = *(v0 + 32);
          *(v0 + 144) = *(v0 + 16);
          *(v0 + 160) = v8;
          v9 = *(v0 + 64);
          *(v0 + 176) = *(v0 + 48);
          *(v0 + 192) = v9;
          sub_26CCE57A0(v0 + 144);
          sub_26CC2524C((v0 + 272), v0 + 352);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26CCEB2C0(0, *(v4 + 16) + 1, 1);
          }

          v11 = *(v4 + 16);
          v10 = *(v4 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_26CCEB2C0((v10 > 1), v11 + 1, 1);
          }

          *(v4 + 16) = v11 + 1;
          sub_26CC2524C((v0 + 352), v4 + 40 * v11 + 32);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 272));
        }

        ++v5;
        v6 += 40;
        if (v3 == v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_13:

    v12 = *(v4 + 16);
    if (v12)
    {
      v25 = MEMORY[0x277D84F90];
      sub_26CCEB1F8(0, v12, 0);
      v2 = v25;
      v13 = v4 + 32;
      do
      {
        sub_26CC19A84(v13, v0 + 392);
        v14 = *(v0 + 416);
        v15 = *(v0 + 424);
        __swift_project_boxed_opaque_existential_1((v0 + 392), v14);
        v16 = (*(v15 + 8))(v14, v15);
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_1((v0 + 392));
        v20 = *(v25 + 16);
        v19 = *(v25 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_26CCEB1F8((v19 > 1), v20 + 1, 1);
        }

        *(v25 + 16) = v20 + 1;
        v21 = v25 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }

    *(v0 + 472) = v2;
    if (*(v2 + 16))
    {
      if (qword_2804BBA18 == -1)
      {
LABEL_22:
        v22 = swift_task_alloc();
        *(v0 + 480) = v22;
        *v22 = v0;
        v22[1] = sub_26CCE9834;

        return sub_26CC59CD0(v2);
      }

LABEL_30:
      swift_once();
      goto LABEL_22;
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26CCE9834(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 480);
  v7 = *v3;
  v5[61] = a1;
  v5[62] = a2;
  v5[63] = v2;

  v8 = v4[59];

  if (v2)
  {
    v9 = sub_26CCE9BF0;
  }

  else
  {
    v9 = sub_26CCE9974;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26CCE9974()
{
  v13 = v0;
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[61];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = sub_26CCEBF44(v1, sub_26CCEB2E0);

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8F8, &unk_26CD477D8);
    v6 = sub_26CD3AD6C();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v12 = v6;
  sub_26CCEBAF0(v5, 1, &v12);
  if (v2)
  {

    return swift_unexpectedError();
  }

  else
  {
    v8 = v0[61];
    v9 = v0[62];
    v0[64] = v12;

    sub_26CD3A84C();
    v0[65] = sub_26CD3A83C();
    v11 = sub_26CD3A80C();

    return MEMORY[0x2822009F8](sub_26CCE9B04, v11, v10);
  }
}

uint64_t sub_26CCE9B04()
{
  v1 = v0[65];
  v2 = v0[64];
  v4 = v0[57];
  v3 = v0[58];

  sub_26CCEA590(v2, v4);

  return MEMORY[0x2822009F8](sub_26CCE9B90, 0, 0);
}

uint64_t sub_26CCE9B90()
{
  v1 = *(v0 + 456);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26CCE9BF0()
{
  v1 = v0[63];
  v2 = v0[58];
  v3 = v1;
  v4 = sub_26CD3A42C();
  v5 = sub_26CD3A98C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[63];
  v8 = v0[57];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26CC14000, v4, v5, "Error fetching Music data: %@", v9, 0xCu);
    sub_26CC1B544(v10, &qword_2804BD8B8, &qword_26CD477D0);
    MEMORY[0x26D6AE340](v10, -1, -1);
    MEMORY[0x26D6AE340](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_26CCE9D70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_26CD3A86C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_26CD3A84C();

  v9 = sub_26CD3A83C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = v2;
  sub_26CCD5E38(0, 0, v7, &unk_26CD477F0, v10);
}

uint64_t sub_26CCE9EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_26CD3A84C();
  v5[14] = sub_26CD3A83C();
  v7 = sub_26CD3A80C();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x2822009F8](sub_26CCE9F38, v7, v6);
}

uint64_t sub_26CCE9F38()
{
  v1 = v0[12];
  v2 = sub_26CCED4B8();
  v3 = 0;
  v4 = *(v2 + 2);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v0[17] = v5;
  v6 = &v2[128 * v3 + 72];
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 2))
    {
      __break(1u);
LABEL_20:
      swift_once();
LABEL_13:
      v13 = swift_task_alloc();
      v0[18] = v13;
      *v13 = v0;
      v13[1] = sub_26CCEA154;

      return sub_26CC5A38C((v0 + 2), v5);
    }

    v7 = v6 + 128;
    ++v3;
    v8 = *v6;
    v6 += 128;
    if (v8)
    {
      v9 = *(v7 - 17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_26CCBE3BC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_26CCBE3BC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  if (*(v5 + 2))
  {
    if (qword_2804BBA18 != -1)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v15 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26CCEA154()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 152) = v0;

  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_26CCEA420;
  }

  else
  {
    v8 = sub_26CCEA2AC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26CCEA2AC()
{
  v1 = v0[14];

  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  if (v2)
  {
    v8 = v0[8] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v0[12];
    v10 = v0[8];

    sub_26CCEFA7C(v11);
  }

  v12 = v0[13];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 24);
    if (v2)
    {

      sub_26CC5C050(v3, v2);
    }

    else
    {
      v3 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v3, v2, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26CC5C050(v3, v2);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_26CCEA420()
{
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];

  v4 = v1;
  v5 = sub_26CD3A42C();
  v6 = sub_26CD3A99C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26CC14000, v5, v6, "Error fetching songs playlist state: %@", v9, 0xCu);
    sub_26CC1B544(v10, &qword_2804BD8B8, &qword_26CD477D0);
    MEMORY[0x26D6AE340](v10, -1, -1);
    MEMORY[0x26D6AE340](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_26CCEA590(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = swift_beginAccess();
    v3 = *(a2 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;

      v6 = &qword_2804BCAA0;
      v24 = v2;
      do
      {
        sub_26CC19A84(v5, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(v6, &qword_26CD460E0);
        if (swift_dynamicCast())
        {
          v27[4] = v33;
          v27[5] = v34;
          v28[0] = v35[0];
          *(v28 + 11) = *(v35 + 11);
          v27[0] = v29;
          v27[1] = v30;
          v27[2] = v31;
          v27[3] = v32;
          v11 = v29;
          if (*(v2 + 16) && (v12 = sub_26CC181C4(*&v27[0], *(&v27[0] + 1)), (v13 & 1) != 0))
          {
            v14 = *(v2 + 56) + 136 * v12;
            v37[0] = *v14;
            v15 = *(v14 + 64);
            v17 = *(v14 + 16);
            v16 = *(v14 + 32);
            v37[3] = *(v14 + 48);
            v37[4] = v15;
            v37[1] = v17;
            v37[2] = v16;
            v19 = *(v14 + 96);
            v18 = *(v14 + 112);
            v20 = *(v14 + 80);
            v38 = *(v14 + 128);
            v37[6] = v19;
            v37[7] = v18;
            v37[5] = v20;
            sub_26CC1B4DC(v37, v26, &qword_2804BD918, &unk_26CD479A0);

            sub_26CCF4354(v11, *(&v11 + 1), 1, a2, v37);

            sub_26CCE57A0(v27);
            sub_26CC1B544(v37, &qword_2804BD918, &unk_26CD479A0);
          }

          else
          {
            v21 = v6;
            sub_26CCECBE0(v27, v26);
            v22 = sub_26CD3A42C();
            v23 = sub_26CD3A98C();
            sub_26CCE57A0(v27);
            if (os_log_type_enabled(v22, v23))
            {
              v7 = swift_slowAlloc();
              v8 = swift_slowAlloc();
              v26[0] = v8;
              *v7 = 136315138;

              sub_26CCE57A0(v27);
              v9 = sub_26CCF188C(v11, *(&v11 + 1), v26);

              *(v7 + 4) = v9;
              _os_log_impl(&dword_26CC14000, v22, v23, "TimedMetadataManager: song data is missing for adamId: %s", v7, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v8);
              v10 = v8;
              v2 = v24;
              MEMORY[0x26D6AE340](v10, -1, -1);
              MEMORY[0x26D6AE340](v7, -1, -1);
            }

            else
            {

              sub_26CCE57A0(v27);
            }

            v6 = v21;
          }
        }

        v5 += 40;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_26CCEA8B4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  sub_26CC19A84(a1, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    nullsub_1(&v72, v5);
  }

  else
  {
    sub_26CCECC3C(&v89);
    v76 = v93;
    v77 = v94;
    *v78 = v95[0];
    *&v78[11] = *(v95 + 11);
    v72 = v89;
    v73 = v90;
    v74 = v91;
    v75 = v92;
  }

  v69[4] = v76;
  v69[5] = v77;
  v70[0] = *v78;
  *(v70 + 11) = *&v78[11];
  v69[0] = v72;
  v69[1] = v73;
  v69[2] = v74;
  v69[3] = v75;
  if (sub_26CC28EA8(v69) != 1)
  {
    v6 = a2[7];
    v95[0] = a2[6];
    v95[1] = v6;
    v96 = *(a2 + 16);
    v7 = a2[3];
    v91 = a2[2];
    v92 = v7;
    v8 = a2[5];
    v93 = a2[4];
    v94 = v8;
    v9 = a2[1];
    v89 = *a2;
    v90 = v9;
    if (sub_26CC28EA8(&v89) == 1)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = v89;
    }

    *&v74 = v10;
    *(&v74 + 1) = v11;
  }

  v67[4] = v76;
  v67[5] = v77;
  v68[0] = *v78;
  *(v68 + 11) = *&v78[11];
  v67[0] = v72;
  v67[1] = v73;
  v67[2] = v74;
  v67[3] = v75;
  if (sub_26CC28EA8(v67) != 1)
  {
    v12 = a2[7];
    v86[6] = a2[6];
    v87 = v12;
    v88 = *(a2 + 16);
    v13 = a2[3];
    v86[2] = a2[2];
    v86[3] = v13;
    v14 = a2[5];
    v86[4] = a2[4];
    v86[5] = v14;
    v15 = a2[1];
    v86[0] = *a2;
    v86[1] = v15;
    if (sub_26CC28EA8(v86) == 1)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = *(&v87 + 1);
    }

    *&v77 = v16;
    *(&v77 + 1) = v17;
  }

  v65[4] = v76;
  v65[5] = v77;
  v66[0] = *v78;
  *(v66 + 11) = *&v78[11];
  v65[0] = v72;
  v65[1] = v73;
  v65[2] = v74;
  v65[3] = v75;
  if (sub_26CC28EA8(v65) != 1)
  {
    v18 = a2[7];
    v84[2] = a2[6];
    v84[3] = v18;
    v85 = *(a2 + 16);
    v19 = a2[3];
    v83[2] = a2[2];
    v83[3] = v19;
    v20 = a2[5];
    v84[0] = a2[4];
    v84[1] = v20;
    v21 = a2[1];
    v83[0] = *a2;
    v83[1] = v21;
    if (sub_26CC28EA8(v83) == 1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v97 = *(v84 + 8);
      v23 = *&v84[1];
      v22 = *(&v84[0] + 1);
      sub_26CCECC58(&v97, v79);
    }

    *&v78[8] = v22;
    *&v78[16] = v23;
  }

  v63[4] = v76;
  v63[5] = v77;
  v64[0] = *v78;
  *(v64 + 11) = *&v78[11];
  v63[0] = v72;
  v63[1] = v73;
  v63[2] = v74;
  v63[3] = v75;
  if (sub_26CC28EA8(v63) != 1)
  {
    v24 = a2[7];
    v80 = a2[6];
    v81 = v24;
    v82 = *(a2 + 16);
    v25 = a2[3];
    v79[2] = a2[2];
    v79[3] = v25;
    v26 = a2[5];
    v79[4] = a2[4];
    v79[5] = v26;
    v27 = a2[1];
    v79[0] = *a2;
    v79[1] = v27;
    if (sub_26CC28EA8(v79) == 1)
    {
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v28 = *(&v80 + 1);
    }

    *&v76 = v28;
    *(&v76 + 1) = v29;
  }

  v61[4] = v76;
  v61[5] = v77;
  v62[0] = *v78;
  *(v62 + 11) = *&v78[11];
  v61[0] = v72;
  v61[1] = v73;
  v61[2] = v74;
  v61[3] = v75;
  if (sub_26CC28EA8(v61) != 1)
  {
    v78[0] = 0;
  }

  v30 = sub_26CD3A42C();
  v31 = sub_26CD3A99C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44[0] = v33;
    *v32 = 136315138;
    swift_beginAccess();
    v58 = v76;
    v59 = v77;
    v60[0] = *v78;
    *(v60 + 11) = *&v78[11];
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v57 = v75;
    v51 = v76;
    v52 = v77;
    v53[0] = *v78;
    *(v53 + 11) = *&v78[11];
    v47 = v72;
    v48 = v73;
    v49 = v74;
    v50 = v75;
    sub_26CC1B4DC(&v54, v45, &qword_2804BD870, &unk_26CD47430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD870, &unk_26CD47430);
    v34 = sub_26CD3A5FC();
    v36 = sub_26CCF188C(v34, v35, v44);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_26CC14000, v30, v31, "%s was hydrated successfully", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x26D6AE340](v33, -1, -1);
    MEMORY[0x26D6AE340](v32, -1, -1);
  }

  swift_beginAccess();
  v51 = v76;
  v52 = v77;
  v53[0] = *v78;
  *(v53 + 11) = *&v78[11];
  v47 = v72;
  v48 = v73;
  v49 = v74;
  v50 = v75;
  v54 = v72;
  v55 = v73;
  v56 = v74;
  v57 = v75;
  v58 = v76;
  v59 = v77;
  v60[0] = *v78;
  *(v60 + 11) = *&v78[11];
  if (sub_26CC28EA8(&v54) == 1)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v37 = swift_allocObject();
    v40 = v59;
    v37[5] = v58;
    v37[6] = v40;
    v37[7] = v60[0];
    *(v37 + 123) = *(v60 + 11);
    v41 = v55;
    v37[1] = v54;
    v37[2] = v41;
    v42 = v57;
    v37[3] = v56;
    v37[4] = v42;
    v39 = &protocol witness table for TimedMetadata.SongEntity;
    v38 = &type metadata for TimedMetadata.SongEntity;
  }

  *a3 = v37;
  a3[3] = v38;
  a3[4] = v39;
  v45[4] = v76;
  v45[5] = v77;
  v46[0] = *v78;
  *(v46 + 11) = *&v78[11];
  v45[0] = v72;
  v45[1] = v73;
  v45[2] = v74;
  v45[3] = v75;
  sub_26CC1B4DC(&v47, v44, &qword_2804BD870, &unk_26CD47430);
  return sub_26CC1B544(v45, &qword_2804BD870, &unk_26CD47430);
}

char *TimedMetadataFetcher.deinit()
{
  sub_26CC7BC78((v0 + 16));
  v1 = *(v0 + 5);

  v2 = *(v0 + 7);

  v3 = *(v0 + 9);

  v4 = *(v0 + 11);

  v5 = *(v0 + 12);

  v6 = *(v0 + 13);

  v7 = OBJC_IVAR____TtC13TVAppServices20TimedMetadataFetcher_logger;
  v8 = sub_26CD3A44C();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t TimedMetadataFetcher.__deallocating_deinit()
{
  TimedMetadataFetcher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26CCEAFB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4[2] && (v7 = *(a5 + 16)) != 0)
  {
    v8 = a4[4];
    v9 = a4[5];
    v10 = (a5 + 32);
    while (1)
    {
      v11 = v10[7];
      v40 = v10[6];
      v41 = v11;
      v42 = *(v10 + 16);
      v12 = v10[1];
      v34 = *v10;
      v35 = v12;
      v13 = v10[3];
      v36 = v10[2];
      v37 = v13;
      v14 = v10[5];
      v38 = v10[4];
      v39 = v14;
      if (v34 == v8 && *(&v34 + 1) == v9)
      {
        break;
      }

      if (sub_26CD3AFDC())
      {
        break;
      }

      v10 = (v10 + 136);
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v31 = v40;
    v32 = v41;
    v33 = v42;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v25 = v34;
    v26 = v35;
    nullsub_1(&v25, v35);
    v19 = v32;
    *(a1 + 96) = v31;
    *(a1 + 112) = v19;
    *(a1 + 128) = v33;
    v20 = v28;
    *(a1 + 32) = v27;
    *(a1 + 48) = v20;
    v21 = v30;
    *(a1 + 64) = v29;
    *(a1 + 80) = v21;
    v22 = v26;
    *a1 = v25;
    *(a1 + 16) = v22;
    sub_26CC5E7F4(&v34, v24);
  }

  else
  {
LABEL_8:
    sub_26CCECCD4(&v34);
    v15 = v41;
    *(a1 + 96) = v40;
    *(a1 + 112) = v15;
    *(a1 + 128) = v42;
    v16 = v37;
    *(a1 + 32) = v36;
    *(a1 + 48) = v16;
    v17 = v39;
    *(a1 + 64) = v38;
    *(a1 + 80) = v17;
    v18 = v35;
    *a1 = v34;
    *(a1 + 16) = v18;
  }

  return a2;
}

uint64_t sub_26CCEB124(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_26CCEB184(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_26CCEB1F8(char *a1, int64_t a2, char a3)
{
  result = sub_26CCEB328(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26CCEB218(size_t a1, int64_t a2, char a3)
{
  result = sub_26CCEB538(a1, a2, a3, *v3, &qword_2804BC630, &unk_26CD454C0, MEMORY[0x277CC8918]);
  *v3 = result;
  return result;
}

char *sub_26CCEB25C(char *a1, int64_t a2, char a3)
{
  result = sub_26CCEB434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26CCEB27C(size_t a1, int64_t a2, char a3)
{
  result = sub_26CCEB538(a1, a2, a3, *v3, &qword_2804BD580, &qword_26CD46160, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
  *v3 = result;
  return result;
}

void *sub_26CCEB2C0(void *a1, int64_t a2, char a3)
{
  result = sub_26CCEB714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26CCEB2E8(void *a1, int64_t a2, char a3)
{
  result = sub_26CCEB85C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26CCEB308(void *a1, int64_t a2, char a3)
{
  result = sub_26CCEB9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26CCEB328(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_26CCEB434(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD938, &unk_26CD479F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

size_t sub_26CCEB538(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_26CCEB714(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD508, &qword_26CD47B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26CCEB85C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD928, &qword_26CD479B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 152 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD920, &qword_26CD479B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26CCEB9AC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC358, &unk_26CD454D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26CCEBAF0(uint64_t a1, char a2, uint64_t *a3)
{
  v74 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v43 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  sub_26CCECCB4(&v54);
  v70 = v60;
  v71 = v61;
  v72 = v62;
  v73 = v63;
  v66 = v56;
  v67 = v57;
  v68 = v58;
  v69 = v59;
  v4 = v5;
  v64 = v54;
  v65 = v55;
  while (1)
  {
    v60 = v70;
    v61 = v71;
    v62 = v72;
    v63 = v73;
    v56 = v66;
    v57 = v67;
    v58 = v68;
    v59 = v69;
    v54 = v64;
    v55 = v65;
    if (sub_26CC28EA8(&v54) == 1)
    {

      return;
    }

    v15 = v5;
    v16 = *(&v64 + 1);
    v17 = v64;
    v51 = v71;
    v52 = v72;
    v53 = v73;
    v47 = v67;
    v48 = v68;
    v49 = v69;
    v50 = v70;
    v45 = v65;
    v46 = v66;
    v18 = *v74;
    v20 = sub_26CC181C4(v64, *(&v64 + 1));
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_26CD3B02C();
      __break(1u);
      goto LABEL_26;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_26CD378A4();
      if (v24)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v29 = *v74;
    v29[(v20 >> 6) + 8] |= 1 << v20;
    v30 = (v29[6] + 16 * v20);
    *v30 = v17;
    v30[1] = v16;
    v31 = v29[7] + 136 * v20;
    *v31 = v45;
    v32 = v46;
    v33 = v47;
    v34 = v49;
    *(v31 + 48) = v48;
    *(v31 + 64) = v34;
    *(v31 + 16) = v32;
    *(v31 + 32) = v33;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    *(v31 + 128) = v53;
    *(v31 + 96) = v36;
    *(v31 + 112) = v37;
    *(v31 + 80) = v35;
    v38 = v29[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_22;
    }

    v29[2] = v40;
    a2 = 1;
    v5 = v15;
    if (v4 == v15)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v6 = (v43 + 152 * v4);
    v7 = v6[7];
    v8 = v6[5];
    v60 = v6[6];
    v61 = v7;
    v9 = v6[7];
    v62 = v6[8];
    v10 = v6[3];
    v11 = v6[1];
    v56 = v6[2];
    v57 = v10;
    v12 = v6[3];
    v13 = v6[5];
    v58 = v6[4];
    v59 = v13;
    v14 = v6[1];
    v54 = *v6;
    v55 = v14;
    v70 = v60;
    v71 = v9;
    v72 = v6[8];
    v66 = v56;
    v67 = v12;
    v68 = v58;
    v69 = v8;
    v63 = *(v6 + 18);
    v73 = *(v6 + 18);
    ++v4;
    v64 = v54;
    v65 = v11;
    nullsub_1(&v64, v72);
    sub_26CC1B4DC(&v54, &v45, &qword_2804BD920, &qword_26CD479B0);
  }

  v25 = v74;
  sub_26CD35B48(v23, a2 & 1);
  v26 = *v25;
  v27 = sub_26CC181C4(v17, v16);
  if ((v24 & 1) != (v28 & 1))
  {
    goto LABEL_25;
  }

  v20 = v27;
  if ((v24 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v41 = swift_allocError();
  swift_willThrow();

  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26CC1B544(&v45, &qword_2804BD918, &unk_26CD479A0);

    return;
  }

LABEL_26:
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD00000000000001BLL, 0x800000026CD517E0);
  sub_26CD3AD1C();
  MEMORY[0x26D6AD060](39, 0xE100000000000000);
  sub_26CD3AD2C();
  __break(1u);
}

uint64_t sub_26CCEBF44(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v56 = MEMORY[0x277D84F90];
    sub_26CCEB2E8(0, v2, 0);
    v4 = -1 << *(v3 + 32);
    v41 = v3 + 64;
    v42 = v56;
    result = sub_26CD3AB6C();
    if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v57 = *(v3 + 36);
      v37 = v3 + 72;
      v38 = v2;
      v7 = 1;
      while (1)
      {
        v8 = v6 >> 6;
        if ((*(v41 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        if (v57 != *(v3 + 36))
        {
          goto LABEL_28;
        }

        v40 = v7;
        v9 = (*(v3 + 48) + 16 * v6);
        v10 = *v9;
        v11 = v9[1];
        v12 = *(*(v3 + 56) + 8 * v6);

        v13 = a2(v44, v10, v11, v12);
        v14 = v3;
        v16 = v15;

        *&v43 = v13;
        *(&v43 + 1) = v16;
        v50 = v44[3];
        v51 = v44[4];
        v48 = v44[1];
        v49 = v44[2];
        v53 = v44[6];
        v54 = v44[7];
        v52 = v44[5];
        v46 = v43;
        v47 = v44[0];
        v55 = v45;
        v17 = v42;
        v19 = *(v42 + 16);
        v18 = *(v42 + 24);
        v56 = v42;
        if (v19 >= v18 >> 1)
        {
          result = sub_26CCEB2E8((v18 > 1), v19 + 1, 1);
          v17 = v56;
        }

        *(v17 + 16) = v19 + 1;
        v42 = v17;
        v20 = v17 + 152 * v19;
        v21 = v47;
        *(v20 + 32) = v46;
        *(v20 + 48) = v21;
        v22 = v48;
        v23 = v49;
        v24 = v51;
        *(v20 + 96) = v50;
        *(v20 + 112) = v24;
        *(v20 + 64) = v22;
        *(v20 + 80) = v23;
        v25 = v52;
        v26 = v53;
        v27 = v54;
        *(v20 + 176) = v55;
        *(v20 + 144) = v26;
        *(v20 + 160) = v27;
        *(v20 + 128) = v25;
        v28 = 1 << *(v14 + 32);
        if (v6 >= v28)
        {
          goto LABEL_29;
        }

        v29 = *(v41 + 8 * v8);
        if ((v29 & (1 << v6)) == 0)
        {
          goto LABEL_30;
        }

        v3 = v14;
        if (v57 != *(v14 + 36))
        {
          goto LABEL_31;
        }

        v30 = v29 & (-2 << (v6 & 0x3F));
        if (v30)
        {
          v6 = __clz(__rbit64(v30)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v31 = v38;
        }

        else
        {
          v32 = v8 << 6;
          v33 = v8 + 1;
          v31 = v38;
          v34 = (v37 + 8 * v8);
          while (v33 < (v28 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              result = sub_26CC2FADC(v6, v57, 0);
              v6 = __clz(__rbit64(v35)) + v32;
              goto LABEL_19;
            }
          }

          result = sub_26CC2FADC(v6, v57, 0);
          v6 = v28;
        }

LABEL_19:
        if (v40 == v31)
        {
          return v42;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          v7 = v40 + 1;
          if (v6 < 1 << *(v3 + 32))
          {
            continue;
          }
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_26CCEC278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC37110;

  return sub_26CCE9EA0(a1, v4, v5, v7, v6);
}

unint64_t sub_26CCEC33C()
{
  result = qword_2804BD900;
  if (!qword_2804BD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD900);
  }

  return result;
}

uint64_t dispatch thunk of TimedMetadataFetcherDelegate.isUserSubscribedToMusic()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC16C10;

  return v9(a1, a2);
}

uint64_t type metadata accessor for TimedMetadataFetcher()
{
  result = qword_2804BD908;
  if (!qword_2804BD908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CCEC510()
{
  result = sub_26CD3A44C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TimedMetadataFetcher.fetchTimedMetadata(startTimeOffset:existingData:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *(*v3 + 312);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26CCEC968;
  v11.n128_f64[0] = a3;

  return v13(a1, a2, v11);
}

uint64_t sub_26CCEC968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t dispatch thunk of TimedMetadataFetcher.hydrateMetadata(timedMetadata:)(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC37110;

  return v8(a1);
}

double sub_26CCECC3C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 107) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_26CCECCB4(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_26CCECCD4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26CCECCF0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26CC246B8;

  return sub_26CCE73C8(a1, v9, v4, v5, v6, v7, v8);
}

unint64_t sub_26CCECDC8()
{
  result = qword_2804BD930;
  if (!qword_2804BD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD930);
  }

  return result;
}

uint64_t sub_26CCECE70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC246B8;

  return sub_26CCE8B00(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void __swiftcall TimedMetadata.SmoothingConfig.init()(TVAppServices::TimedMetadata::SmoothingConfig *__return_ptr retstr)
{
  *&retstr->visualSmoothingConfig.initialLookBack = xmmword_26CD47390;
  *&retstr->visualSmoothingConfig.lookAhead = xmmword_26CD473A0;
  retstr->audioSmoothingConfig.durationToRetainAudioEntity = 60.0;
}

uint64_t sub_26CCECF9C()
{
  result = sub_26CD3A59C();
  qword_2804BD940 = result;
  return result;
}

uint64_t sub_26CCECFF8()
{
  result = sub_26CD3A59C();
  qword_2804BD948 = result;
  return result;
}

uint64_t sub_26CCED054()
{
  result = sub_26CD3A59C();
  qword_280BB9BB8 = result;
  return result;
}

TVAppServices::TimedMetadata::VisualSmoothingConfig __swiftcall TimedMetadata.VisualSmoothingConfig.init()()
{
  v1 = 5.0;
  v2 = 8.0;
  *v0 = xmmword_26CD47390;
  v0[1] = xmmword_26CD473A0;
  result.initialLookAhead = v2;
  result.initialLookBack = v1;
  return result;
}

__n128 TimedMetadata.SmoothingConfig.visualSmoothingConfig.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 TimedMetadata.SmoothingConfig.visualSmoothingConfig.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

double TimedMetadata.SmoothingConfig.audioSmoothingConfig.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

double TimedMetadata.SmoothingConfig.audioSmoothingConfig.setter(double *a1)
{
  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

uint64_t sub_26CCED284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_26CCED2E4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

char *TimedMetadata.deinit()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 9);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 2);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  v11 = *(v0 + 8);
  swift_unknownObjectRelease();
  v12 = *(v0 + 9);
  swift_unknownObjectRelease();
  v13 = OBJC_IVAR____TtC13TVAppServices13TimedMetadata_logger;
  v14 = sub_26CD3A44C();
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  return v0;
}

uint64_t TimedMetadata.__deallocating_deinit()
{
  TimedMetadata.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_26CCED4B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1 + 32;

  v4 = v2 - 1;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_26CC19A84(v3, v40);
    sub_26CC2524C(v40, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
    if (swift_dynamicCast())
    {
      nullsub_1(&v33, v6);
    }

    else
    {
      sub_26CCECC3C(&v25);
      v37 = v29;
      v38 = v30;
      v39[0] = v31[0];
      *(v39 + 11) = *(v31 + 11);
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v28;
    }

    v29 = v37;
    v30 = v38;
    v31[0] = v39[0];
    *(v31 + 11) = *(v39 + 11);
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    if (sub_26CC28EA8(&v25) != 1)
    {
      break;
    }

    v22 = v37;
    v23 = v38;
    v24[0] = v39[0];
    *(v24 + 11) = *(v39 + 11);
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    sub_26CC1B544(&v18, &qword_2804BD870, &unk_26CD47430);
    if (!v4)
    {
      goto LABEL_15;
    }

LABEL_14:
    --v4;
    v3 += 40;
  }

  v22 = v37;
  v23 = v38;
  v24[0] = v39[0];
  *(v24 + 11) = *(v39 + 11);
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_26CCBF2F0(0, *(v5 + 2) + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_26CCBF2F0((v7 > 1), v8 + 1, 1, v5);
  }

  v15 = v22;
  v16 = v23;
  *v17 = v24[0];
  *&v17[11] = *(v24 + 11);
  v13 = v20;
  v14 = v21;
  v9 = v18;
  v12 = v19;
  *(v5 + 2) = v8 + 1;
  v10 = &v5[128 * v8];
  *(v10 + 4) = v13;
  *(v10 + 5) = v14;
  *(v10 + 3) = v12;
  *(v10 + 139) = *&v17[11];
  *(v10 + 7) = v16;
  *(v10 + 8) = *v17;
  *(v10 + 6) = v15;
  *(v10 + 2) = v9;
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

uint64_t sub_26CCED758@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>)
{
  v7 = v6;
  v13 = *(a1 + 2);
  v59 = *a1;
  *&v60 = v13;
  v14 = a4[5];
  v93 = a4[4];
  v94 = v14;
  v15 = a4[7];
  v95 = a4[6];
  v96 = v15;
  v16 = a4[1];
  v89 = *a4;
  v90 = v16;
  v17 = a4[3];
  v91 = a4[2];
  v92 = v17;
  if (sub_26CCE56CC(&v89) == 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  else
  {
    v47 = v89;
    v19 = *(&v90 + 1);
    v18 = v90;

    v20 = v47;
  }

  v66 = v20;
  *&v67 = v18;
  *(&v67 + 1) = v19;
  sub_26CCEDB2C(&v81, &v73, &v59, &v66, a6);

  v46 = v74;
  v48 = v82;
  v44 = v73;
  v45 = v81;
  result = swift_bridgeObjectRelease_n();
  if (!a3)
  {
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    goto LABEL_21;
  }

  v22 = *(v7 + 48);
  if (!*(v22 + 16))
  {
LABEL_18:
    v38 = 0uLL;
    v39 = 0uLL;
    v37 = 0uLL;
    v36 = 0uLL;
    goto LABEL_21;
  }

  v23 = *(v7 + 48);

  v24 = sub_26CC181C4(a2, a3);
  if ((v25 & 1) == 0)
  {

    goto LABEL_18;
  }

  v26 = *(*(v22 + 56) + 8 * v24);

  v27 = sub_26CCEE6B4(&v81, v26, a6);

  v42 = v82;
  v43 = v81;
  v28 = *(&v82 + 1);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRelease_n();
  if (v28)
  {
    v29 = *(v28 + 16);

    if (v29)
    {
      goto LABEL_20;
    }
  }

  v30 = a4[5];
  v85 = a4[4];
  v86 = v30;
  v31 = a4[7];
  v87 = a4[6];
  v88 = v31;
  v32 = a4[1];
  v81 = *a4;
  v82 = v32;
  v33 = a4[3];
  v83 = a4[2];
  v84 = v33;
  result = sub_26CCE56CC(&v81);
  if (result == 1)
  {
    goto LABEL_20;
  }

  if (!*(&v88 + 1))
  {
    goto LABEL_20;
  }

  if (!*(*(&v88 + 1) + 16))
  {
    goto LABEL_20;
  }

  sub_26CC19A84(*(&v88 + 1) + 32, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_20;
  }

  v70 = v77;
  v71 = v78;
  v72[0] = v79[0];
  *(v72 + 11) = *(v79 + 11);
  v66 = v73;
  v67 = v74;
  v68 = v75;
  v69 = v76;
  v34 = *(&v75 + 1);
  if (!*(&v75 + 1))
  {
    result = sub_26CCE57A0(&v66);
    goto LABEL_20;
  }

  v35 = v68;

  sub_26CCE57A0(&v66);
  sub_26CCF0D84(v35, v34, &v50);

  v57[4] = v54;
  v57[5] = v55;
  v58[0] = v56[0];
  *(v58 + 11) = *(v56 + 11);
  v57[0] = v50;
  v57[1] = v51;
  v57[2] = v52;
  v57[3] = v53;
  v59 = v50;
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v65[0] = v56[0];
  *(v65 + 11) = *(v56 + 11);
  result = sub_26CC28EA8(&v59);
  if (result == 1)
  {
LABEL_20:
    v39 = v42;
    v38 = v43;
    v37 = v42;
    v36 = v43;
    goto LABEL_21;
  }

  v54 = v63;
  v55 = v64;
  v56[0] = v65[0];
  *(v56 + 11) = *(v65 + 11);
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  sub_26CCF0FF0(&v50, a2, a3, v27, v49, a6);
  sub_26CC1B544(v57, &qword_2804BD870, &unk_26CD47430);
  v40 = v49[1];
  v41 = v49[0];

  v37 = v42;
  v36 = v43;
  v39 = v40;
  v38 = v41;
LABEL_21:
  *a5 = v45;
  a5[1] = v48;
  a5[2] = v44;
  a5[3] = v46;
  a5[4] = v36;
  a5[5] = v37;
  a5[6] = v38;
  a5[7] = v39;
  return result;
}

__n128 sub_26CCEDB20(uint64_t a1)
{
  result = *(a1 + 24);
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_26CCEDB2C(double *a1, double *a2, double *a3, uint64_t a4, double a5)
{
  v98 = a1;
  v99 = a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v97 = *(a4 + 24);
  v9 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  v131 = MEMORY[0x277D84F90];
  v10 = v5[5];
  v11 = *(v10 + 16);
  if (!v11)
  {
    v109 = 0.0;
    v86 = 0.0;
    v18 = 0.0;
    v89 = 0;
    v88 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
    goto LABEL_91;
  }

  v13 = v10 + 32;
  v14 = v5[5];

  result = swift_beginAccess();
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v105 = 0;
  v19 = 0;
  v110 = 0;
  v111 = xmmword_26CD3C1E0;
  v103 = v10;
  v104 = v5;
  v101 = v10 + 32;
  v102 = v11;
  while (1)
  {
    if (v19 >= *(v10 + 16))
    {
      goto LABEL_99;
    }

    v20 = v13 + 32 * v19;
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v108 = v17;
    v109 = v16;
    v107 = v18;
    if (v21 <= 0.0 || v7 <= 0.0)
    {
LABEL_56:

      if (v22 > a5)
      {
        goto LABEL_3;
      }

      goto LABEL_57;
    }

    if (v22 != v6)
    {
      if (v22 >= v6)
      {
        if (v22 >= v8)
        {
          goto LABEL_56;
        }
      }

      else if (v6 >= v23)
      {
        goto LABEL_56;
      }
    }

    v106 = v19;
    v25 = v5[2];
    v26 = *(v25 + 16);
    v112 = v24;

    if (v26)
    {
      break;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_24:

    v38 = *(v29 + 16);
    if (v38)
    {
      v39 = 0;
      v40 = v29 + 32;
      v41 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v39 >= *(v29 + 16))
        {
          goto LABEL_98;
        }

        sub_26CC19A84(v40, v128);
        sub_26CC19A84(v128, v127);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
        if (swift_dynamicCast())
        {
          v117 = v124;
          v118 = v125;
          v119[0] = v126[0];
          v119[1] = v126[1];
          v113 = v120;
          v114 = v121;
          v115 = v122;
          v116 = v123;
          v42 = v122;

          sub_26CCF4618(&v113);
          if (v42)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_26CC19A84(v128, v127);
          if (swift_dynamicCast())
          {
            v117 = v124;
            v118 = v125;
            v119[0] = v126[0];
            *(v119 + 11) = *(v126 + 11);
            v113 = v120;
            v114 = v121;
            v115 = v122;
            v116 = v123;
            if (*(&v124 + 1))
            {
              v43 = *&v119[1];

              sub_26CCE57A0(&v113);
              if (v43)
              {
LABEL_36:

                sub_26CC2524C(v128, &v120);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v129 = v41;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_26CCEB2C0(0, *(v41 + 16) + 1, 1);
                  v41 = v129;
                }

                v46 = *(v41 + 16);
                v45 = *(v41 + 24);
                if (v46 >= v45 >> 1)
                {
                  sub_26CCEB2C0((v45 > 1), v46 + 1, 1);
                  v41 = v129;
                }

                *(v41 + 16) = v46 + 1;
                result = sub_26CC2524C(&v120, v41 + 40 * v46 + 32);
                goto LABEL_28;
              }
            }

            else
            {
              sub_26CCE57A0(&v113);
            }
          }
        }

        result = __swift_destroy_boxed_opaque_existential_1(v128);
LABEL_28:
        ++v39;
        v40 += 40;
        if (v38 == v39)
        {
          goto LABEL_42;
        }
      }
    }

    v41 = MEMORY[0x277D84F90];
LABEL_42:

    v47 = v41;
    v48 = *(v41 + 16);
    v100 = v47;
    if (v48)
    {
      v49 = v47 + 32;
      v50 = MEMORY[0x277D84F90];
      do
      {
        sub_26CC19A84(v49, &v120);
        v51 = v130;
        v52 = *(&v121 + 1);
        v53 = v122;
        __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
        v54 = *(v53 + 8);

        *&v113 = v54(v52, v53);
        *(&v113 + 1) = v55;
        MEMORY[0x28223BE20](v113);
        v96[2] = &v113;
        v56 = v110;
        LOBYTE(v52) = sub_26CCF175C(sub_26CC1CAA4, v96, v51);

        v110 = v56;
        if (v52)
        {
          __swift_destroy_boxed_opaque_existential_1(&v120);
        }

        else
        {
          sub_26CC2524C(&v120, &v113);
          v57 = swift_isUniquelyReferenced_nonNull_native();
          *&v128[0] = v50;
          if ((v57 & 1) == 0)
          {
            sub_26CCEB2C0(0, v50[2] + 1, 1);
            v50 = *&v128[0];
          }

          v59 = v50[2];
          v58 = v50[3];
          if (v59 >= v58 >> 1)
          {
            sub_26CCEB2C0((v58 > 1), v59 + 1, 1);
            v50 = *&v128[0];
          }

          v50[2] = v59 + 1;
          sub_26CC2524C(&v113, &v50[5 * v59 + 4]);
        }

        v49 += 40;
        --v48;
      }

      while (v48);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v60 = v112;

    sub_26CC78010(v61);
    v62 = v50;
    v24 = v60;
    sub_26CC78104(v62);
    v10 = v103;
    v5 = v104;
    v13 = v101;
    v11 = v102;
    v19 = v106;
    if (v22 > a5)
    {
      goto LABEL_3;
    }

LABEL_57:
    if (v23 > a5)
    {
      v112 = v24;
      v106 = v19;

      v63 = v5[2];
      v64 = *(v63 + 16);

      if (v64)
      {
        v65 = 0;
        v66 = v63 + 32;
        v67 = MEMORY[0x277D84F90];
        while (v65 < *(v63 + 16))
        {
          sub_26CC19A84(v66, &v120);
          *&v113 = v112;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
          v68 = swift_allocObject();
          *(v68 + 16) = v111;
          v69 = *(&v121 + 1);
          v70 = v122;
          __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
          *(v68 + 32) = (*(v70 + 8))(v69, v70);
          *(v68 + 40) = v71;
          v127[0] = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
          sub_26CCF45B4();
          v72 = sub_26CD3A94C();

          if (v72)
          {
            sub_26CC2524C(&v120, &v113);
            v73 = swift_isUniquelyReferenced_nonNull_native();
            *&v128[0] = v67;
            if ((v73 & 1) == 0)
            {
              sub_26CCEB2C0(0, *(v67 + 16) + 1, 1);
              v67 = *&v128[0];
            }

            v75 = *(v67 + 16);
            v74 = *(v67 + 24);
            if (v75 >= v74 >> 1)
            {
              sub_26CCEB2C0((v74 > 1), v75 + 1, 1);
              v67 = *&v128[0];
            }

            *(v67 + 16) = v75 + 1;
            result = sub_26CC2524C(&v113, v67 + 40 * v75 + 32);
          }

          else
          {
            result = __swift_destroy_boxed_opaque_existential_1(&v120);
          }

          ++v65;
          v66 += 40;
          if (v64 == v65)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v67 = MEMORY[0x277D84F90];
LABEL_70:

      v76 = *(v67 + 16);
      if (v76)
      {
        v77 = 0;
        v78 = v67 + 32;
        v79 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v77 >= *(v67 + 16))
          {
            goto LABEL_96;
          }

          sub_26CC19A84(v78, v128);
          sub_26CC19A84(v128, v127);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
          if (swift_dynamicCast())
          {
            v117 = v124;
            v118 = v125;
            v119[0] = v126[0];
            v119[1] = v126[1];
            v113 = v120;
            v114 = v121;
            v115 = v122;
            v116 = v123;
            v80 = v122;

            sub_26CCF4618(&v113);
            if (v80)
            {
              goto LABEL_82;
            }
          }

          else
          {
            sub_26CC19A84(v128, v127);
            if (swift_dynamicCast())
            {
              v117 = v124;
              v118 = v125;
              v119[0] = v126[0];
              *(v119 + 11) = *(v126 + 11);
              v113 = v120;
              v114 = v121;
              v115 = v122;
              v116 = v123;
              if (*(&v124 + 1))
              {
                v81 = *&v119[1];

                sub_26CCE57A0(&v113);
                if (v81)
                {
LABEL_82:

                  sub_26CC2524C(v128, &v120);
                  v82 = swift_isUniquelyReferenced_nonNull_native();
                  v129 = v79;
                  if ((v82 & 1) == 0)
                  {
                    sub_26CCEB2C0(0, *(v79 + 16) + 1, 1);
                    v79 = v129;
                  }

                  v84 = *(v79 + 16);
                  v83 = *(v79 + 24);
                  v85 = v79;
                  if (v84 >= v83 >> 1)
                  {
                    sub_26CCEB2C0((v83 > 1), v84 + 1, 1);
                    v85 = v129;
                  }

                  *(v85 + 16) = v84 + 1;
                  result = sub_26CC2524C(&v120, v85 + 40 * v84 + 32);
                  v79 = v85;
                  goto LABEL_74;
                }
              }

              else
              {
                sub_26CCE57A0(&v113);
              }
            }
          }

          result = __swift_destroy_boxed_opaque_existential_1(v128);
LABEL_74:
          ++v77;
          v78 += 40;
          if (v76 == v77)
          {
            goto LABEL_88;
          }
        }
      }

      v79 = MEMORY[0x277D84F90];
LABEL_88:
      v105 = v79;

      v16 = v22;
      v17 = v21;
      v18 = v23;
      v10 = v103;
      v5 = v104;
      v13 = v101;
      v11 = v102;
      v19 = v106;
      goto LABEL_4;
    }

LABEL_3:

    v17 = v108;
    v16 = v109;
    v18 = v107;
LABEL_4:
    if (++v19 == v11)
    {
      v109 = v16;
      v86 = v17;

      v88 = v130;
      v87 = v131;
      v9 = MEMORY[0x277D84F90];
      v89 = v105;
LABEL_91:
      v90 = v5[7];

      v91 = sub_26CCF36F8(v87, v90, v88);

      if (v97)
      {
        v92 = v97;
      }

      else
      {
        v92 = v9;
      }

      v93 = sub_26CCF3D04(v91, v92);

      v95 = v98;
      v94 = v99;
      *v98 = v6;
      v95[1] = v7;
      v95[2] = v8;
      *(v95 + 3) = v93;
      *v94 = v109;
      v94[1] = v86;
      v94[2] = v18;
      *(v94 + 3) = v89;
      return result;
    }
  }

  v27 = 0;
  v28 = v25 + 32;
  v29 = MEMORY[0x277D84F90];
  while (v27 < *(v25 + 16))
  {
    sub_26CC19A84(v28, &v120);
    *&v113 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v30 = swift_allocObject();
    *(v30 + 16) = v111;
    v31 = *(&v121 + 1);
    v32 = v122;
    __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
    *(v30 + 32) = (*(v32 + 8))(v31, v32);
    *(v30 + 40) = v33;
    v127[0] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CCF45B4();
    v34 = sub_26CD3A94C();

    if (v34)
    {
      sub_26CC2524C(&v120, &v113);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *&v128[0] = v29;
      if ((v35 & 1) == 0)
      {
        sub_26CCEB2C0(0, *(v29 + 16) + 1, 1);
        v29 = *&v128[0];
      }

      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_26CCEB2C0((v36 > 1), v37 + 1, 1);
        v29 = *&v128[0];
      }

      *(v29 + 16) = v37 + 1;
      result = sub_26CC2524C(&v113, v29 + 40 * v37 + 32);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(&v120);
    }

    ++v27;
    v28 += 40;
    if (v26 == v27)
    {
      goto LABEL_24;
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_26CCEE6B4(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_9:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return -1;
  }

  v4 = 0;
  v5 = (a2 + 56);
  while (1)
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 1);
    if (v6 <= a3 && v7 > a3)
    {
      break;
    }

    ++v4;
    v5 += 4;
    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  v49 = v4;
  v47 = *(v5 - 2);
  v9 = *v5;
  swift_beginAccess();
  v10 = *(v51 + 16);
  v11 = *(v10 + 16);
  v50 = v9;

  if (!v11)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_22:

    v24 = *(v14 + 16);
    v25 = MEMORY[0x277D84F90];
    if (!v24)
    {
LABEL_39:

      v32 = *(v25 + 16);
      if (v32)
      {
        v55 = MEMORY[0x277D84F90];
        sub_26CCEB2C0(0, v32, 0);
        v33 = v55;
        v34 = v25 + 32;
        do
        {
          sub_26CC19A84(v34, &v56);
          sub_26CC19A84(&v56, &v71);
          v35 = v72;
          v36 = v73;
          __swift_mutable_project_boxed_opaque_existential_1(&v71, v72);
          (*(v36 + 24))(v35, v36, v7);
          sub_26CC19A84(&v71, v70);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
          if (swift_dynamicCast())
          {
            v53 = &type metadata for TimedMetadata.SongEntity;
            v54 = &protocol witness table for TimedMetadata.SongEntity;
            v37 = swift_allocObject();
            *&v52 = v37;
            v38 = v68;
            *(v37 + 80) = v67;
            *(v37 + 96) = v38;
            *(v37 + 112) = v69[0];
            *(v37 + 122) = *(v69 + 10);
            v39 = v64;
            *(v37 + 16) = v63;
            *(v37 + 32) = v39;
            v40 = v66;
            *(v37 + 48) = v65;
            *(v37 + 64) = v40;
            *(v37 + 138) = 1;
            __swift_destroy_boxed_opaque_existential_1(&v71);
            sub_26CC2524C(&v52, &v71);
          }

          v41 = v72;
          v42 = v73;
          __swift_project_boxed_opaque_existential_1(&v71, v72);
          v43 = (*(v42 + 8))(v41, v42);
          sub_26CCEEEFC(v43, v44, 0, v51, &v71);

          __swift_destroy_boxed_opaque_existential_1(&v56);
          sub_26CC2524C(&v71, &v63);
          v55 = v33;
          v46 = *(v33 + 16);
          v45 = *(v33 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_26CCEB2C0((v45 > 1), v46 + 1, 1);
            v33 = v55;
          }

          *(v33 + 16) = v46 + 1;
          sub_26CC2524C(&v63, v33 + 40 * v46 + 32);
          v34 += 40;
          --v32;
        }

        while (v32);
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }

      *a1 = v6;
      *(a1 + 8) = v47;
      *(a1 + 16) = v7;
      *(a1 + 24) = v33;
      return v49;
    }

    v26 = 0;
    v27 = v14 + 32;
    while (1)
    {
      if (v26 >= *(v14 + 16))
      {
        goto LABEL_50;
      }

      sub_26CC19A84(v27, &v71);
      sub_26CC19A84(&v71, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
      if (swift_dynamicCast())
      {
        v60 = v67;
        v61 = v68;
        *v62 = v69[0];
        *&v62[16] = v69[1];
        v56 = v63;
        v57 = v64;
        v58 = v65;
        v59 = v66;
        v28 = v65;

        sub_26CCF4618(&v56);
        if (v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_26CC19A84(&v71, v70);
        if (swift_dynamicCast())
        {
          v60 = v67;
          v61 = v68;
          *v62 = v69[0];
          *&v62[11] = *(v69 + 11);
          v56 = v63;
          v57 = v64;
          v58 = v65;
          v59 = v66;
          if (*(&v67 + 1))
          {
            v29 = *&v62[16];

            sub_26CCE57A0(&v56);
            if (v29)
            {
LABEL_34:

              sub_26CC2524C(&v71, &v63);
              *&v52 = v25;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26CCEB2C0(0, *(v25 + 16) + 1, 1);
                v25 = v52;
              }

              v31 = *(v25 + 16);
              v30 = *(v25 + 24);
              if (v31 >= v30 >> 1)
              {
                sub_26CCEB2C0((v30 > 1), v31 + 1, 1);
                v25 = v52;
              }

              *(v25 + 16) = v31 + 1;
              result = sub_26CC2524C(&v63, v25 + 40 * v31 + 32);
              goto LABEL_26;
            }
          }

          else
          {
            sub_26CCE57A0(&v56);
          }
        }
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v71);
LABEL_26:
      ++v26;
      v27 += 40;
      if (v24 == v26)
      {
        goto LABEL_39;
      }
    }
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v15 = v10 + 32;
  while (v13 < *(v10 + 16))
  {
    sub_26CC19A84(v15, &v63);
    *&v56 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    v17 = *(&v64 + 1);
    v18 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    *(v16 + 32) = (*(v18 + 8))(v17, v18);
    *(v16 + 40) = v19;
    v70[0] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CCF45B4();
    v20 = sub_26CD3A94C();

    if (v20)
    {
      sub_26CC2524C(&v63, &v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v71 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26CCEB2C0(0, *(v14 + 16) + 1, 1);
        v14 = v71;
      }

      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26CCEB2C0((v22 > 1), v23 + 1, 1);
        v14 = v71;
      }

      *(v14 + 16) = v23 + 1;
      result = sub_26CC2524C(&v56, v14 + 40 * v23 + 32);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(&v63);
    }

    ++v13;
    v15 += 40;
    if (v11 == v13)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_26CCEED84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_26CC19A84(a1, v26);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = v27;
  v9 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  (*(v9 + 24))(v8, v9, v7);
  sub_26CC19A84(v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    v16 = &type metadata for TimedMetadata.SongEntity;
    v17 = &protocol witness table for TimedMetadata.SongEntity;
    v10 = swift_allocObject();
    *&v15 = v10;
    v11 = v23;
    *(v10 + 80) = v22;
    *(v10 + 96) = v11;
    *(v10 + 112) = v24[0];
    *(v10 + 122) = *(v24 + 10);
    v12 = v19;
    *(v10 + 16) = v18;
    *(v10 + 32) = v12;
    v13 = v21;
    *(v10 + 48) = v20;
    *(v10 + 64) = v13;
    *(v10 + 138) = 1;
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_26CC2524C(&v15, v26);
  }

  sub_26CC19A84(v26, a3);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_26CCEEEFC(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCEED84(v26, a5, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

void sub_26CCEF154(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCF1428(v26, a5, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

void sub_26CCEF3AC(uint64_t a1, void *a2, char a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCF0B70(v26, a5 & 1, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

void sub_26CCEF604(uint64_t a1, void *a2, char a3, void (*a4)(__int128 *__return_ptr, uint64_t *))
{
  v5 = v4;
  swift_beginAccess();
  v8 = *(v4[2] + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 4;
    while (1)
    {
      v11 = v5[2];
      if (v9 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v11 + v10 * 8, v25);
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v14 = (*(v13 + 8))(v12, v13);
      v4 = v15;
      if (v14 == a1 && v15 == a2)
      {
        break;
      }

      v17 = sub_26CD3AFDC();

      if (v17)
      {
        goto LABEL_12;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v10 += 5;
      if (v8 == v9)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    a4(&v22, v25);
    if (!v23)
    {
      sub_26CC1B544(&v22, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v22, v24);
    swift_beginAccess();
    v18 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[2] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_26CCF21C4(v18);
      v5[2] = v18;
    }

    if (v9 < v18[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v18[v10], v24);
      v5[2] = v18;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v25);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v4 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v4 postNotificationName:qword_280BB9BB8 object:v5];
    }
  }
}

uint64_t sub_26CCEF868(uint64_t a1)
{
  v2 = sub_26CCED4B8();
  v3 = 0;
  v4 = *(v2 + 2);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = &v2[128 * v3 + 72];
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 2))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v7 = v6 + 128;
    ++v3;
    v8 = *v6;
    v6 += 128;
    if (v8)
    {
      v19 = a1;
      v9 = *(v7 - 17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_26CCBE3BC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_26CCBE3BC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      a1 = v19;
      goto LABEL_2;
    }
  }

  v13 = sub_26CCF3078(v5);

  v14 = sub_26CCF2408(a1, v13);
  v15 = sub_26CCF2D4C(v13, v14);

  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCE0, &qword_26CD3CFA0);
    v16 = sub_26CD3AD6C();
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  v20 = v16;

  sub_26CCF1E34(v17, 1, &v20);

  sub_26CCEFA7C(v20);
}

void sub_26CCEFA7C(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + v12);

    v17 = v14;
    v1 = v2;
    sub_26CCF0D84(v17, v15, &v28);

    v35[4] = v32;
    v35[5] = v33;
    v36[0] = v34[0];
    *(v36 + 11) = *(v34 + 11);
    v35[0] = v28;
    v35[1] = v29;
    v35[2] = v30;
    v35[3] = v31;
    v37[0] = v28;
    v37[1] = v29;
    v37[2] = v30;
    v37[3] = v31;
    v38 = v32;
    v39 = v33;
    *v40 = v34[0];
    *&v40[11] = *(v34 + 11);
    if (sub_26CC28EA8(v37) != 1)
    {
      if (v16 != v40[24])
      {
        sub_26CCECBE0(v37, &v28);
        v1 = sub_26CD3A42C();
        v18 = sub_26CD3A99C();
        sub_26CC1B544(v35, &qword_2804BD870, &unk_26CD47430);
        if (os_log_type_enabled(v1, v18))
        {
          v19 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v27 = v2;
          *&v28 = v26;
          *v19 = 136315394;
          v20 = v38;
          if (!*(&v38 + 1))
          {
            v20 = 0;
          }

          v24 = v20;
          if (*(&v38 + 1))
          {
            v21 = *(&v38 + 1);
          }

          else
          {
            v21 = 0xE000000000000000;
          }

          v22 = sub_26CCF188C(v24, v21, &v28);
          v25 = v18;
          v23 = v22;
          v2 = v27;

          *(v19 + 4) = v23;
          *(v19 + 12) = 1024;
          *(v19 + 14) = v16;
          _os_log_impl(&dword_26CC14000, v1, v25, "Updating song isAdded state: %s, added: %{BOOL}d", v19, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v26);
          MEMORY[0x26D6AE340](v26, -1, -1);
          MEMORY[0x26D6AE340](v19, -1, -1);
        }

        sub_26CCEF3AC(*&v37[0], *(&v37[0] + 1), 0, v2, v16);
      }

      sub_26CC1B544(v35, &qword_2804BD870, &unk_26CD47430);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v1 = [objc_opt_self() defaultCenter];
  if (qword_280BB9BB0 == -1)
  {
    goto LABEL_21;
  }

LABEL_23:
  swift_once();
LABEL_21:
  [v1 postNotificationName:qword_280BB9BB8 object:v2];
}

uint64_t sub_26CCEFDB8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_2804BBA68 != -1)
  {
    swift_once();
  }

  v3 = qword_2804BD940;
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  v6 = swift_allocObject();
  swift_weakInit();
  v22 = sub_26CCF34E0;
  v23 = v6;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_26CCDC2A8;
  v21 = &block_descriptor_10;
  v7 = _Block_copy(&v18);

  v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);

  v9 = *(v0 + 64);
  *(v0 + 64) = v8;
  swift_unknownObjectRelease();
  v10 = [v1 defaultCenter];
  if (qword_2804BBA70 != -1)
  {
    swift_once();
  }

  v11 = qword_2804BD948;
  v12 = [v4 mainQueue];
  v13 = swift_allocObject();
  swift_weakInit();
  v22 = sub_26CCF34E8;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_26CCDC2A8;
  v21 = &block_descriptor_54;
  v14 = _Block_copy(&v18);

  v15 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v14];
  _Block_release(v14);

  v16 = *(v0 + 72);
  *(v0 + 72) = v15;
  return swift_unknownObjectRelease();
}

uint64_t sub_26CCF0098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_26CD39DDC();
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v22 = 0x6449676E6F73;
  v23 = 0xE600000000000000;
  sub_26CD3ABFC();
  if (!*(v5 + 16) || (v6 = sub_26CCCA694(v24), (v7 & 1) == 0))
  {

    sub_26CC579C4(v24);
LABEL_13:
    v25 = 0u;
    v26 = 0u;
    return sub_26CC1B544(&v25, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  sub_26CC168C0(*(v5 + 56) + 32 * v6, &v25);
  sub_26CC579C4(v24);

  if (!*(&v26 + 1))
  {
    return sub_26CC1B544(&v25, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v10 = v24[0];
  v9 = v24[1];
  v11 = sub_26CD39DDC();
  if (!v11)
  {

    goto LABEL_13;
  }

  v12 = v11;
  v22 = 0x64656464417369;
  v23 = 0xE700000000000000;
  sub_26CD3ABFC();
  if (!*(v12 + 16) || (v13 = sub_26CCCA694(v24), (v14 & 1) == 0))
  {

    sub_26CC579C4(v24);
    v25 = 0u;
    v26 = 0u;
    goto LABEL_17;
  }

  sub_26CC168C0(*(v12 + 56) + 32 * v13, &v25);
  sub_26CC579C4(v24);

  if (!*(&v26 + 1))
  {
LABEL_17:

    return sub_26CC1B544(&v25, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v15 = v24[0];
  v16 = sub_26CD3A86C();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_26CD3A84C();

  v18 = sub_26CD3A83C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 32) = v17;
  *(v19 + 40) = v10;
  *(v19 + 48) = v9;
  *(v19 + 56) = v15;

  sub_26CCD6138(0, 0, v3, &unk_26CD47B80, v19);
}

uint64_t sub_26CCF03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 139) = a7;
  *(v7 + 312) = a5;
  *(v7 + 320) = a6;
  *(v7 + 296) = a1;
  *(v7 + 304) = a4;
  sub_26CD3A84C();
  *(v7 + 328) = sub_26CD3A83C();
  v9 = sub_26CD3A80C();

  return MEMORY[0x2822009F8](sub_26CCF0490, v9, v8);
}

uint64_t sub_26CCF0490()
{
  v14 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26CCF0D84(*(v0 + 312), *(v0 + 320), (v0 + 144));
    v3 = *(v0 + 224);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 96) = v3;
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 123) = *(v0 + 251);
    v4 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v4;
    v5 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v5;
    if (sub_26CC28EA8(v0 + 16) == 1)
    {
    }

    else
    {
      v6 = *(v0 + 139);
      v7 = *(v0 + 96);
      v12[4] = *(v0 + 80);
      v12[5] = v7;
      v13[0] = *(v0 + 112);
      *(v13 + 11) = *(v0 + 123);
      v8 = *(v0 + 32);
      v12[0] = *(v0 + 16);
      v12[1] = v8;
      v9 = *(v0 + 64);
      v12[2] = *(v0 + 48);
      v12[3] = v9;
      sub_26CCF09CC(v12, v6, 1);

      sub_26CC1B544(v0 + 144, &qword_2804BD870, &unk_26CD47430);
    }

    **(v0 + 296) = 0;
  }

  else
  {
    **(v0 + 296) = 1;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26CCF05D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16[-4] - v2;
  v4 = sub_26CD39DDC();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  strcpy(v16, "playlistSongs");
  v16[7] = -4864;
  sub_26CD3ABFC();
  if (!*(v5 + 16) || (v6 = sub_26CCCA694(v17), (v7 & 1) == 0))
  {

    sub_26CC579C4(v17);
LABEL_8:
    v18 = 0u;
    v19 = 0u;
    return sub_26CC1B544(&v18, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  sub_26CC168C0(*(v5 + 56) + 32 * v6, &v18);
  sub_26CC579C4(v17);

  if (!*(&v19 + 1))
  {
    return sub_26CC1B544(&v18, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v17[0];
    v10 = sub_26CD3A86C();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_26CD3A84C();

    v12 = sub_26CD3A83C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    v13[5] = v9;

    sub_26CCD6138(0, 0, v3, &unk_26CD47B70, v13);
  }

  return result;
}

uint64_t sub_26CCF085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_26CD3A84C();
  v5[8] = sub_26CD3A83C();
  v7 = sub_26CD3A80C();

  return MEMORY[0x2822009F8](sub_26CCF08F8, v7, v6);
}

uint64_t sub_26CCF08F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 56);

    v6 = sub_26CCF3078(v5);

    sub_26CCEF868(v6);
  }

  **(v0 + 40) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

void sub_26CCF09CC(_OWORD *a1, char a2, char a3)
{
  *&v21[11] = *(a1 + 107);
  v4 = a1[5];
  v19 = a1[4];
  v20 = v4;
  *v21 = a1[6];
  v5 = a1[1];
  v18[0] = *a1;
  v18[1] = v5;
  v6 = a1[3];
  v18[2] = a1[2];
  v18[3] = v6;
  if (v21[24] != (a2 & 1))
  {
    v7 = v3;
    sub_26CCECBE0(v18, v17);
    v10 = sub_26CD3A42C();
    v11 = sub_26CD3A99C();
    sub_26CCE57A0(v18);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17[0] = v13;
      *v12 = 136315394;
      if (*(&v19 + 1))
      {
        v14 = v19;
      }

      else
      {
        v14 = 0;
      }

      if (*(&v19 + 1))
      {
        v15 = *(&v19 + 1);
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = sub_26CCF188C(v14, v15, v17);

      *(v12 + 4) = v16;
      *(v12 + 12) = 1024;
      *(v12 + 14) = a2 & 1;
      _os_log_impl(&dword_26CC14000, v10, v11, "Updating song isAdded state: %s, added: %{BOOL}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D6AE340](v13, -1, -1);
      MEMORY[0x26D6AE340](v12, -1, -1);
    }

    sub_26CCEF3AC(*&v18[0], *(&v18[0] + 1), a3 & 1, v7, a2 & 1);
  }
}

uint64_t sub_26CCF0B70@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_26CC19A84(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    nullsub_1(&v33, v5);
  }

  else
  {
    sub_26CCECC3C(&v25);
    v37 = v29;
    v38 = v30;
    *v39 = v31[0];
    *&v39[11] = *(v31 + 11);
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v36 = v28;
  }

  v29 = v37;
  v30 = v38;
  v31[0] = *v39;
  *(v31 + 11) = *&v39[11];
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  if (sub_26CC28EA8(&v25) != 1)
  {
    v39[24] = a2 & 1;
  }

  v16[4] = v37;
  v16[5] = v38;
  v17[0] = *v39;
  *(v17 + 11) = *&v39[11];
  v16[0] = v33;
  v16[1] = v34;
  v16[2] = v35;
  v16[3] = v36;
  v20 = v35;
  v21 = v36;
  v18 = v33;
  v19 = v34;
  *(v24 + 11) = *&v39[11];
  v23 = v38;
  v24[0] = *v39;
  v22 = v37;
  if (sub_26CC28EA8(&v18) == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v6 = swift_allocObject();
    v9 = v23;
    v6[5] = v22;
    v6[6] = v9;
    v6[7] = v24[0];
    *(v6 + 123) = *(v24 + 11);
    v10 = v19;
    v6[1] = v18;
    v6[2] = v10;
    v11 = v21;
    v6[3] = v20;
    v6[4] = v11;
    v8 = &protocol witness table for TimedMetadata.SongEntity;
    v7 = &type metadata for TimedMetadata.SongEntity;
  }

  *a3 = v6;
  a3[3] = v7;
  a3[4] = v8;
  v14[4] = v37;
  v14[5] = v38;
  v15[0] = *v39;
  *(v15 + 11) = *&v39[11];
  v14[0] = v33;
  v14[1] = v34;
  v14[2] = v35;
  v14[3] = v36;
  sub_26CCF3688(v16, &v13);
  return sub_26CC1B544(v14, &qword_2804BD870, &unk_26CD47430);
}

void sub_26CCF0D84(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v16 = a2;
  *(&v16 + 1) = a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v15 = a3;
    v7 = v5 + 32;

    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      sub_26CC19A84(v7, v32);
      sub_26CC19A84(v32, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
      if (swift_dynamicCast())
      {
        v21 = v28;
        v22 = v29;
        v23[0] = v30[0];
        *(v23 + 11) = *(v30 + 11);
        v17 = v24;
        v18 = v25;
        v19 = v26;
        v20 = v27;
        v10 = v26;

        sub_26CCE57A0(&v17);
        if (*(&v10 + 1))
        {
          if (__PAIR128__(v10, *(&v10 + 1)) == v16)
          {

LABEL_10:

            sub_26CC2524C(v32, &v33);
            a3 = v15;
            goto LABEL_13;
          }

          v9 = sub_26CD3AFDC();

          if (v9)
          {
            goto LABEL_10;
          }
        }
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1(v32);
      v7 += 40;
      if (v6 == v8)
      {

        a3 = v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
LABEL_13:
    v17 = v33;
    v18 = v34;
    *&v19 = v35;
    if (*(&v34 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
      if (swift_dynamicCast())
      {
        nullsub_1(a3, v11);
        return;
      }
    }

    else
    {
      sub_26CC1B544(&v17, &qword_2804BD958, &unk_26CD47A00);
    }

    sub_26CCECC3C(&v24);
    v12 = v29;
    a3[4] = v28;
    a3[5] = v12;
    a3[6] = v30[0];
    *(a3 + 107) = *(v30 + 11);
    v13 = v25;
    *a3 = v24;
    a3[1] = v13;
    v14 = v27;
    a3[2] = v26;
    a3[3] = v14;
  }
}

uint64_t sub_26CCF0FF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v7 = v6;
  v9 = *(result + 80);
  v77 = *(result + 64);
  v78 = v9;
  v79[0] = *(result + 96);
  *(v79 + 11) = *(result + 107);
  v10 = *(result + 16);
  v73 = *result;
  v74 = v10;
  v11 = *(result + 48);
  v75 = *(result + 32);
  v76 = v11;
  if (*(&v10 + 1) < a6)
  {
    v12 = *(&v74 + 1) + *(v6 + 32);
    if (v12 > a6)
    {
      if (a3)
      {
        v13 = *(v6 + 48);
        if (*(v13 + 16))
        {
          v15 = result;
          v17 = *(v7 + 48);

          v20 = sub_26CC181C4(a2, a3);
          if (v21)
          {
            v22 = *(*(v13 + 56) + 8 * v20);

            if ((a4 & 0x8000000000000000) == 0 && *(v22 + 16) > a4)
            {
              v23 = v12 - a6;
              v24 = *(v22 + 32 * a4 + 48);

              v25 = v23 + a6;
              v26 = v23 + a6 + *(v7 + 24) < v24;
              v27 = *(v15 + 107);
              if (v23 + a6 + *(v7 + 24) >= v24)
              {
                v23 = v24 - a6;
              }

              *&v63[11] = *(v15 + 107);
              if (v26)
              {
                v28 = v25;
              }

              else
              {
                v28 = v24 - a6 + a6;
              }

              v29 = v15[5];
              v61 = v15[4];
              v62 = v29;
              *v63 = v15[6];
              v30 = v15[1];
              v57 = *v15;
              v58 = v30;
              v31 = v15[3];
              v59 = v15[2];
              v60 = v31;
              v63[26] = 0;
              *&v58 = v23 + *&v74;
              v32 = v73;
              sub_26CCECBE0(&v73, &v66);
              sub_26CCEF154(v32, *(&v32 + 1), 0, v7, &v57);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD508, &qword_26CD47B90);
              v33 = swift_allocObject();
              *(v33 + 16) = xmmword_26CD3C1E0;
              v64[4] = v61;
              v64[5] = v62;
              v65[0] = *v63;
              *(v65 + 11) = *&v63[11];
              v64[0] = v57;
              v64[1] = v58;
              v64[2] = v59;
              v64[3] = v60;
              *(v33 + 56) = &type metadata for TimedMetadata.SongEntity;
              *(v33 + 64) = &protocol witness table for TimedMetadata.SongEntity;
              v34 = swift_allocObject();
              v35 = v62;
              v36 = v61;
              v37 = v62;
              v34[5] = v61;
              v34[6] = v35;
              v38 = *v63;
              v34[7] = *v63;
              *(v34 + 123) = *&v63[11];
              v39 = v58;
              v40 = v57;
              v41 = v58;
              v34[1] = v57;
              v34[2] = v39;
              v42 = v60;
              v43 = v59;
              v44 = v60;
              v34[3] = v59;
              v34[4] = v42;
              *a5 = a6;
              *(a5 + 8) = v23;
              *(a5 + 16) = v28;
              v70 = v36;
              v71 = v37;
              v72[0] = v38;
              *(v72 + 11) = *&v63[11];
              *(v33 + 32) = v34;
              *(a5 + 24) = v33;
              v66 = v40;
              v67 = v41;
              v68 = v43;
              v69 = v44;
              sub_26CCECBE0(v64, &v56);
              return sub_26CCE57A0(&v66);
            }
          }
        }
      }

LABEL_32:
      *a5 = 0u;
      *(a5 + 16) = 0u;
      return result;
    }
  }

  v45 = v73;
  result = swift_beginAccess();
  v46 = *(*(v6 + 16) + 16);
  if (!v46)
  {
    goto LABEL_32;
  }

  v47 = 0;
  v48 = 32;
  while (1)
  {
    v49 = *(v7 + 16);
    if (v47 >= *(v49 + 16))
    {
      break;
    }

    sub_26CC19A84(v49 + v48, &v66);
    v50 = *(&v67 + 1);
    v51 = v68;
    __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
    v52 = (*(v51 + 8))(v50, v51);
    v6 = v53;
    if (v52 == v45 && v53 == *(&v45 + 1))
    {

LABEL_25:
      sub_26CCF1528(&v66, &v57);
      if (*(&v58 + 1))
      {
        sub_26CC2524C(&v57, v64);
        swift_beginAccess();
        v6 = *(v7 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v7 + 16) = v6;
        if (result)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      sub_26CC1B544(&v57, &qword_2804BD958, &unk_26CD47A00);
LABEL_30:
      result = __swift_destroy_boxed_opaque_existential_1(&v66);
      goto LABEL_32;
    }

    v55 = sub_26CD3AFDC();

    if (v55)
    {
      goto LABEL_25;
    }

    ++v47;
    result = __swift_destroy_boxed_opaque_existential_1(&v66);
    v48 += 40;
    if (v46 == v47)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  result = sub_26CCF21C4(v6);
  v6 = result;
  *(v7 + 16) = result;
LABEL_27:
  if (v47 < *(v6 + 16))
  {
    __swift_assign_boxed_opaque_existential_1((v6 + v48), v64);
    *(v7 + 16) = v6;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v64);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_26CCF1428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_26CC19A84(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    v5 = *(a2 + 122);
    v6 = *(a2 + 16);
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v6;
    *(result + 88) = v14;
    *(result + 104) = v15;
    *(result + 120) = v16;
    *(result + 136) = v17;
    *(result + 40) = v11;
    *(result + 56) = v12;
    *(result + 72) = v13;
    *(result + 138) = v5;
    v8 = &protocol witness table for TimedMetadata.SongEntity;
    v9 = &type metadata for TimedMetadata.SongEntity;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  a3[3] = v9;
  a3[4] = v8;
  *a3 = result;
  return result;
}

uint64_t sub_26CCF1528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26CC19A84(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 80) = v9;
    *(result + 96) = v10;
    *(result + 112) = *v11;
    *(result + 122) = *&v11[10];
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = v7;
    *(result + 64) = v8;
    *(result + 138) = 0;
    v4 = &protocol witness table for TimedMetadata.SongEntity;
    v5 = &type metadata for TimedMetadata.SongEntity;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v5;
  a2[4] = v4;
  *a2 = result;
  return result;
}

uint64_t sub_26CCF1604(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26CCF175C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_26CCF1830(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26CCF188C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26CCF188C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26CCF1958(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26CC168C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26CCF1958(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26CCF1A64(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26CD3ACCC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26CCF1A64(uint64_t a1, unint64_t a2)
{
  v4 = sub_26CCF1AB0(a1, a2);
  sub_26CCF1BE0(&unk_287DFC1C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26CCF1AB0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26CCF1CCC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26CD3ACCC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26CD3A69C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26CCF1CCC(v10, 0);
        result = sub_26CD3AC5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26CCF1BE0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26CCF1D40(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26CCF1CCC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD970, &qword_26CD47B88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26CCF1D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD970, &qword_26CD47B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_26CCF1E34(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_26CC181C4(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_26CD34B80(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_26CC181C4(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_26CD3B02C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_26CD36E98();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000001BLL, 0x800000026CD517E0);
    sub_26CD3AD1C();
    MEMORY[0x26D6AD060](39, 0xE100000000000000);
    sub_26CD3AD2C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_26CC181C4(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_26CD34B80(v32, 1);
        v33 = *a3;
        v28 = sub_26CC181C4(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 24;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_26CCF2408(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_26CCF265C(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_26CCF25CC(v12, v6, a2, a1);

    MEMORY[0x26D6AE340](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_26CCF25CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_26CCF265C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_26CCF265C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v27 = sub_26CD3B13C();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_26CD3AFDC() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_26CCF2A38(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v41 = sub_26CD3B13C();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_26CD3AFDC() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}