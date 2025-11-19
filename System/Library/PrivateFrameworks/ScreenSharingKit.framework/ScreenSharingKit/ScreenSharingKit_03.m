uint64_t sub_264A14944(uint64_t result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_264A13E74(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_264A15310();
      goto LABEL_46;
    }

    sub_264A15D04(v5 + 1);
  }

  v7 = 0x6E776F6E6B6E75;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_264B41B84();
  sub_264B41084();

  result = sub_264B41BB4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  v33 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = v8;
    v32 = ~v10;
    v11 = 0xEF6573556E49656ELL;
    v12 = 0x6F68706F7263696DLL;
    v13 = 0x6E496172656D6163;
    do
    {
      v14 = *(*(v8 + 48) + a2);
      if (v14 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v16 = 0x6E49656369766564;
        }

        else
        {
          v16 = v7;
        }

        v15 = 0xEB00000000657355;
        if (*(*(v8 + 48) + a2))
        {
          v17 = 0xEB00000000657355;
        }

        else
        {
          v17 = 0xE700000000000000;
        }
      }

      else
      {
        v15 = 0xEB00000000657355;
        if (v14 == 2)
        {
          v16 = 0xD000000000000011;
          v17 = 0x8000000264B58BE0;
        }

        else
        {
          if (v14 == 3)
          {
            v16 = v12;
          }

          else
          {
            v16 = v13;
          }

          if (v14 == 3)
          {
            v17 = v11;
          }

          else
          {
            v17 = 0xEB00000000657355;
          }
        }
      }

      v18 = v12;
      v19 = v13;
      if (v34 != 3)
      {
        v12 = v13;
      }

      v20 = v11;
      if (v34 != 3)
      {
        v11 = 0xEB00000000657355;
      }

      if (v34 == 2)
      {
        v12 = 0xD000000000000011;
        v11 = 0x8000000264B58BE0;
      }

      v21 = v7;
      if (v34)
      {
        v22 = 0x6E49656369766564;
      }

      else
      {
        v22 = v7;
      }

      if (!v34)
      {
        v15 = 0xE700000000000000;
      }

      v23 = v34 <= 1u ? v22 : v12;
      v24 = v34 <= 1u ? v15 : v11;
      if (v16 == v23 && v17 == v24)
      {
        goto LABEL_49;
      }

      v25 = sub_264B41AA4();

      if (v25)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v32;
      v7 = v21;
      v11 = v20;
      v8 = v31;
      v12 = v18;
      v13 = v19;
    }

    while (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v34;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_264B41AD4();
  __break(1u);
  return result;
}

void sub_264A14CA8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_264A14170(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_264A15450();
      goto LABEL_12;
    }

    sub_264A15FD0(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_264B41B84();
  sub_264B403B4();
  v13 = sub_264B41BB4();
  v14 = -1 << *(v11 + 32);
  a3 = v13 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v11 + 48) + 16 * a3;
      v17 = *v16;
      v18 = *(v16 + 8);
      LOBYTE(v17) = sub_264B40374();

      if (v17)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = a1;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_264B41AD4();
  __break(1u);
}

void *sub_264A14E4C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264B41714();
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

void *sub_264A14F7C()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89508, &unk_264B47A40);
  v7 = *v0;
  v8 = sub_264B41714();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

void *sub_264A151B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F0, &qword_264B47A20);
  v2 = *v0;
  v3 = sub_264B41714();
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

void *sub_264A15310()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F8, &qword_264B47A28);
  v2 = *v0;
  v3 = sub_264B41714();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

id sub_264A15450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
  v2 = *v0;
  v3 = sub_264B41714();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v4 + 48) + v17);
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

uint64_t sub_264A155AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264B41724();
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
      sub_264B41B84();
      MEMORY[0x266748E90](v19);
      result = sub_264B41BB4();
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

uint64_t sub_264A157C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_264B40104();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89508, &unk_264B47A40);
  v10 = sub_264B41724();
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
      sub_264A10760(&qword_27FF89470);
      result = sub_264B40F84();
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

uint64_t sub_264A15ACC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F0, &qword_264B47A20);
  result = sub_264B41724();
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
      sub_264B41B84();

      sub_264B41084();
      result = sub_264B41BB4();
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

uint64_t sub_264A15D04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F8, &qword_264B47A28);
  result = sub_264B41724();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
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

uint64_t sub_264A15FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
  result = sub_264B41724();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
      sub_264B41B84();
      v22 = v19;
      sub_264B403B4();
      result = sub_264B41BB4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v22;
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

        v2 = v30;
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

uint64_t sub_264A16208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A16278()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A162B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_264A163A4;

  return v6(v2 + 32);
}

uint64_t sub_264A163A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_264A164B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_264A162B0(a1, v5);
}

uint64_t sub_264A16570(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649CD850;

  return sub_264A162B0(a1, v5);
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

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit18SystemGestureEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit18SystemGestureEventOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_264A166BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_264A16704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264A1676C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89570, &qword_264B47C28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = v1[1];
  v34 = *v1;
  v35 = v9;
  *v36 = v1[2];
  *&v36[9] = *(v1 + 41);
  v10 = *(v1 + 9);
  v37 = *(v1 + 8);
  v21 = v10;
  v11 = *(v1 + 11);
  v20 = *(v1 + 10);
  v19 = v11;
  v18 = *(v1 + 12);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A186B4(&v34, &v31);
  sub_264A188FC();
  sub_264B41BD4();
  v31 = v34;
  v32 = v35;
  v33[0] = *v36;
  *(v33 + 9) = *&v36[9];
  v30 = 0;
  sub_264A18A60();
  sub_264B41A24();
  if (v2)
  {
    v27 = v31;
    v28 = v32;
    *v29 = v33[0];
    *&v29[9] = *(v33 + 9);
    sub_264A18710(&v27);
  }

  else
  {
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v27 = v31;
    v28 = v32;
    *v29 = v33[0];
    *&v29[9] = *(v33 + 9);
    sub_264A18710(&v27);
    v22 = v37;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89550, &qword_264B47C20);
    sub_264A18AB4(&qword_27FF89580, &qword_27FF89588);
    sub_264B41A24();
    v22 = v15;
    v23 = v14;
    v24 = v13;
    v25 = v18;
    v26 = 2;
    sub_264A18764(v15, v14, v13, v18);
    sub_264A18B80();
    sub_264B419C4();
    sub_264A187C4(v22, v23, v24, v25);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_264A16ACC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89538, &qword_264B47C18);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A188FC();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v38 = 0;
  sub_264A18950();
  v11 = v45;
  sub_264B41984();
  v42 = v39;
  v43 = v40;
  *v44 = v41[0];
  *&v44[9] = *(v41 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89550, &qword_264B47C20);
  LOBYTE(v24[0]) = 1;
  sub_264A18AB4(&qword_27FF89558, &qword_27FF89560);
  sub_264B41984();
  v23 = *&v29[0];
  v34 = 2;
  sub_264A189A4();
  sub_264B41924();
  (*(v10 + 8))(v8, v11);
  v12 = v35;
  v14 = v36;
  v13 = v37;
  v15 = v43;
  v24[0] = v42;
  v24[1] = v43;
  v16 = *v44;
  v24[2] = *v44;
  v25 = *&v44[16];
  v17 = v23;
  *&v26 = v23;
  *(&v26 + 1) = v35;
  v27 = v36;
  v28 = v37;
  *a2 = v42;
  *(a2 + 16) = v15;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  *(a2 + 96) = v13;
  *(a2 + 64) = v19;
  *(a2 + 80) = v20;
  *(a2 + 32) = v16;
  *(a2 + 48) = v18;
  sub_264A189F8(v24, v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v29[0] = v42;
  v29[1] = v43;
  v29[2] = *v44;
  v29[3] = *&v44[16];
  v30 = v17;
  v31 = v12;
  v32 = v14;
  v33 = v13;
  return sub_264A18A30(v29);
}

uint64_t sub_264A16E44()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6556746E65696C63;
  }
}

