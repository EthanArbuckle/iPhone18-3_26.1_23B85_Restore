unint64_t sub_1C7448B98()
{
  result = qword_1EC21BEE8;
  if (!qword_1EC21BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BEE8);
  }

  return result;
}

unint64_t sub_1C7448BEC()
{
  result = qword_1EC21BEF0;
  if (!qword_1EC21BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BEF0);
  }

  return result;
}

void AjaxLLM.complete(prompt:samplingParameters:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v40 = v4;
  v41 = v5;
  v39 = v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEF8);
  OUTLINED_FUNCTION_3_0();
  v36 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEE0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1C754D70C();
  OUTLINED_FUNCTION_3_0();
  v35 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[4];
  v19 = *(v3 + 40);
  v20 = *(v3 + 24);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v3[2];
  }

  if (v3[7])
  {
    v22 = v0;
    v23 = *v3;
    v24 = *(v3 + 8);
  }

  else
  {
    v34 = v1;
    v22 = v0;
    v25 = sub_1C754FEEC();
    v26 = sub_1C755117C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "Temperature = 0.0 and topP = 1.0 for Pegasus determinism.", v27, 2u);
      MEMORY[0x1CCA5F8E0](v27, -1, -1);
    }

    v23 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0x3FF0000000000000;
  }

  v59 = v24;
  v58 = v19;
  v57 = 1;
  v56 = 1;
  v55 = 1;
  *&v42 = 0;
  BYTE8(v42) = 1;
  v43 = v21;
  v44 = v20 & 1;
  v45 = v23;
  v46 = v24;
  v47 = v18;
  v48 = v19;
  v49 = 0;
  v50 = 1;
  v51 = 0;
  v52 = 1;
  v53 = 0;
  v54 = 1;
  v28 = v22;
  sub_1C7447538(v40, v41, &v42, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C6FB5FC8(v12, &qword_1EC21BEE0);
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v29 = 2;
    *(v29 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v30 = v35;
    v31 = (*(v35 + 32))(v17, v12, v13);
    v32 = MEMORY[0x1EEE9AC00](v31);
    *(&v34 - 2) = v28;
    *(&v34 - 1) = v17;
    (*(v36 + 104))(v38, *MEMORY[0x1E69E8790], v37, v32);
    type metadata accessor for LLMResponse(0);
    v33 = v39;
    sub_1C7550F0C();
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    (*(v30 + 8))(v17, v13);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7449054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  v23 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = sub_1C754D70C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_session);
  (*(v9 + 16))(v11, v24, v8);
  (*(v5 + 16))(v7, v25, v4);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v16;
  (*(v9 + 32))(&v19[v17], v11, v8);
  (*(v5 + 32))(&v19[v18], v7, v23);
  v20 = v16;
  sub_1C6FEB80C(0, 0, v14, &unk_1C758BAE0, v19);
}

uint64_t sub_1C7449304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF58);
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[28] = v9;
  *v9 = v6;
  v9[1] = sub_1C7449414;

  return MEMORY[0x1EEDC6260](a5, 0);
}

uint64_t sub_1C7449414()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  v2[29] = v3;
  v2[30] = v4;
  v2[31] = v5;
  v2[32] = v0;

  if (v0)
  {
    v6 = sub_1C7449900;
  }

  else
  {
    v6 = sub_1C7449528;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C7449528()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[31];
  if (!v1)
  {
    v8 = v0[29];
    v6 = v0[30];
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_17_76(v11, 2);
LABEL_7:

LABEL_10:
    v13 = v8;
    v14 = v6;
LABEL_11:
    sub_1C6FC1640(v13, v14);
    v0[22] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
    sub_1C7550EBC();
    goto LABEL_12;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v3 statusCode];
  switch(v5)
  {
    case 302:
      goto LABEL_5;
    case 429:
      v6 = v0[30];
      v7 = v0[31];
      v8 = v0[29];
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      v9 = swift_allocError();
      *v12 = 1;
      *(v12 + 8) = 1;
      goto LABEL_9;
    case 401:
LABEL_5:
      v6 = v0[30];
      v7 = v0[31];
      v8 = v0[29];
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      v9 = swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 1;
LABEL_9:
      swift_willThrow();

      goto LABEL_10;
  }

  if (v5 >= 300)
  {
    v6 = v0[30];
    v2 = v0[31];
    v8 = v0[29];
    v20 = [v3 statusCode];
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    *v21 = v20;
    *(v21 + 8) = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v16 = v0[32];
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C744A218();
  OUTLINED_FUNCTION_25_45();
  if (v16)
  {
    v9 = v16;
    v17 = v0[30];
    v18 = v0[31];
    v19 = v0[29];

    v13 = v19;
    v14 = v17;
    goto LABEL_11;
  }

  memcpy(v0 + 11, v0 + 2, 0x48uLL);
  v22 = v0[18];
  if (!v22 || !*(v22 + 16))
  {
    v30 = v0[30];
    v29 = v0[31];
    v31 = v0[29];
    sub_1C744A26C((v0 + 11));
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_17_76(v32, 3);

    v13 = v31;
    v14 = v30;
    goto LABEL_11;
  }

  v23 = v0[31];
  sub_1C75504FC();

  if (!*(v22 + 16))
  {
    __break(1u);
    return;
  }

  v24 = v0[26];
  sub_1C75504FC();
  sub_1C744A26C((v0 + 11));

  while (1)
  {
    v25 = sub_1C755088C();
    if (!v26)
    {
      break;
    }

    v27 = v0[27];
    v28 = v0[25];
    v0[20] = v25;
    v0[21] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
    sub_1C7550EAC();
    (*(v24 + 8))(v27, v28);
  }

  v33 = v0[30];
  v34 = v0[31];
  v35 = v0[29];

  v0[23] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  sub_1C7550EBC();
  sub_1C6FC1640(v35, v33);

LABEL_12:

  OUTLINED_FUNCTION_43();

  v15();
}

uint64_t sub_1C7449900()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 176) = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t AjaxLLM.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t AjaxLLM.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t sub_1C7449A90()
{
  result = qword_1EC21BF00;
  if (!qword_1EC21BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF00);
  }

  return result;
}

uint64_t sub_1C7449AFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7449B1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
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

  *(result + 105) = v3;
  return result;
}

uint64_t type metadata accessor for AjaxLLM()
{
  result = qword_1EC21BF08;
  if (!qword_1EC21BF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7449BC8()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AjaxLLMOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7449DB0()
{
  result = qword_1EC21BF18;
  if (!qword_1EC21BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF18);
  }

  return result;
}

unint64_t sub_1C7449E08()
{
  result = qword_1EC21BF20;
  if (!qword_1EC21BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF20);
  }

  return result;
}

unint64_t sub_1C7449E60()
{
  result = qword_1EC21BF28;
  if (!qword_1EC21BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF28);
  }

  return result;
}

unint64_t sub_1C7449EB4()
{
  result = qword_1EC21BF38;
  if (!qword_1EC21BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF38);
  }

  return result;
}

uint64_t sub_1C7449F08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216650);
    result = OUTLINED_FUNCTION_109_1();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7449F64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00);
    result = OUTLINED_FUNCTION_109_1();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7449FC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1C754D70C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1C744A12C;

  return sub_1C7449304(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1C744A12C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

unint64_t sub_1C744A218()
{
  result = qword_1EC21BF60;
  if (!qword_1EC21BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF60);
  }

  return result;
}

unint64_t sub_1C744A29C()
{
  result = qword_1EC21BF68;
  if (!qword_1EC21BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF68);
  }

  return result;
}

uint64_t sub_1C744A320(void *a1)
{
  v1 = [a1 fallbackBase30bModelName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C744A384()
{
  result = qword_1EC21BF70;
  if (!qword_1EC21BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF70);
  }

  return result;
}

uint64_t sub_1C744A3E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C744A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C744A4C0()
{
  result = qword_1EC21BF78;
  if (!qword_1EC21BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF78);
  }

  return result;
}

unint64_t sub_1C744A518()
{
  result = qword_1EC21BF80;
  if (!qword_1EC21BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF80);
  }

  return result;
}

unint64_t sub_1C744A570()
{
  result = qword_1EC21BF88;
  if (!qword_1EC21BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF88);
  }

  return result;
}

unint64_t sub_1C744A5C4()
{
  result = qword_1EC21BF98;
  if (!qword_1EC21BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BF98);
  }

  return result;
}

unint64_t sub_1C744A618()
{
  result = qword_1EC21BFA0;
  if (!qword_1EC21BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BFA0);
  }

  return result;
}

unint64_t sub_1C744A66C()
{
  result = qword_1EC21BFB8;
  if (!qword_1EC21BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BFB8);
  }

  return result;
}

uint64_t sub_1C744A6C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C744A73C()
{
  result = qword_1EC21BFD0;
  if (!qword_1EC21BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BFD0);
  }

  return result;
}

unint64_t sub_1C744A7C8()
{
  result = qword_1EC21BFE0;
  if (!qword_1EC21BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BFE0);
  }

  return result;
}

unint64_t sub_1C744A81C()
{
  result = qword_1EC21BFE8;
  if (!qword_1EC21BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BFE8);
  }

  return result;
}

unint64_t sub_1C744A870()
{
  result = qword_1EC21BFF8;
  if (!qword_1EC21BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BFF8);
  }

  return result;
}

_BYTE *sub_1C744A8E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C744A9F4()
{
  result = qword_1EC21C008;
  if (!qword_1EC21C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C008);
  }

  return result;
}

unint64_t sub_1C744AA4C()
{
  result = qword_1EC21C010;
  if (!qword_1EC21C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C010);
  }

  return result;
}

unint64_t sub_1C744AAA4()
{
  result = qword_1EC21C018;
  if (!qword_1EC21C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C018);
  }

  return result;
}

unint64_t sub_1C744AAFC()
{
  result = qword_1EC21C020;
  if (!qword_1EC21C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C020);
  }

  return result;
}

unint64_t sub_1C744AB54()
{
  result = qword_1EC21C028;
  if (!qword_1EC21C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C028);
  }

  return result;
}

unint64_t sub_1C744ABAC()
{
  result = qword_1EC21C030;
  if (!qword_1EC21C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C030);
  }

  return result;
}

unint64_t sub_1C744AC04()
{
  result = qword_1EC21C038;
  if (!qword_1EC21C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C038);
  }

  return result;
}

unint64_t sub_1C744AC5C()
{
  result = qword_1EC21C040;
  if (!qword_1EC21C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C040);
  }

  return result;
}

unint64_t sub_1C744ACB4()
{
  result = qword_1EC21C048;
  if (!qword_1EC21C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C048);
  }

  return result;
}

unint64_t sub_1C744AD08()
{
  result = qword_1EC21C058;
  if (!qword_1EC21C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C058);
  }

  return result;
}

unint64_t sub_1C744AD5C()
{
  result = qword_1EC21C068;
  if (!qword_1EC21C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C068);
  }

  return result;
}

unint64_t sub_1C744ADB0()
{
  result = qword_1EC21C078;
  if (!qword_1EC21C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C078);
  }

  return result;
}

_BYTE *sub_1C744AE14(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C744AEC0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C744AFA0()
{
  result = qword_1EC21C080;
  if (!qword_1EC21C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C080);
  }

  return result;
}

unint64_t sub_1C744AFF8()
{
  result = qword_1EC21C088;
  if (!qword_1EC21C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C088);
  }

  return result;
}

unint64_t sub_1C744B050()
{
  result = qword_1EC21C090;
  if (!qword_1EC21C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C090);
  }

  return result;
}

unint64_t sub_1C744B0A8()
{
  result = qword_1EC21C098;
  if (!qword_1EC21C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C098);
  }

  return result;
}

unint64_t sub_1C744B100()
{
  result = qword_1EC21C0A0;
  if (!qword_1EC21C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C0A0);
  }

  return result;
}

unint64_t sub_1C744B158()
{
  result = qword_1EC21C0A8;
  if (!qword_1EC21C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C0A8);
  }

  return result;
}

unint64_t sub_1C744B1B0()
{
  result = qword_1EC21C0B0;
  if (!qword_1EC21C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C0B0);
  }

  return result;
}

unint64_t sub_1C744B208()
{
  result = qword_1EC21C0B8;
  if (!qword_1EC21C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C0B8);
  }

  return result;
}

unint64_t sub_1C744B260()
{
  result = qword_1EC21C0C0;
  if (!qword_1EC21C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C0C0);
  }

  return result;
}

uint64_t static StoryGenerationUtilities.dateComponents(from:with:)()
{
  if (qword_1EC214168 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  v0 = sub_1C754E24C();
  __swift_project_value_buffer(v0, qword_1EC21C0C8);
  OUTLINED_FUNCTION_66_2();
  return sub_1C754E1BC();
}

id static StoryGenerationUtilities.dateFormatter.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C754E31C();
  v5 = sub_1C754E35C();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    v6 = sub_1C754E32C();
    OUTLINED_FUNCTION_62_2();
    (*(v7 + 8))(v3, v5);
  }

  [v4 setTimeZone_];

  sub_1C7069CE4(0x64644D4D5959, 0xE600000000000000, v4);
  return v4;
}

