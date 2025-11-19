void *sub_21D9D5774(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
        sub_21DBF8E0C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_21DBF8E0C();
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

uint64_t sub_21D9D58E0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4;
  v8 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v5 + 32);
    v9 = v5 + 64;
    v10 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v5 + 64);
    v24 = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v16 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_21DBFC21C();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = result | 0x8000000000000000;
  v24 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v16 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v25 = a3;
  a3 = 0;
  v12 = 0;
  v13 = (v10 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!sub_21DBFC2DC())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_21D0D8CF0(0, a5);
      swift_dynamicCast();
      result = v26;
      v16 = v12;
      if (!v26)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v15 = v12;
    if (!v11)
    {
      break;
    }

    v16 = v12;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v5 + 56) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v25;
    if (v14 == v25)
    {
LABEL_31:
      v16 = v12;
      goto LABEL_32;
    }

    ++a2;
    a3 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v9 + 8 * v16);
    ++v15;
    if (v11)
    {
      v12 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v12 + 1)
  {
    v22 = v12 + 1;
  }

  else
  {
    v22 = v13;
  }

  v16 = v22 - 1;
LABEL_32:
  *v8 = v5;
  v8[1] = v9;
  v8[2] = v24;
  v8[3] = v16;
  v8[4] = v11;
  return a3;
}

void sub_21D9D5ADC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_21DBF5D5C();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_21D9D5D9C(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  sub_21DBFBD1C();
  sub_21D0D8CF0(0, a5);
  sub_21D19F2B8(a7, a5);
  result = sub_21DBFAB5C();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_21DBFBDBC())
      {
        goto LABEL_30;
      }

      sub_21D0D8CF0(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

void sub_21D9D5FCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_21D1074E8(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      v23 = v22;
      v24 = v30;
      sub_21D9D9028(v23, v30, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      sub_21D9D9028(v24, a2, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_21D9D6244(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
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

void *sub_21D9D6344(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21D9D63C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58860);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_21D9D6480(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64918);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21D9D6588(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21D9D660C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_21D9D669C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
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

size_t sub_21D9D674C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D9D6848(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = (*(a2 + 16))(&v4);
  if (result)
  {
    v3 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v3);
  }

  return result;
}

uint64_t sub_21D9D68C8(uint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v5[2] = &v6;
  v2 = sub_21D4E5FC8(sub_21D9D8F1C, v5, a2);
  v3 = sub_21D198784(v2);

  sub_21D7F5F48(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
  swift_allocObject();
  return sub_21D9BDF28();
}

uint64_t _s15RemindersUICore17TTRReminderEditorC11FilterMatchO2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      v6 = sub_21D322DA4(*a1, *a2);
      sub_21D9D82E8(v4, 0);
      sub_21D9D82E8(v2, 0);
      sub_21D9D830C(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      LOBYTE(v6) = sub_21D322DA4(*a1, *a2);
      sub_21D9D82E8(v4, 1u);
      sub_21D9D82E8(v2, 1u);
      sub_21D9D830C(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_21D9D830C(v7, v8);
      return v6 & 1;
    }

    goto LABEL_19;
  }

  if (!v2)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_21D9D830C(0, 2u);
      sub_21D9D830C(0, 2u);
      return 1;
    }

    goto LABEL_19;
  }

  if (v5 != 2 || v4 != 1)
  {
LABEL_19:
    sub_21D9D82E8(*a2, *(a2 + 8));
    sub_21D9D82E8(v2, v3);
    sub_21D9D830C(v2, v3);
    sub_21D9D830C(v4, v5);
    return 0;
  }

  v11 = 1;
  sub_21D9D830C(1, 2u);
  sub_21D9D830C(1, 2u);
  return v11;
}

uint64_t sub_21D9D6AE0(uint64_t a1, id a2, uint64_t a3, char a4)
{
  v6 = [a2 updateReminder_];
  sub_21D0D3954(a3, v10, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 16) = v6;
  sub_21D0D3954(v10, v7 + 24, &unk_27CE60D80);
  *(v7 + 64) = a4;
  v8 = [v6 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a3, &unk_27CE60D80);
  sub_21D0CF7E0(v10, &unk_27CE60D80);
  *(v7 + 72) = v8;
  return v7;
}

uint64_t sub_21D9D6BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = 0;
  v7 = *(v5 - 8);
  v8 = *(v7 + 72);
  v9 = (a1 + *(v5 + 20) + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  while (*v9 != 4)
  {
    v9 = (v9 + v8);
    if (v2 == ++v6)
    {
      return 0;
    }
  }

  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F2C0);

  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = [*(a2 + 16) objectID];
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_21D0C9000, v12, v13, "Removing hourly recurrenceRule because dueDate is allDay {reminderID: %{public}@}", v14, 0xCu);
    sub_21D0CF7E0(v15, &unk_27CE60070);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  return v6;
}

id sub_21D9D6DF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(v3 + 16);
  v7 = [v6 subtaskContext];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v6 saveRequest];
  v10 = sub_21DBFA12C();
  v11 = [v9 addReminderWithTitle:v10 toReminderSubtaskContextChangeItem:v8];

  if (v5 < 2 || v4)
  {
    v14 = v4;
    v15 = v5;
    v12 = TTRReminderEditor.moveAsSubtask(_:position:)(v11, &v14);
  }

  else
  {
  }

  return v11;
}

BOOL sub_21D9D6EFC(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 string];
    v4 = sub_21DBFA16C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  v9 = [a2 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  return v13 == 0;
}

uint64_t _s15RemindersUICore17TTRReminderEditorC10changeItem11undoContextACSo017REMReminderChangeF0C_AA07TTRUndoH0_pSgtcfC_0(void *a1, uint64_t a2)
{
  sub_21D0D3954(a2, v7, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 16) = a1;
  sub_21D0D3954(v7, v4 + 24, &unk_27CE60D80);
  *(v4 + 64) = 0;
  v5 = [a1 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(a2, &unk_27CE60D80);
  sub_21D0CF7E0(v7, &unk_27CE60D80);
  *(v4 + 72) = v5;
  return v4;
}

uint64_t type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties()
{
  result = qword_27CE648F0;
  if (!qword_27CE648F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D9D715C(void *a1, uint64_t *a2, void *a3)
{
  v40 = sub_21DBF4CAC();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v9 = *a2;
  v10 = *(*a2 + 16);
  if (v10)
  {
    v38 = (v6 + 8);
    sub_21DBF8E0C();
    v11 = (v9 + 16 * v10 + 24);
    v41 = v9;
    v42 = a3;
    while (v10 <= *(v9 + 16))
    {
      v24 = *(v11 - 1);
      v25 = *v11;
      [a1 rem:v24 removeHashtagInRange:*v11];
      if (a3)
      {
        v12 = sub_21DBFA23C();
        v14 = v13;
        v15 = [a3 name];
        v16 = sub_21DBFA16C();
        v18 = v17;

        v43 = v12;
        v44 = v14;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v16, v18);

        v19 = v43;
        v20 = v44;
        v21 = sub_21DBFA12C();
        [a1 replaceCharactersInRange:v24 withString:{v25, v21}];

        a3 = v42;
        v22 = MEMORY[0x223D42B30](v19, v20);

        v23 = [objc_opt_self() attributeFromHashtag_];
        [a1 rem:v23 addHashtag:v24 range:v22];

        v9 = v41;
      }

      else
      {
        v26 = [a1 string];
        if (!v26)
        {
          sub_21DBFA16C();
          v26 = sub_21DBFA12C();
        }

        v27 = [v26 rangeOfComposedCharacterSequenceAtIndex_];
        v29 = v28;
        if (v27 == sub_21DBF4B4C())
        {
        }

        else
        {
          v30 = [v26 substringWithRange_];
          v31 = sub_21DBFA16C();
          v33 = v32;

          sub_21D1954D0(v31, v33);
          v35 = v34;

          if (v35)
          {
            v36 = v39;
            sub_21DBF4C1C();
            v37 = sub_21DBF4BFC();

            (*v38)(v36, v40);

            v9 = v41;
            a3 = v42;
            if (v37)
            {
              [a1 deleteCharactersInRange_];
            }
          }

          else
          {

            v9 = v41;
            a3 = v42;
          }
        }
      }

      v11 -= 2;
      if (!--v10)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D9D74E0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 string];
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_opt_self() allowedAttributesForModel];
  type metadata accessor for Key(0);
  sub_21D9D77FC(&qword_280D17790, 255, type metadata accessor for Key);
  v8 = sub_21DBFAAAC();

  v9 = [v1 string];
  if (!v9)
  {
    sub_21DBFA16C();
    v9 = sub_21DBFA12C();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  if (!*(v8 + 16))
  {
    goto LABEL_10;
  }

  [v10 beginEditing];
  v11 = [v1 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D47B3FC;
  *(v17 + 24) = v16;
  v20[4] = sub_21D301E58;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_21D472CC4;
  v20[3] = &block_descriptor_227_0;
  v18 = _Block_copy(v20);
  sub_21DBF8E0C();
  v10 = v10;

  [v1 enumerateAttributesInRange:0 options:v15 usingBlock:{0, v18}];
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    [v10 endEditing];

LABEL_10:

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D9D77FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21D9D7884(uint64_t a1)
{
  v3 = *(sub_21DBF509C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21D9C62D4(a1, v1 + v4, v5);
}

id sub_21D9D7A2C(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchReminderWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

id sub_21D9D7AEC(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = [*(v2 + 16) hashtagContext];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  sub_21D9CB53C(v4, v5, v6, v7);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (v7)
    {
      v11 = v4;
      [v9 addHashtag_];
      v12 = [v11 objectID];
      [v9 undeleteHashtagWithID_];
    }

    else
    {
      v12 = sub_21DBFA12C();
      v11 = [v9 addHashtagWithType:v6 name:v12];
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21D9D9784;
    *(v14 + 24) = v13;
    v15 = v11;
  }

  return v11;
}

id sub_21D9D7C80(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return sub_21DBF8E0C();
  }
}

uint64_t sub_21D9D7CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_21D1074E8(a1, a2, type metadata accessor for TTRRecurrenceRuleModel);
  return sub_21D313BC4(v4, a2);
}

uint64_t sub_21D9D7EDC(uint64_t a1, uint64_t a2)
{
  result = sub_21D9D77FC(&qword_280D16328, a2, type metadata accessor for TTRReminderEditor);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_21D9D7F68()
{
  result = qword_27CE648D8;
  if (!qword_27CE648D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE648D8);
  }

  return result;
}

unint64_t sub_21D9D7FC0()
{
  result = qword_27CE648E0;
  if (!qword_27CE648E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE648E0);
  }

  return result;
}

unint64_t sub_21D9D8018()
{
  result = qword_27CE648E8;
  if (!qword_27CE648E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE648E8);
  }

  return result;
}

uint64_t initializeWithCopy for TTRHashtagSpecifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D9D7C80(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for TTRHashtagSpecifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D9D7C80(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_21D24B434(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for TTRHashtagSpecifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_21D24B434(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRHashtagSpecifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRHashtagSpecifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D9D82E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D9D830C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderEditor.FilterMatch(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D9D82E8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D9D830C(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRReminderEditor.FilterMatch(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D9D830C(v4, v5);
  return a1;
}

uint64_t *sub_21D9D83E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    v13 = *(a2 + v11);
    *(a1 + v11) = v13;
    *(a1 + v12) = *(a2 + v12);
    v14 = v13;
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21D9D8574(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }
}

char *sub_21D9D864C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  v11 = *&a2[v9];
  *&a1[v9] = v11;
  *&a1[v10] = *&a2[v10];
  v12 = v11;
  sub_21DBF8E0C();
  return a1;
}

char *sub_21D9D8790(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a1[v12];
  v14 = *&a2[v12];
  *&a1[v12] = v14;
  v15 = v14;

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  sub_21DBF8E0C();

  return a1;
}

char *sub_21D9D894C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];
  return a1;
}

char *sub_21D9D8A84(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

void sub_21D9D8C5C()
{
  sub_21D4D5850();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t objectdestroy_80Tm()
{
  v1 = *(type metadata accessor for TTRRecurrenceRuleModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for TTRRecurrenceEndModel(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3) && !swift_getEnumCaseMultiPayload())
  {
    v4 = sub_21DBF563C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D9D8F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = **(v2 + 16);
  result = (*(v4 + 16))(&v6);
  *a2 = result;
  return result;
}

uint64_t sub_21D9D9028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9D9090(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21D9CB054(a1, v1 + v4, v7);
}

uint64_t sub_21D9D9170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D9D91D0(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = *a1;
  result = sub_21D9D6BDC(*a1, a2);
  if (!v2)
  {
    v42 = a1;
    v47 = v14;
    v39 = 0;
    if (v17)
    {
      return v15[2];
    }

    v43 = v8;
    v44 = v11;
    v46 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15 + 2;
      v20 = v15[2];
      if (v19 == v20)
      {
        return v46;
      }

      *&v18 = 138543362;
      v41 = v18;
      v40 = v5;
      v45 = v6;
      while (v19 < v20)
      {
        v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v48 = v15;
        v23 = v15 + v22;
        v24 = *(v6 + 72);
        v25 = v24 * v19;
        v26 = v47;
        sub_21D1074E8(&v23[v24 * v19], v47, type metadata accessor for TTRRecurrenceRuleModel);
        if (*(v26 + *(v5 + 20)) == 4)
        {
          if (qword_280D0F2B8 != -1)
          {
            swift_once();
          }

          v27 = sub_21DBF84BC();
          __swift_project_value_buffer(v27, qword_280D0F2C0);

          v28 = sub_21DBF84AC();
          v29 = sub_21DBFAEDC();

          v30 = os_log_type_enabled(v28, v29);
          v6 = v45;
          if (v30)
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v31 = v41;
            v33 = [*(a2 + 16) objectID];
            *(v31 + 4) = v33;
            *v32 = v33;
            _os_log_impl(&dword_21D0C9000, v28, v29, "Removing hourly recurrenceRule because dueDate is allDay {reminderID: %{public}@}", v31, 0xCu);
            sub_21D0CF7E0(v32, &unk_27CE60070);
            MEMORY[0x223D46520](v32, -1, -1);
            MEMORY[0x223D46520](v31, -1, -1);
          }

          result = sub_21D9D9170(v47, type metadata accessor for TTRRecurrenceRuleModel);
          v15 = v48;
        }

        else
        {
          result = sub_21D9D9170(v26, type metadata accessor for TTRRecurrenceRuleModel);
          v34 = v46;
          if (v19 == v46)
          {
            v15 = v48;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            v35 = v42;
            v36 = a2;
            v37 = *v21;
            if (v46 >= *v21)
            {
              goto LABEL_29;
            }

            v38 = v24 * v46;
            result = sub_21D1074E8(&v23[v24 * v46], v44, type metadata accessor for TTRRecurrenceRuleModel);
            if (v19 >= v37)
            {
              goto LABEL_30;
            }

            sub_21D1074E8(&v23[v25], v43, type metadata accessor for TTRRecurrenceRuleModel);
            v15 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_21D256CA4(v15);
            }

            a2 = v36;
            result = sub_21D9D9618(v43, v15 + v22 + v38);
            if (v19 >= v15[2])
            {
              goto LABEL_31;
            }

            result = sub_21D9D9618(v44, v15 + v22 + v25);
            *v35 = v15;
            v5 = v40;
            v34 = v46;
          }

          v46 = v34 + 1;
          v6 = v45;
        }

        ++v19;
        v21 = v15 + 2;
        v20 = v15[2];
        if (v19 == v20)
        {
          return v46;
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

    __break(1u);
  }

  return result;
}

uint64_t sub_21D9D9618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_34Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_21D9D9794(unint64_t a1)
{
  if (a1 >= 5)
  {
    if (qword_280D0F340 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F348);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      sub_21D679D9C();
      v7 = sub_21DBFBC0C();
      v9 = sub_21D0CDFB4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_21D0C9000, v3, v4, "Unexpected authorization status: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D46520](v6, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = 0x1Cu >> a1;
  }

  return v1 & 1;
}

uint64_t sub_21D9D9904()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F348);
  v1 = __swift_project_value_buffer(v0, qword_280D0F348);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*sub_21D9D99E4(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_21D9D9A54(v2);
  return sub_21D4C30A8;
}

void (*sub_21D9D9A54(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
    a1[2] = v5;
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
    a1[2] = v5;
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[3] = v6;
  v8 = [v2 lastViewedNotificationsPermissionWarmingSheetDate];
  if (v8)
  {
    v9 = v8;
    sub_21DBF55FC();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 56))(v5, v10, 1, v11);
  sub_21D46CA8C(v5, v7);
  return sub_21D9D9BB4;
}

void sub_21D9D9BCC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = v4;
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(a1, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_21DBF55BC();
    (*(v9 + 8))(a1, v8);
    v11 = v12;
  }

  v13 = v11;
  [v6 *a4];
}

void (*sub_21D9D9CCC(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_21D9D9D3C(v2);
  return sub_21D4C3D30;
}

void (*sub_21D9D9D3C(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
    a1[2] = v5;
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
    a1[2] = v5;
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[3] = v6;
  v8 = [v2 lastDismissedNotificationsPermissionInlineRequestDate];
  if (v8)
  {
    v9 = v8;
    sub_21DBF55FC();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_21DBF563C();
  (*(*(v11 - 8) + 56))(v5, v10, 1, v11);
  sub_21D46CA8C(v5, v7);
  return sub_21D9D9E9C;
}

void sub_21D9D9EA8(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 24);
  if (a2)
  {
    v6 = *(a1 + 8);
    sub_21D46CAFC(*(a1 + 24), v6);
    v7 = sub_21DBF563C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_21DBF55BC();
      (*(v8 + 8))(v6, v7);
      v5 = *(a1 + 24);
      v6 = *(a1 + 8);
    }

    v13 = *(a1 + 16);
    [*a1 *a3];

    sub_21D0CF7E0(v5, &qword_27CE58D68);
  }

  else
  {
    v10 = sub_21DBF563C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_21DBF55BC();
      (*(v11 + 8))(v5, v10);
      v5 = *(a1 + 24);
    }

    v6 = *(a1 + 8);
    v13 = *(a1 + 16);
    [*a1 *a3];
  }

  free(v5);
  free(v13);

  free(v6);
}

id TTRNotificationsAccessService.authorizationStatus.getter()
{
  v1 = [*(v0 + 32) notificationSettings];
  v2 = [v1 authorizationStatus];

  return v2;
}

uint64_t TTRNotificationsAccessService.lastPresentedWarmingSheetDate.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t TTRNotificationsAccessService.lastPresentedWarmingSheetDate.setter(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v28[-v16];
  v18 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 8);
  v31 = ObjectType;
  v20(ObjectType, v18);
  v21 = *(v7 + 56);
  v33 = a1;
  sub_21D46CAFC(a1, v9);
  sub_21D46CAFC(v17, &v9[v21]);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    sub_21D46CAFC(v9, v14);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v26 = v30;
      (*(v4 + 32))(v30, &v9[v21], v3);
      sub_21D721DC4();
      v29 = sub_21DBFA10C();
      v27 = *(v4 + 8);
      v27(v26, v3);
      sub_21D0CF7E0(v17, &qword_27CE58D68);
      v27(v14, v3);
      sub_21D0CF7E0(v9, &qword_27CE58D68);
      v23 = v33;
      if (v29)
      {
        return sub_21D0CF7E0(v23, &qword_27CE58D68);
      }

      goto LABEL_7;
    }

    sub_21D0CF7E0(v17, &qword_27CE58D68);
    (*(v4 + 8))(v14, v3);
LABEL_6:
    sub_21D0CF7E0(v9, &qword_27CE5BE10);
    v23 = v33;
LABEL_7:
    v24 = v32;
    sub_21D46CAFC(v23, v32);
    (*(v18 + 16))(v24, v31, v18);
    return sub_21D0CF7E0(v23, &qword_27CE58D68);
  }

  sub_21D0CF7E0(v17, &qword_27CE58D68);
  if (v22(&v9[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v9, &qword_27CE58D68);
  v23 = v33;
  return sub_21D0CF7E0(v23, &qword_27CE58D68);
}

void (*TTRNotificationsAccessService.lastPresentedWarmingSheetDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(ObjectType, v5);
  return sub_21D9DA614;
}

uint64_t TTRNotificationsAccessService.lastDismissedInlineRequestDate.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_21D9DA680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21D46CAFC(a1, &v11 - v8);
  return a5(v9);
}

uint64_t TTRNotificationsAccessService.lastDismissedInlineRequestDate.setter(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v28[-v16];
  v18 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 32);
  v31 = ObjectType;
  v20(ObjectType, v18);
  v21 = *(v7 + 56);
  v33 = a1;
  sub_21D46CAFC(a1, v9);
  sub_21D46CAFC(v17, &v9[v21]);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    sub_21D46CAFC(v9, v14);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v26 = v30;
      (*(v4 + 32))(v30, &v9[v21], v3);
      sub_21D721DC4();
      v29 = sub_21DBFA10C();
      v27 = *(v4 + 8);
      v27(v26, v3);
      sub_21D0CF7E0(v17, &qword_27CE58D68);
      v27(v14, v3);
      sub_21D0CF7E0(v9, &qword_27CE58D68);
      v23 = v33;
      if (v29)
      {
        return sub_21D0CF7E0(v23, &qword_27CE58D68);
      }

      goto LABEL_7;
    }

    sub_21D0CF7E0(v17, &qword_27CE58D68);
    (*(v4 + 8))(v14, v3);
LABEL_6:
    sub_21D0CF7E0(v9, &qword_27CE5BE10);
    v23 = v33;
LABEL_7:
    v24 = v32;
    sub_21D46CAFC(v23, v32);
    (*(v18 + 40))(v24, v31, v18);
    return sub_21D0CF7E0(v23, &qword_27CE58D68);
  }

  sub_21D0CF7E0(v17, &qword_27CE58D68);
  if (v22(&v9[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v9, &qword_27CE58D68);
  v23 = v33;
  return sub_21D0CF7E0(v23, &qword_27CE58D68);
}

void (*TTRNotificationsAccessService.lastDismissedInlineRequestDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);
  return sub_21D9DABF0;
}

void sub_21D9DAC08(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_21D46CAFC(v5, v4);
    a3(v4);
    sub_21D0CF7E0(v5, &qword_27CE58D68);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

Swift::Void __swiftcall TTRNotificationsAccessService.resetInlineRequestDismissedDate()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  v3 = sub_21DBF563C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  TTRNotificationsAccessService.lastDismissedInlineRequestDate.setter(v2);
}

uint64_t sub_21D9DAD68()
{
  v1 = *(v0[27] + 32);
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_21D9DAE90;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64928);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21D9DB284;
  v0[21] = &block_descriptor_4;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:15 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21D9DAE90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_21D9DB218;
  }

  else
  {
    v2 = sub_21D9DAFA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D9DAFA0()
{
  v1 = v0[28];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_21D9DB0BC;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64920);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21D123608;
  v0[21] = &block_descriptor_7_5;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21D9DB0BC()
{

  return MEMORY[0x2822009F8](sub_21D9DB19C, 0, 0);
}

uint64_t sub_21D9DB19C()
{
  v1 = *(v0 + 208);
  v2 = [v1 authorizationStatus];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21D9DB218()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D9DB284(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t TTRNotificationsAccessService.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRNotificationsAccessService.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_21D9DB408()
{
  v1 = [*(v0 + 32) notificationSettings];
  v2 = [v1 authorizationStatus];

  return v2;
}

uint64_t sub_21D9DB458()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

void (*sub_21D9DB4B0(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 8))(ObjectType, v5);
  return sub_21D9DA614;
}

void (*sub_21D9DB59C(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);
  return sub_21D9DABF0;
}

uint64_t sub_21D9DB684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_21DBF563C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return TTRNotificationsAccessService.lastDismissedInlineRequestDate.setter(v2);
}

uint64_t sub_21D9DB738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D203124;

  return TTRNotificationsAccessService.requestSystemNotificationsAuthorization()();
}

uint64_t dispatch thunk of TTRNotificationsAccessServiceType.authorizationStatus()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1237C4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRNotificationsAccessServiceType.requestSystemNotificationsAuthorization()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D22C140;

  return v7(a1, a2);
}

void CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v12.origin.x = a3;
      v12.origin.y = a4;
      v12.size.width = a5;
      v12.size.height = a6;
      CGRectGetMinX(v12);
      v13.origin.x = a3;
      v13.origin.y = a4;
      v13.size.width = a5;
      v13.size.height = a6;
      CGRectGetWidth(v13);
    }

    else
    {
      if (qword_27CE56F38 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF84BC();
      __swift_project_value_buffer(v10, qword_27CE64930);
      v11 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v11);
      sub_21DAEAB00("unknown language direction", 26, 2);
      __break(1u);
    }
  }
}

CGPoint __swiftcall CGRect.topLeftPoint(isFlipped:)(Swift::Bool isFlipped)
{
  if (!isFlipped)
  {
    v1 = v1 + v2;
  }

  result.y = v1;
  return result;
}

CGPoint __swiftcall CGRect.bottomLeftPoint(isFlipped:)(Swift::Bool isFlipped)
{
  if (isFlipped)
  {
    v1 = v1 + v2;
  }

  result.y = v1;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

__C::CGRect __swiftcall CGRect.centered(at:)(CGPoint at)
{
  v3 = v2;
  v4 = v1;
  v5 = at.x - v1 * 0.5;
  v6 = at.y - v2 * 0.5;
  result.size.height = v3;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

double CGRect.pixelAligned(toScale:)(double a1, double a2)
{
  if (a1 == 1.0)
  {
    return floor(a2);
  }

  else
  {
    return floor(a1 * a2) / a1;
  }
}

uint64_t sub_21D9DBD5C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64930);
  v1 = __swift_project_value_buffer(v0, qword_27CE64930);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__C::CGRect __swiftcall CGRect.init(size:topLeftPoint:isFlipped:)(CGSize size, CGPoint topLeftPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  if (isFlipped)
  {
    y = topLeftPoint.y;
  }

  else
  {
    y = topLeftPoint.y - size.height;
  }

  x = topLeftPoint.x;
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

__C::CGRect __swiftcall CGRect.init(size:bottomLeftPoint:isFlipped:)(CGSize size, CGPoint bottomLeftPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  if (isFlipped)
  {
    y = bottomLeftPoint.y - size.height;
  }

  else
  {
    y = bottomLeftPoint.y;
  }

  x = bottomLeftPoint.x;
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

__C::CGRect __swiftcall CGRect.init(size:topRightPoint:isFlipped:)(CGSize size, CGPoint topRightPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  v5 = topRightPoint.x - size.width;
  y = topRightPoint.y - size.height;
  if (isFlipped)
  {
    y = topRightPoint.y;
  }

  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = v5;
  return result;
}

__C::CGRect __swiftcall CGRect.init(size:bottomRightPoint:isFlipped:)(CGSize size, CGPoint bottomRightPoint, Swift::Bool isFlipped)
{
  height = size.height;
  width = size.width;
  v5 = bottomRightPoint.x - size.width;
  y = bottomRightPoint.y - size.height;
  if (!isFlipped)
  {
    y = bottomRightPoint.y;
  }

  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = v5;
  return result;
}

uint64_t TTRRemindersListEditingState.editingItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  (*(a2 + 8))(a1, a2, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5E8E8);
    v11 = 1;
  }

  else
  {
    sub_21D1056FC(v9, a3, type metadata accessor for TTRRemindersListViewModel.Item);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t TTRRemindersListEditingState.editingAttribute.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  (*(a2 + 8))(a1, a2, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    result = sub_21D0CF7E0(v9, &qword_27CE5E8E8);
    v12 = 3;
  }

  else
  {
    v12 = v9[*(v10 + 48)];
    result = sub_21D106978(v9, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  *a3 = v12;
  return result;
}

unint64_t TTRRemindersListEditingState.loggingDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = TTRRemindersListEditingState.isEditingItem.getter(a1, a2);
  v5 = (*(a2 + 16))(a1, a2);
  v6 = 0xD000000000000014;
  if ((v5 & 1) == 0)
  {
    v6 = 0x20676E6974696465;
  }

  v7 = 0x7469646520746F6ELL;
  if (v5)
  {
    v7 = 0x20676E6974696465;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

BOOL TTRRemindersListEditingState.isEditingItem.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  TTRRemindersListEditingState.editingItem.getter(a1, a2, &v10 - v5);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_21D0CF7E0(v6, &unk_27CE5CD80);
  return v8;
}

uint64_t TTRRemindersListEditingState.isEditing(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  TTRRemindersListEditingState.editingItem.getter(a2, a3, v13);
  v23 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
  {
    sub_21D0CF7E0(v13, &unk_27CE5CD80);
    v24 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v22);
    sub_21D106978(v13, type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = 0;
  }

  v25 = *(v6 + 56);
  v25(v22, v24, 1, v5);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
  v25(v19, 0, 1, v5);
  v26 = *(v8 + 48);
  sub_21D569DB4(v22, v10);
  sub_21D569DB4(v19, &v10[v26]);
  v27 = *(v6 + 48);
  if (v27(v10, 1, v5) != 1)
  {
    sub_21D569DB4(v10, v16);
    if (v27(&v10[v26], 1, v5) != 1)
    {
      v29 = v32;
      sub_21D1056FC(&v10[v26], v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v28 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v16, v29);
      sub_21D106978(v29, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v19, &qword_27CE5FB90);
      sub_21D0CF7E0(v22, &qword_27CE5FB90);
      sub_21D106978(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v10, &qword_27CE5FB90);
      return v28 & 1;
    }

    sub_21D0CF7E0(v19, &qword_27CE5FB90);
    sub_21D0CF7E0(v22, &qword_27CE5FB90);
    sub_21D106978(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
    goto LABEL_9;
  }

  sub_21D0CF7E0(v19, &qword_27CE5FB90);
  sub_21D0CF7E0(v22, &qword_27CE5FB90);
  if (v27(&v10[v26], 1, v5) != 1)
  {
LABEL_9:
    sub_21D0CF7E0(v10, &qword_27CE5F2E0);
    v28 = 0;
    return v28 & 1;
  }

  sub_21D0CF7E0(v10, &qword_27CE5FB90);
  v28 = 1;
  return v28 & 1;
}

uint64_t TTRRemindersListEditingState.isEditing(_:of:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[1] = a2;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EAD0);
  MEMORY[0x28223BE20](v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  (*(a4 + 8))(a3, a4, v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  if ((*(*(v24 - 8) + 48))(v15, 1, v24) != 1)
  {
    v26 = v15[*(v24 + 48)];
    v27 = *(v16 + 48);
    sub_21D1056FC(v15, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    v18[v27] = v26;
    v28 = v18[*(v16 + 48)];
    sub_21D1056FC(v18, v22, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
    v29 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v12, v9);
    sub_21D106978(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106978(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if ((v29 & 1) == 0)
    {
      v25 = 0;
LABEL_21:
      sub_21D106978(v22, type metadata accessor for TTRRemindersListViewModel.Item);
      return v25 & 1;
    }

    if (v28)
    {
      if (v28 == 1)
      {
        v30 = 0xE500000000000000;
        v31 = 0x7365746F6ELL;
        if (!v23)
        {
LABEL_14:
          v32 = 0xE500000000000000;
          if (v31 != 0x656C746974)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v30 = 0xE800000000000000;
        v31 = 0x7367617468736168;
        if (!v23)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v30 = 0xE500000000000000;
      v31 = 0x656C746974;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    if (v23 == 1)
    {
      v32 = 0xE500000000000000;
      if (v31 != 0x7365746F6ELL)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v32 = 0xE800000000000000;
      if (v31 != 0x7367617468736168)
      {
        goto LABEL_19;
      }
    }

LABEL_17:
    if (v30 == v32)
    {
      v25 = 1;
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    v25 = sub_21DBFC64C();
    goto LABEL_20;
  }

  sub_21D0CF7E0(v15, &qword_27CE5E8E8);
  v25 = 0;
  return v25 & 1;
}

uint64_t TTRPermissionConfiguration.Action.title.getter()
{
  v1 = *v0 >> 61;
  if (v1 <= 1)
  {
    if (v1)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_16;
    }

LABEL_8:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_16;
  }

  if (v1 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_16;
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_16;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_16:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRPermissionConfiguration.TTRUpgradeType.description.getter()
{
  if (*v0)
  {
    return 0x795364756F6C4369;
  }

  else
  {
    return 0x5641446C6163;
  }
}

RemindersUICore::TTRPermissionConfiguration::TTRUpgradeType_optional __swiftcall TTRPermissionConfiguration.TTRUpgradeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D9DD018()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D9DD09C()
{
  sub_21DBFA27C();
}

uint64_t sub_21D9DD10C()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D9DD18C@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBFC45C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21D9DD1EC(uint64_t *a1@<X8>)
{
  v2 = 0x5641446C6163;
  if (*v1)
  {
    v2 = 0x795364756F6C4369;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21D9DD22C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x795364756F6C4369;
  }

  else
  {
    v3 = 0x5641446C6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA0000000000636ELL;
  }

  if (*a2)
  {
    v5 = 0x795364756F6C4369;
  }

  else
  {
    v5 = 0x5641446C6163;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000636ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

uint64_t sub_21D9DD2D4()
{
  if (*v0)
  {
    return 0x795364756F6C4369;
  }

  else
  {
    return 0x5641446C6163;
  }
}

id TTRPermissionConfiguration.Header.icon.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRPermissionConfiguration.Header.title.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRPermissionConfiguration.Header.body.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

unint64_t TTRPermissionConfiguration.Header.action.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D5D5D9C(v2, v3);
}

__n128 TTRPermissionConfiguration.Header.init(icon:title:body:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  result = *a6;
  *(a7 + 40) = *a6;
  return result;
}

uint64_t TTRPermissionConfiguration.PrimaryButton.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

unint64_t TTRPermissionConfiguration.PrimaryButton.action.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D5D5D9C(v2, v3);
}

uint64_t TTRPermissionConfiguration.PrimaryButton.init(action:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = TTRPermissionConfiguration.Action.title.getter();
  *a2 = result;
  a2[1] = v6;
  a2[2] = v3;
  a2[3] = v4;
  return result;
}

__n128 TTRPermissionConfiguration.PrimaryButton.init(title:action:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

__n128 TTRPermissionConfiguration.init(header:primaryButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 40) = *(a1 + 40);
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 72) = v4;
  return result;
}

double static TTRPermissionConfiguration.notificationPermissionRequest()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBFA12C();
  v3 = [objc_opt_self() _systemImageNamed_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  v7 = sub_21DBF516C();
  v9 = v8;
  v10 = sub_21DBF516C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  result = 1.49166815e-154;
  *(a1 + 72) = xmmword_21DC35160;
  return result;
}

double static TTRPermissionConfiguration.notificationPermissionDisabled()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBFA12C();
  v3 = [objc_opt_self() _systemImageNamed_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  v7 = sub_21DBF516C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  result = 2.0;
  *(a1 + 72) = xmmword_21DC220E0;
  return result;
}

uint64_t static TTRPermissionConfiguration.updateRequest(accountID:isLocalAccount:)@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF516C();
    v9 = v8;
    v10 = sub_21DBF516C();
    v12 = v11;
    v13 = 0x6000000000000001;
    v14 = a1;
    result = TTRPermissionConfiguration.Action.title.getter();
    v17 = 0x8000000000000001;
  }

  else
  {
    v18 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF516C();
    v9 = v19;
    v10 = sub_21DBF516C();
    v12 = v20;
    v13 = 0x6000000000000000;
    v21 = a1;
    result = TTRPermissionConfiguration.Action.title.getter();
    v17 = 0x8000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v9;
  a3[3] = v10;
  a3[4] = v12;
  a3[5] = v17;
  a3[6] = 0;
  a3[7] = result;
  a3[8] = v16;
  a3[9] = v13;
  a3[10] = a1;
  return result;
}

uint64_t _s15RemindersUICore26TTRPermissionConfigurationV6ActionO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1 >> 61;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v4 >> 61 != 1)
      {
        goto LABEL_44;
      }
    }

    else if (v4 >> 61)
    {
      goto LABEL_44;
    }

LABEL_42:
    v15 = sub_21D25C354(*a1, *a2);
    goto LABEL_45;
  }

  if (v6 == 2)
  {
    if (v4 >> 61 != 2)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 != 3)
  {
    if (v4 >> 61 == 4)
    {
      if (v2)
      {
        v11 = 0x795364756F6C4369;
      }

      else
      {
        v11 = 0x5641446C6163;
      }

      if (v2)
      {
        v12 = 0xEA0000000000636ELL;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      if (v4)
      {
        v13 = 0x795364756F6C4369;
      }

      else
      {
        v13 = 0x5641446C6163;
      }

      if (v4)
      {
        v14 = 0xEA0000000000636ELL;
      }

      else
      {
        v14 = 0xE600000000000000;
      }

      if (v11 == v13 && v12 == v14)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_21DBFC64C();
      }

      goto LABEL_45;
    }

LABEL_44:
    sub_21D5D5DB0(v4, v5);
    v15 = 0;
    goto LABEL_45;
  }

  if (v4 >> 61 != 3)
  {
    v16 = v3;
    goto LABEL_44;
  }

  if (v2)
  {
    v7 = 0x795364756F6C4369;
  }

  else
  {
    v7 = 0x5641446C6163;
  }

  if (v2)
  {
    v8 = 0xEA0000000000636ELL;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4)
  {
    v9 = 0x795364756F6C4369;
  }

  else
  {
    v9 = 0x5641446C6163;
  }

  if (v4)
  {
    v10 = 0xEA0000000000636ELL;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    sub_21D5D5DB0(*a2, *(a2 + 8));
    sub_21D5D5DB0(v2, v3);

LABEL_47:
    sub_21D0D8CF0(0, &qword_280D17680);
    v15 = sub_21DBFB63C();
    goto LABEL_45;
  }

  v18 = sub_21DBFC64C();
  sub_21D5D5DB0(v4, v5);
  sub_21D5D5DB0(v2, v3);

  v15 = 0;
  if (v18)
  {
    goto LABEL_47;
  }

LABEL_45:
  sub_21D5D61D4(v2, v3);
  sub_21D5D61D4(v4, v5);
  return v15 & 1;
}

BOOL _s15RemindersUICore26TTRPermissionConfigurationV6HeaderV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v21 = *(a2 + 40);
  v22 = *(a1 + 40);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v18 = *(a2 + 24);
    v19 = *(a2 + 48);
    v20 = *(a1 + 24);
    sub_21D0D8CF0(0, &qword_280D17688);
    v11 = v8;
    v12 = v2;
    v13 = sub_21DBFB63C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = *(a2 + 24);
    v19 = *(a2 + 48);
    v20 = *(a1 + 24);
    if (v8)
    {
      return 0;
    }
  }

  if ((v3 != v7 || v4 != v9) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v20 != v18 || v5 != v10) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v22 >> 3 == 0xFFFFFFFF)
  {
    sub_21D5D5D9C(v22, v6);
    v14 = v21;
    v15 = v19;
    sub_21D5D5D9C(v21, v19);
    if (v21 >> 3 == 0xFFFFFFFF)
    {
      sub_21D5D61C0(v22, v6);
      return 1;
    }

    goto LABEL_21;
  }

  v25 = v22;
  v26 = v6;
  v14 = v21;
  if (v21 >> 3 == 0xFFFFFFFF)
  {
    sub_21D5D5D9C(v22, v6);
    v15 = v19;
    sub_21D5D5D9C(v21, v19);
    sub_21D5D5D9C(v22, v6);
    sub_21D5D61D4(v22, v6);
LABEL_21:
    sub_21D5D61C0(v22, v6);
    sub_21D5D61C0(v14, v15);
    return 0;
  }

  v23 = v21;
  v24 = v19;
  sub_21D5D5D9C(v22, v6);
  sub_21D5D5D9C(v21, v19);
  sub_21D5D5D9C(v22, v6);
  v17 = _s15RemindersUICore26TTRPermissionConfigurationV6ActionO2eeoiySbAE_AEtFZ_0(&v25, &v23);
  sub_21D5D61D4(v23, v24);
  sub_21D5D61D4(v25, v26);
  sub_21D5D61C0(v22, v6);
  return (v17 & 1) != 0;
}

BOOL _s15RemindersUICore26TTRPermissionConfigurationV13PrimaryButtonV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 >> 3 == 0xFFFFFFFF)
    {
      sub_21D5D5D9C(v2, v3);
      sub_21D5D5D9C(v5, v4);
      if (v5 >> 3 == 0xFFFFFFFF)
      {
        sub_21D5D61C0(v2, v3);
        return 1;
      }
    }

    else
    {
      v12 = v2;
      v13 = v3;
      if (v5 >> 3 != 0xFFFFFFFF)
      {
        v10 = v5;
        v11 = v4;
        sub_21D5D5D9C(v2, v3);
        sub_21D5D5D9C(v5, v4);
        sub_21D5D5D9C(v2, v3);
        v9 = _s15RemindersUICore26TTRPermissionConfigurationV6ActionO2eeoiySbAE_AEtFZ_0(&v12, &v10);
        sub_21D5D61D4(v10, v11);
        sub_21D5D61D4(v12, v13);
        sub_21D5D61C0(v2, v3);
        return (v9 & 1) != 0;
      }

      sub_21D5D5D9C(v2, v3);
      sub_21D5D5D9C(v5, v4);
      sub_21D5D5D9C(v2, v3);
      sub_21D5D61D4(v2, v3);
    }

    sub_21D5D61C0(v2, v3);
    sub_21D5D61C0(v5, v4);
    return 0;
  }

  return result;
}

BOOL _s15RemindersUICore26TTRPermissionConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 8);
  v38 = *(a1 + 7);
  v39 = *(a1 + 9);
  v40 = *(a1 + 10);
  v9 = *(a2 + 2);
  v8 = *(a2 + 3);
  v11 = *(a2 + 4);
  v10 = *(a2 + 5);
  v12 = *(a2 + 6);
  v36 = *(a2 + 7);
  v35 = *(a2 + 8);
  v13 = *(a2 + 10);
  v37 = *(a2 + 9);
  v47 = *a1;
  v48 = v3;
  v49 = v2;
  v50 = v4;
  v51 = v5;
  v52 = v6;
  v41 = *a2;
  v42 = v9;
  v43 = v8;
  v44 = v11;
  v45 = v10;
  v46 = v12;
  sub_21DBF8E0C();
  v14 = v47;
  sub_21DBF8E0C();
  sub_21D5D5D9C(v5, v6);
  sub_21DBF8E0C();
  v15 = v41;
  sub_21DBF8E0C();
  sub_21D5D5D9C(v10, v12);
  LOBYTE(v12) = _s15RemindersUICore26TTRPermissionConfigurationV6HeaderV2eeoiySbAE_AEtFZ_0(&v47, &v41);
  v16 = v41;
  v17 = v45;
  v18 = v46;

  sub_21D5D61C0(v17, v18);
  v19 = v47;
  v20 = v51;
  v21 = v52;

  sub_21D5D61C0(v20, v21);
  if (v12)
  {
    if (v7)
    {
      v23 = v38;
      v22 = v39;
      *&v47 = v38;
      *(&v47 + 1) = v7;
      v24 = v40;
      v48 = v39;
      v49 = v40;
      v25 = v13;
      v27 = v36;
      v26 = v37;
      v28 = v35;
      if (v35)
      {
        *&v41 = v36;
        *(&v41 + 1) = v35;
        v42 = v37;
        v43 = v25;
        sub_21D5D5DC4(v38, v7, v39, v40);
        sub_21D5D5DC4(v36, v35, v37, v25);
        sub_21D5D5DC4(v38, v7, v39, v40);
        v29 = _s15RemindersUICore26TTRPermissionConfigurationV13PrimaryButtonV2eeoiySbAE_AEtFZ_0(&v47, &v41);
        v30 = v42;
        v31 = v43;

        sub_21D5D61C0(v30, v31);
        v32 = v48;
        v33 = v49;

        sub_21D5D61C0(v32, v33);
        sub_21D5D61E8(v38, v7, v39, v40);
        return v29;
      }

      sub_21D5D5DC4(v38, v7, v39, v40);
      sub_21D5D5DC4(v36, 0, v37, v25);
      sub_21D5D5DC4(v38, v7, v39, v40);

      sub_21D5D61C0(v39, v40);
    }

    else
    {
      v23 = v38;
      v22 = v39;
      v24 = v40;
      sub_21D5D5DC4(v38, 0, v39, v40);
      v25 = v13;
      v27 = v36;
      v26 = v37;
      v28 = v35;
      if (!v35)
      {
        sub_21D5D5DC4(v36, 0, v37, v25);
        sub_21D5D61E8(v38, 0, v39, v40);
        return 1;
      }

      sub_21D5D5DC4(v36, v35, v37, v25);
    }

    sub_21D5D61E8(v23, v7, v22, v24);
    sub_21D5D61E8(v27, v28, v26, v25);
  }

  return 0;
}