uint64_t sub_264A16EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264A18DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264A16EE0(uint64_t a1)
{
  v2 = sub_264A188FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A16F1C(uint64_t a1)
{
  v2 = sub_264A188FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_264A16F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *v3;
      v9 = v7;
      LOBYTE(v5) = sub_264B40374();

      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_264A17054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDevice(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_264A18BD4(v14, v11, type metadata accessor for ContinuityDevice);
        sub_264A18BD4(v15, v8, type metadata accessor for ContinuityDevice);
        v17 = static ContinuityDevice.== infix(_:_:)(v11, v8);
        sub_264A18C3C(v8, type metadata accessor for ContinuityDevice);
        sub_264A18C3C(v11, type metadata accessor for ContinuityDevice);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_264A1720C(uint64_t a1, uint64_t a2)
{
  v132[3] = *MEMORY[0x277D85DE8];
  v4 = sub_264B40264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v109 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89528, &qword_264B530F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v109 - v15;
  v124 = type metadata accessor for HIDReportMessage();
  v17 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for HIDUpdateInputDevicesMessage();
  v19 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v127 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89530, &qword_264B47C10);
  v21 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v23 = &v109 - v22;
  v128 = type metadata accessor for HIDMessage();
  v24 = *(*(v128 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v128);
  v125 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v28 = MEMORY[0x28223BE20](v27);
  v126 = &v109 - v29;
  MEMORY[0x28223BE20](v28);
  v33 = &v109 - v31;
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
    goto LABEL_93;
  }

  v122 = *(a1 + 16);
  if (!v34 || a1 == a2)
  {
LABEL_83:
    result = 1;
    goto LABEL_94;
  }

  v116 = v16;
  v117 = v32;
  v115 = v13;
  v112 = v12;
  v111 = v8;
  v35 = 0;
  v113 = 0;
  v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v120 = a1 + v36;
  v118 = a2 + v36;
  v114 = (v5 + 48);
  v119 = *(v30 + 72);
  v37 = v122;
  v38 = v123;
  v39 = v126;
  v130 = &v109 - v31;
  while (1)
  {
    v40 = v119 * v35;
    sub_264A18BD4(v120 + v119 * v35, v33, type metadata accessor for HIDMessage);
    if (v35 == v37)
    {
      goto LABEL_96;
    }

    sub_264A18BD4(v118 + v40, v39, type metadata accessor for HIDMessage);
    v41 = *(v129 + 48);
    sub_264A18BD4(v33, v23, type metadata accessor for HIDMessage);
    sub_264A18BD4(v39, &v23[v41], type metadata accessor for HIDMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v45 = v117;
    sub_264A18BD4(v23, v117, type metadata accessor for HIDMessage);
    if (swift_getEnumCaseMultiPayload())
    {
      v106 = type metadata accessor for HIDUpdateInputDevicesMessage;
      v107 = v45;
LABEL_87:
      sub_264A18C3C(v107, v106);
LABEL_88:
      sub_2649D04D4(v23, &qword_27FF89530, &qword_264B47C10);
      goto LABEL_92;
    }

    v46 = v4;
    v47 = v23;
    sub_264A18894(&v23[v41], v127, type metadata accessor for HIDUpdateInputDevicesMessage);
    if ((sub_264B400C4() & 1) == 0 || (v48 = *(v121 + 20), v49 = *(v117 + v48), v50 = *(v127 + v48), v51 = *(v49 + 16), v51 != *(v50 + 16)))
    {
LABEL_84:
      sub_264A18C3C(v127, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264A18C3C(v117, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264A18C3C(v47, type metadata accessor for HIDMessage);
      v39 = v126;
      goto LABEL_92;
    }

    if (v51)
    {
      v52 = v49 == v50;
    }

    else
    {
      v52 = 1;
    }

    if (!v52)
    {
      v53 = (v49 + 40);
      v54 = (v50 + 40);
      while (v51)
      {
        v55 = *(v53 - 1);
        v56 = *(v54 - 1);
        v57 = *v54;
        v58 = *v53;
        v59 = v57;
        LOBYTE(v55) = sub_264B40374();

        v33 = v130;
        if ((v55 & 1) == 0)
        {
          goto LABEL_84;
        }

        v53 += 2;
        v54 += 2;
        if (!--v51)
        {
          goto LABEL_25;
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
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
    }

LABEL_25:
    sub_264A18C3C(v127, type metadata accessor for HIDUpdateInputDevicesMessage);
    sub_264A18C3C(v117, type metadata accessor for HIDUpdateInputDevicesMessage);
    v4 = v46;
    v23 = v47;
    v38 = v123;
    v39 = v126;
LABEL_6:
    ++v35;
    sub_264A18C3C(v23, type metadata accessor for HIDMessage);
    sub_264A18C3C(v39, type metadata accessor for HIDMessage);
    sub_264A18C3C(v33, type metadata accessor for HIDMessage);
    v37 = v122;
    if (v35 == v122)
    {
      goto LABEL_83;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_88;
    }

    goto LABEL_6;
  }

  v43 = v125;
  sub_264A18BD4(v23, v125, type metadata accessor for HIDMessage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v106 = type metadata accessor for HIDReportMessage;
    v107 = v43;
    goto LABEL_87;
  }

  sub_264A18894(&v23[v41], v38, type metadata accessor for HIDReportMessage);
  v44 = *(v38 + 8);
  if (*(v43 + 8))
  {
    if (!*(v38 + 8))
    {
      goto LABEL_91;
    }
  }

  else
  {
    if (*v43 != *v38)
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_91;
    }
  }

  v60 = *(v124 + 20);
  v61 = v116;
  v62 = v43;
  v63 = *(v115 + 48);
  sub_264A18824(v62 + v60, v116);
  sub_264A18824(v38 + v60, v61 + v63);
  v64 = *v114;
  if ((*v114)(v61, 1, v4) == 1)
  {
    if (v64(v61 + v63, 1, v4) != 1)
    {
      goto LABEL_90;
    }

    sub_2649D04D4(v61, &qword_27FF89520, &unk_264B47C00);
    v43 = v125;
    v39 = v126;
    goto LABEL_34;
  }

  v65 = v112;
  sub_264A18824(v61, v112);
  if (v64(v61 + v63, 1, v4) != 1)
  {
    v66 = v61 + v63;
    v67 = v111;
    sub_264A18894(v66, v111, MEMORY[0x277D77AA8]);
    v68 = sub_264B40254();
    v69 = MEMORY[0x277D77AA8];
    sub_264A18C3C(v67, MEMORY[0x277D77AA8]);
    sub_264A18C3C(v65, v69);
    sub_2649D04D4(v61, &qword_27FF89520, &unk_264B47C00);
    v38 = v123;
    v43 = v125;
    v39 = v126;
    if ((v68 & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_34:
    v70 = *(v124 + 24);
    v71 = *(v43 + v70);
    v72 = *(v43 + v70 + 8);
    v73 = (v38 + v70);
    v74 = *v73;
    v75 = v73[1];
    v76 = v72 >> 62;
    v77 = v75 >> 62;
    if (v72 >> 62 == 3)
    {
      v78 = 0;
      if (!v71 && v72 == 0xC000000000000000 && v75 >> 62 == 3)
      {
        v78 = 0;
        if (!v74 && v75 == 0xC000000000000000)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (v76 <= 1)
      {
        if (v76)
        {
          LODWORD(v78) = HIDWORD(v71) - v71;
          if (__OFSUB__(HIDWORD(v71), v71))
          {
            goto LABEL_99;
          }

          v78 = v78;
          if (v77 <= 1)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v78 = BYTE6(v72);
          if (v77 <= 1)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_44;
      }

      if (v76 != 2)
      {
        v78 = 0;
        if (v77 <= 1)
        {
LABEL_51:
          if (v77)
          {
            LODWORD(v82) = HIDWORD(v74) - v74;
            if (__OFSUB__(HIDWORD(v74), v74))
            {
              goto LABEL_97;
            }

            v82 = v82;
          }

          else
          {
            v82 = BYTE6(v75);
          }

LABEL_57:
          if (v78 != v82)
          {
            goto LABEL_91;
          }

          if (v78 >= 1)
          {
            if (v76 > 1)
            {
              if (v76 != 2)
              {
                memset(v132, 0, 14);
                v103 = v74;
                sub_2649DEF18(v74, v75);
                v104 = v113;
                sub_264A17F40(v132, v103, v75, &v131);
                v113 = v104;
                v39 = v126;
                sub_2649DEF6C(v103, v75);
                if (!v131)
                {
                  goto LABEL_91;
                }

                goto LABEL_82;
              }

              v87 = v23;
              v88 = *(v71 + 16);
              v89 = *(v71 + 24);
              v90 = v74;
              sub_2649DEF18(v74, v75);
              v91 = sub_264B3FEA4();
              if (v91)
              {
                v92 = sub_264B3FEC4();
                if (__OFSUB__(v88, v92))
                {
                  goto LABEL_103;
                }

                v91 += v88 - v92;
              }

              if (__OFSUB__(v89, v88))
              {
                goto LABEL_102;
              }

              sub_264B3FEB4();
              v93 = v90;
              v94 = v90;
              v95 = v113;
              sub_264A17F40(v91, v94, v75, v132);
              v113 = v95;
              sub_2649DEF6C(v93, v75);
              v96 = v132[0];
              v23 = v87;
              v38 = v123;
            }

            else
            {
              if (!v76)
              {
                v132[0] = v71;
                LOWORD(v132[1]) = v72;
                BYTE2(v132[1]) = BYTE2(v72);
                BYTE3(v132[1]) = BYTE3(v72);
                BYTE4(v132[1]) = BYTE4(v72);
                BYTE5(v132[1]) = BYTE5(v72);
                v85 = v74;
                sub_2649DEF18(v74, v75);
                v86 = v113;
                sub_264A17F40(v132, v85, v75, &v131);
                v113 = v86;
                sub_2649DEF6C(v85, v75);
                v39 = v126;
                if (!v131)
                {
                  goto LABEL_91;
                }

                goto LABEL_82;
              }

              v97 = v23;
              v98 = v71;
              if (v71 >> 32 < v71)
              {
                goto LABEL_101;
              }

              v110 = v74;
              sub_2649DEF18(v74, v75);
              v99 = sub_264B3FEA4();
              if (v99)
              {
                v100 = sub_264B3FEC4();
                if (__OFSUB__(v98, v100))
                {
                  goto LABEL_104;
                }

                v99 += v98 - v100;
              }

              v23 = v97;
              sub_264B3FEB4();
              v101 = v110;
              v102 = v113;
              sub_264A17F40(v99, v110, v75, v132);
              v113 = v102;
              sub_2649DEF6C(v101, v75);
              v96 = v132[0];
            }

            v43 = v125;
            v39 = v126;
            if ((v96 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

LABEL_82:
          sub_264A18C3C(v38, type metadata accessor for HIDReportMessage);
          sub_264A18C3C(v43, type metadata accessor for HIDReportMessage);
          v33 = v130;
          goto LABEL_6;
        }

LABEL_44:
        if (v77 != 2)
        {
          if (v78)
          {
            goto LABEL_91;
          }

          goto LABEL_82;
        }

        v80 = *(v74 + 16);
        v79 = *(v74 + 24);
        v81 = __OFSUB__(v79, v80);
        v82 = v79 - v80;
        if (v81)
        {
          goto LABEL_98;
        }

        goto LABEL_57;
      }

      v84 = *(v71 + 16);
      v83 = *(v71 + 24);
      v81 = __OFSUB__(v83, v84);
      v78 = v83 - v84;
      if (v81)
      {
        goto LABEL_100;
      }
    }

    if (v77 <= 1)
    {
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  sub_264A18C3C(v65, MEMORY[0x277D77AA8]);
  v38 = v123;
LABEL_90:
  sub_2649D04D4(v61, &qword_27FF89528, &qword_264B530F0);
  v43 = v125;
  v39 = v126;
LABEL_91:
  sub_264A18C3C(v38, type metadata accessor for HIDReportMessage);
  sub_264A18C3C(v43, type metadata accessor for HIDReportMessage);
  sub_264A18C3C(v23, type metadata accessor for HIDMessage);
  v33 = v130;
LABEL_92:
  sub_264A18C3C(v39, type metadata accessor for HIDMessage);
  sub_264A18C3C(v33, type metadata accessor for HIDMessage);
LABEL_93:
  result = 0;
LABEL_94:
  v108 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264A17F40@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_264B3FEA4();
    if (v10)
    {
      v11 = sub_264B3FEC4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_264B3FEB4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_264B3FEA4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_264B3FEC4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_264B3FEB4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_264A18170(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_264A18300(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2649DEF6C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_264A17F40(v14, a3, a4, &v13);
  v10 = v4;
  sub_2649DEF6C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_264A18300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_264B3FEA4();
  v11 = result;
  if (result)
  {
    result = sub_264B3FEC4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_264B3FEB4();
  sub_264A17F40(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_264A183B8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v35[0] = *a1;
  v35[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v36[0] = a1[2];
  *(v36 + 9) = *(a1 + 41);
  v5 = *a2;
  v6 = a2[1];
  *(v38 + 9) = *(a2 + 41);
  v7 = a2[2];
  v37[1] = a2[1];
  v38[0] = v7;
  v8 = *a2;
  v37[0] = v5;
  v10 = *(a1 + 8);
  v9 = *(a1 + 9);
  v12 = *(a1 + 10);
  v11 = *(a1 + 11);
  v13 = *(a1 + 12);
  v14 = *(a2 + 8);
  v15 = *(a2 + 10);
  v27 = *(a2 + 9);
  v28 = *(a2 + 11);
  v16 = *(a2 + 12);
  v32 = v4;
  v33 = v3;
  v34[0] = a1[2];
  *(v34 + 9) = *(a1 + 41);
  v29 = v8;
  v30 = v6;
  v31[0] = a2[2];
  *(v31 + 9) = *(a2 + 41);
  v17 = _s16ScreenSharingKit18ParticipantVersionV2eeoiySbAC_ACtFZ_0(&v32, &v29);
  v39[0] = v29;
  v39[1] = v30;
  v40[0] = v31[0];
  *(v40 + 9) = *(v31 + 9);
  sub_264A186B4(v35, v41);
  sub_264A186B4(v37, v41);
  sub_264A18710(v39);
  v41[0] = v32;
  v41[1] = v33;
  v42[0] = v34[0];
  *(v42 + 9) = *(v34 + 9);
  sub_264A18710(v41);
  if ((v17 & 1) == 0 || (sub_264A1720C(v10, v14) & 1) == 0)
  {
    return 0;
  }

  if (v12 == 4)
  {
    v18 = v9;
    v19 = v13;
    sub_264A18764(v9, 4uLL, v11, v13);
    v20 = v16;
    if (v15 == 4)
    {
      sub_264A18764(v27, 4uLL, v28, v16);
      sub_264A187C4(v9, 4uLL, v11, v13);
      return 1;
    }

    v22 = v15;
    v23 = v27;
    v25 = v15;
    v24 = v28;
    sub_264A18764(v27, v25, v28, v16);
    goto LABEL_9;
  }

  v18 = v9;
  *&v32 = v9;
  *(&v32 + 1) = v12;
  *&v33 = v11;
  *(&v33 + 1) = v13;
  v19 = v13;
  v22 = v15;
  v20 = v16;
  if (v15 == 4)
  {
    sub_264A18764(v18, v12, v11, v13);
    v23 = v27;
    v24 = v28;
    sub_264A18764(v27, 4uLL, v28, v16);
    sub_264A18764(v18, v12, v11, v19);
    sub_264A187D4(v18, v12, v11, v19);
LABEL_9:
    sub_264A187C4(v18, v12, v11, v19);
    sub_264A187C4(v23, v22, v24, v20);
    return 0;
  }

  *&v29 = v27;
  *(&v29 + 1) = v15;
  *&v30 = v28;
  *(&v30 + 1) = v16;
  sub_264A18764(v18, v12, v11, v13);
  sub_264A18764(v27, v15, v28, v16);
  sub_264A18764(v18, v12, v11, v13);
  v26 = _s16ScreenSharingKit18SystemGestureEventO2eeoiySbAC_ACtFZ_0(&v32, &v29);
  sub_264A187D4(v29, *(&v29 + 1), v30, *(&v30 + 1));
  sub_264A187D4(v32, *(&v32 + 1), v33, *(&v33 + 1));
  sub_264A187C4(v18, v12, v11, v13);
  return (v26 & 1) != 0;
}

void sub_264A18764(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 4)
  {
    sub_264A18774(a1, a2, a3, a4);
  }
}

void sub_264A18774(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= 4)
  {

    sub_2649DEF18(a3, a4);
  }
}

void sub_264A187C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 4)
  {
    sub_264A187D4(a1, a2, a3, a4);
  }
}

void sub_264A187D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= 4)
  {

    sub_2649DEF6C(a3, a4);
  }
}

uint64_t sub_264A18824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A18894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_264A188FC()
{
  result = qword_27FF89540;
  if (!qword_27FF89540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89540);
  }

  return result;
}

unint64_t sub_264A18950()
{
  result = qword_27FF89548;
  if (!qword_27FF89548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89548);
  }

  return result;
}

unint64_t sub_264A189A4()
{
  result = qword_27FF89568;
  if (!qword_27FF89568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89568);
  }

  return result;
}

unint64_t sub_264A18A60()
{
  result = qword_27FF89578;
  if (!qword_27FF89578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89578);
  }

  return result;
}

uint64_t sub_264A18AB4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89550, &qword_264B47C20);
    sub_264A18B3C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264A18B3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HIDMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A18B80()
{
  result = qword_27FF89590;
  if (!qword_27FF89590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89590);
  }

  return result;
}

uint64_t sub_264A18BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A18C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264A18CB0()
{
  result = qword_27FF89598;
  if (!qword_27FF89598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89598);
  }

  return result;
}

unint64_t sub_264A18D08()
{
  result = qword_27FF895A0;
  if (!qword_27FF895A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895A0);
  }

  return result;
}

unint64_t sub_264A18D60()
{
  result = qword_27FF895A8;
  if (!qword_27FF895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895A8);
  }

  return result;
}

uint64_t sub_264A18DB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556746E65696C63 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000264B5AD30 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B5AD50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_264A18EE4()
{
  v1 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = sub_264B40944();
  v4 = sub_264B414B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "Invalidating running board assertion", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  [*(v1 + 16) invalidate];
  return v1;
}

uint64_t sub_264A18FDC()
{
  sub_264A18EE4();

  return swift_deallocClassInstance();
}

id sub_264A19034()
{
  v0 = sub_264B41014();
  v1 = sub_264B41014();
  v2 = objc_opt_self();
  v3 = [v2 attributeWithDomain:v0 name:v1];

  v4 = sub_264B41014();
  v5 = sub_264B41014();
  v6 = [v2 attributeWithDomain:v4 name:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_264B47D50;
  *(v7 + 32) = v3;
  *(v7 + 40) = v6;
  v8 = [objc_opt_self() currentProcess];
  v9 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v10 = sub_264B41014();
  sub_264A192D0();
  v11 = sub_264B41144();

  v12 = [v9 initWithExplanation:v10 target:v8 attributes:v11];

  return v12;
}

uint64_t sub_264A19218()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_264A19034();
  *(v0 + 16) = v1;
  v6[0] = 0;
  if ([v1 acquireWithError_])
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_264B3FF84();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v0;
}

unint64_t sub_264A192D0()
{
  result = qword_27FF895B0;
  if (!qword_27FF895B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF895B0);
  }

  return result;
}

CGPoint __swiftcall CGPoint.percentageLocation(in:)(CGSize in)
{
  v3 = v1 * 100.0 / in.width;
  v4 = v2 * 100.0 / in.height;
  result.y = v4;
  result.x = v3;
  return result;
}

uint64_t CGPoint.locationFromPointPercentage(in:layoutDirection:)(uint64_t a1)
{
  v25 = sub_264B3FFD4();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264B40C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FFA71B8);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_264B41754();

  v27 = 0xD000000000000011;
  v28 = 0x8000000264B5AE30;
  v12 = *(v7 + 16);
  v26 = a1;
  v12(v10, a1, v6);
  v13 = sub_264B41064();
  MEMORY[0x266748390](v13);

  v23 = v27;
  v24 = v28;
  v14 = sub_264B41484();
  sub_264B3FF94();
  v15 = sub_264B3FFA4();
  v17 = v16;
  (*(v2 + 8))(v5, v25);
  v18 = sub_264B40944();
  if (os_log_type_enabled(v18, v14))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136446978;
    v21 = sub_2649CC004(v15, v17, &v27);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2050;
    *(v19 + 14) = 22;
    *(v19 + 22) = 2082;
    *(v19 + 24) = sub_2649CC004(0xD000000000000030, 0x8000000264B5AED0, &v27);
    *(v19 + 32) = 2082;
    *(v19 + 34) = sub_2649CC004(v23, v24, &v27);
    _os_log_impl(&dword_2649C6000, v18, v14, "%{public}s:%{public}ld %{public}s %{public}s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  else
  {
  }

  (*(v7 + 104))(v10, *MEMORY[0x277CDFA90], v6);
  sub_264B40C34();
  return (*(v7 + 8))(v10, v6);
}

uint64_t RemoteAuthenticationDeviceState.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A197E0()
{
  result = qword_27FF895B8;
  if (!qword_27FF895B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaSessionEvent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaSessionEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t MediaTransportQOS.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A19A10()
{
  result = qword_27FF895C0;
  if (!qword_27FF895C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895C0);
  }

  return result;
}

uint64_t sub_264A19A9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF895E0, &qword_264B47FC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A1A120();
  sub_264B41BD4();
  v12 = 0;
  sub_264A1A1C8();
  sub_264B41A24();
  if (!v1)
  {
    v11 = 1;
    sub_264B419E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_264A19C34()
{
  if (*v0)
  {
    result = 0x44496D6165727473;
  }

  else
  {
    result = 0x6574617473;
  }

  *v0;
  return result;
}

uint64_t sub_264A19C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496D6165727473 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264A19D44(uint64_t a1)
{
  v2 = sub_264A1A120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A19D80(uint64_t a1)
{
  v2 = sub_264A1A120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A19DBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_264A19F64(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_264A19DE8(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_264A19A9C(a1);
}

uint64_t sub_264A19E04(uint64_t a1, uint64_t a2)
{
  sub_264B41754();
  MEMORY[0x266748390](0x203A657461747320, 0xE800000000000000);
  sub_264B41864();
  MEMORY[0x266748390](0x6D6165727473203BLL, 0xEC000000203A4449);
  MEMORY[0x266748390](a1, a2);
  return 0;
}

uint64_t sub_264A19ED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_264A19F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264A19F64(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF895C8, &qword_264B47FC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A1A120();
  sub_264B41BC4();
  v10[15] = 0;
  sub_264A1A174();
  sub_264B41984();
  v10[14] = 1;
  v8 = sub_264B41944();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_264A1A120()
{
  result = qword_27FF895D0;
  if (!qword_27FF895D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895D0);
  }

  return result;
}

unint64_t sub_264A1A174()
{
  result = qword_27FF895D8;
  if (!qword_27FF895D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895D8);
  }

  return result;
}

unint64_t sub_264A1A1C8()
{
  result = qword_27FF895E8;
  if (!qword_27FF895E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895E8);
  }

  return result;
}

unint64_t sub_264A1A230()
{
  result = qword_27FF895F0;
  if (!qword_27FF895F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895F0);
  }

  return result;
}

unint64_t sub_264A1A288()
{
  result = qword_27FF895F8;
  if (!qword_27FF895F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF895F8);
  }

  return result;
}

unint64_t sub_264A1A2E0()
{
  result = qword_27FF89600;
  if (!qword_27FF89600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89600);
  }

  return result;
}

uint64_t sub_264A1A35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_264B41694();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v6 = *(a1 + 36);

    return sub_264A1EE18(result, v6, a1, a2);
  }

  return result;
}

uint64_t MediaTransportControlStream.streamIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

char *MediaTransportControlStream.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);

  v8 = sub_264B40944();
  v9 = sub_264B414B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_2649CC004(*(v1 + 2), *(v1 + 3), &v20);
    _os_log_impl(&dword_2649C6000, v8, v9, "deinit control channel with streamID:%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  v12 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStreamContinuation;
  (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStreamContinuation], v2);
  sub_264B412B4();
  v13 = *(v3 + 8);
  v13(v6, v2);
  v14 = *(v1 + 3);

  v15 = *(v1 + 5);

  sub_2649D04D4(&v1[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream], &qword_27FF89618, &qword_264B4B9F0);

  v16 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStream;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  (*(*(v17 - 8) + 8))(&v1[v16], v17);
  v13(&v1[v12], v2);

  return v1;
}

uint64_t MediaTransportControlStream.__deallocating_deinit()
{
  MediaTransportControlStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264A1A780@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FB8, &unk_264B46970);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v53);
  v45[1] = v14;
  v46 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = v45 - v15;
  v16 = sub_264B3FFD4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v21 = sub_264B40964();
  __swift_project_value_buffer(v21, qword_27FFA71D0);
  v22 = sub_264B41484();
  sub_264B3FF94();
  v23 = sub_264B3FFA4();
  v25 = v24;
  (*(v17 + 8))(v20, v16);

  v26 = sub_264B40944();

  if (os_log_type_enabled(v26, v22))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55[0] = v28;
    *v27 = 136446722;
    v29 = sub_2649CC004(v23, v25, v55);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2050;
    *(v27 + 14) = 58;
    *(v27 + 22) = 2082;
    *(v27 + 24) = sub_2649CC004(0x6574617669746361, 0xEA00000000002928, v55);
    _os_log_impl(&dword_2649C6000, v26, v22, "%{public}s:%{public}ld %{public}s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v28, -1, -1);
    MEMORY[0x266749940](v27, -1, -1);
  }

  else
  {
  }

  v30 = v53;
  v32 = v48;
  v31 = v49;
  (*(v48 + 104))(v10, *MEMORY[0x277D85778], v49);
  v33 = v52;
  sub_264B41284();
  (*(v32 + 8))(v10, v31);
  v34 = *(v11 + 16);
  v35 = v51;
  v34(v51, v33, v30);
  (*(v11 + 56))(v35, 0, 1, v30);
  v36 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream;
  v37 = v54;
  swift_beginAccess();
  sub_264A1E600(v35, v37 + v36);
  swift_endAccess();
  if (*(v37 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_role))
  {
    sub_264A1ADE8(v33);
  }

  else
  {
    v38 = sub_264B41274();
    v39 = v47;
    (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = v46;
    v34(v46, v33, v30);
    v42 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v43 = swift_allocObject();
    *(v43 + 2) = 0;
    *(v43 + 3) = 0;
    *(v43 + 4) = v40;
    (*(v11 + 32))(&v43[v42], v41, v30);
    sub_264A10C20(0, 0, v39, &unk_264B48148, v43);
  }

  return (*(v11 + 8))(v33, v30);
}

