uint64_t sub_222AE4C14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E450, &qword_222B0E748);
  result = sub_222B02C28();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_222B03128();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v22, v23);
      sub_222B02448();

      result = sub_222B03168();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222AE4EBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_222AE466C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_222AE5538();
      goto LABEL_16;
    }

    sub_222AE5A38(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_222B03128();
  sub_222B02448();
  result = sub_222B03168();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_222B02F78();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_222B030A8();
  __break(1u);
  return result;
}

uint64_t sub_222AE503C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_222B018D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_222AE48CC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_222AE5694();
      goto LABEL_12;
    }

    sub_222AE5C70(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_222A2DB64(&qword_280CBA1F0);
  v16 = sub_222B022E8();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_222A2DB64(&qword_280CB8300);
      v24 = sub_222B02338();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_222B030A8();
  __break(1u);
  return result;
}

uint64_t sub_222AE52B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v25 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a6 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a6)
  {
    sub_222AE4C14(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_222AE58CC();
      goto LABEL_14;
    }

    sub_222AE5F78(v9 + 1);
  }

  v11 = *v6;
  v12 = *(*v6 + 40);
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](a3, a4);
  sub_222B02448();

  result = sub_222B03168();
  v13 = -1 << *(v11 + 32);
  a5 = result & ~v13;
  if ((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 32 * a5);
      v16 = v15[2];
      v17 = v15[3];
      v28 = *v15;
      v29 = v15[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v16, v17);

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](a3, a4);
      if (v28 == v25 && v29 == a2)
      {
        goto LABEL_17;
      }

      v18 = sub_222B02F78();

      if (v18)
      {
        goto LABEL_18;
      }

      a5 = (a5 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_14:
  v19 = *v24;
  *(*v24 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v20 = (*(v19 + 48) + 32 * a5);
  *v20 = v25;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_17:

LABEL_18:
  result = sub_222B030A8();
  __break(1u);
  return result;
}

void *sub_222AE5538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
  v2 = *v0;
  v3 = sub_222B02C18();
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

void *sub_222AE5694()
{
  v1 = v0;
  v2 = sub_222B018D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E438, &qword_222B0E730);
  v8 = *v0;
  v9 = sub_222B02C18();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

void *sub_222AE58CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E450, &qword_222B0E748);
  v2 = *v0;
  v3 = sub_222B02C18();
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_222AE5A38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D730, qword_222B0E750);
  result = sub_222B02C28();
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
      sub_222B03128();

      sub_222B02448();
      result = sub_222B03168();
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

uint64_t sub_222AE5C70(uint64_t a1)
{
  v2 = v1;
  v38 = sub_222B018D8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E438, &qword_222B0E730);
  v11 = sub_222B02C28();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_222A2DB64(&qword_280CBA1F0);
      result = sub_222B022E8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
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

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_222AE5F78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E450, &qword_222B0E748);
  result = sub_222B02C28();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_222B03128();
      swift_bridgeObjectRetain_n();

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v22, v23);
      sub_222B02448();

      result = sub_222B03168();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
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

        v2 = v32;
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

void getEventTimestampFromContext(from:context:)(void *a1, void *a2)
{
  v4 = [a1 eventMetadata];
  if (v4 && (v5 = v4, v6 = [v4 eventGeneratedTimestampRefId], v5, v6))
  {
    v7 = sub_222B02388();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a2 eventMetadata];
  if (v10 && (v11 = v10, v12 = [v10 eventGeneratedTimestampRefId], v11, v12))
  {
    v13 = sub_222B02388();
    v15 = v14;

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (!v9)
    {
LABEL_8:
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  if (!v15)
  {
LABEL_15:

    return;
  }

  if (v7 == v13 && v9 == v15)
  {
  }

  else
  {
    v16 = sub_222B02F78();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

LABEL_18:
  v17 = [a1 eventMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 eventGeneratedRelativeToBootTimeTimestampNs];

    v20 = [a2 eventMetadata];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 eventGeneratedRelativeToBootTimeTimestampNs];

      v23 = [a2 deviceDynamicContext];
      if (v23)
      {
        v24 = v23;
        [v23 timeIntervalSince1970];

        if (__OFSUB__(v19, v22))
        {
          __break(1u);
        }
      }
    }
  }
}

void getEventTimestamp(from:)(void *a1)
{
  if ([a1 hasDeviceDynamicContext])
  {
    getEventTimestampFromContext(from:context:)(a1, a1);
  }
}

uint64_t dispatch thunk of InferredGroundTruthStore.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 16))();
}

uint64_t sub_222AE651C()
{
  result = sub_222AE653C();
  qword_280CB9D50 = result;
  return result;
}

uint64_t sub_222AE653C()
{
  if (qword_280CB91D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280CB91E0;
  if (qword_280CB9690 != -1)
  {
    swift_once();
  }

  v1 = qword_280CBC450;
  if (qword_280CB8988 != -1)
  {
    swift_once();
  }

  v2 = qword_280CB8990;
  sub_222AE6760(v21);
  if (qword_280CB8D60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for DefaultBiomeReader();
  inited = swift_initStaticObject();
  sub_222AE690C(v21, v20);
  sub_222A42E40(&qword_280CB8D68, v19);

  __swift_destroy_boxed_opaque_existential_0(v21);
  v17 = type metadata accessor for FlatFileSignalReader();
  v18 = &protocol witness table for FlatFileSignalReader;
  *&v16 = v0;
  v14 = type metadata accessor for BiomeSignalReader();
  v15 = &off_2835F73B8;
  *&v13 = v1;
  v11 = type metadata accessor for FlatFileStreamBookmarkStore();
  v12 = &protocol witness table for FlatFileStreamBookmarkStore;
  *&v10 = v2;
  v8 = v3;
  v9 = &protocol witness table for DefaultBiomeReader;
  *&v7 = inited;
  type metadata accessor for PLLoggingReader();
  v5 = swift_allocObject();
  sub_222A1E5A8(&v16, v5 + 16);
  sub_222A1E5A8(&v13, v5 + 56);
  sub_222A1E5A8(&v10, v5 + 96);
  sub_222AE6A94(v20, (v5 + 136));
  sub_222A1E5A8(v19, v5 + 184);
  sub_222A1E5A8(&v7, v5 + 224);
  return v5;
}

id sub_222AE6760@<X0>(uint64_t *a1@<X8>)
{
  v8[3] = &type metadata for SiriPrivateLearningFeatureFlag;
  v8[4] = sub_222A36228();
  LOBYTE(v8[0]) = 12;
  v2 = _s28SiriPrivateLearningAnalytics23EnvironmentFeatureFlagsV02isF7EnabledySb0fG00fG3Key_pF_0();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if (v2)
  {
    v3 = type metadata accessor for AIMLISSignalReader();
    result = swift_allocObject();
    v5 = result;
    v6 = &off_2835F4148;
    v7 = &off_2835F4120;
  }

  else
  {
    v3 = type metadata accessor for AsyncBiomeSignalReader();
    v5 = swift_allocObject();
    result = [objc_allocWithZone(MEMORY[0x277CF1AF0]) init];
    *(v5 + 16) = result;
    v6 = &off_2835F2290;
    v7 = &off_2835F22A8;
  }

  a1[3] = v3;
  a1[4] = v7;
  a1[5] = v6;
  *a1 = v5;
  return result;
}

uint64_t static PLLoggingReader.shared.getter()
{
  if (qword_280CB9D48 != -1)
  {
    swift_once();
  }
}

uint64_t sub_222AE690C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *PLLoggingReader.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  return v0;
}

uint64_t PLLoggingReader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);

  return swift_deallocClassInstance();
}

_OWORD *sub_222AE6A94(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_222AE6AB0()
{
  v0 = sub_222B01748();
  __swift_allocate_value_buffer(v0, qword_280CB89D8);
  __swift_project_value_buffer(v0, qword_280CB89D8);
  return sub_222B01688();
}

uint64_t static FlatFileStreamBookmarkStore.defaultBookmarkPath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CB89D0 != -1)
  {
    swift_once();
  }

  v2 = sub_222B01748();
  v3 = __swift_project_value_buffer(v2, qword_280CB89D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_222AE6BBC()
{
  v0 = sub_222B01748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  if (qword_280CB89D0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_280CB89D8);
  v11 = *(v1 + 16);
  v11(v9, v10, v0);
  v11(v6, v9, v0);
  if (qword_280CB8540 != -1)
  {
    swift_once();
  }

  v12 = qword_280CBC410;
  v13 = type metadata accessor for FlatFileStreamBookmarkStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_222AEA894(0xD00000000000001CLL, 0x8000000222B15FB0, v6, v12);

  result = (*(v1 + 8))(v9, v0);
  qword_280CB8990 = v16;
  return result;
}

uint64_t FlatFileStreamBookmarkStore.__allocating_init(name:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222B01748();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a3, v6);
  if (qword_280CB8540 != -1)
  {
    swift_once();
  }

  v12 = qword_280CBC410;
  v13 = type metadata accessor for FlatFileStreamBookmarkStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_222AEA894(a1, a2, v11, v12);

  (*(v7 + 8))(a3, v6);
  return v16;
}

uint64_t type metadata accessor for FlatFileStreamBookmarkStore()
{
  result = qword_280CB8958;
  if (!qword_280CB8958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static FlatFileStreamBookmarkStore.shared.getter()
{
  if (qword_280CB8988 != -1)
  {
    swift_once();
  }
}

uint64_t sub_222AE6FCC(char *a1)
{
  v2 = v1;
  v4 = sub_222B021D8();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222B02238();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = -1;
  v15 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v2 + v15));
  swift_endAccess();
  v16 = *&a1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  v17 = *&a1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];
  v18 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
  swift_beginAccess();

  v19 = a1;
  v20 = *(v2 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v2 + v18);
  *(v2 + v18) = 0x8000000000000000;
  sub_222AEA068(v19, v16, v17, isUniquelyReferenced_nonNull_native);

  *(v2 + v18) = v37;
  result = swift_endAccess();
  v23 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumber);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumber) = v25;
    *(v14 + 16) = v25;
    swift_beginAccess();
    pthread_rwlock_unlock((v2 + v15));
    swift_endAccess();
    dispatch_group_enter(*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup));
    v26 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_queue);
    v27 = swift_allocObject();
    v27[2] = v2;
    v27[3] = v19;
    v27[4] = v14;
    aBlock[4] = sub_222AEAD14;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222AD9FB4;
    aBlock[3] = &block_descriptor_14;
    v28 = _Block_copy(aBlock);
    v29 = v19;

    sub_222B02208();
    v37 = MEMORY[0x277D84F90];
    sub_222AEC47C(qword_280CBA240, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
    sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
    v30 = v35;
    sub_222B02BB8();
    MEMORY[0x223DC6BE0](0, v13, v8, v28);
    _Block_release(v28);
    (*(v34 + 8))(v8, v30);
    (*(v32 + 8))(v13, v33);
  }

  return result;
}

uint64_t sub_222AE73D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarkFileLock);
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath;
  v8 = *(a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_queue);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;

  v10 = a2;

  sub_222A7BCAC(a1 + v7);
  sub_222A7A74C(a1 + v7, v8, 5, 0, sub_222AEC12C, v9);
}

void sub_222AE74B0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (!a2)
  {
    v17 = *&a4[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    v18 = *&a4[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];
    v19 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumberLog;
    swift_beginAccess();
    v20 = *(a3 + v19);
    if (*(v20 + 16))
    {
      v21 = *(a3 + v19);

      v22 = sub_222A26EC8(v17, v18);
      if (v23)
      {
        v24 = *(*(v20 + 56) + 8 * v22);

        swift_beginAccess();
        if (v24 >= *(a5 + 16))
        {
          if (qword_280CB4C30 != -1)
          {
            swift_once();
          }

          v25 = sub_222B02148();
          __swift_project_value_buffer(v25, qword_280CB4C38);
          v26 = a4;

          v27 = sub_222B02128();
          v28 = sub_222B028D8();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v36 = v30;
            *v29 = 136315650;
            *(v29 + 4) = sub_222A230FC(v17, v18, &v36);
            *(v29 + 12) = 2048;
            swift_beginAccess();
            *(v29 + 14) = *(a5 + 16);

            *(v29 + 22) = 2048;
            *(v29 + 24) = v24;
            _os_log_impl(&dword_222A1C000, v27, v28, "Discarding a write for %s with a sequence number %ld, the current number is %ld", v29, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x223DC7E30](v30, -1, -1);
            MEMORY[0x223DC7E30](v29, -1, -1);
          }

          else
          {
          }

LABEL_19:
          dispatch_group_leave(*(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup));
          return;
        }
      }

      else
      {
      }
    }

    v31 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;
    swift_beginAccess();
    if (sub_222AEC138((a3 + v31), a4, *(a5 + 16)))
    {
      swift_beginAccess();
      v32 = *(a5 + 16);
      swift_beginAccess();
      v33 = *(a3 + v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(a3 + v19);
      *(a3 + v19) = 0x8000000000000000;
      sub_222AEA1E0(v32, v17, v18, isUniquelyReferenced_nonNull_native);
      *(a3 + v19) = v35;
      swift_endAccess();
    }

    goto LABEL_19;
  }

  if (qword_280CB4C30 != -1)
  {
    swift_once();
  }

  v9 = sub_222B02148();
  __swift_project_value_buffer(v9, qword_280CB4C38);
  v10 = a4;

  v11 = sub_222B02128();
  v12 = sub_222B028E8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_222A230FC(*&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name], *&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8], v37);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_222A230FC(a1, a2, v37);
    _os_log_impl(&dword_222A1C000, v11, v12, "Failed to acquire a file lock to write bookmark data for %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v14, -1, -1);
    MEMORY[0x223DC7E30](v13, -1, -1);
  }

  v15 = *(a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup);

  dispatch_group_leave(v15);
}

void *sub_222AE7928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_rdlock((v3 + v6));
  swift_endAccess();
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_222A26EC8(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  pthread_rwlock_unlock((v3 + v6));
  swift_endAccess();
  return v11;
}

uint64_t sub_222AE7A24()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup);
  sub_222B02948();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarkFileLock);
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;

  sub_222A7BCAC(v1 + v5);
  sub_222A7A74C(v1 + v5, 0, 0, 0, sub_222AEAD38, v6);

  swift_beginAccess();
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
    swift_beginAccess();

    pthread_rwlock_wrlock((v1 + v8));
    swift_endAccess();
    v9 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = v7;

    swift_beginAccess();
    pthread_rwlock_unlock((v1 + v8));
    swift_endAccess();
  }
}

void sub_222AE7BAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CB4C38);

    oslog = sub_222B02128();
    v7 = sub_222B028E8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(a1, a2, &v14);
      _os_log_impl(&dword_222A1C000, oslog, v7, "Failed to acquire a file lock to refresh bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_222AEB2D8((a4 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath));
    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = v11;
  }
}

uint64_t sub_222AE7D64()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup);
  sub_222B02948();
  v3 = sub_222A3A250(MEMORY[0x277D84F90]);
  v4 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarkFileLock);
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;

  sub_222A7BCAC(v1 + v5);
  sub_222A7A74C(v1 + v5, 0, 0, 0, sub_222AEAD90, v6);

  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v1 + v7));
  swift_endAccess();
  v8 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = v3;

  swift_beginAccess();
  pthread_rwlock_unlock((v1 + v7));
  return swift_endAccess();
}

void sub_222AE7EB0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  if (a2)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CB4C38);

    oslog = sub_222B02128();
    v7 = sub_222B028E8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_222A230FC(a1, a2, &v12);
      _os_log_impl(&dword_222A1C000, oslog, v7, "Failed to acquire a file lock to reset bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DC7E30](v9, -1, -1);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }
  }

  else
  {
    v10 = a3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;

    sub_222AEBAD4(v10, a4);
  }
}

uint64_t sub_222AE8044(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = sub_222B021D8();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_222B02238();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222B021E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup);
  sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  (*(v15 + 104))(v19, *MEMORY[0x277D851C8], v14);
  v20 = sub_222B029C8();
  (*(v15 + 8))(v19, v14);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a2;
  aBlock[4] = sub_222A556A4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_18;
  v22 = _Block_copy(aBlock);

  sub_222B02208();
  v29 = MEMORY[0x277D84F90];
  sub_222AEC47C(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  sub_222B02958();
  _Block_release(v22);

  (*(v28 + 8))(v8, v4);
  (*(v9 + 8))(v13, v27);
}

uint64_t sub_222AE8418()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_222AE84EC;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000012, 0x8000000222B15EC0, sub_222AEAD98, v3, v4);
}

uint64_t sub_222AE84EC()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222AE85E8, 0, 0);
}

uint64_t sub_222AE85FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_222AE8044(sub_222AEB26C, v9);
}

uint64_t FlatFileStreamBookmarkStore.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath, v2);

  v4 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarkFileLock);

  v5 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks);

  v6 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumberLog);

  return v0;
}

uint64_t FlatFileStreamBookmarkStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath;
  v2 = sub_222B01748();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath, v2);

  v4 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarkFileLock);

  v5 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks);

  v6 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumberLog);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222AE89F4()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_222AE8AC8;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000012, 0x8000000222B15EC0, sub_222AEC4D4, v3, v4);
}

uint64_t sub_222AE8AC8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222AEC4CC, 0, 0);
}

uint64_t sub_222AE8BE8()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB4C38);
  v1 = __swift_project_value_buffer(v0, qword_280CB4C38);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AE8CDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_222A26F40(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_222A2B8E0();
      goto LABEL_7;
    }

    sub_222A27AF8(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_222A26F40(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_222AEA464(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

unint64_t sub_222AE8ED4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  result = sub_222A2E3A4(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v22 = *v8;
      result = sub_222A2E3A4(a2);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        type metadata accessor for SISchemaComponentName(0);
        result = sub_222B030B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      a4();
      result = v21;
    }
  }

  v24 = *v8;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 4 * result) = a2;
    *(v24[7] + 8 * result) = a1;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * result);
  *(v25 + 8 * result) = a1;
}

uint64_t sub_222AE903C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_222A26F40(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_222A2BF34();
      goto LABEL_7;
    }

    sub_222A28404(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_222A26F40(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_222AEA388(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = v23 + *(*(type metadata accessor for LogicalClockTable.DeviceFixedContextTime() - 8) + 72) * v16;

  return sub_222AEB208(a1, v24);
}

void sub_222AE9224(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_222A26F40(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_222A2C238();
      goto LABEL_7;
    }

    sub_222A28854(v19, a3 & 1);
    v25 = *v4;
    v26 = sub_222A26F40(a2);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      sub_222AEA464(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_222B030B8();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_222AE941C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_222A26F40(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_222A2C4D4();
      goto LABEL_9;
    }

    sub_222A28C44(v18, a3 & 1);
    v21 = *v4;
    v22 = sub_222A26F40(a2);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = *v4;
  if (v19)
  {
    v25 = *(v29 + 40);
    v26 = v24[7] + *(v29 + 72) * v15;

    return v25(v26, a1, v8);
  }

  else
  {
    (*(v29 + 16))(v12, a2, v8);
    return sub_222AEA560(v15, v12, a1, v24);
  }
}

unint64_t sub_222AE9600(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_222A2E3A4(a2);
  v11 = *(v8 + 16);
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
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_222A29458(v14, a3 & 1);
      v18 = *v4;
      result = sub_222A2E3A4(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        type metadata accessor for SISchemaComponentName(0);
        result = sub_222B030B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_222A2C7B0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
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

uint64_t sub_222AE9778(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_222A26F40(a1);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v15;
    v21 = v14[3];
    if (v21 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v22 = *v4;
      if (v20)
      {
LABEL_8:
        *(v22[7] + 8 * v16) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v21 >= result && (a2 & 1) == 0)
    {
      result = sub_222A2CF68();
      goto LABEL_7;
    }

    sub_222A2A0FC(result, a2 & 1);
    v23 = *v4;
    result = sub_222A26F40(a1);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = result;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v13, a1, v8);
      return sub_222AEA6FC(v16, v13, v22, a3);
    }
  }

  result = sub_222B030B8();
  __break(1u);
  return result;
}

uint64_t sub_222AE991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_222A26EC8(a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_222A2A4AC(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_222A26EC8(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_222B030B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_222A2D1DC();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    v29 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v31 = (v26[6] + 16 * v15);
  *v31 = a4;
  v31[1] = a5;
  v32 = (v26[7] + 24 * v15);
  *v32 = a1;
  v32[1] = a2;
  v32[2] = a3;
  v33 = v26[2];
  v19 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v34;
}

void sub_222AE9AF8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_222A270C0(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v22 = *v8;
      v13 = sub_222A270C0(a2);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      a4();
      v13 = v21;
    }
  }

  v24 = *v8;
  if ((v19 & 1) == 0)
  {
    v24[(v13 >> 6) + 8] |= 1 << v13;
    *(v24[6] + 8 * v13) = a2;
    *(v24[7] + 8 * v13) = a1;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return;
    }

    goto LABEL_15;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * v13);
  *(v25 + 8 * v13) = a1;
}

uint64_t sub_222AE9C5C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a2;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v17 = sub_222A26F40(a3);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      sub_222A2D4D8();
      goto LABEL_9;
    }

    sub_222A2A9F8(v20, a4 & 1);
    v23 = *v5;
    v24 = sub_222A26F40(a3);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v32;
  v27 = *v5;
  if (v21)
  {
    v28 = v27[7] + 16 * v17;
    v29 = *(v28 + 8);
    *v28 = a1 & 1;
    *(v28 + 1) = BYTE1(a1) & 1;
    *(v28 + 2) = BYTE2(a1) & 1;
    *(v28 + 3) = HIBYTE(a1) & 1;
    *(v28 + 8) = v26;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v14, a3, v9);
    return sub_222AEA7B4(v17, v14, a1 & 0x1010101, v26, v27);
  }
}

