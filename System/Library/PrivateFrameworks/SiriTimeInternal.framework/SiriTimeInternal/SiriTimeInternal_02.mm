uint64_t sub_269306CFC(void *a1, void *a2)
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

    v9 = sub_26932DAF0();

    if (v9)
    {

      sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_26932DAE0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2693073DC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2692F1DBC(v22 + 1);
    }

    v20 = v8;
    sub_2692F2AE0();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
  v11 = *(v6 + 40);
  v12 = sub_26932D9E0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_26930775C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_26932D9F0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_269306F34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26932BFA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_269308954(&qword_2814B2658);
  v36 = a2;
  v13 = sub_26932D740();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_269308954(&qword_2814B2650);
      v23 = sub_26932D750();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2693078EC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2693071EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308448, &qword_26932F958);
    v2 = sub_26932DB30();
    v16 = v2;
    sub_26932DAD0();
    if (sub_26932DB00())
    {
      sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2692F1DA8(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_26932D9E0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_26932DB00());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2693073DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308440, &qword_26932F948);
    v2 = sub_26932DB30();
    v16 = v2;
    sub_26932DAD0();
    if (sub_26932DB00())
    {
      sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2692F1DBC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_26932D9E0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_26932DB00());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_2693075CC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2692F1DA8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_269307B68(&qword_280308448, &qword_26932F958);
      goto LABEL_12;
    }

    sub_269307EE0(v6 + 1, &qword_280308448, &qword_26932F958);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_26932D9E0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_26932D9F0();

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
  sub_26932DF30();
  __break(1u);
}

void sub_26930775C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2692F1DBC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_269307B68(&qword_280308440, &qword_26932F948);
      goto LABEL_12;
    }

    sub_269307EE0(v6 + 1, &qword_280308440, &qword_26932F948);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_26932D9E0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_26932D9F0();

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
  sub_26932DF30();
  __break(1u);
}

uint64_t sub_2693078EC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_26932BFA0();
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
    sub_2692F1FF0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_269307CA8();
      goto LABEL_12;
    }

    sub_2693080EC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_269308954(&qword_2814B2658);
  v15 = sub_26932D740();
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
      sub_269308954(&qword_2814B2650);
      v23 = sub_26932D750();
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
  result = sub_26932DF30();
  __break(1u);
  return result;
}

id sub_269307B68(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26932DB10();
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
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_269307CA8()
{
  v1 = v0;
  v2 = sub_26932BFA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308438, &unk_269330760);
  v7 = *v0;
  v8 = sub_26932DB10();
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

uint64_t sub_269307EE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26932DB20();
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
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_26932D9E0();
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
      *(*(v8 + 48) + 8 * v15) = v20;
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

uint64_t sub_2693080EC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26932BFA0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308438, &unk_269330760);
  v10 = sub_26932DB20();
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
      sub_269308954(&qword_2814B2658);
      result = sub_26932D740();
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

void *sub_269308434(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of DeviceContextProviding.fetchAlarmContexts()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2693066A8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DeviceContextProviding.fetchTimerContexts()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_269308D28;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DeviceContextProviding.isNothingPlaying.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2693066A8;

  return v9(a1, a2);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2693087E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26930882C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2693088D8(unint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i") - 8) + 80);

  sub_269306044(a1);
}

uint64_t sub_269308954(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26932BFA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2693089B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_269308AA4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269308AA4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_269308AEC(uint64_t a1)
{
  v2 = sub_26932BFA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_269308954(&qword_2814B2658);
  result = MEMORY[0x26D638600](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_269306F34(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t SiriTimeDeviceResolutionService.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26932D5C0();
  result = sub_26932D5A0();
  v4 = MEMORY[0x277D61F10];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t SiriTimeDeviceResolutionService.resolveDevicesAsync(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_269308D9C, 0, 0);
}

uint64_t sub_269308D9C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308610, &qword_269330668);
    *v5 = v0;
    v5[1] = sub_269308EF0;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000017, 0x8000000269336660, sub_269306A60, v3, v6);
  }

  else
  {
    v7 = sub_2692ED6A8(MEMORY[0x277D84F90]);
    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_269308EF0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269309008, 0, 0);
}

uint64_t sub_269309040()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
  *v4 = v0;
  v4[1] = sub_269309148;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x8000000269336680, sub_269306ABC, v2, v5);
}

uint64_t sub_269309148()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26930AF38, 0, 0);
}

uint64_t sub_269309260()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2458);
  v1 = __swift_project_value_buffer(v0, qword_2814B2458);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269309328(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = a2[3];
  v16[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);

  sub_269308AEC(v12);

  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v7 + 32))(v14 + v13, v10, v6);

  sub_26932D5D0();
}

uint64_t sub_2693094D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (qword_2814B2450 != -1)
    {
      swift_once();
    }

    v3 = sub_26932D6B0();
    __swift_project_value_buffer(v3, qword_2814B2458);

    v4 = sub_26932D690();
    v5 = sub_26932D9B0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      sub_26932BFA0();
      sub_26932D580();
      sub_26930AEF0(&qword_2814B2658, MEMORY[0x277CC95F0]);
      v8 = sub_26932D730();
      v10 = sub_2692DD5A8(v8, v9, &v22);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2692D8000, v4, v5, "Find candidate devices: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D639280](v7, -1, -1);
      MEMORY[0x26D639280](v6, -1, -1);
    }

    v22 = a1;
  }

  else
  {
    if (qword_2814B2450 != -1)
    {
      swift_once();
    }

    v12 = sub_26932D6B0();
    __swift_project_value_buffer(v12, qword_2814B2458);

    v13 = sub_26932D690();
    v14 = sub_26932D9A0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = sub_26932BFA0();
      v18 = MEMORY[0x26D638530](a2, v17);
      v20 = sub_2692DD5A8(v18, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2692D8000, v13, v14, "SiriTimeDeviceResolutionService.resolveDevice() found no device with ids %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D639280](v16, -1, -1);
      MEMORY[0x26D639280](v15, -1, -1);
    }

    v22 = sub_2692ED6A8(MEMORY[0x277D84F90]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820);
  return sub_26932D8E0();
}

uint64_t SiriTimeDeviceResolutionService.targetingDevices()()
{
  v1[5] = v0;
  v2 = sub_26932D500();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_26932D530();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269309918, 0, 0);
}

uint64_t sub_269309918()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_26932D520();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308648, &qword_269330798);
  v5 = *(v3 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26932EEA0;
  sub_26932D4F0();
  v0[2] = v7;
  sub_26930AEF0(&qword_280308650, MEMORY[0x277D61ED8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308658, &qword_2693307A0);
  sub_26930AD78();
  sub_26932DAB0();
  sub_26932D510();
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v8 = sub_26932D6B0();
  v0[12] = __swift_project_value_buffer(v8, qword_2814B2458);
  v9 = sub_26932D690();
  v10 = sub_26932D9B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2692D8000, v9, v10, "targetingDevices() Begin resolving targetable devices", v11, 2u);
    MEMORY[0x26D639280](v11, -1, -1);
  }

  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v15 = v0[5];

  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308668, &unk_2693307A8);
  v18 = *(v13 + 72);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  v0[13] = v20;
  *(v20 + 16) = xmmword_26932EEA0;
  (*(v13 + 16))(v20 + v19, v12, v14);
  v21 = *(MEMORY[0x277D61F30] + 4);
  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_269309BF0;

  return MEMORY[0x2821C8A78](v20, 0, v16, v17);
}

uint64_t sub_269309BF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_269309F04;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_269309D0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269309D0C()
{
  v25 = v0;
  v1 = v0[15];
  v2 = v0[12];

  v3 = sub_26932D690();
  v4 = sub_26932D9B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    if (v5 >> 62)
    {
      if (v0[15] < 0)
      {
        v23 = v0[15];
      }

      v8 = sub_26932DAE0();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v0[4] = v8;
    v12 = sub_26932DDD0();
    v14 = sub_2692DD5A8(v12, v13, &v24);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_2692D8000, v3, v4, "targetingDevices() found targetable device count: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D639280](v7, -1, -1);
    MEMORY[0x26D639280](v6, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21(v18);
}

uint64_t sub_269309F04()
{
  v20 = v0;
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v1;
  v5 = sub_26932D690();
  v6 = sub_26932D9A0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v0[3] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v11 = sub_26932D790();
    v13 = sub_2692DD5A8(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2692D8000, v5, v6, "Error fetching targeting accessories from #hal: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D639280](v9, -1, -1);
    MEMORY[0x26D639280](v8, -1, -1);
  }

  else
  {
    v7 = v0[16];
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v14 = v0[11];
  v15 = v0[8];

  v16 = v0[1];
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_26930A0E4()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D61F28] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_26930A1A0;

  return MEMORY[0x2821C8A70](4000, 4000, v2, v3);
}

uint64_t sub_26930A1A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_26930A3F8;
  }

  else
  {
    v5 = sub_26930A2B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26930A2B4()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = *(v0 + 40); v2; i = *(v0 + 40))
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x26D638850](v4, *(v0 + 40));
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v7 + 8 * v4);
      }

      v1 = v8;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_26932D570();
      v10 = sub_26932D680();
      if (v10 == sub_26932D680())
      {
        v11 = *(v0 + 40);

        goto LABEL_14;
      }

      ++v4;
      if (v9 == v2)
      {
        v12 = *(v0 + 40);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v2 = sub_26932DAE0();
  }

LABEL_13:

  v1 = 0;
LABEL_14:
  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_26930A3F8()
{
  v17 = v0;
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_26932D6B0();
  __swift_project_value_buffer(v2, qword_2814B2458);
  v3 = v1;
  v4 = sub_26932D690();
  v5 = sub_26932D9A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v11 = sub_26932D790();
    v13 = sub_2692DD5A8(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2692D8000, v4, v5, "Unable to get devicesWithProximity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D639280](v9, -1, -1);
    MEMORY[0x26D639280](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

void sub_26930A5CC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  sub_26932D670();
  v9 = sub_26932D660();
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v10 = sub_26932D6B0();
  __swift_project_value_buffer(v10, qword_2814B2458);
  v11 = sub_26932D690();
  v12 = sub_26932D9B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2692D8000, v11, v12, "Fetching deviceCapabilities.", v13, 2u);
    MEMORY[0x26D639280](v13, -1, -1);
  }

  v14 = a2[3];
  v20[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26932EA80;
  *(v15 + 32) = v9;
  (*(v5 + 16))(v8, a1, v4);
  v16 = v9;
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  v19 = v16;
  sub_26932D5E0();
}

uint64_t sub_26930A85C()
{
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v0 = sub_26932D6B0();
  __swift_project_value_buffer(v0, qword_2814B2458);

  v1 = sub_26932D690();
  v2 = sub_26932D9B0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    sub_26932D580();
    sub_26932D610();
    sub_26930AEF0(&qword_2814B2330, MEMORY[0x277D61F00]);
    v5 = sub_26932D730();
    v7 = sub_2692DD5A8(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2692D8000, v1, v2, "Got capabilitesMap: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D639280](v4, -1, -1);
    MEMORY[0x26D639280](v3, -1, -1);
  }

  v9 = sub_26930AADC(v8);

  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810);
  return sub_26932D8E0();
}

void *sub_26930AA54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

void *sub_26930AADC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_26932DAE0();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26930AA54(v2, 0);

    v1 = sub_26930AB8C(&v5, v3 + 4, v2, v1);
    sub_26930AE68();
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

uint64_t sub_26930AB8C(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
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

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_26932DBE0();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_26932DC00())
      {
        goto LABEL_31;
      }

      sub_26932D580();
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
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
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

unint64_t sub_26930AD78()
{
  result = qword_280308660;
  if (!qword_280308660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280308658, &qword_2693307A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308660);
  }

  return result;
}

uint64_t sub_26930ADEC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810) - 8) + 80);

  return sub_26930A85C();
}

uint64_t sub_26930AE70(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_2693094D4(a1, v4);
}

uint64_t sub_26930AEF0(unint64_t *a1, void (*a2)(uint64_t))
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

id INIntent.withEndpointId.getter()
{
  v8 = v0;
  v1 = [v0 _metadata];
  if (!v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
    [v0 _setMetadata_];
    v1 = v2;
  }

  v3 = [v0 _metadata];
  if (v3)
  {
    v4 = v3;
    sub_26932C2F0();
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_26932C560();
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_26932C550();
    if (v5)
    {
      v6 = sub_26932D760();
    }

    else
    {
      v6 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    [v4 setEndpointId_];
  }

  return v8;
}

id INIntent.withIntentId.getter()
{
  v9 = v0;
  v1 = [v0 _metadata];
  if (!v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
    [v0 _setMetadata_];
    v1 = v2;
  }

  v3 = [v0 _metadata];
  if (v3)
  {
    v4 = v3;
    sub_26932D320();
    v5 = sub_26932D310();
    if (v5)
    {
      sub_26932D300();

      sub_26932C230();
      v7 = v6;

      if (v7)
      {
        v5 = sub_26932D760();
      }

      else
      {
        v5 = 0;
      }
    }

    [v4 setIntentId_];
  }

  return v9;
}

id SASTButtonItem.init(label:commands:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setCentered_];
  v1 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280308680, qword_269330830);
  v2 = sub_26932D850();

  [v1 setCommands_];

  [v0 setAction_];
  v3 = [objc_allocWithZone(MEMORY[0x277D47A40]) init];
  v4 = sub_26932D760();

  [v3 setText_];

  v5 = v3;
  [v0 setDecoratedLabel_];

  return v0;
}

uint64_t sub_26930B350()
{
  v1 = *(v0 + 16);
  sub_26932C420();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26930B3B0()
{
  type metadata accessor for NoOpFlow();
  sub_26930B430();
  return sub_26932C1F0();
}

unint64_t sub_26930B430()
{
  result = qword_280308690;
  if (!qword_280308690)
  {
    type metadata accessor for NoOpFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308690);
  }

  return result;
}

uint64_t sub_26930B49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2693066A8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26930B54C()
{
  v2 = *v0;
  type metadata accessor for NoOpFlow();
  return sub_26932C1F0();
}

uint64_t sub_26930B5A8()
{
  type metadata accessor for NoOpFlow();

  return sub_26932C220();
}

uint64_t dispatch thunk of NoOpFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2692DDD10;

  return v8(a1);
}

uint64_t sub_26930B77C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2350);
  v1 = __swift_project_value_buffer(v0, qword_2814B2350);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AppInstallUtil.Domain.appTypeToInstall.getter()
{
  if (*v0 >= 3u)
  {
    return 0x68746C616568;
  }

  else
  {
    return 0x6B636F6C63;
  }
}