uint64_t sub_264A1ADE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264B40EB4();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40EE4();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v24 = [*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_currentSession) dispatchQueue];
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = sub_264A1EEA4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_27;
  v20 = _Block_copy(aBlock);

  sub_264B40EC4();
  v28 = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  v21 = v24;
  MEMORY[0x266748860](0, v11, v7, v20);
  _Block_release(v20);

  (*(v27 + 8))(v7, v4);
  (*(v25 + 8))(v11, v26);
}

uint64_t sub_264A1B1AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A1B1D0, 0, 0);
}

uint64_t sub_264A1B1D0()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_264A1B27C;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_264A1B370(v3, v2, v7, v5);
}

uint64_t sub_264A1B27C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264A1B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  return MEMORY[0x2822009F8](sub_264A1B398, 0, 0);
}

uint64_t sub_264A1B398()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[30];
  v5 = v1[28];
  v4 = v1[29];
  v7 = v1[26];
  v6 = v1[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89670, &qword_264B48248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  *(inited + 32) = 30836;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  sub_2649DEF18(v5, v4);
  v9 = sub_264A2454C(inited);
  swift_setDeallocating();
  sub_2649D04D4(inited + 32, &qword_27FF89678, &unk_264B48250);
  v10 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream);
  v11 = sub_264B41014();
  v1[31] = v11;
  sub_264AB4C64(v9);

  v12 = sub_264B40F54();
  v1[32] = v12;

  v1[2] = v1;
  v1[3] = sub_264A1B5C0;
  v13 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_2649F4D64;
  v1[21] = &block_descriptor_19;
  v1[22] = v13;
  [v10 sendEventID:v11 event:v12 options:0 completion:?];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_264A1B5C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_264A1B738;
  }

  else
  {
    v3 = sub_264A1B6D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A1B6D0()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A1B738()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[33];

  return v4();
}