unint64_t sub_21D9DE488()
{
  result = qword_27CE64948;
  if (!qword_27CE64948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64948);
  }

  return result;
}

void destroy for TTRPermissionConfiguration(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    sub_21D5D61D4(v2, *(a1 + 48));
  }

  if (*(a1 + 64))
  {

    v3 = *(a1 + 72);
    if (v3 >> 3 != 0xFFFFFFFF)
    {
      v4 = *(a1 + 80);

      sub_21D5D61D4(v3, v4);
    }
  }
}

uint64_t initializeWithCopy for TTRPermissionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v8 = (a2 + 40);
  v7 = *(a2 + 40);
  v9 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 >> 3 != 0xFFFFFFFF)
  {
    v13 = *(a2 + 48);
    sub_21D5D5DB0(v7, v13);
    *(a1 + 40) = v7;
    *(a1 + 48) = v13;
    v10 = *(a2 + 64);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a1 + 56) = *(a2 + 56);
    v12 = *(a2 + 72);
    goto LABEL_7;
  }

  *(a1 + 40) = *v8;
  v10 = *(a2 + 64);
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v10;
  sub_21DBF8E0C();
  if (v11 >> 3 != 0xFFFFFFFF)
  {
    v14 = *(a2 + 80);
    sub_21D5D5DB0(v11, v14);
    *(a1 + 72) = v11;
    *(a1 + 80) = v14;
    return a1;
  }

  v12 = *(a2 + 72);
