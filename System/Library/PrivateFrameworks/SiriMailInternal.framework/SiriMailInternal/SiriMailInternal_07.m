uint64_t sub_26767CA58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_2676C8C4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2676CC59C();
  }

  return v5 & 1;
}

void sub_26767CAD0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);

  v8 = sub_2675EDF8C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2675E096C(v7);
  v7 = v13;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 16) > a3)
  {
    v9 = v7 + 8 * a3;
    v10 = *(v9 + 32);
    *(v9 + 32) = v8;

    v11 = *(a4 + 16);
    *(a4 + 16) = v7;
    v12 = *(a4 + 24);
    *(a4 + 24) = 0;
    sub_267678894(v11, v12);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_26767CB94(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2676C9CCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (!swift_dynamicCast())
  {
    v22 = *(a4 + 16);
    *(a4 + 16) = a1;
    v23 = *(a4 + 24);
    *(a4 + 24) = 2;
    v24 = a1;
    v20 = v22;
    v21 = v23;
    goto LABEL_7;
  }

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v14 = *(a2 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E096C(v14);
    v14 = v25;
  }

  v15 = *(v14 + 16);
  if (v15 > a3)
  {
    v16 = v15 - 1;
    v17 = v15 - 1 - a3;
    v18 = v14 + 8 * a3;
    v19 = *(v18 + 32);
    sub_2676C24CC((v18 + 40), v17, (v18 + 32));
    *(v14 + 16) = v16;

    v20 = *(a4 + 16);
    *(a4 + 16) = v14;
    v21 = *(a4 + 24);
    *(a4 + 24) = 0;
LABEL_7:
    sub_267678894(v20, v21);
    return;
  }

  __break(1u);
}

void (*sub_26767CD54())(void *a1)
{
  v1 = (v0 + qword_2801CD3D0);
  v2 = *(v0 + qword_2801CD3D0);
  v3 = *(v0 + qword_2801CD3D0 + 8);
  if (v2)
  {
    v4 = *(v0 + qword_2801CD3D0);
    v5 = *(v0 + qword_2801CD3D0 + 8);
  }

  else
  {
    v4 = sub_26767D618;
    *v1 = sub_26767D618;
    v1[1] = v0;
    swift_retain_n();
    sub_26767D5F8(0);
  }

  sub_26767D608(v2);
  return v4;
}

void (*sub_26767CDDC())(void *a1)
{
  v1 = (v0 + qword_2801CD3D8);
  v2 = *(v0 + qword_2801CD3D8);
  v3 = *(v0 + qword_2801CD3D8 + 8);
  if (v2)
  {
    v4 = *(v0 + qword_2801CD3D8);
    v5 = *(v0 + qword_2801CD3D8 + 8);
  }

  else
  {
    v4 = sub_26767D5D4;
    *v1 = sub_26767D5D4;
    v1[1] = v0;
    swift_retain_n();
    sub_26767D5F8(0);
  }

  sub_26767D608(v2);
  return v4;
}

void sub_26767CE64(void *a1, uint64_t a2, const char *a3)
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v6 = sub_2676CBE4C();
  __swift_project_value_buffer(v6, qword_2801CDC90);
  v7 = a1;
  v8 = sub_2676CBE2C();
  v9 = sub_2676CC24C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2676CC5FC();
    v14 = sub_2676B0B84(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2675D4000, v8, v9, a3, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v15 = *(a2 + 16);
  *(a2 + 16) = a1;
  v16 = *(a2 + 24);
  *(a2 + 24) = 2;
  v17 = a1;
  sub_267678894(v15, v16);
}

uint64_t sub_26767CFE8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = sub_2676CAECC();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_2();
  v20 = (v19 - v18);
  if (*(a1 + 16) == 1)
  {
    sub_267699004(a1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      (*(v15 + 32))(v20, v11, v12);
      v29 = *(sub_2676CAE5C() + 16);

      v30 = qword_2801CBAA0;
      if (v29 != 1)
      {
        goto LABEL_22;
      }

      if (qword_2801CBAA0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }

    sub_2675EB7EC(v11, &qword_2801CC590, &qword_2676CF308);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_2676CBE4C();
  __swift_project_value_buffer(v21, qword_2801CDC90);
  v22 = sub_2676CBE2C();
  v23 = sub_2676CC23C();
  if (os_log_type_enabled(v22, v23))
  {
    v20 = OUTLINED_FUNCTION_17_3();
    *v20 = 0;
    _os_log_impl(&dword_2675D4000, v22, v23, "#ResolveRecipientsFlow found multiple contact matches", v20, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v24 = *a2;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_2675E096C(v24);
    v24 = v44;
    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:
      if (*(v24 + 16) > a3)
      {
        v25 = v12 | 0x8000000000000000;
LABEL_12:
        v26 = v24 + 8 * a3;
        v27 = *(v26 + 32);
        *(v26 + 32) = v25;

        *a2 = v24;
        return result;
      }

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  OUTLINED_FUNCTION_0();
LABEL_15:
  v31 = sub_2676CBE4C();
  __swift_project_value_buffer(v31, qword_2801CDC90);
  v32 = sub_2676CBE2C();
  v33 = sub_2676CC23C();
  if (os_log_type_enabled(v32, v33))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_24_10(&dword_2675D4000, v34, v35, "#ResolveRecipientsFlow found 1 handle match");
    OUTLINED_FUNCTION_2_5();
  }

  v25 = sub_2675EDF8C();
  v24 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E096C(v24);
    v24 = v45;
  }

  v36 = *(v15 + 8);
  v15 += 8;
  v36(v20, v12);
  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = *(v24 + 16);
    if (v30 > a3)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    if (v30 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_35:
  OUTLINED_FUNCTION_0();
LABEL_23:
  v37 = sub_2676CBE4C();
  __swift_project_value_buffer(v37, qword_2801CDC90);
  v38 = sub_2676CBE2C();
  v39 = sub_2676CC23C();
  if (os_log_type_enabled(v38, v39))
  {
    *OUTLINED_FUNCTION_17_3() = 0;
    OUTLINED_FUNCTION_24_10(&dword_2675D4000, v40, v41, "#ResolveRecipientsFlow found multiple handle matches");
    OUTLINED_FUNCTION_2_5();
  }

  v42 = swift_allocBox();
  (*(v15 + 16))(v43, v20, v12);
  v24 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2675E096C(v24);
    v24 = v46;
  }

  result = (*(v15 + 8))(v20, v12);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v24 + 16) > a3)
  {
    v25 = v42 | 0xA000000000000000;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_26767D444()
{
  sub_267678894(*(v0 + 16), *(v0 + 24));
  sub_2676788D0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = qword_2801D3EA0;
  v2 = sub_2676CABFC();
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_2801D3EA8 + 8);

  sub_2675EB7EC(v0 + qword_2801D3EB0, &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675EB7EC(v0 + qword_2801D3EB8, &qword_2801CC6B0, &qword_2676CFC80);

  v5 = *(v0 + qword_2801CD3D0 + 8);
  sub_26767D5F8(*(v0 + qword_2801CD3D0));
  v6 = *(v0 + qword_2801CD3D8 + 8);
  sub_26767D5F8(*(v0 + qword_2801CD3D8));
  return v0;
}

uint64_t sub_26767D540()
{
  sub_26767D444();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26767D5F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26767D608(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_26767D63C(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return result;
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t sub_26767D660()
{
  result = qword_2801CD480;
  if (!qword_2801CD480)
  {
    sub_2676C9CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD480);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26767D764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_28_3();
  v9(v8);
  return a2;
}

unint64_t sub_26767D7C0()
{
  result = qword_2801CD4C8;
  if (!qword_2801CD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD4C8);
  }

  return result;
}

uint64_t sub_26767D820(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2676788B8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_26767D854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6A8, &unk_2676CF5F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t a1)
{

  return MEMORY[0x2821BBCD0](v1 - 208, a1);
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1)
{

  return MEMORY[0x2821BBCD0](v1 - 88, a1);
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_24_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t *OUTLINED_FUNCTION_25_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 - 472);
  v4[3] = a1;
  v4[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v4);
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_2676C9FAC();
}

uint64_t *OUTLINED_FUNCTION_27_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t sub_26767DA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v104 = a2;
  v105 = a4;
  v102 = a1;
  v103 = a3;
  v106 = a5;
  v101 = *v5;
  v6 = v101;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD500, &qword_2676D3260);
  OUTLINED_FUNCTION_3(v11);
  v96 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v96 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  OUTLINED_FUNCTION_4_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD508, &qword_2676D3268);
  OUTLINED_FUNCTION_3(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v96 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  OUTLINED_FUNCTION_4_1(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD518, &qword_2676D3270);
  v98 = OUTLINED_FUNCTION_3(v34);
  v99 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  v97 = v39;
  v100 = v5;
  v40 = *(v6 + 80);
  sub_2676CBA1C();
  if (swift_dynamicCastMetatype())
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v41 = sub_2676CBE4C();
    __swift_project_value_buffer(v41, qword_2801CDC90);
    v42 = sub_2676CBE2C();
    v43 = sub_2676CC23C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2675D4000, v42, v43, "#makeContactDisambiguation Send", v44, 2u);
      MEMORY[0x26D5FEA80](v44, -1, -1);
    }

    v45 = v102;

    v46 = v103;
    v47 = v104;
    sub_2676789A0();
    v113 = &type metadata for ContactDisambiguationProducer;
    v114 = sub_26767E3F4();
    OUTLINED_FUNCTION_11_22();
    v48 = swift_allocObject();
    v110 = v48;
    v48[2] = v47;
    v48[3] = v46;
    v49 = v105;
    v48[4] = v45;
    v48[5] = v49;
    v50 = sub_2676C9B9C();
    OUTLINED_FUNCTION_7_13(v50);

    v51 = v49;
    v52 = sub_2676C9B8C();
    v108 = v50;
    v109 = MEMORY[0x277D5BD58];
    v107 = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD558, &qword_2676D3298);
    OUTLINED_FUNCTION_7_13(v53);
    OUTLINED_FUNCTION_4_25();
    v110 = sub_2676C9C8C();

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2A8, &qword_2676CE508);
    v55 = sub_26767EA54(&qword_2801CD560, &qword_2801CD558, &qword_2676D3298);
    v56 = v97;
    sub_2676C942C();

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD568, &qword_2676D32A0);
    v58 = v106;
    v106[3] = v57;
    v110 = v53;
    v111 = v54;
    v112 = v55;
    v59 = OUTLINED_FUNCTION_3_20();
    v60 = v98;
    v110 = v98;
    v111 = v54;
    v58[4] = OUTLINED_FUNCTION_0_24(v59);
    __swift_allocate_boxed_opaque_existential_1(v58);

    sub_2676C941C();

    return (*(v99 + 8))(v56, v60);
  }

  else
  {
    v98 = v29;
    v99 = v24;
    sub_2676CBA6C();
    if (swift_dynamicCastMetatype())
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v62 = sub_2676CBE4C();
      __swift_project_value_buffer(v62, qword_2801CDC90);
      v63 = sub_2676CBE2C();
      v64 = sub_2676CC23C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_2675D4000, v63, v64, "#makeContactDisambiguation Reply", v65, 2u);
        MEMORY[0x26D5FEA80](v65, -1, -1);
      }

      v66 = v102;

      v68 = v103;
      v67 = v104;
      sub_267678BF0();
      v113 = &type metadata for ContactDisambiguationProducer;
      v114 = sub_26767E3F4();
      OUTLINED_FUNCTION_11_22();
      v69 = swift_allocObject();
      v110 = v69;
      v69[2] = v67;
      v69[3] = v68;
      v70 = v105;
      v69[4] = v66;
      v69[5] = v70;
      v71 = sub_2676C9B9C();
      OUTLINED_FUNCTION_7_13(v71);

      v72 = v70;
      v73 = sub_2676C9B8C();
      v108 = v71;
      v109 = MEMORY[0x277D5BD58];
      v107 = v73;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD540, &qword_2676D3288);
      OUTLINED_FUNCTION_7_13(v74);
      OUTLINED_FUNCTION_4_25();
      v75 = sub_2676C9C8C();
      OUTLINED_FUNCTION_12_13(v75);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2B8, &qword_2676CE540);
      v77 = sub_26767EA54(&qword_2801CD548, &qword_2801CD540, &qword_2676D3288);
      v78 = v98;
      OUTLINED_FUNCTION_10_16();

      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD550, &qword_2676D3290);
      v80 = v106;
      v106[3] = v79;
      v110 = v74;
      v111 = v76;
      v112 = v77;
      v81 = OUTLINED_FUNCTION_3_20();
      v110 = v22;
      v111 = v76;
      v80[4] = OUTLINED_FUNCTION_0_24(v81);
      __swift_allocate_boxed_opaque_existential_1(v80);

      sub_2676C941C();

      return (*(v99 + 8))(v78, v22);
    }

    else
    {
      v82 = v102;

      sub_267678E40();
      v113 = &type metadata for ContactDisambiguationProducer;
      v114 = sub_26767E3F4();
      OUTLINED_FUNCTION_11_22();
      v83 = swift_allocObject();
      v110 = v83;
      v84 = v103;
      v83[2] = v104;
      v83[3] = v84;
      v85 = v105;
      v83[4] = v82;
      v83[5] = v85;
      v86 = sub_2676C9B9C();
      OUTLINED_FUNCTION_7_13(v86);

      v87 = v85;
      v88 = sub_2676C9B8C();
      v108 = v86;
      v109 = MEMORY[0x277D5BD58];
      v107 = v88;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD528, &qword_2676D3278);
      OUTLINED_FUNCTION_7_13(v89);
      OUTLINED_FUNCTION_4_25();
      v90 = sub_2676C9C8C();
      OUTLINED_FUNCTION_12_13(v90);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2C0, &qword_2676CE548);
      v92 = sub_26767EA54(&qword_2801CD530, &qword_2801CD528, &qword_2676D3278);
      OUTLINED_FUNCTION_10_16();

      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD538, &qword_2676D3280);
      v94 = v106;
      v106[3] = v93;
      v110 = v89;
      v111 = v91;
      v112 = v92;
      v95 = OUTLINED_FUNCTION_3_20();
      v110 = v11;
      v111 = v91;
      v94[4] = OUTLINED_FUNCTION_0_24(v95);
      __swift_allocate_boxed_opaque_existential_1(v94);

      sub_2676C941C();

      return (*(v96 + 8))(v17, v11);
    }
  }
}

unint64_t sub_26767E3F4()
{
  result = qword_2801CD520;
  if (!qword_2801CD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD520);
  }

  return result;
}

uint64_t sub_26767E448@<X0>(uint64_t *a1@<X8>)
{
  v84 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v83[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v83[5] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v83[4] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  v83[1] = v83 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  OUTLINED_FUNCTION_4_1(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4F8, &unk_2676CF250);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v42 = *(*(v41 - 8) + 72);
  v43 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2676CDE20;
  sub_2676CB80C();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v49 = sub_2676CAD6C();
  v83[2] = v50;
  v83[3] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  result = sub_2676CA7DC();
  *v84 = v44;
  return result;
}

uint64_t sub_26767E920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  *(a2 + 40) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = v9;

  return sub_2676788D0(v5, v6, v8);
}

uint64_t sub_26767E9A4(void *a1)
{
  v2 = sub_26767CD54();
  v2(a1);
}

uint64_t sub_26767EA54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{
  *(v1 - 112) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_2676C942C();
}

uint64_t OUTLINED_FUNCTION_12_13(uint64_t a1)
{
  *(v1 - 128) = a1;
  v3 = *(v1 - 224);
}

uint64_t sub_26767EB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v199 = a5;
  v200 = a4;
  v196 = a2;
  v197 = a3;
  v198 = a1;
  v195 = *v5;
  v6 = v195;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD570, &qword_2676D32A8);
  OUTLINED_FUNCTION_3(v174);
  v175 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v11);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  v12 = OUTLINED_FUNCTION_3(v176);
  v171 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_7();
  v172 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v19);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD578, &qword_2676D32B0);
  OUTLINED_FUNCTION_3(v181);
  v180 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v24);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD580, &qword_2676D32B8);
  v25 = OUTLINED_FUNCTION_3(v182);
  v177 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_7();
  v178 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_1();
  v191 = v32;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD588, &qword_2676D32C0);
  OUTLINED_FUNCTION_3(v185);
  v184 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  v39 = OUTLINED_FUNCTION_3(v38);
  v190 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_7();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v168 - v47;
  v49 = sub_2676CB48C();
  v50 = OUTLINED_FUNCTION_4_1(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v168 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD590, &qword_2676D32C8);
  v56 = OUTLINED_FUNCTION_3(v55);
  v193 = v57;
  v194 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_9_1();
  v192 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  v63 = OUTLINED_FUNCTION_3(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_7();
  v70 = v68 - v69;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_24_1();
  v73 = v72;
  v74 = v6;
  v75 = v5;
  v76 = *(v74 + 80);
  sub_2676CBA1C();
  if (swift_dynamicCastMetatype())
  {
    v187 = v73;
    sub_2676789A0();
    v77 = v198;
    v78 = sub_2676CAE5C();
    v197 = sub_2675E6418(v78);

    v188 = v65;
    v79 = *(v65 + 16);
    v186 = v62;
    v79(v70, v73, v62);
    v80 = type metadata accessor for HandleDisambiguationProducer();
    v203 = v80;
    v81 = sub_26767FB04();
    v82 = OUTLINED_FUNCTION_43_4(v81);
    v83 = *(v80 + 20);
    v84 = sub_2676CAECC();
    OUTLINED_FUNCTION_4_22(v84);
    (*(v85 + 16))(v82 + v83, v77);
    type metadata accessor for ContactResolutionCATsSimple();
    sub_2676CB47C();
    v86 = sub_2676CB42C();
    *v82 = v86;
    v87 = v200;
    *(v82 + *(v80 + 24)) = v200;
    MEMORY[0x28223BE20](v86);
    *(&v168 - 2) = v77;
    v88 = sub_2676C9B9C();
    OUTLINED_FUNCTION_11_23(v88);
    v89 = v87;
    v90 = sub_2676C9B8C();
    OUTLINED_FUNCTION_18_11(v90, MEMORY[0x277D5BD58]);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5E8, &qword_2676D3300);
    OUTLINED_FUNCTION_7_13(v91);
    OUTLINED_FUNCTION_4_26();
    v201 = sub_2676C9C8C();

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2C8, &qword_2676CE550);
    sub_26767EA54(&qword_2801CD5F0, &qword_2801CD5E8, &qword_2676D3300);
    OUTLINED_FUNCTION_34_8();
    v93 = v192;
    OUTLINED_FUNCTION_9_24();
    sub_2676C942C();

    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5F8, &qword_2676D3308);
    OUTLINED_FUNCTION_17_17(v94);
    v201 = v91;
    v202 = v92;
    v95 = OUTLINED_FUNCTION_0_25();
    v96 = v194;
    v201 = v194;
    v202 = v92;
    v97 = OUTLINED_FUNCTION_0_24(v95);
    OUTLINED_FUNCTION_95(v97);

    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_9_24();
    sub_2676C941C();

    (*(v193 + 1))(v93, v96);
    return (*(v188 + 8))(v187, v186);
  }

  else
  {
    v192 = v45;
    v193 = v54;
    v99 = v196;
    v100 = v197;
    v194 = v75;
    v101 = v198;
    v102 = v48;
    v103 = v200;
    v104 = v191;
    v105 = v189;
    sub_2676CBA6C();
    if (swift_dynamicCastMetatype())
    {
      v170 = v102;
      sub_267678BF0();
      v106 = sub_2676CAE5C();
      v197 = sub_2675E6418(v106);

      v107 = *(v190 + 16);
      v169 = v38;
      v107(v192, v102, v38);
      v108 = type metadata accessor for HandleDisambiguationProducer();
      v203 = v108;
      v109 = sub_26767FB04();
      v110 = OUTLINED_FUNCTION_43_4(v109);
      v111 = *(v108 + 20);
      v112 = sub_2676CAECC();
      OUTLINED_FUNCTION_4_22(v112);
      (*(v113 + 16))(v110 + v111, v101);
      type metadata accessor for ContactResolutionCATsSimple();
      OUTLINED_FUNCTION_16_10();
      v114 = sub_2676CB42C();
      *v110 = v114;
      *(v110 + *(v108 + 24)) = v103;
      MEMORY[0x28223BE20](v114);
      *(&v168 - 2) = v101;
      v115 = sub_2676C9B9C();
      OUTLINED_FUNCTION_11_23(v115);
      v116 = v103;
      v117 = sub_2676C9B8C();
      OUTLINED_FUNCTION_18_11(v117, MEMORY[0x277D5BD58]);
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5D0, &qword_2676D32F0);
      OUTLINED_FUNCTION_7_13(v118);
      OUTLINED_FUNCTION_4_26();
      v201 = sub_2676C9C8C();

      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2E0, &qword_2676CE5E8);
      sub_26767EA54(&qword_2801CD5D8, &qword_2801CD5D0, &qword_2676D32F0);
      OUTLINED_FUNCTION_34_8();
      v120 = v183;
      sub_2676C942C();

      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5E0, &qword_2676D32F8);
      OUTLINED_FUNCTION_17_17(v121);
      v201 = v118;
      v202 = v119;
      v122 = OUTLINED_FUNCTION_0_25();
      v123 = v185;
      v201 = v185;
      v202 = v119;
      v124 = OUTLINED_FUNCTION_0_24(v122);
      OUTLINED_FUNCTION_95(v124);

      OUTLINED_FUNCTION_20_11();
      sub_2676C941C();

      (*(v184 + 8))(v120, v123);
      return (*(v190 + 8))(v170, v169);
    }

    else
    {
      v125 = v99 == 0x7265646E6573 && v100 == 0xE600000000000000;
      if (v125 || (sub_2676CC59C() & 1) != 0)
      {
        sub_267678E60();
        v126 = sub_2676CAE5C();
        v197 = sub_2675E6418(v126);

        v127 = v177;
        (*(v177 + 16))(v178, v104, v182);
        v128 = type metadata accessor for HandleDisambiguationProducer();
        v203 = v128;
        v129 = sub_26767FB04();
        v130 = OUTLINED_FUNCTION_43_4(v129);
        v131 = *(v128 + 20);
        v132 = sub_2676CAECC();
        OUTLINED_FUNCTION_4_22(v132);
        (*(v133 + 16))(v130 + v131, v101);
        type metadata accessor for ContactResolutionCATsSimple();
        OUTLINED_FUNCTION_16_10();
        v134 = sub_2676CB42C();
        v135 = OUTLINED_FUNCTION_12_14(v134);
        MEMORY[0x28223BE20](v135);
        v136 = OUTLINED_FUNCTION_14_16();
        OUTLINED_FUNCTION_11_23(v136);
        v137 = v38;
        v138 = sub_2676C9B8C();
        OUTLINED_FUNCTION_18_11(v138, MEMORY[0x277D5BD58]);
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5B8, &qword_2676D32E0);
        OUTLINED_FUNCTION_7_13(v139);
        OUTLINED_FUNCTION_4_26();
        v140 = sub_2676C9C8C();
        OUTLINED_FUNCTION_15_17(v140);
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2E8, &qword_2676CE5F0);
        sub_26767EA54(&qword_2801CD5C0, &qword_2801CD5B8, &qword_2676D32E0);
        OUTLINED_FUNCTION_34_8();
        v142 = v179;
        OUTLINED_FUNCTION_9_24();
        sub_2676C942C();

        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5C8, &qword_2676D32E8);
        OUTLINED_FUNCTION_17_17(v143);
        v201 = v139;
        v202 = v141;
        v144 = OUTLINED_FUNCTION_0_25();
        v145 = v181;
        v201 = v181;
        v202 = v141;
        v146 = OUTLINED_FUNCTION_0_24(v144);
        OUTLINED_FUNCTION_95(v146);

        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_9_24();
        sub_2676C941C();

        (*(v180 + 8))(v142, v145);
        return (*(v127 + 8))(v191, v182);
      }

      else
      {
        sub_267678E40();
        v147 = sub_2676CAE5C();
        v197 = sub_2675E6418(v147);

        v148 = v171;
        (*(v171 + 16))(v172, v105, v176);
        v149 = type metadata accessor for HandleDisambiguationProducer();
        v203 = v149;
        v150 = sub_26767FB04();
        v151 = OUTLINED_FUNCTION_43_4(v150);
        v152 = *(v149 + 20);
        v153 = sub_2676CAECC();
        OUTLINED_FUNCTION_4_22(v153);
        (*(v154 + 16))(v151 + v152, v101);
        type metadata accessor for ContactResolutionCATsSimple();
        OUTLINED_FUNCTION_16_10();
        v155 = sub_2676CB42C();
        v156 = OUTLINED_FUNCTION_12_14(v155);
        MEMORY[0x28223BE20](v156);
        v157 = OUTLINED_FUNCTION_14_16();
        OUTLINED_FUNCTION_11_23(v157);
        v158 = v38;
        v159 = sub_2676C9B8C();
        OUTLINED_FUNCTION_18_11(v159, MEMORY[0x277D5BD58]);
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5A0, &qword_2676D32D0);
        OUTLINED_FUNCTION_7_13(v160);
        OUTLINED_FUNCTION_4_26();
        v161 = sub_2676C9C8C();
        OUTLINED_FUNCTION_15_17(v161);
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC2F0, &qword_2676CE5F8);
        sub_26767EA54(&qword_2801CD5A8, &qword_2801CD5A0, &qword_2676D32D0);
        OUTLINED_FUNCTION_34_8();
        v163 = v173;
        OUTLINED_FUNCTION_23_10();
        sub_2676C942C();

        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD5B0, &qword_2676D32D8);
        OUTLINED_FUNCTION_17_17(v164);
        v201 = v160;
        v202 = v162;
        v165 = OUTLINED_FUNCTION_0_25();
        v166 = v174;
        v201 = v174;
        v202 = v162;
        v167 = OUTLINED_FUNCTION_0_24(v165);
        OUTLINED_FUNCTION_95(v167);

        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_23_10();
        sub_2676C941C();

        (*(v175 + 8))(v163, v166);
        return (*(v148 + 8))(v189, v176);
      }
    }
  }
}