uint64_t sub_264A1B7B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);
  v10 = sub_264B41484();
  sub_264B3FF94();
  v11 = sub_264B3FFA4();
  v13 = v12;
  (*(v5 + 8))(v8, v4);

  v14 = sub_264B40944();

  if (os_log_type_enabled(v14, v10))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446722;
    v17 = sub_2649CC004(v11, v13, &v23);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2050;
    *(v15 + 14) = 78;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_2649CC004(0x4465766965636572, 0xED00002928617461, &v23);
    _os_log_impl(&dword_2649C6000, v14, v10, "%{public}s:%{public}ld %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  else
  {
  }

  v18 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_dataStream;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F88, &unk_264B470C0);
  a1[3] = v19;
  a1[4] = sub_2649CB4C8(&qword_27FF88F90, &qword_27FF88F88, &unk_264B470C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v2 + v18, v19);
}

uint64_t sub_264A1BAF0(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v44 = &v39 - v15;
  v16 = sub_264B3FFD4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  result = swift_beginAccess();
  if ((*(v2 + 32) & 1) == 0)
  {
    v41 = v21;
    v42 = v8;
    v43 = v5;
    v40 = v4;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v23 = sub_264B40964();
    __swift_project_value_buffer(v23, qword_27FFA71D0);
    v24 = sub_264B41484();
    sub_264B3FF94();
    v25 = sub_264B3FFA4();
    v27 = v26;
    (*(v17 + 8))(v20, v16);

    v28 = sub_264B40944();

    if (os_log_type_enabled(v28, v24))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47[0] = v30;
      *v29 = 136446722;
      v31 = sub_2649CC004(v25, v27, v47);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2050;
      *(v29 + 14) = 285;
      *(v29 + 22) = 2082;
      *(v29 + 24) = sub_2649CC004(0x697469736E617274, 0xEF293A6F74286E6FLL, v47);
      _os_log_impl(&dword_2649C6000, v28, v24, "%{public}s:%{public}ld %{public}s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v30, -1, -1);
      MEMORY[0x266749940](v29, -1, -1);
    }

    else
    {
    }

    v33 = v42;
    v32 = v43;
    sub_264A1DFB0();
    *(v2 + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
    sub_264B412B4();
    [*(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream) invalidate];
    v34 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream;
    swift_beginAccess();
    sub_264A1ED98(v2 + v34, v12);
    v35 = v45;
    v36 = (*(v45 + 48))(v12, 1, v13);
    v37 = v41;
    if (v36 == 1)
    {
      return sub_2649D04D4(v12, &qword_27FF89618, &qword_264B4B9F0);
    }

    else
    {
      v38 = v44;
      (*(v35 + 32))(v44, v12, v13);
      v46 = v37;
      sub_264A1EE08(v37);
      sub_264B412A4();
      (*(v32 + 8))(v33, v40);
      sub_264B412B4();
      return (*(v35 + 8))(v38, v13);
    }
  }

  return result;
}

uint64_t sub_264A1C04C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A1C070, 0, 0);
}

uint64_t sub_264A1C070()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_264A1FFF8;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_264A1B370(v3, v2, v7, v5);
}

void sub_264A1C120(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v3 = *(v42 - 8);
  v41 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v41 - v4;
  v6 = sub_264B3FFD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v11 = sub_264B40964();
  v12 = __swift_project_value_buffer(v11, qword_27FFA71D0);
  v13 = sub_264B41484();
  sub_264B3FF94();
  v14 = sub_264B3FFA4();
  v16 = v15;
  (*(v7 + 8))(v10, v6);

  v44 = v12;
  v17 = sub_264B40944();

  if (os_log_type_enabled(v17, v13))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136446722;
    v20 = sub_2649CC004(v14, v16, &aBlock);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2050;
    *(v18 + 14) = 89;
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B5B0E0, &aBlock);
    _os_log_impl(&dword_2649C6000, v17, v13, "%{public}s:%{public}ld %{public}s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);
  }

  else
  {
  }

  v21 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream);
  v22 = *(v2 + 16);
  v23 = *(v2 + 24);
  v24 = sub_264B41014();
  [v21 setStreamID_];

  [v21 setStreamType_];
  [v21 setStreamFlags_];
  [v21 setDispatchQueue_];
  v25 = swift_allocObject();
  swift_weakInit();
  v49 = sub_264A1EFEC;
  v50 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_2649D68F4;
  v48 = &block_descriptor_38;
  v26 = _Block_copy(&aBlock);

  [v21 setDisconnectHandler_];
  _Block_release(v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v49 = sub_264A1F010;
  v50 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_2649D68F4;
  v48 = &block_descriptor_42;
  v28 = _Block_copy(&aBlock);

  [v21 setInvalidationHandler_];
  _Block_release(v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v5;
  v31 = v5;
  v32 = v42;
  (*(v3 + 16))(v31, v43, v42);
  v33 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  (*(v3 + 32))(v34 + v33, v30, v32);
  v49 = sub_264A1F104;
  v50 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_264A1C9BC;
  v48 = &block_descriptor_49;
  v35 = _Block_copy(&aBlock);

  [v21 setReceivedEventHandler_];
  _Block_release(v35);
  v36 = swift_allocObject();
  swift_weakInit();
  v49 = sub_264A1F1AC;
  v50 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_2649D68F4;
  v48 = &block_descriptor_53;
  v37 = _Block_copy(&aBlock);

  [v21 setStatusChangedHandler_];
  _Block_release(v37);
  v38 = sub_264B40944();
  v39 = sub_264B41474();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2649C6000, v38, v39, "configured rapport stream", v40, 2u);
    MEMORY[0x266749940](v40, -1, -1);
  }
}

uint64_t sub_264A1C800(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71D0);
    v6 = sub_264B40944();
    v7 = sub_264B414B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, a2, v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    swift_beginAccess();
    if ((*(v4 + 32) & 1) == 0)
    {
      v9 = 2;
      sub_264A1BAF0(&v9);
    }
  }

  return result;
}

uint64_t sub_264A1C948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264A1F218(a3);
  }

  return result;
}

uint64_t sub_264A1C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = sub_264B41044();
  v9 = v8;
  v10 = sub_264B40F64();
  if (a4)
  {
    a4 = sub_264B40F64();
  }

  v6(v7, v9, v10, a4);
}

void sub_264A1CAA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (([*(Strong + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream) statusFlags] & 0x2000000) != 0)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v1 = sub_264B40964();
      __swift_project_value_buffer(v1, qword_27FFA71D0);
      v2 = sub_264B40944();
      v3 = sub_264B41494();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_2649C6000, v2, v3, "AWDL degraded", v4, 2u);
        MEMORY[0x266749940](v4, -1, -1);
      }

      sub_264A1F1B4();
      v5 = swift_allocError();
      *v6 = 1;
      v8 = v5;
      v7 = v5;
      sub_264A1BAF0(&v8);

      sub_264A1F208(v8);
    }

    else
    {
    }
  }
}