uint64_t sub_222AE9E84(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v31 = a4;
  v32 = a5;
  v6 = v5;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v18 = sub_222A26F40(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v31();
      goto LABEL_7;
    }

    v32();
    v28 = *v6;
    v29 = sub_222A26F40(a2);
    if ((v22 & 1) == (v30 & 1))
    {
      v18 = v29;
      v24 = *v6;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v15, a2, v10);
      return sub_222AEA464(v18, v15, a1, v24);
    }

LABEL_15:
    result = sub_222B030B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v6;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = *(v25 + 8 * v18);
  *(v25 + 8 * v18) = a1;
}

void sub_222AEA068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_222A26EC8(a2, a3);
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
      sub_222A2B0BC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_222A26EC8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_222B030B8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_222A2DBBC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
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

unint64_t sub_222AEA1E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_222A26EC8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_222A2B36C(v16, a4 & 1);
      v20 = *v5;
      result = sub_222A26EC8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_222B030B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_222A2DD2C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_222AEA344(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_222AEA388(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222B018D8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
  result = sub_222A2E290(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_222AEA464(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222B018D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_222AEA51C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_222AEA560(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_222AEA63C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_222B018D8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_222AEA6FC(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_222B018D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_222AEA7B4(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_222B018D8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3 & 1;
  *(v13 + 1) = BYTE1(a3) & 1;
  *(v13 + 2) = BYTE2(a3) & 1;
  *(v13 + 3) = HIBYTE(a3) & 1;
  *(v13 + 8) = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_222AEA894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v9 = sub_222B02988();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222B02968();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v16 = sub_222B02238();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v19 = sub_222B01748();
  v31 = *(v19 - 8);
  v20 = v31;
  v21 = *(v31 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = a2;

  MEMORY[0x223DC66E0](1802330670, 0xE400000000000000);

  v30 = a3;
  sub_222B016E8();

  v25 = *(v20 + 32);
  v29 = v19;
  v25(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_filePath, v24, v19);
  sub_222B016E8();
  v25(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lockPath, v24, v19);
  sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  sub_222B02218();
  v36 = MEMORY[0x277D84F90];
  sub_222AEC47C(&unk_280CBA210, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_queue) = sub_222B029A8();
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_dispatchGroup) = dispatch_group_create();
  v26 = v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_lock;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 144) = 0u;
  *(v26 + 160) = 0u;
  *(v26 + 176) = 0u;
  *(v26 + 192) = 0;
  swift_beginAccess();
  pthread_rwlock_init(v26, 0);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarkFileLock) = v35;
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumber) = 0;

  v27 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_writeSequenceNumberLog) = sub_222A3A154(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics27FlatFileStreamBookmarkStore_bookmarks) = sub_222A3A250(v27);
  sub_222AE7A24();
  (*(v31 + 8))(v30, v29);
  return v5;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t dispatch thunk of StreamBookmarkStore.notifyOnComplete()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222A34620;

  return v9(a1, a2);
}

uint64_t sub_222AEAF24()
{
  result = sub_222B01748();
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

uint64_t dispatch thunk of FlatFileStreamBookmarkStore.notifyOnComplete()()
{
  v2 = *(*v0 + 296);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_222A35344;

  return v6();
}

uint64_t sub_222AEB208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AEB26C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E308, &unk_222B0DC50) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_222B02708();
}

uint64_t sub_222AEB2D8(id a1)
{
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v68 - v8;
  v10 = sub_222B01758();
  v26 = v25;
  v27 = v10;
  sub_222A250BC(0, &qword_280CB8440, 0x277CCAAC8);
  type metadata accessor for StreamBookmarkCollection();
  sub_222A55AB8(v27, v26);
  v71 = v27;
  v72 = v26;
  v28 = sub_222B02918();
  if (!v28)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v29 = sub_222B02148();
    __swift_project_value_buffer(v29, qword_280CB4C38);
    (*(v3 + 16))(v9, a1, v2);
    v30 = sub_222B02128();
    v31 = sub_222B028E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v75[0] = v33;
      *v32 = 136315138;
      sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260]);
      v34 = sub_222B02F38();
      v36 = v35;
      (*(v3 + 8))(v9, v2);
      v37 = sub_222A230FC(v34, v36, v75);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_222A1C000, v30, v31, "Cannot decode bookmarks read from path=%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DC7E30](v33, -1, -1);
      MEMORY[0x223DC7E30](v32, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v38 = sub_222A3A250(MEMORY[0x277D84F90]);
    v40 = v71;
    v39 = v72;
    sub_222A26530(v71, v72);
    sub_222A26530(v40, v39);
    return v38;
  }

  v41 = v28;
  sub_222A26530(v71, v72);
  v42 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks;
  v43 = *&v41[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks];
  v69 = v41;
  if (v43 >> 62)
  {
    v44 = sub_222B02DC8();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = type metadata accessor for StreamBookmark();
  v38 = MEMORY[0x223DC6520](v44, MEMORY[0x277D837D0], v45, MEMORY[0x277D837E0]);
  v46 = *&v69[v42];
  if (v46 >> 62)
  {
    v47 = sub_222B02DC8();
    if (v47)
    {
      goto LABEL_17;
    }

LABEL_37:
    sub_222A26530(v71, v72);

    return v38;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
    goto LABEL_37;
  }

LABEL_17:
  v74 = v46 & 0xC000000000000001;
  v70 = v46 & 0xFFFFFFFFFFFFFF8;

  v48 = 0;
  v73 = v46;
  while (1)
  {
    if (v74)
    {
      v52 = MEMORY[0x223DC6F00](v48, v46);
    }

    else
    {
      if (v48 >= *(v70 + 16))
      {
        goto LABEL_42;
      }

      v52 = *(v46 + 8 * v48 + 32);
    }

    v53 = v52;
    v2 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    v46 = v47;
    v3 = *&v52[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
    v54 = *&v52[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];

    a1 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v38;
    v27 = sub_222A26EC8(v3, v54);
    v57 = v38[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_40;
    }

    v60 = v56;
    if (v38[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v56)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_222A2DBBC();
        if (v60)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_222A2B0BC(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_222A26EC8(v3, v54);
      if ((v60 & 1) != (v62 & 1))
      {
        result = sub_222B030B8();
        __break(1u);
        return result;
      }

      v27 = v61;
      if (v60)
      {
LABEL_18:

        v38 = v75[0];
        v49 = *(v75[0] + 56);
        v50 = *(v49 + 8 * v27);
        *(v49 + 8 * v27) = a1;

        goto LABEL_19;
      }
    }

    v38 = v75[0];
    *(v75[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v63 = (v38[6] + 16 * v27);
    *v63 = v3;
    v63[1] = v54;
    *(v38[7] + 8 * v27) = a1;

    v64 = v38[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_41;
    }

    v38[2] = v66;
LABEL_19:
    ++v48;
    v47 = v46;
    v51 = v2 == v46;
    v46 = v73;
    if (v51)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  swift_once();
  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_280CB4C38);
  (*(v3 + 16))(v27, a1, v2);
  v12 = v46;
  v13 = sub_222B02128();
  v14 = sub_222B028D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v77[0] = v16;
    *v15 = 136315394;
    sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260]);
    v17 = sub_222B02F38();
    v19 = v18;
    (*(v3 + 8))(v27, v2);
    v20 = sub_222A230FC(v17, v19, v77);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v75[0] = v46;
    v75[1] = 0;
    v76 = 1;
    v21 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D708, &unk_222B08CC0);
    v22 = sub_222B023D8();
    v24 = sub_222A230FC(v22, v23, v77);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_222A1C000, v13, v14, "Cannot read bookmarks from path=%s, error=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v16, -1, -1);
    MEMORY[0x223DC7E30](v15, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v27, v2);
  }

  v38 = sub_222A3A250(MEMORY[0x277D84F90]);

  return v38;
}

uint64_t sub_222AEBAD4(uint64_t a1, char *a2)
{
  v60[5] = *MEMORY[0x277D85DE8];
  v4 = sub_222B01748();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = *(a2 + 2);
  if (v8)
  {
    v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = a1;
    v10 = sub_222A96820(v8, 0);
    v11 = sub_222A96358(v60, v10 + 4, v8, a2);
    v12 = v60[0];
    v13 = v60[1];
    v14 = v60[4];

    sub_222A965EC();
    if (v11 != v8)
    {
      __break(1u);
      swift_once();
      v24 = sub_222B02148();
      __swift_project_value_buffer(v24, qword_280CB4C38);
      v13[2](v9, v12, v14);
      v25 = v10;
      v26 = sub_222B02128();
      v27 = sub_222B028E8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v55 = a2;
        v29 = v28;
        v54 = swift_slowAlloc();
        v60[0] = v54;
        *v29 = 136315394;
        sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260]);
        v30 = sub_222B02F38();
        v31 = v14;
        v33 = v32;
        (v13[1])(v9, v31);
        v34 = sub_222A230FC(v30, v33, v60);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2080;
        v58 = v10;
        v35 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
        v36 = sub_222B023D8();
        v38 = sub_222A230FC(v36, v37, v60);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_222A1C000, v26, v27, "Cannot write bookmark data to a file, path=%s, error=%s", v29, 0x16u);
        v39 = v54;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v39, -1, -1);
        MEMORY[0x223DC7E30](v29, -1, -1);
        sub_222A26530(v11, v8);
      }

      else
      {

        sub_222A26530(v11, v8);
        (v13[1])(v9, v14);
      }

LABEL_15:
      result = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v15 = type metadata accessor for StreamBookmarkCollection();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics24StreamBookmarkCollection_bookmarks] = v10;
  v59.receiver = v16;
  v59.super_class = v15;
  v17 = objc_msgSendSuper2(&v59, sel_init);
  v18 = objc_opt_self();
  v60[0] = 0;
  v19 = [v18 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v60];
  v20 = v60[0];
  if (!v19)
  {
    v40 = v20;
    v41 = sub_222B01628();

    swift_willThrow();
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v42 = sub_222B02148();
    __swift_project_value_buffer(v42, qword_280CB4C38);
    v43 = v41;
    v44 = sub_222B02128();
    v45 = sub_222B028E8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60[0] = v47;
      *v46 = 136315138;
      v58 = v41;
      v48 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v49 = sub_222B023D8();
      v51 = sub_222A230FC(v49, v50, v60);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_222A1C000, v44, v45, "Cannot encode bookmarks, error=%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223DC7E30](v47, -1, -1);
      MEMORY[0x223DC7E30](v46, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  v21 = sub_222B01798();
  v23 = v22;

  sub_222B017A8();
  sub_222A26530(v21, v23);

  result = 1;
LABEL_16:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222AEC138(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_222B01748();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222AEB2D8(a1);
  v13 = *&a2[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name];
  v14 = *&a2[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics14StreamBookmark_name + 8];

  v15 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v12;
  sub_222AEA068(v15, v13, v14, isUniquelyReferenced_nonNull_native);

  v17 = sub_222AEBAD4(a1, v32);

  if (v17)
  {
    if (qword_280CB4C30 != -1)
    {
      swift_once();
    }

    v18 = sub_222B02148();
    __swift_project_value_buffer(v18, qword_280CB4C38);
    (*(v7 + 16))(v11, a1, v6);
    v19 = v15;
    v20 = sub_222B02128();
    v21 = sub_222B028D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      HIDWORD(v31) = v21;
      v23 = a3;
      v24 = v22;
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_222A230FC(v13, v14, &v32);
      *(v24 + 12) = 2048;
      *(v24 + 14) = v23;
      *(v24 + 22) = 2080;
      sub_222AEC47C(&qword_280CB8310, MEMORY[0x277CC9260]);
      v26 = sub_222B02F38();
      v28 = v27;
      (*(v7 + 8))(v11, v6);
      v29 = sub_222A230FC(v26, v28, &v32);

      *(v24 + 24) = v29;
      _os_log_impl(&dword_222A1C000, v20, BYTE4(v31), "Updated a bookmark, name=%s, sequenceNum=%ld, path=%s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v25, -1, -1);
      MEMORY[0x223DC7E30](v24, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }
  }

  return v17 & 1;
}

uint64_t sub_222AEC47C(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall TrialEnrollment.init(treatmentId:experimentId:rolloutId:)(SiriPrivateLearningAnalytics::TrialEnrollment *__return_ptr retstr, Swift::String_optional treatmentId, Swift::String_optional experimentId, Swift::String_optional rolloutId)
{
  retstr->treatmentId = treatmentId;
  retstr->experimentId = experimentId;
  retstr->rolloutId = rolloutId;
}

void sub_222AEC4E8()
{
  v1 = v0;
  v3 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(*(*(v2 + 8) + 8) + 24))(v3);
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = *v1;
  v7 = v1[1];
  v8 = (*(v5 + 32))(*v1, v7, v4, v5);
  v10 = v9;
  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  v13 = (*(v12 + 40))(v6, v7, v11, v12);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 experimentId];

    v16 = sub_222B02388();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = v1[5];
  v20 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
  v21 = (*(v20 + 48))(v6, v7, v19, v20);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 rolloutId];

    v24 = sub_222B02388();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = v1[9];
  v28 = v1[11];
  v29 = v1[13];

  v1[8] = v8;
  v1[9] = v10;
  v1[10] = v16;
  v1[11] = v18;
  v1[12] = v24;
  v1[13] = v26;
  v30 = sub_222AEC6EC();
  v31 = v1[7];

  v1[7] = v30;

  sub_222AEC9E4();
}

uint64_t sub_222AEC6EC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 56))(*v0, v0[1], v1, v2);
  v4 = sub_222A3AB94(MEMORY[0x277D84F90]);
  if (v3 >> 62)
  {
LABEL_30:
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_222B02DC8();
    if (!v5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_27;
    }
  }

  v6 = 0;
  while (2)
  {
    while (2)
    {
      v7 = v6;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DC6F00](v7, v3);
        }

        else
        {
          if (v7 >= *(v35 + 16))
          {
            goto LABEL_29;
          }

          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v10 = [v8 factor];
        if (!v10)
        {
          goto LABEL_34;
        }

        v11 = v10;
        v12 = [v10 name];

        if (v12)
        {
          break;
        }

LABEL_6:

        ++v7;
        if (v6 == v5)
        {
          goto LABEL_27;
        }
      }

      v13 = sub_222B02388();
      v15 = v14;

      v16 = [v9 level];
      if (!v16)
      {

        goto LABEL_6;
      }

      v34 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_222A26EC8(v13, v15);
      v20 = v4[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = v19;
      if (v4[3] < v23)
      {
        sub_222A2B0A8(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_222A26EC8(v13, v15);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_35;
        }

LABEL_21:
        if (v24)
        {
          goto LABEL_22;
        }

LABEL_25:
        v4[(v18 >> 6) + 8] |= 1 << v18;
        v30 = (v4[6] + 16 * v18);
        *v30 = v13;
        v30[1] = v15;
        *(v4[7] + 8 * v18) = v34;

        v31 = v4[2];
        v22 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (!v22)
        {
          v4[2] = v32;
          if (v6 != v5)
          {
            continue;
          }

          goto LABEL_27;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        result = sub_222B030B8();
        __break(1u);
        return result;
      }

      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v29 = v18;
    sub_222A2DBA8();
    v18 = v29;
    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    v26 = v18;

    v27 = v4[7];
    v28 = *(v27 + 8 * v26);
    *(v27 + 8 * v26) = v34;

    if (v6 != v5)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v4;
}

void sub_222AEC9E4()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = sub_222B02148();
  __swift_project_value_buffer(v1, qword_280CBC458);
  sub_222AEEAC8(v0, v9);
  v2 = sub_222B02128();
  v3 = sub_222B028D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    v6 = TrialManager.makeLogString()();
    sub_222AEEB00(v9);
    v7 = sub_222A230FC(v6._countAndFlagsBits, v6._object, &v8);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_222A1C000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DC7E30](v5, -1, -1);
    MEMORY[0x223DC7E30](v4, -1, -1);
  }

  else
  {

    sub_222AEEB00(v9);
  }
}

uint64_t sub_222AECB58(void *a1, void (*a2)(void *))
{
  v9[3] = &type metadata for DefaultTrialNotificationToken;
  v9[4] = &off_2835F9670;
  v9[0] = [a1 token];
  v4 = [a1 namespaceName];
  v5 = sub_222B02388();
  v7 = v6;

  v9[5] = v5;
  v9[6] = v7;
  a2(v9);
  return sub_222ADD7CC(v9);
}

uint64_t TrialNamespaceUpdate.init(token:namespace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_222A1E5A8(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

void sub_222AECC44(uint64_t a1)
{
  sub_222A42E40(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E498, &qword_222B0ECA0);
  if (swift_dynamicCast())
  {
    v3 = v1[5];
    v4 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
    v5 = *(v4 + 24);
    v6 = swift_unknownObjectRetain();
    v5(v6, v3, v4);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v7 = sub_222B02148();
    __swift_project_value_buffer(v7, qword_280CBC458);
    sub_222A42E40(a1, v17);
    v8 = sub_222B02128();
    v9 = sub_222B028E8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01E4A0, &qword_222B0ECA8);
      v12 = sub_222B023D8();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v17);
      v15 = sub_222A230FC(v12, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222A1C000, v8, v9, "Cannot extract Trial notification token: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DC7E30](v11, -1, -1);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v17);
    }
  }
}

Swift::String __swiftcall TrialManager.makeLogString()()
{
  sub_222B02C88();
  MEMORY[0x223DC66E0](0xD000000000000024, 0x8000000222B16000);
  if (v0[9])
  {
    v1 = v0[8];
    v2 = v0[9];
  }

  else
  {
    v2 = 0xE100000000000000;
    v1 = 45;
  }

  MEMORY[0x223DC66E0](v1, v2);

  MEMORY[0x223DC66E0](0xD000000000000011, 0x8000000222B16030);
  if (v0[11])
  {
    v3 = v0[10];
    v4 = v0[11];
  }

  else
  {
    v4 = 0xE100000000000000;
    v3 = 45;
  }

  MEMORY[0x223DC66E0](v3, v4);

  MEMORY[0x223DC66E0](0x6F6C6C6F7220200ALL, 0xEE00203A64497475);
  if (v0[13])
  {
    v5 = v0[12];
    v6 = v0[13];
  }

  else
  {
    v6 = 0xE100000000000000;
    v5 = 45;
  }

  MEMORY[0x223DC66E0](v5, v6);

  MEMORY[0x223DC66E0](0x6F7463616620200ALL, 0xEC0000000A3A7372);
  v7 = v0[7];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; v12 = )
  {
    v15 = i;
LABEL_18:
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = (*(v7 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v7 + 56) + 8 * v16);
    v10 &= v10 - 1;

    v21 = v20;
    MEMORY[0x223DC66E0](v18, v19);

    MEMORY[0x223DC66E0](8250, 0xE200000000000000);
    v22 = [v21 description];
    v23 = sub_222B02388();
    v25 = v24;

    MEMORY[0x223DC66E0](v23, v25);

    MEMORY[0x223DC66E0](10, 0xE100000000000000);
    MEMORY[0x223DC66E0](538976288, 0xE400000000000000);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      v12 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_22;
    }

    v10 = *(v7 + 64 + 8 * v15);
    ++i;
    if (v10)
    {
      i = v15;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t TrialEnrollment.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_222B02C88();

  strcpy(v13, "experimentId=");
  HIWORD(v13[1]) = -4864;
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v3)
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x223DC66E0](v7, v3);

  MEMORY[0x223DC66E0](8236, 0xE200000000000000);
  v8 = v13[1];
  HIDWORD(v13[1]) = -335544318;
  MEMORY[0x223DC66E0](v13[0], v8);

  sub_222B02C88();

  strcpy(v13, "treatmentId=");
  if (v1)
  {
    v9 = v1;
  }

  else
  {
    v2 = 7104878;
    v9 = 0xE300000000000000;
  }

  MEMORY[0x223DC66E0](v2, v9);

  MEMORY[0x223DC66E0](8236, 0xE200000000000000);

  MEMORY[0x223DC66E0](v13[0], v13[1]);

  strcpy(v13, "rolloutId=");
  BYTE3(v13[1]) = 0;
  HIDWORD(v13[1]) = -369098752;
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x223DC66E0](v10, v11);

  MEMORY[0x223DC66E0](93, 0xE100000000000000);

  MEMORY[0x223DC66E0](v13[0], v13[1]);

  return 0xD000000000000010;
}

uint64_t TrialEnrollment.treatmentId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TrialEnrollment.experimentId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TrialEnrollment.rolloutId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_222AED454()
{
  v1 = 0x656D697265707865;
  if (*v0 != 1)
  {
    v1 = 0x4974756F6C6C6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D7461657274;
  }
}

