uint64_t sub_270575FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  v7 = OUTLINED_FUNCTION_23_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_57();
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for FilterConfigLookalike(0);
  OUTLINED_FUNCTION_0();
  v53 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  v54 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC0);
  OUTLINED_FUNCTION_23_0(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC8);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  v58 = a1;
  v59 = a2;
  v60 = type metadata accessor for FilterConfig();
  sub_2705D45D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BD0);
  OUTLINED_FUNCTION_8_9();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_1_85();
  sub_270578A70(v27, 255, v28);
  sub_2705D72D4();
  type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v29, v30, v31);
  sub_2705D7224();
  v32 = sub_2705D7264();
  v51 = v22;
  v52 = v17;
  v57 = v11;

  result = sub_2703CAFD0(v32);
  v34 = result;
  v35 = 0;
  v55 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v34 == v35)
    {

      sub_2705749F4(v55, v56);

      return (*(v19 + 8))(v51, v52);
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2743A4130](v35, v32);
    }

    else
    {
      if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    sub_27056E330(v3);
    sub_27057898C(v3, v10);

    if (__swift_getEnumTagSinglePayload(v10, 1, v57) == 1)
    {
      result = sub_2703C2EFC(v10, &qword_2807D7BB8);
      ++v35;
    }

    else
    {
      sub_2705788D8(v10, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = OUTLINED_FUNCTION_21_8();
        sub_27057285C(v43, v44, v45, v46);
        v55 = v47;
      }

      v38 = *(v55 + 16);
      v37 = *(v55 + 24);
      if (v38 >= v37 >> 1)
      {
        v48 = OUTLINED_FUNCTION_46_7(v37);
        sub_27057285C(v48, v38 + 1, 1, v55);
        v55 = v49;
      }

      *(v55 + 16) = v38 + 1;
      OUTLINED_FUNCTION_16_31();
      result = sub_2705788D8(v42, v40 + v39 + *(v41 + 72) * v38);
      v35 = v36;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_270576438@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BE8);
  OUTLINED_FUNCTION_0();
  v28 = v5;
  v29 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BF0);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BF8);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  sub_27049AA84(&qword_2807D7C00, &qword_2807D7BF0);
  sub_2705D4344();
  swift_getKeyPath();
  sub_2705D4314();

  (*(v12 + 8))(v4, v10);
  v30 = v25;
  v31 = v26;
  sub_2705D4334();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C08);
  v21 = v27;
  v27[3] = v20;
  v21[4] = sub_270578C30();
  __swift_allocate_boxed_opaque_existential_1Tm(v21);
  sub_27049AA84(&qword_2807D7C30, &qword_2807D7BF8);
  sub_27049AA84(&qword_2807D7C38, &qword_2807D7BE8);
  v22 = v28;
  sub_2705D42F4();
  (*(v29 + 8))(v9, v22);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_27057676C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC0);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC8);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-v10];
  v25 = a1;
  v26 = a2;
  v27 = type metadata accessor for FilterConfig();
  sub_2705D45D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BD0);
  OUTLINED_FUNCTION_8_9();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_1_85();
  sub_270578A70(v16, 255, v17);
  sub_2705D72D4();
  type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v18, v19, v20);
  sub_2705D7224();
  v21 = sub_2705D7264();

  result = sub_2703CAFD0(v21);
  if (!result)
  {

    v23 = 0;
    goto LABEL_6;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2743A4130](0, v21);
    goto LABEL_5;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v21 + 32);

LABEL_5:

LABEL_6:
    (*(v8 + 8))(v11, v6);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_2705769FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  OUTLINED_FUNCTION_23_0(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_270575FA8(a1, a2, &v20 - v8);
  v10 = type metadata accessor for FilterConfigLookalike(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2703C2EFC(v9, &qword_2807D7BB8);
    type metadata accessor for FilterActivityHistoryStats(0);
    OUTLINED_FUNCTION_3_14();
  }

  else
  {
    v15 = *(v9 + 5);
    v16 = *(v10 + 32);
    v17 = type metadata accessor for FilterActivityHistoryStats(0);
    sub_27056D58C(&v9[v16], a3 + *(v17 + 20));
    v18 = *&v9[*(v10 + 36)];
    *a3 = v15;
    *(a3 + *(v17 + 24)) = v18;

    sub_27056E2D4(v9);
    OUTLINED_FUNCTION_8_9();
    v14 = v17;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_270576B34()
{
  OUTLINED_FUNCTION_10_1();
  v1 = type metadata accessor for FilterConfigLookalike(0);
  v2 = OUTLINED_FUNCTION_1_1(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v7 = (v6 - v5);
  sub_2705771C8();
  if (v0)
  {
LABEL_14:
    OUTLINED_FUNCTION_11_3();
  }

  else
  {
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10)
    {
      v23 = MEMORY[0x277D84F90];
      sub_2704ADE34(0, v10, 0);
      v11 = v23;
      v12 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v13 = *(v4 + 72);
      do
      {
        sub_2705734B0(v12, v7);
        v14 = *v7;
        v15 = v7[1];

        sub_27056E2D4(v7);
        v17 = *(v23 + 16);
        v16 = *(v23 + 24);
        if (v17 >= v16 >> 1)
        {
          v19 = OUTLINED_FUNCTION_46_7(v16);
          sub_2704ADE34(v19, v17 + 1, 1);
        }

        *(v23 + 16) = v17 + 1;
        v18 = v23 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v12 += v13;
        --v10;
      }

      while (v10);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v20 = 0;
    v21 = *(v11 + 16);
    for (i = v11 + 40; ; i += 16)
    {
      if (v21 == v20)
      {

        goto LABEL_14;
      }

      if (v20 >= *(v11 + 16))
      {
        break;
      }

      sub_270576D28();

      ++v20;
    }

    __break(1u);
  }
}

void sub_270576D28()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_2705D6524();
  v6 = OUTLINED_FUNCTION_23_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  OUTLINED_FUNCTION_23_0(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = (v36 - v9);
  v11 = type metadata accessor for FilterConfigLookalike(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_44_7())
  {
    sub_27056E330(v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {

      sub_2703C2EFC(v10, &qword_2807D7BB8);
    }

    else
    {
      sub_2705788D8(v10, v0);
      if (qword_2807D7370 != -1)
      {
        OUTLINED_FUNCTION_2_86();
        swift_once();
      }

      v36[6] = qword_28081C5F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v13 = OUTLINED_FUNCTION_37_13();
      OUTLINED_FUNCTION_1_1(v13);
      v14 = OUTLINED_FUNCTION_29_15();
      v37 = OUTLINED_FUNCTION_45_10(v14, xmmword_2705E6EB0);
      OUTLINED_FUNCTION_35_16(v37);
      v15 = AMSLogKey();
      if (v15)
      {
        v16 = v15;
        v17 = sub_2705D7564();
        v36[1] = v18;
        v36[2] = v17;

        OUTLINED_FUNCTION_35_15();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v39, v40);
        DynamicType = swift_getDynamicType();
        v38[3] = swift_getMetatypeMetadata();
        v38[0] = DynamicType;
        sub_2705D64E4();
        v20 = OUTLINED_FUNCTION_38_11();
        sub_2703C2EFC(v20, v21);
        OUTLINED_FUNCTION_7_24();
        OUTLINED_FUNCTION_43_8(MEMORY[0x277D837D0]);
        v22 = OUTLINED_FUNCTION_38_11();
        sub_2703C2EFC(v22, v23);
      }

      else
      {
        OUTLINED_FUNCTION_34_17();
        OUTLINED_FUNCTION_9_7();
        sub_2705D6504();
        OUTLINED_FUNCTION_19_11(v39);
        MetatypeMetadata = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_28_19(MetatypeMetadata);
        sub_2703C2EFC(v38, &unk_2807D4890);
      }

      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v39);
      sub_2705D6514();
      sub_2705D6504();
      v40 = MEMORY[0x277D837D0];
      v39[0] = v4;
      v39[1] = v2;

      sub_2705D64E4();
      sub_2703C2EFC(v39, &unk_2807D4890);
      OUTLINED_FUNCTION_9_7();
      sub_2705D6504();
      sub_2705D6534();
      v25 = sub_2705D7A94();
      sub_2705B6DB8(v25);

      *(v0 + 40) = 0;
      sub_2703C2EFC(v0 + *(v11 + 32), &qword_2807D3E10);
      sub_2705D4594();
      OUTLINED_FUNCTION_3_14();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      v30 = *(v11 + 36);

      *(v0 + v30) = MEMORY[0x277D84F90];
      sub_27056E45C();
      OUTLINED_FUNCTION_0_86();
      sub_270578A70(v31, v32, v33);
      OUTLINED_FUNCTION_25_26();
      OUTLINED_FUNCTION_21_3();
      type metadata accessor for FilterConfig();
      OUTLINED_FUNCTION_1_85();
      sub_270578A70(v34, 255, v35);
      sub_2705D7284();

      OUTLINED_FUNCTION_25_26();
      sub_2705D7254();
      sub_27056E2D4(v0);
    }
  }

  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_11_3();
}

void sub_2705771C8()
{
  OUTLINED_FUNCTION_10_1();
  v55 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  v3 = OUTLINED_FUNCTION_23_0(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v56 = OUTLINED_FUNCTION_42_10();
  OUTLINED_FUNCTION_0();
  v51 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26();
  v52 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC0);
  OUTLINED_FUNCTION_23_0(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC8);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = v49 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BD0);
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  type metadata accessor for FilterConfig();
  OUTLINED_FUNCTION_1_85();
  sub_270578A70(v22, 255, v23);
  sub_2705D72D4();
  type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v24, v25, v26);
  v27 = v17;
  sub_2705D7224();
  v28 = v55;
  v29 = sub_2705D7264();
  if (v28)
  {
    (*(v14 + 8))(v17, v12);

LABEL_18:
    OUTLINED_FUNCTION_11_3();
  }

  else
  {
    v30 = v29;
    v49[1] = 0;
    v50 = v27;
    v54 = v14;
    v55 = v12;

    v31 = sub_2703CAFD0(v30);
    v32 = 0;
    v53 = MEMORY[0x277D84F90];
    while (1)
    {
      v34 = v54;
      v33 = v55;
      if (v31 == v32)
      {

        (*(v34 + 8))(v50, v33);
        goto LABEL_18;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A4130](v32, v30);
      }

      else
      {
        if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }
      }

      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      sub_27056E330(v6);
      sub_27057898C(v6, v1);

      if (__swift_getEnumTagSinglePayload(v1, 1, v56) == 1)
      {
        sub_2703C2EFC(v1, &qword_2807D7BB8);
        ++v32;
      }

      else
      {
        sub_2705788D8(v1, v52);
        v36 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = OUTLINED_FUNCTION_21_8();
          sub_27057285C(v43, v44, v45, v36);
          v36 = v46;
        }

        v38 = *(v36 + 16);
        v37 = *(v36 + 24);
        v53 = v36;
        if (v38 >= v37 >> 1)
        {
          v47 = OUTLINED_FUNCTION_46_7(v37);
          sub_27057285C(v47, v38 + 1, 1, v53);
          v53 = v48;
        }

        *(v53 + 16) = v38 + 1;
        OUTLINED_FUNCTION_16_31();
        sub_2705788D8(v42, v40 + v39 + *(v41 + 72) * v38);
        v32 = v35;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_270577604()
{
  OUTLINED_FUNCTION_10_1();
  v0 = sub_2705D6524();
  v1 = OUTLINED_FUNCTION_23_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  if (qword_2807D7370 != -1)
  {
    OUTLINED_FUNCTION_2_86();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v2 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v2);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v3 = type metadata accessor for FilterConfigStorage();
  OUTLINED_FUNCTION_35_16(v3);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2705D7564();
    v8 = v7;

    OUTLINED_FUNCTION_35_15();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v15[0] = DynamicType;
    sub_2705D64E4();
    OUTLINED_FUNCTION_46_10(v15);
    OUTLINED_FUNCTION_7_24();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v15[0] = v6;
    v15[1] = v8;
    sub_2705D64E4();
    OUTLINED_FUNCTION_46_10(v15);
  }

  else
  {
    OUTLINED_FUNCTION_34_17();
    OUTLINED_FUNCTION_9_7();
    sub_2705D6504();
    OUTLINED_FUNCTION_19_11(v17);
    v10 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_28_19(v10);
    sub_2703C2EFC(v15, &unk_2807D4890);
  }

  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_2705D64C4();
  v11 = sub_2705D7A94();
  sub_2705B6DB8(v11);

  OUTLINED_FUNCTION_0_86();
  sub_270578A70(v12, v13, v14);
  sub_2705D7224();
  sub_2705D7244();

  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2705778F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  type metadata accessor for FilterConfigStorage();
  sub_270578A70(&qword_2807D7BD8, v3, type metadata accessor for FilterConfigStorage);
  sub_2705D7844();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_270578A70(&qword_2807D7BB0, v4, type metadata accessor for FilterConfigStorage);
  sub_2705D7224();
  type metadata accessor for FilterConfig();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BD0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  sub_270578A70(&qword_2807D73E0, 255, type metadata accessor for FilterConfig);
  sub_2705D7274();
  sub_2703C2EFC(v2, &qword_2807D7BC0);
}