void static StoryGenerationUtilities.previousDayDateComponents(of:)()
{
  OUTLINED_FUNCTION_33();
  v106 = v0;
  v107 = v1;
  v105 = v2;
  v3 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v100 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v94 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v12);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - v14;
  v16 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v99 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  OUTLINED_FUNCTION_76(v19);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620);
  OUTLINED_FUNCTION_76(v22);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v102 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v94 - v28;
  v103 = sub_1C754DA4C();
  if ((v29 & 1) == 0)
  {
    v98 = sub_1C754DA6C();
    if ((v30 & 1) == 0)
    {
      v31 = sub_1C754DA1C();
      if ((v32 & 1) == 0)
      {
        v38 = v31;
        if (v31 >= 2)
        {
          sub_1C754E24C();
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
          sub_1C754E35C();
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
          OUTLINED_FUNCTION_2_127();
          v98 = 0;
          LOBYTE(v97) = 1;
          OUTLINED_FUNCTION_12_78();
          v94 = v47;
          OUTLINED_FUNCTION_14_68();
          OUTLINED_FUNCTION_6_108();
LABEL_16:
          sub_1C754DAAC();
          v59 = v102;
LABEL_17:
          v60 = sub_1C754DA4C();
          if ((v61 & 1) == 0)
          {
            v62 = v60;
            v63 = sub_1C754DA6C();
            if ((v64 & 1) == 0)
            {
              v65 = v63;
              v66 = sub_1C754DA1C();
              if ((v67 & 1) == 0 && v62 >= 1)
              {
                if (v62 != 1 || v65 >= 1 && (v65 == 1 ? (v68 = v66 <= 0) : (v68 = 0), !v68))
                {
                  (*(v59 + 32))(v105, v38, v24);
                  v69 = OUTLINED_FUNCTION_12_5();
LABEL_30:
                  __swift_storeEnumTagSinglePayload(v69, v70, 1, v24);
                  OUTLINED_FUNCTION_25_0();
                  return;
                }
              }
            }
          }

          (*(v59 + 8))(v38, v24);
LABEL_29:
          v69 = v105;
          v70 = 1;
          goto LABEL_30;
        }

        sub_1C754E24C();
        v38 = 1;
        OUTLINED_FUNCTION_84();
        v97 = v48;
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
        sub_1C754E35C();
        OUTLINED_FUNCTION_84();
        v96 = v52;
        __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
        if (v98 < 2)
        {
          if (!__OFSUB__(v103, 1))
          {
            OUTLINED_FUNCTION_8_88();
            OUTLINED_FUNCTION_12_78();
            OUTLINED_FUNCTION_14_68();
            OUTLINED_FUNCTION_11_73();
            goto LABEL_16;
          }

          __break(1u);
        }

        else
        {
          OUTLINED_FUNCTION_0_185();
          LOBYTE(v95) = 0;
          v94 = 1;
          OUTLINED_FUNCTION_11_73();
          v95 = v56;
          sub_1C754DAAC();
          if (qword_1EC214168 != -1)
          {
            OUTLINED_FUNCTION_17_0();
          }

          v98 = __swift_project_value_buffer(v97, qword_1EC21C0C8);
          sub_1C754E1EC();
          if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
          {
            v57 = OUTLINED_FUNCTION_58();
            v58(v57);
            sub_1C6FF52C0(v15, &unk_1EC219230);
            goto LABEL_29;
          }

          v71 = OUTLINED_FUNCTION_94_3();
          v72(v71);
          v73 = *(v100 + 104);
          v73(v11, *MEMORY[0x1E6969A48], v3);
          v73(v8, *MEMORY[0x1E6969A78], v3);
          sub_1C754E20C();
          v98 = v74;
          v76 = v75;
          v77 = *(v100 + 8);
          v78 = OUTLINED_FUNCTION_2_56();
          v77(v78);
          (v77)(v11, v3);
          if (v76)
          {
            v79 = OUTLINED_FUNCTION_23_52();
            v80(v79);
            v81 = OUTLINED_FUNCTION_58();
            v82(v81);
            goto LABEL_29;
          }

          v83 = v98 - 1;
          if (!__OFSUB__(v98, 1))
          {
            v38 = 1;
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v84, v85, v86, v97);
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v87, v88, v89, v96);
            OUTLINED_FUNCTION_0_185();
            LOBYTE(v107) = 0;
            v106 = v83;
            OUTLINED_FUNCTION_14_68();
            OUTLINED_FUNCTION_6_108();
            sub_1C754DAAC();
            v90 = OUTLINED_FUNCTION_23_52();
            v91(v90);
            v59 = v102;
            v92 = OUTLINED_FUNCTION_58();
            v93(v92);
            goto LABEL_17;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_25_0();

  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
}

void static StoryGenerationUtilities.nextDayDateComponents(of:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v111 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v14);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15_79();
  v116 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v112 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v114 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  OUTLINED_FUNCTION_76(v20);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620);
  OUTLINED_FUNCTION_76(v22);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v113 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  v110 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v102 - v30;
  v115 = sub_1C754DA4C();
  if ((v31 & 1) == 0)
  {
    v109 = sub_1C754DA6C();
    if ((v32 & 1) == 0)
    {
      v33 = sub_1C754DA1C();
      if ((v34 & 1) == 0)
      {
        v107 = v33;
        v108 = v24;
        v104 = v2;
        v40 = sub_1C754E24C();
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
        sub_1C754E35C();
        OUTLINED_FUNCTION_84();
        v105 = v44;
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
        OUTLINED_FUNCTION_0_185();
        LOBYTE(v103) = 0;
        v102 = 1;
        v48 = v117;
        OUTLINED_FUNCTION_2_56();
        OUTLINED_FUNCTION_6_108();
        sub_1C754DAAC();
        if (qword_1EC214168 != -1)
        {
          OUTLINED_FUNCTION_17_0();
        }

        v106 = v40;
        __swift_project_value_buffer(v40, qword_1EC21C0C8);
        sub_1C754E1EC();
        if (__swift_getEnumTagSinglePayload(v0, 1, v116) == 1)
        {
          v49 = v108;
          (*(v113 + 8))(v48, v108);
          sub_1C6FF52C0(v0, &unk_1EC219230);
LABEL_13:
          OUTLINED_FUNCTION_84();
          v62 = v49;
LABEL_30:
          __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
          OUTLINED_FUNCTION_25_0();
          return;
        }

        v103 = v4;
        v50 = OUTLINED_FUNCTION_58();
        v51(v50);
        v52 = v111;
        v53 = *(v111 + 104);
        v53(v13, *MEMORY[0x1E6969A48], v5);
        v53(v10, *MEMORY[0x1E6969A78], v5);
        sub_1C754E20C();
        v55 = v54;
        v57 = v56;
        v58 = *(v52 + 8);
        v58(v10, v5);
        v58(v13, v5);
        if (v57)
        {
          (*(v112 + 8))(v114, v116);
          v49 = v108;
          (*(v113 + 8))(v117, v108);
          goto LABEL_13;
        }

        v63 = v117;
        v64 = v108;
        if (__OFSUB__(v55, 1))
        {
          __break(1u);
        }

        else
        {
          v65 = v112;
          v66 = v114;
          if (v107 < v55 - 1)
          {
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
            OUTLINED_FUNCTION_84();
            __swift_storeEnumTagSinglePayload(v71, v72, v73, v105);
            OUTLINED_FUNCTION_2_127();
            OUTLINED_FUNCTION_12_78();
            v74 = v110;
LABEL_19:
            OUTLINED_FUNCTION_2_56();
            OUTLINED_FUNCTION_6_108();
            goto LABEL_22;
          }

          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v79, v80, v81, v105);
          if (v109 <= 11)
          {
            OUTLINED_FUNCTION_2_127();
            OUTLINED_FUNCTION_12_78();
            v74 = v110;
            goto LABEL_19;
          }

          if (!__OFADD__(v115, 1))
          {
            OUTLINED_FUNCTION_8_88();
            v106 = 0;
            LOBYTE(v105) = v82;
            OUTLINED_FUNCTION_12_78();
            v102 = v83;
            v74 = v110;
            OUTLINED_FUNCTION_2_56();
            OUTLINED_FUNCTION_11_73();
LABEL_22:
            sub_1C754DAAC();
            v84 = v74;
            v85 = sub_1C754DA4C();
            v86 = v104;
            v87 = v113;
            v88 = v116;
            if (v89)
            {
              v90 = OUTLINED_FUNCTION_21_60();
              (v74)(v90);
              (*(v65 + 8))(v66, v88);
            }

            else
            {
              v91 = v85;
              v84 = v74;
              v92 = sub_1C754DA6C();
              if ((v93 & 1) == 0)
              {
                v95 = v92;
                v96 = sub_1C754DA1C();
                v97 = v65;
                v99 = v98;
                (*(v97 + 8))(v114, v88);
                v100 = *(v87 + 8);
                v100(v63, v64);
                if ((v99 & 1) == 0)
                {
                  if (v91 > 4001 || v91 == 4001 && (v95 > 1 || (v95 == 1 ? (v101 = v96 < 1) : (v101 = 1), !v101)))
                  {
                    v100(v110, v64);
                    v59 = v103;
                    v60 = 1;
                    goto LABEL_29;
                  }

                  (*(v113 + 32))(v103, v110, v64);
LABEL_28:
                  v59 = OUTLINED_FUNCTION_12_5();
LABEL_29:
                  v61 = 1;
                  v62 = v64;
                  goto LABEL_30;
                }

                v100(v74, v64);
                v87 = v113;
LABEL_27:
                (*(v87 + 16))(v103, v86, v64);
                goto LABEL_28;
              }

              v94 = OUTLINED_FUNCTION_21_60();
              (v74)(v94);
              (*(v65 + 8))(v114, v88);
            }

            v84(v63, v64);
            goto LABEL_27;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_25_0();

  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

void sub_1C744C2B4()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620);
  OUTLINED_FUNCTION_76(v2);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C754DA4C();
  if (v4 & 1) != 0 || (sub_1C754DA6C(), (v5) || (sub_1C754DA1C(), (v6))
  {
    sub_1C754DABC();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_25_0();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_1C754E24C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    sub_1C754E35C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_94_3();
    OUTLINED_FUNCTION_11_73();
    sub_1C754DAAC();
    sub_1C754DA5C();
    sub_1C754DA7C();
    sub_1C754DA2C();
    sub_1C754DA3C();
    sub_1C754DA8C();
    sub_1C754DA9C();
    sub_1C754DABC();
    v20 = OUTLINED_FUNCTION_12_5();
    __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C744C4A4()
{
  v0 = sub_1C754E16C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = sub_1C754E24C();
  __swift_allocate_value_buffer(v7, qword_1EC21C0C8);
  __swift_project_value_buffer(v7, qword_1EC21C0C8);
  (*(v2 + 104))(v6, *MEMORY[0x1E6969868], v0);
  sub_1C754E17C();
  v8 = OUTLINED_FUNCTION_66_2();
  return v9(v8);
}

uint64_t static StoryGenerationUtilities.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC214168 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  v2 = sub_1C754E24C();
  __swift_project_value_buffer(v2, qword_1EC21C0C8);
  OUTLINED_FUNCTION_62_2();
  v4 = *(v3 + 16);

  return v4(a1);
}

void static StoryGenerationUtilities.nextDay(from:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v10);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_79();
  v12 = sub_1C754E24C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  sub_1C754E21C();
  (*(v5 + 104))(v9, *MEMORY[0x1E6969A48], v3);
  sub_1C754E1FC();
  (*(v5 + 8))(v9, v3);
  (*(v14 + 8))(v18, v12);
  v19 = sub_1C754DF6C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v19) == 1)
  {
    sub_1C6FF52C0(v0, &unk_1EC219230);
    v20 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_62_2();
    (*(v21 + 32))(v2, v0, v19);
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v2, v20, 1, v19);
  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.dedupedDateComponents(startDateComponents:endDateComponents:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v57 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  v8 = OUTLINED_FUNCTION_76(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v18 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78();
  v56 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  static StoryGenerationUtilities.dateComponentsWithOnlyYMD(from:)();
  OUTLINED_FUNCTION_48_1(v17);
  if (v31)
  {
    v14 = v17;
LABEL_11:
    sub_1C6FF52C0(v14, &qword_1EC218C50);
    v37 = OUTLINED_FUNCTION_24_46();
    v38(v37);
    sub_1C7026190(v1, v5);
    goto LABEL_12;
  }

  v54 = v3;
  v55 = v5;
  v30 = *(v20 + 32);
  v30(v29, v17, v18);
  sub_1C7026190(v1, v14);
  OUTLINED_FUNCTION_48_1(v14);
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_94_2();
    v33(v32);
LABEL_10:
    v5 = v55;
    goto LABEL_11;
  }

  v30(v26, v14, v18);
  static StoryGenerationUtilities.dateComponentsWithOnlyYMD(from:)();
  OUTLINED_FUNCTION_48_1(v11);
  if (v34)
  {
    v35 = *(v20 + 8);
    v35(v26, v18);
    v36 = OUTLINED_FUNCTION_94_2();
    (v35)(v36);
    v14 = v11;
    goto LABEL_10;
  }

  v39 = v56;
  v30(v56, v11, v18);
  if (MEMORY[0x1CCA59F10](v29, v39))
  {
    if (qword_1EDD0DBE0 != -1)
    {
      swift_once();
    }

    v40 = sub_1C754FF1C();
    __swift_project_value_buffer(v40, qword_1EDD28D28);
    v41 = sub_1C754FEEC();
    v42 = sub_1C75511BC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "Deduped start date components and end date components since they are the same", v43, 2u);
      MEMORY[0x1CCA5F8E0](v43, -1, -1);
    }

    v44 = *(v20 + 8);
    v45 = OUTLINED_FUNCTION_94_3();
    v44(v45);
    (v44)(v26, v18);
    v46 = OUTLINED_FUNCTION_94_2();
    v44(v46);
    v47 = OUTLINED_FUNCTION_24_46();
    v48(v47);
    v49 = v55;
    v50 = 1;
  }

  else
  {
    v51 = *(v20 + 8);
    v52 = OUTLINED_FUNCTION_94_3();
    v51(v52);
    v53 = OUTLINED_FUNCTION_94_2();
    v51(v53);
    (*(v20 + 16))(v57, v54, v18);
    v30(v55, v26, v18);
    v49 = OUTLINED_FUNCTION_12_5();
  }

  __swift_storeEnumTagSinglePayload(v49, v50, 1, v18);
LABEL_12:
  OUTLINED_FUNCTION_25_0();
}

uint64_t static StoryGenerationUtilities.dateComponentsWithOnlyYMD(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  OUTLINED_FUNCTION_76(v0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15_79();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217620);
  OUTLINED_FUNCTION_76(v2);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C754DA4C();
  if (v4 & 1) != 0 || (sub_1C754DA6C(), (v5) || (sub_1C754DA1C(), (v6))
  {
    sub_1C754DABC();
    OUTLINED_FUNCTION_84();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_1C754E24C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    sub_1C754E35C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_12_78();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_11_73();
    sub_1C754DAAC();
    sub_1C754DABC();
    v20 = OUTLINED_FUNCTION_12_5();
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  }
}

id sub_1C744CE9C()
{
  result = sub_1C744CF24();
  qword_1EC21C0E0 = result;
  return result;
}

id sub_1C744CEF8()
{
  result = sub_1C744CF24();
  qword_1EDD095A0 = result;
  return result;
}

id sub_1C744CF24()
{
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v4 = objc_opt_self();
  v5 = sub_1C755065C();
  sub_1C754E11C();
  v6 = sub_1C754E09C();
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_66_2();
  v7(v8);
  v9 = [v4 dateFormatFromTemplate:v5 options:0 locale:v6];

  [v3 setDateFormat_];
  sub_1C754E11C();
  v10 = sub_1C754E09C();
  v11 = OUTLINED_FUNCTION_66_2();
  v7(v11);
  [v3 setLocale_];

  return v3;
}

id sub_1C744D0CC(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1C744D140()
{
  type metadata accessor for ParallaxSpatialPhotoCache();
  swift_allocObject();
  result = sub_1C744DE6C();
  qword_1EDD09338 = result;
  return result;
}

uint64_t static ParallaxSpatialPhotoCache.shared.getter()
{
  if (qword_1EDD09330 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C744D1D8()
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 112) = 1;
  sub_1C754F85C();
  v7 = sub_1C754FEEC();
  v8 = sub_1C755117C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "ParallaxSpatialPhotoCache enableInMemoryCache()", v9, 2u);
    OUTLINED_FUNCTION_109();
  }

  return (*(v3 + 8))(v6, v1);
}

void sub_1C744D304(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  if (qword_1EC214178 != -1)
  {
    OUTLINED_FUNCTION_0_186();
  }

  if ((byte_1EC21C0E8 & 1) == 0)
  {
    v10 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v3;
    v11[5] = a1;
    v11[6] = a2;
    v11[7] = a3;

    sub_1C744E6B4(a2, a3);
    sub_1C6FEB80C(0, 0, v9, &unk_1C758C500, v11);
  }
}

uint64_t sub_1C744D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1C72CCAE8;

  return sub_1C744DF08(a5, a6, a7, 1);
}

uint64_t sub_1C744D4F8()
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v57 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  if (qword_1EC214178 != -1)
  {
    OUTLINED_FUNCTION_0_186();
  }

  if (byte_1EC21C0E8)
  {
    return 0;
  }

  v14 = sub_1C755065C();
  v15 = [v0[17] objectForKey_];
  if (!v15)
  {
    if ([v0[15] objectForKey_] || objc_msgSend(v0[16], sel_objectForKey_, v14))
    {
      v62 = v1;
      v17 = sub_1C754F83C();
      v19 = v18;
      sub_1C754F84C();
      swift_allocObject();
      sub_1C6FEB1B0(v17, v19);
      v20 = sub_1C754F7DC();
      v21 = v19;
      v29 = v20;
      v61 = v21;
      sub_1C754F85C();
      v44 = v14;

      v45 = sub_1C754FEEC();
      v46 = sub_1C755117C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v58 = v46;
        v48 = v47;
        v49 = OUTLINED_FUNCTION_102();
        v59 = swift_slowAlloc();
        v63[0] = v59;
        *v48 = 138543874;
        *(v48 + 4) = v44;
        *v49 = v14;
        *(v48 + 12) = 2080;
        v60 = v44;
        v57 = v45;
        v50 = sub_1C754F76C();
        v52 = sub_1C6F765A4(v50, v51, v63);

        *(v48 + 14) = v52;
        *(v48 + 22) = 2080;
        v53 = sub_1C754F76C();
        v55 = sub_1C6F765A4(v53, v54, v63);

        *(v48 + 24) = v55;
        v56 = v57;
        _os_log_impl(&dword_1C6F5C000, v57, v58, "ParallaxSpatialPhotoCache[%{public}@] returning existing scene:%s copied to:%s", v48, 0x20u);
        sub_1C6FC15D8(v49);
        OUTLINED_FUNCTION_109();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        sub_1C6FC1640(v17, v61);
      }

      else
      {
        sub_1C6FC1640(v17, v61);
      }

      v42 = *(v3 + 8);
      v43 = v10;
      goto LABEL_22;
    }

    sub_1C754F85C();
    v22 = v14;
    v23 = sub_1C754FEEC();
    v24 = sub_1C755117C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_102();
      *v25 = 138543362;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_1C6F5C000, v23, v24, "ParallaxSpatialPhotoCache[%{public}@] no cached scene available", v25, 0xCu);
      sub_1C6FC15D8(v26);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v27 = v23;
      v23 = v22;
    }

    (*(v3 + 8))(v7, v1);
    return 0;
  }

  v16 = v15;
  sub_1C754DDEC();

  sub_1C754F84C();
  swift_allocObject();
  v29 = sub_1C754F7DC();
  sub_1C754F85C();
  v30 = v14;

  v31 = sub_1C754FEEC();
  v32 = sub_1C755117C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_102();
    v35 = swift_slowAlloc();
    v62 = v1;
    v63[0] = v35;
    v36 = v35;
    *v33 = 138543618;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2082;
    v37 = v30;
    v60 = v31;
    v61 = v37;
    v38 = sub_1C754F76C();
    v40 = sub_1C6F765A4(v38, v39, v63);

    *(v33 + 14) = v40;
    v41 = v60;
    _os_log_impl(&dword_1C6F5C000, v60, v32, "ParallaxSpatialPhotoCache[%{public}@] returning scene created from cached data:%{public}s", v33, 0x16u);
    sub_1C6FC15D8(v34);
    OUTLINED_FUNCTION_109();
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    v42 = *(v3 + 8);
    v43 = v13;
LABEL_22:
    v42(v43, v62);
    return v29;
  }

  (*(v3 + 8))(v13, v1);
  return v29;
}

id sub_1C744DCA0()
{
  result = sub_1C744DCC4();
  byte_1EC21C0E8 = result & 1;
  return result;
}

id sub_1C744DCC4()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1C755065C();
  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    sub_1C754F85C();
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "ParallaxSpatialPhotoCache disabling cache, PU_DISABLE_SPATIAL_SCENE_CACHE default is true", v9, 2u);
      MEMORY[0x1CCA5F8E0](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v6;
}

uint64_t sub_1C744DE6C()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = [objc_opt_self() strongToWeakObjectsMapTable];
  v1 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  [v1 setCountLimit_];
  *(v0 + 128) = v1;
  *(v0 + 136) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  return v0;
}

uint64_t sub_1C744DF08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 120) = a4;
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_1C754FF1C();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v7 = sub_1C754F80C();
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C744E038, v4, 0);
}

uint64_t sub_1C744E038()
{
  v61 = v0;
  if (qword_1EC214178 != -1)
  {
    OUTLINED_FUNCTION_0_186();
  }

  if ((byte_1EC21C0E8 & 1) == 0)
  {
    v2 = *(v0 + 104);
    v1 = *(v0 + 112);
    v3 = *(v0 + 96);
    sub_1C754F81C();
    sub_1C754F7FC();
    v5 = v4;
    (*(v2 + 8))(v1, v3);
    if (v5)
    {
      v6 = *(v0 + 56);
      v7 = sub_1C755065C();

      v8 = *(v6 + 120);
      v9 = v7;
      v10 = [v8 objectForKey_];
      if (v10)
      {
        v11 = v10;
        v12 = *(v0 + 32);

        v13 = v11 == v12;
      }

      else
      {
        v13 = 0;
      }

      v21 = *(v0 + 56);
      v22 = *(v0 + 32);
      v23 = *(v6 + 120);
      v24 = &selRef_mergedPersonIdentifiers;
      [v23 setObject:v22 forKey:v9];

      if (*(v21 + 112) != 1)
      {
LABEL_18:

        goto LABEL_25;
      }

      v25 = *(v0 + 48);
      [*(*(v0 + 56) + 128) setObject:*(v0 + 32) forKey:v9];
      if (v25 >> 60 == 15)
      {
        v26 = [*(*(v0 + 56) + 136) objectForKey_];
        if (!v26)
        {
          goto LABEL_16;
        }

        v27 = v26;
        if (!v13)
        {

LABEL_16:
          if (*(v0 + 120) == 1)
          {
            v28 = *(v0 + 32);
            v29 = type metadata accessor for PXParallaxSpatialPhotoScene();
            v30 = objc_allocWithZone(v29);
            *&v30[OBJC_IVAR____TtC18PhotosIntelligence27PXParallaxSpatialPhotoScene_scene] = v28;
            *(v0 + 16) = v30;
            *(v0 + 24) = v29;

            v31 = objc_msgSendSuper2((v0 + 16), sel_init);
            v32 = sub_1C6FF4730();
            v34 = v33;

            v27 = sub_1C754DDCC();
            sub_1C6FC1640(v32, v34);
            v35 = 1;
LABEL_21:
            sub_1C754F85C();
            v38 = v27;
            v39 = v9;

            v40 = v38;
            v41 = sub_1C754FEEC();
            v42 = sub_1C755117C();

            v43 = os_log_type_enabled(v41, v42);
            v44 = *(v0 + 88);
            v45 = *(v0 + 72);
            v59 = *(v0 + 64);
            if (v43)
            {
              v58 = *(v0 + 88);
              v46 = swift_slowAlloc();
              v56 = v35;
              v47 = OUTLINED_FUNCTION_102();
              v57 = swift_slowAlloc();
              v60 = v57;
              *v46 = 138544130;
              *(v46 + 4) = v39;
              *v47 = v7;
              *(v46 + 12) = 2082;
              v48 = v39;
              v49 = sub_1C754F76C();
              v51 = sub_1C6F765A4(v49, v50, &v60);

              *(v46 + 14) = v51;
              *(v46 + 22) = 2050;
              v52 = [v40 length];

              *(v46 + 24) = v52 / 0x100000;
              *(v46 + 32) = 1024;
              *(v46 + 34) = v56;
              _os_log_impl(&dword_1C6F5C000, v41, v42, "ParallaxSpatialPhotoCache[%{public}@] caching scene %{public}s %{public}ld MB didSerialize:%{BOOL}d", v46, 0x26u);
              sub_1C6FC15D8(v47);
              OUTLINED_FUNCTION_109();
              __swift_destroy_boxed_opaque_existential_1(v57);
              OUTLINED_FUNCTION_109();
              v24 = &selRef_mergedPersonIdentifiers;
              OUTLINED_FUNCTION_109();

              (*(v45 + 8))(v58, v59);
            }

            else
            {

              (*(v45 + 8))(v44, v59);
            }

            v53 = *(*(v0 + 56) + 136);
            [v53 v24[300]];

            goto LABEL_25;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v37 = *(v0 + 40);
        v36 = *(v0 + 48);
        sub_1C6FEB1B0(v37, v36);
        v27 = sub_1C754DDCC();
        sub_1C70B5C10(v37, v36);
      }

      v35 = 0;
      goto LABEL_21;
    }

    sub_1C754F85C();
    v14 = sub_1C754FEEC();
    v15 = sub_1C755117C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v14, v15, "ParallaxSpatialPhotoCache unable to register scene, missing cacheKey", v20, 2u);
      OUTLINED_FUNCTION_109();
    }

    (*(v18 + 8))(v17, v19);
  }

LABEL_25:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t ParallaxSpatialPhotoCache.__deallocating_deinit()
{
  ParallaxSpatialPhotoCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C744E5E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C72CCAE8;

  return sub_1C744D440(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C744E6B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6FEB1B0(a1, a2);
  }

  return a1;
}

uint64_t static MessagesBackdrop.Utilities.sanitizeConversationID(conversationID:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C75507FC();
  sub_1C75504FC();
  if (v4 < 5)
  {
    return a1;
  }

  sub_1C7033D84(2);
  result = sub_1C75507FC();
  if (!__OFSUB__(result, 2))
  {
    sub_1C755094C();
    v6 = sub_1C744ECC8();

    sub_1C75504FC();
    sub_1C744E8B4(2uLL, a1, a2);
    sub_1C70D3F24();
    sub_1C75504FC();
    sub_1C755083C();

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C744E8B4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_1C755082C();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_1C755098C();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C744E98C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1C74A3698(v2, -result, 0);
    if (v3)
    {
      result = 0;
    }

    if (v2 >= result)
    {
      v4 = sub_1C74B833C(result);

      return v4;
    }
  }

  __break(1u);
  return result;
}

void sub_1C744EA24(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_1C6FB1814();
    v3 = v4;
  }

  *v1 = v3;
}

