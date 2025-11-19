unint64_t sub_26161E424(int64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_26162BADC() + 1) & ~v10;
    v14 = *(v4 + 72);
    v32 = a2 + 64;
    do
    {
      v15 = v14;
      v16 = v14 * v11;
      sub_2615D694C(*(a2 + 48) + v14 * v11, v8);
      v17 = *(a2 + 40);
      sub_26162BCEC();
      sub_26162B4FC();
      sub_2615D6788(&qword_281368730, MEMORY[0x277D85578]);
      sub_26162B87C();
      v18 = v33;
      v19 = v8[*(v33 + 20)];
      sub_26162BD0C();
      MEMORY[0x266706EF0](*&v8[*(v18 + 24)]);
      v20 = sub_26162BD1C();
      result = sub_2615D69B0(v8);
      v21 = v20 & v12;
      if (a1 >= v13)
      {
        if (v21 < v13)
        {
          v9 = v32;
          v14 = v15;
          goto LABEL_4;
        }

        v14 = v15;
        if (a1 >= v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v15;
        if (v21 >= v13 || a1 >= v21)
        {
LABEL_11:
          if (v14 * a1 < v16 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v16 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * a1 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v22 = *(a2 + 56);
          v23 = *(*(sub_26162B3BC() - 8) + 72);
          v24 = v23 * a1;
          result = v22 + v23 * a1;
          v25 = v23 * v11;
          v26 = v22 + v23 * v11 + v23;
          v27 = v24 < v25 || result >= v26;
          v9 = v32;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
          }

          else
          {
            a1 = v11;
            if (v24 != v25)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      v9 = v32;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

size_t sub_26161E758(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5268, &qword_261630E80);
  v10 = *(sub_26162B4FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26162B4FC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26161E930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53E8, &unk_2616311B0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26161EA34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26162B3BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_26162B86C();
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
      sub_2615D6788(&qword_281368738, MEMORY[0x277CC95F0]);
      v23 = sub_26162B88C();
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
    sub_26161F070(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_26161ED14(uint64_t a1)
{
  v2 = v1;
  v41 = sub_26162B3BC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A0, &qword_261631148);
  result = sub_26162BB1C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0]);
      result = sub_26162B86C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_26161F070(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_26162B3BC();
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
    sub_26161ED14(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26161F314();
      goto LABEL_12;
    }

    sub_26161F54C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0]);
  v15 = sub_26162B86C();
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
      sub_2615D6788(&qword_281368738, MEMORY[0x277CC95F0]);
      v23 = sub_26162B88C();
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
  result = sub_26162BC8C();
  __break(1u);
  return result;
}

void *sub_26161F314()
{
  v1 = v0;
  v2 = sub_26162B3BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A0, &qword_261631148);
  v7 = *v0;
  v8 = sub_26162BB0C();
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

uint64_t sub_26161F54C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26162B3BC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A0, &qword_261631148);
  v10 = sub_26162BB1C();
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
      sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0]);
      result = sub_26162B86C();
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

