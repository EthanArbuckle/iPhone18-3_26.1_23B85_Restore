uint64_t sub_2280E3F6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_2280E4358;
  }

  else
  {
    v5 = sub_2280E4080;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280E4080()
{
  v1 = v0[17];
  v0[15] = *(v0[35] + 16) + 1;
  v2 = sub_22813998C();
  MEMORY[0x22AAB1970](v2);

  MEMORY[0x22AAB1970](2618, 0xE200000000000000);
  v0[41] = 0xE900000000000023;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 8);
  v6 = *(v5 + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[42] = v8;
  *v8 = v0;
  v8[1] = sub_2280E4230;

  return v10(0x206567617373654DLL, 0xE900000000000023, v3, v5);
}

uint64_t sub_2280E4230(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = sub_2280E4640;
  }

  else
  {
    *(v4 + 352) = a1;
    v7 = sub_2280E4434;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280E4358()
{
  v1 = v0[37];
  v2 = v0[35];

  v3 = v0[40];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v11 = v0[20];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2280E4434()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[35];

  v5 = *(v3 + 16);
  v6 = v1 * v5;
  if ((v1 * v5) >> 64 != (v1 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v0[39];
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = v0[17];
  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  v10[1] = sub_2280E4518;
  v11 = v0[35];
  v12 = v0[17];

  return sub_2280D8D74(v11, v9 + 160, v8);
}

uint64_t sub_2280E4518(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v9 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v5 = v3[37];
    v6 = v3[35];

    v7 = sub_2280E4960;
  }

  else
  {
    v7 = sub_2280E4728;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280E4640()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[35];

  v4 = v0[43];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  v12 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2280E4728()
{
  result = v0[46];
  v3 = v0[36];
  v2 = v0[37];
  v27 = v3;
  v25 = *(result + 16);
  if (v25)
  {
    v4 = 0;
    v5 = (result + 40);
    while (v4 < *(result + 16))
    {
      v6 = v0[35];
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = v4 + 1;
      v0[16] = v4 + 1;
      v10 = result;

      v11 = sub_22813998C();
      MEMORY[0x22AAB1970](v11);

      MEMORY[0x22AAB1970](2618, 0xE200000000000000);
      MEMORY[0x22AAB1970](v8, v7);

      v12 = *(v6 + 16) - 1;
      if (v4 >= v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 10;
      }

      if (v4 >= v12)
      {
        v14 = 0xE000000000000000;
      }

      else
      {
        v14 = 0xE100000000000000;
      }

      MEMORY[0x22AAB1970](v13, v14);

      MEMORY[0x22AAB1970](0x206567617373654DLL, 0xE900000000000023);

      result = v10;
      v5 += 2;
      ++v4;
      if (v9 == v25)
      {
        v15 = v0[46];
        v3 = v27;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v16 = v0[35];
    v17 = v0[33];
    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[28];
    v21 = v0[25];
    v24 = v0[24];
    v26 = v0[23];
    v22 = v0[20];

    v23 = v0[1];

    return v23(v3, v2);
  }

  return result;
}

uint64_t sub_2280E4960()
{
  v1 = v0[47];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SKTextMessageThread.preprocessForLanguageCheck()()
{
  v32 = sub_228138AAC();
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32, v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 16);
  if (v7)
  {
    v9 = *(v4 + 16);
    v8 = v4 + 16;
    v10 = *v0 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v30 = *(v8 + 56);
    v31 = v9;
    v28 = v1;
    v29 = (v8 - 8);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v13 = v32;
      v14 = v8;
      v31(v6, v10, v32);
      v15 = sub_228138A6C();
      v17 = v16;
      (*v29)(v6, v13);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2281338C0(0, *(v11 + 2) + 1, 1, v11);
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        if (v19 >= v18 >> 1)
        {
          v11 = sub_2281338C0((v18 > 1), v19 + 1, 1, v11);
        }

        *(v11 + 2) = v19 + 1;
        v12 = &v11[16 * v19];
        *(v12 + 4) = v15;
        *(v12 + 5) = v17;
      }

      v10 += v30;
      --v7;
      v8 = v14;
    }

    while (v7);
    v20 = sub_228045C24(v11);
    v22 = v21;
  }

  else
  {
    v23 = swift_allocObject();
    v22 = 10;
    *(v23 + 16) = 10;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    v20 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, 141, sub_2280E4FC0);
    sub_227FDB3CC();
    swift_allocError();
    *v24 = 10;
    *(v24 + 8) = v20;
    swift_willThrow();
  }

  v25 = v20;
  v26 = v22;
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_2280E4CB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280E4D44;

  return SKTextMessageThread.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280E4D44(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280E4E78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm_14()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280E4F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280E4F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280E4FD0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E4FF8, 0, 0);
}

uint64_t sub_2280E4FF8()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2280E5DA0;
  v6 = v0[2];
  v5 = v0[3];

  return (v8)(v6, v5, v2, &off_283B5EC90);
}

uint64_t sub_2280E5150(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E5178, 0, 0);
}

uint64_t sub_2280E5178()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model + 24));
  v1 = off_283B5ECA8;
  v2 = sub_22813755C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2280E5D9C;
  v6 = v0[2];
  v5 = v0[3];

  return (v8)(v6, v5, v2, &off_283B5EC90);
}

uint64_t sub_2280E52F4()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model), *(*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model + 24));
  v2 = *(MEMORY[0x277D71A10] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2280E5DA8;

  return MEMORY[0x2821D9808]();
}

uint64_t sub_2280E53B0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E53D8, 0, 0);
}

uint64_t sub_2280E53D8()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2280E5DAC;
  v6 = v0[2];
  v5 = v0[3];

  return (v8)(v6, v5, v2, &off_283B5EC90);
}

uint64_t sub_2280E5530(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E5558, 0, 0);
}

uint64_t sub_2280E5558()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v1 = off_283B5ECA8;
  v2 = sub_22813755C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2280E5DA4;
  v6 = v0[2];
  v5 = v0[3];

  return (v8)(v6, v5, v2, &off_283B5EC90);
}

uint64_t sub_2280E56D4()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model), *(*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model + 24));
  v2 = *(MEMORY[0x277D71A10] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2280E5DB4;

  return MEMORY[0x2821D9808]();
}

uint64_t sub_2280E57C8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E57F0, 0, 0);
}

uint64_t sub_2280E57F0()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model + 24));
  v1 = off_283B5ECA0;
  v2 = sub_22813755C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2280E5948;
  v6 = v0[2];
  v5 = v0[3];

  return (v8)(v6, v5, v2, &off_283B5EC90);
}

uint64_t sub_2280E5948(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2280E5A48(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2280E5A70, 0, 0);
}

uint64_t sub_2280E5A70()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model), *(v0[4] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model + 24));
  v1 = off_283B5ECA8;
  v2 = sub_22813755C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2280E5DB0;
  v6 = v0[2];
  v5 = v0[3];

  return (v8)(v6, v5, v2, &off_283B5EC90);
}

uint64_t sub_2280E5BEC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model), *(*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model + 24));
  v2 = *(MEMORY[0x277D71A10] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2280E5C9C;

  return MEMORY[0x2821D9808]();
}

uint64_t sub_2280E5C9C(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

char *sub_2280E5DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a5;
  v7 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v7 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return v6;
  }

  v10 = sub_22813927C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C0, &qword_228141570);
  sub_2280E63AC();
  sub_227FDB420();
  v11 = sub_22813973C();
  v24 = v12;
  v25 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
  v29 = 0;
  v30 = 0;
  v14 = sub_22813927C();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = &v29;
  v15[5] = v10;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2280E6410;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2280E6420;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2280E6468;
  aBlock[3] = &block_descriptor_1;
  v17 = _Block_copy(aBlock);
  v18 = v10;
  v19 = v13;

  [a1 enumerateMatchesInString:v14 options:a2 range:v25 usingBlock:{v24, v17}];

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if (v30 + v29 < 1)
    {

      return v6;
    }

    v21 = [v18 length];
    v22 = v30 + v29;
    if (v30 + v29 >= v21)
    {
      goto LABEL_11;
    }

    result = [v18 length];
    if (!__OFSUB__(result, v30 + v29))
    {
      v23 = [v18 substringWithRange_];
      if (!v23)
      {
        sub_2281392AC();
        v23 = sub_22813927C();
      }

      [v19 appendString_];

LABEL_11:
      v6 = sub_2281392AC();

      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2280E60EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22813927C();
  v7 = sub_22813927C();
  v8 = [a2 replacementStringForResult:a1 inString:v6 offset:0 template:v7];

  v9 = sub_2281392AC();
  v11 = v10;

  a3[3] = MEMORY[0x277D837D0];
  result = sub_227FDB420();
  a3[4] = result;
  *a3 = v9;
  a3[1] = v11;
  return result;
}

void sub_2280E61AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, id), uint64_t a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    v12 = a1;
    v13 = MEMORY[0x22AAB2180]();
    v14 = [v12 range];
    v16 = v15;
    a4(v29, v12);
    v17 = a6[1] + *a6;
    if (v17 < v14)
    {
      if (__OFSUB__(v14, v17))
      {
        __break(1u);
        return;
      }

      v18 = [a7 substringWithRange_];
      if (!v18)
      {
        sub_2281392AC();
        v18 = sub_22813927C();
      }

      [a8 appendString_];
    }

    v19 = v30;
    v20 = v31;
    v21 = __swift_project_boxed_opaque_existential_1(v29, v30);
    v22 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v21, v21);
    (*(v24 + 16))(&v29[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = *(v20 + 40);
    v26 = *(*(*(v20 + 8) + 8) + 8);
    sub_22813947C();
    v27 = sub_22813927C();

    [a8 appendString_];

    *a6 = v14;
    a6[1] = v16;
    __swift_destroy_boxed_opaque_existential_1(v29);
    objc_autoreleasePoolPop(v13);
  }
}