uint64_t static MessagesBackdrop.Utilities.suggestionsByConversationID(for:)(void *a1)
{
  v1 = [a1 count];
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v2 = v1;
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v6 = [a1 objectAtIndexedSubscript_];
    v7 = sub_1C744F4AC(v6);
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = v7;
    v10 = v8;
    sub_1C6F6E5B4(v3);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1C6F78124(v9, v10);
    if (__OFADD__(v5[2], (v12 & 1) == 0))
    {
      break;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C0F0);
    if (sub_1C7551A2C())
    {
      v15 = sub_1C6F78124(v9, v10);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_23;
      }

      v13 = v15;
    }

    if (v14)
    {
    }

    else
    {
      v5[(v13 >> 6) + 8] |= 1 << v13;
      v17 = (v5[6] + 16 * v13);
      *v17 = v9;
      v17[1] = v10;
      *(v5[7] + 8 * v13) = MEMORY[0x1E69E7CC0];
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v5[2] = v20;
    }

    v21 = (v5[7] + 8 * v13);
    v22 = v6;
    MEMORY[0x1CCA5D040]();
    if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    v3 = sub_1C6F86C50;
LABEL_16:
    ++v4;

    if (v2 == v4)
    {
      sub_1C6F6E5B4(v3);
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C744ECC8()
{
  v0 = sub_1C75507FC();
  v1 = sub_1C75514DC();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1CCA5CC70](result);
    sub_1C70D3F24();
    sub_1C755083C();
    sub_1C755083C();
    return 0;
  }

  return result;
}

uint64_t sub_1C744EDAC(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_1C6FB1814();
    v5 = v2;
    v3 = sub_1C75504FC();
    sub_1C6FD3B8C(v3);
    v4 = sub_1C75504FC();
    sub_1C6FD2568(v4);
    return v5;
  }

  return result;
}

id static MessagesBackdrop.Utilities.validResourcesExist(in:)()
{
  v0 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C755068C();
  sub_1C754DC9C();

  v6 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1C754DCEC();
  v7 = sub_1C755065C();

  v8 = [v6 fileExistsAtPath_];

  (*(v2 + 8))(v5, v0);
  return v8;
}

uint64_t static MessagesBackdrop.Utilities.messagesBackdropSubtype(for:)(void *a1)
{
  if ([a1 isSystemPhotoLibrary])
  {
    return 1502;
  }

  else
  {
    return 1501;
  }
}

id static MessagesBackdrop.Utilities.posterDescriptor(for:assetUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 photoLibrary];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = result;
  v15 = [result photoLibraryURL];

  sub_1C754DCCC();
  v16 = sub_1C754DCEC();
  v18 = v17;
  (*(v8 + 8))(v12, v6);
  result = sub_1C70CAC04(a1);
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v21 = v19;
  v22 = [a1 subtype];
  objc_allocWithZone(MEMORY[0x1E69C0818]);
  sub_1C75504FC();
  v23 = sub_1C744F370(a2, a3, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C7565670;
  *(v24 + 32) = v23;
  objc_allocWithZone(MEMORY[0x1E69C07F0]);
  v25 = v23;
  sub_1C75504FC();
  v26 = sub_1C744F400(1, v24, v16, v18);
  v27 = [v26 descriptorType];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C755BAB0;
  result = sub_1C70CAC04(a1);
  if (!v29)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v30 = result;
  v31 = v29;

  v32 = objc_opt_self();
  *(v28 + 32) = v30;
  *(v28 + 40) = v31;
  v33 = sub_1C7550B3C();

  v34 = [v32 descriptorIdentifierForDescriptorType:v27 uuids:v33];

  if (!v34)
  {
    sub_1C755068C();
    v34 = sub_1C755065C();
  }

  [v26 setIdentifier_];

  return v26;
}

uint64_t static MessagesBackdrop.Utilities.posterDescriptorIdentifier(for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755BAB0;
  result = sub_1C70CAC04(a1);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    *(v2 + 32) = v5;
    *(v2 + 40) = v6;
    v8 = sub_1C7550B3C();

    v9 = [v7 descriptorIdentifierForDescriptorType:1 uuids:v8];

    v10 = sub_1C755068C();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C744F370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v7 = sub_1C755065C();

  v8 = sub_1C755065C();

  v9 = [v5 initWithAssetUUID:v7 suggestionUUID:v8 suggestionSubtype:a5];

  return v9;
}

id sub_1C744F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C744F5BC();
  v7 = sub_1C7550B3C();

  if (a4)
  {
    v8 = sub_1C755065C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDescriptorType:a1 media:v7 photoLibraryPath:v8];

  return v9;
}

uint64_t sub_1C744F4AC(void *a1)
{
  v1 = [a1 context];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

_BYTE *_s9UtilitiesVwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C744F5BC()
{
  result = qword_1EC21C0F8;
  if (!qword_1EC21C0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC21C0F8);
  }

  return result;
}

uint64_t sub_1C744F600()
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C108);
  sub_1C7450888();
  v1 = sub_1C754DBAC();
  if (v0)
  {
    swift_getErrorValue();
    v3 = sub_1C7551EAC();
    v5 = v4;
    sub_1C744FAAC();
    swift_allocError();
    *v6 = v3;
    v6[1] = v5;
    swift_willThrow();
  }

  else
  {
    v8 = v1;
    v9 = v2;
    sub_1C7161C08();
    sub_1C6FC1640(v8, v9);
  }
}

uint64_t sub_1C744F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_1C7141478(a7, a5);
  v10 = sub_1C754DBAC();
  if (v7)
  {
    swift_getErrorValue();
    v12 = sub_1C7551EAC();
    v14 = v13;
    sub_1C744FAAC();
    swift_allocError();
    *v15 = v12;
    v15[1] = v14;
    swift_willThrow();
  }

  else
  {
    v17 = v10;
    v18 = v11;
    OUTLINED_FUNCTION_0_187();
    sub_1C7161C08();
    sub_1C6FC1640(v17, v18);
  }
}

uint64_t static AssetStateDiagnosticsGenerator.save<A>(dataToEncode:as:to:)()
{
  sub_1C754DBCC();
  swift_allocObject();
  sub_1C754DBBC();
  sub_1C754DB9C();
  v1 = sub_1C754DBAC();
  if (v0)
  {
    swift_getErrorValue();
    v3 = sub_1C7551EAC();
    v5 = v4;
    sub_1C744FAAC();
    swift_allocError();
    *v6 = v3;
    v6[1] = v5;
    swift_willThrow();
  }

  else
  {
    v8 = v1;
    v9 = v2;
    OUTLINED_FUNCTION_0_187();
    sub_1C7161C08();
    sub_1C6FC1640(v8, v9);
  }
}

unint64_t sub_1C744FAAC()
{
  result = qword_1EC21C100;
  if (!qword_1EC21C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C100);
  }

  return result;
}

uint64_t static AssetStateDiagnosticsGenerator.save(assetState:to:storyAssetManager:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = *a1;
  result = PFOSVariantHasInternalDiagnostics();
  if (result)
  {
    v17[0] = v5;
    result = sub_1C7450028(v17);
    if (!v3)
    {
      v7 = 0;
      v15 = a3;
      v16 = *(result + 16);
      for (i = (result + 72); ; i += 6)
      {
        if (v16 == v7)
        {
        }

        if (v7 >= *(result + 16))
        {
          break;
        }

        v9 = result;
        v10 = *(i - 2);
        v11 = *(i - 1);
        v12 = *i;
        v13 = *(i - 5);
        v14 = *(i - 4);
        v17[0] = *(i - 3);
        v17[1] = v10;
        v17[2] = v11;
        v17[3] = v12;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();

        static AssetStateDiagnosticsGenerator.save(_:as:to:storyAssetManager:)(v17, v13, v14, v18, v15);

        ++v7;
        result = v9;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C744FC48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656661537369 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646E657478457369 && a2 == 0xEA00000000006465)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C744FD5C(char a1)
{
  if (!a1)
  {
    return 1684632949;
  }

  if (a1 == 1)
  {
    return 0x656661537369;
  }

  return 0x646E657478457369;
}

uint64_t sub_1C744FDAC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C128);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7450A04();
  sub_1C755200C();
  v15 = 0;
  sub_1C7551CCC();
  if (!v4)
  {
    v14 = 1;
    sub_1C7551CDC();
    v13 = 2;
    sub_1C7551CDC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C744FF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C744FC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C744FF7C(uint64_t a1)
{
  v2 = sub_1C7450A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C744FFB8(uint64_t a1)
{
  v2 = sub_1C7450A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C744FFF4(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1C744FDAC(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

uint64_t sub_1C7450028(unint64_t *a1)
{
  v1 = *a1;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v12 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v15 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C120);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C755BAB0;
      *(v9 + 32) = 0xD000000000000012;
      *(v9 + 40) = 0x80000001C75B0DD0;
      *(v9 + 48) = v12;
      *(v9 + 56) = v13;
      *(v9 + 64) = v14;
      *(v9 + 72) = v15;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      goto LABEL_6;
    case 2uLL:
      v10 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C120);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C755BAB0;
      *(v9 + 32) = 0xD000000000000016;
      *(v9 + 40) = 0x80000001C75B0DB0;
      StoryAsset.Manager.collection(with:)(v10, (v9 + 48));
      break;
    case 3uLL:
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B0D90);
      sub_1C73E6C1C(v1);
      v9 = 0xE000000000000000;
      sub_1C744FAAC();
      swift_allocError();
      *v11 = 0;
      v11[1] = 0xE000000000000000;
      swift_willThrow();
      break;
    default:
      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      v5 = *(v1 + 32);
      v4 = *(v1 + 40);
      v7 = *(v1 + 48);
      v6 = *(v1 + 56);
      v8 = *(v1 + 64);
      v17 = *(v1 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C120);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C75604F0;
      *(v9 + 32) = 0xD000000000000013;
      *(v9 + 40) = 0x80000001C75B0DF0;
      *(v9 + 48) = v3;
      *(v9 + 56) = v2;
      *(v9 + 64) = v5;
      *(v9 + 72) = v4;
      *(v9 + 80) = 0xD00000000000001BLL;
      *(v9 + 88) = 0x80000001C75B0E10;
      *(v9 + 96) = v7;
      *(v9 + 104) = v6;
      *(v9 + 112) = v8;
      *(v9 + 120) = v17;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
LABEL_6:

      break;
  }

  return v9;
}

uint64_t static AssetStateDiagnosticsGenerator.save(_:as:to:storyAssetManager:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v80 = *a1;
  v92 = *a1;
  v93 = v7;
  v94 = v9;
  v95 = v8;
  swift_bridgeObjectRetain_n();
  v10 = sub_1C71CDAC0(v7);
  v11 = sub_1C754F41C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
  v90 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(v89);
  MEMORY[0x1CCA5B6D0]();
  v96 = a5;
  v14 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v92, v10, v89);
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1(v89);
  }

  else
  {
    v77 = v14;

    __swift_destroy_boxed_opaque_existential_1(v89);
    v92 = v80;
    v93 = v7;
    v94 = v9;
    v95 = v8;
    sub_1C75504FC();
    sub_1C7074668(&unk_1F46A85F0, v7, v15, v16, v17, v18, v19, v20, v62, SWORD2(v62), SBYTE6(v62), SHIBYTE(v62), v67, a4, v71, v74, v77, v80, a2, a3, v11);
    v22 = sub_1C71CDAC0(v21);
    v90 = v12;
    v91 = OpaqueTypeConformance2;
    __swift_allocate_boxed_opaque_existential_0(v89);
    MEMORY[0x1CCA5B6D0]();
    v23 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v92, v22, v89);

    __swift_destroy_boxed_opaque_existential_1(v89);
    v92 = v81;
    v93 = v7;
    v94 = v9;
    v95 = v8;
    sub_1C7074668(&unk_1F46A8618, v7, v24, v25, v26, v27, v28, v29, v63, v64, v65, v66, v68, v70, v72, v75, v78, v81, v84, v86, v87);
    v31 = sub_1C71CDAC0(v30);
    v90 = v12;
    v91 = OpaqueTypeConformance2;
    __swift_allocate_boxed_opaque_existential_0(v89);
    MEMORY[0x1CCA5B6D0]();
    v33 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v92, v31, v89);

    __swift_destroy_boxed_opaque_existential_1(v89);
    sub_1C703FD7C();
    v35 = v34;

    v36 = *(v35 + 16);
    if (v36)
    {
      v92 = MEMORY[0x1E69E7CC0];
      sub_1C716E768();
      v37 = 0;
      v76 = v35 + 32;
      v38 = v92;
      v39 = v23 + 56;
      v96 = v33 + 56;
      v79 = v36;
      v82 = v33;
      v73 = v23 + 56;
      do
      {
        v88 = v38;
        v40 = (v76 + 16 * v37);
        v41 = *v40;
        v42 = v40[1];
        if (*(v23 + 16))
        {
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v43 = sub_1C7551FAC();
          v44 = ~(-1 << *(v23 + 32));
          do
          {
            v45 = v43 & v44;
            v46 = (1 << (v43 & v44)) & *(v39 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8));
            v47 = v46 != 0;
            if (!v46)
            {
              break;
            }

            v48 = (*(v23 + 48) + 16 * v45);
            if (*v48 == v41 && v48[1] == v42)
            {
              break;
            }

            v50 = sub_1C7551DBC();
            v43 = v45 + 1;
          }

          while ((v50 & 1) == 0);
        }

        else
        {
          sub_1C75504FC();
          v47 = 0;
        }

        if (*(v33 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          v51 = sub_1C7551FAC();
          v52 = ~(-1 << *(v33 + 32));
          do
          {
            v53 = v51 & v52;
            v54 = (1 << (v51 & v52)) & *(v96 + (((v51 & v52) >> 3) & 0xFFFFFFFFFFFFFF8));
            v55 = v54 != 0;
            if (!v54)
            {
              break;
            }

            v56 = (*(v33 + 48) + 16 * v53);
            if (*v56 == v41 && v56[1] == v42)
            {
              break;
            }

            v58 = sub_1C7551DBC();
            v51 = v53 + 1;
          }

          while ((v58 & 1) == 0);
        }

        else
        {
          v55 = 0;
        }

        v59 = v23;
        v38 = v88;
        v92 = v88;
        v60 = *(v88 + 16);
        if (v60 >= *(v88 + 24) >> 1)
        {
          sub_1C716E768();
          v38 = v92;
        }

        ++v37;
        *(v38 + 16) = v60 + 1;
        v61 = v38 + 24 * v60;
        *(v61 + 32) = v41;
        *(v61 + 40) = v42;
        *(v61 + 48) = v47;
        *(v61 + 49) = v55;
        v23 = v59;
        v33 = v82;
        v39 = v73;
      }

      while (v37 != v79);
    }

    sub_1C744F600();
  }
}

_BYTE *storeEnumTagSinglePayload for AssetStateDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7450888()
{
  result = qword_1EC21C110;
  if (!qword_1EC21C110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21C108);
    sub_1C745090C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C110);
  }

  return result;
}

unint64_t sub_1C745090C()
{
  result = qword_1EC21C118;
  if (!qword_1EC21C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C118);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C7450974(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C74509B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C7450A04()
{
  result = qword_1EC21C130;
  if (!qword_1EC21C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C130);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetStateDiagnosticsGenerator.AnnotatedAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7450B38()
{
  result = qword_1EC21C138;
  if (!qword_1EC21C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C138);
  }

  return result;
}

unint64_t sub_1C7450B90()
{
  result = qword_1EC21C140;
  if (!qword_1EC21C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C140);
  }

  return result;
}

unint64_t sub_1C7450BE8()
{
  result = qword_1EC21C148;
  if (!qword_1EC21C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C148);
  }

  return result;
}

void sub_1C7450C3C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v35 = v38;
    v4 = sub_1C70D4544(v1);
    v6 = v5;
    v7 = 0;
    v8 = v1 + 64;
    v29 = v5;
    v30 = v2;
    v28 = v1 + 72;
    v31 = v1 + 64;
    v32 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_46;
      }

      v33 = v3;
      v34 = v7 + 1;
      v10 = *(*(v1 + 48) + v4);
      sub_1C75504FC();
      v11 = 0xE400000000000000;
      v12 = 1701736302;
      switch(v10)
      {
        case 1:
          v11 = 0xE600000000000000;
          v13 = 1936876912;
          goto LABEL_25;
        case 2:
          v12 = 0x67416E6F73726570;
          v15 = 0x6570795465;
          goto LABEL_16;
        case 3:
          v12 = 1702125924;
          break;
        case 4:
          v11 = 0xE900000000000079;
          v12 = 0x6144664F74726170;
          break;
        case 5:
          v11 = 0xEA00000000006B65;
          v12 = 0x6557664F74726170;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v13 = 1935762803;
LABEL_25:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_20;
        case 8:
          v12 = 0x4C636972656E6567;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v12 = 1952540791;
          break;
        case 10:
          v12 = 0x764563696C627570;
          v11 = 0xEB00000000746E65;
          break;
        case 11:
          v12 = 0x6C616E6F73726570;
          v15 = 0x746E657645;
LABEL_16:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v12 = 0x746954636973756DLL;
          v11 = 0xEA0000000000656CLL;
          break;
        case 13:
          v11 = 0xEB00000000747369;
          v12 = 0x747241636973756DLL;
          break;
        case 14:
          v11 = 0xEA00000000006572;
          v12 = 0x6E6547636973756DLL;
          break;
        case 15:
          v12 = 1685024621;
          break;
        case 16:
          v11 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_20:
          v12 = v14 | 0x6E6F697400000000;
          break;
        case 17:
          v11 = 0xE600000000000000;
          v12 = 0x706972547369;
          break;
        case 18:
          v12 = 0x6D69546C6C417369;
          v11 = 0xE900000000000065;
          break;
        case 19:
          v11 = 0xE900000000000072;
          v12 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v36 = v12;
      v37 = v11;
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v16 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v16);

      v17 = v35;
      v18 = *(v35 + 16);
      if (v18 >= *(v35 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v17 = v35;
      }

      *(v17 + 16) = v18 + 1;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v36;
      *(v19 + 40) = v37;
      v1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v4 >= v20)
      {
        goto LABEL_47;
      }

      v8 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v4)) == 0)
      {
        goto LABEL_48;
      }

      v35 = v17;
      if (*(v32 + 36) != v6)
      {
        goto LABEL_49;
      }

      v22 = v21 & (-2 << (v4 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1C6F9ED50(v4, v6, v33 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v4, v6, v33 & 1);
      }

LABEL_42:
      v3 = 0;
      v4 = v20;
      v6 = v29;
      v7 = v34;
      if (v34 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

void sub_1C74510F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v28 = v37;
    v5 = sub_1C70D4544(a1);
    v6 = 0;
    v27 = a1 + 64;
    v22 = v3;
    v23 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v7 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_23;
      }

      v25 = v6;
      v26 = v3;
      v24 = v4;
      v8 = (*(a1 + 48) + 120 * v5);
      memcpy(__dst, v8, sizeof(__dst));
      memcpy(__src, v8, sizeof(__src));
      v29 = *(*(a1 + 56) + 16 * v5);
      memmove(v32, v8, 0x78uLL);
      memcpy(v33, __src, sizeof(v33));
      v34 = v29;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1C6FCA6E4(__dst, v35);
      sub_1C6FCA6E4(v32, v35);
      sub_1C6FD7FC8(v33, &qword_1EC21C150);
      memcpy(v35, v32, sizeof(v35));
      v36 = v29;
      MEMORY[0x1CCA5CD70](v35[2], v35[3]);
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v9 = sub_1C745210C();
      MEMORY[0x1CCA5CD70](v9);

      MEMORY[0x1CCA5CD70](32032, 0xE200000000000000);
      sub_1C6FD7FC8(v35, &qword_1EC21C150);
      v10 = v28;
      v37 = v28;
      v11 = *(v28 + 16);
      if (v11 >= *(v28 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v10 = v37;
      }

      *(v10 + 16) = v11 + 1;
      v12 = v10 + 16 * v11;
      *(v12 + 32) = 8315;
      *(v12 + 40) = 0xE200000000000000;
      v13 = 1 << *(a1 + 32);
      if (v5 >= v13)
      {
        goto LABEL_24;
      }

      v14 = *(v27 + 8 * v7);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v28 = v10;
      if (*(a1 + 36) != v26)
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v16 = v23;
      }

      else
      {
        v17 = v7 << 6;
        v18 = v7 + 1;
        v19 = (a1 + 72 + 8 * v7);
        v16 = v23;
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1C6F9ED50(v5, v26, v24 & 1);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_19;
          }
        }

        sub_1C6F9ED50(v5, v26, v24 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v25 + 1;
      v5 = v13;
      v3 = v22;
      if (v25 + 1 == v16)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t QueryAssetsRetrievalProcessor.performPersonalEventQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 904) = v0;
  *(v1 + 896) = v4;
  *(v1 + 888) = v5;
  *(v1 + 880) = v6;
  v7 = sub_1C754F38C();
  *(v1 + 912) = v7;
  *(v1 + 920) = *(v7 - 8);
  *(v1 + 928) = swift_task_alloc();
  *(v1 + 820) = *v3;
  *(v1 + 936) = *(v3 + 8);
  *(v1 + 821) = *(v3 + 24);
  *(v1 + 822) = *(v3 + 25);
  *(v1 + 952) = *(v3 + 32);
  *(v1 + 818) = *(v3 + 40);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C7451580()
{
  v1 = *(v0 + 936);
  v2 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_134_10();
  v4 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_70(v4, v5);
  sub_1C754F15C();
  v6 = MEMORY[0x1E69E7CC8];
  *(v0 + 864) = MEMORY[0x1E69E7CC8];
  *(v0 + 872) = v6;
  v7 = *(v1 + 16);
  *(v0 + 960) = v7;
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_21:
    if (!*(v9 + 16))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 824);

      OUTLINED_FUNCTION_8_89();
      v29 = OUTLINED_FUNCTION_57_0();
      v30(v29);

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_129();

      __asm { BRAA            X1, X16 }
    }

    v42 = *(v0 + 818);
    v18 = *(v0 + 952);
    v41 = *(v0 + 822);
    OUTLINED_FUNCTION_74_16();
    v20 = v19;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C706D154(v20);
    OUTLINED_FUNCTION_56_30();
    *(v0 + 673) = v41;
    *(v0 + 680) = v18;
    OUTLINED_FUNCTION_28_38(v21, v42);
    v22 = swift_task_alloc();
    *(v0 + 1000) = v22;
    *v22 = v0;
    OUTLINED_FUNCTION_12_79(v22);
    OUTLINED_FUNCTION_129();

    sub_1C7453770(v23, v24, v25, v26, v27);
    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 976) = v9;
    *(v0 + 968) = v8;
    if (v8 >= v7)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_19(v8);
    sub_1C6FCA6E4(v0 + 168, v0 + 288);
    if (qword_1EDD0E0A0 != -1)
    {
      OUTLINED_FUNCTION_38();
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_54_32((inited + 32));
    v12 = swift_task_alloc();
    OUTLINED_FUNCTION_80_15(v12);
    v13 = OUTLINED_FUNCTION_19_73();
    swift_setDeallocating();
    sub_1C6FDC98C();

    if (!v13)
    {
      sub_1C6FDD548(v0 + 168);
      goto LABEL_18;
    }

    if (*(v0 + 200))
    {
      break;
    }

    OUTLINED_FUNCTION_26_46();
LABEL_12:
    v14 = OUTLINED_FUNCTION_53_36();

    if (v14)
    {
      goto LABEL_29;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_50_33();
      v9 = v16;
    }

    if (*(v9 + 16) >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_49_32();
      v9 = v17;
    }

    OUTLINED_FUNCTION_51_29();
LABEL_18:
    OUTLINED_FUNCTION_60_26();
    if (v15)
    {
      goto LABEL_21;
    }

    v7 = *(*(v0 + 936) + 16);
  }

  if (*(v0 + 200) == 2)
  {
    goto LABEL_12;
  }