void sub_270577AE8()
{
  OUTLINED_FUNCTION_10_1();
  v114 = v1;
  v2 = v0;
  OUTLINED_FUNCTION_21_3();
  v3 = sub_2705D6524();
  v4 = OUTLINED_FUNCTION_23_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for FilterConfigLookalike(0);
  v9 = OUTLINED_FUNCTION_1_1(v8);
  v111 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v107 = (v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v110 = v98 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v98 - v15;
  v100 = sub_2705D4594();
  OUTLINED_FUNCTION_0();
  v99 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v112 = v19;
  if (*(v0 + 16))
  {
    v20 = sub_2703D7318(0x707954746E657665, 0xE900000000000065);
    if (v21)
    {
      sub_2703D7F04(*(v0 + 56) + 32 * v20, v121);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
      if (swift_dynamicCast())
      {
        v115 = v0;
        v105 = v7;
        v22 = v112;
        sub_2705D4574();
        v23 = v114;
        sub_2705753D4();
        v114 = v23;
        if (v23)
        {
          (*(v99 + 8))(v22, v100);
        }

        else
        {
          v25 = v24;

          v26 = 0;
          v103 = v25[2];
          v104 = MEMORY[0x277D84F90];
          v106 = v2;
          v101 = v16;
          v102 = v25;
          while (1)
          {
            v27 = v26;
LABEL_8:
            if (v27 == v103)
            {
              break;
            }

            if (v27 >= v25[2])
            {
LABEL_44:
              __break(1u);
              return;
            }

            v28 = (*(v111 + 80) + 32) & ~*(v111 + 80);
            v29 = *(v111 + 72);
            v113 = v27 + 1;
            v109 = v28;
            *&v108 = v29;
            sub_2705734B0(v25 + v28 + v29 * v27, v16);
            v30 = *(v16 + 4);
            v31 = (v30 + 72);
            v32 = -*(v30 + 16);
            v33 = -1;
            while (v32 + v33 != -1)
            {
              if (++v33 >= *(v30 + 16))
              {
                __break(1u);
                goto LABEL_44;
              }

              v34 = v31 + 48;
              v35 = *(v31 - 4);
              v36 = *(v31 - 24);
              v38 = *(v31 - 2);
              v37 = *(v31 - 1);
              v123 = *(v31 - 5);
              v124 = v35;
              v125 = v36;
              v126 = v38;
              v127 = v37;
              v128 = *v31;
              v39 = v128;

              sub_27056B884(v38, v37, v39);
              v40 = sub_27057A830(v115);

              sub_27056B898(v38, v37, v39);
              v31 = v34;
              if ((v40 & 1) == 0)
              {
                v16 = v101;
                sub_27056E2D4(v101);
                v27 = v113;
                v25 = v102;
                goto LABEL_8;
              }
            }

            v16 = v101;
            sub_2705788D8(v101, v110);
            v41 = v104;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v43 = v41;
            v121[0] = v41;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_27057179C(0, *(v41 + 16) + 1, 1);
              v43 = v121[0];
            }

            v26 = v113;
            v44 = v109;
            v45 = v108;
            v47 = *(v43 + 16);
            v46 = *(v43 + 24);
            v25 = v102;
            if (v47 >= v46 >> 1)
            {
              v48 = OUTLINED_FUNCTION_46_7(v46);
              sub_27057179C(v48, v47 + 1, 1);
              v25 = v102;
              v43 = v121[0];
            }

            *(v43 + 16) = v47 + 1;
            v104 = v43;
            sub_2705788D8(v110, v43 + v44 + v47 * v45);
          }

          v49 = *(v104 + 16);
          if (v49)
          {
            v50 = v114;
            v121[0] = MEMORY[0x277D84F90];
            v51 = v104;
            sub_2704ADE34(0, v49, 0);
            v52 = v121[0];
            OUTLINED_FUNCTION_16_31();
            v54 = v51 + v53;
            v56 = *(v55 + 72);
            do
            {
              v57 = v107;
              sub_2705734B0(v54, v107);
              v58 = *v57;
              v59 = v57[1];

              sub_27056E2D4(v57);
              v121[0] = v52;
              v61 = *(v52 + 16);
              v60 = *(v52 + 24);
              if (v61 >= v60 >> 1)
              {
                v63 = OUTLINED_FUNCTION_46_7(v60);
                sub_2704ADE34(v63, v61 + 1, 1);
                v52 = v121[0];
              }

              *(v52 + 16) = v61 + 1;
              v62 = v52 + 16 * v61;
              *(v62 + 32) = v58;
              *(v62 + 40) = v59;
              v54 += v56;
              --v49;
            }

            while (v49);

            v114 = v50;
          }

          else
          {

            v52 = MEMORY[0x277D84F90];
          }

          v64 = v112;
          v110 = *(v52 + 16);
          if (v110)
          {
            v98[2] = "Deleting filters";
            v98[1] = "in Activity History for id: ";
            v65 = (v52 + 40);
            v108 = xmmword_2705E6EB0;
            v66 = &unk_2705E2880;
            v101 = v52;
            do
            {
              v67 = *v65;
              v109 = *(v65 - 1);
              v68 = qword_2807D7370;

              if (v68 != -1)
              {
                OUTLINED_FUNCTION_2_86();
                swift_once();
              }

              v115 = qword_28081C5F0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
              v69 = OUTLINED_FUNCTION_37_13();
              OUTLINED_FUNCTION_1_1(v69);
              v72 = *(v71 + 80);
              v113 = *(v70 + 72);
              v111 = (v72 + 32) & ~v72;
              v107 = v64;
              v104 = v111 + 2 * v113;
              *(swift_allocObject() + 16) = v108;
              v103 = type metadata accessor for FilterConfigStorage();
              v122 = v103;
              v121[0] = v106;

              v73 = AMSLogKey();
              if (v73)
              {
                v74 = v73;
                v75 = sub_2705D7564();
                v102 = v65;
                v76 = v75;
                v77 = v66;
                v79 = v78;

                OUTLINED_FUNCTION_17_33();
                OUTLINED_FUNCTION_35_15();
                OUTLINED_FUNCTION_9_7();
                sub_2705D6504();
                v80 = OUTLINED_FUNCTION_47_4();
                MetatypeMetadata = swift_getMetatypeMetadata();
                v118 = v80;
                sub_2705D64E4();
                sub_2703C2EFC(&v118, &unk_2807D4890);
                OUTLINED_FUNCTION_7_24();
                v81 = MEMORY[0x277D837D0];
                MetatypeMetadata = MEMORY[0x277D837D0];
                v118 = v76;
                v119 = v79;
                v65 = v102;
                sub_2705D64E4();
                sub_2703C2EFC(&v118, &unk_2807D4890);
              }

              else
              {
                OUTLINED_FUNCTION_17_33();
                OUTLINED_FUNCTION_34_17();
                OUTLINED_FUNCTION_9_7();
                sub_2705D6504();
                v82 = OUTLINED_FUNCTION_47_4();
                MetatypeMetadata = swift_getMetatypeMetadata();
                v118 = v82;
                sub_2705D64E4();
                OUTLINED_FUNCTION_36_14(&v118);
                v81 = MEMORY[0x277D837D0];
                v77 = v66;
              }

              sub_2705D6504();
              sub_2705D6534();
              __swift_destroy_boxed_opaque_existential_1(v121);
              sub_2705D6514();
              sub_2705D6504();
              v122 = v81;
              v121[0] = v109;
              v121[1] = v67;

              sub_2705D64E4();
              sub_2703C2EFC(v121, &unk_2807D4890);
              OUTLINED_FUNCTION_9_7();
              sub_2705D6504();
              sub_2705D6534();
              v83 = sub_2705D7A64();
              sub_2705B6DB8(v83);

              v64 = v112;
              v84 = v106;
              v85 = v114;
              sub_270575B70();
              v66 = v77;
              v114 = v85;
              if (v85)
              {

                *(swift_allocObject() + 16) = v108;
                v122 = v103;
                v121[0] = v84;

                v86 = AMSLogKey();
                if (v86)
                {
                  v87 = v86;
                  v88 = sub_2705D7564();
                  v90 = v89;

                  OUTLINED_FUNCTION_17_33();
                  OUTLINED_FUNCTION_35_15();
                  OUTLINED_FUNCTION_9_7();
                  sub_2705D6504();
                  v91 = OUTLINED_FUNCTION_19_11(v121);
                  MetatypeMetadata = swift_getMetatypeMetadata();
                  v118 = v91;
                  sub_2705D64E4();
                  OUTLINED_FUNCTION_36_14(&v118);
                  OUTLINED_FUNCTION_7_24();
                  MetatypeMetadata = MEMORY[0x277D837D0];
                  v118 = v88;
                  v119 = v90;
                }

                else
                {
                  OUTLINED_FUNCTION_17_33();
                  OUTLINED_FUNCTION_34_17();
                  OUTLINED_FUNCTION_9_7();
                  sub_2705D6504();
                  v92 = OUTLINED_FUNCTION_19_11(v121);
                  MetatypeMetadata = swift_getMetatypeMetadata();
                  v118 = v92;
                }

                sub_2705D64E4();
                OUTLINED_FUNCTION_36_14(&v118);
                sub_2705D6504();
                sub_2705D6534();
                __swift_destroy_boxed_opaque_existential_1(v121);
                sub_2705D6514();
                sub_2705D6504();
                v93 = v114;
                swift_getErrorValue();
                v95 = v116;
                v94 = v117;
                v122 = v117;
                boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v121);
                (*(*(v94 - 8) + 16))(boxed_opaque_existential_1Tm, v95, v94);
                sub_2705D64E4();
                OUTLINED_FUNCTION_36_14(v121);
                OUTLINED_FUNCTION_9_7();
                sub_2705D6504();
                sub_2705D6534();
                v97 = sub_2705D7A74();
                sub_2705B6DB8(v97);

                v114 = 0;
                v64 = v112;
              }

              else
              {
              }

              v65 += 2;
              --v110;
            }

            while (v110);
          }

          (*(v99 + 8))(v64, v100);
        }
      }
    }
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_27057865C(uint64_t a1)
{
  OUTLINED_FUNCTION_32_15();
  v2 = swift_allocObject();
  sub_270578694(a1);
  return v2;
}

void *sub_270578694(uint64_t a1)
{
  v2 = v1;
  sub_2705D7294();
  OUTLINED_FUNCTION_27_19();
  swift_allocObject();

  sub_2705D72A4();
  OUTLINED_FUNCTION_21_3();
  sub_2705D7394();
  OUTLINED_FUNCTION_27_19();
  swift_allocObject();
  OUTLINED_FUNCTION_94();
  v4 = sub_2705D7384();
  OUTLINED_FUNCTION_14_41();
  v7 = sub_270578A70(v5, 255, v6);
  v2[2] = v4;
  v2[3] = v7;
  v2[4] = a1;
  return v2;
}

uint64_t sub_270578734()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_27057875C()
{
  sub_270578734();
  v0 = OUTLINED_FUNCTION_32_15();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_270578788()
{
  v0 = type metadata accessor for FilterConfigStorage();
  v2 = sub_270578A70(&qword_2807D7BB0, v1, type metadata accessor for FilterConfigStorage);

  return MEMORY[0x28212C8C8](v0, v2);
}

uint64_t sub_2705788D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterConfigLookalike(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_270578944(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27057898C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270578A18(uint64_t a1, uint64_t a2)
{
  result = sub_270578A70(&qword_2807D7BD8, a2, type metadata accessor for FilterConfigStorage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_270578A70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FilterConfigStorage.FilterConfigStorageError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x270578B98);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270578BD4()
{
  result = qword_2807D7BE0;
  if (!qword_2807D7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7BE0);
  }

  return result;
}

unint64_t sub_270578C30()
{
  result = qword_2807D7C10;
  if (!qword_2807D7C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7C08);
    sub_270578CBC();
    sub_270578D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7C10);
  }

  return result;
}

unint64_t sub_270578CBC()
{
  result = qword_2807D7C18;
  if (!qword_2807D7C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7BF8);
    sub_27049AA84(&qword_2807D7C20, &qword_2807D7BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7C18);
  }

  return result;
}

unint64_t sub_270578D6C()
{
  result = qword_2807D7C28;
  if (!qword_2807D7C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7C28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_26()
{

  return sub_2705D7224();
}

uint64_t OUTLINED_FUNCTION_26_24()
{

  return sub_2703C2EFC(v1 - 152, v0);
}

uint64_t OUTLINED_FUNCTION_28_19(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_29_15()
{
  *(v1 - 176) = v0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_16(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_36_14(uint64_t a1)
{

  return sub_2703C2EFC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_37_13()
{

  return sub_2705D6574();
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return type metadata accessor for FilterConfigLookalike(0);
}

uint64_t OUTLINED_FUNCTION_43_8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;
  v3 = *(v1 - 200);
  *(v1 - 144) = *(v1 - 192);
  *(v1 - 136) = v3;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return sub_27057676C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_45_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 168) = a1;
  *(v3 - 184) = a1 + v2;

  return type metadata accessor for FilterConfigStorage();
}

uint64_t OUTLINED_FUNCTION_46_10(uint64_t a1)
{

  return sub_2703C2EFC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_47_4()
{
  __swift_project_boxed_opaque_existential_1((v0 - 168), *(v0 - 144));

  return swift_getDynamicType();
}

unsigned __int8 *sub_2705790B0(uint64_t a1, unint64_t a2)
{
  v79 = 0;
  v80 = 0xE000000000000000;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = MEMORY[0x277D84F90];
  for (i = 15; ; i = sub_2705D7654())
  {
    if (v5 <= i >> 14)
    {
      v5 = v79;
      v19 = v80;
      v71 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v71 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_115;
      }

      return v6;
    }

    v8 = sub_2705D7724();
    v10 = v9;
    if (v8 != 46 || v9 != 0xE100000000000000)
    {
      v12 = v8;
      if ((sub_2705D8134() & 1) == 0)
      {
        break;
      }
    }

    v13 = v79;
    v14 = v80;
    v15 = HIBYTE(v80) & 0xF;
    if ((v80 & 0x2000000000000000) == 0)
    {
      v15 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_270572984();
        v6 = v62;
      }

      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_270572984();
        v6 = v63;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 24 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      *(v17 + 48) = 0;
      v79 = 0;
      v80 = 0xE000000000000000;
    }

LABEL_108:
    ;
  }

  v18 = v12 == 91 && v10 == 0xE100000000000000;
  if (!v18 && (sub_2705D8134() & 1) == 0)
  {
    MEMORY[0x2743A3A80](v12, v10);

    goto LABEL_108;
  }

  v20 = v79;
  v19 = v80;
  v21 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v21 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_270572984();
      v6 = v64;
    }

    v22 = *(v6 + 16);
    if (v22 >= *(v6 + 24) >> 1)
    {
      sub_270572984();
      v6 = v65;
    }

    *(v6 + 16) = v22 + 1;
    v23 = v6 + 24 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
    *(v23 + 48) = 0;
    v19 = 0xE000000000000000;
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  v24 = sub_2705D7654();
  v25 = sub_270579878(v24, a1, a2);
  v27 = sub_2705798C4(93, 0xE100000000000000, v25, v26);
  v29 = v28;

  if (v29)
  {
    v74 = 0;
    goto LABEL_121;
  }

  if (v27 >> 14 < v24 >> 14)
  {
    __break(1u);
LABEL_124:
    sub_270572984();
    v6 = v76;
LABEL_115:
    v72 = *(v6 + 16);
    if (v72 >= *(v6 + 24) >> 1)
    {
      sub_270572984();
      v6 = v77;
    }

    *(v6 + 16) = v72 + 1;
    v73 = v6 + 24 * v72;
    *(v73 + 32) = v5;
    *(v73 + 40) = v19;
    *(v73 + 48) = 0;
    return v6;
  }

  v30 = sub_2705D7744();
  v31 = MEMORY[0x2743A3A20](v30);
  v33 = v32;

  v35 = HIBYTE(v33) & 0xF;
  v36 = v31 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v37 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_270572984();
      v6 = v69;
    }

    v43 = *(v6 + 16);
    if (v43 >= *(v6 + 24) >> 1)
    {
      sub_270572984();
      v6 = v70;
    }

    *(v6 + 16) = v43 + 1;
    v44 = v6 + 24 * v43;
    *(v44 + 32) = 0;
    *(v44 + 40) = 0;
    v45 = 2;
LABEL_107:
    *(v44 + 48) = v45;
    goto LABEL_108;
  }

  if ((v33 & 0x1000000000000000) != 0)
  {
    v81 = 0;
    v39 = sub_27057DB60(v31, v33, 10);
    v60 = v66;
    goto LABEL_101;
  }

  if ((v33 & 0x2000000000000000) == 0)
  {
    if ((v31 & 0x1000000000000000) != 0)
    {
      result = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_2705D7DB4();
    }

    v38 = *result;
    if (v38 == 43)
    {
      if (v36 < 1)
      {
        goto LABEL_126;
      }

      v35 = v36 - 1;
      if (v36 == 1)
      {
        goto LABEL_99;
      }

      v39 = 0;
      if (result)
      {
        v49 = result + 1;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            goto LABEL_99;
          }

          v51 = 10 * v39;
          if ((v39 * 10) >> 64 != (10 * v39) >> 63)
          {
            goto LABEL_99;
          }

          v39 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            goto LABEL_99;
          }

          ++v49;
          if (!--v35)
          {
            goto LABEL_100;
          }
        }
      }
    }

    else if (v38 == 45)
    {
      if (v36 < 1)
      {
        goto LABEL_128;
      }

      v35 = v36 - 1;
      if (v36 == 1)
      {
        goto LABEL_99;
      }

      v39 = 0;
      if (result)
      {
        v40 = result + 1;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            goto LABEL_99;
          }

          v42 = 10 * v39;
          if ((v39 * 10) >> 64 != (10 * v39) >> 63)
          {
            goto LABEL_99;
          }

          v39 = v42 - v41;
          if (__OFSUB__(v42, v41))
          {
            goto LABEL_99;
          }

          ++v40;
          if (!--v35)
          {
            goto LABEL_100;
          }
        }
      }
    }

    else
    {
      if (!v36)
      {
LABEL_99:
        v39 = 0;
        LOBYTE(v35) = 1;
        goto LABEL_100;
      }

      v39 = 0;
      if (result)
      {
        do
        {
          v55 = *result - 48;
          if (v55 > 9)
          {
            goto LABEL_99;
          }

          v56 = 10 * v39;
          if ((v39 * 10) >> 64 != (10 * v39) >> 63)
          {
            goto LABEL_99;
          }

          v39 = v56 + v55;
          if (__OFADD__(v56, v55))
          {
            goto LABEL_99;
          }

          ++result;
        }

        while (--v36);
      }
    }

    LOBYTE(v35) = 0;
LABEL_100:
    v81 = v35;
    v60 = v35;