void sub_264A1CC28(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - v6;
  v58 = sub_264B3FFD4();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v58);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v54 = v7;
    v55 = v4;
    v53 = v5;
    v57 = a2;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    v15 = __swift_project_value_buffer(v14, qword_27FFA71D0);
    v16 = sub_264B414B4();
    v50 = "ayoutDirection:)";
    sub_264B3FF94();
    v17 = sub_264B3FFA4();
    v19 = v18;
    v20 = *(v8 + 8);
    v51 = v8 + 8;
    v49 = v20;
    v20(v11, v58);

    v52 = v15;
    v21 = sub_264B40944();

    v22 = os_log_type_enabled(v21, v16);
    v56 = v3;
    v48 = "sendInvalidationEvent()";
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446722;
      v25 = sub_2649CC004(v17, v19, &aBlock);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2050;
      *(v23 + 14) = 142;
      *(v23 + 22) = 2082;
      *(v23 + 24) = sub_2649CC004(0xD000000000000023, 0x8000000264B5B070, &aBlock);
      _os_log_impl(&dword_2649C6000, v21, v16, "%{public}s:%{public}ld %{public}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v24, -1, -1);
      MEMORY[0x266749940](v23, -1, -1);
    }

    else
    {
    }

    sub_264A1C120(v57);
    v26 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream;
    [*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream) setTrafficFlags_];
    [*(v13 + v26) setStreamQoS_];
    aBlock = 0;
    v60 = 0xE000000000000000;
    sub_264B41754();
    MEMORY[0x266748390](0xD000000000000016, 0x8000000264B5B0A0);
    v65 = 0x10000;
    type metadata accessor for CUTrafficFlags(0);
    v27 = sub_264B41064();
    MEMORY[0x266748390](v27);

    MEMORY[0x266748390](0xD00000000000001BLL, 0x8000000264B5B0C0);
    v28 = v60;
    v47 = aBlock;
    v29 = sub_264B414B4();
    sub_264B3FF94();
    v30 = sub_264B3FFA4();
    v32 = v31;
    v49(v11, v58);
    v33 = sub_264B40944();
    if (os_log_type_enabled(v33, v29))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v34 = 136446978;
      v36 = sub_2649CC004(v30, v32, &aBlock);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2050;
      *(v34 + 14) = 156;
      *(v34 + 22) = 2082;
      *(v34 + 24) = sub_2649CC004(0xD000000000000023, v48 | 0x8000000000000000, &aBlock);
      *(v34 + 32) = 2082;
      *(v34 + 34) = sub_2649CC004(v47, v28, &aBlock);
      _os_log_impl(&dword_2649C6000, v33, v29, "%{public}s:%{public}ld %{public}s %{public}s", v34, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v35, -1, -1);
      MEMORY[0x266749940](v34, -1, -1);
    }

    else
    {
    }

    v37 = *(v13 + v26);
    v38 = swift_allocObject();
    swift_weakInit();
    v40 = v54;
    v39 = v55;
    v41 = v56;
    (*(v55 + 16))(v54, v57, v56);
    v42 = (*(v39 + 80) + 24) & ~*(v39 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    (*(v39 + 32))(v43 + v42, v40, v41);
    v63 = sub_264A1EF6C;
    v64 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_2649F9844;
    v62 = &block_descriptor_34;
    v44 = _Block_copy(&aBlock);
    v45 = v37;

    [v45 activateWithCompletion_];
    _Block_release(v44);
  }

  else
  {
    sub_264B412B4();
  }
}

void sub_264A1D304(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    goto LABEL_5;
  }

  if (a1)
  {
    v12 = a1;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412A4();
    (*(v3 + 8))(v6, v2);
LABEL_5:
    sub_264B412B4();
    return;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  __swift_project_value_buffer(v8, qword_27FFA71D0);
  v9 = sub_264B40944();
  v10 = sub_264B414B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2649C6000, v9, v10, "Rapport stream activated", v11, 2u);
    MEMORY[0x266749940](v11, -1, -1);
  }
}

uint64_t sub_264A1D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = sub_264B3FFD4();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A1D638, 0, 0);
}

uint64_t sub_264A1D638()
{
  v25 = v0;
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];
    v7 = sub_264B40964();
    v0[20] = __swift_project_value_buffer(v7, qword_27FFA71D0);
    v8 = sub_264B414B4();
    sub_264B3FF94();
    v9 = sub_264B3FFA4();
    v11 = v10;
    (*(v5 + 8))(v4, v6);

    v12 = sub_264B40944();

    if (os_log_type_enabled(v12, v8))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446722;
      v15 = sub_2649CC004(v9, v11, &v24);

      *(v13 + 4) = v15;
      *(v13 + 12) = 2050;
      *(v13 + 14) = 185;
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_2649CC004(0xD000000000000023, 0x8000000264B5B190, &v24);
      _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    else
    {
    }

    sub_264A1C120(v0[12]);
    v21 = *(v3 + 16);
    v22 = *(v3 + 24);
    v0[21] = v22;

    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_264A1D978;

    return sub_264A1FB60(v21, v22);
  }

  else
  {
    v16 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412B4();
    v17 = v0[18];
    v18 = v0[15];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_264A1D978()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_264A1DB6C;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_264A1DA94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264A1DA94()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v0[10] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  sub_264B412A4();

  (*(v3 + 8))(v2, v5);
  v6 = v0[18];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_264A1DB6C()
{
  v28 = v0;
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];

  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[7];
    v13 = sub_264B41B24();
    v15 = sub_2649CC004(v13, v14, &v27);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v5, v6, "error for sending message:%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v16 = v0[23];
  v17 = v0[19];
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v21 = v0[13];
  v0[8] = v16;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  sub_264B412A4();
  (*(v19 + 8))(v18, v21);
  sub_264B412B4();

  v23 = v0[18];
  v24 = v0[15];

  v25 = v0[1];

  return v25();
}

uint64_t sub_264A1DD68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89690, &qword_264B48270);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71D0);

  v16 = sub_264B40944();
  v17 = sub_264B41484();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24[1] = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = a1;
    v22 = v20;
    v25[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_2649CC004(v21, a2, v25);
    _os_log_impl(&dword_2649C6000, v16, v17, "Processing event for stream: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  v25[0] = a3;
  v25[1] = a4;
  sub_2649DEF18(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA0, &unk_264B48130);
  sub_264B412A4();
  return (*(v11 + 8))(v14, v10);
}

void sub_264A1DFB0()
{
  v1 = v0;
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, &aBlock);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 264;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0xD000000000000017, 0x8000000264B5B050, &aBlock);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_currentSession);
  v17 = sub_264B41014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89188, &unk_264B46F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  aBlock = 0x6574617473;
  v28 = 0xE500000000000000;
  v19 = MEMORY[0x277D837D0];
  sub_264B416F4();
  *(inited + 96) = v19;
  *(inited + 72) = 0xD000000000000019;
  *(inited + 80) = 0x8000000264B58C30;
  aBlock = 0xD000000000000010;
  v28 = 0x8000000264B59590;
  sub_264B416F4();
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  *(inited + 168) = v19;
  *(inited + 144) = v21;
  *(inited + 152) = v20;

  sub_264A240D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89190, &qword_264B48240);
  swift_arrayDestroy();
  v22 = sub_264B40F54();

  v23 = *MEMORY[0x277D44228];
  v31 = sub_264A1E44C;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2649F9844;
  v30 = &block_descriptor_3;
  v24 = _Block_copy(&aBlock);
  v25 = v23;
  [v16 sendEventID:v17 event:v22 destinationID:v25 options:0 completion:v24];
  _Block_release(v24);
}

void sub_264A1E44C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = a1;
    v5 = sub_264B40944();
    v6 = sub_264B41494();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = sub_264B41B24();
      v11 = sub_2649CC004(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2649C6000, v5, v6, "%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_264A1E600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A1E670()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A1E6A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A1E780(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A1D510(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264A1E884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_264A1E8CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t type metadata accessor for MediaTransportControlStream()
{
  result = qword_27FF89650;
  if (!qword_27FF89650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A1E964()
{
  sub_264A1ECE0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_264A1ED44(319, &qword_27FF88F60, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_264A1ED44(319, &qword_27FF88F58, MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MediaTransportControlStream.send(_:reliability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2649CD850;

  return v12(a1, a2, a3);
}

void sub_264A1ECE0()
{
  if (!qword_27FF89660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88FA8, &qword_264B46960);
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF89660);
    }
  }
}

void sub_264A1ED44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CC9318]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264A1ED98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_264A1EE08(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_264A1EE18@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_264A1FB04(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_18(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

void sub_264A1EEA4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_264A1CC28(v2, v3);
}

unint64_t sub_264A1EF14()
{
  result = qword_27FF892C0;
  if (!qword_27FF892C0)
  {
    sub_264B40EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF892C0);
  }

  return result;
}

void sub_264A1EF6C(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8) + 80);
  v4 = *(v1 + 16);

  sub_264A1D304(a1);
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A1F104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960) - 8) + 80);
  v8 = *(v3 + 16);

  return sub_264A1C948(a1, a2, a3);
}

unint64_t sub_264A1F1B4()
{
  result = qword_27FF89680;
  if (!qword_27FF89680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89680);
  }

  return result;
}

void sub_264A1F208(id a1)
{
  if (a1 >= 3)
  {
  }
}

void sub_264A1F218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - v4;
  v5 = sub_264B3FFD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71D0);
  v11 = sub_264B41484();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);

  v15 = sub_264B40944();

  if (os_log_type_enabled(v15, v11))
  {
    v47 = a1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54[0] = v17;
    *v16 = 136446722;
    v18 = sub_2649CC004(v12, v14, v54);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 231;
    *(v16 + 22) = 2082;
    a1 = v47;
    *(v16 + 24) = sub_2649CC004(0xD000000000000031, 0x8000000264B5B150, v54);
    _os_log_impl(&dword_2649C6000, v15, v11, "%{public}s:%{public}ld %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }

  else
  {
  }

  v19 = sub_264B40944();
  v20 = sub_264B41484();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v54[0] = v22;
    *v21 = 136446210;
    *&v52 = *(a1 + 16);
    v23 = sub_264B41A64();
    v25 = sub_2649CC004(v23, v24, v54);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2649C6000, v19, v20, "Processing rapport event with count: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  *&v52 = 0x6574617473;
  *(&v52 + 1) = 0xE500000000000000;
  sub_264B416F4();
  if (!*(a1 + 16) || (v26 = sub_264A20A44(v54), (v27 & 1) == 0))
  {
    sub_2649C95C0(v54);
    v52 = 0u;
    v53 = 0u;
    sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
    *&v52 = 30836;
    *(&v52 + 1) = 0xE200000000000000;
    sub_264B416F4();
    if (*(a1 + 16) && (v34 = sub_264A20A44(v54), (v35 & 1) != 0))
    {
      sub_2649C964C(*(a1 + 56) + 32 * v34, &v52);
      sub_2649C95C0(v54);
      sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
      sub_264A1A35C(a1, v54);
      if (v55)
      {
        if (swift_dynamicCast())
        {
          v36 = v52;
          v51 = v52;

          sub_264B416F4();
          if (*(a1 + 16) && (v37 = sub_264A20A44(v54), (v38 & 1) != 0))
          {
            sub_2649C964C(*(a1 + 56) + 32 * v37, &v52);
            sub_2649C95C0(v54);
            if (swift_dynamicCast())
            {
              v39 = v51;
              sub_264A1DD68(v36, *(&v36 + 1), v51, *(&v51 + 1));
              sub_2649DEF6C(v39, *(&v39 + 1));

              return;
            }
          }

          else
          {
            sub_2649C95C0(v54);
          }

          v40 = sub_264B40944();
          v41 = sub_264B41494();
          if (!os_log_type_enabled(v40, v41))
          {
            goto LABEL_32;
          }

          v42 = swift_slowAlloc();
          *v42 = 0;
          v43 = "Unable to process event data for incoming message";
          goto LABEL_31;
        }
      }

      else
      {
        sub_2649D04D4(v54, &qword_27FF89688, &unk_264B48260);
      }

      v40 = sub_264B40944();
      v41 = sub_264B41494();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "Unable to process event key for incoming message";
        goto LABEL_31;
      }
    }

    else
    {
      sub_2649C95C0(v54);
      v52 = 0u;
      v53 = 0u;
      sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
      v40 = sub_264B40944();
      v41 = sub_264B41494();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "Unable to process received control event";
LABEL_31:
        _os_log_impl(&dword_2649C6000, v40, v41, v43, v42, 2u);
        MEMORY[0x266749940](v42, -1, -1);
      }
    }

LABEL_32:

    return;
  }

  sub_2649C964C(*(a1 + 56) + 32 * v26, &v52);
  sub_2649C95C0(v54);
  sub_2649D04D4(&v52, &qword_27FF8BB60, qword_264B44A80);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89218, &qword_264B470F8);
  v54[0] = a1;

  sub_2649E7454(v54, 1);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_0(v54);
  if (v29)
  {

    v30 = sub_264B40944();
    v31 = sub_264B414B4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2649C6000, v30, v31, "connection activated", v32, 2u);
      MEMORY[0x266749940](v32, -1, -1);
    }

    v54[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    v33 = v48;
    sub_264B412A4();
    (*(v49 + 8))(v33, v50);
  }

  else
  {
    sub_264A1F1B4();
    v44 = swift_allocError();
    *v45 = 0;
    v54[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    v46 = v48;
    sub_264B412A4();
    (*(v49 + 8))(v46, v50);
    sub_264B412B4();
  }
}