LABEL_29:
  v33 = *(v0 + 820);
  OUTLINED_FUNCTION_54_32((v0 + 528));
  *(v0 + 776) = v33;
  OUTLINED_FUNCTION_46_37(*(v0 + 936));
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  OUTLINED_FUNCTION_13_86(v34);
  OUTLINED_FUNCTION_129();

  sub_1C7452230(v35, v36, v37, v38, v39);
}

uint64_t sub_1C7451984()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 992) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1C6FDD548(v3 + 168);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7451A8C()
{
  v1 = *(v0 + 976);
  while (1)
  {
    OUTLINED_FUNCTION_60_26();
    if (v3)
    {
      break;
    }

    v4 = *(*(v0 + 936) + 16);
    *(v0 + 976) = v1;
    *(v0 + 968) = v2;
    if (v2 >= v4)
    {
      __break(1u);
LABEL_26:

LABEL_27:
      v28 = *(v0 + 820);
      OUTLINED_FUNCTION_54_32((v0 + 528));
      *(v0 + 776) = v28;
      OUTLINED_FUNCTION_46_37(*(v0 + 936));
      v29 = swift_task_alloc();
      *(v0 + 984) = v29;
      *v29 = v0;
      OUTLINED_FUNCTION_13_86();
      OUTLINED_FUNCTION_94_1();

      return sub_1C7452230(v30, v31, v32, v33, v34);
    }

    OUTLINED_FUNCTION_71_19(v2);
    sub_1C6FCA6E4(v0 + 168, v0 + 288);
    if (qword_1EDD0E0A0 != -1)
    {
      OUTLINED_FUNCTION_38();
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_54_32((inited + 32));
    v7 = swift_task_alloc();
    OUTLINED_FUNCTION_80_15(v7);
    v8 = OUTLINED_FUNCTION_19_73();
    swift_setDeallocating();
    sub_1C6FDC98C();

    if (v8)
    {
      if (*(v0 + 200))
      {
        if (*(v0 + 200) != 2)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_46();
      }

      v9 = OUTLINED_FUNCTION_53_36();

      if (v9)
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_50_33();
        v1 = v10;
      }

      if (*(v1 + 16) >= *(v1 + 24) >> 1)
      {
        OUTLINED_FUNCTION_49_32();
        v1 = v11;
      }

      OUTLINED_FUNCTION_51_29();
    }

    else
    {
      sub_1C6FDD548(v0 + 168);
    }
  }

  if (!*(v1 + 16))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 824);

    OUTLINED_FUNCTION_8_89();
    v24 = OUTLINED_FUNCTION_57_0();
    v25(v24);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X1, X16 }
  }

  v37 = *(v0 + 818);
  v12 = *(v0 + 952);
  v36 = *(v0 + 822);
  OUTLINED_FUNCTION_74_16();
  v14 = v13;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C706D154(v14);
  OUTLINED_FUNCTION_56_30();
  *(v0 + 673) = v36;
  *(v0 + 680) = v12;
  OUTLINED_FUNCTION_28_38(v15, v37);
  v16 = swift_task_alloc();
  *(v0 + 1000) = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_12_79(v16);
  OUTLINED_FUNCTION_94_1();

  return sub_1C7453770(v17, v18, v19, v20, v21);
}

uint64_t sub_1C7451E04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1008) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1C74583AC(v3 + 648);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7451F14()
{
  OUTLINED_FUNCTION_123();
  __swift_destroy_boxed_opaque_existential_1(v0 + 824);
  OUTLINED_FUNCTION_8_89();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1C7451F9C()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 888);
  __swift_destroy_boxed_opaque_existential_1(v0 + 824);

  sub_1C6FDD548(v0 + 168);
  OUTLINED_FUNCTION_70(v1, v1[3]);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_47_25();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C745205C()
{
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 824);
  sub_1C74583AC(v0 + 648);
  v1 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1AC();
  v3 = OUTLINED_FUNCTION_47_25();
  v4(v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

unint64_t sub_1C745210C()
{
  sub_1C755180C();

  v0 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v0);

  MEMORY[0x1CCA5CD70](0x73746E656D6F6D20, 0xEA0000000000202CLL);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1C7452230(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a5;
  v6[37] = v5;
  v6[34] = a2;
  v6[35] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v9 = sub_1C754DABC();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = type metadata accessor for QueryTokenCategoryType(0);
  v6[46] = swift_task_alloc();
  v6[47] = type metadata accessor for PersonalEventBackingItem(0);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v6[54] = v10;
  v6[55] = *(v10 - 8);
  v6[56] = swift_task_alloc();
  memcpy(v6 + 2, a1, 0x78uLL);
  v6[57] = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C74524B0, 0, 0);
}

uint64_t sub_1C74524B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  __swift_project_boxed_opaque_existential_1(*(v20 + 280), *(*(v20 + 280) + 24));
  OUTLINED_FUNCTION_134_10();
  v21 = sub_1C75504FC();
  v22 = sub_1C71CD938(v21);
  sub_1C6FDE498(v22);
  v24 = v23;
  *(v20 + 464) = v23;

  v26 = 0;
  v27 = *(v20 + 96);
  v28 = *(v27 + 16);
  while (1)
  {
    if (v28 == v26)
    {

      goto LABEL_20;
    }

    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_1_137();
    sub_1C745844C(v29, v30, v31);
    if (qword_1EDD0E0A0 != -1)
    {
      OUTLINED_FUNCTION_38();
      swift_once();
    }

    __swift_project_value_buffer(*(v20 + 360), qword_1EDD0E0A8);
    static QueryTokenCategoryType.~= infix(_:_:)();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_0_188();
    result = sub_1C74584AC(v33, v34);
    ++v26;
  }

  v36 = *(v20 + 416);
  v35 = *(v20 + 424);
  v37 = *(v20 + 368);
  sub_1C74583EC(*(v20 + 408), v36, type metadata accessor for QueryTokenSuggestion);
  sub_1C74583EC(v36, v35, type metadata accessor for QueryTokenSuggestion);
  sub_1C745844C(v35, v37, type metadata accessor for QueryTokenCategoryType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v39 = *(v20 + 384);
    v38 = *(v20 + 392);
    v40 = *(v20 + 368);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
    sub_1C74583EC(v40 + *(v41 + 48), v38, type metadata accessor for PersonalEventBackingItem);
    sub_1C6FD7FC8(v40, &qword_1EC216320);
    sub_1C745844C(v38, v39, type metadata accessor for PersonalEventBackingItem);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v83 = *(v20 + 320);
        v84 = *(v20 + 312);
        (*(*(v20 + 328) + 32))(*(v20 + 352), *(v20 + 384), v83);
        __swift_storeEnumTagSinglePayload(v84, 1, 1, v83);
        static StoryGenerationUtilities.dateComponentsAttributedQueryStringWithAdjustedRange(withStartDateComponents:endDateComponents:localizedText:)();
        v86 = v85;
        *(v20 + 472) = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
        v87 = swift_allocObject();
        *(v20 + 480) = v87;
        *(v87 + 16) = xmmword_1C7565670;
        *(v87 + 32) = v86;
        *(v20 + 553) = 0;
        v88 = v86;
        sub_1C6FDC2F0(v20 + 232);
        v89 = swift_task_alloc();
        *(v20 + 488) = v89;
        *v89 = v20;
        v89[1] = sub_1C7452C00;
        goto LABEL_24;
      case 2u:
        v49 = *(v20 + 384);
        v50 = *(v20 + 344);
        v98 = *(v20 + 336);
        v51 = *(v20 + 320);
        v52 = *(v20 + 328);
        v53 = *(v20 + 304);
        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298) + 48);
        v55 = *(v52 + 32);
        v55(v50, v49, v51);
        v55(v98, v49 + v54, v51);
        (*(v52 + 16))(v53, v98, v51);
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v51);
        static StoryGenerationUtilities.dateComponentsAttributedQueryStringWithAdjustedRange(withStartDateComponents:endDateComponents:localizedText:)();
        v57 = v56;
        *(v20 + 512) = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
        v58 = swift_allocObject();
        *(v20 + 520) = v58;
        *(v58 + 16) = xmmword_1C7565670;
        *(v58 + 32) = v57;
        *(v20 + 552) = 0;
        v59 = v57;
        sub_1C6FDC2F0(v20 + 192);
        v60 = swift_task_alloc();
        *(v20 + 528) = v60;
        *v60 = v20;
        v60[1] = sub_1C74531A0;
LABEL_24:
        OUTLINED_FUNCTION_64_22();
        OUTLINED_FUNCTION_20_4();

        return sub_1C71074E0();
      case 3u:

        v43 = MEMORY[0x1E69E7CD0];
        goto LABEL_15;
      default:
        sub_1C7457FC0(**(v20 + 384), v24, *(v20 + 280));
        v43 = v42;

        sub_1C75504FC();
LABEL_15:
        type metadata accessor for QueryAssetsRetrievalProcessor();
        sub_1C75504FC();
        v61 = sub_1C754FEEC();
        v62 = sub_1C755117C();
        if (OUTLINED_FUNCTION_128(v62))
        {
          v63 = OUTLINED_FUNCTION_41_0();
          *v63 = 134217984;
          v64 = *(v43 + 16);

          *(v63 + 4) = v64;

          OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v65, v62, "There are %ld event suggestion assets from the user disambiguation");
          OUTLINED_FUNCTION_109();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v66 = *(v20 + 424);
        v67 = *(v20 + 392);
        v68 = *(v20 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_40_46(inited, xmmword_1C755BAB0);
        inited[3].n128_u64[0] = v43;
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
        sub_1C75504DC();
        swift_isUniquelyReferenced_nonNull_native();
        a17 = *v68;
        sub_1C6FC7AB4();
        *v68 = a17;
        OUTLINED_FUNCTION_2_128();
        sub_1C74584AC(v67, v70);
        OUTLINED_FUNCTION_0_188();
        v48 = v66;
        break;
    }
  }

  else
  {
    v44 = *(v20 + 368);
    OUTLINED_FUNCTION_0_188();
    sub_1C74584AC(v45, v46);

    v47 = type metadata accessor for QueryTokenCategoryType;
    v48 = v44;
  }

  sub_1C74584AC(v48, v47);
LABEL_20:
  OUTLINED_FUNCTION_21_61();
  v91 = v72;
  v92 = v71;
  v93 = *(v20 + 368);
  v94 = *(v20 + 352);
  v95 = *(v20 + 344);
  v96 = *(v20 + 336);
  v97 = *(v20 + 312);
  v99 = *(v20 + 304);
  OUTLINED_FUNCTION_16_66();
  v73 = OUTLINED_FUNCTION_39_41();
  v74(v73);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_4();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, v91, v92, v93, v94, v95, v96, v97, v99, a17, a18, a19, a20);
}

uint64_t sub_1C7452C00()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 496) = v0;

  if (!v0)
  {
    *(v5 + 504) = v3;
  }

  __swift_destroy_boxed_opaque_existential_1(v5 + 232);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7452D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[63];
  v24 = v22[59];
  v64 = v22[44];
  v25 = v22[40];
  v26 = v22[41];
  v27 = v22[39];
  v29 = v22[36];
  v28 = v22[37];
  v30 = swift_task_alloc();
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CD0], sub_1C7458630, v30, v23);
  v32 = v31;

  sub_1C6FD7FC8(v27, &qword_1EC218C50);
  (*(v26 + 8))(v64, v25);
  type metadata accessor for QueryAssetsRetrievalProcessor();
  OUTLINED_FUNCTION_29_20();
  swift_bridgeObjectRetain_n();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v34))
  {
    v35 = OUTLINED_FUNCTION_41_0();
    *v35 = 134217984;
    v36 = *(v32 + 16);

    *(v35 + 4) = v36;

    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v37, v34, "There are %ld event suggestion assets from the user disambiguation");
    OUTLINED_FUNCTION_109();
  }

  else
  {
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRelease_n();
  }

  v38 = v22[53];
  v39 = v22[49];
  v40 = v22[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_40_46(inited, xmmword_1C755BAB0);
  inited[3].n128_u64[0] = v32;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  sub_1C75504DC();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_41_44();
  *v40 = a18;
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v39, v42);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v38, v43);
  OUTLINED_FUNCTION_21_61();
  v57 = v45;
  v58 = v44;
  v59 = v22[46];
  v60 = v22[44];
  v61 = v22[43];
  v62 = v22[42];
  v63 = v22[39];
  v65 = v22[38];
  OUTLINED_FUNCTION_16_66();
  v46 = OUTLINED_FUNCTION_39_41();
  v47(v46);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128_0();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v58, v59, v60, v61, v62, v63, v65, a18, a19, a20, a21, a22);
}

uint64_t sub_1C7453014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  v21 = *(v20 + 328);
  v22 = *(v20 + 312);

  sub_1C6FD7FC8(v22, &qword_1EC218C50);
  v48 = *(v20 + 496);
  v23 = *(v20 + 440);
  v24 = *(v20 + 448);
  v25 = *(v20 + 424);
  v26 = *(v20 + 432);
  v40 = *(v20 + 416);
  v41 = *(v20 + 408);
  v27 = *(v20 + 392);
  v42 = *(v20 + 384);
  v43 = *(v20 + 368);
  v44 = *(v20 + 344);
  v45 = *(v20 + 336);
  v46 = *(v20 + 312);
  v47 = *(v20 + 304);
  v28 = *(v20 + 280);
  (*(v21 + 8))(*(v20 + 352), *(v20 + 320));
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v27, v29);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v25, v30);
  OUTLINED_FUNCTION_70(v28, v28[3]);
  sub_1C754F1AC();
  (*(v23 + 8))(v24, v26);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, a18, a19, a20);
}

uint64_t sub_1C74531A0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 536) = v0;

  if (!v0)
  {
    *(v5 + 544) = v3;
  }

  __swift_destroy_boxed_opaque_existential_1(v5 + 192);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C74532F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[68];
  v24 = v22[64];
  v64 = v22[42];
  v66 = v22[43];
  v25 = v22[40];
  v26 = v22[41];
  v27 = v22[37];
  v28 = v22[38];
  v29 = v22[36];
  v30 = swift_task_alloc();
  *(v30 + 16) = v27;
  *(v30 + 24) = v29;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CD0], sub_1C7458504, v30, v23);
  v32 = v31;

  sub_1C6FD7FC8(v28, &qword_1EC218C50);
  v33 = *(v26 + 8);
  v33(v64, v25);
  v33(v66, v25);
  type metadata accessor for QueryAssetsRetrievalProcessor();
  OUTLINED_FUNCTION_29_20();
  swift_bridgeObjectRetain_n();
  v34 = sub_1C754FEEC();
  v35 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v35))
  {
    v36 = OUTLINED_FUNCTION_41_0();
    *v36 = 134217984;
    v37 = *(v32 + 16);

    *(v36 + 4) = v37;

    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v38, v35, "There are %ld event suggestion assets from the user disambiguation");
    OUTLINED_FUNCTION_109();
  }

  else
  {
    OUTLINED_FUNCTION_29_20();
    swift_bridgeObjectRelease_n();
  }

  v39 = v22[53];
  v40 = v22[49];
  v41 = v22[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_40_46(inited, xmmword_1C755BAB0);
  inited[3].n128_u64[0] = v32;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  sub_1C75504DC();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_41_44();
  *v41 = a18;
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v40, v43);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v39, v44);
  OUTLINED_FUNCTION_21_61();
  v58 = v46;
  v59 = v45;
  v60 = v22[46];
  v61 = v22[44];
  v62 = v22[43];
  v63 = v22[42];
  v65 = v22[39];
  v67 = v22[38];
  OUTLINED_FUNCTION_16_66();
  v47 = OUTLINED_FUNCTION_39_41();
  v48(v47);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128_0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, v60, v61, v62, v63, v65, v67, a18, a19, a20, a21, a22);
}