unint64_t sub_26767FB04()
{
  result = qword_2801CD598;
  if (!qword_2801CD598)
  {
    type metadata accessor for HandleDisambiguationProducer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD598);
  }

  return result;
}

uint64_t sub_26767FB5C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v70 = v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v55 - v16;
  v56 = v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = v55 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = v55 - v35;
  v67 = v55 - v35;
  v37 = sub_2676CB80C();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  v38 = sub_2676CAD6C();
  v65 = v39;
  v66 = v38;
  v40 = sub_2676CAAFC();
  v62 = v41;
  v63 = v40;
  v42 = sub_2676CAB0C();
  v60 = v43;
  v61 = v42;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v64);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  v44 = v21;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v59);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v58);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  v45 = v13;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v57);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  v47 = v68;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  v50 = v69;
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v49);
  v55[0] = v25;
  v55[1] = v32;
  v51 = v56;
  sub_2676CA7BC();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v48);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v64);
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v59);
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v58);
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v57);
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v46);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v52);
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v49);
  v53 = v71;
  sub_2676CA7DC();
  return __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
}

uint64_t sub_267680158@<X0>(uint64_t *a1@<X8>)
{
  v121 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v120 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v119 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v32 = OUTLINED_FUNCTION_4_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_1();
  v122 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  OUTLINED_FUNCTION_4_1(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  v115 = &v105 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC4F8, &unk_2676CF250);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v42 = *(*(v117 - 8) + 72);
  v118 = (*(*(v117 - 8) + 80) + 32) & ~*(*(v117 - 8) + 80);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_2676CDE20;
  sub_2676CB80C();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = sub_2676CAD6C();
  v113 = v48;
  v114 = v47;
  v49 = sub_2676CAAFC();
  v110 = v50;
  v111 = v49;
  v51 = sub_2676CAB0C();
  v108 = v52;
  v109 = v51;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  v81 = v122;
  sub_2676CA7BC();
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v73);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v112);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v107);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v106);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v105);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v69);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v117);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v77);
  v103 = v116;
  result = sub_2676CA7DC();
  *v121 = v103;
  return result;
}

uint64_t sub_267680728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  *(a2 + 40) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = v9;

  return sub_2676788D0(v5, v6, v8);
}

uint64_t sub_2676807AC(void *a1)
{
  v2 = sub_26767CDDC();
  v2(a1);
}

uint64_t OUTLINED_FUNCTION_0_25()
{
  *(v1 - 112) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_23(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t result)
{
  *v2 = result;
  *(v2 + *(v1 + 24)) = *(v3 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_15_17(uint64_t a1)
{
  *(v1 - 128) = a1;
  v3 = *(v1 - 224);
}

uint64_t OUTLINED_FUNCTION_16_10()
{
  v2 = *(v0 - 232);

  return sub_2676CB47C();
}

uint64_t OUTLINED_FUNCTION_18_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = a2;
  *(v3 - 168) = result;
  return result;
}

uint64_t sub_2676809FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v44 = a1;
  v45 = a4;
  v42 = a5;
  v43 = sub_2676CA1EC();
  v7 = OUTLINED_FUNCTION_3(v43);
  v41 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  v40 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v40 - v22;
  v24 = sub_2676CA07C();
  v25 = OUTLINED_FUNCTION_3(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_7();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v40 - v34;
  sub_2676CA78C();
  (*(v19 + 16))(v23, v44, v16);
  v45(0);
  sub_2676CA75C();
  v36 = v46;
  sub_2676CA30C();

  if (!v36)
  {
    sub_2676CA1DC();
    (*(v27 + 16))(v32, v35, v24);
    sub_2676CA1CC();
    sub_2676CA26C();
    v38 = v41;
    v39 = v43;
    (*(v41 + 16))(v40, v15, v43);
    sub_2676CA25C();
    (*(v38 + 8))(v15, v39);
    return (*(v27 + 8))(v35, v24);
  }

  return result;
}

uint64_t sub_267680CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v220 = a4;
  v221 = a3;
  v217 = a1;
  v218 = a2;
  v222 = *v4;
  v216 = v222;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  v6 = OUTLINED_FUNCTION_3(v201);
  v199 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_11_5(v10);
  v196 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v13);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD580, &qword_2676D32B8);
  v14 = OUTLINED_FUNCTION_3(v206);
  v210 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_11_5(v18);
  v202 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  v211 = OUTLINED_FUNCTION_3(v22);
  v212 = v23;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v211);
  v207 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_1();
  v213 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC300, &unk_2676D09B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_13();
  v32 = MEMORY[0x28223BE20](v31);
  v209 = &v193 - v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_1();
  v215 = v34;
  v219 = type metadata accessor for NeedsValuePromptProvider();
  v35 = OUTLINED_FUNCTION_2_6(v219);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_13();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v193 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v193 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v193 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v193 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v193 - v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_24_1();
  v224 = v55;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  v56 = OUTLINED_FUNCTION_3(v223);
  v214 = v57;
  v59 = *(v58 + 64);
  v60 = MEMORY[0x28223BE20](v56);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_24_1();
  v62 = v61;
  v63 = v222;
  v222 = v5;
  v64 = v63[10];
  sub_2676CBA1C();
  if (swift_dynamicCastMetatype())
  {
    v208 = v62;
    v65 = v218;
    v66 = v221;
    sub_2676789A0();
    v67 = v215;
    sub_26763B360(v217, v215);
    v68 = v214;
    v69 = *(v214 + 2);
    v70 = OUTLINED_FUNCTION_58_1();
    v71(v70);
    v72 = *(v68 + 80);
    OUTLINED_FUNCTION_16_11();
    v73 = swift_allocObject();
    v74 = OUTLINED_FUNCTION_12_15(v73, v68);
    v75(v74);
    v76 = v219;
    v77 = *(v219 + 28);
    v78 = sub_2676C9B9C();
    OUTLINED_FUNCTION_7_13(v78);
    *&v54[v77] = sub_2676C9B8C();
    v79 = sub_2676CAA9C();
    *v54 = __swift_getEnumTagSinglePayload(v67, 1, v79) != 1;
    *(v54 + 1) = v65;
    *(v54 + 2) = v66;
    v80 = &v54[*(v76 + 32)];
    *v80 = sub_267682F1C;
    v80[1] = v73;
    v81 = &v54[*(v76 + 24)];
    v82 = type metadata accessor for PromptForContactProducer();
    sub_26763B360(v67, &v81[*(v82 + 20)]);
    *v81 = v65;
    *(v81 + 1) = v66;
    swift_bridgeObjectRetain_n();
    sub_2675EB7EC(v67, &qword_2801CC300, &unk_2676D09B0);
    sub_267682B28(v54, v224);
    OUTLINED_FUNCTION_79();
    v83 = swift_allocObject();
    *(v83 + 16) = v65;
    *(v83 + 24) = v66;
    type metadata accessor for ContactPromptResponseHandler();
    OUTLINED_FUNCTION_79();
    v84 = swift_allocObject();
    *(v84 + 16) = sub_267682FD0;
    *(v84 + 24) = v83;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
    v86 = v220;
    v220[3] = v85;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
    v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
    v89 = sub_267682D24();
    v90 = OUTLINED_FUNCTION_2_25(v89);
    v91 = OUTLINED_FUNCTION_1_25(v90);
    v225 = v88;
    v226 = v91;
    v92 = OUTLINED_FUNCTION_4_27();
    v225 = v87;
    v226 = &type metadata for DisambiguationResponse;
    v93 = OUTLINED_FUNCTION_3_22(v92);
    v86[4] = OUTLINED_FUNCTION_0_26(v93);
    __swift_allocate_boxed_opaque_existential_1(v86);

    v94 = v224;
    v95 = OUTLINED_FUNCTION_58_1();
    sub_267681D50(v95, v96, v97);

    sub_267682D88(v94);
    return (*(v68 + 8))(v208, v223);
  }

  else
  {
    v214 = v45;
    v215 = v48;
    v223 = v25;
    v224 = v51;
    v208 = v42;
    v99 = v209;
    v100 = v210;
    v101 = v216;
    v102 = v212;
    v103 = v213;
    v104 = v211;
    v105 = v218;
    v106 = v221;
    sub_2676CBA6C();
    if (swift_dynamicCastMetatype())
    {
      sub_267678BF0();
      v107 = v99;
      sub_26763B360(v217, v99);
      v108 = v207;
      v109 = v103;
      v110 = v104;
      (*(v102 + 16))(v207, v109, v104);
      v111 = *(v102 + 80);
      OUTLINED_FUNCTION_16_11();
      v112 = swift_allocObject();
      (*(v102 + 32))(&v112[v101], v108, v110);
      v113 = OUTLINED_FUNCTION_14_17();
      OUTLINED_FUNCTION_7_13(v113);
      v114 = sub_2676C9B8C();
      v115 = v215;
      *&v215[v102 + 32] = v114;
      v116 = sub_2676CAA9C();
      *v115 = __swift_getEnumTagSinglePayload(v107, 1, v116) != 1;
      *(v115 + 8) = v105;
      *(v115 + 16) = v106;
      v117 = (v115 + *(v108 + 8));
      *v117 = sub_267682E20;
      v117[1] = v112;
      v118 = OUTLINED_FUNCTION_13_17();
      sub_26763B360(v107, &v112[*(v118 + 20)]);
      *v112 = v105;
      *(v112 + 1) = v106;
      swift_bridgeObjectRetain_n();
      sub_2675EB7EC(v107, &qword_2801CC300, &unk_2676D09B0);
      v119 = v224;
      sub_267682B28(v115, v224);
      OUTLINED_FUNCTION_79();
      v120 = swift_allocObject();
      *(v120 + 16) = v105;
      *(v120 + 24) = v106;
      type metadata accessor for ContactPromptResponseHandler();
      OUTLINED_FUNCTION_79();
      v121 = swift_allocObject();
      *(v121 + 16) = sub_267682E5C;
      *(v121 + 24) = v120;
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
      v123 = v220;
      v220[3] = v122;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
      v124 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
      v125 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
      v126 = sub_267682D24();
      v127 = OUTLINED_FUNCTION_2_25(v126);
      v128 = OUTLINED_FUNCTION_1_25(v127);
      v225 = v125;
      v226 = v128;
      v129 = OUTLINED_FUNCTION_4_27();
      v225 = v124;
      v226 = &type metadata for DisambiguationResponse;
      v130 = OUTLINED_FUNCTION_3_22(v129);
      v123[4] = OUTLINED_FUNCTION_0_26(v130);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v123);

      sub_267681D50(v119, v121, boxed_opaque_existential_1);

      sub_267682D88(v119);
      return (*(v212 + 8))(v213, v211);
    }

    else
    {
      v132 = v105;
      v134 = v105 == 0x7265646E6573;
      v133 = v106;
      v134 = v134 && v106 == 0xE600000000000000;
      if (v134 || (sub_2676CC59C() & 1) != 0)
      {
        sub_267678E60();
        v135 = v204;
        sub_26763B360(v217, v204);
        v136 = v100;
        v137 = *(v100 + 16);
        v138 = v203;
        v139 = OUTLINED_FUNCTION_58_1();
        v140(v139);
        v141 = *(v100 + 80);
        OUTLINED_FUNCTION_16_11();
        v142 = swift_allocObject();
        v143 = OUTLINED_FUNCTION_12_15(v142, v100);
        v144(v143);
        v145 = OUTLINED_FUNCTION_14_17();
        OUTLINED_FUNCTION_7_13(v145);
        v146 = sub_2676C9B8C();
        v147 = v208;
        *&v208[v138] = v146;
        v148 = sub_2676CAA9C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v135, 1, v148);
        OUTLINED_FUNCTION_11_24(EnumTagSinglePayload);
        *v150 = sub_267682DE4;
        v150[1] = v142;
        v151 = OUTLINED_FUNCTION_13_17();
        sub_26763B360(v135, v142 + *(v151 + 20));
        *v142 = v132;
        *(v142 + 1) = v133;
        swift_bridgeObjectRetain_n();
        sub_2675EB7EC(v135, &qword_2801CC300, &unk_2676D09B0);
        v152 = v214;
        sub_267682B28(v147, v214);
        type metadata accessor for ContactPromptResponseHandler();
        OUTLINED_FUNCTION_79();
        v153 = swift_allocObject();
        *(v153 + 16) = sub_2676828A0;
        *(v153 + 24) = 0;
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
        v155 = v220;
        v220[3] = v154;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
        v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
        v157 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
        v158 = sub_267682D24();
        v159 = OUTLINED_FUNCTION_2_25(v158);
        v160 = OUTLINED_FUNCTION_1_25(v159);
        v225 = v157;
        v226 = v160;
        v161 = OUTLINED_FUNCTION_4_27();
        v225 = v156;
        v226 = &type metadata for DisambiguationResponse;
        v162 = OUTLINED_FUNCTION_3_22(v161);
        v155[4] = OUTLINED_FUNCTION_0_26(v162);
        v163 = __swift_allocate_boxed_opaque_existential_1(v155);
        sub_267681D50(v152, v153, v163);

        sub_267682D88(v152);
        return (*(v136 + 8))(v205, v206);
      }

      else
      {
        sub_267678E40();
        v164 = v195;
        sub_26763B360(v217, v195);
        v165 = v199;
        v166 = *(v199 + 16);
        v167 = v197;
        v168 = OUTLINED_FUNCTION_58_1();
        v169(v168);
        v170 = *(v165 + 80);
        OUTLINED_FUNCTION_16_11();
        v171 = swift_allocObject();
        v172 = OUTLINED_FUNCTION_12_15(v171, v165);
        v173(v172);
        v174 = OUTLINED_FUNCTION_14_17();
        OUTLINED_FUNCTION_7_13(v174);
        v175 = sub_2676C9B8C();
        v176 = v194;
        *(v194 + v167) = v175;
        v177 = sub_2676CAA9C();
        v178 = __swift_getEnumTagSinglePayload(v164, 1, v177);
        OUTLINED_FUNCTION_11_24(v178);
        *v179 = sub_267682AEC;
        v179[1] = v171;
        v180 = OUTLINED_FUNCTION_13_17();
        sub_26763B360(v164, v171 + *(v180 + 20));
        *v171 = v132;
        *(v171 + 1) = v106;
        swift_bridgeObjectRetain_n();
        sub_2675EB7EC(v164, &qword_2801CC300, &unk_2676D09B0);
        v181 = v198;
        sub_267682B28(v176, v198);
        type metadata accessor for ContactPromptResponseHandler();
        OUTLINED_FUNCTION_79();
        v182 = swift_allocObject();
        *(v182 + 16) = sub_267682B8C;
        *(v182 + 24) = 0;
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD600, &qword_2676D3310);
        v184 = v220;
        v220[3] = v183;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD608, &qword_2676D3318);
        v185 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD610, &qword_2676D3320);
        v186 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD618, &qword_2676D3328);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD620, &qword_2676D3330);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
        v187 = sub_267682D24();
        v188 = OUTLINED_FUNCTION_2_25(v187);
        v189 = OUTLINED_FUNCTION_1_25(v188);
        v225 = v186;
        v226 = v189;
        v190 = OUTLINED_FUNCTION_4_27();
        v225 = v185;
        v226 = &type metadata for DisambiguationResponse;
        v191 = OUTLINED_FUNCTION_3_22(v190);
        v184[4] = OUTLINED_FUNCTION_0_26(v191);
        v192 = __swift_allocate_boxed_opaque_existential_1(v184);
        sub_267681D50(v181, v182, v192);

        sub_267682D88(v181);
        return (*(v165 + 8))(v200, v201);
      }
    }
  }
}

uint64_t sub_267681C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  sub_2676C986C();
  sub_2676809FC(v6, &qword_2801CC658, &qword_2676D45A0, MEMORY[0x277D5C808], a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_267681D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD620, &qword_2676D3330);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD618, &qword_2676D3328);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD610, &qword_2676D3320);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD608, &qword_2676D3318);
  v20 = *(v19 - 8);
  v43 = v19;
  v44 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v37 = &v37 - v22;
  v52 = type metadata accessor for NeedsValuePromptProvider();
  v53 = sub_267683BE0(&qword_2801CD640, type metadata accessor for NeedsValuePromptProvider);
  v23 = __swift_allocate_boxed_opaque_existential_1(&v49);
  sub_267683B7C(a1, v23);
  v47 = type metadata accessor for ContactPromptResponseHandler();
  v48 = sub_267683BE0(&qword_2801CD648, type metadata accessor for ContactPromptResponseHandler);
  v46 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD628, &qword_2676D3338);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  sub_2676C9F2C();

  v27 = sub_2676C9F1C();

  v49 = v27;
  v28 = sub_267682D24();

  sub_2676C942C();

  v49 = v24;
  v50 = &type metadata for DisambiguationResponse;
  v51 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2676C941C();

  (*(v38 + 8))(v8, v5);

  v49 = v5;
  v50 = &type metadata for DisambiguationResponse;
  v51 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v39;
  sub_2676C93BC();

  (*(v40 + 8))(v13, v31);

  v49 = v31;
  v50 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v37;
  v34 = v41;
  sub_2676C93AC();

  (*(v42 + 8))(v18, v34);

  v49 = v34;
  v50 = &type metadata for DisambiguationResponse;
  v51 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v43;
  sub_2676C939C();

  return (*(v44 + 8))(v33, v35);
}

uint64_t sub_267682338@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD280, &qword_2676D1EB8);
  sub_2676C986C();
  sub_2676809FC(v6, &qword_2801CC628, &unk_2676CF530, MEMORY[0x277D5C828], a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26768247C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void *__return_ptr, uint64_t))
{
  sub_2676CA56C();
  if (v17[3])
  {
    a4(0);
    if (swift_dynamicCast())
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_2675EB7EC(v17, &qword_2801CC158, &qword_2676CDDA0);
    v7 = 0;
  }

  v8 = sub_267625A2C();
  if (v8 == 3)
  {
    if (!v7)
    {
      return 0;
    }

    a5(v17, v11);

    if (!v17[0])
    {
      goto LABEL_23;
    }

    v10 = sub_2676CA54C();
  }

  else
  {
    if (v8 == 2)
    {
      if (v7)
      {

        a5(v17, v9);

        if (v17[0])
        {
          v10 = sub_2676CA53C();
          goto LABEL_17;
        }

LABEL_23:

        return 0;
      }

      return 0;
    }

    if (!v7)
    {
      return 0;
    }

    a5(v17, v12);

    if (!v17[0])
    {
      goto LABEL_23;
    }

    v10 = sub_2676CA51C();
  }

LABEL_17:
  v13 = v10;

  if (!v13)
  {

    return v13;
  }

  if (!sub_267630B8C(v13))
  {

    return 0;
  }

  sub_267692C1C(0, (v13 & 0xC000000000000001) == 0, v13);
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v13);
  }

  else
  {
    v14 = *(v13 + 32);
  }

  sub_2676CA48C();

  if (!v16)
  {

    return 0;
  }

  v13 = sub_2676CA4EC();

  return v13;
}