unint64_t sub_2280E63AC()
{
  result = qword_2813C45B8;
  if (!qword_2813C45B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81F1C0, &qword_228141570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C45B8);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2280E6468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

uint64_t SKUserNotificationThread.preprocess(sharedSessionData:)(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2[47] = a1;
  v3 = sub_22813882C();
  v2[48] = v3;
  v4 = *(v3 - 8);
  v2[49] = v4;
  v5 = *(v4 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v6 = sub_228138AEC();
  v2[52] = v6;
  v7 = *(v6 - 8);
  v2[53] = v7;
  v8 = *(v7 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v9 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0) - 8);
  v2[56] = v9;
  v10 = *(v9 + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v11 = sub_228138B8C();
  v2[59] = v11;
  v12 = *(v11 - 8);
  v2[60] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v15 = *v1;
  v2[61] = v14;
  v2[62] = v15;
  v16 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2280E6710, 0, 0);
}

uint64_t sub_2280E6710()
{
  v258 = v0;
  v257 = *MEMORY[0x277D85DE8];
  if (*(v0[62] + 16))
  {
    v0[38] = MEMORY[0x277D84F90];
    isEscapingClosureAtFileLocation = objc_opt_self();

    v2 = off_2785F1000;

    if (qword_2813C4620 != -1)
    {
      goto LABEL_147;
    }

    while (1)
    {
      if (byte_2813C4629 == 1)
      {
        if (qword_27D81E2A0 != -1)
        {
          swift_once();
        }

        v3 = &off_27D81EDB0;
      }

      else
      {
        if (qword_2813C76F0 != -1)
        {
          swift_once();
        }

        v3 = &qword_2813C76F8;
      }

      v8 = *(*v3 + 472);
      v7 = *(*v3 + 480);
      v10 = *(*v3 + 488);
      v9 = *(*v3 + 496);
      v11 = *(*v3 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      if (byte_2813C4638 == 1)
      {
        isEscapingClosureAtFileLocation = v9;
        v10(v255, v11);

        v7 = v255[0];
      }

      else
      {
      }

      sub_2280E89AC(v7, v0[62]);
      v228 = v14;
      if (v12 == v13 >> 1)
      {
        swift_unknownObjectRelease();
        v15 = 0;
        v240 = 0;
        v241 = 0;
        v16 = MEMORY[0x277D84F90];
        v17 = MEMORY[0x277D84F90];
LABEL_18:
        v0[63] = v17;
        sub_2280A8554(v16, (v0[47] + 160));
        v149 = v0[47];

        v150 = *(v149 + 208);
        if (v150)
        {
          KeyPath = swift_getKeyPath();
          os_unfair_lock_lock((v150 + 16));
          v152 = MEMORY[0x277D84A28];
          v256 = MEMORY[0x277D84A28];
          v255[0] = v241;

          sub_2280449E4(v255, KeyPath, (v150 + 24));
          os_unfair_lock_unlock((v150 + 16));

          v153 = swift_getKeyPath();
          os_unfair_lock_lock((v150 + 16));
          v256 = v152;
          v255[0] = v240;

          sub_2280449E4(v255, v153, (v150 + 24));
          os_unfair_lock_unlock((v150 + 16));

          v154 = swift_getKeyPath();
          os_unfair_lock_lock((v150 + 16));
          v256 = v152;
          v255[0] = v15;

          sub_2280449E4(v255, v154, (v150 + 24));
          os_unfair_lock_unlock((v150 + 16));
        }

        v155 = v0[47];
        v255[0] = 0;
        v255[1] = 0xE000000000000000;
        sub_22813988C();

        strcpy(v255, "Notification #");
        HIBYTE(v255[1]) = -18;
        v0[41] = *(v17 + 2) + 1;
        v156 = sub_22813998C();
        MEMORY[0x22AAB1970](v156);

        MEMORY[0x22AAB1970](2618, 0xE200000000000000);
        v157 = v255[0];
        v158 = v255[1];
        v0[64] = v255[1];
        v159 = v155[3];
        v160 = v155[4];
        __swift_project_boxed_opaque_existential_1(v155, v159);
        v161 = *(v160 + 8);
        v162 = *(v161 + 16);
        v252 = (v162 + *v162);
        v163 = v162[1];
        v164 = swift_task_alloc();
        v0[65] = v164;
        *v164 = v0;
        v164[1] = sub_2280E81B8;
        v165 = *MEMORY[0x277D85DE8];

        return v252(v157, v158, v159, v161);
      }

      v18 = v12;
      v15 = 0;
      v240 = 0;
      v241 = 0;
      v218 = v0 + 32;
      v244 = v0[58];
      v226 = v0[60];
      v19 = v0[49];
      v225 = (v226 + 8);
      v238 = (v19 + 16);
      v239 = (v19 + 8);
      v219 = (v0[53] + 8);
      v17 = MEMORY[0x277D84F90];
      v20 = v12 <= (v13 >> 1) ? v13 >> 1 : v12;
      v227 = v20;
      v251 = v0[57];
      v253 = v0[56];
      v220 = v0[47];
      v221 = v13 >> 1;
      while (1)
      {
        if (v18 == v227)
        {
          goto LABEL_142;
        }

        v232 = v18;
        v233 = v15;
        (*(v226 + 16))(v0[61], v228 + *(v226 + 72) * v18, v0[59]);
        v21 = sub_228138B5C();
        if (v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        if ((v24 & 0x2000000000000000) != 0)
        {
          v25 = HIBYTE(v24) & 0xF;
        }

        else
        {
          v25 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (!v25)
        {

          goto LABEL_54;
        }

        if (qword_2813C8178 != -1)
        {
          swift_once();
        }

        sub_228139B6C();
        v26 = *(v0[39] + 16);

        if (!v26)
        {
          v203 = v0[61];
          v204 = v0[59];
          v205 = v0[38];

          v206 = swift_allocObject();
          *(v206 + 16) = 20;
          *(v206 + 24) = 0;
          *(v206 + 32) = 0;
          v207 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 78, sub_2280E9CC0);
          sub_227FDB3CC();
          swift_allocError();
          *v208 = 20;
          *(v208 + 8) = v207;
          swift_willThrow();

          swift_unknownObjectRelease();
          (*v225)(v203, v204);
          goto LABEL_136;
        }

        v27 = qword_2813C8078;
        swift_beginAccess();
        isEscapingClosureAtFileLocation = *(v26 + v27);
        if (*(isEscapingClosureAtFileLocation + 16))
        {
          v28 = sub_22808CF24(3, 1);
          if (v29)
          {
            break;
          }
        }

        swift_endAccess();

LABEL_53:

LABEL_54:
        v47 = v0[61];
        v48 = sub_228138B6C();
        if (v49)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0;
        }

        if (v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0xE000000000000000;
        }

        v52 = sub_228138B7C();
        if (v53)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0;
        }

        if (v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0xE000000000000000;
        }

        v230 = v54;
        v231 = v55;
        v56 = sub_228138B5C();
        if (v57)
        {
          v58 = v56;
        }

        else
        {
          v58 = 0;
        }

        if (v57)
        {
          v59 = v57;
        }

        else
        {
          v59 = 0xE000000000000000;
        }

        v242 = v58;
        v243 = v59;
        if (qword_2813C8178 != -1)
        {
          swift_once();
        }

        sub_228139B6C();
        v60 = *(v0[40] + 16);

        if (!v60)
        {
          v197 = v0[61];
          v198 = v0[59];
          v199 = v0[38];

          v200 = swift_allocObject();
          *(v200 + 16) = 20;
          *(v200 + 24) = 0;
          *(v200 + 32) = 0;
          v201 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 61, sub_2280E9F14);
          sub_227FDB3CC();
          swift_allocError();
          *v202 = 20;
          *(v202 + 8) = v201;
          swift_willThrow();
          swift_unknownObjectRelease();
          (*v225)(v197, v198);
LABEL_136:

          goto LABEL_137;
        }

        v229 = v50;
        v61 = qword_2813C8078;
        swift_beginAccess();
        v62 = *(v60 + v61);
        v248 = v51;
        v234 = v17;
        if (*(v62 + 16) && (v63 = sub_22808CF24(2, 1), (v64 & 1) != 0))
        {
          v65 = *(*(v62 + 56) + 8 * v63);
          swift_endAccess();
          v66 = *(v65 + 16);
          if (v66)
          {
            v2 = (v65 + ((*(v253 + 80) + 32) & ~*(v253 + 80)));
            isEscapingClosureAtFileLocation = v243;

            v67 = 0;
            v246 = v242;
            v250 = v243;
            v236 = v65;
            v235 = v66;
            v237 = v2;
            while (v67 < *(v65 + 16))
            {
              sub_227FFE9B0(v2 + *(v253 + 72) * v67, v0[57]);
              v95 = *(v251 + 32);
              v94 = *(v251 + 40);
              if (*(v251 + 48) > 1u)
              {
                if (*(v251 + 48) == 2)
                {
                  v120 = *(v251 + 16);
                  v119 = *(v251 + 24);
                  v121 = qword_2813C49A8;

                  if (v121 != -1)
                  {
                    swift_once();
                  }

                  v122 = v0[51];
                  v123 = v0[48];
                  v124 = __swift_project_value_buffer(v123, qword_2813C89F0);
                  (*v238)(v122, v124, v123);
                  v125 = objc_allocWithZone(MEMORY[0x277CCAC68]);
                  v126 = sub_22813927C();

                  v0[44] = 0;
                  v127 = [v125 initWithPattern:v126 options:0 error:v0 + 44];

                  v128 = v0[44];
                  v129 = v0[51];
                  if (!v127)
                  {
                    v184 = v128;
                    v185 = sub_228136E2C();

                    swift_willThrow();
                    v186 = v185;
                    v187 = sub_22813880C();
                    v188 = sub_2281396EC();

                    if (os_log_type_enabled(v187, v188))
                    {
                      v189 = swift_slowAlloc();
                      v190 = swift_slowAlloc();
                      *v189 = 138412290;
                      v191 = v185;
                      v192 = _swift_stdlib_bridgeErrorToNSError();
                      *(v189 + 4) = v192;
                      *v190 = v192;
                      _os_log_impl(&dword_227FC3000, v187, v188, "Error compiling regular expression: %@", v189, 0xCu);
                      sub_227FE60F8(v190);
                      MEMORY[0x22AAB28A0](v190, -1, -1);
                      MEMORY[0x22AAB28A0](v189, -1, -1);
                    }

                    v180 = v0[61];
                    v181 = v0[59];
                    v193 = v0[51];
                    v194 = v0[48];

                    swift_willThrow();
                    (*v239)(v193, v194);

                    swift_unknownObjectRelease();

                    goto LABEL_133;
                  }

                  v130 = v0[48];
                  isEscapingClosureAtFileLocation = *v239;
                  v131 = v128;
                  (isEscapingClosureAtFileLocation)(v129, v130);
                  v132 = swift_task_alloc();
                  v133 = v132;
                  v132[2] = v127;
                  v132[3] = v246;
                  v132[4] = v250;
                  v132[5] = v95;
                  v134 = HIBYTE(v250) & 0xF;
                  if ((v250 & 0x2000000000000000) == 0)
                  {
                    v134 = v246 & 0xFFFFFFFFFFFFLL;
                  }

                  v132[6] = v94;
                  if (v134)
                  {
                    v135 = sub_22813927C();
                    v0[45] = 15;
                    v0[30] = v246;
                    v0[31] = v250;

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C0, &qword_228141570);
                    sub_2280E9DF8(&qword_2813C45B8, &qword_27D81F1C0, &qword_228141570);
                    sub_227FDB420();
                    v136 = sub_22813973C();
                    v223 = v137;
                    v224 = v136;
                    v138 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
                    *v218 = 0;
                    v0[33] = 0;
                    v222 = sub_22813927C();
                    v139 = swift_allocObject();
                    *(v139 + 2) = sub_2280E9F20;
                    *(v139 + 3) = v133;
                    *(v139 + 4) = v218;
                    *(v139 + 5) = v135;
                    *(v139 + 6) = v138;
                    v2 = swift_allocObject();
                    v2[2] = sub_2280E9D44;
                    v2[3] = v139;
                    v0[22] = sub_2280E9D54;
                    v0[23] = v2;
                    v0[18] = MEMORY[0x277D85DD0];
                    v0[19] = 1107296256;
                    v0[20] = sub_2280E6468;
                    v0[21] = &block_descriptor_2;
                    v140 = _Block_copy(v0 + 18);
                    v141 = v0[23];
                    v142 = v135;
                    v143 = v138;

                    [v127 enumerateMatchesInString:v222 options:0 range:v224 usingBlock:{v223, v140}];

                    _Block_release(v140);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_146;
                    }

                    v2 = v237;
                    if ((v0[33] + v0[32]) <= 0)
                    {
                    }

                    else
                    {
                      v144 = [v142 length];
                      v145 = v0[33] + v0[32];
                      if (v145 < v144)
                      {
                        v146 = [v142 length];
                        v147 = v0[33] + v0[32];
                        if (__OFSUB__(v146, v147))
                        {
                          __break(1u);
                        }

                        v148 = [v142 substringWithRange_];
                        if (!v148)
                        {
                          sub_2281392AC();
                          v148 = sub_22813927C();
                          v2 = v237;
                        }

                        [v143 appendString_];
                      }

                      v246 = sub_2281392AC();
                      isEscapingClosureAtFileLocation = v93;

                      v250 = isEscapingClosureAtFileLocation;
                    }
                  }

                  else
                  {

                    v2 = v237;
                  }

                  v65 = v236;
                  v66 = v235;
                }
              }

              else if (*(v251 + 48))
              {
                v97 = *(v251 + 16);
                v96 = *(v251 + 24);
                v98 = objc_opt_self();
                v99 = sub_22813927C();
                v100 = [v98 escapedTemplateForString_];

                v101 = sub_2281392AC();
                v103 = v102;

                v104 = qword_2813C49A8;

                if (v104 != -1)
                {
                  swift_once();
                }

                v105 = v0[50];
                v106 = v0[48];
                v107 = __swift_project_value_buffer(v106, qword_2813C89F0);
                (*v238)(v105, v107, v106);
                v108 = objc_allocWithZone(MEMORY[0x277CCAC68]);
                v109 = sub_22813927C();

                v0[43] = 0;
                v110 = [v108 initWithPattern:v109 options:0 error:v0 + 43];

                v111 = v0[43];
                v112 = v0[50];
                if (!v110)
                {
                  v171 = v111;
                  v172 = sub_228136E2C();

                  swift_willThrow();
                  v173 = v172;
                  v174 = sub_22813880C();
                  v175 = sub_2281396EC();

                  if (os_log_type_enabled(v174, v175))
                  {
                    v176 = swift_slowAlloc();
                    v177 = swift_slowAlloc();
                    *v176 = 138412290;
                    v178 = v172;
                    v179 = _swift_stdlib_bridgeErrorToNSError();
                    *(v176 + 4) = v179;
                    *v177 = v179;
                    _os_log_impl(&dword_227FC3000, v174, v175, "Error compiling regular expression: %@", v176, 0xCu);
                    sub_227FE60F8(v177);
                    MEMORY[0x22AAB28A0](v177, -1, -1);
                    MEMORY[0x22AAB28A0](v176, -1, -1);
                  }

                  v180 = v0[61];
                  v181 = v0[59];
                  v182 = v0[50];
                  v183 = v0[48];

                  swift_willThrow();
                  (*v239)(v182, v183);

                  swift_unknownObjectRelease();

LABEL_133:

                  (*v225)(v180, v181);
                  v195 = v0[57];
                  v196 = v0[38];

                  sub_2280E9CD4(v195);

                  goto LABEL_136;
                }

                v113 = v0[48];
                v114 = *v239;
                v115 = v111;
                v114(v112, v113);
                v116 = swift_task_alloc();
                v116[2] = v110;
                v116[3] = v246;
                isEscapingClosureAtFileLocation = v250;
                v116[4] = v250;
                v116[5] = v101;
                v116[6] = v103;
                v246 = sub_2280E5DB8(v110, 0, sub_2280E9D30, v116, v246, v250);
                v118 = v117;

                v250 = v118;
                v65 = v236;
                v66 = v235;
                v2 = v237;
              }

              ++v67;
              sub_2280E9CD4(v0[57]);
              if (v66 == v67)
              {

                v68 = v250;
                v69 = v246;
                goto LABEL_81;
              }
            }

            __break(1u);
            goto LABEL_141;
          }
        }

        else
        {
          swift_endAccess();
        }

        v68 = v243;

        v69 = v242;
LABEL_81:

        v70 = sub_2280A7954(v69, v68, v220 + 160, *(v220 + 208));
        v71 = v0[61];
        v72 = v70;
        v74 = v73;
        v76 = v0[54];
        v75 = v0[55];
        v77 = v0[52];

        sub_228138B2C();
        sub_228138ADC();
        sub_2280A00CC();
        LOBYTE(v71) = sub_2281397EC();
        v78 = *v219;
        (*v219)(v76, v77);
        v78(v75, v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
        inited = swift_initStackObject();
        if (v71)
        {
          *(inited + 16) = xmmword_22813A4B0;
          *(inited + 32) = v72;
          *(inited + 40) = v74;
          v80 = v233;
          v81 = v248;
          v82 = v230;
          v2 = v231;
          v83 = v229;
        }

        else
        {
          *(inited + 16) = xmmword_22813B480;
          v83 = v229;
          v82 = v230;
          v81 = v248;
          *(inited + 32) = v229;
          *(inited + 40) = v248;
          v2 = v231;
          *(inited + 48) = v230;
          *(inited + 56) = v231;
          *(inited + 64) = v72;
          *(inited + 72) = v74;

          v80 = v233;
        }

        sub_227FED308(inited);
        isEscapingClosureAtFileLocation = sub_2280A0124(v83, v81, v82, v2, v72, v74);
        v85 = v84;

        v86 = sub_22813936C();

        if (__OFADD__(v241, v86))
        {
          goto LABEL_143;
        }

        v241 += v86;
        v87 = sub_22813936C();

        if (__OFADD__(v240, v87))
        {
          goto LABEL_144;
        }

        v240 += v87;
        v88 = sub_22813936C();

        v89 = __OFADD__(v80, v88);
        v15 = v80 + v88;
        if (v89)
        {
          goto LABEL_145;
        }

        v17 = v234;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2281338C0(0, *(v234 + 2) + 1, 1, v234);
        }

        v91 = *(v17 + 2);
        v90 = *(v17 + 3);
        if (v91 >= v90 >> 1)
        {
          v17 = sub_2281338C0((v90 > 1), v91 + 1, 1, v17);
        }

        (*v225)(v0[61], v0[59]);
        *(v17 + 2) = v91 + 1;
        v92 = &v17[16 * v91];
        *(v92 + 4) = isEscapingClosureAtFileLocation;
        *(v92 + 5) = v85;
LABEL_92:
        v18 = v232 + 1;
        if (v232 + 1 == v221)
        {
          swift_unknownObjectRelease();
          v16 = v0[38];
          goto LABEL_18;
        }
      }

      v30 = *(*(isEscapingClosureAtFileLocation + 56) + 8 * v28);
      swift_endAccess();
      v249 = *(v30 + 16);
      if (!v249)
      {
        break;
      }

      v247 = v30 + ((*(v253 + 80) + 32) & ~*(v253 + 80));
      v31 = 7;
      if (((v24 >> 60) & ((v23 & 0x800000000000000) == 0)) != 0)
      {
        v31 = 11;
      }

      v245 = v31 | (v25 << 16);

      v32 = 0;
      while (v32 < *(v30 + 16))
      {
        sub_227FFE9B0(v247 + *(v253 + 72) * v32, v0[58]);
        if (*(v244 + 48) != 255)
        {
          isEscapingClosureAtFileLocation = v17;
          v33 = *(v244 + 16);
          v34 = *(v244 + 24);
          v35 = objc_allocWithZone(MEMORY[0x277CCAC68]);
          v36 = sub_22813927C();
          v0[46] = 0;
          v37 = [v35 initWithPattern:v36 options:0 error:v0 + 46];

          v38 = v0[46];
          if (!v37)
          {
            v167 = v0[61];
            v168 = v0[59];
            v254 = v0[58];
            v169 = v0[38];
            v170 = v38;

            sub_228136E2C();

            swift_willThrow();

            swift_unknownObjectRelease();
            (*v225)(v167, v168);
            sub_2280E9CD4(v254);

            goto LABEL_136;
          }

          v0[34] = 15;
          v0[35] = v245;
          v0[36] = v23;
          v0[37] = v24;
          v39 = v38;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
          sub_2280E9DF8(&qword_2813C4650, &qword_27D81E550, &qword_22813B0F0);
          sub_227FDB420();
          v40 = sub_22813973C();
          v42 = v41;
          v43 = sub_22813927C();
          v2 = [v37 firstMatchInString:v43 options:0 range:{v40, v42}];

          v17 = isEscapingClosureAtFileLocation;
          if (v2)
          {
            v44 = v0[61];
            v46 = v0[58];
            v45 = v0[59];

            sub_2280E9CD4(v46);

            (*v225)(v44, v45);
            v15 = v233;
            goto LABEL_92;
          }
        }

        ++v32;
        sub_2280E9CD4(v0[58]);
        if (v249 == v32)
        {

          goto LABEL_52;
        }
      }

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
      swift_once();
    }