LABEL_101:

    if (v60)
    {
      v74 = 1;
LABEL_121:

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7D90);
      sub_2703AFBC8(&qword_2807D7D98, &qword_2807D7D90);
      swift_allocError();
      *v75 = v74;
      swift_willThrow();
      return v6;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_270572984();
      v6 = v67;
    }

    v61 = *(v6 + 16);
    if (v61 >= *(v6 + 24) >> 1)
    {
      sub_270572984();
      v6 = v68;
    }

    *(v6 + 16) = v61 + 1;
    v44 = v6 + 24 * v61;
    *(v44 + 32) = v39;
    *(v44 + 40) = 0;
    v45 = 1;
    goto LABEL_107;
  }

  v78[0] = v31;
  v78[1] = v33 & 0xFFFFFFFFFFFFFFLL;
  if (v31 == 43)
  {
    if (!v35)
    {
      goto LABEL_127;
    }

    if (--v35)
    {
      v39 = 0;
      v52 = v78 + 1;
      while (1)
      {
        v53 = *v52 - 48;
        if (v53 > 9)
        {
          break;
        }

        v54 = 10 * v39;
        if ((v39 * 10) >> 64 != (10 * v39) >> 63)
        {
          break;
        }

        v39 = v54 + v53;
        if (__OFADD__(v54, v53))
        {
          break;
        }

        ++v52;
        if (!--v35)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_99;
  }

  if (v31 != 45)
  {
    if (v35)
    {
      v39 = 0;
      v57 = v78;
      while (1)
      {
        v58 = *v57 - 48;
        if (v58 > 9)
        {
          break;
        }

        v59 = 10 * v39;
        if ((v39 * 10) >> 64 != (10 * v39) >> 63)
        {
          break;
        }

        v39 = v59 + v58;
        if (__OFADD__(v59, v58))
        {
          break;
        }

        ++v57;
        if (!--v35)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_99;
  }

  if (v35)
  {
    if (--v35)
    {
      v39 = 0;
      v46 = v78 + 1;
      while (1)
      {
        v47 = *v46 - 48;
        if (v47 > 9)
        {
          break;
        }

        v48 = 10 * v39;
        if ((v39 * 10) >> 64 != (10 * v39) >> 63)
        {
          break;
        }

        v39 = v48 - v47;
        if (__OFSUB__(v48, v47))
        {
          break;
        }

        ++v46;
        if (!--v35)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_99;
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

unint64_t sub_270579878(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2705D7744();
  }

  __break(1u);
  return result;
}

uint64_t sub_2705798C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  while (1)
  {
    if ((a3 ^ a4) < 0x4000)
    {
      return 0;
    }

    if (sub_2705D7C44() == a1 && v8 == a2)
    {
      break;
    }

    v10 = sub_2705D8134();

    if (v10)
    {
      return a3;
    }

    a3 = sub_2705D7C24();
  }

  return a3;
}

uint64_t sub_2705799B0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_27057E288(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_27057E218(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270579A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705E6EB0;
  *(inited + 32) = 0x6874615079656BLL;
  *(inited + 40) = 0xE700000000000000;
  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D837D0];
  *(inited + 48) = *v0;
  *(inited + 56) = v2;
  *(inited + 72) = v3;
  strcpy((inited + 80), "operationType");
  *(inited + 94) = -4864;
  v4 = sub_27057ACFC(*(v0 + 16));
  *(inited + 120) = v3;
  *(inited + 96) = v4;
  *(inited + 104) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  sub_2705D7494();
  v24 = *(v0 + 24);
  v25 = *(v0 + 40);
  if (v25)
  {
    if (v25 == 1)
    {
      v23 = MEMORY[0x277D83B88];
      *&v22 = v24;
      sub_2703E43D4(&v22, v21);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_1_14();
      MEMORY[0x28223BE20](v6);
      v8 = OUTLINED_FUNCTION_3_80(v7, v19);
      v9(v8);
      OUTLINED_FUNCTION_15_41();
      sub_2705730A0();
    }

    else
    {
      v23 = MEMORY[0x277D839B0];
      LOBYTE(v22) = v24;
      sub_2703E43D4(&v22, v21);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_1_14();
      MEMORY[0x28223BE20](v14);
      v16 = OUTLINED_FUNCTION_3_80(v15, v19);
      v17(v16);
      OUTLINED_FUNCTION_15_41();
      sub_2705731C0();
    }
  }

  else
  {
    v23 = v3;
    v22 = v24;
    sub_2703E43D4(&v22, v21);
    sub_27057E7E8(&v24, v20);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_69();
    OUTLINED_FUNCTION_1_14();
    MEMORY[0x28223BE20](v10);
    v12 = OUTLINED_FUNCTION_3_80(v11, v19);
    v13(v12);
    sub_270572F64();
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20[0];
}

uint64_t sub_270579D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2705D6524();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1_75();
  sub_2703D7F04(a3, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  OUTLINED_FUNCTION_20_25();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2703D7F04(a3, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
    OUTLINED_FUNCTION_20_25();
    if (swift_dynamicCast())
    {
      sub_270557A00(0x6F6974617265706FLL);
      if (v57)
      {
        v14 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_20_25();
        if (swift_dynamicCast())
        {
          v49 = a3;
          v15 = sub_27057ACA4();
          if (v15 != 7)
          {
            v26 = v15;
            sub_270557A00(0x65756C6176);

            if (!v55)
            {

              sub_2703B2934(&v54, &qword_2807D3D80);
              if (qword_2807D7370 != -1)
              {
                OUTLINED_FUNCTION_6_68();
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
              v27 = sub_2705D6574();
              OUTLINED_FUNCTION_1_1(v27);
              *(swift_allocObject() + 16) = xmmword_2705E6EB0;
              v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C48);
              *&v56 = &unk_28805FC10;
              v28 = AMSLogKey();
              if (v28)
              {
                v29 = v28;
                v30 = sub_2705D7564();
                v32 = v31;

                OUTLINED_FUNCTION_5_35();
                OUTLINED_FUNCTION_12_20();
                OUTLINED_FUNCTION_13_43();
                MetatypeMetadata = swift_getMetatypeMetadata();
                OUTLINED_FUNCTION_28_20(MetatypeMetadata);
                v34 = OUTLINED_FUNCTION_16_32();
                sub_2703B2934(v34, v35);
                OUTLINED_FUNCTION_7_24();
                v55 = v14;
                *&v54 = v30;
                *(&v54 + 1) = v32;
                sub_2705D64E4();
                v36 = OUTLINED_FUNCTION_16_32();
                sub_2703B2934(v36, v37);
              }

              else
              {
                OUTLINED_FUNCTION_6_31();
                OUTLINED_FUNCTION_12_20();
                OUTLINED_FUNCTION_14_42();
                v38 = swift_getMetatypeMetadata();
                OUTLINED_FUNCTION_27_20(v38);
                sub_2703B2934(&v54, &unk_2807D4890);
              }

              sub_2705D6504();
              sub_2705D6534();
              __swift_destroy_boxed_opaque_existential_1(&v56);
              sub_2705D64C4();
              v39 = sub_2705D7A74();
              sub_2705B6DB8(v39);

              v25 = v49;
              goto LABEL_21;
            }

            sub_2703E43D4(&v54, &v56);
            sub_2703D7F04(&v56, &v54);
            OUTLINED_FUNCTION_23_23();
            if (swift_dynamicCast())
            {
              OUTLINED_FUNCTION_34_18();
              v10 = 0;
              v12 = v52[0];
              v13 = v52[1];
            }

            else
            {
              OUTLINED_FUNCTION_23_23();
              if (swift_dynamicCast())
              {
                OUTLINED_FUNCTION_34_18();
                v13 = 0;
                v12 = v52[0];
                v10 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_23_23();
                if (!swift_dynamicCast())
                {

                  if (qword_2807D7370 != -1)
                  {
                    OUTLINED_FUNCTION_6_68();
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
                  v40 = sub_2705D6574();
                  OUTLINED_FUNCTION_1_1(v40);
                  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
                  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C48);
                  v52[0] = &unk_28805FC10;
                  v41 = AMSLogKey();
                  if (v41)
                  {
                    v42 = v41;
                    v43 = sub_2705D7564();
                    v45 = v44;

                    OUTLINED_FUNCTION_5_35();
                    OUTLINED_FUNCTION_12_20();
                    __swift_project_boxed_opaque_existential_1(v52, v53);
                    DynamicType = swift_getDynamicType();
                    v51 = swift_getMetatypeMetadata();
                    v50[0] = DynamicType;
                    sub_2705D64E4();
                    sub_2703B2934(v50, &unk_2807D4890);
                    OUTLINED_FUNCTION_7_24();
                    v51 = v14;
                    v50[0] = v43;
                    v50[1] = v45;
                    sub_2705D64E4();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_6_31();
                    OUTLINED_FUNCTION_12_20();
                    __swift_project_boxed_opaque_existential_1(v52, v53);
                    v47 = swift_getDynamicType();
                    v51 = swift_getMetatypeMetadata();
                    v50[0] = v47;
                    sub_2705D64E4();
                  }

                  sub_2703B2934(v50, &unk_2807D4890);
                  sub_2705D6504();
                  sub_2705D6534();
                  __swift_destroy_boxed_opaque_existential_1(v52);
                  sub_2705D64C4();
                  v48 = sub_2705D7A74();
                  sub_2705B6DB8(v48);

                  OUTLINED_FUNCTION_34_18();
                  v25 = &v54;
                  goto LABEL_21;
                }

                OUTLINED_FUNCTION_34_18();
                v13 = 0;
                v12 = LOBYTE(v52[0]);
                v10 = 2;
              }
            }

            result = __swift_destroy_boxed_opaque_existential_1(&v54);
            v11 = v26;
            goto LABEL_22;
          }
        }
      }

      else
      {

        sub_2703B2934(&v56, &qword_2807D3D80);
      }

      if (qword_2807D7370 != -1)
      {
        OUTLINED_FUNCTION_6_68();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v17 = sub_2705D6574();
      OUTLINED_FUNCTION_1_1(v17);
      OUTLINED_FUNCTION_21_29();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C48);
      *&v56 = &unk_28805FC10;
      if (AMSLogKey())
      {
        goto LABEL_18;
      }
    }

    else
    {

      if (qword_2807D7370 != -1)
      {
        OUTLINED_FUNCTION_6_68();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v16 = sub_2705D6574();
      OUTLINED_FUNCTION_1_1(v16);
      OUTLINED_FUNCTION_21_29();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C48);
      *&v56 = &unk_28805FC10;
      if (AMSLogKey())
      {
LABEL_18:
        sub_2705D7564();
        OUTLINED_FUNCTION_29_16();
        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        OUTLINED_FUNCTION_13_43();
        v18 = swift_getMetatypeMetadata();
        OUTLINED_FUNCTION_28_20(v18);
        v19 = OUTLINED_FUNCTION_16_32();
        sub_2703B2934(v19, v20);
        OUTLINED_FUNCTION_7_24();
        OUTLINED_FUNCTION_24_28(MEMORY[0x277D837D0]);
        v21 = OUTLINED_FUNCTION_16_32();
        sub_2703B2934(v21, v22);
LABEL_20:
        sub_2705D6504();
        sub_2705D6534();
        __swift_destroy_boxed_opaque_existential_1(&v56);
        sub_2705D64C4();
        v24 = sub_2705D7A74();
        sub_2705B6DB8(v24);

        v25 = a3;
LABEL_21:
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        a1 = 0;
        a2 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v10 = 0;
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_14_42();
    v23 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_27_20(v23);
    sub_2703B2934(&v54, &unk_2807D4890);
    goto LABEL_20;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a3);
  v10 = 0;
  v11 = 0;
  v13 = *(&v54 + 1);
  v12 = v54;
LABEL_22:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = v10;
  return result;
}

uint64_t sub_27057A830(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2705D6524();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_75();
  v5 = sub_2705790B0(*v1, *(v1 + 8));
  v15 = sub_27057E2D4(a1, v5, a1);

  v16 = v15 + 32;
  v17 = -*(v15 + 16);
  v18 = -1;
  while (v17 + v18 != -1)
  {
    if (++v18 >= *(v15 + 16))
    {
      __break(1u);
      OUTLINED_FUNCTION_6_68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      v6 = sub_2705D6574();
      OUTLINED_FUNCTION_1_1(v6);
      OUTLINED_FUNCTION_21_29();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v30 = *(v2 + 24);
      v31 = *(v2 + 40);
      v29 = &unk_28805FC10;
      v7 = swift_allocObject();
      v28[0] = v7;
      v8 = *(v2 + 16);
      v7[1] = *v2;
      v7[2] = v8;
      *(v7 + 41) = *(v2 + 25);

      sub_27057E7E8(&v30, v26);
      v9 = AMSLogKey();
      if (v9)
      {
        v10 = v9;
        v11 = sub_2705D7564();
        v13 = v12;

        OUTLINED_FUNCTION_5_35();
        OUTLINED_FUNCTION_12_20();
        __swift_project_boxed_opaque_existential_1(v28, v29);
        DynamicType = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v26[0] = DynamicType;
        sub_2705D64E4();
        sub_2703B2934(v26, &unk_2807D4890);
        OUTLINED_FUNCTION_7_24();
        MetatypeMetadata = MEMORY[0x277D837D0];
        v26[0] = v11;
        v26[1] = v13;
      }

      else
      {
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_12_20();
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v22 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v26[0] = v22;
      }

      sub_2705D64E4();
      sub_2703B2934(v26, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_2705D6514();
      sub_2705D6504();
      swift_getErrorValue();
      v29 = v25;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
      (*(*(v25 - 1) + 16))(boxed_opaque_existential_1Tm);
      sub_2705D64E4();
      sub_2703B2934(v28, &unk_2807D4890);
      OUTLINED_FUNCTION_12_20();
      sub_2705D6534();
      v24 = sub_2705D7A74();
      sub_2705B6DB8(v24);

      break;
    }

    v19 = v16 + 32;
    sub_2703D7F04(v16, v28);
    v20 = sub_27057C408(v28);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v16 = v19;
    if (v20)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_27057AC5C()
{
  v1 = *(v0 + 24);
  sub_27056B884(v1, *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t sub_27057ACA4()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27057ACFC(char a1)
{
  result = 0x5F796C7463617865;
  switch(a1)
  {
    case 1:
      return 0x617571655F746F6ELL;
    case 2:
      return 0x736E6961746E6F63;
    case 3:
      v4 = 1701998445;
      return v4 | 0x6168745F00000000;
    case 4:
      v3 = 1701998445;
      goto LABEL_9;
    case 5:
      v4 = 1936942444;
      return v4 | 0x6168745F00000000;
    case 6:
      v3 = 1936942444;
LABEL_9:
      result = v3 | 0x6168745F00000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27057AE14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27057ACA4();
  *a1 = result;
  return result;
}

uint64_t sub_27057AE44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27057ACFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27057AF30(uint64_t a1)
{
  v2 = sub_27057E8B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27057AF6C(uint64_t a1)
{
  v2 = sub_27057E8B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27057AFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7630441 && a2 == 0xE300000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1819242338 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27057B0B4(char a1)
{
  if (!a1)
  {
    return 0x676E69727473;
  }

  if (a1 == 1)
  {
    return 7630441;
  }

  return 1819242338;
}

uint64_t sub_27057B100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27057AFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27057B128(uint64_t a1)
{
  v2 = sub_27057E864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27057B164(uint64_t a1)
{
  v2 = sub_27057E864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27057B1A0(uint64_t a1)
{
  v2 = sub_27057E90C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27057B1DC(uint64_t a1)
{
  v2 = sub_27057E90C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27057B218(uint64_t a1)
{
  v2 = sub_27057E960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27057B254(uint64_t a1)
{
  v2 = sub_27057E960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27057B290(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v38 = a2;
  v39 = a4;
  v35 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C50);
  OUTLINED_FUNCTION_0();
  v36 = v6;
  v37 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v34 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C58);
  OUTLINED_FUNCTION_0();
  v32 = v10;
  v33 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C60);
  OUTLINED_FUNCTION_0();
  v31[1] = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C68);
  OUTLINED_FUNCTION_0();
  v21 = v20;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  v24 = v31 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27057E864();
  sub_2705D84C4();
  if (v39)
  {
    if (v39 != 1)
    {
      OUTLINED_FUNCTION_30_18();
      sub_27057E8B8();
      v28 = v34;
      OUTLINED_FUNCTION_15_10();
      sub_2705D7FE4();
      v29 = v37;
      sub_2705D8044();
      v25 = *(v36 + 8);
      v26 = v28;
      v27 = v29;
      goto LABEL_7;
    }

    v41 = 1;
    sub_27057E90C();
    OUTLINED_FUNCTION_15_10();
    sub_2705D7FE4();
    v14 = v33;
    sub_2705D8064();
    v25 = *(v32 + 8);
    v26 = v13;
  }

  else
  {
    v40 = 0;
    sub_27057E960();
    OUTLINED_FUNCTION_15_10();
    sub_2705D7FE4();
    sub_2705D8034();
    OUTLINED_FUNCTION_8_31();
    v26 = v18;
  }

  v27 = v14;
LABEL_7:
  v25(v26, v27);
  return (*(v21 + 8))(v24, v19);
}

uint64_t sub_27057B60C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C90);
  OUTLINED_FUNCTION_0();
  v65 = v2;
  v66 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v68 = v60 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7C98);
  OUTLINED_FUNCTION_0();
  v67 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = v60 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7CA0);
  OUTLINED_FUNCTION_0();
  v63 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7CA8);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = v60 - v18;
  v20 = a1[3];
  v69 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_27057E864();
  v22 = v70;
  sub_2705D8484();
  if (v22)
  {
    goto LABEL_12;
  }

  v60[1] = v13;
  v61 = 0;
  v62 = v16;
  v70 = v19;
  v23 = sub_2705D7FB4();
  result = sub_27057E1D0(v23, 0);
  v28 = v14;
  if (v26 == v27 >> 1)
  {
LABEL_11:
    v38 = sub_2705D7D84();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v40 = &unk_28805FD40;
    v21 = v70;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_8_31();
    v41(v21, v28);
LABEL_12:
    v37 = v69;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v21;
  }

  if (v26 < (v27 >> 1))
  {
    v71 = *(v25 + v26);
    sub_27042B944(v26 + 1, v27 >> 1, result, v25, v26, v27);
    v21 = v29;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v21 == v31 >> 1;
    v33 = v67;
    v28 = v14;
    if (v32)
    {
      if (v71)
      {
        if (v71 == 1)
        {
          v73 = 1;
          sub_27057E90C();
          OUTLINED_FUNCTION_15_10();
          v34 = v61;
          sub_2705D7ED4();
          if (v34)
          {
            v35 = OUTLINED_FUNCTION_4_71();
            v36(v35);
            swift_unknownObjectRelease();
          }

          else
          {
            v47 = v64;
            v21 = sub_2705D7F84();
            swift_unknownObjectRelease();
            (*(v33 + 8))(v9, v47);
            v49 = OUTLINED_FUNCTION_4_71();
            v50(v49);
          }

          v37 = v69;
        }

        else
        {
          OUTLINED_FUNCTION_30_18();
          sub_27057E8B8();
          OUTLINED_FUNCTION_15_10();
          v44 = v61;
          sub_2705D7ED4();
          v37 = v69;
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_4_71();
            v46(v45);
            swift_unknownObjectRelease();
          }

          else
          {
            v55 = sub_2705D7F64();
            swift_unknownObjectRelease();
            v56 = OUTLINED_FUNCTION_31_14();
            v57(v56);
            v58 = OUTLINED_FUNCTION_32_16();
            v59(v58);
            v21 = v55 & 1;
          }
        }
      }

      else
      {
        v72 = 0;
        sub_27057E960();
        v42 = v61;
        v21 = v70;
        sub_2705D7ED4();
        if (v42)
        {
          OUTLINED_FUNCTION_8_31();
          v43(v21, v14);
          swift_unknownObjectRelease();
          v37 = v69;
        }

        else
        {
          v48 = sub_2705D7F54();
          v37 = v69;
          v21 = v48;
          swift_unknownObjectRelease();
          v51 = OUTLINED_FUNCTION_33_16();
          v52(v51);
          OUTLINED_FUNCTION_8_31();
          v53 = OUTLINED_FUNCTION_32_16();
          v54(v53);
        }
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_27057BCF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27057B60C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_27057BD40(char a1)
{
  if (!a1)
  {
    return 0xD000000000000037;
  }

  if (a1 == 1)
  {
    return 0xD000000000000024;
  }

  return 0xD000000000000035;
}

uint64_t sub_27057BD9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874615079656BLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6974617265706FLL && a2 == 0xED0000657079546ELL;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27057BEB0(char a1)
{
  if (!a1)
  {
    return 0x6874615079656BLL;
  }

  if (a1 == 1)
  {
    return 0x6F6974617265706FLL;
  }

  return 0x65756C6176;
}

uint64_t sub_27057BF18()
{
  v1 = *v0;
  sub_2705D83B4();
  sub_2703AC2AC(v3, v1);
  return sub_2705D8414();
}

uint64_t sub_27057BF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27057BD9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27057BF94(uint64_t a1)
{
  v2 = sub_27057E9B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27057BFD0(uint64_t a1)
{
  v2 = sub_27057E9B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27057C00C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7CB0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27057E9B4();
  sub_2705D84C4();
  LOBYTE(v12) = 0;
  sub_2705D8034();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 16);
    v14 = 1;
    sub_27057EA08();
    OUTLINED_FUNCTION_26_25();
    v12 = *(v3 + 24);
    v13 = *(v3 + 40);
    OUTLINED_FUNCTION_30_18();
    sub_27057EA5C();
    OUTLINED_FUNCTION_26_25();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_27057C194@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7CD0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27057E9B4();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12) = 0;
  v6 = sub_2705D7F54();
  v8 = v7;
  sub_27057EAB0();
  OUTLINED_FUNCTION_15_10();
  sub_2705D7FA4();
  OUTLINED_FUNCTION_30_18();
  sub_27057EB04();
  OUTLINED_FUNCTION_15_10();
  sub_2705D7FA4();
  v9 = OUTLINED_FUNCTION_2_12();
  v10(v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

double sub_27057C3AC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27057C194(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_27057C408(void *a1)
{
  v3 = sub_2705D6524();
  MEMORY[0x28223BE20](v3 - 8);
  v89 = *(v1 + 3);
  v90 = *(v1 + 40);
  v4 = v89;
  if (!v90)
  {
    v6 = *(&v89 + 1);
    sub_2703D7F04(a1, &v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    v7 = MEMORY[0x277D837D0];
    if (!swift_dynamicCast())
    {
      if (qword_2807D7370 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v88 = *v1;
      *(&v87 + 1) = &unk_28805FC10;
      v13 = swift_allocObject();
      *&v86 = v13;
      v14 = *(v1 + 1);
      v13[1] = *v1;
      v13[2] = v14;
      *(v13 + 41) = *(v1 + 25);
      sub_27057E7E8(&v89, &v84);
      sub_270435FF0(&v88, &v84);
      v15 = AMSLogKey();
      if (v15)
      {
        v16 = v15;
        v82 = sub_2705D7564();
        v18 = v17;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        DynamicType = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = DynamicType;
        sub_2705D64E4();
        sub_2703B2934(&v84, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = v7;
        *&v84 = v82;
        *(&v84 + 1) = v18;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        v38 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = v38;
      }

      sub_2705D64E4();
      sub_2703B2934(&v84, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v86);
      sub_2705D6514();
      sub_2705D6504();
      v39 = a1[3];
      v40 = __swift_project_boxed_opaque_existential_1(a1, v39);
      *(&v87 + 1) = v39;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v86);
      (*(*(v39 - 8) + 16))(boxed_opaque_existential_1Tm, v40, v39);
      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
      *(&v87 + 1) = v7;
      v86 = v88;

      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      v42 = sub_2705D7A64();
      sub_2705B6DB8(v42);
      goto LABEL_81;
    }

    v8 = *(v1 + 16);
    if (v8 == 2)
    {
      v86 = v84;
      v84 = __PAIR128__(v6, v4);
      sub_2703C2F54();
      v10 = sub_2705D7C74();
    }

    else
    {
      if (v8 == 1)
      {
        if (v4 != v84 || v6 != *(&v84 + 1))
        {
          v57 = sub_2705D8134();

          v12 = v57 ^ 1;
          return v12 & 1;
        }

LABEL_81:

        v12 = 0;
        return v12 & 1;
      }

      if (*(v1 + 16))
      {

        if (qword_2807D7370 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
        sub_2705D6574();
        *(swift_allocObject() + 16) = xmmword_2705E6EB0;
        v88 = *v1;
        *(&v87 + 1) = &unk_28805FC10;
        v58 = swift_allocObject();
        *&v86 = v58;
        v59 = *(v1 + 1);
        v58[1] = *v1;
        v58[2] = v59;
        *(v58 + 41) = *(v1 + 25);
        sub_270435FF0(&v88, &v84);
        sub_27057E7E8(&v89, &v84);
        v60 = AMSLogKey();
        if (v60)
        {
          v61 = v60;
          v62 = sub_2705D7564();
          v64 = v63;

          sub_2705D6514();
          sub_2705D6504();
          __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
          v65 = swift_getDynamicType();
          MetatypeMetadata = swift_getMetatypeMetadata();
          *&v84 = v65;
          sub_2705D64E4();
          sub_2703B2934(&v84, &unk_2807D4890);
          sub_2705D6504();
          MetatypeMetadata = MEMORY[0x277D837D0];
          *&v84 = v62;
          *(&v84 + 1) = v64;
        }

        else
        {
          sub_2705D6514();
          sub_2705D6504();
          __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
          v78 = swift_getDynamicType();
          MetatypeMetadata = swift_getMetatypeMetadata();
          *&v84 = v78;
        }

        sub_2705D64E4();
        sub_2703B2934(&v84, &unk_2807D4890);
        sub_2705D6504();
        sub_2705D6534();
        __swift_destroy_boxed_opaque_existential_1(&v86);
        sub_2705D6514();
        sub_2705D6504();
        *(&v87 + 1) = &unk_28805FCB0;
        LOBYTE(v86) = v8;
        sub_2705D64E4();
        sub_2703B2934(&v86, &unk_2807D4890);
        sub_2705D6504();
        sub_2705D6534();
        v47 = sub_2705D7A64();
        goto LABEL_80;
      }

      if (v4 == v84 && v6 == *(&v84 + 1))
      {

        v12 = 1;
        return v12 & 1;
      }

      v10 = sub_2705D8134();
    }

    v12 = v10;

    return v12 & 1;
  }

  if (v90 != 1)
  {
    sub_2703D7F04(a1, &v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    if (swift_dynamicCast())
    {
      v11 = *(v1 + 16);
      if (v11 == 1)
      {
        v12 = v84 ^ v4;
        return v12 & 1;
      }

      if (!*(v1 + 16))
      {
        v12 = v84 ^ v4 ^ 1;
        return v12 & 1;
      }

      if (qword_2807D7370 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      *(&v87 + 1) = &unk_28805FC10;
      v48 = swift_allocObject();
      *&v86 = v48;
      v49 = *(v1 + 1);
      v48[1] = *v1;
      v48[2] = v49;
      *(v48 + 41) = *(v1 + 25);

      v50 = AMSLogKey();
      if (v50)
      {
        v51 = v50;
        v52 = sub_2705D7564();
        v54 = v53;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        v55 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = v55;
        sub_2705D64E4();
        sub_2703B2934(&v84, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        *&v84 = v52;
        *(&v84 + 1) = v54;
        sub_2705D64E4();
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        v77 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = v77;
        sub_2705D64E4();
      }

      sub_2703B2934(&v84, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v86);
      sub_2705D6514();
      sub_2705D6504();
      *(&v87 + 1) = &unk_28805FD40;
      v86 = v89;
      LOBYTE(v87) = v90;
      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
      *(&v87 + 1) = &unk_28805FCB0;
      LOBYTE(v86) = v11;
      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
LABEL_79:
      sub_2705D6534();
      v47 = sub_2705D7A64();
    }

    else
    {
      if (qword_2807D7370 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v21 = *v1;
      v20 = v1[1];
      *(&v87 + 1) = &unk_28805FC10;
      v22 = swift_allocObject();
      *&v86 = v22;
      v23 = *(v1 + 1);
      v22[1] = *v1;
      v22[2] = v23;
      *(v22 + 41) = *(v1 + 25);

      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        v81 = sub_2705D7564();
        v27 = v26;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        v28 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = v28;
        sub_2705D64E4();
        sub_2703B2934(&v84, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        *&v84 = v81;
        *(&v84 + 1) = v27;
        sub_2705D64E4();
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        v43 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = v43;
        sub_2705D64E4();
      }

      sub_2703B2934(&v84, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v86);
      sub_2705D6514();
      sub_2705D6504();
      v44 = a1[3];
      v45 = __swift_project_boxed_opaque_existential_1(a1, v44);
      *(&v87 + 1) = v44;
      v46 = __swift_allocate_boxed_opaque_existential_1Tm(&v86);
      (*(*(v44 - 8) + 16))(v46, v45, v44);
      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
      *(&v87 + 1) = MEMORY[0x277D837D0];
      *&v86 = v21;
      *(&v86 + 1) = v20;

      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      v47 = sub_2705D7A64();
    }

    goto LABEL_80;
  }

  sub_2703D7F04(a1, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  if (swift_dynamicCast())
  {
    v5 = v84;
    goto LABEL_20;
  }

  sub_2703D7F04(a1, &v86);
  if (!swift_dynamicCast())
  {
    if (qword_2807D7370 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v29 = *v1;
    v30 = v1[1];
    *(&v87 + 1) = &unk_28805FC10;
    v31 = swift_allocObject();
    *&v86 = v31;
    v32 = *(v1 + 1);
    v31[1] = *v1;
    v31[2] = v32;
    *(v31 + 41) = *(v1 + 25);

    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      v83 = sub_2705D7564();
      v36 = v35;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      v37 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v84 = v37;
      sub_2705D64E4();
      sub_2703B2934(&v84, &unk_2807D4890);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      *&v84 = v83;
      *(&v84 + 1) = v36;
      sub_2705D64E4();
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      v76 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v84 = v76;
      sub_2705D64E4();
    }

    sub_2703B2934(&v84, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v86);
    sub_2705D6514();
    sub_2705D6504();
    v86 = 0u;
    v87 = 0u;
    sub_2705D64E4();
    sub_2703B2934(&v86, &unk_2807D4890);
    sub_2705D6504();
    *(&v87 + 1) = MEMORY[0x277D837D0];
    *&v86 = v29;
    *(&v86 + 1) = v30;

    sub_2705D64E4();
    sub_2703B2934(&v86, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    v47 = sub_2705D7A64();
LABEL_80:
    sub_2705B6DB8(v47);
    goto LABEL_81;
  }

  v5 = v84;
LABEL_20:
  switch(*(v1 + 16))
  {
    case 1:
      v12 = v4 != v5;
      return v12 & 1;
    case 2:
      if (qword_2807D7370 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      *(&v87 + 1) = &unk_28805FC10;
      v67 = swift_allocObject();
      *&v86 = v67;
      v68 = *(v1 + 1);
      v67[1] = *v1;
      v67[2] = v68;
      *(v67 + 41) = *(v1 + 25);

      v69 = AMSLogKey();
      if (v69)
      {
        v70 = v69;
        v71 = sub_2705D7564();
        v73 = v72;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        v74 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = v74;
        sub_2705D64E4();
        sub_2703B2934(&v84, &unk_2807D4890);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        *&v84 = v71;
        *(&v84 + 1) = v73;
        sub_2705D64E4();
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
        v79 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        *&v84 = v79;
        sub_2705D64E4();
      }

      sub_2703B2934(&v84, &unk_2807D4890);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(&v86);
      sub_2705D6514();
      sub_2705D6504();
      *(&v87 + 1) = &unk_28805FD40;
      v86 = v89;
      LOBYTE(v87) = v90;
      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
      *(&v87 + 1) = &unk_28805FCB0;
      LOBYTE(v86) = 2;
      sub_2705D64E4();
      sub_2703B2934(&v86, &unk_2807D4890);
      sub_2705D6504();
      goto LABEL_79;
    case 3:
      v75 = v5 < v4;
      goto LABEL_62;
    case 4:
      v66 = v4 < v5;
      goto LABEL_66;
    case 5:
      v75 = v4 < v5;
LABEL_62:
      v12 = v75;
      break;
    case 6:
      v66 = v5 < v4;
LABEL_66:
      v12 = !v66;
      break;
    default:
      v12 = v4 == v5;
      break;
  }

  return v12 & 1;
}

unsigned __int8 *sub_27057DB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2705D7734();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_27047F798();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2705D7DB4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_27057E0E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7B68);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_27057E1D0(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_27057E218(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_27057E288(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_27057E2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  v41[0] = a1;
  if (*(a2 + 16))
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);

    sub_27056B884(v5, v6, v7);

    v8 = sub_2705799B0(1, a2);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    if (v13)
    {
      sub_2705D82A4();
      swift_unknownObjectRetain_n();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        swift_unknownObjectRelease();
        v17 = MEMORY[0x277D84F90];
      }

      v18 = *(v17 + 16);

      if (__OFSUB__(v14 >> 1, v12))
      {
        goto LABEL_50;
      }

      if (v18 != (v14 >> 1) - v12)
      {
        goto LABEL_51;
      }

      v19 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v36 = v19;
      if (v19)
      {
        goto LABEL_12;
      }

      v36 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      sub_27057E0E8(v8, v10, v12, v14);
      v36 = v15;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      if (!v7)
      {
        break;
      }

      if (v7 == 1)
      {
        sub_2703D7F04(v41, &v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500);
        if (swift_dynamicCast())
        {
          if ((v5 & 0x8000000000000000) == 0 && v5 < *(v37 + 16))
          {
            sub_2703D7F04(v37 + 32 * v5 + 32, &v39);

            v20 = v40;
            v21 = __swift_project_boxed_opaque_existential_1(&v39, v40);
            v16 = sub_27056B380(v21, v36, a3, v20);

LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(&v39);
            goto LABEL_44;
          }
        }

LABEL_40:

        goto LABEL_43;
      }

      sub_2703D7F04(v41, &v39);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3500);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      v33 = v6;
      v34 = v5;
      v6 = 0;
      v8 = v37;
      v24 = *(v37 + 16);
      v12 = v37 + 32;
      v16 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v24 == v6)
        {

          sub_27056B898(v34, v33, 2);
          goto LABEL_44;
        }

        if (v6 >= *(v8 + 16))
        {
          break;
        }

        sub_2703D7F04(v12, &v39);
        v25 = v40;
        v26 = __swift_project_boxed_opaque_existential_1(&v39, v40);
        v27 = sub_27056B380(v26, v36, a3, v25);
        __swift_destroy_boxed_opaque_existential_1(&v39);
        v14 = *(v27 + 16);
        v5 = *(v16 + 16);
        v10 = v5 + v14;
        if (__OFADD__(v5, v14))
        {
          goto LABEL_46;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v10 > *(v16 + 24) >> 1)
        {
          sub_270572630();
          v16 = v28;
        }

        if (*(v27 + 16))
        {
          if ((*(v16 + 24) >> 1) - *(v16 + 16) < v14)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v14)
          {
            v29 = *(v16 + 16);
            v30 = __OFADD__(v29, v14);
            v31 = v29 + v14;
            if (v30)
            {
              goto LABEL_49;
            }

            *(v16 + 16) = v31;
          }
        }

        else
        {

          if (v14)
          {
            goto LABEL_47;
          }
        }

        v12 += 32;
        ++v6;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_unknownObjectRelease();
    }

    sub_2703D7F04(v41, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    if (swift_dynamicCast())
    {
      sub_270557A00(v5);

      if (v38)
      {
        sub_2703E43D4(&v37, &v39);
        v22 = v40;
        v23 = __swift_project_boxed_opaque_existential_1(&v39, v40);
        v16 = sub_27056B380(v23, v36, a3, v22);

        sub_27056B898(v5, v6, 0);
        goto LABEL_21;
      }

      sub_2703B2934(&v37, &qword_2807D3D80);
    }

    else
    {
    }

    sub_27056B898(v5, v6, 0);
LABEL_43:
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4488);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2705DC030;
    sub_2703D7F04(v41, v16 + 32);
  }

LABEL_44:
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v16;
}

uint64_t sub_27057E820()
{

  sub_27056B898(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_27057E864()
{
  result = qword_2807D7C70;
  if (!qword_2807D7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7C70);
  }

  return result;
}

unint64_t sub_27057E8B8()
{
  result = qword_2807D7C78;
  if (!qword_2807D7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7C78);
  }

  return result;
}

unint64_t sub_27057E90C()
{
  result = qword_2807D7C80;
  if (!qword_2807D7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7C80);
  }

  return result;
}

unint64_t sub_27057E960()
{
  result = qword_2807D7C88;
  if (!qword_2807D7C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7C88);
  }

  return result;
}

unint64_t sub_27057E9B4()
{
  result = qword_2807D7CB8;
  if (!qword_2807D7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7CB8);
  }

  return result;
}

unint64_t sub_27057EA08()
{
  result = qword_2807D7CC0;
  if (!qword_2807D7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7CC0);
  }

  return result;
}

unint64_t sub_27057EA5C()
{
  result = qword_2807D7CC8;
  if (!qword_2807D7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7CC8);
  }

  return result;
}

unint64_t sub_27057EAB0()
{
  result = qword_2807D7CD8;
  if (!qword_2807D7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7CD8);
  }

  return result;
}

unint64_t sub_27057EB04()
{
  result = qword_2807D7CE0;
  if (!qword_2807D7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7CE0);
  }

  return result;
}

unint64_t sub_27057EB5C()
{
  result = qword_2807D7CE8;
  if (!qword_2807D7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7CE8);
  }

  return result;
}

unint64_t sub_27057EBF8()
{
  result = qword_2807D7D00;
  if (!qword_2807D7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D00);
  }

  return result;
}

unint64_t sub_27057EC50()
{
  result = qword_2807D7D08;
  if (!qword_2807D7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D08);
  }

  return result;
}

_BYTE *sub_27057ECBC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x27057ED88);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_27057EDF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x27057EEBCLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_27057EF18(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x27057EFB4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27057EFF0()
{
  result = qword_2807D7D10;
  if (!qword_2807D7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D10);
  }

  return result;
}

unint64_t sub_27057F048()
{
  result = qword_2807D7D18;
  if (!qword_2807D7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D18);
  }

  return result;
}

unint64_t sub_27057F0A0()
{
  result = qword_2807D7D20;
  if (!qword_2807D7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D20);
  }

  return result;
}

unint64_t sub_27057F0F8()
{
  result = qword_2807D7D28;
  if (!qword_2807D7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D28);
  }

  return result;
}

unint64_t sub_27057F150()
{
  result = qword_2807D7D30;
  if (!qword_2807D7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D30);
  }

  return result;
}

unint64_t sub_27057F1A8()
{
  result = qword_2807D7D38;
  if (!qword_2807D7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D38);
  }

  return result;
}

unint64_t sub_27057F200()
{
  result = qword_2807D7D40;
  if (!qword_2807D7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D40);
  }

  return result;
}

unint64_t sub_27057F258()
{
  result = qword_2807D7D48;
  if (!qword_2807D7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D48);
  }

  return result;
}

unint64_t sub_27057F2B0()
{
  result = qword_2807D7D50;
  if (!qword_2807D7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D50);
  }

  return result;
}

unint64_t sub_27057F308()
{
  result = qword_2807D7D58;
  if (!qword_2807D7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D58);
  }

  return result;
}

unint64_t sub_27057F360()
{
  result = qword_2807D7D60;
  if (!qword_2807D7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D60);
  }

  return result;
}

unint64_t sub_27057F3B8()
{
  result = qword_2807D7D68;
  if (!qword_2807D7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D68);
  }

  return result;
}

unint64_t sub_27057F410()
{
  result = qword_2807D7D70;
  if (!qword_2807D7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D70);
  }

  return result;
}