uint64_t sub_1C74535CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  v22 = *(v20 + 328);
  v21 = *(v20 + 336);
  v23 = *(v20 + 320);
  v24 = *(v20 + 304);

  sub_1C6FD7FC8(v24, &qword_1EC218C50);
  v25 = *(v22 + 8);
  v25(v21, v23);
  v51 = *(v20 + 536);
  v26 = *(v20 + 440);
  v27 = *(v20 + 448);
  v28 = *(v20 + 424);
  v29 = *(v20 + 432);
  v43 = *(v20 + 416);
  v44 = *(v20 + 408);
  v30 = *(v20 + 392);
  v45 = *(v20 + 384);
  v46 = *(v20 + 368);
  v47 = *(v20 + 352);
  v48 = *(v20 + 336);
  v49 = *(v20 + 312);
  v50 = *(v20 + 304);
  v31 = *(v20 + 280);
  v25(*(v20 + 344), *(v20 + 320));
  OUTLINED_FUNCTION_2_128();
  sub_1C74584AC(v30, v32);
  OUTLINED_FUNCTION_0_188();
  sub_1C74584AC(v28, v33);
  OUTLINED_FUNCTION_70(v31, v31[3]);
  sub_1C754F1AC();
  (*(v26 + 8))(v27, v29);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, a18, a19, a20);
}

uint64_t sub_1C7453770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 392) = a3;
  *(v6 + 400) = a4;
  *(v6 + 384) = a2;
  *(v6 + 424) = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320);
  v8 = swift_task_alloc();
  v9 = *(a1 + 16);
  *(v6 + 464) = v8;
  *(v6 + 472) = v9;
  *(v6 + 576) = *(a1 + 24);
  *(v6 + 577) = *(a1 + 25);
  *(v6 + 480) = *(a1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C74538B0, 0, 0);
}

uint64_t sub_1C74538B0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 480);
  OUTLINED_FUNCTION_70(*(v0 + 400), *(*(v0 + 400) + 24));
  sub_1C754F15C();
  v3 = sub_1C7454A8C(v2, v1);
  v5 = v4;
  v7 = v6;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  *(v0 + 512) = v6;
  v8 = sub_1C75504FC();
  v9 = sub_1C71CD938(v8);
  sub_1C6FDE498(v9);
  v11 = v10;
  *(v0 + 520) = v10;

  v12 = swift_task_alloc();
  *(v0 + 528) = v12;
  *v12 = v0;
  v12[1] = sub_1C74539F8;
  v13 = *(v0 + 408);

  return sub_1C7455A18(v3, v5, v7, v11, v0 + 312, v13);
}

uint64_t sub_1C74539F8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 536) = v5;
  *(v3 + 544) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7453B2C()
{
  v69 = v0;
  if (*(v0 + 577) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 552) = v2;
    *v2 = v0;
    v2[1] = sub_1C7454138;
    OUTLINED_FUNCTION_12_30();

    sub_1C7456B8C(v3, v4, v5, v6, v7);
    return;
  }

  v10 = *(v0 + 504);
  v9 = *(v0 + 512);

  sub_1C6FDE390();
  v11 = sub_1C75504DC();
  OUTLINED_FUNCTION_48_29();
  v66 = v12;
  v67 = v13;
  if (!v12)
  {

LABEL_36:
    OUTLINED_FUNCTION_30_46();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_12_30();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_28();
  v65 = 0;
  v15 = (v14 + 32);
  v62 = xmmword_1C755BAB0;
  while (v9 < *(v67 + 16))
  {
    OUTLINED_FUNCTION_72_24();
    memcpy(__dst, v15, sizeof(__dst));
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    QueryToken.personalEvent()();
    if (*(v11 + 16))
    {
      sub_1C6FC2A70();
      if (v16)
      {
        v17 = *(v0 + 456);
        v63 = *(v0 + 464);
        v64 = *(v0 + 448);
        OUTLINED_FUNCTION_32_41();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_33_40(inited, v19, v20, v21, v22, v23, v24, v25, v62);
        sub_1C75504FC();
        sub_1C6FCA460(v0 + 352, v0 + 368);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
        sub_1C75504DC();
        swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = *v1;
        sub_1C6FC7AB4();
        *v1 = __dst[0];
        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
        sub_1C7458520(v63, v17);
        *(v17 + v26) = v10;
        type metadata accessor for PersonalEventBackingItem(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for QueryTokenCategoryType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_137();
        sub_1C745844C(v17, v64, v27);
        OUTLINED_FUNCTION_61_22(v65);
        OUTLINED_FUNCTION_63_25();
        __dst[0] = v26;
        sub_1C6FC2A70();
        OUTLINED_FUNCTION_11_74();
        if (v30)
        {
          goto LABEL_44;
        }

        v10 = v28;
        v31 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310);
        v32 = OUTLINED_FUNCTION_75_19();
        v33 = __dst[0];
        if (v32)
        {
          v34 = sub_1C6FC2A70();
          if ((v31 & 1) != (v35 & 1))
          {
            goto LABEL_39;
          }

          v10 = v34;
        }

        OUTLINED_FUNCTION_62_26();
        if (v31)
        {
          sub_1C6FDD548(v0 + 16);
        }

        else
        {
          v54 = OUTLINED_FUNCTION_65_28();
          sub_1C6FCABD4(v54, v55, MEMORY[0x1E69E7CC0], v33);
        }

        OUTLINED_FUNCTION_73_23();
        OUTLINED_FUNCTION_34_42();
        OUTLINED_FUNCTION_0_188();
        sub_1C74584AC(v17, v56);
        sub_1C6FD7FC8(v31, &qword_1EC216320);
        OUTLINED_FUNCTION_22_64();
        OUTLINED_FUNCTION_3_117();
        sub_1C74583EC(v1, v57, v58);
        v65 = sub_1C6FC0A88;
        goto LABEL_33;
      }
    }

    if (*(v0 + 48))
    {
      if (*(v0 + 48) == 1)
      {
        v10 = "son";
      }

      else
      {
        v10 = "userDisambiguation";
      }

      v36 = OUTLINED_FUNCTION_24_47();

      if ((v36 & 1) == 0)
      {
        sub_1C6FD7FC8(*(v0 + 464), &qword_1EC216320);
        sub_1C6FDD548(v0 + 16);
        goto LABEL_33;
      }
    }

    else
    {
      OUTLINED_FUNCTION_79_19();
    }

    v37 = *(v0 + 464);
    v39 = *(v0 + 432);
    v38 = *(v0 + 440);
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
    sub_1C7458520(v37, v38);
    type metadata accessor for PersonalEventBackingItem(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for QueryTokenCategoryType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_137();
    sub_1C745844C(v38, v39, v41);
    OUTLINED_FUNCTION_61_22(v1);
    OUTLINED_FUNCTION_63_25();
    __dst[0] = v37;
    sub_1C6FC2A70();
    OUTLINED_FUNCTION_11_74();
    if (v30)
    {
      goto LABEL_43;
    }

    v10 = v42;
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310);
    v45 = OUTLINED_FUNCTION_75_19();
    v46 = __dst[0];
    if (v45)
    {
      v47 = sub_1C6FC2A70();
      if ((v44 & 1) != (v48 & 1))
      {
LABEL_39:
        OUTLINED_FUNCTION_12_30();

        sub_1C7551E4C();
        return;
      }

      v10 = v47;
    }

    OUTLINED_FUNCTION_62_26();
    if (v44)
    {
      sub_1C6FDD548(v0 + 16);
    }

    else
    {
      v49 = OUTLINED_FUNCTION_65_28();
      sub_1C6FCABD4(v49, v50, MEMORY[0x1E69E7CC0], v46);
    }

    OUTLINED_FUNCTION_78_17();
    OUTLINED_FUNCTION_34_42();
    OUTLINED_FUNCTION_0_188();
    sub_1C74584AC(v39, v51);
    sub_1C6FD7FC8(v44, &qword_1EC216320);
    OUTLINED_FUNCTION_22_64();
    OUTLINED_FUNCTION_3_117();
    sub_1C74583EC(v40, v52, v53);
    OUTLINED_FUNCTION_17_77();
LABEL_33:
    ++v9;
    v15 += 120;
    if (v66 == v9)
    {

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1C7454138()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 560) = v5;
  *(v3 + 568) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C745428C()
{
  v72 = v0;
  v2 = *(v0 + 416);
  type metadata accessor for QueryAssetsRetrievalProcessor();
  sub_1C75504FC();
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 560);
    v6 = *(v0 + 472);
    v7 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v7 = 136315394;
    sub_1C74510F8(v5);
    v8 = MEMORY[0x1CCA5D090]();
    v1 = v9;

    v10 = sub_1C6F765A4(v8, v1, __dst);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_1C7450C3C(v6);
    v12 = v11;

    v13 = MEMORY[0x1CCA5D090](v12, MEMORY[0x1E69E6158]);
    v15 = v14;

    v2 = sub_1C6F765A4(v13, v15, __dst);

    *(v7 + 14) = v2;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "Grounding result via the graph for the personal event query tokens = %s,\nscoped with %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v7 = *(v0 + 472);
  }

  v16 = *(v0 + 560);
  OUTLINED_FUNCTION_48_29();
  v69 = v17;
  v70 = v18;
  if (!v17)
  {
LABEL_33:

    OUTLINED_FUNCTION_30_46();

    OUTLINED_FUNCTION_25();

    v64();
    return;
  }

  OUTLINED_FUNCTION_57_28();
  v68 = 0;
  v20 = (v19 + 32);
  v65 = xmmword_1C755BAB0;
  while (1)
  {
    if (v7 >= *(v70 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_72_24();
    memcpy(__dst, v20, 0x78uLL);
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    QueryToken.personalEvent()();
    if (*(v16 + 16))
    {
      sub_1C6FC2A70();
      if (v21)
      {
        v22 = *(v0 + 456);
        v66 = *(v0 + 464);
        v67 = *(v0 + 448);
        OUTLINED_FUNCTION_32_41();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_33_40(inited, v24, v25, v26, v27, v28, v29, v30, v65);
        sub_1C75504FC();
        sub_1C6FCA460(v0 + 352, v0 + 368);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
        sub_1C75504DC();
        swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = *v1;
        sub_1C6FC7AB4();
        *v1 = __dst[0];
        v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
        sub_1C7458520(v66, v22);
        *(v22 + v31) = v2;
        type metadata accessor for PersonalEventBackingItem(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for QueryTokenCategoryType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_137();
        sub_1C745844C(v22, v67, v32);
        OUTLINED_FUNCTION_61_22(v68);
        OUTLINED_FUNCTION_63_25();
        __dst[0] = v31;
        sub_1C6FC2A70();
        OUTLINED_FUNCTION_11_74();
        if (v35)
        {
          goto LABEL_41;
        }

        v2 = v33;
        v36 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310);
        v37 = OUTLINED_FUNCTION_76_21();
        v38 = __dst[0];
        if (v37)
        {
          v39 = sub_1C6FC2A70();
          if ((v36 & 1) != (v40 & 1))
          {
            goto LABEL_36;
          }

          v2 = v39;
        }

        OUTLINED_FUNCTION_62_26();
        if (v36)
        {
          sub_1C6FDD548(v0 + 16);
        }

        else
        {
          v59 = OUTLINED_FUNCTION_65_28();
          sub_1C6FCABD4(v59, v60, MEMORY[0x1E69E7CC0], v38);
        }

        OUTLINED_FUNCTION_73_23();
        OUTLINED_FUNCTION_34_42();
        OUTLINED_FUNCTION_0_188();
        sub_1C74584AC(v22, v61);
        sub_1C6FD7FC8(v36, &qword_1EC216320);
        OUTLINED_FUNCTION_22_64();
        OUTLINED_FUNCTION_3_117();
        sub_1C74583EC(v1, v62, v63);
        v68 = sub_1C6FC0A88;
        goto LABEL_32;
      }
    }

    if (!*(v0 + 48))
    {
      break;
    }

    if (*(v0 + 48) == 1)
    {
      v2 = "son";
    }

    else
    {
      v2 = "userDisambiguation";
    }

    v41 = OUTLINED_FUNCTION_24_47();

    if (v41)
    {
      goto LABEL_22;
    }

    sub_1C6FD7FC8(*(v0 + 464), &qword_1EC216320);
    sub_1C6FDD548(v0 + 16);
LABEL_32:
    ++v7;
    v20 += 120;
    if (v69 == v7)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_79_19();
LABEL_22:
  v42 = *(v0 + 464);
  v44 = *(v0 + 432);
  v43 = *(v0 + 440);
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
  sub_1C7458520(v42, v43);
  type metadata accessor for PersonalEventBackingItem(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for QueryTokenCategoryType(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_137();
  sub_1C745844C(v43, v44, v46);
  OUTLINED_FUNCTION_61_22(v1);
  OUTLINED_FUNCTION_63_25();
  __dst[0] = v42;
  sub_1C6FC2A70();
  OUTLINED_FUNCTION_11_74();
  if (v35)
  {
    goto LABEL_40;
  }

  v2 = v47;
  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215310);
  v50 = OUTLINED_FUNCTION_76_21();
  v51 = __dst[0];
  if ((v50 & 1) == 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_62_26();
    if (v49)
    {
      sub_1C6FDD548(v0 + 16);
    }

    else
    {
      v54 = OUTLINED_FUNCTION_65_28();
      sub_1C6FCABD4(v54, v55, MEMORY[0x1E69E7CC0], v51);
    }

    OUTLINED_FUNCTION_78_17();
    OUTLINED_FUNCTION_34_42();
    OUTLINED_FUNCTION_0_188();
    sub_1C74584AC(v44, v56);
    sub_1C6FD7FC8(v49, &qword_1EC216320);
    OUTLINED_FUNCTION_22_64();
    OUTLINED_FUNCTION_3_117();
    sub_1C74583EC(v45, v57, v58);
    OUTLINED_FUNCTION_17_77();
    goto LABEL_32;
  }

  v52 = sub_1C6FC2A70();
  if ((v49 & 1) == (v53 & 1))
  {
    v2 = v52;
    goto LABEL_26;
  }

LABEL_36:

  sub_1C7551E4C();
}

uint64_t sub_1C7454960()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_83_11();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74549E8()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_83_11();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7454A8C(uint64_t a1, int a2)
{
  v140 = a2;
  v3 = sub_1C754F24C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v122 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216358);
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v122 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v139 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v122 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](&v122 - v22);
  v153 = &v122 - v27;
  v28 = MEMORY[0x1E69E7CC0];
  v138 = *(a1 + 16);
  if (v138)
  {
    v144 = v23;
    v129 = v26;
    v133 = v25;
    v123 = v24;
    v156 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
    v29 = 0;
    v137 = a1 + 32;
    v136 = *MEMORY[0x1E69C1808];
    v145 = (v4 + 104);
    v132 = (v4 + 32);
    v146 = (v4 + 8);
    HIDWORD(v131) = *MEMORY[0x1E69C1818];
    v135 = v6;
    *&v30 = 136643075;
    v122 = v30;
    v127 = xmmword_1C7565670;
    v142 = MEMORY[0x1E69E7CC8];
    v143 = v13;
    v148 = v28;
    v149 = MEMORY[0x1E69E7CC8];
    v125 = v3;
    v130 = v9;
    while (1)
    {
      v147 = v29;
      v31 = (v137 + 120 * v29);
      memcpy(__dst, v31, 0x78uLL);
      memcpy(v162, v31, sizeof(v162));
      sub_1C6FCA6E4(__dst, v161);
      v32 = v153;
      QueryToken.personalEvent()();
      v33 = v144;
      v34 = *v145;
      (*v145)(v144, v136, v3);
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v3);
      v35 = *(v9 + 48);
      sub_1C7458520(v32, v13);
      sub_1C7458520(v33, &v13[v35]);
      if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
      {
        break;
      }

      v38 = v129;
      sub_1C7458520(v13, v129);
      if (__swift_getEnumTagSinglePayload(&v13[v35], 1, v3) == 1)
      {
        sub_1C6FD7FC8(v144, &qword_1EC216320);
        (*v146)(v38, v3);
LABEL_8:
        sub_1C6FD7FC8(v13, &qword_1EC216358);
        goto LABEL_9;
      }

      v44 = v126;
      (*v132)(v126, &v13[v35], v3);
      sub_1C74585C8();
      v45 = sub_1C755063C();
      v46 = *v146;
      (*v146)(v44, v3);
      sub_1C6FD7FC8(v144, &qword_1EC216320);
      v46(v38, v3);
      v13 = v143;
      sub_1C6FD7FC8(v143, &qword_1EC216320);
      if (v45)
      {
        goto LABEL_18;
      }

LABEL_9:
      v39 = v133;
      v34(v133, HIDWORD(v131), v3);
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v3);
      v40 = *(v9 + 48);
      v41 = v134;
      sub_1C7458520(v153, v134);
      sub_1C7458520(v39, v41 + v40);
      if (__swift_getEnumTagSinglePayload(v41, 1, v3) == 1)
      {
        sub_1C6FD7FC8(v39, &qword_1EC216320);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41 + v40, 1, v3);
        v37 = v41;
        if (EnumTagSinglePayload != 1)
        {
          goto LABEL_14;
        }

LABEL_11:
        sub_1C6FD7FC8(v37, &qword_1EC216320);
LABEL_18:
        sub_1C6FCA6E4(__dst, v162);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB3514();
          v148 = v120;
        }

        v52 = *(v148 + 16);
        if (v52 >= *(v148 + 24) >> 1)
        {
          sub_1C6FB3514();
          v148 = v121;
        }

        v53 = v148;
        *(v148 + 16) = v52 + 1;
        memcpy((v53 + 120 * v52 + 32), __dst, 0x78uLL);
        goto LABEL_23;
      }

      v43 = v123;
      sub_1C7458520(v41, v123);
      if (__swift_getEnumTagSinglePayload(v41 + v40, 1, v3) == 1)
      {
        sub_1C6FD7FC8(v133, &qword_1EC216320);
        (*v146)(v43, v3);
LABEL_14:
        sub_1C6FD7FC8(v134, &qword_1EC216358);
        goto LABEL_23;
      }

      v47 = v126;
      (*v132)(v126, (v41 + v40), v3);
      sub_1C74585C8();
      v48 = sub_1C755063C();
      v49 = v41;
      v50 = *v146;
      v51 = v47;
      v13 = v143;
      (*v146)(v51, v3);
      sub_1C6FD7FC8(v133, &qword_1EC216320);
      v50(v43, v3);
      sub_1C6FD7FC8(v49, &qword_1EC216320);
      if (v48)
      {
        goto LABEL_18;
      }

LABEL_23:
      v159 = MEMORY[0x1E69E7CD0];
      v160 = MEMORY[0x1E69E7CD0];
      sub_1C75504FC();
      v54 = sub_1C7073450();
      v55 = v141;
      sub_1C7458520(v153, v141);
      v56 = __swift_getEnumTagSinglePayload(v55, 1, v3);
      v150 = v54;
      if (v56 == 1)
      {
        sub_1C6FD7FC8(v55, &qword_1EC216320);
        v57 = v54;
        sub_1C70F4C68(v162, v57, v58, v59, v60, v61, v62, v63, v122, *(&v122 + 1), v123, v124, v125, v126, v127, *(&v127 + 1), v128, v129, v130, v131, v132, v133);

        v64 = v57;
        sub_1C70F4C68(v162, v64, v65, v66, v67, v68, v69, v70, v122, *(&v122 + 1), v123, v124, v125, v126, v127, *(&v127 + 1), v128, v129, v130, v131, v132, v133);
      }

      else
      {
        (*v132)(v135, v55, v3);
        v71 = sub_1C754F20C();
        v72 = sub_1C706D154(v71);
        v161[0] = v72;
        v73 = sub_1C754F1FC();
        if (v74)
        {
          sub_1C70F082C(v162, v73, v74);

          v75 = v161[0];
        }

        else
        {
          v75 = v72;
        }

        v76 = *(v75 + 16);
        if (v76)
        {
          v162[0] = MEMORY[0x1E69E7CC0];
          v152 = v75;
          sub_1C755195C();
          v78 = sub_1C719D92C(v152);
          result = v152;
          v81 = v80;
          v82 = 0;
          v158 = v152 + 56;
          v154 = v80;
          v155 = v76;
          v151 = v152 + 64;
          while ((v78 & 0x8000000000000000) == 0 && v78 < 1 << *(result + 32))
          {
            v83 = v78 >> 6;
            if ((*(v158 + 8 * (v78 >> 6)) & (1 << v78)) == 0)
            {
              goto LABEL_71;
            }

            if (*(result + 36) != v81)
            {
              goto LABEL_72;
            }

            v84 = result;
            v157 = v77;
            sub_1C75504FC();
            sub_1C7073450();
            sub_1C755192C();
            sub_1C755196C();
            sub_1C755197C();
            result = sub_1C755193C();
            if (v157)
            {
              goto LABEL_76;
            }

            v85 = 1 << *(v84 + 32);
            if (v78 >= v85)
            {
              goto LABEL_73;
            }

            v86 = *(v158 + 8 * v83);
            if ((v86 & (1 << v78)) == 0)
            {
              goto LABEL_74;
            }

            result = v84;
            if (*(v84 + 36) != v81)
            {
              goto LABEL_75;
            }

            v87 = v86 & (-2 << (v78 & 0x3F));
            if (v87)
            {
              v85 = __clz(__rbit64(v87)) | v78 & 0x7FFFFFFFFFFFFFC0;
              v88 = v155;
            }

            else
            {
              v89 = v83 << 6;
              v90 = v83 + 1;
              v91 = (v151 + 8 * v83);
              v88 = v155;
              while (v90 < (v85 + 63) >> 6)
              {
                v93 = *v91++;
                v92 = v93;
                v89 += 64;
                ++v90;
                if (v93)
                {
                  sub_1C6F9ED50(v78, v81, 0);
                  result = v152;
                  v85 = __clz(__rbit64(v92)) + v89;
                  goto LABEL_45;
                }
              }

              sub_1C6F9ED50(v78, v81, 0);
              result = v152;
            }

LABEL_45:
            v77 = 0;
            ++v82;
            v78 = v85;
            v81 = v154;
            if (v82 == v88)
            {

              v94 = v162[0];
              v3 = v125;
              v95 = v135;
              v9 = v130;
              v13 = v143;
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          return result;
        }

        v94 = MEMORY[0x1E69E7CC0];
        v95 = v135;
LABEL_48:
        v96 = sub_1C75504FC();
        sub_1C7397E58(v96);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
        inited = swift_initStackObject();
        *(inited + 16) = v127;
        v98 = v150;
        *(inited + 32) = v150;
        v162[0] = inited;
        v99 = v98;
        sub_1C6FD2528(v94);
        sub_1C7397E58(v162[0]);
        (*v146)(v95, v3);
      }

      v100 = v139;
      sub_1C7458520(v153, v139);
      if (__swift_getEnumTagSinglePayload(v100, 1, v3) == 1)
      {
        sub_1C6FD7FC8(v100, &qword_1EC216320);
      }

      else
      {
        v101 = sub_1C754F23C();
        v103 = v102;
        (*v146)(v100, v3);
        sub_1C745788C(v162);
        if (v162[1])
        {
          v161[0] = v162[0];
          v161[1] = v162[1];
          v161[2] = v162[2];
          v104 = PersonalEventQueryExpansionDataSource.localizedExpansionQueries(for:)();

          type metadata accessor for QueryAssetsRetrievalProcessor();
          sub_1C75504FC();
          sub_1C75504FC();
          v105 = sub_1C754FEEC();
          v106 = sub_1C755117C();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v162[0] = v108;
            *v107 = v122;
            v109 = MEMORY[0x1CCA5D090](v104, MEMORY[0x1E69E6158]);
            v111 = sub_1C6F765A4(v109, v110, v162);

            *(v107 + 4) = v111;
            v3 = v125;
            *(v107 + 12) = 2085;
            v112 = sub_1C6F765A4(v101, v103, v162);

            *(v107 + 14) = v112;
            _os_log_impl(&dword_1C6F5C000, v105, v106, "Adding personal event expansion queries %{sensitive}s to broaden the assets retrieval for meaning label %{sensitive}s", v107, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1CCA5F8E0](v108, -1, -1);
            MEMORY[0x1CCA5F8E0](v107, -1, -1);
          }

          else
          {
          }

          v113 = MEMORY[0x1E69E7CC0];
          v114 = *(v104 + 16);
          if (v114)
          {
            v162[0] = MEMORY[0x1E69E7CC0];
            sub_1C755195C();
            v115 = v104 + 40;
            do
            {
              sub_1C75504FC();
              sub_1C7073450();
              sub_1C755192C();
              sub_1C755196C();
              sub_1C755197C();
              sub_1C755193C();
              v115 += 16;
              --v114;
            }

            while (v114);

            v116 = v162[0];
          }

          else
          {

            v116 = v113;
          }

          v117 = sub_1C75504FC();
          sub_1C7397E58(v117);
          sub_1C7397E58(v116);
          v9 = v130;
        }

        else
        {
        }

        v13 = v143;
      }

      sub_1C739C9A4(v160);

      v118 = v149;
      swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v118;
      sub_1C6FC8DEC();
      v149 = v162[0];
      if (v140)
      {
        sub_1C739C9A4(v159);

        v119 = v142;
        swift_isUniquelyReferenced_nonNull_native();
        v162[0] = v119;
        sub_1C6FC8DEC();
        sub_1C6FDD548(__dst);

        sub_1C6FD7FC8(v153, &qword_1EC216320);
        v142 = v162[0];
      }

      else
      {
        sub_1C6FDD548(__dst);

        sub_1C6FD7FC8(v153, &qword_1EC216320);
      }

      v29 = v147 + 1;
      if (v147 + 1 == v138)
      {
        return v148;
      }
    }

    sub_1C6FD7FC8(v33, &qword_1EC216320);
    v36 = __swift_getEnumTagSinglePayload(&v13[v35], 1, v3);
    v37 = v13;
    if (v36 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v148 = MEMORY[0x1E69E7CC0];
  v149 = MEMORY[0x1E69E7CC8];
  v142 = MEMORY[0x1E69E7CC8];
  return v148;
}

uint64_t sub_1C7455A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[30] = a6;
  v7[31] = v6;
  v7[28] = a4;
  v7[29] = a5;
  v7[26] = a2;
  v7[27] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C7455A40, 0, 0);
}