uint64_t sub_26161F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26162B4FC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v30 - v13;
  result = MEMORY[0x28223BE20](v12);
  v43 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v41 = *(v15 + 16);
    v42 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = a1 - a3;
    v21 = v17 + v18 * (a3 - 1);
    v37 = -v18;
    v38 = (v15 + 32);
    v39 = v17;
    v31 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    while (1)
    {
      v23 = v43;
      v41(v43, v22, v8);
      v24 = v44;
      sub_26162B44C();
      v25 = sub_26162B46C();
      v26 = *v19;
      (*v19)(v24, v8);
      result = v26(v23, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 - 1;
        v21 = v34 + v31;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v21, v28, v8);
      v21 += v37;
      v22 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26161FADC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_26162B4FC();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v49 = &v40 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v55 = a1;
  v54 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v47 = -v15;
      v44 = (v8 + 8);
      v45 = (v8 + 16);
      v30 = a4 + v19;
      v51 = a4;
      v43 = a1;
      while (2)
      {
        while (1)
        {
          v41 = v29;
          v46 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v55 = a2;
              v53 = v41;
              goto LABEL_58;
            }

            v32 = a3;
            v42 = v29;
            v33 = a3 + v47;
            v34 = v30 + v47;
            v35 = v49;
            v36 = v52;
            (*v45)(v49, v30 + v47, v52);
            v37 = v50;
            sub_26162B44C();
            LODWORD(v48) = sub_26162B46C();
            v38 = *v44;
            (*v44)(v37, v36);
            v38(v35, v36);
            if (v48)
            {
              break;
            }

            v29 = v34;
            a3 = v33;
            if (v32 < v30 || v33 >= v30)
            {
              swift_arrayInitWithTakeFrontToBack();
              v31 = v51;
              a1 = v43;
            }

            else
            {
              v31 = v51;
              a1 = v43;
              if (v32 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v30 = v34;
            a2 = v46;
            if (v34 <= v31)
            {
              goto LABEL_56;
            }
          }

          a3 = v33;
          if (v32 < v46 || v33 >= v46)
          {
            break;
          }

          v39 = v51;
          v29 = v42;
          a1 = v43;
          a2 = v46 + v47;
          if (v32 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v30 <= v39)
          {
            goto LABEL_56;
          }
        }

        a2 = v46 + v47;
        swift_arrayInitWithTakeFrontToBack();
        v29 = v42;
        a1 = v43;
        if (v30 > v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v55 = a2;
    v53 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v18;
    v53 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v46 = a3;
      v47 = v8 + 16;
      v44 = (v8 + 8);
      v45 = v21;
      do
      {
        v51 = a4;
        v22 = v15;
        v23 = v49;
        v24 = v52;
        (v45)(v49, a2, v52);
        v25 = v50;
        sub_26162B44C();
        v26 = sub_26162B46C();
        v27 = *v44;
        (*v44)(v25, v24);
        v27(v23, v24);
        if (v26)
        {
          v15 = v22;
          if (a1 < a2 || a1 >= a2 + v22)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v22;
            v28 = v46;
            a4 = v51;
          }

          else
          {
            v28 = v46;
            a4 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v22;
          }
        }

        else
        {
          v15 = v22;
          a4 = v51 + v22;
          if (a1 < v51 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v46;
          }

          else
          {
            v28 = v46;
            if (a1 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4;
        }

        a1 += v15;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v28);
    }
  }

LABEL_58:
  sub_2616200D8(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_261620038(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2616200C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2616200D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26162B4FC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2616201D0()
{
  v0 = sub_26162BC5C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_26162021C(void *a1)
{
  v2 = v1;
  v4 = sub_26162B41C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_26162B42C();
  (*(v5 + 32))(&v2[OBJC_IVAR___QLThumbnailExtension_identity], v8, v4);
  v10 = [v9 bundleIdentifier];
  v11 = sub_26162B8CC();
  v13 = v12;

  v14 = &v2[OBJC_IVAR___QLThumbnailExtension_generatorIdentifier];
  *v14 = v11;
  v14[1] = v13;
  v15 = [v9 bundleVersion];
  v16 = sub_26162B8CC();
  v18 = v17;

  v19 = &v2[OBJC_IVAR___QLThumbnailExtension_generatorVersion];
  *v19 = v16;
  v19[1] = v18;
  v20 = *MEMORY[0x277D43F18];
  sub_261618454(0, &qword_2813685E0, 0x277CCABB0);
  v21 = [v9 entitlementNamed:v20 ofClass:swift_getObjCClassFromMetadata()];
  sub_26162BABC();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v22 = v47;
    v23 = [v47 BOOLValue];
  }

  else
  {
    v23 = 0;
  }

  v2[OBJC_IVAR___QLThumbnailExtension_externalResourcesAccessAllowed] = v23;
  v24 = *MEMORY[0x277D43F10];
  v25 = sub_26162B8CC();
  v27 = sub_261618824(v25, v26);

  v2[OBJC_IVAR___QLThumbnailExtension_supportsInteractiveThumbnailBadges] = v27 & 1;
  v28 = *MEMORY[0x277D43F20];
  v29 = sub_26162B8CC();
  sub_2616189D8(v29, v30);
  v32 = v31;

  if (v32)
  {
    v33 = sub_26162BC5C();

    if (v33 >= 3)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }
  }

  else
  {
    v34 = 1;
  }

  v2[OBJC_IVAR___QLThumbnailExtension_supportedConcurrencyLevel] = v34;
  v35 = *MEMORY[0x277D43F00];
  v36 = sub_26162B8CC();
  v38 = sub_261618B8C(v36, v37);
  v40 = v39;

  v41 = v38;
  if (v40)
  {
    v41 = 0.0;
  }

  *&v2[OBJC_IVAR___QLThumbnailExtension_minimumThumbnailDimension] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5368, &qword_261631118);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 16) = 0;
  *&v2[OBJC_IVAR___QLThumbnailExtension_queueLock] = v42;
  v43 = type metadata accessor for ThumbnailExtension(0);
  v46.receiver = v2;
  v46.super_class = v43;
  return objc_msgSendSuper2(&v46, sel_init);
}

uint64_t sub_261620560(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_261620578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261614DE4;

  return sub_26161A208(a1, v4, v5, v6);
}

uint64_t sub_26162062C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26162069C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26161865C;

  return sub_2616151A4(a1, v5);
}

