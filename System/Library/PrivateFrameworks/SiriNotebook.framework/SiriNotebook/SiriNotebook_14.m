uint64_t sub_268228310(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v8 = *v4;
  result = sub_2682228F8(*v4);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v7 - a2;
  if (__OFSUB__(0, a2 - v7))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_2682228F8(v8);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a3(result, 1);
  v12 = OUTLINED_FUNCTION_0_0();

  return a4(v12);
}

uint64_t sub_2682283CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2683CBC28();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_2683D00A8();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2683922FC(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_2683D00A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2682284B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_268129504(0, &qword_280253320, 0x277CD4228);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_2683D00A8();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2683922FC(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_2683D00A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2682285AC()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_18(v2);

  return sub_268226EBC(v4, v0);
}

void sub_268228634(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  sub_268226B58(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_268228644()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_18(v2);

  return sub_268226778(v4, v0);
}

void sub_2682286D4(void *a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:

    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_2682286FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2683D00A8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2683D01B8();
}

uint64_t sub_268228788(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_2683D00A8();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_268228838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2682288A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268228910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268228984()
{
  result = qword_28024FCE8;
  if (!qword_28024FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FCE8);
  }

  return result;
}

uint64_t sub_2682289D8(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_268228A20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_18(v5);

  return sub_268222E00(v7, v1, v2, v3);
}

uint64_t sub_268228AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268228B0C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_18();
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10_17(v3);

  return sub_268227C40(v5, v6, v7, v8);
}

uint64_t sub_268228BCC()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_1_7();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1_3(v11);
  *v12 = v13;
  v12[1] = sub_2681342AC;

  return sub_268227FC0(v4, v2, v0 + v8, v10, v5, v6);
}

uint64_t sub_268228CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, unint64_t)@<X6>, uint64_t *a8@<X8>)
{
  result = sub_268224C8C(*a1, *(a1 + 8), *a2, *(a2 + 8), a3, *a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    a8[1] = v11;
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620) - 8);
  OUTLINED_FUNCTION_3_18();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v8))
  {
    v9 = sub_2683CCB78();
    OUTLINED_FUNCTION_1(v9);
    (*(v10 + 8))(v0 + v4);
    v11 = *(v0 + v4 + *(v8 + 48));
    swift_unknownObjectRelease();
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_268228EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  OUTLINED_FUNCTION_23(v1);
  return sub_268223B00(*(v0 + 16), v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268228F5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_18(v5);

  return sub_268222E00(v7, v1, v2, v3);
}

uint64_t sub_268229000()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_18();
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10_17(v3);

  return sub_268227E90(v5, v6, v7, v8);
}

uint64_t objectdestroy_24Tm()
{
  OUTLINED_FUNCTION_39_7();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268229134()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_18();
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10_17(v3);

  return sub_268227E90(v5, v6, v7, v8);
}

id sub_2682291F0(id result, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }
  }

  return result;
}

_BYTE *_s13ReadingErrorsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2682292F4()
{
  result = qword_28024FD38;
  if (!qword_28024FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FD38);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_30(void *result)
{
  result[11] = sub_2681B86A4;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return sub_2683CBD08();
}

uint64_t OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21, uint64_t *a22)
{

  return sub_268129504(0, a21, a22);
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return swift_allocObject();
}

uint64_t sub_268229538@<X0>(uint64_t *a1@<X8>)
{
  sub_2683CD6F8();
  if (v14)
  {

    v2 = sub_2683CD688();
    v4 = v3;

    v5 = sub_2683CD668();
    v7 = v6;

    v8 = sub_2683CD698();

    if (v8)
    {
      v9 = sub_2683CD908();
      v11 = v10;
    }

    else
    {
      v11 = 0;
      v9 = 0;
    }

    v12 = sub_2683CD4E8();
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v7 = 0;
    v5 = 0;
    v4 = 0;
    v2 = 0;
    v12 = 0;
  }

  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v14;
  a1[7] = v12;
  return result;
}