unint64_t sub_27057F468()
{
  result = qword_2807D7D78;
  if (!qword_2807D7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D78);
  }

  return result;
}

unint64_t sub_27057F4C0()
{
  result = qword_2807D7D80;
  if (!qword_2807D7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D80);
  }

  return result;
}

unint64_t sub_27057F514()
{
  result = qword_2807D7D88;
  if (!qword_2807D7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7D88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_69()
{
  *(v1 - 296) = v0;
  v3 = *(v1 - 248);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 272, v3);
}

uint64_t OUTLINED_FUNCTION_13_43()
{
  __swift_project_boxed_opaque_existential_1((v0 - 112), *(v0 - 88));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_14_42()
{
  __swift_project_boxed_opaque_existential_1((v0 - 112), *(v0 - 88));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_24_28@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 120) = a1;
  *(v3 - 144) = v1;
  *(v3 - 136) = v2;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_26_25()
{

  return sub_2705D8084();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_28_20(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;

  return sub_2705D64E4();
}

void OUTLINED_FUNCTION_29_16()
{
  *(v2 - 216) = v0;
}

uint64_t OUTLINED_FUNCTION_34_18()
{
  __swift_destroy_boxed_opaque_existential_1(*(v0 - 216));

  return __swift_destroy_boxed_opaque_existential_1(v0 - 112);
}

id sub_27057F7BC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_27057F80C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_27057F874(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_27057FDBC(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_2705D7534();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_27057F96C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account) ams_DSID];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringValue];

    v2 = sub_2705D7564();
  }

  return v2;
}