uint64_t sub_261620754(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261614DE4;

  return sub_2616151A4(a1, v5);
}

uint64_t sub_261620814(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

CGColorSpace *static QLIconModeRenderer.renderIcon(image:size:scale:flavor:variant:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = [a1 data];
  v13 = sub_26162B39C();
  v15 = v14;

  v16 = sub_26162B38C();
  sub_2616179D8(v13, v15);
  v17 = CGDataProviderCreateWithCFData(v16);

  if (!v17)
  {
    return 0;
  }

  v33 = a3;
  v18 = [a1 format];
  v19 = [v18 width];
  v20 = [v18 height];
  v21 = [v18 bitsPerComponent];
  v22 = [v18 bitsPerPixel];
  v23 = [v18 bytesPerRow];
  result = [v18 colorSpace];
  if (result)
  {
    v25 = result;
    v26 = CGImageCreate(v19, v20, v21, v22, v23, result, [v18 bitmapInfo], v17, 0, 0, kCGRenderingIntentDefault);

    if (v26)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_261630C60;
      v29 = objc_opt_self();
      v30 = v26;
      *(v28 + 32) = [v29 imageWithCGImage:v30 scale:1 orientation:1.0];
      sub_261618454(0, &qword_281368628, 0x277D43EA8);
      v31 = sub_26162B94C();

      v32 = [ObjCClassFromMetadata renderIconWithImages:v31 size:a2 scale:v33 flavor:a4 variant:{a5, a6}];

      return v32;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_261620CA4(void (*a1)(CGContext *), double a2, double a3, CGFloat a4, uint64_t a5, void **a6)
{
  v11 = sub_26162B9FC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  type metadata accessor for CGContext(0);
  if (a2 * a4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 * a4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = a3 * a4;
  v14 = COERCE__INT64(fabs(a3 * a4)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(a2 * a4)) > 0x7FEFFFFFFFFFFFFFLL || v14)
  {
    goto LABEL_12;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_26162B9EC();
  v15 = sub_26162B3CC();
  if (v15)
  {
    v16 = v15;
    CGContextScaleCTM(v15, a4, a4);
    a1(v16);
    v17 = *a6;
    *a6 = v16;
  }
}

QLIconModeRenderer __swiftcall QLIconModeRenderer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_261620FA8()
{
  v1 = sub_26162B67C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 64);
  v6 = *(v0 + 56);
  v10 = v6;
  if (v11 == 1)
  {
    return v6;
  }

  sub_26162BA3C();
  v8 = sub_26162B6CC();
  sub_26162B51C();

  sub_26162B66C();
  swift_getAtKeyPath();
  sub_261620814(&v10, &qword_27FEB5530, &qword_261631390);
  (*(v2 + 8))(v5, v1);
  return *&v9[1];
}

uint64_t sub_26162110C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_261622AD0(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v9 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5558, &qword_2616313B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5560, &qword_2616313C0);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_261622AD0((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + 16 * v7 + 32) = v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_261621240(uint64_t result, double a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v2 + 1;
    for (i = (result + 48); ; i += 2)
    {
      if (v4 == 2)
      {
        v11 = (result + 32 + 16 * v3);
        v12 = *v11;
        v13 = v11[1];
        return result;
      }

      if (!--v4)
      {
        break;
      }

      v6 = *(i - 2);
      if (v6 > a2)
      {
        v14 = *(i - 1);
        return result;
      }

      v7 = i + 2;
      v8 = *i;
      if (*i > a2)
      {
        v10 = *(v7 - 3) + (a2 - v6) * (*(v7 - 1) - *(v7 - 3)) / (v8 - v6);
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2616212D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = sub_26162B63C();
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v61 = (v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_26162B62C();
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v67 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26162B68C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5468, &qword_261631320);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v59 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5470, &qword_261631328);
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v17);
  v62 = v59 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5478, &qword_261631330);
  v20 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v22 = v59 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5480, &qword_261631338);
  v23 = *(*(v70 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v70);
  v26 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v65 = v59 - v27;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5488, &qword_261631340);
  v28 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v30 = (v59 - v29);
  if (*(a1 + 40))
  {
    *v16 = sub_26162B7DC();
    v16[1] = v31;
    v32 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5490, &qword_261631348) + 44);
    sub_261621D5C(a1);
    v33 = sub_26162B75C();
    v59[1] = a2;
    v34 = v33;
    v35 = sub_26162B6DC();
    v36 = v16 + *(v13 + 36);
    *v36 = v34;
    v36[8] = v35;
    (*(v9 + 104))(v12, *MEMORY[0x277CE00F0], v8);
    sub_261622F94();
    v37 = v62;
    sub_26162B72C();
    (*(v9 + 8))(v12, v8);
    sub_261620814(v16, &qword_27FEB5468, &qword_261631320);
    if (*a1 > *(a1 + 8))
    {
      v38 = *a1;
    }

    else
    {
      v38 = *(a1 + 8);
    }

    v39 = sub_26162110C(&unk_2873E2078);
    sub_261621240(v39, v38);
    v41 = v40;

    v42 = round(v41);
    v43 = *(v66 + 20);
    v44 = *MEMORY[0x277CE0118];
    v45 = sub_26162B6AC();
    v46 = v61;
    (*(*(v45 - 8) + 104))(v61 + v43, v44, v45);
    *v46 = v42;
    v46[1] = v42;
    if (*(a1 + 48) == 2)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 1.0;
    }

    v48 = v67;
    sub_261623078(v46, v67, MEMORY[0x277CDFC08]);
    *(v48 + *(v68 + 20)) = v47;
    v49 = &v22[*(v60 + 36)];
    sub_261623078(v48, v49, MEMORY[0x277CDFBC8]);
    *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54C0, &qword_261631360) + 36)) = 256;
    (*(v63 + 32))(v22, v37, v64);
    v50 = sub_26162B7DC();
    v52 = v51;
    v53 = &v26[*(v70 + 36)];
    sub_2616220C8(a1, v53);
    v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54C8, &qword_261631368) + 36));
    *v54 = v50;
    v54[1] = v52;
    sub_261623514(v22, v26, &qword_27FEB5478, &qword_261631330);
    v55 = v65;
    sub_261623514(v26, v65, &qword_27FEB5480, &qword_261631338);
    sub_2615DDFC4(v55, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
    sub_2616230E0();
    sub_2616232A8();
    sub_26162B6BC();
    return sub_2615DE034(v55);
  }

  else
  {
    sub_2616219B4(v71);
    v57 = v72[0];
    v30[2] = v71[2];
    v30[3] = v57;
    *(v30 + 58) = *(v72 + 10);
    v58 = v71[1];
    *v30 = v71[0];
    v30[1] = v58;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
    sub_2616230E0();
    sub_2616232A8();
    return sub_26162B6BC();
  }
}