SiriTimeInternal::AppInstallUtil::Domain_optional __swiftcall AppInstallUtil.Domain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26930B8F8()
{
  v1 = *v0;
  sub_26932DF50();
  v2 = *&aClock_2[8 * v1];
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_26930B954()
{
  v1 = *&aClock_2[8 * *v0];
  sub_26932D7D0();
}

uint64_t sub_26930B994()
{
  v1 = *v0;
  sub_26932DF50();
  v2 = *&aClock_2[8 * v1];
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t AppInstallUtil.installOrOpenURL(installOnly:)(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if (v2 >= 3)
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }

    v6[1] = *v1;
    v6[0] = v3;
    v4 = v6;
    return sub_26930BABC(v4);
  }

  if (v2 < 3)
  {
    v7[1] = *v1;
    v7[0] = 0;
    v4 = v7;
    return sub_26930BABC(v4);
  }

  return sub_26932BEC0();
}

uint64_t sub_26930BABC(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_26932DB80();

  if (v1 <= 3)
  {
    v2 = 0xEF6B636F6C632E65;
    v3 = 0x6C7070612E6D6F63;
    if (v1 != 2)
    {
      v3 = 0xD00000000000001BLL;
      v2 = 0x8000000269335220;
    }

    v5 = 0x80000002693351D0;
    v6 = 0xD000000000000015;
    if (v1)
    {
      v6 = 0xD000000000000018;
      v5 = 0x80000002693351F0;
    }

    v7 = v1 <= 1;
  }

  else
  {
    v2 = 0x8000000269335280;
    v3 = 0xD00000000000001FLL;
    v4 = 0x80000002693352A0;
    if (v1 != 7)
    {
      v4 = 0x80000002693352E0;
    }

    if (v1 != 6)
    {
      v3 = 0xD000000000000035;
      v2 = v4;
    }

    v5 = 0x8000000269335240;
    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
      v5 = 0x8000000269335260;
    }

    v7 = v1 <= 5;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x26D6384C0](v8, v9);

  sub_26932BEC0();
}

id AppInstallUtil.isAppInstalled.getter()
{
  v1 = *v0;
  if (v1 >= 3)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (v1 >= 3)
  {
    v3 = "com.apple.NanoAlarm";
  }

  else
  {
    v3 = "gerWithEndpointUUIDString:]";
  }

  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v5 = sub_26930DFAC(v2, v3 | 0x8000000000000000, 1);
  v6 = [v5 applicationState];
  v7 = [v6 isInstalled];

  if (qword_2814B2348 != -1)
  {
    swift_once();
  }

  v8 = sub_26932D6B0();
  __swift_project_value_buffer(v8, qword_2814B2350);
  v9 = sub_26932D690();
  v10 = sub_26932D980();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315394;
    v13 = sub_2692DD5A8(v2, v3 | 0x8000000000000000, v18);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    if (v7)
    {
      v14 = 0x454C4C4154534E49;
    }

    else
    {
      v14 = 0x54534E4920544F4ELL;
    }

    if (v7)
    {
      v15 = 0xE900000000000044;
    }

    else
    {
      v15 = 0xED000044454C4C41;
    }

    v16 = sub_2692DD5A8(v14, v15, v18);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_2692D8000, v9, v10, "ClockTimerAppUtil: LSApplicationRecord: %s – %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v12, -1, -1);
    MEMORY[0x26D639280](v11, -1, -1);
  }

  return v7;
}

uint64_t AppInstallUtil.appStorePunchout(installOnly:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26932BFA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_26932BED0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v2;
  if (a1)
  {
    if (v19 >= 3)
    {
      v20 = 5;
    }

    else
    {
      v20 = 0;
    }

    LOBYTE(v56[0]) = *v2;
    LOBYTE(v55) = v20;
    goto LABEL_8;
  }

  if (v19 < 3)
  {
    LOBYTE(v56[0]) = *v2;
    LOBYTE(v55) = 0;
LABEL_8:
    sub_26930BABC(&v55);
    goto LABEL_10;
  }

  sub_26932BEC0();
LABEL_10:
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2692EB48C(v13, &qword_2803086A0, &unk_26932FB40);
LABEL_22:
    v33 = 1;
    goto LABEL_23;
  }

  (*(v15 + 32))(v18, v13, v14);
  v21 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v22 = sub_26932BEA0();
  [v21 setPunchOutUri_];

  v23 = v21;
  sub_26932BF90();
  sub_26932BF60();
  (*(v6 + 8))(v9, v5);
  v24 = sub_26932D760();

  [v23 setAceId_];

  v25 = [v23 dictionary];
  if (!v25)
  {
    (*(v15 + 8))(v18, v14);

    goto LABEL_22;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v56[0] = 0;
  v28 = [v27 dataWithPropertyList:v26 format:200 options:0 error:v56];
  v29 = v56[0];
  if (!v28)
  {
    v34 = v29;
    v35 = sub_26932BE90();

    swift_willThrow();
    if (qword_2814B2348 != -1)
    {
      swift_once();
    }

    v36 = sub_26932D6B0();
    __swift_project_value_buffer(v36, qword_2814B2350);
    v37 = v35;
    v38 = sub_26932D690();
    v39 = sub_26932D9A0();

    v54 = v38;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v53 = v39;
      v41 = v40;
      v52 = swift_slowAlloc();
      v56[0] = v52;
      *v41 = 136315138;
      v55 = v35;
      v42 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
      v43 = sub_26932D790();
      v45 = sub_2692DD5A8(v43, v44, v56);

      *(v41 + 4) = v45;
      v46 = v54;
      _os_log_impl(&dword_2692D8000, v54, v53, "Error generating ACE punch out command: %s", v41, 0xCu);
      v47 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x26D639280](v47, -1, -1);
      MEMORY[0x26D639280](v41, -1, -1);
    }

    else
    {
    }

    (*(v15 + 8))(v18, v14);
    goto LABEL_22;
  }

  v30 = sub_26932BF00();
  v32 = v31;

  sub_26932BEF0();
  sub_26932D3D0();
  sub_2692F5A5C(v30, v32);

  (*(v15 + 8))(v18, v14);
  v33 = 0;
LABEL_23:
  v48 = sub_26932D3E0();
  result = (*(*(v48 - 8) + 56))(a2, v33, 1, v48);
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AppInstallDialogOutputUtil.init(domain:fallbackCAT:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  *a3 = *a1;
  result = sub_2692DB324(a2, (a3 + 8));
  a3[48] = v4;
  return result;
}

uint64_t AppInstallDialogOutputUtil.makeLaunchAppView()()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_26932BED0();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26930C794, 0, 0);
}

uint64_t sub_26930C794()
{
  v1 = *(v0 + 24);
  if (**(v0 + 16) >= 3u)
  {
    v2 = *(v0 + 24);
    sub_26932BEC0();
  }

  else
  {
    sub_26932DB80();

    MEMORY[0x26D6384C0](0xD000000000000015, 0x80000002693351D0);
    sub_26932BEC0();
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_2692EB48C(v5, &qword_2803086A0, &unk_26932FB40);
    if (qword_2814B2348 != -1)
    {
      swift_once();
    }

    v6 = sub_26932D6B0();
    __swift_project_value_buffer(v6, qword_2814B2350);
    v7 = sub_26932D690();
    v8 = sub_26932D9A0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2692D8000, v7, v8, "AlarmButtonFactory.makeLaunchAppView returned invalid URL for sleep punchout URL", v9, 2u);
      MEMORY[0x26D639280](v9, -1, -1);
    }

    v10 = *(v0 + 48);
    v11 = *(v0 + 24);

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }

  else
  {
    (*(v4 + 32))(*(v0 + 48), v5, v3);
    v15 = swift_task_alloc();
    *(v0 + 56) = v15;
    *v15 = v0;
    v15[1] = sub_26930CA4C;
    v16 = *(v0 + 48);
    v17 = *(v0 + 16);
    v18 = MEMORY[0x277D84F90];

    return sub_26930CC8C(v18, v16);
  }
}

uint64_t sub_26930CA4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_26930CC04;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_26930CB74;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26930CB74()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_26930CC04()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_26930CC8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26932C400();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_26932C520();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_26932C500();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26930CE40, 0, 0);
}

uint64_t sub_26930CE40()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  __swift_project_boxed_opaque_existential_1(v2 + 1, v3);
  v15 = *v2;
  v5 = AppInstallUtil.isAppInstalled.getter();
  v6 = v2[48] >= 3u;
  sub_26932D7B0();

  v7 = sub_26932D3E0();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = *(v4 + 8);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_26930D02C;
  v11 = v0[14];
  v12 = v0[11];

  return v14(v11, (v5 & 1) == 0, v12, v3, v4);
}

uint64_t sub_26930D02C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 128) = v0;

  sub_2692EB48C(v3, &qword_2803086A8, &qword_2693308F0);
  if (v0)
  {
    v4 = sub_26930D500;
  }

  else
  {
    v4 = sub_26930D16C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26930D16C()
{
  v1 = v0[14];
  v2 = sub_26932C4F0();
  if (*(v2 + 16))
  {
    v4 = v0[9];
    v3 = v0[10];
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[3];
    v32 = v0[4];
    v10 = v0[2];
    (*(v4 + 16))(v3, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

    sub_26932C510();
    (*(v4 + 8))(v3, v5);
    sub_26932C3F0();
    (*(v8 + 8))(v6, v7);
    v11 = sub_26930D58C();

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    if (v12 >> 62)
    {
      sub_26930E4A0();

      v13 = sub_26932DC10();
    }

    else
    {

      sub_26932DF10();
      sub_26930E4A0();
      v13 = v12;
    }

    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];

    sub_26930E4EC(v11);
    (*(v15 + 8))(v14, v16);
  }

  else
  {

    if (qword_2814B2348 != -1)
    {
      swift_once();
    }

    v17 = sub_26932D6B0();
    __swift_project_value_buffer(v17, qword_2814B2350);
    v18 = sub_26932D690();
    v19 = sub_26932D9A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2692D8000, v18, v19, "AppInstallDialogOutputUtil.makeOpenAppButtonViews failed to get button text from template", v20, 2u);
      MEMORY[0x26D639280](v20, -1, -1);
    }

    v21 = v0[2];

    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    if (v22 >> 62)
    {
      sub_26930E4A0();

      v13 = sub_26932DC10();
    }

    else
    {

      sub_26932DF10();
      sub_26930E4A0();
      v13 = v22;
    }

    v24 = v0[13];
    v23 = v0[14];
    v25 = v0[12];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[14];
  v28 = v0[10];
  v27 = v0[11];
  v29 = v0[7];

  v30 = v0[1];

  return v30(v13);
}

uint64_t sub_26930D500()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_26930D58C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
  v1 = sub_26932D760();
  [v0 setText_];

  v2 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v3 = sub_26932BEA0();
  [v2 setPunchOutUri_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26932EA80;
  *(v4 + 32) = v2;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280308680, qword_269330830);
  v6 = sub_26932D850();

  [v0 setCommands_];

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26932EA80;
  *(v7 + 32) = v0;

  return v7;
}

uint64_t SirikitApp.init(app:)(int64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v59 - v6;
  v8 = sub_26932BFF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B2520)
  {
    v13 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v13 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v13;
  }

  sub_2692EB3E4(v13 + 16, v66);

  __swift_project_boxed_opaque_existential_1(v66, v67);
  if (sub_26932C350() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v66, v67), (sub_26932C300()) || (__swift_project_boxed_opaque_existential_1(v66, v67), v22 = sub_26932C340(), v23 = MEMORY[0x277D84F90], (v22))
  {
LABEL_6:
    v14 = sub_26932D3B0();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_26932D3A0();
    sub_26932D460();
    if (v17)
    {
      sub_26932D7B0();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = sub_26932D3E0();
    (*(*(v19 - 8) + 56))(v7, v18, 1, v19);
    sub_26932D390();

    sub_2692EB48C(v7, &qword_2803086A8, &qword_2693308F0);
    sub_26932D380();

    v20 = sub_26932D3C0();

    goto LABEL_10;
  }

  v24 = sub_26932C4E0();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 appNameMap];

    if (v26)
    {
      v61 = v9;
      v59[0] = v8;
      v59[1] = v2;
      v59[2] = a1;
      v27 = sub_26932D720();

      __swift_project_boxed_opaque_existential_1(v66, v67);
      sub_26932C310();
      v28 = objc_opt_self();
      v60 = v12;
      sub_26932BFB0();
      v29 = sub_26932D760();

      v30 = [v28 getFallbackLocales:v29 includingNonSiriLocales:1];

      v62 = sub_26932D860();
      v65 = v23;
      v31 = v27 + 64;
      v32 = 1 << *(v27 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v27 + 64);
      v35 = (v32 + 63) >> 6;
      v63 = v27;

      a1 = 0;
      while (v34)
      {
LABEL_17:
        while (1)
        {
          v36 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          v37 = (a1 << 10) | (16 * v36);
          v38 = (*(v63 + 48) + v37);
          v39 = *v38;
          v40 = v38[1];
          v41 = (*(v63 + 56) + v37);
          v43 = *v41;
          v42 = v41[1];

          v44 = sub_26930DDB8(v39, v40, v43, v42, v62);

          if (v44)
          {
            break;
          }

          if (!v34)
          {
            goto LABEL_19;
          }
        }

        MEMORY[0x26D638500](v45);
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26932D880();
        }

        sub_26932D8A0();
      }

LABEL_19:
      v47 = v60;
      v46 = v61;
      while (1)
      {
        v48 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        if (v48 >= v35)
        {

          (*(v46 + 8))(v47, v59[0]);

          goto LABEL_6;
        }

        v34 = *(v31 + 8 * v48);
        ++a1;
        if (v34)
        {
          a1 = v48;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  if (qword_2814B2348 != -1)
  {
LABEL_35:
    swift_once();
  }

  v50 = sub_26932D6B0();
  __swift_project_value_buffer(v50, qword_2814B2350);

  v51 = sub_26932D690();
  v52 = sub_26932D9A0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = a1;
    v55 = swift_slowAlloc();
    v64 = v54;
    v65 = v55;
    *v53 = 136315138;
    sub_26932D470();
    sub_26930E088();
    v56 = sub_26932DDD0();
    v58 = sub_2692DD5A8(v56, v57, &v65);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_2692D8000, v51, v52, "Could not get app info from App object: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x26D639280](v55, -1, -1);
    MEMORY[0x26D639280](v53, -1, -1);
  }

  else
  {
  }

  v20 = 0;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  return v20;
}