uint64_t sub_222AED4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222AEE93C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222AED4EC(uint64_t a1)
{
  v2 = sub_222AEE5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222AED528(uint64_t a1)
{
  v2 = sub_222AEE5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrialEnrollment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E460, &qword_222B0E8F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AEE5A0();
  sub_222B031B8();
  v19 = 0;
  v14 = v16[5];
  sub_222B02ED8();
  if (v14)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v18 = 1;
  sub_222B02ED8();
  v17 = 2;
  sub_222B02ED8();
  return (*(v4 + 8))(v8, v3);
}

uint64_t TrialEnrollment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E470, &qword_222B0E8F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AEE5A0();
  sub_222B03198();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  v12 = sub_222B02E78();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_222B02E78();
  v24 = v15;
  v26 = 2;
  v16 = sub_222B02E78();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v10, v5);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TrialNamespaceUpdate.namespace.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void sub_222AEDA10(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v64 = a4;
  v67 = *a1;
  v7 = *(v67 + 80);
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v65 = &v61 - v12;
  v13 = sub_222B02B28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v61 - v17;
  v19 = *a2;
  v20 = a2[1];
  v21 = a1[3];
  v22 = *(a3 + 64);
  v66 = a1[2];
  v23 = v22();
  if (v23)
  {
    v24 = v23;
    (*(*(v67 + 88) + 8))(v23, v7);
    v25 = v68;
    v26 = (*(v68 + 48))(v18, 1, v7);
    v62 = v21;
    if (v26 == 1)
    {
      v27 = v7;
      (*(v14 + 8))(v18, v13);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v28 = sub_222B02148();
      __swift_project_value_buffer(v28, qword_280CBC458);

      v29 = v24;
      v30 = sub_222B02128();
      v31 = sub_222B028E8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v70 = v34;
        *v32 = 136315650;
        *(v32 + 4) = sub_222A230FC(v66, v62, &v70);
        *(v32 + 12) = 2080;
        v69 = v27;
        swift_getMetatypeMetadata();
        v35 = sub_222B023D8();
        v37 = sub_222A230FC(v35, v36, &v70);

        *(v32 + 14) = v37;
        *(v32 + 22) = 2112;
        *(v32 + 24) = v29;
        *v33 = v24;
        v38 = v29;
        _os_log_impl(&dword_222A1C000, v30, v31, "Trial: Factor %s retrieved from trial but value did not match requested type %s. Raw Level: %@", v32, 0x20u);
        sub_222A8DF88(v33);
        MEMORY[0x223DC7E30](v33, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v34, -1, -1);
        MEMORY[0x223DC7E30](v32, -1, -1);
      }

      sub_222AEEB30();
      swift_allocError();
      *v39 = 1;
      swift_willThrow();
    }

    else
    {
      v46 = v64;
      (*(v25 + 32))(v64, v18, v7);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v47 = sub_222B02148();
      __swift_project_value_buffer(v47, qword_280CBC458);
      v48 = v25;
      v49 = *(v25 + 16);
      v50 = v65;
      v49(v65, v46, v7);

      v51 = sub_222B02128();
      v52 = sub_222B028D8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v50;
        v54 = v7;
        v55 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v70 = v67;
        *v55 = 136315394;
        *(v55 + 4) = sub_222A230FC(v66, v62, &v70);
        *(v55 + 12) = 2080;
        LODWORD(v66) = v52;
        v49(v63, v53, v7);
        v56 = sub_222B023D8();
        v58 = v57;
        (*(v48 + 8))(v53, v54);
        v59 = sub_222A230FC(v56, v58, &v70);

        *(v55 + 14) = v59;
        _os_log_impl(&dword_222A1C000, v51, v66, "Trial: Factor %s retrieved from trial. Value is %s", v55, 0x16u);
        v60 = v67;
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v60, -1, -1);
        MEMORY[0x223DC7E30](v55, -1, -1);
      }

      else
      {

        (*(v48 + 8))(v50, v7);
      }
    }
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v40 = sub_222B02148();
    __swift_project_value_buffer(v40, qword_280CBC458);

    v41 = sub_222B02128();
    v42 = sub_222B028D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v70 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_222A230FC(v66, v21, &v70);
      _os_log_impl(&dword_222A1C000, v41, v42, "Trial: Failed to retrieve %s from trial. No matching factor found.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223DC7E30](v44, -1, -1);
      MEMORY[0x223DC7E30](v43, -1, -1);
    }

    sub_222AEEB30();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
  }
}

id sub_222AEE194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_222A89160;
  v14[3] = &block_descriptor_15;
  v11 = _Block_copy(v14);

  v12 = [v9 addUpdateHandlerForNamespaceName:v10 queue:a3 usingBlock:v11];

  _Block_release(v11);

  return v12;
}

uint64_t sub_222AEE294()
{
  v1 = *v0;
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = [v1 treatmentIdWithNamespaceName_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_222B02388();

  return v4;
}

id sub_222AEE32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *v5;
  v8 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v9 = [v7 *a5];

  return v9;
}

uint64_t sub_222AEE384()
{
  v1 = *v0;
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = [v1 factorLevelsWithNamespaceName_];

  sub_222AEEA64();
  v4 = sub_222B025F8();

  return v4;
}

id sub_222AEE3F0()
{
  v1 = *v0;
  v2 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  return v4;
}

uint64_t _s28SiriPrivateLearningAnalytics15TrialEnrollmentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_222B02F78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_222B02F78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_222B02F78() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_222AEE5A0()
{
  result = qword_27D01E468;
  if (!qword_27D01E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E468);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_222AEE618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_222AEE674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_222AEE6E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_222AEE72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222AEE838()
{
  result = qword_27D01E478;
  if (!qword_27D01E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E478);
  }

  return result;
}

unint64_t sub_222AEE890()
{
  result = qword_27D01E480;
  if (!qword_27D01E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E480);
  }

  return result;
}

unint64_t sub_222AEE8E8()
{
  result = qword_27D01E488;
  if (!qword_27D01E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E488);
  }

  return result;
}

uint64_t sub_222AEE93C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974;
  if (v4 || (sub_222B02F78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL || (sub_222B02F78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974756F6C6C6F72 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_222B02F78();

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

unint64_t sub_222AEEA64()
{
  result = qword_280CB8450;
  if (!qword_280CB8450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8450);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_222AEEB30()
{
  result = qword_280CB89F8[0];
  if (!qword_280CB89F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB89F8);
  }

  return result;
}

unint64_t sub_222AEEB98()
{
  result = qword_27D01E4B8;
  if (!qword_27D01E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E4B8);
  }

  return result;
}

uint64_t TrialStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialStatusResolver.init()();
  return v0;
}

uint64_t TrialPrivateLearningSuggestionsStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialPrivateLearningSuggestionsStatusResolver.init()();
  return v0;
}

_OWORD *TrialStatusResolver.init()()
{
  v1 = v0;
  *(v0 + 154) = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v7[3] = sub_222A35F0C();
  v7[4] = &off_2835F93A8;
  v7[0] = v2;
  sub_222A42E40(v7, v9);
  *&v8 = 0xD000000000000027;
  *(&v8 + 1) = 0x8000000222B160A0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *(&v10 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v3 = v12;
  v1[5] = v11;
  v1[6] = v3;
  v1[7] = v13;
  v4 = v9[0];
  v1[1] = v8;
  v1[2] = v4;
  v5 = v10;
  v1[3] = v9[1];
  v1[4] = v5;
  return v1;
}

__n128 TrialStatusResolver.__allocating_init(trialManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 154) = 0u;
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = result;
  return result;
}

_OWORD *TrialStatusResolver.init(trialManager:)(_OWORD *a1)
{
  *(v1 + 154) = 0u;
  v1[8] = 0u;
  v1[9] = 0u;
  v2 = a1[5];
  v1[5] = a1[4];
  v1[6] = v2;
  v1[7] = a1[6];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  v4 = a1[3];
  v1[3] = a1[2];
  v1[4] = v4;
  return v1;
}

uint64_t sub_222AEEDE4()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  v3 = sub_222AEEE7C(v2, 0xD00000000000002ELL, 0x8000000222B0FD80, 0xD000000000000030, 0x8000000222B160D0, 0);

  return v3 & 1;
}

uint64_t sub_222AEEE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (*(a1 + 16) && (v10 = sub_222A26EC8(a2, a3), (v11 & 1) != 0))
  {
    v12 = qword_280CBA628;
    v13 = *(*(a1 + 56) + 8 * v10);
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    __swift_project_value_buffer(v14, qword_280CBC458);
    v15 = v13;

    v16 = sub_222B02128();
    v17 = sub_222B028D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_222A230FC(a4, a5, &v26);
      *(v18 + 12) = 1024;
      *(v18 + 14) = [v15 BOOLeanValue];

      _os_log_impl(&dword_222A1C000, v16, v17, "Trial: Factor %s retrieved from trial. Level is %{BOOL}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223DC7E30](v19, -1, -1);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    else
    {
    }

    a6 = [v15 BOOLeanValue];
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);

    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_222A230FC(a4, a5, &v26);
      *(v23 + 12) = 1024;
      *(v23 + 14) = a6 & 1;
      _os_log_impl(&dword_222A1C000, v21, v22, "Trial: Factor was not retrieved from trial. Using default level for %s: %{BOOL}d", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DC7E30](v24, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
    }
  }

  return a6 & 1;
}

uint64_t sub_222AEF16C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  v3 = sub_222AEEE7C(v2, 0xD000000000000021, 0x8000000222B0FDB0, 0xD000000000000021, 0x8000000222B16110, 0);

  return v3 & 1;
}

uint64_t sub_222AEF234(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  v7 = *(v3 + 72);

  v9 = sub_222AEEE7C(v8, a1, a2, a1, a2, a3);

  return v9 & 1;
}

uint64_t sub_222AEF2BC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);

  v4 = sub_222AEEE7C(v3, 0xD00000000000002ELL, 0x8000000222B0FD80, 0xD000000000000030, 0x8000000222B160D0, 0);

  return v4 & 1;
}

uint64_t sub_222AEF358@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *a1 = *(v3 + 80);
  *(a1 + 8) = *(v3 + 88);
  *(a1 + 24) = *(v3 + 104);
  *(a1 + 40) = v4;
}

uint64_t sub_222AEF3F8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = *(v7 + 72);

  v10 = sub_222AEEE7C(v9, a1, a2, a1, a2, a3);

  return v10 & 1;
}

_OWORD *TrialPrivateLearningSuggestionsStatusResolver.init()()
{
  v1 = v0;
  *(v0 + 153) = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v7[3] = sub_222A35F0C();
  v7[4] = &off_2835F93A8;
  v7[0] = v2;
  sub_222A42E40(v7, v9);
  *&v8 = 0xD00000000000002ALL;
  *(&v8 + 1) = 0x8000000222B16140;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *(&v10 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v3 = v12;
  v1[5] = v11;
  v1[6] = v3;
  v1[7] = v13;
  v4 = v9[0];
  v1[1] = v8;
  v1[2] = v4;
  v5 = v10;
  v1[3] = v9[1];
  v1[4] = v5;
  return v1;
}

uint64_t sub_222AEF574()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  v3 = sub_222AEEE7C(v2, 0xD00000000000001CLL, 0x8000000222B0FE90, 0xD00000000000001ELL, 0x8000000222B16170, 0);

  return v3 & 1;
}

uint64_t sub_222AEF610@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *a1 = *(v1 + 80);
  *(a1 + 8) = *(v1 + 88);
  *(a1 + 24) = *(v1 + 104);
  *(a1 + 40) = v3;
}

uint64_t sub_222AEF68C()
{
  swift_beginAccess();
  sub_222AEC4E8();
  return swift_endAccess();
}

uint64_t sub_222AEF6D8()
{
  swift_beginAccess();
  sub_222AEEAC8(v0 + 16, v3);
  countAndFlagsBits = TrialManager.makeLogString()()._countAndFlagsBits;
  sub_222AEEB00(v3);
  return countAndFlagsBits;
}

uint64_t sub_222AEF770(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  a4();
  swift_beginAccess();
  sub_222AEEAC8(v6 + 16, v20);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v13 = v20[0];
  v12 = v20[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v11 + 16);

  v16 = v15(v13, v12, a1, a6, v14, v10, v11);

  v24[3] = &type metadata for DefaultTrialNotificationToken;
  v24[4] = &off_2835F9670;
  v24[0] = v16;
  sub_222AEEB00(v20);
  swift_beginAccess();
  sub_222AF19D4(v24, v7 + 128);
  return swift_endAccess();
}

uint64_t sub_222AEF8B0()
{
  swift_beginAccess();
  sub_222AF1A44(v0 + 128, &v2);
  if (*(&v3 + 1))
  {
    sub_222A1E5A8(&v2, v5);
    swift_beginAccess();
    sub_222AEEAC8(v0 + 16, &v2);
    sub_222AECC44(v5);
    sub_222AEEB00(&v2);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_222AF1AB4(&v2);
  }

  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_222AF19D4(&v2, v0 + 128);
  return swift_endAccess();
}

uint64_t TrialPrivateLearningSuggestionsStatusResolver.deinit()
{
  sub_222AEEB00(v0 + 16);
  sub_222AF1AB4(v0 + 128);
  return v0;
}

uint64_t sub_222AEF9B8()
{
  sub_222AEEB00(v0 + 16);
  sub_222AF1AB4(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_222AEFA04()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);

  v4 = sub_222AEEE7C(v3, 0xD00000000000001CLL, 0x8000000222B0FE90, 0xD00000000000001ELL, 0x8000000222B16170, 0);

  return v4 & 1;
}

uint64_t sub_222AEFAA0()
{
  v1 = *v0;
  swift_beginAccess();
  sub_222AEC4E8();
  return swift_endAccess();
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialSiriUnderstandingTMDCStatusResolver.init()();
  return v0;
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.init()()
{
  v1 = v0;
  v2 = sub_222B01988();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentLocale];
  sub_222B01918();

  v8 = [objc_opt_self() sharedPreferences];
  CurrentLocales.init(deviceLocale:siriPreferences:)(v6, v8, v26);
  v10 = v26[4];
  v9 = v26[5];
  v12 = v26[6];
  v11 = v26[7];

  sub_222AF1B1C(v26);
  *(v1 + 16) = v10;
  *(v1 + 24) = v9;
  *(v1 + 32) = v12;
  *(v1 + 40) = v11;
  v13 = [objc_opt_self() clientWithIdentifier_];
  v19[3] = sub_222A35F0C();
  v19[4] = &off_2835F93A8;
  v19[0] = v13;
  sub_222A42E40(v19, v21);
  *&v20 = 0xD000000000000017;
  *(&v20 + 1) = 0x8000000222B16190;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  *(&v22 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v19);
  v14 = v24;
  *(v1 + 112) = v23;
  *(v1 + 128) = v14;
  *(v1 + 144) = v25;
  v15 = v21[0];
  *(v1 + 48) = v20;
  *(v1 + 64) = v15;
  v16 = v22;
  *(v1 + 80) = v21[1];
  *(v1 + 96) = v16;
  return v1;
}

double sub_222AEFD14()
{
  v1 = sub_222AEFD78(*(v0 + 104), 0x7365726854703270, 0xEC000000646C6F68, 0x7365726854703270, 0xEE002928646C6F68, 2.0);

  return sub_222AF07C4(v1, 2.0);
}

double sub_222AEFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  if (*(a1 + 16) && (v10 = sub_222A26EC8(a2, a3), (v11 & 1) != 0))
  {
    v12 = qword_280CBA628;
    v13 = *(*(a1 + 56) + 8 * v10);
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    __swift_project_value_buffer(v14, qword_280CBC458);
    v15 = v13;

    v16 = sub_222B02128();
    v17 = sub_222B028D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_222A230FC(a4, a5, &v28);
      *(v18 + 12) = 2048;
      [v15 doubleValue];
      *(v18 + 14) = v20;
      _os_log_impl(&dword_222A1C000, v16, v17, "Trial: Factor %s retrieved from trial. Value is %f", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223DC7E30](v19, -1, -1);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    [v15 doubleValue];
    a6 = v21;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CBC458);

    v23 = sub_222B02128();
    v24 = sub_222B028E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_222A230FC(a4, a5, &v28);
      *(v25 + 12) = 2048;
      *(v25 + 14) = a6;
      _os_log_impl(&dword_222A1C000, v23, v24, "Trial: Factor was not retrieved from trial. Using default level for %s: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DC7E30](v26, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);
    }
  }

  return a6;
}

double sub_222AF0060()
{
  v1 = sub_222AEFD78(*(v0 + 104), 0xD000000000000016, 0x8000000222B161B0, 0xD000000000000018, 0x8000000222B161D0, 900.0);

  return sub_222AF07C4(v1, 900.0);
}

double sub_222AF00DC()
{
  v1 = sub_222AEFD78(*(v0 + 104), 0xD000000000000028, 0x8000000222B161F0, 0xD00000000000002ALL, 0x8000000222B16220, 450.0);

  return sub_222AF07C4(v1, 450.0);
}

uint64_t sub_222AF0158()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0x746E755263646D74, 0xEB00000000656D69, 0xD000000000000016, 0x8000000222B16250, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF01C4()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0xD000000000000016, 0x8000000222B16270, 0xD000000000000021, 0x8000000222B16290, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF0230()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0x746E755263646D74, 0xEF6C6C6143656D69, 0xD00000000000001ALL, 0x8000000222B162C0, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF02A0()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0xD000000000000012, 0x8000000222B162E0, 0xD00000000000001DLL, 0x8000000222B16300, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF030C()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0xD000000000000017, 0x8000000222B16320, 0xD000000000000022, 0x8000000222B16340, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

void sub_222AF03BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (*(a1 + 16))
  {
    v12 = sub_222A26EC8(a2, a3);
    if (v13)
    {
      v14 = qword_280CBA628;
      v15 = *(*(a1 + 56) + 8 * v12);
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = sub_222B02148();
      __swift_project_value_buffer(v16, qword_280CBC458);
      v17 = v15;

      v18 = sub_222B02128();
      v19 = sub_222B028D8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v34 = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_222A230FC(a4, a5, &v34);
        *(v20 + 12) = 2080;
        v22 = [v17 stringValue];

        if (!v22)
        {
LABEL_17:
          __break(1u);
          return;
        }

        v23 = sub_222B02388();
        v25 = v24;

        v26 = sub_222A230FC(v23, v25, &v34);

        *(v20 + 14) = v26;
        _os_log_impl(&dword_222A1C000, v18, v19, "Trial: Factor %s retrieved from trial. Value is %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v21, -1, -1);
        MEMORY[0x223DC7E30](v20, -1, -1);
      }

      else
      {
      }

      v32 = [v17 stringValue];
      if (v32)
      {
        v33 = v32;
        sub_222B02388();

        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v27 = sub_222B02148();
  __swift_project_value_buffer(v27, qword_280CBC458);

  v28 = sub_222B02128();
  v29 = sub_222B028E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_222A230FC(a4, a5, &v34);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_222A230FC(a6, a7, &v34);
    _os_log_impl(&dword_222A1C000, v28, v29, "Trial: Factor was not retrieved from trial. Using default level for %s: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v31, -1, -1);
    MEMORY[0x223DC7E30](v30, -1, -1);
  }
}

uint64_t sub_222AF0760@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 112);
  *(a1 + 8) = *(v1 + 120);
  *(a1 + 24) = *(v1 + 136);
  *(a1 + 40) = v2;
}