uint64_t sub_2616219B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26162B77C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 32);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x266706D50](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;
  v12 = [v10 CGImage];

  sub_261620FA8();
  sub_26162B69C();
  sub_26162B6FC();
  sub_26162B79C();
  (*(v4 + 104))(v8, *MEMORY[0x277CE0FE0], v3);
  v13 = sub_26162B78C();

  (*(v4 + 8))(v8, v3);
  if (*v1 > *(v1 + 8))
  {
    v14 = *v1;
  }

  else
  {
    v14 = *(v1 + 8);
  }

  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = sub_26162110C(&unk_2873E2078);
  sub_261621240(v17, v14);

  sub_261620FA8();
  sub_26162B7DC();
  sub_26162B56C();
  v35 = 0;
  *&v34[22] = v37;
  *&v34[6] = v36;
  *&v34[38] = v38;
  *&v22 = v13;
  *(&v22 + 1) = v15 / v16;
  *v23 = 256;
  *&v23[18] = *&v34[16];
  *&v23[2] = *v34;
  *&v23[34] = *&v34[32];
  *&v23[48] = *(&v38 + 1);
  v24[0] = v13;
  v29 = v22;
  v33 = *(&v38 + 1);
  v32 = *&v23[32];
  v31 = *&v23[16];
  v30 = *v23;
  *&v24[1] = v15 / v16;
  v25 = 256;
  *&v28[14] = *(&v38 + 1);
  *v28 = *&v34[32];
  v27 = *&v34[16];
  v26 = *v34;
  sub_261618548(&v22, &v21, &qword_27FEB54E8, &qword_261631378);
  result = sub_261620814(v24, &qword_27FEB54E8, &qword_261631378);
  v18 = v30;
  v19 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v19;
  *(a1 + 64) = v33;
  *a1 = v29;
  *(a1 + 16) = v18;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_261621D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5568, &qword_2616313C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v24 - v4);
  v6 = sub_26162B68C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5570, &qword_2616313D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  if (*(a1 + 40) != 2)
  {
    goto LABEL_4;
  }

  v15 = *(a1 + 32);
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v19 = *(a1 + 32);
    }

    if (sub_26162BBEC() < 2)
    {
      goto LABEL_4;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_4:
    sub_2616219B4(v24);
    v16 = v25[0];
    v5[2] = v24[2];
    v5[3] = v16;
    *(v5 + 58) = *(v25 + 10);
    v17 = v24[1];
    *v5 = v24[0];
    v5[1] = v17;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
    sub_26162357C();
    sub_2616230E0();
    return sub_26162B6BC();
  }

  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  (*(v7 + 104))(v10, *MEMORY[0x277CE00F0], v6);
  sub_261623648(a1, v24);
  sub_26162B7CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5588, &qword_2616313D8);
  sub_26162B7BC();
  v23 = &v14[*(v11 + 36)];
  *v23 = *(a1 + 16) / *(a1 + 24);
  *(v23 + 4) = 0;
  sub_261618548(v14, v5, &qword_27FEB5570, &qword_2616313D0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB54D0, &qword_261631370);
  sub_26162357C();
  sub_2616230E0();
  sub_26162B6BC();
  return sub_261620814(v14, &qword_27FEB5570, &qword_2616313D0);
}