uint64_t sub_268229654(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2682296A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26822971C()
{
  v3 = sub_2683CDB98();
  v4 = OUTLINED_FUNCTION_2_31(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - v23;
  if (*(v1 + 48) && sub_2683CD4F8())
  {
    sub_2683CDB88();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v0);
  }

  (*(v6 + 104))(v2, *MEMORY[0x277D5EE50], v0);
  OUTLINED_FUNCTION_4_28();
  v25 = *(v11 + 48);
  sub_26822A08C(v24, v16);
  sub_26822A08C(v2, &v16[v25]);
  OUTLINED_FUNCTION_2_6(v16);
  if (!v27)
  {
    sub_26822A08C(v16, v21);
    OUTLINED_FUNCTION_2_6(&v16[v25]);
    if (!v27)
    {
      (*(v6 + 32))(v10, &v16[v25], v0);
      sub_26822A0FC();
      v26 = sub_2683CFA58();
      v28 = *(v6 + 8);
      v28(v10, v0);
      sub_26812D9E0(v2, &qword_28024FD48, &qword_2683F6940);
      sub_26812D9E0(v24, &qword_28024FD48, &qword_2683F6940);
      v28(v21, v0);
      sub_26812D9E0(v16, &qword_28024FD48, &qword_2683F6940);
      return v26 & 1;
    }

    OUTLINED_FUNCTION_9_12(v2);
    OUTLINED_FUNCTION_9_12(v24);
    (*(v6 + 8))(v21, v0);
LABEL_13:
    sub_26812D9E0(v16, &qword_28024FD40, &unk_2683DE830);
    v26 = 0;
    return v26 & 1;
  }

  OUTLINED_FUNCTION_9_12(v2);
  OUTLINED_FUNCTION_9_12(v24);
  OUTLINED_FUNCTION_2_6(&v16[v25]);
  if (!v27)
  {
    goto LABEL_13;
  }

  sub_26812D9E0(v16, &qword_28024FD48, &qword_2683F6940);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_268229A90()
{
  v2 = sub_2683CDB98();
  v3 = OUTLINED_FUNCTION_2_31(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  v9 = OUTLINED_FUNCTION_1(v45);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  v22 = sub_268229F10();
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  result = sub_2683ABE58(v22);
  v25 = 0;
  v43 = v23 & 0xC000000000000001;
  v44 = result;
  v42 = v23 & 0xFFFFFFFFFFFFFF8;
  v41 = *MEMORY[0x277D5EE50];
  v39 = v23;
  v40 = (v5 + 104);
  v34 = (v5 + 32);
  v37 = v21;
  v38 = (v5 + 8);
  v26 = &qword_2683F6940;
  while (1)
  {
    v27 = v44 != v25;
    if (v44 == v25)
    {
      goto LABEL_24;
    }

    if (v43)
    {
      result = MEMORY[0x26D616C90](v25, v23);
    }

    else
    {
      if (v25 >= *(v42 + 16))
      {
        goto LABEL_27;
      }

      v28 = *(v23 + 8 * v25 + 32);
    }

    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (sub_2683CD4F8())
    {
      sub_2683CDB88();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v0);
    }

    (*v40)(v1, v41, v0);
    OUTLINED_FUNCTION_4_28();
    v29 = *(v45 + 48);
    sub_26822A08C(v21, v13);
    sub_26822A08C(v1, &v13[v29]);
    OUTLINED_FUNCTION_2_6(v13);
    if (v30)
    {

      sub_26812D9E0(v1, &qword_28024FD48, v26);
      sub_26812D9E0(v21, &qword_28024FD48, v26);
      OUTLINED_FUNCTION_2_6(&v13[v29]);
      if (v30)
      {
        sub_26812D9E0(v13, &qword_28024FD48, &qword_2683F6940);
LABEL_24:

        return v27;
      }

      goto LABEL_19;
    }

    sub_26822A08C(v13, v18);
    OUTLINED_FUNCTION_2_6(&v13[v29]);
    if (v30)
    {

      sub_26812D9E0(v1, &qword_28024FD48, v26);
      sub_26812D9E0(v21, &qword_28024FD48, v26);
      (*v38)(v18, v0);
LABEL_19:
      result = sub_26812D9E0(v13, &qword_28024FD40, &unk_2683DE830);
      v23 = v39;
      goto LABEL_21;
    }

    v31 = v26;
    v32 = v35;
    (*v34)(v35, &v13[v29], v0);
    sub_26822A0FC();
    v36 = sub_2683CFA58();

    v33 = *v38;
    (*v38)(v32, v0);
    sub_26812D9E0(v1, &qword_28024FD48, v31);
    sub_26812D9E0(v37, &qword_28024FD48, v31);
    v33(v18, v0);
    v26 = v31;
    v21 = v37;
    result = sub_26812D9E0(v13, &qword_28024FD48, v26);
    v23 = v39;
    if (v36)
    {
      goto LABEL_24;
    }

LABEL_21:
    ++v25;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_268229F10()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return v1;
  }

  v2 = sub_2683CD658();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_getKeyPath();
  v1 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  result = sub_2683ABE58(v3);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return v1;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v6;
    if (v9)
    {
      MEMORY[0x26D616770](result);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v10;
      v6 = v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26822A08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26822A0FC()
{
  result = qword_28024FD50;
  if (!qword_28024FD50)
  {
    sub_2683CDB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FD50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t sub_26822A1A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_268129B00;

  return (v9)(0, a1, a2);
}

uint64_t sub_26822A2CC@<X0>(void (*a1)(void *__return_ptr, char *, uint64_t, uint64_t)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a3;
  v3 = sub_2683CCC18();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2683CC748();
  v12 = OUTLINED_FUNCTION_0_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  sub_2683CC9E8();
  v19 = sub_2683CC738();
  v21 = v20;
  (*(v14 + 8))(v18, v11);
  sub_2683CCB88();
  v24(v26, v10, v19, v21);

  (*(v6 + 8))(v10, v3);
  sub_26813954C();
  return sub_2681433DC(v26, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_26822A4A8()
{
  OUTLINED_FUNCTION_14();
  v0[27] = v1;
  v0[28] = v2;
  v0[25] = v3;
  v0[26] = v4;
  v0[24] = v5;
  v6 = sub_2683CCBA8();
  v0[29] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[30] = v7;
  v9 = *(v8 + 64);
  v0[31] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  v0[32] = OUTLINED_FUNCTION_15_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v0[33] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[34] = v14;
  v16 = *(v15 + 64);
  v0[35] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CCC18();
  v0[36] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v0[37] = v18;
  v20 = *(v19 + 64);
  v0[38] = OUTLINED_FUNCTION_15_1();
  v21 = sub_2683CC748();
  v0[39] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v0[40] = v22;
  v24 = *(v23 + 64);
  v0[41] = OUTLINED_FUNCTION_55();
  v0[42] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_26822A67C()
{
  v125 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 264);
  v122 = *(v0 + 224);
  v123 = *(v0 + 288);
  v121 = *(v0 + 216);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  sub_2683CC9E8();
  v9 = sub_2683CC738();
  v11 = v10;
  v120 = *(v3 + 8);
  v120(v1, v2);
  sub_2683CCB88();
  v121(v4, v9, v11);

  (*(v5 + 8))(v4, v123);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v12 = *(v0 + 88);
  if (v12 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v12 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);
    v16 = *(v0 + 200);
    v17 = sub_2683CF7E8();
    __swift_project_value_buffer(v17, qword_28027C958);
    v18 = *(v14 + 16);
    OUTLINED_FUNCTION_21();
    v19();
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE78();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 304);
      v23 = *(v0 + 288);
      v25 = *(v0 + 240);
      v24 = *(v0 + 248);
      v26 = *(v0 + 232);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v124[0] = v28;
      *v27 = 136315138;
      sub_2683CCB88();
      v29 = sub_2683CFAD8();
      v31 = v30;
      (*(v25 + 8))(v24, v26);
      v32 = sub_2681610A0(v29, v31, v124);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2680EB000, v20, v21, "[CreateNote.NeedsConfirmation parseResponse] Did not get ConfirmationTask from parse: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v34 = *(v0 + 240);
      v33 = *(v0 + 248);
      v35 = *(v0 + 232);

      (*(v34 + 8))(v33, v35);
    }

    sub_26812C6B8();
    swift_allocError();
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v37 = 4;
    goto LABEL_11;
  }

  sub_2681433DC(v0 + 96, &qword_28024D460, &qword_2683D5050);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v47 = *(v0 + 272);
  v46 = *(v0 + 280);
  v48 = *(v0 + 264);
  v49 = *(v0 + 208);
  v50 = sub_2683CF7E8();
  __swift_project_value_buffer(v50, qword_28027C958);
  v51 = *(v47 + 16);
  OUTLINED_FUNCTION_21();
  v52();
  v53 = sub_2683CF7C8();
  v54 = sub_2683CFE98();
  v55 = os_log_type_enabled(v53, v54);
  v57 = *(v0 + 272);
  v56 = *(v0 + 280);
  v58 = *(v0 + 264);
  if (v55)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    v61 = sub_2683CC9C8();
    (*(v57 + 8))(v56, v58);
    *(v59 + 4) = v61;
    *v60 = v61;
    _os_log_impl(&dword_2680EB000, v53, v54, "[CreateNote.NeedsConfirmation parseResponse] Original Intent: %@", v59, 0xCu);
    sub_2681433DC(v60, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v57 + 8))(v56, v58);
  }

  v62 = *(v0 + 328);
  v63 = *(v0 + 312);
  v64 = *(v0 + 264);
  v65 = *(v0 + 208);
  sub_2683CC9E8();
  v66 = sub_2683CC738();
  v68 = v67;
  v120(v62, v63);

  OUTLINED_FUNCTION_0_0();
  v69 = sub_2683B48FC();
  if (v69 == 3)
  {
    sub_26812C6B8();
    swift_allocError();
    *v36 = v66;
    *(v36 + 8) = v68;
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v37 = 1;
LABEL_11:
    *(v36 + 32) = v37;
    swift_willThrow();
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
    v39 = *(v0 + 328);
    v38 = *(v0 + 336);
    v40 = *(v0 + 304);
    v41 = *(v0 + 280);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);

    OUTLINED_FUNCTION_40();
    goto LABEL_12;
  }

  v70 = v69;
  v71 = *(v0 + 264);
  v72 = *(v0 + 208);

  v73 = sub_2683CC9C8();
  if (v12)
  {
    v74 = sub_2682EFFA4(v70);

    v75 = v74;
    v76 = sub_2683CF7C8();
    v77 = sub_2683CFE98();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v78 = 136315394;
      if (v70)
      {
        if (v70 == 1)
        {
          v79 = 0x746E65746E6F63;
        }

        else
        {
          v79 = 0x6D614E70756F7267;
        }

        if (v70 == 1)
        {
          v70 = 0xE700000000000000;
        }

        else
        {
          v70 = 0xE900000000000065;
        }
      }

      else
      {
        v79 = OUTLINED_FUNCTION_40_7();
      }

      v92 = sub_2681610A0(v79, v70, v124);

      *(v78 + 4) = v92;
      *(v78 + 12) = 2080;
      v93 = v75;
      v94 = [v93 description];
      v95 = sub_2683CFA78();
      v97 = v96;

      v98 = sub_2681610A0(v95, v97, v124);

      *(v78 + 14) = v98;
      OUTLINED_FUNCTION_45_3(&dword_2680EB000, v99, v100, "[CreateNote.NeedsConfirmation parseResponse] Rejected %s. Updated intent: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v84 = MEMORY[0x277D5BED0];
    }

    else
    {

      v84 = MEMORY[0x277D5BED0];
    }
  }

  else
  {
    v80 = *(v0 + 264);
    v81 = *(v0 + 208);
    v82 = sub_2683CC9D8();
    v83 = [v82 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    v85 = sub_2682EFEFC(v70, (v0 + 160));
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));

    v86 = v85;
    v87 = sub_2683CF7C8();
    v88 = sub_2683CFE98();

    if (os_log_type_enabled(v87, v88))
    {
      v90 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v90 = 136315394;
      if (v70)
      {
        if (v70 == 1)
        {
          v91 = 0x746E65746E6F63;
        }

        else
        {
          v91 = 0x6D614E70756F7267;
        }

        if (v70 == 1)
        {
          v70 = 0xE700000000000000;
        }

        else
        {
          v70 = 0xE900000000000065;
        }
      }

      else
      {
        v91 = OUTLINED_FUNCTION_40_7();
      }

      v101 = sub_2681610A0(v91, v70, v124);

      *(v90 + 4) = v101;
      *(v90 + 12) = 2080;
      v102 = v86;
      v103 = [v102 description];
      v104 = sub_2683CFA78();
      v106 = v105;

      v107 = sub_2681610A0(v104, v106, v124);

      *(v90 + 14) = v107;
      OUTLINED_FUNCTION_45_3(&dword_2680EB000, v108, v109, "[CreateNote.NeedsConfirmation parseResponse] Confirmed %s. Updated intent: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v84 = MEMORY[0x277D5BED8];
    }

    else
    {

      v84 = MEMORY[0x277D5BED8];
    }
  }

  v110 = *(v0 + 328);
  v111 = *(v0 + 336);
  v112 = *(v0 + 304);
  v113 = *(v0 + 280);
  v114 = *(v0 + 248);
  v115 = *(v0 + 256);
  v116 = *(v0 + 192);
  v117 = *v84;
  v118 = sub_2683CC758();
  OUTLINED_FUNCTION_1(v118);
  (*(v119 + 104))(v115, v117, v118);
  __swift_storeEnumTagSinglePayload(v115, 0, 1, v118);
  sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  sub_2683CC8D8();
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();
LABEL_12:

  return v44();
}

uint64_t sub_26822B080()
{
  OUTLINED_FUNCTION_14();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = type metadata accessor for Snippet();
  v0[34] = v8;
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  v0[35] = OUTLINED_FUNCTION_55();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v11 = sub_2683CC9A8();
  v0[39] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v0[40] = v12;
  v14 = *(v13 + 64);
  v0[41] = OUTLINED_FUNCTION_15_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v0[42] = OUTLINED_FUNCTION_15_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  v0[43] = OUTLINED_FUNCTION_15_1();
  v21 = sub_2683CC138();
  v0[44] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v0[45] = v22;
  v24 = *(v23 + 64);
  v0[46] = OUTLINED_FUNCTION_55();
  v0[47] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v25);
  v27 = *(v26 + 64);
  v0[48] = OUTLINED_FUNCTION_15_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v28);
  v0[49] = v29;
  v0[50] = *(v30 + 64);
  v0[51] = OUTLINED_FUNCTION_55();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v31 = sub_2683CC748();
  v0[59] = v31;
  OUTLINED_FUNCTION_3_1(v31);
  v0[60] = v32;
  v34 = *(v33 + 64);
  v0[61] = OUTLINED_FUNCTION_15_1();
  v35 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_26822B350()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_0_0();
  v8 = sub_2683B48FC();
  *(v0 + 560) = v8;
  if (v8 == 3)
  {
    sub_26812C6B8();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v7;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    swift_willThrow();
    v10 = *(v0 + 488);
    v12 = *(v0 + 456);
    v11 = *(v0 + 464);
    v14 = *(v0 + 440);
    v13 = *(v0 + 448);
    v15 = *(v0 + 424);
    v16 = *(v0 + 432);
    v18 = *(v0 + 408);
    v17 = *(v0 + 416);
    v19 = *(v0 + 384);
    v32 = *(v0 + 376);
    v33 = *(v0 + 368);
    v34 = *(v0 + 344);
    v35 = *(v0 + 336);
    v36 = *(v0 + 328);
    v37 = *(v0 + 304);
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 280);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();

    __asm { BRAA            X1, X16 }
  }

  v22 = swift_task_alloc();
  *(v0 + 496) = v22;
  *v22 = v0;
  v22[1] = sub_26822B5BC;
  v23 = *(v0 + 256);
  v24 = *(v0 + 264);
  v25 = *(v0 + 240);
  v26 = *(v0 + 248);
  OUTLINED_FUNCTION_39_4(*(v0 + 224));
  OUTLINED_FUNCTION_48_3();

  return sub_26822C92C(v27, v28, v29);
}