double sub_222AF07C4(double a1, double a2)
{
  sub_222AF03BC(v2[13], 0x6F4C746567726174, 0xEC000000656C6163, 0x6F4C746567726174, 0xEE002928656C6163, 7104878, 0xE300000000000000);
  v6 = v5;
  v8 = v7;
  v10 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v30 = v10;
  v31 = v9;

  MEMORY[0x223DC66E0](45, 0xE100000000000000);
  MEMORY[0x223DC66E0](v11, v12);
  if (v6 == v10 && v8 == v31)
  {

LABEL_8:

    return a1;
  }

  v14 = sub_222B02F78();

  if (v14)
  {
    goto LABEL_8;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  __swift_project_value_buffer(v15, qword_280CBC458);

  v16 = sub_222B02128();
  v17 = sub_222B028D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v18 = 136315906;
    v19 = sub_222A230FC(v6, v8, &v29);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;
    v30 = v10;
    v31 = v9;

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v11, v12);
    v20 = sub_222A230FC(v30, v31, &v29);

    *(v18 + 14) = v20;
    *(v18 + 22) = 2080;
    v21 = sub_222B027C8();
    v23 = sub_222A230FC(v21, v22, &v29);

    *(v18 + 24) = v23;
    *(v18 + 32) = 2080;
    v24 = sub_222B027C8();
    v26 = sub_222A230FC(v24, v25, &v29);

    *(v18 + 34) = v26;
    _os_log_impl(&dword_222A1C000, v16, v17, "targetLocale: %s is not equal to siriLocale: %s, using: default:%s instead of factorLevel:%s", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v28, -1, -1);
    MEMORY[0x223DC7E30](v18, -1, -1);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_222AF0ADC(char a1, char a2)
{
  sub_222AF03BC(v2[13], 0x6F4C746567726174, 0xEC000000656C6163, 0x6F4C746567726174, 0xEE002928656C6163, 7104878, 0xE300000000000000);
  v6 = v5;
  v8 = v7;
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v32 = v9;
  v33 = v10;

  MEMORY[0x223DC66E0](45, 0xE100000000000000);
  MEMORY[0x223DC66E0](v11, v12);
  if (v6 == v9 && v8 == v33)
  {

LABEL_8:

    return a1 & 1;
  }

  v30 = a2;
  v14 = sub_222B02F78();

  if (v14)
  {
    goto LABEL_8;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v16 = sub_222B02148();
  __swift_project_value_buffer(v16, qword_280CBC458);

  v17 = sub_222B02128();
  v18 = sub_222B028D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v19 = 136315906;
    v28 = v18;
    v20 = sub_222A230FC(v6, v8, &v31);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    v32 = v9;
    v33 = v10;

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v11, v12);
    v21 = sub_222A230FC(v32, v33, &v31);

    *(v19 + 14) = v21;
    *(v19 + 22) = 2080;
    if (v30)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v30)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_222A230FC(v22, v23, &v31);

    *(v19 + 24) = v24;
    *(v19 + 32) = 2080;
    if (a1)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (a1)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_222A230FC(v25, v26, &v31);

    *(v19 + 34) = v27;
    _os_log_impl(&dword_222A1C000, v17, v28, "targetLocale: %s is not equal to siriLocale: %s, using: default:%s instead of factorLevel:%s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v29, -1, -1);
    MEMORY[0x223DC7E30](v19, -1, -1);

    a1 = v30;
  }

  else
  {

    a1 = v30;
  }

  return a1 & 1;
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  sub_222AEEB00(v0 + 48);
  return v0;
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  sub_222AEEB00(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t RECTIFITrialStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  RECTIFITrialStatusResolver.init()();
  return v0;
}

_OWORD *RECTIFITrialStatusResolver.init()()
{
  v1 = v0;
  *(v0 + 128) = 0;
  *(v0 + 130) = 0;
  *(v0 + 136) = xmmword_222B0ED80;
  *(v0 + 152) = xmmword_222B0ED90;
  *(v0 + 168) = xmmword_222B0DC60;
  *(v0 + 184) = 0xD000000000000017;
  *(v0 + 192) = 0x8000000222B16370;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v7[3] = sub_222A35F0C();
  v7[4] = &off_2835F93A8;
  v7[0] = v2;
  sub_222A42E40(v7, v9);
  *&v8 = 0xD00000000000001ALL;
  *(&v8 + 1) = 0x8000000222B16390;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *(&v10 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v3 = v12;
  v1[5] = v11;
  v1[6] = v3;
  v1[7] = v13;
  v4 = v9[0];
  v1[1] = v8;
  v1[2] = v4;
  v5 = v10;
  v1[3] = v9[1];
  v1[4] = v5;
  return v1;
}

uint64_t RECTIFITrialStatusResolver.deinit()
{
  sub_222AEEB00(v0 + 16);
  v1 = *(v0 + 192);

  return v0;
}

uint64_t RECTIFITrialStatusResolver.__deallocating_deinit()
{
  sub_222AEEB00(v0 + 16);
  v1 = *(v0 + 192);

  return swift_deallocClassInstance();
}

uint64_t sub_222AF19D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4C0, &qword_222B0EDA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF1A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4C0, &qword_222B0EDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF1AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4C0, &qword_222B0EDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserFeedbackLearnedEntitySuggestion.init(entity:needsConfirmation:suggestionId:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for UserFeedbackLearnedEntitySuggestion() + 24);
  v7 = sub_222B018D8();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t type metadata accessor for UserFeedbackLearnedEntitySuggestion()
{
  result = qword_27D01E4E0;
  if (!qword_27D01E4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserFeedbackLearnedEntitySuggestion.suggestionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserFeedbackLearnedEntitySuggestion() + 24);
  v4 = sub_222B018D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_222AF251C@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_222A34E48(v1 + 16, &v5, &qword_27D01E4D8, &qword_222B0F0D0);
  if (*(&v6 + 1) == 1)
  {
    sub_222A34F20(&v5, &qword_27D01E4D8, &qword_222B0F0D0);
    sub_222AF25F8(a1);
    sub_222A34E48(a1, &v5, &qword_27D01E4C8, &qword_222B0F0B8);
    swift_beginAccess();
    sub_222AF445C(&v5, v1 + 16);
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_222AF25F8@<D0>(uint64_t a1@<X8>)
{
  v2 = static Config.universalSuggestionsStoreFilePath.getter();
  v4 = v3;
  v5 = type metadata accessor for UniversalSuggestionsStoreCoreData();
  swift_allocObject();
  v6 = sub_222AB99B4(v2, v4, 0);
  if (v6)
  {
    v7 = v6;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v8 = sub_222B02148();
    __swift_project_value_buffer(v8, qword_280CBC458);
    v9 = sub_222B02128();
    v10 = sub_222B028D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222A1C000, v9, v10, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: lazily initialised storage", v11, 2u);
      MEMORY[0x223DC7E30](v11, -1, -1);
    }

    *(a1 + 24) = v5;
    *(a1 + 32) = &protocol witness table for UniversalSuggestionsStoreCoreData;
    *a1 = v7;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_280CBC458);
    v14 = sub_222B02128();
    v15 = sub_222B028E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Failed to initialise Universal Suggestions store", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UserFeedbackLearnedEntitySuggester.__allocating_init()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  v3 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v2)
  {
    v3 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v4 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v2)
  {
    v4 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  v13 = v3;
  v14 = v4;
  v5 = type metadata accessor for SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager();
  swift_allocObject();
  v10 = v5;
  v11 = &protocol witness table for FeatureManager;
  *&v9 = SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager.init()();
  type metadata accessor for UserFeedbackLearnedEntitySuggester();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = xmmword_222B0B300;
  type metadata accessor for PLUSUniversalSuggestionsRuntimeLogger();
  v7 = swift_allocObject();
  sub_222A1E5A8(&v12, v7 + 16);
  *(v6 + 56) = v7;
  sub_222A1E5A8(&v9, v6 + 64);
  return v6;
}

uint64_t sub_222AF2968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v157 = a2;
  v160 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v151 = &v146 - v11;
  v152 = type metadata accessor for UniversalSuggestionCandidate(0);
  v153 = *(v152 - 8);
  v12 = *(v153 + 64);
  v14 = MEMORY[0x28223BE20](v152, v13);
  v149 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v150 = &v146 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v146 - v22;
  v24 = sub_222B018D8();
  v158 = *(v24 - 8);
  v159 = v24;
  v25 = *(v158 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v156 = &v146 - v31;
  v32 = sub_222B02098();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B01C18();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v148 = v38;
    v39 = a1;
    v40 = qword_27D01C4D0;
    v155 = v39;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = sub_222B020C8();
    __swift_project_value_buffer(v41, qword_27D024610);
    sub_222B020B8();
    sub_222B02068();
    v154 = sub_222A6EF34("runUniversalSuggestionsQuery", 28, 2, v37);
    (*(v33 + 8))(v37, v32);
    if (a3)
    {
      sub_222B01858();
      v43 = v158;
      v42 = v159;
      if ((*(v158 + 48))(v23, 1, v159) != 1)
      {
        v44 = *(v43 + 32);
        v45 = v156;
        v44(v156, v23, v42);
        sub_222A42E40(v5[7] + 16, v169);
        v46 = *(v43 + 16);
        v157 = v43 + 16;
        v147 = v46;
        v46(v29, v45, v42);
        v47 = type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger();
        v48 = *(v47 + 48);
        v49 = *(v47 + 52);
        v50 = swift_allocObject();
        (*(v19 + 56))(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, 1, 1, v18);
        sub_222A1E5A8(v169, (v50 + 2));
        v44(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v29, v42);
        (*(v43 + 56))(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v42);
        v51 = v5[11];
        v52 = v5[12];
        __swift_project_boxed_opaque_existential_1(v5 + 8, v51);
        if (qword_27D01C4B8 != -1)
        {
          swift_once();
        }

        v53 = qword_27D01CE98;
        v54 = type metadata accessor for AnyFeature();
        v167 = v54;
        v168 = &protocol witness table for AnyFeature;
        v165 = v53;
        v55 = *(v52 + 8);

        v56 = v55(&v165, v51, v52);
        __swift_destroy_boxed_opaque_existential_0(&v165);
        v57 = v5[11];
        v58 = v5[12];
        __swift_project_boxed_opaque_existential_1(v5 + 8, v57);
        if (qword_280CB7AD0 != -1)
        {
          swift_once();
        }

        v167 = v54;
        v168 = &protocol witness table for AnyFeature;
        v165 = qword_280CB7AD8;
        v59 = *(v58 + 8);

        v60 = v59(&v165, v57, v58);
        __swift_destroy_boxed_opaque_existential_0(&v165);
        v61 = v159;
        if (v60)
        {

          sub_222AF251C(&v165);
          if (v167)
          {
            sub_222A42E40(&v165, v162);
            sub_222A34F20(&v165, &qword_27D01E4C8, &qword_222B0F0B8);
            v62 = v163;
            v63 = v164;
            __swift_project_boxed_opaque_existential_1(v162, v163);
            v161 = v148;
            v64 = v151;
            (*(v63 + 24))(&v161, v62, v63);
            __swift_destroy_boxed_opaque_existential_0(v162);
            v65 = v152;
            if ((*(v153 + 48))(v64, 1, v152) != 1)
            {
              v66 = v150;
              sub_222AF4234(v64, v150);
              v67 = (v66 + *(v65 + 24));
              v68 = type metadata accessor for UniversalCandidate(0);
              v69 = *(v68 + 20);
              v151 = v67;
              v70 = *&v67[v69];
              v71 = qword_280CBA628;

              if (v71 != -1)
              {
                swift_once();
              }

              v72 = sub_222B02148();
              v73 = __swift_project_value_buffer(v72, qword_280CBC458);
              v74 = v149;
              sub_222AF42F4(v66, v149);
              v148 = v73;
              v75 = sub_222B02128();
              v76 = sub_222B028D8();
              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v146 = v70;
                v78 = v77;
                v79 = swift_slowAlloc();
                v80 = v65;
                v81 = v79;
                v162[0] = v79;
                *v78 = 136315138;
                v165 = *(v74 + *(v80 + 24) + *(v68 + 20));
                v165 = sub_222A67AA8();
                v166 = v82;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
                v83 = sub_222B023D8();
                v84 = v74;
                v86 = v85;
                sub_222AF4298(v84);
                v87 = sub_222A230FC(v83, v86, v162);

                *(v78 + 4) = v87;
                _os_log_impl(&dword_222A1C000, v75, v76, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Found %s", v78, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v81);
                MEMORY[0x223DC7E30](v81, -1, -1);
                v88 = v78;
                v70 = v146;
                MEMORY[0x223DC7E30](v88, -1, -1);
              }

              else
              {

                sub_222AF4298(v74);
              }

              v127 = *(v68 + 24);
              v128 = v151;
              v129 = *&v151[v127];
              v130 = v150;
              if (v129 < 0.0)
              {
                v131 = sub_222B02128();
                v132 = sub_222B028D8();
                if (os_log_type_enabled(v131, v132))
                {
                  v133 = swift_slowAlloc();
                  *v133 = 0;
                  _os_log_impl(&dword_222A1C000, v131, v132, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Dropping suggestion candidate because it has a low score", v133, 2u);
                  MEMORY[0x223DC7E30](v133, -1, -1);
                }

                sub_222AF40FC(v56 & 1, MEMORY[0x277D84F90]);
                swift_setDeallocating();
                __swift_destroy_boxed_opaque_existential_0(v50 + 2);
                sub_222A34F20(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
                v123 = *(v158 + 8);
                v123(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v61);
                sub_222A34F20(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
                v134 = *(*v50 + 48);
                v135 = *(*v50 + 52);
                swift_deallocClassInstance();

                sub_222AF4298(v130);
LABEL_51:
                v123(v156, v61);
                v126 = type metadata accessor for UserFeedbackLearnedEntitySuggestion();
                (*(*(v126 - 8) + 56))(v160, 1, 1, v126);
                sub_222AF3DB4();
                goto LABEL_38;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4D0, &qword_222B0F0C8);
              v136 = *(v153 + 72);
              v137 = (*(v153 + 80) + 32) & ~*(v153 + 80);
              v138 = swift_allocObject();
              *(v138 + 16) = xmmword_222B05250;
              sub_222AF42F4(v130, v138 + v137);
              sub_222AF40FC(v56 & 1, v138);
              swift_setDeallocating();
              sub_222AF4298(v138 + v137);
              swift_deallocClassInstance();
              if ((v56 & 1) == 0)
              {
                v140 = sub_222B02128();
                v141 = sub_222B028D8();
                if (os_log_type_enabled(v140, v141))
                {
                  v142 = swift_slowAlloc();
                  *v142 = 0;
                  _os_log_impl(&dword_222A1C000, v140, v141, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Surfacing of suggestions is disabled, skipping providing a result", v142, 2u);
                  MEMORY[0x223DC7E30](v142, -1, -1);
                }

                sub_222AF4298(v130);
                (*(v158 + 8))(v156, v61);
                v143 = type metadata accessor for UserFeedbackLearnedEntitySuggestion();
                (*(*(v143 - 8) + 56))(v160, 1, 1, v143);
                sub_222AF3DB4();
              }

              (*(v158 + 8))(v156, v61);

              if (v129 >= 0.4)
              {
                v139 = *v130;
              }

              else
              {
                v139 = 1;
              }

              v144 = type metadata accessor for UserFeedbackLearnedEntitySuggestion();
              v145 = v160;
              v147(v160 + *(v144 + 24), v128, v61);
              sub_222AF4298(v130);
              *v145 = v70;
              *(v145 + 8) = v139;
              (*(*(v144 - 8) + 56))(v145, 0, 1, v144);
LABEL_37:
              sub_222AF3DB4();
LABEL_38:
            }
          }

          else
          {
            sub_222A34F20(&v165, &qword_27D01E4C8, &qword_222B0F0B8);
            v64 = v151;
            (*(v153 + 56))(v151, 1, 1, v152);
          }

          sub_222A34F20(v64, &qword_27D01D688, &unk_222B08940);
          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v114 = sub_222B02148();
          __swift_project_value_buffer(v114, qword_280CBC458);

          v115 = sub_222B02128();
          v116 = sub_222B028D8();

          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v162[0] = v118;
            *v117 = 136315138;
            v165 = v148;
            v165 = sub_222A67AA8();
            v166 = v119;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
            v120 = sub_222B023D8();
            v122 = sub_222A230FC(v120, v121, v162);

            *(v117 + 4) = v122;
            _os_log_impl(&dword_222A1C000, v115, v116, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Could not retrieve a suggestion candidate from database for entity %s", v117, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v118);
            MEMORY[0x223DC7E30](v118, -1, -1);
            MEMORY[0x223DC7E30](v117, -1, -1);
          }

          sub_222AF40FC(v56 & 1, MEMORY[0x277D84F90]);

          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_0(v50 + 2);
          sub_222A34F20(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
          v123 = *(v158 + 8);
          v123(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v61);
          sub_222A34F20(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
          v124 = *(*v50 + 48);
          v125 = *(*v50 + 52);
          swift_deallocClassInstance();
          goto LABEL_51;
        }

        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v107 = sub_222B02148();
        __swift_project_value_buffer(v107, qword_280CBC458);
        v108 = sub_222B02128();
        v109 = sub_222B028D8();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 67109376;
          *(v110 + 4) = v56 & 1;
          *(v110 + 8) = 1024;
          *(v110 + 10) = 0;
          _os_log_impl(&dword_222A1C000, v108, v109, "Universal User Feedback suggestions is disabled, skipping; isSurfacingEnabled=%{BOOL}d, isOfflineLearningEnabled=%{BOOL}d", v110, 0xEu);
          MEMORY[0x223DC7E30](v110, -1, -1);
        }

        sub_222A63EE8(0);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_0(v50 + 2);
        sub_222A34F20(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
        v111 = *(v158 + 8);
        v111(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v61);
        sub_222A34F20(v50 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
        v112 = *(*v50 + 48);
        v113 = *(*v50 + 52);
        swift_deallocClassInstance();
        v111(v156, v61);
LABEL_36:
        v106 = type metadata accessor for UserFeedbackLearnedEntitySuggestion();
        (*(*(v106 - 8) + 56))(v160, 1, 1, v106);
        goto LABEL_37;
      }
    }

    else
    {
      (*(v158 + 56))(v23, 1, 1, v159);
    }

    sub_222A34F20(v23, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v98 = sub_222B02148();
    __swift_project_value_buffer(v98, qword_280CBC458);

    v99 = sub_222B02128();
    v100 = sub_222B028E8();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v169[0] = v102;
      *v101 = 136315138;
      if (a3)
      {
        v103 = v157;
      }

      else
      {
        v103 = 0x3E6C696E3CLL;
      }

      if (a3)
      {
        v104 = a3;
      }

      else
      {
        v104 = 0xE500000000000000;
      }

      v105 = sub_222A230FC(v103, v104, v169);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_222A1C000, v99, v100, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: cannot emit events due to null identifiers, requestId: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x223DC7E30](v102, -1, -1);
      MEMORY[0x223DC7E30](v101, -1, -1);
    }

    goto LABEL_36;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v89 = sub_222B02148();
  __swift_project_value_buffer(v89, qword_280CBC458);
  v90 = sub_222B02128();
  v91 = sub_222B028D8();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_222A1C000, v90, v91, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: unsupported entity type", v92, 2u);
    MEMORY[0x223DC7E30](v92, -1, -1);
  }

  v93 = type metadata accessor for UserFeedbackLearnedEntitySuggestion();
  v94 = *(*(v93 - 8) + 56);
  v95 = v93;
  v96 = v160;

  return v94(v96, 1, 1, v95);
}

uint64_t sub_222AF3DB4()
{
  v0 = sub_222B020D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222B02098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D01C4D0 != -1)
  {
    swift_once();
  }

  v12 = sub_222B020C8();
  __swift_project_value_buffer(v12, qword_27D024610);
  v13 = sub_222B020B8();
  sub_222B020E8();
  v14 = sub_222B029F8();
  if (sub_222B02B08())
  {

    sub_222B02118();

    if ((*(v1 + 88))(v5, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v5, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v13, v14, v17, "runUniversalSuggestionsQuery", v15, v16, 2u);
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t UserFeedbackLearnedEntitySuggester.deinit()
{
  sub_222A34F20(v0 + 16, &qword_27D01E4D8, &qword_222B0F0D0);
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  return v0;
}

uint64_t UserFeedbackLearnedEntitySuggester.__deallocating_deinit()
{
  sub_222A34F20(v0 + 16, &qword_27D01E4D8, &qword_222B0F0D0);
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_222AF40FC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionCandidate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A639C4(a2);
  sub_222A63EE8(a1);
  if ((a1 & 1) == 0)
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v12 = *(v5 + 72);
      do
      {
        sub_222AF42F4(v11, v9);
        v13 = *(v4 + 24);
        type metadata accessor for PLUSSuggestionMetadata();
        inited = swift_initStackObject();
        *(inited + 16) = 512;
        sub_222A643E0(&v9[v13], inited);
        sub_222AF4298(v9);
        v11 += v12;
        --v10;
      }

      while (v10);
    }
  }
}

uint64_t sub_222AF4234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF4298(uint64_t a1)
{
  v2 = type metadata accessor for UniversalSuggestionCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AF42F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF4394()
{
  result = sub_222B01C38();
  if (v1 <= 0x3F)
  {
    result = sub_222B018D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222AF445C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4D8, &qword_222B0F0D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF44CC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_222B02BC8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_222AF4F2C(v3, *(a1 + 36), 0, a1);

  return v5;
}

void sub_222AF4548(void *a1, void *a2, void *a3)
{
  v49 = a3;
  v6 = [a1 entity];
  v7 = [v6 name];

  if (!v7)
  {
    return;
  }

  v8 = sub_222B02388();
  v10 = v9;

  if (v8 == 0xD000000000000011 && 0x8000000222B11A30 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v14 = [a1 primitiveValueForKey_];

  if (v14)
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48[0] = v46;
  v48[1] = v47;
  if (!*(&v47 + 1))
  {
    sub_222A34F20(v48, &unk_27D01CB00, &qword_222B08ED0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v44 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesGroundTruthName) && v45 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesGroundTruthName + 8) || (sub_222B02F78() & 1) != 0)
  {
    goto LABEL_26;
  }

  if ((v44 != *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptGroundTruthName) || v45 != *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptGroundTruthName + 8)) && (sub_222B02F78() & 1) == 0)
  {
    if (v44 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomeGroundTruthName) && v45 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomeGroundTruthName + 8))
    {
    }

    else
    {
      v18 = sub_222B02F78();

      if ((v18 & 1) == 0)
      {
LABEL_34:
        v19 = [a2 destinationEntityName];
        if (v19)
        {
          v20 = v19;
          v40 = a2;
          v21 = objc_opt_self();
          v22 = [v49 destinationContext];
          v23 = [v21 insertNewObjectForEntityForName:v20 inManagedObjectContext:v22];

          v43 = v23;
          v24 = [v23 entity];
          v25 = [v24 attributesByName];

          sub_222A82948();
          v26 = sub_222B022B8();

          v41 = v26 + 64;
          v42 = v26;
          v27 = 1 << *(v26 + 32);
          v28 = -1;
          if (v27 < 64)
          {
            v28 = ~(-1 << v27);
          }

          v29 = v28 & *(v26 + 64);
          v30 = (v27 + 63) >> 6;

          v31 = 0;
          while (v29)
          {
            v32 = v31;
LABEL_43:
            v33 = __clz(__rbit64(v29));
            v29 &= v29 - 1;
            v34 = (*(v42 + 48) + ((v32 << 10) | (16 * v33)));
            v35 = *v34;
            v36 = v34[1];

            v37 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
            v38 = [a1 valueForKey_];

            v39 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

            [v43 setValue:v38 forKey:v39];
            swift_unknownObjectRelease();
          }

          while (1)
          {
            v32 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v32 >= v30)
            {

              [v49 associateSourceInstance:a1 withDestinationInstance:v43 forEntityMapping:v40];

              return;
            }

            v29 = *(v41 + 8 * v32);
            ++v31;
            if (v29)
            {
              v31 = v32;
              goto LABEL_43;
            }
          }

          __break(1u);
        }

        return;
      }
    }

    if ((sub_222AF4AEC(a1) & 1) == 0)
    {
      return;
    }

    goto LABEL_34;
  }

  v15 = sub_222AF4F80(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute), *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute + 8), a1);
  if (!v16)
  {
    goto LABEL_34;
  }

  if (v15 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesSiriKitTaskName) && v16 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesSiriKitTaskName + 8))
  {
LABEL_26:

    return;
  }

  v17 = sub_222B02F78();

  if ((v17 & 1) == 0)
  {
    goto LABEL_34;
  }
}

uint64_t sub_222AF4AEC(void *a1)
{
  v2 = sub_222AF550C(*&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomDomainAttribute], *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomDomainAttribute + 8], a1);
  if (!v2 || (v3 = sub_222AF44CC(v2), v5 = v4, , !v5))
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v9 = sub_222B02148();
    __swift_project_value_buffer(v9, qword_280CBC458);
    v10 = v1;
    v11 = sub_222B02128();
    v12 = sub_222B028D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_222A230FC(*&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute], *&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute + 8], &v16);
      _os_log_impl(&dword_222A1C000, v11, v12, "Encoded ground truth missing expected attribute %s. Skipping its migration.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DC7E30](v14, -1, -1);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }

    goto LABEL_14;
  }

  if (v3 == *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesDomainEnumValue] && v5 == *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesDomainEnumValue + 8])
  {

LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v7 = sub_222B02F78();

  v8 = v7 ^ 1;
  return v8 & 1;
}