id sub_27057FA20()
{
  v1 = [*(v0 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account) ams_accountFlags];
  if (v1)
  {
    type metadata accessor for AMSAccountFlag(0);
    sub_27047D5E0();
    sub_27057FEA0();
    v2 = sub_2705D7464();

    v1 = sub_27056A6D0(v2);
  }

  return v1;
}

id sub_27057FB40(void *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account) ams:*a1 accountFlagValueForAccountFlag:?])
  {
    sub_2705D7C84();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_2704B667C(v7);
    return 0;
  }

  sub_27047D5E0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v4 BOOLValue];

  return v2;
}

id sub_27057FCA0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_27047D5E0();
    v6 = sub_2705D7454();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_27057FD28()
{
  v1 = [*(v0 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account) ams_privacyAcknowledgement];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_27047D5E0();
  v3 = sub_2705D7464();

  return v3;
}

uint64_t sub_27057FDBC(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSAccount_account) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2705D7564();

  return v4;
}

unint64_t sub_27057FEA0()
{
  result = qword_2807D7480;
  if (!qword_2807D7480)
  {
    type metadata accessor for AMSAccountFlag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7480);
  }

  return result;
}

uint64_t sub_27057FF9C()
{
  OUTLINED_FUNCTION_19_27();
  v0 = OUTLINED_FUNCTION_18_27();
  v1 = OUTLINED_FUNCTION_23_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v2 = OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_1_1(v2);
  v3 = OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_7_58(v3, xmmword_2705E6EB0);
  if (AMSLogKey())
  {
    sub_2705D7564();
    OUTLINED_FUNCTION_17_34();
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_4_72();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_11_46(MetatypeMetadata);
    sub_2704B667C(&v8);
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_12_43(MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_3_81();
    v5 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_10_50(v5);
  }

  sub_2704B667C(&v8);
  sub_2705D6504();
  OUTLINED_FUNCTION_21_30();
  __swift_destroy_boxed_opaque_existential_1(&v9);
  OUTLINED_FUNCTION_5_72();
  if (qword_2807D7368 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  v6 = sub_2705D7A74();
  sub_2705B6DB8(v6);

  return OUTLINED_FUNCTION_16_33();
}

uint64_t sub_270580188()
{
  OUTLINED_FUNCTION_19_27();
  v0 = OUTLINED_FUNCTION_18_27();
  v1 = OUTLINED_FUNCTION_23_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v2 = OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_1_1(v2);
  v3 = OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_7_58(v3, xmmword_2705E6EB0);
  if (AMSLogKey())
  {
    sub_2705D7564();
    OUTLINED_FUNCTION_17_34();
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_4_72();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_11_46(MetatypeMetadata);
    sub_2704B667C(&v8);
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_12_43(MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_3_81();
    v5 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_10_50(v5);
  }

  sub_2704B667C(&v8);
  sub_2705D6504();
  OUTLINED_FUNCTION_21_30();
  __swift_destroy_boxed_opaque_existential_1(&v9);
  sub_2705D64C4();
  if (qword_2807D7368 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  v6 = sub_2705D7A74();
  sub_2705B6DB8(v6);

  return OUTLINED_FUNCTION_16_33();
}

uint64_t sub_270580388()
{
  OUTLINED_FUNCTION_19_27();
  v0 = OUTLINED_FUNCTION_18_27();
  v1 = OUTLINED_FUNCTION_23_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v2 = OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_1_1(v2);
  v3 = OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_7_58(v3, xmmword_2705E6EB0);
  if (AMSLogKey())
  {
    sub_2705D7564();
    OUTLINED_FUNCTION_17_34();
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_4_72();
    MetatypeMetadata = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_11_46(MetatypeMetadata);
    sub_2704B667C(&v8);
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_12_43(MEMORY[0x277D837D0]);
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_3_81();
    v5 = swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_10_50(v5);
  }

  sub_2704B667C(&v8);
  sub_2705D6504();
  OUTLINED_FUNCTION_21_30();
  __swift_destroy_boxed_opaque_existential_1(&v9);
  OUTLINED_FUNCTION_5_72();
  if (qword_2807D7368 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  v6 = sub_2705D7A74();
  sub_2705B6DB8(v6);

  return OUTLINED_FUNCTION_16_33();
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_87()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_81()
{
  __swift_project_boxed_opaque_existential_1((v0 - 96), *(v0 - 72));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_4_72()
{
  __swift_project_boxed_opaque_existential_1((v0 - 96), *(v0 - 72));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_5_72()
{

  return sub_2705D64C4();
}

id OUTLINED_FUNCTION_7_58(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v4 - 72) = v3;
  *(v4 - 96) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_10_50(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_11_46(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_12_43@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;

  return sub_2705D64E4();
}

void OUTLINED_FUNCTION_17_34()
{
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return sub_2705D6524();
}

uint64_t OUTLINED_FUNCTION_19_27()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_21_30()
{

  return sub_2705D6534();
}

uint64_t sub_270580770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D45C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7E88);

  return swift_storeEnumTagMultiPayload();
}

id sub_270580EB0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2705D45C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7E88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E8);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_accounts] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7828);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_app] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7830);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_backlog] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7838);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_client] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7E90);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_content] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F0);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_device] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7E98);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_database] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F8);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_localize] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7800);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_location] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E0);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_log] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7808);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_media] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7840);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_metrics] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7810);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_privacy] = v13;
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_props] = sub_2705D7494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EA0);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_plugin] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EA8);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_subscription] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7818);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_userNotifications] = v13;
  OUTLINED_FUNCTION_2_88();
  sub_2705D45B4();
  sub_270580770(v5, v8);
  (*(v3 + 8))(v5, v2);
  sub_270581DF4(v8, &v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_uuid]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7848);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_family] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EB0);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_featureFlag] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7820);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_followUp] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EB8);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_marketing] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EC0);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_mediaCatalogSync] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EC8);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_onDeviceDataService] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7ED0);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_runningBoardServices] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7ED8);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_serverDataCache] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EE0);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_telephony] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EE8);
  OUTLINED_FUNCTION_2_88();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSAMS_treatmentStore] = v13;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_init);

  return v9;
}

uint64_t type metadata accessor for JSAMS()
{
  result = qword_2807D7E30;
  if (!qword_2807D7E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270581700()
{
  sub_2705817E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2705817E0()
{
  if (!qword_2807D7E40)
  {
    sub_2705D45C4();
    v0 = type metadata accessor for AppReference();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D7E40);
    }
  }
}

id sub_2705819D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_2705D7454();

  return v3;
}

id sub_270581A88()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E8);
  OUTLINED_FUNCTION_3_82();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_accounts] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F0);
  OUTLINED_FUNCTION_3_82();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_device] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77F8);
  OUTLINED_FUNCTION_3_82();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_localize] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7800);
  OUTLINED_FUNCTION_3_82();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_location] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D77E0);
  OUTLINED_FUNCTION_3_82();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_log] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7810);
  OUTLINED_FUNCTION_3_82();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_privacy] = v5;
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_props] = sub_2705D7494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7818);
  OUTLINED_FUNCTION_3_82();
  *&v0[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore16MessagePageJSAMS_userNotifications] = v5;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);

  return v2;
}

uint64_t sub_270581D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270581DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_88()
{

  return sub_2705D68B4();
}

uint64_t OUTLINED_FUNCTION_3_82()
{

  return sub_2705D68B4();
}

uint64_t sub_270581F28()
{
  v1 = *(v0 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSApp_name);

  return v1;
}

id sub_270581F64(char a1)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v2 = 0xEF736E6F69746164;
      v3 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v4 = &v1[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSApp_name];
  *v4 = v3;
  v4[1] = v2;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JSApp();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_270582084()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSApp();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2705820F0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_270411828;

  return v5();
}

uint64_t sub_2705821D8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F28);
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2705822A8, 0, 0);
}

uint64_t sub_2705822A8()
{
  v2 = v0[15];
  v1 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_27058240C;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_270610288;
  *(v5 + 24) = v4;
  v0[13] = &unk_270610298;
  v0[14] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7780);
  sub_2705D7904();
  v6 = OUTLINED_FUNCTION_11_7();
  v7(v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27058240C()
{
  OUTLINED_FUNCTION_27_21();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();

    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 88);
    v9 = *(v1 + 96);

    v10 = *(v3 + 8);

    return v10(v7, v8, v9);
  }
}

uint64_t sub_270582588(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_27058267C;

  return v5(v2 + 16);
}

uint64_t sub_27058267C()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_27_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_270582774()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 32);
  v2 = *(*(*(v0 + 40) + 64) + 40);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v1;
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_2705827F4()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
  swift_allocError();
  *v2 = v1;
  swift_continuation_throwingResumeWithError();
  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_270582888(char a1)
{
  OUTLINED_FUNCTION_12_44();
  v2 = swift_allocObject();
  sub_2705829D0(a1);
  return v2;
}

double sub_2705828F8()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 32);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void sub_27058293C(char a1, double a2)
{
  os_unfair_lock_lock((v2 + 16));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_27058298C()
{
  os_unfair_lock_lock(v0 + 10);

  os_unfair_lock_unlock(v0 + 10);
  return OUTLINED_FUNCTION_11_7();
}

uint64_t sub_2705829D0(char a1)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v2 = a1 != 0;
  v3 = sub_2705C5418(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 25) = 0;
  *(v1 + 28) = 0;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_270582A18(char a1, double a2)
{
  OUTLINED_FUNCTION_12_44();
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 25) = 0;
  *(result + 28) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_270582A68(char a1, double a2)
{
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 25) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = a2;
  return v2;
}

void sub_270582A8C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 40));

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  os_unfair_lock_unlock((v2 + 40));
}

uint64_t sub_270582B18()
{
  sub_2703B2934(v0 + 48, &qword_2807D35B0);
  v1 = OUTLINED_FUNCTION_12_44();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

BOOL sub_270582B58()
{
  v0 = sub_2705D7EB4();

  return v0 != 0;
}

BOOL sub_270582BC8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_270582B58();
  *a1 = result;
  return result;
}

unint64_t sub_270582BFC@<X0>(void *a1@<X8>)
{
  result = sub_270582BA0();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_270582C2C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_270582C6C(a1);
  return v2;
}

uint64_t sub_270582C6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D73E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore11JSAppEngine_serialQueue;
  v11 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
  sub_270560D7C(v9, v6, v1 + v10);
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_270582DDC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a5;
  *(v7 + 81) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_270582E0C, v6, 0);
}

uint64_t sub_270582E0C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 81);
  v6 = *(v0 + 16);
  v7 = *(v0 + 80);
  v8 = swift_allocObject();
  *(v0 + 56) = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  *(v8 + 32) = v3;
  *(v8 + 40) = v7;
  *(v8 + 41) = v5;
  *(v8 + 48) = v4;
  *(v8 + 56) = v2;

  sub_2703AE9FC(v6, v3, v7);

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_270582F58;

  return sub_2705821D8(&unk_270610178, v8);
}

uint64_t sub_270582F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_70();
  v9 = v8;
  OUTLINED_FUNCTION_5_40();
  *v10 = v9;
  v11 = *v4;
  OUTLINED_FUNCTION_5_15();
  *v12 = v11;
  *(v9 + 72) = v3;

  if (v3)
  {
    v13 = *(v9 + 48);

    return MEMORY[0x2822009F8](sub_2705830B8, v13, 0);
  }

  else
  {

    v14 = *(v11 + 8);

    return v14(a1, a2, a3);
  }
}

uint64_t sub_2705830B8()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270583114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 265) = a6;
  *(v8 + 264) = a5;
  *(v8 + 88) = a3;
  *(v8 + 96) = a4;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
  return MEMORY[0x2822009F8](sub_270583144, 0, 0);
}