void sub_1C7455A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = *(v22 + 208);
  OUTLINED_FUNCTION_70(*(v22 + 232), *(*(v22 + 232) + 24));
  sub_1C754F15C();
  *(v22 + 200) = MEMORY[0x1E69E7CC8];
  if (*(v23 + 16))
  {
    v24 = *(v22 + 208);
    v27 = *(v24 + 64);
    v26 = v24 + 64;
    v25 = v27;
    v102 = v22 + 136;
    v28 = -1;
    v29 = -1 << *(*(v22 + 208) + 32);
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v30 = v28 & v25;
    v31 = (63 - v29) >> 6;
    v112 = *(v22 + 208);
    sub_1C75504FC();
    v32 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    v109 = v31;
    v110 = v26;
    v107 = v22;
    while (1)
    {
      *(v22 + 256) = v33;
      if (!v30)
      {
        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v31)
          {

            *(v22 + 320) = 0;
            sub_1C6FDC2F0(v22 + 56);
            v56 = swift_task_alloc();
            *(v22 + 264) = v56;
            *v56 = v22;
            v56[1] = sub_1C745627C;
            OUTLINED_FUNCTION_64_22();
            goto LABEL_85;
          }

          v30 = *(v26 + 8 * v34);
          ++v32;
          if (v30)
          {
            v32 = v34;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_89;
      }

LABEL_10:
      v35 = *(*(v112 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v30)))));
      v36 = v35 >> 62;
      if (v35 >> 62)
      {
        v37 = sub_1C75516BC();
      }

      else
      {
        v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = v33 >> 62;
      if (v33 >> 62)
      {
        v39 = sub_1C75516BC();
      }

      else
      {
        v39 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v39 + v37;
      if (__OFADD__(v39, v37))
      {
        goto LABEL_90;
      }

      sub_1C75504FC();
      v116 = v37;
      v118 = v35;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v38)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_26_4();
      if (v41 < v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      v30 &= v30 - 1;
      v43 = *(v42 + 16);
      v44 = v41 - v43;
      v45 = v42 + 8 * v43;
      v114 = v42;
      if (v36)
      {
        v47 = sub_1C75516BC();
        if (!v47)
        {
          goto LABEL_36;
        }

        v48 = v47;
        v105 = sub_1C75516BC();
        if (v44 < v105)
        {
          goto LABEL_96;
        }

        if (v48 < 1)
        {
          goto LABEL_97;
        }

        v103 = v33;
        OUTLINED_FUNCTION_0_181();
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
        for (i = 0; i != v48; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
          v50 = sub_1C6FDD09C(v102, i, v118);
          v52 = *v51;
          v50(v102, 0);
          *(v45 + 32 + 8 * i) = v52;
        }

        v46 = v105;
        v22 = v107;
        v33 = v103;
LABEL_32:

        v31 = v109;
        v26 = v110;
        if (v46 < v116)
        {
          goto LABEL_91;
        }

        if (v46 > 0)
        {
          v53 = *(v114 + 16);
          v54 = __OFADD__(v53, v46);
          v55 = v53 + v46;
          if (v54)
          {
            goto LABEL_92;
          }

          *(v114 + 16) = v55;
        }
      }

      else
      {
        v46 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
          if (v44 < v46)
          {
            goto LABEL_95;
          }

          sub_1C6F65BE8(0, &qword_1EDD0CE30);
          swift_arrayInitWithCopy();
          goto LABEL_32;
        }

LABEL_36:

        v31 = v109;
        v26 = v110;
        if (v116 > 0)
        {
          goto LABEL_91;
        }
      }
    }

    if (v38)
    {
LABEL_20:
      sub_1C75516BC();
    }

LABEL_21:
    v33 = sub_1C75518CC();
    OUTLINED_FUNCTION_26_4();
    goto LABEL_22;
  }

  if (!*(*(v22 + 216) + 16))
  {
    __swift_destroy_boxed_opaque_existential_1(v22 + 16);
    OUTLINED_FUNCTION_58_30();
    OUTLINED_FUNCTION_128_0();

    v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    return;
  }

  v104 = v22 + 168;
  *(v22 + 120) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v22 + 128) = &off_1F46ACFD0;
  v57 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v58 = v57;
  if (v57)
  {
    v59 = [v57 integerValue];
  }

  else
  {
    v59 = 0;
  }

  v68 = *(v22 + 216);
  *(v22 + 96) = 5;
  *(v22 + 104) = v59;
  *(v22 + 112) = v58 == 0;
  v69 = v68 + 64;
  OUTLINED_FUNCTION_10();
  v72 = v71 & v70;
  v74 = (63 - v73) >> 6;
  v117 = v75;
  sub_1C75504FC();
  v76 = 0;
  v77 = MEMORY[0x1E69E7CC0];
  v113 = v74;
  v115 = v69;
  v108 = v22;
  while (1)
  {
    *(v22 + 288) = v77;
    if (!v72)
    {
      break;
    }

LABEL_54:
    v79 = *(*(v117 + 56) + ((v76 << 9) | (8 * __clz(__rbit64(v72)))));
    if (v79 >> 62)
    {
      v80 = sub_1C75516BC();
    }

    else
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v81 = v77 >> 62;
    if (v77 >> 62)
    {
      v82 = OUTLINED_FUNCTION_81_22();
    }

    else
    {
      v82 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v82 + v80;
    if (__OFADD__(v82, v80))
    {
      goto LABEL_93;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v81)
      {
LABEL_64:
        OUTLINED_FUNCTION_81_22();
      }

LABEL_65:
      v77 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_66;
    }

    if (v81)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_26_4();
    if (v84 < v83)
    {
      goto LABEL_65;
    }

LABEL_66:
    v72 &= v72 - 1;
    v86 = *(v85 + 16);
    v87 = v84 - v86;
    v88 = v85 + 8 * v86;
    v119 = v85;
    if (v79 >> 62)
    {
      v91 = sub_1C75516BC();
      if (v91)
      {
        v92 = v91;
        v93 = sub_1C75516BC();
        if (v87 < v93)
        {
          goto LABEL_100;
        }

        if (v92 < 1)
        {
          goto LABEL_101;
        }

        v106 = v93;
        v111 = v77;
        OUTLINED_FUNCTION_0_181();
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
        for (j = 0; j != v92; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
          v95 = sub_1C6FDD09C(v104, j, v79);
          v97 = *v96;
          v95(v104, 0);
          *(v88 + 32 + 8 * j) = v97;
        }

        v77 = v111;
        v22 = v108;
        v90 = v106;
        goto LABEL_76;
      }

LABEL_80:

      v74 = v113;
      v69 = v115;
      if (v80 > 0)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v89 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v89)
      {
        goto LABEL_80;
      }

      if (v87 < v89)
      {
        goto LABEL_99;
      }

      v90 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C6F65BE8(0, &qword_1EDD0CE30);
      swift_arrayInitWithCopy();
LABEL_76:

      v74 = v113;
      v69 = v115;
      if (v90 < v80)
      {
        goto LABEL_94;
      }

      if (v90 > 0)
      {
        v98 = *(v119 + 16);
        v54 = __OFADD__(v98, v90);
        v99 = v98 + v90;
        if (v54)
        {
          goto LABEL_98;
        }

        *(v119 + 16) = v99;
      }
    }
  }

  while (1)
  {
    v78 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v78 >= v74)
    {

      *(v22 + 321) = 1;
      v100 = swift_task_alloc();
      *(v22 + 296) = v100;
      *v100 = v22;
      OUTLINED_FUNCTION_15_80(v100);
      OUTLINED_FUNCTION_64_22();
LABEL_85:
      OUTLINED_FUNCTION_128_0();

      sub_1C71074E0();
      return;
    }

    v72 = *(v69 + 8 * v78);
    ++v76;
    if (v72)
    {
      v76 = v78;
      goto LABEL_54;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
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
}

uint64_t sub_1C745627C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1(v5 + 56);
  }

  else
  {
    *(v5 + 280) = v3;
    __swift_destroy_boxed_opaque_existential_1(v5 + 56);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C74563A8()
{
  v1 = v0;
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 208);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C7458590, v6, v2);
  v8 = v7;

  sub_1C7108C18(v5, v8, (v0 + 200));

  if (!*(*(v0 + 216) + 16))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v12 = *(v0 + 200);
    v13 = *(v0 + 8);

    v13(v12);
    return;
  }

  v48 = v0 + 168;
  *(v0 + 120) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 128) = &off_1F46ACFD0;
  v9 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0;
  }

  v14 = *(v0 + 216);
  *(v0 + 96) = 5;
  *(v0 + 104) = v11;
  *(v0 + 112) = v10 == 0;
  v15 = v14 + 64;
  OUTLINED_FUNCTION_10();
  v18 = v17 & v16;
  v20 = (63 - v19) >> 6;
  sub_1C75504FC();
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v53 = v20;
  v54 = v14 + 64;
  v49 = v0;
  v50 = v14;
  while (1)
  {
    *(v1 + 288) = v22;
    if (!v18)
    {
      break;
    }

LABEL_14:
    v24 = *(*(v14 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v24 >> 62)
    {
      v25 = sub_1C75516BC();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v22 >> 62;
    if (v22 >> 62)
    {
      v27 = OUTLINED_FUNCTION_81_22();
    }

    else
    {
      v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v27 + v25;
    if (__OFADD__(v27, v25))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    sub_1C75504FC();
    v56 = v25;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v26)
      {
LABEL_24:
        OUTLINED_FUNCTION_81_22();
      }

LABEL_25:
      v22 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_26;
    }

    if (v26)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_26_4();
    if (v29 < v28)
    {
      goto LABEL_25;
    }

LABEL_26:
    v18 &= v18 - 1;
    v31 = *(v30 + 16);
    v32 = v29 - v31;
    v33 = v30 + 8 * v31;
    v55 = v30;
    if (v24 >> 62)
    {
      v36 = sub_1C75516BC();
      if (!v36)
      {
        goto LABEL_40;
      }

      v37 = v36;
      v38 = sub_1C75516BC();
      if (v32 < v38)
      {
        goto LABEL_52;
      }

      if (v37 < 1)
      {
        goto LABEL_53;
      }

      v51 = v38;
      v52 = v22;
      v39 = v33 + 32;
      OUTLINED_FUNCTION_0_181();
      sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
      for (i = 0; i != v37; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
        v41 = sub_1C6FDD09C(v48, i, v24);
        v43 = *v42;
        v41(v48, 0);
        *(v39 + 8 * i) = v43;
      }

      v1 = v49;
      v14 = v50;
      v22 = v52;
      v35 = v51;
LABEL_36:

      v20 = v53;
      v15 = v54;
      if (v35 < v56)
      {
        goto LABEL_49;
      }

      if (v35 > 0)
      {
        v44 = *(v55 + 16);
        v45 = __OFADD__(v44, v35);
        v46 = v44 + v35;
        if (v45)
        {
          goto LABEL_50;
        }

        *(v55 + 16) = v46;
      }
    }

    else
    {
      v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        if (v32 < v34)
        {
          goto LABEL_51;
        }

        v35 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        swift_arrayInitWithCopy();
        goto LABEL_36;
      }

LABEL_40:

      v20 = v53;
      v15 = v54;
      if (v56 > 0)
      {
        goto LABEL_49;
      }
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v23 >= v20)
    {
      break;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_14;
    }
  }

  *(v1 + 321) = 1;
  v47 = swift_task_alloc();
  *(v1 + 296) = v47;
  *v47 = v1;
  OUTLINED_FUNCTION_15_80(v47);
  OUTLINED_FUNCTION_64_22();

  sub_1C71074E0();
}

uint64_t sub_1C74568A4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 304) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 312) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C74569E0()
{
  v1 = v0[39];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[27];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C74585AC, v5, v1);
  v7 = v6;

  sub_1C7108C18(v4, v7, v0 + 25);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v8 = OUTLINED_FUNCTION_58_30();

  return v9(v8);
}

uint64_t sub_1C7456ACC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7456B28()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C7456B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[52] = a5;
  v6[53] = v5;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7456BB4, 0, 0);
}