id sub_222AF4CC0()
{
  v1 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesGroundTruthName];
  *v1 = 0xD000000000000013;
  *(v1 + 1) = 0x8000000222B16B60;
  v2 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptGroundTruthName];
  *v2 = 0xD000000000000018;
  *(v2 + 1) = 0x8000000222B0FF70;
  v3 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute];
  *v3 = 0x5474706D6F72705FLL;
  *(v3 + 1) = 0xEB000000006B7361;
  v4 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesSiriKitTaskName];
  *v4 = 0xD000000000000029;
  *(v4 + 1) = 0x8000000222B16B80;
  v5 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomeGroundTruthName];
  *v5 = 0xD000000000000023;
  *(v5 + 1) = 0x8000000222B16BB0;
  v6 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomDomainAttribute];
  *v6 = 0x6E69616D6F64;
  *(v6 + 1) = 0xE600000000000000;
  v7 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesDomainEnumValue];
  *v7 = 0x736567617373656DLL;
  *(v7 + 1) = 0xE800000000000000;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for GroundTruthModelV3toV4CoreDataMigration();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_222AF4E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundTruthModelV3toV4CoreDataMigration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222AF4F2C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222AF4F80(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = [a3 valueForKey_];

  if (v7)
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    sub_222A34F20(&v40, &unk_27D01CB00, &qword_222B08ED0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v8 = objc_opt_self();
  v9 = sub_222B01788();
  *&v40 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v40];

  if (!v10)
  {
    v19 = v40;
    v20 = sub_222B01628();

    swift_willThrow();
LABEL_17:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v21 = sub_222B02148();
    __swift_project_value_buffer(v21, qword_280CBC458);
    v22 = v20;
    v23 = sub_222B02128();
    v24 = sub_222B028E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v20;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_222A1C000, v23, v24, "Failed to decode ground truth to JSON during migration. Skipping copy. Error=%@", v25, 0xCu);
      sub_222A34F20(v26, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v26, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);
      sub_222A26530(v36, v37);
    }

    else
    {
      sub_222A26530(v36, v37);
    }

    goto LABEL_14;
  }

  v11 = v40;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E528, &unk_222B0F218);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v38 + 16) || (v12 = sub_222A26EC8(0x64616F6C796170, 0xE700000000000000), (v13 & 1) == 0))
  {
    sub_222A26530(v36, v37);

    goto LABEL_14;
  }

  sub_222A25344(*(v38 + 56) + 32 * v12, &v40);

  if (!swift_dynamicCast() || (v14 = sub_222B01778(), v16 = v15, , v16 >> 60 == 15))
  {
LABEL_12:
    sub_222A26530(v36, v37);
    goto LABEL_14;
  }

  v35 = v14;
  v29 = sub_222B01788();
  *&v40 = 0;
  v30 = [v8 JSONObjectWithData:v29 options:0 error:&v40];

  if (!v30)
  {
    v34 = v40;
    v20 = sub_222B01628();

    swift_willThrow();
    sub_222A398A4(v35, v16);
    goto LABEL_17;
  }

  v31 = v40;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_222A26530(v36, v37);
    sub_222A398A4(v35, v16);
    goto LABEL_14;
  }

  if (*(v38 + 16) && (v32 = sub_222A26EC8(a1, a2), (v33 & 1) != 0))
  {
    sub_222A25344(*(v38 + 56) + 32 * v32, &v40);
    sub_222A26530(v36, v37);
    sub_222A398A4(v35, v16);
  }

  else
  {
    sub_222A26530(v36, v37);
    sub_222A398A4(v35, v16);

    v40 = 0u;
    v41 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01CB00, &qword_222B08ED0);
  if (swift_dynamicCast())
  {
    result = v38;
  }

  else
  {
    result = 0;
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222AF550C(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = [a3 valueForKey_];

  if (v7)
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    sub_222A34F20(&v40, &unk_27D01CB00, &qword_222B08ED0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v8 = objc_opt_self();
  v9 = sub_222B01788();
  *&v40 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v40];

  if (!v10)
  {
    v18 = v40;
    v19 = sub_222B01628();

    swift_willThrow();
LABEL_17:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);
    v21 = v19;
    v22 = sub_222B02128();
    v23 = sub_222B028E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_222A1C000, v22, v23, "Failed to decode ground truth to JSON during migration. Skipping copy. Error=%@", v24, 0xCu);
      sub_222A34F20(v25, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v25, -1, -1);
      MEMORY[0x223DC7E30](v24, -1, -1);
      sub_222A26530(v36, v37);
    }

    else
    {
      sub_222A26530(v36, v37);
    }

    goto LABEL_14;
  }

  v11 = v40;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E528, &unk_222B0F218);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v38 + 16) || (v12 = sub_222A26EC8(0x64616F6C796170, 0xE700000000000000), (v13 & 1) == 0))
  {
    sub_222A26530(v36, v37);

    goto LABEL_14;
  }

  sub_222A25344(*(v38 + 56) + 32 * v12, &v40);

  if (!swift_dynamicCast() || (v35 = sub_222B01778(), v15 = v14, , v15 >> 60 == 15))
  {
LABEL_12:
    sub_222A26530(v36, v37);
    goto LABEL_14;
  }

  v34 = v15;
  v28 = sub_222B01788();
  *&v40 = 0;
  v29 = [v8 JSONObjectWithData:v28 options:0 error:&v40];

  if (!v29)
  {
    v33 = v40;
    v19 = sub_222B01628();

    swift_willThrow();
    sub_222A398A4(v35, v34);
    goto LABEL_17;
  }

  v30 = v40;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_222A26530(v36, v37);
    sub_222A398A4(v35, v34);
    goto LABEL_14;
  }

  if (*(v38 + 16) && (v31 = sub_222A26EC8(a1, a2), (v32 & 1) != 0))
  {
    sub_222A25344(*(v38 + 56) + 32 * v31, &v40);
    sub_222A26530(v36, v37);
    sub_222A398A4(v35, v34);
  }

  else
  {
    sub_222A26530(v36, v37);
    sub_222A398A4(v35, v34);

    v40 = 0u;
    v41 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01CB00, &qword_222B08ED0);
  if (swift_dynamicCast())
  {
    result = v38;
  }

  else
  {
    result = 0;
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OldestRecordEvictionPolicy.evictionCandidates(count:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a3 + 16);
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    [v8 setFetchLimit_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_222B06DF0;
    sub_222AF5C04();

    *(v10 + 32) = sub_222B02908();
    v11 = sub_222B025D8();

    [v9 setSortDescriptors_];

    v12 = sub_222B02A68();
    return v12;
  }

  else
  {

    return sub_222B02658();
  }
}

unint64_t sub_222AF5C04()
{
  result = qword_280CB8448;
  if (!qword_280CB8448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8448);
  }

  return result;
}

uint64_t sub_222AF5C50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222AF5CEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84FA0];
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    v14 = *(a1 + 16);
    if (*(v14 + 16))
    {
      v15 = *(*(v5 + 48) + ((v10 << 8) | (4 * __clz(__rbit64(v12)))));
      v16 = sub_222A2E3A4(v15);
      if (v17)
      {
        v51 = *(*(v14 + 56) + 8 * v16);
        if (v4[2] && (v18 = sub_222A2E3A4(v15), (v19 & 1) != 0))
        {
          v52 = *(v4[7] + 8 * v18);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_222A96EDC(v51);
          v20 = v52;
          v52 = v11;
          v50 = sub_222AF6144(v20, &v52);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v4;
          v22 = sub_222A2E3A4(v15);
          v24 = v4[2];
          v25 = (v23 & 1) == 0;
          v26 = __OFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
            goto LABEL_39;
          }

          if (v4[3] >= v27)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v47 = v22;
              v48 = v23;
              sub_222A2BB60();
              v23 = v48;
              v22 = v47;
            }
          }

          else
          {
            v28 = v23;
            sub_222A27EC0(v27, isUniquelyReferenced_nonNull_native);
            v22 = sub_222A2E3A4(v15);
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_41;
            }

            v23 = v28;
          }

          v11 = MEMORY[0x277D84FA0];
          v4 = v52;
          if (v23)
          {
            v37 = v52[7];
            v42 = *(v37 + 8 * v22);
            v39 = v50;
LABEL_32:
            *(v37 + 8 * v22) = v39;
          }

          else
          {
            v52[(v22 >> 6) + 8] |= 1 << v22;
            *(v4[6] + 4 * v22) = v15;
            *(v4[7] + 8 * v22) = v50;
            v43 = v4[2];
            v26 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v26)
            {
              goto LABEL_40;
            }

            v4[2] = v44;
          }
        }

        else
        {

          v30 = swift_isUniquelyReferenced_nonNull_native();
          v52 = v4;
          v22 = sub_222A2E3A4(v15);
          v32 = v4[2];
          v33 = (v31 & 1) == 0;
          v26 = __OFADD__(v32, v33);
          v34 = v32 + v33;
          if (v26)
          {
            goto LABEL_37;
          }

          if (v4[3] >= v34)
          {
            if ((v30 & 1) == 0)
            {
              v45 = v22;
              v46 = v31;
              sub_222A2BB60();
              v31 = v46;
              v22 = v45;
            }
          }

          else
          {
            v35 = v31;
            sub_222A27EC0(v34, v30);
            v22 = sub_222A2E3A4(v15);
            if ((v35 & 1) != (v36 & 1))
            {
              goto LABEL_41;
            }

            v31 = v35;
          }

          v11 = MEMORY[0x277D84FA0];
          v4 = v52;
          if (v31)
          {
            v37 = v52[7];
            v38 = *(v37 + 8 * v22);
            v39 = v51;
            goto LABEL_32;
          }

          v52[(v22 >> 6) + 8] |= 1 << v22;
          *(v4[6] + 4 * v22) = v15;
          *(v4[7] + 8 * v22) = v51;
          v40 = v4[2];
          v26 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v26)
          {
            goto LABEL_38;
          }

          v4[2] = v41;
        }
      }
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CCC0, &qword_222B04E18);
      result = swift_allocObject();
      *(result + 16) = v4;
      return result;
    }

    v12 = *(v5 + 64 + 8 * v13);
    ++v10;
    if (v12)
    {
      v10 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for SISchemaComponentName(0);
  result = sub_222B030B8();
  __break(1u);
  return result;
}

uint64_t sub_222AF610C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_222AF6144(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v46 = &v37 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v45 = &v37 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = *(v5 + 16);
  v20 = v5 + 16;
  v44 = v21;
  v22 = *(v20 + 56);
  v38 = (*(v20 + 64) + 32) & ~*(v20 + 64);
  v23 = (a1 + v38);
  v41 = (v20 + 16);
  v42 = (v20 - 8);
  v48 = MEMORY[0x277D84F90];
  v39 = v20;
  v40 = a2;
  v43 = v22;
  do
  {
    v25 = v44;
    v44(v18, v23, v4);
    v26 = v46;
    v27 = v20;
    v25(v46, v18, v4);
    v28 = v18;
    v29 = v45;
    LOBYTE(v25) = sub_222AE4114(v45, v26);
    v30 = *v42;
    (*v42)(v29, v4);
    if (v25)
    {
      v31 = *v41;
      (*v41)(v47, v28, v4);
      v32 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v32;
      v18 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222A23D50(0, *(v32 + 16) + 1, 1);
        v32 = v49;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_222A23D50(v34 > 1, v35 + 1, 1);
        v32 = v49;
      }

      *(v32 + 16) = v35 + 1;
      v48 = v32;
      v24 = v43;
      v31((v32 + v38 + v35 * v43), v47, v4);
      v20 = v39;
    }

    else
    {
      v30(v28, v4);
      v18 = v28;
      v24 = v43;
      v20 = v27;
    }

    v23 += v24;
    --v19;
  }

  while (v19);
  return v48;
}

uint64_t CurrentLocales.init(deviceLocale:siriPreferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E550, &qword_222B0F340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v60 - v8;
  v10 = sub_222B01968();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E558, &qword_222B0F348);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v60 - v19;
  sub_222B01978();
  sub_222B01958();
  (*(v11 + 8))(v15, v10);
  v21 = sub_222B01908();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_222A34F20(v20, &qword_27D01E558, &qword_222B0F348);
    v66 = 0xEC000000746E6574;
    v67 = 0x736978652D6E6F6ELL;
  }

  else
  {
    v23 = sub_222B018F8();
    v66 = v24;
    v67 = v23;
    (*(v22 + 8))(v20, v21);
  }

  v25 = 0x736978652D6E6F6ELL;
  sub_222B01948();
  v26 = sub_222B01938();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    sub_222A34F20(v9, &qword_27D01E550, &qword_222B0F340);
    v64 = 0xEC000000746E6574;
    v65 = 0x736978652D6E6F6ELL;
  }

  else
  {
    v28 = sub_222B018F8();
    v64 = v29;
    v65 = v28;
    (*(v27 + 8))(v9, v26);
  }

  v30 = [v69 languageCode];
  if (v30)
  {
    v31 = v30;
    v32 = sub_222B02388();
    v34 = v33;
  }

  else
  {
    v32 = 0x736978652D6E6F6ELL;
    v34 = 0xEC000000746E6574;
  }

  v72 = v32;
  v73 = v34;
  v70 = 45;
  v71 = 0xE100000000000000;
  sub_222A397FC();
  v35 = sub_222B02B68();
  if (v35[2])
  {
    v36 = v35[4];
    v62 = v35[5];
    v63 = v36;
  }

  else
  {
    v62 = 0xEC000000746E6574;
    v63 = 0x736978652D6E6F6ELL;
  }

  v72 = v32;
  v73 = v34;
  v70 = 45;
  v71 = 0xE100000000000000;
  v37 = sub_222B02B68();

  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = (v37 + 16 + 16 * v38);
    v40 = *v39;
    v60 = v39[1];
    v61 = v40;
  }

  else
  {
    v60 = 0xEC000000746E6574;
    v61 = 0x736978652D6E6F6ELL;
  }

  v41 = [v69 outputVoice];
  v68 = a1;
  if (v41 && (v42 = v41, v43 = [v41 languageCode], v42, v43))
  {
    v25 = sub_222B02388();
    v45 = v44;
  }

  else
  {
    v45 = 0xEC000000746E6574;
  }

  v72 = v25;
  v73 = v45;
  v70 = 45;
  v71 = 0xE100000000000000;
  v46 = sub_222B02B68();
  if (v46[2])
  {
    v47 = v46[4];
    v48 = v46[5];
  }

  else
  {
    v47 = 0x736978652D6E6F6ELL;
    v48 = 0xEC000000746E6574;
  }

  v72 = v25;
  v73 = v45;
  v70 = 45;
  v71 = 0xE100000000000000;
  v49 = sub_222B02B68();

  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = (v49 + 16 + 16 * v50);
    v53 = *v51;
    v52 = v51[1];
  }

  else
  {
    v53 = 0x736978652D6E6F6ELL;
    v52 = 0xEC000000746E6574;
  }

  v54 = sub_222B01988();
  result = (*(*(v54 - 8) + 8))(v68, v54);
  v56 = v66;
  *a3 = v67;
  *(a3 + 8) = v56;
  v57 = v64;
  *(a3 + 16) = v65;
  *(a3 + 24) = v57;
  v58 = v62;
  *(a3 + 32) = v63;
  *(a3 + 40) = v58;
  v59 = v60;
  *(a3 + 48) = v61;
  *(a3 + 56) = v59;
  *(a3 + 64) = v47;
  *(a3 + 72) = v48;
  *(a3 + 80) = v53;
  *(a3 + 88) = v52;
  strcpy((a3 + 96), "non-existent");
  *(a3 + 109) = 0;
  *(a3 + 110) = -5120;
  return result;
}

uint64_t sub_222AF69D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_222AF6A7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_222B024B8();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_222B024B8();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

SiriPrivateLearningAnalytics::Locale __swiftcall Locale.init(language:region:)(Swift::String language, Swift::String region)
{
  *v2 = language;
  v2[1] = region;
  result.region = region;
  result.language = language;
  return result;
}

uint64_t LocalesController.currentLocales.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14 = v3;
  v15 = v1[7];
  v4 = v15;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_222AF894C(v10, &v9);
}

uint64_t LocalesController.__allocating_init(currentLocales:supportedLocalesStore:)(_OWORD *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v5;
  *(v4 + 112) = a1[6];
  v6 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  v7 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v7;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  *(v4 + 128) = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t LocalesController.init(currentLocales:supportedLocalesStore:)(_OWORD *a1, uint64_t *a2)
{
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  *(v2 + 112) = a1[6];
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  v6 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v6;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  *(v2 + 128) = (*(v8 + 16))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v2;
}

void sub_222AF6D00()
{
  v1 = v0[16];
  v11 = v1;
  v2 = (v1 + 56);
  v12 = -*(v1 + 16);
  v3 = -1;
  while (v12 + v3 != -1)
  {
    if (++v3 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v2 - 1);
    v5 = *v2;
    v13 = *(v2 - 3);
    v15 = *(v2 - 2);
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v6, v5);
    v8 = v13;
    v7 = v15;
    v9 = v0[4];
    v10 = v0[5];
    v14 = v0[2];
    v16 = v0[3];

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v9, v10);
    if (v8 == v14 && v7 == v16)
    {

      return;
    }

    v2 += 4;
    v4 = sub_222B02F78();

    if (v4)
    {
      return;
    }
  }
}

void sub_222AF6E88()
{
  v1 = v0[16];
  v11 = v1;
  v2 = (v1 + 56);
  v12 = -*(v1 + 16);
  v3 = -1;
  while (v12 + v3 != -1)
  {
    if (++v3 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v2 - 1);
    v5 = *v2;
    v13 = *(v2 - 3);
    v15 = *(v2 - 2);
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v6, v5);
    v8 = v13;
    v7 = v15;
    v9 = v0[8];
    v10 = v0[9];
    v14 = v0[6];
    v16 = v0[7];

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v9, v10);
    if (v8 == v14 && v7 == v16)
    {

      return;
    }

    v2 += 4;
    v4 = sub_222B02F78();

    if (v4)
    {
      return;
    }
  }
}

void sub_222AF7010()
{
  v1 = v0[16];
  v11 = v1;
  v2 = (v1 + 56);
  v12 = -*(v1 + 16);
  v3 = -1;
  while (v12 + v3 != -1)
  {
    if (++v3 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v2 - 1);
    v5 = *v2;
    v13 = *(v2 - 3);
    v15 = *(v2 - 2);
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v6, v5);
    v8 = v13;
    v7 = v15;
    v9 = v0[12];
    v10 = v0[13];
    v14 = v0[10];
    v16 = v0[11];

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v9, v10);
    if (v8 == v14 && v7 == v16)
    {

      return;
    }

    v2 += 4;
    v4 = sub_222B02F78();

    if (v4)
    {
      return;
    }
  }
}

void *LocalesController.deinit()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[11];
  v6 = v0[13];
  v7 = v0[15];

  v8 = v0[16];

  return v0;
}

uint64_t LocalesController.__deallocating_deinit()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[11];
  v6 = v0[13];
  v7 = v0[15];

  v8 = v0[16];

  return swift_deallocClassInstance();
}

uint64_t CurrentLocales.device.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t CurrentLocales.siri.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t CurrentLocales.siriVoice.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v1[8];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t CurrentLocales.emptyIdentifier.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

void __swiftcall CurrentLocales.init(device:siri:siriVoice:)(SiriPrivateLearningAnalytics::CurrentLocales *__return_ptr retstr, SiriPrivateLearningAnalytics::Locale device, SiriPrivateLearningAnalytics::Locale siri, SiriPrivateLearningAnalytics::Locale siriVoice)
{
  v4 = *device.language._countAndFlagsBits;
  v5 = *(device.language._countAndFlagsBits + 16);
  v6 = *(device.language._countAndFlagsBits + 24);
  v7 = *device.language._object;
  v8 = *(device.language._object + 2);
  v9 = *(device.language._object + 3);
  v10 = *device.region._countAndFlagsBits;
  v11 = *(device.region._countAndFlagsBits + 16);
  v12 = *(device.region._countAndFlagsBits + 24);
  strcpy(&retstr->emptyIdentifier, "non-existent");
  BYTE5(retstr->emptyIdentifier._object) = 0;
  HIWORD(retstr->emptyIdentifier._object) = -5120;
  retstr->device.language = v4;
  retstr->device.region._countAndFlagsBits = v5;
  retstr->device.region._object = v6;
  retstr->siri.language = v7;
  retstr->siri.region._countAndFlagsBits = v8;
  retstr->siri.region._object = v9;
  retstr->siriVoice.language = v10;
  retstr->siriVoice.region._countAndFlagsBits = v11;
  retstr->siriVoice.region._object = v12;
}