uint64_t sub_26930DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = *(a5 + 16);
  v13 = (a5 + 40);
  v14 = v12 + 1;
  while (--v14)
  {
    if (*(v13 - 1) != a1 || *v13 != a2)
    {
      v13 += 2;
      if ((sub_26932DF00() & 1) == 0)
      {
        continue;
      }
    }

    v16 = sub_26932D450();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_26932D440();
    sub_26932D7B0();
    v19 = sub_26932D3E0();
    v20 = *(*(v19 - 8) + 56);
    v20(v11, 0, 1, v19);
    sub_26932D420();

    sub_2692EB48C(v11, &qword_2803086A8, &qword_2693308F0);
    sub_26932D7B0();
    v20(v11, 0, 1, v19);
    sub_26932D410();

    sub_2692EB48C(v11, &qword_2803086A8, &qword_2693308F0);
    v21 = sub_26932D430();

    return v21;
  }

  return 0;
}

id sub_26930DFAC(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26932D760();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_26932BE90();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_26930E088()
{
  result = qword_2803086B0;
  if (!qword_2803086B0)
  {
    sub_26932D470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086B0);
  }

  return result;
}

unint64_t sub_26930E0E4()
{
  result = qword_2803086B8;
  if (!qword_2803086B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerConfirmationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of AppInstallCAT.redirectToApp(isInstall:appType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2692DDD10;

  return v15(a1, a2, a3, a4, a5);
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

uint64_t sub_26930E3F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26930E440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26930E4A0()
{
  result = qword_2803086C0;
  if (!qword_2803086C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803086C0);
  }

  return result;
}

uint64_t sub_26930E4EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26932DAE0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_26932DAE0();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26930E5DC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26930E704(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26930E5DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26932DAE0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26932DBA0();
  *v1 = result;
  return result;
}

void (*sub_26930E67C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D638850](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26930E6FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_26930E704(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26932DAE0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26932DAE0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26930E884();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086C8, "hg");
            v9 = sub_26930E67C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26930E4A0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26930E884()
{
  result = qword_2803086D0;
  if (!qword_2803086D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803086C8, "hg");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086D0);
  }

  return result;
}

uint64_t sub_26930E8F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = "nsion";
  v4 = a1;
  v5 = 0xD000000000000036;
  if (a1 == 4)
  {
    v5 = 0xD00000000000002ALL;
    v6 = "irectInvocation.Timer.Stop";
  }

  else
  {
    v6 = "irectInvocation.Timer.Undo";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002ALL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "armIntentFromTimer";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000034;
  if (v4 == 1)
  {
    v10 = "Timer.ButtonPress";
  }

  else
  {
    v9 = 0xD000000000000042;
    v10 = "Timer.Disambiguation";
  }

  if (!v4)
  {
    v9 = 0xD000000000000031;
    v10 = "nsion";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "armIntentFromTimer";
    }

    else if (a2 == 4)
    {
      v3 = "irectInvocation.Timer.Stop";
    }

    else
    {
      v2 = 0xD000000000000036;
      v3 = "irectInvocation.Timer.Undo";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000034;
      v3 = "Timer.ButtonPress";
    }

    else
    {
      v2 = 0xD000000000000042;
      v3 = "Timer.Disambiguation";
    }
  }

  else
  {
    v2 = 0xD000000000000031;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_26932DF00();
  }

  return v12 & 1;
}

uint64_t sub_26930EA5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x72506E6F74747562;
    v13 = 0xED00006465737365;
    if (a1 != 2)
    {
      v12 = 1920298856;
      v13 = 0xE400000000000000;
    }

    v14 = 0x644972656D6974;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 1651664246;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x646573756170;
    v5 = 0xE800000000000000;
    v6 = 0x6E6F697461727564;
    if (a1 != 7)
    {
      v6 = 0x6C6562616CLL;
      v5 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6574756E696DLL;
    if (a1 != 4)
    {
      v8 = 0x7469746E456F7375;
      v7 = 0xE900000000000079;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xED00006465737365;
        if (v9 != 0x72506E6F74747562)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1920298856)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x644972656D6974)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1651664246)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6574756E696DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE900000000000079;
      if (v9 != 0x7469746E456F7375)
      {
LABEL_52:
        v16 = sub_26932DF00();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x646573756170)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6E6F697461727564)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    if (v9 != 0x6C6562616CLL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_26930ED0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = "oEntity";
  v4 = a1;
  v5 = 0xD000000000000036;
  if (a1 == 4)
  {
    v6 = "irectInvocation.Alarm.Undo";
  }

  else
  {
    v5 = 0xD000000000000042;
    v6 = "Timer.Disambiguation";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002ALL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "irectInvocation.Alarm.Stop";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000034;
  if (v4 == 1)
  {
    v10 = "Alarm.ButtonPress";
  }

  else
  {
    v9 = 0xD00000000000002ALL;
    v10 = "Alarm.Disambiguation";
  }

  if (!v4)
  {
    v9 = 0xD000000000000031;
    v10 = "oEntity";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "irectInvocation.Alarm.Stop";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000036;
      v3 = "irectInvocation.Alarm.Undo";
    }

    else
    {
      v2 = 0xD000000000000042;
      v3 = "Timer.Disambiguation";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000034;
      v3 = "Alarm.ButtonPress";
    }

    else
    {
      v3 = "Alarm.Disambiguation";
    }
  }

  else
  {
    v2 = 0xD000000000000031;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_26932DF00();
  }

  return v12 & 1;
}

uint64_t sub_26930EE78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x64496D72616C61;
    if (a1 != 2)
    {
      v13 = 0xD000000000000012;
      v12 = 0x8000000269335600;
    }

    v14 = 0x72506E6F74747562;
    if (a1)
    {
      v11 = 0xED00006465737365;
    }

    else
    {
      v14 = 1651664246;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x706D6F4365746164;
    v4 = 0xEE0073746E656E6FLL;
    v5 = 0xE400000000000000;
    v6 = 1920298856;
    if (a1 != 7)
    {
      v6 = 0x6574756E696DLL;
      v5 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x6953656C646E6168;
    v8 = 0xEE00796C746E656CLL;
    if (a1 != 4)
    {
      v7 = 0x6C6562616CLL;
      v8 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x64496D72616C61)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x8000000269335600;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xED00006465737365;
      if (v9 != 0x72506E6F74747562)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1651664246)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xE400000000000000;
        if (v9 != 1920298856)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x6574756E696DLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    v16 = 0x706D6F4365746164;
    v17 = 0x73746E656E6FLL;
LABEL_41:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v9 != v16)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = 0x6953656C646E6168;
    v17 = 0x796C746E656CLL;
    goto LABEL_41;
  }

  v15 = 0xE500000000000000;
  if (v9 != 0x6C6562616CLL)
  {
LABEL_52:
    v18 = sub_26932DF00();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_26930F154(char a1, char a2)
{
  if (*&aClock_3[8 * a1] == *&aClock_3[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_26932DF00();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_26930F1BC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x6B636F6C63;
    }

    else
    {
      v2 = 0x7065656C73;
    }

    v3 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v2 = 0x6D72616C61;
  }

  else if (a1 == 3)
  {
    v2 = 0x616C417065656C73;
    v3 = 0xEA00000000006D72;
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x72656D6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6B636F6C63;
    }

    else
    {
      v8 = 0x7065656C73;
    }

    v7 = 0xE500000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x616C417065656C73;
    v5 = 0xEA00000000006D72;
    if (a2 != 3)
    {
      v4 = 0x72656D6974;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x6D72616C61;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_26932DF00();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_26930F334(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006B7361;
  v3 = 0x54746E6572727543;
  v4 = 0x656C65446F646E55;
  if (a1 <= 3u)
  {
    v5 = 0xEF72656D69546574;
    if (a1 != 2)
    {
      v4 = 0xD000000000000014;
      v5 = 0x8000000269335680;
    }

    v8 = 0x616572436F646E55;
    v9 = 0xEF72656D69546574;
    if (!a1)
    {
      v8 = 0x54746E6572727543;
      v9 = 0xEB000000006B7361;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v5 = 0xEF6D72616C416574;
    v6 = 0xD000000000000013;
    v7 = 0x80000002693356E0;
    if (a1 != 7)
    {
      v6 = 0xD000000000000015;
      v7 = 0x8000000269335700;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xD000000000000013;
    v9 = 0x80000002693356A0;
    if (a1 != 4)
    {
      v8 = 0x616572436F646E55;
      v9 = 0xEF6D72616C416574;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v13 = "INCreateTimerIntent";
LABEL_34:
        v2 = (v13 - 32) | 0x8000000000000000;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v15 = 0x616572436F646E55;
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v13 = "INCreateAlarmIntent";
          goto LABEL_34;
        }

        v2 = 0x8000000269335700;
        v3 = 0xD000000000000015;
        goto LABEL_40;
      }

      v15 = 0x656C65446F646E55;
    }

    v2 = 0xEF6D72616C416574;
    if (v11 != v15)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v2 = 0x8000000269335680;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v14 = 0x656C65446F646E55;
    goto LABEL_30;
  }

  if (a2)
  {
    v14 = 0x616572436F646E55;
LABEL_30:
    v2 = 0xEF72656D69546574;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (v11 != v3)
  {
LABEL_45:
    v16 = sub_26932DF00();
    goto LABEL_46;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_26930F614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6B636F6C632E65;
  if (a1 <= 3u)
  {
    v3 = 0x8000000269335220;
    v4 = 0xD00000000000001BLL;
    if (a1 == 2)
    {
      v4 = 0x6C7070612E6D6F63;
      v3 = 0xEF6B636F6C632E65;
    }

    v6 = 0x80000002693351D0;
    v7 = 0xD000000000000015;
    if (a1)
    {
      v7 = 0xD000000000000018;
      v6 = 0x80000002693351F0;
    }

    v8 = a1 <= 1u;
  }

  else
  {
    v3 = 0x8000000269335280;
    v4 = 0xD00000000000001FLL;
    v5 = 0x80000002693352A0;
    if (a1 != 7)
    {
      v5 = 0x80000002693352E0;
    }

    if (a1 != 6)
    {
      v4 = 0xD000000000000035;
      v3 = v5;
    }

    v6 = 0x8000000269335240;
    v7 = 0xD000000000000013;
    if (a1 != 4)
    {
      v7 = 0xD000000000000010;
      v6 = 0x8000000269335260;
    }

    v8 = a1 <= 5u;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (v9 != 0x6C7070612E6D6F63)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x8000000269335220;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x80000002693351F0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x80000002693351D0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0x8000000269335240;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x8000000269335260;
      if (v9 != 0xD000000000000010)
      {
LABEL_47:
        v12 = sub_26932DF00();
        goto LABEL_48;
      }
    }
  }

  else if (a2 == 6)
  {
    v2 = 0x8000000269335280;
    if (v9 != 0xD00000000000001FLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v11 = "com.apple.siri.SiriTimeInternal.TimerIntentsExtension";
    }

    else
    {
      v11 = "com.apple.siri.SiriTimeInternal.AlarmIntentsExtension";
    }

    v2 = (v11 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000035)
    {
      goto LABEL_47;
    }
  }

  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v12 = 1;
LABEL_48:

  return v12 & 1;
}

uint64_t sub_26930F8BC()
{
  sub_26932D7D0();
}

uint64_t sub_26930FA00()
{
  sub_26932D7D0();
}

uint64_t sub_26930FB60()
{
  sub_26932D7D0();
}

uint64_t sub_26930FCF4()
{
  sub_26932D7D0();
}

SiriTimeInternal::SiriTimeEventSender::TaskType_optional __swiftcall SiriTimeEventSender.TaskType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriTimeEventSender.TaskType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x54746E6572727543;
    v7 = 0x656C65446F646E55;
    if (v1 != 2)
    {
      v7 = 0xD000000000000014;
    }

    if (*v0)
    {
      v6 = 0x616572436F646E55;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x656C65446F646E55;
    v3 = 0xD000000000000013;
    if (v1 != 7)
    {
      v3 = 0xD000000000000015;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (v1 != 4)
    {
      v4 = 0x616572436F646E55;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_269310030()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26930FB60();
  return sub_26932DF70();
}

uint64_t sub_269310080()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26930FB60();
  return sub_26932DF70();
}

unint64_t sub_2693100D0@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeEventSender.TaskType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriTimeInternal::SiriTimeEventSender::ReasonDescription_optional __swiftcall SiriTimeEventSender.ReasonDescription.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DF20();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t SiriTimeEventSender.ReasonDescription.rawValue.getter()
{
  result = 0x6E6F697461727544;
  switch(*v0)
  {
    case 1:
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      return result;
    case 6:
    case 8:
    case 0xC:
    case 0x13:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x12:
    case 0x19:
      result = 0xD00000000000001DLL;
      break;
    case 0x14:
    case 0x16:
    case 0x17:
      result = 0xD000000000000012;
      break;
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x18:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t sub_2693104CC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SiriTimeEventSender.ReasonDescription.rawValue.getter();
  v4 = v3;
  if (v2 == SiriTimeEventSender.ReasonDescription.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26932DF00();
  }

  return v7 & 1;
}

uint64_t sub_269310568()
{
  v1 = *v0;
  sub_26932DF50();
  SiriTimeEventSender.ReasonDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2693105D0()
{
  v2 = *v0;
  SiriTimeEventSender.ReasonDescription.rawValue.getter();
  sub_26932D7D0();
}

uint64_t sub_269310634()
{
  v1 = *v0;
  sub_26932DF50();
  SiriTimeEventSender.ReasonDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

unint64_t sub_2693106A4@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeEventSender.ReasonDescription.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriTimeEventSender.Attribute.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26932DC60();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_269310748()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_2693107CC()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_269310828@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26932DC60();

  *a2 = v5 != 0;
  return result;
}

uint64_t static SiriTimeEventSender.sendEvent(activityType:taskType:reason:attribute:description:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char *a4, _BYTE *a5)
{
  v23 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086D8, ":g");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v22 - v11;
  v13 = sub_26932C3A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = *a4;
  LOBYTE(a4) = *a5;
  sub_26932C240();
  v22[1] = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  (*(v14 + 16))(v17, a1, v13);
  sub_26932C2E0();
  sub_269310BE8(v23, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 17) = a4;
  sub_26932C2C0();
  sub_26932C250();

  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_269310BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086D8, ":g");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_269310C58(uint64_t *result, char a2, char a3)
{
  v4 = result;
  if ((a2 & 1) == 0)
  {
    v5 = *result;
    result = sub_26932C2B0();
  }

  if (a3 != 26)
  {
    v6 = *v4;
    SiriTimeEventSender.ReasonDescription.rawValue.getter();
    return sub_26932C2A0();
  }

  return result;
}

unint64_t sub_269310CEC()
{
  result = qword_2803086E0;
  if (!qword_2803086E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086E0);
  }

  return result;
}

unint64_t sub_269310D44()
{
  result = qword_2803086E8;
  if (!qword_2803086E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086E8);
  }

  return result;
}

unint64_t sub_269310D9C()
{
  result = qword_2803086F0;
  if (!qword_2803086F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeEventSender.ReasonDescription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTimeEventSender.ReasonDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269310F70()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B23E8);
  v1 = __swift_project_value_buffer(v0, qword_2814B23E8);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UsoTask.alarmEntity.getter()
{
  sub_26932CB20();
  sub_269311394(v11, v9);
  if (v10)
  {
    sub_269311394(v9, v8);
    sub_26932CC80();
    if (swift_dynamicCast())
    {

      sub_26932C950();
      goto LABEL_8;
    }

    sub_26932CC50();
    if (swift_dynamicCast())
    {

      sub_26932CAB0();
      goto LABEL_8;
    }

    sub_26932CC60();
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }

    sub_26932CD20();
    if (swift_dynamicCast())
    {

      sub_26932CEE0();
      v0 = v6;
      if (v6)
      {

        sub_269311404(v11);
        goto LABEL_9;
      }

      sub_26932CED0();
LABEL_8:

      sub_269311404(v11);
      v0 = v7;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      goto LABEL_27;
    }

    sub_26932CE00();
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }

    sub_26932CFB0();
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }

    sub_26932CCA0();
    if (swift_dynamicCast())
    {

      sub_26932CEF0();
      goto LABEL_8;
    }

    sub_26932CD10();
    if (swift_dynamicCast() || (sub_26932CC70(), swift_dynamicCast()) || (sub_26932CC90(), swift_dynamicCast()))
    {
LABEL_7:

      sub_26932CC40();
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  if (qword_2814B23E0 != -1)
  {
    swift_once();
  }

  v1 = sub_26932D6B0();
  __swift_project_value_buffer(v1, qword_2814B23E8);
  v2 = sub_26932D690();
  v3 = sub_26932D9A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2692D8000, v2, v3, "Parse entity: failed to parse task with unknown task. Returning nil entity", v4, 2u);
    MEMORY[0x26D639280](v4, -1, -1);
  }

  sub_269311404(v11);
  v0 = 0;
LABEL_27:
  sub_269311404(v9);
  return v0;
}

uint64_t sub_269311394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086F8, &qword_269331FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269311404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086F8, &qword_269331FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26931146C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308700);
  v1 = __swift_project_value_buffer(v0, qword_280308700);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double UsoEntity_common_Duration.valueInSeconds.getter()
{
  v0 = sub_26932CBC0();
  if (!v0)
  {
    goto LABEL_34;
  }

  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_32;
  }

  v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_33:

LABEL_34:
    if (qword_280307C98 != -1)
    {
      swift_once();
    }

    v15 = sub_26932D6B0();
    __swift_project_value_buffer(v15, qword_280308700);
    v16 = sub_26932D690();
    v17 = sub_26932D9B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2692D8000, v16, v17, "DurationComponents is nil or empty!", v18, 2u);
      MEMORY[0x26D639280](v18, -1, -1);
    }

    v19 = objc_opt_self();

    [v19 defaultDuration];
    return result;
  }