uint64_t sub_26822B5BC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 496);
  *v4 = *v1;
  v3[63] = v7;

  if (v0)
  {
    v8 = v3[61];
    v10 = v3[57];
    v9 = v3[58];
    v12 = v3[55];
    v11 = v3[56];
    v14 = v3[53];
    v13 = v3[54];
    v15 = v3[51];
    v16 = v3[52];
    v26 = v3[48];
    v27 = v3[47];
    v28 = v3[46];
    v29 = v3[43];
    v30 = v3[42];
    v31 = v3[41];
    v32 = v3[38];
    v33 = v3[37];
    v18 = v3 + 35;
    v17 = v3[35];
    v34 = v18[1];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_48_3();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26822B7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v25 = *(v24 + 504);
  v26 = *(v24 + 560);
  v27 = *(v24 + 456);
  v29 = *(v24 + 376);
  v28 = *(v24 + 384);
  v30 = *(v24 + 336);
  v31 = *(v24 + 344);
  v32 = *(v24 + 272);
  __swift_storeEnumTagSinglePayload(*(v24 + 464), 1, 1, v32);
  *v27 = 1541;
  swift_storeEnumTagMultiPayload();
  v33 = OUTLINED_FUNCTION_25_14();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  *(v24 + 16) = v26;
  *(v24 + 40) = &type metadata for CreateNote.Parameter;
  *(v24 + 48) = &off_28790DD70;
  sub_2681686A4((v24 + 16));
  __swift_destroy_boxed_opaque_existential_0((v24 + 16));
  v36 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v36);
  sub_2683CC118();
  sub_2683CED08();
  v37 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v37, v38, 1, v39);
  v40 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v41 = swift_allocObject();
  *(v24 + 512) = v41;
  *(v41 + 16) = xmmword_2683D2250;
  *(v41 + 32) = v25;
  v42 = v25;
  v134 = v41;
  if (sub_2683ABE58(v41))
  {
    sub_2683ABE60(0, (v41 & 0xC000000000000001) == 0, v41);
    if ((v41 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x26D616C90](0, v41);
    }

    else
    {
      v43 = *(v41 + 32);
    }

    v44 = v43;
    v45 = [v43 catId];

    v130 = sub_2683CFA78();
    v133 = v46;
  }

  else
  {
    v130 = 0;
    v133 = 0;
  }

  v47 = *(v24 + 464);
  v129 = v47;
  v49 = *(v24 + 440);
  v48 = *(v24 + 448);
  v51 = *(v24 + 392);
  v50 = *(v24 + 400);
  v124 = *(v24 + 376);
  v125 = *(v24 + 384);
  v52 = *(v24 + 360);
  v122 = *(v24 + 368);
  v123 = *(v24 + 352);
  v126 = *(v24 + 344);
  v127 = *(v24 + 336);
  v128 = *(v24 + 328);
  v131 = *(v24 + 272);
  v132 = *(v24 + 432);
  v53 = *(v24 + 248);
  sub_2681340E8(*(v24 + 456), v48, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v47, v49, &qword_28024E770, &qword_2683D80D0);
  v54 = *(v51 + 80);
  v55 = (v54 + 24) & ~v54;
  v56 = (v50 + v54 + v55) & ~v54;
  v57 = swift_allocObject();
  *(v24 + 520) = v57;
  *(v57 + 16) = v53;
  sub_2681430AC(v48, v57 + v55);
  sub_2681430AC(v49, v57 + v56);
  (*(v52 + 16))(v122, v124, v123);
  v58 = swift_task_alloc();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  *(v58 + 40) = v130;
  *(v58 + 48) = v133;
  *(v58 + 56) = v125;
  *(v58 + 64) = 257;
  *(v58 + 72) = sub_26814311C;
  *(v58 + 80) = v57;
  *(v58 + 88) = 0;
  *(v58 + 96) = v126;
  *(v58 + 104) = 2;
  *(v58 + 112) = v127;

  sub_2683CC8E8();

  sub_2681340E8(v129, v132, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v132, 1, v131) == 1)
  {
    v59 = (v24 + 432);
  }

  else
  {
    v60 = *(v24 + 456);
    v61 = *(v24 + 424);
    v62 = *(v24 + 272);
    sub_26814320C(*(v24 + 432), *(v24 + 304));
    sub_2681340E8(v60, v61, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v61, 1, v62) != 1)
    {
      v91 = *(v24 + 296);
      v92 = *(v24 + 304);
      v93 = *(v24 + 272);
      sub_26814320C(*(v24 + 424), v91);
      *(v24 + 160) = v93;
      v94 = sub_268143270();
      *(v24 + 168) = v94;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 136));
      sub_2681432C8(v92, boxed_opaque_existential_0);
      *(v24 + 200) = v93;
      *(v24 + 208) = v94;
      v96 = __swift_allocate_boxed_opaque_existential_0((v24 + 176));
      sub_2681432C8(v91, v96);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      *(v24 + 528) = v97;
      *v97 = v98;
      v97[1] = sub_26822BEB8;
      v99 = *(v24 + 328);
      OUTLINED_FUNCTION_34_9();
      OUTLINED_FUNCTION_24_3();

      return v105(v100, v101, v102, v103, v104, v105, v106, v107, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, a22, a23, a24);
    }

    v59 = (v24 + 424);
    sub_26814332C(*(v24 + 304));
  }

  v63 = *v59;
  v64 = *(v24 + 464);
  v65 = *(v24 + 416);
  v66 = *(v24 + 272);
  sub_2681433DC(v63, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v64, v65, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v66);
  v68 = *(v24 + 416);
  v69 = *(v24 + 272);
  if (EnumTagSinglePayload == 1)
  {
    v70 = *(v24 + 456);
    v71 = *(v24 + 408);
    sub_2681433DC(v68, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v70, v71, &qword_28024E770, &qword_2683D80D0);
    v72 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v72, v73, v69) == 1)
    {
      sub_2681433DC(*(v24 + 408), &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      *(v24 + 552) = v74;
      *v74 = v75;
      v74[1] = sub_26822C69C;
      v76 = *(v24 + 328);
      OUTLINED_FUNCTION_34_9();
      OUTLINED_FUNCTION_24_3();

      return v80(v77, v78, v79, v80, v81, v82, v83, v84, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, a22, a23, a24);
    }

    v108 = *(v24 + 272);
    v109 = *(v24 + 280);
    sub_26814320C(*(v24 + 408), v109);
    *(v24 + 80) = v108;
    *(v24 + 88) = sub_268143270();
    v110 = __swift_allocate_boxed_opaque_existential_0((v24 + 56));
    sub_2681432C8(v109, v110);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    *(v24 + 544) = v111;
    *v111 = v112;
    v111[1] = sub_26822C400;
    v113 = *(v24 + 328);
    OUTLINED_FUNCTION_34_9();
  }

  else
  {
    v86 = *(v24 + 288);
    sub_26814320C(v68, v86);
    *(v24 + 120) = v69;
    *(v24 + 128) = sub_268143270();
    v87 = __swift_allocate_boxed_opaque_existential_0((v24 + 96));
    sub_2681432C8(v86, v87);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    *(v24 + 536) = v88;
    *v88 = v89;
    v88[1] = sub_26822C164;
    v90 = *(v24 + 328);
    OUTLINED_FUNCTION_34_9();
  }

  OUTLINED_FUNCTION_24_3();

  return v118(v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, a22, a23, a24);
}