LABEL_52:

    goto LABEL_53;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = 10;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = sub_227FF96D4(0, 0xD00000000000008ALL, 0x8000000228148630, 19, sub_2280E9F18);
  sub_227FDB3CC();
  swift_allocError();
  *v6 = 10;
  *(v6 + 8) = v5;
  swift_willThrow();
LABEL_137:
  v209 = v0[61];
  v210 = v0[57];
  v211 = v0[58];
  v213 = v0[54];
  v212 = v0[55];
  v215 = v0[50];
  v214 = v0[51];

  v216 = v0[1];
  v217 = *MEMORY[0x277D85DE8];

  return v216();
}

uint64_t sub_2280E81B8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 520);
  v10 = *v2;
  *(*v2 + 528) = v1;

  if (v1)
  {
    v6 = sub_2280E8558;
  }

  else
  {
    *(v4 + 536) = a1;
    v6 = sub_2280E8308;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2280E8308()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[67];
  v3 = v0[63];
  v2 = v0[64];

  v4 = *(v3 + 16);
  v5 = v1 * v4;
  if ((v1 * v4) >> 64 != (v1 * v4) >> 63)
  {
    __break(1u);
  }

  v6 = v0[47];
  v7 = swift_task_alloc();
  v0[68] = v7;
  *v7 = v0;
  v7[1] = sub_2280E8404;
  v8 = v0[63];
  v9 = v0[47];
  v10 = *MEMORY[0x277D85DE8];

  return sub_2280D8D74(v8, v6 + 160, v5);
}

uint64_t sub_2280E8404(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 544);
  v10 = *v2;
  v3[69] = a1;
  v3[70] = v1;

  if (v1)
  {
    v5 = v3[63];

    v6 = sub_2280E88C8;
  }

  else
  {
    v6 = sub_2280E864C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2280E8558()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = v0[63];
  v1 = v0[64];

  v3 = v0[66];
  v4 = v0[61];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[50];
  v9 = v0[51];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_2280E864C()
{
  v27 = v0;
  v26[2] = *MEMORY[0x277D85DE8];
  v1 = v0[69];
  v24 = *(v1 + 16);
  if (v24)
  {
    v2 = 0;
    v3 = (v1 + 40);
    v23 = v0[69];
    do
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v4 = v0[63];
      v6 = *(v3 - 1);
      v5 = *v3;

      sub_22813988C();

      strcpy(v26, "Notification #");
      HIBYTE(v26[1]) = -18;
      v7 = v2 + 1;
      v0[42] = v2 + 1;
      v8 = sub_22813998C();
      MEMORY[0x22AAB1970](v8);

      MEMORY[0x22AAB1970](2618, 0xE200000000000000);
      MEMORY[0x22AAB1970](v6, v5);

      v9 = *(v4 + 16) - 1;
      if (v2 >= v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 10;
      }

      if (v2 >= v9)
      {
        v11 = 0xE000000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }

      MEMORY[0x22AAB1970](v10, v11);

      MEMORY[0x22AAB1970](v26[0], v26[1]);

      v1 = v23;
      v3 += 2;
      ++v2;
    }

    while (v7 != v24);
    v12 = v0[69];
  }

  v13 = v0[63];
  v14 = v0[61];
  v16 = v0[57];
  v15 = v0[58];
  v18 = v0[54];
  v17 = v0[55];
  v19 = v0[51];
  v25 = v0[50];

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20(0, 0xE000000000000000);
}

uint64_t sub_2280E88C8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[70];
  v2 = v0[61];
  v4 = v0[57];
  v3 = v0[58];
  v6 = v0[54];
  v5 = v0[55];
  v8 = v0[50];
  v7 = v0[51];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_2280E89AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(sub_228138B8C() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SKUserNotificationThread.preprocessForLanguageCheck()()
{
  v135 = sub_228138AEC();
  v2 = *(v135 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v135, v4);
  v134 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v133 = &v116 - v8;
  v128 = sub_228138B8C();
  v140 = *(v128 - 8);
  v9 = *(v140 + 64);
  v11 = MEMORY[0x28223BE20](v128, v10);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v116 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v136 = &v116 - v19;
  v20 = *v0;
  v21 = *(*v0 + 16);
  if (v21)
  {
    v22 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    v123 = v1;
    v122 = v13;
    v126 = v21;
    v121 = v17;
    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v23 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v23 = &qword_2813C76F8;
    }

    v28 = *v23;
    v29 = *(*v23 + 512);
    v125 = *(*v23 + 520);
    v30 = v28[66];
    v31 = v28[67];
    v32 = v28[276];

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v30(v148, v32);

      v125 = LOBYTE(v148[0]);
    }

    else
    {
    }

    v139 = *(v140 + 16);
    v33 = v20 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
    v138 = *(v140 + 72);
    v132 = (v2 + 8);
    v140 += 16;
    v137 = (v140 - 8);
    v127 = MEMORY[0x277D84F90];
    v124 = v33;
    v34 = v126;
    v35 = v128;
    v36 = v136;
    do
    {
      v129 = v34;
      v139(v36, v33, v35);
      v37 = v133;
      sub_228138B2C();
      v38 = v36;
      v39 = v134;
      sub_228138ADC();
      v40 = sub_2280A00CC();
      v41 = v135;
      v131 = v40;
      v42 = sub_2281397EC();
      v43 = *v132;
      (*v132)(v39, v41);
      v130 = v43;
      v43(v37, v41);
      if (v42)
      {
        v136 = *v137;
        (v136)(v38, v35);
        v36 = v38;
      }

      else
      {
        v44 = sub_228138B6C();
        v46 = v45;
        v136 = *v137;
        (v136)(v38, v35);
        v36 = v38;
        if (v46)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_2281338C0(0, *(v127 + 2) + 1, 1, v127);
          }

          v48 = *(v127 + 2);
          v47 = *(v127 + 3);
          if (v48 >= v47 >> 1)
          {
            v127 = sub_2281338C0((v47 > 1), v48 + 1, 1, v127);
          }

          v49 = v127;
          *(v127 + 2) = v48 + 1;
          v50 = &v49[16 * v48];
          *(v50 + 4) = v44;
          *(v50 + 5) = v46;
          v35 = v128;
        }
      }

      v33 += v138;
      v34 = v129 - 1;
    }

    while (v129 != 1);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    v148[3] = v51;
    v117 = sub_2280E9DF8(&qword_2813C4670, &qword_27D81EB10, &unk_22813DB80);
    v148[4] = v117;
    v148[0] = v127;
    v127 = v51;
    if (v125)
    {
      v52 = __swift_project_boxed_opaque_existential_1(v148, v51);
      v53 = *(*(v51 - 1) + 64);
      MEMORY[0x28223BE20](v52, v52);
      v55 = (&v116 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v56 + 16))(v55);
      v57 = sub_2280E9840(*v55);
      v59 = v58;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C8, &qword_228141578);
      v146 = v60;
      v61 = sub_2280E9DF8(&qword_2813C4828, &qword_27D81F1C8, &qword_228141578);
      v147 = v61;
      v145[0] = v57;
      v145[1] = v59;
    }

    else
    {
      sub_2280E9D94(v148, v145);
      v60 = v146;
      v61 = v147;
    }

    v62 = v121;
    __swift_project_boxed_opaque_existential_1(v145, v60);
    v63 = *(v61 + 8);
    v118 = sub_227FDB420();
    v119 = sub_2281394BC();
    v120 = v64;
    v129 = MEMORY[0x277D84F90];
    v65 = v124;
    v66 = v126;
    v67 = v128;
    do
    {
      v139(v62, v65, v67);
      v68 = v133;
      sub_228138B2C();
      v69 = v134;
      sub_228138ADC();
      v70 = v135;
      v71 = sub_2281397EC();
      v72 = v69;
      v73 = v130;
      v130(v72, v70);
      v73(v68, v70);
      if (v71)
      {
        (v136)(v62, v67);
      }

      else
      {
        v74 = sub_228138B7C();
        v76 = v75;
        (v136)(v62, v67);
        if (v76)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_2281338C0(0, *(v129 + 2) + 1, 1, v129);
          }

          v78 = *(v129 + 2);
          v77 = *(v129 + 3);
          if (v78 >= v77 >> 1)
          {
            v129 = sub_2281338C0((v77 > 1), v78 + 1, 1, v129);
          }

          v79 = v129;
          *(v129 + 2) = v78 + 1;
          v80 = &v79[16 * v78];
          *(v80 + 4) = v74;
          *(v80 + 5) = v76;
          v67 = v128;
        }
      }

      v65 += v138;
      --v66;
    }

    while (v66);
    v81 = v127;
    v144[3] = v127;
    v144[4] = v117;
    v144[0] = v129;
    if (v125)
    {
      v82 = __swift_project_boxed_opaque_existential_1(v144, v127);
      v83 = *(*(v81 - 1) + 64);
      MEMORY[0x28223BE20](v82, v82);
      v85 = (&v116 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v86 + 16))(v85);
      v87 = sub_2280E9840(*v85);
      v89 = v88;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1C8, &qword_228141578);
      v142 = v90;
      v91 = sub_2280E9DF8(&qword_2813C4828, &qword_27D81F1C8, &qword_228141578);
      v143 = v91;
      v141[0] = v87;
      v141[1] = v89;
    }

    else
    {
      sub_2280E9D94(v144, v141);
      v90 = v142;
      v91 = v143;
    }

    v92 = v122;
    v93 = v126;
    __swift_project_boxed_opaque_existential_1(v141, v90);
    v94 = *(v91 + 8);
    v95 = sub_2281394BC();
    v135 = v96;
    v97 = MEMORY[0x277D84F90];
    v98 = v124;
    do
    {
      v100 = v98;
      v101 = v128;
      (v139)(v92);
      v102 = sub_228138B5C();
      v104 = v103;
      (v136)(v92, v101);
      if (v104)
      {
        v105 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2281338C0(0, *(v97 + 2) + 1, 1, v97);
        }

        v107 = *(v97 + 2);
        v106 = *(v97 + 3);
        if (v107 >= v106 >> 1)
        {
          v97 = sub_2281338C0((v106 > 1), v107 + 1, 1, v97);
        }

        *(v97 + 2) = v107 + 1;
        v99 = &v97[16 * v107];
        *(v99 + 4) = v102;
        *(v99 + 5) = v104;
        v93 = v105;
      }

      v98 = v100 + v138;
      --v93;
    }

    while (v93);
    v148[7] = v97;
    sub_2280E9DF8(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
    v108 = sub_22813925C();
    v110 = v109;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    *(inited + 32) = v119;
    *(inited + 16) = xmmword_22813B480;
    *(inited + 40) = v120;
    *(inited + 48) = v95;
    *(inited + 56) = v135;
    *(inited + 64) = v108;
    *(inited + 72) = v110;
    v26 = sub_228045C2C();
    v25 = v112;
    swift_setDeallocating();
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v141);
    __swift_destroy_boxed_opaque_existential_1(v144);
    __swift_destroy_boxed_opaque_existential_1(v145);
    __swift_destroy_boxed_opaque_existential_1(v148);
  }

  else
  {
    v24 = swift_allocObject();
    v25 = 10;
    *(v24 + 16) = 10;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    v26 = sub_227FF96D4(0, 0xD00000000000008ALL, 0x8000000228148630, 102, sub_2280E9F1C);
    sub_227FDB3CC();
    swift_allocError();
    *v27 = 10;
    *(v27 + 8) = v26;
    swift_willThrow();
  }

  v113 = v26;
  v114 = v25;
  result._object = v114;
  result._countAndFlagsBits = v113;
  return result;
}

uint64_t sub_2280E9840(uint64_t a1)
{
  v16 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F1D0, &qword_2281415E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v2 = sub_2280E9CCC();
    result = sub_228129EE8(a1, 0, 1, v2);
    if (*(a1 + 16) <= 0xFuLL)
    {

      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    sub_22812A758(v4, 0);
    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = (a1 + 32 + 16 * i);
        v10 = *v8;
        v9 = v8[1];
        v11 = *(v15 + 16);
        if (v11)
        {
          v12 = (v15 + 40);
          while (1)
          {
            v13 = *(v12 - 1) == v10 && *v12 == v9;
            if (v13 || (sub_2281399BC() & 1) != 0)
            {
              break;
            }

            v12 += 2;
            if (!--v11)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
LABEL_6:

          sub_228128810(v10, v9);
        }
      }

      v5 = v14;
    }

    return v5;
  }

  return result;
}

uint64_t sub_2280E9A28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280E9ABC;

  return SKUserNotificationThread.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280E9ABC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

id sub_2280E9BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22813927C();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_228136E2C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2280E9CD4(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2280E9D34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_2280E60EC(a1, *(v2 + 16), a2);
}