uint64_t sub_270583144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F30);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v12 + 120) = v13;
  *v13 = v14;
  v13[1] = sub_2705831F4;
  OUTLINED_FUNCTION_28_21();

  return MEMORY[0x28217F228](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2705831F4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_27_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2705832EC()
{
  OUTLINED_FUNCTION_23_14();
  v1 = *(v0 + 265);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = sub_2705A54D4(v2, v3, *(v0 + 264));
  if (v1)
  {
    v4 = sub_2705D8134();

    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  sub_270557A00(0x73746E657665);
  if (!*(v0 + 40))
  {
    sub_2703B2934(v0 + 16, &qword_2807D3D80);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v10 = swift_task_alloc();
    *(v0 + 232) = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_7_59(v10);

    return sub_270583A44();
  }

  v7 = *(v0 + 64);
  *(v0 + 160) = v7;
  v8 = *(v7 + 2);
  *(v0 + 176) = *(v0 + 128);
  *(v0 + 184) = 0;
  *(v0 + 168) = v8;
  if (!v8)
  {

    goto LABEL_14;
  }

  if (*(v7 + 2))
  {
    *(v0 + 192) = *(v7 + 4);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_23_24(ObjectType);
    sub_2705D7844();
    v7 = OUTLINED_FUNCTION_8_58();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2705834F8()
{
  OUTLINED_FUNCTION_23_14();
  v1 = *(v0 + 176);
  (*(v0 + 208))(*(v0 + 192), *(v0 + 200), *(v0 + 144));
  *(v0 + 224) = v1;
  if (v1)
  {
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2705835A0()
{
  OUTLINED_FUNCTION_23_14();

  v3 = v0[23] + 1;
  v0[22] = v0[28];
  v0[23] = v3;
  v4 = v0[20];
  if (v3 == v0[21])
  {

    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_7_59(v5);

    return sub_270583A44();
  }

  else
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v0[24] = *(v4 + 8 * v3 + 32);
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_23_24(ObjectType);
      v8 = sub_2705D7844();
      v4 = OUTLINED_FUNCTION_8_58(v8);
    }

    return MEMORY[0x2822009F8](v4, v1, v2);
  }
}

uint64_t sub_27058369C()
{
  OUTLINED_FUNCTION_10_48();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v9 = v8;
  *v9 = *v1;
  *(v8 + 240) = v0;

  if (!v0)
  {
    *(v8 + 266) = v3;
    *(v8 + 248) = v5;
    *(v8 + 256) = v7;
  }

  OUTLINED_FUNCTION_18_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2705837E4()
{
  OUTLINED_FUNCTION_23_14();
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 266);
  v4 = *(v0 + 72);
  swift_unknownObjectRelease();
  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = v3;
  OUTLINED_FUNCTION_1_4();

  return v5();
}

uint64_t sub_270583880()
{
  OUTLINED_FUNCTION_2_2();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2705838DC()
{
  OUTLINED_FUNCTION_2_2();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_270583938()
{

  sub_2703F6F50(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  OUTLINED_FUNCTION_12_44();

  return swift_deallocObject();
}

uint64_t sub_27058397C()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_48();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_270411828;
  OUTLINED_FUNCTION_31_15();

  return sub_270583114(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_270583A44()
{
  OUTLINED_FUNCTION_2_2();
  *(v1 + 704) = v0;
  *(v1 + 696) = v2;
  *(v1 + 688) = v3;
  *(v1 + 1044) = v4;
  *(v1 + 680) = v5;
  v6 = sub_2705D6484();
  *(v1 + 712) = v6;
  OUTLINED_FUNCTION_1_1(v6);
  *(v1 + 720) = v7;
  *(v1 + 728) = OUTLINED_FUNCTION_16_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F18);
  *(v1 + 736) = v8;
  OUTLINED_FUNCTION_1_1(v8);
  *(v1 + 744) = v9;
  *(v1 + 752) = OUTLINED_FUNCTION_16_3();
  v10 = sub_2705D64B4();
  *(v1 + 760) = v10;
  OUTLINED_FUNCTION_1_1(v10);
  *(v1 + 768) = v11;
  *(v1 + 776) = OUTLINED_FUNCTION_16_3();
  v12 = sub_2705D7DD4();
  *(v1 + 784) = v12;
  OUTLINED_FUNCTION_1_1(v12);
  *(v1 + 792) = v13;
  *(v1 + 800) = OUTLINED_FUNCTION_16_3();
  sub_2705D6524();
  *(v1 + 808) = OUTLINED_FUNCTION_16_3();
  v14 = sub_2705D6F74();
  *(v1 + 816) = v14;
  OUTLINED_FUNCTION_1_1(v14);
  *(v1 + 824) = v15;
  *(v1 + 832) = OUTLINED_FUNCTION_16_3();
  v16 = sub_2705D7204();
  *(v1 + 840) = v16;
  OUTLINED_FUNCTION_1_1(v16);
  *(v1 + 848) = v17;
  *(v1 + 856) = OUTLINED_FUNCTION_16_3();
  v18 = sub_2705D4594();
  *(v1 + 864) = v18;
  OUTLINED_FUNCTION_1_1(v18);
  *(v1 + 872) = v19;
  *(v1 + 880) = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x2822009F8](sub_270583CF8, v0, 0);
}

uint64_t sub_270583CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_2_2();
  v13 = v12[88];
  sub_2705D4584();
  v12[111] = *(v13 + 112);
  type metadata accessor for JSRuntime();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v12[112] = v14;
  *v14 = v15;
  v14[1] = sub_270583DA4;
  OUTLINED_FUNCTION_28_21();

  return MEMORY[0x28217F228](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_270583DA4()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_5_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 904) = v0;

  OUTLINED_FUNCTION_36_15();
  OUTLINED_FUNCTION_35_17();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270583EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 832);
  v14 = *(v12 + 824);
  v56 = *(v12 + 816);
  v15 = *(v12 + 696);
  v16 = *(v12 + 688);
  v17 = *(v12 + 680);
  *(v12 + 912) = *(v12 + 672);
  v18 = *(v12 + 1044);
  v19 = sub_2705C5418(*(v12 + 1044));
  sub_27058293C(v18 != 0, v19);
  sub_270582A8C(v16, v15);
  sub_2705C5418(v18);
  v20 = sub_27046C7B8(v17);
  sub_2705A6E54(v18 == 0, v20);
  sub_2705D71E4();
  v21 = sub_2705D6F54();
  v23 = v22;
  v24 = *(v14 + 8);
  v24(v13, v56);
  v57 = v23;
  MEMORY[0x2743A3A90](46, 0xE100000000000000);
  sub_2705D71E4();
  v25 = sub_2705D6F64();
  v27 = v26;
  v24(v13, v56);
  MEMORY[0x2743A3A90](v25, v27);

  v55 = v21;
  if (qword_2807D7380 != -1)
  {
    OUTLINED_FUNCTION_13_44();
  }

  v28 = *(v12 + 704);
  *(v12 + 920) = qword_28081C600;
  *(v12 + 928) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v29 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v29);
  *(v12 + 936) = *(v30 + 72);
  *(v12 + 1040) = *(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v32 = type metadata accessor for JSAppEngine();
  *(v12 + 944) = v32;
  *(v12 + 72) = v32;
  *(v12 + 48) = v28;

  v33 = AMSLogKey();
  v34 = MEMORY[0x277D837D0];
  if (v33)
  {
    v35 = v33;
    v36 = v12 + 16;
    v37 = sub_2705D7564();
    v39 = v38;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
    DynamicType = swift_getDynamicType();
    *(v12 + 616) = swift_getMetatypeMetadata();
    *(v12 + 592) = DynamicType;
    sub_2705D64E4();
    sub_2703B2934(v12 + 592, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v12 + 40) = v34;
    *(v12 + 16) = v37;
    *(v12 + 24) = v39;
  }

  else
  {
    v36 = v12 + 80;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v41 = OUTLINED_FUNCTION_32_4((v12 + 48));
    *(v12 + 104) = swift_getMetatypeMetadata();
    *(v12 + 80) = v41;
  }

  sub_2705D64E4();
  sub_2703B2934(v36, &unk_2807D4890);
  v42 = *(v12 + 680);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v12 + 48);
  sub_2705D6514();
  sub_2705D6504();
  *(v12 + 136) = v34;
  *(v12 + 112) = v55;
  *(v12 + 120) = v57;
  sub_2705D64E4();
  sub_2703B2934(v12 + 112, &unk_2807D4890);
  sub_2705D6504();
  *(v12 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
  *(v12 + 144) = v42;

  sub_2705D64F4();
  sub_2703B2934(v12 + 144, &unk_2807D4890);
  OUTLINED_FUNCTION_12_20();
  sub_2705D6534();
  v43 = sub_2705D7A94();
  sub_2705B6DB8(v43);

  sub_2705D7054();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v12 + 952) = v44;
  *v44 = v45;
  v44[1] = sub_27058437C;
  OUTLINED_FUNCTION_28_21();

  return MEMORY[0x28217F228](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_27058437C()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_5_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 960) = v0;

  OUTLINED_FUNCTION_36_15();
  OUTLINED_FUNCTION_35_17();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270584490()
{
  v0[121] = v0[81];
  sub_2705D71C4();
  if (v1)
  {
    type metadata accessor for Defaults();
    v2 = sub_27056A42C(3);
    if ((v3 & 1) != 0 || v2 < 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88);
      *(swift_allocObject() + 16) = xmmword_2705DC030;
      sub_2705D4544();
      v0[126] = OUTLINED_FUNCTION_6_70(MEMORY[0x277D839F8], v12);
      v0[127] = v13;
      swift_task_alloc();
      OUTLINED_FUNCTION_34_9();
      v0[128] = v14;
      *v14 = v15;
      v16 = OUTLINED_FUNCTION_0_89(v14);

      return MEMORY[0x2821805A8](v16);
    }

    else
    {
      sub_270585B80(v2);
      sub_2705D8304();
      v4 = swift_task_alloc();
      v0[124] = v4;
      *v4 = v0;
      v5 = OUTLINED_FUNCTION_5_73(v4);

      return sub_2704E8810(v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v11 = swift_task_alloc();
    v0[122] = v11;
    *v11 = v0;
    v11[1] = sub_270584690;

    return sub_270585BB0();
  }
}

uint64_t sub_270584690()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_5_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 984) = v0;

  OUTLINED_FUNCTION_36_15();
  OUTLINED_FUNCTION_35_17();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2705847A4()
{
  OUTLINED_FUNCTION_23_14();
  type metadata accessor for Defaults();
  v1 = sub_27056A42C(3);
  if ((v2 & 1) != 0 || v1 < 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88);
    *(swift_allocObject() + 16) = xmmword_2705DC030;
    sub_2705D4544();
    v0[126] = OUTLINED_FUNCTION_6_70(MEMORY[0x277D839F8], v10);
    v0[127] = v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_34_9();
    v0[128] = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_0_89(v12);

    return MEMORY[0x2821805A8](v14);
  }

  else
  {
    sub_270585B80(v1);
    sub_2705D8304();
    v3 = swift_task_alloc();
    v0[124] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_5_73(v3);

    return sub_2704E8810(v4, v5, v6, v7, v8);
  }
}

uint64_t sub_270584908()
{
  OUTLINED_FUNCTION_23_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1000) = v0;

  v5 = v2[100];
  v6 = v2[99];
  v7 = v2[98];
  v8 = v2[88];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_270584B3C;
  }

  else
  {
    v9 = sub_270584A78;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_270584A78()
{
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3B88);
  *(swift_allocObject() + 16) = xmmword_2705DC030;
  sub_2705D4544();
  v0[126] = OUTLINED_FUNCTION_6_70(MEMORY[0x277D839F8], v1);
  v0[127] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[128] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_89(v3);

  return MEMORY[0x2821805A8](v5);
}

uint64_t sub_270584B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_20_26();

  v10 = OUTLINED_FUNCTION_29_17();
  v11(v10);
  v12 = OUTLINED_FUNCTION_11_7();
  v13(v12);
  OUTLINED_FUNCTION_1_87();

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_31_15();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_270584C04()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_37_14();
  OUTLINED_FUNCTION_5_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1032) = v0;

  OUTLINED_FUNCTION_36_15();
  OUTLINED_FUNCTION_35_17();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_270584D18()
{
  v1 = *(v0 + 752);
  sub_2705D64A4();
  sub_2705D6794();
  v2 = OUTLINED_FUNCTION_11_7();
  v3(v2);
  sub_2705D6464();
  v4 = OUTLINED_FUNCTION_29_17();
  v5(v4);
  if (!*(v0 + 392))
  {
    sub_2703B2934(v0 + 368, &unk_2807D4890);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v7 = *(v0 + 776);
    v11 = *(v0 + 768);
    v1 = *(v0 + 760);
    sub_2705861FC();
    swift_allocError();
    swift_willThrow();
    (*(v11 + 8))(v7, v1);
    goto LABEL_7;
  }

  v6 = *(v0 + 1032);
  v7 = *(v0 + 664);
  sub_2705A4A54(v7);
  if (v6)
  {
    (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));

LABEL_7:
    *(OUTLINED_FUNCTION_19_28() + 16) = xmmword_2705E6EB0;
    *(v0 + 200) = v1;
    *(v0 + 176) = v7;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      v14 = v0 + 336;
      v15 = sub_2705D7564();
      v17 = v16;

      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
      DynamicType = swift_getDynamicType();
      *(v0 + 328) = swift_getMetatypeMetadata();
      *(v0 + 304) = DynamicType;
      sub_2705D64E4();
      sub_2703B2934(v0 + 304, &unk_2807D4890);
      OUTLINED_FUNCTION_7_24();
      *(v0 + 360) = MEMORY[0x277D837D0];
      *(v0 + 336) = v15;
      *(v0 + 344) = v17;
    }

    else
    {
      v14 = v0 + 208;
      OUTLINED_FUNCTION_6_31();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
      v19 = swift_getDynamicType();
      *(v0 + 232) = swift_getMetatypeMetadata();
      *(v0 + 208) = v19;
    }

    sub_2705D64E4();
    sub_2703B2934(v14, &unk_2807D4890);
    v20 = *(v0 + 1016);
    v21 = *(v0 + 1008);
    v22 = *(v0 + 872);
    v57 = *(v0 + 864);
    v59 = *(v0 + 880);
    v55 = *(v0 + 856);
    v23 = *(v0 + 848);
    v54 = *(v0 + 840);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 176);
    sub_2705D6514();
    OUTLINED_FUNCTION_38_12();
    *(v0 + 264) = MEMORY[0x277D837D0];
    *(v0 + 240) = v21;
    *(v0 + 248) = v20;
    sub_2705D64E4();
    sub_2703B2934(v0 + 240, &unk_2807D4890);
    OUTLINED_FUNCTION_30_19();
    swift_getErrorValue();
    v24 = *(v0 + 624);
    v25 = *(v0 + 632);
    *(v0 + 296) = v25;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 272));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1Tm, v24, v25);
    sub_2705D64E4();
    sub_2703B2934(v0 + 272, &unk_2807D4890);
    OUTLINED_FUNCTION_12_20();
    sub_2705D6534();
    v27 = sub_2705D7A74();
    sub_2705B6DB8(v27);

    swift_willThrow();

    (*(v23 + 8))(v55, v54);
    (*(v22 + 8))(v59, v57);
    OUTLINED_FUNCTION_21_31();

    OUTLINED_FUNCTION_1_4();

    return v28();
  }

  v56 = v10;
  v58 = v9;
  v60 = v8;
  v30 = *(v0 + 944);
  v31 = *(v0 + 704);

  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  *(v0 + 424) = v30;
  *(v0 + 400) = v31;

  v32 = AMSLogKey();
  v33 = MEMORY[0x277D837D0];
  if (v32)
  {
    v34 = v32;
    v35 = v0 + 560;
    v36 = sub_2705D7564();
    v38 = v37;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v39 = OUTLINED_FUNCTION_39_10();
    *(v0 + 552) = swift_getMetatypeMetadata();
    *(v0 + 528) = v39;
    sub_2705D64E4();
    sub_2703B2934(v0 + 528, &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    *(v0 + 584) = v33;
    *(v0 + 560) = v36;
    *(v0 + 568) = v38;
  }

  else
  {
    v35 = v0 + 432;
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v40 = OUTLINED_FUNCTION_39_10();
    *(v0 + 456) = swift_getMetatypeMetadata();
    *(v0 + 432) = v40;
  }

  sub_2705D64E4();
  sub_2703B2934(v35, &unk_2807D4890);
  v41 = *(v0 + 1016);
  v42 = *(v0 + 1008);
  v52 = *(v0 + 864);
  v53 = *(v0 + 880);
  v50 = *(v0 + 856);
  v51 = *(v0 + 872);
  v49 = *(v0 + 840);
  v45 = *(v0 + 768);
  v46 = *(v0 + 848);
  v47 = *(v0 + 760);
  v48 = *(v0 + 776);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v0 + 400);
  sub_2705D6514();
  sub_2705D6504();
  *(v0 + 488) = v33;
  *(v0 + 464) = v42;
  *(v0 + 472) = v41;
  sub_2705D64E4();
  sub_2703B2934(v0 + 464, &unk_2807D4890);
  sub_2705D6504();
  *(v0 + 520) = &type metadata for CoreJSONObject;
  *(v0 + 496) = v60;
  *(v0 + 504) = v58;
  *(v0 + 512) = v56;
  sub_2703AE9FC(v60, v58, v56);
  sub_2705D64F4();
  sub_2703B2934(v0 + 496, &unk_2807D4890);
  OUTLINED_FUNCTION_12_20();
  sub_2705D6534();
  v43 = sub_2705D7A94();
  sub_2705B6DB8(v43);

  (*(v45 + 8))(v48, v47);
  (*(v46 + 8))(v50, v49);
  (*(v51 + 8))(v53, v52);

  v44 = *(v0 + 8);

  return v44(v60, v58, v56);
}

uint64_t sub_27058558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_48();
  (*(v10[109] + 8))(v10[110], v10[108]);
  OUTLINED_FUNCTION_1_87();

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_31_15();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_270585640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_48();
  v11 = v10[110];
  v12 = v10[109];
  v13 = v10[108];
  v14 = v10[107];
  v15 = v10[106];
  v16 = v10[105];

  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);
  OUTLINED_FUNCTION_1_87();

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_31_15();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_270585728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_10_48();
  OUTLINED_FUNCTION_20_26();

  v10 = OUTLINED_FUNCTION_29_17();
  v11(v10);
  v12 = OUTLINED_FUNCTION_11_7();
  v13(v12);
  OUTLINED_FUNCTION_1_87();

  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_31_15();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2705857F0()
{
  v3 = OUTLINED_FUNCTION_19_28();
  v2[22] = v1;
  *(v3 + 16) = xmmword_2705E6EB0;
  v2[25] = v0;

  v4 = AMSLogKey();
  v5 = MEMORY[0x277D837D0];
  if (v4)
  {
    v6 = v4;
    v7 = (v2 + 42);
    v8 = sub_2705D7564();
    v10 = v9;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
    DynamicType = swift_getDynamicType();
    v2[41] = swift_getMetatypeMetadata();
    v2[38] = DynamicType;
    sub_2705D64E4();
    sub_2703B2934((v2 + 38), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v2[45] = v5;
    v2[42] = v8;
    v2[43] = v10;
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
    v12 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v2[26] = v12;
    v7 = (v2 + 26);
    v2[29] = MetatypeMetadata;
  }

  sub_2705D64E4();
  sub_2703B2934(v7, &unk_2807D4890);
  v14 = v2[127];
  v15 = v2[126];
  v16 = v2[109];
  v26 = v2[108];
  v27 = v2[110];
  v25 = v2[107];
  v17 = v2[106];
  v24 = v2[105];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v2 + 22));
  sub_2705D6514();
  OUTLINED_FUNCTION_38_12();
  v2[33] = MEMORY[0x277D837D0];
  v2[30] = v15;
  v2[31] = v14;
  sub_2705D64E4();
  sub_2703B2934((v2 + 30), &unk_2807D4890);
  OUTLINED_FUNCTION_30_19();
  swift_getErrorValue();
  v18 = v2[78];
  v19 = v2[79];
  v2[37] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v2 + 34);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v19);
  sub_2705D64E4();
  sub_2703B2934((v2 + 34), &unk_2807D4890);
  OUTLINED_FUNCTION_12_20();
  sub_2705D6534();
  v21 = sub_2705D7A74();
  sub_2705B6DB8(v21);

  swift_willThrow();

  (*(v17 + 8))(v25, v24);
  (*(v16 + 8))(v27, v26);
  OUTLINED_FUNCTION_21_31();

  OUTLINED_FUNCTION_1_4();

  return v22();
}

uint64_t sub_270585BB0()
{
  OUTLINED_FUNCTION_2_2();
  v1[23] = v0;
  v1[22] = v2;
  sub_2705D6524();
  v1[24] = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x2822009F8](sub_270585C38, v0, 0);
}

uint64_t sub_270585C38()
{
  if (qword_2807D7380 != -1)
  {
    OUTLINED_FUNCTION_13_44();
  }

  v1 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  v2 = sub_2705D6574();
  OUTLINED_FUNCTION_1_1(v2);
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v0[5] = type metadata accessor for JSAppEngine();
  v0[2] = v1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    v5 = (v0 + 18);
    v6 = sub_2705D7564();
    v8 = v7;

    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_20();
    v9 = OUTLINED_FUNCTION_32_4(v0 + 2);
    v0[17] = swift_getMetatypeMetadata();
    v0[14] = v9;
    sub_2705D64E4();
    sub_2703B2934((v0 + 14), &unk_2807D4890);
    OUTLINED_FUNCTION_7_24();
    v0[21] = MEMORY[0x277D837D0];
    v0[18] = v6;
    v0[19] = v8;
  }

  else
  {
    v5 = (v0 + 6);
    OUTLINED_FUNCTION_6_31();
    OUTLINED_FUNCTION_12_20();
    v10 = OUTLINED_FUNCTION_32_4(v0 + 2);
    v0[9] = swift_getMetatypeMetadata();
    v0[6] = v10;
  }

  sub_2705D64E4();
  sub_2703B2934(v5, &unk_2807D4890);
  v11 = v0[22];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_2705D6514();
  sub_2705D6504();
  v0[13] = MEMORY[0x277D839F8];
  v0[10] = v11;
  sub_2705D64E4();
  sub_2703B2934((v0 + 10), &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  v12 = sub_2705D7A54();
  sub_2705B6DB8(v12);

  OUTLINED_FUNCTION_1_4();

  return v13();
}