uint64_t sub_26822BEB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26822BFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = v24[65];
  v28 = v24[37];
  v29 = v24[38];

  sub_26814332C(v28);
  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_1_36();
  v31(v30);
  v32 = OUTLINED_FUNCTION_17_16();
  v33(v32);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v34, v35, v36);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v37, v38, v39);
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v29, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C164()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26822C264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = *(v24 + 520);
  v28 = *(v24 + 288);

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_1_36();
  v30(v29);
  v31 = OUTLINED_FUNCTION_17_16();
  v32(v31);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v36, v37, v38);
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C400()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26822C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = *(v24 + 520);
  v28 = *(v24 + 280);

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_1_36();
  v30(v29);
  v31 = OUTLINED_FUNCTION_17_16();
  v32(v31);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v36, v37, v38);
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C69C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 552);
  v3 = *(v1 + 512);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26822C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v28 = *(v25 + 520);

  v29 = OUTLINED_FUNCTION_1_36();
  v30(v29);
  v31 = OUTLINED_FUNCTION_17_16();
  v32(v31);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v36, v37, v38);
  sub_2681433DC(v26, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v27, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C92C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 280) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26822C9E4, 0, 0);
}

uint64_t sub_26822C9E4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 160);
  if (*(v0 + 280))
  {
    if (*(v0 + 280) == 1)
    {
      v2 = sub_2681DF490(v1);
      *(v0 + 224) = v2;
      v3 = v2;
      *(v0 + 40) = sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
      *(v0 + 16) = v3;
      sub_26813CC6C(v0 + 16, v0 + 48);
      sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
      v4 = v3;
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 152);
        *(v0 + 232) = v5;
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        sub_26813CCC8(v5);
        if (v6)
        {
          v7 = *(v0 + 184);
          sub_2683CFB38();

          v8 = 0;
        }

        else
        {
          v8 = 1;
        }

        v25 = *(v0 + 184);
        v26 = sub_2683CF168();
        __swift_storeEnumTagSinglePayload(v25, v8, 1, v26);
        v27 = swift_task_alloc();
        *(v0 + 240) = v27;
        *v27 = v0;
        v27[1] = sub_26822CECC;
        v28 = *(v0 + 168);
        OUTLINED_FUNCTION_39_4(*(v0 + 184));

        return sub_26812AAD0();
      }

      else
      {
        sub_26822D394();
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        OUTLINED_FUNCTION_33_9();

        OUTLINED_FUNCTION_40();

        return v17();
      }
    }

    else
    {
      *(v0 + 256) = sub_2681DF4C8(v1);
      v18 = *(v0 + 176);
      sub_2683CFEA8();
      sub_2683CF168();
      v19 = OUTLINED_FUNCTION_25_14();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      v23 = swift_task_alloc();
      *(v0 + 264) = v23;
      *v23 = v0;
      v23[1] = sub_26822D07C;
      v24 = *(v0 + 168);
      OUTLINED_FUNCTION_39_4(*(v0 + 176));

      return sub_26812ADF8();
    }
  }

  else
  {
    *(v0 + 200) = sub_2681DF4C8(v1);
    v9 = *(v0 + 192);
    sub_2683CFEA8();
    sub_2683CF168();
    v10 = OUTLINED_FUNCTION_25_14();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    v14[1] = sub_26822CD20;
    v15 = *(v0 + 168);
    OUTLINED_FUNCTION_39_4(*(v0 + 192));

    return sub_26812AFF4();
  }
}