uint64_t sub_264A1FB60(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_264A1FB84, 0, 0);
}

uint64_t sub_264A1FB84()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891E0, &unk_264B47030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  *(inited + 32) = 0x6574617473;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x6341726576726573;
  *(inited + 56) = 0xEF64657461766974;
  *(inited + 64) = 0x44496D6165727473;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v3;
  *(inited + 88) = v1;

  v5 = sub_264A24438(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891E8, qword_264B51630);
  swift_arrayDestroy();
  v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream);
  v7 = sub_264B41014();
  v0[33] = v7;
  sub_264AB4F2C(v5);

  v8 = sub_264B40F54();
  v0[34] = v8;

  v0[2] = v0;
  v0[3] = sub_264A1FDE8;
  v9 = swift_continuation_init();
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[22] = MEMORY[0x277D85DD0];
  v0[23] = 1107296256;
  v0[24] = sub_2649F4D64;
  v0[25] = &block_descriptor_57_0;
  v0[26] = v9;
  [v6 sendEventID:v7 event:v8 options:0 completion:v0 + 22];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264A1FDE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_264A1FF60;
  }

  else
  {
    v3 = sub_264A1FEF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A1FEF8()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A1FF60()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[35];

  return v4();
}

uint64_t sub_264A2001C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A20090()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit37MockMediaTransportClientSessionVendor__mediaTransportClientSession;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896C8, qword_264B48338);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockMediaTransportClientSessionVendor()
{
  result = qword_27FF896A0;
  if (!qword_27FF896A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A2018C()
{
  sub_264A2021C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264A2021C()
{
  if (!qword_27FF896B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF896B8, qword_264B482D8);
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF896B0);
    }
  }
}

uint64_t sub_264A202A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264A20324(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A203A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  v5 = v12;
  if (!v12)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = type metadata accessor for MockMediaTransportClientSession();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();

    v5 = sub_2649DD534(v6, v7, a3, 0);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_264B40A94();
  }

  sub_264A204C8();
  return v5;
}

unint64_t sub_264A204C8()
{
  result = qword_27FF896C0;
  if (!qword_27FF896C0)
  {
    type metadata accessor for MockMediaTransportClientSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF896C0);
  }

  return result;
}

void *HIDDebugInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v0[2] = 0;
  v0[3] = v1;
  v0[4] = sub_264A2485C(v1, &qword_27FF89728, &qword_264B48438);
  return v0;
}

void *HIDDebugInfo.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = 0;
  v0[3] = v1;
  v0[4] = sub_264A2485C(v1, &qword_27FF89728, &qword_264B48438);
  return v0;
}