uint64_t sub_270585F20()
{

  sub_270585F58(v0 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore11JSAppEngine_serialQueue);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_270585F58(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270585FB4()
{
  sub_270585F20();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_270586004()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7EF8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_270586034()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F00);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t getEnumTagSinglePayload for JSRuntime.TimeoutDetails(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for JSRuntime.TimeoutDetails(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for JSAppEngine()
{
  result = qword_2807D7F08;
  if (!qword_2807D7F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270586154()
{
  sub_270560D18();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2705861FC()
{
  result = qword_2807D7F20;
  if (!qword_2807D7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7F20);
  }

  return result;
}

uint64_t sub_270586250()
{

  return swift_deallocObject();
}

uint64_t sub_270586288()
{
  OUTLINED_FUNCTION_23_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_270411828;
  v2 = OUTLINED_FUNCTION_11_7();

  return sub_270582588(v2, v3);
}

uint64_t sub_270586328()
{

  return swift_deallocObject();
}

uint64_t sub_270586360()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_270414FA4;

  return sub_2705820F0(v3, v4);
}

_BYTE *storeEnumTagSinglePayload for JSAppEngineError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2705864ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2705864E8()
{
  result = qword_2807D7F38;
  if (!qword_2807D7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7F38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_87()
{
}

uint64_t OUTLINED_FUNCTION_6_70@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 32) = fabs(a2);

  return sub_2705D7594();
}

uint64_t OUTLINED_FUNCTION_13_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_26()
{
}

uint64_t OUTLINED_FUNCTION_21_31()
{
}

uint64_t OUTLINED_FUNCTION_23_24(uint64_t a1)
{
  v1[25] = a1;
  v1[26] = *(v2 + 24);
  v1[27] = (v2 + 24) & 0xFFFFFFFFFFFFLL | 0x9F90000000000000;
}

uint64_t OUTLINED_FUNCTION_30_19()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_38_12()
{

  return sub_2705D6504();
}

uint64_t OUTLINED_FUNCTION_39_10()
{
  __swift_project_boxed_opaque_existential_1((v0 + 400), *(v0 + 424));

  return swift_getDynamicType();
}

id sub_270586854(char a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSBacklog_app] = a1;
  *&v2[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSBacklog_runtime] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for JSBacklog();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_2705868A0()
{
  sub_270589714();
  v0 = sub_2705D7BC4();
  v1 = sub_2705D7BD4();

  return v1;
}

char *sub_270586930(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v34 = a6;
  v8 = sub_2705D6524();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_27058298C();
  v11 = v10;
  v12 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  if (swift_weakLoadStrong())
  {

    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v33 = type metadata accessor for JSBacklog();
    v32[0] = a2;
    if (v11)
    {
      v13 = a2;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v32, v33);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v30[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v30);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v30[0] = v9;
      v30[1] = v11;
    }

    else
    {
      v16 = a2;
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v17 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v30[0] = v17;
    }

    sub_2705D64E4();
    sub_2704B667C(v30);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_2705D64C4();
    v18 = sub_2705D7A94();
    sub_2705B6DB8(v18);

    sub_270589714();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v12;
    v20[4] = v9;
    v20[5] = v11;
    v20[6] = a3;
    v20[7] = a4;
    v21 = v34;
    v20[8] = a5;
    v20[9] = v21;

    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = v21;
    v15 = sub_27058C4D8(a1, sub_270589844, v20);
  }

  else
  {

    v15 = "JSBacklog";
    sub_2705D6F34();
    sub_270566624();
    swift_allocError();
    sub_2705D6F04();
    swift_willThrow();
  }

  return v15;
}

void sub_270586DD4(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11)
{
  v118 = a7;
  v101 = a3;
  v96 = a2;
  v15 = sub_2705D63A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v102 = v17;
  v18 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2705D6524();
  MEMORY[0x28223BE20](v19 - 8);
  v98 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v97 = v18;
    type metadata accessor for AppDatabase();
    v23 = sub_270559938(v22[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore9JSBacklog_app], 0);
    if (v11)
    {
      v99 = v11;
LABEL_12:
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
      }

      else
      {
        v100 = a6;
        if (qword_2807D7390 != -1)
        {
          swift_once();
        }

        v102 = qword_28081C610;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
        v36 = *(sub_2705D6574() - 8);
        v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v96 = *(v36 + 72);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_2705E6EB0;
        v94 = v38 + v37;
        v107 = type metadata accessor for JSBacklog();
        v106[0] = v22;
        if (v118)
        {
          v39 = v22;
          v95 = a5;
          v40 = v118;

          sub_2705D6514();
          sub_2705D6504();
          __swift_project_boxed_opaque_existential_1(v106, v107);
          DynamicType = swift_getDynamicType();
          MetatypeMetadata = swift_getMetatypeMetadata();
          v103 = DynamicType;
          sub_2705D64E4();
          sub_2704B667C(&v103);
          sub_2705D6504();
          MetatypeMetadata = MEMORY[0x277D837D0];
          v103 = v100;
          v104 = v40;
        }

        else
        {
          v49 = v22;
          sub_2705D6514();
          sub_2705D6504();
          __swift_project_boxed_opaque_existential_1(v106, v107);
          v50 = swift_getDynamicType();
          MetatypeMetadata = swift_getMetatypeMetadata();
          v103 = v50;
        }

        sub_2705D64E4();
        sub_2704B667C(&v103);
        sub_2705D6504();
        sub_2705D6534();
        __swift_destroy_boxed_opaque_existential_1(v106);
        sub_2705D64C4();
        v51 = sub_2705D7A74();
        sub_2705B6DB8(v51);

        a6 = v100;
      }

      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {

        return;
      }

      v52 = *(v16 + 16);
      v96 = 0;
      v53 = v97;
      v52(v97, v101, v15);
      v54 = (*(v16 + 80) + 48) & ~*(v16 + 80);
      v55 = swift_allocObject();
      *(v55 + 2) = v22;
      *(v55 + 3) = a6;
      v56 = v99;
      *(v55 + 4) = v118;
      *(v55 + 5) = v56;
      (*(v16 + 32))(&v55[v54], v53, v15);

      v57 = v22;
      v58 = v56;
      sub_2705D6B04();

      goto LABEL_35;
    }

    v94 = v23;
    v24 = sub_270589B30(a8);
    if (v24 && (v25 = sub_2705687B0(v24), , v25))
    {
      sub_2705881F0(v25, &v108);
      v99 = 0;
      v95 = a5;
      v100 = a6;
      v93 = v16;
      v87 = v15;
      v69 = v108;
      v70 = v109;
      v71 = v110;
      v72 = v111;
      v73 = v112;
    }

    else
    {
      v99 = 0;
      v95 = a5;
      v100 = a6;
      v93 = v16;
      v87 = v15;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 255;
    }

    v89 = v72;
    v91 = v70;
    v88 = v73;
    v90 = v71;
    v92 = v69;
    v113 = v69;
    v114 = v70;
    v115 = v71;
    v116 = v72;
    v117 = v73;
    v26 = swift_allocObject();
    *(v26 + 16) = MEMORY[0x277D84F90];
    v27 = sub_2705D7B54();
    v29 = v28;
    v30 = swift_allocObject();
    v30[2] = v26;
    v30[3] = a10;
    v30[4] = a11;
    v30[5] = v22;
    v31 = v118;
    v30[6] = v100;
    v30[7] = v31;
    v32 = a10;
    v33 = a11;
    v34 = v22;

    v35 = v99;
    sub_27055A800(&v113, v27, v29 & 1, sub_270589C24, v30);
    if (v35)
    {

      sub_270589C4C(v92, v91, v90, v89, v88);

      v99 = v35;
      v15 = v87;
      v16 = v93;
      a6 = v100;
      a5 = v95;
      goto LABEL_12;
    }

    v101 = v34;

    swift_beginAccess();
    v59 = *(v26 + 16);
    v60 = v93;
    if (*(v59 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_2705DC030;
      *(v61 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F58);
      *(v61 + 32) = v59;
    }

    swift_beginAccess();
    v62 = swift_weakLoadStrong();
    v63 = v100;
    v86[1] = v26;
    if (v62)
    {
    }

    else
    {
      if (qword_2807D7390 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
      sub_2705D6574();
      *(swift_allocObject() + 16) = xmmword_2705E6EB0;
      v107 = type metadata accessor for JSBacklog();
      v106[0] = v101;
      v74 = v101;
      if (v118)
      {
        v75 = v118;

        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v106, v107);
        v76 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v103 = v76;
        sub_2705D64E4();
        sub_2704B667C(&v103);
        sub_2705D6504();
        MetatypeMetadata = MEMORY[0x277D837D0];
        v103 = v100;
        v104 = v75;
      }

      else
      {
        sub_2705D6514();
        sub_2705D6504();
        __swift_project_boxed_opaque_existential_1(v106, v107);
        v77 = swift_getDynamicType();
        MetatypeMetadata = swift_getMetatypeMetadata();
        v103 = v77;
      }

      sub_2705D64E4();
      sub_2704B667C(&v103);
      sub_2705D6504();
      sub_2705D6534();
      __swift_destroy_boxed_opaque_existential_1(v106);
      sub_2705D64C4();
      v78 = sub_2705D7A74();
      sub_2705B6DB8(v78);

      v63 = v100;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v79 = v97;
      v80 = v87;
      (*(v60 + 16))(v97, v96, v87);
      v81 = (*(v60 + 80) + 40) & ~*(v60 + 80);
      v82 = swift_allocObject();
      v83 = v60;
      v84 = v101;
      *(v82 + 2) = v101;
      *(v82 + 3) = v63;
      *(v82 + 4) = v118;
      (*(v83 + 32))(&v82[v81], v79, v80);
      v85 = v84;

      sub_2705D6B04();
    }

    else
    {
    }

    sub_270589C4C(v92, v91, v90, v89, v88);
LABEL_35:

    return;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v95 = a5;
    v96 = v11;
    v97 = v18;
    v100 = a6;
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v42 = *(*(sub_2705D6574() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D35B0);
    v113 = v100;
    v114 = v118;

    v43 = AMSLogKey();
    if (v43)
    {
      v44 = v43;
      v45 = sub_2705D7564();
      v99 = v42;
      v47 = v46;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v113, v116);
      v48 = swift_getDynamicType();
      v111 = swift_getMetatypeMetadata();
      v108 = v48;
      sub_2705D64E4();
      sub_2704B667C(&v108);
      sub_2705D6504();
      v111 = MEMORY[0x277D837D0];
      v108 = v45;
      v109 = v47;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(&v113, v116);
      v64 = swift_getDynamicType();
      v111 = swift_getMetatypeMetadata();
      v108 = v64;
    }

    sub_2705D64E4();
    sub_2704B667C(&v108);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(&v113);
    sub_2705D64C4();
    v65 = sub_2705D7A74();
    sub_2705B6DB8(v65);

    a6 = v100;
    v18 = v97;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v16 + 16))(v18, v101, v15);
    v66 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v67 = swift_allocObject();
    v68 = v118;
    *(v67 + 16) = a6;
    *(v67 + 24) = v68;
    (*(v16 + 32))(v67 + v66, v18, v15);

    sub_2705D6B04();

    goto LABEL_35;
  }
}

uint64_t sub_270587E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D6524();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v5 = type metadata accessor for JSBacklog();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F78);
  v13[0] = v5;
  if (a2)
  {

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v11[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v11);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v11[0] = a1;
    v11[1] = a2;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v11[0] = v7;
    sub_2705D64E4();
  }

  sub_2704B667C(v11);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2705D64C4();
  v8 = sub_2705D7A74();
  sub_2705B6DB8(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2705DC030;
  *(v9 + 56) = sub_2705D6F34();
  __swift_allocate_boxed_opaque_existential_1Tm((v9 + 32));
  sub_2705D6F04();
  sub_27058AAE8(v9);
}

void sub_2705881F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2703D5404(1701869940, 0xE400000000000000, a1, &v112);
  if (!v113)
  {

    sub_2704B667C(&v112);
LABEL_20:
    sub_270589E90();
    OUTLINED_FUNCTION_21_6();
    *v26 = 0;
    *(v26 + 8) = 0;
    v27 = 2;
    goto LABEL_21;
  }

  if ((OUTLINED_FUNCTION_0_90() & 1) == 0)
  {

    goto LABEL_20;
  }

  v6 = v101;
  v5 = v108;
  v7 = v101 == 6581857 && v108 == 0xE300000000000000;
  if (!v7 && (OUTLINED_FUNCTION_10_20() & 1) == 0)
  {
    v28 = v101 == 7368801 && v108 == 0xE300000000000000;
    if (v28 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      sub_2703D5404(7368801, 0xE300000000000000, a1, &v112);

      if (v113)
      {
        if (OUTLINED_FUNCTION_0_90())
        {
          v29 = 0;
          v30 = 0;
          v6 = v101;
          v5 = v108;
          v31 = 1;
          goto LABEL_32;
        }
      }

      else
      {
        sub_2704B667C(&v112);
      }

      sub_270589E90();
      OUTLINED_FUNCTION_21_6();
      v34 = xmmword_2706103F0;
LABEL_89:
      *v33 = v34;
      *(v33 + 16) = 0;
      goto LABEL_90;
    }

    v35 = v101 == 0x5472657461657267 && v108 == 0xEB000000006E6168;
    if (v35 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      OUTLINED_FUNCTION_2_89(v36, v37, v38, v39, v40, v41, v42, v43, v101, v108, v112);
      if (v113)
      {
        v44 = OUTLINED_FUNCTION_0_90();
        if (v44)
        {
          OUTLINED_FUNCTION_5_74(v44, v45, v46, v47, v48, v49, v50, v51, v102, v109, v112);

          if (v113)
          {
            if (OUTLINED_FUNCTION_0_90())
            {
              v30 = 0;
              v29 = v103;
              v31 = 2;
              goto LABEL_32;
            }

            goto LABEL_56;
          }

          goto LABEL_55;
        }

        goto LABEL_69;
      }

      goto LABEL_68;
    }

    v52 = v101 == 0x6E6168547373656CLL && v108 == 0xE800000000000000;
    if (v52 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      OUTLINED_FUNCTION_2_89(v53, v54, v55, v56, v57, v58, v59, v60, v101, v108, v112);
      if (v113)
      {
        v61 = OUTLINED_FUNCTION_0_90();
        if (v61)
        {
          OUTLINED_FUNCTION_5_74(v61, v62, v63, v64, v65, v66, v67, v68, v104, v110, v112);

          if (v113)
          {
            if (OUTLINED_FUNCTION_0_90())
            {
              v30 = 0;
              v29 = v105;
              v31 = 3;
              goto LABEL_32;
            }

LABEL_56:

            goto LABEL_57;
          }

LABEL_55:

          sub_2704B667C(&v112);
LABEL_57:
          sub_270589E90();
          OUTLINED_FUNCTION_21_6();
          v34 = xmmword_2706103E0;
          goto LABEL_89;
        }

        goto LABEL_69;
      }

      goto LABEL_68;
    }

    v69 = v101 == 1701538156 && v108 == 0xE400000000000000;
    if (v69 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      OUTLINED_FUNCTION_2_89(v70, v71, v72, v73, v74, v75, v76, v77, v101, v108, v112);
      if (v113)
      {
        if (OUTLINED_FUNCTION_0_90())
        {
          v6 = v106;
          v5 = v111;
          sub_2703D5404(0x6E726574746170, 0xE700000000000000, a1, &v112);

          if (v113)
          {
            if (OUTLINED_FUNCTION_0_90())
            {
              v29 = v106;
              v30 = v111;
              v31 = 4;
              goto LABEL_32;
            }
          }

          else
          {

            sub_2704B667C(&v112);
          }

          sub_270589E90();
          OUTLINED_FUNCTION_21_6();
          v34 = xmmword_2706103C0;
          goto LABEL_89;
        }

LABEL_69:

        goto LABEL_70;
      }

LABEL_68:

      sub_2704B667C(&v112);
LABEL_70:
      sub_270589E90();
      OUTLINED_FUNCTION_21_6();
      v34 = xmmword_2706103D0;
      goto LABEL_89;
    }

LABEL_72:
    v78 = v6 == 29295 && v5 == 0xE200000000000000;
    if (v78 || (OUTLINED_FUNCTION_10_20() & 1) != 0)
    {

      OUTLINED_FUNCTION_4_73(v79, v80, v81, v82, v83, v84, v85, v86, v101, v108, v112);

      if (!v113)
      {
        goto LABEL_87;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F68);
      if ((OUTLINED_FUNCTION_0_90() & 1) == 0)
      {
        goto LABEL_88;
      }

      v5 = v107;
      v6 = *(v107 + 16);
      if (v6)
      {
        OUTLINED_FUNCTION_10_51();
        v87 = 0;
        v88 = v112;
        while (v87 < *(v107 + 16))
        {

          sub_2705881F0(v116, v89);
          if (v2)
          {
            goto LABEL_91;
          }

          *&v112 = v88;
          v90 = *(v88 + 16);
          v91 = v90 + 1;
          if (v90 >= *(v88 + 24) >> 1)
          {
            v95 = OUTLINED_FUNCTION_12_45();
            v97 = v96;
            sub_2705717BC(v95, v98, v99);
            v90 = v97;
            v88 = v112;
          }

          ++v87;
          *(v88 + 16) = v91;
          v92 = v88 + 40 * v90;
          v93 = v116[0];
          v94 = v116[1];
          *(v92 + 64) = v117;
          *(v92 + 32) = v93;
          *(v92 + 48) = v94;
          if (v6 == v87)
          {

            goto LABEL_97;
          }
        }

        __break(1u);
        return;
      }

      v88 = MEMORY[0x277D84F90];
LABEL_97:
      swift_allocObject();
      OUTLINED_FUNCTION_11_47();
      *(v100 + 16) = v88;
      v31 = 5;
LABEL_32:
      *a2 = v6;
      *(a2 + 8) = v5;
      *(a2 + 16) = v29;
      *(a2 + 24) = v30;
      *(a2 + 32) = v31;
      return;
    }

    sub_270589E90();
    OUTLINED_FUNCTION_21_6();
    *v26 = v6;
    *(v26 + 8) = v5;
    v27 = 1;
LABEL_21:
    *(v26 + 16) = v27;
LABEL_90:
    swift_willThrow();
    return;
  }

  OUTLINED_FUNCTION_4_73(v8, v9, v10, v11, v12, v13, v14, v15, v101, v108, v112);

  if (!v113)
  {
LABEL_87:
    sub_2704B667C(&v112);
    goto LABEL_88;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F68);
  if ((OUTLINED_FUNCTION_0_90() & 1) == 0)
  {
LABEL_88:
    sub_270589E90();
    OUTLINED_FUNCTION_21_6();
    v34 = xmmword_2706103B0;
    goto LABEL_89;
  }

  v5 = v101;
  v6 = *(v101 + 16);
  if (!v6)
  {

    v17 = MEMORY[0x277D84F90];
LABEL_31:
    swift_allocObject();
    OUTLINED_FUNCTION_11_47();
    v31 = 0;
    *(v32 + 16) = v17;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_10_51();
  v16 = 0;
  v17 = v112;
  while (1)
  {
    if (v16 >= *(v101 + 16))
    {
      __break(1u);
      goto LABEL_72;
    }

    sub_2705881F0(v114, v18);
    if (v2)
    {
      break;
    }

    *&v112 = v17;
    v19 = *(v17 + 16);
    if (v19 >= *(v17 + 24) >> 1)
    {
      v23 = OUTLINED_FUNCTION_12_45();
      sub_2705717BC(v23, v24, v25);
      v17 = v112;
    }

    ++v16;
    *(v17 + 16) = v19 + 1;
    v20 = v17 + 40 * v19;
    v21 = v114[0];
    v22 = v114[1];
    *(v20 + 64) = v115;
    *(v20 + 32) = v21;
    *(v20 + 48) = v22;
    if (v6 == v16)
    {

      goto LABEL_31;
    }
  }

LABEL_91:
}