uint64_t sub_2616220C8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26162B74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26162B63C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5538, &qword_261631398);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  if (*(a1 + 6) == 2)
  {
    v18 = *(v15 + 56);

    return v18(a2, 1, 1, v13);
  }

  else
  {
    if (*a1 > a1[1])
    {
      v20 = *a1;
    }

    else
    {
      v20 = a1[1];
    }

    v38 = v15;
    v21 = sub_26162110C(&unk_2873E2078);
    sub_261621240(v21, v20);
    v23 = v22;

    v24 = round(v23);
    v25 = *(v9 + 20);
    v26 = *MEMORY[0x277CE0118];
    v27 = sub_26162B6AC();
    (*(*(v27 - 8) + 104))(v12 + v25, v26, v27);
    *v12 = v24;
    v12[1] = v24;
    (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v4);
    v28 = sub_26162B76C();
    sub_26162B55C();
    sub_261623454(v12, v17);
    v29 = *&v39 * 0.5;
    v30 = &v17[*(v13 + 68)];
    sub_261623454(v12, v30);
    *(v30 + *(sub_26162B62C() + 20)) = v29;
    v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5540, &qword_2616313A0) + 36);
    v32 = v40;
    *v31 = v39;
    *(v31 + 16) = v32;
    *(v31 + 32) = v41;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5548, &qword_2616313A8);
    *(v30 + *(v33 + 52)) = v28;
    *(v30 + *(v33 + 56)) = 256;
    v34 = sub_26162B7DC();
    v36 = v35;
    sub_2616234B8(v12);
    v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5550, &qword_2616313B0) + 36));
    *v37 = v34;
    v37[1] = v36;
    sub_261623514(v17, a2, &qword_27FEB5538, &qword_261631398);
    return (*(v38 + 56))(a2, 0, 1, v13);
  }
}