uint64_t sub_2280E9D54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2280E9D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280E9DF8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm_15()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280E9E80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280E9EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SummarizationSession.Configuration.init(modelBundleIdentifier:locale:handlesProactiveRequests:handlesSensitiveData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SummarizationSession.Configuration();
  v11 = v10[5];
  v12 = sub_22813716C();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  sub_227FC8614(a1, a5);
  sub_2280EA124(a2, a5 + v11);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v13 = SKAssetManager.init()();
  v14 = type metadata accessor for ClientSafetyConfiguration();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = (v17 + qword_2813C6C50);
  *v18 = 0xD000000000000019;
  v18[1] = 0x80000002281486C0;
  v19 = (v17 + qword_2813C6C58);
  *v19 = 0x7478746270;
  v19[1] = 0xE500000000000000;
  v20 = (v17 + qword_2813C6C48);
  *v20 = 0xD000000000000010;
  v20[1] = 0x8000000228143AB0;
  v21 = sub_227FE02B4(v13, 0, 0xD000000000000019, 0x80000002281486C0, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
  sub_2280EAA7C(a2, &qword_27D81E6A8, &qword_22813F930);
  result = sub_227FC8720(a1);
  *(a5 + v10[8]) = v21;
  return result;
}

uint64_t type metadata accessor for SummarizationSession.Configuration()
{
  result = qword_2813C8300;
  if (!qword_2813C8300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280EA124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2280EA1E0()
{
  type metadata accessor for ModelBundleIdentifier();
  if (v0 <= 0x3F)
  {
    sub_2280EA28C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClientSafetyConfiguration();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2280EA28C()
{
  if (!qword_2813C8750)
  {
    sub_22813716C();
    v0 = sub_22813977C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C8750);
    }
  }
}

uint64_t sub_2280EA2F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v31[-v7];
  v9 = type metadata accessor for ModelBundleIdentifier();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2813C7048 != -1)
  {
    v30 = v12;
    swift_once();
    v12 = v30;
  }

  v15 = __swift_project_value_buffer(v12, qword_2813C8B20);
  sub_227FC8614(v15, v14);
  v16 = sub_22813716C();
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);
  v18 = type metadata accessor for SummarizationSession.Configuration();
  v19 = v18[5];
  v17((a2 + v19), 1, 1, v16);
  sub_227FC8614(v14, a2);
  sub_2280EA124(v8, a2 + v19);
  *(a2 + v18[6]) = a1;
  *(a2 + v18[7]) = 1;
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v20 = SKAssetManager.init()();
  v21 = type metadata accessor for ClientSafetyConfiguration();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = (v24 + qword_2813C6C50);
  *v25 = 0xD000000000000019;
  v25[1] = 0x80000002281486C0;
  v26 = (v24 + qword_2813C6C58);
  *v26 = 0x7478746270;
  v26[1] = 0xE500000000000000;
  v27 = (v24 + qword_2813C6C48);
  *v27 = 0xD000000000000010;
  v27[1] = 0x8000000228143AB0;
  v28 = sub_227FE02B4(v20, 0, 0xD000000000000019, 0x80000002281486C0, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
  sub_2280EAA7C(v8, &qword_27D81E6A8, &qword_22813F930);
  result = sub_227FC8720(v14);
  *(a2 + v18[8]) = v28;
  return result;
}

uint64_t sub_2280EA5AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v21 - v9;
  v11 = sub_228138CCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_22810D23C(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2280EAA7C(v10, qword_27D81F1D8, &unk_228142EA0);
    v17 = swift_allocObject();
    *(v17 + 16) = 21;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF96D4(0, 0xD000000000000087, 0x80000002281486E0, 70, sub_2280EAADC);
    sub_227FDB3CC();
    swift_allocError();
    *v19 = 21;
    *(v19 + 8) = v18;
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    sub_2280EA7F4(v16, a3);
    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_2280EA7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v29[-v8];
  v10 = type metadata accessor for ModelBundleIdentifier();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_2280EAAE8(a1);
  if (!v2)
  {
    sub_2280FA9A8(v14);
    v16 = sub_22813716C();
    v17 = *(*(v16 - 8) + 56);
    v17(v9, 1, 1, v16);
    v18 = type metadata accessor for SummarizationSession.Configuration();
    v19 = v18[5];
    v17((a2 + v19), 1, 1, v16);
    sub_227FC8614(v14, a2);
    sub_2280EA124(v9, a2 + v19);
    *(a2 + v18[6]) = 0;
    *(a2 + v18[7]) = 0;
    type metadata accessor for SKAssetManager();
    swift_initStackObject();
    v20 = SKAssetManager.init()();
    v21 = type metadata accessor for ClientSafetyConfiguration();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    v25 = (v24 + qword_2813C6C50);
    *v25 = 0xD000000000000019;
    v25[1] = 0x80000002281486C0;
    v26 = (v24 + qword_2813C6C58);
    *v26 = 0x7478746270;
    v26[1] = 0xE500000000000000;
    v27 = (v24 + qword_2813C6C48);
    *v27 = 0xD000000000000010;
    v27[1] = 0x8000000228143AB0;
    v28 = sub_227FE02B4(v20, 0, 0xD000000000000019, 0x80000002281486C0, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
    sub_2280EAA7C(v9, &qword_27D81E6A8, &qword_22813F930);
    result = sub_227FC8720(v14);
    *(a2 + v18[8]) = v28;
  }

  return result;
}

uint64_t sub_2280EAA7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280EAAE8(uint64_t a1)
{
  v2 = sub_228138CCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v35 - v10;
  v12 = *(v3 + 16);
  v12(&v35 - v10, a1, v2);
  result = (*(v3 + 88))(v11, v2);
  if (result != *MEMORY[0x277D4B110] && result != *MEMORY[0x277D4B120] && result != *MEMORY[0x277D4B0C0] && result != *MEMORY[0x277D4B0B8] && result != *MEMORY[0x277D4B108] && result != *MEMORY[0x277D4B0E8])
  {
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v19 = sub_22813882C();
    __swift_project_value_buffer(v19, qword_2813C8A20);
    v12(v8, a1, v2);
    v20 = sub_22813880C();
    v21 = sub_2281396DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v37 = v22;
      v38 = swift_slowAlloc();
      v39 = v38;
      *v22 = 136315138;
      v36 = sub_228138CAC();
      v24 = v23;
      v25 = *(v3 + 8);
      v25(v8, v2);
      v26 = v25;
      v27 = sub_227FCC340(v36, v24, &v39);

      v28 = v37;
      *(v37 + 1) = v27;
      v29 = v28;
      _os_log_impl(&dword_227FC3000, v20, v21, "Unsupported use case identifier for on-demand text summarization: %s", v28, 0xCu);
      v30 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAB28A0](v30, -1, -1);
      v31 = v26;
      MEMORY[0x22AAB28A0](v29, -1, -1);
    }

    else
    {

      v31 = *(v3 + 8);
      v31(v8, v2);
    }

    v32 = swift_allocObject();
    *(v32 + 16) = 22;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    v33 = sub_227FF96D4(0, 0xD000000000000087, 0x80000002281486E0, 160, sub_2280EAEDC);
    sub_227FDB3CC();
    swift_allocError();
    *v34 = 22;
    *(v34 + 8) = v33;
    swift_willThrow();
    return (v31)(v11, v2);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280EAEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_228139AAC();
  sub_22813923C();
  v7 = sub_228139AEC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2281399BC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2280EAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_228139AAC();
  sub_22813923C();
  v7 = sub_228139AEC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2281399BC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2280EB0D0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v40 - v5;
  v7 = sub_2281370BC();
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v40 - v19;
  v21 = sub_22813701C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813710C();
  v27 = *(v22 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    sub_2280EB708(v20, &qword_27D81E328, &qword_2281402C0);
    goto LABEL_7;
  }

  (*(v22 + 32))(v26, v20, v21);
  if ((sub_2280EB56C(v26) & 1) == 0)
  {
    (*(v22 + 8))(v26, v21);
LABEL_7:
    sub_22813710C();
    if (v27(v17, 1, v21) == 1)
    {
      sub_2280EB708(v17, &qword_27D81E328, &qword_2281402C0);
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v30 = sub_228136FFC();
      v29 = v31;
      (*(v22 + 8))(v17, v21);
    }

    goto LABEL_11;
  }

  sub_22813712C();
  v28 = v42;
  if ((*(v43 + 48))(v6, 1, v42) == 1)
  {
    (*(v22 + 8))(v26, v21);
    sub_2280EB708(v6, &qword_27D81E320, &unk_22813A7D0);
    goto LABEL_7;
  }

  v32 = v43;
  v33 = v41;
  (*(v43 + 32))(v41, v6, v28);
  v46 = 0;
  v47 = 0xE000000000000000;
  v34 = v28;
  sub_2281398EC();
  MEMORY[0x22AAB1970](45, 0xE100000000000000);
  sub_2281398EC();
  v30 = v46;
  v29 = v47;
  (*(v32 + 8))(v33, v34);
  (*(v22 + 8))(v26, v21);
LABEL_11:
  v35 = v44;

  v36 = *v35;

  v37 = sub_2280EAEE0(v30, v29, v36);

  if (v37)
  {

    v30 = 0;
    v29 = 0;
  }

  else
  {

    sub_2280BD990(&v46, v30, v29);
  }

  v39 = v45;
  *v45 = v30;
  v39[1] = v29;
  return result;
}

uint64_t sub_2280EB56C(uint64_t a1)
{
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16 - v10;
  (*(v3 + 16))(&v16 - v10, a1, v2);
  sub_22813700C();
  sub_2280EB768();
  v12 = sub_22813926C();
  v13 = *(v3 + 8);
  v13(v8, v2);
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    sub_22813700C();
    v14 = sub_22813926C();
    v13(v8, v2);
  }

  v13(v11, v2);
  return v14 & 1;
}

uint64_t sub_2280EB708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2280EB768()
{
  result = qword_2813C8760;
  if (!qword_2813C8760)
  {
    sub_22813701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8760);
  }

  return result;
}

uint64_t sub_2280EB7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v34 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MajorityElement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v35 = &v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2, v17);
  v20 = &v30 - v19;
  v21 = *(v18 + 48);
  v33 = v10;
  v22 = *(v10 + 16);
  v22(&v30 - v19, v34, v9);
  v22(&v20[v21], a2, v9);
  v34 = v6;
  v23 = *(v6 + 48);
  if (v23(v20, 1, a3) == 1)
  {
    v24 = 1;
    if (v23(&v20[v21], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v22(v35, v20, v9);
    if (v23(&v20[v21], 1, a3) != 1)
    {
      v25 = v34;
      v26 = v31;
      (*(v34 + 32))(v31, &v20[v21], a3);
      v27 = v35;
      v24 = sub_22813926C();
      v28 = *(v25 + 8);
      v28(v26, a3);
      v28(v27, a3);
LABEL_8:
      v15 = v33;
      goto LABEL_9;
    }

    (*(v34 + 8))(v35, a3);
  }

  v24 = 0;
  v9 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v20, v9);
  return v24 & 1;
}

uint64_t sub_2280EBB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2280EBB84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2280EBD04(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t Com_Apple_Summarizationkit_Proto_ConfidenceBucket.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2280EC00C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280EC078(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F7528();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2280EC0C4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidenceRange.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0) + 24);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_BucketInfo.bucketNames.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_BucketInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = sub_227FE4410(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0) + 20);
  return sub_228137D6C();
}

void Com_Apple_Summarizationkit_Proto_ConfidencePair.bucket.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.bucket.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.range.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  sub_2280F7478(v1 + *(v8 + 24), v7, &qword_27D81EAC8, &qword_22813D908);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280F72D0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  }

  *a1 = 0;
  v11 = a1 + *(v9 + 24);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81EAC8, &qword_22813D908);
  }

  return result;
}

uint64_t sub_2280EC55C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  sub_2280F7478(a1 + *(v9 + 24), v8, &qword_27D81EAC8, &qword_22813D908);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280F72D0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  }

  *a2 = 0;
  v12 = a2 + *(v10 + 24);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2280F8A9C(v8, &qword_27D81EAC8, &qword_22813D908);
  }

  return result;
}

uint64_t sub_2280EC6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 24);
  sub_2280F8A9C(a2 + v10, &qword_27D81EAC8, &qword_22813D908);
  sub_2280F72D0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.range.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81EAC8, &qword_22813D908);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_ConfidencePair.range.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81EAC8, &qword_22813D908);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = v14 + *(v9 + 24);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81EAC8, &qword_22813D908);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  }

  return sub_2280ECAB0;
}

uint64_t sub_2280ECB68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280ECC04(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  v3 = a1 + *(v2 + 20);
  sub_228137D6C();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.bucketInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F7478(v1 + *(v8 + 24), v7, &qword_27D81F260, &unk_228141690);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280F72D0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  *a1 = sub_227FE4410(MEMORY[0x277D84F90]);
  v11 = a1 + *(v9 + 20);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81F260, &unk_228141690);
  }

  return result;
}

uint64_t sub_2280ECEF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F7478(a1 + *(v9 + 24), v8, &qword_27D81F260, &unk_228141690);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280F72D0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  *a2 = sub_227FE4410(MEMORY[0x277D84F90]);
  v12 = a2 + *(v10 + 20);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2280F8A9C(v8, &qword_27D81F260, &unk_228141690);
  }

  return result;
}

uint64_t sub_2280ED05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 24);
  sub_2280F8A9C(a2 + v10, &qword_27D81F260, &unk_228141690);
  sub_2280F72D0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.bucketInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81F260, &unk_228141690);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.bucketInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81F260, &unk_228141690);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = sub_227FE4410(MEMORY[0x277D84F90]);
    v17 = v14 + *(v9 + 20);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81F260, &unk_228141690);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  return sub_2280ED45C;
}

BOOL sub_2280ED4C0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = a3(0);
  sub_2280F7478(v4 + *(v14 + 24), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_2280F8A9C(v13, a1, a2);
  return v16;
}

uint64_t sub_2280ED5F8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_2280F8A9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.confidenceInfo.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(v1 + *(v8 + 28), v7, &qword_27D81F268, &qword_228142CB0);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280F72D0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = &a1[*(v9 + 20)];
  sub_228137D6C();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81F268, &qword_228142CB0);
  }

  return result;
}

uint64_t sub_2280ED928@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(a1 + *(v9 + 28), v8, &qword_27D81F268, &qword_228142CB0);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280F72D0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  }

  *a2 = MEMORY[0x277D84F90];
  v12 = &a2[*(v10 + 20)];
  sub_228137D6C();
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2280F8A9C(v8, &qword_27D81F268, &qword_228142CB0);
  }

  return result;
}

uint64_t sub_2280EDAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  sub_2280F8A9C(a2 + v10, &qword_27D81F268, &qword_228142CB0);
  sub_2280F72D0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.confidenceInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  sub_2280F8A9C(v1 + v3, &qword_27D81F268, &qword_228142CB0);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationConfig.confidenceInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81F268, &qword_228142CB0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = &v14[*(v9 + 20)];
    sub_228137D6C();
    v18 = *(v9 + 24);
    v19 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81F268, &qword_228142CB0);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  }

  return sub_2280EDF14;
}

BOOL Com_Apple_Summarizationkit_Proto_SKClassificationConfig.hasConfidenceInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(v0 + *(v6 + 28), v5, &qword_27D81F268, &qword_228142CB0);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_2280F8A9C(v5, &qword_27D81F268, &qword_228142CB0);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKClassificationConfig.clearConfidenceInfo()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  sub_2280F8A9C(v0 + v1, &qword_27D81F268, &qword_228142CB0);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.clientConfigList.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2280EE12C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280EE1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v3 = a1 + *(v2 + 24);
  sub_228137D6C();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.clientID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  sub_2280F7478(v1 + *(v8 + 24), v7, &qword_27D81E4B0, &qword_22813AB20);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280F72D0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v11 = a1 + *(v9 + 20);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_2280EE48C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  sub_2280F7478(a1 + *(v9 + 24), v8, &qword_27D81E4B0, &qword_22813AB20);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280F72D0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v12 = a2 + *(v10 + 20);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2280F8A9C(v8, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_2280EE5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 24);
  sub_2280F8A9C(a2 + v10, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280F72D0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.clientID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.clientID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81E4B0, &qword_22813AB20);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  return sub_2280EE9E8;
}