LABEL_7:
  *(a1 + 72) = v12;
  return a1;
}

uint64_t assignWithCopy for TTRPermissionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v7 = *(a2 + 40);
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 40) >> 3 == 0xFFFFFFFFLL)
  {
    if (v8 != 0x7FFFFFFF8)
    {
      v9 = *(a2 + 48);
      sub_21D5D5DB0(*(a2 + 40), v9);
      *(a1 + 40) = v7;
      *(a1 + 48) = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v8 == 0x7FFFFFFF8)
  {
    sub_21D9DE880(a1 + 40);
LABEL_6:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_8;
  }

  v10 = *(a2 + 48);
  sub_21D5D5DB0(*(a2 + 40), v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v10;
  sub_21D5D61D4(v11, v12);
LABEL_8:
  v13 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v13)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      sub_21DBF8E0C();

      v14 = *(a2 + 72);
      v15 = v14 & 0xFFFFFFFFFFFFFFF8;
      if (*(a1 + 72) >> 3 != 0xFFFFFFFFLL)
      {
        if (v15 != 0x7FFFFFFF8)
        {
          v19 = *(a2 + 80);
          sub_21D5D5DB0(v14, v19);
          v20 = *(a1 + 72);
          v21 = *(a1 + 80);
          *(a1 + 72) = v14;
          *(a1 + 80) = v19;
          sub_21D5D61D4(v20, v21);
          return a1;
        }

        sub_21D9DE880(a1 + 72);
        goto LABEL_20;
      }

      if (v15 == 0x7FFFFFFF8)
      {
LABEL_20:
        *(a1 + 72) = *(a2 + 72);
        return a1;
      }

      goto LABEL_17;
    }

    sub_21D9DE8B0(a1 + 56);
    v16 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v16;
  }

  else
  {
    if (!v13)
    {
      v18 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v18;
      return a1;
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 72);
    sub_21DBF8E0C();
    if (v14 >> 3 != 0xFFFFFFFF)
    {
LABEL_17:
      v17 = *(a2 + 80);
      sub_21D5D5DB0(v14, v17);
      *(a1 + 72) = v14;
      *(a1 + 80) = v17;
      return a1;
    }

    *(a1 + 72) = *(a2 + 72);
  }

  return a1;
}