uint64_t sub_2676826D0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD638, &unk_2676D3340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD580, &qword_2676D32B8);
  sub_2676C986C();
  sub_2675EB7EC(v5, &qword_2801CD638, &unk_2676D3340);
  sub_2676809FC(v10, &qword_2801CC430, &unk_2676D0440, MEMORY[0x277D5C7E8], a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2676828A0()
{
  sub_2676CA56C();
  if (!v3[3])
  {
    sub_2675EB7EC(v3, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2676CA5CC();

  v0 = v3[0];
  if (!v3[0])
  {

    return v0;
  }

  v1 = sub_2676CA55C();

  if (!v1)
  {

    return 0;
  }

  v0 = sub_2676CA4EC();

  return v0;
}

uint64_t sub_2676829A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F8, &qword_2676D3258);
  sub_2676C986C();
  sub_2676809FC(v6, &qword_2801CC430, &unk_2676D0440, MEMORY[0x277D5C7E8], a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_267682B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeedsValuePromptProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267682B8C()
{
  sub_2676CA56C();
  if (!v4[3])
  {
    sub_2675EB7EC(v4, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2676CA5CC();

  if (!v4[0])
  {

    return 0;
  }

  v0 = sub_2676CA51C();

  if (!v0)
  {

    return v0;
  }

  if (!sub_267630B8C(v0))
  {

    return 0;
  }

  sub_267692C1C(0, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v0);
  }

  else
  {
    v1 = *(v0 + 32);
  }

  sub_2676CA48C();

  if (!v3)
  {

    return 0;
  }

  v0 = sub_2676CA4EC();

  return v0;
}

unint64_t sub_267682D24()
{
  result = qword_2801CD630;
  if (!qword_2801CD630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD628, &qword_2676D3338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD630);
  }

  return result;
}

uint64_t sub_267682D88(uint64_t a1)
{
  v2 = type metadata accessor for NeedsValuePromptProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2_6(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_267683014(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a2 + 32) = *a1;
  *(a2 + 40) = v3;
  v6 = *(a1 + 16);
  v7 = *(a2 + 48);
  *(a2 + 48) = v6;
  sub_2676788B8(v2, v3, v6);

  return sub_2676788D0(v4, v5, v7);
}

void sub_267683078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  v3 = *(a2 + 24);
  *(a2 + 24) = 3;
  sub_267678894(v2, v3);
}

uint64_t sub_267683094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v36 = sub_2676C966C();
  v3 = OUTLINED_FUNCTION_3(v36);
  v34 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2676C970C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v10 = &v8[v9[12]];
  v11 = v9[16];
  v12 = &v8[v9[20]];
  v13 = &v8[v9[24]];
  v14 = v9[28];
  v28 = v9[32];
  v29 = v14;
  v15 = &v8[v9[36]];
  v16 = &v8[v9[40]];
  v17 = &v8[v9[44]];
  v18 = &v8[v9[48]];
  v30 = v9[52];
  v19 = *MEMORY[0x277D5BBD8];
  v20 = sub_2676C99EC();
  OUTLINED_FUNCTION_2_6(v20);
  (*(v21 + 104))(v8, v19);
  v22 = v32;
  *v10 = v31;
  *(v10 + 1) = v22;
  *&v8[v11] = 0;
  *v12 = 0;
  *(v12 + 1) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v23 = v28;
  *&v8[v29] = 0;
  *&v8[v23] = 0;
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v24 = *(v33 + qword_2801D3EA8 + 8);
  *v16 = *(v33 + qword_2801D3EA8);
  *(v16 + 1) = v24;
  *v17 = 0;
  *(v17 + 1) = 0;
  v25 = sub_2676C968C();
  *v18 = 0;
  *(v18 + 1) = 0;
  __swift_storeEnumTagSinglePayload(&v8[v30], 1, 1, v25);
  (*(v34 + 104))(v8, *MEMORY[0x277D5B8B8], v36);

  return sub_2676C971C();
}

uint64_t sub_2676832B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a4;
  v28 = a1;
  v33 = sub_2676C966C();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2676C970C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v8 = &v6[v7[12]];
  v9 = v7[16];
  v10 = &v6[v7[20]];
  v11 = &v6[v7[24]];
  v12 = v7[28];
  v25 = v7[32];
  v26 = v12;
  v13 = &v6[v7[36]];
  v14 = &v6[v7[40]];
  v15 = &v6[v7[44]];
  v16 = &v6[v7[48]];
  v27 = v7[52];
  v17 = *MEMORY[0x277D5BBB0];
  v18 = sub_2676C99EC();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  v19 = v29;
  *v8 = v28;
  *(v8 + 1) = v19;
  *&v6[v9] = 0;
  *v10 = 0;
  *(v10 + 1) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v20 = v25;
  *&v6[v26] = 0;
  *&v6[v20] = 0;
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v21 = *(v30 + qword_2801D3EA8 + 8);
  *v14 = *(v30 + qword_2801D3EA8);
  *(v14 + 1) = v21;
  *v15 = 0;
  *(v15 + 1) = 0;
  v22 = sub_2676C968C();
  *v16 = 0;
  *(v16 + 1) = 0;
  __swift_storeEnumTagSinglePayload(&v6[v27], 1, 1, v22);
  (*(v31 + 104))(v6, *MEMORY[0x277D5B8B8], v33);

  return sub_2676C971C();
}

uint64_t sub_2676834E8(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v76 = a4;
  v80 = a1;
  v6 = sub_2676C966C();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2676C9CCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v15 = sub_2676CBE4C();
  __swift_project_value_buffer(v15, qword_2801CDC90);

  v16 = a3;
  v17 = sub_2676CBE2C();
  v18 = sub_2676CC23C();

  v19 = os_log_type_enabled(v17, v18);
  v77 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v75 = v11;
    v22 = v21;
    v81[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2676B0B84(v80, a2, v81);
    *(v20 + 12) = 2080;
    swift_getErrorValue();
    v23 = sub_2676CC5FC();
    v25 = sub_2676B0B84(v23, v24, v81);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_2675D4000, v17, v18, "[ResolveRecipientsFlow#instrumentOnFailure(%s)]: %s", v20, 0x16u);
    swift_arrayDestroy();
    v26 = v22;
    v11 = v75;
    MEMORY[0x26D5FEA80](v26, -1, -1);
    MEMORY[0x26D5FEA80](v20, -1, -1);
  }

  v81[0] = a3;
  v27 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v75 = sub_2676C970C();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
    v29 = &v9[v28[12]];
    v30 = &v9[v28[20]];
    v31 = &v9[v28[24]];
    v32 = v28[28];
    v33 = v28[32];
    v71 = v28[16];
    v72 = v33;
    v34 = &v9[v28[36]];
    v35 = &v9[v28[40]];
    v36 = &v9[v28[44]];
    v37 = &v9[v28[48]];
    v38 = v28[52];
    v73 = v32;
    v74 = v38;
    v39 = *MEMORY[0x277D5BC08];
    v40 = sub_2676C99EC();
    (*(*(v40 - 8) + 104))(v9, v39, v40);
    v41 = v76;
    v42 = v77;
    *v29 = v80;
    *(v29 + 1) = v42;
    *&v9[v71] = 0;
    *v30 = 0;
    *(v30 + 1) = 0;
    *v31 = 0u;
    *(v31 + 1) = 0u;
    v43 = v72;
    *(v73 + v9) = 0;
    *&v43[v9] = 0;
    *(v34 + 4) = 0;
    *v34 = 0u;
    *(v34 + 1) = 0u;
    v44 = *(v41 + qword_2801D3EA8 + 8);
    *v35 = *(v41 + qword_2801D3EA8);
    *(v35 + 1) = v44;
    *v36 = 0;
    *(v36 + 1) = 0;
    *v37 = 0;
    *(v37 + 1) = 0;
    v45 = *MEMORY[0x277D5B8E8];
    v46 = sub_2676C968C();
    v47 = v74;
    (*(*(v46 - 8) + 104))(&v9[v74], v45, v46);
    __swift_storeEnumTagSinglePayload(&v9[v47], 0, 1, v46);
    (*(v78 + 104))(v9, *MEMORY[0x277D5B8B8], v79);
  }

  else
  {
    v75 = sub_2676C970C();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
    v49 = &v9[v48[12]];
    v50 = v48[16];
    v51 = &v9[v48[20]];
    v52 = &v9[v48[24]];
    v71 = v48[28];
    v72 = a3;
    v70 = v48[32];
    v53 = &v9[v48[36]];
    v54 = &v9[v48[40]];
    v55 = &v9[v48[44]];
    v73 = &v9[v48[48]];
    v74 = v48[52];
    v56 = *MEMORY[0x277D5BC00];
    v57 = sub_2676C99EC();
    (*(*(v57 - 8) + 104))(v9, v56, v57);
    v58 = v76;
    v59 = v77;
    *v49 = v80;
    *(v49 + 1) = v59;
    *&v9[v50] = 0;
    *v51 = 0;
    *(v51 + 1) = 0;
    *v52 = 0u;
    *(v52 + 1) = 0u;
    v60 = v70;
    *&v9[v71] = 0;
    *&v9[v60] = 0;
    *(v53 + 4) = 0;
    *v53 = 0u;
    *(v53 + 1) = 0u;
    v61 = *(v58 + qword_2801D3EA8 + 8);
    *v54 = *(v58 + qword_2801D3EA8);
    *(v54 + 1) = v61;
    *v55 = 0;
    *(v55 + 1) = 0;
    swift_getErrorValue();

    v62 = sub_2676CC5FC();
    v63 = v73;
    *v73 = v62;
    v63[1] = v64;
    v65 = *MEMORY[0x277D5B8D8];
    v66 = sub_2676C968C();
    v67 = v74;
    (*(*(v66 - 8) + 104))(&v9[v74], v65, v66);
    __swift_storeEnumTagSinglePayload(&v9[v67], 0, 1, v66);
    (*(v78 + 104))(v9, *MEMORY[0x277D5B8B8], v79);
  }

  return sub_2676C971C();
}

uint64_t sub_267683B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeedsValuePromptProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267683BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1)
{
  *(v1 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_24(uint64_t result)
{
  *v1 = result != 1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v2;
  v5 = v1 + *(v4 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  v3 = v0 + *(v1 + 24);

  return type metadata accessor for PromptForContactProducer();
}

uint64_t OUTLINED_FUNCTION_14_17()
{
  v2 = *(*(v0 - 160) + 28);

  return sub_2676C9B9C();
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal26ResolveRecipientsFlowStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_267683E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_267683E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_267683E84(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_267683EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_2675EE48C(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_267683FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_2676842B4(v32, v33);
    v26 = sub_2676CBF1C();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2676841A4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_19;
      }

      v7 = sub_267683FAC(a1, a3, MEMORY[0x277CBA2E0], &qword_2801CBF58, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2F0]);
      return v7 & 1;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    case 3:
      if (a1)
      {
        if (a4 != 3 || a3 != 1)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = 1;
        return v7 & 1;
      }

      if (a4 == 3 && !a3)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 = 0;
      return v7 & 1;
    default:
      if (a4)
      {
        goto LABEL_19;
      }

      return sub_267683EAC(a1, a3);
  }
}

uint64_t sub_2676842B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2676842FC(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CCE70, &unk_2676D1300);
  result = sub_2676CC69C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2676843B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);

  return sub_2676C9A5C();
}

uint64_t sub_2676843FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = OUTLINED_FUNCTION_3(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD788, &qword_2676D3568);
  OUTLINED_FUNCTION_3(v11);
  v33 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD790, &qword_2676D3570);
  v34 = OUTLINED_FUNCTION_3(v18);
  v35 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - v23;
  sub_2676843B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD760, &qword_2676D34C8);
  sub_267685664();
  sub_2676C9F4C();
  (*(v6 + 16))(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = *(a1 + 16);
  (*(v6 + 32))(v26 + v25, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  OUTLINED_FUNCTION_1_26();
  v29 = sub_2676148C4(v28, &qword_2801CD788, &qword_2676D3568);
  sub_2676C953C();

  (*(v33 + 8))(v17, v11);
  v37 = v11;
  v38 = v27;
  v39 = v29;
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  sub_2676C933C();
  return (*(v35 + 8))(v24, v30);
}

uint64_t sub_267684748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ResolveRecipientsPlan();
  if (*(a2 + v6[10]) & 1) != 0 || (sub_267684A50(v5))
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v7 = sub_2676CBE4C();
    __swift_project_value_buffer(v7, qword_2801CDC90);

    v8 = sub_2676CBE2C();
    v9 = sub_2676CC23C();

    if (os_log_type_enabled(v8, v9))
    {
      v25 = a3;
      v10 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v10 = 136315138;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v12 = MEMORY[0x26D5FDDD0](v5, v11);
      v14 = sub_2676B0B84(v12, v13, v27);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2675D4000, v8, v9, "#ResolveRecipientsPlan recipients input: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26D5FEA80](v24, -1, -1);
      v15 = v10;
      a3 = v25;
      MEMORY[0x26D5FEA80](v15, -1, -1);
    }

    v16 = type metadata accessor for ResolveRecipientsFlow();
    v17 = (a2 + v6[9]);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(a2 + v6[13]);
    sub_2675F95E4(a2 + v6[11], v27, &qword_2801CC6A8, &unk_2676CF5F0);
    sub_2675F95E4(a2 + v6[12], v26, &qword_2801CC6B0, &qword_2676CFC80);

    v21 = sub_267679614(v5, v18, v19, v20, v27, v26);
    a3[3] = v16;
    result = swift_getWitnessTable();
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD7B0, &qword_2676D3578);
    v21 = swift_allocObject();
    *(v21 + 16) = MEMORY[0x277D84F90];
    *(v21 + 24) = 0;
    a3[3] = v23;
    result = sub_2676148C4(&qword_2801CD7B8, &qword_2801CD7B0, &qword_2676D3578);
  }

  a3[4] = result;
  *a3 = v21;
  return result;
}

uint64_t sub_267684A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v45 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v52 = &v45 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v25 = *(a1 + 16);
  if (!v25)
  {
    return 0;
  }

  v27 = *(v21 + 16);
  v26 = v21 + 16;
  v58 = v27;
  v28 = (a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
  v49 = (v17 + 8);
  v50 = (v17 + 32);
  v46 = (v5 + 8);
  v47 = (v5 + 32);
  v53 = *(v26 + 56);
  v54 = (v26 - 8);
  v48 = v26;
  while (1)
  {
    v57 = v25;
    v29 = v58;
    v58(v24, v28, v20);
    v29(v11, v24, v20);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
    sub_2676CB91C();
    sub_2676CB86C();
    sub_2675EC200(&qword_2801CC118, MEMORY[0x277D5C778]);
    sub_2676CA8EC();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_2675EB7EC(v15, &qword_2801CC038, &qword_2676D5A40);
    }

    else
    {
      v30 = v52;
      (*v50)(v52, v15, v16);
      v31 = sub_2675F8690();
      (*v49)(v30, v16);
      if (v31)
      {
        goto LABEL_14;
      }
    }

    v58(v11, v24, v20);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
    sub_2676CB6AC();
    sub_2675EC200(&qword_2801CC120, MEMORY[0x277D5C558]);
    v32 = v56;
    sub_2676CA8EC();
    v33 = v55;
    if (__swift_getEnumTagSinglePayload(v32, 1, v55) == 1)
    {
      sub_2675EB7EC(v32, &qword_2801CC080, &unk_2676D3580);
      goto LABEL_9;
    }

    v34 = v24;
    v35 = v11;
    v36 = v16;
    v37 = v15;
    v38 = v51;
    (*v47)(v51, v32, v33);
    swift_getKeyPath();
    sub_2676CA89C();
    v40 = v39;

    v41 = v38;
    v15 = v37;
    v16 = v36;
    v11 = v35;
    v24 = v34;
    (*v46)(v41, v33);
    if (v40)
    {
      break;
    }

LABEL_9:
    swift_getKeyPath();
    sub_2675EC200(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
    sub_2676CA89C();
    v43 = v42;

    (*v54)(v24, v20);
    if (v43)
    {

      return 1;
    }

    v28 += v53;
    v25 = v57 - 1;
    if (v57 == 1)
    {
      return 0;
    }
  }

LABEL_14:
  (*v54)(v24, v20);
  return 1;
}

uint64_t sub_2676850BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

uint64_t sub_267685110()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CCE70, &unk_2676D1300);
  sub_2676CC69C();
  v3 = sub_2676C9F9C();
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-1] - v9;
  v15[0] = v0;
  v11 = *(v1 + 88);
  type metadata accessor for FixedResultFlow();
  swift_getWitnessTable();
  sub_2676C940C();
  v15[3] = v3;
  v15[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v5 + 16))(boxed_opaque_existential_1, v10, v3);
  sub_2676C961C();
  (*(v5 + 8))(v10, v3);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_2676852CC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CCE70, &unk_2676D1300);
  v3 = sub_2676CC69C();
  OUTLINED_FUNCTION_2_6(v3);
  (*(v4 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_267685374()
{
  sub_2676852CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_267685410()
{
  sub_2676855A0(319, &qword_2801CD758, &qword_2801CD760, &qword_2676D34C8, MEMORY[0x277D5BC20]);
  if (v0 <= 0x3F)
  {
    sub_2676855A0(319, &qword_2801CD768, &qword_2801CD770, qword_2676D34D0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2676855A0(319, &qword_2801CD778, &qword_2801CD780, &qword_2676D37F0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2676CB38C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2676855A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_267685664()
{
  result = qword_2801CD798;
  if (!qword_2801CD798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD760, &qword_2676D34C8);
    sub_2676148C4(&qword_2801CD7A0, &qword_2801CBF78, &qword_2676CDF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD798);
  }

  return result;
}

uint64_t sub_267685714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ResolveRecipientsPlan() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_267684748(a1, v8, a2);
}

uint64_t type metadata accessor for ResolveSender()
{
  result = qword_2801CD7C0;
  if (!qword_2801CD7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267685854()
{
  sub_2676858D0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2676858D0()
{
  if (!qword_2801CD7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBF78, &qword_2676CDF00);
    v0 = sub_2676CC2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CD7D0);
    }
  }
}

uint64_t sub_267685934(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v2[10] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C8C8C();
  v2[11] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v2[12] = v7;
  v9 = *(v8 + 64);
  v2[13] = OUTLINED_FUNCTION_19();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v2[18] = OUTLINED_FUNCTION_19();
  v2[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC360, &unk_2676D3660);
  OUTLINED_FUNCTION_4_1(v13);
  v15 = *(v14 + 64);
  v2[20] = OUTLINED_FUNCTION_2_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
  v2[21] = v16;
  OUTLINED_FUNCTION_1_0(v16);
  v2[22] = v17;
  v19 = *(v18 + 64);
  v2[23] = OUTLINED_FUNCTION_2_0();
  v20 = sub_2676CB87C();
  v2[24] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v2[25] = v21;
  v23 = *(v22 + 64);
  v2[26] = OUTLINED_FUNCTION_2_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC358, &unk_2676D3670);
  v2[27] = v24;
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  v2[28] = OUTLINED_FUNCTION_2_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  v2[29] = OUTLINED_FUNCTION_19();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v30);
  v32 = *(v31 + 64);
  v2[32] = OUTLINED_FUNCTION_2_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v33);
  v35 = *(v34 + 64);
  v2[33] = OUTLINED_FUNCTION_19();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v36);
  v38 = *(v37 + 64);
  v2[37] = OUTLINED_FUNCTION_19();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267685C7C, 0, 0);
}