uint64_t CurrentLocales.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[10];
  v25 = v0[11];
  v17 = MEMORY[0x277D84F90];

  sub_222A23AE4(0, 3, 0);
  v5 = v17;
  swift_bridgeObjectRetain_n();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v4, v3);

  v7 = *(v17 + 16);
  v6 = *(v17 + 24);
  if (v7 >= v6 >> 1)
  {
    sub_222A23AE4((v6 > 1), v7 + 1, 1);
    v5 = v17;
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 16 * v7;
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  swift_bridgeObjectRetain_n();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v20, v21);

  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_222A23AE4((v9 > 1), v10 + 1, 1);
  }

  *(v5 + 16) = v10 + 1;
  v11 = v5 + 16 * v10;
  *(v11 + 32) = v18;
  *(v11 + 40) = v19;
  swift_bridgeObjectRetain_n();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v24, v25);

  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_222A23AE4((v12 > 1), v13 + 1, 1);
  }

  *(v5 + 16) = v13 + 1;
  v14 = v5 + 16 * v13;
  *(v14 + 32) = v22;
  *(v14 + 40) = v23;
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  sub_222A69918();
  v15 = sub_222B02328();

  return v15;
}

SiriPrivateLearningAnalytics::SupportedLocalesStorePath __swiftcall SupportedLocalesStorePath.init(bundle:fileName:)(NSBundle bundle, Swift::String fileName)
{
  *v2 = bundle;
  *(v2 + 8) = fileName;
  result.fileName = fileName;
  result.bundle = bundle;
  return result;
}

__n128 SupportedLocalesPListStore.__allocating_init(storePath:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = a1[1].n128_u64[0];
  *(v2 + 16) = *a1;
  *(v2 + 40) = 0xD000000000000010;
  *(v2 + 48) = 0x8000000222B16BE0;
  *(v2 + 32) = v4;
  return result;
}

uint64_t SupportedLocalesPListStore.init(storePath:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 40) = 0xD000000000000010;
  *(v1 + 48) = 0x8000000222B16BE0;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t sub_222AF7798()
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = [v3 pathForResource:v5 ofType:v6];

  if (!v7 || (v8 = [objc_opt_self() defaultManager], v9 = objc_msgSend(v8, sel_contentsAtPath_, v7), v8, v7, !v9))
  {
LABEL_21:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v33 = sub_222B02148();
    __swift_project_value_buffer(v33, qword_280CBC458);
    v21 = sub_222B02128();
    v22 = sub_222B028E8();
    v20 = 0x27D01C000uLL;
    v1 = &qword_27D01E530;
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_26;
    }

    v23 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47[0] = v16;
    *v23 = 136315138;
    if (qword_27D01C568 == -1)
    {
LABEL_25:
      v34 = v1[1];
      v35 = v1[2];
      v36 = v1[3];
      v48 = *v1;
      v49 = v34;

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v35, v36);
      v37 = sub_222A230FC(v48, v49, v47);

      *(v23 + 4) = v37;
      _os_log_impl(&dword_222A1C000, v21, v22, "Couldn't get supported locales, falling back to %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DC7E30](v16, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
LABEL_26:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD78, &qword_222B0BCC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_222B05250;
      if (*(v20 + 1384) != -1)
      {
        swift_once();
      }

      v38 = v1[1];
      v39 = v1[2];
      v40 = v1[3];
      *(v24 + 32) = *v1;
      *(v24 + 40) = v38;
      *(v24 + 48) = v39;
      *(v24 + 56) = v40;

      goto LABEL_29;
    }

LABEL_33:
    swift_once();
    goto LABEL_25;
  }

  v10 = sub_222B01798();
  v12 = v11;

  v13 = objc_opt_self();
  v14 = sub_222B01788();
  v48 = 0;
  v15 = [v13 propertyListWithData:v14 options:0 format:0 error:&v48];

  v16 = v48;
  if (!v15)
  {
    v31 = v48;
    v32 = sub_222B01628();

    swift_willThrow();
    sub_222A26530(v10, v12);

    goto LABEL_21;
  }

  v17 = v48;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E560, &qword_222B0F350);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_222A26530(v10, v12);
    goto LABEL_21;
  }

  if (!*(v47[0] + 16) || (v18 = sub_222A26EC8(v0[5], v0[6]), (v19 & 1) == 0))
  {
    sub_222A26530(v10, v12);

    goto LABEL_21;
  }

  v43 = v10;
  v44 = v12;
  v20 = *(*(v47[0] + 56) + 8 * v18);

  v46 = *(v20 + 16);
  if (v46)
  {
    v21 = 0;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = v20 + 40;
    v24 = MEMORY[0x277D84F90];
    v45 = v20;
    while (v21 < *(v20 + 16))
    {
      v25 = *v23;
      v47[0] = *(v23 - 8);
      v47[1] = v25;
      sub_222AF7CFC(v47, &v48);
      v1 = v48;
      v16 = v49;
      v27 = v50;
      v26 = v51;
      if (v49)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_222AA9D70(0, *(v24 + 16) + 1, 1, v24);
        }

        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          v24 = sub_222AA9D70((v28 > 1), v29 + 1, 1, v24);
        }

        *(v24 + 16) = v29 + 1;
        v30 = (v24 + 32 * v29);
        v30[4] = v1;
        v30[5] = v16;
        v30[6] = v27;
        v30[7] = v26;
        v20 = v45;
      }

      else
      {
        sub_222AF8984(v48, 0);
      }

      v21 = (v21 + 1);
      v23 += 16;
      if (v46 == v21)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_31:
  sub_222A26530(v43, v44);

LABEL_29:
  v41 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_222AF7CFC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v17[0] = *a1;
  sub_222A397FC();
  v5 = sub_222B02B68();
  if (v5[2])
  {
    v7 = v5[4];
    v6 = v5[5];

    v17[0] = v3;
    v17[1] = v4;
    v8 = (sub_222B02B68() + 16);
    if (*v8)
    {
      v9 = &v8[2 * *v8];
      v11 = *v9;
      v10 = v9[1];

      *a2 = v7;
      a2[1] = v6;
      a2[2] = v11;
      a2[3] = v10;
      return;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v12 = sub_222B02148();
  __swift_project_value_buffer(v12, qword_280CBC458);

  v13 = sub_222B02128();
  v14 = sub_222B028E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_222A230FC(v3, v4, v17);
    _os_log_impl(&dword_222A1C000, v13, v14, "Supported locales has unexpect format %s, expected language_region format", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DC7E30](v16, -1, -1);
    MEMORY[0x223DC7E30](v15, -1, -1);
  }

  *a2 = 0u;
  *(a2 + 1) = 0u;
}

void *SupportedLocalesPListStore.deinit()
{
  v1 = v0[2];
  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t SupportedLocalesPListStore.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

__n128 sub_222AF7FB0@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SupportedLocalesPListStore();
  v4 = swift_allocObject();
  result = *a1;
  v6 = a1[1].n128_u64[0];
  *(v4 + 16) = *a1;
  *(v4 + 40) = 0xD000000000000010;
  *(v4 + 48) = 0x8000000222B16BE0;
  *(v4 + 32) = v6;
  *a2 = v4;
  return result;
}

uint64_t static LocaleError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78();
  }
}

void sub_222AF8068()
{
  qword_27D01E530 = 28261;
  *algn_27D01E538 = 0xE200000000000000;
  qword_27D01E540 = 21333;
  unk_27D01E548 = 0xE200000000000000;
}

uint64_t static Locale.enUSDefaultLocale.getter@<X0>(void *a1@<X8>)
{
  if (qword_27D01C568 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D01E538;
  v2 = qword_27D01E540;
  v3 = unk_27D01E548;
  *a1 = qword_27D01E530;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

SiriPrivateLearningAnalytics::Locale __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Locale.init(from:separator:)(Swift::String from, Swift::String separator)
{
  object = separator._object;
  countAndFlagsBits = separator._countAndFlagsBits;
  v5 = from._object;
  v6 = from._countAndFlagsBits;
  v7 = v2;
  v31 = separator;
  v30[2] = &v31;
  if ((sub_222AF6A7C(sub_222AAA99C, v30, from._countAndFlagsBits, from._object) & 1) == 0)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);

    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31._countAndFlagsBits = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_222A230FC(v6, v5, &v31._countAndFlagsBits);
      *(v23 + 12) = 2080;
      v25 = sub_222A230FC(countAndFlagsBits, object, &v31._countAndFlagsBits);

      *(v23 + 14) = v25;
      v26 = "Locale %s does not contain %s separator";
LABEL_13:
      _os_log_impl(&dword_222A1C000, v21, v22, v26, v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v24, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
LABEL_15:

      sub_222AF89C8();
      swift_allocError();
      *v29 = v6;
      v29[1] = v5;
      v16 = swift_willThrow();
      goto LABEL_19;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31._countAndFlagsBits = v6;
  v31._object = v5;
  v30[4] = countAndFlagsBits;
  v30[5] = object;
  sub_222A397FC();
  v8 = sub_222B02B68();
  v9 = v8[2];
  if (!v9)
  {

    if (qword_280CBA628 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v10 = v8[2];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v9 > v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v27 = sub_222B02148();
    __swift_project_value_buffer(v27, qword_280CBC458);

    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31._countAndFlagsBits = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_222A230FC(v6, v5, &v31._countAndFlagsBits);
      *(v23 + 12) = 2080;
      v28 = sub_222A230FC(countAndFlagsBits, object, &v31._countAndFlagsBits);

      *(v23 + 14) = v28;
      v26 = "Locale %s has unexpected format, expected <language>%s<region>";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = v8[5];
  v12 = v8[4];
  v13 = &v8[2 * v9 + 4];
  v15 = *(v13 - 16);
  v14 = *(v13 - 8);

  *v7 = v12;
  v7[1] = v11;
  v7[2] = v15;
  v7[3] = v14;
LABEL_19:
  result.region._object = v19;
  result.region._countAndFlagsBits = v18;
  result.language._object = v17;
  result.language._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_222AF84D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x223DC66E0](a1, 0xE100000000000000);
  MEMORY[0x223DC66E0](v3, v4);
  return v6;
}

uint64_t Locale.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  sub_222B02448();
}

uint64_t Locale.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v3, v4);
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AF8650()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  return v4;
}

uint64_t sub_222AF86B0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v3, v4);
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AF8744()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  sub_222B02448();
}

uint64_t sub_222AF87C8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v3, v4);
  sub_222B02448();

  return sub_222B03168();
}

uint64_t _s28SiriPrivateLearningAnalytics6LocaleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v10 = *a1;
  v11 = a1[1];

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v2, v3);

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v6, v7);
  if (v10 == v5 && v11 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

uint64_t sub_222AF8984(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_222AF89C8()
{
  result = qword_27D01E568;
  if (!qword_27D01E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E568);
  }

  return result;
}

unint64_t sub_222AF8A20()
{
  result = qword_280CB4C50;
  if (!qword_280CB4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4C50);
  }

  return result;
}

uint64_t sub_222AF8C34(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18 - v10;
  v12 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_222B02C88();

  v18 = a1;
  v19 = a2;
  MEMORY[0x223DC66E0](0xD000000000000013, 0x8000000222B16D70);
  v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v14 = [v12 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  v15 = [v14 pruningPolicy];
  if (v15)
  {
    v16 = v15;
    [v15 setFilterByAgeOnRead_];
  }

  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222B01A28();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics13BiomeQuerying_intentStream, v11, v6);
  return v3;
}

void sub_222AF8E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = MEMORY[0x223DC7570]();
  sub_222AF8EE0(a1, a2, a3, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

unint64_t sub_222AF8EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X5>, char **a5@<X8>)
{
  result = sub_222AF9FF0(a1, a2, a3);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v9 = result;
    if (result >> 62)
    {
      goto LABEL_17;
    }

    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v21 = a5;
        v28 = MEMORY[0x277D84F90];
        result = sub_222A23E34(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          break;
        }

        v11 = 0;
        v12 = v28;
        v24 = v9 & 0xC000000000000001;
        v22 = v9 & 0xFFFFFFFFFFFFFF8;
        v23 = v9;
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v24)
          {
            v14 = MEMORY[0x223DC6F00](v11, v9);
          }

          else
          {
            if (v11 >= *(v22 + 16))
            {
              goto LABEL_16;
            }

            v14 = *(v9 + 8 * v11 + 32);
          }

          v15 = v14;
          sub_222AF9120(v14, &v26);
          a5 = 0;
          v16 = v26;
          v25 = v27;

          v28 = v12;
          v18 = *(v12 + 16);
          v17 = *(v12 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_222A23E34((v17 > 1), v18 + 1, 1);
            v12 = v28;
          }

          *(v12 + 16) = v18 + 1;
          v19 = v12 + 32 * v18;
          *(v19 + 32) = v16;
          *(v19 + 40) = v25;
          *(v19 + 56) = 0;
          ++v11;
          v9 = v23;
          if (v13 == v10)
          {

            a5 = v21;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v10 = sub_222B02DC8();
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:

      v12 = MEMORY[0x277D84F90];
LABEL_20:
      v20 = sub_222AFAD90(v12);

      *a5 = v20;
    }
  }

  return result;
}

void sub_222AF9120(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 interaction];
  v6 = sub_222B01798();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_222A55AB8(v6, v8);
  v10 = sub_222A8B560();
  if (v2)
  {
    sub_222A26530(v6, v8);
    v11 = v2;
    sub_222B02C88();
    MEMORY[0x223DC66E0](0xD00000000000002ALL, 0x8000000222B16D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    sub_222B02D98();
    MEMORY[0x223DC66E0](0x766520726F66203BLL, 0xEC00000020746E65);
    v12 = [a1 description];
    v13 = sub_222B02388();
    v15 = v14;

    MEMORY[0x223DC66E0](v13, v15);

    sub_222AFAA84();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    swift_willThrow();

    sub_222A26530(v6, v8);
  }

  else
  {
    v17 = v10;
    sub_222A26530(v6, v8);
    sub_222A250BC(0, &qword_27D01D948, 0x277CD3D58);
    v18 = *MEMORY[0x277CCA308];
    sub_222B02388();
    v19 = v17;
    v20 = sub_222B02AB8();

    if (v20)
    {

      v21 = [a1 bundleID];
      v22 = sub_222B02388();
      v24 = v23;
      sub_222A26530(v6, v8);

      *a2 = v20;
      a2[1] = v22;
      a2[2] = v24;
    }

    else
    {
      sub_222B02C88();
      MEMORY[0x223DC66E0](0xD000000000000031, 0x8000000222B16D30);
      v25 = [a1 description];
      v26 = sub_222B02388();
      v28 = v27;

      MEMORY[0x223DC66E0](v26, v28);

      sub_222AFAA84();
      swift_allocError();
      *v29 = 0;
      v29[1] = 0xE000000000000000;
      swift_willThrow();

      sub_222A26530(v6, v8);
    }
  }
}

uint64_t sub_222AF94A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v60 = v5;
  v9 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v57 = &v52 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E588, &qword_222B0F700);
  v14 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v15);
  v62 = &v52 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E590, &qword_222B0F708);
  v17 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68, v18);
  v63 = &v52 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E598, &unk_222B0F710);
  v20 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70, v21);
  v65 = &v52 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE70, &qword_222B051B0);
  v69 = *(v23 - 8);
  v24 = *(v69 + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v66 = v27;
  v67 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v61 = &v52 - v29;
  v30 = *(a2 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v52 = a1;
    v53 = v23;
    v54 = v9;
    v55 = a3;
    v56 = v4;
    v72 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v30, 0);
    v31 = v72;
    v32 = (a2 + 32);
    do
    {
      v71 = *v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D210, &qword_222B06C50);
      v33 = sub_222B023D8();
      v35 = v34;
      v72 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_222A23AE4((v36 > 1), v37 + 1, 1);
        v31 = v72;
      }

      *(v31 + 16) = v37 + 1;
      v38 = v31 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      ++v32;
      --v30;
    }

    while (v30);
    a3 = v55;
    v23 = v53;
    v9 = v54;
  }

  v39 = sub_222B017F8();
  [v39 timeIntervalSinceReferenceDate];
  v41 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  sub_222A352E8(&qword_280CB82E0, &qword_27D01E578, &unk_222B0F6F0);
  v42 = v57;
  sub_222B01A58();
  v43 = v59;
  v44 = sub_222B019F8();
  (*(v58 + 8))(v42, v43);
  v72 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E318, &unk_222B0E048);
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222A352E8(&qword_27D01E5A0, &qword_27D01E318, &unk_222B0E048);
  sub_222B02F28();
  *(swift_allocObject() + 16) = trunc(v41);
  sub_222A352E8(&qword_27D01E5A8, &qword_27D01E588, &qword_222B0F700);
  sub_222B02E08();
  *(swift_allocObject() + 16) = v31;
  sub_222A352E8(&qword_27D01E5B0, &qword_27D01E590, &qword_222B0F708);
  sub_222B02E08();
  *(swift_allocObject() + 16) = v9;
  sub_222A352E8(&qword_27D01E5B8, &qword_27D01E598, &unk_222B0F710);
  v45 = v61;
  sub_222B02F28();
  v47 = v69 + 32;
  v46 = *(v69 + 32);
  v48 = v67;
  v46(v67, v45, v23);
  v49 = (*(v47 + 48) + 16) & ~*(v47 + 48);
  v50 = swift_allocObject();
  result = (v46)(v50 + v49, v48, v23);
  *a3 = sub_222AFACC8;
  a3[1] = v50;
  return result;
}

uint64_t sub_222AF9B78(void *a1, id *a2)
{
  *a1 = [*a2 eventBody];
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_222AF9BF0(void *a1, double a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_222AF9C18, 0, 0);
}

uint64_t sub_222AF9C18()
{
  v1 = *(v0 + 16);
  [*(v0 + 24) absoluteTimestamp];
  v3 = *(v0 + 8);

  return v3(v2 >= v1);
}

uint64_t sub_222AF9C8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_222AF9CB0, 0, 0);
}

uint64_t sub_222AF9CB0()
{
  v1 = [*(v0 + 40) intentClass];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    v4 = sub_222B02388();
    v6 = v5;

    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    v7 = swift_task_alloc();
    *(v7 + 16) = v0 + 16;
    v8 = sub_222AF69D0(sub_222AAAACC, v7, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v8 & 1);
}

uint64_t sub_222AF9DA8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = *a2;
  return MEMORY[0x2822009F8](sub_222AF9DD0, 0, 0);
}

uint64_t sub_222AF9DD0()
{
  v8 = v0;
  v1 = *(v0 + 32);
  sub_222AF9120(*(v0 + 40), &v6);
  v2 = *(v0 + 24);
  v3 = v7;
  *v2 = v6;
  *(v2 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_222AF9FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v43 = v42 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E570, &unk_222B0F6E0);
  v47 = *(v50 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v50, v11);
  v46 = v42 - v12;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v42[1] = a1;
    v42[2] = a3;
    v49 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v13, 0);
    v15 = v49;
    v16 = (a2 + 32);
    do
    {
      v48 = *v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D210, &qword_222B06C50);
      v17 = sub_222B023D8();
      v19 = v18;
      v49 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_222A23AE4((v20 > 1), v21 + 1, 1);
        v15 = v49;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      ++v16;
      --v13;
    }

    while (v13);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v23 = sub_222B017F8();
  [v23 timeIntervalSinceReferenceDate];
  v25 = v24;

  v26 = trunc(v25);
  v27 = sub_222B017F8();
  [v27 timeIntervalSinceReferenceDate];
  v29 = v28;

  v30 = swift_allocObject();
  *(v30 + 16) = v14;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  sub_222A352E8(&qword_280CB82E0, &qword_27D01E578, &unk_222B0F6F0);
  v32 = v43;
  sub_222B01A58();
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  *(v33 + 24) = v29;
  *(v33 + 32) = v15;
  sub_222A352E8(&qword_280CB82E8, &qword_27D01E238, &qword_222B0D8B8);
  v34 = v45;
  v35 = v46;
  sub_222B019C8();

  (*(v44 + 8))(v32, v34);
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = v29;
  sub_222A352E8(&qword_280CB82F0, &qword_27D01E570, &unk_222B0F6E0);

  v37 = v50;

  (*(v47 + 8))(v35, v37);
  swift_beginAccess();
  v38 = *(v31 + 24);
  if (v38)
  {
    v39 = *(v31 + 16);
    sub_222AFAA84();
    swift_allocError();
    *v40 = v39;
    v40[1] = v38;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v39 = *(v30 + 16);
  }

  return v39;
}

uint64_t sub_222AFA538(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = [a1 eventBody];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 intentClass];
    if (v9)
    {
      v10 = v9;
      v11 = sub_222B02388();
      v13 = v12;

      v14 = [v8 absoluteTimestamp];
      if (v16 >= a3 && v16 <= a4)
      {
        v20[0] = v11;
        v20[1] = v13;
        MEMORY[0x28223BE20](v14, v15);
        v19[2] = v20;
        v17 = sub_222AF69D0(sub_222AAA918, v19, a2);

        return v17 & 1;
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

id sub_222AFA664(void *a1, uint64_t a2)
{
  result = [a1 state];
  if (result)
  {
    [a1 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
    v5 = sub_222B023D8();
    v7 = v6;
    swift_beginAccess();
    v8 = *(a2 + 24);
    *(a2 + 16) = v5;
    *(a2 + 24) = v7;
  }

  return result;
}

BOOL sub_222AFA70C(void *a1, uint64_t a2, double a3)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = v7;
    MEMORY[0x223DC6810]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_222B02648();
    }

    sub_222B02688();
    swift_endAccess();
    [v8 absoluteTimestamp];
    v10 = v9;

    v11 = v10 > a3;
  }

  else
  {
    [a1 timestamp];
    v11 = v12 > a3 + 5.0;
  }

  return !v11;
}