uint64_t sub_2616224AC(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_26162B74C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26162B61C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 > a4)
  {
    v19 = a3;
  }

  else
  {
    v19 = a4;
  }

  v20 = *a1;
  v21 = *(a2 + 32);
  v38 = v21 & 0xC000000000000001;
  v39 = a2;
  v37 = result;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x266706D50](1, v21);
  }

  else
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_14;
    }

    v22 = *(v21 + 40);
  }

  v23 = v22;
  v24 = v19 * 0.29296875;
  v25 = [v22 CGImage];

  sub_261620FA8();
  sub_26162B69C();
  LOWORD(v35) = 256;
  v34 = 0.0;
  sub_26162B6FC();
  sub_26162B79C();
  sub_26162B7EC();
  sub_26162B5DC();

  sub_26162B6EC();
  (*(v9 + 104))(v12, *MEMORY[0x277CE0EE0], v8);
  sub_26162B60C();
  (*(v9 + 8))(v12, v8);
  sub_26162B5FC();
  sub_261623680(v40);
  v26 = (*(v14 + 8))(v18, v37);
  MEMORY[0x28223BE20](v26);
  *(&v36 - 4) = a3 - v24;
  *(&v36 - 3) = 0;
  v34 = v24;
  v35 = v24;
  result = sub_26162B5CC();
  v27 = *a1;
  if (v38)
  {
    v28 = MEMORY[0x266706D50](0, v21);
LABEL_11:
    v29 = v28;
    v30 = [v28 CGImage];

    sub_261620FA8();
    sub_26162B69C();
    LOWORD(v35) = 256;
    v34 = 0.0;
    sub_26162B6FC();
    sub_26162B79C();
    sub_26162B5EC();

    type metadata accessor for QLIconModeRenderer(v31);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    sub_26162B7AC();
    sub_26162B5EC();
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v21 + 32);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_261622984(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for QLIconModeRenderer(a1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26162B7AC();
  sub_26162B5EC();
}

uint64_t sub_261622A64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9 = *(v1 + 64);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = sub_26162B7DC();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5460, &qword_261631318);
  return sub_2616212D0(v8, a1 + *(v6 + 44));
}