void sub_1C7456BB4()
{
  v42 = v0;
  v1 = *(v0 + 392);
  v2 = *(v1 + 16);
  if (*(*(v0 + 384) + 16))
  {
    v3 = v2 > 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    sub_1C6FDE390();
    sub_1C75504DC();
  }

  else
  {
    v4 = *(v0 + 424);
    sub_1C710D7C4(v1);
    v6 = v5;
    v7 = *v4;
    *(v0 + 432) = *v4;
    *(v0 + 480) = *(v4 + 8);
    sub_1C75504FC();
    if (!v2)
    {
      v16 = static StoryGenerationUtilities.mePersonUUID(in:)(v7);
      if (v17)
      {
        v18 = v16;
        v9 = v17;
        v19 = *(v0 + 424);

        v20 = *v19;
        v21 = *(v19 + 16);
        v22 = *(v4 + 8);
        sub_1C75504FC();
        v23 = v20;

        v24 = objc_autoreleasePoolPush();
        sub_1C71C7E5C(v18, v9, v23, v22, v21, &v40);
        objc_autoreleasePoolPop(v24);
        swift_bridgeObjectRelease_n();

        v8 = v40;
        type metadata accessor for QueryAssetsRetrievalProcessor();
        sub_1C75504FC();
        v35 = sub_1C754FEEC();
        v36 = sub_1C755117C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = OUTLINED_FUNCTION_41_0();
          v38 = swift_slowAlloc();
          v40 = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_1C6F765A4(v18, v9, &v40);
          _os_log_impl(&dword_1C6F5C000, v35, v36, "Scoped the personal event moment grounding to Me person %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

LABEL_10:
        *(v0 + 440) = v9;
        *(v0 + 448) = v8;
        type metadata accessor for QueryAssetsRetrievalProcessor();
        v10 = sub_1C754FEEC();
        v11 = sub_1C75511BC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = OUTLINED_FUNCTION_41_0();
          v13 = swift_slowAlloc();
          v39 = v13;
          *v12 = 136315138;
          if (v8)
          {
            v14 = 0xE400000000000000;
            v15 = 1701736302;
          }

          else
          {
            v40 = 0;
            v41 = 0xE000000000000000;
            *(v0 + 376) = 0;
            v30 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v30);

            v15 = v40;
            v14 = v41;
          }

          v31 = sub_1C6F765A4(v15, v14, &v39);

          *(v12 + 4) = v31;
          _os_log_impl(&dword_1C6F5C000, v10, v11, "Grounded personal event query tokens via xpc call, scoped with %s assets", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        OUTLINED_FUNCTION_70((*(v0 + 424) + 64), *(*(v0 + 424) + 88));
        sub_1C75504FC();
        v32 = swift_task_alloc();
        *(v0 + 456) = v32;
        *v32 = v0;
        v32[1] = sub_1C74570E8;
        OUTLINED_FUNCTION_94_1();

        __asm { BRAA            X8, X16 }
      }
    }

    if (v6)
    {
      v8 = *(v0 + 400);
      v9 = v6;
      goto LABEL_10;
    }

    type metadata accessor for QueryAssetsRetrievalProcessor();
    v25 = sub_1C754FEEC();
    v26 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "No associated person uuid for personal event grounding via the graph, immediately return", v27, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C6FDE390();
    sub_1C75504DC();
  }

  OUTLINED_FUNCTION_94_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C74570E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 464) = v5;
  *(v3 + 472) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C74571F8()
{
  v49 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(*(v0 + 432), *(v0 + 480), 0);
  v3 = 0;
  OUTLINED_FUNCTION_10();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;
  v42 = *(v0 + 472);
  v45 = v9;
  v46 = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    do
    {
      if (!v6)
      {
        while (1)
        {
          v11 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v11 >= v8)
          {

            OUTLINED_FUNCTION_130_0();

            __asm { BRAA            X2, X16 }
          }

          v6 = *(v1 + 64 + 8 * v11);
          ++v3;
          if (v6)
          {
            v3 = v11;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_30:
        OUTLINED_FUNCTION_130_0();
        return;
      }

LABEL_7:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v3 << 6);
      memcpy((v0 + 16), (*(v1 + 48) + 120 * v13), 0x78uLL);
      v14 = *(*(v1 + 56) + 8 * v13);
    }

    while (!*(v14 + 16));
    v47 = v10;
    v36 = v2;
    if (v2)
    {
      v38 = *(v0 + 448);
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C75604F0;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1C6F6D524();
      *(v15 + 32) = 1684632949;
      *(v15 + 40) = 0xE400000000000000;
      *(v15 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
      OUTLINED_FUNCTION_40_2();
      *(v15 + 104) = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0);
      *(v15 + 72) = v38;
      sub_1C75504FC();
      sub_1C6FCA6E4(v0 + 16, v0 + 256);
      sub_1C75504FC();
      OUTLINED_FUNCTION_13_67();
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
    }

    else
    {
      sub_1C6FCA6E4(v0 + 16, v0 + 136);
      sub_1C75504FC();
    }

    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C75604F0;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C6F6D524();
    *(v16 + 32) = 0x752E746E656D6F6DLL;
    *(v16 + 40) = 0xEB00000000646975;
    *(v16 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_40_2();
    *(v16 + 104) = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0);
    *(v16 + 72) = v14;
    sub_1C75504FC();
    OUTLINED_FUNCTION_13_67();
    v17 = sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    v40 = *(v0 + 424);
    v35 = v17;
    sub_1C7550BEC();
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    v18 = sub_1C6F6E5C4();
    [v45 setInternalPredicate_];

    v37 = *v40;
    LOWORD(v40) = *(v40 + 8);
    v19 = v45;
    v20 = objc_autoreleasePoolPush();
    sub_1C71C8640(v14, v45, v37, v40, &v48);
    objc_autoreleasePoolPop(v20);
    if (v42)
    {
      goto LABEL_30;
    }

    v39 = v48;
    swift_isUniquelyReferenced_nonNull_native();
    v48 = v46;
    v43 = sub_1C6FC2A70();
    v41 = v21;
    if (__OFADD__(v46[2], (v21 & 1) == 0))
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C158);
    v22 = sub_1C7551A2C();
    v23 = v48;
    if (v22)
    {
      v24 = sub_1C6FC2A70();
      v26 = v41;
      v2 = v36;
      if ((v41 & 1) != (v25 & 1))
      {
        OUTLINED_FUNCTION_130_0();

        sub_1C7551E4C();
        return;
      }
    }

    else
    {
      v2 = v36;
      v24 = v43;
      v26 = v41;
    }

    v10 = MEMORY[0x1E69E7CC0];
    v46 = v23;
    if (v26)
    {
      v27 = (v23[7] + 16 * v24);
      *v27 = v14;
      v27[1] = v39;

      sub_1C6FDD548(v0 + 16);
    }

    else
    {
      v23[(v24 >> 6) + 8] |= 1 << v24;
      v44 = v24;
      memcpy((v23[6] + 120 * v24), (v0 + 16), 0x78uLL);
      v28 = (v23[7] + 16 * v44);
      *v28 = v14;
      v28[1] = v39;
      v29 = v23[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_35;
      }

      v23[2] = v31;
    }

    v42 = 0;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1C7457824()
{
  OUTLINED_FUNCTION_42();

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_43();

  return v0();
}

double sub_1C745788C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C70A98F0();
  result = 1.35441148e-306;
  *a1 = xmmword_1C758C7C0;
  *(a1 + 16) = v2;
  return result;
}

void sub_1C7457A20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' personal event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75B0F00);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C7457CF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Embedding retrieval failed for '%{private}@' personal event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000025, 0x80000001C75A2CF0);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75B0F00);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C7457FC0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 16))
  {
    v7 = *v3;
    v8 = *(v3 + 8);
    v9 = *(v3 + 16);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v10 = v7;

    static QueryDisambiguationAssetFetcher.fetchEventSuggestionAssetUUIDs(forMomentUUIDs:shouldApplyCurationFilter:storyPhotoLibraryContext:eventRecorder:)(a1, 0, &v15, a3);
    v11 = v15;

    if (a2)
    {

      sub_1C7069A44();
    }
  }

  else
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    v12 = sub_1C754FEEC();
    v13 = sub_1C755119C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "There are no selected moments from user that can be used to fetch the assets", v14, 2u);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }
  }
}

void sub_1C7458104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v6 = *a2;
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v6;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' personal event token that is disambiguated via the date picker: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD00000000000003ALL, 0x80000001C75B0E50);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    v19 = sub_1C75504FC();
    sub_1C73978C4(v19);
  }
}

void *sub_1C745838C(uint64_t a1, const void *a2)
{
  v3 = *v2;
  *(v3 + 16) = a1 + 1;
  return memcpy((v3 + 120 * a1 + 32), a2, 0x78uLL);
}

uint64_t sub_1C74583EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C745844C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C74584AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7458520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C74585C8()
{
  result = qword_1EC216370;
  if (!qword_1EC216370)
  {
    sub_1C754F24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216370);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_47()
{

  return sub_1C7551DBC();
}

__n128 OUTLINED_FUNCTION_32_41()
{
  result = v0[2];
  v0[22] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_46(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  result = *(v3 + 40);
  *(v2 + 32) = *(v3 + 32);
  *(v2 + 40) = result;
  return result;
}

void OUTLINED_FUNCTION_50_33()
{

  sub_1C6FB3514();
}

uint64_t OUTLINED_FUNCTION_53_36()
{

  return sub_1C7551DBC();
}

void *OUTLINED_FUNCTION_54_32(void *a1)
{

  return memcpy(a1, (v1 + 168), 0x78uLL);
}

void OUTLINED_FUNCTION_56_30()
{
  *(v0 + 648) = v4;
  *(v0 + 656) = v2;
  *(v0 + 664) = v1;
  *(v0 + 672) = v3;
}

uint64_t OUTLINED_FUNCTION_61_22(uint64_t a1)
{
  sub_1C6F6E5B4(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_74_16()
{

  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
}

uint64_t OUTLINED_FUNCTION_75_19()
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_76_21()
{

  return sub_1C7551A2C();
}

uint64_t OUTLINED_FUNCTION_78_17()
{

  return sub_1C6FB0BE4();
}

uint64_t OUTLINED_FUNCTION_79_19()
{
}

uint64_t OUTLINED_FUNCTION_80_15(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_1C6FCA6E4(v2 + 168, v2 + 408);
}

uint64_t OUTLINED_FUNCTION_81_22()
{

  return sub_1C75516BC();
}

uint64_t sub_1C7458888(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C745E8CC(a1, sub_1C745EB60, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t StoryMusicCurator.packageMaestroKeywords(using:)(uint64_t a1)
{
  if (sub_1C6FB6304() >= 1)
  {
    v2 = 0;
    v24 = sub_1C6FB6304();
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v24 == v2)
      {
        return v3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1CCA5DDD0](v2, a1);
      }

      else
      {
        if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v4 = *(a1 + 8 * v2 + 32);
      }

      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      v7 = *(v4 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v8 = sub_1C6F78124(v6, v5);
      if (__OFADD__(v3[2], (v9 & 1) == 0))
      {
        goto LABEL_27;
      }

      v10 = v8;
      v11 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340);
      if (sub_1C7551A2C())
      {
        v12 = sub_1C6F78124(v6, v5);
        if ((v11 & 1) != (v13 & 1))
        {
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        v10 = v12;
      }

      v14 = v7;
      if (v11)
      {
        *(v3[7] + 4 * v10) = v14;
      }

      else
      {
        v3[(v10 >> 6) + 8] |= 1 << v10;
        v15 = (v3[6] + 16 * v10);
        *v15 = v6;
        v15[1] = v5;
        *(v3[7] + 4 * v10) = v14;
        v16 = v3[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_28;
        }

        v3[2] = v18;
        sub_1C75504FC();
      }

      ++v2;
    }
  }

  if (qword_1EDD0ED88 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_46();
  }

  v20 = sub_1C754FF1C();
  __swift_project_value_buffer(v20, &dword_1EDD28D48);
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "(Keywords) No maestro keywords found for curation. Falling back to generic", v23, 2u);
    OUTLINED_FUNCTION_109();
  }

  return sub_1C75504DC();
}

uint64_t sub_1C7458BF0()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C7458CB0;
  OUTLINED_FUNCTION_88_0();

  return StoryMusicCurator.generateMusicKeywords(forStoryPrompt:keywords:with:shouldTokenizeInput:eventRecorder:)();
}

uint64_t sub_1C7458CB0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 24) = v0;

  if (!v0)
  {
    *(v5 + 32) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7458DBC()
{
  v6 = v0;
  v1 = *(v0 + 24);
  static StoryMusicEmbeddingTerms.filterKeywordsBelowTermThreshold(from:minScoreThreshold:)(*(v0 + 32), 0x3FE4CCCCCCCCCCCDLL, 0);
  OUTLINED_FUNCTION_24_2();

  v2 = sub_1C75504FC();
  v5 = sub_1C71CC894(v2);
  sub_1C70CCDF0(&v5);
  if (v1)
  {
  }

  else
  {

    OUTLINED_FUNCTION_116();

    return v4();
  }
}

uint64_t sub_1C7458E94()
{
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v1 = *(v0 + 24);
  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, &dword_1EDD28D48);
  v3 = v1;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = OUTLINED_FUNCTION_41_0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v11, v5, "(Keywords) Falling back to generic curation since generateMusicKeywords failed with error: %@");
    sub_1C6FC15D8(v8);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  v12 = *(v0 + 24);

  OUTLINED_FUNCTION_116();
  v14 = MEMORY[0x1E69E7CC0];

  return v13(v14);
}

uint64_t StoryMusicCurator.generateMusicKeywords(forStoryPrompt:keywords:with:shouldTokenizeInput:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 176) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  sub_1C754F2FC();
  *(v1 + 112) = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C745907C()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 104);
  v7 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_1C754F15C();
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  v5 = type metadata accessor for MusicKeywordsGeneratorEmbedded();
  *v4 = v0;
  v4[1] = sub_1C74591E0;

  return MEMORY[0x1EEE2A6A0](v0 + 56, "MusicCurator.initEmbeddings", 27, 2, &unk_1C758C920, v3, v2, v5);
}

uint64_t sub_1C74591E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74592E0()
{
  OUTLINED_FUNCTION_42();
  sub_1C754F30C();
  v0[18] = v0[7];
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1C74593B4;

  return sub_1C743E970();
}

uint64_t sub_1C74593B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C74594B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v21 = sub_1C754FF1C();
  __swift_project_value_buffer(v21, &dword_1EDD28D48);
  sub_1C75504FC();
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  v23 = sub_1C755118C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v18 + 160);
    v25 = *(v18 + 80);
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_20_1();
    a9 = v27;
    *v26 = 134218242;
    *(v26 + 4) = *(v25 + 16);

    *(v26 + 12) = 2080;
    v28 = type metadata accessor for MusicKeywordCompletion();
    v29 = MEMORY[0x1CCA5D090](v24, v28);
    v31 = sub_1C6F765A4(v29, v30, &a9);

    *(v26 + 14) = v31;
    _os_log_impl(&dword_1C6F5C000, v22, v23, "(Keywords) Music keyword generation against %ld keywords returned keywords: %s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v18 + 16);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t StoryMusicCurator.postProcess(keywords:with:deviceRegion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, &dword_1EDD28D48);
  sub_1C75504FC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C755118C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_41_0();
    v50 = OUTLINED_FUNCTION_20_1();
    *v11 = 136315138;
    v12 = type metadata accessor for MusicKeywordCompletion();
    v13 = MEMORY[0x1CCA5D090](a1, v12);
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = sub_1C6F765A4(v13, v14, &v50);

    *(v11 + 4) = v18;
    a4 = v17;
    a3 = v16;
    a2 = v15;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "(Keywords) Filtered maestro keywords before post-processing: %s", v11, 0xCu);
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_109();
  }

  v19 = sub_1C745C260(a1, a2);
  v20 = sub_1C745CC10(v19, a3, a4);
  v22 = v21;
  if (!v20)
  {

    v30 = sub_1C745D530(v19, v23, v24, v25, v26, v27, v28, v29);
    v22 = v31;
    if (!v30)
    {

      v39 = sub_1C745D880(v19, v32, v33, v34, v35, v36, v37, v38);
      v22 = v40;
      if ((v39 & 1) == 0)
      {

        sub_1C745DDD4(v19, v41, v42, v43, v44, v45, v46, v47);
        v22 = v48;
      }
    }
  }

  return v22;
}

uint64_t StoryMusicCurator.appendMoodKeywords(to:for:)(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  MusicMood.moodsMaestroKeywordsDictionary(shouldIncludeCompatibleMoods:shouldIncludeIncompatibleMoods:)(1);
  OUTLINED_FUNCTION_24_2();
  v2 = sub_1C75504FC();
  return sub_1C7458888(v2, __dst);
}

uint64_t StoryMusicCurator.curateMaestroKeywords(in:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1C754F38C();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7459974()
{
  v30 = v0;
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = qword_1EDD0ED88;
    sub_1C75504FC();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, &dword_1EDD28D48);
    OUTLINED_FUNCTION_24_2();
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    sub_1C755117C();
    OUTLINED_FUNCTION_31_44();
    if (OUTLINED_FUNCTION_262_0())
    {
      OUTLINED_FUNCTION_41_0();
      v29 = OUTLINED_FUNCTION_17_6();
      *v2 = 136315138;
      v7 = type metadata accessor for MusicKeywordCompletion();
      v8 = MEMORY[0x1CCA5D090](v3, v7);
      v10 = sub_1C6F765A4(v8, v9, &v29);

      *(v2 + 4) = v10;
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v11, v12, "(Keywords) Using cached keywords: %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_10_1();
    }

    __swift_project_boxed_opaque_existential_1(v0[6], v1[3]);
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
    v13 = OUTLINED_FUNCTION_18_64();
    v14(v13);

    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_20_3();

    __asm { BRAA            X2, X16 }
  }

  v17 = v0[5];
  v18 = *(v17 + *(type metadata accessor for StoryMusicCurationOptions() + 88) + 168);
  if (v18 && *(v18 + 16))
  {
    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    v19[1] = sub_1C7459C24;
    OUTLINED_FUNCTION_20_3();

    return sub_1C745A3EC(v20, v21, v22);
  }

  else
  {
    v25 = swift_task_alloc();
    v0[14] = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_1_138(v25);
    OUTLINED_FUNCTION_20_3();

    return sub_1C745AE04(v26, v27);
  }
}

uint64_t sub_1C7459C24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7459D28()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0 + 96))
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
    v1 = OUTLINED_FUNCTION_18_64();
    v2(v1);

    v3 = OUTLINED_FUNCTION_53();

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_1_138(v6);

    return sub_1C745AE04(v7, v8);
  }
}

uint64_t sub_1C7459E28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7459F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  type metadata accessor for MaestroKeywordResolver();
  v27 = OUTLINED_FUNCTION_17_18();
  v28 = static MaestroKeywordResolver.resolveLLMKeywordsToMaestro(for:)(v27);
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v29 = sub_1C754FF1C();
  __swift_project_value_buffer(v29, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v30 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_31_44();
  if (os_log_type_enabled(v30, v23))
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    *v24 = 136315138;
    v31 = type metadata accessor for MusicKeywordCompletion();
    v32 = MEMORY[0x1CCA5D090](v28, v31);
    v34 = sub_1C6F765A4(v32, v33, &a10);

    *(v24 + 4) = v34;
    _os_log_impl(&dword_1C6F5C000, v30, v23, "(Keywords) Pre-trimmed maestro keywords: %s", v24, 0xCu);
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v35 = *(v22 + 128);
  v36 = sub_1C75504FC();
  a10 = sub_1C71CC894(v36);
  sub_1C70CCDF0(&a10);
  if (v35)
  {

    OUTLINED_FUNCTION_17_1();
  }

  v39 = *(v22 + 40);

  v40 = *(v39 + 8);
  if (v40 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = sub_1C70340A0(v40, a10);
  v28 = v41;
  v23 = v42;
  v24 = v43;
  if ((v43 & 1) == 0)
  {
LABEL_11:
    sub_1C739C81C(v39, v28, v23, v24);
    v45 = v44;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = MEMORY[0x1E69E7CC0];
  }

  v47 = *(v46 + 16);

  if (__OFSUB__(v24 >> 1, v23))
  {
    goto LABEL_25;
  }

  if (v47 != (v24 >> 1) - v23)
  {
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v45)
  {
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

LABEL_19:
  v48 = *(v22 + 56);
  *(v48 + 56) = v45;

  v49 = v48 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_58_13();
  *(v49 + *(type metadata accessor for StoryMusicCurationDiagnostics() + 36)) = v45;
  swift_retain_n();

  v50 = sub_1C754FEEC();
  v51 = sub_1C755117C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_41_0();
    v53 = OUTLINED_FUNCTION_20_1();
    a10 = v53;
    *v52 = 136315138;
    v54 = type metadata accessor for MusicKeywordCompletion();
    v55 = MEMORY[0x1CCA5D090](v45, v54);
    v57 = sub_1C6F765A4(v55, v56, &a10);

    *(v52 + 4) = v57;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v58, v51, "(Keywords) cachedMaestroKeywords updated and returning: %s");
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  __swift_project_boxed_opaque_existential_1(*(v22 + 48), *(*(v22 + 48) + 24));
  OUTLINED_FUNCTION_17_18();
  sub_1C754F1AC();
  v59 = OUTLINED_FUNCTION_18_64();
  v60(v59);

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_28_39();
  (*(v12 + 8))(v10, v11);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C745A368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_28_39();
  (*(v12 + 8))(v10, v11);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C745A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C745A410, 0, 0);
}

uint64_t sub_1C745A410()
{
  v63 = v0;
  if (qword_1EDD0ED88 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_46();
  }

  v1 = sub_1C754FF1C();
  *(v0 + 152) = __swift_project_value_buffer(v1, &dword_1EDD28D48);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();

  v57 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 120);
    v5 = OUTLINED_FUNCTION_41_0();
    v59 = OUTLINED_FUNCTION_20_1();
    *v5 = 136315138;
    v6 = MEMORY[0x1CCA5D090](v4, MEMORY[0x1E69E6158]);
    v8 = sub_1C6F765A4(v6, v7, &v59);

    *(v5 + 4) = v8;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v9, v3, "(Keywords)(Pre-curated) Preparing pre-curated keywords: %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_109();
  }

  v10 = 0;
  v11 = *(v0 + 120);
  v12 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v13 = *(v11 + 16);
  v14 = v11 + 40;
  v55 = v11 + 40;