uint64_t assignWithTake for TTRPermissionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 >> 3 == 0xFFFFFFFF)
  {
LABEL_4:
    *(a1 + 40) = *(a2 + 40);
    if (!*(a1 + 64))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v8 >> 3 == 0xFFFFFFFF)
  {
    sub_21D9DE880(a1 + 40);
    goto LABEL_4;
  }

  v9 = *(a2 + 48);
  v10 = *(a1 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  sub_21D5D61D4(v7, v10);
  if (!*(a1 + 64))
  {
LABEL_13:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    return a1;
  }

LABEL_7:
  v11 = *(a2 + 64);
  if (!v11)
  {
    sub_21D9DE8B0(a1 + 56);
    goto LABEL_13;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v11;

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12 >> 3 != 0xFFFFFFFF)
  {
    if (v13 >> 3 != 0xFFFFFFFF)
    {
      v15 = *(a2 + 80);
      v16 = *(a1 + 80);
      *(a1 + 72) = v13;
      *(a1 + 80) = v15;
      sub_21D5D61D4(v12, v16);
      return a1;
    }

    sub_21D9DE880(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

unint64_t *assignWithCopy for TTRPermissionConfiguration.Action(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_21D5D5DB0(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  sub_21D5D61D4(v5, v6);
  return a1;
}

unint64_t *assignWithTake for TTRPermissionConfiguration.Action(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_21D5D61D4(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRPermissionConfiguration.Action(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRPermissionConfiguration.Action(uint64_t result, int a2, int a3)
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
      *result = 8 * -a2;
      *(result + 8) = 0;
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

void destroy for TTRPermissionConfiguration.Header(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    v3 = *(a1 + 48);

    sub_21D5D61D4(v2, v3);
  }
}

uint64_t initializeWithCopy for TTRPermissionConfiguration.Header(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v8 = (a2 + 40);
  v7 = *(a2 + 40);
  v9 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 >> 3 == 0xFFFFFFFF)
  {
    *(a1 + 40) = *v8;
  }

  else
  {
    v10 = *(a2 + 48);
    sub_21D5D5DB0(v7, v10);
    *(a1 + 40) = v7;
    *(a1 + 48) = v10;
  }

  return a1;
}

uint64_t assignWithCopy for TTRPermissionConfiguration.Header(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v7 = *(a2 + 40);
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 40) >> 3 != 0xFFFFFFFFLL)
  {
    if (v8 != 0x7FFFFFFF8)
    {
      v10 = *(a2 + 48);
      sub_21D5D5DB0(v7, v10);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *(a1 + 40) = v7;
      *(a1 + 48) = v10;
      sub_21D5D61D4(v11, v12);
      return a1;
    }

    sub_21D9DE880(a1 + 40);
    goto LABEL_6;
  }

  if (v8 == 0x7FFFFFFF8)
  {
LABEL_6:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  v9 = *(a2 + 48);
  sub_21D5D5DB0(v7, v9);
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithTake for TTRPermissionConfiguration.Header(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  v6 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v6;

  v7 = *(a1 + 40);
  v8 = a2[5];
  if (v7 >> 3 != 0xFFFFFFFF)
  {
    if (v8 >> 3 != 0xFFFFFFFF)
    {
      v9 = a2[6];
      v10 = *(a1 + 48);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      sub_21D5D61D4(v7, v10);
      return a1;
    }

    sub_21D9DE880(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRPermissionConfiguration.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRPermissionConfiguration.Header(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void destroy for TTRPermissionConfiguration.PrimaryButton(uint64_t a1)
{

  v2 = *(a1 + 16);
  if (v2 >> 3 != 0xFFFFFFFF)
  {
    v3 = *(a1 + 24);

    sub_21D5D61D4(v2, v3);
  }
}

uint64_t initializeWithCopy for TTRPermissionConfiguration.PrimaryButton(uint64_t a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = a2 + 2;
  v5 = a2[2];
  sub_21DBF8E0C();
  if (v5 >> 3 == 0xFFFFFFFF)
  {
    *(a1 + 16) = *v6;
  }

  else
  {
    v7 = a2[3];
    sub_21D5D5DB0(v5, v7);
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
  }

  return a1;
}

void *assignWithCopy for TTRPermissionConfiguration.PrimaryButton(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v4 = a2[2];
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (a1[2] >> 3 != 0xFFFFFFFFLL)
  {
    if (v5 != 0x7FFFFFFF8)
    {
      v7 = a2[3];
      sub_21D5D5DB0(v4, v7);
      v8 = a1[2];
      v9 = a1[3];
      a1[2] = v4;
      a1[3] = v7;
      sub_21D5D61D4(v8, v9);
      return a1;
    }

    sub_21D9DE880((a1 + 2));
    goto LABEL_6;
  }

  if (v5 == 0x7FFFFFFF8)
  {
LABEL_6:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  v6 = a2[3];
  sub_21D5D5DB0(v4, v6);
  a1[2] = v4;
  a1[3] = v6;
  return a1;
}

void *assignWithTake for TTRPermissionConfiguration.PrimaryButton(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a1[2];
  v6 = a2[2];
  if (v5 >> 3 != 0xFFFFFFFF)
  {
    if (v6 >> 3 != 0xFFFFFFFF)
    {
      v7 = a2[3];
      v8 = a1[3];
      a1[2] = v6;
      a1[3] = v7;
      sub_21D5D61D4(v5, v8);
      return a1;
    }

    sub_21D9DE880((a1 + 2));
  }

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t TTRTreeContentsQueryable.parentAndChildIndex(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  (*(a3 + 48))(a1, a2, a3, v10);
  v13 = TTRTreeContentsQueryable.childIndex(of:inParent:)(a1, v12, a2, a3);
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a4, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v17 = v13;
    v18 = swift_getTupleTypeMetadata2();
    v19 = *(v18 + 48);
    (*(v9 + 32))(a4, v12, v8);
    *(a4 + v19) = v17;
    return (*(*(v18 - 8) + 56))(a4, 0, 1, v18);
  }
}

uint64_t TTRTreeContentsQueryable.childrenCollection(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = sub_21DBFBA8C();
  v7 = *(v23 - 8);
  v8 = MEMORY[0x28223BE20](v23);
  v10 = &v21 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 24);
  v22 = a3;
  result = v14(a1, a2, a3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = 0;
    v26 = result;
    (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
    v16 = v23;
    (*(v7 + 16))(v10, a1, v23);
    v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = (v12 + v17 + *(v7 + 80)) & ~*(v7 + 80);
    v19 = swift_allocObject();
    v20 = v22;
    *(v19 + 16) = a2;
    *(v19 + 24) = v20;
    (*(v11 + 32))(v19 + v17, v13, a2);
    (*(v7 + 32))(v19 + v18, v10, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64950);
    sub_21D0D0F1C(&qword_280D0C190, &qword_27CE64950);
    sub_21DBFC43C();

    return v27;
  }

  return result;
}

uint64_t TTRTreeContentsQueryable.contains(_:inSubtreeAtRoot:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v44 = &v43 - v8;
  v9 = sub_21DBFBA8C();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v56 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = AssociatedConformanceWitness + 24;
  v24 = *(AssociatedConformanceWitness + 24);
  v64 = &v43 - v25;
  v61 = AssociatedConformanceWitness;
  v26 = AssociatedConformanceWitness;
  v27 = v45;
  v58 = v24;
  v59 = v23;
  (v24)(AssociatedTypeWitness, v26, v22);
  (*(v7 + 16))(v16, v63, AssociatedTypeWitness);
  (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
  v28 = *(v27 + 16);
  v62 = v16;
  v63 = v9;
  v53 = v28;
  v54 = v27 + 16;
  v28(v13, v16, v9);
  v51 = *(v7 + 48);
  v52 = v7 + 48;
  if (v51(v13, 1, AssociatedTypeWitness) == 1)
  {
    v29 = *(v27 + 8);
LABEL_7:
    v41 = v63;
    v29(v62, v63);
    (*(v19 + 8))(v64, v18);
    v29(v13, v41);
    return 0;
  }

  else
  {
    v31 = *(v7 + 32);
    v30 = v7 + 32;
    v49 = v31;
    v43 = v19;
    v57 = (v19 + 8);
    v46 = a4 + 48;
    v47 = a4;
    v48 = (v30 - 24);
    v50 = (v27 + 8);
    v32 = v44;
    v33 = (v27 + 32);
    while (1)
    {
      v34 = v30;
      v49(v32, v13, AssociatedTypeWitness);
      v35 = v60;
      v58(AssociatedTypeWitness, v61);
      swift_getAssociatedConformanceWitness();
      v36 = sub_21DBFA10C();
      v37 = *v57;
      (*v57)(v35, v18);
      if (v36)
      {
        break;
      }

      v38 = v55;
      (*(v47 + 48))(v32, v56);
      (*v48)(v32, AssociatedTypeWitness);
      v29 = *v50;
      v39 = v62;
      v40 = v63;
      (*v50)(v62, v63);
      (*v33)(v39, v38, v40);
      v53(v13, v39, v40);
      v30 = v34;
      if (v51(v13, 1, AssociatedTypeWitness) == 1)
      {
        v19 = v43;
        goto LABEL_7;
      }
    }

    (*v48)(v32, AssociatedTypeWitness);
    (*v50)(v62, v63);
    v37(v64, v18);
    return 1;
  }
}

uint64_t TTRTreeContentsQueryable.indexPath(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v68 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_21DBFBA8C();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = &v50 - v9;
  v65 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v65);
  v64 = &v50 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v69 = &v50 - v13;
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v15);
  v73 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v50 - v22;
  (*(v11 + 16))(&v50 - v22, a1, AssociatedTypeWitness, v21);
  (*(v11 + 56))(v23, 0, 1, AssociatedTypeWitness);
  v24 = *(v14 + 16);
  v70 = v23;
  v74 = v6;
  v62 = v24;
  v63 = v14 + 16;
  v24(v19, v23, v6);
  v25 = *(v11 + 48);
  v71 = v19;
  v60 = v25;
  v61 = v11 + 48;
  if (v25(v19, 1, AssociatedTypeWitness) == 1)
  {
    v26 = MEMORY[0x277D84F90];
    (*(v14 + 8))(v71, v74);
LABEL_13:
    if (*(v26 + 2))
    {
LABEL_14:
      v75 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D8);
      sub_21D0D0F1C(&qword_27CE5A4E0, &qword_27CE5A4D8);
      sub_21DBF5D3C();
      (*(v14 + 8))(v70, v74);
      v47 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v50 = v8;
    v52 = a3;
    v28 = *(v11 + 32);
    v27 = v11 + 32;
    v58 = TupleTypeMetadata2 - 8;
    v59 = v28;
    v72 = (v14 + 32);
    v57 = (v27 - 24);
    v51 = v14;
    v56 = (v14 + 8);
    v26 = MEMORY[0x277D84F90];
    v29 = v69;
    v30 = v71;
    v55 = TupleTypeMetadata2;
    v54 = v27;
    while (1)
    {
      v59(v29, v30, AssociatedTypeWitness);
      v31 = v66;
      TTRTreeContentsQueryable.parentAndChildIndex(for:)(v29, v67, v68, v66);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v31, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v32 = *(v31 + *(TupleTypeMetadata2 + 48));
      v34 = v64;
      v33 = v65;
      v35 = *(v65 + 48);
      v36 = *v72;
      v37 = v74;
      (*v72)(v64, v31, v74);
      *&v34[v35] = v32;
      v38 = *&v34[*(v33 + 48)];
      v36(v73, v34, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_21D211BD0(0, *(v26 + 2) + 1, 1, v26);
      }

      v40 = *(v26 + 2);
      v39 = *(v26 + 3);
      v29 = v69;
      if (v40 >= v39 >> 1)
      {
        v26 = sub_21D211BD0((v39 > 1), v40 + 1, 1, v26);
      }

      (*v57)(v29, AssociatedTypeWitness);
      v41 = *v56;
      v42 = v70;
      v43 = AssociatedTypeWitness;
      v44 = v74;
      (*v56)(v70, v74);
      *(v26 + 2) = v40 + 1;
      *&v26[8 * v40 + 32] = v38;
      v36(v42, v73, v44);
      v30 = v71;
      v45 = v44;
      AssociatedTypeWitness = v43;
      v62(v71, v42, v45);
      v46 = v60(v30, 1, v43);
      TupleTypeMetadata2 = v55;
      if (v46 == 1)
      {
        a3 = v52;
        v14 = v51;
        v41(v71, v74);
        goto LABEL_13;
      }
    }

    (*v57)(v29, AssociatedTypeWitness);
    (*(v53 + 8))(v31, v50);
    a3 = v52;
    v14 = v51;
    if (*(v26 + 2))
    {
      goto LABEL_14;
    }
  }

  (*(v14 + 8))(v70, v74);

  v47 = 1;
LABEL_15:
  v48 = sub_21DBF5D5C();
  return (*(*(v48 - 8) + 56))(a3, v47, 1, v48);
}

BOOL TTRTreeContentsQueryable.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  (*(a3 + 40))(v9, v17, a3);
  (*(v7 + 8))(v9, v6);
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1;
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t TTRTreeContentsQueryable<>.diff(with:contentEqualityChecker:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v34 = a6;
  v35 = a7;
  v36 = a2;
  v37 = a3;
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_21DBFBA8C();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(*(AssociatedTypeWitness - 8) + 56);
  v16(&v28 - v14, 1, 1, AssociatedTypeWitness, v13);
  v33 = TTRTreeContentsQueryable.children(of:)(v15, a4, a5);
  v17 = *(v12 + 8);
  v17(v15, v11);
  v31 = a1;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (v16)(v15, 1, 1, AssociatedTypeWitness);
  v20 = TTRTreeContentsQueryable.children(of:)(v15, v18, v19);
  v17(v15, v29);
  v21 = v32;
  v22 = v34;
  v23 = sub_21D9E50FC(v30, a4, v32, v34);
  v45 = a4;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v25 = sub_21D9E53A8(v31, a4, v21, v22);
  v39 = a4;
  v40 = v21;
  v41 = v22;
  v42 = v25;
  v43 = v26;
  TTRCheapTreeDiff<A>(source:target:sourceChildrenGetter:targetChildrenGetter:contentEqualityChecker:)(v33, v20, sub_21D9E61EC, v44, sub_21D9E6E78, v38, v36, v37, v35, AssociatedTypeWitness, v22);
}

uint64_t TTRTreeContentsQueryable.allItems.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  type metadata accessor for DerivedTreePreorderIterator();
  swift_getWitnessTable();
  return sub_21DBFBE7C();
}

uint64_t TTRTreeContentsQueryable.lastDescendant(of:)@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v58 - v9;
  v11 = sub_21DBFBA8C();
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11);
  v72 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = *(v8 + 56);
  v73 = a4;
  v74 = v24;
  v75 = v8 + 56;
  (v24)(a4, 1, 1, AssociatedTypeWitness, v21);
  v25 = a2;
  v26 = a2;
  v27 = a3;
  TTRTreeContentsQueryable.lastChild(of:)(v77, v26, a3, v23);
  v28 = v23;
  v29 = v12 + 16;
  v30 = *(v12 + 16);
  v31 = v59;
  v70 = v30;
  v71 = v29;
  (v30)(v19, v23);
  v61 = v8;
  v32 = v8 + 48;
  v33 = *(v8 + 48);
  v34 = v19;
  v35 = AssociatedTypeWitness;
  v36 = AssociatedTypeWitness;
  v37 = v32;
  v69 = v33;
  v38 = v33(v19, 1, v36);
  v40 = v60 + 8;
  v39 = *(v60 + 8);
  if (v38 != 1)
  {
    v41 = v61;
    v63 = (v61 + 4);
    v64 = v37;
    ++v61;
    v62 = (v41 + 2);
    v60 += 32;
    v67 = v25;
    v68 = v28;
    v65 = v34;
    v66 = v27;
    v76 = v40;
    v77 = v39;
    do
    {
      v42 = v73;
      v43 = v31;
      v77(v73, v31);
      (*v63)(v10, v34, v35);
      v44 = v72;
      v45 = v16;
      v46 = v35;
      v47 = *v62;
      (*v62)(v42, v10, v35);
      v48 = v35;
      v49 = v74;
      v74(v42, 0, 1, v48);
      v47(v44, v10, v46);
      v51 = v66;
      v50 = v67;
      v49(v44, 0, 1, v46);
      TTRTreeContentsQueryable.lastChild(of:)(v44, v50, v51, v45);
      v28 = v68;
      v77(v44, v43);
      (*v61)(v10, v46);
      v77(v28, v43);
      v16 = v45;
      (*v60)(v28, v45, v43);
      v52 = v65;
      v31 = v43;
      v70(v65, v28, v43);
      v34 = v52;
      v53 = v52;
      v35 = v46;
      v54 = v69(v53, 1, v46);
      v39 = v77;
    }

    while (v54 != 1);
  }

  v55 = v28;
  v56 = v39;
  v39(v55, v31);
  return v56(v34, v31);
}

uint64_t TTRTreeContentsQueryable.ancestors(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_allocBox();
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, a1, AssociatedTypeWitness);
  (*(v8 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  sub_21DBFBE3C();
  swift_getWitnessTable();
  return sub_21DBFBE7C();
}

uint64_t TTRTreeContentsQueryable.childIndex(of:inParent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TTRTreeContentsQueryable.childrenCollection(of:)(a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050);
  swift_getAssociatedTypeWitness();
  sub_21D0E8418(qword_27CE5C010);
  sub_21DBFC0EC();
  sub_21D0E8418(&qword_280D17898);
  swift_getWitnessTable();
  sub_21DBFACCC();

  return v5;
}

uint64_t TTRTreeContentsQueryable.topLevelItem(containing:)@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a1;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = *(a3 + 48);
  v22 = v41;
  v33 = a3;
  v34 = a2;
  v41 = v21;
  v21(v22, a2, a3, v18);
  v40 = *(v13 + 48);
  if (v40(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v35 + 8))(v12, v36);
    return (*(v13 + 56))(v37, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v38 = *(v13 + 32);
    v39 = v13 + 32;
    v38(v20, v12, AssociatedTypeWitness);
    v24 = *(v13 + 16);
    v31 = v20;
    v24(v16, v20, AssociatedTypeWitness);
    v26 = v33;
    v25 = v34;
    v41(v16, v34, v33);
    v27 = v40(v9, 1, AssociatedTypeWitness);
    v32 = v13;
    v28 = *(v13 + 8);
    if (v27 != 1)
    {
      do
      {
        v28(v16, AssociatedTypeWitness);
        v38(v16, v9, AssociatedTypeWitness);
        v41(v16, v25, v26);
      }

      while (v40(v9, 1, AssociatedTypeWitness) != 1);
    }

    v28(v31, AssociatedTypeWitness);
    (*(v35 + 8))(v9, v36);
    v29 = v37;
    v38(v37, v16, AssociatedTypeWitness);
    return (*(v32 + 56))(v29, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_21D9E147C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v6 = *(sub_21DBFBA8C() - 8);
  return (*(v4 + 32))(*a1, v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)), v3, v4);
}

uint64_t sub_21D9E1590(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = *(AssociatedConformanceWitness + 24);
  v11 = swift_checkMetadataState();
  v10(v11, AssociatedConformanceWitness);
  v10(v11, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  v12 = sub_21DBFA10C();
  v13 = *(v4 + 8);
  v13(v6, AssociatedTypeWitness);
  v13(v9, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t TTRTreeContentsQueryable.childIndex(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  TTRTreeContentsQueryable.parentAndChildIndex(for:)(a1, a2, a3, &v14 - v10);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  else
  {
    v12 = *&v11[*(TupleTypeMetadata2 + 48)];
    (*(*(v6 - 8) + 8))(v11, v6);
  }

  return v12;
}

uint64_t TTRTreeContentsQueryable.level(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v28 = a2;
  v14 = TTRTreeContentsQueryable.contains(_:)(a1, a2, a3);
  v15 = 0;
  if (v14)
  {
    v24[3] = v14;
    v25 = v7;
    v16 = a1;
    v17 = v10 + 16;
    (*(v10 + 16))(v13, v16, AssociatedTypeWitness);
    v15 = 0;
    v27 = a3;
    v18 = *(a3 + 48);
    v19 = (v10 + 8);
    v20 = (v17 + 32);
    v21 = (v17 + 16);
    while (1)
    {
      v18(v13, v28, v27);
      (*v19)(v13, AssociatedTypeWitness);
      if ((*v20)(v9, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (*v21)(v13, v9, AssociatedTypeWitness);
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        break;
      }
    }

    (*(v26 + 8))(v9, v25);
  }

  return v15;
}

BOOL TTRTreeContentsQueryable.isTopLevel(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  if (!TTRTreeContentsQueryable.contains(_:)(a1, a2, a3))
  {
    return 0;
  }

  (*(a3 + 48))(a1, a2, a3);
  v11 = (*(*(AssociatedTypeWitness - 8) + 48))(v10, 1, AssociatedTypeWitness) == 1;
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_21D9E1D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  return sub_21D9E1DF8(v9, a2, a3, a4);
}

uint64_t sub_21D9E1DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_21DBFBA8C();
  v9 = *(v19 - 8);
  v10 = MEMORY[0x28223BE20](v19);
  v12 = &v19 - v11;
  v13 = *(a2 - 8);
  (*(v13 + 16))(a4, a1, a2, v10);
  type metadata accessor for DerivedTreePreorderIterator.Level();
  sub_21DBFC5CC();
  swift_allocObject();
  v14 = sub_21DBFA60C();
  v16 = v15;
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v17 = TTRTreeContentsQueryable.children(of:)(v12, a2, a3);
  (*(v9 + 8))(v12, v19);
  *v16 = v17;
  v16[1] = 0;
  sub_21D23C8B4();
  (*(v13 + 8))(a1, a2);
  result = type metadata accessor for DerivedTreePreorderIterator();
  *(v20 + *(result + 36)) = v14;
  return result;
}

uint64_t TTRTreeContentsQueryable.firstTopLevelItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 56);
  v13 = 1;
  v22 = v11 + 56;
  v12(&v20 - v9, 1, 1, AssociatedTypeWitness, v8);
  v14 = *(a2 + 24);
  v21 = a1;
  v15 = v14(v10, a1, a2);
  v16 = *(v7 + 8);
  v20 = v6;
  v16(v10, v6);
  if (v15 < 1)
  {
    v18 = v23;
  }

  else
  {
    (v12)(v10, 1, 1, AssociatedTypeWitness);
    v17 = v23;
    (*(a2 + 32))(0, v10, v21, a2);
    v16(v10, v20);
    v13 = 0;
    v18 = v17;
  }

  return (v12)(v18, v13, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeContentsQueryable.lastChild(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(a3 + 24))();
  v9 = v8 < 1;
  v10 = v8 - 1;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    (*(a3 + 32))(v10, a1, a2, a3);
    v11 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 56);

  return v13(a4, v11, 1, AssociatedTypeWitness);
}

uint64_t sub_21D9E2300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v9 + 32))(v15 + v13, v12, a3);
  *(v15 + v14) = a2;
  swift_getAssociatedTypeWitness();

  result = sub_21DBFBE4C();
  *a5 = result;
  return result;
}

uint64_t sub_21D9E247C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v19 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18 - v7;
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v8, v13, AssociatedTypeWitness);
  (*(a2 + 48))(v8, a1, a2);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if ((*(v6 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    v16 = v19;
    (*(v6 + 32))(v19, v12, AssociatedTypeWitness);
    swift_beginAccess();
    (*(v6 + 24))(v13, v16, AssociatedTypeWitness);
    v14 = 0;
    v15 = v16;
  }

  return (*(v6 + 56))(v15, v14, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeContentsQueryable.bestInsertionLocation(among:localItemIDsToBeMoved:allowsInsertingAtRootLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a2;
  v86 = a6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_21DBFBA8C();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12);
  v78 = &v62 - v13;
  v80 = AssociatedTypeWitness;
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v72 = &v62 - v15;
  v76 = AssociatedConformanceWitness;
  v16 = type metadata accessor for TTRTreeLocation();
  v17 = sub_21DBFBA8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v75 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v62 - v21;
  MEMORY[0x28223BE20](v22);
  v85 = &v62 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v87 = *(v16 - 8);
  MEMORY[0x28223BE20](v27);
  v69 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v83 = a5;
  v84 = &v62 - v31;
  v89 = a1;
  v82 = a4;
  if (a3)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v70 = &v62;
    MEMORY[0x28223BE20](v30);
    *(&v62 - 2) = a4;
    *(&v62 - 1) = a5;
    sub_21DBFA74C();
    sub_21DBF8E0C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_21DBFAD6C();
    a1 = v89;
  }

  v88 = a1;
  v32 = sub_21DBFA74C();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  sub_21DBFACEC();
  v33 = v87;
  v70 = *(v87 + 48);
  if ((v70)(v26, 1, v16) == 1)
  {

    (*(v18 + 8))(v26, v17);

    return (*(v33 + 56))(v86, 1, 1, v16);
  }

  v68 = v32;
  v35 = *(v33 + 32);
  v36 = v84;
  v66 = v33 + 32;
  v65 = v35;
  v35(v84, v26, v16);

  v37 = *(v33 + 16);
  v38 = v33;
  v39 = v85;
  v37(v85, v36, v16);
  v40 = *(v38 + 56);
  v64 = v38 + 56;
  v63 = v40;
  v40(v39, 0, 1, v16);
  v41 = sub_21DBFA6DC();
  if (v41 >= 2)
  {
    v62 = v18;
    v67 = v17;
    v88 = v77;
    MEMORY[0x28223BE20](v41);
    v42 = v83;
    *(&v62 - 4) = v82;
    *(&v62 - 3) = v42;
    v43 = v80;
    *(&v62 - 2) = v81;
    swift_getAssociatedConformanceWitness();
    sub_21DBFABAC();
    swift_getWitnessTable();
    v44 = v43;
    v45 = sub_21DBFA42C();
    if (sub_21DBFAAFC() == 1)
    {
      v88 = v45;
      swift_getWitnessTable();
      v46 = v78;
      sub_21DBFACEC();

      v47 = v79;
      if ((*(v79 + 48))(v46, 1, v44) != 1)
      {
        v48 = v72;
        v49 = (*(v47 + 32))(v72, v46, v44);
        v78 = &v62;
        v88 = a1;
        MEMORY[0x28223BE20](v49);
        v51 = v82;
        v50 = v83;
        *(&v62 - 4) = v82;
        *(&v62 - 3) = v50;
        *(&v62 - 2) = v48;
        sub_21DBF8E0C();
        swift_getWitnessTable();
        v52 = v47;
        v53 = v71;
        sub_21DBFA51C();

        v54 = (v70)(v53, 1, v16);
        v18 = v62;
        v55 = *(v62 + 8);
        if (v54 != 1)
        {
          v39 = v85;
          v17 = v67;
          v55(v85, v67);
          (*(v87 + 8))(v84, v16);

          v59 = v69;
          v60 = v53;
          v61 = v65;
          v65(v69, v60, v16);
          v61(v39, v59, v16);
          v63(v39, 0, 1, v16);
          (*(v52 + 8))(v72, v80);
          return (*(v18 + 32))(v86, v39, v17);
        }

        v55(v53, v67);
        v56 = (*(v47 + 8))(v72, v80);
        goto LABEL_14;
      }
    }

    else
    {

      v46 = v78;
      (*(v79 + 56))(v78, 1, 1, v44);
    }

    v56 = (*(v73 + 8))(v46, v74);
    v18 = v62;
    v51 = v82;
LABEL_14:
    v88 = a1;
    MEMORY[0x28223BE20](v56);
    v57 = v83;
    *(&v62 - 4) = v51;
    *(&v62 - 3) = v57;
    *(&v62 - 2) = v81;
    sub_21DBF8E0C();
    swift_getWitnessTable();
    v58 = v75;
    sub_21DBFA50C();

    v39 = v85;
    v17 = v67;
    (*(v18 + 8))(v85, v67);
    (*(v87 + 8))(v84, v16);

    (*(v18 + 32))(v39, v58, v17);
    return (*(v18 + 32))(v86, v39, v17);
  }

  (*(v38 + 8))(v36, v16);

  return (*(v18 + 32))(v86, v39, v17);
}

BOOL sub_21D9E31B0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, a1, v3, v5);
  v8 = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness) == 1;
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_21D9E3304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFBA8C();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v34 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v38 = &v32 - v21;
  v22 = *(a4 + 40);
  v35 = a2;
  v22(a1, a3, a4, v20);
  v23 = v16[6];
  if (v23(v15, 1, AssociatedTypeWitness) == 1)
  {
    v12 = v15;
    v24 = v39;
  }

  else
  {
    v25 = v38;
    v33 = v16[4];
    v33(v38, v15, AssociatedTypeWitness);
    (*(a4 + 48))(v25, a3, a4);
    if (v23(v12, 1, AssociatedTypeWitness) != 1)
    {
      v27 = v34;
      v33(v34, v12, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v24 = v39;
      (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v29 = v16[1];
      v29(v27, AssociatedTypeWitness);
      v29(v38, AssociatedTypeWitness);
      v26 = 0;
      goto LABEL_7;
    }

    (v16[1])(v38, AssociatedTypeWitness);
    v24 = v39;
  }

  (*(v36 + 8))(v12, v37);
  swift_getAssociatedConformanceWitness();
  v26 = 1;
LABEL_7:
  v30 = swift_getAssociatedTypeWitness();
  return (*(*(v30 - 8) + 56))(v24, v26, 1, v30);
}

uint64_t sub_21D9E36D8(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - v6;
  v8 = v7;
  v9 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v52 - v10;
  v12 = sub_21DBFBA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v58 = v9;
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v16);
  v56 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = &v52 - v19;
  v21 = MEMORY[0x28223BE20](v20);
  v65 = &v52 - v22;
  (*(v13 + 16))(v15, a1, v12, v21);
  v23 = *(AssociatedTypeWitness - 8);
  v24 = 1;
  v25 = (*(v23 + 48))(v15, 1, AssociatedTypeWitness);
  v60 = v11;
  v54 = AssociatedConformanceWitness;
  v55 = AssociatedTypeWitness;
  if (v25 != 1)
  {
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v24 = 0;
    v13 = v23;
    v12 = AssociatedTypeWitness;
  }

  (*(v13 + 8))(v15, v12);
  v26 = v64;
  v27 = *(v64 + 56);
  v28 = v65;
  v29 = v24;
  v30 = v8;
  v27(v65, v29, 1, v8);
  v31 = v61;
  (*(v26 + 16))(v61, v59, v8);
  v27(v31, 0, 1, v8);
  v32 = v62;
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = *(v62 + 16);
  v35 = v60;
  v36 = v28;
  v37 = v58;
  v34(v60, v36, v58);
  v59 = v33;
  v34(&v35[v33], v31, v37);
  v38 = v26;
  v39 = v35;
  v40 = *(v38 + 48);
  if (v40(v39, 1, v30) != 1)
  {
    v43 = v56;
    v34(v56, v39, v37);
    v44 = v59;
    v45 = v30;
    if (v40(&v39[v59], 1, v30) != 1)
    {
      v47 = v64;
      v48 = v53;
      (*(v64 + 32))(v53, &v39[v44], v30);
      swift_getAssociatedConformanceWitness();
      v42 = sub_21DBFA10C();
      v49 = *(v47 + 8);
      v49(v48, v30);
      v50 = *(v62 + 8);
      v50(v61, v37);
      v50(v65, v37);
      v49(v43, v30);
      v50(v39, v37);
      return v42 & 1;
    }

    v46 = *(v62 + 8);
    v46(v61, v37);
    v46(v65, v37);
    (*(v64 + 8))(v43, v45);
    goto LABEL_8;
  }

  v41 = *(v32 + 8);
  v41(v31, v37);
  v41(v65, v37);
  if (v40(&v39[v59], 1, v30) != 1)
  {
LABEL_8:
    (*(v57 + 8))(v39, TupleTypeMetadata2);
    v42 = 0;
    return v42 & 1;
  }

  v41(v39, v37);
  v42 = 1;
  return v42 & 1;
}

BOOL sub_21D9E3D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v17 = a4;
  v18 = a5;
  v19 = a3;
  swift_getAssociatedTypeWitness();
  sub_21DBFBA8C();
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D83B88];
  sub_21D10AA90(sub_21D9E6E60, v16, MEMORY[0x277D84A98], MEMORY[0x277D83B88], v10, &v20);
  if (v21)
  {
    v12 = -1;
  }

  else
  {
    v12 = v20;
  }

  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a3;
  sub_21D10AA90(sub_21D9E6CF4, v15, v8, v9, v11, &v20);
  v13 = v20;
  if (v21)
  {
    v13 = -1;
  }

  return v12 < v13;
}