SiriPrivateLearningAnalytics::AppInteraction __swiftcall AppInteraction.init(interaction:bundleID:)(INInteraction interaction, Swift::String bundleID)
{
  *v2 = interaction;
  *(v2 + 8) = bundleID;
  result.bundleID = bundleID;
  result.interaction = interaction;
  return result;
}

uint64_t sub_222AFA828()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics13BiomeQuerying_intentStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AppInteraction.bundleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for BiomeQuerying()
{
  result = qword_280CB9FA8;
  if (!qword_280CB9FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222AFA95C()
{
  sub_222AFA9EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_222AFA9EC()
{
  if (!qword_280CBA1E0)
  {
    sub_222A250BC(255, qword_280CB8460, 0x277CF19A0);
    v0 = sub_222B01A18();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBA1E0);
    }
  }
}

unint64_t sub_222AFAA84()
{
  result = qword_27D01E580;
  if (!qword_27D01E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E580);
  }

  return result;
}

uint64_t sub_222AFAAD8(void *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A4D6A0;

  return sub_222AF9BF0(a1, v4);
}

uint64_t sub_222AFAB7C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222AFB144;

  return sub_222AF9C8C(a1, v4);
}

uint64_t sub_222AFAC18(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222A34620;

  return sub_222AF9DA8(a1, a2, v6);
}

uint64_t sub_222AFACC8@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE70, &qword_222B051B0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_222A33B94(v4, a1);
}

void sub_222AFAD44(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

char *sub_222AFAD90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = (a1 + 56);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      if (*v3)
      {
        v9 = v7;
        v10 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_222AA9E7C(0, *(v2 + 2) + 1, 1, v2);
          }

          v12 = *(v2 + 2);
          v11 = *(v2 + 3);
          if (v12 >= v11 >> 1)
          {
            v2 = sub_222AA9E7C((v11 > 1), v12 + 1, 1, v2);
          }

          sub_222AFAD44(v7, v6, v8, 1);
          *(v2 + 2) = v12 + 1;
          v5 = &v2[16 * v12];
          *(v5 + 4) = v26;
          *(v5 + 5) = v27;
        }

        else
        {

          v26 = 0;
          v27 = 0xE000000000000000;
          sub_222B02D98();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_222AA9E7C(0, *(v2 + 2) + 1, 1, v2);
          }

          v21 = *(v2 + 2);
          v20 = *(v2 + 3);
          if (v21 >= v20 >> 1)
          {
            v2 = sub_222AA9E7C((v20 > 1), v21 + 1, 1, v2);
          }

          sub_222AFAD44(v7, v6, v8, 1);
          *(v2 + 2) = v21 + 1;
          v22 = &v2[16 * v21];
          *(v22 + 4) = 0;
          *(v22 + 5) = 0xE000000000000000;
        }
      }

      else
      {
        v25 = *(v3 - 2);
        v13 = v7;
        swift_bridgeObjectRetain_n();
        v14 = v13;
        v15 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_222AA9F88(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        v18 = v4;
        if (v17 >= v16 >> 1)
        {
          v18 = sub_222AA9F88((v16 > 1), v17 + 1, 1, v4);
        }

        sub_222AFAD44(v7, v25, v8, 0);
        *(v18 + 2) = v17 + 1;
        v4 = v18;
        v19 = &v18[24 * v17];
        *(v19 + 4) = v14;
        *(v19 + 5) = v25;
        *(v19 + 6) = v8;
        v2 = v15;
      }

      v3 += 32;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
  }

  if (*(v2 + 2))
  {

    sub_222AFB0D0();
    swift_allocError();
    *v23 = v2;
    swift_willThrow();
  }

  else
  {
  }

  return v4;
}

unint64_t sub_222AFB0D0()
{
  result = qword_27D01E5C0;
  if (!qword_27D01E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E5C0);
  }

  return result;
}

uint64_t UniversalSuggestionSummary.suggestionSurfacedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UniversalSuggestionSummary(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t UniversalSuggestionSummaryExtractor.init(suggestionStore:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  type metadata accessor for UniversalSELFPlusStoreIdMapper();
  v7 = swift_allocObject();
  v8 = sub_222A3A8B0(MEMORY[0x277D84F90]);
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *a2 = v7;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t UniversalSuggestionSummaryExtractor.extract(from:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5C8, &unk_222B0F888);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v49 - v6;
  v52 = type metadata accessor for UniversalSuggestionSummary(0);
  v49 = *(v52 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v52, v9);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v1;
  v54 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {
    if (i)
    {
      v12 = 0;
      v13 = a1 & 0xC000000000000001;
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      v53 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v13)
        {
          v15 = MEMORY[0x223DC6F00](v12, a1);
        }

        else
        {
          if (v12 >= *(v14 + 16))
          {
            goto LABEL_53;
          }

          v15 = *(a1 + 8 * v12 + 32);
        }

        v16 = v15;
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_52;
        }

        if ([v15 anyEventType] == 38)
        {
          sub_222B02D18();
          v18 = a1;
          v19 = *(v54 + 16);
          sub_222B02D48();
          a1 = v18;
          sub_222B02D58();
          sub_222B02D28();
          v13 = v53;
        }

        else
        {
        }

        ++v12;
        if (v17 == i)
        {
          v20 = v54;
          v54 = MEMORY[0x277D84F90];
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_57;
        }
      }
    }

    v20 = MEMORY[0x277D84F90];
    v54 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v20 & 0x4000000000000000) == 0)
      {
        v21 = *(v20 + 16);
        goto LABEL_19;
      }
    }

LABEL_57:
    v21 = sub_222B02DC8();
LABEL_19:
    v22 = 0;
    v53 = MEMORY[0x277D84F90];
    if (v21)
    {
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x223DC6F00](v22, v20);
        }

        else
        {
          if (v22 >= *(v20 + 16))
          {
            goto LABEL_51;
          }

          v35 = *(v20 + 8 * v22 + 32);
        }

        v36 = v35;
        v37 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v38 = [v35 payload];
        if (v38)
        {
          v30 = v38;
          v31 = sub_222B01798();
          v33 = v32;

          a1 = sub_222B01788();
          sub_222A26530(v31, v33);
        }

        else
        {
          a1 = 0;
        }

        v34 = [objc_allocWithZone(MEMORY[0x277D59C50]) initWithData_];

        ++v22;
        if (v34)
        {
          MEMORY[0x223DC6810]();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
          v53 = v54;
          v22 = v37;
          if (v21 == v37)
          {
            goto LABEL_20;
          }
        }

        else if (v21 == v22)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_20:

    v23 = v53;
    if (!(v53 >> 62))
    {
      v24 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        break;
      }

      goto LABEL_22;
    }

    v43 = v53;
    v24 = sub_222B02DC8();
    v23 = v43;
    if (!v24)
    {
      break;
    }

LABEL_22:
    v25 = 0;
    v26 = v23 & 0xC000000000000001;
    v27 = v23 & 0xFFFFFFFFFFFFFF8;
    v28 = (v49 + 48);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26)
      {
        v40 = MEMORY[0x223DC6F00](v25, v23);
      }

      else
      {
        if (v25 >= *(v27 + 16))
        {
          goto LABEL_55;
        }

        v40 = *(v23 + 8 * v25 + 32);
      }

      a1 = v40;
      v41 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v54 = v50;
      sub_222AFB84C(v40, v7);

      if ((*v28)(v7, 1, v52) == 1)
      {
        sub_222A34F20(v7, &qword_27D01E5C8, &unk_222B0F888);
      }

      else
      {
        sub_222AFC77C(v7, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_222AA933C(0, v29[2] + 1, 1, v29);
        }

        a1 = v29[2];
        v42 = v29[3];
        if (a1 >= v42 >> 1)
        {
          v29 = sub_222AA933C(v42 > 1, a1 + 1, 1, v29);
        }

        v29[2] = a1 + 1;
        sub_222AFC77C(v51, v29 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * a1);
      }

      v23 = v53;
      ++v25;
      if (v41 == v24)
      {
        goto LABEL_60;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_60:

  if (v29[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_222B05250;
    v45 = type metadata accessor for UniversalSuggestionSummaries(0);
    v46 = swift_allocObject();
    *(v46 + 16) = v29;
    *(v44 + 56) = v45;
    v47 = sub_222AFC900(&qword_27D01E5D0, type metadata accessor for UniversalSuggestionSummaries);
    result = v44;
    *(v44 + 64) = v47;
    *(v44 + 32) = v46;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_222AFB84C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v108 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v108, v6);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v110 = &v103 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v111 = &v103 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v103 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v103 - v21;
  v23 = sub_222B018D8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v112 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v103 - v30;
  v109 = *v2;
  v32 = [a1 eventMetadata];
  if (!v32)
  {
    goto LABEL_14;
  }

  v33 = v32;
  v34 = [v32 plusId];

  if (!v34)
  {
    goto LABEL_14;
  }

  v35 = [v34 value];
  if (!v35)
  {

LABEL_14:
    (*(v24 + 56))(v22, 1, 1, v23);
    goto LABEL_15;
  }

  v106 = v31;
  v36 = v35;
  v37 = sub_222B01798();
  v107 = a2;
  v38 = v37;
  v39 = v23;
  v41 = v40;

  sub_222A67044(v38, v41, v22);
  v42 = v38;
  a2 = v107;
  sub_222A26530(v42, v41);
  v43 = *(v24 + 48);
  if (v43(v22, 1, v39) == 1)
  {
LABEL_15:
    sub_222A34F20(v22, &unk_27D01DA50, &unk_222B04E20);
LABEL_16:
    v61 = type metadata accessor for UniversalSuggestionSummary(0);
    v62 = *(*(v61 - 8) + 56);
    v63 = a2;
    return v62(v63, 1, 1, v61);
  }

  v44 = v106;
  v105 = *(v24 + 32);
  v105(v106, v22, v39);
  v45 = [a1 plusSuggesterSuggestionMetadataReported];
  if (!v45)
  {
    (*(v24 + 8))(v44, v39);
    goto LABEL_24;
  }

  v46 = v45;
  v47 = v39;
  v48 = [v45 suggestionDomainMetadata];
  if (!v48)
  {

    (*(v24 + 8))(v106, v39);
    goto LABEL_24;
  }

  v104 = v46;
  v49 = v48;
  v50 = [v48 suggestionGenerationDomain];

  v51 = v50 == 2;
  v52 = v106;
  if (!v51)
  {
    (*(v24 + 8))(v106, v39);

LABEL_24:
    a2 = v107;
    goto LABEL_16;
  }

  v53 = v104;
  v54 = [v104 suggestionLinkId];
  if (!v54)
  {

LABEL_22:
    (*(v24 + 8))(v52, v47);
    (*(v24 + 56))(v19, 1, 1, v47);
    goto LABEL_23;
  }

  v55 = v54;
  v56 = [v54 value];
  if (!v56)
  {

    goto LABEL_22;
  }

  v57 = v56;
  v58 = sub_222B01798();
  v103 = v59;

  v60 = v103;
  sub_222A67044(v58, v103, v19);

  sub_222A26530(v58, v60);
  if (v43(v19, 1, v47) == 1)
  {
    (*(v24 + 8))(v106, v47);

LABEL_23:
    sub_222A34F20(v19, &unk_27D01DA50, &unk_222B04E20);
    goto LABEL_24;
  }

  v65 = v112;
  v105(v112, v19, v47);
  v66 = [v104 suggestionSurfaced] - 1;
  v67 = v47;
  v68 = v106;
  if (v66 >= 3)
  {
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_222B02C88();
    MEMORY[0x223DC66E0](0xD00000000000003BLL, 0x8000000222B16DE0);
    v85 = sub_222B02AA8();
    MEMORY[0x223DC66E0](v85);

    v86 = v114;
    v87 = v115;
    sub_222AFC8AC();
    v88 = swift_allocError();
    *v89 = v86;
    v89[1] = v87;
    swift_willThrow();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v90 = sub_222B02148();
    __swift_project_value_buffer(v90, qword_280CBC458);
    v91 = v88;
    v92 = sub_222B02128();
    v93 = sub_222B028E8();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v114 = v95;
      *v94 = 136315138;
      v113 = v88;
      v96 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v97 = sub_222B023D8();
      v99 = sub_222A230FC(v97, v98, &v114);

      *(v94 + 4) = v99;
      _os_log_impl(&dword_222A1C000, v92, v93, "Unable to convert suggestion surfaced value for suggestion summary: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x223DC7E30](v95, -1, -1);
      MEMORY[0x223DC7E30](v94, -1, -1);

      v100 = *(v24 + 8);
      v100(v112, v67);
    }

    else
    {

      v100 = *(v24 + 8);
      v100(v112, v47);
    }

    v100(v68, v67);
    v61 = type metadata accessor for UniversalSuggestionSummary(0);
    v62 = *(*(v61 - 8) + 56);
    v63 = v107;
    return v62(v63, 1, 1, v61);
  }

  v69 = v111;
  sub_222AC5E48(v65, v106, v111);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v70 = sub_222B02148();
  __swift_project_value_buffer(v70, qword_280CBC458);
  v71 = v110;
  sub_222A6E45C(v69, v110);
  v72 = sub_222B02128();
  v73 = sub_222B028D8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = v47;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v114 = v76;
    *v75 = 136315138;
    sub_222A6E45C(v71, v9);
    v77 = sub_222B023D8();
    v78 = v74;
    v80 = v79;
    sub_222A34F20(v71, &unk_27D01DA50, &unk_222B04E20);
    v81 = sub_222A230FC(v77, v80, &v114);

    *(v75 + 4) = v81;
    v69 = v111;
    _os_log_impl(&dword_222A1C000, v72, v73, "makeSuggestionSummary candidateId: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x223DC7E30](v76, -1, -1);
    MEMORY[0x223DC7E30](v75, -1, -1);

    v82 = *(v24 + 8);
    v82(v112, v78);
    v83 = v106;
    v84 = v78;
  }

  else
  {

    sub_222A34F20(v71, &unk_27D01DA50, &unk_222B04E20);
    v82 = *(v24 + 8);
    v82(v112, v47);
    v83 = v68;
    v84 = v47;
  }

  v82(v83, v84);
  v101 = v107;
  sub_222A65A04(v69, v107);
  v102 = type metadata accessor for UniversalSuggestionSummary(0);
  *(v101 + *(v102 + 20)) = v66;
  return (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
}

uint64_t UniversalSuggestionSummaries.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5D8, &qword_222B0F898);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t UniversalSuggestionSummaries.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5D8, &qword_222B0F898);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t UniversalSuggestionSummaries.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UniversalSuggestionSummaries.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222AFC3C4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for UniversalSuggestionSummaries(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AFC3FC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for UniversalSuggestionSummaries(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5D8, &qword_222B0F898);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

BOOL _s28SiriPrivateLearningAnalytics26UniversalSuggestionSummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_222A6E45C(a1, &v27 - v19);
  sub_222A6E45C(a2, &v20[v21]);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_222A6E45C(v20, v14);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      sub_222AFC900(&qword_280CB8300, MEMORY[0x277CC95F0]);
      v24 = sub_222B02338();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_222A34F20(v20, &unk_27D01DA50, &unk_222B04E20);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_222A34F20(v20, &qword_27D01D6A8, &unk_222B08A00);
    return 0;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_222A34F20(v20, &unk_27D01DA50, &unk_222B04E20);
LABEL_9:
  v26 = type metadata accessor for UniversalSuggestionSummary(0);
  return *(a1 + *(v26 + 20)) == *(a2 + *(v26 + 20));
}

uint64_t sub_222AFC77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_222AFC828()
{
  sub_222A658D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_222AFC8AC()
{
  result = qword_27D01E600;
  if (!qword_27D01E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E600);
  }

  return result;
}

uint64_t sub_222AFC900(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_222AFC948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05260;
  if (qword_280CB4CB0 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4CC0;
  *(inited + 32) = qword_280CB4CB8;
  *(inited + 40) = v1;
  v2 = qword_280CB4C80;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_280CB4C90;
  *(inited + 48) = qword_280CB4C88;
  *(inited + 56) = v3;

  v4 = sub_222AFCB80(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v4;
}

id sub_222AFCB80(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v4 = v1;
  v5 = sub_222AFD5F4(a1);

  sub_222A22758(v5);

  v6 = sub_222B025D8();

  [v3 addObjectsFromArray_];

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  v8 = v3;
  v9 = sub_222B02128();
  v10 = sub_222B028C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_222A1C000, v9, v10, "DiagnosticExtension - Final set of URLS: %@", v11, 0xCu);
    sub_222A8DF88(v12);
    MEMORY[0x223DC7E30](v12, -1, -1);
    MEMORY[0x223DC7E30](v11, -1, -1);
  }

  return v8;
}

id DiagnosticExtensionFileFinder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticExtensionFileFinder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticExtensionFileFinder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiagnosticExtensionFileFinder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticExtensionFileFinder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222AFCE88(uint64_t a1)
{
  v83[1] = *MEMORY[0x277D85DE8];
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v76 = v75 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = v75 - v13;
  v82 = MEMORY[0x277D84F90];
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  v16 = __swift_project_value_buffer(v15, qword_280CBC458);
  v17 = *(v3 + 16);
  v81 = a1;
  v77 = v17;
  v17(v14, a1, v2);
  v78 = v16;
  v18 = sub_222B02128();
  v19 = sub_222B028C8();
  v20 = os_log_type_enabled(v18, v19);
  v79 = v2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v83[0] = v22;
    *v21 = 136315138;
    sub_222A470A4();
    v23 = sub_222B02F38();
    v25 = v24;
    v80 = v8;
    v26 = v3;
    v27 = *(v3 + 8);
    v27(v14, v2);
    v28 = sub_222A230FC(v23, v25, v83);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_222A1C000, v18, v19, "DiagnosticExtension - Gathering files from: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223DC7E30](v22, -1, -1);
    v29 = v21;
    v30 = v27;
    v3 = v26;
    v8 = v80;
    MEMORY[0x223DC7E30](v29, -1, -1);
  }

  else
  {

    v30 = *(v3 + 8);
    v30(v14, v2);
  }

  v31 = [objc_opt_self() defaultManager];
  v32 = v81;
  v33 = sub_222B016A8();
  v83[0] = 0;
  v34 = [v31 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:0 error:v83];

  v35 = v83[0];
  if (v34)
  {
    v36 = sub_222B025F8();
    v37 = v35;

    v38 = *(v36 + 16);
    if (v38)
    {
      v83[0] = MEMORY[0x277D84F90];
      sub_222B02D38();
      v39 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v75[1] = v36;
      v40 = v36 + v39;
      v41 = *(v3 + 72);
      v80 = (v3 + 8);
      v81 = v41;
      v42 = v76;
      v43 = v77;
      v44 = v79;
      do
      {
        v43(v42, v40, v44);
        sub_222B01738();
        v45 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
        v46 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

        [v45 initFileURLWithPath_];

        v30(v42, v44);
        sub_222B02D18();
        v47 = *(v83[0] + 2);
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        v40 += v81;
        --v38;
      }

      while (v38);

      v48 = v83[0];
    }

    else
    {

      v48 = MEMORY[0x277D84F90];
    }

    v65 = sub_222B02128();
    v66 = sub_222B028C8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83[0] = v68;
      *v67 = 136315138;
      v69 = sub_222AFD980();
      v70 = MEMORY[0x223DC6850](v48, v69);
      v72 = sub_222A230FC(v70, v71, v83);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_222A1C000, v65, v66, "DiagnosticExtension - URLS: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x223DC7E30](v68, -1, -1);
      MEMORY[0x223DC7E30](v67, -1, -1);
    }

    sub_222A97008(v48);
  }

  else
  {
    v49 = v83[0];
    v50 = sub_222B01628();

    swift_willThrow();
    v51 = v79;
    v77(v8, v32, v79);
    v52 = v50;
    v53 = sub_222B02128();
    v54 = sub_222B028E8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v8;
      v81 = swift_slowAlloc();
      v83[0] = v81;
      *v55 = 136315394;
      sub_222A470A4();
      v57 = sub_222B02F38();
      v59 = v58;
      v30(v56, v51);
      v60 = sub_222A230FC(v57, v59, v83);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      swift_getErrorValue();
      v61 = sub_222B030C8();
      v63 = sub_222A230FC(v61, v62, v83);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_222A1C000, v53, v54, "DiagnosticExtension - Error while enumerating files %s: %s", v55, 0x16u);
      v64 = v81;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v64, -1, -1);
      MEMORY[0x223DC7E30](v55, -1, -1);
    }

    else
    {

      v30(v8, v51);
    }
  }

  result = v82;
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222AFD5F4(uint64_t a1)
{
  v42 = sub_222B01748();
  v2 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42, v3);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 16);
  if (!v40)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v39 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  v38 = (v4 + 8);
  v8 = &qword_27D01DB90;
  while (1)
  {
    v10 = (v39 + 16 * v6);
    v12 = *v10;
    v11 = v10[1];

    v13 = v41;
    sub_222B01688();
    v14 = sub_222AFCE88(v13);
    (*v38)(v13, v42);

    v15 = v14 >> 62;
    v16 = v14 >> 62 ? sub_222B02DC8() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v7 >> 62;
    if (v7 >> 62)
    {
      v35 = sub_222B02DC8();
      v19 = v35 + v16;
      if (__OFADD__(v35, v16))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v17)
      {
        goto LABEL_16;
      }

      v20 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v17)
      {
LABEL_16:
        sub_222B02DC8();
        goto LABEL_17;
      }

      v20 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = *(v20 + 16);