char *sub_261622AD0(char *a1, int64_t a2, char a3)
{
  result = sub_26161E930(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _sSo18QLIconModeRendererC27QuickLookThumbnailingDaemonE10renderIcon6images4size5scale6flavor7variantSo011QLTRenderedI0CSgSaySo15QLPlatformImageCG_So6CGSizeV12CoreGraphics7CGFloatVs5Int32VSo021QLThumbnailGenerationI7VariantVtFZ_0(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  result = swift_getKeyPath();
  v11 = result;
  v32 = 0;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x266706D50](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(a1 + 32);

    v13 = v12;
  }

  v14 = v13;
  v15 = [v13 CGImage];

  Width = CGImageGetWidth(v15);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x266706D50](0, a1);
  }

  else
  {
    v17 = *(a1 + 32);
  }

  v18 = v17;
  v19 = [v17 CGImage];

  Height = CGImageGetHeight(v19);
  *v27 = a4;
  *&v27[1] = a5;
  *&v27[2] = Width;
  *&v27[3] = Height;
  v27[4] = a1;
  v28 = a2;
  v29 = a3;
  v30 = v11;
  v31 = v32;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5458, &qword_261631228);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  MEMORY[0x2667067A0](v27);
  LOBYTE(v27[0]) = 0;
  v25 = 0;
  sub_26162B57C();
  v24 = sub_26162B58C();
  v26 = 0;
  MEMORY[0x28223BE20](v24);
  sub_26162B59C();

  return 0;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_261622ECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_261622F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261622F94()
{
  result = qword_27FEB5498;
  if (!qword_27FEB5498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5468, &qword_261631320);
    sub_2616236F4(&qword_27FEB54A0, &qword_27FEB54A8, &qword_261631350);
    sub_2616236F4(&qword_27FEB54B0, &qword_27FEB54B8, &qword_261631358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5498);
  }

  return result;
}

uint64_t sub_261623078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2616230E0()
{
  result = qword_27FEB54D8;
  if (!qword_27FEB54D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB54D0, &qword_261631370);
    sub_261623198();
    sub_2616236F4(&qword_27FEB5500, &qword_27FEB5508, &qword_261631388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB54D8);
  }

  return result;
}

unint64_t sub_261623198()
{
  result = qword_27FEB54E0;
  if (!qword_27FEB54E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB54E8, &qword_261631378);
    sub_261623224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB54E0);
  }

  return result;
}

unint64_t sub_261623224()
{
  result = qword_27FEB54F0;
  if (!qword_27FEB54F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB54F8, &qword_261631380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB54F0);
  }

  return result;
}

unint64_t sub_2616232A8()
{
  result = qword_27FEB5510;
  if (!qword_27FEB5510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5480, &qword_261631338);
    sub_261623360();
    sub_2616236F4(&qword_27FEB5528, &qword_27FEB54C8, &qword_261631368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5510);
  }

  return result;
}

unint64_t sub_261623360()
{
  result = qword_27FEB5518;
  if (!qword_27FEB5518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5478, &qword_261631330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5468, &qword_261631320);
    sub_261622F94();
    swift_getOpaqueTypeConformance2();
    sub_2616236F4(&qword_27FEB5520, &qword_27FEB54C0, &qword_261631360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5518);
  }

  return result;
}

uint64_t sub_261623454(uint64_t a1, uint64_t a2)
{
  v4 = sub_26162B63C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2616234B8(uint64_t a1)
{
  v2 = sub_26162B63C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261623514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26162357C()
{
  result = qword_27FEB5578;
  if (!qword_27FEB5578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEB5570, &qword_2616313D0);
    sub_2616236F4(&qword_27FEB5580, &qword_27FEB5588, &qword_2616313D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5578);
  }

  return result;
}

uint64_t sub_261623634(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2616236D4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_261622984(a1);
}

uint64_t sub_2616236F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void traceSQL_cold_1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 tracingPrefix];
  OUTLINED_FUNCTION_3();
  v9 = 2080;
  v10 = a3;
  _os_log_debug_impl(&dword_2615D3000, v5, OS_LOG_TYPE_DEBUG, "SQL %@ %s", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void traceSQL_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "SQL %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t _UIGraphicsBeginImageContextWithOptions_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __48__QLExtensionHostContextThumbnailOperation_main__block_invoke_cold_1(v0);
}