LABEL_4:
  swift_getKeyPath();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D638850](v6, v1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v3 = sub_26932DAE0();
          if (!v3)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_30;
        }

        v7 = *(v1 + 8 * v6 + 32);

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      swift_getAtKeyPath();

      if (v21)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_18;
      }
    }

    MEMORY[0x26D638500](v8);
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26932D880();
    }

    sub_26932D8A0();
    v5 = v22;
  }

  while (v4 != v3);
LABEL_18:

  if (v5 >> 62)
  {
    v1 = sub_26932DAE0();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_20:
      v10 = 0;
      v11 = 0.0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D638850](v10, v5);
          v2 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v12 = *(v5 + 8 * v10 + 32);

          v2 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        UsoEntity_common_DurationComponent.valueInSeconds.getter();
        v14 = v13;

        v11 = v11 + v14;
        ++v10;
        if (v2 == v1)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 0.0;
LABEL_43:

  return v11;
}

id UsoEntity_common_DurationComponent.valueInSeconds.getter()
{
  if (sub_26932CF40())
  {
    sub_26932C960();

    if ((sub_2692F5B80(0.0, 1.0, 0.1, 0.3) & 0x100000000) != 0)
    {
      if (qword_280307C98 != -1)
      {
        swift_once();
      }

      v6 = sub_26932D6B0();
      __swift_project_value_buffer(v6, qword_280308700);
      v7 = sub_26932D690();
      v8 = sub_26932D9B0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2692D8000, v7, v8, "Failed to resolve parse to quantity value, use SiriTimeTimerConstants.minimumDuration as the default value", v9, 2u);
        MEMORY[0x26D639280](v9, -1, -1);
      }

      [objc_opt_self() minimumDuration];
    }

    else
    {
      sub_26931459C();
    }
  }

  else
  {
    if (qword_280307C98 != -1)
    {
      swift_once();
    }

    v1 = sub_26932D6B0();
    __swift_project_value_buffer(v1, qword_280308700);
    v2 = sub_26932D690();
    v3 = sub_26932D9B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2692D8000, v2, v3, "Value is nil in the DurationComponent, use SiriTimeTimerConstants.minimumDuration as the default value", v4, 2u);
      MEMORY[0x26D639280](v4, -1, -1);
    }

    v5 = objc_opt_self();

    return [v5 minimumDuration];
  }
}

uint64_t UsoEntity_common_Duration.dateComponents(direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v3 = sub_26932C0A0();
  v92 = *(v3 - 8);
  v4 = *(v92 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v96 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v74 - v7;
  v8 = sub_26932CEC0();
  v97 = *(v8 - 1);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308718, &qword_269330DA8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v106 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  v99 = *(v109 - 8);
  v18 = *(v99 + 64);
  v19 = MEMORY[0x28223BE20](v109);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = (&v74 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  KeyPath = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v74 - v29;
  v94 = sub_26932BE70();
  v93 = *(v94 - 8);
  v31 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v108 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26932CBC0();
  if (v33)
  {
    v34 = v33;
    v103 = v11;
    v104 = v21;
    v91 = a2;
    v35 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v33 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26932DAE0())
    {
      v102 = v8;
      v88 = v3;
      v37 = sub_26932C0B0();
      (*(*(v37 - 8) + 56))(v30, 1, 1, v37);
      v38 = sub_26932C0D0();
      (*(*(v38 - 8) + 56))(KeyPath, 1, 1, v38);
      sub_26932BE60();
      KeyPath = swift_getKeyPath();
      v8 = 0;
      v30 = MEMORY[0x277D84F90];
      v112 = MEMORY[0x277D84F90];
      while (1)
      {
        v39 = v8;
LABEL_6:
        if ((v34 & 0xC000000000000001) == 0)
        {
          break;
        }

        v3 = MEMORY[0x26D638850](v39, v34);
        v8 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
          goto LABEL_35;
        }

LABEL_9:
        v114 = v3;

        swift_getAtKeyPath();

        v3 = v110;
        if (!v110)
        {
          v39 = (v39 + 1);
          if (v8 == i)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }

        MEMORY[0x26D638500](v40);
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_26932D880();
        }

        sub_26932D8A0();
        v30 = v112;
        if (v8 == i)
        {
LABEL_18:

          if (v30 >> 62)
          {
            v42 = sub_26932DAE0();
            if (v42)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v42 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v42)
            {
LABEL_20:
              KeyPath = 0;
              v100 = v30 & 0xFFFFFFFFFFFFFF8;
              v101 = (v30 & 0xC000000000000001);
              v43 = (v99 + 48);
              v34 = MEMORY[0x277D84F90];
              v8 = &qword_269330DA8;
              while (1)
              {
                if (v101)
                {
                  MEMORY[0x26D638850](KeyPath, v30);
                  v3 = KeyPath + 1;
                  if (__OFADD__(KeyPath, 1))
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  if (KeyPath >= *(v100 + 16))
                  {
                    goto LABEL_38;
                  }

                  v44 = *(v30 + 8 * KeyPath + 32);

                  v3 = KeyPath + 1;
                  if (__OFADD__(KeyPath, 1))
                  {
                    goto LABEL_37;
                  }
                }

                v35 = v30;

                v45 = v106;
                UsoEntity_common_DurationComponent.componentValue.getter(v106);
                sub_269314864(v45, v17, &qword_280308718, &qword_269330DA8);

                if ((*v43)(v17, 1, v109) == 1)
                {
                  sub_2692EB48C(v17, &qword_280308718, &qword_269330DA8);
                  v30 = v35;
                }

                else
                {
                  sub_269314864(v17, v105, &qword_2803081C0, &qword_26932EE78);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v34 = sub_2692E33D4(0, *(v34 + 16) + 1, 1, v34);
                  }

                  v30 = v35;
                  v46 = v34;
                  v47 = *(v34 + 16);
                  v48 = v46;
                  v49 = v46[3];
                  if (v47 >= v49 >> 1)
                  {
                    v48 = sub_2692E33D4(v49 > 1, v47 + 1, 1, v48);
                  }

                  v48[2] = v47 + 1;
                  v50 = v48 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v47;
                  v34 = v48;
                  sub_269314864(v105, v50, &qword_2803081C0, &qword_26932EE78);
                }

                ++KeyPath;
                if (v3 == v42)
                {
                  goto LABEL_48;
                }
              }
            }
          }

          v34 = MEMORY[0x277D84F90];
LABEL_48:

          v58 = *(v34 + 16);
          if (!v58)
          {
LABEL_108:

            return (*(v93 + 32))(v91, v108, v94);
          }

          v59 = (*(v99 + 80) + 32) & ~*(v99 + 80);
          v87 = v34;
          v60 = v34 + v59;
          v100 = *(v99 + 72);
          LODWORD(v106) = *MEMORY[0x277D5F020];
          v105 = (v97 + 104);
          v101 = (v97 + 8);
          v61 = (v92 + 16);
          v62 = (v92 + 88);
          LODWORD(v99) = *MEMORY[0x277CC9978];
          LODWORD(v97) = *MEMORY[0x277CC9988];
          v95 = *MEMORY[0x277CC9998];
          v90 = *MEMORY[0x277CC9968];
          v89 = *MEMORY[0x277CC9980];
          v86 = *MEMORY[0x277CC99A0];
          v85 = *MEMORY[0x277CC99A8];
          v84 = *MEMORY[0x277CC99B8];
          v83 = *MEMORY[0x277CC9958];
          v82 = *MEMORY[0x277CC99B0];
          v81 = *MEMORY[0x277CC9950];
          v80 = *MEMORY[0x277CC9940];
          v79 = *MEMORY[0x277CC9960];
          v78 = *MEMORY[0x277CC9930];
          v75 = (v92 + 8);
          LODWORD(v92) = *MEMORY[0x277CC99C0];
          v77 = *MEMORY[0x277CC99C8];
          v76 = *MEMORY[0x277CC9948];
          v63 = v88;
          v65 = v103;
          v64 = v104;
          while (2)
          {
            sub_2693148CC(v60, v64);
            v66 = v102;
            (*v105)(v65, v106, v102);
            sub_269314C5C(&qword_280308720, MEMORY[0x277D5F028]);
            sub_26932D830();
            sub_26932D830();
            if (v112 == v110 && v113 == v111)
            {
              (*v101)(v65, v66);
            }

            else
            {
              v68 = sub_26932DF00();
              (*v101)(v65, v66);

              if ((v68 & 1) == 0)
              {
                v64 = v104;
                v69 = *&v104[*(v109 + 48)];
                v70 = v96;
                (*v61)(v96, v104, v63);
                v71 = (*v62)(v70, v63);
                if (v71 != v99)
                {
                  if (v71 != v97)
                  {
                    if (v71 != v95)
                    {
                      if (v71 != v90)
                      {
                        if (v71 != v89)
                        {
                          if (v71 != v86)
                          {
                            if (v71 != v85)
                            {
                              if (v71 != v84)
                              {
                                if (v71 != v83)
                                {
                                  if (v71 != v82)
                                  {
                                    if (v71 != v81)
                                    {
                                      if (v71 != v80)
                                      {
                                        if (v71 != v79)
                                        {
                                          if (v71 != v78)
                                          {
                                            if (v71 != v92 && v71 != v77 && v71 != v76)
                                            {
                                              (*v75)(v96, v63);
                                            }

                                            goto LABEL_51;
                                          }

                                          goto LABEL_103;
                                        }

                                        goto LABEL_101;
                                      }

                                      goto LABEL_99;
                                    }

                                    goto LABEL_97;
                                  }

                                  goto LABEL_95;
                                }

                                goto LABEL_93;
                              }

                              goto LABEL_91;
                            }

                            goto LABEL_89;
                          }

                          goto LABEL_87;
                        }

                        goto LABEL_85;
                      }

                      goto LABEL_83;
                    }

                    goto LABEL_81;
                  }

                  goto LABEL_79;
                }

                break;
              }
            }

            v64 = v104;
            if (__OFSUB__(0, *&v104[*(v109 + 48)]))
            {
              __break(1u);
              return result;
            }

            v72 = v98;
            (*v61)(v98, v104, v63);
            v73 = (*v62)(v72, v63);
            if (v73 != v99)
            {
              if (v73 != v97)
              {
                if (v73 != v95)
                {
                  if (v73 != v90)
                  {
                    if (v73 != v89)
                    {
                      if (v73 != v86)
                      {
                        if (v73 != v85)
                        {
                          if (v73 != v84)
                          {
                            if (v73 != v83)
                            {
                              if (v73 != v82)
                              {
                                if (v73 != v81)
                                {
                                  if (v73 != v80)
                                  {
                                    if (v73 != v79)
                                    {
                                      if (v73 != v78)
                                      {
                                        if (v73 != v92 && v73 != v77 && v73 != v76)
                                        {
                                          (*v75)(v98, v63);
                                        }

LABEL_51:
                                        sub_2692EB48C(v64, &qword_2803081C0, &qword_26932EE78);
                                        v60 += v100;
                                        if (!--v58)
                                        {
                                          goto LABEL_108;
                                        }

                                        continue;
                                      }

LABEL_103:
                                      sub_26932BD10();
                                      goto LABEL_51;
                                    }

LABEL_101:
                                    sub_26932BD50();
                                    goto LABEL_51;
                                  }

LABEL_99:
                                  sub_26932BD20();
                                  goto LABEL_51;
                                }

LABEL_97:
                                sub_26932BD30();
                                goto LABEL_51;
                              }

LABEL_95:
                              sub_26932BE40();
                              goto LABEL_51;
                            }

LABEL_93:
                            sub_26932BD40();
                            goto LABEL_51;
                          }

LABEL_91:
                          sub_26932BE50();
                          goto LABEL_51;
                        }

LABEL_89:
                        sub_26932BE30();
                        goto LABEL_51;
                      }

LABEL_87:
                      sub_26932BE10();
                      goto LABEL_51;
                    }

LABEL_85:
                    sub_26932BDC0();
                    goto LABEL_51;
                  }

LABEL_83:
                  sub_26932BD90();
                  goto LABEL_51;
                }

LABEL_81:
                sub_26932BE00();
                goto LABEL_51;
              }

LABEL_79:
              sub_26932BDE0();
              goto LABEL_51;
            }

            break;
          }

          sub_26932BDA0();
          goto LABEL_51;
        }
      }

      if (v39 >= *(v35 + 16))
      {
        goto LABEL_36;
      }

      v3 = *(v34 + 8 * v39 + 32);

      v8 = (v39 + 1);
      if (!__OFADD__(v39, 1))
      {
        goto LABEL_9;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }
  }

  if (qword_280307C98 != -1)
  {
    swift_once();
  }

  v51 = sub_26932D6B0();
  __swift_project_value_buffer(v51, qword_280308700);
  v52 = sub_26932D690();
  v53 = sub_26932D9B0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_2692D8000, v52, v53, "DurationComponents is nil or empty!", v54, 2u);
    MEMORY[0x26D639280](v54, -1, -1);
  }

  v55 = sub_26932C0B0();
  (*(*(v55 - 8) + 56))(v30, 1, 1, v55);
  v56 = sub_26932C0D0();
  (*(*(v56 - 8) + 56))(KeyPath, 1, 1, v56);
  return sub_26932BE60();
}