LABEL_17:
    result = sub_222B02CC8();
    v7 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v46 = v16;
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    if (v15)
    {
      break;
    }

    v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v23 >> 1) - v22) < v46)
    {
      goto LABEL_38;
    }

    v43 = v6;
    v44 = v7;
    v26 = v20 + 8 * v22 + 32;
    v37 = v20;
    if (v15)
    {
      if (v24 < 1)
      {
        goto LABEL_40;
      }

      sub_222AFD9CC();
      for (i = 0; i != v24; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_222B0B2E8);
        v28 = sub_222A6E1A4(v45, i, v14);
        v30 = v8;
        v31 = *v29;
        (v28)(v45, 0);
        *(v26 + 8 * i) = v31;
        v8 = v30;
      }
    }

    else
    {
      sub_222AFD980();
      swift_arrayInitWithCopy();
    }

    v6 = v43;
    v7 = v44;
    if (v46 >= 1)
    {
      v32 = *(v37 + 16);
      v33 = __OFADD__(v32, v46);
      v34 = v32 + v46;
      if (v33)
      {
        goto LABEL_39;
      }

      *(v37 + 16) = v34;
    }

LABEL_4:
    if (++v6 == v40)
    {
      return v7;
    }
  }

  v25 = v20;
  result = sub_222B02DC8();
  v20 = v25;
  v24 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v46 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_222AFD980()
{
  result = qword_27D01C9F8;
  if (!qword_27D01C9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01C9F8);
  }

  return result;
}

unint64_t sub_222AFD9CC()
{
  result = qword_27D01DB98;
  if (!qword_27D01DB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01DB90, &qword_222B0B2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DB98);
  }

  return result;
}

void static RuntimeSuggestionLog.record(requestId:suggestionId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v61 - v11;
  v13 = sub_222B01748();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v64 = &v61 - v20;
  v21 = sub_222B023C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v67 = a2;

  MEMORY[0x223DC66E0](58, 0xE100000000000000);
  MEMORY[0x223DC66E0](a3, a4);
  v27 = v66;
  v28 = v67;

  MEMORY[0x223DC66E0](10, 0xE100000000000000);
  sub_222B023B8();
  v65 = sub_222B02398();
  v30 = v29;

  (*(v22 + 8))(v26, v21);
  if (v30 >> 60 == 15)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v31 = sub_222B02148();
    __swift_project_value_buffer(v31, qword_280CBC458);

    v32 = sub_222B02128();
    v33 = sub_222B028E8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66 = v35;
      *v34 = 136315138;
      v36 = sub_222A230FC(v27, v28, &v66);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_222A1C000, v32, v33, "RuntimeSuggestionLog failed to convert entry to data for writing: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223DC7E30](v35, -1, -1);
      MEMORY[0x223DC7E30](v34, -1, -1);
    }

    else
    {
    }

LABEL_13:

    return;
  }

  sub_222AFE3C4(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v37 = v30;

    sub_222A34F20(v12, &qword_27D01D458, &unk_222B07E00);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v38 = sub_222B02148();
    __swift_project_value_buffer(v38, qword_280CBC458);
    v32 = sub_222B02128();
    v39 = sub_222B028E8();
    if (os_log_type_enabled(v32, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_222A1C000, v32, v39, "RuntimeSuggestionLog no container access", v40, 2u);
      MEMORY[0x223DC7E30](v40, -1, -1);
    }

    sub_222A398A4(v65, v37);
    goto LABEL_13;
  }

  v62 = v30;
  v41 = v64;
  (*(v14 + 32))(v64, v12, v13);
  v42 = objc_opt_self();
  v43 = [v42 defaultManager];
  sub_222B01728();
  v44 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v45 = [v43 fileExistsAtPath_];

  if (v45)
  {
    sub_222AFF42C();
    v46 = v63;
    v47 = v13;
    (*(v14 + 16))(v63, v41, v13);
    v48 = v41;
    v49 = sub_222AFE650(v46);
    sub_222B02898();
    v59 = v65;
    v60 = sub_222B01788();
    [v49 writeData_];

    [v49 closeFile];
  }

  else
  {
    v47 = v13;
    v50 = [v42 defaultManager];
    sub_222B01728();
    v51 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    v59 = v65;
    v49 = sub_222B01788();
    [v50 createFileAtPath:v51 contents:v49 attributes:0];

    v48 = v41;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v52 = sub_222B02148();
  __swift_project_value_buffer(v52, qword_280CBC458);

  v53 = sub_222B02128();
  v54 = sub_222B028D8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = v48;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v66 = v57;
    *v56 = 136315138;
    v58 = sub_222A230FC(v27, v28, &v66);

    *(v56 + 4) = v58;
    _os_log_impl(&dword_222A1C000, v53, v54, "RuntimeSuggestionLog recorded: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x223DC7E30](v57, -1, -1);
    MEMORY[0x223DC7E30](v56, -1, -1);
    sub_222A398A4(v59, v62);

    (*(v14 + 8))(v55, v47);
  }

  else
  {

    sub_222A398A4(v59, v62);

    (*(v14 + 8))(v48, v47);
  }
}

uint64_t sub_222AFE3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_222B01F68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v22 - v11;
  v13 = sub_222B01748();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A81B0C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222A34F20(v12, &qword_27D01D458, &unk_222B07E00);
    v19 = 1;
  }

  else
  {
    sub_222B01F58();
    sub_222B016C8();
    (*(v3 + 8))(v7, v2);
    v20 = *(v14 + 8);
    v20(v12, v13);
    sub_222B016E8();
    v20(v18, v13);
    v19 = 0;
  }

  return (*(v14 + 56))(a1, v19, 1, v13);
}

id sub_222AFE650(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_222B016A8();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_222B01748();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_222B01628();

    swift_willThrow();
    v9 = sub_222B01748();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t static RuntimeSuggestionLog.readAll()()
{
  v0 = sub_222B01558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222B023C8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v59 - v12;
  v14 = sub_222B01748();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222AFE3C4(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_222A34F20(v13, &qword_27D01D458, &unk_222B07E00);
    if (qword_280CBA628 != -1)
    {
LABEL_26:
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);
    v21 = sub_222B02128();
    v22 = sub_222B028E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_222A1C000, v21, v22, "RuntimeSuggestionLog no container access", v23, 2u);
      MEMORY[0x223DC7E30](v23, -1, -1);
    }

    return sub_222A3ACA4(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    sub_222B023B8();
    v25 = sub_222B02348();
    v67 = 0;
    v68 = v19;
    v69 = v15;
    v70 = v14;
    v74 = v25;
    v75 = v26;
    sub_222B01548();
    sub_222A397FC();
    v27 = sub_222B02B58();
    (*(v1 + 8))(v5, v0);

    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = 0;
      v30 = v27 + 40;
      v65 = v28 - 1;
      v71 = MEMORY[0x277D84F90];
      v66 = v27 + 40;
      do
      {
        v31 = (v30 + 16 * v29);
        v32 = v29;
        while (1)
        {
          if (v32 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v29 = v32 + 1;
          v33 = *v31;
          v74 = *(v31 - 1);
          v75 = v33;
          v72 = 58;
          v73 = 0xE100000000000000;
          sub_222AFF478();

          v34 = sub_222B02858();
          if (v34[2] > 1uLL)
          {
            break;
          }

          v31 += 2;
          ++v32;
          if (v28 == v29)
          {
            goto LABEL_20;
          }
        }

        v36 = v34[6];
        v35 = v34[7];
        v38 = v34[4];
        v37 = v34[5];
        v39 = v34[9];
        v63 = v34[8];
        v64 = v37;
        v62 = v39;
        v40 = v34[10];
        v41 = v34[11];
        v60 = v38;
        v61 = v40;
        v59 = v34;

        v42 = MEMORY[0x223DC6660](v60, v64, v36, v35);
        v64 = v43;

        v44 = MEMORY[0x223DC6660](v63, v62, v61, v41);
        v63 = v45;

        v46 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_222AAA0A8(0, v71[2] + 1, 1, v71);
        }

        v48 = v71[2];
        v47 = v71[3];
        if (v48 >= v47 >> 1)
        {
          v71 = sub_222AAA0A8((v47 > 1), v48 + 1, 1, v71);
        }

        v49 = v71;
        v71[2] = v48 + 1;
        v50 = &v49[4 * v48];
        v51 = v63;
        v52 = v64;
        v50[4] = v46;
        v50[5] = v52;
        v50[6] = v44;
        v50[7] = v51;
        v30 = v66;
      }

      while (v65 != v32);
    }

    else
    {
      v71 = MEMORY[0x277D84F90];
    }

LABEL_20:

    v53 = v71;
    if (v71[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CD98, &qword_222B04F00);
      v54 = sub_222B02DF8();
    }

    else
    {
      v54 = MEMORY[0x277D84F98];
    }

    v56 = v69;
    v55 = v70;
    v57 = v67;
    v58 = v68;
    v74 = v54;
    sub_222AFF4CC(v53, 1, &v74);

    if (v57)
    {

      __break(1u);
    }

    else
    {
      (*(v56 + 8))(v58, v55);
      return v74;
    }
  }

  return result;
}

void static RuntimeSuggestionLog.clear()()
{
  v38[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v37[-v3];
  v5 = sub_222B01748();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_222AFE3C4(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v10, v4, v5);
    v15 = objc_opt_self();
    v16 = [v15 defaultManager];
    sub_222B01728();
    v17 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    v18 = [v16 fileExistsAtPath_];

    if (v18)
    {
      v19 = [v15 defaultManager];
      v20 = sub_222B016A8();
      v38[0] = 0;
      v21 = [v19 removeItemAtURL:v20 error:v38];

      if (!v21)
      {
        v27 = v38[0];
        v28 = sub_222B01628();

        swift_willThrow();
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v29 = sub_222B02148();
        __swift_project_value_buffer(v29, qword_280CBC458);
        v30 = v28;
        v24 = sub_222B02128();
        v31 = sub_222B028E8();

        if (os_log_type_enabled(v24, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          v34 = v28;
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 4) = v35;
          *v33 = v35;
          _os_log_impl(&dword_222A1C000, v24, v31, "RuntimeSuggestionLog failed to clear log: %@", v32, 0xCu);
          sub_222A34F20(v33, &qword_27D01E4B0, &qword_222B0A530);
          MEMORY[0x223DC7E30](v33, -1, -1);
          MEMORY[0x223DC7E30](v32, -1, -1);

LABEL_20:
          (*(v6 + 8))(v10, v5);
          goto LABEL_21;
        }

LABEL_19:
        goto LABEL_20;
      }

      v22 = v38[0];
    }

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v23 = sub_222B02148();
    __swift_project_value_buffer(v23, qword_280CBC458);
    v24 = sub_222B02128();
    v25 = sub_222B028D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_222A1C000, v24, v25, "RuntimeSuggestionLog cleared", v26, 2u);
      MEMORY[0x223DC7E30](v26, -1, -1);
    }

    goto LABEL_19;
  }

  sub_222A34F20(v4, &qword_27D01D458, &unk_222B07E00);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_280CBC458);
  v12 = sub_222B02128();
  v13 = sub_222B028E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_222A1C000, v12, v13, "RuntimeSuggestionLog no container access", v14, 2u);
    MEMORY[0x223DC7E30](v14, -1, -1);
  }

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];
}

unint64_t sub_222AFF42C()
{
  result = qword_27D01E608;
  if (!qword_27D01E608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01E608);
  }

  return result;
}

unint64_t sub_222AFF478()
{
  result = qword_27D01E610;
  if (!qword_27D01E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E610);
  }

  return result;
}

unint64_t sub_222AFF4CC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 56);
  v43 = *(result + 48);
  v10 = *a3;

  result = sub_222A26EC8(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_222A2B60C(v15, i & 1);
    v17 = *a3;
    result = sub_222A26EC8(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_222B030B8();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v24 = (v19[6] + 16 * result);
    *v24 = v8;
    v24[1] = v7;
    v25 = (v19[7] + 16 * result);
    *v25 = v43;
    v25[1] = v9;
    v26 = v19[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v27;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  sub_222A2DE94();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  v21 = (v19[7] + 16 * v20);
  v22 = v21[1];
  *v21 = v43;
  v21[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v31 = *a3;

      result = sub_222A26EC8(v7, v9);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        break;
      }

      v8 = v32;
      if (v31[3] < v35)
      {
        sub_222A2B60C(v35, 1);
        v36 = *a3;
        result = sub_222A26EC8(v7, v9);
        if ((v8 & 1) != (v37 & 1))
        {
          goto LABEL_5;
        }
      }

      v38 = *a3;
      if (v8)
      {
        v28 = result;

        v29 = (v38[7] + 16 * v28);
        v30 = v29[1];
        *v29 = v3;
        v29[1] = v6;
      }

      else
      {
        v38[(result >> 6) + 8] |= 1 << result;
        v39 = (v38[6] + 16 * result);
        *v39 = v7;
        v39[1] = v9;
        v40 = (v38[7] + 16 * result);
        *v40 = v3;
        v40[1] = v6;
        v41 = v38[2];
        v14 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v38[2] = v42;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

void *sub_222AFF778(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59DB8]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D59DE8]) init];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x277D59DF8]) init];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_allocWithZone(MEMORY[0x277D59E28]) init];
        if (v8)
        {
          v9 = v8;
          v10 = a1 + *(type metadata accessor for UniversalSuggestionCandidate(0) + 24);
          v11 = type metadata accessor for UniversalCandidate(0);
          if (*(v10 + *(v11 + 28)) > 0.0)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          [v5 setSurfacedBeforeStatus_];
          [v9 setConfidence_];
          [v7 setUniversalSuggestion_];
          [v3 setSuggestionValue_];
          [v3 setSuggestionMetadata_];

          return v3;
        }

        v3 = v5;
      }

      else
      {
        v7 = v5;
      }

      v3 = v7;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v13 = sub_222B02148();
  __swift_project_value_buffer(v13, qword_280CBC458);
  v14 = sub_222B02128();
  v15 = sub_222B028E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_222A230FC(0xD000000000000017, 0x8000000222B16E90, &v19);
    _os_log_impl(&dword_222A1C000, v14, v15, "PLUSSchemaUniversalSuggestionsMessageConstructor.%s:  failed to create PLUS SELF event templates", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DC7E30](v17, -1, -1);
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  return 0;
}

NSObject *sub_222AFF9F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v33 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277D59DE0]) init];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v17 = sub_222AFF778(a2);
  if (!v17)
  {

LABEL_10:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v25 = sub_222B02148();
    __swift_project_value_buffer(v25, qword_280CBC458);
    v16 = sub_222B02128();
    v26 = sub_222B028E8();
    if (os_log_type_enabled(v16, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_222A230FC(0xD000000000000024, 0x8000000222B16EB0, &v34);
      _os_log_impl(&dword_222A1C000, v16, v26, "PLUSSchemaUniversalSuggestionsMessageConstructor.%s:  failed to create PLUS SELF event templates", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x223DC7E30](v28, -1, -1);
      MEMORY[0x223DC7E30](v27, -1, -1);
    }

    goto LABEL_14;
  }

  v18 = v17;
  type metadata accessor for PLUSLoggingIdGenerator();
  v19 = type metadata accessor for UniversalSuggestionCandidate(0);
  static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(a1, a2 + *(v19 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v14, v8, v9);
    v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v31 = sub_222B01878();
    v32 = [v30 initWithNSUUID_];

    [v16 setSuggestionId:v32];
    [v16 setGeneratedSuggestion:v18];

    (*(v10 + 8))(v14, v9);
    return v16;
  }

  sub_222A264C8(v8);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v20 = sub_222B02148();
  __swift_project_value_buffer(v20, qword_280CBC458);
  v21 = sub_222B02128();
  v22 = sub_222B028E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_222A230FC(0xD000000000000024, 0x8000000222B16EB0, &v34);
    _os_log_impl(&dword_222A1C000, v21, v22, "PLUSSchemaUniversalSuggestionsMessageConstructor.%s:  cannot generate a suggestion link id", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x223DC7E30](v24, -1, -1);
    MEMORY[0x223DC7E30](v23, -1, -1);
  }

LABEL_14:
  return 0;
}

uint64_t SiriCorrectionsUndoResponse.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E618, &qword_222B0FA50);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t SiriCorrectionsUndoResponse.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E618, &qword_222B0FA50);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t SiriCorrectionsUndoResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222B00000(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for SiriCorrectionsUndoResponse();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222B00038(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for SiriCorrectionsUndoResponse();
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E618, &qword_222B0FA50);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *sub_222B000AC(unint64_t a1)
{
  v1 = a1;
  v42 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {
    if (i)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x223DC6F00](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_69;
        }

        if ([v4 anyEventType] == 61)
        {
          sub_222B02D18();
          v7 = *(v42 + 16);
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v8 = v42;
          v42 = MEMORY[0x277D84F90];
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_76;
        }
      }
    }

    v8 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v8 & 0x4000000000000000) == 0)
      {
        v9 = *(v8 + 16);
        goto LABEL_19;
      }
    }

LABEL_76:
    v9 = sub_222B02DC8();
LABEL_19:
    v10 = 0;
    v41 = MEMORY[0x277D84F90];
    if (v9)
    {
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x223DC6F00](v10, v8);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_68;
          }

          v29 = *(v8 + 8 * v10 + 32);
        }

        v30 = v29;
        v1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v31 = [v29 payload];
        if (v31)
        {
          v23 = v31;
          v24 = sub_222B01798();
          v26 = v25;

          v27 = sub_222B01788();
          sub_222A26530(v24, v26);
        }

        else
        {
          v27 = 0;
        }

        v28 = [objc_allocWithZone(MEMORY[0x277D5A630]) initWithData_];

        ++v10;
        if (v28)
        {
          MEMORY[0x223DC6810]();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
          v41 = v42;
          v10 = v1;
          if (v9 == v1)
          {
            goto LABEL_20;
          }
        }

        else if (v9 == v10)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_20:

    v42 = MEMORY[0x277D84F90];
    v11 = v41;
    if (v41 >> 62)
    {
      v12 = sub_222B02DC8();
      v11 = v41;
    }

    else
    {
      v12 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = 0;
      v1 = v11 & 0xC000000000000001;
      v15 = MEMORY[0x277D84F90];
LABEL_24:
      v16 = v14;
      while (1)
      {
        if (v1)
        {
          v17 = MEMORY[0x223DC6F00](v16, v11);
        }

        else
        {
          if (v16 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v17 = *(v11 + 8 * v16 + 32);
        }

        v18 = v17;
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v19 = [v17 undoChecked];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 checkUndoResponse];

          if (v21)
          {
            MEMORY[0x223DC6810]();
            if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v22 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_222B02648();
            }

            sub_222B02688();
            v11 = v41;
            v15 = v42;
            v13 = MEMORY[0x277D84F90];
            if (v14 != v12)
            {
              goto LABEL_24;
            }

            goto LABEL_55;
          }
        }

        else
        {
        }

        ++v16;
        v11 = v41;
        if (v14 == v12)
        {
          v13 = MEMORY[0x277D84F90];
          goto LABEL_55;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_55:

    v42 = v13;
    if (!(v15 >> 62))
    {
      v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        break;
      }

      goto LABEL_57;
    }

    v1 = sub_222B02DC8();
    if (!v1)
    {
      break;
    }

LABEL_57:
    v33 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x223DC6F00](v33, v15);
      }

      else
      {
        if (v33 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v34 = *(v15 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      type metadata accessor for SiriCorrectionsUndoResponse();
      *(swift_allocObject() + 16) = v35;
      MEMORY[0x223DC6810]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      ++v33;
      if (v36 == v1)
      {
        v38 = v42;
        goto LABEL_80;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v38 = MEMORY[0x277D84F90];
LABEL_80:

  v39 = sub_222A2222C(v38);

  return v39;
}

uint64_t type metadata accessor for SiriCorrectionsUndoResponse()
{
  result = qword_27D01E620;
  if (!qword_27D01E620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id UniversalCandidateCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id UniversalCandidateCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for UniversalCandidateCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id UniversalCandidateCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalCandidateCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_222B00844@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastUpdated];
  *a2 = v4;
  return result;
}

id sub_222B0088C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 candidateForUniversalSuggestion];
  *a2 = result;
  return result;
}

id static UniversalCandidateCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_222B0094C()
{
  result = qword_27D01E630;
  if (!qword_27D01E630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01DA50, &unk_222B04E20);
    sub_222AE00D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E630);
  }

  return result;
}

void sub_222B009D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 candidateEntity];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B01798();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222B00A38(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_222B01788();
  }

  v5 = v3;
  [v2 setCandidateEntity_];
}

uint64_t sub_222B00AB0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    sub_222B01898();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_222B00B54(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_222A6E45C(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_222B01878();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setId_];
}

uint64_t sub_222B00C80@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 id];
  if (v3)
  {
    v4 = v3;
    sub_222B01898();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id UniversalRuntimeSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id UniversalRuntimeSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id UniversalRuntimeSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static UniversalRuntimeSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222B00F2C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_222A6E45C(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_222B01878();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setId_];
}

void sub_222B01058(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 queryEntityName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B02388();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222B010C0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setQueryEntityName_];
}

id UniversalSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id UniversalSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for UniversalSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id UniversalSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_222B012C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 candidates];
  *a2 = result;
  return result;
}

id static UniversalSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222B0137C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_222A6E45C(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_222B01878();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setId_];
}