uint64_t sub_267685C7C()
{
  v229 = v0;
  v1 = v0[9];
  v2 = type metadata accessor for ResolveSender();
  if (*(v1 + *(v2 + 24)) == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_2676CBE4C();
    __swift_project_value_buffer(v3, qword_2801CDC90);
    v4 = sub_2676CBE2C();
    v5 = sub_2676CC23C();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v6, v7, "#ResolveSender found exact span match, returning nil to resolve as a contact in the flow");
      OUTLINED_FUNCTION_2_5();
    }

    v8 = v0[11];
    v9 = v0[8];

    OUTLINED_FUNCTION_5_2();
    v13 = v8;
    goto LABEL_52;
  }

  v14 = v0[38];
  v15 = v0[39];
  v16 = *(v2 + 20);
  sub_26768704C(v1 + v16, v0[36], &qword_2801CC168, &unk_2676CF510);
  sub_2676CB91C();
  sub_2676CB86C();
  sub_2676870AC(&qword_2801CC118, MEMORY[0x277D5C778]);
  sub_2676CA8EC();
  sub_26768704C(v15, v14, &qword_2801CC038, &qword_2676D5A40);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  v18 = OUTLINED_FUNCTION_33_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v17);
  v21 = v0[38];
  v22 = v0[32];
  if (EnumTagSinglePayload == 1)
  {
    sub_2675ED6C0(v0[38], &qword_2801CC038, &qword_2676D5A40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    swift_getKeyPath();
    sub_2676870AC(&qword_2801CC310, MEMORY[0x277D5C6A0]);
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2(v17);
    (*(v27 + 8))(v21, v17);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    if (__swift_getEnumTagSinglePayload(v22, 1, v28) != 1)
    {
      v68 = v0[32];
      sub_2675ED6C0(v0[39], &qword_2801CC038, &qword_2676D5A40);
      v69 = &qword_2801CC078;
      v70 = &unk_2676D3680;
      v71 = v68;
LABEL_36:
      sub_2675ED6C0(v71, v69, v70);
      v126 = v0[11];
      v127 = v0[8];
      OUTLINED_FUNCTION_5_2();
      goto LABEL_52;
    }
  }

  v29 = v0[39];
  v30 = v0[37];
  sub_2675ED6C0(v0[32], &qword_2801CC078, &unk_2676D3680);
  sub_26768704C(v29, v30, &qword_2801CC038, &qword_2676D5A40);
  v31 = __swift_getEnumTagSinglePayload(v30, 1, v17);
  v32 = v0[37];
  v33 = v0[31];
  if (v31 == 1)
  {
    v34 = v0[24];
    sub_2675ED6C0(v0[37], &qword_2801CC038, &qword_2676D5A40);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  }

  else
  {
    swift_getKeyPath();
    sub_2676CA84C();

    OUTLINED_FUNCTION_14_2(v17);
    (*(v38 + 8))(v32, v17);
  }

  v39 = v0[30];
  v41 = v0[27];
  v40 = v0[28];
  v42 = v0[24];
  (*(v0[25] + 104))(v39, *MEMORY[0x277D5C6E0], v42);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v42);
  v43 = *(v41 + 48);
  v44 = OUTLINED_FUNCTION_28_3();
  sub_26768704C(v44, v45, &qword_2801CC098, &qword_2676CDAD8);
  sub_26768704C(v39, v40 + v43, &qword_2801CC098, &qword_2676CDAD8);
  v46 = OUTLINED_FUNCTION_33_4();
  if (__swift_getEnumTagSinglePayload(v46, v47, v42) == 1)
  {
    v48 = v0[31];
    v49 = v0[24];
    sub_2675ED6C0(v0[30], &qword_2801CC098, &qword_2676CDAD8);
    sub_2675ED6C0(v48, &qword_2801CC098, &qword_2676CDAD8);
    if (__swift_getEnumTagSinglePayload(v40 + v43, 1, v49) == 1)
    {
      sub_2675ED6C0(v0[28], &qword_2801CC098, &qword_2676CDAD8);
LABEL_35:
      v71 = v0[39];
      v69 = &qword_2801CC038;
      v70 = &qword_2676D5A40;
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  v224 = v16;
  v50 = v0[24];
  sub_26768704C(v0[28], v0[29], &qword_2801CC098, &qword_2676CDAD8);
  v51 = __swift_getEnumTagSinglePayload(v40 + v43, 1, v50);
  v53 = v0[30];
  v52 = v0[31];
  v54 = v0[29];
  if (v51 == 1)
  {
    v55 = v0[24];
    v56 = v0[25];
    sub_2675ED6C0(v0[30], &qword_2801CC098, &qword_2676CDAD8);
    sub_2675ED6C0(v52, &qword_2801CC098, &qword_2676CDAD8);
    v57 = *(v56 + 8);
    v58 = OUTLINED_FUNCTION_28_3();
    v59(v58);
    v16 = v224;
LABEL_18:
    sub_2675ED6C0(v0[28], &qword_2801CC358, &unk_2676D3670);
    goto LABEL_19;
  }

  v217 = v0[28];
  v222 = v1;
  v122 = v0[25];
  v121 = v0[26];
  v123 = v0[24];
  (*(v122 + 32))(v121, v40 + v43, v123);
  sub_2676870AC(&qword_2801CC370, MEMORY[0x277D5C6E8]);
  v124 = sub_2676CBF1C();
  v125 = *(v122 + 8);
  v125(v121, v123);
  sub_2675ED6C0(v53, &qword_2801CC098, &qword_2676CDAD8);
  sub_2675ED6C0(v52, &qword_2801CC098, &qword_2676CDAD8);
  v125(v54, v123);
  v1 = v222;
  sub_2675ED6C0(v217, &qword_2801CC098, &qword_2676CDAD8);
  v16 = v224;
  if (v124)
  {
    goto LABEL_35;
  }

LABEL_19:
  sub_26768704C(v1 + v16, v0[35], &qword_2801CC168, &unk_2676CF510);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v61 = OUTLINED_FUNCTION_33_4();
  v63 = __swift_getEnumTagSinglePayload(v61, v62, v60);
  v64 = v0[35];
  if (v63 == 1)
  {
    v65 = &qword_2801CC168;
    v66 = &unk_2676CF510;
    v67 = v0[35];
LABEL_24:
    sub_2675ED6C0(v67, v65, v66);
    v78 = v0[20];
    v79 = v0[21];
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    goto LABEL_25;
  }

  v72 = v0[19];
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_27();
  sub_2676870AC(v73, v74);
  sub_2676870AC(&qword_2801CC2D0, MEMORY[0x277D5C640]);
  sub_2676CA87C();

  OUTLINED_FUNCTION_14_2(v60);
  v76 = *(v75 + 8);
  (v76)(v64, v60);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v72, 1, v77) == 1)
  {
    v67 = v0[19];
    v65 = &qword_2801CC068;
    v66 = &unk_2676D4E00;
    goto LABEL_24;
  }

  log = v76;
  v128 = v0[20];
  v218 = v0[21];
  v225 = v16;
  v130 = v0[18];
  v129 = v0[19];
  v131 = *(v77 - 8);
  (*(v131 + 16))(v130, v129, v77);
  __swift_storeEnumTagSinglePayload(v130, 0, 1, v77);
  sub_2676CB61C();
  sub_2676CB78C();
  sub_2676870AC(&qword_2801CC378, MEMORY[0x277D5C4C8]);
  sub_2676CA8EC();
  v132 = v129;
  v16 = v225;
  (*(v131 + 8))(v132, v77);
  if (__swift_getEnumTagSinglePayload(v128, 1, v218) != 1)
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    swift_getKeyPath();
    sub_2676CA89C();
    v134 = v133;

    if (v134)
    {
      v135 = v0[39];
      v137 = v0[22];
      v136 = v0[23];
      v138 = v0[21];
      v139 = v0[11];
      v140 = v0[8];

      (*(v137 + 8))(v136, v138);
      sub_2675ED6C0(v135, &qword_2801CC038, &qword_2676D5A40);
      OUTLINED_FUNCTION_5_2();
      v13 = v139;
      goto LABEL_52;
    }

    v147 = v0[23];
    v148 = v0[21];
    swift_getKeyPath();
    v149 = sub_2676CA89C();
    v151 = v150;

    if (!v151)
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
      goto LABEL_47;
    }

    sub_26768704C(v1 + v225, v0[34], &qword_2801CC168, &unk_2676CF510);
    v152 = OUTLINED_FUNCTION_33_4();
    v154 = __swift_getEnumTagSinglePayload(v152, v153, v60);
    v155 = v0[34];
    if (v154 == 1)
    {
      sub_2675ED6C0(v0[34], &qword_2801CC168, &unk_2676CF510);
    }

    else
    {
      swift_getKeyPath();
      sub_2676CA89C();

      (log)(v155, v60);
    }

    static MailAddresseePrototype.from(name:email:)(v149, v0[17]);

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v176 = v0[16];
    v177 = v0[17];
    v178 = v0[11];
    v179 = v0[12];
    v180 = sub_2676CBE4C();
    __swift_project_value_buffer(v180, qword_2801CDC90);
    v181 = *(v179 + 16);
    v182 = OUTLINED_FUNCTION_28_3();
    v181(v182);
    v183 = sub_2676CBE2C();
    v184 = sub_2676CC23C();
    v185 = os_log_type_enabled(v183, v184);
    v186 = v0[39];
    v187 = v0[22];
    v188 = v0[23];
    v227 = v0[21];
    v189 = v0[16];
    if (v185)
    {
      logb = v183;
      v190 = v0[15];
      v220 = v0[39];
      v191 = v0[12];
      v210 = v184;
      v192 = v0[11];
      v215 = v0[23];
      v193 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v228 = v208;
      *v193 = 136380675;
      (v181)(v190, v189, v192);
      v194 = sub_2676CBFBC();
      v196 = v195;
      (*(v191 + 8))(v189, v192);
      v197 = sub_2676B0B84(v194, v196, &v228);

      *(v193 + 4) = v197;
      _os_log_impl(&dword_2675D4000, logb, v210, "#ResolveSender resolving as %{private}s", v193, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v208);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();

      (*(v187 + 8))(v215, v227);
      v198 = v220;
    }

    else
    {
      v200 = v0[11];
      v199 = v0[12];

      (*(v199 + 8))(v189, v200);
      (*(v187 + 8))(v188, v227);
      v198 = v186;
    }

    sub_2675ED6C0(v198, &qword_2801CC038, &qword_2676D5A40);
    v144 = v0[17];
    goto LABEL_42;
  }

LABEL_25:
  v84 = v0[33];
  sub_2675ED6C0(v0[20], &qword_2801CC360, &unk_2676D3660);
  sub_26768704C(v1 + v16, v84, &qword_2801CC168, &unk_2676CF510);
  v85 = OUTLINED_FUNCTION_33_4();
  v87 = __swift_getEnumTagSinglePayload(v85, v86, v60);
  v88 = v0[33];
  if (v87 != 1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_27();
    sub_2676870AC(v89, v90);
    v91 = sub_2676CA89C();
    v93 = v92;

    OUTLINED_FUNCTION_14_2(v60);
    (*(v94 + 8))(v88, v60);
    if (!v93)
    {
      goto LABEL_47;
    }

    v95 = v0[10];
    v0[2] = v91;
    v0[3] = v93;
    v0[4] = 39;
    v0[5] = 0xE100000000000000;
    sub_2676C911C();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
    sub_2675E69E4();
    sub_2676CC36C();
    v101 = v100;
    sub_2675ED6C0(v95, &qword_2801CCED8, &unk_2676D1390);
    if ((v101 & 1) == 0)
    {
      v0[6] = v91;
      v0[7] = v93;
      sub_2676CC38C();
    }

    static MailAddresseePrototype.from(name:email:)(0, v0[14]);

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v102 = v0[13];
    v103 = v0[14];
    v104 = v0[11];
    v105 = v0[12];
    v106 = sub_2676CBE4C();
    __swift_project_value_buffer(v106, qword_2801CDC90);
    v107 = *(v105 + 16);
    v108 = OUTLINED_FUNCTION_28_3();
    v107(v108);
    v109 = sub_2676CBE2C();
    v110 = sub_2676CC23C();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v0[39];
    if (v111)
    {
      v113 = v0[15];
      v114 = v0[12];
      v216 = v0[13];
      v115 = v0[11];
      v116 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v228 = v221;
      *v116 = 136380675;
      (v107)(v113, v216, v115);
      v117 = sub_2676CBFBC();
      v119 = v118;
      (*(v114 + 8))(v216, v115);
      v120 = sub_2676B0B84(v117, v119, &v228);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_2675D4000, v109, v110, "#ResolveSender resolving as %{private}s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v221);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {
      v141 = v0[12];
      v142 = v0[13];
      v143 = v0[11];

      (*(v141 + 8))(v142, v143);
    }

    sub_2675ED6C0(v112, &qword_2801CC038, &qword_2676D5A40);
    v144 = v0[14];
LABEL_42:
    v145 = v0[11];
    v146 = v0[8];
    (*(v0[12] + 32))(v146, v144, v145);
    v10 = v146;
    v11 = 0;
    v12 = 1;
    v13 = v145;
    goto LABEL_52;
  }

  sub_2675ED6C0(v0[33], &qword_2801CC168, &unk_2676CF510);
LABEL_47:
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v156 = sub_2676CBE4C();
  __swift_project_value_buffer(v156, qword_2801CDC90);
  v157 = sub_2676CBE2C();
  v158 = sub_2676CC23C();
  if (os_log_type_enabled(v157, v158))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_15_6(&dword_2675D4000, v159, v160, "#ResolveSender could not resolve, return nil");
    OUTLINED_FUNCTION_2_5();
  }

  v161 = v0[39];
  v162 = v0[11];
  v163 = v0[8];

  sub_2675ED6C0(v161, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_5_2();
  v13 = v162;
LABEL_52:
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v165 = v0[38];
  v164 = v0[39];
  v167 = v0[36];
  v166 = v0[37];
  v169 = v0[34];
  v168 = v0[35];
  v171 = v0[32];
  v170 = v0[33];
  v173 = v0[30];
  v172 = v0[31];
  v201 = v0[29];
  v202 = v0[28];
  v203 = v0[26];
  v204 = v0[23];
  v205 = v0[20];
  v206 = v0[19];
  v207 = v0[18];
  v209 = v0[17];
  loga = v0[16];
  v214 = v0[15];
  v219 = v0[14];
  v223 = v0[13];
  v226 = v0[10];

  v174 = v0[1];

  return v174();
}

uint64_t sub_267686F74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MEMORY[0x26D5FD2B0](v1, v2);
}

uint64_t sub_267686FB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26762C5D8;

  return sub_267685934(a1);
}

uint64_t sub_26768704C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_28_3();
  v9(v8);
  return a2;
}