uint64_t TTRTreeContentsQueryable.sortByIndexPath(_:unknownIndexPathTreatment:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v30 - v17;
  if (*a2)
  {
    if (*a2 == 1)
    {
      (*(v10 + 56))(&v30 - v17, 1, 1, v9, v18);
      goto LABEL_7;
    }

    sub_21DBF5D1C();
  }

  else
  {
    sub_21DBF5D4C();
  }

  (*(v10 + 56))(v19, 0, 1, v9, v20);
LABEL_7:
  sub_21D1B1F58(v19, v15);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    v21 = sub_21D31DD48(v15);
    v32 = a1;
    MEMORY[0x28223BE20](v21);
    *(&v30 - 4) = a3;
    *(&v30 - 3) = a4;
    *(&v30 - 2) = v4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_21DBFA74C();
    swift_getTupleTypeMetadata2();
    swift_getWitnessTable();
    v32 = sub_21DBFA4EC();
    MEMORY[0x28223BE20](v32);
    *(&v30 - 2) = a3;
    *(&v30 - 1) = a4;
    v22 = sub_21DBFA74C();
    swift_getWitnessTable();
    v23 = sub_21DBFA55C();

    v32 = v23;
    MEMORY[0x28223BE20](v24);
    *(&v30 - 2) = a3;
    *(&v30 - 1) = a4;
    WitnessTable = swift_getWitnessTable();
    v27 = sub_21D0E5014(sub_21D9E63A8, (&v30 - 4), v22, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v26);

    sub_21D31DD48(v19);
  }

  else
  {
    v28 = (*(v10 + 32))(v12, v15, v9);
    v32 = a1;
    MEMORY[0x28223BE20](v28);
    *(&v30 - 4) = a3;
    *(&v30 - 3) = a4;
    *(&v30 - 2) = v4;
    *(&v30 - 1) = v12;
    swift_getAssociatedTypeWitness();
    sub_21DBFA74C();
    swift_getWitnessTable();
    v27 = sub_21DBFA55C();
    sub_21D31DD48(v19);
    (*(v10 + 8))(v12, v9);
  }

  return v27;
}

uint64_t sub_21D9E4370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  TTRTreeContentsQueryable.indexPath(for:)(a1, a3, &v14 - v9);
  v11 = sub_21DBF5D5C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    return (*(v12 + 32))(a4, v10, v11);
  }

  sub_21D31DD48(v10);
  return (*(v12 + 16))(a4, a2, v11);
}

uint64_t sub_21D9E44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a2;
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_21D9E4370(a1, a4, a6, &v18 - v14);
  sub_21D9E4370(v19, a4, a6, v12);
  LOBYTE(a6) = sub_21DBF5C8C();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v16(v15, v9);
  return a6 & 1;
}

uint64_t sub_21D9E4638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_21DBF5D5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRTreeContentsQueryable.indexPath(for:)(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D31DD48(v8);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v21, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v20[1] = v3;
    v15 = *(v10 + 32);
    v15(v12, v8, v9);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = swift_getTupleTypeMetadata2();
    v18 = *(v17 + 48);
    v19 = v21;
    (*(*(AssociatedTypeWitness - 8) + 16))(v21, a1, AssociatedTypeWitness);
    v15((v19 + v18), v12, v9);
    return (*(*(v17 - 8) + 56))(v19, 0, 1, v17);
  }
}

uint64_t sub_21D9E4900()
{
  swift_getAssociatedTypeWitness();
  sub_21DBF5D5C();
  swift_getTupleTypeMetadata2();
  return sub_21DBF5C8C() & 1;
}

uint64_t sub_21D9E4990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBF5D5C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = v13 - v8;
  (*(v10 + 16))(v13 - v8, a1, TupleTypeMetadata2, v7);
  v11 = *(TupleTypeMetadata2 + 48);
  (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
  return (*(*(v5 - 8) + 8))(&v9[v11], v5);
}

uint64_t TTRTreeContentsQueryable.ancestorsToExpand<A>(forRevealing:transform:isExpanded:itemExpandedStateIsUnknownIfParentIsCollapsed:)()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_21DBFA74C();
  sub_21DBFA74C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DBFA56C();
  v0 = sub_21DBFA4AC();

  return v0;
}

uint64_t sub_21D9E4C7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = a7;
  v40 = a8;
  v38 = a6;
  v36 = a4;
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = AssociatedTypeWitness;
  if (a2)
  {
    sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
    v16 = *(v15 - 8);
    swift_allocObject();
    sub_21DBFA60C();
    (*(v16 + 16))(v17, a1, v15);
    sub_21D23C8B4();
  }

  else
  {
    sub_21DBFA68C();
  }

  *&v41 = TTRTreeContentsQueryable.ancestors(of:)(a1, a9, a11);
  sub_21DBFBE5C();
  swift_getWitnessTable();
  sub_21DBFA76C();
  v18 = sub_21DBFA66C();

  v42 = v18;
  v19 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v21 = MEMORY[0x223D42810](&v41, v19, WitnessTable);
  v42 = v41;
  MEMORY[0x28223BE20](v21);
  v29 = a9;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v35 = a11;
  v33 = v36;
  v34 = v37;
  v22 = sub_21DBFC39C();
  v23 = swift_getWitnessTable();
  v25 = sub_21D0E5014(sub_21D9E6C8C, &v28, v22, a10, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v24);

  if (v38)
  {
    v42 = v25;
    sub_21DBFA74C();
    swift_getWitnessTable();
    sub_21DBFACDC();
    sub_21DBFBC2C();
    swift_getWitnessTable();
    return sub_21DBFA76C();
  }

  else
  {
    *&v41 = v25;
    MEMORY[0x28223BE20](v26);
    v29 = a9;
    v30 = a10;
    v31 = v35;
    v32 = a12;
    v33 = v39;
    v34 = v40;
    sub_21DBFA74C();
    swift_getWitnessTable();
    return sub_21DBFBFDC();
  }
}

uint64_t TTRTreeContentsUnknownIndexPathTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t (*sub_21D9E50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a2);
  return sub_21D9E6E08;
}

uint64_t sub_21D9E522C(uint64_t a1, uint64_t (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 16))(&v13 - v8, a1, AssociatedTypeWitness, v7);
  (*(v10 + 56))(v9, 0, 1, AssociatedTypeWitness);
  v11 = a2(v9);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t (*sub_21D9E53A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  sub_21D0D32E4(a1, v9);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  sub_21D0D0FD0(v9, (v7 + 5));
  return sub_21D9E6DBC;
}