uint64_t sub_26822CD20()
{
  OUTLINED_FUNCTION_7();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[10] = v1;
  v3[11] = v5;
  v3[12] = v0;
  OUTLINED_FUNCTION_24_11();
  v7 = *(v6 + 208);
  *v8 = *v1;
  *(v9 + 216) = v0;

  OUTLINED_FUNCTION_24_11();
  sub_2681433DC(*(v10 + 192), &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26822CE54()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_33_9();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_26822CECC()
{
  OUTLINED_FUNCTION_7();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[13] = v1;
  v3[14] = v5;
  v3[15] = v0;
  OUTLINED_FUNCTION_24_11();
  v7 = *(v6 + 240);
  *v8 = *v1;
  *(v9 + 248) = v0;

  OUTLINED_FUNCTION_24_11();
  sub_2681433DC(*(v10 + 184), &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26822D000()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 232);

  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_33_9();

  v3 = OUTLINED_FUNCTION_37_0();

  return v4(v3);
}

uint64_t sub_26822D07C()
{
  OUTLINED_FUNCTION_7();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[16] = v1;
  v3[17] = v5;
  v3[18] = v0;
  OUTLINED_FUNCTION_24_11();
  v7 = *(v6 + 264);
  *v8 = *v1;
  *(v9 + 272) = v0;

  OUTLINED_FUNCTION_24_11();
  sub_2681433DC(*(v10 + 176), &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26822D1B0()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_33_9();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_26822D228()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26822D2A0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 232);

  v2 = *(v0 + 248);
  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26822D31C()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 272);
  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26822D394()
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C958);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2680EB000, v1, v2, "[CreateNote NeedsConfirmationStrategy] Item to confirm is an INImageNoteContent and is not supported", v3, 2u);
    MEMORY[0x26D617A40](v3, -1, -1);
  }

  sub_26813CD2C();

  return swift_allocError();
}

uint64_t sub_26822D49C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2681342AC;

  return sub_26822A4A8();
}

uint64_t sub_26822D560()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_268133EC8;

  return sub_26822B080();
}

unint64_t sub_26822D63C()
{
  result = qword_28024FD58;
  if (!qword_28024FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FD58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_36()
{
  v15 = v0[63];
  v16 = v0[61];
  v2 = v0[57];
  v3 = v0[58];
  v17 = v0[56];
  v18 = v0[55];
  v19 = v0[54];
  v20 = v0[53];
  v21 = v0[52];
  v22 = v0[51];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  v11 = v0[39];
  v12 = v0[40];
  v23 = v0[46];
  v24 = v0[38];
  v25 = v0[37];
  v26 = v0[36];
  *(v1 - 80) = v0[35];
  v13 = *(v12 + 8);
  return v9;
}

uint64_t OUTLINED_FUNCTION_33_9()
{
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
}

void OUTLINED_FUNCTION_45_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_26822D774(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_26822D794, 0, 0);
}

uint64_t sub_26822D794()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v2 = v1[2];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_26822D838;

  return sub_2681DDBD0();
}

uint64_t sub_26822D838()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_26822DA14;
  }

  else
  {
    v7 = sub_26822D93C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26822D93C()
{
  v1 = v0[4];
  v2 = v0[5];

  sub_2683CC868();
  v3 = sub_2683CB948();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[3] = sub_2683CB938();
  sub_2683CC3D8();

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_26822DA14()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  sub_2683CC868();
  v4 = sub_2683CB948();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[2] = sub_2683CB938();
  sub_2683CC3D8();

  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_26822DB00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26822DB20, 0, 0);
}

uint64_t sub_26822DB20()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((v0[3] + 24), *(v0[3] + 48));
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[4] = v1;
  *v1 = v2;
  v1[1] = sub_26822DF9C;
  v3 = v0[2];

  return sub_2681DE84C();
}

uint64_t sub_26822DBC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26822DBE0, 0, 0);
}

uint64_t sub_26822DBE0()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((v0[3] + 24), *(v0[3] + 48));
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[4] = v1;
  *v1 = v2;
  v1[1] = sub_268188BA8;
  v3 = v0[2];

  return sub_2681DECA4();
}

uint64_t sub_26822DC80()
{
  type metadata accessor for UndoAndSendOutputFlow();
  sub_26822DE38();
  return sub_2683CBF48();
}

uint64_t sub_26822DCDC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26822DD64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268133EC8;

  return sub_26822D774(a1);
}

uint64_t sub_26822DE00()
{
  type metadata accessor for UndoAndSendOutputFlow();

  return sub_2683CBF88();
}

unint64_t sub_26822DE38()
{
  result = qword_28024E378;
  if (!qword_28024E378)
  {
    type metadata accessor for UndoAndSendOutputFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E378);
  }

  return result;
}

uint64_t sub_26822DE8C()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_29(v1);

  return sub_26822DBC0(v3, v4);
}

uint64_t sub_26822DF14()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_29(v1);

  return sub_26822DB00(v3, v4);
}