uint64_t sub_2280EEB54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  v5 = a1(0);
  v6 = &a3[*(v5 + 20)];
  sub_228137D6C();
  v7 = *(v5 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.useCaseID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(v1 + *(v8 + 20), v7, &qword_27D81E4A8, &unk_22813DE00);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280F72D0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v11 = a1 + *(v9 + 20);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280EED60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v9 + 20), v8, &qword_27D81E4A8, &unk_22813DE00);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280F72D0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v12 = a2 + *(v10 + 20);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2280F8A9C(v8, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280EEEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 20);
  sub_2280F8A9C(a2 + v10, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280F72D0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.useCaseID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 20);
  sub_2280F8A9C(v1 + v3, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.useCaseID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81E4A8, &unk_22813DE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81E4A8, &unk_22813DE00);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  return sub_2280EF2BC;
}

BOOL sub_2280EF320(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = a3(0);
  sub_2280F7478(v4 + *(v14 + 20), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_2280F8A9C(v13, a1, a2);
  return v16;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.safetyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(v1 + *(v8 + 24), v7, &qword_27D81EAB8, &qword_2281416A0);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280F72D0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  }

  sub_228137D6C();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81EAB8, &qword_2281416A0);
  }

  return result;
}

uint64_t sub_2280EF5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v9 + 24), v8, &qword_27D81EAB8, &qword_2281416A0);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280F72D0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  }

  sub_228137D6C();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2280F8A9C(v8, &qword_27D81EAB8, &qword_2281416A0);
  }

  return result;
}

uint64_t sub_2280EF78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 24);
  sub_2280F8A9C(a2 + v10, &qword_27D81EAB8, &qword_2281416A0);
  sub_2280F72D0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.safetyConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 24);
  sub_2280F8A9C(v1 + v3, &qword_27D81EAB8, &qword_2281416A0);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.init()@<X0>(uint64_t a1@<X8>)
{
  sub_228137D6C();
  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  v3 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.safetyConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 24);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81EAB8, &qword_2281416A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_228137D6C();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81EAB8, &qword_2281416A0);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  }

  return sub_2280EFC38;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.init()@<X0>(uint64_t a1@<X8>)
{
  sub_228137D6C();
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.langCheckConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F7478(v1 + *(v8 + 20), v7, &qword_27D81E998, &unk_228141680);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280F72D0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  v11 = a1 + *(v9 + 28);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2280F8A9C(v7, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_2280EFF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F7478(a1 + *(v9 + 20), v8, &qword_27D81E998, &unk_228141680);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280F72D0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  v12 = a2 + *(v10 + 28);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2280F8A9C(v8, &qword_27D81E998, &unk_228141680);
  }

  return result;
}

uint64_t sub_2280F00A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280F7338(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  sub_2280F8A9C(a2 + v10, &qword_27D81E998, &unk_228141680);
  sub_2280F72D0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.langCheckConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  sub_2280F8A9C(v1 + v3, &qword_27D81E998, &unk_228141680);
  sub_2280F72D0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.langCheckConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  *(v5 + 12) = v15;
  sub_2280F7478(v1 + v15, v8, &qword_27D81E998, &unk_228141680);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 12) = 0;
    v17 = v14 + *(v9 + 28);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2280F8A9C(v8, &qword_27D81E998, &unk_228141680);
    }
  }

  else
  {
    sub_2280F72D0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  }

  return sub_2280F04A8;
}

void sub_2280F04D0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_2280F7338(v11, v10, a5);
    sub_2280F8A9C(v14 + v9, a3, a4);
    sub_2280F72D0(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_2280F73A0(v11, a5);
  }

  else
  {
    sub_2280F8A9C(v14 + v9, a3, a4);
    sub_2280F72D0(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t sub_2280F0644(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_2280F8A9C(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_2280F06F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2280F0760(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2280F07EC()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5B20);
  __swift_project_value_buffer(v0, qword_2813C5B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813C6C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "today";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "within_24_hours";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "after_24_hours";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "no_event_time";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280F0A94()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5CC0);
  __swift_project_value_buffer(v0, qword_2813C5CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "low_threshold";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "high_threshold";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidenceRange.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_228137E3C();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidenceRange.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_228137F3C(), !v1))
  {
    if (!v0[1] || (result = sub_228137F3C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0) + 24);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_ConfidenceRange.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0) + 24);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F0EB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 24);
  return sub_228137D6C();
}

uint64_t (*sub_2280F0EF0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_106;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2280F0F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F338, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F0FE8(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F1054()
{
  sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);

  return sub_228137EDC();
}

uint64_t sub_2280F10D0(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F1208()
{
  sub_228137D3C();
  sub_228137D4C();
  return sub_228137DBC();
}

uint64_t Com_Apple_Summarizationkit_Proto_BucketInfo.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_228137D3C(), sub_228137D4C(), result = sub_228137EEC(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0) + 20);
    return sub_228137D5C();
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_BucketInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2280F5678(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0) + 20);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F1448@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = sub_227FE4410(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 20);
  return sub_228137D6C();
}