uint64_t sub_264A205DC()
{
  swift_beginAccess();
  v1 = 0;
  result = 0;
  v3 = *(v0 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return result;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_264A206A4()
{
  v1 = *(v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

uint64_t sub_264A206BC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    v5 = sub_264A20A88(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      v8 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  v8 = 1;
LABEL_7:
  swift_beginAccess();
  v9 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_264A22CCC(v8, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v12;
  return swift_endAccess();
}

uint64_t sub_264A20784(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t HIDDebugInfo.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t HIDDebugInfo.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_264A20828()
{
  if (*(v0 + 16) < 1)
  {
    return 0;
  }

  sub_264B41754();

  v3 = *(v0 + 16);
  v1 = sub_264B41A64();
  MEMORY[0x266748390](v1);

  return 0xD000000000000016;
}

uint64_t HIDDebugInfo.description.getter()
{
  sub_264B41754();
  MEMORY[0x266748390](0xD000000000000010, 0x8000000264B5B220);
  v1 = sub_264A20828();
  MEMORY[0x266748390](v1);

  MEMORY[0x266748390](0xD00000000000001DLL, 0x8000000264B5B240);
  v5 = *(*(v0 + 24) + 16);
  v2 = sub_264B41A64();
  MEMORY[0x266748390](v2);

  MEMORY[0x266748390](0xD00000000000001BLL, 0x8000000264B5B260);
  sub_264A205DC();
  v3 = sub_264B41A64();
  MEMORY[0x266748390](v3);

  return 0;
}

unint64_t sub_264A20A44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_264B416D4();

  return sub_264A20C44(a1, v5);
}

unint64_t sub_264A20A88(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_264B41B74();

  return sub_264A20D0C(a1, v4);
}

unint64_t sub_264A20ACC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_264B41B84();
  sub_264B41084();
  v6 = sub_264B41BB4();

  return sub_264A20D78(a1, a2, v6);
}

unint64_t sub_264A20B44(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_264B41B84();
  sub_264B41084();

  v5 = sub_264B41BB4();

  return sub_264A20E30(a1 & 1, v5);
}

unint64_t sub_264A20BD8(char a1)
{
  v3 = *(v1 + 40);
  sub_264B41B84();
  MEMORY[0x266748E90](a1 & 1);
  v4 = sub_264B41BB4();

  return sub_264A20F30(a1 & 1, v4);
}

unint64_t sub_264A20C44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264A1FB04(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2667489E0](v9, a1);
      sub_2649C95C0(v9);
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

unint64_t sub_264A20D0C(uint64_t a1, uint64_t a2)
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

unint64_t sub_264A20D78(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264B41AA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264A20E30(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F65646976;
    }

    else
    {
      v6 = 0x6F69647561;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6F65646976 : 0x6F69647561;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_264B41AA4();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_264A20F30(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_264A20FA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
  v36 = a2;
  result = sub_264B418A4();
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
        sub_264A23FD8(v25, v37);
      }

      else
      {
        sub_2649C964C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
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
      result = sub_264A23FD8(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_264A21258(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89708, &qword_264B48408);
  v33 = a2;
  result = sub_264B418A4();
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
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
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

uint64_t sub_264A21510(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_264B418A4();
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
      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
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

uint64_t sub_264A217B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D0, &qword_264B483D0);
  result = sub_264B418A4();
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
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v22 = *(v8 + 40);
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
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

uint64_t sub_264A21A64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89728, &qword_264B48438);
  result = sub_264B418A4();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_264B41B74();
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

LABEL_35:
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_264A21CC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
  result = sub_264B418A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_264A23FD8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_264A1FB04(v24, &v38);
        sub_2649C964C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_264B416D4();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_264A23FD8(v37, (*(v8 + 56) + 32 * v16));
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_264A21F80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F0, &unk_264B483F0);
  v39 = a2;
  result = sub_264B418A4();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_264A22224(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89720, &qword_264B48428);
  result = sub_264B418A4();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_264B41B84();
      MEMORY[0x266748E90](v21);
      result = sub_264B41BB4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + v16) = v22;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_264A224A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896E8, &qword_264B483E8);
  result = sub_264B418A4();
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
      v32 = *(*(v5 + 56) + 16 * v20);
      v22 = *(v8 + 40);
      result = sub_264B41B74();
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
      *(*(v8 + 56) + 16 * v16) = v32;
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

_OWORD *sub_264A22708(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_264A20ACC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_264A23238();
      v11 = v19;
      goto LABEL_8;
    }

    sub_264A20FA0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_264A20ACC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_264B41AE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_264A23FD8(a1, v23);
  }

  else
  {
    sub_264A231CC(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_264A22858(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_264A20B44(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_264A21258(v14, a3 & 1);
      v18 = *v4;
      result = sub_264A20B44(v8);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_264B41AE4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_264A233DC();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_264A229CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_264A20ACC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_264A21510(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_264A20ACC(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_264B41AE4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_264A2354C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

unint64_t sub_264A22B6C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = a3 & 1;
  result = sub_264A20B44(a3 & 1);
  v13 = *(v9 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v9 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_264A217B0(v16, a4 & 1);
      v20 = *v5;
      result = sub_264A20B44(v10);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_264B41AE4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_264A236AC();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = v10;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = *v23;
  *v23 = a1;
  v23[1] = a2;

  return swift_unknownObjectRelease();
}

unint64_t sub_264A22CCC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_264A20A88(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_264A23810();
    result = v17;
    goto LABEL_8;
  }

  sub_264A21A64(v14, a3 & 1);
  v18 = *v4;
  result = sub_264A20A88(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

uint64_t sub_264A22DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_264A20ACC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_264A21F80(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_264A20ACC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_264B41AE4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_264A23B00();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_264A22F68(char a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_264A20BD8(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_264A23C6C();
    result = v17;
    goto LABEL_8;
  }

  sub_264A22224(v14, a3 & 1);
  v18 = *v4;
  result = sub_264A20BD8(v8);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = v8;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

unint64_t sub_264A23094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_264A20A88(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_264A23DB8();
    result = v19;
    goto LABEL_8;
  }

  sub_264A224A4(v16, a4 & 1);
  v20 = *v5;
  result = sub_264A20A88(a3);
  if ((v17 & 1) == (v21 & 1))
  {
LABEL_8:
    v22 = *v5;
    if (v17)
    {
      v23 = (v22[7] + 16 * result);
      *v23 = a1;
      v23[1] = a2;
      return result;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v24 = (v22[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    v25 = v22[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v22[2] = v26;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

_OWORD *sub_264A231CC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_264A23FD8(a4, (a5[7] + 32 * a1));
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

void *sub_264A23238()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
  v2 = *v0;
  v3 = sub_264B41894();
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
        sub_2649C964C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_264A23FD8(v25, (*(v4 + 56) + v22));
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

void *sub_264A233DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89708, &qword_264B48408);
  v2 = *v0;
  v3 = sub_264B41894();
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

void *sub_264A2354C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264B41894();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

    *v3 = v6;
  }

  return result;
}

void *sub_264A236AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D0, &qword_264B483D0);
  v2 = *v0;
  v3 = sub_264B41894();
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

void *sub_264A23810()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89728, &qword_264B48438);
  v2 = *v0;
  v3 = sub_264B41894();
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

void *sub_264A2395C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
  v2 = *v0;
  v3 = sub_264B41894();
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
        v18 = 40 * v17;
        sub_264A1FB04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2649C964C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_264A23FD8(v22, (*(v4 + 56) + v17));
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

id sub_264A23B00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F0, &unk_264B483F0);
  v2 = *v0;
  v3 = sub_264B41894();
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

void *sub_264A23C6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89720, &qword_264B48428);
  v2 = *v0;
  v3 = sub_264B41894();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_264A23DB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896E8, &qword_264B483E8);
  v2 = *v0;
  v3 = sub_264B41894();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
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

_OWORD *sub_264A23FD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_264A23FE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896E8, &qword_264B483E8);
    v3 = sub_264B418B4();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_264A20A88(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_264A240D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v3 = sub_264B418B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2649D046C(v4, v13, &qword_27FF89190, &qword_264B48240);
      result = sub_264A20A44(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_264A23FD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_264A2420C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D0, &qword_264B483D0);
    v3 = sub_264B418B4();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      swift_unknownObjectRetain();
      result = sub_264A20B44(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_264A24308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
    v3 = sub_264B418B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2649D046C(v4, &v13, &qword_27FF89220, &qword_264B48430);
      v5 = v13;
      v6 = v14;
      result = sub_264A20ACC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_264A23FD8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_264A24438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89710, &qword_264B48410);
    v3 = sub_264B418B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_264A20ACC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_264A2454C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89730, &qword_264B48440);
    v3 = sub_264B418B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_2649DEF18(v7, v8);
      result = sub_264A20ACC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_264A24664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F0, &unk_264B483F0);
    v3 = sub_264B418B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_264A20ACC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_264A24768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89720, &qword_264B48428);
    v3 = sub_264B418B4();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_264A20BD8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_264A2485C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_264B418B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_264A20A88(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
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

void sub_264A24930(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71D0);
  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v15 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState);
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_2649C6000, v5, v6, "MediaTransportAudioStream state changed from %{public}s to %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  if (v2 == 5)
  {
    sub_264B41874();
    __break(1u);
  }
}

uint64_t sub_264A24B48(uint64_t a1, void *a2)
{
  v104 = a1;
  v112[25] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v95 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF898E0, qword_264B48650);
  v101 = *(v102 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v95 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v103 = &v95 - v11;
  v12 = sub_264B40104();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v110 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v16 = *(*(v99 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v99);
  v109 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v95 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v111 = &v95 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46DF0;
  v26 = *MEMORY[0x277CE57D0];
  *(inited + 32) = sub_264B41044();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v27;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000264B5B600;
  v28 = *MEMORY[0x277CE57D8];
  *(inited + 80) = sub_264B41044();
  *(inited + 88) = v29;
  v30 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_sessionID;
  *(inited + 120) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(v13 + 16))(boxed_opaque_existential_1, &v2[v30], v12);
  v32 = *MEMORY[0x277CE57E0];
  *(inited + 128) = sub_264B41044();
  *(inited + 136) = v33;
  v34 = v2[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isRunInProcess];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = v34;
  v35 = sub_264A24308(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();

  v36 = sub_264AB4744(v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112[0] = a2;
  sub_264A2D2CC(v36, sub_264AE9B3C, 0, isUniquelyReferenced_nonNull_native, v112);
  if (!v3)
  {

    v38 = v112[0];
    v39 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream];
    v40 = [v39 streamType];
    v41 = v2;
    if (v40 != 1)
    {
      if (v40 == 3)
      {
        v98 = v38;

        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v42 = sub_264B40964();
        __swift_project_value_buffer(v42, qword_27FFA71D0);
        v43 = v2;
        v44 = sub_264B40944();
        v45 = sub_264B41474();

        if (os_log_type_enabled(v44, v45))
        {
          v97 = v41;
          v46 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v112[0] = v96;
          *v46 = 136315138;
          v47 = [v39 &selRef_packageWithContentsOfURL_type_options_error_ + 6];
          if (v47)
          {
            v48 = v47;
            sub_264B400D4();

            v49 = 0;
          }

          else
          {
            v49 = 1;
          }

          (*(v13 + 56))(v24, v49, 1, v12);
          v65 = sub_264B41064();
          v67 = sub_2649CC004(v65, v66, v112);

          *(v46 + 4) = v67;
          _os_log_impl(&dword_2649C6000, v44, v45, "Creating audio stream over nw path using clientID: %s", v46, 0xCu);
          v68 = v96;
          __swift_destroy_boxed_opaque_existential_0(v96);
          MEMORY[0x266749940](v68, -1, -1);
          MEMORY[0x266749940](v46, -1, -1);

          v41 = v97;
        }

        else
        {
        }

        v69 = [v39 nwClientID];
        v70 = v111;
        if (v69)
        {
          v71 = v110;
          v72 = v69;
          sub_264B400D4();

          (*(v13 + 32))(v70, v71, v12);
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v74 = v70;
        v75 = *(v13 + 56);
        v76 = 1;
        v75(v74, v73, 1, v12);
        v77 = [v39 nwClientID];
        if (v77)
        {
          v78 = v41;
          v79 = v110;
          v80 = v77;
          sub_264B400D4();

          v81 = v108;
          v82 = v79;
          v41 = v78;
          (*(v13 + 32))(v108, v82, v12);
          v76 = 0;
        }

        else
        {
          v81 = v108;
        }

        v75(v81, v76, 1, v12);
        v83 = v109;
        v75(v109, 1, 1, v12);
        v84 = objc_allocWithZone(MEMORY[0x277CE56E8]);
        v60 = sub_264A2D0B8(v81, v83, v98);
        sub_2649D04D4(v111, &unk_27FF8BFC0, &qword_264B47140);
        goto LABEL_31;
      }

      sub_264A02DF0();
      swift_allocError();
      *v62 = 0;
      goto LABEL_20;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v50 = sub_264B40964();
    __swift_project_value_buffer(v50, qword_27FFA71D0);
    v51 = sub_264B40944();
    v52 = sub_264B41474();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2649C6000, v51, v52, "Creating audio stream over socket path", v53, 2u);
      MEMORY[0x266749940](v53, -1, -1);
    }

    v54 = [v39 streamSocket];
    if ((v54 & 0x80000000) != 0)
    {

      v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v63 = sub_264B41014();
      [v24 initWithDomain:v63 code:-1 userInfo:0];

LABEL_20:
      swift_willThrow();
      goto LABEL_32;
    }

    v55 = v54;
    v56 = xpc_dictionary_create(0, 0, 0);
    v57 = *MEMORY[0x277CE5788];
    if (*MEMORY[0x277CE5788])
    {
      v24 = v56;

      xpc_dictionary_set_fd(v24, v57, v55);
      v58 = objc_allocWithZone(MEMORY[0x277CE56E8]);
      v59 = sub_264B40F54();

      v112[0] = 0;
      v60 = [v58 initWithNetworkSockets:v24 options:v59 error:v112];

      if (v60)
      {
        v61 = v112[0];
        swift_unknownObjectRelease();
LABEL_31:
        v85 = v101;
        v86 = v100;
        v87 = v102;
        (*(v101 + 104))(v100, *MEMORY[0x277D85778], v102);
        v24 = v60;
        v88 = v103;
        sub_264B41284();
        (*(v85 + 8))(v86, v87);
        v89 = v105;
        v90 = v107;
        v91 = v106;
        (*(v105 + 16))(v107, v88, v106);
        (*(v89 + 56))(v90, 0, 1, v91);
        v92 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
        swift_beginAccess();
        sub_2649FECCC(v90, &v41[v92], &qword_27FF89858, &qword_264B485E8);
        swift_endAccess();
        [v24 setDelegate_];

        (*(v89 + 8))(v88, v91);
        goto LABEL_32;
      }

      v64 = v112[0];
      sub_264B3FF84();

      swift_willThrow();
      swift_unknownObjectRelease();
LABEL_32:
      v93 = *MEMORY[0x277D85DE8];
      return v24;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264A25774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF898D0, &unk_264B48640);
  v5[22] = v10;
  v11 = *(v10 - 8);
  v5[23] = v11;
  v12 = *(v11 + 64) + 15;
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A258EC, 0, 0);
}

uint64_t sub_264A258EC()
{
  v1 = v0[24];
  v2 = v0[15];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628);
  sub_264B412C4();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_264A259D4;
  v6 = v0[24];
  v7 = v0[22];

  return MEMORY[0x2822003E8](v0 + 11, 0, 0, v7);
}

uint64_t sub_264A259D4()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A25AD0, 0, 0);
}

uint64_t sub_264A25AD0()
{
  v49 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  v3 = *(v0 + 104);
  if (v3 == 255)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_13:
    v14 = *(v0 + 192);
    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);

    v18 = *(v0 + 8);

    return v18();
  }

  v4 = *(v0 + 128);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 224) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_264A2DD5C(v1, v2, v3);
    goto LABEL_13;
  }

  v6 = Strong;
  if (v3)
  {
    if (v3 != 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v28 = sub_264B40964();
      __swift_project_value_buffer(v28, qword_27FFA71D0);
      v29 = sub_264B40944();
      v30 = sub_264B414B4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2649C6000, v29, v30, "AVCAudioStream did stop", v31, 2u);
        MEMORY[0x266749940](v31, -1, -1);
      }

      v32 = *(v0 + 168);
      v34 = *(v0 + 136);
      v33 = *(v0 + 144);

      v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = 0;
      v35 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_streamDidStopContinuation;
      swift_beginAccess();
      sub_2649D046C(&v6[v35], v32, &unk_27FF899E0, &qword_264B53440);
      v36 = (*(v33 + 48))(v32, 1, v34);
      v37 = *(v0 + 168);
      if (v36)
      {
        sub_264A2DD5C(v1, v2, 2);
        sub_2649D04D4(v37, &unk_27FF899E0, &qword_264B53440);
      }

      else
      {
        v39 = *(v0 + 144);
        v38 = *(v0 + 152);
        v40 = *(v0 + 136);
        (*(v39 + 16))(v38, *(v0 + 168), v40);
        sub_2649D04D4(v37, &unk_27FF899E0, &qword_264B53440);
        sub_264B411E4();
        sub_264A2DD5C(v1, v2, 2);
        (*(v39 + 8))(v38, v40);
      }

      v41 = *(v0 + 160);
      (*(*(v0 + 144) + 56))(v41, 1, 1, *(v0 + 136));
      swift_beginAccess();
      sub_2649FECCC(v41, &v6[v35], &unk_27FF899E0, &qword_264B53440);
      swift_endAccess();

      goto LABEL_31;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FFA71D0);
    sub_264A2DD88(v1, v2, 1);
    v8 = sub_264B40944();
    v9 = sub_264B414B4();
    sub_264A2DD5C(v1, v2, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v10 = 136446210;
      *(v0 + 112) = v2;
      sub_264A2DD88(v1, v2, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, &v48);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v8, v9, "Audio stream didStart error=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x266749940](v47, -1, -1);
      MEMORY[0x266749940](v10, -1, -1);
    }

    v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = v1 & 1;
    if (v1)
    {

      sub_264A2DD5C(v1, v2, 1);
LABEL_31:
      v42 = *(MEMORY[0x277D85798] + 4);
      v43 = swift_task_alloc();
      *(v0 + 200) = v43;
      *v43 = v0;
      v43[1] = sub_264A259D4;
      v44 = *(v0 + 192);
      v45 = *(v0 + 176);

      return MEMORY[0x2822003E8](v0 + 88, 0, 0, v45);
    }

    if (v2)
    {
      v24 = v2;
    }

    else
    {
      sub_264A02DF0();
      v24 = swift_allocError();
      *v46 = 13;
    }

    *(v0 + 248) = v24;
    sub_264A2DD88(v1, v2, 1);
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v27 = sub_264A26424;
  }

  else
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v20 = sub_264B40964();
    __swift_project_value_buffer(v20, qword_27FFA71D0);
    v21 = sub_264B40944();
    v22 = sub_264B41494();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v1;
      _os_log_impl(&dword_2649C6000, v21, v22, "Audio stream streamDidRTCPTimeOut streamToken=%{public}ld", v23, 0xCu);
      MEMORY[0x266749940](v23, -1, -1);
    }

    v6[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isAudioStreamRunning] = 0;
    sub_264A02DF0();
    v24 = swift_allocError();
    *(v0 + 232) = v24;
    *v25 = 8;
    v26 = swift_task_alloc();
    *(v0 + 240) = v26;
    *v26 = v0;
    v27 = sub_264A2625C;
  }

  v26[1] = v27;

  return sub_264ADE41C(v24);
}