uint64_t UsoEntity_common_DurationComponent.componentValue.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308718, &qword_269330DA8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308728, &qword_269330DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_26932CBF0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_26932CF30())
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_6;
  }

  sub_26932CBE0();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_6:
    v21 = &qword_280308728;
    v22 = &qword_269330DB0;
    v23 = v15;
    goto LABEL_7;
  }

  (*(v17 + 32))(v20, v15, v16);
  sub_269313F28(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v21 = &qword_280308718;
    v22 = &qword_269330DA8;
    v23 = v4;
LABEL_7:
    sub_2692EB48C(v23, v21, v22);
    v24 = 1;
    v25 = v34;
    return (*(v6 + 56))(v25, v24, 1, v5);
  }

  sub_269314864(v4, v11, &qword_2803081C0, &qword_26932EE78);
  if (!sub_26932CF40())
  {
    (*(v17 + 8))(v20, v16);
    goto LABEL_16;
  }

  sub_26932C960();

  v27 = sub_2692F5B80(0.0, 1.0, 0.1, 0.3);

  result = (*(v17 + 8))(v20, v16);
  if ((v27 & 0x100000000) != 0)
  {
LABEL_16:
    v28 = 1;
    goto LABEL_17;
  }

  if ((~v27 & 0x7F800000) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*&v27 <= -9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*&v27 < 9.2234e18)
  {
    v28 = *&v27;
LABEL_17:
    v29 = *(v5 + 48);
    v30 = v33;
    sub_269314864(v11, v33, &qword_2803081C0, &qword_26932EE78);
    v31 = sub_26932C0A0();
    v32 = v34;
    (*(*(v31 - 8) + 32))(v34, v30, v31);
    v25 = v32;
    v24 = 0;
    *(v32 + v29) = v28;
    return (*(v6 + 56))(v25, v24, 1, v5);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t DateComponents.update(with:value:)(uint64_t a1)
{
  v2 = sub_26932C0A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  result = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x277CC9978])
  {
    return sub_26932BDA0();
  }

  if (result == *MEMORY[0x277CC9988])
  {
    return sub_26932BDE0();
  }

  if (result == *MEMORY[0x277CC9998])
  {
    return sub_26932BE00();
  }

  if (result == *MEMORY[0x277CC9968])
  {
    return sub_26932BD90();
  }

  if (result == *MEMORY[0x277CC9980])
  {
    return sub_26932BDC0();
  }

  if (result == *MEMORY[0x277CC99A0])
  {
    return sub_26932BE10();
  }

  if (result == *MEMORY[0x277CC99A8])
  {
    return sub_26932BE30();
  }

  if (result == *MEMORY[0x277CC99B8])
  {
    return sub_26932BE50();
  }

  if (result == *MEMORY[0x277CC9958])
  {
    return sub_26932BD40();
  }

  if (result == *MEMORY[0x277CC99B0])
  {
    return sub_26932BE40();
  }

  if (result == *MEMORY[0x277CC9950])
  {
    return sub_26932BD30();
  }

  if (result == *MEMORY[0x277CC9940])
  {
    return sub_26932BD20();
  }

  if (result == *MEMORY[0x277CC9960])
  {
    return sub_26932BD50();
  }

  if (result == *MEMORY[0x277CC9930])
  {
    return sub_26932BD10();
  }

  if (result != *MEMORY[0x277CC99C0] && result != *MEMORY[0x277CC99C8] && result != *MEMORY[0x277CC9948])
  {
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_2693133D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v91 = &v82 - v3;
  v4 = sub_26932BE70();
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = *(v94 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v92 = &v82 - v8;
  v96 = sub_26932BF40();
  v93 = *(v96 - 8);
  v9 = *(v93 + 64);
  v10 = MEMORY[0x28223BE20](v96);
  v84 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v82 - v12;
  v13 = sub_26932BFF0();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v13);
  *&v86 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26932C0B0();
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = *(v89 + 64);
  MEMORY[0x28223BE20](v16);
  v99 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308718, &qword_269330DA8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v82 - v21;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  v97 = *(v101 - 8);
  v23 = *(v97 + 64);
  v24 = MEMORY[0x28223BE20](v101);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v98 = &v82 - v27;
  v28 = sub_26932CBF0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v82 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v82 - v37;
  v39 = *(v29 + 16);
  v39(&v82 - v37, v0, v28);
  v40 = (*(v29 + 88))(v38, v28);
  if (v40 != *MEMORY[0x277D5E978] && v40 != *MEMORY[0x277D5E970] && v40 != *MEMORY[0x277D5E940] && v40 != *MEMORY[0x277D5E948])
  {
    v83 = *(v29 + 8);
    v83(v38, v28, 1.0);
    sub_269313F28(v22);
    if ((*(v97 + 48))(v22, 1, v101) == 1)
    {
      sub_2692EB48C(v22, &qword_280308718, &qword_269330DA8);
      if (qword_280307C98 != -1)
      {
        swift_once();
      }

      v41 = sub_26932D6B0();
      __swift_project_value_buffer(v41, qword_280308700);
      v39(v36, v0, v28);
      v42 = sub_26932D690();
      v43 = sub_26932D9A0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v102 = v45;
        *v44 = 136315138;
        v39(v33, v36, v28);
        v46 = sub_26932D790();
        v48 = v47;
        (v83)(v36, v28);
        v49 = sub_2692DD5A8(v46, v48, &v102);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_2692D8000, v42, v43, "Unexpected duration unit %s. Using zero for this component.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x26D639280](v45, -1, -1);
        MEMORY[0x26D639280](v44, -1, -1);
      }

      else
      {

        (v83)(v36, v28);
      }
    }

    else
    {
      v50 = v98;
      sub_269314864(v22, v98, &qword_2803081C0, &qword_26932EE78);
      v51 = v86;
      sub_26932BFC0();
      sub_26932BFD0();
      (*(v87 + 8))(v51, v88);
      sub_26932BF20();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308558, &unk_2693304A0);
      v53 = sub_26932C0A0();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v87 = *(v54 + 72);
      v88 = v52;
      v56 = swift_allocObject();
      v86 = xmmword_26932EEA0;
      *(v56 + 16) = xmmword_26932EEA0;
      sub_2693148CC(v50, v26);
      (*(v54 + 32))(v56 + v55, v26, v53);
      sub_26931493C(v56);
      swift_setDeallocating();
      v57 = *(v54 + 8);
      v97 = v53;
      v83 = v57;
      (v57)(v56 + v55, v53);
      swift_deallocClassInstance();
      v58 = v92;
      sub_26932C020();
      v59 = v58;

      v60 = v91;
      sub_26932C070();
      v61 = v93;
      v62 = v96;
      if ((*(v93 + 48))(v60, 1, v96) == 1)
      {
        (*(v94 + 8))(v59, v95);
        (*(v61 + 8))(v100, v62);
        (*(v89 + 8))(v99, v90);
        sub_2692EB48C(v98, &qword_2803081C0, &qword_26932EE78);
        v63 = &qword_280308210;
        v64 = &qword_26932EEC0;
        v65 = v60;
      }

      else
      {
        v66 = v84;
        (*(v61 + 32))(v84, v60, v62);
        v67 = swift_allocObject();
        *(v67 + 16) = v86;
        v68 = v97;
        (*(v54 + 104))(v67 + v55, *MEMORY[0x277CC99A8], v97);
        sub_26931493C(v67);
        swift_setDeallocating();
        (v83)(v67 + v55, v68);
        swift_deallocClassInstance();
        v69 = v85;
        v70 = v100;
        v71 = v66;
        v72 = v61;
        v73 = v99;
        sub_26932C010();

        v97 = sub_26932BE20();
        v75 = v74;
        v76 = v95;
        v77 = *(v94 + 8);
        v77(v69, v95);
        v78 = *(v72 + 8);
        v79 = v71;
        v80 = v96;
        v78(v79, v96);
        v77(v59, v76);
        v78(v70, v80);
        (*(v89 + 8))(v73, v90);
        if ((v75 & 1) == 0)
        {
          v81 = *(v98 + *(v101 + 48));
          sub_2692EB48C(v98, &qword_2803081C0, &qword_26932EE78);
          return;
        }

        v63 = &qword_2803081C0;
        v64 = &qword_26932EE78;
        v65 = v98;
      }

      sub_2692EB48C(v65, v63, v64);
    }
  }
}

uint64_t sub_269313F28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26932CBF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D5E930])
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  if (v9 == *MEMORY[0x277D5E920])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v14 = *MEMORY[0x277CC9940];
    v15 = sub_26932C0A0();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    v16 = 2;
LABEL_10:
    *(a1 + v13) = v16;
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  if (v9 == *MEMORY[0x277D5E958])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v17 = MEMORY[0x277CC9988];
LABEL_7:
    v18 = *v17;
    v19 = sub_26932C0A0();
    (*(*(v19 - 8) + 104))(a1, v18, v19);
    v16 = 1;
    goto LABEL_10;
  }

  if (v9 == *MEMORY[0x277D5E980])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v20 = *MEMORY[0x277CC9988];
    v21 = sub_26932C0A0();
    (*(*(v21 - 8) + 104))(a1, v20, v21);
    v16 = 100;
    goto LABEL_10;
  }

  if (v9 == *MEMORY[0x277D5E978])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v17 = MEMORY[0x277CC99A8];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D5E938])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v17 = MEMORY[0x277CC99B0];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D5E970])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v17 = MEMORY[0x277CC99A0];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D5E940])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v17 = MEMORY[0x277CC9968];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D5E948])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v17 = MEMORY[0x277CC9980];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D5E928])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v22 = *MEMORY[0x277CC9930];
    v23 = sub_26932C0A0();
    (*(*(v23 - 8) + 104))(a1, v22, v23);
    v16 = 1000000;
    goto LABEL_10;
  }

  if (v9 == *MEMORY[0x277D5E960])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v17 = MEMORY[0x277CC9998];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D5E968])
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v13 = *(v12 + 48);
    v24 = *MEMORY[0x277CC9988];
    v25 = sub_26932C0A0();
    (*(*(v25 - 8) + 104))(a1, v24, v25);
    v16 = 10;
    goto LABEL_10;
  }

  v26 = *MEMORY[0x277D5E950];
  v27 = v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  if (v27 == v26)
  {
    v29 = *(v28 + 48);
    v30 = *MEMORY[0x277CC9940];
    v31 = v28;
    v32 = sub_26932C0A0();
    (*(*(v32 - 8) + 104))(a1, v30, v32);
    *(a1 + v29) = 1;
    return (*(*(v31 - 8) + 56))(a1, 0, 1, v31);
  }

  else
  {
    (*(*(v28 - 8) + 56))(a1, 1, 1);
    return (*(v5 + 8))(v8, v4);
  }
}

double sub_26931459C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308728, &qword_269330DB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_26932CBF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if (sub_26932CF30())
  {
    sub_26932CBE0();

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v11, v3, v4);
      v9 = v11;
      goto LABEL_10;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_2692EB48C(v3, &qword_280308728, &qword_269330DB0);
  if (qword_280307C98 != -1)
  {
    swift_once();
  }

  v12 = sub_26932D6B0();
  __swift_project_value_buffer(v12, qword_280308700);
  v13 = sub_26932D690();
  v14 = sub_26932D9A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2692D8000, v13, v14, "DurationComponent is underspecified and is missing a Unit, using Minute as default unit", v15, 2u);
    MEMORY[0x26D639280](v15, -1, -1);
  }

  (*(v5 + 104))(v9, *MEMORY[0x277D5E970], v4);
LABEL_10:
  sub_2693133D8();
  v17 = v16;
  (*(v5 + 8))(v9, v4);
  return v17;
}

uint64_t sub_269314864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2693148CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26931493C(uint64_t a1)
{
  v2 = sub_26932C0A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308730, &qword_269330DC0);
    v10 = sub_26932DB40();
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
      sub_269314C5C(&qword_280308738, MEMORY[0x277CC99D0]);
      v18 = sub_26932D740();
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
          sub_269314C5C(&qword_280308740, MEMORY[0x277CC99D0]);
          v25 = sub_26932D750();
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

uint64_t sub_269314C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269314CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308748, &qword_269330DC8);
    v3 = sub_26932DB40();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_26932DF50();

      sub_26932D7D0();
      result = sub_26932DF70();
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
          result = sub_26932DF00();
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

uint64_t sub_269314E0C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308750);
  v1 = __swift_project_value_buffer(v0, qword_280308750);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269314ED4()
{
  v0 = sub_26932D4A0();
  result = sub_26932D490();
  qword_2814B2638 = v0;
  unk_2814B2640 = MEMORY[0x277D5FDD8];
  qword_2814B2620 = result;
  return result;
}

uint64_t static SiriReferenceResolutionResolver.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_2814B2618 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_269314F88(&qword_2814B2620, v2);
}