uint64_t sub_2676870AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ResolveSendMailIntent()
{
  result = qword_2801CD7D8;
  if (!qword_2801CD7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267687180()
{
  sub_267687480(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
  if (v0 <= 0x3F)
  {
    sub_26768741C(319, &qword_2801CC8F8, MEMORY[0x277CBA350], MEMORY[0x277D5B9E8]);
    if (v1 <= 0x3F)
    {
      sub_267687480(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
      if (v2 <= 0x3F)
      {
        sub_267687480(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
        if (v3 <= 0x3F)
        {
          sub_267687480(319, &qword_2801CCA00, &qword_2801CBFE0, &qword_2676D1070, MEMORY[0x277D5B9E8]);
          if (v4 <= 0x3F)
          {
            sub_26768741C(319, &qword_2801CD1D0, MEMORY[0x277CBA208], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_267687480(319, &qword_2801CD768, &qword_2801CD770, qword_2676D34D0, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_267687480(319, &qword_2801CD778, &qword_2801CD780, &qword_2676D37F0, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_2676CB38C();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26768741C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_267687480(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2676874E4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB92C();
  *v0 = result;
  return result;
}

uint64_t sub_26768750C(uint64_t *a1)
{
  v1 = *a1;

  return sub_2676CB93C();
}

uint64_t sub_267687538()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB94C();
  *v0 = result;
  return result;
}

uint64_t sub_267687560(uint64_t *a1)
{
  v1 = *a1;

  return sub_2676CB95C();
}

uint64_t sub_26768758C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB98C();
  *v0 = result;
  return result;
}

uint64_t sub_2676875B4(uint64_t *a1)
{
  v1 = *a1;

  return sub_2676CB99C();
}

uint64_t sub_2676875E0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CBAFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_267687608(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2676CBB0C();
}

uint64_t sub_267687648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v170 = a1;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3(v166);
  v168 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v7);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD7F0, &qword_2676D3870);
  OUTLINED_FUNCTION_3(v165);
  v167 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v12);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD7F8, &qword_2676D3878);
  OUTLINED_FUNCTION_2_6(v169);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v16);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v156);
  v157 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v21);
  v22 = type metadata accessor for ResolveSendMailIntent();
  v23 = *(v22 - 8);
  v195 = (v22 - 8);
  v152 = v23;
  v190 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v189 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v182 = v29;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD800, &qword_2676D3888);
  OUTLINED_FUNCTION_3(v183);
  v154 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD808, &qword_2676D3890);
  OUTLINED_FUNCTION_2_6(v163);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  v185[1] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v193 = OUTLINED_FUNCTION_3(v39);
  v194 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_4();
  v181 = v43;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v44);
  v180 = &v148 - v45;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v148 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_3(v49);
  v51 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v54);
  v56 = &v148 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD810, &qword_2676D3898);
  OUTLINED_FUNCTION_2_6(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v60);
  v62 = &v148 - v61;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD818, &qword_2676D38A0);
  v63 = OUTLINED_FUNCTION_2_6(v161);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_4();
  v185[0] = v66;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v67);
  v184 = &v148 - v68;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v69);
  v153 = &v148 - v70;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD820, &qword_2676D38A8);
  OUTLINED_FUNCTION_3(v159);
  v160 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v75);
  sub_2676C9A5C();
  swift_getKeyPath();
  v192 = sub_267689524(&qword_2801CBF68, MEMORY[0x277D5C8D8]);
  v175 = sub_267689524(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
  v191 = v49;
  v171 = v56;
  sub_2676C9A4C();

  v76 = *(v51 + 8);
  v187 = v51 + 8;
  v188 = v76;
  v76(v56, v49);
  v77 = v195;
  OpaqueTypeConformance2 = v195[14];
  v78 = v2;
  sub_2675F95E4(v2 + OpaqueTypeConformance2, &v62[v57[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  v173 = v77[15];
  sub_2675F95E4(v2 + v173, &v62[v57[12]], &qword_2801CC6B0, &qword_2676CFC80);
  v79 = *(v2 + v77[16]);
  v80 = &v62[v57[9]];
  *v80 = 0x6E65697069636572;
  *(v80 + 1) = 0xEA00000000007374;
  v62[v57[10]] = 1;
  *&v62[v57[13]] = v79;
  v176 = v77[8];
  v81 = v79;
  v149 = v81;
  v82 = v48;
  v83 = v193;
  sub_2676C980C();
  v179 = sub_2676148C4(&qword_2801CD828, &qword_2801CD810, &qword_2676D3898);
  v178 = sub_267688E78();
  sub_2676C94EC();
  v84 = *(v194 + 8);
  v194 += 8;
  v172 = v84;
  v84(v82, v83);
  sub_2675EB7EC(v62, &qword_2801CD810, &qword_2676D3898);
  v85 = v171;
  v86 = v191;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_23();
  sub_2676C9A4C();

  v87 = v85;
  v188(v85, v86);
  sub_2675F95E4(v78 + OpaqueTypeConformance2, &v62[v57[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  v88 = v78;
  sub_2675F95E4(v78 + v173, &v62[v57[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_13_18(&v62[v57[9]]);
  *&v62[v89] = v81;
  v90 = v195;
  v177 = v195[9];
  v186 = v82;
  sub_2676C980C();
  sub_2676C94EC();
  v172(v82, v83);
  sub_2675EB7EC(v62, &qword_2801CD810, &qword_2676D3898);
  v91 = v191;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_23();
  sub_2676C9A4C();

  v92 = v87;
  v93 = v188;
  v188(v92, v91);
  sub_2675F95E4(v78 + OpaqueTypeConformance2, &v62[v57[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v78 + v173, &v62[v57[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_13_18(&v62[v57[9]]);
  v150 = v57;
  *&v62[v94] = v149;
  v175 = v90[10];
  v95 = v186;
  v96 = v193;
  sub_2676C980C();
  sub_2676C94EC();
  v172(v95, v96);
  sub_2675EB7EC(v62, &qword_2801CD810, &qword_2676D3898);
  v97 = v171;
  v98 = v191;
  sub_2676C9A5C();
  swift_getKeyPath();
  v99 = v182;
  sub_2676C9A3C();

  v93(v97, v98);
  OUTLINED_FUNCTION_10_17(&v201);
  v100 = v186;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17(&v202);
  v101 = v180;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17(&v200);
  v102 = v181;
  sub_2676C980C();
  v103 = type metadata accessor for ResolveStringPlan(0);
  v104 = *(v103 + 48);
  v105 = *(v103 + 52);
  swift_allocObject();
  v196 = sub_26768DC2C(0, v99, v100, v101, v102);
  v106 = v189;
  sub_267688F2C(v88, v189);
  v194 = *(v152 + 80);
  v107 = (v194 + 16) & ~v194;
  v108 = swift_allocObject();
  sub_267688F90(v106, v108 + v107);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v110 = sub_267689524(&qword_2801CD838, type metadata accessor for ResolveStringPlan);
  v111 = v151;
  v152 = v110;
  sub_2676C951C();

  v112 = v88 + v195[11];
  v113 = v155;
  v114 = v156;
  sub_2676C980C();
  v196 = v103;
  v197 = v109;
  v198 = v110;
  v172 = MEMORY[0x277D5B840];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v173 = sub_267689048();
  v115 = v183;
  sub_2676C94EC();
  OUTLINED_FUNCTION_27_5(&v187);
  v116(v113, v114);
  OUTLINED_FUNCTION_27_5(v185);
  v117(v111, v115);
  v118 = v191;
  sub_2676C9A5C();
  swift_getKeyPath();
  v119 = v182;
  sub_2676C9A3C();

  v188(v97, v118);
  OUTLINED_FUNCTION_10_17(&v201);
  v120 = v186;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17(&v202);
  v121 = v180;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17(&v200);
  v122 = v181;
  sub_2676C980C();
  v123 = *(v103 + 48);
  v124 = *(v103 + 52);
  swift_allocObject();
  v196 = sub_26768DC2C(1, v119, v120, v121, v122);
  v125 = v189;
  sub_267688F2C(v88, v189);
  v149 = v107;
  v126 = swift_allocObject();
  sub_267688F90(v125, v126 + v107);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v128 = v162;
  v129 = v152;
  sub_2676C951C();

  v130 = v88 + v195[12];
  v131 = v164;
  v132 = v166;
  sub_2676C980C();
  v196 = v103;
  v197 = v127;
  v198 = v129;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = sub_2676893C8();
  v135 = v165;
  sub_2676C94EC();
  OUTLINED_FUNCTION_27_5(v199);
  v136(v131, v132);
  OUTLINED_FUNCTION_27_5(&v198);
  v137 = v135;
  v138(v128, v135);
  v139 = v189;
  sub_267688F2C(v88, v189);
  v140 = v149;
  v141 = swift_allocObject();
  sub_267688F90(v139, v141 + v140);
  sub_2676C8D8C();
  v196 = v150;
  v197 = v179;
  v198 = v178;
  swift_getOpaqueTypeConformance2();
  v196 = v183;
  v197 = OpaqueTypeConformance2;
  v198 = v173;
  swift_getOpaqueTypeConformance2();
  v196 = v137;
  v197 = v133;
  v198 = v134;
  swift_getOpaqueTypeConformance2();
  v142 = v158;
  sub_2676C98CC();
  OUTLINED_FUNCTION_3_23();
  sub_2676148C4(v143, &qword_2801CD820, &qword_2676D38A8);
  v144 = v142;
  v145 = v159;
  sub_2676C933C();
  OUTLINED_FUNCTION_27_5(&v190);
  return v146(v144, v145);
}

uint64_t sub_2676887E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267688824(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_267688824(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-1] - v6;
  sub_2676C9ECC();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_2676C98EC();
  v8 = sub_2676C911C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = sub_2676B3184(v7, a1, a2);
  sub_2675EB7EC(v7, &qword_2801CCED8, &unk_2676D1390);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_26768893C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_267688824(*a1, *(a1 + 8));
  sub_2676C8EAC();
  v3 = sub_2676C8EBC();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

void sub_2676889A0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v49 = a6;
  v47 = a7;
  v11 = sub_2676C8D8C();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD860, &unk_2676D39A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v46 - v24;
  v26 = *a1;
  v27 = *a2;
  v28 = *a3;
  v29 = *a4;
  v30 = a4[1];
  v46 = v29;
  v31 = v47;
  sub_2675F95E4(v48, v25, &qword_2801CBFE0, &qword_2676D1070);
  v32 = sub_2676C8A4C();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v32);
  v33 = type metadata accessor for ResolveSendMailIntent();
  sub_2675F95E4(v49 + *(v33 + 44), v17, &qword_2801CC3D0, &qword_2676D1D80);

  sub_2676C8CCC();
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v34 = sub_2676CBE4C();
  __swift_project_value_buffer(v34, qword_2801CDC90);
  v36 = v50;
  v35 = v51;
  v37 = v52;
  (*(v51 + 16))(v50, v31, v52);
  v38 = sub_2676CBE2C();
  v39 = sub_2676CC22C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53 = v41;
    *v40 = 136380675;
    v42 = SendMailIntentPrototype.debugDescription.getter();
    v44 = v43;
    (*(v35 + 8))(v36, v37);
    v45 = sub_2676B0B84(v42, v44, &v53);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_2675D4000, v38, v39, "#ResolveSendMailIntent resolved SendMailIntent %{private}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D5FEA80](v41, -1, -1);
    MEMORY[0x26D5FEA80](v40, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v36, v37);
  }
}

uint64_t sub_267688DA8(uint64_t a1)
{
  v2 = sub_267689524(&qword_2801CD268, type metadata accessor for ResolveSendMailIntent);

  return MEMORY[0x2821BA568](a1, v2);
}

unint64_t sub_267688E78()
{
  result = qword_2801CD830;
  if (!qword_2801CD830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9F8, &unk_2676CFE90);
    sub_267689524(&qword_2801CBF58, MEMORY[0x277CBA2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD830);
  }

  return result;
}

uint64_t sub_267688F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSendMailIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267688F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSendMailIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267688FF4()
{
  v0 = OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_4_1(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_9_25();
  return sub_2676887E0(v3, v4);
}

unint64_t sub_267689048()
{
  result = qword_2801CD840;
  if (!qword_2801CD840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9B0, &unk_2676CFE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD840);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ResolveSendMailIntent();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_2_6(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = v1[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_2_6(v9);
  (*(v10 + 8))(v0 + v3 + v8);
  v11 = v1[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6(v12);
  v14 = *(v13 + 8);
  v14(v0 + v3 + v11, v12);
  v14(v0 + v3 + v1[7], v12);
  v14(v0 + v3 + v1[8], v12);
  v15 = v1[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6(v16);
  (*(v17 + 8))(v0 + v3 + v15);
  v18 = v1[10];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_2_6(v19);
  (*(v20 + 8))(v0 + v3 + v18);
  v21 = v1[11];
  v22 = sub_2676C8BFC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v21, 1, v22))
  {
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  v23 = (v5 + v1[12]);
  if (v23[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v24 = (v5 + v1[13]);
  if (v24[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267689374()
{
  v0 = OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_4_1(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_9_25();
  return sub_26768893C(v3, v4);
}

unint64_t sub_2676893C8()
{
  result = qword_2801CD848;
  if (!qword_2801CD848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBFE0, &qword_2676D1070);
    sub_267689524(&qword_2801CD850, MEMORY[0x277CC8C40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD848);
  }

  return result;
}

void sub_26768947C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for ResolveSendMailIntent();
  OUTLINED_FUNCTION_4_1(v13);
  sub_2676889A0(a1, a2, a3, a4, a5, v6 + ((*(v14 + 80) + 16) & ~*(v14 + 80)), a6);
}

uint64_t sub_267689524(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_13_18(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  *(v4 + *(v3 + 40)) = 0;
  v5 = *(v3 + 52);
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return type metadata accessor for ResolveSendMailIntent();
}

uint64_t type metadata accessor for ResolveSiriMailMessageIntent()
{
  result = qword_2801CD868;
  if (!qword_2801CD868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267689670()
{
  sub_267687480(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
  if (v0 <= 0x3F)
  {
    sub_267687480(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
    if (v1 <= 0x3F)
    {
      sub_267687480(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
      if (v2 <= 0x3F)
      {
        sub_267687480(319, &qword_2801CC9B8, &qword_2801CC9C0, &unk_2676D22C0, MEMORY[0x277D5B9E8]);
        if (v3 <= 0x3F)
        {
          sub_26768990C(319, &qword_2801CC900, MEMORY[0x277D5CA28], MEMORY[0x277D5B9E8]);
          if (v4 <= 0x3F)
          {
            sub_26768990C(319, &qword_2801CD1D0, MEMORY[0x277CBA208], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_267687480(319, &qword_2801CD768, &qword_2801CD770, qword_2676D34D0, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_267687480(319, &qword_2801CD778, &qword_2801CD780, &qword_2676D37F0, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_2676CB38C();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26768990C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_267689970@<X0>(uint64_t a1@<X8>)
{
  v161 = a1;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_3(v157);
  v159 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v6);
  v158 = type metadata accessor for ResolveState();
  v7 = OUTLINED_FUNCTION_2_6(v158);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v10);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD880, &unk_2676D3A48);
  OUTLINED_FUNCTION_2_6(v160);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v14);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3(v177);
  v189 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v19);
  v20 = type metadata accessor for ResolveSiriMailMessageIntent();
  v149 = *(v20 - 8);
  v186 = *(v149 + 64);
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v185 = v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD888, &qword_2676D3A58);
  v187 = OUTLINED_FUNCTION_3(v26);
  v188 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD890, &unk_2676D3A60);
  v32 = OUTLINED_FUNCTION_2_6(v155);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v179 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11_5(v148 - v37);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v38 = OUTLINED_FUNCTION_3(v183);
  v195 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v43);
  v194 = v148 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v180 = v45;
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  v50 = v148 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD810, &qword_2676D3898);
  OUTLINED_FUNCTION_2_6(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v54);
  v56 = v148 - v55;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD898, &qword_2676D3A70);
  OUTLINED_FUNCTION_3(v196);
  v192 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v61);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8A0, &qword_2676D3A78);
  v62 = OUTLINED_FUNCTION_2_6(v153);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_11_5(v148 - v67);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8A8, &qword_2676D3A80);
  OUTLINED_FUNCTION_3(v151);
  v152 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v72);
  v190 = v50;
  sub_2676C9A5C();
  swift_getKeyPath();
  v191 = sub_26768BBF4(&qword_2801CBF68, MEMORY[0x277D5C8D8]);
  v162 = sub_26768BBF4(&qword_2801CBF70, MEMORY[0x277D5C6D0]);
  sub_2676C9A4C();

  v73 = *(v46 + 8);
  v46 += 8;
  v181 = v46;
  v182 = v73;
  v73(v50, v45);
  v169 = v21[15];
  sub_2675F95E4(v1 + v169, &v56[v51[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  v168 = v21[16];
  sub_2675F95E4(v1 + v168, &v56[v51[12]], &qword_2801CC6B0, &qword_2676CFC80);
  v74 = v21[17];
  v193 = v21;
  v75 = *(v1 + v74);
  v76 = &v56[v51[9]];
  *v76 = 0x6E65697069636572;
  *(v76 + 1) = 0xEA00000000007374;
  v56[v51[10]] = 1;
  *&v56[v51[13]] = v75;
  v167 = v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  v78 = sub_2676148C4(&qword_2801CD828, &qword_2801CD810, &qword_2676D3898);
  OUTLINED_FUNCTION_23_8(&v177);
  v166 = v77;
  v165 = v78;
  sub_2676C951C();
  sub_2675EB7EC(v56, &qword_2801CD810, &qword_2676D3898);
  v171 = v21[7];
  v79 = v1;
  v80 = v194;
  v81 = v183;
  sub_2676C980C();
  v197 = v51;
  v198 = v77;
  v199 = v78;
  v148[2] = MEMORY[0x277D5B840];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v172 = sub_26768B608();
  v82 = v196;
  v83 = v46;
  sub_2676C94EC();
  v84 = *(v195 + 8);
  v195 += 8;
  v164 = v84;
  v84(v80, v81);
  v85 = *(v192 + 8);
  v192 += 8;
  v163 = v85;
  v85(v46, v82);
  v86 = v190;
  v87 = v180;
  v88 = v79;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_19();

  v89 = v182;
  v182(v86, v87);
  sub_2675F95E4(v88 + v169, &v56[v51[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v88 + v168, &v56[v51[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_9_26(&v56[v51[9]]);
  OUTLINED_FUNCTION_11_25();
  sub_2675EB7EC(v56, &qword_2801CD810, &qword_2676D3898);
  v170 = v193[8];
  v90 = v194;
  sub_2676C980C();
  v91 = v196;
  sub_2676C94EC();
  v164(v90, v81);
  v163(v83, v91);
  v92 = v190;
  v93 = v180;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_19();

  v94 = v93;
  v95 = v181;
  v89(v92, v94);
  v96 = v88;
  sub_2675F95E4(v88 + v169, &v56[v51[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v88 + v168, &v56[v51[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_9_26(&v56[v51[9]]);
  OUTLINED_FUNCTION_11_25();
  sub_2675EB7EC(v56, &qword_2801CD810, &qword_2676D3898);
  v169 = v193[9];
  v97 = v194;
  v98 = v183;
  sub_2676C980C();
  v99 = v196;
  sub_2676C94EC();
  v164(v97, v98);
  v163(v83, v99);
  v100 = v190;
  v101 = v180;
  sub_2676C9A5C();
  swift_getKeyPath();
  v102 = v175;
  sub_2676C9A3C();

  v182(v100, v101);
  sub_2676C980C();
  OUTLINED_FUNCTION_23_8(&v200);
  sub_2676C980C();
  v103 = v96;
  v104 = v174;
  sub_2676C980C();
  v105 = type metadata accessor for ResolveStringSceneHostPlan(0);
  v106 = *(v105 + 48);
  v107 = *(v105 + 52);
  swift_allocObject();
  v108 = sub_26769012C(0, v102, v97, v95, v104);
  OUTLINED_FUNCTION_14_18(v108);
  v195 = *(v149 + 80);
  v109 = (v195 + 16) & ~v195;
  v110 = swift_allocObject();
  sub_26768B720(v104, v110 + v109);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v112 = sub_26768BBF4(&qword_2801CD8B8, type metadata accessor for ResolveStringSceneHostPlan);
  OUTLINED_FUNCTION_23_8(v178);
  v165 = v111;
  v164 = v112;
  sub_2676C951C();

  v113 = v103 + v193[10];
  v114 = v176;
  v115 = v177;
  sub_2676C980C();
  v197 = v105;
  v198 = v111;
  v199 = v112;
  v168 = swift_getOpaqueTypeConformance2();
  v192 = sub_267689048();
  v116 = v187;
  sub_2676C94EC();
  v117 = *(v189 + 8);
  v189 += 8;
  v167 = v117;
  v117(v114, v115);
  v118 = *(v188 + 8);
  v188 += 8;
  v166 = v118;
  v118(v95, v116);
  v119 = v190;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_23_8(&v201);
  sub_2676C9A3C();

  v182(v119, v101);
  v120 = v194;
  v121 = v183;
  sub_2676C980C();
  v122 = v173;
  sub_2676C980C();
  v123 = v174;
  sub_2676C980C();
  v124 = *(v105 + 48);
  v125 = *(v105 + 52);
  swift_allocObject();
  v126 = sub_26769012C(1, v95, v120, v122, v123);
  OUTLINED_FUNCTION_14_18(v126);
  v163 = v109;
  v127 = swift_allocObject();
  sub_26768B720(v121, v127 + v109);
  sub_2676C951C();

  v128 = v193;
  v129 = v103 + v193[11];
  OUTLINED_FUNCTION_23_8(&v202);
  v130 = v177;
  sub_2676C980C();
  v131 = v187;
  v132 = v168;
  sub_2676C94EC();
  v167(v95, v130);
  v166(v95, v131);
  v133 = v128[13];
  v134 = v154;
  v135 = v157;
  sub_2676C980C();
  v136 = v156;
  sub_2676C980C();
  v137 = sub_26768BBF4(&qword_2801CD8C0, type metadata accessor for ResolveState);
  v138 = sub_26768BBF4(&qword_2801CD8C8, MEMORY[0x277D5CA28]);
  v139 = v158;
  sub_2676C94EC();
  (*(v159 + 8))(v136, v135);
  sub_26768B818(v134);
  v140 = v185;
  sub_26768B6BC(v103, v185);
  v141 = v163;
  v142 = swift_allocObject();
  sub_26768B720(v140, v141 + v142);
  sub_2676CB18C();
  v197 = v196;
  v198 = OpaqueTypeConformance2;
  v199 = v172;
  swift_getOpaqueTypeConformance2();
  v197 = v187;
  v198 = v132;
  v199 = v192;
  swift_getOpaqueTypeConformance2();
  v197 = v139;
  v198 = v137;
  v199 = v138;
  swift_getOpaqueTypeConformance2();
  v143 = v150;
  sub_2676C98DC();
  OUTLINED_FUNCTION_3_24();
  sub_2676148C4(v144, &qword_2801CD8A8, &qword_2676D3A80);
  v145 = v143;
  v146 = v151;
  sub_2676C933C();
  return (*(v152 + 8))(v145, v146);
}

void sub_26768AD70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v31 = sub_2676C8C8C();
  v4 = OUTLINED_FUNCTION_3(v31);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5();
  v29 = v9;
  v30 = sub_2676CB14C();
  v10 = OUTLINED_FUNCTION_3(v30);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_5();
  v25 = v15;
  v16 = *a1;
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2676C27D0(0, v17, 0);
    v18 = v32;
    v20 = *(v6 + 16);
    v19 = v6 + 16;
    v21 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v27 = *(v19 + 56);
    v28 = v20;
    v26 = (v19 - 8);
    v22 = v25;
    do
    {
      v28(v29, v21, v31);
      sub_2676C8C1C();
      sub_2676C8C4C();
      sub_2676CB11C();
      (*v26)(v29, v31);
      v24 = *(v32 + 16);
      v23 = *(v32 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2676C27D0(v23 > 1, v24 + 1, 1);
        v22 = v25;
      }

      *(v32 + 16) = v24 + 1;
      (*(v12 + 32))(v32 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v22, v30);
      v21 += v27;
      --v17;
    }

    while (v17);
  }

  *a2 = v18;
}

uint64_t sub_26768AFE8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-1] - v6;
  sub_2676C9ECC();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_2676C98EC();
  v8 = sub_2676C911C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = sub_2676B3184(v7, a1, a2);
  sub_2675EB7EC(v7, &qword_2801CCED8, &unk_2676D1390);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_26768B100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26768AFE8(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26768B144@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a8;
  v42 = a6;
  v43 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v41 - v15;
  v17 = sub_2676CB0DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v47 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v41 - v23;
  v25 = *a1;
  v26 = *a2;
  v27 = *a3;
  v28 = a4[1];
  v45 = *a4;
  v46 = v25;
  v50 = v28;
  v29 = a5[1];
  v44 = *a5;
  v49 = v29;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v30 = sub_2676CBE4C();
  __swift_project_value_buffer(v30, qword_2801CDC90);
  v31 = sub_2676CBE2C();
  v32 = sub_2676CC22C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2675D4000, v31, v32, "#ResolveSiriMailMessageIntent resolved SiriMailMessage", v33, 2u);
    MEMORY[0x26D5FEA80](v33, -1, -1);
  }

  v34 = sub_2676CB0AC();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v34);
  (*(v18 + 16))(v47, v42, v17);
  v35 = type metadata accessor for ResolveSiriMailMessageIntent();
  sub_2675F95E4(v43 + *(v35 + 48), v16, &qword_2801CC3D0, &qword_2676D1D80);
  v36 = sub_2676C8BFC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v36);

  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v16, &qword_2801CC3D0, &qword_2676D1D80);
  }

  else
  {
    sub_2676C8ABC();
    (*(*(v36 - 8) + 8))(v16, v36);
  }

  if (qword_2801CBA70 != -1)
  {
    swift_once();
  }

  v38 = *(qword_2801D3CD0 + 248);
  v40 = *(qword_2801D3CD0 + 240);

  return sub_2676CB04C();
}

uint64_t sub_26768B538(uint64_t a1)
{
  v2 = sub_26768BBF4(&qword_2801CD308, type metadata accessor for ResolveSiriMailMessageIntent);

  return MEMORY[0x2821BA568](a1, v2);
}

unint64_t sub_26768B608()
{
  result = qword_2801CD8B0;
  if (!qword_2801CD8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9A0, &unk_2676D22B0);
    sub_26768BBF4(&qword_2801CBF48, MEMORY[0x277D5CA58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD8B0);
  }

  return result;
}

uint64_t sub_26768B6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSiriMailMessageIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26768B720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSiriMailMessageIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26768B818(uint64_t a1)
{
  v2 = type metadata accessor for ResolveState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ResolveSiriMailMessageIntent();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_2_6(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = v1[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6(v9);
  v11 = *(v10 + 8);
  v11(v0 + v3 + v8, v9);
  v11(v0 + v3 + v1[6], v9);
  v11(v0 + v3 + v1[7], v9);
  v12 = v1[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6(v13);
  v15 = *(v14 + 8);
  v15(v0 + v3 + v12, v13);
  v15(v0 + v3 + v1[9], v13);
  v16 = v1[10];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_2_6(v17);
  (*(v18 + 8))(v0 + v3 + v16);
  v19 = v1[11];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_2_6(v20);
  (*(v21 + 8))(v0 + v3 + v19);
  v22 = v1[12];
  v23 = sub_2676C8BFC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v22, 1, v23))
  {
    (*(*(v23 - 8) + 8))(v5 + v22, v23);
  }

  v24 = (v5 + v1[13]);
  if (v24[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v25 = (v5 + v1[14]);
  if (v25[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26768BBF4(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_9_26(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  *(v3 + *(v4 + 40)) = 0;
  *(v3 + *(v4 + 52)) = *(v5 - 376);
}

uint64_t OUTLINED_FUNCTION_11_25()
{
  v2 = *(v0 - 384);
  v3 = *(v0 - 392);

  return sub_2676C951C();
}

uint64_t OUTLINED_FUNCTION_13_19()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 416);

  return sub_2676C9A4C();
}

uint64_t OUTLINED_FUNCTION_14_18(uint64_t a1)
{
  *(v2 - 112) = a1;
  v4 = *(v2 - 208);

  return sub_26768B6BC(v1, v4);
}

uint64_t sub_26768BD20()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_2676CBF9C() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26768BDB0, 0, 0);
}

uint64_t sub_26768BDB0()
{
  v1 = v0[2];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  v37 = v5;
  v38 = v4;
  v6 = v1[4];
  v7 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v10 = v9;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v11 = sub_2676CBE4C();
  __swift_project_value_buffer(v11, qword_2801CDC90);
  v12 = sub_2676CBE2C();
  v13 = sub_2676CC23C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2675D4000, v12, v13, "#ResolveSRREntity on iOS, converting Markdown to HTML.", v14, 2u);
    MEMORY[0x26D5FEA80](v14, -1, -1);
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v15 = objc_opt_self();

  v16 = sub_2676CBF3C();

  v17 = [objc_opt_self() defaultFormatOptions];
  v18 = [v15 reconstituteAttributedStringFromFormattedString:v16 formatOptions:v17 attributes:0];

  v19 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
  v20 = sub_26768C174();
  if (v21 >> 60 == 15)
  {

LABEL_13:
    v19 = sub_2676CBE2C();
    v32 = sub_2676CC23C();
    if (os_log_type_enabled(v19, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2675D4000, v19, v32, "#ResolveSRREntity returning raw Markdown or nil", v33, 2u);
      MEMORY[0x26D5FEA80](v33, -1, -1);
    }

    v27 = v8;
    v28 = v10;
    goto LABEL_16;
  }

  v22 = v20;
  v23 = v21;
  v24 = v0[3];
  sub_2676CBF8C();
  v25 = sub_2676CBF7C();
  if (!v26)
  {

    sub_26768C4E8(v22, v23);
    goto LABEL_13;
  }

  v27 = v25;
  v28 = v26;

  v29 = sub_2676CBE2C();
  v30 = sub_2676CC23C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2675D4000, v29, v30, "#ResolveSRREntity returning HTML string", v31, 2u);
    MEMORY[0x26D5FEA80](v31, -1, -1);
  }

  sub_26768C4E8(v22, v23);

LABEL_16:
  v34 = v0[3];

  v35 = v0[1];

  return v35(v38, v37, v27, v28);
}

uint64_t sub_26768C174()
{
  v17[10] = *MEMORY[0x277D85DE8];
  v1 = [v0 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8D8, &unk_2676D3C00);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D74090];
  *(inited + 16) = xmmword_2676CDE20;
  v4 = *v3;
  *(inited + 32) = *v3;
  v5 = *MEMORY[0x277D740C8];
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  type metadata accessor for DocumentAttributeKey(0);
  sub_26768C554();
  v7 = v4;
  v8 = v5;
  sub_2676CBEFC();
  v9 = sub_2676CBEEC();

  v17[0] = 0;
  v10 = [v0 dataFromRange:0 documentAttributes:v1 error:{v9, v17}];

  v11 = v17[0];
  if (v10)
  {
    v12 = sub_2676C900C();
  }

  else
  {
    v13 = v11;
    v14 = sub_2676C8FCC();

    swift_willThrow();
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_26768C328(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26768C3B8;

  return sub_26768BD20();
}

uint64_t sub_26768C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 24);
  v12 = *v5;

  if (!v4)
  {
    v13 = *(v10 + 16);
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
    v13[3] = a4;
  }

  v14 = *(v12 + 8);

  return v14();
}

uint64_t sub_26768C4E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26768C4FC(a1, a2);
  }

  return a1;
}

uint64_t sub_26768C4FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26768C554()
{
  result = qword_2801CBBD0;
  if (!qword_2801CBBD0)
  {
    type metadata accessor for DocumentAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBBD0);
  }

  return result;
}

uint64_t type metadata accessor for ResolveState()
{
  result = qword_2801CD8E0;
  if (!qword_2801CD8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26768C620()
{
  sub_267621A74();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_26768C68C@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8F8, &qword_2676D3C98);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD900, &unk_2676D3CA0);
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v23 - v17;
  sub_2676C980C();
  v19 = sub_2676CB0DC();
  sub_26768D088(&qword_2801CD8C8, MEMORY[0x277D5CA28]);
  sub_2676C9BCC();
  OUTLINED_FUNCTION_1_28();
  v21 = sub_2676148C4(v20, &qword_2801CD8F8, &qword_2676D3C98);
  sub_2676C953C();
  (*(v6 + 8))(v10, v3);
  v23[1] = v3;
  v23[2] = v19;
  v23[3] = v21;
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  sub_2676C933C();
  return (*(v14 + 8))(v18, v11);
}

uint64_t sub_26768C920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - v6;
  v8 = sub_2676CB0DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  sub_26768CFB0(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26768D020(v7);
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v19 = sub_2676CBE4C();
    __swift_project_value_buffer(v19, qword_2801CDC90);
    v20 = sub_2676CBE2C();
    v21 = sub_2676CC23C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2675D4000, v20, v21, "#ResolveState state is not set, returning .draft", v22, 2u);
      MEMORY[0x26D5FEA80](v22, -1, -1);
    }

    (*(v9 + 104))(v13, *MEMORY[0x277D5CA08], v8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD910, &qword_2676D3CB0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    (*(v9 + 32))(v26 + *(*v26 + 88), v13, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD918, &qword_2676D3CB8);
    swift_storeEnumTagMultiPayload();
    a2[3] = v23;
    result = sub_2676148C4(&qword_2801CD920, &qword_2801CD910, &qword_2676D3CB0);
    a2[4] = result;
    *a2 = v26;
  }

  else
  {
    v28 = *(v9 + 32);
    v55 = v9 + 32;
    v56 = v13;
    v54 = v28;
    v28(v18, v7, v8);
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v29 = sub_2676CBE4C();
    __swift_project_value_buffer(v29, qword_2801CDC90);
    v30 = *(v9 + 16);
    v30(v16, v18, v8);
    v31 = sub_2676CBE2C();
    v32 = sub_2676CC23C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = a2;
      v34 = v33;
      v49 = swift_slowAlloc();
      v57 = v49;
      *v34 = 136315138;
      v35 = sub_2676CB0CC();
      v50 = v30;
      v37 = v36;
      v38 = *(v9 + 8);
      v52 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v53 = v38;
      v38(v16, v8);
      v39 = sub_2676B0B84(v35, v37, &v57);
      v30 = v50;

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2675D4000, v31, v32, "#ResolveState returning state: %s", v34, 0xCu);
      v40 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x26D5FEA80](v40, -1, -1);
      v41 = v34;
      a2 = v51;
      MEMORY[0x26D5FEA80](v41, -1, -1);
    }

    else
    {

      v42 = *(v9 + 8);
      v52 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v53 = v42;
      v42(v16, v8);
    }

    v43 = v56;
    v30(v56, v18, v8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD910, &qword_2676D3CB0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    v47 = swift_allocObject();
    v54(v47 + *(*v47 + 88), v43, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD918, &qword_2676D3CB8);
    swift_storeEnumTagMultiPayload();
    a2[3] = v44;
    a2[4] = sub_2676148C4(&qword_2801CD920, &qword_2801CD910, &qword_2676D3CB0);
    *a2 = v47;
    return v53(v18, v8);
  }

  return result;
}

uint64_t sub_26768CEE0(uint64_t a1)
{
  v2 = sub_26768D088(&qword_2801CD8C0, type metadata accessor for ResolveState);

  return MEMORY[0x2821BA568](a1, v2);
}

uint64_t sub_26768CFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26768D020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26768D088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26768D0E8()
{
  v0 = sub_2676CBF6C();
  v2 = v1;
  if (v0 == sub_2676CBF6C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2676CC59C();
  }

  return v5 & 1;
}

uint64_t sub_26768D16C(char a1, char a2)
{
  if (a1)
  {
    v2 = 6647407;
  }

  else
  {
    v2 = 7105633;
  }

  if (a2)
  {
    v3 = 6647407;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2676CC59C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26768D1DC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 2036625250;
  }

  else
  {
    v3 = 0x7463656A627573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 2036625250;
  }

  else
  {
    v5 = 0x7463656A627573;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2676CC59C();
  }

  return v8 & 1;
}

uint64_t sub_26768D274(unsigned __int8 a1, char a2)
{
  v2 = 0x7463656A627573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x7463656A627573;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 2036625250;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7265646E6573;
      break;
    case 3:
      v5 = 0x6E65697069636572;
      v3 = 0xEA00000000007374;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 2036625250;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7265646E6573;
      break;
    case 3:
      v2 = 0x6E65697069636572;
      v6 = 0xEA00000000007374;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1701869940;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2676CC59C();
  }

  return v8 & 1;
}

uint64_t sub_26768D3D0()
{
  sub_2676CB87C();
  sub_26768F95C(&qword_2801CD9D8, MEMORY[0x277D5C6E8]);
  sub_2676CC0CC();
  sub_2676CC0CC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2676CC59C();
  }

  return v1 & 1;
}

uint64_t sub_26768D4B0(char a1)
{
  sub_2676CC64C();
  sub_26761C130(a1);
  OUTLINED_FUNCTION_19_7();

  return sub_2676CC67C();
}

uint64_t sub_26768D518()
{
  sub_2676CBFFC();
}

uint64_t sub_26768D560()
{
  sub_2676CBFFC();
}

uint64_t sub_26768D5C4()
{
  sub_2676CBFFC();
}

uint64_t sub_26768D684(uint64_t a1, char a2)
{
  sub_2676CC64C();
  sub_26761C130(a2);
  OUTLINED_FUNCTION_19_7();

  return sub_2676CC67C();
}

uint64_t sub_26768D6D0()
{
  sub_2676CC64C();
  sub_2676CBFFC();

  return sub_2676CC67C();
}

uint64_t sub_26768D748()
{
  sub_2676CC64C();
  sub_2676CBFFC();

  return sub_2676CC67C();
}

uint64_t sub_26768D7AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  (*(v3 + 16))(&v10 - v7, v0 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__stringValue, v1);
  sub_2676C9A5C();
  return (*(v3 + 8))(v8, v1);
}

uint64_t sub_26768D8C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  v11 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v10, v1 + v11, v3);
  sub_2676C980C();
  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_26768D9D0@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan_payloadType);
  sub_2676CBA1C();
  sub_26768F95C(&qword_2801CC670, MEMORY[0x277D5C808]);
  sub_2676C98BC();
  swift_getKeyPath();
  sub_26768F95C(&qword_2801CBF68, MEMORY[0x277D5C8D8]);
  sub_2676C988C();

  (*(v12 + 8))(v17, v10);
  swift_getKeyPath();
  sub_2676C989C();

  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_26768DC2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__to;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  sub_2676C981C();
  v12 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__cc;
  sub_2676C981C();
  v13 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__bcc;
  sub_2676C981C();
  *(v5 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan_payloadType) = a1 & 1;
  v14 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__stringValue;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6(v15);
  (*(v16 + 32))(v5 + v14, a2);
  OUTLINED_FUNCTION_16_13();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6(v17);
  v19 = *(v18 + 40);
  v19(v5 + v11, a3, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13();
  v19(v5 + v12, a4, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13();
  v19(v5 + v13, a5, v17);
  swift_endAccess();
  return v5;
}

uint64_t sub_26768DDE0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD998, &qword_2676D3E38);
  OUTLINED_FUNCTION_3(v26);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_26768D7AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  sub_267689048();
  sub_2676C9F4C();
  OUTLINED_FUNCTION_1_26();
  v21 = sub_2676148C4(v20, &qword_2801CD990, &qword_2676D3E30);

  v22 = MEMORY[0x277D837D0];
  sub_2676C956C();

  (*(v7 + 8))(v12, v5);
  v28 = v5;
  v29 = v22;
  v30 = v21;
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_2676C933C();
  return (*(v14 + 8))(v19, v23);
}

uint64_t sub_26768E050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2676CB48C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_26768D7AC();
  sub_26768D9D0(v9);
  v12 = type metadata accessor for PromptForStringProducer(0);
  v29[3] = v12;
  v29[4] = sub_26768F95C(&qword_2801CD9B0, type metadata accessor for PromptForStringProducer);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v14 = boxed_opaque_existential_1 + v12[6];
  sub_26768D8A0();
  v15 = boxed_opaque_existential_1 + v12[7];
  sub_26768D8AC();
  v16 = boxed_opaque_existential_1 + v12[8];
  sub_26768D8B8();
  v17 = *(a1 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan_payloadType);
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  *boxed_opaque_existential_1 = sub_2676CB42C();
  *(boxed_opaque_existential_1 + 8) = 0;
  *(boxed_opaque_existential_1 + v12[9]) = v17;
  v18 = sub_2676C9B9C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2676C9B8C();
  v28[3] = v18;
  v28[4] = MEMORY[0x277D5BD58];
  v28[0] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9B8, &qword_2676D3E48);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v28[0] = sub_2676C99DC();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9C0, &qword_2676D3E50);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD9C8, &qword_2676D3E58);
  v26 = sub_2676148C4(&qword_2801CD9D0, &qword_2801CD9B8, &qword_2676D3E48);
  v29[0] = v22;
  v29[1] = v25;
  v29[2] = v26;
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2676C93CC();
}

void sub_26768E378(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v3;
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    v9[0] = *a1;
    v9[1] = v7;
    sub_26768E3E4(v9, v8);
    v3 = v8[0];
    v6 = v8[1];
  }

  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
}

void sub_26768E3E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v5 = sub_2676CBE4C();
  __swift_project_value_buffer(v5, qword_2801CDC90);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2675D4000, v6, v7, "#ResolveString doing potentially fatal unwrap", v8, 2u);
    MEMORY[0x26D5FEA80](v8, -1, -1);
  }

  if (v3)
  {
    *a2 = v4;
    a2[1] = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26768E4EC()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__stringValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__to;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v5);
  v7(v0 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__cc, v5);
  v7(v0 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__bcc, v5);
  return v0;
}

void sub_26768E608()
{
  sub_26768E734(319, &qword_2801CD958, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5BC20]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26768E734(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26768E734(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26768E7BC()
{
  type metadata accessor for ResolveStringPlan(0);

  return sub_2676C950C();
}

uint64_t sub_26768E80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

uint64_t sub_26768E88C()
{
  sub_26768E4EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for ReplyOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PayloadType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26768EAB4()
{
  v0 = sub_2676CC50C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26768EB08(char a1)
{
  if (a1)
  {
    return 2036625250;
  }

  else
  {
    return 0x7463656A627573;
  }
}

uint64_t sub_26768EB5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26768EAB4();
  *a2 = result;
  return result;
}

uint64_t sub_26768EB8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26768EB08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26768EBBC()
{
  result = qword_2801CD980;
  if (!qword_2801CD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD980);
  }

  return result;
}

uint64_t sub_26768EC74(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v2[5] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C90FC();
  v2[6] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v2[7] = v7;
  v9 = *(v8 + 64);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v2[9] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v13);
  v15 = *(v14 + 64);
  v2[10] = OUTLINED_FUNCTION_2_0();
  v16 = sub_2676C99CC();
  v2[11] = v16;
  OUTLINED_FUNCTION_1_0(v16);
  v2[12] = v17;
  v19 = *(v18 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v20 = sub_2676C9DDC();
  v2[15] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v2[16] = v21;
  v23 = *(v22 + 64);
  v2[17] = OUTLINED_FUNCTION_2_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  v2[18] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_26768EE74, 0, 0);
}

uint64_t sub_26768EE74()
{
  v1 = v0[4];
  v2 = type metadata accessor for PromptForStringProducer(0);
  v3 = v1 + v2[6];
  v4 = sub_2676A21D8();
  v5 = v1 + v2[7];
  v6 = sub_2676A21D8();
  v7 = v1 + v2[8];
  v8 = sub_2676A21D8();
  v9 = *(v4 + 16);
  v10 = *(v6 + 16);

  v12 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v8 + 16);

  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v15 >= 2)
  {

LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  v16 = v0[18];
  sub_267698E44(v4);

  v17 = sub_2676C8C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v19 = v0[18];
  if (EnumTagSinglePayload == 1)
  {
    sub_26762C73C(v0[18]);
    goto LABEL_7;
  }

  v20 = sub_267626550();
  (*(*(v17 - 8) + 8))(v19, v17);
LABEL_9:
  v0[19] = v20;
  v21 = v0[4];
  v0[2] = MEMORY[0x277D84F90];
  v22 = *(v21 + v2[9]);
  v23 = *v21;
  v24 = *(v21 + 8);
  if (v22)
  {
    v25 = swift_task_alloc();
    v0[23] = v25;
    *v25 = v0;
    v26 = OUTLINED_FUNCTION_14_19(v25);

    return sub_267694488(v26, v27, v28);
  }

  else
  {
    v29 = swift_task_alloc();
    v0[20] = v29;
    *v29 = v0;
    v30 = OUTLINED_FUNCTION_14_19(v29);

    return sub_267694BA0(v30, v31, v32);
  }
}

uint64_t sub_26768F0B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 168) = v1;

  if (v1)
  {
    v8 = sub_26768F724;
  }

  else
  {
    *(v4 + 176) = a1;
    v8 = sub_26768F1D4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26768F1D4()
{
  MEMORY[0x26D5FDDA0]();
  v6 = *(v2 + 176);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2676CC11C();
  }

  OUTLINED_FUNCTION_1_29();
  v54 = *(v2 + 16);
  sub_2676C999C();
  v7 = OUTLINED_FUNCTION_7_24();
  v8(v7);
  OUTLINED_FUNCTION_3_25();
  sub_2676C9D6C();
  sub_26762D4C8(v1);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  OUTLINED_FUNCTION_21_10(v9, v10, v11, v12, v13, v14, v15, v16, v41, v44);
  sub_2676C9D9C();
  sub_2676C90EC();
  v17 = sub_2676C90DC();
  v25 = OUTLINED_FUNCTION_13_20(v17, v18, v19, v20, v21, v22, v23, v24, v42, v45, v47, v49);
  v26(v25);
  sub_2676C9D5C();
  sub_2676C9DAC();
  sub_2676C9DCC();
  v27 = (*(v5 + 8))(v3, v0);
  v35 = OUTLINED_FUNCTION_2_27(v27, v28, v29, v30, v31, v32, v33, v34, v43, v46, v48, v50, v51, v52, v1, v53);
  v36(v35);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v0);
  OUTLINED_FUNCTION_17_18();

  v37 = OUTLINED_FUNCTION_20_12();
  v38(v37);

  OUTLINED_FUNCTION_15_0();

  return v39();
}

uint64_t sub_26768F3EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 192) = v1;

  if (v1)
  {
    v8 = sub_26768F7E0;
  }

  else
  {
    *(v4 + 200) = a1;
    v8 = sub_26768F50C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26768F50C()
{
  MEMORY[0x26D5FDDA0]();
  v6 = *(v2 + 200);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2676CC11C();
  }

  OUTLINED_FUNCTION_1_29();
  v54 = *(v2 + 16);
  sub_2676C999C();
  v7 = OUTLINED_FUNCTION_7_24();
  v8(v7);
  OUTLINED_FUNCTION_3_25();
  sub_2676C9D6C();
  sub_26762D4C8(v1);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  OUTLINED_FUNCTION_21_10(v9, v10, v11, v12, v13, v14, v15, v16, v41, v44);
  sub_2676C9D9C();
  sub_2676C90EC();
  v17 = sub_2676C90DC();
  v25 = OUTLINED_FUNCTION_13_20(v17, v18, v19, v20, v21, v22, v23, v24, v42, v45, v47, v49);
  v26(v25);
  sub_2676C9D5C();
  sub_2676C9DAC();
  sub_2676C9DCC();
  v27 = (*(v5 + 8))(v3, v0);
  v35 = OUTLINED_FUNCTION_2_27(v27, v28, v29, v30, v31, v32, v33, v34, v43, v46, v48, v50, v51, v52, v1, v53);
  v36(v35);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v0);
  OUTLINED_FUNCTION_17_18();

  v37 = OUTLINED_FUNCTION_20_12();
  v38(v37);

  OUTLINED_FUNCTION_15_0();

  return v39();
}

uint64_t sub_26768F724()
{
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_11_26();

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_26768F7E0()
{
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_11_26();

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_26768F89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E34E4;

  return sub_26768EC74(a1);
}

uint64_t sub_26768F95C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26768F9CC()
{
  type metadata accessor for SendMailCATsSimple();
  if (v0 <= 0x3F)
  {
    sub_26768E734(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_29()
{
  v17 = v0[19];
  v18 = v0[18];
  v2 = v0[17];
  v14 = v0[16];
  v3 = v0[14];
  v15 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[9];
  v10 = v0[8];
  v11 = v0[7];
  v12 = v0[6];
  v13 = v0[5];
  v16 = v0[3];

  return sub_2676CC15C();
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 - 96) = 0;
  *(v16 - 128) = 0u;
  *(v16 - 112) = 0u;
  v17 = *(a16 + 16);
  return a14;
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return sub_2676C9D2C();
}

uint64_t OUTLINED_FUNCTION_11_26()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];
  v10 = v0[5];
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_18()
{

  return sub_2676C9AAC();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_2676CBFFC();
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_storeEnumTagSinglePayload(a10, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t sub_26768FCAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  (*(v3 + 16))(&v10 - v7, v0 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__stringValue, v1);
  sub_2676C9A5C();
  return (*(v3 + 8))(v8, v1);
}

uint64_t sub_26768FDC4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  v11 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v10, v1 + v11, v3);
  sub_2676C980C();
  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_26768FED0@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan_payloadType);
  sub_2676CBA1C();
  sub_267690CC0(&qword_2801CC670, MEMORY[0x277D5C808]);
  sub_2676C98BC();
  swift_getKeyPath();
  sub_267690CC0(&qword_2801CBF68, MEMORY[0x277D5C8D8]);
  sub_2676C988C();

  (*(v12 + 8))(v17, v10);
  swift_getKeyPath();
  sub_2676C989C();

  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_26769012C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__to;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  sub_2676C981C();
  v12 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__cc;
  sub_2676C981C();
  v13 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__bcc;
  sub_2676C981C();
  *(v5 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan_payloadType) = a1 & 1;
  v14 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__stringValue;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6(v15);
  (*(v16 + 32))(v5 + v14, a2);
  OUTLINED_FUNCTION_16_13();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6(v17);
  v19 = *(v18 + 40);
  v19(v5 + v11, a3, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13();
  v19(v5 + v12, a4, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13();
  v19(v5 + v13, a5, v17);
  swift_endAccess();
  return v5;
}

uint64_t sub_2676902E0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD998, &qword_2676D3E38);
  OUTLINED_FUNCTION_3(v26);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_26768FCAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  sub_267689048();
  sub_2676C9F4C();
  OUTLINED_FUNCTION_1_26();
  v21 = sub_2676148C4(v20, &qword_2801CD990, &qword_2676D3E30);

  v22 = MEMORY[0x277D837D0];
  sub_2676C956C();

  (*(v7 + 8))(v12, v5);
  v28 = v5;
  v29 = v22;
  v30 = v21;
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_2676C933C();
  return (*(v14 + 8))(v19, v23);
}

uint64_t sub_267690550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2676CB48C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_26768FCAC();
  sub_26768FED0(v9);
  v12 = type metadata accessor for PromptForStringSceneHostProducer(0);
  v29[3] = v12;
  v29[4] = sub_267690CC0(&qword_2801CDA48, type metadata accessor for PromptForStringSceneHostProducer);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v14 = boxed_opaque_existential_1 + v12[6];
  sub_26768FDA0();
  v15 = boxed_opaque_existential_1 + v12[7];
  sub_26768FDAC();
  v16 = boxed_opaque_existential_1 + v12[8];
  sub_26768FDB8();
  v17 = *(a1 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan_payloadType);
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  *boxed_opaque_existential_1 = sub_2676CB42C();
  *(boxed_opaque_existential_1 + 8) = 0;
  *(boxed_opaque_existential_1 + v12[9]) = v17;
  v18 = sub_2676C9B9C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2676C9B8C();
  v28[3] = v18;
  v28[4] = MEMORY[0x277D5BD58];
  v28[0] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9B8, &qword_2676D3E48);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v28[0] = sub_2676C99DC();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9C0, &qword_2676D3E50);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD9C8, &qword_2676D3E58);
  v26 = sub_2676148C4(&qword_2801CD9D0, &qword_2801CD9B8, &qword_2676D3E48);
  v29[0] = v22;
  v29[1] = v25;
  v29[2] = v26;
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2676C93CC();
}