uint64_t sub_264A2625C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A26374, 0, 0);
}

uint64_t sub_264A26374()
{
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_264A259D4;
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 88, 0, 0, v4);
}

uint64_t sub_264A26424()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A2653C, 0, 0);
}

uint64_t sub_264A2653C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);

  sub_264A2DD5C(v2, v1, 1);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_264A259D4;
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 88, 0, 0, v6);
}

id sub_264A26600()
{
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState) == 5)
  {
    v2.receiver = v0;
    v2.super_class = type metadata accessor for MediaTransportAudioStream();
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MediaTransportAudioStream()
{
  result = qword_27FF897B0;
  if (!qword_27FF897B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A268C4(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
  if (!v2)
  {
    sub_264A02DF0();
    swift_allocError();
    v25 = 5;
LABEL_13:
    *v24 = v25;
    swift_willThrow();
    goto LABEL_14;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isNegotiationComplete) != 1)
  {
    sub_264A02DF0();
    swift_allocError();
    v25 = 7;
    goto LABEL_13;
  }

  v32[0] = 0;
  v3 = v2;
  v4 = [v3 generateMediaStreamConfigurationWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_rapportStream);
    v7 = v32[0];
    v8 = [v6 streamKey];
    if (v8)
    {
      v9 = v8;
      v10 = sub_264B40024();
      v12 = v11;

      sub_264AE9DCC(v5, v10, v12);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v13 = sub_264B40964();
      __swift_project_value_buffer(v13, qword_27FFA71D0);
      v14 = v5;
      v15 = sub_264B40944();
      v16 = sub_264B41484();

      if (os_log_type_enabled(v15, v16))
      {
        v30 = v12;
        v17 = swift_slowAlloc();
        v18 = v10;
        v19 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v14;
        *v19 = v5;
        v20 = v14;
        _os_log_impl(&dword_2649C6000, v15, v16, "audio config: %{public}@", v17, 0xCu);
        sub_2649D04D4(v19, &unk_27FF89880, &unk_264B46B20);
        v21 = v19;
        v10 = v18;
        MEMORY[0x266749940](v21, -1, -1);
        v22 = v17;
        v12 = v30;
        MEMORY[0x266749940](v22, -1, -1);
      }

      v32[0] = 0;
      if ([a1 configure:v14 error:v32])
      {
        v23 = v32[0];
        sub_2649DEF6C(v10, v12);
      }

      else
      {
        v29 = v32[0];
        sub_264B3FF84();

        swift_willThrow();
        sub_2649DEF6C(v10, v12);
      }
    }

    else
    {
      sub_264A02DF0();
      swift_allocError();
      *v28 = 4;
      swift_willThrow();
    }
  }

  else
  {
    v27 = v32[0];
    sub_264B3FF84();

    swift_willThrow();
  }

LABEL_14:
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_264A26C3C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628);
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v1[15] = *(v9 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v10 = sub_264B3FFD4();
  v1[18] = v10;
  v11 = *(v10 - 8);
  v1[19] = v11;
  v12 = *(v11 + 64) + 15;
  v1[20] = swift_task_alloc();
  sub_264B41244();
  v1[21] = sub_264B41234();
  v13 = sub_264B411C4();
  v1[22] = v13;
  v1[23] = v14;
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264A26EF0, v13, v14);
}

uint64_t sub_264A26EF0()
{
  v90 = v0;
  v89 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState) > 3u || *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState))
  {
    v3 = *(v0 + 168);

    goto LABEL_4;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v85 = *(v0 + 144);
  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FFA71D0);
  sub_264B41754();

  v87 = 0xD000000000000010;
  v88 = 0x8000000264B5B5C0;
  v82 = v1;
  *(v0 + 216) = *(v1 + v2);
  v17 = sub_264B41064();
  MEMORY[0x266748390](v17);

  v18 = v88;
  v83 = v87;
  v19 = sub_264B414B4();
  sub_264B3FF94();
  v20 = sub_264B3FFA4();
  v22 = v21;
  (*(v15 + 8))(v14, v85);
  v23 = sub_264B40944();
  if (os_log_type_enabled(v23, v19))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v87 = v25;
    *v24 = 136446978;
    v26 = sub_2649CC004(v20, v22, &v87);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2050;
    *(v24 + 14) = 171;
    *(v24 + 22) = 2082;
    *(v24 + 24) = sub_2649CC004(0xD000000000000014, 0x8000000264B5B5E0, &v87);
    *(v24 + 32) = 2082;
    *(v24 + 34) = sub_2649CC004(v83, v18, &v87);
    _os_log_impl(&dword_2649C6000, v23, v19, "%{public}s:%{public}ld %{public}s %{public}s", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v25, -1, -1);
    MEMORY[0x266749940](v24, -1, -1);
  }

  else
  {
  }

  v27 = *(v0 + 48);
  v28 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
  *(v0 + 192) = v28;
  if (!v28 || *(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_isNegotiationComplete) != 1)
  {
    v37 = *(v0 + 168);

    v38 = sub_264B40944();
    v39 = sub_264B41474();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2649C6000, v38, v39, "Not ready to complete activation, negotiation not complete", v40, 2u);
      MEMORY[0x266749940](v40, -1, -1);
    }

    goto LABEL_20;
  }

  if (*(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_role) == 1 && *(v27 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_clientActivated) != 1)
  {
    v43 = *(v0 + 168);
    v44 = v28;

    v38 = sub_264B40944();
    v45 = sub_264B41474();
    if (os_log_type_enabled(v38, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2649C6000, v38, v45, "Not ready to complete activation, client not activated", v46, 2u);
      MEMORY[0x266749940](v46, -1, -1);
    }

LABEL_20:
    goto LABEL_4;
  }

  *(v0 + 40) = 0;
  v29 = v28;
  v30 = [v29 generateMediaStreamInitOptionsWithError_];
  v31 = *(v0 + 40);
  if (v30)
  {
    v32 = *(v0 + 136);
    v33 = *(v0 + 48);
    v34 = v30;
    v35 = sub_264B40F64();
    v36 = v31;

    v47 = sub_264A24B48(v32, v35);
    v80 = v29;
    v48 = *(v0 + 128);
    v49 = *(v0 + 112);
    v84 = *(v0 + 120);
    v50 = *(v0 + 96);
    v51 = *(v0 + 104);
    v81 = *(v0 + 136);
    v52 = *(v0 + 48);

    v53 = *(v52 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream);
    *(v52 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStream) = v47;
    v86 = v47;

    v54 = sub_264B41274();
    (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v49 + 16))(v48, v81, v51);
    v56 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    (*(v49 + 32))(v57 + v56, v48, v51);
    *(v57 + ((v84 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;
    sub_264A10C20(0, 0, v50, &unk_264B48638, v57);

    sub_264A268C4(v86);
    v61 = *(v0 + 168);
    v62 = *(v0 + 80);
    v64 = *(v0 + 56);
    v63 = *(v0 + 64);
    v65 = *(v0 + 48);

    [v86 start];
    v66 = *(v82 + v2);
    *(v82 + v2) = 1;
    LOBYTE(v87) = v66;
    sub_264A24930(&v87);
    v67 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v65 + v67, v62, &qword_27FF89850, &qword_264B485E0);
    v68 = (*(v63 + 48))(v62, 1, v64);
    v69 = *(v0 + 136);
    v70 = *(v0 + 104);
    v71 = *(v0 + 112);
    if (v68)
    {
      v72 = *(v0 + 80);
      (*(v71 + 8))(*(v0 + 136), *(v0 + 104));

      sub_2649D04D4(v72, &qword_27FF89850, &qword_264B485E0);
      v73 = 1;
    }

    else
    {
      v74 = *(v0 + 80);
      v76 = *(v0 + 64);
      v75 = *(v0 + 72);
      v77 = *(v0 + 56);
      (*(v76 + 16))(v75, v74, v77);
      sub_2649D04D4(v74, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 217) = *(v82 + v2);
      sub_264B41374();

      (*(v76 + 8))(v75, v77);
      (*(v71 + 8))(v69, v70);
      v73 = 0;
    }

    v78 = *(v0 + 88);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v79 - 8) + 56))(v78, v73, 1, v79);
    sub_2649D04D4(v78, &unk_27FF89870, &qword_264B48600);
LABEL_4:
    v4 = *(v0 + 160);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);

    v11 = *(v0 + 8);
    v12 = *MEMORY[0x277D85DE8];

    return v11();
  }

  v41 = v31;
  v42 = sub_264B3FF84();

  swift_willThrow();
  *(v0 + 200) = v42;
  v58 = swift_task_alloc();
  *(v0 + 208) = v58;
  *v58 = v0;
  v58[1] = sub_264A2788C;
  v59 = *(v0 + 48);
  v60 = *MEMORY[0x277D85DE8];

  return sub_264ADE41C(v42);
}