uint64_t type metadata accessor for SetTaskAttributeIntentWrapper()
{
  result = qword_28024FD60;
  if (!qword_28024FD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26822E028()
{
  result = sub_26812EB34(319, &qword_28024FD70);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024CDA0);
    if (v2 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D380);
      if (v3 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024D388);
        if (v4 <= 0x3F)
        {
          result = sub_26812EB34(319, &qword_28024F9E8);
          if (v5 <= 0x3F)
          {
            result = sub_2683CB668();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26822E15C()
{
  v1 = v0;
  v2 = type metadata accessor for IntentTriggerModel(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  v8 = OUTLINED_FUNCTION_23(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = OUTLINED_FUNCTION_21_14(v1, v1[3]);
  sub_2681C326C(v13, 0, v6);
  sub_2681340E8(v6 + *(v3 + 28), v12, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v6, v14);
  v15 = type metadata accessor for LocationQuery(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    sub_26812D9E0(v12, &qword_28024EA58, &unk_2683DEB50);
    return 2;
  }

  else
  {
    v16 = v12[*(v15 + 24)];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v12, v17);
  }

  return v16;
}

uint64_t sub_26822E2C0(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 272) = a1;
  v3 = sub_2683CEBD8();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  v5 = *(v4 + 64);
  *(v2 + 120) = OUTLINED_FUNCTION_15_1();
  Type = type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_23(Type);
  v8 = *(v7 + 64);
  *(v2 + 128) = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  *(v2 + 136) = OUTLINED_FUNCTION_15_1();
  v12 = type metadata accessor for LocationQuery(0);
  *(v2 + 144) = v12;
  OUTLINED_FUNCTION_23(v12);
  v14 = *(v13 + 64);
  *(v2 + 152) = OUTLINED_FUNCTION_15_1();
  v15 = type metadata accessor for IntentTriggerModel(0);
  *(v2 + 160) = v15;
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26822E43C, 0, 0);
}

uint64_t sub_26822EB58()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v6 + 232) = v5;

  return MEMORY[0x2822009F8](sub_26822EC70, 0, 0);
}

uint64_t sub_26822F158(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 256) = v1;

  if (v1)
  {
    v8 = sub_26822F57C;
  }

  else
  {
    *(v4 + 264) = a1;
    v8 = sub_26822F278;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26822F57C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v14 = *(v0 + 168);
  v15 = *(v0 + 136);
  v16 = *(v0 + 128);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 104);

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_1_37();
  sub_26822F8E8(v6, v10);

  v11 = *(v0 + 8);
  v12 = *(v0 + 256);

  return v11();
}

uint64_t sub_26822F690(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26822F724;

  return sub_26822E2C0(a1);
}

uint64_t sub_26822F724(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_26822F820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26822F884(uint64_t a1, uint64_t a2)
{
  Type = type metadata accessor for LocationQuery.QueryType(0);
  (*(*(Type - 8) + 16))(a2, a1, Type);
  return a2;
}

uint64_t sub_26822F8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id OUTLINED_FUNCTION_3_30()
{

  return sub_2683882E8(v0, v1, v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t a1)
{
  *(a1 + 8) = sub_26822F158;
  v3 = *(v2 + 120);
  return v1 + 120;
}

void *OUTLINED_FUNCTION_5_27()
{
  v1 = *(v0 + 96);
  sub_268128148((v0 + 56), v0 + 16);
  v2 = *(v0 + 48);
  return __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
}

id OUTLINED_FUNCTION_6_25()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];

  return sub_26821AD1C();
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1)
{
  v3 = v1[30];
  v5 = v1[25];
  v4 = v1[26];
  v6 = v1[21];
  v9 = v1[20];
  v7 = v1[12];

  return sub_2681BA404(a1);
}

id OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268176D1C(v6, (v5 + 160), a3, v4, v3);
}

void OUTLINED_FUNCTION_11_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_17()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3])[2];
}

void OUTLINED_FUNCTION_15_19()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_16_23()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_268196F0C();
}

uint64_t OUTLINED_FUNCTION_19_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_2681610A0(v6, v7, va);
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_14(void *a1, uint64_t a2)
{
  v2 = __swift_project_boxed_opaque_existential_1(a1, a2)[2];
}

void OUTLINED_FUNCTION_22_13()
{
  if (!*(v0 + 8))
  {
    v1 = *v0;
  }
}

uint64_t OUTLINED_FUNCTION_23_16()
{
  result = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v5 = *(v0[14] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_15()
{
  v2 = v0[18];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[19];

  return sub_26822F820(v3, v6);
}

void *OUTLINED_FUNCTION_27_10()
{
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v2 = result[1];
  return result;
}

SiriNotebook::Common::Number::DefinedValue_optional __swiftcall Common.Number.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  result.value = OUTLINED_FUNCTION_89_0();
  v4 = 15;
  if (v2 < 0xF)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_26822FDA4(void *a1@<X8>)
{
  Common.Number.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriNotebook::Common::Number::Operator_optional __swiftcall Common.Number.Operator.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_949();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Common.Number.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);

  return sub_2683CE228();
}

uint64_t (*Common.Number.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.Number.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.Number.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD88, &qword_2683DEB68);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.Number.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Number(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Number.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Number(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Number.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Number(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.Number.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Number(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268230540()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 24);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Number(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Number.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Number(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.Number.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Number(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268230938()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 28);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Number(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Number.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Number(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.Number.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Number(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268230D30()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 32);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Number(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Number.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Number(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBD0);
}

uint64_t (*Common.Number.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Number(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268231128()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 36);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDF8, &qword_2683DEBD8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Number(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Number.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDF8, &qword_2683DEBD8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Number(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.Number.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Number(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268231520()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 40);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Number(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Number.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void Common.SortOrder.DefinedValue.rawValue.getter()
{
  *v0;
  *v0;
  OUTLINED_FUNCTION_35_7();
}

void sub_2682317F8(void *a1@<X8>)
{
  Common.SortOrder.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.SortOrder.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);

  return sub_2683CE228();
}

uint64_t (*Common.SortOrder.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.SortOrder.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE20, &qword_2683DEC00);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_268231AB0()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 20);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.SortOrder.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.SortOrder.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortOrder(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortOrder.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.SortOrder.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortOrder(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortOrder.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.SortOrder.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortOrder(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortOrder.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEC10);
}

uint64_t (*Common.SortOrder.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortOrder(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE38, &qword_2683DEC18);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortOrder.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE38, &qword_2683DEC18);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.SortOrder.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortOrder(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortOrder(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortOrder.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.address.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);

  return sub_2683CE228();
}

uint64_t (*Common.PointOfInterest.address.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$address.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.PointOfInterest.$address.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE50, &qword_2683DEC30);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.associatedPerson.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEC40);
}

uint64_t (*Common.PointOfInterest.associatedPerson.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$associatedPerson.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$associatedPerson.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.PointOfInterest.categories.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$categories.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE78, &qword_2683DEC58);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$categories.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE78, &qword_2683DEC58);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.containedIn.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEC68);
}

uint64_t (*Common.PointOfInterest.containedIn.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$containedIn.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$containedIn.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.PointOfInterest.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.PointOfInterest.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.PointOfInterest.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.PointOfInterest.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_2682345E8()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 44);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.PointOfInterest.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEC80);
}

uint64_t (*Common.PointOfInterest.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_2682349E0()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 48);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.PointOfInterest.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEA8, &qword_2683DEC88);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEA8, &qword_2683DEC88);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_62_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.PointOfInterest.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.PointOfInterest(v3) + 52);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268234DD8()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 52);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.PointOfInterest.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.PointOfInterest(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.PointOfInterest.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_68_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void Common.OffsetDirection.DefinedValue.rawValue.getter()
{
  *v0;
  *v0;
  OUTLINED_FUNCTION_35_7();
}

void sub_2682350B0(void *a1@<X8>)
{
  Common.OffsetDirection.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.OffsetDirection.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);

  return sub_2683CE228();
}