uint64_t sub_267690878()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__stringValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__to;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v5);
  v7(v0 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__cc, v5);
  v7(v0 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__bcc, v5);
  return v0;
}

void sub_267690994()
{
  sub_26768E734(319, &qword_2801CD958, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5BC20]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26768E734(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_267690AE4()
{
  type metadata accessor for ResolveStringSceneHostPlan(0);

  return sub_2676C950C();
}

uint64_t sub_267690B34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

uint64_t sub_267690BB4()
{
  sub_267690878();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_267690CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267690D08(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v2[5] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C90FC();
  v2[6] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v2[7] = v7;
  v9 = *(v8 + 64);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v2[9] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v13);
  v15 = *(v14 + 64);
  v2[10] = OUTLINED_FUNCTION_2_0();
  v16 = sub_2676C99CC();
  v2[11] = v16;
  OUTLINED_FUNCTION_1_0(v16);
  v2[12] = v17;
  v19 = *(v18 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v20 = sub_2676C9DDC();
  v2[15] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v2[16] = v21;
  v23 = *(v22 + 64);
  v2[17] = OUTLINED_FUNCTION_2_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD8, &unk_2676CD9C0);
  OUTLINED_FUNCTION_4_1(v24);
  v26 = *(v25 + 64);
  v2[18] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_267690F08, 0, 0);
}

uint64_t sub_267690F08()
{
  v1 = v0[4];
  v2 = type metadata accessor for PromptForStringSceneHostProducer(0);
  v3 = v1 + v2[6];
  v4 = sub_2676A239C();
  v5 = v1 + v2[7];
  v6 = sub_2676A239C();
  v7 = v1 + v2[8];
  v8 = sub_2676A239C();
  v9 = *(v4 + 16);
  v10 = *(v6 + 16);

  v12 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v8 + 16);

  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v15 >= 2)
  {

LABEL_7:
    v20 = 0;
    goto LABEL_9;
  }

  v16 = v0[18];
  sub_267698E2C(v4);

  v17 = sub_2676CB14C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v19 = v0[18];
  if (EnumTagSinglePayload == 1)
  {
    sub_2676912CC(v0[18]);
    goto LABEL_7;
  }

  v20 = sub_2676262E8();
  (*(*(v17 - 8) + 8))(v19, v17);
