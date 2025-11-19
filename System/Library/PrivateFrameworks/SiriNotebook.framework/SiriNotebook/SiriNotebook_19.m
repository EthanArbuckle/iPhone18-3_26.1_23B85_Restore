void sub_2682C0138(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E4CC8);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_22();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_88_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2682C020C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2682C2320(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2682C02CC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E4EA0);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_22();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515E8, &unk_2683E6530);
  OUTLINED_FUNCTION_88_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2682C038C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2682C23C0(result, 1, sub_2682E4F64);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 16 * v7 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2682C0458(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E5318);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_22();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D0, &unk_2683E3D00);
  OUTLINED_FUNCTION_88_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2682C0518(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_21(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_2682C23C0(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2682C0648(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E566C);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_22();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_88_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2682C0770(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_21(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  result = sub_2682C23C0(result, 1, v5);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v11 + 24) >> 1) - *(v11 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v9);
  OUTLINED_FUNCTION_88_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return result;
  }

  v12 = *(v11 + 16);
  v8 = __OFADD__(v12, v1);
  v13 = v12 + v1;
  if (!v8)
  {
    *(v11 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2682C083C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_21(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2682C23C0(v4, 1, sub_2682E58B8);
  OUTLINED_FUNCTION_68_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0) - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_67_2();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

size_t sub_2682C0944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2682E5AF8(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70) - 8);
  v5 = sub_2682CB02C(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  sub_2681281A4();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2682C0A44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2682E5B1C(*(a1 + 16), 0);
  v4 = sub_2682CB2F8(&v6, v3 + 4, v1, a1);

  sub_2681281A4();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_2682C0B00()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_14_3();
  v8 = *v1;
  if (*(*v1 + 24) > v5)
  {
    v9 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC00, &unk_2683E3D90);
  OUTLINED_FUNCTION_34_11();
  v10 = sub_2683D03D8();
  v11 = v10;
  if (!*(v8 + 16))
  {
LABEL_35:

LABEL_36:
    *v1 = v11;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v42 = v1;
  v12 = 0;
  v13 = (v8 + 64);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = v10 + 64;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      ++v20;
      if (v13[v12])
      {
        OUTLINED_FUNCTION_6_5();
        v16 = v22 & v21;
        goto LABEL_14;
      }
    }

    if ((v3 & 1) == 0)
    {

      v1 = v42;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_20_21();
    v1 = v42;
    if (v38 != v39)
    {
      *v13 = -1 << v37;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_36_11();
      sub_268158C84(v40, v41, v8 + 64);
    }

    *(v8 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    OUTLINED_FUNCTION_111_2();
LABEL_14:
    v23 = v19 | (v12 << 6);
    v24 = *(*(v8 + 48) + 8 * v23);
    v25 = *(v8 + 56) + *(v43 + 72) * v23;
    if (v3)
    {
      sub_2682B5320();
    }

    else
    {
      sub_2682B5274();
      v26 = v24;
    }

    v27 = *(v11 + 40);
    v28 = *(v18 + 8 * ((sub_2683CFF58() & ~(-1 << *(v11 + 32))) >> 6));
    OUTLINED_FUNCTION_85_1();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_27:
    OUTLINED_FUNCTION_40_2();
    *(v18 + v33) |= v34;
    *(*(v11 + 48) + 8 * v35) = v24;
    v36 = *(v11 + 56);
    OUTLINED_FUNCTION_3_33();
    sub_2682B5320();
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v18 + 8 * v30) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
}

void sub_2682C0DB4()
{
  OUTLINED_FUNCTION_114_1();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_30_11(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBF0, &qword_2683D4348);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v8)
  {

LABEL_30:
    *v4 = v2;
    OUTLINED_FUNCTION_113_2();
    return;
  }

  v41 = v0;
  v9 = 0;
  OUTLINED_FUNCTION_12_19();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v2 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v3 + 8 * v9))
      {
        OUTLINED_FUNCTION_6_5();
        v12 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_20_21();
      if (v37 != v38)
      {
        OUTLINED_FUNCTION_50_7(v36);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_36_11();
        sub_268158C84(v39, v40, v3);
      }

      v1[2] = 0;
    }

    v4 = v41;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_9:
    v20 = v16 | (v9 << 6);
    v21 = *(v1[6] + 8 * v20);
    v22 = *(v1[7] + 8 * v20);
    if ((v6 & 1) == 0)
    {
      v23 = v21;
      v24 = v22;
    }

    v25 = v2[5];
    v26 = sub_2683CFF58();
    OUTLINED_FUNCTION_19_22(v26);
    v28 = v15[v27];
    OUTLINED_FUNCTION_85_1();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    *(v15 + v33) |= v34;
    *(v2[6] + 8 * v35) = v21;
    *(v2[7] + 8 * v35) = v22;
    ++v2[2];
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (v15[v30] != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2682C0F5C()
{
  OUTLINED_FUNCTION_114_1();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_30_11(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251650, &qword_2683E3DA0);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v8)
  {
LABEL_29:

LABEL_30:
    *v4 = v2;
    OUTLINED_FUNCTION_113_2();
    return;
  }

  v40 = v0;
  v9 = 0;
  OUTLINED_FUNCTION_12_19();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v2 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v3 + 8 * v9))
      {
        OUTLINED_FUNCTION_6_5();
        v12 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v6 & 1) == 0)
    {

      v4 = v40;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_21();
    v4 = v40;
    if (v36 != v37)
    {
      OUTLINED_FUNCTION_50_7(v35);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_36_11();
      sub_268158C84(v38, v39, v3);
    }

    v1[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_111_2();
LABEL_9:
    v20 = v16 | (v9 << 6);
    v21 = *(v1[6] + 8 * v20);
    v22 = *(v1[7] + 8 * v20);
    if ((v6 & 1) == 0)
    {
      v23 = v21;
    }

    v24 = *(v2 + 40);
    v25 = sub_2683CFF58();
    OUTLINED_FUNCTION_19_22(v25);
    v27 = *(v15 + 8 * v26);
    OUTLINED_FUNCTION_85_1();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    *(v15 + v32) |= v33;
    *(*(v2 + 48) + 8 * v34) = v21;
    OUTLINED_FUNCTION_35_9(v34);
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(v15 + 8 * v29) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2682C10F0(uint64_t a1, uint64_t a2)
{
  v8 = OUTLINED_FUNCTION_30_11(a1);
  v11 = OUTLINED_FUNCTION_82_2(v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v13)
  {
LABEL_29:

    *v2 = a2;
    return;
  }

  v14 = 0;
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_98_2();
  if (!v4)
  {
LABEL_4:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v14 >= v2)
      {
        break;
      }

      ++v16;
      if (*(v5 + 8 * v14))
      {
        OUTLINED_FUNCTION_6_5();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_20_21();
      if (v33 != v34)
      {
        OUTLINED_FUNCTION_50_7(v32);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_36_11();
        sub_268158C84(v35, v36, v5);
      }

      v3[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_96_1();
LABEL_9:
    v19 = v15 | (v14 << 6);
    v20 = *(v3[6] + v19);
    v21 = *(v3[7] + 8 * v19);
    if ((a2 & 1) == 0)
    {
    }

    v22 = *(a2 + 40);
    sub_2683D0698();
    sub_2683D06B8();
    v23 = sub_2683D06D8();
    OUTLINED_FUNCTION_19_22(v23);
    v25 = *(v6 + 8 * v24);
    OUTLINED_FUNCTION_85_1();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_94_2();
    *(v31 + v30) = v20;
    OUTLINED_FUNCTION_35_9(v30);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(v6 + 8 * v27) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_2682C1298(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2683CB528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v47 - v14;
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251638, &qword_2683E3D78);
  v56 = a2;
  result = sub_2683D03D8();
  v18 = result;
  if (!*(v15 + 16))
  {
LABEL_37:

LABEL_38:
    *v3 = v18;
    return result;
  }

  v53 = v6;
  v47 = v3;
  v19 = 0;
  v20 = (v15 + 64);
  v21 = 1 << *(v15 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v15 + 64);
  v24 = (v21 + 63) >> 6;
  v49 = (v7 + 32);
  v48 = (v7 + 8);
  v25 = result + 64;
  v52 = v15;
  v60 = result;
  if (!v23)
  {
LABEL_9:
    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v26 = __clz(__rbit64(v29));
        v27 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_38;
    }

    v46 = 1 << *(v15 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      sub_268158C84(0, (v46 + 63) >> 6, v20);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v26 = __clz(__rbit64(v23));
    v27 = (v23 - 1) & v23;
LABEL_14:
    v30 = v26 | (v19 << 6);
    v31 = *(v15 + 48);
    v58 = *(v55 + 72);
    v59 = v27;
    if (v56)
    {
      sub_2682CC5D8();
      v57 = *(*(v15 + 56) + 8 * v30);
    }

    else
    {
      sub_2682CC640();
      v57 = *(*(v15 + 56) + 8 * v30);
    }

    v32 = *(v18 + 40);
    sub_2683D0698();
    v33 = v54;
    sub_2682CC640();
    v34 = v53;
    if (__swift_getEnumTagSinglePayload(v33, 1, v53) == 1)
    {
      sub_2683D06B8();
    }

    else
    {
      v35 = v50;
      (*v49)(v50, v33, v34);
      sub_2683D06B8();
      sub_2682C22DC(&unk_28024D6D8);
      sub_2683CFA08();
      (*v48)(v35, v34);
    }

    result = sub_2683D06D8();
    v36 = v60;
    v37 = -1 << *(v60 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    v15 = v52;
    if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
    {
      break;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v25 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v45 = *(v36 + 48);
    result = sub_2682CC5D8();
    v23 = v59;
    v18 = v60;
    *(*(v60 + 56) + 8 * v40) = v57;
    ++*(v18 + 16);
    if (!v23)
    {
      goto LABEL_9;
    }
  }

  v41 = 0;
  v42 = (63 - v37) >> 6;
  while (++v39 != v42 || (v41 & 1) == 0)
  {
    v43 = v39 == v42;
    if (v39 == v42)
    {
      v39 = 0;
    }

    v41 |= v43;
    v44 = *(v25 + 8 * v39);
    if (v44 != -1)
    {
      v40 = __clz(__rbit64(~v44)) + (v39 << 6);
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2682C17D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251648, &qword_2683E3D88);
  v35 = a2;
  result = sub_2683D03D8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_37:

LABEL_38:
    *v3 = v8;
    return result;
  }

  v34 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_38;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_268158C84(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    if (v35)
    {
      v20 = *(v5 + 48) + 104 * v19;
      v43 = *v20;
      v21 = *(v20 + 24);
      v44 = *(v20 + 16);
      memcpy(__dst, (v20 + 32), sizeof(__dst));
      v22 = *(*(v5 + 56) + 8 * v19);
    }

    else
    {
      memcpy(v41, (*(v5 + 48) + 104 * v19), sizeof(v41));
      v22 = *(*(v5 + 56) + 8 * v19);
      sub_2682CC640();
      v43 = *v41;
      v21 = *&v41[24];
      v44 = *&v41[16];
      memcpy(__dst, &v41[32], sizeof(__dst));
    }

    v23 = *(v8 + 40);
    sub_2683D0698();
    if (v21)
    {
      *__src = v43;
      *&__src[16] = v44;
      memcpy(&__src[32], __dst, 0x41uLL);
      *&__src[24] = v21;
      sub_2683D06B8();
      v37 = v43;
      v38 = v44;
      v39 = v21;
      memcpy(v40, __dst, sizeof(v40));
      sub_26814FB60(&v37, v41);
      Snippet.ReminderList.hash(into:)();
      memcpy(v41, __src, sizeof(v41));
      sub_26814F740(v41);
    }

    else
    {
      sub_2683D06B8();
    }

    result = sub_2683D06D8();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v8 + 48) + 104 * v27;
    *v32 = v43;
    *(v32 + 16) = v44;
    *(v32 + 24) = v21;
    result = memcpy((v32 + 32), __dst, 0x41uLL);
    *(*(v8 + 56) + 8 * v27) = v22;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2682C1BB4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251600, &qword_2683E3D38);
  v40 = a2;
  result = sub_2683D03D8();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_36:

LABEL_37:
    *v3 = v12;
    return result;
  }

  v38 = v3;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = result + 64;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_37;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_268158C84(0, (v37 + 63) >> 6, v9 + 64);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v23 = v20 | (v13 << 6);
    v24 = *(v39 + 72);
    v25 = *(v9 + 56) + v24 * v23;
    v42 = *(*(v9 + 48) + 16 * v23);
    v26 = *(&v42 + 1);
    if (v40)
    {
      sub_2682B5320();
    }

    else
    {
      sub_2682B5274();
    }

    v27 = *(v12 + 40);
    sub_2683D0698();
    sub_2683D06B8();
    if (v26)
    {
      sub_2683CFB48();
    }

    result = sub_2683D06D8();
    v28 = -1 << *(v12 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v19 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    *(*(v12 + 48) + 16 * v31) = v42;
    v36 = *(v12 + 56) + v24 * v31;
    result = sub_2682B5320();
    ++*(v12 + 16);
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v19 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_28;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_2682C1F58(uint64_t a1, uint64_t a2)
{
  v8 = OUTLINED_FUNCTION_30_11(a1);
  v11 = OUTLINED_FUNCTION_82_2(v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_34_11();
  sub_2683D03D8();
  OUTLINED_FUNCTION_106_2();
  if (!v13)
  {
LABEL_31:

    *v2 = a2;
    return;
  }

  v14 = 0;
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_98_2();
  if (!v4)
  {
LABEL_4:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v2)
      {
        break;
      }

      ++v16;
      if (*(v5 + 8 * v14))
      {
        OUTLINED_FUNCTION_6_5();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_20_21();
      if (v33 != v34)
      {
        OUTLINED_FUNCTION_50_7(v32);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_36_11();
        sub_268158C84(v35, v36, v5);
      }

      v3[2] = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_96_1();
LABEL_9:
    v19 = v15 | (v14 << 6);
    v20 = *(v3[7] + 8 * v19);
    v37 = *(v3[6] + 16 * v19);
    v21 = *(v3[6] + 16 * v19 + 8);
    if ((a2 & 1) == 0)
    {
    }

    v22 = *(a2 + 40);
    sub_2683D0698();
    sub_2683D06B8();
    if (v21)
    {
      sub_2683CFB48();
    }

    v23 = sub_2683D06D8();
    OUTLINED_FUNCTION_19_22(v23);
    v25 = *(v6 + 8 * v24);
    OUTLINED_FUNCTION_85_1();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_23:
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_94_2();
    *(v31 + 16 * v30) = v37;
    OUTLINED_FUNCTION_35_9(v30);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (1)
  {
    OUTLINED_FUNCTION_87_2();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(v6 + 8 * v27) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

unint64_t sub_2682C2150()
{
  result = qword_280251448;
  if (!qword_280251448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251448);
  }

  return result;
}

unint64_t sub_2682C21A4()
{
  result = qword_280251450;
  if (!qword_280251450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251450);
  }

  return result;
}

unint64_t sub_2682C21F8()
{
  result = qword_280251458;
  if (!qword_280251458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251458);
  }

  return result;
}

unint64_t sub_2682C224C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_2682C22DC(v4);
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682C22DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2682C2320(uint64_t a1)
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
    sub_2683D00A8();
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
  result = sub_2683D01B8();
  *v1 = result;
  return result;
}

uint64_t sub_2682C23C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2682C2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  sub_2683D0698();
  sub_2683D06B8();
  if (a2)
  {
    sub_2683CFB48();
  }

  sub_2683D06D8();
  v8 = -1 << *(a4 + 32);
  v9 = sub_2683D0088();
  *(a4 + 64 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
  v10 = (*(a4 + 48) + 16 * v9);
  *v10 = a1;
  v10[1] = a2;
  v11 = *(a4 + 56);
  v12 = *(*(type metadata accessor for Snippet.Reminder(0) - 8) + 72);
  result = sub_2682B5320();
  ++*(a4 + 16);
  return result;
}

uint64_t sub_2682C2554(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = OUTLINED_FUNCTION_24_4();
  v7 = type metadata accessor for Snippet.Reminder(v6);
  OUTLINED_FUNCTION_23(v7);
  v9 = v8;
  v10 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC5C4(v10);
    v10 = v11;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14[1] = v12;
  result = sub_2682C27EC(v14, a2, a3);
  *v3 = v10;
  return result;
}

uint64_t sub_2682C260C(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Snippet.Reminder(0) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC5C4(v7);
    v7 = v8;
  }

  v10 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v7 + 16);
  result = sub_2682C2924(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_2682C26CC(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC62C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_2682C2A64(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_2682C2780(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2682CC694(v2);
    v2 = v3;
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_2682C2BAC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2682C27EC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_2683D0558();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Snippet.Reminder(0);
        v10 = sub_2683CFCF8();
        *(v10 + 16) = v9;
      }

      v11 = type metadata accessor for Snippet.Reminder(0);
      OUTLINED_FUNCTION_23(v11);
      v13 = *(v12 + 80);
      OUTLINED_FUNCTION_11_7();
      v15[0] = v10 + v14;
      v15[1] = v9;
      a2(v15, v16, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2924(uint64_t (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2683D0558();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Snippet.Reminder(0);
        v9 = sub_2683CFCF8();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for Snippet.Reminder(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_2682C5DC4(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2682C36A8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2A64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2683D0558();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
        v6 = sub_2683CFCF8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2682C6878(v8, v9, a1, v4);
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
    return sub_2682C3920(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2BAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2683D0558();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251640, &qword_2683E3D80);
        v6 = sub_2683CFCF8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2682C77CC(v7, v8, a1, v4);
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
    return sub_2682C3DEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2682C2CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Snippet.Reminder(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v32 - v17;
  v34 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v39 = v19;
    v33 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v37 = v21;
      v38 = a3;
      v35 = v24;
      v36 = v23;
      while (1)
      {
        sub_2682B5274();
        sub_2682B5274();
        v25 = *(v8 + 24);
        v26 = *&v18[v25];
        v27 = *&v18[v25 + 8];
        v28 = &v14[v25];
        if (v26 == *v28 && v27 == *(v28 + 1))
        {
          break;
        }

        v30 = sub_2683D0598();
        sub_2682B52CC();
        result = sub_2682B52CC();
        if (v30)
        {
          if (!v39)
          {
            __break(1u);
            return result;
          }

          sub_2682B5320();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_2682B5320();
          v21 += v22;
          v24 += v22;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_2682B52CC();
      result = sub_2682B52CC();
LABEL_14:
      a3 = v38 + 1;
      v21 = v37 + v33;
      v23 = v36 - 1;
      v24 = v35 + v33;
      if (v38 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2682C2F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v78 = a1;
  v7 = sub_2683CB528();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v71 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v70 = &v61[-v12];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  v13 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v15 = &v61[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v80 = &v61[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v76 = &v61[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v61[-v26];
  v82 = type metadata accessor for Snippet.Reminder(0);
  v28 = *(*(v82 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v82);
  v74 = &v61[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v83 = &v61[-v32];
  result = MEMORY[0x28223BE20](v31);
  v81 = &v61[-v35];
  v63 = a2;
  if (a3 != a2)
  {
    v36 = *a4;
    v68 = (v8 + 8);
    v69 = (v8 + 32);
    v37 = *(v34 + 72);
    v38 = v36 + v37 * (a3 - 1);
    v72 = -v37;
    v73 = v36;
    v39 = v78 - a3;
    v62 = v37;
    v40 = v36 + v37 * a3;
    v75 = v25;
    v79 = v27;
    while (2)
    {
      v66 = v38;
      v67 = a3;
      v64 = v40;
      v65 = v39;
      v41 = v39;
      while (1)
      {
        sub_2682B5274();
        sub_2682B5274();
        v42 = *(v82 + 52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        v43 = v76;
        sub_2683CB858();
        v44 = v43;
        v45 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
        if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
        {
          sub_26812D9E0(v44, &qword_28024D5D0, &unk_2683D2CA0);
          v46 = 1;
          v47 = v79;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v47 = v79;
          sub_2683CB858();
          sub_2682B52CC();
          v46 = 0;
        }

        __swift_storeEnumTagSinglePayload(v47, v46, 1, v7);
        v48 = &v83[*(v82 + 52)];
        v49 = v80;
        sub_2683CB858();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v45);
        v78 = v41;
        if (EnumTagSinglePayload == 1)
        {
          sub_26812D9E0(v80, &qword_28024D5D0, &unk_2683D2CA0);
          v51 = 1;
          v52 = v75;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v52 = v75;
          sub_2683CB858();
          sub_2682B52CC();
          v51 = 0;
        }

        __swift_storeEnumTagSinglePayload(v52, v51, 1, v7);
        v53 = *(v77 + 48);
        sub_2682CC5D8();
        sub_2682CC5D8();
        if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
        {
          break;
        }

        if (__swift_getEnumTagSinglePayload(&v15[v53], 1, v7) == 1)
        {
          sub_26812D9E0(v15, &qword_28024DB08, qword_2683D5760);
          sub_2682B52CC();
          result = sub_2682B52CC();
          v54 = v78;
        }

        else
        {
          v55 = v70;
          v56 = *v69;
          (*v69)(v70, v15, v7);
          v57 = v71;
          v56(v71, &v15[v53], v7);
          v58 = sub_2683CB4C8();
          v59 = *v68;
          (*v68)(v57, v7);
          v59(v55, v7);
          sub_2682B52CC();
          result = sub_2682B52CC();
          v54 = v78;
          if ((v58 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if (!v73)
        {
          __break(1u);
          return result;
        }

        sub_2682B5320();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2682B5320();
        v38 += v72;
        v40 += v72;
        v60 = __CFADD__(v54, 1);
        v41 = v54 + 1;
        if (v60)
        {
          goto LABEL_19;
        }
      }

      sub_26812D9E0(&v15[v53], &qword_28024DB08, qword_2683D5760);
      sub_2682B52CC();
      result = sub_2682B52CC();
LABEL_19:
      a3 = v67 + 1;
      v38 = v66 + v62;
      v39 = v65 - 1;
      v40 = v64 + v62;
      if (v67 + 1 != v63)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2682C36A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for Snippet.Reminder(0);
  v9 = *(*(v36 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v28 = a2;
  if (a3 != a2)
  {
    v19 = *v4;
    v20 = *(v16 + 72);
    v21 = *v4 + v20 * (a3 - 1);
    v33 = -v20;
    v34 = v19;
    v22 = a1 - a3;
    v27 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v31 = v21;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    v24 = v21;
    while (1)
    {
      sub_2682B5274();
      sub_2682B5274();
      v25 = v37(v18, v14);
      sub_2682B52CC();
      result = sub_2682B52CC();
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_2682B5320();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2682B5320();
        v24 += v33;
        v23 += v33;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v21 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2682C3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2683CB528();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v59 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v54 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v45 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v63 = &v45 - v24;
  result = MEMORY[0x28223BE20](v23);
  v61 = &v45 - v27;
  v47 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v26 + 72);
    v55 = (v9 + 8);
    v56 = (v9 + 32);
    v30 = v28 + v29 * (a3 - 1);
    v52 = -v29;
    v53 = v28;
    v31 = a1 - a3;
    v46 = v29;
    v32 = v28 + v29 * a3;
    v57 = v14;
    v60 = v22;
    while (2)
    {
      v50 = v30;
      v51 = a3;
      v48 = v32;
      v49 = v31;
      v33 = v31;
      do
      {
        sub_2682CC640();
        sub_2682CC640();
        sub_2682CC640();
        v34 = *&v22[*(v14 + 48)];

        if (__swift_getEnumTagSinglePayload(v22, 1, v8) == 1)
        {
          sub_2683CB488();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v8);
          v37 = v58;
          v36 = v59;
          if (EnumTagSinglePayload != 1)
          {
            sub_26812D9E0(v60, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v56)(v62, v22, v8);
          v37 = v58;
          v36 = v59;
        }

        sub_2682CC640();
        v38 = *(v37 + *(v14 + 48));

        if (__swift_getEnumTagSinglePayload(v37, 1, v8) == 1)
        {
          sub_2683CB488();
          if (__swift_getEnumTagSinglePayload(v37, 1, v8) != 1)
          {
            sub_26812D9E0(v37, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v56)(v36, v37, v8);
        }

        v39 = v62;
        v40 = sub_2683CB4C8();
        v41 = v36;
        v42 = v40;
        v43 = *v55;
        (*v55)(v41, v8);
        v43(v39, v8);
        sub_26812D9E0(v63, &qword_280251630, &qword_2683E3D70);
        result = sub_26812D9E0(v61, &qword_280251630, &qword_2683E3D70);
        v14 = v57;
        v22 = v60;
        if ((v42 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
          return result;
        }

        sub_2682CC5D8();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2682CC5D8();
        v30 += v52;
        v32 += v52;
      }

      while (!__CFADD__(v33++, 1));
      a3 = v51 + 1;
      v30 = v50 + v46;
      v31 = v49 - 1;
      v32 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2682C3DEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 112 * a3);
    v6 = result - a3 + 1;
    while (2)
    {
      v19 = a3;
      v14 = v6;
      v15 = v5;
      while (1)
      {
        memcpy(__dst, v5, sizeof(__dst));
        memcpy(v18, v5 - 112, 0x70uLL);
        v7 = __dst[3];
        if (__dst[3])
        {
          v8 = __dst[2];
        }

        else
        {
          v8 = 0;
          v7 = 0xE000000000000000;
        }

        v9 = v18[3];
        if (v18[3])
        {
          v10 = v18[2];
        }

        else
        {
          v10 = 0;
          v9 = 0xE000000000000000;
        }

        if (v8 == v10 && v7 == v9)
        {
          break;
        }

        v12 = sub_2683D0598();
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(v18, &qword_280251640, &qword_2683E3D80);
        result = sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
        if ((v12 & 1) == 0)
        {
          goto LABEL_19;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v5, sizeof(__src));
        memcpy(v5, v5 - 112, 0x70uLL);
        result = memcpy(v5 - 112, __src, 0x70uLL);
        if (!v6)
        {
          goto LABEL_19;
        }

        ++v6;
        v5 -= 112;
      }

      sub_2682CC640();
      sub_2682CC640();

      sub_26812D9E0(v18, &qword_280251640, &qword_2683E3D80);
      result = sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
LABEL_19:
      a3 = v19 + 1;
      v5 = v15 + 112;
      v6 = v14 - 1;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2682C4014(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v8 = type metadata accessor for Snippet.Reminder(0);
  v144 = *(v8 - 8);
  v9 = *(v144 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v150 = &v132 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v132 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v149 = &v132 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v148 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v132 - v21;
  MEMORY[0x28223BE20](v20);
  v136 = &v132 - v24;
  v146 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_115:
    v153 = *v138;
    if (!v153)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v125 = v27 + 16;
      v126 = *(v27 + 2);
      while (v126 >= 2)
      {
        if (!*v146)
        {
          goto LABEL_153;
        }

        v127 = v27;
        v27 += 16 * v126;
        v128 = *v27;
        v129 = &v125[2 * v126];
        v130 = v129[1];
        sub_2682C80F4(*v146 + *(v144 + 72) * *v27, *v146 + *(v144 + 72) * *v129, *v146 + *(v144 + 72) * v130, v153);
        if (v5)
        {
          break;
        }

        if (v130 < v128)
        {
          goto LABEL_141;
        }

        if (v126 - 2 >= *v125)
        {
          goto LABEL_142;
        }

        *v27 = v128;
        *(v27 + 1) = v130;
        v131 = *v125 - v126;
        if (*v125 < v126)
        {
          goto LABEL_143;
        }

        v126 = *v125 - 1;
        memmove(v129, v129 + 2, 16 * v131);
        *v125 = v126;
        v27 = v127;
      }

LABEL_125:

      return;
    }

LABEL_150:
    v27 = sub_2682CA6A4(v27);
    goto LABEL_117;
  }

  v152 = v23;
  v133 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v153 = v8;
  v132 = v22;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v139 = v26;
    if (v26 + 1 < v25)
    {
      v142 = v25;
      v30 = *v146;
      v31 = *(v144 + 72);
      v32 = (v26 + 1);
      v33 = v136;
      sub_2682B5274();
      v145 = v31;
      v34 = v137;
      sub_2682B5274();
      v35 = *(v8 + 24);
      v36 = *&v33[v35];
      v37 = *&v33[v35 + 8];
      v38 = &v34[v35];
      v39 = v36 == *v38 && v37 == *(v38 + 1);
      v135 = v5;
      if (v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_2683D0598();
      }

      v134 = v27;
      sub_2682B52CC();
      sub_2682B52CC();
      v40 = v28 + 2;
      v41 = v145 * (v28 + 2);
      v42 = v30 + v41;
      v43 = v32;
      v44 = v145 * v32;
      v45 = v30 + v145 * v32;
      do
      {
        v5 = v40;
        v27 = v43;
        v46 = v44;
        v47 = v41;
        if (v40 >= v142)
        {
          break;
        }

        v147 = v40;
        v48 = v148;
        sub_2682B5274();
        v49 = v149;
        sub_2682B5274();
        v50 = *(v8 + 24);
        v51 = *&v48[v50];
        v52 = *&v48[v50 + 8];
        v53 = &v49[v50];
        v54 = v51 == *v53 && v52 == *(v53 + 1);
        v55 = v54 ? 0 : sub_2683D0598();
        v5 = v147;
        sub_2682B52CC();
        sub_2682B52CC();
        v56 = v143 ^ v55;
        v40 = v5 + 1;
        v42 += v145;
        v45 += v145;
        v43 = v27 + 1;
        v44 = v46 + v145;
        v41 = v47 + v145;
        v8 = v153;
      }

      while ((v56 & 1) == 0);
      if (v143)
      {
        if (v5 < v139)
        {
          goto LABEL_147;
        }

        if (v139 >= v5)
        {
          v29 = v5;
          v27 = v134;
          v5 = v135;
          v28 = v139;
          goto LABEL_39;
        }

        v57 = v139 * v145;
        v58 = v139;
        do
        {
          if (v58 != v27)
          {
            v59 = *v146;
            if (!*v146)
            {
              goto LABEL_154;
            }

            sub_2682B5320();
            v60 = v57 < v46 || v59 + v57 >= v59 + v47;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682B5320();
          }

          ++v58;
          v46 -= v145;
          v47 -= v145;
          v57 += v145;
          v61 = v58 < v27--;
        }

        while (v61);
        v29 = v5;
        v27 = v134;
        v5 = v135;
        v8 = v153;
      }

      else
      {
        v29 = v5;
        v27 = v134;
        v5 = v135;
      }

      v28 = v139;
    }

LABEL_39:
    v62 = v146[1];
    v147 = v29;
    if (v29 < v62)
    {
      v98 = __OFSUB__(v29, v28);
      v63 = v29 - v28;
      if (v98)
      {
        goto LABEL_146;
      }

      if (v63 < v133)
      {
        break;
      }
    }

LABEL_63:
    if (v147 < v28)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v27 + 2) + 1, 1, v27);
      v27 = v123;
    }

    v80 = *(v27 + 2);
    v79 = *(v27 + 3);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      sub_2682E556C(v79 > 1, v80 + 1, 1, v27);
      v27 = v124;
    }

    *(v27 + 2) = v81;
    v82 = v27 + 32;
    v83 = &v27[16 * v80 + 32];
    v84 = v147;
    *v83 = v139;
    *(v83 + 1) = v84;
    v145 = *v138;
    if (!v145)
    {
      goto LABEL_155;
    }

    if (v80)
    {
      while (1)
      {
        v85 = v81 - 1;
        v86 = &v82[16 * v81 - 16];
        v87 = &v27[16 * v81];
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v88 = *(v27 + 4);
          v89 = *(v27 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_83:
          if (v91)
          {
            goto LABEL_132;
          }

          v103 = *v87;
          v102 = *(v87 + 1);
          v104 = __OFSUB__(v102, v103);
          v105 = v102 - v103;
          v106 = v104;
          if (v104)
          {
            goto LABEL_135;
          }

          v107 = *(v86 + 1);
          v108 = v107 - *v86;
          if (__OFSUB__(v107, *v86))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v105, v108))
          {
            goto LABEL_140;
          }

          if (v105 + v108 >= v90)
          {
            if (v90 < v108)
            {
              v85 = v81 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v81 < 2)
        {
          goto LABEL_134;
        }

        v110 = *v87;
        v109 = *(v87 + 1);
        v98 = __OFSUB__(v109, v110);
        v105 = v109 - v110;
        v106 = v98;
LABEL_98:
        if (v106)
        {
          goto LABEL_137;
        }

        v112 = *v86;
        v111 = *(v86 + 1);
        v98 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v98)
        {
          goto LABEL_139;
        }

        if (v113 < v105)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v85 - 1 >= v81)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v146)
        {
          goto LABEL_152;
        }

        v117 = v27;
        v118 = &v82[16 * v85 - 16];
        v27 = *v118;
        v119 = v85;
        v120 = &v82[16 * v85];
        v121 = *(v120 + 1);
        sub_2682C80F4(*v146 + *(v144 + 72) * *v118, *v146 + *(v144 + 72) * *v120, *v146 + *(v144 + 72) * v121, v145);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v121 < v27)
        {
          goto LABEL_127;
        }

        v5 = *(v117 + 2);
        if (v119 > v5)
        {
          goto LABEL_128;
        }

        *v118 = v27;
        *(v118 + 1) = v121;
        if (v119 >= v5)
        {
          goto LABEL_129;
        }

        v122 = v119;
        v81 = v5 - 1;
        memmove(v120, v120 + 16, 16 * (v5 - 1 - v122));
        v27 = v117;
        *(v117 + 2) = v5 - 1;
        v61 = v5 > 2;
        v5 = 0;
        if (!v61)
        {
          goto LABEL_112;
        }
      }

      v92 = &v82[16 * v81];
      v93 = *(v92 - 8);
      v94 = *(v92 - 7);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_130;
      }

      v97 = *(v92 - 6);
      v96 = *(v92 - 5);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_131;
      }

      v99 = *(v87 + 1);
      v100 = v99 - *v87;
      if (__OFSUB__(v99, *v87))
      {
        goto LABEL_133;
      }

      v98 = __OFADD__(v90, v100);
      v101 = v90 + v100;
      if (v98)
      {
        goto LABEL_136;
      }

      if (v101 >= v95)
      {
        v115 = *v86;
        v114 = *(v86 + 1);
        v98 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v98)
        {
          goto LABEL_144;
        }

        if (v90 < v116)
        {
          v85 = v81 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v26 = v147;
    v25 = v146[1];
    v8 = v153;
    if (v147 >= v25)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v28, v133))
  {
    goto LABEL_148;
  }

  if (v28 + v133 >= v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = v28 + v133;
  }

  if (v64 < v28)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v147 == v64)
  {
    goto LABEL_63;
  }

  v134 = v27;
  v135 = v5;
  v65 = *v146;
  v66 = *(v144 + 72);
  v67 = *v146 + v66 * (v147 - 1);
  v68 = -v66;
  v69 = v28 - v147;
  v140 = v66;
  v141 = v64;
  v70 = v65 + v147 * v66;
  v71 = v151;
LABEL_49:
  v142 = v70;
  v143 = v69;
  v145 = v67;
  while (1)
  {
    v72 = v152;
    sub_2682B5274();
    sub_2682B5274();
    v73 = *(v8 + 24);
    v74 = *(v72 + v73);
    v75 = *(v72 + v73 + 8);
    v76 = &v71[v73];
    if (v74 == *v76 && v75 == *(v76 + 1))
    {
      sub_2682B52CC();
      sub_2682B52CC();
      goto LABEL_61;
    }

    v78 = sub_2683D0598();
    sub_2682B52CC();
    sub_2682B52CC();
    if ((v78 & 1) == 0)
    {
      v8 = v153;
LABEL_61:
      v67 = v145 + v140;
      v69 = v143 - 1;
      v70 = v142 + v140;
      if (++v147 == v141)
      {
        v147 = v141;
        v27 = v134;
        v5 = v135;
        v28 = v139;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    v8 = v153;
    if (!v65)
    {
      break;
    }

    sub_2682B5320();
    swift_arrayInitWithTakeFrontToBack();
    sub_2682B5320();
    v67 += v68;
    v70 += v68;
    v60 = __CFADD__(v69++, 1);
    v71 = v151;
    if (v60)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_2682C4A88(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v183 = a1;
  v220 = sub_2683CB528();
  v6 = *(v220 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v220);
  v206 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v205 = &v179 - v10;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  v11 = *(*(v213 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v213);
  v14 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v179 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v212 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v211 = &v179 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v194 = &v179 - v24;
  MEMORY[0x28223BE20](v23);
  v193 = &v179 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v179 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v192 = &v179 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v179 - v36;
  v218 = type metadata accessor for Snippet.Reminder(0);
  v196 = *(v218 - 8);
  v38 = *(v196 + 64);
  v39 = MEMORY[0x28223BE20](v218);
  v188 = &v179 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v209 = &v179 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v219 = &v179 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v217 = &v179 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v201 = &v179 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v199 = &v179 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v181 = &v179 - v52;
  MEMORY[0x28223BE20](v51);
  v180 = &v179 - v53;
  v197 = a3;
  v54 = *(a3 + 8);
  if (v54 < 1)
  {
    v56 = MEMORY[0x277D84F90];
LABEL_123:
    a3 = *v183;
    if (!*v183)
    {
      goto LABEL_163;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_125:
      v171 = (v56 + 16);
      for (i = *(v56 + 16); i >= 2; *v171 = i)
      {
        if (!*v197)
        {
          goto LABEL_160;
        }

        v173 = (v56 + 16 * i);
        v174 = *v173;
        v175 = &v171[2 * i];
        v176 = v175[1];
        v177 = v200;
        sub_2682C85F0(*v197 + *(v196 + 72) * *v173, *v197 + *(v196 + 72) * *v175, *v197 + *(v196 + 72) * v176, a3);
        v200 = v177;
        if (v177)
        {
          break;
        }

        if (v176 < v174)
        {
          goto LABEL_148;
        }

        if (i - 2 >= *v171)
        {
          goto LABEL_149;
        }

        *v173 = v174;
        v173[1] = v176;
        v178 = *v171 - i;
        if (*v171 < i)
        {
          goto LABEL_150;
        }

        i = *v171 - 1;
        memmove(v175, v175 + 2, 16 * v178);
      }

LABEL_121:

      return;
    }

LABEL_157:
    v56 = sub_2682CA6A4(v56);
    goto LABEL_125;
  }

  v198 = v37;
  v203 = (v6 + 8);
  v204 = (v6 + 32);
  v55 = 0;
  v56 = MEMORY[0x277D84F90];
  v182 = a4;
  v215 = v14;
  v189 = v16;
  v210 = v30;
  v216 = v33;
  v57 = v218;
  v58 = a4;
  v59 = &qword_28024DB08;
  while (1)
  {
    v60 = v55++;
    v185 = v56;
    v184 = v60;
    if (v55 < v54)
    {
      v202 = v55;
      v61 = *v197;
      v207 = v54;
      v62 = *(v196 + 72);
      v56 = v61 + v62 * v202;
      v63 = v180;
      sub_2682B5274();
      v64 = v181;
      sub_2682B5274();
      LODWORD(v195) = sub_2682BAAF4(v63, v64);
      a3 = type metadata accessor for Snippet.Reminder;
      v59 = &qword_28024DB08;
      sub_2682B52CC();
      sub_2682B52CC();
      v65 = v60 + 2;
      v208 = v62;
      v66 = v61 + v62 * (v60 + 2);
      v67 = v207;
      v55 = v202;
      while (1)
      {
        v68 = v65;
        if (v55 + 1 >= v67)
        {
          break;
        }

        v214 = v65;
        v202 = v55;
        sub_2682B5274();
        sub_2682B5274();
        v69 = *(v57 + 52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        v70 = v193;
        sub_2683CB858();
        v71 = v70;
        v72 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
        if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
        {
          sub_26812D9E0(v71, &qword_28024D5D0, &unk_2683D2CA0);
          v73 = 1;
          v74 = v198;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v74 = v198;
          sub_2683CB858();
          sub_2682B52CC();
          v73 = 0;
        }

        __swift_storeEnumTagSinglePayload(v74, v73, 1, v220);
        v57 = v218;
        v75 = &v201[*(v218 + 52)];
        v76 = v194;
        sub_2683CB858();
        if (__swift_getEnumTagSinglePayload(v76, 1, v72) == 1)
        {
          sub_26812D9E0(v76, &qword_28024D5D0, &unk_2683D2CA0);
          v77 = 1;
          v78 = v192;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
          v79 = v192;
          sub_2683CB858();
          v78 = v79;
          v57 = v218;
          sub_2682B52CC();
          v77 = 0;
        }

        v80 = v220;
        __swift_storeEnumTagSinglePayload(v78, v77, 1, v220);
        v81 = *(v213 + 48);
        sub_2682CC5D8();
        sub_2682CC5D8();
        if (__swift_getEnumTagSinglePayload(v16, 1, v80) == 1)
        {
          sub_26812D9E0(&v16[v81], &qword_28024DB08, qword_2683D5760);
          a3 = 0;
        }

        else if (__swift_getEnumTagSinglePayload(&v16[v81], 1, v220) == 1)
        {
          sub_26812D9E0(v16, &qword_28024DB08, qword_2683D5760);
          a3 = 1;
        }

        else
        {
          v82 = v205;
          v83 = *v204;
          v84 = v220;
          (*v204)(v205, v189, v220);
          v85 = v206;
          v83(v206, &v189[v81], v84);
          a3 = sub_2683CB4C8();
          v86 = *v203;
          (*v203)(v85, v84);
          v87 = v82;
          v16 = v189;
          v86(v87, v84);
          v59 = &qword_28024DB08;
        }

        v67 = v207;
        v68 = v214;
        sub_2682B52CC();
        sub_2682B52CC();
        v66 += v208;
        v56 += v208;
        v55 = v202 + 1;
        v65 = v68 + 1;
        if ((v195 ^ a3))
        {
          goto LABEL_20;
        }
      }

      v55 = v67;
LABEL_20:
      v58 = v182;
      if (v195)
      {
        v60 = v184;
        if (v55 < v184)
        {
          goto LABEL_154;
        }

        if (v184 >= v55)
        {
          v56 = v185;
          goto LABEL_43;
        }

        if (v67 >= v68)
        {
          v88 = v68;
        }

        else
        {
          v88 = v67;
        }

        v89 = v55;
        v90 = v208 * (v88 - 1);
        v91 = v208 * v88;
        v92 = v184 * v208;
        v202 = v89;
        v56 = v185;
        do
        {
          if (v60 != --v89)
          {
            v93 = *v197;
            if (!*v197)
            {
              goto LABEL_161;
            }

            a3 = v93 + v92;
            sub_2682B5320();
            v94 = v92 < v90 || a3 >= v93 + v91;
            if (v94)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != v90)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682B5320();
            v56 = v185;
          }

          ++v60;
          v90 -= v208;
          v91 -= v208;
          v92 += v208;
        }

        while (v60 < v89);
        v58 = v182;
        v55 = v202;
        v59 = &qword_28024DB08;
      }

      else
      {
        v56 = v185;
      }

      v60 = v184;
    }

LABEL_43:
    v95 = v197[1];
    if (v55 < v95)
    {
      if (__OFSUB__(v55, v60))
      {
        goto LABEL_153;
      }

      if (v55 - v60 < v58)
      {
        break;
      }
    }

LABEL_70:
    if (v55 < v60)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v56 + 16) + 1, 1, v56);
      v56 = v169;
    }

    a3 = *(v56 + 16);
    v126 = *(v56 + 24);
    v127 = a3 + 1;
    if (a3 >= v126 >> 1)
    {
      sub_2682E556C(v126 > 1, a3 + 1, 1, v56);
      v56 = v170;
    }

    *(v56 + 16) = v127;
    v128 = v56 + 32;
    v129 = (v56 + 32 + 16 * a3);
    *v129 = v184;
    v129[1] = v55;
    v214 = *v183;
    if (!v214)
    {
      goto LABEL_162;
    }

    if (a3)
    {
      while (1)
      {
        v130 = v127 - 1;
        v131 = (v128 + 16 * (v127 - 1));
        v132 = (v56 + 16 * v127);
        if (v127 >= 4)
        {
          break;
        }

        if (v127 == 3)
        {
          v133 = *(v56 + 32);
          v134 = *(v56 + 40);
          v143 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          v136 = v143;
LABEL_90:
          if (v136)
          {
            goto LABEL_139;
          }

          v148 = *v132;
          v147 = v132[1];
          v149 = __OFSUB__(v147, v148);
          v150 = v147 - v148;
          v151 = v149;
          if (v149)
          {
            goto LABEL_142;
          }

          v152 = v131[1];
          v153 = v152 - *v131;
          if (__OFSUB__(v152, *v131))
          {
            goto LABEL_145;
          }

          if (__OFADD__(v150, v153))
          {
            goto LABEL_147;
          }

          if (v150 + v153 >= v135)
          {
            if (v135 < v153)
            {
              v130 = v127 - 2;
            }

            goto LABEL_112;
          }

          goto LABEL_105;
        }

        if (v127 < 2)
        {
          goto LABEL_141;
        }

        v155 = *v132;
        v154 = v132[1];
        v143 = __OFSUB__(v154, v155);
        v150 = v154 - v155;
        v151 = v143;
LABEL_105:
        if (v151)
        {
          goto LABEL_144;
        }

        v157 = *v131;
        v156 = v131[1];
        v143 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v143)
        {
          goto LABEL_146;
        }

        if (v158 < v150)
        {
          goto LABEL_119;
        }

LABEL_112:
        if (v130 - 1 >= v127)
        {
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
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*v197)
        {
          goto LABEL_159;
        }

        v162 = v56;
        v163 = (v128 + 16 * (v130 - 1));
        v164 = *v163;
        a3 = v128 + 16 * v130;
        v56 = *(a3 + 8);
        v165 = v200;
        sub_2682C85F0(*v197 + *(v196 + 72) * *v163, *v197 + *(v196 + 72) * *a3, *v197 + *(v196 + 72) * v56, v214);
        v200 = v165;
        if (v165)
        {
          goto LABEL_121;
        }

        if (v56 < v164)
        {
          goto LABEL_134;
        }

        v166 = v55;
        v167 = *(v162 + 16);
        if (v130 > v167)
        {
          goto LABEL_135;
        }

        *v163 = v164;
        v163[1] = v56;
        if (v130 >= v167)
        {
          goto LABEL_136;
        }

        v127 = v167 - 1;
        memmove((v128 + 16 * v130), (a3 + 16), 16 * (v167 - 1 - v130));
        v56 = v162;
        *(v162 + 16) = v167 - 1;
        v168 = v167 > 2;
        v57 = v218;
        v55 = v166;
        v59 = &qword_28024DB08;
        if (!v168)
        {
          goto LABEL_119;
        }
      }

      v137 = v128 + 16 * v127;
      v138 = *(v137 - 64);
      v139 = *(v137 - 56);
      v143 = __OFSUB__(v139, v138);
      v140 = v139 - v138;
      if (v143)
      {
        goto LABEL_137;
      }

      v142 = *(v137 - 48);
      v141 = *(v137 - 40);
      v143 = __OFSUB__(v141, v142);
      v135 = v141 - v142;
      v136 = v143;
      if (v143)
      {
        goto LABEL_138;
      }

      v144 = v132[1];
      v145 = v144 - *v132;
      if (__OFSUB__(v144, *v132))
      {
        goto LABEL_140;
      }

      v143 = __OFADD__(v135, v145);
      v146 = v135 + v145;
      if (v143)
      {
        goto LABEL_143;
      }

      if (v146 >= v140)
      {
        v160 = *v131;
        v159 = v131[1];
        v143 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v143)
        {
          goto LABEL_151;
        }

        if (v135 < v161)
        {
          v130 = v127 - 2;
        }

        goto LABEL_112;
      }

      goto LABEL_90;
    }

LABEL_119:
    v54 = v197[1];
    v58 = v182;
    v16 = v189;
    if (v55 >= v54)
    {
      goto LABEL_123;
    }
  }

  v96 = v60 + v58;
  if (__OFADD__(v60, v58))
  {
    goto LABEL_155;
  }

  if (v96 >= v95)
  {
    v96 = v197[1];
  }

  if (v96 < v60)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v55 == v96)
  {
    goto LABEL_70;
  }

  v97 = *v197;
  v98 = *(v196 + 72);
  v99 = *v197 + v98 * (v55 - 1);
  v207 = -v98;
  v208 = v97;
  v100 = v60 - v55;
  v186 = v98;
  v101 = v97 + v55 * v98;
  v187 = v96;
LABEL_52:
  v202 = v55;
  v190 = v101;
  v191 = v100;
  v102 = v100;
  v195 = v99;
  v103 = v99;
  while (1)
  {
    v214 = v102;
    sub_2682B5274();
    sub_2682B5274();
    v104 = *(v57 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    v105 = v211;
    sub_2683CB858();
    v106 = v105;
    v107 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
    if (__swift_getEnumTagSinglePayload(v106, 1, v107) == 1)
    {
      sub_26812D9E0(v106, &qword_28024D5D0, &unk_2683D2CA0);
      v108 = 1;
      v109 = v216;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v109 = v216;
      sub_2683CB858();
      sub_2682B52CC();
      v108 = 0;
    }

    __swift_storeEnumTagSinglePayload(v109, v108, 1, v220);
    v110 = &v219[*(v218 + 52)];
    v111 = v212;
    sub_2683CB858();
    v112 = v59;
    if (__swift_getEnumTagSinglePayload(v111, 1, v107) == 1)
    {
      sub_26812D9E0(v111, &qword_28024D5D0, &unk_2683D2CA0);
      v113 = 1;
      v114 = v210;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v114 = v210;
      sub_2683CB858();
      sub_2682B52CC();
      v113 = 0;
    }

    v115 = v220;
    __swift_storeEnumTagSinglePayload(v114, v113, 1, v220);
    v116 = *(v213 + 48);
    v117 = v215;
    sub_2682CC5D8();
    sub_2682CC5D8();
    if (__swift_getEnumTagSinglePayload(v117, 1, v115) == 1)
    {
      v59 = v112;
      sub_26812D9E0(v117 + v116, v112, qword_2683D5760);
      a3 = type metadata accessor for Snippet.Reminder;
      sub_2682B52CC();
      sub_2682B52CC();
      v57 = v218;
LABEL_68:
      v55 = v202 + 1;
      v99 = v195 + v186;
      v100 = v191 - 1;
      v101 = v190 + v186;
      if (v202 + 1 == v187)
      {
        v55 = v187;
        v56 = v185;
        v60 = v184;
        goto LABEL_70;
      }

      goto LABEL_52;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v117 + v116, 1, v220);
    v57 = v218;
    if (EnumTagSinglePayload == 1)
    {
      v59 = v112;
      sub_26812D9E0(v117, v112, qword_2683D5760);
      sub_2682B52CC();
      sub_2682B52CC();
    }

    else
    {
      v119 = v205;
      v120 = *v204;
      v121 = v220;
      (*v204)(v205, v215, v220);
      v122 = v206;
      v120(v206, &v215[v116], v121);
      a3 = sub_2683CB4C8();
      v123 = *v203;
      (*v203)(v122, v121);
      v124 = v119;
      v57 = v218;
      v123(v124, v121);
      v59 = &qword_28024DB08;
      sub_2682B52CC();
      sub_2682B52CC();
      if ((a3 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v125 = v214;
    if (!v208)
    {
      break;
    }

    a3 = type metadata accessor for Snippet.Reminder;
    sub_2682B5320();
    swift_arrayInitWithTakeFrontToBack();
    sub_2682B5320();
    v103 += v207;
    v101 += v207;
    v94 = __CFADD__(v125, 1);
    v102 = v125 + 1;
    if (v94)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

void sub_2682C5DC4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a5;
  v142 = a4;
  v130 = a1;
  v134 = type metadata accessor for Snippet.Reminder(0);
  v140 = *(v134 - 8);
  v10 = *(v140 + 64);
  v11 = MEMORY[0x28223BE20](v134);
  v131 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v120 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v120 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v128 = &v120 - v24;
  MEMORY[0x28223BE20](v23);
  v127 = &v120 - v27;
  v141 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v139 = *v130;
    if (v139)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_105;
    }

    goto LABEL_148;
  }

  v135 = v26;
  v132 = v25;
  v123 = a6;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v138 = v17;
  v125 = v22;
  while (1)
  {
    v31 = v29++;
    if (v29 < v28)
    {
      v137 = v28;
      v126 = v30;
      v32 = *v141;
      v33 = *(v140 + 72);
      v129 = v29;
      v34 = v32 + v33 * v29;
      v35 = v31;
      v36 = v127;
      sub_2682B5274();
      v37 = v128;
      sub_2682B5274();
      LODWORD(v136) = v142(v36, v37);
      if (v7)
      {
LABEL_115:
        sub_2682B52CC();
        sub_2682B52CC();
        goto LABEL_116;
      }

      sub_2682B52CC();
      sub_2682B52CC();
      v124 = v35;
      v38 = v35 + 2;
      v39 = v32 + v33 * (v35 + 2);
      v29 = v129;
      v139 = v33;
      v40 = v137;
      while (1)
      {
        v41 = v29;
        v42 = v38;
        if (v29 + 1 >= v40)
        {
          break;
        }

        sub_2682B5274();
        v43 = v22;
        v44 = v135;
        sub_2682B5274();
        v45 = v142(v43, v44);
        sub_2682B52CC();
        v33 = v139;
        sub_2682B52CC();
        v46 = v136 ^ v45;
        v39 += v33;
        v34 += v33;
        v29 = v41 + 1;
        v38 = v42 + 1;
        v22 = v43;
        v40 = v137;
        if (v46)
        {
          goto LABEL_10;
        }
      }

      v29 = v40;
LABEL_10:
      if (v136)
      {
        v31 = v124;
        if (v29 < v124)
        {
          goto LABEL_142;
        }

        if (v124 > v41)
        {
          v30 = v126;
          v17 = v138;
          goto LABEL_33;
        }

        if (v40 >= v42)
        {
          v47 = v42;
        }

        else
        {
          v47 = v40;
        }

        v48 = v29;
        v49 = v33 * (v47 - 1);
        v50 = v124;
        v51 = v33 * v47;
        v52 = v124 * v33;
        v53 = v48;
        do
        {
          if (v50 != --v48)
          {
            v54 = *v141;
            if (!*v141)
            {
              goto LABEL_146;
            }

            sub_2682B5320();
            v55 = v52 < v49 || v54 + v52 >= (v54 + v51);
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682B5320();
            v33 = v139;
          }

          ++v50;
          v49 -= v33;
          v51 -= v33;
          v52 += v33;
        }

        while (v50 < v48);
        v30 = v126;
        v17 = v138;
        v29 = v53;
      }

      else
      {
        v30 = v126;
        v17 = v138;
      }

      v31 = v124;
    }

LABEL_33:
    v56 = v141[1];
    if (v29 >= v56)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v29, v31))
    {
      goto LABEL_138;
    }

    if (v29 - v31 >= v123)
    {
      goto LABEL_41;
    }

    v57 = v31 + v123;
    if (__OFADD__(v31, v123))
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }

    if (v57 >= v56)
    {
      v57 = v141[1];
    }

    if (v57 < v31)
    {
      goto LABEL_141;
    }

    if (v29 != v57)
    {
      v126 = v30;
      v102 = *v141;
      v103 = *(v140 + 72);
      v104 = *v141 + v103 * (v29 - 1);
      v105 = -v103;
      v124 = v31;
      v106 = v31 - v29;
      v139 = v102;
      v120 = v103;
      v107 = v102 + v29 * v103;
      v121 = v57;
      do
      {
        v129 = v29;
        v122 = v107;
        v136 = v106;
        v137 = v104;
        do
        {
          v108 = v132;
          sub_2682B5274();
          sub_2682B5274();
          v109 = v142(v108, v17);
          if (v7)
          {
            goto LABEL_115;
          }

          v110 = v109;
          sub_2682B52CC();
          sub_2682B52CC();
          if ((v110 & 1) == 0)
          {
            break;
          }

          if (!v139)
          {
            goto LABEL_145;
          }

          sub_2682B5320();
          swift_arrayInitWithTakeFrontToBack();
          sub_2682B5320();
          v104 += v105;
          v107 += v105;
          v55 = __CFADD__(v106++, 1);
        }

        while (!v55);
        v29 = v129 + 1;
        v104 = &v137[v120];
        v106 = v136 - 1;
        v107 = v122 + v120;
      }

      while (v129 + 1 != v121);
      v29 = v121;
      v30 = v126;
      v31 = v124;
    }

LABEL_41:
    if (v29 < v31)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v30 + 2) + 1, 1, v30);
      v30 = v111;
    }

    v59 = *(v30 + 2);
    v58 = *(v30 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      sub_2682E556C(v58 > 1, v59 + 1, 1, v30);
      v30 = v112;
    }

    *(v30 + 2) = v60;
    v61 = v30 + 32;
    v62 = &v30[16 * v59 + 32];
    *v62 = v31;
    *(v62 + 1) = v29;
    v139 = *v130;
    if (!v139)
    {
      goto LABEL_147;
    }

    if (v59)
    {
      break;
    }

LABEL_91:
    v28 = v141[1];
    v22 = v125;
    if (v29 >= v28)
    {
      goto LABEL_103;
    }
  }

  v137 = v30 + 32;
  while (1)
  {
    v63 = v60 - 1;
    v64 = &v61[16 * v60 - 16];
    v65 = &v30[16 * v60];
    if (v60 >= 4)
    {
      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_125;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_126;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_128;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_131;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_136;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

    if (v60 == 3)
    {
      v66 = *(v30 + 4);
      v67 = *(v30 + 5);
      v76 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      v69 = v76;
LABEL_62:
      if (v69)
      {
        goto LABEL_127;
      }

      v81 = *v65;
      v80 = *(v65 + 1);
      v82 = __OFSUB__(v80, v81);
      v83 = v80 - v81;
      v84 = v82;
      if (v82)
      {
        goto LABEL_130;
      }

      v85 = *(v64 + 1);
      v86 = v85 - *v64;
      if (__OFSUB__(v85, *v64))
      {
        goto LABEL_133;
      }

      if (__OFADD__(v83, v86))
      {
        goto LABEL_135;
      }

      if (v83 + v86 >= v68)
      {
        if (v68 < v86)
        {
          v63 = v60 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_77;
    }

    if (v60 < 2)
    {
      goto LABEL_129;
    }

    v88 = *v65;
    v87 = *(v65 + 1);
    v76 = __OFSUB__(v87, v88);
    v83 = v87 - v88;
    v84 = v76;
LABEL_77:
    if (v84)
    {
      goto LABEL_132;
    }

    v90 = *v64;
    v89 = *(v64 + 1);
    v76 = __OFSUB__(v89, v90);
    v91 = v89 - v90;
    if (v76)
    {
      goto LABEL_134;
    }

    if (v91 < v83)
    {
      goto LABEL_91;
    }

LABEL_84:
    if (v63 - 1 >= v60)
    {
      break;
    }

    if (!*v141)
    {
      goto LABEL_143;
    }

    v95 = &v61[16 * v63 - 16];
    v96 = *v95;
    v97 = v63;
    v98 = &v61[16 * v63];
    v99 = *(v98 + 1);
    sub_2682C9318(*v141 + *(v140 + 72) * *v95, *v141 + *(v140 + 72) * *v98, *v141 + *(v140 + 72) * v99, v139, v142, v143);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v99 < v96)
    {
      goto LABEL_119;
    }

    v7 = v29;
    v100 = v30;
    v30 = *(v30 + 2);
    if (v97 > v30)
    {
      goto LABEL_120;
    }

    *v95 = v96;
    *(v95 + 1) = v99;
    if (v97 >= v30)
    {
      goto LABEL_121;
    }

    v60 = (v30 - 1);
    memmove(v98, v98 + 16, 16 * &v30[-v97 - 1]);
    *(v100 + 2) = v30 - 1;
    v101 = v30 > 2;
    v30 = v100;
    v29 = v7;
    v7 = 0;
    v61 = v137;
    v17 = v138;
    if (!v101)
    {
      goto LABEL_91;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  v30 = sub_2682CA6A4(v30);
LABEL_105:
  v113 = v30 + 16;
  v114 = *(v30 + 2);
  while (v114 >= 2)
  {
    if (!*v141)
    {
      goto LABEL_144;
    }

    v115 = v30;
    v116 = &v30[16 * v114];
    v30 = *v116;
    v117 = &v113[2 * v114];
    v118 = v117[1];
    sub_2682C9318(*v141 + *(v140 + 72) * *v116, *v141 + *(v140 + 72) * *v117, *v141 + *(v140 + 72) * v118, v139, v142, v143);
    if (v7)
    {
      break;
    }

    if (v118 < v30)
    {
      goto LABEL_122;
    }

    if (v114 - 2 >= *v113)
    {
      goto LABEL_123;
    }

    *v116 = v30;
    *(v116 + 1) = v118;
    v119 = *v113 - v114;
    if (*v113 < v114)
    {
      goto LABEL_124;
    }

    v114 = *v113 - 1;
    memmove(v117, v117 + 2, 16 * v119);
    *v113 = v114;
    v30 = v115;
  }

LABEL_116:
}

void sub_2682C6878(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v154 = a1;
  v180 = sub_2683CB528();
  v6 = *(v180 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v180);
  v175 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v182 = &v148 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v161 = &v148 - v13;
  MEMORY[0x28223BE20](v12);
  v166 = &v148 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v164 = *(v15 - 8);
  v16 = *(v164 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v157 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v173 = &v148 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v177 = &v148 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v176 = &v148 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v183 = &v148 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v181 = &v148 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v160 = &v148 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v163 = &v148 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v169 = &v148 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v148 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v150 = &v148 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v148 - v40;
  v165 = a3;
  v42 = *(a3 + 8);
  if (v42 < 1)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_121:
    a3 = *v154;
    if (!*v154)
    {
      goto LABEL_163;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_123;
    }

    goto LABEL_157;
  }

  v149 = a4;
  v43 = 0;
  v178 = (v6 + 8);
  v179 = (v6 + 32);
  v44 = MEMORY[0x277D84F90];
  v174 = v15;
  v153 = &v148 - v40;
  v167 = v37;
  while (1)
  {
    v45 = v43;
    v46 = (v43 + 1);
    if (v43 + 1 >= v42)
    {
      v170 = v43 + 1;
    }

    else
    {
      v171 = v42;
      v151 = v44;
      v47 = v41;
      v48 = *v165;
      v49 = *(v164 + 72);
      v50 = v43;
      v51 = *v165 + v49 * v46;
      sub_2682CC640();
      v52 = v150;
      sub_2682CC640();
      v53 = v168;
      LODWORD(v162) = sub_2682BD278(v47, v52);
      v168 = v53;
      if (v53)
      {
        sub_26812D9E0(v52, &qword_280251630, &qword_2683E3D70);
        sub_26812D9E0(v153, &qword_280251630, &qword_2683E3D70);
LABEL_131:

        return;
      }

      v44 = v46;
      sub_26812D9E0(v52, &qword_280251630, &qword_2683E3D70);
      sub_26812D9E0(v153, &qword_280251630, &qword_2683E3D70);
      v152 = v50;
      v54 = (v50 + 2);
      v55 = v48 + v49 * (v50 + 2);
      a3 = v163;
      v172 = v49;
      v56 = v171;
      while (1)
      {
        v57 = v54;
        if ((v44 + 1) >= v56)
        {
          break;
        }

        v170 = v44;
        sub_2682CC640();
        sub_2682CC640();
        sub_2682CC640();
        v58 = *(a3 + *(v15 + 48));

        v59 = v180;
        if (__swift_getEnumTagSinglePayload(a3, 1, v180) == 1)
        {
          sub_2683CB488();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a3, 1, v59);
          v61 = v161;
          v62 = v160;
          if (EnumTagSinglePayload != 1)
          {
            sub_26812D9E0(v163, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v179)(v166, a3, v59);
          v61 = v161;
          v62 = v160;
        }

        sub_2682CC640();
        v63 = *(v62 + *(v15 + 48));

        if (__swift_getEnumTagSinglePayload(v62, 1, v59) == 1)
        {
          sub_2683CB488();
          if (__swift_getEnumTagSinglePayload(v62, 1, v59) != 1)
          {
            sub_26812D9E0(v62, &qword_28024DB08, qword_2683D5760);
          }
        }

        else
        {
          (*v179)(v61, v62, v59);
        }

        v64 = v166;
        v65 = sub_2683CB4C8();
        v66 = v61;
        v67 = v65;
        v68 = *v178;
        (*v178)(v66, v59);
        v68(v64, v59);
        sub_26812D9E0(v169, &qword_280251630, &qword_2683E3D70);
        sub_26812D9E0(v167, &qword_280251630, &qword_2683E3D70);
        v69 = v162 ^ v67;
        v56 = v171;
        v55 += v172;
        v51 += v172;
        v44 = (v170 + 1);
        v54 = v57 + 1;
        a3 = v163;
        if (v69)
        {
          goto LABEL_19;
        }
      }

      v44 = v56;
LABEL_19:
      v170 = v44;
      if (v162)
      {
        v45 = v152;
        if (v44 < v152)
        {
          goto LABEL_156;
        }

        if (v152 >= v44)
        {
          v44 = v151;
          goto LABEL_42;
        }

        v70 = v56 >= v57 ? v57 : v56;
        a3 = v172 * (v70 - 1);
        v71 = v172 * v70;
        v72 = v152;
        v73 = v152 * v172;
        v74 = v44;
        do
        {
          if (v72 != --v74)
          {
            v75 = *v165;
            if (!*v165)
            {
              goto LABEL_161;
            }

            sub_2682CC5D8();
            v76 = v73 < a3 || v75 + v73 >= v75 + v71;
            if (v76)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v73 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2682CC5D8();
          }

          ++v72;
          a3 -= v172;
          v71 -= v172;
          v73 += v172;
        }

        while (v72 < v74);
        v44 = v151;
      }

      else
      {
        v44 = v151;
      }

      v45 = v152;
    }

LABEL_42:
    v77 = v165[1];
    if (v170 < v77)
    {
      if (__OFSUB__(v170, v45))
      {
        goto LABEL_153;
      }

      if (v170 - v45 < v149)
      {
        break;
      }
    }

LABEL_69:
    if (v170 < v45)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v44 + 2) + 1, 1, v44);
      v44 = v138;
    }

    v94 = *(v44 + 2);
    v93 = *(v44 + 3);
    v95 = v94 + 1;
    if (v94 >= v93 >> 1)
    {
      sub_2682E556C(v93 > 1, v94 + 1, 1, v44);
      v44 = v139;
    }

    *(v44 + 2) = v95;
    v96 = v44 + 32;
    v97 = &v44[16 * v94 + 32];
    v98 = v170;
    *v97 = v45;
    *(v97 + 1) = v98;
    v172 = *v154;
    if (!v172)
    {
      goto LABEL_162;
    }

    if (v94)
    {
      while (1)
      {
        v99 = v95 - 1;
        v100 = &v96[16 * v95 - 16];
        v101 = &v44[16 * v95];
        if (v95 >= 4)
        {
          break;
        }

        if (v95 == 3)
        {
          v102 = *(v44 + 4);
          v103 = *(v44 + 5);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_89:
          if (v105)
          {
            goto LABEL_139;
          }

          v117 = *v101;
          v116 = *(v101 + 1);
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_142;
          }

          v121 = *(v100 + 1);
          v122 = v121 - *v100;
          if (__OFSUB__(v121, *v100))
          {
            goto LABEL_145;
          }

          if (__OFADD__(v119, v122))
          {
            goto LABEL_147;
          }

          if (v119 + v122 >= v104)
          {
            if (v104 < v122)
            {
              v99 = v95 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        if (v95 < 2)
        {
          goto LABEL_141;
        }

        v124 = *v101;
        v123 = *(v101 + 1);
        v112 = __OFSUB__(v123, v124);
        v119 = v123 - v124;
        v120 = v112;
LABEL_104:
        if (v120)
        {
          goto LABEL_144;
        }

        v126 = *v100;
        v125 = *(v100 + 1);
        v112 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v112)
        {
          goto LABEL_146;
        }

        if (v127 < v119)
        {
          goto LABEL_118;
        }

LABEL_111:
        if (v99 - 1 >= v95)
        {
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
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v165)
        {
          goto LABEL_159;
        }

        v131 = &v96[16 * v99 - 16];
        v132 = *v131;
        v133 = v99;
        v134 = v96;
        v135 = &v96[16 * v99];
        a3 = *(v135 + 1);
        v136 = v168;
        sub_2682C98A0(*v165 + *(v164 + 72) * *v131, *v165 + *(v164 + 72) * *v135, *v165 + *(v164 + 72) * a3, v172);
        v168 = v136;
        if (v136)
        {
          goto LABEL_131;
        }

        if (a3 < v132)
        {
          goto LABEL_134;
        }

        v137 = *(v44 + 2);
        if (v133 > v137)
        {
          goto LABEL_135;
        }

        *v131 = v132;
        v131[1] = a3;
        if (v133 >= v137)
        {
          goto LABEL_136;
        }

        v95 = v137 - 1;
        memmove(v135, v135 + 16, 16 * (v137 - 1 - v133));
        *(v44 + 2) = v137 - 1;
        v96 = v134;
        if (v137 <= 2)
        {
          goto LABEL_118;
        }
      }

      v106 = &v96[16 * v95];
      v107 = *(v106 - 8);
      v108 = *(v106 - 7);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_137;
      }

      v111 = *(v106 - 6);
      v110 = *(v106 - 5);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_138;
      }

      v113 = *(v101 + 1);
      v114 = v113 - *v101;
      if (__OFSUB__(v113, *v101))
      {
        goto LABEL_140;
      }

      v112 = __OFADD__(v104, v114);
      v115 = v104 + v114;
      if (v112)
      {
        goto LABEL_143;
      }

      if (v115 >= v109)
      {
        v129 = *v100;
        v128 = *(v100 + 1);
        v112 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v112)
        {
          goto LABEL_151;
        }

        if (v104 < v130)
        {
          v99 = v95 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_89;
    }

LABEL_118:
    v42 = v165[1];
    v43 = v170;
    v41 = v153;
    if (v170 >= v42)
    {
      goto LABEL_121;
    }
  }

  if (__OFADD__(v45, v149))
  {
    goto LABEL_154;
  }

  if (v45 + v149 >= v77)
  {
    v78 = v165[1];
  }

  else
  {
    v78 = v45 + v149;
  }

  if (v78 < v45)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    v44 = sub_2682CA6A4(v44);
LABEL_123:
    v140 = v44 + 16;
    v141 = *(v44 + 2);
    while (v141 >= 2)
    {
      if (!*v165)
      {
        goto LABEL_160;
      }

      v142 = v44;
      v143 = &v44[16 * v141];
      v144 = *v143;
      v44 = &v140[2 * v141];
      v145 = *(v44 + 1);
      v146 = v168;
      sub_2682C98A0(*v165 + *(v164 + 72) * *v143, *v165 + *(v164 + 72) * *v44, *v165 + *(v164 + 72) * v145, a3);
      v168 = v146;
      if (v146)
      {
        break;
      }

      if (v145 < v144)
      {
        goto LABEL_148;
      }

      if (v141 - 2 >= *v140)
      {
        goto LABEL_149;
      }

      *v143 = v144;
      *(v143 + 1) = v145;
      v147 = *v140 - v141;
      if (*v140 < v141)
      {
        goto LABEL_150;
      }

      v141 = *v140 - 1;
      memmove(v44, v44 + 16, 16 * v147);
      *v140 = v141;
      v44 = v142;
    }

    goto LABEL_131;
  }

  if (v170 == v78)
  {
    goto LABEL_69;
  }

  v151 = v44;
  v79 = *v165;
  v80 = *(v164 + 72);
  v81 = *v165 + v80 * (v170 - 1);
  v171 = -v80;
  v152 = v45;
  v82 = v45 - v170;
  v172 = v79;
  v155 = v80;
  v83 = v79 + v170 * v80;
  v84 = v176;
  a3 = v177;
  v156 = v78;
LABEL_52:
  v158 = v83;
  v159 = v82;
  v162 = v81;
  while (1)
  {
    sub_2682CC640();
    sub_2682CC640();
    sub_2682CC640();
    v85 = *(v84 + *(v15 + 48));

    v86 = v180;
    if (__swift_getEnumTagSinglePayload(v84, 1, v180) == 1)
    {
      sub_2683CB488();
      if (__swift_getEnumTagSinglePayload(v84, 1, v86) != 1)
      {
        sub_26812D9E0(v84, &qword_28024DB08, qword_2683D5760);
      }
    }

    else
    {
      (*v179)(v182, v84, v86);
    }

    sub_2682CC640();
    v87 = *(a3 + *(v15 + 48));

    v88 = __swift_getEnumTagSinglePayload(a3, 1, v86);
    v89 = v175;
    if (v88 == 1)
    {
      sub_2683CB488();
      if (__swift_getEnumTagSinglePayload(a3, 1, v86) != 1)
      {
        sub_26812D9E0(a3, &qword_28024DB08, qword_2683D5760);
      }
    }

    else
    {
      (*v179)(v175, a3, v86);
    }

    v90 = v182;
    v91 = sub_2683CB4C8();
    v92 = *v178;
    (*v178)(v89, v86);
    v92(v90, v86);
    sub_26812D9E0(v183, &qword_280251630, &qword_2683E3D70);
    sub_26812D9E0(v181, &qword_280251630, &qword_2683E3D70);
    if ((v91 & 1) == 0)
    {
      v15 = v174;
      v84 = v176;
      a3 = v177;
LABEL_67:
      v81 = v162 + v155;
      v82 = v159 - 1;
      v83 = v158 + v155;
      if (++v170 == v156)
      {
        v170 = v156;
        v44 = v151;
        v45 = v152;
        goto LABEL_69;
      }

      goto LABEL_52;
    }

    v15 = v174;
    if (!v172)
    {
      break;
    }

    sub_2682CC5D8();
    swift_arrayInitWithTakeFrontToBack();
    sub_2682CC5D8();
    v81 += v171;
    v83 += v171;
    v76 = __CFADD__(v82++, 1);
    v84 = v176;
    a3 = v177;
    if (v76)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
}

void sub_2682C77CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_120:
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_161;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_122:
      v86 = v6 + 16;
      v87 = *(v6 + 2);
      while (v87 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_158;
        }

        v88 = v6;
        v89 = &v6[16 * v87];
        v6 = *v89;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        v92 = v110;
        sub_2682CA280((*a3 + 112 * *v89), (*a3 + 112 * *v90), (*a3 + 112 * v91), v104);
        v110 = v92;
        if (v92)
        {
          break;
        }

        if (v91 < v6)
        {
          goto LABEL_146;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_147;
        }

        *v89 = v6;
        *(v89 + 1) = v91;
        v93 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_148;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v93);
        *v86 = v87;
        v6 = v88;
      }

LABEL_130:

      return;
    }

LABEL_155:
    v6 = sub_2682CA6A4(v6);
    goto LABEL_122;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v97 = v5;
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      memcpy(__dst, (*a3 + 112 * v8), sizeof(__dst));
      memcpy(v109, (v9 + 112 * v7), 0x70uLL);
      v10 = __dst[3];
      v101 = v4;
      if (__dst[3])
      {
        v11 = __dst[2];
      }

      else
      {
        v11 = 0;
        v10 = 0xE000000000000000;
      }

      v12 = v109[3];
      if (v109[3])
      {
        v13 = v109[2];
      }

      else
      {
        v13 = 0;
        v12 = 0xE000000000000000;
      }

      v14 = v11 == v13 && v10 == v12;
      v95 = v6;
      if (v14)
      {
        LODWORD(v104) = 0;
      }

      else
      {
        LODWORD(v104) = sub_2683D0598();
      }

      sub_2682CC640();
      sub_2682CC640();

      sub_26812D9E0(v109, &qword_280251640, &qword_2683E3D80);
      sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
      v15 = (v9 + 112 * v7 + 224);
      v99 = 112 * v7;
      v16 = 112 * v7 + 112;
      do
      {
        v17 = v8;
        v18 = v16;
        v6 = v8 + 1;
        if ((v8 + 1) >= v101)
        {
          break;
        }

        memcpy(v106, v15, sizeof(v106));
        memcpy(__src, v15 - 112, sizeof(__src));
        v19 = v106[3];
        if (v106[3])
        {
          v20 = v106[2];
        }

        else
        {
          v20 = 0;
          v19 = 0xE000000000000000;
        }

        v21 = __src[3];
        if (__src[3])
        {
          v22 = __src[2];
        }

        else
        {
          v22 = 0;
          v21 = 0xE000000000000000;
        }

        v23 = v20 == v22 && v19 == v21;
        v24 = v23 ? 0 : sub_2683D0598();
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(__src, &qword_280251640, &qword_2683E3D80);
        sub_26812D9E0(v106, &qword_280251640, &qword_2683E3D80);
        v15 += 112;
        ++v8;
        v16 = v18 + 112;
      }

      while (((v104 ^ v24) & 1) == 0);
      if (v104)
      {
        v7 = v97;
        if (v6 < v97)
        {
          goto LABEL_152;
        }

        v8 = v6;
        if (v97 <= v17)
        {
          v25 = v97;
          v6 = v95;
          v26 = v99;
          do
          {
            if (v25 != v17)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_159;
              }

              memcpy(__src, (v27 + v26), sizeof(__src));
              memmove((v27 + v26), (v27 + v18), 0x70uLL);
              memcpy((v27 + v18), __src, 0x70uLL);
            }

            ++v25;
            v18 -= 112;
            v26 += 112;
          }

          while (v25 < v17--);
        }

        else
        {
          v6 = v95;
        }
      }

      else
      {
        v8 = v6;
        v6 = v95;
        v7 = v97;
      }
    }

    v29 = a3[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_151;
      }

      if (&v8[-v7] < a4)
      {
        break;
      }
    }

LABEL_68:
    if (v8 < v7)
    {
      goto LABEL_150;
    }

    v104 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E556C(0, *(v6 + 2) + 1, 1, v6);
      v6 = v84;
    }

    v42 = *(v6 + 2);
    v41 = *(v6 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      sub_2682E556C(v41 > 1, v42 + 1, 1, v6);
      v6 = v85;
    }

    *(v6 + 2) = v43;
    v44 = v6 + 32;
    v45 = &v6[16 * v42 + 32];
    *v45 = v97;
    *(v45 + 1) = v8;
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        v47 = &v44[16 * v43 - 16];
        v48 = &v6[16 * v43];
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v49 = *(v6 + 4);
          v50 = *(v6 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_88:
          if (v52)
          {
            goto LABEL_137;
          }

          v64 = *v48;
          v63 = *(v48 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_140;
          }

          v68 = *(v47 + 1);
          v69 = v68 - *v47;
          if (__OFSUB__(v68, *v47))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v66, v69))
          {
            goto LABEL_145;
          }

          if (v66 + v69 >= v51)
          {
            if (v51 < v69)
            {
              v46 = v43 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        if (v43 < 2)
        {
          goto LABEL_139;
        }

        v71 = *v48;
        v70 = *(v48 + 1);
        v59 = __OFSUB__(v70, v71);
        v66 = v70 - v71;
        v67 = v59;
LABEL_103:
        if (v67)
        {
          goto LABEL_142;
        }

        v73 = *v47;
        v72 = *(v47 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_144;
        }

        if (v74 < v66)
        {
          goto LABEL_117;
        }

LABEL_110:
        if (v46 - 1 >= v43)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*a3)
        {
          goto LABEL_157;
        }

        v78 = &v44[16 * v46 - 16];
        v79 = *v78;
        v80 = &v44[16 * v46];
        v81 = *(v80 + 1);
        v82 = v110;
        sub_2682CA280((*a3 + 112 * *v78), (*a3 + 112 * *v80), (*a3 + 112 * v81), v103);
        v110 = v82;
        if (v82)
        {
          goto LABEL_130;
        }

        if (v81 < v79)
        {
          goto LABEL_132;
        }

        v83 = *(v6 + 2);
        if (v46 > v83)
        {
          goto LABEL_133;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        if (v46 >= v83)
        {
          goto LABEL_134;
        }

        v43 = v83 - 1;
        memmove(&v44[16 * v46], v80 + 16, 16 * (v83 - 1 - v46));
        *(v6 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_117;
        }
      }

      v53 = &v44[16 * v43];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_135;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_136;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_138;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_141;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_149;
        }

        if (v51 < v77)
        {
          v46 = v43 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_88;
    }

LABEL_117:
    v5 = v104;
    v4 = a3[1];
    if (v104 >= v4)
    {
      goto LABEL_120;
    }
  }

  v30 = (v7 + a4);
  if (__OFADD__(v7, a4))
  {
    goto LABEL_153;
  }

  if (v30 >= v29)
  {
    v30 = a3[1];
  }

  if (v30 < v7)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v8 == v30)
  {
    goto LABEL_68;
  }

  v31 = *a3;
  v32 = (*a3 + 112 * v8);
  v33 = v7 - v8 + 1;
  v98 = v30;
LABEL_50:
  v102 = v32;
  v104 = v8;
  v100 = v33;
  for (i = v33; ; ++i)
  {
    memcpy(__dst, v32, sizeof(__dst));
    memcpy(v109, v32 - 112, 0x70uLL);
    v35 = __dst[3];
    if (__dst[3])
    {
      v36 = __dst[2];
    }

    else
    {
      v36 = 0;
      v35 = 0xE000000000000000;
    }

    v37 = v109[3];
    if (v109[3])
    {
      v38 = v109[2];
    }

    else
    {
      v38 = 0;
      v37 = 0xE000000000000000;
    }

    if (v36 == v38 && v35 == v37)
    {
      sub_2682CC640();
      sub_2682CC640();

      sub_26812D9E0(v109, &qword_280251640, &qword_2683E3D80);
      sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
LABEL_66:
      v8 = v104 + 1;
      v32 = v102 + 112;
      v33 = v100 - 1;
      if (v104 + 1 == v98)
      {
        v8 = v98;
        v7 = v97;
        goto LABEL_68;
      }

      goto LABEL_50;
    }

    v40 = sub_2683D0598();
    sub_2682CC640();
    sub_2682CC640();

    sub_26812D9E0(v109, &qword_280251640, &qword_2683E3D80);
    sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v31)
    {
      break;
    }

    memcpy(__src, v32, sizeof(__src));
    memcpy(v32, v32 - 112, 0x70uLL);
    memcpy(v32 - 112, __src, 0x70uLL);
    if (!i)
    {
      goto LABEL_66;
    }

    v32 -= 112;
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
}

uint64_t sub_2682C80F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = type metadata accessor for Snippet.Reminder(0);
  v8 = *(*(v61 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v55 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_73;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_74;
  }

  v25 = v21 / v20;
  v64 = a1;
  v63 = a4;
  v26 = v23 / v20;
  if (v21 / v20 < v23 / v20)
  {
    sub_2683902F8(a1, v21 / v20, a4);
    v60 = (a4 + v25 * v20);
    v62 = v60;
    while (1)
    {
      if (a4 >= v60 || a2 >= a3)
      {
        goto LABEL_71;
      }

      sub_2682B5274();
      sub_2682B5274();
      v28 = *(v61 + 24);
      v29 = *&v18[v28];
      v30 = *&v18[v28 + 8];
      v31 = &v15[v28];
      if (v29 == *v31 && v30 == *(v31 + 1))
      {
        sub_2682B52CC();
        sub_2682B52CC();
      }

      else
      {
        v33 = sub_2683D0598();
        sub_2682B52CC();
        sub_2682B52CC();
        if (v33)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v63 = a4 + v20;
      a4 += v20;
LABEL_40:
      a1 += v20;
      v64 = a1;
    }
  }

  sub_2683902F8(a2, v23 / v20, a4);
  v36 = a2;
  v37 = a4 + v26 * v20;
  v38 = -v20;
  v39 = v37;
LABEL_42:
  v58 = v36;
  v57 = v36 + v38;
  v40 = a3;
  v55 = v39;
  while (1)
  {
    if (v37 <= a4)
    {
      v64 = v58;
      v62 = v39;
      goto LABEL_71;
    }

    if (v58 <= a1)
    {
      break;
    }

    v56 = v39;
    v41 = v37 + v38;
    v42 = v59;
    sub_2682B5274();
    v43 = v60;
    sub_2682B5274();
    v44 = *(v61 + 24);
    v45 = *&v42[v44];
    v46 = *&v42[v44 + 8];
    v47 = &v43[v44];
    if (v45 == *v47 && v46 == *(v47 + 1))
    {
      v49 = 0;
    }

    else
    {
      v49 = sub_2683D0598();
    }

    a3 = v40 + v38;
    sub_2682B52CC();
    sub_2682B52CC();
    if (v49)
    {
      if (v40 < v58 || a3 >= v58)
      {
        v52 = v57;
        swift_arrayInitWithTakeFrontToBack();
        v36 = v52;
        v39 = v56;
      }

      else
      {
        v54 = v56;
        v53 = v57;
        v39 = v56;
        v36 = v57;
        if (v40 != v58)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v53;
          v39 = v54;
        }
      }

      goto LABEL_42;
    }

    if (v40 < v37 || a3 >= v37)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v39 = v37 + v38;
    v22 = v37 == v40;
    v40 += v38;
    v37 += v38;
    if (!v22)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v40 = a3;
      v37 = v41;
      v39 = v41;
    }
  }

  v64 = v58;
  v62 = v55;
LABEL_71:
  sub_2682CA6B8(&v64, &v63, &v62);
  return 1;
}

uint64_t sub_2682C85F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v130 = a4;
  v131 = a3;
  v134 = a2;
  v5 = sub_2683CB528();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v117 = &v112[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v116 = &v112[-v10];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251618, &qword_2683E3D58);
  v11 = *(*(v128 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v128);
  v121 = &v112[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v112[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v120 = &v112[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v119 = &v112[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v112[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v112[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v118 = &v112[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v112[-v32];
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v112[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v112[-v37];
  v135 = type metadata accessor for Snippet.Reminder(0);
  v39 = *(*(v135 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v135);
  v127 = &v112[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v123 = &v112[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v133 = &v112[-v45];
  result = MEMORY[0x28223BE20](v44);
  v129 = &v112[-v47];
  v49 = *(v48 + 72);
  if (!v49)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  v50 = v134 - a1;
  v51 = v134 - a1 == 0x8000000000000000 && v49 == -1;
  if (v51)
  {
    goto LABEL_83;
  }

  v52 = v131 - v134;
  if (v131 - v134 == 0x8000000000000000 && v49 == -1)
  {
    goto LABEL_84;
  }

  v122 = v33;
  v124 = v26;
  v125 = v24;
  v54 = v50 / v49;
  v138 = a1;
  v55 = v130;
  v137 = v130;
  v115 = (v6 + 32);
  v114 = (v6 + 8);
  v56 = v52 / v49;
  v132 = v5;
  v57 = v49;
  if (v50 / v49 < v52 / v49)
  {
    sub_2683902F8(a1, v54, v130);
    v127 = (v55 + v54 * v57);
    v136 = v127;
    v113 = v38;
    v126 = v57;
    while (1)
    {
      if (v55 >= v127 || v134 >= v131)
      {
        goto LABEL_81;
      }

      sub_2682B5274();
      v130 = v55;
      sub_2682B5274();
      v59 = *(v135 + 52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
      v60 = v124;
      sub_2683CB858();
      v61 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
      if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
      {
        sub_26812D9E0(v60, &qword_28024D5D0, &unk_2683D2CA0);
        v62 = 1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
        sub_2683CB858();
        sub_2682B52CC();
        v62 = 0;
      }

      __swift_storeEnumTagSinglePayload(v38, v62, 1, v132);
      v63 = &v133[*(v135 + 52)];
      v64 = v125;
      sub_2683CB858();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v61);
      v66 = v126;
      if (EnumTagSinglePayload == 1)
      {
        sub_26812D9E0(v64, &qword_28024D5D0, &unk_2683D2CA0);
        v67 = 1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
        sub_2683CB858();
        sub_2682B52CC();
        v67 = 0;
      }

      v68 = v132;
      __swift_storeEnumTagSinglePayload(v36, v67, 1, v132);
      v69 = *(v128 + 48);
      sub_2682CC5D8();
      sub_2682CC5D8();
      if (__swift_getEnumTagSinglePayload(v15, 1, v68) == 1)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(&v15[v69], 1, v68) == 1)
      {
        sub_26812D9E0(v15, &qword_28024DB08, qword_2683D5760);
        sub_2682B52CC();
        sub_2682B52CC();
      }

      else
      {
        v71 = *v115;
        v72 = v36;
        v73 = v116;
        (*v115)(v116, v15, v68);
        v74 = a1;
        v75 = v117;
        v71(v117, &v15[v69], v68);
        v76 = sub_2683CB4C8();
        v77 = *v114;
        v78 = v75;
        a1 = v74;
        v66 = v126;
        (*v114)(v78, v68);
        v79 = v73;
        v36 = v72;
        v38 = v113;
        v77(v79, v68);
        sub_2682B52CC();
        sub_2682B52CC();
        if ((v76 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v80 = v134 + v66;
      v81 = a1 < v134 || a1 >= v80;
      v55 = v130;
      if (v81)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v134)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v134 = v80;
LABEL_45:
      a1 += v66;
      v138 = a1;
    }

    sub_26812D9E0(&v15[v69], &qword_28024DB08, qword_2683D5760);
    sub_2682B52CC();
    sub_2682B52CC();
LABEL_24:
    v55 = v130 + v66;
    if (a1 < v130 || a1 >= v55)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a1 != v130)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v137 = v55;
    goto LABEL_45;
  }

  sub_2683902F8(v134, v52 / v49, v130);
  v82 = v55 + v56 * v57;
  v83 = -v57;
  v84 = v82;
  v126 = -v57;
LABEL_47:
  v85 = v131;
  v124 = v84;
  v129 = (v134 + v83);
  while (1)
  {
    if (v82 <= v55)
    {
      v138 = v134;
      v136 = v84;
      goto LABEL_81;
    }

    if (v134 <= a1)
    {
      break;
    }

    v133 = v85;
    v125 = v84;
    v86 = v82 + v83;
    sub_2682B5274();
    sub_2682B5274();
    v87 = *(v135 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
    v88 = v119;
    sub_2683CB858();
    v89 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
    if (__swift_getEnumTagSinglePayload(v88, 1, v89) == 1)
    {
      sub_26812D9E0(v88, &qword_28024D5D0, &unk_2683D2CA0);
      v90 = 1;
      v91 = v120;
      v92 = v122;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v92 = v122;
      sub_2683CB858();
      sub_2682B52CC();
      v90 = 0;
      v91 = v120;
    }

    __swift_storeEnumTagSinglePayload(v92, v90, 1, v132);
    v93 = &v127[*(v135 + 52)];
    sub_2683CB858();
    if (__swift_getEnumTagSinglePayload(v91, 1, v89) == 1)
    {
      sub_26812D9E0(v91, &qword_28024D5D0, &unk_2683D2CA0);
      v94 = 1;
      v95 = v118;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D698, &qword_2683D2D00);
      v95 = v118;
      sub_2683CB858();
      sub_2682B52CC();
      v94 = 0;
    }

    v96 = v132;
    __swift_storeEnumTagSinglePayload(v95, v94, 1, v132);
    v97 = *(v128 + 48);
    v98 = v121;
    sub_2682CC5D8();
    sub_2682CC5D8();
    if (__swift_getEnumTagSinglePayload(v98, 1, v96) == 1)
    {
      sub_26812D9E0(v98 + v97, &qword_28024DB08, qword_2683D5760);
      v99 = 0;
    }

    else if (__swift_getEnumTagSinglePayload(v98 + v97, 1, v96) == 1)
    {
      sub_26812D9E0(v98, &qword_28024DB08, qword_2683D5760);
      v99 = 1;
    }

    else
    {
      v100 = *v115;
      v101 = v116;
      (*v115)(v116, v121, v96);
      v102 = a1;
      v103 = v117;
      v100(v117, &v121[v97], v96);
      v99 = sub_2683CB4C8();
      v104 = *v114;
      v105 = v103;
      a1 = v102;
      (*v114)(v105, v96);
      v104(v101, v96);
    }

    v83 = v126;
    v106 = v133;
    v131 = &v133[v126];
    sub_2682B52CC();
    sub_2682B52CC();
    v107 = v129;
    v55 = v130;
    if (v99)
    {
      if (v106 < v134 || v131 >= v134)
      {
        swift_arrayInitWithTakeFrontToBack();
        v134 = v107;
        v84 = v125;
      }

      else
      {
        v110 = v125;
        v84 = v125;
        v111 = v134;
        v134 = v129;
        if (v106 != v111)
        {
          swift_arrayInitWithTakeBackToFront();
          v134 = v107;
          v84 = v110;
        }
      }

      goto LABEL_47;
    }

    if (v106 < v82 || v131 >= v82)
    {
      v85 = v131;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_70;
    }

    v84 = v86;
    v51 = v82 == v106;
    v85 = v131;
    v82 = v86;
    if (!v51)
    {
      v85 = v131;
      swift_arrayInitWithTakeBackToFront();
LABEL_70:
      v82 = v86;
      v84 = v86;
    }
  }

  v138 = v134;
  v136 = v124;
LABEL_81:
  sub_2682CA6B8(&v138, &v137, &v136);
  return 1;
}

uint64_t sub_2682C9318(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v7 = v6;
  v78 = a5;
  v79 = a6;
  v77 = type metadata accessor for Snippet.Reminder(0);
  v12 = *(*(v77 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v77);
  v14 = MEMORY[0x28223BE20](v13);
  v68 = &v66 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v66 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v25 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_66;
  }

  v27 = a2;
  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_67;
  }

  v30 = v25 / v24;
  v82 = a1;
  v81 = a4;
  v31 = v28 / v24;
  if (v25 / v24 >= v28 / v24)
  {
    v71 = v20;
    v72 = a1;
    v45 = v27;
    sub_2683902F8(v27, v28 / v24, a4);
    v46 = v45;
    v73 = a4;
    v47 = a4 + v31 * v24;
    v48 = -v24;
    v49 = v47;
    v70 = -v24;
    v50 = v68;
LABEL_38:
    v51 = a3;
    v52 = v46 + v48;
    v53 = v51;
    v67 = v49;
    v54 = v49;
    v74 = v46;
    while (1)
    {
      if (v47 <= v73)
      {
        v82 = v46;
        v80 = v54;
        goto LABEL_64;
      }

      if (v46 <= v72)
      {
        v82 = v46;
        v65 = v67;
        goto LABEL_63;
      }

      v55 = v53;
      v69 = v54;
      v76 = v47;
      v56 = v47 + v48;
      sub_2682B5274();
      v57 = v71;
      sub_2682B5274();
      v58 = v78(v50, v57);
      if (v7)
      {
        break;
      }

      v59 = v58;
      v75 = 0;
      v60 = v55 + v48;
      sub_2682B52CC();
      sub_2682B52CC();
      if (v59)
      {
        if (v55 < v74 || v60 >= v74)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v52;
          v49 = v69;
          v48 = v70;
          v7 = v75;
          v47 = v76;
          a3 = v60;
        }

        else
        {
          v48 = v70;
          v49 = v69;
          v63 = v52;
          v46 = v52;
          v7 = v75;
          v47 = v76;
          a3 = v60;
          if (v55 != v74)
          {
            v64 = v69;
            swift_arrayInitWithTakeBackToFront();
            v46 = v63;
            v49 = v64;
          }
        }

        goto LABEL_38;
      }

      if (v55 < v76 || v60 >= v76)
      {
        swift_arrayInitWithTakeFrontToBack();
        v53 = v55 + v48;
        v47 = v56;
        v54 = v56;
        v46 = v74;
        v7 = v75;
        v48 = v70;
      }

      else
      {
        v54 = v56;
        v53 = v55 + v48;
        v47 = v56;
        v46 = v74;
        v7 = v75;
        v48 = v70;
        if (v76 != v55)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v74;
          v53 = v60;
          v47 = v56;
          v54 = v56;
        }
      }
    }

    sub_2682B52CC();
    sub_2682B52CC();
    v82 = v74;
    v65 = v69;
LABEL_63:
    v80 = v65;
  }

  else
  {
    v76 = a3;
    v32 = v27;
    sub_2683902F8(a1, v25 / v24, a4);
    v33 = v32;
    v75 = a4 + v30 * v24;
    v80 = v75;
    v34 = a4;
    while (v34 < v75 && v33 < v76)
    {
      v36 = v33;
      sub_2682B5274();
      sub_2682B5274();
      v37 = v78(v22, v18);
      if (v6)
      {
        sub_2682B52CC();
        sub_2682B52CC();
        break;
      }

      v38 = v37;
      v39 = v34;
      sub_2682B52CC();
      sub_2682B52CC();
      if (v38)
      {
        v40 = v36;
        v41 = v24;
        v42 = v40 + v24;
        if (a1 < v40 || a1 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = v42;
      }

      else
      {
        v34 += v24;
        if (a1 < v39 || a1 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v81 = v39 + v24;
        v33 = v36;
        v41 = v24;
      }

      a1 += v41;
      v82 = a1;
    }
  }

LABEL_64:
  sub_2682CA6B8(&v82, &v81, &v80);
  return 1;
}

uint64_t sub_2682C98A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_2683CB528();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v100 = &v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v93 - v17;
  MEMORY[0x28223BE20](v16);
  v109 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v93 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v97 = &v93 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v99 = &v93 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v93 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v101 = &v93 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v103 = &v93 - v35;
  result = MEMORY[0x28223BE20](v34);
  v108 = &v93 - v37;
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  v40 = a2 - a1 == 0x8000000000000000 && v39 == -1;
  if (v40)
  {
    goto LABEL_77;
  }

  v95 = v13;
  v107 = result;
  v111 = a2;
  v41 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_78;
  }

  v43 = (a2 - a1) / v39;
  v114 = a1;
  v113 = a4;
  v104 = a3;
  v105 = (v9 + 32);
  v106 = (v9 + 8);
  v44 = v41 / v39;
  if (v43 >= v41 / v39)
  {
    v63 = v111;
    sub_268390468(v111, v41 / v39, a4);
    v64 = v63;
    v110 = a4;
    v65 = a4 + v44 * v39;
    v66 = -v39;
    v67 = v65;
    v68 = v107;
    v69 = v104;
    v70 = v98;
    v109 = v66;
LABEL_45:
    v111 = v64;
    v101 = v67;
    v102 = (v64 + v66);
    v71 = v69;
    v72 = v67;
    while (1)
    {
      if (v65 <= v110)
      {
        v114 = v111;
        v112 = v72;
        goto LABEL_75;
      }

      if (v111 <= a1)
      {
        break;
      }

      v94 = v72;
      v108 = v65;
      v103 = v65 + v66;
      v104 = v71;
      sub_2682CC640();
      sub_2682CC640();
      sub_2682CC640();
      v73 = *(v70 + *(v68 + 48));

      if (__swift_getEnumTagSinglePayload(v70, 1, v8) == 1)
      {
        sub_2683CB488();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v8);
        v75 = v96;
        if (EnumTagSinglePayload != 1)
        {
          sub_26812D9E0(v70, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        (*v105)(v100, v70, v8);
        v75 = v96;
      }

      sub_2682CC640();
      v76 = *(v75 + *(v68 + 48));

      if (__swift_getEnumTagSinglePayload(v75, 1, v8) == 1)
      {
        v77 = v95;
        sub_2683CB488();
        if (__swift_getEnumTagSinglePayload(v75, 1, v8) != 1)
        {
          sub_26812D9E0(v75, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        v77 = v95;
        (*v105)(v95, v75, v8);
      }

      v78 = v104;
      v79 = &v109[v104];
      v80 = v100;
      v81 = sub_2683CB4C8();
      v82 = v77;
      v83 = *v106;
      (*v106)(v82, v8);
      v83(v80, v8);
      sub_26812D9E0(v97, &qword_280251630, &qword_2683E3D70);
      sub_26812D9E0(v99, &qword_280251630, &qword_2683E3D70);
      if (v81)
      {
        v89 = v78 < v111 || v79 >= v111;
        v90 = v107;
        v69 = v79;
        if (v89)
        {
          v91 = v102;
          swift_arrayInitWithTakeFrontToBack();
          v64 = v91;
          v67 = v94;
          v70 = v98;
          v65 = v108;
          v66 = v109;
          v68 = v90;
        }

        else
        {
          v67 = v94;
          v40 = v78 == v111;
          v64 = v102;
          v70 = v98;
          v65 = v108;
          v66 = v109;
          v68 = v107;
          if (!v40)
          {
            v92 = v102;
            v67 = v94;
            swift_arrayInitWithTakeBackToFront();
            v65 = v108;
            v64 = v92;
          }
        }

        goto LABEL_45;
      }

      v84 = v107;
      v85 = v78 < v108 || v79 >= v108;
      v86 = v79;
      if (v85)
      {
        v87 = v103;
        swift_arrayInitWithTakeFrontToBack();
        v71 = v86;
        v65 = v87;
        v72 = v87;
        v70 = v98;
        v66 = v109;
        v67 = v101;
        v68 = v84;
      }

      else
      {
        v72 = v103;
        v40 = v108 == v78;
        v71 = v79;
        v65 = v103;
        v70 = v98;
        v66 = v109;
        v67 = v101;
        v68 = v107;
        if (!v40)
        {
          v88 = v103;
          swift_arrayInitWithTakeBackToFront();
          v71 = v86;
          v65 = v88;
          v72 = v88;
        }
      }
    }

    v114 = v111;
    v112 = v67;
  }

  else
  {
    sub_268390468(a1, (a2 - a1) / v39, a4);
    v99 = v39;
    v100 = (a4 + v43 * v39);
    v112 = v100;
    v45 = v111;
    v46 = v107;
    while (a4 < v100 && v45 < v104)
    {
      v111 = v45;
      sub_2682CC640();
      v110 = a4;
      sub_2682CC640();
      v48 = v101;
      sub_2682CC640();
      v49 = *(v48 + *(v46 + 48));

      if (__swift_getEnumTagSinglePayload(v48, 1, v8) == 1)
      {
        sub_2683CB488();
        if (__swift_getEnumTagSinglePayload(v48, 1, v8) != 1)
        {
          sub_26812D9E0(v48, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        (*v105)(v109, v48, v8);
      }

      sub_2682CC640();
      v50 = *&v31[*(v46 + 48)];

      v51 = __swift_getEnumTagSinglePayload(v31, 1, v8);
      v52 = v110;
      if (v51 == 1)
      {
        v53 = v102;
        sub_2683CB488();
        if (__swift_getEnumTagSinglePayload(v31, 1, v8) != 1)
        {
          sub_26812D9E0(v31, &qword_28024DB08, qword_2683D5760);
        }
      }

      else
      {
        v53 = v102;
        (*v105)(v102, v31, v8);
      }

      v54 = v109;
      v55 = sub_2683CB4C8();
      v56 = v53;
      v57 = *v106;
      (*v106)(v56, v8);
      v57(v54, v8);
      sub_26812D9E0(v103, &qword_280251630, &qword_2683E3D70);
      sub_26812D9E0(v108, &qword_280251630, &qword_2683E3D70);
      if (v55)
      {
        v58 = v99;
        v59 = v111 + v99;
        v60 = a1 < v111 || a1 >= v59;
        a4 = v52;
        if (v60)
        {
          v46 = v107;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v46 = v107;
          if (a1 != v111)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v45 = v59;
      }

      else
      {
        v61 = v52;
        v58 = v99;
        a4 = v52 + v99;
        if (a1 < v52 || a1 >= a4)
        {
          v46 = v107;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v46 = v107;
          if (a1 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v113 = a4;
        v45 = v111;
      }

      a1 += v58;
      v114 = a1;
    }
  }

LABEL_75:
  sub_2682CA798(&v114, &v113, &v112);
  return 1;
}

uint64_t sub_2682CA280(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 112;
  v9 = (a3 - a2) / 112;
  if (v8 < v9)
  {
    sub_26839047C(a1, (a2 - a1) / 112, a4);
    v10 = &v4[112 * v8];
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_59;
      }

      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v36, v4, 0x70uLL);
      v12 = __dst[3];
      if (__dst[3])
      {
        v13 = __dst[2];
      }

      else
      {
        v13 = 0;
        v12 = 0xE000000000000000;
      }

      v14 = v36[3];
      if (v36[3])
      {
        v15 = v36[2];
      }

      else
      {
        v15 = 0;
        v14 = 0xE000000000000000;
      }

      if (v13 == v15 && v12 == v14)
      {
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(v36, &qword_280251640, &qword_2683E3D80);
        sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
      }

      else
      {
        v17 = sub_2683D0598();
        sub_2682CC640();
        sub_2682CC640();

        sub_26812D9E0(v36, &qword_280251640, &qword_2683E3D80);
        sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
        if (v17)
        {
          v18 = v6;
          v19 = v7 == v6;
          v6 += 112;
          goto LABEL_21;
        }
      }

      v18 = v4;
      v19 = v7 == v4;
      v4 += 112;
LABEL_21:
      if (!v19)
      {
        memmove(v7, v18, 0x70uLL);
      }

      v7 += 112;
    }
  }

  sub_26839047C(a2, (a3 - a2) / 112, a4);
  v10 = &v4[112 * v9];
  v33 = v7;
LABEL_25:
  i = v6 - 112;
  v5 -= 112;
  v34 = v6;
  while (v10 > v4 && v6 > v7)
  {
    memcpy(__dst, v10 - 112, sizeof(__dst));
    memcpy(v36, i, 0x70uLL);
    v21 = __dst[3];
    if (__dst[3])
    {
      v22 = __dst[2];
    }

    else
    {
      v22 = 0;
      v21 = 0xE000000000000000;
    }

    v23 = v36[3];
    if (v36[3])
    {
      v24 = v36[2];
    }

    else
    {
      v24 = 0;
      v23 = 0xE000000000000000;
    }

    if (v22 == v24 && v21 == v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_2683D0598();
    }

    sub_2682CC640();
    sub_2682CC640();

    sub_26812D9E0(v36, &qword_280251640, &qword_2683E3D80);
    sub_26812D9E0(__dst, &qword_280251640, &qword_2683E3D80);
    v27 = v5 + 112;
    if (v26)
    {
      v7 = v33;
      v29 = v27 < v34 || v5 >= v34;
      if (!v29 && v27 == v34)
      {
        v6 = i;
      }

      else
      {
        v6 = i;
        memmove(v5, i, 0x70uLL);
      }

      goto LABEL_25;
    }

    v28 = v27 < v10 || v5 >= v10;
    v7 = v33;
    v6 = v34;
    if (v28 || v10 != v27)
    {
      memmove(v5, v10 - 112, 0x70uLL);
    }

    v5 -= 112;
    v10 -= 112;
  }

LABEL_59:
  v30 = (v10 - v4) / 112;
  if (v6 != v4 || v6 >= &v4[112 * v30])
  {
    memmove(v6, v4, 112 * v30);
  }

  return 1;
}

uint64_t sub_2682CA6B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Snippet.Reminder(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2682CA798(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2682CA884(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251620, &qword_2683E3D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_2682CA984()
{
  OUTLINED_FUNCTION_80_1();
  if (v2)
  {
    v5 = sub_2683D00A8();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_9_0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_268229348(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_268129504(0, &qword_280253310, 0x277CD4220);
        OUTLINED_FUNCTION_116_1();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v25 = v6;
        sub_2682CC6F4(&qword_28024E020);
        do
        {
          v7 = OUTLINED_FUNCTION_19_2();
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
          v17 = OUTLINED_FUNCTION_81_1(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v26[0]);
          v20 = sub_2683ABCD0(v17, v18, v19);
          v22 = *v21;
          (v20)(v26, 0);
          OUTLINED_FUNCTION_112_1();
        }

        while (!v23);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2682CAAC4()
{
  OUTLINED_FUNCTION_80_1();
  if (v2)
  {
    v5 = sub_2683D00A8();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_9_0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_268229348(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_268129504(0, &qword_28024E7E0, 0x277D471A8);
        OUTLINED_FUNCTION_116_1();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v25 = v6;
        sub_2682CC6F4(&unk_28024E7F0);
        do
        {
          v7 = OUTLINED_FUNCTION_19_2();
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
          v17 = OUTLINED_FUNCTION_81_1(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v26[0]);
          v20 = sub_2683ABDEC(v17, v18, v19);
          v22 = *v21;
          (v20)(v26, 0);
          OUTLINED_FUNCTION_112_1();
        }

        while (!v23);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2682CAC04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2683D00A8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268229348(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268129504(0, &qword_28024D350, 0x277CD3E00);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2682CC6F4(&unk_2802515E0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D8, &unk_2683E6500);
          v9 = sub_2683ABCD0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2682CAD88(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2682CAEE4()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      v18 = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2682CB02C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251630, &qword_2683E3D70);
  v35 = *(v38 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v36 = &v31 - v12;
  v40 = a4;
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
    v20 = 0;
    a3 = 0;
LABEL_22:
    *a1 = v40;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v20;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(v14 - 32);
    v33 = a1;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v16) >> 6;
    v34 = a3;
    while (1)
    {
      if (v19 >= a3)
      {
        goto LABEL_25;
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        while (1)
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v18 = 0;
            a3 = v19;
            goto LABEL_20;
          }

          v18 = *(v14 + 8 * v23);
          ++v20;
          if (v18)
          {
            v39 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v39 = a2;
      v23 = v20;
LABEL_16:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v23 << 6);
      v26 = v40;
      v27 = *(v40 + 48);
      v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760) - 8) + 72);
      v29 = v37;
      sub_2682CC640();
      *&v29[*(v38 + 48)] = *(*(v26 + 56) + 8 * v25);
      sub_2682CC5D8();
      v30 = v39;
      sub_2682CC5D8();
      a3 = v34;
      if (v22 == v34)
      {
        break;
      }

      a2 = v30 + *(v35 + 72);

      v19 = v22;
      v20 = v23;
    }

    v20 = v23;
LABEL_20:
    v16 = v32;
    a1 = v33;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2682CB2F8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v19 = -1 << *(a4 + 32);
    v20 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(a4 + 48) + 104 * v16);
      memcpy(__dst, v17, sizeof(__dst));
      v18 = *(*(a4 + 56) + 8 * v16);
      memcpy(__src, v17, 0x61uLL);
      memcpy(v9, __src, 0x68uLL);
      v9[13] = v18;
      if (v13 == v8)
      {
        break;
      }

      v9 += 14;
      sub_2682CC640();

      v10 = v13;
      v11 = v14;
    }

    sub_2682CC640();

    v11 = v14;
LABEL_19:
    v5 = v19;
    result = v20;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2682CB4DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EC68, &unk_2683E3470);
    sub_2682C22DC(v4);
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB56C()
{
  result = qword_280251480;
  if (!qword_280251480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251480);
  }

  return result;
}

unint64_t sub_2682CB5C0()
{
  result = qword_280251488;
  if (!qword_280251488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251488);
  }

  return result;
}

unint64_t sub_2682CB614()
{
  result = qword_280251498;
  if (!qword_280251498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251498);
  }

  return result;
}

unint64_t sub_2682CB668()
{
  result = qword_2802514B8;
  if (!qword_2802514B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802514B8);
  }

  return result;
}

unint64_t sub_2682CB6BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024ED38, &unk_2683E3430);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB724(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28024E790, &unk_2683D8DD0);
    sub_2682CB7E8(&unk_2802514E0);
    sub_2682CB7E8(&unk_2802514E8);
    result = OUTLINED_FUNCTION_120_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB7E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024ED40, &qword_2683DA168);
    v4();
    OUTLINED_FUNCTION_74_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB854(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D598, &unk_2683D2C20);
    sub_2682CB6BC(&unk_2802514C8);
    sub_2682CB6BC(&unk_2802514D0);
    result = OUTLINED_FUNCTION_120_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CB904()
{
  result = qword_280251508;
  if (!qword_280251508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251508);
  }

  return result;
}

void sub_2682CBA58()
{
  sub_2682CBC88(319, &qword_28024ECF8, type metadata accessor for Snippet.ReminderSearchResult.Section, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Snippet.SectionHeading();
    if (v1 <= 0x3F)
    {
      sub_2682CBB6C(319, &qword_280251538, &qword_28024ED38);
      if (v2 <= 0x3F)
      {
        sub_2682CBB6C(319, &qword_280251540, &qword_28024ED40);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2682CBB6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_82_2(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_2683CB888();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2682CBBE4()
{
  sub_2682CBC88(319, &qword_28024ECE8, type metadata accessor for Snippet.SectionHeading, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2682CBC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2682CBCF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2682CBD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V20ReminderSearchResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2682CBE84(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2682CBF70(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2682CC020()
{
  result = qword_280251558;
  if (!qword_280251558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251558);
  }

  return result;
}

unint64_t sub_2682CC078()
{
  result = qword_280251560;
  if (!qword_280251560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251560);
  }

  return result;
}

unint64_t sub_2682CC0D0()
{
  result = qword_280251568;
  if (!qword_280251568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251568);
  }

  return result;
}

unint64_t sub_2682CC128()
{
  result = qword_280251570;
  if (!qword_280251570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251570);
  }

  return result;
}

unint64_t sub_2682CC180()
{
  result = qword_280251578;
  if (!qword_280251578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251578);
  }

  return result;
}

unint64_t sub_2682CC1D8()
{
  result = qword_280251580;
  if (!qword_280251580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251580);
  }

  return result;
}

unint64_t sub_2682CC230()
{
  result = qword_280251588;
  if (!qword_280251588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251588);
  }

  return result;
}

unint64_t sub_2682CC288()
{
  result = qword_280251590;
  if (!qword_280251590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251590);
  }

  return result;
}

unint64_t sub_2682CC2E0()
{
  result = qword_280251598;
  if (!qword_280251598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251598);
  }

  return result;
}

unint64_t sub_2682CC338()
{
  result = qword_2802515A0;
  if (!qword_2802515A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515A0);
  }

  return result;
}

unint64_t sub_2682CC390()
{
  result = qword_2802515A8;
  if (!qword_2802515A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515A8);
  }

  return result;
}

unint64_t sub_2682CC3E8()
{
  result = qword_2802515B0;
  if (!qword_2802515B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515B0);
  }

  return result;
}

unint64_t sub_2682CC440()
{
  result = qword_2802515B8;
  if (!qword_2802515B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515B8);
  }

  return result;
}

unint64_t sub_2682CC498()
{
  result = qword_2802515C0;
  if (!qword_2802515C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515C0);
  }

  return result;
}

unint64_t sub_2682CC4F0()
{
  result = qword_2802515C8;
  if (!qword_2802515C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802515C8);
  }

  return result;
}

uint64_t sub_2682CC544()
{
  OUTLINED_FUNCTION_24_4();
  v2 = sub_2683CB528();
  OUTLINED_FUNCTION_23(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2682BCF10(v0, v4);
}

uint64_t sub_2682CC5AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26817370C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2682CC5D8()
{
  OUTLINED_FUNCTION_36_2();
  v4 = OUTLINED_FUNCTION_82_2(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_9_0();
  v10(v9);
  return v0;
}

uint64_t sub_2682CC640()
{
  OUTLINED_FUNCTION_36_2();
  v4 = OUTLINED_FUNCTION_82_2(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_9_0();
  v10(v9);
  return v0;
}

unint64_t sub_2682CC6A8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    sub_268129504(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2682CC6F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_76(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_21_17()
{
  v1 = *(*(v0 - 128) + 24);
  *(v0 - 96) = 0;
  *(v0 - 88) = 1;
}

uint64_t OUTLINED_FUNCTION_30_11(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52_4()
{
  result = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_1()
{
  v2 = *(v0 - 104);

  return sub_2683CB838();
}

uint64_t OUTLINED_FUNCTION_72_2()
{
  result = *(v0 - 176);
  v2 = *(*(v0 - 184) + 8);
  v3 = *(v0 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_104_2(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256) + 1;
  *(v1 + 16) = v2;
  v5 = *(v3 - 208);
}

uint64_t OUTLINED_FUNCTION_115_1()
{
  v2 = *(v0 - 152);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_116_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_117_1()
{
  v2 = *(v0 - 96);

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_120_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_121_1()
{

  return sub_2683D0718();
}

void sub_2682CCDDC()
{
  OUTLINED_FUNCTION_30_0();
  v102 = v0;
  v103 = v1;
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v99 = v6;
  v100 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251670, &unk_2683E3DD0);
  v12 = OUTLINED_FUNCTION_1(v101);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v99 - v15;
  v17 = sub_2683CC748();
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v99 - v26;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v105 = v3;
  sub_2683CC9E8();
  sub_2683CC738();
  v28 = *(v20 + 8);
  v28(v27, v17);
  v29 = sub_2681E290C();
  switch(v29)
  {
    case 1:
    case 4:
    case 7:
      v30 = sub_2681E27F8(v29);
      v32 = v31;
      sub_26816E7C0();
      v33 = swift_allocError();
      *v34 = v30;
      *(v34 + 8) = v32;
      *(v34 + 16) = 1;
      *v16 = v33;
      v16[8] = 0;
      v35 = *MEMORY[0x277D5BC30];
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251678, &unk_2683E3DE0);
      OUTLINED_FUNCTION_1(v36);
      (*(v37 + 104))(v16, v35);
      v38 = v33;
      sub_2682CD484();
      sub_2683CBF38();
      sub_26812D9E0(v16, &qword_280251670, &unk_2683E3DD0);
      v39 = v33;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_25_8();
      sub_2682CDF4C();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v79 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v79);
      LOBYTE(v128) = 2;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189DA8(&v128, v80, v81, v82, v83, v84, v85, v86, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
      v87 = OUTLINED_FUNCTION_8_10();
      v88(v87);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v48 = &qword_28024E130;
      v49 = &qword_2683E3DF0;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_25_8();
      sub_2682CDCEC();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v50 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v50);
      LOBYTE(v128) = 3;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189E40(&v128, v51, v52, v53, v54, v55, v56, v57, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
      v58 = OUTLINED_FUNCTION_8_10();
      v59(v58);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v48 = &qword_28024E110;
      v49 = &qword_2683D6270;
      goto LABEL_10;
    case 5:
      OUTLINED_FUNCTION_25_8();
      sub_2682CE1AC();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v60 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v60);
      LOBYTE(v128) = 5;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189D10(&v128, v61, v62, v63, v64, v65, v66, v67, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
      v68 = OUTLINED_FUNCTION_8_10();
      v69(v68);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v48 = &qword_28024E150;
      v49 = &qword_2683D62A0;
      goto LABEL_10;
    case 6:
      v40 = v102;
      v41 = *(v102 + 120);
      v42 = *(v102 + 136);

      sub_2683CB588();
      v43 = sub_2683CB548();
      v45 = v44;
      (*(v99 + 8))(v11, v100);
      sub_268134034(v40 + 80, &v136);
      sub_26813C7E0(v40 + 144, &v141);
      sub_268134034(v40 + 192, &v147);
      v46 = v105;
      v152 = sub_2683CC9B8();
      v129 = &unk_2683E3E10;
      v130 = v41;
      v131 = sub_2682CE520;
      v132 = 0;
      v133 = v42;
      v134 = v43;
      v135 = v45;
      LOBYTE(v128) = 6;
      __swift_project_boxed_opaque_existential_1((v40 + 232), *(v40 + 256));

      v47 = sub_268189ED8(&v128);
      v47(v103, v46);

      v48 = &qword_28024E0F0;
      v49 = &qword_2683D6258;
      goto LABEL_10;
    case 8:
      sub_2683CC9E8();
      v70 = sub_2683CC738();
      v72 = v71;
      v28(v25, v17);
      sub_26812C6B8();
      v73 = swift_allocError();
      *v74 = v70;
      *(v74 + 8) = v72;
      *(v74 + 16) = 0;
      *(v74 + 24) = 0;
      *(v74 + 32) = 1;
      *v16 = v73;
      v16[8] = 0;
      v75 = *MEMORY[0x277D5BC30];
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251678, &unk_2683E3DE0);
      OUTLINED_FUNCTION_1(v76);
      (*(v77 + 104))(v16, v75);
      v78 = v73;
      sub_2682CD484();
      sub_2683CBF38();
      sub_26812D9E0(v16, &qword_280251670, &unk_2683E3DD0);
      v39 = v73;
LABEL_7:

      goto LABEL_11;
    default:
      OUTLINED_FUNCTION_25_8();
      sub_2682CDA78();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_12();
      v89 = OUTLINED_FUNCTION_35_10();
      OUTLINED_FUNCTION_23_8(v89);
      LOBYTE(v128) = 0;
      OUTLINED_FUNCTION_42_4();
      OUTLINED_FUNCTION_22_6();
      sub_268189F98(&v128, v90, v91, v92, v93, v94, v95, v96, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
      v97 = OUTLINED_FUNCTION_8_10();
      v98(v97);
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_31_4();
      v48 = &qword_28024E0D0;
      v49 = &qword_2683D6240;
LABEL_10:
      sub_26812D9E0(&v128, v48, v49);
LABEL_11:
      OUTLINED_FUNCTION_29_0();
      return;
  }
}

unint64_t sub_2682CD484()
{
  result = qword_280251680;
  if (!qword_280251680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280251670, &unk_2683E3DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251680);
  }

  return result;
}

BOOL sub_2682CD4E8(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 0;
  sub_26813A1A0(v3);
  return v1;
}

id sub_2682CD548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CC748();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v14 = sub_2683CC9C8();
  v15 = *v3;
  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(type metadata accessor for SimpleDisambiguationItem() + 28);
  v25[3] = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_0(v25);
  OUTLINED_FUNCTION_23_0(AssociatedTypeWitness);
  (*(v20 + 16))();
  sub_2683CC9E8();
  v21 = sub_2683CC728();
  LOBYTE(v19) = v22;
  (*(v8 + 8))(v13, v5);
  v23 = sub_2682D3714(v15, v25, v21, v19 & 1);

  __swift_destroy_boxed_opaque_existential_0(v25);
  return v23;
}

uint64_t sub_2682CD700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2682CD72C, 0, 0);
}

void sub_2682CD72C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v4 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9B8();
  sub_2683CF258();
  v6 = v5;

  v0[10] = v6;
  v8 = v1 + 16;
  v7 = *(v1 + 16);
  v16 = (*(v8 + 8) + 24);
  v17 = *v16 + **v16;
  v9 = (*v16)[1];
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26813A870;
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_2682CD8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_2682CD700(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2682CD9AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_2682CDA78()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v21 = sub_2683CB598();
  v3 = OUTLINED_FUNCTION_0_3(v21);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  sub_2681E5684(v0, v23);
  OUTLINED_FUNCTION_33_11();
  v11 = swift_allocObject();
  memcpy((v11 + 16), v23, 0x118uLL);
  OUTLINED_FUNCTION_69_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2682CF644;
  *(v12 + 24) = v11;
  OUTLINED_FUNCTION_69_0();
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_2683E3E38;
  *(v13 + 24) = v12;
  v14 = *__swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  v23[3] = type metadata accessor for AddTasksCATPatternsExecutor();
  v23[4] = &off_28790AE38;
  v23[0] = v14;
  sub_268134034(v23, v22);
  OUTLINED_FUNCTION_20_2();
  v15 = swift_allocObject();
  sub_268128148(v22, v15 + 16);

  __swift_destroy_boxed_opaque_existential_0(v23);
  v16 = v0[15];
  v17 = v0[16];

  sub_2683CB588();
  v18 = sub_2683CB548();
  v20 = v19;
  (*(v5 + 8))(v10, v21);
  *v2 = &unk_2878FB4F0;
  *(v2 + 8) = &unk_2683E3E48;
  *(v2 + 16) = v13;
  *(v2 + 24) = &unk_2683E3E58;
  *(v2 + 32) = v15;
  *(v2 + 40) = &unk_2683E3E68;
  *(v2 + 48) = v16;
  *(v2 + 56) = sub_2682CEBEC;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 120) = &unk_2683E3E78;
  *(v2 + 128) = v17;
  *(v2 + 136) = 1;
  *(v2 + 137) = v23[0];
  *(v2 + 140) = *(v23 + 3);
  *(v2 + 144) = sub_268377B24;
  *(v2 + 152) = 0;
  *(v2 + 160) = v18;
  *(v2 + 168) = v20;
  OUTLINED_FUNCTION_29_0();
}

void sub_2682CDCEC()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v5 = sub_2683CB598();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  v14 = OUTLINED_FUNCTION_25_17();
  OUTLINED_FUNCTION_34_12(v14, &off_28790AE38);
  OUTLINED_FUNCTION_20_2();
  v15 = swift_allocObject();
  sub_268128148(&v22, v15 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v23);
  v16 = *(v0 + 120);
  v17 = qword_28024C8A8;

  if (v17 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C870);

  sub_2683CB588();
  sub_2683CB548();
  v18 = OUTLINED_FUNCTION_19_8();
  v19(v18);
  *v4 = v12;
  v4[1] = &unk_2683E3E80;
  v4[2] = 0;
  v4[3] = &unk_2683E3E90;
  v4[4] = v15;
  v4[5] = &unk_2683E3EA0;
  v4[6] = v16;
  v4[7] = sub_2682CE688;
  v4[8] = 0;
  v4[9] = sub_2682CE70C;
  v4[10] = 0;
  v4[11] = v21;
  v4[12] = v2;
  v4[13] = v20;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_268377B3C;
  v4[19] = 0;
  v4[20] = v11;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_2682CDF4C()
{
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v5 = sub_2683CB598();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  v14 = OUTLINED_FUNCTION_25_17();
  OUTLINED_FUNCTION_34_12(v14, &off_28790AE38);
  OUTLINED_FUNCTION_20_2();
  v15 = swift_allocObject();
  sub_268128148(&v22, v15 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v23);
  v16 = *(v0 + 120);
  v17 = qword_28024C8B8;

  if (v17 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_21_7(&qword_28027C8B0);

  sub_2683CB588();
  sub_2683CB548();
  v18 = OUTLINED_FUNCTION_19_8();
  v19(v18);
  *v4 = v12;
  v4[1] = &unk_2683E3EB8;
  v4[2] = 0;
  v4[3] = &unk_2683E3EC8;
  v4[4] = v15;
  v4[5] = &unk_2683E3ED8;
  v4[6] = v16;
  v4[7] = sub_2682CEEA8;
  v4[8] = 0;
  v4[9] = sub_2682CEF14;
  v4[10] = 0;
  v4[11] = v21;
  v4[12] = v2;
  v4[13] = v20;
  OUTLINED_FUNCTION_19_10();
  v4[18] = sub_2683779DC;
  v4[19] = 0;
  v4[20] = v11;
  v4[21] = v1;
  OUTLINED_FUNCTION_29_0();
}

void sub_2682CE1AC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v22 = v6;
  v23 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  *(v12 + 32) = sub_2683CD158();
  *(v12 + 40) = v13;
  sub_2681E5684(v0, v25);
  OUTLINED_FUNCTION_33_11();
  v14 = swift_allocObject();
  memcpy((v14 + 16), v25, 0x118uLL);
  OUTLINED_FUNCTION_69_0();
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_2683E3F00;
  *(v15 + 24) = v14;
  v25[3] = OUTLINED_FUNCTION_25_17();
  v25[4] = &off_28790AE38;
  v25[0] = v14;
  sub_268134034(v25, v24);
  OUTLINED_FUNCTION_20_2();
  v16 = swift_allocObject();
  sub_268128148(v24, v16 + 16);

  __swift_destroy_boxed_opaque_existential_0(v25);
  sub_2681E5684(v1, v25);
  OUTLINED_FUNCTION_33_11();
  v17 = swift_allocObject();
  memcpy((v17 + 16), v25, 0x118uLL);
  v18 = *(v1 + 128);

  sub_2683CB588();
  v19 = sub_2683CB548();
  v21 = v20;
  (*(v22 + 8))(v11, v23);
  *v3 = v12;
  *(v3 + 8) = &unk_2683D61F8;
  *(v3 + 16) = v15;
  *(v3 + 24) = &unk_2683E3F18;
  *(v3 + 32) = v16;
  *(v3 + 40) = &unk_2683E3F28;
  *(v3 + 48) = v17;
  *(v3 + 56) = sub_268188C88;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683E3F38;
  *(v3 + 128) = v18;
  *(v3 + 136) = 2;
  *(v3 + 137) = v25[0];
  *(v3 + 140) = *(v25 + 3);
  *(v3 + 144) = sub_268377A1C;
  *(v3 + 152) = 0;
  *(v3 + 160) = v19;
  *(v3 + 168) = v21;
  OUTLINED_FUNCTION_29_0();
}