uint64_t SiriReferenceResolutionResolver.resolveReferenceEntity(referenceEntity:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308768, &qword_269330DD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v93 - v5;
  v96 = sub_26932D6D0();
  v95 = *(v96 - 8);
  v6 = *(v95 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v102 = &v93 - v9;
  v103 = sub_26932D710();
  v105 = *(v103 - 8);
  v10 = *(v105 + 64);
  v11 = MEMORY[0x28223BE20](v103);
  v98 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v117 = &v93 - v13;
  v14 = sub_26932D6E0();
  v113 = *(v14 - 8);
  v114 = v14;
  v15 = *(v113 + 64);
  MEMORY[0x28223BE20](v14);
  v110 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308770, &unk_269330DD8);
  v17 = *(*(v112 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v112);
  v111 = (&v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v118 = &v93 - v20;
  v21 = sub_26932BFA0();
  v108 = *(v21 - 8);
  v109 = v21;
  v22 = *(v108 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26932D6B0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SiriTimeMeasurement();
  v31 = *(*(v30 - 1) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_26932D700();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v104 = a2;
  v101 = v34;
  v100 = v36;
  v99 = v35 + 56;
  (v36)(a2, 1, 1);
  if (qword_280307CA0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v25, qword_280308750);
  v38 = *(v26 + 16);
  v107 = v37;
  v38(v29);
  v106 = mach_absolute_time();
  *&v33[v30[7]] = xmmword_26932EEB0;
  *&v33[v30[8]] = 0x7FEFFFFFFFFFFFFFLL;
  v39 = v30[9];
  sub_26932BF90();
  v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v41 = sub_26932BF70();
  v119 = v33;
  v42 = v41;
  v43 = [v40 initWithNSUUID_];

  v44 = v119;
  (*(v108 + 8))(v24, v109);
  *(v44 + v39) = v43;
  *(v44 + 8) = 31;
  (v38)(v44 + v30[6], v29, v25);
  *v44 = v106;
  sub_26931A2C8();
  (*(v26 + 8))(v29, v25);
  v45 = v115[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  v46 = v110;
  *v110 = v116;
  v48 = v113;
  v47 = v114;
  (*(v113 + 104))(v46, *MEMORY[0x277D5FEA8], v114);

  v49 = v118;
  sub_26932D4C0();
  (*(v48 + 8))(v46, v47);
  SiriTimeMeasurement.logDelta()();
  v50 = v111;
  sub_2692E3B90(v49, v111, &qword_280308770, &unk_269330DD8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = v49;
  v53 = v50;
  if (EnumCaseMultiPayload == 1)
  {
    v54 = *v50;
    v55 = *v53;
    v56 = sub_26932D690();
    v57 = sub_26932D9A0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v120 = v54;
      v121[0] = v59;
      *v58 = 136315138;
      v60 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
      v61 = sub_26932D790();
      v63 = sub_2692DD5A8(v61, v62, v121);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_2692D8000, v56, v57, "Resolve reference from SRR was unsuccessful: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      v64 = v59;
      v44 = v119;
      MEMORY[0x26D639280](v64, -1, -1);
      MEMORY[0x26D639280](v58, -1, -1);
    }

    v65 = sub_26932BE80();
    sub_26931B26C(v65, 1, 0, 0x90u);

    sub_2692EB48C(v52, &qword_280308770, &unk_269330DD8);
    return sub_2692EB4EC(v44);
  }

  else
  {
    v67 = v105;
    v68 = v117;
    v69 = v103;
    (*(v105 + 32))(v117, v53, v103);
    v70 = v98;
    (*(v67 + 16))(v98, v68, v69);
    if ((*(v67 + 88))(v70, v69) == *MEMORY[0x277D5FEC0])
    {
      (*(v67 + 96))(v70, v69);
      v71 = v95;
      v72 = v102;
      v73 = v96;
      (*(v95 + 32))(v102, v70, v96);
      v74 = v94;
      (*(v71 + 16))(v94, v72, v73);
      v75 = sub_26932D690();
      v76 = sub_26932D9B0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = v74;
        v78 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v121[0] = v116;
        *v78 = 136315138;
        sub_269316308();
        v79 = sub_26932DDD0();
        v81 = v80;
        v82 = *(v71 + 8);
        v82(v77, v73);
        v83 = sub_2692DD5A8(v79, v81, v121);
        v67 = v105;

        *(v78 + 4) = v83;
        _os_log_impl(&dword_2692D8000, v75, v76, "Resolve reference from SRR was successful with resolved entity match: %s", v78, 0xCu);
        v84 = v116;
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
        v44 = v119;
        MEMORY[0x26D639280](v84, -1, -1);
        MEMORY[0x26D639280](v78, -1, -1);
      }

      else
      {

        v82 = *(v71 + 8);
        v82(v74, v73);
      }

      v90 = v97;
      v91 = v102;
      sub_26932D6C0();
      v82(v91, v73);
      (*(v67 + 8))(v117, v69);
      sub_2692EB48C(v118, &qword_280308770, &unk_269330DD8);
      sub_2692EB4EC(v44);
      v92 = v104;
      sub_2692EB48C(v104, &qword_280308768, &qword_269330DD0);
      v100(v90, 0, 1, v101);
      return sub_269316298(v90, v92);
    }

    else
    {
      v85 = sub_26932D690();
      v86 = sub_26932D9B0();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_2692D8000, v85, v86, "Resolve reference from SRR was successful but returned ambiguous or empty matches", v87, 2u);
        MEMORY[0x26D639280](v87, -1, -1);
      }

      v88 = *(v67 + 8);
      v88(v117, v69);
      sub_2692EB48C(v52, &qword_280308770, &unk_269330DD8);
      sub_2692EB4EC(v44);
      v89 = v104;
      sub_2692EB48C(v104, &qword_280308768, &qword_269330DD0);
      v100(v89, 1, 1, v101);
      return (v88)(v70, v69);
    }
  }
}

uint64_t SiriReferenceResolutionResolver.hasReference(usoEntity:)(uint64_t result)
{
  if (result)
  {
    v2 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);

    v3 = sub_26932D4B0();

    return v3 & 1;
  }

  return result;
}

uint64_t SiriReferenceResolutionResolver.getAlarmEntityFromDateTime()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308768, &qword_269330DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v25 - v2;
  v4 = sub_26932CDF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26932D000();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_26932CFF0();
  (*(v5 + 104))(v8, *MEMORY[0x277D5EE50], v4);
  sub_26932CFE0();
  (*(v5 + 8))(v8, v4);
  v12 = sub_26932CFD0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_26932CFC0();

  sub_26932CC10();

  v16 = MEMORY[0x26D6377F0](v15);
  if (!v16)
  {
    if (qword_280307CA0 != -1)
    {
      swift_once();
    }

    v19 = sub_26932D6B0();
    __swift_project_value_buffer(v19, qword_280308750);
    v20 = sub_26932D690();
    v21 = sub_26932D9B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2692D8000, v20, v21, "Creation of was common_DateTime entity was unsuccessful", v22, 2u);
      MEMORY[0x26D639280](v22, -1, -1);
    }

    return 0;
  }

  SiriReferenceResolutionResolver.resolveReferenceEntity(referenceEntity:)(v16, v3);
  v17 = sub_26932D700();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v3, 1, v17) == 1)
  {

    sub_2692EB48C(v3, &qword_280308768, &qword_269330DD0);
    return 0;
  }

  v24 = RREntity.alarmEntity()();

  (*(v18 + 8))(v3, v17);
  return v24;
}

uint64_t RREntity.alarmEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308780, &qword_269330DE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - v2;
  sub_26932D6F0();
  sub_26932CDA0();
  sub_26932CC20();

  if (!v27)
  {
    return 0;
  }

  if (!sub_26932CD60() || (v4 = sub_26932D280(), , !v4) || (v5 = sub_26932D2E0(), , !v5))
  {
LABEL_8:

    return 0;
  }

  v6 = sub_26932D210();
  if (v7 & 1) != 0 || (v8 = v6, v9 = sub_26932D220(), (v10))
  {

    goto LABEL_8;
  }

  v12 = v9;
  if (qword_280307CA0 != -1)
  {
    swift_once();
  }

  v13 = sub_26932D6B0();
  __swift_project_value_buffer(v13, qword_280308750);
  v14 = sub_26932D690();
  v15 = sub_26932D9B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2692D8000, v14, v15, "Creating a UsoEntity_common_Alarm instance from returned SRR result", v16, 2u);
    MEMORY[0x26D639280](v16, -1, -1);
  }

  v17 = sub_26932CD50();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_26932CD40();
  v21 = MEMORY[0x277D5E900];
  if (v8 >= 12)
  {
    v21 = MEMORY[0x277D5E908];
  }

  v22 = *v21;
  v23 = sub_26932CBD0();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v3, v22, v23);
  (*(v24 + 56))(v3, 0, 1, v23);
  if (sub_26932CD90())
  {
    v25 = sub_26932CBA0();
  }

  else
  {
    v25 = 0;
  }

  sub_269316360(v8, v12, v3, v25);

  sub_2692EB48C(v3, &qword_280308780, &qword_269330DE8);
  sub_26932CD30();

  MEMORY[0x26D6377F0](v20);
  sub_26932CA70();
  sub_26932CC20();

  return v27;
}

uint64_t sub_269316298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308768, &qword_269330DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_269316308()
{
  result = qword_280308778;
  if (!qword_280308778)
  {
    sub_26932D6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308778);
  }

  return result;
}

uint64_t sub_269316360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308780, &qword_269330DE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = sub_26932CBD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26932CE30();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_26932CE20();
  sub_26932CE10();
  v17 = *(v13 + 48);
  v18 = *(v13 + 52);
  swift_allocObject();
  sub_26932CE20();
  sub_26932CE10();
  v19 = sub_26932D050();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_26932D040();

  sub_26932D010();
  v51 = v16;

  sub_26932D030();

  sub_2692E3B90(v50, v7, &qword_280308780, &qword_269330DE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2692EB48C(v7, &qword_280308780, &qword_269330DE8);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v22 = sub_26932CEA0();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_26932CE90();
    sub_26932CE80();

    sub_26932D020();

    (*(v9 + 8))(v12, v8);
  }

  v25 = sub_26932CE70();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_26932CE60();

  sub_26932CE50();

  if (v52)
  {
    v29 = sub_26932CCF0();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();

    sub_26932CCE0();
    if (sub_26932CA10())
    {
      sub_26932CB00();
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        v34 = *(v13 + 48);
        v35 = *(v13 + 52);
        swift_allocObject();
        sub_26932CE20();
        sub_26932CE10();

        sub_26932CCB0();
      }
    }

    if (sub_26932CA20())
    {
      v36 = sub_26932CD00();

      if (v36)
      {
        sub_26932CB00();
        v38 = v37;

        if ((v38 & 1) == 0)
        {
          v39 = *(v13 + 48);
          v40 = *(v13 + 52);
          swift_allocObject();
          sub_26932CE20();
          sub_26932CE10();
          v41 = sub_26932CFA0();
          v42 = *(v41 + 48);
          v43 = *(v41 + 52);
          swift_allocObject();
          sub_26932CF90();

          sub_26932CF80();

          sub_26932CCC0();
        }
      }
    }

    if (sub_26932CA30())
    {
      sub_26932CB00();
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        v46 = *(v13 + 48);
        v47 = *(v13 + 52);
        swift_allocObject();
        sub_26932CE20();
        sub_26932CE10();

        sub_26932CCD0();
      }
    }

    sub_26932CE40();
  }

  return v28;
}

uint64_t DeviceUnit.isRemote.getter()
{
  v0 = sub_26932D570();
  result = 1;
  if (v0 <= 1999)
  {
    if (v0)
    {
      if (v0 == 1000)
      {
        return result;
      }

      return 0;
    }

    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v2 = sub_26932D6B0();
    __swift_project_value_buffer(v2, qword_280308788);
    v3 = sub_26932D690();
    v4 = sub_26932D9B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2692D8000, v3, v4, "Device proximity is 'unknown'. Assuming device is remote for indeterminate proximity state. This needs to be fixed by an upstream component from Time Domains.", v5, 2u);
      MEMORY[0x26D639280](v5, -1, -1);
    }

    return 1;
  }

  else if (v0 != 2000 && v0 != 3000)
  {
    return 0;
  }

  return result;
}

uint64_t DeviceUnit.shouldDismissSilently.getter()
{
  v0 = sub_26932D570();
  if (v0 <= 1999)
  {
    if (v0 && v0 != 1000)
    {
      goto LABEL_26;
    }

    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v6 = sub_26932D6B0();
    __swift_project_value_buffer(v6, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (!os_log_type_enabled(v2, v7))
    {
      goto LABEL_32;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v8 = "Firing alarm/timer is on far/unknown device: will dismiss with dialog.";
LABEL_30:
    _os_log_impl(&dword_2692D8000, v2, v7, v8, v4, 2u);
    v11 = 0;
    goto LABEL_31;
  }

  if (v0 != 2000 && v0 != 3000)
  {
    if (v0 == 4000)
    {
      if (qword_280307CB0 != -1)
      {
        swift_once();
      }

      v1 = sub_26932D6B0();
      __swift_project_value_buffer(v1, qword_280308788);
      v2 = sub_26932D690();
      v3 = sub_26932D9B0();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "Firing alarm/timer is on local device: will dismiss them silently with no dialog.";
LABEL_24:
        _os_log_impl(&dword_2692D8000, v2, v3, v5, v4, 2u);
        v11 = 1;
LABEL_31:
        MEMORY[0x26D639280](v4, -1, -1);
        goto LABEL_33;
      }

      goto LABEL_25;
    }

LABEL_26:
    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v12 = sub_26932D6B0();
    __swift_project_value_buffer(v12, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9A0();
    if (os_log_type_enabled(v2, v7))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v8 = "Firing alarm/timer is on unhandled proximity device. This is a programming error and needs to be handled. Defaulting to non-silent dismissal.";
      goto LABEL_30;
    }

LABEL_32:
    v11 = 0;
    goto LABEL_33;
  }

  if (_s27SiriVirtualDeviceResolution0C4UnitC0A12TimeInternalE10isCommunalSbvg_0())
  {
    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v9 = sub_26932D6B0();
    __swift_project_value_buffer(v9, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (!os_log_type_enabled(v2, v7))
    {
      goto LABEL_32;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v8 = "Firing alarm/timer is on nearby communal device: will dismiss with dialog.";
    goto LABEL_30;
  }

  if (qword_280307CB0 != -1)
  {
    swift_once();
  }

  v10 = sub_26932D6B0();
  __swift_project_value_buffer(v10, qword_280308788);
  v2 = sub_26932D690();
  v3 = sub_26932D9B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Firing alarm/timer is on nearby device: will dismiss silently with no dialog.";
    goto LABEL_24;
  }

LABEL_25:
  v11 = 1;
LABEL_33:

  return v11;
}

uint64_t DeviceUnit.shouldPromptForConfirmation.getter()
{
  v0 = sub_26932D570();
  if (v0 <= 1999)
  {
    if (!v0 || v0 == 1000)
    {
      if (qword_280307CB0 != -1)
      {
        swift_once();
      }

      v6 = sub_26932D6B0();
      __swift_project_value_buffer(v6, qword_280308788);
      v2 = sub_26932D690();
      v7 = sub_26932D9B0();
      if (os_log_type_enabled(v2, v7))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v8 = "Firing alarm/timer is not near local device: will require confirmation";
LABEL_25:
        _os_log_impl(&dword_2692D8000, v2, v7, v8, v4, 2u);
        v10 = 1;
        goto LABEL_26;
      }

LABEL_27:
      v10 = 1;
      goto LABEL_28;
    }

LABEL_21:
    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v11 = sub_26932D6B0();
    __swift_project_value_buffer(v11, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9A0();
    if (os_log_type_enabled(v2, v7))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v8 = "Firing alarm/timer reported unhandled proximity: will require confirmation – This is an error for an unhandled proximity case";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v0 != 2000 && v0 != 3000)
  {
    if (v0 == 4000)
    {
      if (qword_280307CB0 != -1)
      {
        swift_once();
      }

      v1 = sub_26932D6B0();
      __swift_project_value_buffer(v1, qword_280308788);
      v2 = sub_26932D690();
      v3 = sub_26932D9B0();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "Firing alarm/timer is on local device: will skip confirmation";
LABEL_19:
        _os_log_impl(&dword_2692D8000, v2, v3, v5, v4, 2u);
        v10 = 0;
LABEL_26:
        MEMORY[0x26D639280](v4, -1, -1);
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (qword_280307CB0 != -1)
  {
    swift_once();
  }

  v9 = sub_26932D6B0();
  __swift_project_value_buffer(v9, qword_280308788);
  v2 = sub_26932D690();
  v3 = sub_26932D9B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Firing alarm/timer is on nearby device: will skip confirmation";
    goto LABEL_19;
  }

LABEL_20:
  v10 = 0;
LABEL_28:

  return v10;
}

BOOL DeviceUnit.isLocal.getter()
{
  sub_26932D570();
  v0 = sub_26932D680();
  return v0 == sub_26932D680();
}

uint64_t sub_269317050()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308788);
  v1 = __swift_project_value_buffer(v0, qword_280308788);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_269317190()
{
  v1 = *v0;
  sub_26932D570();
  v2 = sub_26932D680();
  return v2 == sub_26932D680();
}

uint64_t TipKitSiriTimeSource.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26932DC60();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2693172CC()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_269317340()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t TipKitSiriTimeContext.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26932DC60();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_269317434()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_2693174A8()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_269317508@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26932DC60();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_269317580()
{
  result = qword_2803087A0;
  if (!qword_2803087A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803087A0);
  }

  return result;
}

unint64_t sub_2693175D8()
{
  result = qword_2803087A8;
  if (!qword_2803087A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803087A8);
  }

  return result;
}