uint64_t (*sub_2280F14A4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_107;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2280F14FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F330, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F159C(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F1608()
{
  sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);

  return sub_228137EDC();
}

uint64_t sub_2280F1684(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2280F5678(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280F1748()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5D88);
  __swift_project_value_buffer(v0, qword_2813C5D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bucket";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2280F7528();
        sub_228137E1C();
      }

      else if (result == 2)
      {
        sub_2280F19F4();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F19F4()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 24);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_ConfidencePair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_2280F7528(), result = sub_228137F2C(), !v4))
  {
    result = sub_2280F1B74(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0) + 20);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t sub_2280F1B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  sub_2280F7478(a1 + *(v16 + 24), v9, &qword_27D81EAC8, &qword_22813D908);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2280F8A9C(v9, &qword_27D81EAC8, &qword_22813D908);
  }

  sub_2280F72D0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  sub_2280F74E0(&qword_2813C5CB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
  sub_228137F8C();
  return sub_2280F73A0(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
}

uint64_t sub_2280F1DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  sub_228137D6C();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*sub_2280F1E78(uint64_t a1, uint64_t a2))()
{
  result = nullsub_108;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2280F1ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F328, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F1F70(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F1FDC()
{
  sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);

  return sub_228137EDC();
}

uint64_t sub_2280F2078()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4ED8);
  __swift_project_value_buffer(v0, qword_2813C4ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confidence_pairs";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket_info";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
        sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair);
        sub_228137E8C();
      }

      else if (result == 2)
      {
        sub_2280F2364();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F2364()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 24);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0), sub_2280F74E0(&qword_2813C5D78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair), result = sub_228137F7C(), !v4))
  {
    result = sub_2280F2514(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0) + 20);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t sub_2280F2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F7478(a1 + *(v16 + 24), v9, &qword_27D81F260, &unk_228141690);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2280F8A9C(v9, &qword_27D81F260, &unk_228141690);
  }

  sub_2280F72D0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  sub_2280F74E0(&qword_2813C5FD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  sub_228137F8C();
  return sub_2280F73A0(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
}

uint64_t (*sub_2280F27A4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_109;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2280F27FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F320, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F289C(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F2908()
{
  sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);

  return sub_228137EDC();
}

uint64_t sub_2280F29A4()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C56F8);
  __swift_project_value_buffer(v0, qword_2813C56F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence_info";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "client_config_list";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
          sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
          sub_228137E8C();
          break;
        case 2:
          sub_2280F2CFC();
          break;
        case 1:
          sub_228137E4C();
          break;
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F2CFC()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 28);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_228137F4C(), !v4))
  {
    result = sub_2280F2ECC(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
        sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);
        sub_228137F7C();
      }

      v9 = v3 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0) + 24);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t sub_2280F2ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  sub_2280F7478(a1 + *(v16 + 28), v9, &qword_27D81F268, &qword_228142CB0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2280F8A9C(v9, &qword_27D81F268, &qword_228142CB0);
  }

  sub_2280F72D0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_2280F74E0(&qword_2813C4EC8, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_228137F8C();
  return sub_2280F73A0(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
}

uint64_t sub_2280F3128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 24);
  sub_228137D6C();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_2280F31D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280F3248(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280F32BC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_110;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2280F3314(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F318, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F33B4(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F3420()
{
  sub_2280F74E0(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F34BC()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4A98);
  __swift_project_value_buffer(v0, qword_2813C4A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "client_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "use_case_config_list";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2280F37A8();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
        sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280F37A8()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 24);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  sub_2280F74E0(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2280F3958(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
      sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);
      sub_228137F7C();
    }

    v8 = v5 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0) + 20);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280F3958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  sub_2280F7478(a1 + *(v16 + 24), v9, &qword_27D81E4B0, &qword_22813AB20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2280F8A9C(v9, &qword_27D81E4B0, &qword_22813AB20);
  }

  sub_2280F72D0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280F74E0(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228137F8C();
  return sub_2280F73A0(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
}

uint64_t sub_2280F3BCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  v6 = &a3[*(a1 + 20)];
  sub_228137D6C();
  v7 = *(a1 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_2280F3C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280F3CF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280F3D6C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_111;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2280F3DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F310, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F3E64(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F3ED0()
{
  sub_2280F74E0(&qword_2813C4A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F3F6C()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C4B60);
  __swift_project_value_buffer(v0, qword_2813C4B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case_id";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safety_config";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2280F41EC();
    }

    else if (result == 2)
    {
      sub_2280F42A0();
    }
  }

  return result;
}

uint64_t sub_2280F41EC()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 20);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  sub_2280F74E0(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return sub_228137E9C();
}

uint64_t sub_2280F42A0()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0) + 24);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280F43C4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2280F45D4(v3, a1, a2, a3);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280F43C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v16 + 20), v9, &qword_27D81E4A8, &unk_22813DE00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2280F8A9C(v9, &qword_27D81E4A8, &unk_22813DE00);
  }

  sub_2280F72D0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_2280F74E0(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228137F8C();
  return sub_2280F73A0(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
}

uint64_t sub_2280F45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  sub_2280F7478(a1 + *(v16 + 24), v9, &qword_27D81EAB8, &qword_2281416A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2280F8A9C(v9, &qword_27D81EAB8, &qword_2281416A0);
  }

  sub_2280F72D0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_228137F8C();
  return sub_2280F73A0(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
}

uint64_t sub_2280F4830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2280F4964(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F308, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F4A04(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F4A70()
{
  sub_2280F74E0(&qword_2813C4B50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F4B24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_228137FBC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22813A4B0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21888];
  v14 = sub_228137F9C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_228137FAC();
}

uint64_t sub_2280F4CB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2280F4D78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_228137DCC();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2280F4DFC()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  sub_2280F74E0(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280F4F08(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280F4F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  sub_2280F7478(a1 + *(v16 + 20), v9, &qword_27D81E998, &unk_228141680);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2280F8A9C(v9, &qword_27D81E998, &unk_228141680);
  }

  sub_2280F72D0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_2280F74E0(&qword_2813C5BE0, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
  sub_228137F8C();
  return sub_2280F73A0(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
}

uint64_t sub_2280F5164(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228139AAC();
  a1(0);
  sub_2280F74E0(a2, a3);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280F51EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228137D6C();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2280F5280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2280F52E8(uint64_t a1)
{
  v3 = sub_228137D7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2280F53A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280F74E0(&qword_27D81F300, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280F5444@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2280F54E0(uint64_t a1)
{
  v2 = sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280F554C()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280F55A4()
{
  sub_2280F74E0(&qword_2813C4DF8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);

  return sub_228137EDC();
}

uint64_t sub_2280F5620()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280F5678(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_22808C91C(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_2281399BC();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16SummarizationKit67Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v34 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = (&v32 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v32 - v18;
  v33 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig(0);
  v20 = *(v33 + 24);
  v21 = *(v15 + 56);
  v35 = a1;
  sub_2280F7478(a1 + v20, v19, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280F7478(a2 + v20, &v19[v21], &qword_27D81E4B0, &qword_22813AB20);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_2280F8A9C(v19, &qword_27D81E4B0, &qword_22813AB20);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_2280F7478(v19, v13, &qword_27D81E4B0, &qword_22813AB20);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_2280F73A0(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
LABEL_6:
    v23 = &qword_27D81EAA0;
    v24 = &unk_22813D8E0;
LABEL_7:
    sub_2280F8A9C(v19, v23, v24);
LABEL_16:
    v30 = 0;
    return v30 & 1;
  }

  v25 = v34;
  sub_2280F72D0(&v19[v21], v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v26 = *v13 == *v25 && v13[1] == v25[1];
  if (!v26 && (sub_2281399BC() & 1) == 0)
  {
    sub_2280F73A0(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    sub_2280F73A0(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
    v23 = &qword_27D81E4B0;
    v24 = &qword_22813AB20;
    goto LABEL_7;
  }

  v27 = *(v4 + 20);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  v28 = sub_22813926C();
  sub_2280F73A0(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280F73A0(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280F8A9C(v19, &qword_27D81E4B0, &qword_22813AB20);
  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((sub_228036E20(*v35, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = *(v33 + 20);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  v30 = sub_22813926C();
  return v30 & 1;
}

uint64_t _s16SummarizationKit62Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v55 = &v53 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC0, &qword_22813D900);
  v12 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58, v13);
  v61 = &v53 - v14;
  v15 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v56 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = (&v53 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v53 - v29;
  v57 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationUseCaseConfig(0);
  v31 = *(v57 + 20);
  v32 = *(v26 + 56);
  v62 = a1;
  sub_2280F7478(a1 + v31, v30, &qword_27D81E4A8, &unk_22813DE00);
  v33 = a2 + v31;
  v34 = a2;
  sub_2280F7478(v33, &v30[v32], &qword_27D81E4A8, &unk_22813DE00);
  v35 = *(v16 + 48);
  if (v35(v30, 1, v15) != 1)
  {
    sub_2280F7478(v30, v24, &qword_27D81E4A8, &unk_22813DE00);
    if (v35(&v30[v32], 1, v15) != 1)
    {
      v39 = v56;
      sub_2280F72D0(&v30[v32], v56, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      if (*v24 == *v39 && v24[1] == v39[1] || (sub_2281399BC() & 1) != 0)
      {
        v40 = *(v15 + 20);
        sub_228137D7C();
        sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
        v41 = sub_22813926C();
        sub_2280F73A0(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2280F73A0(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2280F8A9C(v30, &qword_27D81E4A8, &unk_22813DE00);
        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      sub_2280F73A0(v39, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_2280F73A0(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v36 = &qword_27D81E4A8;
      v37 = &unk_22813DE00;
LABEL_7:
      v38 = v30;
LABEL_18:
      sub_2280F8A9C(v38, v36, v37);
      goto LABEL_19;
    }

    sub_2280F73A0(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_6:
    v36 = &qword_27D81EAA8;
    v37 = &unk_2281425E0;
    goto LABEL_7;
  }

  if (v35(&v30[v32], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_2280F8A9C(v30, &qword_27D81E4A8, &unk_22813DE00);
LABEL_12:
  v42 = *(v57 + 24);
  v43 = *(v58 + 48);
  v44 = v61;
  sub_2280F7478(v62 + v42, v61, &qword_27D81EAB8, &qword_2281416A0);
  sub_2280F7478(v34 + v42, v44 + v43, &qword_27D81EAB8, &qword_2281416A0);
  v45 = v60;
  v46 = *(v59 + 48);
  if (v46(v44, 1, v60) == 1)
  {
    if (v46(v44 + v43, 1, v45) == 1)
    {
      sub_2280F8A9C(v44, &qword_27D81EAB8, &qword_2281416A0);
LABEL_22:
      sub_228137D7C();
      sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
      v48 = sub_22813926C();
      return v48 & 1;
    }

    goto LABEL_17;
  }

  v47 = v55;
  sub_2280F7478(v44, v55, &qword_27D81EAB8, &qword_2281416A0);
  if (v46(v44 + v43, 1, v45) == 1)
  {
    sub_2280F73A0(v47, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
LABEL_17:
    v36 = &qword_27D81EAC0;
    v37 = &qword_22813D900;
    v38 = v44;
    goto LABEL_18;
  }

  v50 = v44 + v43;
  v51 = v54;
  sub_2280F72D0(v50, v54, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  v52 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfigV2eeoiySbAC_ACtFZ_0(v47, v51);
  sub_2280F73A0(v51, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_2280F73A0(v47, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig);
  sub_2280F8A9C(v44, &qword_27D81EAB8, &qword_2281416A0);
  if (v52)
  {
    goto LABEL_22;
  }

LABEL_19:
  v48 = 0;
  return v48 & 1;
}

uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v30[0] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB0, &unk_22813D8F0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v30 - v18;
  v20 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig(0) + 20);
  v21 = *(v15 + 56);
  v30[1] = a1;
  sub_2280F7478(a1 + v20, v19, &qword_27D81E998, &unk_228141680);
  sub_2280F7478(a2 + v20, &v19[v21], &qword_27D81E998, &unk_228141680);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_2280F7478(v19, v13, &qword_27D81E998, &unk_228141680);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v26 = v30[0];
      sub_2280F72D0(&v19[v21], v30[0], type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      if ((sub_228037F4C(*v13, *v26) & 1) != 0 && v13[8] == *(v26 + 8) && *(v13 + 3) == *(v26 + 12))
      {
        v27 = *(v4 + 28);
        sub_228137D7C();
        sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
        v28 = sub_22813926C();
        sub_2280F73A0(v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_2280F73A0(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
        sub_2280F8A9C(v19, &qword_27D81E998, &unk_228141680);
        if (v28)
        {
          goto LABEL_4;
        }

LABEL_15:
        v23 = 0;
        return v23 & 1;
      }

      sub_2280F73A0(v26, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      sub_2280F73A0(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
      v24 = &qword_27D81E998;
      v25 = &unk_228141680;
LABEL_14:
      sub_2280F8A9C(v19, v24, v25);
      goto LABEL_15;
    }

    sub_2280F73A0(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig);
LABEL_7:
    v24 = &qword_27D81EAB0;
    v25 = &unk_22813D8F0;
    goto LABEL_14;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_2280F8A9C(v19, &qword_27D81E998, &unk_228141680);
LABEL_4:
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  v23 = sub_22813926C();
  return v23 & 1;
}

uint64_t _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (&v30 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F348, &qword_2281425F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v30 - v18;
  if ((sub_22803A234(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v31 = a2;
  v20 = *(v30 + 24);
  v21 = *(v15 + 48);
  sub_2280F7478(a1 + v20, v19, &qword_27D81F260, &unk_228141690);
  sub_2280F7478(v31 + v20, &v19[v21], &qword_27D81F260, &unk_228141690);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_2280F7478(v19, v14, &qword_27D81F260, &unk_228141690);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      sub_2280F72D0(&v19[v21], v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
      if (sub_2280F5678(*v14, *v9))
      {
        v28 = *(v4 + 20);
        sub_228137D7C();
        sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
        v29 = sub_22813926C();
        sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
        sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
        sub_2280F8A9C(v19, &qword_27D81F260, &unk_228141690);
        if (v29)
        {
          goto LABEL_5;
        }

LABEL_10:
        v24 = 0;
        return v24 & 1;
      }

      sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
      sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
      v25 = &qword_27D81F260;
      v26 = &unk_228141690;
LABEL_9:
      sub_2280F8A9C(v19, v25, v26);
      goto LABEL_10;
    }

    sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
LABEL_8:
    v25 = &qword_27D81F348;
    v26 = &qword_2281425F8;
    goto LABEL_9;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_2280F8A9C(v19, &qword_27D81F260, &unk_228141690);
LABEL_5:
  v23 = *(v30 + 20);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  v24 = sub_22813926C();
  return v24 & 1;
}

uint64_t _s16SummarizationKit55Com_Apple_Summarizationkit_Proto_SKClassificationConfigV2eeoiySbAC_ACtFZ_0(_DWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (&v29 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F340, &qword_2281425F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v29 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v20 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v21 = *(v20 + 28);
  v22 = a1;
  v23 = *(v15 + 48);
  v29 = v20;
  v30 = v22;
  sub_2280F7478(v22 + v21, v19, &qword_27D81F268, &qword_228142CB0);
  sub_2280F7478(a2 + v21, &v19[v23], &qword_27D81F268, &qword_228142CB0);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_2280F8A9C(v19, &qword_27D81F268, &qword_228142CB0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_2280F7478(v19, v14, &qword_27D81F268, &qword_228142CB0);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
LABEL_7:
    sub_2280F8A9C(v19, &qword_27D81F340, &qword_2281425F0);
LABEL_11:
    v27 = 0;
    return v27 & 1;
  }

  sub_2280F72D0(&v19[v23], v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  v25 = _s16SummarizationKit61Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfoV2eeoiySbAC_ACtFZ_0(v14, v9);
  sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
  sub_2280F8A9C(v19, &qword_27D81F268, &qword_228142CB0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_22803A894(*(v30 + 1), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = *(v29 + 24);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  v27 = sub_22813926C();
  return v27 & 1;
}

uint64_t _s16SummarizationKit47Com_Apple_Summarizationkit_Proto_ConfidencePairV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (v34 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAD0, &qword_22813D910);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v34 - v18;
  v20 = *a1;
  v21 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v20 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v20 != 3)
      {
        goto LABEL_27;
      }
    }

    else if (v21)
    {
      if (v20 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (v20)
    {
      goto LABEL_27;
    }
  }

  else if (v20 != v21)
  {
    goto LABEL_27;
  }

  v22 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidencePair(0);
  v23 = a1;
  v34[0] = v22;
  v34[1] = a1;
  v24 = *(v22 + 24);
  v25 = *(v15 + 48);
  sub_2280F7478(v23 + v24, v19, &qword_27D81EAC8, &qword_22813D908);
  sub_2280F7478(a2 + v24, &v19[v25], &qword_27D81EAC8, &qword_22813D908);
  v26 = *(v5 + 48);
  if (v26(v19, 1, v4) != 1)
  {
    sub_2280F7478(v19, v14, &qword_27D81EAC8, &qword_22813D908);
    if (v26(&v19[v25], 1, v4) == 1)
    {
      sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      goto LABEL_16;
    }

    sub_2280F72D0(&v19[v25], v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    if (*v14 != *v9 || v14[1] != v9[1])
    {
      sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
      v29 = &qword_27D81EAC8;
      v30 = &qword_22813D908;
      goto LABEL_26;
    }

    v31 = *(v4 + 24);
    sub_228137D7C();
    sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
    v32 = sub_22813926C();
    sub_2280F73A0(v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    sub_2280F73A0(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange);
    sub_2280F8A9C(v19, &qword_27D81EAC8, &qword_22813D908);
    if (v32)
    {
      goto LABEL_10;
    }

LABEL_27:
    v28 = 0;
    return v28 & 1;
  }

  if (v26(&v19[v25], 1, v4) != 1)
  {
LABEL_16:
    v29 = &qword_27D81EAD0;
    v30 = &qword_22813D910;
LABEL_26:
    sub_2280F8A9C(v19, v29, v30);
    goto LABEL_27;
  }

  sub_2280F8A9C(v19, &qword_27D81EAC8, &qword_22813D908);
LABEL_10:
  v27 = *(v34[0] + 20);
  sub_228137D7C();
  sub_2280F74E0(&qword_27D81E638, MEMORY[0x277D216C8]);
  v28 = sub_22813926C();
  return v28 & 1;
}

uint64_t sub_2280F72D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280F7338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280F73A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2280F7440(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280F7478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280F74E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2280F7528()
{
  result = qword_2813C5B10;
  if (!qword_2813C5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5B10);
  }

  return result;
}

unint64_t sub_2280F7580()
{
  result = qword_2813C5B08;
  if (!qword_2813C5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5B08);
  }

  return result;
}

unint64_t sub_2280F75D8()
{
  result = qword_2813C5AF8;
  if (!qword_2813C5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5AF8);
  }

  return result;
}

unint64_t sub_2280F7630()
{
  result = qword_27D81F2B0;
  if (!qword_27D81F2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81F2B8, &qword_2281416F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81F2B0);
  }

  return result;
}

unint64_t sub_2280F7698()
{
  result = qword_2813C5B00;
  if (!qword_2813C5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C5B00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_ConfidenceBucket(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Summarizationkit_Proto_ConfidenceBucket(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2280F803C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2280F805C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2280F80A0()
{
  result = sub_228137D7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2280F8130()
{
  sub_2280F81B4();
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280F81B4()
{
  if (!qword_2813C4708)
  {
    v0 = sub_2281391CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4708);
    }
  }
}

void sub_2280F823C()
{
  sub_228137D7C();
  if (v0 <= 0x3F)
  {
    sub_2280F8350(319, qword_2813C5C60, type metadata accessor for Com_Apple_Summarizationkit_Proto_ConfidenceRange, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280F8350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2280F83DC()
{
  sub_2280F8350(319, &qword_2813C4690, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationClientSafetyConfig, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      sub_2280F8350(319, qword_2813C4E78, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_228137D7C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_44Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = sub_228137D7C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_2280F87CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_2280F8350(319, a4, a5, MEMORY[0x277D83940]);
  if (v9 <= 0x3F)
  {
    sub_228137D7C();
    if (v10 <= 0x3F)
    {
      sub_2280F8350(319, a6, a7, MEMORY[0x277D83D88]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2280F88D8()
{
  sub_228137D7C();
  if (v0 <= 0x3F)
  {
    sub_2280F8350(319, qword_2813C5A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2280F8350(319, qword_2813C4DB0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationSafetyConfig, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2280F89E8()
{
  sub_228137D7C();
  if (v0 <= 0x3F)
  {
    sub_2280F8350(319, qword_2813C5B90, type metadata accessor for Com_Apple_Summarizationkit_Proto_LangCheckConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2280F8A9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280F8BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v74 = a3;
  v75 = a5;
  v76 = a4;
  v77 = a2;
  v79 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v73 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v70 - v13;
  v15 = type metadata accessor for ModelBundleIdentifier();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v70 - v22;
  v82 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v24 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v24 = &qword_2813C76F8;
  }

  v25 = *v24;
  sub_227FC8614(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227FC8720(v23);
      v27 = *(v25 + 1512);
      v28 = *(v25 + 1520);
      v72 = *(v25 + 1528);
      v29 = *(v25 + 1536);
      v30 = *(v25 + 1544);
      v31 = *(v25 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      v81 = byte_2813C4638;
      if (byte_2813C4638 == 1)
      {
        v29(&v83, v31);

        v72 = v84;
      }

      else
      {

        v83 = v28;
      }

      v47 = *(v25 + 1472);
      v48 = *(v25 + 1480);
      v49 = *(v25 + 1488);
      v50 = *(v25 + 1496);
      v51 = *(v25 + 2208);

      if (v81)
      {
        v49(&v83, v51);
      }

      v52 = *(v25 + 1560);
      v80 = *(v25 + 1568);
      v43 = *(v25 + 1576);
      v53 = *(v25 + 1584);
      v45 = *(v25 + 2208);

      v46 = [v82 processInfo];
      goto LABEL_29;
    }
  }

  else
  {
    sub_227FC8720(v23);
  }

  v32 = *(v25 + 1160);
  v33 = *(v25 + 1168);
  v72 = *(v25 + 1176);
  v34 = *(v25 + 1184);
  v35 = *(v25 + 1192);
  v36 = *(v25 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v81 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v34(&v83, v36);

    v72 = v84;
  }

  else
  {

    v83 = v33;
  }

  v37 = *(v25 + 1080);
  v38 = *(v25 + 1088);
  v39 = *(v25 + 1096);
  v40 = *(v25 + 1104);
  v41 = *(v25 + 2208);

  if (v81)
  {
    v39(&v83, v41);
  }

  v42 = *(v25 + 1208);
  v80 = *(v25 + 1216);
  v43 = *(v25 + 1224);
  v44 = *(v25 + 1232);
  v45 = *(v25 + 2208);

  v46 = [v82 processInfo];
LABEL_29:

  if (v81)
  {
    v43(&v83, v45);

    v80 = v83;
  }

  else
  {
  }

  sub_227FC8614(a1, v20);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v54 = 1;
  }

  else
  {
    sub_227FC8720(v20);
    if (v72)
    {
      sub_22813770C();
    }

    else
    {
      sub_2281376FC();
    }

    v54 = 0;
  }

  v55 = sub_22813771C();
  (*(*(v55 - 8) + 56))(v14, v54, 1, v55);
  v56 = *(v25 + 1248);
  v57 = *(v25 + 1256);
  v58 = *(v25 + 1264);
  v59 = *(v25 + 1272);
  v60 = *(v25 + 1280);
  v61 = *(v25 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v78 = a1;
  v71 = v14;
  if (v81)
  {
    v59(&v83, v61);
  }

  v62 = *(v25 + 1296);
  v63 = *(v25 + 1304);
  v64 = *(v25 + 1312);
  v65 = *(v25 + 1320);
  v66 = *(v25 + 1328);
  v67 = *(v25 + 2208);

  if (v81)
  {
    v65(&v83, v67);
  }

  v68 = v71;
  sub_2280A61CC(v71, v73);
  sub_2281377AC();
  sub_22813778C();
  sub_22813772C();
  sub_22813775C();

  sub_227FC8720(v78);
  return sub_2280F9448(v68);
}

uint64_t sub_2280F9448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2280F94B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v86 = a1;
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v77 = &v73 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v75 = *(v76 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v8);
  v74 = &v73 - v9;
  v84 = type metadata accessor for ModelBundleIdentifier();
  v10 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84, v11);
  v85 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22813797C();
  v93 = *(v13 - 8);
  v94 = v13;
  v14 = *(v93 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v97 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22813794C();
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = *(v91 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v88 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22813795C();
  v89 = *(v21 - 8);
  v90 = v21;
  v22 = *(v89 + 64);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v80 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v96 = &v73 - v27;
  v28 = sub_22813713C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v73 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v39 - 8, v41);
  v81 = &v73 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v47 = &v73 - v46;
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v73 - v49;
  sub_22813790C();
  v51 = sub_22813716C();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v38, 1, v51) == 1)
  {
    sub_2280FB6F0(v38, &qword_27D81E6A8, &qword_22813F930);
    v53 = sub_22813701C();
    (*(*(v53 - 8) + 56))(v50, 1, 1, v53);
  }

  else
  {
    sub_22813715C();
    (*(v52 + 8))(v38, v51);
    sub_22813710C();
    (*(v29 + 8))(v33, v28);
  }

  v82 = v50;
  sub_22800C790(v50, v47);
  v54 = sub_22813701C();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v47, 1, v54);
  v58 = v89;
  v57 = v90;
  v59 = v88;
  v60 = v96;
  if (v56 == 1)
  {
    sub_2280FB6F0(v47, &qword_27D81E328, &qword_2281402C0);
    v61 = MEMORY[0x277D0E2D8];
  }

  else
  {
    (*(v55 + 32))(v96, v47, v54);
    v61 = MEMORY[0x277D0E2C0];
  }

  (*(v58 + 104))(v60, *v61, v57);
  (*(v58 + 16))(v80, v60, v57);

  sub_22813792C();
  sub_22813796C();
  v62 = v85;
  sub_227FC8614(v87, v85);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v64 = v77;
      v65 = v78;
      v66 = v79;
      (*(v78 + 32))(v77, v62, v79);
      sub_22813746C();
      v67 = v66;
      v60 = v96;
      (*(v65 + 8))(v64, v67);
    }
  }

  else
  {
    v68 = v75;
    v69 = v74;
    v70 = v76;
    (*(v75 + 32))(v74, v62, v76);
    sub_22813746C();
    (*(v68 + 8))(v69, v70);
  }

  v71 = v82;
  sub_22800C790(v82, v81);
  sub_2281373CC();
  (*(v93 + 8))(v97, v94);
  (*(v91 + 8))(v59, v92);
  (*(v58 + 8))(v60, v57);
  return sub_2280FB6F0(v71, &qword_27D81E328, &qword_2281402C0);
}

unint64_t ModelBundleIdentifier.loggingDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for ModelBundleIdentifier();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v36 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v36 - v24;
  sub_227FC8614(v1, &v36 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = 0x63697665446E6F2ELL;
    v39 = 0xEA00000000002865;
    sub_227FC8614(v1, v22);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29)
    {
      if (v29 != 1)
      {
        v32 = 0x8000000228144A90;
        v30 = 0xD000000000000045;
        goto LABEL_16;
      }

      v28 = v37;
      (*(v37 + 32))(v6, v22, v2);
LABEL_9:
      v30 = sub_22813746C();
      v32 = v31;
      (*(v28 + 8))(v6, v2);
LABEL_16:
      MEMORY[0x22AAB1970](v30, v32);

      MEMORY[0x22AAB1970](41, 0xE100000000000000);
      v33 = v38;
      sub_227FC8720(v25);
      return v33;
    }

    (*(v8 + 32))(v12, v22, v7);
LABEL_13:
    v30 = sub_22813746C();
    v32 = v34;
    (*(v8 + 8))(v12, v7);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22813988C();

    v38 = 0xD000000000000015;
    v39 = 0x8000000228148A60;
    sub_227FC8614(v1, v18);
    v27 = swift_getEnumCaseMultiPayload();
    if (v27)
    {
      if (v27 != 1)
      {
        v32 = 0x8000000228144A90;
        v30 = 0xD000000000000045;
        goto LABEL_16;
      }

      v28 = v37;
      (*(v37 + 32))(v6, v18, v2);
      goto LABEL_9;
    }

    (*(v8 + 32))(v12, v18, v7);
    goto LABEL_13;
  }

  return 0xD000000000000015;
}

uint64_t sub_2280FA100(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ModelBundleIdentifier();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280FA194, 0, 0);
}

uint64_t sub_2280FA194()
{
  v1 = v0[10];
  sub_227FC8614(v0[9], v0[11]);
  if (swift_getEnumCaseMultiPayload() > 1)
  {

    v6 = v0[1];

    return v6(0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v2 = v0[8];
    sub_227FC8720(v0[11]);
    v3 = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v4 = *(MEMORY[0x277D71A10] + 4);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_2280FA2A4;

    return MEMORY[0x2821D9808]();
  }
}

uint64_t sub_2280FA2A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v6 = *(v3 + 88);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280FA3F4, 0, 0);
  }
}

uint64_t sub_2280FA3F4()
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    v1 = qword_27D81E2A0;
    v2 = &off_27D81EDB0;
  }

  else
  {
    v1 = qword_2813C76F0;
    v2 = &qword_2813C76F8;
  }

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v4 = v0[9];
  v5 = *v2;

  v6 = sub_22808EED0(v4);
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF30, &unk_2281426D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = v6;
  *(inited + 40) = v8 & 1;
  v10 = sub_2280FAC9C(v3, inited);
  swift_setDeallocating();
  v11 = v0[11];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_2280FA5A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280FA634;

  return sub_2280FA100(a1);
}

uint64_t sub_2280FA634(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280FA768, 0, 0);
  }
}

uint64_t sub_2280FA768()
{
  v14 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 != 1)
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
    goto LABEL_9;
  }

  if (qword_27D81E2A0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = &off_27D81EDB0;
LABEL_9:
    v3 = *(*v2 + 1720);
    v4 = *(*v2 + 1728);
    v5 = *(*v2 + 1736);
    v6 = *(*v2 + 1744);
    v7 = *(*v2 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v1 = v6;
      v5(&v13, v7);

      v4 = v13;
    }

    else
    {
    }

    v8 = *(v0 + 24);
    v9 = __OFSUB__(v8, v4);
    v10 = v8 - v4;
    if (!v9)
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v11 = *(v0 + 8);

  return v11(v10 & ~(v10 >> 63));
}

uint64_t sub_2280FA9A8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_22813797C();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v25, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22813795C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22813794C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22813A4B0;
  *(v18 + 32) = sub_228138CAC();
  *(v18 + 40) = v19;
  (*(v7 + 104))(v11, *MEMORY[0x277D0E2D8], v6);
  sub_22813793C();
  sub_22813796C();
  if (sub_228095094())
  {
    if (qword_2813C7040 != -1)
    {
      swift_once();
    }

    v20 = qword_27D81F368;
  }

  else
  {
    if (qword_27D81E2B0 != -1)
    {
      swift_once();
    }

    v20 = qword_27D81F350;
  }

  v21 = type metadata accessor for ModelBundleIdentifier();
  v22 = __swift_project_value_buffer(v21, v20);
  sub_227FC8614(v22, v24);
  (*(v1 + 8))(v5, v25);
  return (*(v13 + 8))(v17, v12);
}

int64_t sub_2280FAC9C(int64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    v5 = MEMORY[0x277D84F90];
    do
    {
      if ((*v4 & 1) == 0)
      {
        v6 = *(v4 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_228133CCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v8 = *(v5 + 2);
        v7 = *(v5 + 3);
        if (v8 >= v7 >> 1)
        {
          v5 = sub_228133CCC((v7 > 1), v8 + 1, 1, v5);
        }

        *(v5 + 2) = v8 + 1;
        *&v5[8 * v8 + 32] = v6;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v9 = *(v5 + 2);
  if (v9)
  {
    if (v9 > 3)
    {
      v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      v11 = vdupq_n_s64(a1);
      v12 = (v5 + 48);
      v13 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      v14 = v11;
      do
      {
        v11 = vbslq_s8(vcgtq_s64(v12[-1], v11), v11, v12[-1]);
        v14 = vbslq_s8(vcgtq_s64(*v12, v14), v14, *v12);
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      v15 = vbslq_s8(vcgtq_s64(v14, v11), v11, v14);
      v16 = vextq_s8(v15, v15, 8uLL).u64[0];
      a1 = vbsl_s8(vcgtd_s64(v16, v15.i64[0]), *v15.i8, v16);
      if (v9 == v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
    }

    v17 = v9 - v10;
    v18 = &v5[8 * v10 + 32];
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (a1 >= v20)
      {
        a1 = v19;
      }

      --v17;
    }

    while (v17);
  }

LABEL_21:

  return a1;
}

uint64_t ModelBundleIdentifier.hashValue.getter()
{
  sub_228139AAC();
  ModelBundleIdentifier.hash(into:)();
  return sub_228139AEC();
}

uint64_t sub_2280FAE4C()
{
  sub_228139AAC();
  ModelBundleIdentifier.hash(into:)();
  return sub_228139AEC();
}

uint64_t sub_2280FAE90()
{
  sub_228139AAC();
  ModelBundleIdentifier.hash(into:)();
  return sub_228139AEC();
}

uint64_t sub_2280FAFAC(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = type metadata accessor for ModelBundleIdentifier();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  a3();

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ModelBundleIdentifier();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED88, &unk_22813EC08);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  sub_227FC8614(a1, &v38 - v27);
  sub_227FC8614(a2, &v28[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v41;
    sub_227FC8614(v28, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v35 + 32))(v13, &v28[v29], v9);
      sub_22813742C();
      sub_2280FB6A8(&qword_2813C8748, MEMORY[0x277D29B48]);
      v33 = sub_22813745C();
      v36 = *(v35 + 8);
      v36(v13, v9);
      v36(v22, v9);
      goto LABEL_12;
    }

    (*(v35 + 8))(v22, v9);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_227FC8614(v28, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v39;
      v31 = v40;
      (*(v39 + 32))(v8, &v28[v29], v40);
      sub_2281374CC();
      sub_2280FB6A8(&qword_2813C8728, MEMORY[0x277D29CE0]);
      v33 = sub_22813745C();
      v34 = *(v32 + 8);
      v34(v8, v31);
      v34(v19, v31);
LABEL_12:
      sub_227FC8720(v28);
      return v33 & 1;
    }

    (*(v39 + 8))(v19, v40);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_2280FB6F0(v28, &qword_27D81ED88, &unk_22813EC08);
    v33 = 0;
    return v33 & 1;
  }

  sub_227FC8720(v28);
  v33 = 1;
  return v33 & 1;
}

void sub_2280FB50C()
{
  sub_2280FB580();
  if (v0 <= 0x3F)
  {
    sub_2280FB614();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2280FB580()
{
  if (!qword_2813C8738)
  {
    sub_22813742C();
    sub_2280FB6A8(&qword_2813C8748, MEMORY[0x277D29B48]);
    v0 = sub_22813747C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C8738);
    }
  }
}

void sub_2280FB614()
{
  if (!qword_2813C8730)
  {
    sub_2281374CC();
    sub_2280FB6A8(&qword_2813C8728, MEMORY[0x277D29CE0]);
    v0 = sub_22813747C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C8730);
    }
  }
}

uint64_t sub_2280FB6A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2280FB6F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.hasClientID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(v0 + *(v6 + 28), v5, &qword_27D81E4B0, &qword_22813AB20);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_2281001F0(v5, &qword_27D81E4B0, &qword_22813AB20);
  return v8;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clientID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(v1 + *(v8 + 28), v7, &qword_27D81E4B0, &qword_22813AB20);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280FBCA0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v11 = a1 + *(v9 + 20);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2281001F0(v7, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

BOOL Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.hasUseCaseID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(v0 + *(v6 + 24), v5, &qword_27D81E4A8, &unk_22813DE00);
  v7 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_2281001F0(v5, &qword_27D81E4A8, &unk_22813DE00);
  return v8;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.useCaseID.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(v1 + *(v8 + 24), v7, &qword_27D81E4A8, &unk_22813DE00);
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2280FBCA0(v7, a1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v11 = a1 + *(v9 + 20);
  sub_228137D6C();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2281001F0(v7, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280FBC38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280FBCA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280FBD08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(a1 + *(v9 + 24), v8, &qword_27D81E4A8, &unk_22813DE00);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280FBCA0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v12 = a2 + *(v10 + 20);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2281001F0(v8, &qword_27D81E4A8, &unk_22813DE00);
  }

  return result;
}

uint64_t sub_2280FBE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280FCC1C(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  sub_2281001F0(a2 + v10, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280FBCA0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.useCaseID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  sub_2281001F0(v1 + v3, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280FBCA0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.useCaseID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  *(v5 + 12) = v15;
  sub_2280FBC38(v1 + v15, v8, &qword_27D81E4A8, &unk_22813DE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2281001F0(v8, &qword_27D81E4A8, &unk_22813DE00);
    }
  }

  else
  {
    sub_2280FBCA0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  }

  return sub_2280FC270;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.clearUseCaseID()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  sub_2281001F0(v0 + v1, &qword_27D81E4A8, &unk_22813DE00);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  v3 = &a1[*(v2 + 20)];
  sub_228137D6C();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_2280FC53C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(a1 + *(v9 + 28), v8, &qword_27D81E4B0, &qword_22813AB20);
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2280FBCA0(v8, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v12 = a2 + *(v10 + 20);
  sub_228137D6C();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2281001F0(v8, &qword_27D81E4B0, &qword_22813AB20);
  }

  return result;
}

uint64_t sub_2280FC6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280FCC1C(a1, v9, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v10 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  sub_2281001F0(a2 + v10, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280FBCA0(v9, a2 + v10, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clientID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  sub_2281001F0(v1 + v3, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280FBCA0(a1, v1 + v3, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clientID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  *(v5 + 12) = v15;
  sub_2280FBC38(v1 + v15, v8, &qword_27D81E4B0, &qword_22813AB20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    sub_228137D6C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_2281001F0(v8, &qword_27D81E4B0, &qword_22813AB20);
    }
  }

  else
  {
    sub_2280FBCA0(v8, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  }

  return sub_2280FCAA4;
}

void sub_2280FCAE0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_2280FCC1C(v12, v11, a6);
    sub_2281001F0(v15 + v10, a3, a4);
    sub_2280FBCA0(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_2280FCC84(v12, a6);
  }

  else
  {
    sub_2281001F0(v15 + v10, a3, a4);
    sub_2280FBCA0(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t sub_2280FCC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280FCC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.clearClientID()()
{
  v1 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  sub_2281001F0(v0 + v1, &qword_27D81E4B0, &qword_22813AB20);
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.useCases.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  v3 = a1 + *(v2 + 24);
  sub_228137D6C();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2280FD100(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0) + 28);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0) + 28);
  return sub_228137D6C();
}

uint64_t sub_2280FD264()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5888);
  __swift_project_value_buffer(v0, qword_2813C5888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case_id";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_off";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2280FD4E0();
    }

    else if (result == 2)
    {
      sub_228137E0C();
    }
  }

  return result;
}

uint64_t sub_2280FD4E0()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 24);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  sub_2280FF69C(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280FD638(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_228137F1C();
    }

    v6 = &v3[*(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0) + 20)];
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280FD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  sub_2280FBC38(a1 + *(v16 + 24), v9, &qword_27D81E4A8, &unk_22813DE00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2281001F0(v9, &qword_27D81E4A8, &unk_22813DE00);
  }

  sub_2280FBCA0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_2280FF69C(&qword_2813C5AD0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
  sub_228137F8C();
  return sub_2280FCC84(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
}

uint64_t sub_2280FD8A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_228137D6C();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_2280FD940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280FD9B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280FDA28(uint64_t a1, uint64_t a2))()
{
  result = nullsub_125;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2280FDA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280FF69C(&qword_27D81F3C8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280FDB20(uint64_t a1)
{
  v2 = sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280FDB8C()
{
  sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);

  return sub_228137EDC();
}

uint64_t sub_2280FDC28()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5950);
  __swift_project_value_buffer(v0, qword_2813C5950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "client_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "all_stop";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "use_cases";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
          sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
          sub_228137E8C();
          break;
        case 2:
          sub_228137E0C();
          break;
        case 1:
          sub_2280FDF80();
          break;
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_2280FDF80()
{
  v0 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 28);
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  sub_2280FF69C(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  return sub_228137E9C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2280FE158(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_228137F1C();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
      sub_2280FF69C(&qword_2813C5878, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch);
      sub_228137F7C();
    }

    v6 = v3 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0) + 24);
    return sub_228137D5C();
  }

  return result;
}

uint64_t sub_2280FE158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  sub_2280FBC38(a1 + *(v16 + 28), v9, &qword_27D81E4B0, &qword_22813AB20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2281001F0(v9, &qword_27D81E4B0, &qword_22813AB20);
  }

  sub_2280FBCA0(v9, v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_2280FF69C(&qword_2813C5F08, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
  sub_228137F8C();
  return sub_2280FCC84(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
}

uint64_t sub_2280FE3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 24);
  sub_228137D6C();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_2280FE46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280FE4E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280FE554(uint64_t a1, uint64_t a2))()
{
  result = nullsub_126;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2280FE5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280FF69C(&qword_27D81F3C0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280FE64C(uint64_t a1)
{
  v2 = sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280FE6B8()
{
  sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);

  return sub_228137EDC();
}

uint64_t sub_2280FE754()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C51F0);
  __swift_project_value_buffer(v0, qword_2813C51F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B480;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_switches";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "block_unconfigured_client";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_228137FAC();
}

uint64_t sub_2280FE98C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_228137E0C();
          break;
        case 2:
          type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
          sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch);
          sub_228137E8C();
          break;
        case 1:
          sub_228137E4C();
          break;
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_228137F4C(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0), sub_2280FF69C(&qword_2813C5940, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch), result = sub_228137F7C(), !v1))
    {
      if (*(v0 + 16) != 1 || (result = sub_228137F1C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0) + 28);
        return sub_228137D5C();
      }
    }
  }

  return result;
}

uint64_t sub_2280FECC0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228139AAC();
  a1(0);
  sub_2280FF69C(a2, a3);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280FED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_228137D6C();
}

uint64_t sub_2280FED98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280FEE0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280FEE80(uint64_t a1, uint64_t a2))()
{
  result = nullsub_127;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_2280FEED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2280FF69C(&qword_27D81F3B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280FEF78@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2280FF014(uint64_t a1)
{
  v2 = sub_2280FF69C(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280FF080()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280FF0D8()
{
  sub_2280FF69C(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return sub_228137EDC();
}

uint64_t sub_2280FF154()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_228039B54(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0) + 28);
  sub_228137D7C();
  sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t _s16SummarizationKit54Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitchV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v34 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = (&v32 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA8, &unk_2281425E0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v32 - v18;
  v33 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch(0);
  v20 = *(v33 + 24);
  v21 = *(v15 + 56);
  v35 = a1;
  sub_2280FBC38(&a1[v20], v19, &qword_27D81E4A8, &unk_22813DE00);
  sub_2280FBC38(&a2[v20], &v19[v21], &qword_27D81E4A8, &unk_22813DE00);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_2280FBC38(v19, v13, &qword_27D81E4A8, &unk_22813DE00);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v25 = v34;
      sub_2280FBCA0(&v19[v21], v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v26 = *v13 == *v25 && v13[1] == v25[1];
      if (v26 || (sub_2281399BC() & 1) != 0)
      {
        v27 = *(v4 + 20);
        sub_228137D7C();
        sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8]);
        v28 = sub_22813926C();
        sub_2280FCC84(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2280FCC84(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
        sub_2281001F0(v19, &qword_27D81E4A8, &unk_22813DE00);
        if ((v28 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      sub_2280FCC84(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      sub_2280FCC84(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
      v23 = &qword_27D81E4A8;
      v24 = &unk_22813DE00;
LABEL_7:
      sub_2281001F0(v19, v23, v24);
      goto LABEL_15;
    }

    sub_2280FCC84(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
LABEL_6:
    v23 = &qword_27D81EAA8;
    v24 = &unk_2281425E0;
    goto LABEL_7;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2281001F0(v19, &qword_27D81E4A8, &unk_22813DE00);
LABEL_14:
  if (*v35 == *a2)
  {
    v31 = *(v33 + 20);
    sub_228137D7C();
    sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8]);
    v29 = sub_22813926C();
    return v29 & 1;
  }

LABEL_15:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_2280FF69C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s16SummarizationKit53Com_Apple_Summarizationkit_Proto_SKSingleClientSwitchV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v34 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = (&v32 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAA0, &unk_22813D8E0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v32 - v18;
  v33 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch(0);
  v20 = *(v33 + 28);
  v21 = *(v15 + 56);
  v35 = a1;
  sub_2280FBC38(&a1[v20], v19, &qword_27D81E4B0, &qword_22813AB20);
  sub_2280FBC38(&a2[v20], &v19[v21], &qword_27D81E4B0, &qword_22813AB20);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_2280FBC38(v19, v13, &qword_27D81E4B0, &qword_22813AB20);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v25 = v34;
      sub_2280FBCA0(&v19[v21], v34, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v26 = *v13 == *v25 && v13[1] == v25[1];
      if (v26 || (sub_2281399BC() & 1) != 0)
      {
        v27 = *(v4 + 20);
        sub_228137D7C();
        sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8]);
        v28 = sub_22813926C();
        sub_2280FCC84(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        sub_2280FCC84(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        sub_2281001F0(v19, &qword_27D81E4B0, &qword_22813AB20);
        if (v28)
        {
          goto LABEL_14;
        }

LABEL_17:
        v30 = 0;
        return v30 & 1;
      }

      sub_2280FCC84(v25, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      sub_2280FCC84(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
      v23 = &qword_27D81E4B0;
      v24 = &qword_22813AB20;
LABEL_7:
      sub_2281001F0(v19, v23, v24);
      goto LABEL_17;
    }

    sub_2280FCC84(v13, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
LABEL_6:
    v23 = &qword_27D81EAA0;
    v24 = &unk_22813D8E0;
    goto LABEL_7;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2281001F0(v19, &qword_27D81E4B0, &qword_22813AB20);
LABEL_14:
  if (*v35 != *a2 || (sub_22803BD78(*(v35 + 1), *(a2 + 1)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = *(v33 + 24);
  sub_228137D7C();
  sub_2280FF69C(&qword_27D81E638, MEMORY[0x277D216C8]);
  v30 = sub_22813926C();
  return v30 & 1;
}

void sub_2280FFEA0()
{
  sub_228137D7C();
  if (v0 <= 0x3F)
  {
    sub_228100098(319, qword_2813C5A88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280FFF8C()
{
  sub_228100098(319, &qword_2813C46B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseSwitch, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      sub_228100098(319, qword_2813C5EC0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_228100098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228100124()
{
  sub_228100098(319, &qword_2813C46C0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKSingleClientSwitch, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2281001F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228100294(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v47 - v19;
  v49 = v1;
  sub_22813710C();
  v21 = sub_22813701C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) == 1)
  {
    sub_228102DB0(v20, &qword_27D81E328, &qword_2281402C0);
LABEL_26:
    v34 = 0;
    return v34 & 1;
  }

  v47[0] = v11;
  v48 = v8;
  v24 = sub_228136FFC();
  v25 = a1;
  v27 = v26;
  v28 = *(v22 + 8);
  v28(v20, v21);
  v47[1] = v25;
  sub_22813710C();
  if (v23(v17, 1, v21) == 1)
  {

    sub_228102DB0(v17, &qword_27D81E328, &qword_2281402C0);
    goto LABEL_26;
  }

  v29 = sub_228136FFC();
  v31 = v30;
  v28(v17, v21);
  if (v24 == v29 && v27 == v31)
  {

    v35 = v48;
  }

  else
  {
    v33 = sub_2281399BC();

    v34 = 0;
    v35 = v48;
    if ((v33 & 1) == 0)
    {
      return v34 & 1;
    }
  }

  v36 = v47[0];
  sub_22813712C();
  v37 = sub_2281370BC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    sub_228102DB0(v36, &qword_27D81E320, &unk_22813A7D0);
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = sub_228136FFC();
    v41 = v42;
    (*(v38 + 8))(v36, v37);
  }

  sub_22813712C();
  if (v39(v35, 1, v37) == 1)
  {
    sub_228102DB0(v35, &qword_27D81E320, &unk_22813A7D0);
    if (!v41)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v43 = sub_228136FFC();
  v45 = v44;
  (*(v38 + 8))(v35, v37);
  if (!v41)
  {
    if (!v45)
    {
LABEL_28:
      v34 = 1;
      return v34 & 1;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (!v45)
  {
    goto LABEL_25;
  }

  if (v40 == v43 && v41 == v45)
  {

    v34 = 1;
  }

  else
  {
    v34 = sub_2281399BC();
  }

  return v34 & 1;
}

uint64_t sub_2281006F8(char *a1)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v69 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v63 - v25;
  v27 = sub_22813713C();
  v78 = *(v27 - 8);
  v28 = *(v78 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C86B0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v32 = off_2813C86B8;
  v77 = *(off_2813C86B8 + 2);
  if (v77)
  {
    v65 = v18;
    v66 = v15;
    v63 = v6;
    v64 = v9;
    v33 = 0;
    v75 = off_2813C86B8 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v73 = off_2813C86B8;
    v74 = v78 + 16;
    v76 = (v78 + 8);
    v68 = v27;
    v70 = v26;
    v71 = v31;
    while (1)
    {
      if (v33 >= v32[2])
      {
        __break(1u);
        goto LABEL_45;
      }

      (*(v78 + 16))(v31, &v75[*(v78 + 72) * v33], v27);
      v9 = v31;
      sub_22813710C();
      v18 = sub_22813701C();
      v15 = *(v18 - 8);
      v34 = *(v15 + 6);
      if (v34(v26, 1, v18) == 1)
      {
        v35 = v26;
        v36 = &qword_27D81E328;
        v37 = &qword_2281402C0;
        goto LABEL_7;
      }

      v38 = sub_228136FFC();
      v6 = v39;
      v40 = v26;
      v42 = *(v15 + 1);
      v15 += 8;
      v41 = v42;
      v42(v40, v18);
      v43 = v69;
      v9 = v72;
      sub_22813710C();
      if (v34(v43, 1, v18) == 1)
      {

        sub_228102DB0(v43, &qword_27D81E328, &qword_2281402C0);
        v27 = v68;
        goto LABEL_10;
      }

      v44 = sub_228136FFC();
      v9 = v45;
      v41(v43, v18);
      if (v38 == v44 && v6 == v9)
      {

        v27 = v68;
        v26 = v70;
      }

      else
      {
        v18 = sub_2281399BC();

        v27 = v68;
        v26 = v70;
        v31 = v71;
        if ((v18 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v46 = v65;
      sub_22813712C();
      v6 = sub_2281370BC();
      v47 = *(v6 - 8);
      v15 = (v47 + 48);
      v48 = *(v47 + 48);
      if (v48(v46, 1, v6) == 1)
      {
        sub_228102DB0(v46, &qword_27D81E320, &unk_22813A7D0);
        v67 = 0;
        v18 = 0;
      }

      else
      {
        v67 = sub_228136FFC();
        v49 = v46;
        v18 = v50;
        (*(v47 + 8))(v49, v6);
      }

      v51 = v66;
      v9 = v72;
      sub_22813712C();
      if (v48(v51, 1, v6) == 1)
      {
        sub_228102DB0(v51, &qword_27D81E320, &unk_22813A7D0);
        v31 = v71;
        if (v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v52 = sub_228136FFC();
        v9 = v53;
        (*(v47 + 8))(v51, v6);
        if (v18)
        {
          v31 = v71;
          if (!v9)
          {
            goto LABEL_28;
          }

          if (v67 == v52 && v18 == v9)
          {
          }

          else
          {
            v6 = sub_2281399BC();

            if ((v6 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v31 = v71;
          if (v9)
          {
LABEL_28:

            goto LABEL_29;
          }
        }
      }

      v18 = v64;
      v9 = v31;
      sub_22813711C();
      v6 = sub_22813708C();
      v15 = *(v6 - 8);
      v54 = *(v15 + 6);
      if (v54(v18, 1, v6) == 1)
      {
        break;
      }

      v67 = sub_228136FFC();
      v55 = v18;
      v18 = v56;
      v58 = *(v15 + 1);
      v15 += 8;
      v57 = v58;
      v58(v55, v6);
      v59 = v63;
      v9 = v72;
      sub_22813711C();
      if (v54(v59, 1, v6) == 1)
      {

        sub_228102DB0(v59, &qword_27D81E580, &unk_2281402B0);
LABEL_10:
        v26 = v70;
        v31 = v71;
        goto LABEL_29;
      }

      v60 = sub_228136FFC();
      v9 = v61;
      v57(v59, v6);
      v26 = v70;
      if (v67 == v60 && v18 == v9)
      {

        (*v76)(v71, v27);
        return 1;
      }

      v6 = sub_2281399BC();

      v31 = v71;
      (*v76)(v71, v27);
      if (v6)
      {
        return 1;
      }

LABEL_30:
      ++v33;
      v32 = v73;
      if (v77 == v33)
      {
        return 0;
      }
    }

    v35 = v18;
    v36 = &qword_27D81E580;
    v37 = &unk_2281402B0;
LABEL_7:
    sub_228102DB0(v35, v36, v37);
LABEL_29:
    (*v76)(v31, v27);
    goto LABEL_30;
  }

  return 0;
}