LABEL_9:
  v0[19] = v20;
  v21 = v0[4];
  v0[2] = MEMORY[0x277D84F90];
  v22 = *(v21 + v2[9]);
  v23 = *v21;
  v24 = *(v21 + 8);
  if (v22)
  {
    v25 = swift_task_alloc();
    v0[23] = v25;
    *v25 = v0;
    v26 = OUTLINED_FUNCTION_14_19(v25);

    return sub_267694488(v26, v27, v28);
  }

  else
  {
    v29 = swift_task_alloc();
    v0[20] = v29;
    *v29 = v0;
    v30 = OUTLINED_FUNCTION_14_19(v29);

    return sub_267694BA0(v30, v31, v32);
  }
}

uint64_t sub_267691148(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E34E4;

  return sub_267690D08(a1);
}

void sub_267691208()
{
  type metadata accessor for SendMailCATsSimple();
  if (v0 <= 0x3F)
  {
    sub_26768E734(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2676912CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD8, &unk_2676CD9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267691338(uint64_t a1, uint64_t a2)
{
  if (sub_2676C996C())
  {
    return 1;
  }

  return MEMORY[0x2821BAB40](a1, a2);
}

uint64_t sub_267691398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDA78, &qword_2676D4138);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v24 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2676CA03C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v4, a1);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v17);
    (*(v18 + 32))(v21, v12, v17);
    v25 = sub_2676CA02C();
    MEMORY[0x28223BE20](v25);
    *(&v24 - 4) = a1;
    *(&v24 - 3) = a2;
    *(&v24 - 2) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDA80, &unk_2676D4140);
    sub_267691BF8();
    v22 = sub_2676CC0BC();

    (*(v18 + 8))(v21, v17);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
    sub_267691B70(v12);
    return sub_2676CC13C();
  }

  return v22;
}

id sub_26769166C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_dynamicCastUnknownClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2676916BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return MEMORY[0x2822009F8](sub_2676916E8, 0, 0);
}

uint64_t sub_2676916E8()
{
  v1 = v0[8];
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = xmmword_2676CD5C0;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D5BD50] + 4);
  v10 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v4 = v1;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_2676917EC;
  v6 = v0[14];
  v7 = v0[9];
  v8 = v0[7];

  return v10(v8, v2, v7);
}

uint64_t sub_2676917EC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_267691904, 0, 0);
}

uint64_t sub_267691904()
{
  sub_2676C9ECC();
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  LOBYTE(v2) = sub_267691338(v2, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((v2 & 1) == 0)
  {
    v3 = v0[7];
    v5 = v3[3];
    v4 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v5);
    v6 = sub_2675E5E30(0, &qword_2801CDA60, 0x277D479E8);
    v7 = sub_267691398(v5, v6, v4);
    if (sub_267630B8C(v7))
    {
      sub_267692C1C(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D5FE0E0](0, v7);
      }

      else
      {
        v8 = *(v7 + 32);
      }

      v9 = v8;
      v10 = v0[15];
      v12 = v0[12];
      v11 = v0[13];
      v14 = v0[10];
      v13 = v0[11];

      sub_2675E5E30(0, &qword_2801CDA68, 0x277D47A18);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2676CD5C0;
      *(v15 + 32) = sub_2675DDEA0(v14, v13);

      sub_267692C70(v15, v12, v11);
      result = sub_2676927E4(v9);
      v19 = result;
      if (!result)
      {
        __break(1u);
        return result;
      }

      MEMORY[0x26D5FDDA0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2676CC11C();
      }

      sub_2676CC15C();
      if (v19)
      {
        sub_2675E5E30(0, &qword_2801CDA70, 0x277D47140);
        v17 = sub_2676CC0EC();
      }

      else
      {
        v17 = 0;
      }

      [v9 setViews_];
    }

    else
    {
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_267691B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDA78, &qword_2676D4138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_267691BD8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_26769166C(a1, a2);
}

unint64_t sub_267691BF8()
{
  result = qword_2801CDA88;
  if (!qword_2801CDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDA80, &unk_2676D4140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDA88);
  }

  return result;
}

uint64_t ResponseFactory.makeResponseOutputWithEmailSnippet(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = OUTLINED_FUNCTION_13_5();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267691C8C()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v2 = swift_allocObject();
  v0[12] = v2;
  *(v2 + 16) = xmmword_2676CD5C0;
  *(v2 + 32) = v1;
  v3 = *MEMORY[0x277D5BD50];
  v4 = *(MEMORY[0x277D5BD50] + 4);
  OUTLINED_FUNCTION_2_28(MEMORY[0x277D5BD50]);
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[13] = v6;
  *v6 = v7;
  v6[1] = sub_267691D80;
  v8 = v0[11];
  v9 = v0[9];
  v10 = v0[7];

  return v12(v10, v2, v9);
}

uint64_t sub_267691D80()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267691E80()
{
  if (*(v0[10] + 16))
  {
    sub_2676C9ECC();
    v1 = OUTLINED_FUNCTION_4_29();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v1 & 1) == 0)
    {
      v2 = v0[7];
      v4 = v2[3];
      v3 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v4);
      v5 = sub_2675E5E30(0, &qword_2801CDA60, 0x277D479E8);
      v6 = sub_267691398(v4, v5, v3);
      if (sub_26762EC3C(v6))
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D5FE0E0](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            sub_2676CC11C();
LABEL_9:
            sub_2676CC15C();
            if (v13)
            {
              sub_2675E5E30(0, &qword_2801CDA70, 0x277D47140);
              v11 = sub_2676CC0EC();
            }

            else
            {
              v11 = 0;
            }

            [v3 setViews_];

            goto LABEL_14;
          }

          v7 = *(v6 + 32);
        }

        v3 = v7;
        v8 = v0[10];

        sub_2675E5E30(0, &unk_2801CDA90, 0x277D472E8);

        sub_267692F2C(v9);
        result = sub_2676927E4(v3);
        v13 = result;
        if (!result)
        {
          __break(1u);
          return result;
        }

        MEMORY[0x26D5FDDA0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_15_0();

  return v12();
}

uint64_t ResponseFactory.makeResponseOutputWithWidgetView(_:_:_:isSpearfish:hasNextWindow:searchTerm:)()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 201) = v5;
  *(v1 + 200) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 96) = v9;
  v10 = sub_2676C916C();
  *(v1 + 152) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267692124()
{
  if (*(*(v0 + 120) + 16) && (sub_2676C9ECC(), v1 = OUTLINED_FUNCTION_4_29(), __swift_destroy_boxed_opaque_existential_1((v0 + 16)), (v1 & 1) == 0))
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 104);
    *v13 = sub_26761C25C(*(v0 + 200), *(v0 + 201), *(v0 + 120));
    v13[1] = v16;
    v13[2] = v15;
    swift_storeEnumTagMultiPayload();
    *(v0 + 80) = v14;
    *(v0 + 88) = sub_267692854();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_2676928AC(v13, boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v19 = swift_allocObject();
    *(v0 + 168) = v19;
    *(v19 + 16) = xmmword_2676CD5C0;
    *(v19 + 32) = v17;
    v20 = *MEMORY[0x277D5BD38];
    v21 = *(MEMORY[0x277D5BD38] + 4);
    OUTLINED_FUNCTION_2_28(MEMORY[0x277D5BD38]);

    v22 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 176) = v23;
    *v23 = v24;
    v23[1] = sub_267692370;
    v25 = *(v0 + 144);
    v26 = *(v0 + 112);
    v27 = *(v0 + 96);

    return v28(v27, v0 + 56, v19, v26);
  }

  else
  {
    v2 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v3 = swift_allocObject();
    *(v0 + 184) = v3;
    *(v3 + 16) = xmmword_2676CD5C0;
    *(v3 + 32) = v2;
    v4 = *MEMORY[0x277D5BD50];
    v5 = *(MEMORY[0x277D5BD50] + 4);
    OUTLINED_FUNCTION_2_28(MEMORY[0x277D5BD50]);
    v6 = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 192) = v7;
    *v7 = v8;
    v7[1] = sub_2676924D8;
    v9 = *(v0 + 144);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return (v28)(v11, v3, v10);
  }
}

uint64_t sub_267692370()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267692478()
{
  OUTLINED_FUNCTION_3_0();
  sub_267692910(*(v0 + 160));
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_15_0();

  return v2();
}

uint64_t sub_2676924D8()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = *(v1 + 160);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_267692604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26761F624;

  return ResponseFactory.makeResponseOutputWithEmailSnippet(_:_:_:)(a1, a2, a3, a4);
}

uint64_t sub_2676926C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267605CFC;

  return ResponseFactory.makeResponseOutputWithWidgetView(_:_:_:isSpearfish:hasNextWindow:searchTerm:)();
}

unint64_t sub_2676927C0(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_2676927E4(void *a1)
{
  v1 = [a1 views];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2675E5E30(0, &qword_2801CDA70, 0x277D47140);
  v3 = sub_2676CC0FC();

  return v3;
}

unint64_t sub_267692854()
{
  result = qword_2801CBFF8;
  if (!qword_2801CBFF8)
  {
    sub_2676C916C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBFF8);
  }

  return result;
}

uint64_t sub_2676928AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C916C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267692910(uint64_t a1)
{
  v2 = sub_2676C916C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ResponseProviding.makeResponseOutputWithEmailSnippet(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v18 = (v13 + *v13);
  v14 = v13[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v6 + 16) = v15;
  *v15 = v16;
  v15[1] = sub_26761F624;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ResponseProviding.makeResponseOutputWithWidgetView(_:_:_:isSpearfish:hasNextWindow:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 16);
  v23 = (v18 + *v18);
  v19 = v18[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v10 + 16) = v20;
  *v20 = v21;
  v20[1] = sub_267605CFC;

  return v23(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_4_29()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);

  return sub_267691338(v2, v1);
}

id sub_267692C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_26762E900(a1, v6);
  sub_2675EA76C(a2, a3, v6, &selRef_setText_);

  return v6;
}

uint64_t MailMessagePrototype.idURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2676C8E3C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = sub_2676C8DDC();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_2();
  v19 = v18 - v17;
  sub_2676C8ABC();
  sub_2676C8DBC();
  sub_2675E69E4();
  v20 = sub_2676CC30C();
  (*(v14 + 8))(v19, v11);

  v21 = sub_2676052B4(v20);
  v23 = v22;

  if (v23)
  {
    sub_2676C8E2C();
    sub_2676C8E1C();
    MEMORY[0x26D5FAAC0](0x6567617373656DLL, 0xE700000000000000);
    MEMORY[0x26D5FDD00](v21, v23);

    MEMORY[0x26D5FAAD0](47, 0xE100000000000000);
    sub_2676C8DEC();
    return (*(v5 + 8))(v10, v2);
  }

  else
  {
    v25 = sub_2676C8FFC();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v25);
  }
}

id sub_267692F2C(uint64_t a1)
{
  v2 = sub_2676C8BFC();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v44 - v11;
  v13 = sub_2676C90FC();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_2();
  v21 = v20 - v19;
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2675DE4C4(v22);
  if (v23)
  {
  }

  else
  {
    sub_2676C90EC();
    v24 = sub_2676C90DC();
    v47 = v5;
    v25 = v12;
    v26 = v22;
    v27 = v2;
    v28 = v24;
    v30 = v29;
    (*(v16 + 8))(v21, v13);
    v31 = v28;
    v2 = v27;
    v22 = v26;
    v12 = v25;
    v5 = v47;
    sub_2675EA76C(v31, v30, v22, &selRef_setAceId_);
  }

  v32 = *(a1 + 16);
  if (v32)
  {
    v44[0] = v22;
    v48 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    v33 = sub_2675E5E30(0, &unk_2801CDAB0, 0x277D472E0);
    v35 = *(v5 + 16);
    v34 = v5 + 16;
    v46 = v35;
    v47 = v33;
    v36 = *(v34 + 64);
    OUTLINED_FUNCTION_2_12();
    v38 = (a1 + v37);
    v39 = *(v34 + 56);
    v44[1] = a1;
    v45 = v39;
    do
    {
      v40 = v46;
      v46(v12, v38, v2);
      v40(v10, v12, v2);
      sub_267693240(v10);
      (*(v34 - 8))(v12, v2);
      sub_2676CC44C();
      v41 = *(v48 + 16);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v38 += v45;
      --v32;
    }

    while (v32);

    v42 = v48;
    v22 = v44[0];
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v42, v22, &unk_2801CDAB0, 0x277D472E0, &selRef_setEmails_);
  return v22;
}

id sub_267693240(uint64_t a1)
{
  v147 = a1;
  v139 = sub_2676C8E9C();
  v1 = OUTLINED_FUNCTION_2_6(v139);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_2();
  v138 = v5 - v4;
  v150 = sub_2676C8EBC();
  v6 = OUTLINED_FUNCTION_3(v150);
  v137 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_2();
  v136 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v134 - v14;
  v16 = sub_2676C8C8C();
  v17 = OUTLINED_FUNCTION_3(v16);
  v148 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v143 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v142 = &v134 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v134 - v26;
  MEMORY[0x28223BE20](v25);
  v149 = &v134 - v28;
  v29 = sub_2676C90CC();
  v30 = OUTLINED_FUNCTION_3(v29);
  v145 = v31;
  v146 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_2();
  v144 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v134 - v38;
  v40 = sub_2676C8FFC();
  v41 = OUTLINED_FUNCTION_3(v40);
  v141 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_2();
  v140 = v46 - v45;
  v47 = sub_2676C90FC();
  v48 = OUTLINED_FUNCTION_3(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_2();
  v55 = v54 - v53;
  v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2675DE4C4(v56);
  if (v57)
  {
  }

  else
  {
    sub_2676C90EC();
    v58 = sub_2676C90DC();
    v135 = v15;
    v60 = v59;
    (*(v50 + 8))(v55, v47);
    v61 = v60;
    v15 = v135;
    sub_2675EA76C(v58, v61, v56, &selRef_setAceId_);
  }

  v62 = v147;
  MailMessagePrototype.idURL.getter(v39);
  v63 = v15;
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    sub_2675EB7EC(v39, &unk_2801CDAC0, &unk_2676CF3A0);
  }

  else
  {
    v64 = v140;
    v65 = v141;
    (*(v141 + 32))(v140, v39, v40);
    v66 = sub_2676C8FDC();
    [v56 setIdentifier_];

    (*(v65 + 8))(v64, v40);
  }

  v67 = v150;
  v68 = v144;
  sub_2676C8BDC();
  v69 = sub_2676C905C();
  (*(v145 + 8))(v68, v146);
  [v56 setDateSent_];

  v70 = v149;
  sub_2676C8B3C();
  v71 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
  v72 = sub_2676C8C1C();
  v74 = v148;
  if (v73)
  {
    sub_2676095B4(v72, v73, v71);
  }

  v75 = sub_2676C8C4C();
  sub_2676095A8(v75, v76, v71);
  v149 = *(v74 + 8);
  v150 = v74 + 8;
  (v149)(v70, v16);
  [v56 setFromEmail_];

  v77 = v63;
  sub_2676C8AFC();
  if (__swift_getEnumTagSinglePayload(v63, 1, v67))
  {
    sub_2675EB7EC(v63, &qword_2801CBFE0, &qword_2676D1070);
    v78 = 0;
  }

  else
  {
    v79 = v136;
    v80 = v137;
    (*(v137 + 16))(v136, v77, v67);
    sub_2675EB7EC(v77, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    (*(v80 + 8))(v79, v67);
    v74 = v148;
    v78 = sub_2676CBF3C();
  }

  [v56 setMessage_];

  v81 = sub_2676C8ADC();
  v82 = *(v81 + 16);
  v146 = v56;
  if (v82)
  {
    OUTLINED_FUNCTION_3_26();
    v83 = *(v74 + 16);
    v84 = *(v74 + 80);
    OUTLINED_FUNCTION_2_12();
    v145 = v81;
    v86 = v81 + v85;
    v87 = *(v74 + 72);
    do
    {
      v83(v27, v86, v16);
      v88 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
      v89 = sub_2676C8C1C();
      if (v90)
      {
        sub_2676095B4(v89, v90, v88);
      }

      v91 = sub_2676C8C4C();
      sub_2676095A8(v91, v92, v88);
      (v149)(v27, v16);
      sub_2676CC44C();
      v93 = *(v151 + 16);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v86 += v87;
      --v82;
    }

    while (v82);

    v94 = v151;
    v56 = v146;
    v62 = v147;
  }

  else
  {

    v94 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v94, v56, &unk_2801CDAD0, 0x277D47638, &selRef_setRecipientsBcc_);
  v95 = sub_2676C8A9C();
  v96 = *(v95 + 16);
  if (v96)
  {
    OUTLINED_FUNCTION_3_26();
    v97 = v148 + 16;
    v98 = *(v148 + 16);
    v99 = *(v148 + 80);
    OUTLINED_FUNCTION_2_12();
    v145 = v95;
    v101 = v95 + v100;
    v102 = *(v97 + 56);
    v103 = v142;
    do
    {
      v98(v103, v101, v16);
      v104 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
      v105 = sub_2676C8C1C();
      if (v106)
      {
        sub_2676095B4(v105, v106, v104);
      }

      v107 = sub_2676C8C4C();
      sub_2676095A8(v107, v108, v104);
      (v149)(v103, v16);
      sub_2676CC44C();
      v109 = *(v151 + 16);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v101 += v102;
      --v96;
    }

    while (v96);

    v110 = v151;
    v56 = v146;
    v62 = v147;
  }

  else
  {

    v110 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v110, v56, &unk_2801CDAD0, 0x277D47638, &selRef_setRecipientsCc_);
  v111 = sub_2676C8ACC();
  v112 = *(v111 + 16);
  v113 = v148;
  if (v112)
  {
    OUTLINED_FUNCTION_3_26();
    v116 = *(v113 + 16);
    v115 = v113 + 16;
    v114 = v116;
    v117 = *(v115 + 64);
    OUTLINED_FUNCTION_2_12();
    v148 = v111;
    v119 = v111 + v118;
    v120 = *(v115 + 56);
    v121 = v143;
    do
    {
      v114(v121, v119, v16);
      v122 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
      v123 = sub_2676C8C1C();
      if (v124)
      {
        sub_2676095B4(v123, v124, v122);
      }

      v125 = sub_2676C8C4C();
      sub_2676095A8(v125, v126, v122);
      (v149)(v121, v16);
      sub_2676CC44C();
      v127 = *(v151 + 16);
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v119 += v120;
      --v112;
    }

    while (v112);

    v128 = v151;
    v56 = v146;
    v62 = v147;
  }

  else
  {

    v128 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v128, v56, &unk_2801CDAD0, 0x277D47638, &selRef_setRecipientsTo_);
  sub_2676C8BAC();
  if (v129)
  {
    v130 = sub_2676CBF3C();
  }

  else
  {
    v130 = 0;
  }

  [v56 setSubject_];

  v131 = sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6(v131);
  (*(v132 + 8))(v62);
  return v56;
}

uint64_t OUTLINED_FUNCTION_3_26()
{
  *(v1 - 88) = v0;

  return sub_2676CC46C();
}

uint64_t type metadata accessor for SendMailCATsSimple()
{
  result = qword_2801CDAE0;
  if (!qword_2801CDAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267693D64()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 91) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 90) = v6;
  *(v1 + 89) = v7;
  *(v1 + 88) = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267693E18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 90);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_2676D15B0;
  *(v6 + 32) = 0x796C7065527369;
  *(v6 + 40) = 0xE700000000000000;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v5;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "isBodyChange");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  *(v6 + 96) = v4;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0xD00000000000001ALL;
  *(v6 + 136) = 0x80000002676D7CB0;
  *(v6 + 144) = v3;
  *(v6 + 168) = v7;
  *(v6 + 176) = 0x7463656A627573;
  *(v6 + 184) = 0xE700000000000000;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v8 = sub_2676CB3FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v8);
  v10 = *(v0 + 56);
  if (EnumTagSinglePayload == 1)
  {
    sub_2675ED6C0(*(v0 + 56), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v6 + 192) = 0u;
    *(v6 + 208) = 0u;
  }

  else
  {
    *(v6 + 216) = v8;
    __swift_allocate_boxed_opaque_existential_1((v6 + 192));
    OUTLINED_FUNCTION_14_2(v8);
    (*(v11 + 32))();
  }

  v12 = *(v0 + 48);
  v13 = *(v0 + 24);
  *(v6 + 224) = 2036625250;
  *(v6 + 232) = 0xE400000000000000;
  sub_2675ED65C(v13, v12, &qword_2801CBFD0, &qword_2676CDEA0);
  v14 = __swift_getEnumTagSinglePayload(v12, 1, v8);
  v15 = *(v0 + 48);
  if (v14 == 1)
  {
    sub_2675ED6C0(*(v0 + 48), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v6 + 240) = 0u;
    *(v6 + 256) = 0u;
  }

  else
  {
    *(v6 + 264) = v8;
    __swift_allocate_boxed_opaque_existential_1((v6 + 240));
    OUTLINED_FUNCTION_14_2(v8);
    (*(v16 + 32))();
  }

  v17 = *(v0 + 32);
  v18 = *(v0 + 91);
  *(v6 + 272) = 0xD000000000000015;
  *(v6 + 280) = 0x80000002676D7C70;
  *(v6 + 288) = v18;
  *(v6 + 312) = v7;
  *(v6 + 320) = 0x6552656C676E6973;
  *(v6 + 328) = 0xEF746E6569706963;
  v19 = 0;
  if (v17)
  {
    v19 = sub_2676CB36C();
  }

  else
  {
    *(v6 + 344) = 0;
    *(v6 + 352) = 0;
  }

  *(v6 + 336) = v17;
  *(v6 + 360) = v19;
  OUTLINED_FUNCTION_6_21(MEMORY[0x277D55C70]);
  v20 = swift_task_alloc();
  *(v0 + 72) = v20;
  *v20 = v0;
  v20[1] = sub_267694164;
  v21 = *(v0 + 40);
  OUTLINED_FUNCTION_10_18();

  return v23();
}