uint64_t sub_26931765C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2370);
  v1 = __swift_project_value_buffer(v0, qword_2814B2370);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UsoEntity_common_Alarm.relativeOffsetInMinutes.getter()
{
  v0 = sub_26932CEC0();
  v73 = *(v0 - 8);
  v1 = *(v73 + 64);
  MEMORY[0x28223BE20](v0);
  v69 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087B0, &qword_269331018);
  v3 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v5 = &v64 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087B8, &qword_269331020);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v64 - v12;
  v13 = sub_26932CB80();
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v70 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087C0, &qword_269331028);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087C8, &qword_269331030);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v64 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v64 - v28;
  result = sub_26932CA50();
  if (!result)
  {
    return result;
  }

  v31 = result;
  if (!sub_26932CA50() || (v66 = v5, v32 = v0, v33 = sub_26932CB60(), , (v68 = v33) == 0))
  {
LABEL_35:

    return 0;
  }

  v34 = sub_26932CB90();
  v35 = v32;
  v67 = v31;
  if (v34)
  {

    v36 = sub_26932CB90();
    v65 = v32;
    if (v36)
    {
      sub_26932CB70();

      v37 = v76;
    }

    else
    {
      v37 = v76;
      (*(v76 + 56))(v29, 1, 1, v13);
    }

    (*(v37 + 104))(v27, *MEMORY[0x277D5E8C8], v13);
    (*(v37 + 56))(v27, 0, 1, v13);
    v38 = *(v16 + 48);
    sub_2692E3B90(v29, v19, &qword_2803087C8, &qword_269331030);
    sub_2692E3B90(v27, &v19[v38], &qword_2803087C8, &qword_269331030);
    v39 = *(v37 + 48);
    if (v39(v19, 1, v13) == 1)
    {
      sub_2692EB48C(v27, &qword_2803087C8, &qword_269331030);
      sub_2692EB48C(v29, &qword_2803087C8, &qword_269331030);
      if (v39(&v19[v38], 1, v13) == 1)
      {
        sub_2692EB48C(v19, &qword_2803087C8, &qword_269331030);
        v35 = v65;
        goto LABEL_16;
      }

LABEL_13:
      sub_2692EB48C(v19, &qword_2803087C0, &qword_269331028);
      goto LABEL_34;
    }

    sub_2692E3B90(v19, v24, &qword_2803087C8, &qword_269331030);
    if (v39(&v19[v38], 1, v13) == 1)
    {
      sub_2692EB48C(v27, &qword_2803087C8, &qword_269331030);
      sub_2692EB48C(v29, &qword_2803087C8, &qword_269331030);
      (*(v37 + 8))(v24, v13);
      goto LABEL_13;
    }

    v40 = v70;
    (*(v37 + 32))(v70, &v19[v38], v13);
    sub_269319470(&qword_2803087D8, MEMORY[0x277D5E8D0]);
    LODWORD(v76) = sub_26932D750();
    v41 = *(v37 + 8);
    v41(v40, v13);
    sub_2692EB48C(v27, &qword_2803087C8, &qword_269331030);
    sub_2692EB48C(v29, &qword_2803087C8, &qword_269331030);
    v41(v24, v13);
    sub_2692EB48C(v19, &qword_2803087C8, &qword_269331030);
    v35 = v65;
    if ((v76 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_16:
  if (!sub_26932CBB0())
  {
    goto LABEL_28;
  }

  if (sub_26932CBB0())
  {
    v42 = v75;
    sub_26932CEB0();

    v43 = v66;
    v44 = v73;
  }

  else
  {
    v44 = v73;
    v42 = v75;
    (*(v73 + 56))(v75, 1, 1, v35);
    v43 = v66;
  }

  v45 = v74;
  (*(v44 + 104))(v74, *MEMORY[0x277D5F018], v35);
  (*(v44 + 56))(v45, 0, 1, v35);
  v46 = *(v72 + 48);
  sub_2692E3B90(v42, v43, &qword_2803087B8, &qword_269331020);
  sub_2692E3B90(v45, v43 + v46, &qword_2803087B8, &qword_269331020);
  v47 = *(v44 + 48);
  if (v47(v43, 1, v35) == 1)
  {
    sub_2692EB48C(v45, &qword_2803087B8, &qword_269331020);
    sub_2692EB48C(v42, &qword_2803087B8, &qword_269331020);
    if (v47(v43 + v46, 1, v35) == 1)
    {
      sub_2692EB48C(v43, &qword_2803087B8, &qword_269331020);
      goto LABEL_28;
    }

LABEL_25:
    sub_2692EB48C(v43, &qword_2803087B0, &qword_269331018);
    goto LABEL_34;
  }

  v48 = v71;
  sub_2692E3B90(v43, v71, &qword_2803087B8, &qword_269331020);
  if (v47(v43 + v46, 1, v35) == 1)
  {
    sub_2692EB48C(v74, &qword_2803087B8, &qword_269331020);
    sub_2692EB48C(v75, &qword_2803087B8, &qword_269331020);
    (*(v44 + 8))(v48, v35);
    goto LABEL_25;
  }

  v49 = v43 + v46;
  v50 = v69;
  (*(v44 + 32))(v69, v49, v35);
  sub_269319470(&qword_2803087D0, MEMORY[0x277D5F028]);
  v51 = sub_26932D750();
  v52 = *(v44 + 8);
  v52(v50, v35);
  sub_2692EB48C(v74, &qword_2803087B8, &qword_269331020);
  sub_2692EB48C(v75, &qword_2803087B8, &qword_269331020);
  v52(v48, v35);
  sub_2692EB48C(v43, &qword_2803087B8, &qword_269331020);
  if ((v51 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  v53 = UsoEntity_common_Duration.valueInSeconds.getter();
  [objc_opt_self() minimumDuration];
  if (v54 >= v53)
  {
LABEL_34:

    goto LABEL_35;
  }

  if (qword_2814B2368 != -1)
  {
    v76 = 0x404E000000000000;
    swift_once();
  }

  v55 = sub_26932D6B0();
  __swift_project_value_buffer(v55, qword_2814B2370);
  v56 = sub_26932D690();
  v57 = sub_26932D9B0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v77 = v59;
    *v58 = 136315138;
    v60 = sub_26932D920();
    v62 = sub_2692DD5A8(v60, v61, &v77);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_2692D8000, v56, v57, "Got UsoEntity_common_Alarm relativeOffsetInMinutes (from now): %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x26D639280](v59, -1, -1);
    MEMORY[0x26D639280](v58, -1, -1);
  }

  v63 = sub_26932D910();

  return v63;
}

uint64_t UsoEntity_common_Alarm.eligibleForTimerReformation.getter()
{
  v0 = UsoEntity_common_Alarm.relativeOffsetInMinutes.getter();
  if (!v0 || (v1 = v0, [v0 doubleValue], v3 = v2, v1, v4 = objc_opt_self(), objc_msgSend(v4, sel_minimumDuration), v5 >= v3))
  {
    if (qword_2814B2368 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_9;
  }

  [v4 maxReformationDuration];
  if (v6 < v3)
  {
    if (qword_2814B2368 != -1)
    {
      swift_once();
    }

    v7 = sub_26932D6B0();
    __swift_project_value_buffer(v7, qword_2814B2370);
    v8 = sub_26932D690();
    v9 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (maxReformationDuration)";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!sub_26932CA60())
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v14 = sub_26932CF50();

  if (!v14)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_40:
    if (qword_2814B2368 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v22 = sub_26932D6B0();
      __swift_project_value_buffer(v22, qword_2814B2370);

      v23 = sub_26932D690();
      v24 = sub_26932D990();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v44[0] = v26;
        *v25 = 136315138;
        v27 = MEMORY[0x26D638530](v17, MEMORY[0x277D84F70] + 8);
        v29 = sub_2692DD5A8(v27, v28, v44);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_2692D8000, v23, v24, "UsoEntity_common_Alarm.eligibleForTimerReformation – recurrenceDateTimes: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D639280](v26, -1, -1);
        MEMORY[0x26D639280](v25, -1, -1);
      }

      v30 = *(v17 + 16);

      if (v30)
      {
        v8 = sub_26932D690();
        v9 = sub_26932D9B0();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_12;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (day recurrences found)";
        goto LABEL_11;
      }

      if (!sub_26932CA60() || (v31 = sub_26932CF70(), , !v31) || (v32 = sub_26932CBC0(), , !v32))
      {
        v34 = MEMORY[0x277D84F90];
        goto LABEL_73;
      }

      if (v32 >> 62)
      {
        v17 = sub_26932DAE0();
        if (!v17)
        {
LABEL_71:
          v34 = MEMORY[0x277D84F90];
LABEL_72:

LABEL_73:
          v39 = *(v34 + 2);

          v8 = sub_26932D690();
          v9 = sub_26932D9B0();
          v40 = os_log_type_enabled(v8, v9);
          if (!v39)
          {
            if (v40)
            {
              v41 = swift_slowAlloc();
              *v41 = 0;
              _os_log_impl(&dword_2692D8000, v8, v9, "UsoEntity_common_Alarm.eligibleForTimerReformation = true", v41, 2u);
              MEMORY[0x26D639280](v41, -1, -1);
            }

            return 1;
          }

          if (!v40)
          {
            goto LABEL_12;
          }

          v10 = swift_slowAlloc();
          *v10 = 0;
          v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (period recurrences found)";
LABEL_11:
          _os_log_impl(&dword_2692D8000, v8, v9, v11, v10, 2u);
          MEMORY[0x26D639280](v10, -1, -1);
          goto LABEL_12;
        }
      }

      else
      {
        v17 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_71;
        }
      }

      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      while ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x26D638850](v33, v32);
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_67;
        }

LABEL_57:
        v45 = v35;
        sub_269318F68(&v45, v42);

        if (v43)
        {
          sub_2692ED64C(v42, v44);
          sub_2692ED64C(v44, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2692E35C4(0, *(v34 + 2) + 1, 1, v34);
          }

          v38 = *(v34 + 2);
          v37 = *(v34 + 3);
          if (v38 >= v37 >> 1)
          {
            v34 = sub_2692E35C4((v37 > 1), v38 + 1, 1, v34);
          }

          *(v34 + 2) = v38 + 1;
          sub_2692ED64C(v42, &v34[32 * v38 + 32]);
        }

        else
        {
          sub_2692EB48C(v42, &qword_2803086F8, &qword_269331FB0);
        }

        ++v33;
        if (v36 == v17)
        {
          goto LABEL_72;
        }
      }

      if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v35 = *(v32 + 8 * v33 + 32);

      v36 = v33 + 1;
      if (!__OFADD__(v33, 1))
      {
        goto LABEL_57;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (v14 >> 62)
  {
    v15 = sub_26932DAE0();
    if (v15)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_38:
    v17 = MEMORY[0x277D84F90];
LABEL_39:

    goto LABEL_40;
  }

LABEL_17:
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26D638850](v16, v14);
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_23;
    }

    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

    v18 = *(v14 + 8 * v16 + 32);

    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

LABEL_23:
    v45 = v18;
    sub_2693189E0(&v45, v42);

    if (v43)
    {
      sub_2692ED64C(v42, v44);
      sub_2692ED64C(v44, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2692E35C4(0, *(v17 + 16) + 1, 1, v17);
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_2692E35C4((v20 > 1), v21 + 1, 1, v17);
      }

      *(v17 + 16) = v21 + 1;
      sub_2692ED64C(v42, (v17 + 32 * v21 + 32));
    }

    else
    {
      sub_2692EB48C(v42, &qword_2803086F8, &qword_269331FB0);
    }

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_9:
  v12 = sub_26932D6B0();
  __swift_project_value_buffer(v12, qword_2814B2370);
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (no valid relative duration)";
    goto LABEL_11;
  }

LABEL_12:

  return 0;
}

uint64_t sub_2693189E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087E0, &qword_269331040);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - v7;
  v9 = sub_26932CD80();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v17);
  v47 = &v35 - v20;
  v21 = *a1;
  result = sub_26932C9C0();
  if (!v45)
  {
    goto LABEL_11;
  }

  v41 = a2;
  v42 = v2;
  if (sub_26932CBA0())
  {
    v23 = sub_26932CA40();

    if (v23)
    {
      v24 = sub_26932CC30();
      v25 = v41;
      v41[3] = v24;

      *v25 = v23;
      return result;
    }
  }

  if (!sub_26932CB50())
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_9;
  }

  sub_26932CD70();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

LABEL_9:
    result = sub_2692EB48C(v8, &qword_2803087E0, &qword_269331040);