uint64_t (*Common.OffsetDirection.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.OffsetDirection.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB8, &qword_2683DEC98);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.OffsetDirection.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.OffsetDirection(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.OffsetDirection.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.OffsetDirection.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.OffsetDirection(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.OffsetDirection.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.OffsetDirection.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.OffsetDirection(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.OffsetDirection.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DECA8);
}

uint64_t (*Common.OffsetDirection.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.OffsetDirection(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.OffsetDirection.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.OffsetDirection.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.OffsetDirection(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.OffsetDirection(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.OffsetDirection.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

SiriNotebook::Common::Integer::Operator_optional __swiftcall Common.Integer.Operator.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_949();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Common.Integer.integerValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  sub_2683CE228();
  return v1;
}

uint64_t Common.Integer.integerValue.setter()
{
  OUTLINED_FUNCTION_585();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  return sub_2683CE238();
}

uint64_t (*Common.Integer.integerValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.Integer.$integerValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.Integer.$integerValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE0, &qword_2683DECC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_26823687C()
{
  v0 = OUTLINED_FUNCTION_74_1();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_581();
  return v4;
}

uint64_t sub_268236904()
{
  v0 = OUTLINED_FUNCTION_81_0();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  return OUTLINED_FUNCTION_63_2();
}

uint64_t (*Common.Integer.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Integer(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Integer.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Integer(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Integer.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Integer(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.Integer.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Integer(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Integer(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Integer.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Integer(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.Integer.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Integer(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Integer(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Integer.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Integer(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.Integer.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Integer(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Integer(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Integer.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Integer(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DECD0);
}

uint64_t (*Common.Integer.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Integer(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEF8, &qword_2683DECD8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Integer(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Integer.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEF8, &qword_2683DECD8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Integer(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.Integer.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Integer(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Integer(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Integer.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

SiriNotebook::Common::DateTimeRangeQualifier::DefinedValue_optional __swiftcall Common.DateTimeRangeQualifier.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  result.value = OUTLINED_FUNCTION_89_0();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_268237F90(void *a1@<X8>)
{
  Common.DateTimeRangeQualifier.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.DateTimeRangeQualifier.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);

  return sub_2683CE228();
}

uint64_t (*Common.DateTimeRangeQualifier.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.DateTimeRangeQualifier.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF08, &qword_2683DECE8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.DateTimeRangeQualifier.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTimeRangeQualifier(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTimeRangeQualifier.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.DateTimeRangeQualifier.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTimeRangeQualifier(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTimeRangeQualifier.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.DateTimeRangeQualifier.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTimeRangeQualifier(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTimeRangeQualifier.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DECF8);
}

uint64_t (*Common.DateTimeRangeQualifier.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTimeRangeQualifier(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF20, &qword_2683DED00);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTimeRangeQualifier.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF20, &qword_2683DED00);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.DateTimeRangeQualifier.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTimeRangeQualifier(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTimeRangeQualifier(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTimeRangeQualifier.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_2682394BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2681E9148();
}

void sub_2682394EC(void *a1@<X8>)
{
  Common.GeographicArea.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*Common.GeographicArea.areaType.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$areaType.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.associatedPerson.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEC40);
}

uint64_t (*Common.GeographicArea.associatedPerson.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$associatedPerson.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$associatedPerson.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.containedIn.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEC68);
}

uint64_t (*Common.GeographicArea.containedIn.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$containedIn.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$containedIn.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.contains.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DED10);
}

uint64_t (*Common.GeographicArea.contains.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$contains.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF38, &qword_2683DED18);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$contains.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF38, &qword_2683DED18);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.definedValue.getter()
{
  v0 = *(type metadata accessor for Common.GeographicArea(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  return sub_2683CE228();
}

uint64_t Common.GeographicArea.definedValue.setter(char *a1)
{
  v1 = OUTLINED_FUNCTION_58_2(a1);
  v2 = *(type metadata accessor for Common.GeographicArea(v1) + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  OUTLINED_FUNCTION_583(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13));
  return sub_2683CE238();
}

uint64_t (*Common.GeographicArea.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$definedValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF48, &qword_2683DED28);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF48, &qword_2683DED28);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.GeographicArea.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.GeographicArea.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.GeographicArea.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.GeographicArea.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_62_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEC68);
}

uint64_t (*Common.GeographicArea.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 52);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_68_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.GeographicArea.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.GeographicArea(v3) + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_26823B81C()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 56);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.GeographicArea.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.GeographicArea(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.GeographicArea.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_70_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_26823BAC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2681E82F0();
}

void sub_26823BAF8(void *a1@<X8>)
{
  Common.DateType.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.DateType.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);

  return sub_2683CE228();
}

uint64_t (*Common.DateType.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.DateType.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.DateType.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF58, &qword_2683DED38);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.religion.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateType(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DED48);
}

uint64_t (*Common.DateType.religion.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateType(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateType.$religion.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF70, &qword_2683DED50);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateType(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateType.$religion.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF70, &qword_2683DED50);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.DateType.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateType(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateType.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.DateType.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateType(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateType.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.DateType.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateType(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateType.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DED60);
}

uint64_t (*Common.DateType.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateType(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF88, &qword_2683DED68);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateType.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF88, &qword_2683DED68);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.DateType.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateType(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateType.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.ContactAddress.label.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$label.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.ContactAddress.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.ContactAddress(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.ContactAddress.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.ContactAddress.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.ContactAddress(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.ContactAddress.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.ContactAddress.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.ContactAddress(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.ContactAddress.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DED78);
}

uint64_t (*Common.ContactAddress.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.ContactAddress(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA0, &qword_2683DED80);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.ContactAddress.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA0, &qword_2683DED80);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.ContactAddress.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.ContactAddress(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.ContactAddress.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.ContactAddress.value.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.ContactAddress(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$value.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.ContactAddress.$value.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

SiriNotebook::Common::SearchQualifier::DefinedValue_optional __swiftcall Common.SearchQualifier.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  result.value = OUTLINED_FUNCTION_89_0();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_26823EB50(void *a1@<X8>)
{
  Common.SearchQualifier.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.SearchQualifier.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);

  return sub_2683CE228();
}

uint64_t (*Common.SearchQualifier.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.SearchQualifier.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB0, &qword_2683DED90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.similarity.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEDA0);
}

uint64_t (*Common.SearchQualifier.similarity.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SearchQualifier(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$similarity.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFC8, &qword_2683DEDA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SearchQualifier.$similarity.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFC8, &qword_2683DEDA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_26823F1BC()
{
  OUTLINED_FUNCTION_588();
  v0 = OUTLINED_FUNCTION_74_1();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_582();
  sub_2683CE228();
  return v4;
}

uint64_t sub_26823F238()
{
  OUTLINED_FUNCTION_61_2();
  v0 = OUTLINED_FUNCTION_580();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_582();
  OUTLINED_FUNCTION_93_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  return sub_2683CE238();
}

uint64_t (*Common.SearchQualifier.sortDirections.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SearchQualifier(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$sortDirections.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD8, &qword_2683DEDB8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SearchQualifier.$sortDirections.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD8, &qword_2683DEDB8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.SearchQualifier.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SearchQualifier(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SearchQualifier.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.SearchQualifier.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SearchQualifier(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SearchQualifier.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.SearchQualifier.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SearchQualifier(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SearchQualifier.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.SearchQualifier.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SearchQualifier(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SearchQualifier.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.SearchQualifier.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SearchQualifier(v3) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SearchQualifier(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SearchQualifier.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.SortValue.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.SortValue.$name.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortValue(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.SortValue.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortValue(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortValue(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortValue.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortValue(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.SortValue.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortValue(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortValue(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortValue.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortValue(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.SortValue.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortValue(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortValue(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortValue.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortValue(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEDC8);
}

uint64_t (*Common.SortValue.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortValue(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF0, &qword_2683DEDD0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortValue(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortValue.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF0, &qword_2683DEDD0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.SortValue(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.SortValue.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.SortValue(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.SortValue(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.SortValue.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_268241B68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_946(a1, a2, a3);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  sub_26812C2A8(a1, &v11 - v9, a2, a3);
  OUTLINED_FUNCTION_582();
  sub_2683CE238();
  return sub_26829A3E4(a1, a2, a3);
}

uint64_t (*Common.Note.associatedDateTime.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.Note.$associatedDateTime.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250008, &qword_2683DEDE8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.attachments.getter()
{
  v0 = *(type metadata accessor for Common.Note(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  sub_2683CE228();
  return v2;
}

uint64_t Common.Note.attachments.setter()
{
  v0 = OUTLINED_FUNCTION_580();
  v1 = *(type metadata accessor for Common.Note(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  OUTLINED_FUNCTION_93_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_2683CE238();
}

uint64_t (*Common.Note.attachments.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$attachments.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250018, &qword_2683DEDF8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$attachments.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250018, &qword_2683DEDF8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.folder.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Note(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEE08);
}

uint64_t (*Common.Note.folder.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$folder.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250030, &qword_2683DEE10);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$folder.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250030, &qword_2683DEE10);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.Note.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_2682427B8()
{
  v0 = OUTLINED_FUNCTION_74_1();
  v2 = *(v1(v0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_581();
  return v4;
}

uint64_t sub_268242820()
{
  v0 = OUTLINED_FUNCTION_81_0();
  v2 = *(v1(v0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  return OUTLINED_FUNCTION_63_2();
}

uint64_t (*Common.Note.stringContent.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$stringContent.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$stringContent.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.Note.tags.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$tags.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250040, &qword_2683DEE20);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$tags.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250040, &qword_2683DEE20);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Note(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.Note.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Note(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.Note.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Note(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.Note.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_62_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Note(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEE30);
}

uint64_t (*Common.Note.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 52);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250058, &qword_2683DEE38);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250058, &qword_2683DEE38);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_68_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.Note(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.Note.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.Note(v3) + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.Note.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Note(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.Note.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_70_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void Common.DateTime.DefinedValue.init(rawValue:)()
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_13_23();
}

void sub_2682440F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  Common.DateTime.DefinedValue.init(rawValue:)();
}

void Common.DateTime.Operator.init(rawValue:)()
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_13_23();
}

void sub_268244174(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  Common.DateTime.Operator.init(rawValue:)();
}

uint64_t Common.DateTime.date.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);

  return sub_2683CE228();
}

uint64_t (*Common.DateTime.date.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.DateTime.$date.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.DateTime.$date.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250070, &qword_2683DEE50);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.DateTime.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$definedValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250080, &qword_2683DEE60);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250080, &qword_2683DEE60);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.direction.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DECA8);
}

uint64_t (*Common.DateTime.direction.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$direction.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$direction.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_268244AD4()
{
  v0 = OUTLINED_FUNCTION_74_1();
  v2 = *(v1(v0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_581();
  return v4;
}

uint64_t sub_268244B3C()
{
  v0 = OUTLINED_FUNCTION_81_0();
  v2 = *(v1(v0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  return OUTLINED_FUNCTION_63_2();
}

uint64_t (*Common.DateTime.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.occurringIn.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEE70);
}

uint64_t (*Common.DateTime.occurringIn.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$occurringIn.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250098, &qword_2683DEE78);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$occurringIn.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250098, &qword_2683DEE78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250088, &qword_2683DEE68);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.offsetReference.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEDE0);
}

uint64_t (*Common.DateTime.offsetReference.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$offsetReference.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250008, &qword_2683DEDE8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$offsetReference.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250008, &qword_2683DEDE8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.offsetValue.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEE88);
}

uint64_t (*Common.DateTime.offsetValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$offsetValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B0, &qword_2683DEE90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$offsetValue.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B0, &qword_2683DEE90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.time.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEEA0);
}

uint64_t (*Common.DateTime.time.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$time.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500C8, &qword_2683DEEA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$time.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500C8, &qword_2683DEEA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500B8, &qword_2683DEE98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEB88);
}

uint64_t (*Common.DateTime.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_62_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBA0);
}

uint64_t (*Common.DateTime.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 52);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_68_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBB8);
}

uint64_t (*Common.DateTime.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTime.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_70_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEDE0);
}

uint64_t (*Common.DateTime.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 60);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268246974()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 60);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.DateTime.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250008, &qword_2683DEDE8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250008, &qword_2683DEDE8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_82_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEBE8);
}

uint64_t (*Common.DateTime.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTime(v3) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t sub_268246D6C()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v3 = *(v2(v1) + 64);
  v4 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.DateTime.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTime.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_90_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

SiriNotebook::Common::DateTimeRange::DefinedValue_optional __swiftcall Common.DateTimeRange.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_584();
  v2 = sub_2683D05E8();

  v4 = 0;
  v5 = 6;
  switch(v2)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v4 = 1;
      goto LABEL_18;
    case 2:
      v4 = 2;
      goto LABEL_18;
    case 3:
      v4 = 3;
      goto LABEL_18;
    case 4:
      v4 = 4;
      goto LABEL_18;
    case 5:
      v4 = 5;
LABEL_18:
      v5 = v4;
      break;
    case 6:
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    default:
      v5 = 24;
      break;
  }

  *v1 = v5;
  return result;
}

void sub_2682472E4(void *a1@<X8>)
{
  Common.DateTimeRange.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*Common.DateTimeRange.at.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.DateTimeRange.$at.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250008, &qword_2683DEDE8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_26824749C()
{
  OUTLINED_FUNCTION_588();
  v1 = *(v0(0) + 20);
  OUTLINED_FUNCTION_582();
  return sub_2683CE228();
}

uint64_t (*Common.DateTimeRange.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  v4 = *(type metadata accessor for Common.DateTimeRange(v3) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D0, &qword_2683DEEB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v5);
  return sub_268151B78;
}

uint64_t Common.DateTimeRange.$definedValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D8, &qword_2683DEEB8);
  OUTLINED_FUNCTION_2_20(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_47(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTimeRange(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D0, &qword_2683DEEB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v7 = OUTLINED_FUNCTION_10_18();
  return v8(v7);
}

uint64_t Common.DateTimeRange.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D8, &qword_2683DEEB8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRange(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500D0, &qword_2683DEEB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRange.duration.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_4_31(v5, v10);
  v6 = *(type metadata accessor for Common.DateTimeRange(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802500A0, &qword_2683DEE80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v7 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v7, v8, &qword_2683DEE88);
}