uint64_t sub_267694164()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = OUTLINED_FUNCTION_0_9();

    return v16(v15);
  }
}

uint64_t sub_2676942A4()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_267694318()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_27(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_267654A9C;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000018, 0x80000002676D7000, v3);
}

uint64_t sub_2676943D0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_27(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_267652B50;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000016, 0x80000002676D7020, v3);
}

uint64_t sub_267694488(char a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_2676944A4()
{
  OUTLINED_FUNCTION_12_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v2[4] = v3;
  OUTLINED_FUNCTION_4_30();
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = 0xE800000000000000;
  v6 = MEMORY[0x277D839B0];
  v4[3].n128_u8[0] = v1;
  v8 = OUTLINED_FUNCTION_0_27(v4, v6, v7);
  if (v0)
  {
    v8 = sub_2676CB36C();
  }

  else
  {
    v3[19] = 0;
    v3[20] = 0;
  }

  v3[18] = v0;
  v3[21] = v8;
  OUTLINED_FUNCTION_6_21(MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_2676945D8;
  v10 = v2[3];
  OUTLINED_FUNCTION_10_18();

  return v12();
}

uint64_t sub_2676945D8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_9_8();

    return v14(v13);
  }
}

uint64_t sub_267694708()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_267694768()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 65) = v3;
  *(v1 + 64) = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267694804()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 65);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_2676CF3B0;
  *(v5 + 32) = 0x646E657070417369;
  *(v5 + 40) = 0xE800000000000000;
  *(v5 + 48) = v4;
  OUTLINED_FUNCTION_4_30();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;
  *(v6 + 88) = v9;
  *(v6 + 96) = v3;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x6D614E7972657571;
  *(v6 + 136) = 0xE900000000000065;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v10 = sub_2676CB3FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);
  v12 = *(v0 + 32);
  if (EnumTagSinglePayload == 1)
  {
    sub_2675ED6C0(*(v0 + 32), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v10;
    __swift_allocate_boxed_opaque_existential_1((v5 + 144));
    OUTLINED_FUNCTION_14_2(v10);
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_9_27(MEMORY[0x277D55C70]);
  v18 = v14;
  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_267694A04;
  v16 = *(v0 + 24);

  return v18(0xD00000000000001CLL, 0x80000002676D7C90, v5);
}

uint64_t sub_267694A04()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_0_9();

    return v15(v14);
  }
}

uint64_t sub_267694B38()
{
  OUTLINED_FUNCTION_3_0();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_267694BA0(char a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_267694BBC()
{
  OUTLINED_FUNCTION_12_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  v2[4] = v3;
  OUTLINED_FUNCTION_4_30();
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = 0xE800000000000000;
  v6 = MEMORY[0x277D839B0];
  v4[3].n128_u8[0] = v1;
  v8 = OUTLINED_FUNCTION_0_27(v4, v6, v7);
  if (v0)
  {
    v8 = sub_2676CB36C();
  }

  else
  {
    v3[19] = 0;
    v3[20] = 0;
  }

  v3[18] = v0;
  v3[21] = v8;
  OUTLINED_FUNCTION_6_21(MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v2[5] = v9;
  *v9 = v2;
  v9[1] = sub_267694CF0;
  v10 = v2[3];
  OUTLINED_FUNCTION_10_18();

  return v12();
}

uint64_t sub_267694CF0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_9_8();

    return v14(v13);
  }
}

uint64_t sub_267694E20(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267694E74(a1, a2);
}

uint64_t sub_267694E74(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2675ED65C(a1, &v18 - v15, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2676CB40C();
  (*(v8 + 8))(a2, v2);
  sub_2675ED6C0(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v16;
}

uint64_t sub_267694FF0(uint64_t a1, uint64_t a2)
{
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_8_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2676CB41C();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t OUTLINED_FUNCTION_0_27@<X0>(__n128 *a1@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[4].n128_u64[1] = a2;
  a1[5].n128_u64[0] = v5;
  a1[5].n128_u64[1] = (v3 - 32) | 0x8000000000000000;
  a1[6].n128_u8[0] = v4;
  a1[7].n128_u64[1] = a2;
  a1[8].n128_u64[0] = 0x6552656C676E6973;
  a1[8].n128_u64[1] = 0xEF746E6569706963;
  return 0;
}

uint64_t OUTLINED_FUNCTION_6_21@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_9_27@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_12_16()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
}

uint64_t sub_2676951B4(uint64_t a1)
{
  v2 = sub_2676C9E6C();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = sub_2676CBE4C();
  __swift_project_value_buffer(v11, qword_2801CDC90);
  (*(v5 + 16))(v10, a1, v2);
  v12 = sub_2676CBE2C();
  v13 = sub_2676CC23C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_2676C9E4C();
    v18 = v17;
    (*(v5 + 8))(v10, v2);
    v19 = sub_2676B0B84(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2675D4000, v12, v13, "#SendMessageFlow accept(input: Input) returning .yes() for input %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  return sub_2676C974C();
}

uint64_t sub_2676953C0@<X0>(ValueMetadata *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2676C9E3C();
  v5 = OUTLINED_FUNCTION_3(v4);
  v222 = v6;
  v223 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v221 = (v10 - v9);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  v11 = OUTLINED_FUNCTION_3(v212);
  v210 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v197 = v15;
  MEMORY[0x28223BE20](v16);
  v211 = &v190 - v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070) - 8) + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v193 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  v22 = OUTLINED_FUNCTION_3(v21);
  v191 = v23;
  v192 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v190 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v29 = OUTLINED_FUNCTION_3(v28);
  v208 = v30;
  v209 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  v207 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB20, &unk_2676D4378);
  v36 = OUTLINED_FUNCTION_3(v35);
  v202 = v37;
  v203 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  v201 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  v43 = OUTLINED_FUNCTION_3(v42);
  v214 = v44;
  v215 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  v213 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v50 = OUTLINED_FUNCTION_3(v49);
  v205 = v51;
  v206 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9_1();
  v204 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  v57 = OUTLINED_FUNCTION_3(v56);
  v216 = v58;
  v217 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v61);
  v63 = &v190 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  v65 = OUTLINED_FUNCTION_3(v64);
  v219 = v66;
  v220 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4();
  v225 = v69;
  v71 = MEMORY[0x28223BE20](v70);
  v218 = &v190 - v72;
  MEMORY[0x28223BE20](v71);
  v224 = &v190 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB28, &qword_2676D4388);
  v75 = OUTLINED_FUNCTION_3(v74);
  v199 = v76;
  v200 = v75;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_9_1();
  v198 = v80;
  v81 = sub_2676C9BFC();
  v82 = OUTLINED_FUNCTION_3(v81);
  v194 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_3_2();
  v88 = v87 - v86;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB30, &unk_2676D4390);
  v90 = OUTLINED_FUNCTION_3(v89);
  v195 = v91;
  v196 = v90;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v94);
  v96 = &v190 - v95;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v97 = sub_2676CBE4C();
  __swift_project_value_buffer(v97, qword_2801CDC90);
  v98 = sub_2676CBE2C();
  v99 = sub_2676CC23C();
  v100 = os_log_type_enabled(v98, v99);
  v226 = v1;
  if (v100)
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_2675D4000, v98, v99, "#SendMessageFlow executing action", v101, 2u);
    v2 = v226;
    OUTLINED_FUNCTION_2_5();
  }

  swift_beginAccess();
  v102 = *(v2 + 16);
  if (!(v102 >> 62))
  {
    v222 = *(v2 + 16);
    v223 = a1;
    v110 = *(v102 + 24);
    v111 = *(v102 + 32);
    v112 = *(v102 + 40);
    v211 = *(v102 + 16);
    v212 = v111;
    sub_267697500(v102);
    v221 = v112;

    sub_2676C919C();
    v113 = sub_2676C918C();
    v114 = sub_2676CBE2C();
    v115 = sub_2676CC23C();
    v116 = os_log_type_enabled(v114, v115);
    if (v113)
    {
      if (v116)
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        OUTLINED_FUNCTION_44_0(&dword_2675D4000, v117, v118, "#SendMessageFlow pushing SendMailSceneHostPlan");
        OUTLINED_FUNCTION_2_5();
      }

      v119 = v226;
      sub_2675E5D38(v226 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider, &v227);
      v120 = OUTLINED_FUNCTION_9_28();
      v121(v120);
      sub_2676C979C();
      (*(v110 + 8))(v63, v113);
      v122 = *(v119 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
      sub_2675E5D38(v119 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride, v246);
      v123 = OUTLINED_FUNCTION_24_11();
      v242 = 0u;
      v243 = 0u;
      v244 = 0;
      OUTLINED_FUNCTION_7_13(v123);
      v124 = sub_2676C9B8C();
      v125 = type metadata accessor for SendMailSceneHostPlan();
      v126 = OUTLINED_FUNCTION_7_13(v125);
      sub_2676CBA1C();
      sub_267697538();

      sub_2676C97BC();
      *(v126 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
      sub_2675F95E4(v246, &v240, &qword_2801CC6A8, &unk_2676CF5F0);
      sub_2675E5D38(&v227, v239);
      sub_2675F95E4(v245, v238, &qword_2801CC6B0, &qword_2676CFC80);
      OUTLINED_FUNCTION_27_10();
      v235 = v123;
      v236 = &protocol witness table for ResponseFactory;
      v225 = v124;
      v234[0] = v124;
      sub_2676C981C();
      sub_2676C981C();
      sub_2676CB18C();
      sub_2676C981C();
      v127 = v126 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
      *v127 = 0u;
      *(v127 + 16) = 0u;
      *(v127 + 32) = 0;
      *(v126 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v122;
      swift_beginAccess();
      v128 = v122;
      sub_267614854(&v240, v127);
      swift_endAccess();
      sub_2675E5D38(v239, v126 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
      sub_2675F95E4(v238, v126 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675E5D38(v234, v126 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
      OUTLINED_FUNCTION_25_14();
      if (v232)
      {
        sub_2675EB7EC(v237, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v238, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v239);
        sub_2675EB7EC(&v240, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v234);
        sub_267614E14(&v231, v233);
        OUTLINED_FUNCTION_18_12();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(v237, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v238, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v239);
        sub_2675EB7EC(&v240, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v234);
        OUTLINED_FUNCTION_18_12();
        if (v159)
        {
          sub_2675EB7EC(&v231, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      sub_267614E14(v233, v126 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
      v160 = OUTLINED_FUNCTION_17_19();
      v161(v160, v224, v127);
      sub_2676A31F0(&off_2801CC6B8);
      if (v122)
      {
        v162 = v204;
        OUTLINED_FUNCTION_21_11();
        sub_26761F9A8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_27();
        v163 = v206;
        sub_2676C97EC();

        (*(v205 + 8))(v162, v163);
        v240 = v211;
        v241 = v122;
        OUTLINED_FUNCTION_8_24();
        (*(v214 + 8))(&qword_2676CFC80, &unk_2676CF600);
      }

      v164 = v221;
      if (v221)
      {
        v165 = v204;
        OUTLINED_FUNCTION_21_11();
        sub_26761F9A8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_27();
        v166 = v206;
        sub_2676C97EC();

        (*(v205 + 8))(v165, v166);
        v240 = v212;
        v241 = v164;
        OUTLINED_FUNCTION_8_24();

        v167 = OUTLINED_FUNCTION_19_8();
        v168(v167);
        sub_2675EB7EC(&v242, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v245, &qword_2801CC6B0, &qword_2676CFC80);
        sub_2675EB7EC(v246, &qword_2801CC6A8, &unk_2676CF5F0);
        off_2801CC6B8(v224, v127);
        __swift_destroy_boxed_opaque_existential_1(&v227);
      }

      else
      {

        sub_2675EB7EC(&v242, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v245, &qword_2801CC6B0, &qword_2676CFC80);
        sub_2675EB7EC(v246, &qword_2801CC6A8, &unk_2676CF5F0);
        off_2801CC6B8(v224, v127);
        __swift_destroy_boxed_opaque_existential_1(&v227);
      }

      v227 = v126;
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6D8, &qword_2676CF618);
      OUTLINED_FUNCTION_7_13(v182);
      v227 = sub_2676C94CC();
      OUTLINED_FUNCTION_4_31(&qword_2801CC6E8);

      v183 = v198;
      OUTLINED_FUNCTION_23_11();

      v184 = v200;
      v247 = OUTLINED_FUNCTION_3_27();
      __swift_allocate_boxed_opaque_existential_1(v246);
      v185 = v199;
      OUTLINED_FUNCTION_16_14();
      v186();
      sub_2676C960C();
      __swift_destroy_boxed_opaque_existential_1(v246);
      OUTLINED_FUNCTION_10_19();
      sub_2676C961C();
    }

    else
    {
      if (v116)
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        OUTLINED_FUNCTION_44_0(&dword_2675D4000, v137, v138, "#SendMessageFlow pushing SendMailPlan");
        OUTLINED_FUNCTION_2_5();
      }

      v139 = v226;
      sub_2675E5D38(v226 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider, &v227);
      v140 = OUTLINED_FUNCTION_9_28();
      v141(v140);
      sub_2676C979C();
      (*(v110 + 8))(v63, v113);
      v142 = *(v139 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
      sub_2675E5D38(v139 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride, v246);
      v143 = OUTLINED_FUNCTION_24_11();
      v242 = 0u;
      v243 = 0u;
      v244 = 0;
      OUTLINED_FUNCTION_7_13(v143);
      v144 = sub_2676C9B8C();
      v145 = type metadata accessor for SendMailPlan();
      v146 = OUTLINED_FUNCTION_7_13(v145);
      sub_2676CBA1C();
      sub_267697538();

      sub_2676C97BC();
      *(v146 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
      sub_2675F95E4(v246, &v240, &qword_2801CC6A8, &unk_2676CF5F0);
      sub_2675E5D38(&v227, v239);
      sub_2675F95E4(v245, v238, &qword_2801CC6B0, &qword_2676CFC80);
      OUTLINED_FUNCTION_27_10();
      v235 = v143;
      v236 = &protocol witness table for ResponseFactory;
      v224 = v144;
      v234[0] = v144;
      sub_2676C8D8C();
      sub_2676C981C();
      sub_2676CB0DC();
      sub_2676C981C();
      sub_2676C981C();
      sub_2676C981C();
      v147 = v146 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
      *v147 = 0u;
      *(v147 + 16) = 0u;
      *(v147 + 32) = 0;
      *(v146 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v142;
      swift_beginAccess();
      v148 = v142;
      sub_267614854(&v240, v147);
      swift_endAccess();
      sub_2675E5D38(v239, v146 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
      sub_2675F95E4(v238, v146 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675E5D38(v234, v146 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
      OUTLINED_FUNCTION_25_14();
      if (v232)
      {
        sub_2675EB7EC(v237, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v238, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v239);
        sub_2675EB7EC(&v240, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v234);
        sub_267614E14(&v231, v233);
        OUTLINED_FUNCTION_18_12();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(v237, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v238, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v239);
        sub_2675EB7EC(&v240, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v234);
        OUTLINED_FUNCTION_18_12();
        if (v169)
        {
          sub_2675EB7EC(&v231, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      sub_267614E14(v233, v146 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
      v170 = OUTLINED_FUNCTION_17_19();
      v171(v170, v225, &qword_2801CC6B0);
      sub_2676994B8(&off_2801CC6B8);
      if (v142)
      {
        v172 = v207;
        OUTLINED_FUNCTION_21_11();
        sub_26761D288();
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_27();
        v173 = v209;
        sub_2676C97EC();

        (*(v208 + 8))(v172, v173);
        v240 = v211;
        v241 = v142;
        OUTLINED_FUNCTION_8_24();
        v174 = OUTLINED_FUNCTION_19_8();
        v175(v174);
      }

      if (v221)
      {
        v176 = v207;
        OUTLINED_FUNCTION_21_11();
        sub_26761D288();
        swift_getKeyPath();
        v177 = v190;
        v178 = v209;
        sub_2676C97EC();

        (*(v208 + 8))(v176, v178);
        v179 = v193;
        sub_2676C8EAC();
        v180 = sub_2676C8EBC();
        __swift_storeEnumTagSinglePayload(v179, 0, 1, v180);
        v181 = v192;
        sub_2676C984C();

        sub_2675EB7EC(v179, &qword_2801CBFE0, &qword_2676D1070);
        (*(v191 + 8))(v177, v181);
      }

      else
      {
      }

      sub_2675EB7EC(&v242, &off_2801CC6B8, &unk_2676CF600);
      sub_2675EB7EC(v245, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675EB7EC(v246, &qword_2801CC6A8, &unk_2676CF5F0);
      MEMORY[0](v225, &qword_2801CC6B0);
      __swift_destroy_boxed_opaque_existential_1(&v227);
      v227 = v146;
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C0, &qword_2676D43A0);
      OUTLINED_FUNCTION_7_13(v187);
      v227 = sub_2676C94CC();
      OUTLINED_FUNCTION_4_31(&qword_2801CC6D0);

      v183 = v201;
      OUTLINED_FUNCTION_23_11();

      v184 = v203;
      v247 = OUTLINED_FUNCTION_3_27();
      __swift_allocate_boxed_opaque_existential_1(v246);
      v185 = v202;
      OUTLINED_FUNCTION_16_14();
      v188();
      sub_2676C960C();
      __swift_destroy_boxed_opaque_existential_1(v246);
      OUTLINED_FUNCTION_10_19();
      sub_2676C961C();
    }

    __swift_destroy_boxed_opaque_existential_1(&v227);
    (*(v185 + 8))(v183, v184);
    sub_2676C961C();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    __swift_destroy_boxed_opaque_existential_1(&v242);
    OUTLINED_FUNCTION_28_5();
    v109 = v222;
    goto LABEL_39;
  }

  if (v102 >> 62 == 1)
  {
    v103 = *((v102 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v104 = *((v102 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_267697500(*(v2 + 16));

    v105 = v221;
    sub_2676C9E2C();
    v106 = v223;
    v229 = v223;
    OpaqueTypeConformance2 = MEMORY[0x277D5C0F0];
    __swift_allocate_boxed_opaque_existential_1(&v227);
    v107 = v222;
    OUTLINED_FUNCTION_16_14();
    v108();
    OUTLINED_FUNCTION_10_19();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    __swift_destroy_boxed_opaque_existential_1(v246);
    (*(v107 + 8))(v105, v106);
    v109 = v102;
LABEL_39:
    sub_26769751C(v109);
    goto LABEL_40;
  }

  if (v102 == 0x8000000000000000)
  {
    sub_2675E5D38(v2 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver, &v228);
    LOBYTE(v227) = 0;
    (*(v194 + 104))(v88, *MEMORY[0x277D5BDF0], v81);
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB38, &unk_2676D4470);
    OUTLINED_FUNCTION_7_13(v149);
    sub_2676975AC();
    v227 = sub_2676C9F5C();

    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB18, &qword_2676D4370);
    v151 = sub_2676148C4(&qword_2801CDB48, &qword_2801CDB38, &unk_2676D4470);
    sub_2676C942C();

    v152 = v196;
    v229 = v196;
    v246[0] = v149;
    v246[1] = v150;
    v246[2] = v151;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v227);
    v153 = v195;
    OUTLINED_FUNCTION_16_14();
    v154();
    OUTLINED_FUNCTION_10_19();
    sub_2676C960C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    OUTLINED_FUNCTION_28_5();
    (*(v153 + 8))(v96, v152);
  }

  else if (v102 == 0x8000000000000008)
  {
    v129 = v197;
    sub_2676C9F8C();
    v229 = &type metadata for Cancelled;
    OpaqueTypeConformance2 = sub_26765170C();
    v130 = sub_2676C9EFC();
    OUTLINED_FUNCTION_7_13(v130);
    v131 = sub_2676C9F0C();
    v229 = v130;
    OpaqueTypeConformance2 = MEMORY[0x277D5C188];
    v227 = v131;
    v133 = v211;
    v132 = v212;
    sub_2676C9F6C();
    v134 = v210;
    v135 = *(v210 + 8);
    v135(v129, v132);
    __swift_destroy_boxed_opaque_existential_1(&v227);
    v229 = v132;
    OpaqueTypeConformance2 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
    v136 = __swift_allocate_boxed_opaque_existential_1(&v227);
    (*(v134 + 16))(v136, v133, v132);
    OUTLINED_FUNCTION_10_19();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    OUTLINED_FUNCTION_28_5();
    v135(v133, v132);
  }

  else
  {
    v155 = v211;
    sub_2676C9F8C();
    v156 = v212;
    v229 = v212;
    OpaqueTypeConformance2 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
    v157 = __swift_allocate_boxed_opaque_existential_1(&v227);
    v158 = v210;
    (*(v210 + 16))(v157, v155, v156);
    OUTLINED_FUNCTION_10_19();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    OUTLINED_FUNCTION_28_5();
    (*(v158 + 8))(v155, v156);
  }

LABEL_40:
  sub_2676C961C();
  return __swift_destroy_boxed_opaque_existential_1(&v227);
}

uint64_t sub_267696CE0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  swift_beginAccess();

  sub_267696D80(v5);
  swift_endAccess();
}

unint64_t sub_267696D80(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = sub_2676CBE4C();
  __swift_project_value_buffer(v5, qword_2801CDC90);
  sub_267697500(v4);
  sub_267697500(a1);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  sub_26769751C(v4);
  sub_26769751C(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    sub_267697500(v4);
    v9 = sub_267696FB8(v4);
    v11 = v10;
    sub_26769751C(v4);
    v12 = sub_2676B0B84(v9, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_267696FB8(a1);
    v15 = sub_2676B0B84(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2675D4000, v6, v7, "#SendMessageFlow change state from: %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
    sub_26769751C(v4);
  }

  else
  {

    sub_26769751C(v4);
  }

  *v2 = a1;

  return sub_267697500(a1);
}