uint64_t TTRTreeContentsQueryable.debugTreeDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v17 = MEMORY[0x277D84F90];
  (*(*(AssociatedTypeWitness - 8) + 56))(&v12[-v8], 1, 1, AssociatedTypeWitness, v7);
  v13 = a1;
  v14 = a2;
  v15 = &v17;
  TTRTreeContentsQueryable.debugTraverse(startingWithChildrenOf:using:)(v9, sub_21D9E64C4, v12, a1, a2);
  (*(v6 + 8))(v9, v5);
  v16 = v17;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v10 = sub_21DBFA07C();
  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_21D9E5620(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21DBFA6DC();
  v5 = sub_21DBFA3BC();
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v10;
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](0x6574692865646F4ELL, 0xEB00000000203A6DLL);
  MEMORY[0x223D42AA0](v9, v11);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  v12 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v12;
  if ((result & 1) == 0)
  {
    result = sub_21D210A84(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
    *a3 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    result = sub_21D210A84((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
    *a3 = result;
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 16 * v15;
  *(v16 + 32) = v5;
  *(v16 + 40) = v7;
  return result;
}

uint64_t TTRTreeContentsQueryable.debugTraverse(startingWithChildrenOf:using:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = TTRTreeContentsQueryable.children(of:)(a1, a4, a5);
  swift_getAssociatedTypeWitness();
  v10 = sub_21DBFA68C();
  sub_21D9E58A0(v9, v10, a2, a3, a4, a5);
}

uint64_t sub_21D9E58A0(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v49 = a2;
  v50 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = sub_21DBFBA8C();
  v13 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - v14;
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v16;
  MEMORY[0x28223BE20](v18);
  v53 = &v37 - v19;
  result = sub_21DBFA6DC();
  if (result)
  {
    v21 = 0;
    v22 = (v51 + 16);
    v41 = (v51 + 56);
    v42 = (v51 + 32);
    v39 = (v51 + 8);
    v40 = (v13 + 8);
    v47 = a6;
    v48 = v7;
    v43 = a1;
    v44 = a5;
    v38 = a3;
    while (1)
    {
      v24 = sub_21DBFA6AC();
      sub_21DBFA61C();
      v25 = a3;
      if (v24)
      {
        v26 = v22;
        v27 = *(v51 + 16);
        v28 = v26;
        result = v27(v53, a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v21, AssociatedTypeWitness);
      }

      else
      {
        result = sub_21DBFBF7C();
        if (v37 != 8)
        {
          goto LABEL_14;
        }

        v54 = result;
        v36 = v22;
        v27 = *v22;
        v28 = v36;
        v27(v53, &v54, AssociatedTypeWitness);
        result = swift_unknownObjectRelease();
      }

      v29 = v49;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v52 = v21 + 1;
      (*v42)(v17, v53, AssociatedTypeWitness);
      v25(v17, v29);
      v30 = v45;
      v27(v45, v17, AssociatedTypeWitness);
      (*v41)(v30, 0, 1, AssociatedTypeWitness);
      v31 = TTRTreeContentsQueryable.children(of:)(v30, a5, v47);
      (*v40)(v30, v46);
      v54 = v31;
      sub_21DBFA74C();
      swift_getWitnessTable();
      if (sub_21DBFACFC())
      {
        (*v39)(v17, AssociatedTypeWitness);

        v23 = v38;
      }

      else
      {
        sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
        v32 = v51;
        swift_allocObject();
        sub_21DBFA60C();
        v27(v33, v17, AssociatedTypeWitness);
        sub_21D23C8B4();
        v34 = sub_21DBFA66C();

        v35 = v38;
        sub_21D9E58A0(v31, v34, v38, v50, a5, v47);

        (*(v32 + 8))(v17, AssociatedTypeWitness);
        v23 = v35;
      }

      v22 = v28;
      a1 = v43;
      result = sub_21DBFA6DC();
      ++v21;
      a5 = v44;
      a3 = v23;
      if (v52 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_21D9E5D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v34 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v40 = &v34 - v12;
  v13 = *(a1 + 36);
  v37 = v6;
  v38 = v5;
  v39 = type metadata accessor for DerivedTreePreorderIterator.Level();
  v14 = sub_21DBFA74C();
  while (1)
  {
    v15 = *(v3 + v13);
    *&v44 = v15;
    WitnessTable = swift_getWitnessTable();
    sub_21DBFA04C();
    if (!v46)
    {
      break;
    }

    v17 = *(&v46 + 1);
    sub_21DBF8E0C();
    v18 = sub_21DBFA6DC();
    swift_bridgeObjectRelease_n();
    if (v17 != v18)
    {
      break;
    }

    v19 = swift_getWitnessTable();
    MEMORY[0x223D43510](&v46, v14, WitnessTable, v19);
  }

  v45 = v15;
  swift_getWitnessTable();
  sub_21DBFAC2C();
  v44 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050);
  sub_21D0E8418(&qword_280D0C360);
  sub_21DBFA04C();
  if (v43)
  {
    return (*(v10 + 56))(v41, 1, 1, AssociatedTypeWitness);
  }

  v21 = v42;
  sub_21DBFA78C();
  v22 = v40;
  sub_21DBFA78C();

  sub_21DBFA67C();
  v23 = *(v3 + v13);
  result = sub_21D345304(v21, v23);
  v26 = v23 + 16 * v21;
  v28 = *(v26 + 40);
  v27 = (v26 + 40);
  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    *v27 = v29;
    nullsub_1(v14, v24, v25);
    v30 = v34;
    (*(v10 + 16))(v34, v22, AssociatedTypeWitness);
    v31 = *(v10 + 56);
    v31(v30, 0, 1, AssociatedTypeWitness);
    v32 = TTRTreeContentsQueryable.children(of:)(v30, v37, v38);
    (*(v35 + 8))(v30, v36);
    *&v46 = v32;
    sub_21DBFA74C();
    swift_getWitnessTable();
    if (sub_21DBFACFC())
    {
    }

    else
    {
      v46 = v32;
      sub_21DBFA6FC();
    }

    v33 = v41;
    (*(v10 + 32))(v41, v40, AssociatedTypeWitness);
    return (v31)(v33, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_21D9E642C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a2 = result;
  return result;
}

unint64_t sub_21D9E64D4()
{
  result = qword_27CE64958;
  if (!qword_27CE64958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64958);
  }

  return result;
}

uint64_t sub_21D9E658C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D9E6628(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    sub_21DBF8E0C();
  }

  return v3;
}

uint64_t sub_21D9E6720(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t sub_21D9E6790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D9E6810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D9E689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D9E6918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_21D9E699C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_21D9E6AD8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_21D9E6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = TTRTreeContentsQueryable.level(of:)(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_21D9E6DBC(uint64_t a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  return TTRTreeContentsQueryable.children(of:)(a1, v3, v4);
}

uint64_t TTRShowRemindersInListTipKitDataModelSource.__allocating_init(store:list:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRShowRemindersInListTipKitDataModelSource.init(store:list:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

RemindersUICore::TTRTipKitDataModelSourceContextKeyCondition __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowRemindersInListTipKitDataModelSource.hasCompletedReminders()()
{
  v2 = v0;
  v11[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D448E0]) initWithStore_];
  v4 = [*(v1 + 24) objectID];
  v11[0] = 0;
  v5 = [v3 fetchCompletedRemindersCountInList:v4 error:v11];

  if (v5)
  {
    v6 = v11[0];
    v7 = [v5 longLongValue];

    if (v7 <= 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *v2 = v9;
  }

  else
  {
    v10 = v11[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return result;
}

uint64_t TTRShowRemindersInListTipKitDataModelSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id TTRShowRemindersInListTemplateContext.sourceListForSavingAsTemplate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 0;
  return v2;
}

uint64_t TTRShowRemindersInListTemplateContext.__allocating_init(list:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRShowRemindersInListTemplateContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D9E715C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 0;
  return v2;
}

uint64_t static REMReminderChangeItem.dueDateComponents(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = a1;
  v2 = sub_21DBF5C4C();
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF583C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v10 = sub_21DBF5A0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC35610;
  v15 = *(v11 + 104);
  v15(v14 + v13, *MEMORY[0x277CC99C0], v10);
  v15(v14 + v13 + v12, *MEMORY[0x277CC9978], v10);
  v15(v14 + v13 + 2 * v12, *MEMORY[0x277CC99C8], v10);
  v15(v14 + v13 + 3 * v12, *MEMORY[0x277CC9988], v10);
  v15(v14 + v13 + 4 * v12, *MEMORY[0x277CC9998], v10);
  v15(v14 + v13 + 5 * v12, *MEMORY[0x277CC9968], v10);
  v15(v14 + v13 + 6 * v12, *MEMORY[0x277CC9980], v10);
  v15(v14 + v13 + 7 * v12, *MEMORY[0x277CC99A0], v10);
  sub_21D1D0F50(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17 = v21;
  v16 = v22;
  (*(v21 + 104))(v6, *MEMORY[0x277CC9830], v22);
  sub_21DBF584C();
  (*(v17 + 8))(v6, v16);
  v18 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  sub_21DBF59FC();
  sub_21DBF58DC();

  return (*(v23 + 8))(v9, v24);
}

id (*REMReminderFlaggedContextChangeItem.isFlagged.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 flagged] > 0;
  return sub_21D9E7714;
}

uint64_t sub_21D9E7788(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D82E490(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21D9E98D4(v5);
  *a1 = v2;
  return result;
}

id static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)()
{
  v0 = [objc_opt_self() configurationWithPointSize_];
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  return v2;
}

uint64_t AXTechnology.ttrShouldUseSpeakableStrings.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_21DBFC64C();

  if ((v5 & 1) == 0)
  {
    v7 = sub_21DBFA16C();
    v9 = v8;
    if (v7 != sub_21DBFA16C() || v9 != v10)
    {
      v12 = sub_21DBFC64C();

      if (v12)
      {
        goto LABEL_6;
      }

      v13 = sub_21DBFA16C();
      v15 = v14;
      if (v13 != sub_21DBFA16C() || v15 != v16)
      {
        v18 = sub_21DBFC64C();

        if (v18)
        {
          goto LABEL_6;
        }

        v19 = sub_21DBFA16C();
        v21 = v20;
        if (v19 != sub_21DBFA16C() || v21 != v22)
        {
          v23 = sub_21DBFC64C();

          if (v23)
          {
            goto LABEL_6;
          }

          v24 = sub_21DBFA16C();
          v26 = v25;
          if (v24 == sub_21DBFA16C() && v26 == v27)
          {
            goto LABEL_23;
          }

          v28 = sub_21DBFC64C();

          if ((v28 & 1) == 0)
          {
            v29 = sub_21DBFA16C();
            v31 = v30;
            if (v29 == sub_21DBFA16C() && v31 == v32)
            {
              goto LABEL_23;
            }

            v33 = sub_21DBFC64C();

            if (v33)
            {
              goto LABEL_25;
            }

            v34 = sub_21DBFA16C();
            v36 = v35;
            if (v34 == sub_21DBFA16C() && v36 == v37)
            {
LABEL_23:
              v6 = 1;
              goto LABEL_15;
            }

            v38 = sub_21DBFC64C();

            if ((v38 & 1) == 0)
            {
              v39 = sub_21DBFA16C();
              v41 = v40;
              if (v39 != sub_21DBFA16C() || v41 != v42)
              {
                v6 = sub_21DBFC64C();
                goto LABEL_15;
              }

              goto LABEL_23;
            }
          }

LABEL_25:
          v6 = 1;
          return v6 & 1;
        }
      }
    }

LABEL_14:
    v6 = 0;
LABEL_15:

    return v6 & 1;
  }

LABEL_6:
  v6 = 0;
  return v6 & 1;
}

uint64_t AXTechnology.ttrShouldProvideAdditionalContext.getter()
{
  v0 = sub_21DBFA16C();
  v2 = v1;
  if (v0 == sub_21DBFA16C() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_21DBFC64C();

  if ((v5 & 1) == 0)
  {
    v7 = sub_21DBFA16C();
    v9 = v8;
    if (v7 != sub_21DBFA16C() || v9 != v10)
    {
      v12 = sub_21DBFC64C();

      if (v12)
      {
        goto LABEL_6;
      }

      v13 = sub_21DBFA16C();
      v15 = v14;
      if (v13 != sub_21DBFA16C() || v15 != v16)
      {
        v18 = sub_21DBFC64C();

        if (v18)
        {
          goto LABEL_6;
        }

        v19 = sub_21DBFA16C();
        v21 = v20;
        if (v19 != sub_21DBFA16C() || v21 != v22)
        {
          v23 = sub_21DBFC64C();

          if (v23)
          {
            goto LABEL_6;
          }

          v24 = sub_21DBFA16C();
          v26 = v25;
          if (v24 != sub_21DBFA16C() || v26 != v27)
          {
            v28 = sub_21DBFC64C();

            if (v28)
            {
              goto LABEL_6;
            }

            v29 = sub_21DBFA16C();
            v31 = v30;
            if (v29 == sub_21DBFA16C() && v31 == v32)
            {
              goto LABEL_26;
            }

            v33 = sub_21DBFC64C();

            if ((v33 & 1) == 0)
            {
              v34 = sub_21DBFA16C();
              v36 = v35;
              if (v34 == sub_21DBFA16C() && v36 == v37)
              {
LABEL_26:
                v6 = 1;
                goto LABEL_15;
              }

              v38 = sub_21DBFC64C();

              if ((v38 & 1) == 0)
              {
                v39 = sub_21DBFA16C();
                v41 = v40;
                if (v39 != sub_21DBFA16C() || v41 != v42)
                {
                  v6 = sub_21DBFC64C();
                  goto LABEL_15;
                }

                goto LABEL_26;
              }
            }

            v6 = 1;
            return v6 & 1;
          }
        }
      }
    }

LABEL_14:
    v6 = 0;
LABEL_15:

    return v6 & 1;
  }

LABEL_6:
  v6 = 0;
  return v6 & 1;
}

uint64_t Array<A>.ttrAccessibilitySpeakableList.getter(void *a1)
{
  v2 = a1[2];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_21DC08D20;
      v5 = MEMORY[0x277D837D0];
      *(v4 + 56) = MEMORY[0x277D837D0];
      v6 = sub_21D17A884();
      v7 = a1[5];
      *(v4 + 32) = a1[4];
      *(v4 + 40) = v7;
      *(v4 + 96) = v5;
      *(v4 + 104) = v6;
      v8 = a1[6];
      v9 = a1[7];
      *(v4 + 64) = v6;
      *(v4 + 72) = v8;
      *(v4 + 80) = v9;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v3 = sub_21DBFA13C();
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v10 = qword_280D1B938;
      sub_21DBF8E0C();
      if (v10 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64960);
      sub_21D9E9868();
      v11 = sub_21DBFA07C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21DC08D00;
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_21D17A884();
      v13 = &a1[2 * v2 + 4];
      v14 = *(v13 - 8);
      *(v12 + 32) = *(v13 - 16);
      *(v12 + 40) = v14;
      sub_21DBF8E0C();
      v15 = sub_21DBFA13C();
      v17 = v16;

      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v15, v17);

      return v11;
    }
  }

  else if (v2)
  {
    v3 = a1[4];
    sub_21DBF8E0C();
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t static NSDateFormatter.ttrAccessibilityVoiceOverPronounceableStringForHourOfDay(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v39 - v3;
  v5 = sub_21DBF582C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();
  v11 = [objc_opt_self() currentLocale];
  sub_21DBF577C();

  v12 = sub_21DBF574C();
  (*(v6 + 8))(v8, v5);
  v13 = [v9 dateFormatFromTemplate:v10 options:0 locale:v12];

  if (v13 && (v14 = sub_21DBFA16C(), v16 = v15, v13, v40 = v14, v41 = v16, v39[0] = 97, v39[1] = 0xE100000000000000, (*(v6 + 56))(v4, 1, 1, v5), sub_21D176F0C(), v17 = MEMORY[0x277D837D0], sub_21DBFBBAC(), v19 = v18, sub_21D0CF7E0(v4, &unk_27CE65010), , (v19 & 1) == 0))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v32 = sub_21DBF516C();
    v34 = v33;
    if (a1 % 12)
    {
      v35 = a1 % 12;
    }

    else
    {
      v35 = 12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21DC08D20;
    v37 = MEMORY[0x277D83C10];
    *(v36 + 56) = MEMORY[0x277D83B88];
    *(v36 + 64) = v37;
    *(v36 + 32) = v35;
    *(v36 + 96) = v17;
    *(v36 + 104) = sub_21D17A884();
    *(v36 + 72) = v32;
    *(v36 + 80) = v34;
    v38 = sub_21DBFA13C();

    return v38;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    if (a1)
    {
      v20 = MEMORY[0x277D837D0];
      sub_21DBF516C();
      if (a1 <= 24)
      {
        v21 = a1;
      }

      else
      {
        v21 = a1 % 24;
      }

      if (v21 > 9)
      {

        v40 = v21;
        v25 = sub_21DBFC5BC();
        v27 = v29;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v22 = swift_allocObject();
        v23 = MEMORY[0x277D83B88];
        *(v22 + 16) = xmmword_21DC08D00;
        v24 = MEMORY[0x277D83C10];
        *(v22 + 56) = v23;
        *(v22 + 64) = v24;
        *(v22 + 32) = v21;
        v25 = sub_21DBFA13C();
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21DC08D00;
      *(v30 + 56) = v20;
      *(v30 + 64) = sub_21D17A884();
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v31 = sub_21DBFA13C();

      return v31;
    }

    else
    {

      return sub_21DBF516C();
    }
  }
}

id NSAttributedString.ttrAccessibilityConvertedToHaveVoiceOverReadableTagList(withIncludedTags:andExcludedTags:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = 0;
  v77 = 1;
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v6 = qword_27CE57130;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_27CE66808;
  v9 = [v7 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = MEMORY[0x223D42B30](v10, v12);

  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = &v76;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21D9E98CC;
  *(v15 + 24) = v14;
  v74 = sub_21D24B3B4;
  v75 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_21D1A6068;
  v73 = &block_descriptor_129;
  v16 = _Block_copy(&aBlock);
  v17 = v7;

  v68 = v17;
  [v17 enumerateAttribute:v8 inRange:0 options:v13 usingBlock:{2, v16}];
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
    goto LABEL_45;
  }

  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = sub_21D9D6344(*(a1 + 16), 0);
    v21 = sub_21D9D4F98(&aBlock, v20 + 4, v18, a1);
    sub_21DBF8E0C();
    sub_21D0CFAF8();
    if (v21 == v18)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = v19;
LABEL_8:
  aBlock = v20;

  sub_21D9E7788(&aBlock);

  v22 = aBlock;
  v23 = *(aBlock + 2);
  if (v23)
  {
    aBlock = v19;
    sub_21D18E678(0, v23, 0);
    v24 = aBlock;
    v25 = (v22 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = qword_27CE57550;
      sub_21DBF8E0C();
      if (v28 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_21DC08D00;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_21D17A884();
      *(v29 + 32) = v26;
      *(v29 + 40) = v27;
      sub_21DBF8E0C();
      v30 = sub_21DBFA13C();
      v32 = v31;

      aBlock = v24;
      v34 = *(v24 + 2);
      v33 = *(v24 + 3);
      if (v34 >= v33 >> 1)
      {
        sub_21D18E678((v33 > 1), v34 + 1, 1);
        v24 = aBlock;
      }

      *(v24 + 2) = v34 + 1;
      v35 = &v24[16 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
      v25 += 2;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v66 = Array<A>.ttrAccessibilitySpeakableList.getter(v24);
  v67 = v36;

  v8 = a2;
  v37 = *(a2 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v39 = sub_21D9D6344(*(a2 + 16), 0);
    v40 = sub_21D9D4F98(&aBlock, v39 + 4, v37, a2);
    v14 = v74;
    sub_21DBF8E0C();
    sub_21D0CFAF8();
    if (v40 == v37)
    {
      v38 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_21:
  aBlock = v39;

  sub_21D9E7788(&aBlock);

  v41 = aBlock;
  v42 = *(aBlock + 2);
  if (v42)
  {
    aBlock = v38;
    sub_21D18E678(0, v42, 0);
    v43 = aBlock;
    v44 = (v41 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      v47 = qword_27CE57550;
      sub_21DBF8E0C();
      if (v47 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_21DC08D00;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = sub_21D17A884();
      *(v48 + 32) = v45;
      *(v48 + 40) = v46;
      sub_21DBF8E0C();
      v49 = sub_21DBFA13C();
      v51 = v50;

      aBlock = v43;
      v53 = *(v43 + 2);
      v52 = *(v43 + 3);
      if (v53 >= v52 >> 1)
      {
        sub_21D18E678((v52 > 1), v53 + 1, 1);
        v43 = aBlock;
      }

      *(v43 + 2) = v53 + 1;
      v54 = &v43[16 * v53];
      *(v54 + 4) = v49;
      *(v54 + 5) = v51;
      v44 += 2;
      --v42;
    }

    while (v42);
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v14 = Array<A>.ttrAccessibilitySpeakableList.getter(v43);
  v8 = v55;

  aBlock = 0;
  v71 = 0xE000000000000000;
  if (v67)
  {
    MEMORY[0x223D42AA0](v66, v67);

    if (!v8)
    {
      goto LABEL_40;
    }

LABEL_36:
    if (qword_280D1B938 == -1)
    {
LABEL_37:
      MEMORY[0x223D42AA0](qword_280D1B940, unk_280D1B948);
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_21DC08D00;
      *(v56 + 56) = MEMORY[0x277D837D0];
      *(v56 + 64) = sub_21D17A884();
      *(v56 + 32) = v14;
      *(v56 + 40) = v8;
      v57 = sub_21DBFA13C();
      v59 = v58;

      MEMORY[0x223D42AA0](v57, v59);

      goto LABEL_40;
    }

LABEL_46:
    swift_once();
    goto LABEL_37;
  }

  if (qword_27CE57570 != -1)
  {
    swift_once();
  }

  MEMORY[0x223D42AA0](qword_27CE671D0, *algn_27CE671D8);
  if (v8)
  {
    goto LABEL_36;
  }

LABEL_40:
  if (v77 == 1)
  {
    v60 = v68;
  }

  else
  {
    v61 = v76;
    v62 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v63 = sub_21DBFA12C();

    v64 = [v62 initWithString_];

    v60 = v68;
    [v68 insertAttributedString:v64 atIndex:v61];
  }

  return v60;
}

void sub_21D9E92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_21D0DB414(a1, v12);
  if (v13)
  {
    if ((swift_dynamicCast() & 1) != 0 && v11 >= 1)
    {
      v10 = sub_21DBFA12C();
      [a5 replaceCharactersInRange:a2 withString:{a3, v10}];

      *a6 = a2;
      *(a6 + 8) = 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v12, &qword_27CE5C690);
  }
}

unint64_t Array<A>.ttrAccessibilitySharingSummary()(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_33:
    v3 = sub_21DBFBD7C();
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v28 = v2;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v27 = 0x800000021DC730A0;
  sub_21DBF516C();
  v4 = 0;
  v29 = MEMORY[0x277D84F90];
  v2 = 0x277CBD000uLL;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D44740](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v8 = [objc_opt_self() stringFromContact:v5 style:{0, v27}];
    if (v8)
    {

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    else
    {
    }

    ++v4;
  }

  while (v7 != v3);
  v9 = MEMORY[0x277D837D0];
  if ((v29 & 0x8000000000000000) == 0 && (v29 & 0x4000000000000000) == 0)
  {
    if (*(v29 + 16))
    {
      goto LABEL_18;
    }

LABEL_36:

LABEL_37:
    v2 = v28;
    if (qword_27CE57200 == -1)
    {
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_21DC08D00;
      if (v2)
      {
        v23 = sub_21DBFBD7C();
      }

      else
      {
        v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = MEMORY[0x277D83C10];
      *(v22 + 56) = MEMORY[0x277D83B88];
      *(v22 + 64) = v24;
      *(v22 + 32) = v23;
      goto LABEL_42;
    }

LABEL_47:
    swift_once();
    goto LABEL_38;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223D44740](0, v29);
  }

  else
  {
    if (!*(v29 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v10 = *(v29 + 32);
  }

  v11 = v10;

  v12 = [objc_opt_self() stringFromContact:v11 style:0];
  if (!v12)
  {

    goto LABEL_37;
  }

  v13 = v12;
  v14 = sub_21DBFA16C();
  v16 = v15;

  if (v28)
  {
    v17 = sub_21DBFBD7C();
    if (v17 == 1)
    {
LABEL_43:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_21DC08D00;
      *(v26 + 56) = v9;
      *(v26 + 64) = sub_21D17A884();
      *(v26 + 32) = v14;
      *(v26 + 40) = v16;
      v21 = sub_21DBFA13C();

      return v21;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 == 1)
    {
      goto LABEL_43;
    }
  }

  if (qword_27CE57208 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D20;
  *(v18 + 56) = v9;
  result = sub_21D17A884();
  *(v18 + 64) = result;
  *(v18 + 32) = v14;
  *(v18 + 40) = v16;
  if (!__OFSUB__(v17, 1))
  {
    v20 = MEMORY[0x277D83C10];
    *(v18 + 96) = MEMORY[0x277D83B88];
    *(v18 + 104) = v20;
    *(v18 + 72) = v17 - 1;
LABEL_42:
    v14 = sub_21DBFA13C();
    v16 = v25;

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

unint64_t sub_21D9E9868()
{
  result = qword_27CE64968;
  if (!qword_27CE64968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE64960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64968);
  }

  return result;
}

uint64_t sub_21D9E98D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21DBFC59C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21DBFA69C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21D9E9A9C(v7, v8, a1, v4);
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
    return sub_21D9E99CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21D9E99CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21DBFC64C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D9E9A9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_21D82E300(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_21D9EA078((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_21DBFC64C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21DBFC64C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21D210B90(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21D210B90((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_131:
          __break(1u);
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_21D9EA078((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21D82E300(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_21D82E274(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_21DBFC64C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_21D9EA078(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_21DBFC64C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id static REMUserActivity.platformBlankAppIcon(format:scale:)(double a1)
{
  v2 = sub_21DBFAF8C();
  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v2 scale:0 orientation:a1];

  return v3;
}

id REMUserActivity.platformAppIconAndName(format:scale:)(double a1)
{
  v2 = sub_21DBFAF9C();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v2 scale:0 orientation:a1];

  return v4;
}

uint64_t *TTRAttachmentThumbnailsManager.__allocating_init(thumbnailSizeProvider:thumbnailGenerator:)(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_21D9EBAF0(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

char *TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    v4 = sub_21DBFBD7C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_21D18F418(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      TTRAttachmentThumbnailsManager.thumbnail(for:scale:)(v8, &v16, a2);

      v10 = v16;
      v11 = v17;
      v18 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v16;
        sub_21D18F418((v12 > 1), v13 + 1, 1);
        v10 = v15;
        v5 = v18;
      }

      ++v7;
      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

id TTRAttachmentThumbnailsManager.Result.image.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRAttachmentThumbnailsManager.thumbnail(for:scale:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v55 - v9;
  v11 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = (v55 - v16);
  v18 = [a1 objectID];
  v19 = [a1 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_21DBF546C();

    v21 = sub_21DBF54CC();
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  }

  else
  {
    v22 = sub_21DBF54CC();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  }

  *v17 = v18;
  sub_21D57690C(v10, v17 + *(v11 + 20));
  v23 = v18;
  v24 = sub_21D9EAB7C();
  v25 = [v24 objectForKey_];

  if (v25)
  {
    result = sub_21D9EBEB0(v17);
    v27 = 0;
  }

  else
  {
    swift_beginAccess();
    v29 = v4[14];
    sub_21DBF8E0C();
    v30 = sub_21D1E3370(v17, v29);

    if (v30)
    {
      result = sub_21D9EBEB0(v17);
      v28 = 0;
      v27 = 2;
      goto LABEL_13;
    }

    swift_beginAccess();
    v31 = v4[13];
    if (!*(v31 + 16) || (v32 = sub_21D17EFA0(v17), (v33 & 1) == 0))
    {
      swift_endAccess();
      v34 = [a1 width];
      v35 = [a1 height];
      v36 = v4[5];
      v37 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v36);
      v38 = (*(v37 + 8))(v36, v37, v34, v35, a3);
      v40 = v39;
      v42 = v41;
      v43 = MEMORY[0x28223BE20](v38).n128_u64[0];
      v55[-6] = v4;
      v55[-5] = a1;
      *&v55[-4] = a3;
      v55[-3] = v43;
      v55[-2] = v44;
      v55[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64970);
      v55[1] = sub_21DBF82FC();
      v45 = swift_allocObject();
      swift_weakInit();
      sub_21D9EBCB8(v17, v13);
      v46 = (*(v56 + 80) + 24) & ~*(v56 + 80);
      v55[2] = *(v56 + 80);
      v56 = v46 + v12;
      v47 = (v46 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = v45;
      sub_21D9EBD1C(v13, v48 + v46);
      *(v48 + v47) = v23;
      v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v49 = v40;
      v49[1] = v42;
      v28 = v23;
      v50 = sub_21DBF816C();
      sub_21DBF820C();

      v51 = swift_allocObject();
      swift_weakInit();
      sub_21D9EBCB8(v17, v13);
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      sub_21D9EBD1C(v13, v52 + v46);

      v53 = sub_21DBF816C();
      v23 = sub_21DBF822C();

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v4[13];
      v4[13] = 0x8000000000000000;
      sub_21D479680(v23, v17, isUniquelyReferenced_nonNull_native);
      v4[13] = v57;
      swift_endAccess();
      result = sub_21D9EBEB0(v17);
      v27 = 1;
      goto LABEL_13;
    }

    v25 = *(*(v31 + 56) + 8 * v32);
    swift_endAccess();

    result = sub_21D9EBEB0(v17);
    v27 = 1;
  }

  v28 = v23;
  v23 = v25;
LABEL_13:
  *a2 = v23;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27;
  return result;
}

id sub_21D9EAB7C()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[12];
  }

  else
  {
    sub_21D9EB634(v0);
    v3 = v0[12];
    v0[12] = v4;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_21D9EABD8@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v20 = a3;
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v14 = sub_21DBFB12C();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  LOBYTE(a1) = sub_21DBF9DAC();
  result = (*(v12 + 8))(v14, v11);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_7:
    *a4 = v15;
    return v15;
  }

  swift_beginAccess();
  sub_21D8741FC(a2);
  swift_endAccess();

  result = sub_21D9EAB7C();
  v17 = a5 * a6;
  if (COERCE__INT64(fabs(a5 * a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v17 < 9.22337204e18)
  {
    v18 = result;
    [result setObject:v15 forKey:v20 cost:v17];

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21D9EAE14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v13 = sub_21DBFB12C();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_21DBF9DAC();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      sub_21D8741FC(a3);
      swift_endAccess();

      sub_21D9EBCB8(a3, v6);
      swift_beginAccess();
      sub_21D29ED2C(v9, v6);
      swift_endAccess();

      return sub_21D9EBEB0(v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D9EB04C(uint64_t a1)
{
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  sub_21D3050B8(v1 + *(a1 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_21DBFC7FC();
    sub_21D9EC920(&qword_280D171E0, MEMORY[0x277CC9260]);
    sub_21DBFA00C();
    (*(v4 + 8))(v6, v3);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D9EB248(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_21DBFB64C();
  sub_21D3050B8(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_21DBFC7FC();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_21DBFC7FC();
  sub_21D9EC920(&qword_280D171E0, MEMORY[0x277CC9260]);
  sub_21DBFA00C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21D9EB430(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_21DBFC7DC();
  sub_21DBFB64C();
  sub_21D3050B8(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_21DBFC7FC();
    sub_21D9EC920(&qword_280D171E0, MEMORY[0x277CC9260]);
    sub_21DBFA00C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_21DBFC82C();
}

void sub_21D9EB634(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v5 * v6;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 * 25) >> 64 == (25 * v7) >> 63)
  {
    [v2 setTotalCostLimit_];
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t TTRAttachmentThumbnailsManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return v0;
}

uint64_t TTRAttachmentThumbnailsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return swift_deallocClassInstance();
}

BOOL sub_21D9EB7B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest() + 20);
  v15 = *(v11 + 48);
  sub_21D3050B8(a1 + v14, v13);
  sub_21D3050B8(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EA20);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21D3050B8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21D0CF7E0(v13, &unk_27CE5F2A0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_21D9EC920(&qword_280D171D0, MEMORY[0x277CC9260]);
  v18 = sub_21DBFA10C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_21D0CF7E0(v13, &qword_27CE5EA20);
  return (v18 & 1) != 0;
}

uint64_t *sub_21D9EBAF0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  return sub_21D0D14E4(v11, a2, v12, a4, a5);
}

uint64_t type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest()
{
  result = qword_280D12908;
  if (!qword_280D12908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D9EBC38()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v1[10];
  v7 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v6);
  return (*(v7 + 8))(v2, v6, v7, v3, v4, v5);
}

uint64_t sub_21D9EBCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9EBD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21D9EBD80@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21D9EABD8(a1, (v2 + v6), *(v2 + v7), a2, *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21D9EBE3C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_21D9EAE14(a1, v4, v5);
}

uint64_t sub_21D9EBEB0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D9EBF84(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D72DABC(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRAttachmentThumbnailsManager.Result(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D72DABC(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D72DB24(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRAttachmentThumbnailsManager.Result(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D72DB24(v4, v5, v6);
  return a1;
}

void **sub_21D9EC080(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_21DBF54CC();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v4;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(v6 + v7, a2 + v7, v8);
      (*(v9 + 56))(v6 + v7, 0, 1, v8);
    }
  }

  return v6;
}

uint64_t sub_21D9EC200(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF54CC();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}