id sub_2705888FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = sub_2705D6524();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = objc_opt_self();
  v13 = sub_2705D44A4();
  v38[0] = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:v38];

  if (!v14)
  {
    v27 = v38[0];
    sub_2705D4364();

    swift_willThrow();
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    v28 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v39 = type metadata accessor for JSBacklog();
    v38[0] = a5;
    v29 = a5;
    if (a7)
    {

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v38, v39);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v36[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v36);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v36[0] = a6;
      v36[1] = a7;
      sub_2705D64E4();
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v31 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v36[0] = v31;
      sub_2705D64E4();
    }

    sub_2704B667C(v36);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_2705D6514();
    sub_2705D6504();
    swift_getErrorValue();
    v39 = v35;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38);
    (*(*(v35 - 8) + 16))(boxed_opaque_existential_1Tm);
    sub_2705D64E4();
    sub_2704B667C(v38);
    sub_2705D6504();
    sub_2705D6534();
    v33 = sub_2705D7A74();
    v26 = v28;
    sub_2705B6DB8(v33);

    swift_willThrow();
    return (v26 & 1);
  }

  v15 = v38[0];
  sub_2705D7C84();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7558);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    return (v26 & 1);
  }

  v16 = v36[0];
  swift_beginAccess();

  sub_270589AE4();
  v17 = *(*(a2 + 16) + 16);
  sub_270589AA4(v17);
  v18 = *(a2 + 16);
  *(v18 + 16) = v17 + 1;
  *(v18 + 8 * v17 + 32) = v16;
  *(a2 + 16) = v18;
  swift_endAccess();
  v19 = sub_2705D7B54();
  if ((v20 & 1) != 0 || (v21 = v19, swift_beginAccess(), v22 = *(a2 + 16), *(v22 + 16) != v21))
  {

    v26 = 1;
    return (v26 & 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2705DC030;
  *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F58);
  *(v23 + 32) = v22;

  result = sub_270589D0C(v23, a4);
  if (result)
  {
    v25 = result;

    v26 = sub_2705D7B64();

    swift_beginAccess();
    *(a2 + 16) = MEMORY[0x277D84F90];

    return (v26 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_270588EA8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2705D6524();
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v17 = type metadata accessor for JSBacklog();
  v16[0] = a1;
  v7 = a1;
  if (a3)
  {

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v16, v17);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v14[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v14);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v14[0] = a2;
    v14[1] = a3;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v14[0] = v9;
    sub_2705D64E4();
  }

  sub_2704B667C(v14);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_2705D64C4();
  v10 = sub_2705D7A94();
  sub_2705B6DB8(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2705DC030;
  v12 = sub_2705D7494();
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7F70);
  *(v11 + 32) = v12;
  sub_27058AAE8(v11);
}

uint64_t sub_2705891F0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2705D6524();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_2807D7390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  *(swift_allocObject() + 16) = xmmword_2705E6EB0;
  v24 = type metadata accessor for JSBacklog();
  v23[0] = a1;
  v9 = a1;
  if (a3)
  {

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v23, v24);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v21[0] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C(v21);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v21[0] = a2;
    v21[1] = a3;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v11 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v21[0] = v11;
    sub_2705D64E4();
  }

  sub_2704B667C(v21);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_2705D6514();
  sub_2705D6504();
  swift_getErrorValue();
  v24 = v20;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1Tm);
  sub_2705D64E4();
  sub_2704B667C(v23);
  sub_2705D6504();
  sub_2705D6534();
  v13 = sub_2705D7A74();
  sub_2705B6DB8(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2705DC030;
  v15 = objc_allocWithZone(type metadata accessor for CoreJSError());
  v16 = a4;
  v17 = sub_270565CB4(a4);
  v18 = sub_2705658DC();

  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
  *(v14 + 32) = v18;
  sub_27058AAE8(v14);
}

id sub_2705896AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBacklog();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_270589714()
{
  result = qword_2807D7F50;
  if (!qword_2807D7F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D7F50);
  }

  return result;
}

uint64_t sub_27058977C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_8_59();

  return swift_deallocObject();
}

uint64_t sub_2705897AC()
{
  MEMORY[0x2743A5550](v0 + 16);
  OUTLINED_FUNCTION_8_59();

  return swift_deallocObject();
}

uint64_t sub_2705897DC()
{

  return swift_deallocObject();
}

uint64_t sub_270589880()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v0 = OUTLINED_FUNCTION_7_60();
  v1(v0);
  OUTLINED_FUNCTION_6_71();

  return swift_deallocObject();
}

uint64_t sub_270589924()
{
  sub_2705D63A4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_270587E84(v1, v2);
}

uint64_t sub_270589988()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_6_71();

  return swift_deallocObject();
}

uint64_t sub_270589A3C()
{
  sub_2705D63A4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  return sub_2705891F0(v1, v2, v3, v4);
}

void sub_270589AA4(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_270572A78();
    *v1 = v2;
  }
}

void sub_270589AE4()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_270572A78();
    *v0 = v3;
  }
}

uint64_t sub_270589B30(void *a1)
{
  v1 = [a1 toDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2705D7464();

  return v3;
}

uint64_t sub_270589B9C()
{

  OUTLINED_FUNCTION_8_59();

  return swift_deallocObject();
}

uint64_t sub_270589BCC()
{

  return swift_deallocObject();
}

uint64_t sub_270589C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_270589C60(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_270589C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 5:

      break;
    case 1:
    case 2:
    case 3:

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

id sub_270589D0C(uint64_t a1, void *a2)
{
  v3 = sub_2705D77A4();

  v4 = [a2 callWithArguments_];

  return v4;
}

uint64_t sub_270589D7C()
{
  sub_2705D63A4();
  OUTLINED_FUNCTION_2_50();

  v1 = OUTLINED_FUNCTION_7_60();
  v2(v1);
  OUTLINED_FUNCTION_6_71();

  return swift_deallocObject();
}

uint64_t sub_270589E28()
{
  sub_2705D63A4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_270588EA8(v1, v2, v3);
}

unint64_t sub_270589E90()
{
  result = qword_2807D7F60;
  if (!qword_2807D7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D7F60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_25UnifiedMessagingKitJSCore24AppBacklogPredicateErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2703D5404(0x646C656966, 0xE500000000000000, v11, &a11);
}

double OUTLINED_FUNCTION_4_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2703D5404(0x6F697469646E6F63, 0xEA0000000000736ELL, v11, &a11);
}

double OUTLINED_FUNCTION_5_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2703D5404(0x65756C6176, 0xE500000000000000, v11, &a11);
}

char *OUTLINED_FUNCTION_10_51()
{

  return sub_2705717BC(0, v0, 0);
}

uint64_t sub_27058A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_2_2();
  v13[5] = v14;
  v13[6] = v12;
  v13[7] = swift_getObjectType();
  v15 = sub_2703CACA0(0, &qword_2807D7858);
  v21 = swift_task_alloc();
  v13[8] = v21;
  *v21 = v13;
  v21[1] = sub_27058A104;

  return MEMORY[0x28217F228](v13 + 4, v15, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_27058A104()
{
  OUTLINED_FUNCTION_2_2();
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_27058A2A8;
  }

  else
  {
    v2 = sub_27058A214;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27058A214()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 48);
  *(*(v0 + 48) + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSBag_bag) = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = objc_msgSendSuper2((v0 + 16), sel_init);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_27058A2A8()
{
  OUTLINED_FUNCTION_2_2();

  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27058A394()
{
  sub_2703CACA0(0, &qword_2807D7F50);
  v0 = sub_2705D7BC4();
  v1 = sub_2705D7BD4();

  return v1;
}

id sub_27058A40C(void *a1, uint64_t a2, void *a3, SEL *a4, unint64_t *a5)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore5JSBag_bag);
  sub_27058A94C(a3);
  if (!v9)
  {
    __break(1u);
  }

  v10 = sub_2705D7534();

  v11 = [v8 *a4];

  v23[0] = 0;
  v12 = [v11 valueWithError_];

  v13 = v23[0];
  if (v12)
  {
    sub_2703CACA0(0, &qword_2807D3580);
    v23[3] = sub_2703CACA0(0, a5);
    v23[0] = v12;
    v14 = a1;
    v15 = v12;
    v16 = v13;
    result = sub_27046EDEC(v23, a1);
    if (result)
    {
      v18 = result;

      return v18;
    }

    __break(1u);
  }

  else
  {
    v19 = v23[0];
    v20 = sub_2705D4364();

    swift_willThrow();
    v21 = objc_opt_self();
    v22 = v20;
    result = [v21 valueWithUndefinedInContext_];
    if (result)
    {
      v18 = result;

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27058A94C(void *a1)
{
  v1 = [a1 toString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2705D7564();

  return v3;
}

void sub_27058AB18(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_2705D6524();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = a2(a1);
}

uint64_t OUTLINED_FUNCTION_0_91(uint64_t a1)
{
  *(v2 - 112) = a1;
  *(v2 - 136) = v1;

  return sub_2705D64E4();
}

uint64_t OUTLINED_FUNCTION_1_88()
{
  __swift_project_boxed_opaque_existential_1((v0 - 104), *(v0 - 80));

  return swift_getDynamicType();
}

id sub_27058AEE0(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSClient_demo;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for JSClientDemo()) init];
  v6 = &v2[OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSClient_clientInfo];
  *v6 = a1;
  v6[8] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for JSClient();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_27058AFB0(SEL *a1)
{
  result = sub_27058B498(*(v1 + OBJC_IVAR____TtC25UnifiedMessagingKitJSCore8JSClient_clientInfo), a1);
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_27058B11C()
{
  if ([objc_opt_self() deviceIsAudioAccessory])
  {
    v0 = sub_2705D7534();
    v1 = *MEMORY[0x277CBF008];
    v2 = *MEMORY[0x277CBF040];
    v3 = *MEMORY[0x277CBF010];
    v4 = CFPreferencesCopyValue(v0, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

    if (v4)
    {
      if (OUTLINED_FUNCTION_0_92())
      {
        v5 = v12;
        if (v12)
        {
          v6 = v11;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v1 = *MEMORY[0x277CBF008];
    v2 = *MEMORY[0x277CBF040];
    v3 = *MEMORY[0x277CBF010];
  }

  v7 = sub_2705D7534();
  v8 = CFPreferencesCopyValue(v7, v1, v2, v3);

  if (v8)
  {
    v9 = OUTLINED_FUNCTION_0_92();
    v6 = v11;
    v5 = v12;
    if (!v9)
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_11:
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_27058B2D4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2705D7534();

  return v5;
}

uint64_t sub_27058B344()
{
  v1 = [objc_opt_self() userAgentForProcessInfo_];
  v2 = sub_2705D7564();

  return v2;
}

id sub_27058B3F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27058B498(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2705D7564();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_92()
{

  return swift_dynamicCast();
}

id sub_27058B524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientDemo();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_27058B5B0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v3 = [v1 typeOfDemoDevice_];

    v7[0] = v6;
    v4 = v6;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v2 = v4;
  }

  else
  {
    v3 = 0;
  }

  sub_27058B688(v7, v0);

  return v3;
}

uint64_t sub_27058B688(void **a1, void *a2)
{
  v4 = sub_2705D6524();
  result = MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = qword_2807D7390;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v22 = type metadata accessor for JSClientDemo();
    v21[0] = a2;
    v9 = a2;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      v12 = sub_2705D7564();
      v14 = v13;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v19);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v19[0] = v12;
      v19[1] = v14;
      sub_2705D64E4();
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19[0] = v16;
      sub_2705D64E4();
    }

    sub_2704B667C(v19);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_2705D6514();
    sub_2705D6504();
    v22 = sub_27058C3FC();
    v21[0] = v8;
    v17 = v8;
    sub_2705D64E4();
    sub_2704B667C(v21);
    sub_2705D6504();
    sub_2705D6534();
    v18 = sub_2705D7A74();
    sub_2705B6DB8(v18);
  }

  return result;
}

uint64_t sub_27058BA88()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v3 = [v1 getDeviceOptions_];

  v4 = v7;
  v8[0] = v7;
  if (!v3)
  {
    v2 = v7;
LABEL_5:
    v5 = sub_2705D7494();
    goto LABEL_6;
  }

  v5 = sub_2705D7464();
  v2 = v4;

LABEL_6:
  sub_27058BBC0(v8, v0);

  return v5;
}

uint64_t sub_27058BBC0(void **a1, void *a2)
{
  v4 = sub_2705D6524();
  result = MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = qword_2807D7390;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v22 = type metadata accessor for JSClientDemo();
    v21[0] = a2;
    v9 = a2;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      v12 = sub_2705D7564();
      v14 = v13;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v19);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v19[0] = v12;
      v19[1] = v14;
      sub_2705D64E4();
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19[0] = v16;
      sub_2705D64E4();
    }

    sub_2704B667C(v19);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_2705D6514();
    sub_2705D6504();
    v22 = sub_27058C3FC();
    v21[0] = v8;
    v17 = v8;
    sub_2705D64E4();
    sub_2704B667C(v21);
    sub_2705D6504();
    sub_2705D6534();
    v18 = sub_2705D7A74();
    sub_2705B6DB8(v18);
  }

  return result;
}

void *sub_27058BF64()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = v1;
  if (v1)
  {
    v7 = 0;
    v3 = [v1 getStoreID_];

    v4 = v7;
    v8[0] = v7;
    if (v3)
    {
      v2 = sub_2705D7564();
      v5 = v4;
    }

    else
    {
      v5 = v7;
      v2 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_27058C078(v8, v0);

  return v2;
}

uint64_t sub_27058C078(void **a1, void *a2)
{
  v4 = sub_2705D6524();
  result = MEMORY[0x28223BE20](v4 - 8);
  v6 = *a1;
  if (*a1)
  {
    v7 = qword_2807D7390;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    sub_2705D6574();
    *(swift_allocObject() + 16) = xmmword_2705E6EB0;
    v22 = type metadata accessor for JSClientDemo();
    v21[0] = a2;
    v9 = a2;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      v12 = sub_2705D7564();
      v14 = v13;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v19);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v19[0] = v12;
      v19[1] = v14;
      sub_2705D64E4();
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19[0] = v16;
      sub_2705D64E4();
    }

    sub_2704B667C(v19);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_2705D6514();
    sub_2705D6504();
    v22 = sub_27058C3FC();
    v21[0] = v8;
    v17 = v8;
    sub_2705D64E4();
    sub_2704B667C(v21);
    sub_2705D6504();
    sub_2705D6534();
    v18 = sub_2705D7A74();
    sub_2705B6DB8(v18);
  }

  return result;
}

id sub_27058C3A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSClientDemo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_27058C3FC()
{
  result = qword_2807D7FA8;
  if (!qword_2807D7FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807D7FA8);
  }

  return result;
}

uint64_t sub_27058C440()
{
  sub_2703CACA0(0, &qword_2807D7F50);
  v0 = sub_2705D7BC4();
  v1 = sub_2705D7BD4();

  return v1;
}

uint64_t sub_27058C4D8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2705D71B4();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;

    sub_2705D7194();
    if (v3)
    {
    }

    else
    {
      a3 = sub_2705D71A4();

      (*(v9 + 8))(v12, v7);
    }
  }

  else
  {
    sub_2703CACA0(0, &qword_2807D7F50);
    v14 = sub_2705D7BC4();
    MEMORY[0x28223BE20](v14);
    v16[-2] = a2;
    v16[-1] = a3;
    a3 = sub_2705D7BD4();
  }

  return a3;
}

uint64_t sub_27058C66C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2705D71B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;

  sub_2705D7194();
  if (!v3)
  {
    a3 = sub_2705D71A4();
    (*(v7 + 8))(v9, v6);
  }

  return a3;
}

uint64_t sub_27058C788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_2705D71B4();
  v19 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = a1;

  sub_2705D7194();
  if (!v5)
  {
    v6 = sub_2705D71A4();
    (*(v19 + 8))(v14, v12);
  }

  return v6;
}

uint64_t sub_27058C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v33 = a4;
  v34 = a2;
  v11 = sub_2705D63A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  sub_2705D6B14();
  MEMORY[0x2743A2F10]();
  swift_weakInit();

  v39 = v17;
  if (swift_weakLoadStrong())
  {

    sub_2705D7114();
    v18 = swift_allocObject();
    v19 = v33;
    v18[2] = a7;
    v18[3] = v19;
    v18[4] = a5;

    v33 = sub_2705D7084();
    v31 = a3;
    v30 = *(v12 + 16);
    v30(v16, v34, v11);
    v20 = a7;
    v32 = a7;
    v21 = *(v12 + 80);
    v34 = v7;
    v22 = swift_allocObject();
    v23 = v39;
    *(v22 + 2) = v20;
    *(v22 + 3) = v23;
    v24 = v36;
    *(v22 + 4) = v36;
    v29 = *(v12 + 32);
    v29(&v22[(v21 + 40) & ~v21], v16, v11);
    v25 = v35;
    v30(v35, v31, v11);
    v26 = swift_allocObject();
    *(v26 + 16) = v39;
    *(v26 + 24) = v24;
    v29((v26 + ((v21 + 32) & ~v21)), v25, v11);
    swift_retain_n();
    sub_27058D914(v38);
    sub_2705D7094();

    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13C8);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2705DC030;
    *(v28 + 56) = sub_2705D6F34();
    __swift_allocate_boxed_opaque_existential_1Tm((v28 + 32));
    sub_2705D6F04();
    sub_27058AAE8(v28);
  }
}

uint64_t sub_27058CCF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2703F6C98;

  return v6(a1);
}

uint64_t sub_27058CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a1;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2705D63A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2705D6524();
  MEMORY[0x28223BE20](v13 - 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v38 = v10;
    v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_2807D7390 != -1)
    {
      swift_once();
    }

    v37 = qword_28081C610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    v14 = *(sub_2705D6574() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v36 = *(v14 + 72);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2705E6EB0;
    v35 = v16 + v15;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D7FB0);
    v45[0] = a3;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      v19 = sub_2705D7564();
      v34 = v20;

      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v45, v46);
      DynamicType = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v43[0] = DynamicType;
      sub_2705D64E4();
      sub_2704B667C(v43);
      sub_2705D6504();
      MetatypeMetadata = MEMORY[0x277D837D0];
      v43[0] = v19;
      v43[1] = v34;
    }

    else
    {
      sub_2705D6514();
      sub_2705D6504();
      __swift_project_boxed_opaque_existential_1(v45, v46);
      v22 = swift_getDynamicType();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v43[0] = v22;
    }

    sub_2705D64E4();
    sub_2704B667C(v43);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_2705D64C4();
    v23 = sub_2705D7A74();
    sub_2705B6DB8(v23);

    v10 = v38;
    v9 = v39;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v40;
    (*(v11 + 16))(v40, v41, v10);
    (*(v7 + 16))(v9, v42, a5);
    v26 = v9;
    v27 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v28 = *(v7 + 80);
    v29 = v12 + v28 + v27;
    v30 = v10;
    v31 = v29 & ~v28;
    v32 = swift_allocObject();
    *(v32 + 16) = a5;
    (*(v11 + 32))(v32 + v27, v25, v30);
    (*(v7 + 32))(v32 + v31, v26, a5);
    sub_2705D6B04();
  }

  return result;
}