LABEL_5:
  v56 = v12;
  *(v0 + 160) = v12;
  v15 = (v14 + 16 * v10);
  while (v13 != v10)
  {
    if (v10 >= v13)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v0 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_28;
    }

    v16 = *(v15 - 1);
    v17 = *v15;
    static StoryMusicEmbeddingTerms.termByDisplayName(_:)();
    v18 = v60;
    if (v60)
    {
      v22 = v61;
      v23 = v62;
      v24 = v59;
      type metadata accessor for MusicKeywordCompletion();
      swift_allocObject();
      MusicKeywordCompletion.init(keyword:score:)(v22, v23, 0.99);
      sub_1C75504FC();
      v25 = sub_1C72B9804(v24, v18);
      MEMORY[0x1CCA5D040](v25);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v12 = v58;
      v10 = v0;
      v0 = v57;
      v14 = v55;
      goto LABEL_5;
    }

    sub_1C75504FC();
    v19 = sub_1C754FEEC();
    v20 = sub_1C755119C();

    if (os_log_type_enabled(v19, v20))
    {
      v0 = OUTLINED_FUNCTION_41_0();
      v21 = OUTLINED_FUNCTION_20_1();
      v59 = v21;
      *v0 = 136315138;
      *(v0 + 4) = sub_1C6F765A4(v16, v17, &v59);
      _os_log_impl(&dword_1C6F5C000, v19, v20, "(Keywords)(Pre-curated) Unable to map keyword -> %s", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    ++v10;
    v15 += 2;
  }

  v26 = v56;
  if (sub_1C6FB6304())
  {
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C755117C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_41_0();
      v30 = OUTLINED_FUNCTION_20_1();
      v59 = v30;
      *v29 = 136315138;
      v31 = type metadata accessor for MusicKeywordCompletion();
      v32 = MEMORY[0x1CCA5D090](v56, v31);
      v34 = sub_1C6F765A4(v32, v33, &v59);
      v26 = v56;

      *(v29 + 4) = v34;
      OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v35, v28, "(Keywords)(Pre-curated) Resolved keywords via direct mapping: %s");
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v36 = v57[18] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_58_13();
    v37 = type metadata accessor for StoryMusicCurationDiagnostics();
    *(v36 + *(v37 + 36)) = v26;
    sub_1C75504FC();

    swift_beginAccess();
    v38 = *(v37 + 140);
    sub_1C6FB0600();
    v39 = v26;
    v40 = *(*(v36 + v38) + 16);
    sub_1C6FB0EFC();
    v41 = *(v36 + v38);
    *(v41 + 16) = v40 + 1;
    v42 = v41 + 16 * v40;
    *(v42 + 32) = 0xD00000000000002ELL;
    *(v42 + 40) = 0x80000001C75B0F40;
    *(v36 + v38) = v41;
    swift_endAccess();
    OUTLINED_FUNCTION_116();

    return v43(v39);
  }

  else
  {
    v45 = sub_1C754FEEC();
    v46 = sub_1C755119C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1C6F5C000, v45, v46, "(Keywords)(Pre-curated) No direct mapping found. Try to use embeddings for keywords", v47, 2u);
      OUTLINED_FUNCTION_109();
    }

    v48 = v57[15];

    v57[14] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v49 = sub_1C75505FC();
    v51 = v50;
    v57[21] = v50;
    v52 = swift_task_alloc();
    v57[22] = v52;
    *v52 = v57;
    v52[1] = sub_1C745AA2C;
    v53 = v57[17];
    v54 = v57[16];

    return sub_1C71F58BC(v49, v51, v54, v53);
  }
}

uint64_t sub_1C745AA2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C745AB34()
{
  OUTLINED_FUNCTION_75_1();
  v24 = v0;
  if (sub_1C6FB6304())
  {
    sub_1C75504FC();
    v1 = sub_1C754FEEC();
    v2 = sub_1C755117C();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = v0[23];
      v4 = OUTLINED_FUNCTION_41_0();
      v5 = OUTLINED_FUNCTION_20_1();
      v23 = v5;
      *v4 = 136315138;
      v6 = type metadata accessor for MusicKeywordCompletion();
      v7 = MEMORY[0x1CCA5D090](v3, v6);
      v9 = sub_1C6F765A4(v7, v8, &v23);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_1C6F5C000, v1, v2, "(Keywords)(Pre-curated) Resolved keywords via embedding lookup: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    v10 = v0[20];
    v11 = v0[18] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_58_13();
    v12 = type metadata accessor for StoryMusicCurationDiagnostics();
    *(v11 + *(v12 + 36)) = v10;

    swift_beginAccess();
    v13 = *(v12 + 140);
    sub_1C6FB0600();
    v14 = *(*(v11 + v13) + 16);
    sub_1C6FB0EFC();
    v15 = *(v11 + v13);
    *(v15 + 16) = v14 + 1;
    v16 = v15 + 16 * v14;
    *(v16 + 32) = 0xD000000000000038;
    *(v16 + 40) = 0x80000001C75B0F70;
    *(v11 + v13) = v15;
    swift_endAccess();
  }

  else
  {

    v17 = sub_1C754FEEC();
    v18 = sub_1C755119C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "(Keywords)(Pre-curated) Unable to get keywords curated so continuing with normal flow", v19, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  v20 = OUTLINED_FUNCTION_53();

  return v21(v20);
}

uint64_t sub_1C745ADA0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C745AE04(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C745AE28, 0, 0);
}

uint64_t sub_1C745AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[7];
  v16 = sub_1C745BCC0(v14[5]);
  v14[8] = v16;
  v17 = MEMORY[0x1CCA5D090]();
  v19 = v18;
  v20 = v15 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_58_13();
  v21 = type metadata accessor for StoryMusicCurationDiagnostics();
  v22 = (v20 + *(v21 + 28));
  *v22 = v17;
  v22[1] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C40);
  *(v20 + *(v21 + 32)) = sub_1C75504DC();

  v23 = *(v16 + 16);
  v24 = (v16 + 32);
  while (v23)
  {
    v16 = 0xEF7374696172546CLL;
    if (*v24)
    {
      if (*v24 != 1)
      {

LABEL_17:
        v28 = swift_task_alloc();
        v14[9] = v28;
        *v28 = v14;
        OUTLINED_FUNCTION_1_138(v28);
        OUTLINED_FUNCTION_17_1();

        return sub_1C71F5110(v29, v30);
      }

      v16 = 0x80000001C7595FC0;
    }

    v19 = sub_1C7551DBC();

    ++v24;
    --v23;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  v14[11] = MEMORY[0x1E69E7CC0];
  v25 = -*(v14[8] + 16);
  v26 = 32;
  while (v25 + v26 != 32)
  {
    v27 = *(v14[8] + v26);
    if (v27 == 1)
    {
      v16 = 0x80000001C7595FC0;
    }

    else
    {
      v16 = 0xEE0074706D6F7250;
      if (v27 != 2)
      {

LABEL_26:
        v34 = swift_task_alloc();
        v14[12] = v34;
        *v34 = v14;
        OUTLINED_FUNCTION_10_80(v34);
        OUTLINED_FUNCTION_17_1();

        return sub_1C70CBD54(v35, v36, v37);
      }
    }

    v19 = sub_1C7551DBC();

    ++v26;
    if (v19)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_30_47(MEMORY[0x1E69E7CC0]);
  while (1)
  {
    v33 = v14[8];
    if (v19 + v26 == 32)
    {
      break;
    }

    if (*(v33 + v26) && *(v33 + v26) != 2)
    {

LABEL_37:

      v55 = swift_task_alloc();
      v14[15] = v55;
      *v55 = v14;
      OUTLINED_FUNCTION_1_138(v55);
      OUTLINED_FUNCTION_17_1();

      return sub_1C74931B4();
    }

    v16 = OUTLINED_FUNCTION_36_37();

    ++v26;
    if (v16)
    {
      goto LABEL_37;
    }
  }

  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v39 = sub_1C754FF1C();
  __swift_project_value_buffer(v39, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v40 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v41, v42, v43, v44);
    OUTLINED_FUNCTION_42_37();
    MEMORY[0x61626F6C47657379] = v16;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v45, v46, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745B2C0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 80) = v3;
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C745B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v14[11] = v14[10];
  v16 = -*(v14[8] + 16);
  v17 = 32;
  while (v16 + v17 != 32)
  {
    v18 = *(v14[8] + v17);
    if (v18 != 1 && v18 != 2)
    {

LABEL_14:
      v20 = swift_task_alloc();
      v14[12] = v20;
      *v20 = v14;
      OUTLINED_FUNCTION_10_80(v20);
      OUTLINED_FUNCTION_17_1();

      return sub_1C70CBD54(v21, v22, v23);
    }

    v15 = sub_1C7551DBC();

    ++v17;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_30_47(MEMORY[0x1E69E7CC0]);
  while (1)
  {
    v19 = v14[8];
    if (v16 + v17 == 32)
    {
      break;
    }

    if (*(v19 + v17) && *(v19 + v17) != 2)
    {

LABEL_25:

      v42 = swift_task_alloc();
      v14[15] = v42;
      *v42 = v14;
      OUTLINED_FUNCTION_1_138(v42);
      OUTLINED_FUNCTION_17_1();

      return sub_1C74931B4();
    }

    v15 = sub_1C7551DBC();

    ++v17;
    if (v15)
    {
      goto LABEL_25;
    }
  }

  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v26 = sub_1C754FF1C();
  __swift_project_value_buffer(v26, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v27 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v28, v29, v30, v31);
    OUTLINED_FUNCTION_42_37();
    *(v15 + 4) = 0x79726F7453657375;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v32, v33, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745B724()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C745B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v14[14] = v14[13];
  v15 = -*(v14[8] + 16);
  v16 = 32;
  while (1)
  {
    v17 = v14[8];
    if (v15 + v16 == 32)
    {
      break;
    }

    if (*(v17 + v16) && *(v17 + v16) != 2)
    {

LABEL_15:

      v36 = swift_task_alloc();
      v14[15] = v36;
      *v36 = v14;
      OUTLINED_FUNCTION_1_138(v36);
      OUTLINED_FUNCTION_17_1();

      return sub_1C74931B4();
    }

    v18 = OUTLINED_FUNCTION_36_37();

    ++v16;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v19 = sub_1C754FF1C();
  __swift_project_value_buffer(v19, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v20 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v21, v22, v23, v24);
    OUTLINED_FUNCTION_42_37();
    *(v16 + 4) = 0xEF7374696172546CLL;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v25, v26, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_17_1();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C745BA58()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 128) = v3;
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C745BB9C()
{
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_15_81();
  sub_1C6FD2F68(v3);
  OUTLINED_FUNCTION_40_47();
  OUTLINED_FUNCTION_27_51();
  OUTLINED_FUNCTION_43_37();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v5 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_31_44();
  if (OUTLINED_FUNCTION_262_0())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_26_47(4.8149e-34);
    OUTLINED_FUNCTION_39_42(v6, v7, v8, v9);
    OUTLINED_FUNCTION_42_37();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v10, v11, "keywordsCuratedClean = %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v12 = OUTLINED_FUNCTION_53();

  return v13(v12);
}

uint64_t sub_1C745BCC0(uint64_t a1)
{
  v2 = [objc_opt_self() storyMusicMaestroEmbeddingApproach];
  v3 = sub_1C755068C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = byte_1F46A9458[v7 + 32];
      v22[0] = v3;
      v22[1] = v5;
      sub_1C6FB5E8C();
      v10 = sub_1C75515AC();

      if (v10)
      {
        v23 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716EDF4();
          v8 = v23;
        }

        v11 = *(v8 + 16);
        if (v11 >= *(v8 + 24) >> 1)
        {
          sub_1C716EDF4();
          v8 = v23;
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + v11 + 32) = v9;
      }

      ++v7;
    }

    while (v7 != 3);
    if (qword_1EDD0ED88 != -1)
    {
      swift_once();
    }

    v12 = sub_1C754FF1C();
    __swift_project_value_buffer(v12, &dword_1EDD28D48);
    sub_1C75504FC();

    v13 = sub_1C754FEEC();
    v14 = sub_1C755118C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315394;
      v17 = sub_1C6F765A4(v3, v5, v22);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      v18 = MEMORY[0x1CCA5D090](v8, &type metadata for MusicKeywordCurationApproach);
      v20 = sub_1C6F765A4(v18, v19, v22);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1C6F5C000, v13, v14, "[keywordCurationApproach] Using defaults override for the keyword curation: %s -> %s ", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v8 = *(a1 + 32);
    sub_1C75504FC();
  }

  return v8;
}

uint64_t sub_1C745C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C745C054, 0, 0);
}

uint64_t sub_1C745C054()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache);
  *(v0 + 72) = 0;
  v3 = *(v1 + 8);
  type metadata accessor for MusicKeywordsGeneratorEmbedded();
  swift_allocObject();
  v4 = v2;
  sub_1C75504FC();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1C745C154;
  v6 = *(v0 + 32);

  return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v2, (v0 + 72), v6, v3);
}

uint64_t sub_1C745C154()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t *sub_1C745C260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MaestroKeywordResolver();
  static MaestroKeywordResolver.tripMaestroKeywords()(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = a2 + *(type metadata accessor for StoryMusicCurationOptions() + 88);
  v13 = MEMORY[0x1E69E7CC0];
  if (*(v12 + 48))
  {
    v14 = *(v12 + 64);
    if (v14 >> 8 != 2)
    {
      if (qword_1EDD0ED88 != -1)
      {
        swift_once();
      }

      v32 = sub_1C754FF1C();
      __swift_project_value_buffer(v32, &dword_1EDD28D48);
      v33 = sub_1C754FEEC();
      v34 = sub_1C755117C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = v70;
        *v35 = 136315394;
        if ((v14 >> 8))
        {
          v36 = 0x6465746365746564;
        }

        else
        {
          v36 = 0xD000000000000013;
        }

        if ((v14 >> 8))
        {
          v37 = 0xE800000000000000;
        }

        else
        {
          v37 = 0x80000001C75B0FF0;
        }

        if ((v14 >> 8))
        {
          v38 = 1885693259;
        }

        else
        {
          v38 = 0x65766F6D6552;
        }

        if ((v14 >> 8))
        {
          v39 = 0xE400000000000000;
        }

        else
        {
          v39 = 0xE600000000000000;
        }

        v40 = sub_1C6F765A4(v36, v37, &v71);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        v41 = sub_1C6F765A4(v38, v39, &v71);

        *(v35 + 14) = v41;
        _os_log_impl(&dword_1C6F5C000, v33, v34, "(Keywords) PostProcessing: Trip is %s by QU. %s isForTrip keywords.", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v70, -1, -1);
        MEMORY[0x1CCA5F8E0](v35, -1, -1);
      }

      if ((v14 & 0x100) != 0)
      {

        goto LABEL_39;
      }

      v73 = MEMORY[0x1E69E7CC0];
      v60 = sub_1C6FB6304();
      v13 = 0;
      v61 = a1 & 0xC000000000000001;
      while (v60 != v13)
      {
        v62 = sub_1C6FB6330(v13, v61 == 0, a1);
        if (v61)
        {
          v64 = MEMORY[0x1CCA5DDD0](v13, a1, v62);
          v63 = v64;
        }

        else
        {
          v63 = *(a1 + 8 * v13 + 32);
        }

        if (__OFADD__(v13, 1))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v65 = *(v63 + 24);
        v71 = *(v63 + 16);
        v72 = v65;
        MEMORY[0x1EEE9AC00](v64);
        sub_1C75504FC();
        v66 = sub_1C70735F4();

        if (v66)
        {
        }

        else
        {
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
        }

        v13 = (v13 + 1);
      }

      goto LABEL_80;
    }
  }

  if (qword_1EDD0ED88 != -1)
  {
LABEL_86:
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, &dword_1EDD28D48);
  v16 = sub_1C754FEEC();
  v17 = sub_1C755117C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "(Keywords) PostProcessing: QU returns nil for isTrip.", v18, 2u);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = 1885958772;
  *(inited + 40) = 0xE400000000000000;
  v73 = v13;
  v69 = sub_1C6FB6304();
  v20 = 0;
  v21 = a1 & 0xC000000000000001;
  v13 = &v71;
  while (v69 != v20)
  {
    v22 = sub_1C6FB6330(v20, v21 == 0, a1);
    if (v21)
    {
      v24 = MEMORY[0x1CCA5DDD0](v20, a1, v22);
      v23 = v24;
    }

    else
    {
      v23 = *(a1 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v25 = *(v23 + 24);
    v71 = *(v23 + 16);
    v72 = v25;
    MEMORY[0x1EEE9AC00](v24);
    sub_1C75504FC();
    v26 = sub_1C70735F4();

    if (v26)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v20;
  }

  swift_setDeallocating();
  sub_1C6FDC9DC();
  v27 = sub_1C6FB6304();

  if (v27 <= 0)
  {
    v42 = 0;
    v73 = MEMORY[0x1E69E7CC0];
    v13 = &v71;
    while (v69 != v42)
    {
      v43 = sub_1C6FB6330(v42, v21 == 0, a1);
      if (v21)
      {
        v45 = MEMORY[0x1CCA5DDD0](v42, a1, v43);
        v44 = v45;
      }

      else
      {
        v44 = *(a1 + 8 * v42 + 32);
      }

      if (__OFADD__(v42, 1))
      {
        goto LABEL_83;
      }

      v46 = *(v44 + 24);
      v71 = *(v44 + 16);
      v72 = v46;
      MEMORY[0x1EEE9AC00](v45);
      sub_1C75504FC();
      v47 = sub_1C70735F4();

      if (v47)
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      else
      {
      }

      ++v42;
    }

    v48 = v73;
    if (sub_1C6FB6304() == 1 && sub_1C6FB6304())
    {
      v49 = sub_1C6FB6330(0, (v48 & 0xC000000000000001) == 0, v48);
      if ((v48 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1CCA5DDD0](0, v48, v49);

        v51 = *(v68 + 32);
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = v48[4];

        v51 = *(v50 + 32);
      }

      if (v51 > 0.975)
      {

        v28 = sub_1C754FEEC();
        v29 = sub_1C755117C();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_20;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "(Keywords) PostProcessing: Only one isForTrip keyword is found with very high score. Keep isForTrip keywords.";
        goto LABEL_19;
      }
    }

    else
    {
    }

    v52 = sub_1C754FEEC();
    v53 = sub_1C755117C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1C6F5C000, v52, v53, "(Keywords) PostProcessing: None of the conditions in removeForTripKeywordsIfTripAbsent satisfied. Remove isForTrip keywords.", v54, 2u);
      MEMORY[0x1CCA5F8E0](v54, -1, -1);
    }

    v13 = 0;
    v73 = MEMORY[0x1E69E7CC0];
    while (v69 != v13)
    {
      v55 = sub_1C6FB6330(v13, v21 == 0, a1);
      if (v21)
      {
        v57 = MEMORY[0x1CCA5DDD0](v13, a1, v55);
        v56 = v57;
      }

      else
      {
        v56 = *(a1 + 8 * v13 + 32);
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_84;
      }

      v58 = *(v56 + 24);
      v71 = *(v56 + 16);
      v72 = v58;
      MEMORY[0x1EEE9AC00](v57);
      sub_1C75504FC();
      v59 = sub_1C70735F4();

      if (v59)
      {
      }

      else
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      v13 = (v13 + 1);
    }

LABEL_80:

    return v73;
  }

  v28 = sub_1C754FEEC();
  v29 = sub_1C755117C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
LABEL_19:
    _os_log_impl(&dword_1C6F5C000, v28, v29, v31, v30, 2u);
    MEMORY[0x1CCA5F8E0](v30, -1, -1);
  }

LABEL_20:

LABEL_39:
  sub_1C75504FC();
  return a1;
}