LABEL_10:
    a2 = v41;
LABEL_11:
    *a2 = 0u;
    *(a2 + 1) = 0u;
    return result;
  }

  v37 = *(v10 + 32);
  v38 = v10 + 32;
  v37(v47, v8, v9);
  v26 = *MEMORY[0x277D5ED08];
  v36 = *(v10 + 104);
  v36(v19, v26, v9);
  v27 = sub_269319470(&qword_2803087E8, MEMORY[0x277D5ED18]);
  sub_26932D830();
  v35 = v27;
  sub_26932D830();
  if (v45 == v43 && v46 == v44)
  {
    v39 = 1;
  }

  else
  {
    v39 = sub_26932DF00();
  }

  v28 = *(v10 + 8);
  v28(v19, v9);

  if ((v39 & 1) == 0)
  {
    v36(v16, *MEMORY[0x277D5ED00], v9);
    sub_26932D830();
    sub_26932D830();
    if (v45 == v43 && v46 == v44)
    {
      v28(v16, v9);
LABEL_20:

      goto LABEL_22;
    }

    v29 = sub_26932DF00();
    v28(v16, v9);

    if (v29)
    {
      goto LABEL_22;
    }

    v32 = v28;
    v33 = v40;
    v36(v40, *MEMORY[0x277D5ED10], v9);
    sub_26932D830();
    sub_26932D830();
    if (v45 == v43 && v46 == v44)
    {
      v32(v33, v9);
      goto LABEL_20;
    }

    v34 = sub_26932DF00();
    v32(v33, v9);

    if ((v34 & 1) == 0)
    {
      v32(v47, v9);

      goto LABEL_10;
    }
  }

LABEL_22:
  v30 = v41;
  v41[3] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v37(boxed_opaque_existential_1, v47, v9);
}

uint64_t sub_269318F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v4 = sub_26932CBF0();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087F0, &qword_269331048);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308728, &qword_269330DB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v39 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v34[-v19];
  v21 = *a1;
  result = sub_26932C9C0();
  if (!v42)
  {
    goto LABEL_15;
  }

  v23 = sub_26932CF30();
  if (!v23)
  {
LABEL_14:

LABEL_15:
    v31 = v41;
    *v41 = 0u;
    *(v31 + 1) = 0u;
    return result;
  }

  v36 = v7;
  v37 = v23;
  v38 = v2;
  sub_26932CBE0();
  v24 = v40;
  (*(v40 + 104))(v18, *MEMORY[0x277D5E940], v4);
  (*(v24 + 56))(v18, 0, 1, v4);
  v25 = *(v8 + 48);
  sub_2692E3B90(v20, v11, &qword_280308728, &qword_269330DB0);
  sub_2692E3B90(v18, &v11[v25], &qword_280308728, &qword_269330DB0);
  v26 = *(v24 + 48);
  if (v26(v11, 1, v4) == 1)
  {
    sub_2692EB48C(v18, &qword_280308728, &qword_269330DB0);
    sub_2692EB48C(v20, &qword_280308728, &qword_269330DB0);
    if (v26(&v11[v25], 1, v4) == 1)
    {
      sub_2692EB48C(v11, &qword_280308728, &qword_269330DB0);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v27 = v39;
  sub_2692E3B90(v11, v39, &qword_280308728, &qword_269330DB0);
  if (v26(&v11[v25], 1, v4) == 1)
  {
    sub_2692EB48C(v18, &qword_280308728, &qword_269330DB0);
    sub_2692EB48C(v20, &qword_280308728, &qword_269330DB0);
    (*(v40 + 8))(v27, v4);
LABEL_9:
    sub_2692EB48C(v11, &qword_2803087F0, &qword_269331048);
LABEL_10:

    goto LABEL_14;
  }

  v28 = v40;
  v29 = v36;
  (*(v40 + 32))(v36, &v11[v25], v4);
  sub_269319470(&qword_2803087F8, MEMORY[0x277D5E988]);
  v35 = sub_26932D750();
  v30 = *(v28 + 8);
  v30(v29, v4);
  sub_2692EB48C(v18, &qword_280308728, &qword_269330DB0);
  sub_2692EB48C(v20, &qword_280308728, &qword_269330DB0);
  v30(v39, v4);
  sub_2692EB48C(v11, &qword_280308728, &qword_269330DB0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (sub_26932CF40())
  {

    goto LABEL_14;
  }

  v32 = sub_26932CC00();
  v33 = v41;
  v41[3] = v32;

  *v33 = v37;
  return result;
}

uint64_t sub_269319470(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall SiriTimeMeasurement.logDelta()()
{
  v1 = type metadata accessor for SiriTimeMeasurement();
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = mach_absolute_time();
  if (qword_2814B2600 != -1)
  {
    v25 = v5;
    swift_once();
    v5 = v25;
  }

  if (v5 < *v0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!HIDWORD(qword_2814B2608))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = (v5 - *v0) * (qword_2814B2608 / HIDWORD(qword_2814B2608)) / 1000000.0;
  sub_26931AAE8();
  v7 = v0 + v1[7];
  v8 = *(v7 + 1);
  if (v8 != 2 && *(v0 + v1[8]) < v6)
  {
    v9 = *v7;
    sub_26931B5F8(*v7, *(v7 + 1));
    sub_26931B26C(v9, v8, 0, 0);
    sub_26931B60C(v9, v8);
  }

  v10 = v1[6];
  sub_26931ADD8(v0, v4);
  v11 = sub_26932D690();
  v12 = sub_26932D9B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315394;
    v26[7] = v4[8];
    v15 = SiriTimeMeasurement.LogDescription.rawValue.getter();
    v17 = v16;
    sub_2692EB4EC(v4);
    v18 = sub_2692DD5A8(v15, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308800, &qword_269331050);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D839F8];
    *(v19 + 16) = xmmword_26932EEA0;
    v21 = MEMORY[0x277D83A80];
    *(v19 + 56) = v20;
    *(v19 + 64) = v21;
    *(v19 + 32) = v6;
    v22 = sub_26932D780();
    v24 = sub_2692DD5A8(v22, v23, &v27);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_2692D8000, v11, v12, "SiriTime external dependency %s: %s ms", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v14, -1, -1);
    MEMORY[0x26D639280](v13, -1, -1);
  }

  else
  {

    sub_2692EB4EC(v4);
  }
}

uint64_t type metadata accessor for SiriTimeMeasurement()
{
  result = qword_2814B25F0;
  if (!qword_2814B25F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriTimeMeasurement.init(_:log:startTime:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v7 = sub_26932BFA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = type metadata accessor for SiriTimeMeasurement();
  *(a4 + v13[7]) = xmmword_26932EEB0;
  *(a4 + v13[8]) = 0x7FEFFFFFFFFFFFFFLL;
  v14 = v13[9];
  sub_26932BF90();
  v15 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v16 = sub_26932BF70();
  v17 = [v15 initWithNSUUID_];

  (*(v8 + 8))(v11, v7);
  *(a4 + v14) = v17;
  *(a4 + 8) = v12;
  v18 = v13[6];
  v19 = sub_26932D6B0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a4 + v18, a2, v19);
  *a4 = v23;
  sub_26931A2C8();
  return (*(v20 + 8))(a2, v19);
}

uint64_t sub_2693199E4()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 0xE:
      return 0x6C654472656D6954;
    case 2:
    case 0xF:
      v2 = 0x4472656D6954;
      goto LABEL_7;
    case 3:
    case 0x10:
      v3 = 0x5572656D6954;
      goto LABEL_9;
    case 4:
    case 0x11:
      return 0xD000000000000010;
    case 5:
    case 0x12:
      return 0xD000000000000010;
    case 6:
    case 0x13:
      return 0xD000000000000015;
    case 7:
    case 0x15:
      return 0x7465466D72616C41;
    case 8:
    case 0x16:
      return 0x6464416D72616C41;
    case 9:
    case 0x17:
      v3 = 0x556D72616C41;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6470000000000000;
      break;
    case 0xA:
    case 0x18:
      result = 0x6D65526D72616C41;
      break;
    case 0xB:
    case 0x19:
      v2 = 0x446D72616C41;
LABEL_7:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7369000000000000;
      break;
    case 0xC:
    case 0x1A:
      result = 0x6F6E536D72616C41;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x23:
      return result;
    case 0x21:
      result = 0xD000000000000010;
      break;
    case 0x22:
      result = 0x737365536576694CLL;
      break;
    default:
      result = 0x64644172656D6954;
      break;
  }

  return result;
}

SiriTimeInternal::SiriTimeMeasurement::LogDescription_optional __swiftcall SiriTimeMeasurement.LogDescription.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DF20();

  v5 = 0;
  v6 = 18;
  switch(v3)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v5 = 1;
      goto LABEL_28;
    case 2:
      v5 = 2;
      goto LABEL_28;
    case 3:
      v5 = 3;
      goto LABEL_28;
    case 4:
      v5 = 4;
      goto LABEL_28;
    case 5:
      v5 = 5;
      goto LABEL_28;
    case 6:
      v5 = 6;
      goto LABEL_28;
    case 7:
      v5 = 7;
      goto LABEL_28;
    case 8:
      v5 = 8;
      goto LABEL_28;
    case 9:
      v5 = 9;
      goto LABEL_28;
    case 10:
      v5 = 10;
      goto LABEL_28;
    case 11:
      v5 = 11;
      goto LABEL_28;
    case 12:
      v5 = 12;
      goto LABEL_28;
    case 13:
      v5 = 13;
      goto LABEL_28;
    case 14:
      v5 = 14;
      goto LABEL_28;
    case 15:
      v5 = 15;
      goto LABEL_28;
    case 16:
      v5 = 16;
      goto LABEL_28;
    case 17:
      v5 = 17;
LABEL_28:
      v6 = v5;
      break;
    case 18:
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    default:
      v6 = 36;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t SiriTimeMeasurement.LogDescription.rawValue.getter()
{
  result = 0x203A746163626F42;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 0xB:
    case 0xE:
    case 0x10:
    case 0x15:
    case 0x17:
    case 0x18:
    case 0x1A:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 5:
    case 0x1D:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 0xF:
    case 0x19:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x1F:
      result = 0xD00000000000001FLL;
      break;
    case 0x13:
    case 0x1C:
      result = 0xD000000000000025;
      break;
    case 0x1B:
    case 0x21:
      result = 0xD00000000000001CLL;
      break;
    case 0x1E:
      result = 0xD000000000000026;
      break;
    case 0x20:
      result = 0xD000000000000018;
      break;
    case 0x23:
      return result;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_26931A064(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SiriTimeMeasurement.LogDescription.rawValue.getter();
  v4 = v3;
  if (v2 == SiriTimeMeasurement.LogDescription.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26932DF00();
  }

  return v7 & 1;
}

uint64_t sub_26931A100()
{
  v1 = *v0;
  sub_26932DF50();
  SiriTimeMeasurement.LogDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_26931A168()
{
  v2 = *v0;
  SiriTimeMeasurement.LogDescription.rawValue.getter();
  sub_26932D7D0();
}

uint64_t sub_26931A1CC()
{
  v1 = *v0;
  sub_26932DF50();
  SiriTimeMeasurement.LogDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

unint64_t sub_26931A23C@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeMeasurement.LogDescription.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_26931A264()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  mach_timebase_info(v2);
  result = *v2;
  qword_2814B2608 = v2[0];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26931A2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = *(v0 + 8);
  if (v5 > 0x23)
  {
    goto LABEL_7;
  }

  if (((1 << v5) & 0x7FFE000) != 0)
  {
    v6 = 1028;
    goto LABEL_8;
  }

  if (((1 << v5) & 0x9F8000000) != 0)
  {
    return;
  }

  if (((1 << v5) & 0x600000000) != 0)
  {
    v6 = 1026;
  }

  else
  {
LABEL_7:
    v6 = 1027;
  }

LABEL_8:
  v20 = *(v0 + 8);
  sub_2693199E4();
  if (!v7)
  {
    return;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v8)
  {
    v19 = v8;
    v9 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
    if (v9)
    {
      v18 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
      if (v10)
      {
        v11 = v10;
        [v18 setDomainExecutionType_];
        [v19 setStartedOrChanged_];
        [v19 setContextId_];
        [v11 setFlowDomainExecutionContext_];
        sub_26932C2E0();
        v12 = v11;
        v13 = sub_26932C2D0();
        v14 = sub_26932D900();
        (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v13;

        sub_26931A848(0, 0, v4, &unk_2693311C8, v15);

        sub_26931BA0C(v4);
        return;
      }

      v16 = v18;
    }

    else
    {

      v16 = v19;
    }
  }

  else
  {
  }
}

uint64_t SiriTimeMeasurement.setBreachThreshold(_:logSubtype:)(uint64_t *a1, double a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for SiriTimeMeasurement();
  v7 = (v2 + *(v6 + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_26931B5F8(v4, v5);
  result = sub_26931B60C(v8, v9);
  *v7 = v4;
  v7[1] = v5;
  *(v2 + *(v6 + 32)) = a2;
  return result;
}

uint64_t sub_26931A688()
{
  sub_26932C240();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x277D5B8C0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26931A74C;
  v5 = v0[7];

  return MEMORY[0x2821BA730](v5, v1, v2);
}

uint64_t sub_26931A74C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26931BED0, 0, 0);
}

uint64_t sub_26931A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_26931BA74(a3, v26 - v10);
  v12 = sub_26932D900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26931BA0C(v11);
  }

  else
  {
    sub_26932D8F0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26932D8D0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26932D7A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_26931AAE8()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v15 - v2;
  v4 = *(v0 + 8);
  if (v4 < 0x1B || ((1 << v4) & 0x9F8000000) == 0)
  {
    v18 = *(v0 + 8);
    sub_2693199E4();
    if (v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
      if (v6)
      {
        v17 = v6;
        v7 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
        if (v7)
        {
          v16 = v7;
          v8 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
          if (v8)
          {
            v9 = v8;
            [v16 setExists_];
            [v17 setEnded_];
            [v17 setContextId_];
            [v9 setFlowDomainExecutionContext_];
            sub_26932C2E0();
            v10 = v9;
            v11 = sub_26932C2D0();
            v12 = sub_26932D900();
            (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
            v13 = swift_allocObject();
            v13[2] = 0;
            v13[3] = 0;
            v13[4] = v11;

            sub_26931A848(0, 0, v3, &unk_2693311F0, v13);

            sub_26931BA0C(v3);
            return;
          }

          v14 = v16;
        }

        else
        {

          v14 = v17;
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_26931ADD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriTimeMeasurement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26931AE5C()
{
  sub_26932C240();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x277D5B8C0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_26931AF20;
  v5 = v0[7];

  return MEMORY[0x2821BA730](v5, v1, v2);
}

uint64_t sub_26931AF20()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26931B01C, 0, 0);
}