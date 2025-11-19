uint64_t OSFeatureFlagProvider.__deallocating_deinit()
{
  OSFeatureFlagProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t OSFeatureFlagProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t SequentialProcessor.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF8BA18C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.init(inputOrigin:assistantTurnState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1BF8BADBC(a1, a3);
  result = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
  *(a3 + *(result + 20)) = v4;
  *(a3 + *(result + 24)) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantTurnState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x1BF8BA2E8);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_16_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_77()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_16_20()
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

_BYTE *sub_1BF8BA5A0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1BF8BA5D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return sub_1BF9B5898();
}

uint64_t OUTLINED_FUNCTION_3_5()
{
  v2 = *(v0 - 120);

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1BF9B5598();
}

void OUTLINED_FUNCTION_3_11()
{
  v1 = 1 << *(v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_1BF938EE0(v3, v0, v1, v2);
}

unint64_t OUTLINED_FUNCTION_3_21(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = *(a4 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return sub_1BF9B54A8();
}

uint64_t OUTLINED_FUNCTION_3_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_31(uint64_t a1)
{

  return sub_1BF8EE3F8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return swift_once();
}

uint64_t SequentialProcessor.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  OUTLINED_FUNCTION_72(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00]();
  v5 = &v16 - v4;
  swift_defaultActor_initialize();
  sub_1BF9B4EB8();
  OUTLINED_FUNCTION_37_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = OUTLINED_FUNCTION_46_2();
  *(v0 + 112) = sub_1BF939C48(v11, v12, v5, v13, v14);
  *(v0 + 120) = 0;
  return v0;
}

uint64_t sub_1BF8BAB80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t SequentialProcessor.__allocating_init()()
{
  v0 = swift_allocObject();
  SequentialProcessor.init()();
  return v0;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_1BF9B5558();
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return sub_1BF9B54A8();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_35_3()
{
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_35_5()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  *(v0 + 80) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1BF8BADBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SiriSuggestions.SiriRuntimeRequestState()
{
  result = qword_1EDBF54B8;
  if (!qword_1EDBF54B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF8BAE78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_59()
{

  return dynamic_cast_existential_1_conditional(v0);
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t result)
{
  *(result + 32) = 0x7470697263736564;
  *(result + 40) = 0xEB000000006E6F69;
  return result;
}

uint64_t *OUTLINED_FUNCTION_59_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 88) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 + 56));
}

uint64_t OUTLINED_FUNCTION_59_9()
{
}

void OUTLINED_FUNCTION_59_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t getEnumTagSinglePayload for AssistantTurnState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{
  *(a1 + 8) = sub_1BF8D50D0;
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[8];
  return v1[7];
}

size_t OUTLINED_FUNCTION_1_3(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v6 = v4 + *v4;
  *(v5 + 16) = v3;
  result = v2;
  v8 = *(v5 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{

  return sub_1BF8C0D00(a1, 0, 0, 0, 2);
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_1BF9B54A8();
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{
  *(v5 - 96) = a1;
  *(v5 - 128) = v1;
  *(v2 + 16) = v4;

  return sub_1BF8C2C9C((v5 - 128), v2 + 40 * v3 + 32);
}

__n128 *OUTLINED_FUNCTION_1_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6449797469746E65;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_30()
{
  v2 = *(v0 - 296);

  return sub_1BF9B54A8();
}

__n128 OUTLINED_FUNCTION_1_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __n128 a16, __int128 a17)
{
  result = a16;
  *(v17 + 32) = a16;
  *(v17 + 48) = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_33(uint64_t a1)
{
  *(a1 + 8) = sub_1BF9B1DF8;
  v2 = *(v1 + 184);
  return v1 + 56;
}

uint64_t OUTLINED_FUNCTION_34_6(uint64_t a1)
{
  *(a1 + 8) = sub_1BF94E7C8;
  result = *(v1 + 104);
  v3 = *(v1 + 64);
  return result;
}

void OUTLINED_FUNCTION_34_7()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void NSCodingAdaptor.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4D8, &unk_1BF9C77B0);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_11();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  OUTLINED_FUNCTION_32_12(v2);
  sub_1BF998AF8();
  OUTLINED_FUNCTION_74_2();
  sub_1BF997B60(v7);
  v10 = OUTLINED_FUNCTION_5_17();
  v11(v10);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

uint64_t OUTLINED_FUNCTION_37_1()
{

  return sub_1BF9B57A8();
}

__n128 OUTLINED_FUNCTION_37_2()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  return *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1BF8EE390(v7, va, v8, v9);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_1BF9B5868();
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return __swift_destroy_boxed_opaque_existential_1((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1)
{
  *(a1 + 8) = sub_1BF945EE4;
  v2 = v1[12];
  result = v1[9];
  v4 = v1[4];
  return result;
}

void OUTLINED_FUNCTION_27_5(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[4] = v3;
  a1[5] = v2;
}

uint64_t OUTLINED_FUNCTION_27_7()
{
}

void OUTLINED_FUNCTION_27_9()
{

  JUMPOUT(0x1BFB5DE90);
}

uint64_t sub_1BF8BB9BC(char a1)
{
  if (!a1)
  {
    return 0x746E65746E496E69;
  }

  if (a1 == 1)
  {
    return 0x6E65746E49707061;
  }

  return 0x6E6F69746361;
}

void SiriSuggestions.Intent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v31 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v4 = OUTLINED_FUNCTION_13(v31);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = OUTLINED_FUNCTION_12_9();
  v8 = type metadata accessor for SiriSuggestions.Intent(v7);
  v9 = OUTLINED_FUNCTION_13(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_60_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96C0, &qword_1BF9BF228);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_56_3();
  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  v18 = OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_28(v18, v19);
  sub_1BF8BFD00();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_0_12();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v26 = v1[1];
      v33[0] = *v1;
      v33[1] = v26;
      v28 = *v1;
      v27 = v1[1];
      *v34 = v1[2];
      *&v34[9] = *(v1 + 41);
      *v32 = v1[2];
      *&v32[9] = *(v1 + 41);
      sub_1BF920C3C();
      sub_1BF9B5638();
      v29 = OUTLINED_FUNCTION_43_3();
      v30(v29);
      sub_1BF8D768C(v33);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_4_12();
    sub_1BF920B90();
    LOBYTE(v33[0]) = 1;
    OUTLINED_FUNCTION_13_6();
    sub_1BF9209A0(v21, v22);
    sub_1BF9B5638();
    OUTLINED_FUNCTION_2_15();
    sub_1BF920AE4(v0, v23);
  }

  else
  {
    *&v33[0] = *v1;
    sub_1BF920C90();
    sub_1BF9B5638();
    swift_unknownObjectRelease();
  }

  v24 = OUTLINED_FUNCTION_43_3();
  v25(v24);
LABEL_7:
  OUTLINED_FUNCTION_37();
}

void SiriSuggestions.Intent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96B0, &qword_1BF9BF220);
  OUTLINED_FUNCTION_1(v8);
  v42 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_12_9();
  v14 = type metadata accessor for SiriSuggestions.Intent(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v20 = (v19 - v18);
  v21 = v3[4];
  v43 = v3;
  OUTLINED_FUNCTION_28(v3, v3[3]);
  sub_1BF8BFD00();
  sub_1BF9B5868();
  if (!v0)
  {
    v22 = sub_1BF9B5568();
    if (!*(v22 + 16))
    {

      sub_1BF920A3C();
      OUTLINED_FUNCTION_67_2();
      *v28 = 0;
      swift_willThrow();
      (*(v42 + 8))(v1, v8);
      goto LABEL_2;
    }

    v23 = *(v22 + 32);

    if (v23)
    {
      if (v23 != 1)
      {
        sub_1BF920B3C();
        OUTLINED_FUNCTION_45_3();
        v31 = OUTLINED_FUNCTION_19_9();
        v32(v31);
        *v20 = v44;
        v20[1] = v45;
        v20[2] = *v46;
        *(v20 + 41) = *&v46[9];
        swift_storeEnumTagMultiPayload();
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_13_6();
      sub_1BF9209A0(v24, v25);
      sub_1BF9B5558();
      v26 = OUTLINED_FUNCTION_19_9();
      v27(v26);
      OUTLINED_FUNCTION_4_12();
      sub_1BF920B90();
      OUTLINED_FUNCTION_33();
    }

    else
    {
      sub_1BF920BE8();
      OUTLINED_FUNCTION_45_3();
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (!v33)
      {
        swift_unknownObjectRelease();
        v37 = sub_1BF9B5308();
        OUTLINED_FUNCTION_67_2();
        v39 = v38;
        sub_1BF9B54B8();
        OUTLINED_FUNCTION_29_3();
        sub_1BF9B52F8();
        v40 = *MEMORY[0x1E69E6B00];
        OUTLINED_FUNCTION_11(v37);
        (*(v41 + 104))(v39);
        swift_willThrow();
        v29 = OUTLINED_FUNCTION_19_9();
        v30(v29);
        goto LABEL_2;
      }

      v34 = v33;
      v35 = OUTLINED_FUNCTION_19_9();
      v36(v35);
      *v20 = v34;
      OUTLINED_FUNCTION_23_7();
    }

    swift_storeEnumTagMultiPayload();
LABEL_16:
    OUTLINED_FUNCTION_33();
    sub_1BF920B90();
  }

LABEL_2:
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF8BC0E8()
{
  OUTLINED_FUNCTION_65();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v4[1] = sub_1BF8BC644;
  OUTLINED_FUNCTION_58_4();

  return sub_1BF8BC550();
}

uint64_t sub_1BF8BC184(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8BD3D4;

  return v7(a1);
}

uint64_t sub_1BF8BC27C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_16(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_42_5()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return result;
}

void OUTLINED_FUNCTION_42_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_42_12()
{

  return sub_1BF8C2C9C((v0 + 56), v0 + 16);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_1BF9B54A8();
}

void OUTLINED_FUNCTION_55_3()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 176);
  v4 = *(v0 - 168);
  v5 = *(v0 - 160);
  v6 = *(v0 - 152);
  v7 = *(v0 - 140);

  sub_1BF8F5AAC(v2, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_55_4()
{
  v3 = v0[21];
  v4 = v0[17];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[14];
  v8 = v0[13];
}

BOOL OUTLINED_FUNCTION_55_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return IntentType.toString()()._countAndFlagsBits;
}

void OUTLINED_FUNCTION_55_8()
{
  v1 = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }
}

uint64_t sub_1BF8BC564()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_77();

  return v5();
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_5_10()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_12()
{
  result = v0 + 32;
  v2 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_1BF944BC8(v0, type metadata accessor for ActionIdentifier);
}

uint64_t OUTLINED_FUNCTION_5_14(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x1BFB5F320);
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_20(uint64_t a1)
{
  *(a1 + 8) = sub_1BF99FA74;
  v2 = *(v1 + 144);
  return *(v1 + 152);
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1((v1 - 248));
  return v1 - 208;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_1BF9B54A8();
}

__n128 OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 72) = a1;
  result = *(v10 + 56);
  *(a1 + 16) = a9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v9;
  *(a1 + 48) = result;
  return result;
}

void OUTLINED_FUNCTION_87()
{

  JUMPOUT(0x1BFB5F320);
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1)
{
  *(a1 + 8) = sub_1BF8F300C;
  v2 = *(v1 + 80);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = *(*(a3 + 8) + 8);

  return sub_1BF9B4E28();
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{
  *(a1 + 8) = sub_1BF93CE64;
  v2 = *(v1 + 64);
  return *(v1 + 56);
}

double OUTLINED_FUNCTION_7_16(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -256;
  return result;
}

void OUTLINED_FUNCTION_7_18()
{
  *(v2 - 256) = v0 + 32;
  *(v2 - 280) = (v2 - 144) | 1;
  *(v2 - 272) = v1 + 32;
  *(v2 - 264) = v0;
}

void OUTLINED_FUNCTION_7_20()
{

  sub_1BF8DA65C();
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return sub_1BF9B5558();
}

void OUTLINED_FUNCTION_7_23()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_7_25(uint64_t a1)
{

  return sub_1BF8EE3F8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  __swift_getEnumTagSinglePayload(v1, 1, v0);
  sub_1BF8BCED4(v3, v2);
}

uint64_t OUTLINED_FUNCTION_14_4@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 - 256);
  v6 = (*(v5 + 48) + 16 * a1);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v5 + 56) + a1 * v2;

  return sub_1BF8D2004(v9, v3 - 128);
}

void OUTLINED_FUNCTION_14_10()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1BFB5F320);
}

double OUTLINED_FUNCTION_14_11()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_14_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *v5;
  v7 = *(a5 + 8);
  return result;
}

void OUTLINED_FUNCTION_14_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_14_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_1BF8D2004(&a31, v31 + 184);
}

uint64_t OUTLINED_FUNCTION_14_18@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_1BF8BCED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BF8BCEEC(char a1)
{
  if (!a1)
  {
    return 0x69724F7475706E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000021;
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3E8, &qword_1BF9C6850);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8BE2D4();
  sub_1BF9B5898();
  v19[15] = 0;
  sub_1BF9B4588();
  OUTLINED_FUNCTION_0_25();
  sub_1BF8BAE78(v14, v15);
  sub_1BF9B55E8();
  if (!v2)
  {
    v16 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
    v19[14] = *(v3 + *(v16 + 20));
    v19[13] = 1;
    sub_1BF8BD1B0();
    sub_1BF9B55E8();
    v17 = *(v3 + *(v16 + 24));
    v19[12] = 2;
    sub_1BF9B55C8();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1BF8BD1B0()
{
  result = qword_1EDBF4830[0];
  if (!qword_1EDBF4830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4830);
  }

  return result;
}

_BYTE *_s23SiriRuntimeRequestStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BF8BD2D0);
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

uint64_t getEnumTagSinglePayload for AssistantTurnState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 3;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 3;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1BF8BD3C0);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 3;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF8BD3D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_77();

  return v5();
}

uint64_t OUTLINED_FUNCTION_108_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_108_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BF8BD504()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t DeliveryVehicle.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF921E38(v35);
  LOBYTE(v6) = v36;
  if (v36 == 255)
  {
    v28 = a3;
    result = static DeliveryVehicle.allCases.getter();
    v8 = result;
    v9 = 0;
    v32 = *(result + 16);
    v10 = (result + 64);
    v30 = a1;
    v31 = a2;
    v29 = result;
    while (1)
    {
      if (v32 == v9)
      {

        *v28 = 0u;
        *(v28 + 16) = 0u;
        *(v28 + 32) = -1;
        return result;
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      v12 = v10[-2];
      v11 = v10[-1];
      v6 = v10->u8[0];
      v13 = v10[-2].i64[1];
      v14 = v10[-1].i64[1];
      v33 = v12;
      v34 = v11;
      if (v6 == 2)
      {
        v18 = vorrq_s8(v11, vdupq_laneq_s64(v12, 1)).u64[0];
        if (v18 | v12.i64[0] | v14)
        {
          v19.i64[0] = v12.i64[0];
          v19.i64[1] = v18 | v14;
          v20 = vmovn_s64(vceqq_s64(v19, xmmword_1BF9BFB60));
          if (v20.i32[0] & v20.i32[1])
          {
            OUTLINED_FUNCTION_1_14(1);
            v16 = 0xD000000000000010;
            v17 = 0x80000001BF9CBC20;
          }

          else if (((v12.i64[0] == 2) & v20.i8[4]) != 0)
          {
            OUTLINED_FUNCTION_1_14(2);
            v16 = 0x696669746F4E736FLL;
            v17 = 0xEE006E6F69746163;
          }

          else if (((v12.i64[0] == 3) & v20.i8[4]) != 0)
          {
            OUTLINED_FUNCTION_1_14(3);
            v17 = 0xE800000000000000;
            v16 = OUTLINED_FUNCTION_8_7();
          }

          else if (((v12.i64[0] == 4) & v20.i8[4]) != 0)
          {
            OUTLINED_FUNCTION_1_14(4);
            v16 = 0xD000000000000014;
            v17 = 0x80000001BF9CBC00;
          }

          else
          {
            OUTLINED_FUNCTION_1_14(5);
            v16 = 0xD000000000000010;
            v17 = 0x80000001BF9CBBE0;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_14(0);
          v16 = 0xD000000000000010;
          v17 = 0x80000001BF9CBC40;
        }
      }

      else if (v6 == 1)
      {
        v15 = v12.i8[0];
        sub_1BF8C0D00(v12.i64[0], v13, v11.i64[0], v14, 1);
        if (v15)
        {
          if (v15 == 1)
          {
            v16 = 0x746E694869726973;
          }

          else
          {
            v16 = 0x6E776F6E6B6E75;
          }

          if (v15 == 1)
          {
            v17 = 0xEF6E656B6F705373;
          }

          else
          {
            v17 = 0xE700000000000000;
          }
        }

        else
        {
          v17 = 0xE900000000000073;
          v16 = OUTLINED_FUNCTION_7_9();
        }
      }

      else
      {
        *&v35[0] = 0x7070416E69;
        *(&v35[0] + 1) = 0xE500000000000000;
        v21 = v12.i64[0];
        v22 = v11.i64[0];
        sub_1BF8C0D00(v12.i64[0], v13, v11.i64[0], v14, 0);
        MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
        MEMORY[0x1BFB5DE90](v21, v13);
        v23 = v35[0];
        if (v14)
        {
          *&v35[0] = 95;
          *(&v35[0] + 1) = 0xE100000000000000;
          MEMORY[0x1BFB5DE90](v22, v14);
          v25 = *(&v35[0] + 1);
          v24 = *&v35[0];
        }

        else
        {
          v24 = 0;
          v25 = 0xE000000000000000;
        }

        v35[0] = v23;

        MEMORY[0x1BFB5DE90](v24, v25);

        v17 = *(&v35[0] + 1);
        v16 = *&v35[0];
        a1 = v30;
        a2 = v31;
        v8 = v29;
      }

      if (v16 == a1 && v17 == a2)
      {

LABEL_40:

        a3 = v28;
        goto LABEL_41;
      }

      v27 = sub_1BF9B56D8();

      if (v27)
      {

        goto LABEL_40;
      }

      result = sub_1BF8C0CB8(v33.i64[0], v13, v34.i64[0], v14, v6);
      v10 = (v10 + 40);
      ++v9;
    }

    __break(1u);
  }

  else
  {
    v33 = v35[0];
    v34 = v35[1];

LABEL_41:
    *a3 = v33;
    *(a3 + 16) = v34;
    *(a3 + 32) = v6;
  }

  return result;
}

uint64_t static DeliveryVehicle.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A98, &qword_1BF9BFB70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9BFB50;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 2;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 2;
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 2;
  if (qword_1EDBF50B8 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EDC03488;
  v2 = qword_1EDC03490;
  v3 = unk_1EDC03498;
  *(v0 + 152) = qword_1EDC03480;
  *(v0 + 160) = v1;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = 0;
  *(v0 + 192) = 3;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 2;
  *(v0 + 232) = 4;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 2;
  *(v0 + 272) = 5;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0;
  *(v0 + 304) = 2;
  v15 = MEMORY[0x1E69E7CC0];

  sub_1BF8BDCF8(0, 3, 0);
  v4 = 0;
  v5 = v15;
  v6 = *(v15 + 16);
  v7 = 40 * v6;
  v8 = &byte_1F3EF5310;
  do
  {
    v10 = *v8++;
    v9 = v10;
    v16 = v5;
    v11 = *(v5 + 24);
    v12 = v6 + 1;
    if (v6 >= v11 >> 1)
    {
      sub_1BF8BDCF8(v11 > 1, v6 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v12;
    v13 = v5 + v7 + v4;
    *(v13 + 32) = v9;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 1;
    v4 += 40;
    v6 = v12;
  }

  while (v4 != 120);
  sub_1BF8BE040(v5);
  return v0;
}

void sub_1BF8BDC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 16);
  if (v8 <= v11)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5, a6);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_10_0(v13);
    *(v12 + 16) = v11;
    *(v12 + 24) = 2 * (v14 / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = OUTLINED_FUNCTION_30_0();
  if (v7)
  {
    if (v12 != a4 || &v16[40 * v11] <= v15)
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

__n128 OUTLINED_FUNCTION_52_1(uint64_t a1)
{
  *(a1 + 16) = v1;
  result = *(v2 - 104);
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_5(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  result = *(v1 + 224);
  v3 = *(result + 16) + *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = *(v4 - 120);
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;

  return type metadata accessor for ViewCallbacksWrapper();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1)
{
  *(v2 + 64) = a1;
  v4 = *(*(v1 + 8) + 8);

  return sub_1BF9B4E28();
}

void OUTLINED_FUNCTION_32_6()
{
  v7 = *(v5 - 136);

  sub_1BF8F5AAC(v7, v4, v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t result)
{
  *(result + 8) = sub_1BF948320;
  v2 = *(v1 + 240);
  v3 = *(v1 + 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_10(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void sub_1BF8BDF8C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_3(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5(v4, 1);
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  OUTLINED_FUNCTION_7_1();
  if (v11 != v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_1(v7 + 40 * v10);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return;
  }

  v12 = *(v7 + 16);
  v6 = __OFADD__(v12, v1);
  v13 = v12 + v1;
  if (!v6)
  {
    *(v7 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1BF8BE078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t OUTLINED_FUNCTION_40(uint64_t a1)
{
  *(v1 + 32) = a1;
  *v1 = v2;

  return sub_1BF9B4638();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return sub_1BF9B54A8();
}

void OUTLINED_FUNCTION_40_5(__n128 a1)
{
  v2 = *(v1 - 128);
  v3 = *(v1 - 104);
  *(v1 - 128) = *(v1 - 120);
  *(v1 - 112) = v3;
  *(v1 - 104) = a1;
}

uint64_t sub_1BF8BE1C4(char a1)
{
  if (a1)
  {
    return 0x746E656D656C65;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_1BF9B4B48();
}

uint64_t OUTLINED_FUNCTION_39_3(uint64_t result)
{
  *(result + 8) = sub_1BF8EC1CC;
  v2 = *(v1 + 248);
  v3 = *(v1 + 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_39_6()
{

  JUMPOUT(0x1BFB5F320);
}

__n128 OUTLINED_FUNCTION_39_7()
{
  v1 = *(v0 - 128);
  *(v0 - 240) = *(v0 - 144);
  *(v0 - 224) = v1;
  result = *(v0 - 112);
  *(v0 - 208) = result;
  v3 = *(v0 - 216);
  return result;
}

unint64_t sub_1BF8BE2D4()
{
  result = qword_1EDBF4A90;
  if (!qword_1EDBF4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A90);
  }

  return result;
}

void sub_1BF8BE328(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v12)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void OUTLINED_FUNCTION_8_3()
{
  v2 = v0[3];
  *(v1 + 24) = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
}

uint64_t OUTLINED_FUNCTION_8_9@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_8_12()
{
  v2 = *(v0 + 16) + 1;

  sub_1BF8DE328();
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_62_8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1BF8DE810(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_70_1@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

void OUTLINED_FUNCTION_70_2()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_95(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return sub_1BF9B4F08();
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  *(v4 - 128) = v0;

  return sub_1BF998494(v1, v4 - 120, v2, v3);
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

char *sub_1BF8BE870(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit15DeliveryVehicleO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1BF8BE8B0()
{
  result = sub_1BF8BE93C(319, &qword_1EDBF4E38, 0x1E696E880);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriSuggestions.AppIntent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF8BE93C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1BF8BE97C()
{
  sub_1BF8BEA3C(319, &qword_1EDBF4E60, MEMORY[0x1E69DAA28]);
  if (v0 <= 0x3F)
  {
    sub_1BF8BEA88();
    if (v1 <= 0x3F)
    {
      sub_1BF8BEA3C(319, &qword_1EDBF54C8, MEMORY[0x1E69A8E70]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BF8BEA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF8BEA88()
{
  if (!qword_1EDBF4E30)
  {
    sub_1BF8BE93C(255, &qword_1EDBF4E28, 0x1E69AC640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE96F8, &qword_1BF9BF440);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBF4E30);
    }
  }
}

uint64_t sub_1BF8BEB18(void *a1)
{
  a1[1] = sub_1BF8BAE78(&qword_1EDBF4A68, type metadata accessor for SiriSuggestions.SiriRuntimeRequestState);
  a1[2] = sub_1BF8BAE78(&qword_1EDBF4A70, type metadata accessor for SiriSuggestions.SiriRuntimeRequestState);
  result = sub_1BF8BAE78(&qword_1EDBF4A78, type metadata accessor for SiriSuggestions.SiriRuntimeRequestState);
  a1[3] = result;
  return result;
}

void sub_1BF8BEBEC()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_2_5(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  sub_1BF8BF518();
  OUTLINED_FUNCTION_47();
  sub_1BF9B5598();
  OUTLINED_FUNCTION_44();
  v20[3] = v6;
  __swift_allocate_boxed_opaque_existential_1Tm(v20);
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_73();
  v15();
  OUTLINED_FUNCTION_69();
  v16 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_77_1(v16);
  sub_1BF8C328C();
  OUTLINED_FUNCTION_53_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_32_0();
    sub_1BF9B55A8();
    OUTLINED_FUNCTION_41();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_25();
  v19(v18);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_37();
}

char *sub_1BF8BED74(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_57_6(result, a3, a2);
  }

  return result;
}

_BYTE *sub_1BF8BED90(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BF8BEE5CLL);
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

uint64_t sub_1BF8BEE84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF8BEEB0();
  *a1 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for AppInView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1BF8BEF74()
{
  result = qword_1EDBF5630;
  if (!qword_1EDBF5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5630);
  }

  return result;
}

unint64_t sub_1BF8BEFCC()
{
  result = qword_1EDBF5638;
  if (!qword_1EDBF5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5638);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_1BF9B5868();
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_1BF9B5558();
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_1BF9B5558();
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  v2 = *(v0 - 208);

  return sub_1BF9B54A8();
}

unint64_t OUTLINED_FUNCTION_2_21(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  v2 = *(v0 - 104);

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_2_26()
{
  v2 = *(*(v1 - 296) + 8);
  result = v0;
  v4 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1)
{
  *(a1 + 8) = sub_1BF993324;
  v2 = *(v1 + 64);
  return *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  *(v1 + 88) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;

  return sub_1BF8E8118(v1 + 56, v0, v2);
}

uint64_t OUTLINED_FUNCTION_2_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return DelegatingResolver.init(resolverTypeOperand:delegationType:delegation:params:valuePostProcessor:dependentValuesUpdate:)(a11, v21, 0x76697463616F7270, 0xE900000000000065, va, v22, a7, v23, a8, a9);
}

uint64_t OUTLINED_FUNCTION_2_32()
{
  v2 = *(v0 - 104);

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_2_33()
{
  __swift_destroy_boxed_opaque_existential_1((v0 - 168));

  return __swift_destroy_boxed_opaque_existential_1((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_2_34@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(result + 48) + 16 * a2);
  v2[30] = *v3;
  v2[31] = v3[1];
  v2[32] = *(*(result + 56) + 8 * a2);
  return result;
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_48_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;
  *(v2 - 232) = *(v2 + 16);

  return sub_1BF9B4378();
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_48_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return sub_1BF9B4C88();
}

unint64_t sub_1BF8BF518()
{
  result = qword_1EDBF5628;
  if (!qword_1EDBF5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5628);
  }

  return result;
}

unint64_t sub_1BF8BF584()
{
  result = qword_1EDBF50B0;
  if (!qword_1EDBF50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return sub_1BF9B53A8();
}

void OUTLINED_FUNCTION_20_11(uint64_t a1@<X8>)
{
  *v3 = a1;
  v4 = *(v1 + 48);
  v5 = v2 + *v2;
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  result = *(v0 - 120);
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return sub_1BF9B4518();
}

uint64_t OUTLINED_FUNCTION_20_15()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_20_21()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t TransportWrapper.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A30, &unk_1BF9C77C0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_39_2();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8BF584();
  sub_1BF9B5898();
  v12 = v3[3];
  v13 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3, v12);
  v18[3] = v12;
  v18[4] = v13;
  __swift_allocate_boxed_opaque_existential_1Tm(v18);
  OUTLINED_FUNCTION_24_1();
  v15 = *(v14 + 16);
  OUTLINED_FUNCTION_35_10();
  v16();
  sub_1BF8BEBC4();
  (*(v7 + 8))(v2, v5);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 200);
  v4 = *(v2 + 184);
  return v2 + 112;
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return sub_1BF9B5508();
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_1BF9B57A8();
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v1 = v0[5];
  result = v0[3];
  v3 = *(v0[4] + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_12_21(uint64_t a1)
{

  return sub_1BF8EE3F8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return sub_1BF9B5598();
}

void OUTLINED_FUNCTION_28_8(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  sub_1BF8D0240();
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_1BF8BFD00()
{
  result = qword_1EDBF4D18[0];
  if (!qword_1EDBF4D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4D18);
  }

  return result;
}

uint64_t sub_1BF8BFD54()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v1 == 0x746E65746E496E69 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6E65746E49707061 && v0 == 0xE900000000000074;
    if (v5 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x6E6F69746361 && v0 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_70();

      if (v7)
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

uint64_t sub_1BF8BFE40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF8BFD54();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];

  return sub_1BF8D2004(v2, (v0 + 2));
}

uint64_t OUTLINED_FUNCTION_24_5()
{
}

void OUTLINED_FUNCTION_24_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_12()
{

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_24_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return sub_1BF8D2004(&a41, v41 + 104);
}

uint64_t sub_1BF8BFFE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_54_6()
{

  return sub_1BF9B54B8();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 16) = v3;
  v5 = *(v1 + 8);
}

void OUTLINED_FUNCTION_30_6()
{

  sub_1BF8D0240();
}

void OUTLINED_FUNCTION_30_7()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1BFB5F320);
}

uint64_t OUTLINED_FUNCTION_30_9()
{

  return sub_1BF9B5898();
}

uint64_t OUTLINED_FUNCTION_30_10()
{
  sub_1BF8C2C9C((v0 + 48), v0 + 112);
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 112), v1);
  v3 = *(v2 + 8);
  return v1;
}

unint64_t OUTLINED_FUNCTION_30_11()
{
  result = v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v2;
  v4 = *(v0 + 40);
  return result;
}

void OUTLINED_FUNCTION_9_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_9_4()
{
  v1 = *(v0 - 264);
  *(v0 - 216) = *(v0 - 224);
  *(v0 - 208) = v1;
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_1BF9B5868();
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1)
{

  return sub_1BF8EE3F8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_65_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 152);
  v5 = *(*(v2 + 160) + 16);
  v6 = v1 + *(a1 + 28);
  return v3;
}

void OUTLINED_FUNCTION_65_5()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_45_2()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 176);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 200, v3);
}

uint64_t OUTLINED_FUNCTION_45_3()
{

  return sub_1BF9B5558();
}

uint64_t *OUTLINED_FUNCTION_0_1()
{
  result = (*(v0 + 8) + 24);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return sub_1BF9B5148();
}

uint64_t OUTLINED_FUNCTION_0_29()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_0_33@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 a14, __int128 a15)
{
  *(v16 + 256) = a1;
  *(v16 + 264) = v15;
  result = a14;
  *(v16 + 224) = a14;
  *(v16 + 240) = a15;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 64) = a13;
  *(v16 + 88) = -1;
  return result;
}

int *OUTLINED_FUNCTION_0_34(int *result, uint64_t a2)
{
  *(v2 + 264) = a2;
  v3 = result + *result;
  return result;
}

uint64_t SiriSuggestions.Intent.description.getter()
{
  v0 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v1 = OUTLINED_FUNCTION_72(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v6 = v5 - v4;
  v7 = type metadata accessor for SiriSuggestions.Intent(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_0_12();
  sub_1BF8C14B0();
  OUTLINED_FUNCTION_23_7();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *v13;
    OUTLINED_FUNCTION_42_3();
    sub_1BF9B5288();

    OUTLINED_FUNCTION_50_3();
    v32[0] = v21;
    v32[1] = v20;
    v22 = [v19 description];
    v23 = sub_1BF9B4AA8();
    v25 = v24;

    MEMORY[0x1BFB5DE90](v23, v25);
LABEL_6:

    return v32[0];
  }

  if (EnumCaseMultiPayload != 1)
  {
    v26 = *(v13 + 8);
    v27 = *(v13 + 16);
    v28 = *(v13 + 24);
    v29 = *(v13 + 32);
    v30 = *(v13 + 48);
    OUTLINED_FUNCTION_42_3();
    sub_1BF9B5288();

    strcpy(v32, "Intent.action_");
    HIBYTE(v32[1]) = -18;

    MEMORY[0x1BFB5DE90](v28, v29);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_33();
  sub_1BF920B90();
  OUTLINED_FUNCTION_42_3();
  sub_1BF9B5288();

  OUTLINED_FUNCTION_50_3();
  v32[0] = v16 | 1;
  v32[1] = v15;
  SiriSuggestions.AppIntent.description.getter();
  MEMORY[0x1BFB5DE90]();

  v17 = v32[0];
  OUTLINED_FUNCTION_2_15();
  sub_1BF920AE4(v6, v18);
  return v17;
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_1BF9B4A28();
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1)
{

  return sub_1BF8E8118(a1, v1, v2);
}

uint64_t *OUTLINED_FUNCTION_41_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a12 = v13;
  a13 = *(v14 + 8);

  return __swift_allocate_boxed_opaque_existential_1Tm(&a9);
}

uint64_t OUTLINED_FUNCTION_41_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_41_5(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return swift_dynamicCast();
}

uint64_t sub_1BF8C0CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  return result;
}

uint64_t sub_1BF8C0D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  return result;
}

uint64_t sub_1BF8C0D48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF8C0DC8()
{
  sub_1BF9B57A8();
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  DeliveryVehicle.rawValue.getter();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t DeliveryVehicle.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  if (v5 == 2)
  {
    if (v4 | v2 | v1 | v3)
    {
      v7 = v4 | v2 | v3;
      if (v1 == 1 && v7 == 0)
      {
        return 0xD000000000000010;
      }

      else if (v1 == 2 && v7 == 0)
      {
        return OUTLINED_FUNCTION_6_10();
      }

      else if (v1 != 3 || v7)
      {
        if (v1 != 4 || v7)
        {
          return 0xD000000000000010;
        }

        else
        {
          return 0xD000000000000014;
        }
      }

      else
      {
        return OUTLINED_FUNCTION_8_7();
      }
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (v5 == 1)
  {
    result = OUTLINED_FUNCTION_7_9();
    if (v1 >= 2u)
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v12 = *v0;
    v13 = DeliveryVehicle.deliveryVehicleType.getter();
    MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
    MEMORY[0x1BFB5DE90](v1, v2);
    if (v3)
    {
      MEMORY[0x1BFB5DE90](v4, v3);
      v11 = 95;
      v10 = 0xE100000000000000;
    }

    else
    {
      v11 = 0;
      v10 = 0xE000000000000000;
    }

    MEMORY[0x1BFB5DE90](v11, v10);

    return v13;
  }

  return result;
}

void SiriSuggestions.Intent.getIntentQuery()()
{
  OUTLINED_FUNCTION_65_0();
  v3 = v2;
  v4 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v5 = OUTLINED_FUNCTION_72(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  v12 = OUTLINED_FUNCTION_72(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_11();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v22 = type metadata accessor for SiriSuggestions.Intent(0);
  v23 = OUTLINED_FUNCTION_13(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_59_3();
  sub_1BF8C14B0();
  OUTLINED_FUNCTION_58_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = *v1;
    v39 = [*v1 typeName];
    v62 = sub_1BF9B4AA8();
    v64 = v40;

    sub_1BF8C160C();
    if (!v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9640, &qword_1BF9BF1F8);
      v41 = sub_1BF9B4988();
    }

    OUTLINED_FUNCTION_18_6(v41);
    v63 = v42;

    v43 = sub_1BF8C2F90();
    v35 = v44;
    OUTLINED_FUNCTION_0_12();
    sub_1BF8C14B0();
    OUTLINED_FUNCTION_48_1(v21);
    if (v35)
    {
      OUTLINED_FUNCTION_10();
      if (sub_1BF9B4C08())
      {
        v36 = 0;
      }

      else
      {
        v36 = 2;
      }

      v37 = v43;
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    v58 = type metadata accessor for SiriSuggestions.IntentQuery(0);
    v59 = *(v58 + 32);
    sub_1BF921368();
    v60 = v3 + *(v58 + 28);
    sub_1BF9B4508();

    sub_1BF8DFBF0(v21, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    v52 = 1;
    v28 = v62;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_12();
    sub_1BF920B90();
    SiriSuggestions.AppIntent.identifier.getter();
    v28 = v27;
    v64 = v29;
    SiriSuggestions.AppIntent.parameters.getter();
    OUTLINED_FUNCTION_18_6(v30);
    v63 = v31;

    SiriSuggestions.AppIntent.appBundleId.getter();
    v33 = v32;
    v35 = v34;
    OUTLINED_FUNCTION_0_12();
    sub_1BF8C14B0();
    OUTLINED_FUNCTION_48_1(v0);
    if (v35)
    {
      OUTLINED_FUNCTION_10();
      if (sub_1BF9B4C08())
      {
        v36 = 0;
      }

      else
      {
        v36 = 2;
      }

      v37 = v33;
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    v54 = type metadata accessor for SiriSuggestions.IntentQuery(0);
    v55 = *(v54 + 32);
    sub_1BF921368();
    v56 = v3 + *(v54 + 28);
    sub_1BF9B4508();
    sub_1BF8DFBF0(v0, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    OUTLINED_FUNCTION_2_15();
    sub_1BF920AE4(v10, v57);
    v52 = 0;
LABEL_24:
    v53 = v63;
    v51 = v64;
    goto LABEL_25;
  }

  v28 = *v1;
  v45 = *(v1 + 8);
  v46 = *(v1 + 16);
  v47 = *(v1 + 40);
  v61 = *(v1 + 32);
  v35 = *(v1 + 48);
  v36 = *(v1 + 56);
  v64 = v45;

  v63 = sub_1BF91C340(v46);
  OUTLINED_FUNCTION_0_12();
  sub_1BF8C14B0();
  OUTLINED_FUNCTION_48_1(v17);
  v62 = v47;
  if (v35)
  {

    OUTLINED_FUNCTION_10();
    if (sub_1BF9B4C08())
    {
      v36 = 0;
    }

    else
    {
      v36 = 2;
    }
  }

  v48 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v49 = *(v48 + 32);
  sub_1BF921368();
  v50 = v3 + *(v48 + 28);
  sub_1BF9B4508();

  v51 = v64;

  sub_1BF8DFBF0(v17, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  v52 = 2;
  v37 = v62;
  v53 = v63;
LABEL_25:
  *(v3 + 8) = v28;
  *(v3 + 16) = v51;
  *(v3 + 24) = v52;
  *v3 = v53;
  *(v3 + 32) = v37;
  *(v3 + 40) = v35;
  *(v3 + 48) = v36;
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF8C14B0()
{
  OUTLINED_FUNCTION_34_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return sub_1BF9B5288();
}

uint64_t OUTLINED_FUNCTION_57_8()
{

  return sub_1BF98CF44();
}

uint64_t OUTLINED_FUNCTION_57_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 176) = a1;

  return sub_1BF8D2004(v1 + 40 * a1, (v2 - 176) | 8);
}

void sub_1BF8C160C()
{
  v1 = sub_1BF8C1810(v0);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9648, &qword_1BF9BF200);
    v3 = sub_1BF9B5458();
    v4 = 0;
    v5 = *(v2 + 64);
    v6 = *(v2 + 32);
    OUTLINED_FUNCTION_1_2();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    v13 = v12 + 64;
    if ((v8 & v7) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_17_9();
LABEL_9:
        v17 = v14 | (v4 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        sub_1BF8C187C(*(v2 + 56) + 32 * v17, v31);
        sub_1BF8C187C(v31, v29);
        v30[3] = &type metadata for IntentParameterWrapped;
        v30[4] = sub_1BF8C18D8();
        v30[5] = sub_1BF8C1990();
        v30[6] = sub_1BF8C193C();
        sub_1BF8C192C(v29, &v28);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
        v21 = swift_dynamicCast() ? v27 : 0;
        v30[0] = v21;
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_31_5();
        *(v13 + v23) |= v22 << v17;
        v24 = (v3[6] + 16 * v17);
        *v24 = v20;
        v24[1] = v19;
        sub_1BF8C17FC(v30, (v3[7] + 56 * v17));
        OUTLINED_FUNCTION_26_6();
        if (v26)
        {
          break;
        }

        v3[2] = v25;
        if (!v9)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_4:
      v15 = v4;
      while (1)
      {
        v4 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v4 >= v11)
        {

          return;
        }

        v16 = *(v2 + 64 + 8 * v4);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v9 = (v16 - 1) & v16;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

__n128 *sub_1BF8C17FC(uint64_t a1, __n128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  a2[3].n128_u64[0] = *(a1 + 48);
  return OUTLINED_FUNCTION_33_3(v2, v3, v4, a1, a2);
}

uint64_t sub_1BF8C1810(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BF9B4968();

  return v3;
}

uint64_t sub_1BF8C187C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BF8C18D8()
{
  result = qword_1EDBF47E0;
  if (!qword_1EDBF47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47E0);
  }

  return result;
}

_OWORD *sub_1BF8C192C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1BF8C193C()
{
  result = qword_1EDBF47E8;
  if (!qword_1EDBF47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47E8);
  }

  return result;
}

unint64_t sub_1BF8C1990()
{
  result = qword_1EDBF47F0;
  if (!qword_1EDBF47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_10_1(unint64_t *a1)
{

  return sub_1BF919BBC(a1);
}

uint64_t OUTLINED_FUNCTION_26_5()
{
  *(v2 + 16) = v3;

  return sub_1BF8C2C9C((v0 + 16), v2 + 40 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_21@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_26_9(uint64_t a1)
{
  *(a1 + 8) = sub_1BF94A6E0;
  v2 = *(v1 + 32);
  return *(v1 + 88);
}

void OUTLINED_FUNCTION_26_11(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_26_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_16@<X0>(uint64_t a1@<X8>)
{

  return sub_1BF8C187C(v1 + 32 * a1 + 32, v2 + 96);
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return sub_1BF9B5558();
}

__n128 *OUTLINED_FUNCTION_33_3(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, __n128 *a5)
{
  a5[1] = a2;
  a5[2] = a3;
  *a5 = a1;
  return a5;
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1)
{
  *(a1 + 8) = sub_1BF94DAC4;
  result = *(v1 + 96);
  v3 = *(v1 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_8()
{
  v2 = *(*(v0 + 8) + 8);

  return sub_1BF9B4E28();
}

void *OUTLINED_FUNCTION_33_9()
{
  *(v1 + 16) = v2;

  return memcpy((v1 + 120 * v0 + 32), (v3 - 216), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  *(v2 - 296) = v1;
  *(v2 - 288) = v0;

  return sub_1BF9B5568();
}

uint64_t OUTLINED_FUNCTION_33_11()
{

  return sub_1BF9B5868();
}

BOOL OUTLINED_FUNCTION_33_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_4()
{
  v1 = v0[23];
  v2 = *(v0[24] + 8);
  return v0[25];
}

uint64_t OUTLINED_FUNCTION_92()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_93()
{

  JUMPOUT(0x1BFB5F320);
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 104) = a6;
  *(v8 - 96) = a8;
  *(v8 - 120) = result;
  *(v8 - 112) = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_13(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_15()
{
  v2 = *(v0 + 136);

  return sub_1BF9B4598();
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_1BF9B5518();
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1)
{
  *(v3 + 120) = a1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v2;
  sub_1BF8C2C9C((v3 + 16), a1 + 32);

  return sub_1BF8BCED4(v4, v1);
}

uint64_t *OUTLINED_FUNCTION_18_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_1BF902974(v18 - 208, v18 - 216, a3, v15, a5, v16, (v18 - 160), v17, a9, a10, a11, a12, a13, a14, a15);
}

void OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  sub_1BF8C2454(a1);
}

unint64_t OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_1BF8C2E64(a2, a3);
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_18_13()
{
  v2 = (*(v1 - 256) + 32 * v0);
  v3 = *v2;
  if ((v2[1] & 0x2000000000000000) == 0)
  {
    v4 = *v2 & 0xFFFFFFFFFFFFLL;
  }
}

void OUTLINED_FUNCTION_18_15(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return *(v2 + 112);
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return sub_1BF9B4B48();
}

uint64_t OUTLINED_FUNCTION_17_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return swift_slowAlloc();
}

uint64_t sub_1BF8C2240(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_53_3(a1, a2);
  v4 = *(v3 + 48);
  *(v2 + 32) = *(v3 + 32);
  *(v2 + 48) = v4;
  OUTLINED_FUNCTION_11(v5);
  (*v6)(v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_64_3(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_23_3@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = v2;
}

void OUTLINED_FUNCTION_23_5(uint64_t a1@<X8>)
{
  v4 = *(v3 - 240);
  v4[3] = v2;
  v4[4] = a1;
  *v4 = v1;
}

uint64_t OUTLINED_FUNCTION_23_9()
{
  v2 = v0[7];
  result = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_23_13()
{
  v2 = *(v0 - 184);

  return sub_1BF9B54A8();
}

uint64_t OUTLINED_FUNCTION_23_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_18(uint64_t a1, uint64_t a2)
{

  return sub_1BF9AF258(a1, a2, v2, v3);
}

void sub_1BF8C2454(uint64_t a1)
{
  OUTLINED_FUNCTION_57_3(a1);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9778, &unk_1BF9BF990);
    v4 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v6 = v38 + 64;
  v5 = *(v38 + 64);
  v7 = *(v38 + 32);
  OUTLINED_FUNCTION_1_2();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  OUTLINED_FUNCTION_35_3();

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_51_2(v15 | (v14 << 6), v34, v35, v36, v37, v38);
    sub_1BF8C2240(v17 + v16 * v18, &__src[2]);
    __src[0] = v2;
    __src[1] = v3;
    memcpy(__dst, __src, sizeof(__dst));
    v2 = __dst[0];
    v19 = __dst[1];
    v35(&__dst[2], v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    swift_dynamicCast();
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v40 = v41;
    v41 = v42;
    v42 = v43;
    *&v43 = v44;
    v20 = OUTLINED_FUNCTION_65_2();
    v3 = sub_1BF8C2E64(v20, v21);
    if (v22)
    {
      OUTLINED_FUNCTION_66_2();
      v23 = *(v4 + 56);
      sub_1BF9213C0();
      v13 = v14;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v24)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v25);
      v27 = (v26 + 16 * v3);
      *v27 = v2;
      v27[1] = v19;
      v28 = *(v4 + 56) + 56 * v3;
      v29 = v40;
      v30 = v41;
      v31 = v42;
      *(v28 + 48) = v43;
      *(v28 + 16) = v30;
      *(v28 + 32) = v31;
      *v28 = v29;
      OUTLINED_FUNCTION_26_6();
      if (v33)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v32;
      v13 = v14;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_15_6()
{
  v2 = *(v0 - 136);

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[9];
  v5 = v2[10];
  v6 = v2[8];
  return v3;
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return sub_1BF9B5898();
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return sub_1BF9B5478();
}

uint64_t OUTLINED_FUNCTION_15_17(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 16) = 5;
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return sub_1BF9B5558();
}

void OUTLINED_FUNCTION_15_22()
{

  JUMPOUT(0x1BFB5DE90);
}

void OUTLINED_FUNCTION_15_24()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1BFB5F320);
}

uint64_t OUTLINED_FUNCTION_15_25(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, __int128);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return sub_1BF8C2C9C(va, va1);
}

uint64_t OUTLINED_FUNCTION_4_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v19;
  a1[5] = v18;
  a1[6] = v17;
  a1[7] = a13;
  a1[8] = v20;
  sub_1BF8C2C9C((v15 + 16), (a1 + 9));

  return sub_1BF8EE390(v16, a14, v14, v21);
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  v2 = *(v0 - 120);

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_4_13()
{
  v1 = *(v0 + 32);
  result = *v0;
  v3 = *(v0 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v2 = *(v0 - 104);

  return sub_1BF9B5598();
}

void OUTLINED_FUNCTION_4_24()
{

  sub_1BF8DE328();
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_31()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 24);
}

uint64_t sub_1BF8C2C9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_50_4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];
  v4 = *(v0[10] + 16);
  return v0[11];
}

uint64_t OUTLINED_FUNCTION_50_7()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_1BF8D2004(v2 + 176, v2 + 216);
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_1BF9B5638();
}

char *OUTLINED_FUNCTION_53_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v11 + 16);
  result = &a9 - v9;
  *(v12 - 280) = v10;
  return result;
}

__n128 OUTLINED_FUNCTION_53_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, __int128 a14, uint64_t a15)
{
  result = a13;
  *v15 = a13;
  *(v15 + 16) = a14;
  *(v15 + 32) = a15;
  return result;
}

unint64_t sub_1BF8C2E64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BF9B57A8();
  sub_1BF9B4B48();
  v6 = sub_1BF9B57E8();

  return sub_1BF8C2EDC(a1, a2, v6);
}

unint64_t sub_1BF8C2EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BF9B56D8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BF8C2F90()
{
  v1 = sub_1BF944D50(v0);
  v3 = v2;
  if (v2 && (sub_1BF9B4C08() & 1) != 0)
  {
    v4 = sub_1BF9B4B58();
    v5 = sub_1BF90FD84(v4, v1, v3);
    MEMORY[0x1BFB5DE30](v5);
  }

  return OUTLINED_FUNCTION_43();
}

void OUTLINED_FUNCTION_61_0()
{

  JUMPOUT(0x1BFB5DE90);
}

void OUTLINED_FUNCTION_61_4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_61_5()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return v0 + 48;
}

uint64_t OUTLINED_FUNCTION_61_7()
{
}

uint64_t OUTLINED_FUNCTION_43_6(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1BF8DE810(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return sub_1BF9B54A8();
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1BF8DE810(v3, v4, va);
}

void OUTLINED_FUNCTION_46_6(__n128 a1, __n128 a2, __n128 a3)
{
  *(v3 - 128) = a3;
  *(v3 - 112) = a2;
  *(v3 - 96) = a1;
}

uint64_t OUTLINED_FUNCTION_82_2()
{

  return sub_1BF9B4968();
}

unint64_t sub_1BF8C328C()
{
  result = qword_1EDBF5640;
  if (!qword_1EDBF5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5640);
  }

  return result;
}

void TypeTransport.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v21 = sub_1BF9B4668();
  v4 = OUTLINED_FUNCTION_1(v21);
  v22 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4C8, &qword_1BF9C77A0);
  OUTLINED_FUNCTION_1(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_77_0();
  v17 = *v0;
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF8C34DC();
  sub_1BF9B5898();
  sub_1BF9B4638();
  OUTLINED_FUNCTION_17_18();
  sub_1BF8C3530(v19, v20);
  sub_1BF9B5638();
  (*(v22 + 8))(v10, v21);
  (*(v13 + 8))(v1, v11);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

uint64_t OUTLINED_FUNCTION_104_1()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

unint64_t sub_1BF8C34DC()
{
  result = qword_1EDBF5658;
  if (!qword_1EDBF5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5658);
  }

  return result;
}

uint64_t sub_1BF8C3530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void OUTLINED_FUNCTION_79_1()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[31];
  v8 = v0[32];
  v9 = v0[30];
}

void AssistantTurnState.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v49 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8318, &qword_1BF9B6408);
  v5 = OUTLINED_FUNCTION_1(v4);
  v47 = v6;
  v48 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v46 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8320, &qword_1BF9B6410);
  v12 = OUTLINED_FUNCTION_1(v11);
  v44 = v13;
  v45 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v43 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8328, &qword_1BF9B6418);
  v19 = OUTLINED_FUNCTION_1(v18);
  v41 = v20;
  v42 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE8330, &qword_1BF9B6420);
  OUTLINED_FUNCTION_1(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v40 - v32;
  v34 = *v0;
  v35 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF8C3998();
  sub_1BF9B5898();
  if (v34 == 2)
  {
    sub_1BF8D0C28();
    OUTLINED_FUNCTION_28_3();
    v37 = v41;
    v36 = v42;
  }

  else
  {
    if (v34 != 3)
    {
      sub_1BF8C39EC();
      v38 = v46;
      OUTLINED_FUNCTION_28_3();
      sub_1BF8C3BA0();
      v39 = v48;
      sub_1BF9B5638();
      (*(v47 + 8))(v38, v39);
      (*(v28 + 8))(v33, v26);
      goto LABEL_7;
    }

    sub_1BF8D0BD4();
    v25 = v43;
    OUTLINED_FUNCTION_28_3();
    v37 = v44;
    v36 = v45;
  }

  (*(v37 + 8))(v25, v36);
  (*(v28 + 8))(v33, v26);
LABEL_7:
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF8C3998()
{
  result = qword_1EDBF4C08;
  if (!qword_1EDBF4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4C08);
  }

  return result;
}

unint64_t sub_1BF8C39EC()
{
  result = qword_1EDBF4BE0;
  if (!qword_1EDBF4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BE0);
  }

  return result;
}

uint64_t sub_1BF8C3A48(char a1)
{
  if (!a1)
  {
    return 0x6E7275546F72657ALL;
  }

  if (a1 == 1)
  {
    return 0x61546E6968746977;
  }

  return 0x706D6F436B736174;
}

_BYTE *storeEnumTagSinglePayload for AssistantTurnState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1BF8C3B78);
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

unint64_t sub_1BF8C3BA0()
{
  result = qword_1EDBF4828;
  if (!qword_1EDBF4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4828);
  }

  return result;
}

unint64_t sub_1BF8C3C48()
{
  result = qword_1EDBF4BB8;
  if (!qword_1EDBF4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4BB8);
  }

  return result;
}

uint64_t sub_1BF8C3C9C@<X0>(uint64_t *a1@<X8>)
{
  result = TaskInitiatedParty.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TaskInitiatedParty.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6E61747369737361;
  }

  else
  {
    result = 1919251317;
  }

  *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_1BF9B56D8();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_1BF9B5558();
}

void OUTLINED_FUNCTION_22_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_22_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
  *(result + 40) = 0xEB00000000736570;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13(uint64_t a1)
{

  return sub_1BF8EE3F8(a1, v1, v2);
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.description.getter()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830) - 8) + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0x69724F7475706E69, 0xED0000203A6E6967);
  sub_1BF8C4098(v0, v5);
  v6 = sub_1BF9B4588();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1BF98D2D0(v5);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = sub_1BF9B4578();
    v8 = v9;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v15[0] = v7;
  v15[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  v10 = sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](v10);

  MEMORY[0x1BFB5DE90](0xD000000000000016, 0x80000001BF9CE0D0);
  v11 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
  LOBYTE(v15[0]) = *(v1 + *(v11 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D8, &qword_1BF9C6840);
  v12 = sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](v12);

  MEMORY[0x1BFB5DE90](0xD000000000000025, 0x80000001BF9CE0F0);
  LOBYTE(v15[0]) = *(v1 + *(v11 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3E0, &qword_1BF9C6848);
  v13 = sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](v13);

  return v16;
}

uint64_t sub_1BF8C4098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssistantTurnState.description.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (v1 == 3)
  {
    return OUTLINED_FUNCTION_14();
  }

  strcpy(v5, "taskComplete_");
  HIWORD(v5[1]) = -4864;
  if (v1)
  {
    v3 = 0x6E61747369737361;
  }

  else
  {
    v3 = 1919251317;
  }

  if (v1)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1BFB5DE90](v3, v4);

  return v5[0];
}

uint64_t sub_1BF8C41CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF8C4238(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF8C4510(v6);
  *a1 = v2;
  return result;
}

void sub_1BF8C4280()
{
  OUTLINED_FUNCTION_59_6();
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_77_3(v8);
  if (v5)
  {
    OUTLINED_FUNCTION_94_1(v11, v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v17);
    OUTLINED_FUNCTION_60_3();
    v17[2] = v4;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v17 != v0 || &v0[4 * v4 + 4] <= v17 + 4)
    {
      v20 = OUTLINED_FUNCTION_72_3();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_72_3();
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_13_1()
{
  v2 = *(v0 - 104);

  return sub_1BF9B5598();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  *(v5 - 224) = a4;
  *(v5 - 256) = a3;
  *(v5 - 248) = a2;
  *(v5 - 272) = result;
  *(v5 - 240) = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  v2 = v0[40];
  result = v0[41];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  v10 = v0[25];
  v11 = v0[26];
  v13 = v0[22];
  v12 = v0[23];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1BF8D2004(a6, v6 - 128);
}

uint64_t sub_1BF8C4510(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A8, &unk_1BF9C2BE0);
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF8D6C50(v7, v8, a1, v4);
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
    return sub_1BF8D6B88(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF8C4614(uint64_t a1)
{
  v14 = sub_1BF95904C(a1);
  sub_1BF8C41CC(&v14);
  v1 = v14;
  v2 = v14[2];
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v3 = v16;
    v4 = v1 + 7;
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v14 = *(v4 - 3);
      v15 = v5;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1BFB5DE90](61, 0xE100000000000000);
      MEMORY[0x1BFB5DE90](v6, v7);

      v8 = v14;
      v9 = v15;
      v16 = v3;
      v10 = v3[2];
      if (v10 >= v3[3] >> 1)
      {
        sub_1BF8D01C0();
        v3 = v16;
      }

      v3[2] = v10 + 1;
      v11 = &v3[2 * v10];
      v11[4] = v8;
      v11[5] = v9;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  v12 = sub_1BF9B4A78();

  return v12;
}

unint64_t sub_1BF8C47C8()
{
  result = qword_1EDBF4E48;
  if (!qword_1EDBF4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4E48);
  }

  return result;
}

uint64_t sub_1BF8C482C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BF8C4614(a3);
  v5 = v4;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = v3;

    MEMORY[0x1BFB5DE90](35, 0xE100000000000000);
    MEMORY[0x1BFB5DE90](v7, v5);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_3_2();
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit0aB0O10IntentTypeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit0aB0O15IntentMatchable_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF8C4938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF9B47C8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t SuggestionDetails.suggestionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t Action.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BF8C4AD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BF8C4B7C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  v3 = sub_1BF8C4BD4(v2);

  return v3;
}

uint64_t sub_1BF8C4BD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_13_14();
    sub_1BF8D07E8();
    v3 = v15;
    v5 = a1 + 32;
    do
    {
      sub_1BF8E69C4(v5, v13);
      v6 = OUTLINED_FUNCTION_22_0();
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      v9 = OUTLINED_FUNCTION_24();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_41_7();
      OUTLINED_FUNCTION_52_6();
      if (v11)
      {
        sub_1BF8D07E8();
        v3 = v15;
      }

      *(v3 + 16) = v8;
      sub_1BF8C2C9C(&v14, v3 + 40 * v1 + 32);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1BF8C5178()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1BF8C51AC()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

_OWORD *sub_1BF8C530C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1BF8C5324()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF8C5358()
{
  OUTLINED_FUNCTION_11(*(v0 + 16));
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF8C5580()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1BF8C55B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF8C5628()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

double sub_1BF8C5690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1BF8D2004(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF8C5764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8F3E30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8C57E0()
{
  v1 = *(type metadata accessor for ActionIdentifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1BF8F5AAC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_12;
    }

    v7 = *(v5 + 8);
    goto LABEL_5;
  }

  v8 = *v5;

  sub_1BF8F5A94(*(v5 + 8), *(v5 + 16), *(v5 + 24));
  v9 = *(v5 + 40);

  v10 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v11 = *(v10 + 28);
  v12 = sub_1BF9B4518();
  OUTLINED_FUNCTION_16_3(v12);
  (*(v13 + 8))(v5 + v11);
  v14 = v5 + *(v10 + 32);
  v15 = type metadata accessor for SiriSuggestions.Intent(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 2)
    {
      v21 = *(v14 + 8);

      v22 = *(v14 + 16);

      v23 = *(v14 + 32);

      v24 = *(v14 + 48);
    }

    else
    {
      if (v16 != 1)
      {
        if (!v16)
        {
        }

        goto LABEL_12;
      }

      type metadata accessor for SiriSuggestions.AppIntent(0);
      v19 = swift_getEnumCaseMultiPayload();
      if (v19 == 2)
      {
        v20 = sub_1BF9B4748();
LABEL_22:
        OUTLINED_FUNCTION_16_3(v20);
        (*(v26 + 8))(v14);
        goto LABEL_12;
      }

      if (v19 != 1)
      {
        if (v19)
        {
          goto LABEL_12;
        }

        v20 = sub_1BF9B4848();
        goto LABEL_22;
      }

      v25 = *(v14 + 16);
    }

LABEL_5:
  }

LABEL_12:
  v17 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v17 + 16, v2 | 7);
}

uint64_t sub_1BF8C5B2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF8C5C6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF8C5CA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF8F9498();
  *a2 = result;
  return result;
}

uint64_t sub_1BF8C5DBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF8C5E50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1BF9B45B8();
  OUTLINED_FUNCTION_16_3(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1BF8C5ED0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF8C5F50(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  sub_1BF9B50F8();
  return sub_1BF9B4678();
}

uint64_t sub_1BF8C5F9C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9228, &qword_1BF9BD070);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BF8C5FCC()
{
  if (*(v0 + 48) <= 1u)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1BF8C6010()
{
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v1);
  sub_1BF90D8B8(*&v0[v8], *&v0[v8 + 8], *&v0[v8 + 16], v0[v8 + 24]);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

uint64_t sub_1BF8C627C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF8C6504()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF8C653C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF8C69EC(uint64_t a1)
{
  OUTLINED_FUNCTION_1_15();
  result = sub_1BF936FCC(v2, v3, v4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF8C6A34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF932AF0();
  *a2 = result;
  return result;
}

uint64_t sub_1BF8C6AE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF8C6B1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF8C6B5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF8C6C08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1BF8C6C48()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF8C6CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionIdentifier();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_21(*(a1 + *(a3 + 60)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1BF8C6D50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionIdentifier();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF8C6DF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_21(*a1);
  }

  v7 = type metadata accessor for ActionIdentifier();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1BF8C6E74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionIdentifier();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF8C6EF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 104);
  if (v3 != 255)
  {
    sub_1BF8C0CB8(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), v3);
  }

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1BF8C701C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF8C705C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF8C7144()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  OUTLINED_FUNCTION_59_5();
  v2 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[5];

  if (v0[6])
  {
    v9 = v0[7];
  }

  v10 = v0[9];

  v11 = v0[11];

  v12 = OUTLINED_FUNCTION_77_2();
  v13(v12);
  v14 = OUTLINED_FUNCTION_76_2();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

uint64_t sub_1BF8C7238()
{
  v1 = v0[4];
  v2 = sub_1BF9B4E58();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[5];

  if (v0[6])
  {
    v9 = v0[7];
  }

  v10 = v0[9];

  v11 = v0[11];

  v12 = OUTLINED_FUNCTION_77_2();
  v13(v12);
  v14 = OUTLINED_FUNCTION_76_2();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

uint64_t sub_1BF8C731C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BF8C732C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BF8C733C()
{
  v1 = v0[4];
  v2 = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    v8 = v0[8];
  }

  v9 = (v6 + ((v4 + 72) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 48);
  OUTLINED_FUNCTION_100_0();
  (*(v11 + 8))(v13 + v12, v1);
  v14 = *(v0 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v4 | 7);
}

uint64_t sub_1BF8C743C()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_89_0();
  v3 = OUTLINED_FUNCTION_10_11(v2);
  v5 = *(v4 + 80);
  v7 = (*(v6 + 64) + ((v5 + 32) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + 56);
  OUTLINED_FUNCTION_100_0();
  (*(v9 + 8))(v11 + v10, v1);
  v12 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v5 | 7);
}

uint64_t sub_1BF8C751C()
{
  v1 = v0[4];
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    v7 = v0[8];
  }

  v8 = v0[10];

  v9 = OUTLINED_FUNCTION_77_2();
  v10(v9);
  v11 = OUTLINED_FUNCTION_76_2();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1BF8C75D8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

char *sub_1BF8C76E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

uint64_t sub_1BF8C774C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1BF8C789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF9B4518();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF8C794C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF9B4518();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF8C7A50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF8C7A94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF8C7AD4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF8C7B18()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF8C7B6C()
{
  sub_1BF8F5A94(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BF8C7BA8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF8C7BE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_21(*a1);
  }

  v7 = sub_1BF9B4518();
  v8 = OUTLINED_FUNCTION_24_8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 28);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
    v11 = *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void *sub_1BF8C7CA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1BF9B4518();
    v9 = OUTLINED_FUNCTION_24_8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 28);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
      v12 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BF8C7D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v7 = OUTLINED_FUNCTION_24_8(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_21(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_1BF8C7E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_23_0();
  v9 = type metadata accessor for SiriSuggestions.IntentQuery(v8);
  result = OUTLINED_FUNCTION_24_8(v9);
  if (*(v11 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF8C7F58@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF979C60();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF8C7F84()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_35_9();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF8C7FC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF979718();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BF8C8040()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF8C8084()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF8C838C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF8C83F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v9 = -2;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1BF8C84C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1BF8C863C()
{
  OUTLINED_FUNCTION_27_10();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_21(*(v0 + 8));
  }

  v5 = v1;
  sub_1BF9B4558();
  v6 = OUTLINED_FUNCTION_28_12(*(v5 + 28));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1BF8C86B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27_10();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1BF9B4558();
    v8 = OUTLINED_FUNCTION_28_12(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1BF8C8728()
{
  OUTLINED_FUNCTION_27_10();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_21(*(v0 + 24));
  }

  v5 = v1;
  sub_1BF9B4558();
  v6 = OUTLINED_FUNCTION_28_12(*(v5 + 36));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1BF8C879C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27_10();
  if (v5 == v6)
  {
    *(v2 + 24) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1BF9B4558();
    v8 = OUTLINED_FUNCTION_28_12(*(v7 + 36));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1BF8C8904()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BF8C896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF997ED0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8C89A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF8C89F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1BF8C8B44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF99FF94();
  *a2 = result;
  return result;
}

uint64_t sub_1BF8C8B74()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_1_8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF8C8BA8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_5_21();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF8C8C54()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF8C8DB0()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_1_8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF8C8DE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA790, &qword_1BF9C9A80);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF8C8E70()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_1_8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF8C8EB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BF8C8F80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF8C8FB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *sub_1BF8C91C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF8C91E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF8C9200(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

uint64_t sub_1BF8C9254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8E06DC(a1, a2);
  *a3 = result & 1;
  return result;
}

void sub_1BF8C92A4()
{
  if (qword_1EDBF50C0 != -1)
  {
    OUTLINED_FUNCTION_6_3();
  }

  v0 = off_1EDBF50C8;
  v1 = *(off_1EDBF50C8 + 2);
  if (v1)
  {

    v2 = MEMORY[0x1E69E7CC0];
    v3 = 32;
    do
    {
      v4 = *&v0[v3];
      if ((v4 >> 8) - 2 >= 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = *(v2 + 16);
          sub_1BF8D0260();
        }

        v6 = *(v2 + 16);
        if (v6 >= *(v2 + 24) >> 1)
        {
          sub_1BF8D0260();
        }

        *(v2 + 16) = v6 + 1;
        *(v2 + 2 * v6 + 32) = v4;
      }

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  off_1EDBF3518 = v2;
}

uint64_t InvocationType.description.getter()
{
  v1 = *v0;
  result = 0x706C654869726973;
  switch(v1 >> 8)
  {
    case 2u:
      return result;
    case 3u:
      result = 0xD000000000000016;
      break;
    case 4u:
      result = OUTLINED_FUNCTION_23_1();
      break;
    case 5u:
      result = 0xD000000000000011;
      break;
    case 6u:
      result = OUTLINED_FUNCTION_5_2();
      break;
    default:
      sub_1BF9B5288();

      OUTLINED_FUNCTION_30();
      if (v1 == 2)
      {
        v3 = 0xE800000000000000;
        v4 = OUTLINED_FUNCTION_18();
      }

      else if (v1 == 3)
      {
        v3 = 0xEA00000000006B73;
        v4 = OUTLINED_FUNCTION_14();
      }

      else
      {
        OUTLINED_FUNCTION_34_0();
        v9 = v5;
        if (v1)
        {
          v6 = 0x6E61747369737361;
        }

        else
        {
          v6 = 1919251317;
        }

        if (v1)
        {
          v7 = 0xE900000000000074;
        }

        else
        {
          v7 = 0xE400000000000000;
        }

        MEMORY[0x1BFB5DE90](v6, v7);

        v4 = v9;
        v3 = 0xED00005F6574656CLL;
      }

      MEMORY[0x1BFB5DE90](v4, v3);

      MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
      if ((v1 >> 8))
      {
        v8 = 0x6465707974;
      }

      else
      {
        v8 = 0x6563696F76;
      }

      MEMORY[0x1BFB5DE90](v8, 0xE500000000000000);

      result = 0x6E61747369737361;
      break;
  }

  return result;
}

uint64_t InvocationModality.rawValue.getter()
{
  if (*v0)
  {
    return 0x6465707974;
  }

  else
  {
    return 0x6563696F76;
  }
}

void *sub_1BF8C960C()
{
  v11 = MEMORY[0x1E69E7CC0];
  if (qword_1EDBF5090 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDBF5098;
  v1 = *(off_1EDBF5098 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {

    v3 = 32;
    do
    {
      v4 = v0[v3];
      sub_1BF8D0260();
      v5 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24) >> 1;
      v8 = v6 + 1;
      if (v7 <= v6)
      {
        sub_1BF8D0260();
        v5 = v2;
        v7 = *(v2 + 24) >> 1;
      }

      *(v5 + 16) = v8;
      *(v5 + 2 * v6 + 32) = v4;
      v9 = v6 + 2;
      if (v7 < v9)
      {
        sub_1BF8D0260();
        v5 = v2;
      }

      *(v5 + 16) = v9;
      *(v5 + 2 * v8 + 32) = v4 | 0x100;
      sub_1BF8D22A4(v5);
      ++v3;
      --v1;
    }

    while (v1);

    v2 = v11;
  }

  sub_1BF8D22A4(v2);
  return &unk_1F3EF5148;
}

_UNKNOWN **sub_1BF8C97A4()
{
  if (qword_1EDBF5090 != -1)
  {
    OUTLINED_FUNCTION_2_3();
  }

  return &off_1EDBF5098;
}

void *sub_1BF8C97F0()
{
  result = sub_1BF8C960C();
  off_1EDBF50C8 = result;
  return result;
}

uint64_t sub_1BF8C9834(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t static InvocationType.allAssistantTurnTypes(for:)(uint64_t a1)
{
  if (qword_1EDBF50C0 != -1)
  {
    OUTLINED_FUNCTION_6_3();
  }

  v1 = *(off_1EDBF50C8 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = off_1EDBF50C8 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v19 = off_1EDBF50C8 + 32;
  v20 = *(off_1EDBF50C8 + 2);
  do
  {
    v5 = *&v3[2 * v2];
    if ((v5 >> 8) - 2 < 5)
    {
      goto LABEL_39;
    }

    v22 = v4;
    v6 = *&v3[2 * v2];
    v7 = *(a1 + 16);
    if (v5)
    {
      v8 = 0x6E61747369737361;
    }

    else
    {
      v8 = 1919251317;
    }

    if (v5)
    {
      v9 = 0xE900000000000074;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = (a1 + 32);
    if (!v7)
    {
LABEL_32:
      v3 = v19;
      v1 = v20;
      v4 = v22;
      goto LABEL_39;
    }

    while (1)
    {
      v11 = *v10;
      if (v11 == 2)
      {
        if (v6 == 2)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if (v11 == 3)
      {
        if (v6 == 3)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if ((v5 & 0xFE) == 2)
      {
        goto LABEL_31;
      }

      v12 = (v11 & 1) != 0 ? 0x6E61747369737361 : 1919251317;
      v13 = (v11 & 1) != 0 ? 0xE900000000000074 : 0xE400000000000000;
      if (v12 == v8 && v13 == v9)
      {
        break;
      }

      v15 = sub_1BF9B56D8();

      if (v15)
      {
        goto LABEL_34;
      }

LABEL_31:
      ++v10;
      if (!--v7)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v4 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = *(v22 + 16);
      sub_1BF8D0260();
      v4 = v22;
    }

    v17 = *(v4 + 16);
    if (v17 >= *(v4 + 24) >> 1)
    {
      sub_1BF8D0260();
      v4 = v22;
    }

    *(v4 + 16) = v17 + 1;
    *(v4 + 2 * v17 + 32) = v5;
    v3 = v19;
    v1 = v20;
LABEL_39:
    ++v2;
  }

  while (v2 != v1);
  return v4;
}

uint64_t static InvocationType.invocationType(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v4 = result;
  if (qword_1EDBF50C0 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v5 = off_1EDBF50C8;
    v6 = *(off_1EDBF50C8 + 2);
    if (!v6)
    {
      break;
    }

    v7 = 0;
    while (v7 < v5[2])
    {
      v8 = *(v5 + v7 + 16);
      v9 = 0xE800000000000000;
      v10 = 0x706C654869726973;
      switch(v8 >> 8)
      {
        case 2u:
          break;
        case 3u:
          v10 = 0xD000000000000016;
          v9 = 0x80000001BF9CADB0;
          break;
        case 4u:
          v9 = 0xE500000000000000;
          v10 = OUTLINED_FUNCTION_23_1();
          break;
        case 5u:
          v10 = 0xD000000000000011;
          v9 = 0x80000001BF9CAD90;
          break;
        case 6u:
          v9 = 0xE700000000000000;
          v10 = OUTLINED_FUNCTION_5_2();
          break;
        default:
          sub_1BF9B5288();

          OUTLINED_FUNCTION_30();
          v22 = v11;
          if (v8 == 2)
          {
            v12 = 0xE800000000000000;
            v13 = OUTLINED_FUNCTION_18();
          }

          else if (v8 == 3)
          {
            v12 = 0xEA00000000006B73;
            v13 = OUTLINED_FUNCTION_14();
          }

          else
          {
            OUTLINED_FUNCTION_34_0();
            v21 = v14;
            if (v8)
            {
              v15 = 0x6E61747369737361;
            }

            else
            {
              v15 = 1919251317;
            }

            if (v8)
            {
              v16 = 0xE900000000000074;
            }

            else
            {
              v16 = 0xE400000000000000;
            }

            MEMORY[0x1BFB5DE90](v15, v16);

            v13 = v21;
            v12 = 0xED00005F6574656CLL;
          }

          MEMORY[0x1BFB5DE90](v13, v12);

          MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
          if ((v8 >> 8))
          {
            v17 = 0x6465707974;
          }

          else
          {
            v17 = 0x6563696F76;
          }

          MEMORY[0x1BFB5DE90](v17, 0xE500000000000000);

          v10 = 0x6E61747369737361;
          v9 = v22;
          break;
      }

      if (v10 == v4 && v9 == a2)
      {

        goto LABEL_33;
      }

      v19 = sub_1BF9B56D8();

      if (v19)
      {
        goto LABEL_33;
      }

      if (v6 == ++v7)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_35:
    result = OUTLINED_FUNCTION_6_3();
  }

LABEL_31:
  LOWORD(v8) = 1536;
LABEL_33:
  *a3 = v8;
  return result;
}

uint64_t static InvocationType.== infix(_:_:)(_WORD *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 8)
  {
    case 2u:
      return (v3 & 0xFF00) == 0x200;
    case 3u:
      return (v3 & 0xFF00) == 0x300;
    case 4u:
      return (v3 & 0xFF00) == 0x400;
    case 5u:
      return (v3 & 0xFF00) == 0x500;
    case 6u:
      return (v3 & 0xFF00) == 0x600;
    default:
      if ((HIBYTE(v3) - 2) < 5u)
      {
        return 0;
      }

      if (*a1 == 2)
      {
        if (*a2 == 2)
        {
          goto LABEL_22;
        }

        return 0;
      }

      if (*a1 == 3)
      {
        if (*a2 == 3)
        {
          goto LABEL_22;
        }

        return 0;
      }

      if ((v3 & 0xFE) == 2 || (sub_1BF8CA464(v2 & 1) & 1) == 0)
      {
        return 0;
      }

LABEL_22:

      return sub_1BF8CA3F0();
  }
}

uint64_t static AssistantTurnState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = 0x6E61747369737361;
  }

  else
  {
    v5 = 1919251317;
  }

  if (v2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3)
  {
    v7 = 0x6E61747369737361;
  }

  else
  {
    v7 = 1919251317;
  }

  if (v3)
  {
    v8 = 0xE900000000000074;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v5 != v7 || v6 != v8)
  {
    v10 = OUTLINED_FUNCTION_22_1();

    return v10 & 1;
  }

  return 1;
}

uint64_t sub_1BF8C9FA4(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x7552746F6E646964;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7553646E416E6172;
    }

    else
    {
      v5 = 0x6146646E416E6172;
    }

    if (v4 == 1)
    {
      v6 = 0xEF6C756673656363;
    }

    else
    {
      v6 = 0xEC00000064656C69;
    }
  }

  else
  {
    v5 = 0x7552746F6E646964;
    v6 = 0xE90000000000006ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7553646E416E6172;
    }

    else
    {
      v3 = 0x6146646E416E6172;
    }

    if (a2 == 1)
    {
      v2 = 0xEF6C756673656363;
    }

    else
    {
      v2 = 0xEC00000064656C69;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_22_1();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CA0C0()
{
  OUTLINED_FUNCTION_33_0();
  v3 = 0x6F6853746F6E6F64;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x6568744F776F6873;
    }

    else
    {
      v5 = 1701736302;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0x6F6853746F6E6F64;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x6568744F776F6873;
    }

    else
    {
      v3 = 1701736302;
    }

    if (v2 == 1)
    {
      v0 = 0xE900000000000072;
    }

    else
    {
      v0 = 0xE400000000000000;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_22_1();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CA1A4(unsigned __int8 a1, char a2)
{
  v2 = 0x64656C62616E65;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001BF9CACB0;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x64656C62616E65;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_26_1();
    if (v7 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = v10;
    }

    if (v7 == 1)
    {
      v11 = v6;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_10_4();
  }

  return v13 & 1;
}

uint64_t sub_1BF8CA284(unsigned __int8 a1, char a2)
{
  v2 = 5459817;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5459817;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x534F63616DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1397716596;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x534F6863746177;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x534F6E6F69736976;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_5_2();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x534F63616DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1397716596;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x534F6863746177;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x534F6E6F69736976;
      break;
    case 5:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_0();
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
    v8 = OUTLINED_FUNCTION_10_4();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CA3F0()
{
  OUTLINED_FUNCTION_25_0();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BF9B56D8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BF8CA464(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_25_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_4();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CA4F0()
{
  OUTLINED_FUNCTION_8_0();
  v3 = 0xE700000000000000;
  v5 = v4;
  v6 = v1;
  switch(v5)
  {
    case 1:
      v7 = "atx_action_fallbacks_homescreen";
      goto LABEL_5;
    case 2:
      v3 = 0x80000001BF9CA710;
      v6 = v2 - 1;
      break;
    case 3:
      v3 = 0x80000001BF9CA730;
      v6 = v2 - 2;
      break;
    case 4:
      v3 = 0x80000001BF9CA750;
      v6 = v2 - 10;
      break;
    case 5:
      break;
    default:
      v7 = "ntinuer";
LABEL_5:
      v3 = v7 | 0x8000000000000000;
      v6 = 0xD00000000000001FLL;
      break;
  }

  v8 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v9 = "atx_action_fallbacks_homescreen";
      goto LABEL_12;
    case 2:
      v8 = 0x80000001BF9CA710;
      v1 = v2 - 1;
      break;
    case 3:
      v8 = 0x80000001BF9CA730;
      v1 = v2 - 2;
      break;
    case 4:
      v8 = 0x80000001BF9CA750;
      v1 = v2 - 10;
      break;
    case 5:
      break;
    default:
      v9 = "ntinuer";
LABEL_12:
      v8 = v9 | 0x8000000000000000;
      v1 = 0xD00000000000001FLL;
      break;
  }

  if (v6 == v1 && v3 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_4();
  }

  return v11 & 1;
}

uint64_t sub_1BF8CA65C()
{
  v0 = AppBundleIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == AppBundleIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4();
  }

  return v5 & 1;
}

uint64_t sub_1BF8CA6E4(unsigned __int8 a1, char a2)
{
  v2 = 0x7070416E65706FLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "retrievedContext";
  v6 = 0x7070416E65706FLL;
  switch(v4)
  {
    case 1:
      v6 = 0x6F48657669746361;
      v3 = 0xEA0000000000656DLL;
      break;
    case 2:
      v6 = 0xD000000000000010;
      v3 = 0x80000001BF9CA640;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_5_2();
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F48657669746361;
      v7 = 0xEA0000000000656DLL;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_8_0();
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_10_4();
  }

  return v9 & 1;
}

uint64_t sub_1BF8CA80C(__int128 *a1, __int128 *a2)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 32);
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 32);
  v2 = DeliveryVehicle.rawValue.getter();
  v4 = v3;
  if (v2 == DeliveryVehicle.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_10_4();
  }

  return v7 & 1;
}

uint64_t sub_1BF8CA8AC(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_25_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_4();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CA938(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_25_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_4();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CA9C4(unsigned __int8 a1, char a2)
{
  v2 = 0x77656956707061;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "conversationalContinuer";
  v6 = 0x77656956707061;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v6 = 7368801;
      break;
    case 2:
      v6 = 0x6765746143707061;
      v7 = 7959151;
      goto LABEL_10;
    case 3:
      v6 = 0x65726373656D6F68;
      v3 = 0xEA00000000006E65;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v6 = 0x6B6361626C6C6166;
      break;
    case 5:
      v6 = 0x6F4C656369766564;
      v3 = 0xEC00000064656B63;
      break;
    case 6:
      v6 = 0xD000000000000017;
      v3 = 0x80000001BF9CA6A0;
      break;
    case 7:
      v3 = 0xE500000000000000;
      v6 = OUTLINED_FUNCTION_23_1();
      break;
    case 8:
      v6 = 0x6769725469726973;
      v7 = 7497063;
LABEL_10:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE300000000000000;
      v2 = 7368801;
      break;
    case 2:
      v2 = 0x6765746143707061;
      v9 = 7959151;
      goto LABEL_20;
    case 3:
      v2 = 0x65726373656D6F68;
      v8 = 0xEA00000000006E65;
      break;
    case 4:
      v8 = 0xE800000000000000;
      v2 = 0x6B6361626C6C6166;
      break;
    case 5:
      v2 = 0x6F4C656369766564;
      v8 = 0xEC00000064656B63;
      break;
    case 6:
      v2 = 0xD000000000000017;
      v8 = (v5 - 32) | 0x8000000000000000;
      break;
    case 7:
      v8 = 0xE500000000000000;
      v2 = 0x7070416E69;
      break;
    case 8:
      v2 = 0x6769725469726973;
      v9 = 7497063;
LABEL_20:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_4();
  }

  return v11 & 1;
}

uint64_t sub_1BF8CAC04(char a1)
{
  if (a1)
  {
    v1 = 0xEF6E6F6974696E69;
  }

  else
  {
    v1 = 0xEC00000069704174;
  }

  OUTLINED_FUNCTION_25_0();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_4();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CACA8(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6F685069;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656E6F685069;
  switch(v4)
  {
    case 1:
      v5 = 0x72506E6F69736976;
      v3 = 0xE90000000000006FLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1684099177;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x79616C50726163;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x6863746177;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x5654656C707061;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x646F70656D6F68;
      break;
    case 7:
      v3 = 0xE300000000000000;
      v5 = 6513005;
      break;
    case 8:
      v3 = 0xE300000000000000;
      v5 = 6582128;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x72506E6F69736976;
      v6 = 0xE90000000000006FLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1684099177;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x79616C50726163;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x6863746177;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x5654656C707061;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x646F70656D6F68;
      break;
    case 7:
      v6 = 0xE300000000000000;
      v2 = 6513005;
      break;
    case 8:
      v6 = 0xE300000000000000;
      v2 = 6582128;
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
    v8 = OUTLINED_FUNCTION_10_4();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CAEA4(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x5869726973;
    }

    else
    {
      v3 = 0x6E65746E49707061;
    }

    if (v2 == 1)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE900000000000074;
    }
  }

  else
  {
    v3 = 0xD00000000000001CLL;
    v4 = 0x80000001BF9CAC10;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x5869726973;
    }

    else
    {
      v5 = 0x6E65746E49707061;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v5 = 0xD00000000000001CLL;
    v6 = 0x80000001BF9CAC10;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_4();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CAF94(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000796C6ELL;
  v3 = 0x4F79616C70736964;
  v4 = a1;
  v5 = 0x4F79616C70736964;
  v6 = 0xEB00000000796C6ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x4679616C70736964;
      v6 = 0xEE0064726177726FLL;
      break;
    case 2:
      v5 = 0x6C6E4F6563696F76;
      v6 = 0xE900000000000079;
      break;
    case 3:
      v5 = 0x726F466563696F76;
      v6 = 0xEC00000064726177;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_5_2();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_31_0();
      break;
    case 2:
      v3 = 0x6C6E4F6563696F76;
      v2 = 0xE900000000000079;
      break;
    case 3:
      v3 = 0x726F466563696F76;
      v2 = 0xEC00000064726177;
      break;
    case 4:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_0();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_22_1();
  }

  return v8 & 1;
}

uint64_t sub_1BF8CB118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF8CB1E4(char a1)
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](a1 & 1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CB22C(char a1)
{
  if (a1)
  {
    return 0x7974696C61646F6DLL;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_1BF8CB268()
{
  v1 = *v0;
  sub_1BF9B57A8();
  sub_1BF8C918C(v3, v1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CB2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8CB118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8CB2FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF8CB1DC();
  *a1 = result;
  return result;
}

uint64_t sub_1BF8CB324(uint64_t a1)
{
  v2 = sub_1BF8D03C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CB360(uint64_t a1)
{
  v2 = sub_1BF8D03C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CB39C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706C654869726973 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001BF9CADB0 == a2;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7070416E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E61747369737361 && a2 == 0xED00006E72755474;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001BF9CAD90 == a2;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BF9B56D8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BF8CB59C(char a1)
{
  result = 0x706C654869726973;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x7070416E69;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8CB690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8CB39C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8CB6B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF8CB594();
  *a1 = result;
  return result;
}

uint64_t sub_1BF8CB6E0(uint64_t a1)
{
  v2 = sub_1BF8D02C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CB71C(uint64_t a1)
{
  v2 = sub_1BF8D02C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CB778@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_15_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF8CB7A4(uint64_t a1)
{
  v2 = sub_1BF8D046C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CB7E0(uint64_t a1)
{
  v2 = sub_1BF8D046C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CB81C(uint64_t a1)
{
  v2 = sub_1BF8D0370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CB858(uint64_t a1)
{
  v2 = sub_1BF8D0370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CB894(uint64_t a1)
{
  v2 = sub_1BF8D0514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CB8D0(uint64_t a1)
{
  v2 = sub_1BF8D0514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CB90C(uint64_t a1)
{
  v2 = sub_1BF8D04C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CB948(uint64_t a1)
{
  v2 = sub_1BF8D04C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CB984(uint64_t a1)
{
  v2 = sub_1BF8D031C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CB9C0(uint64_t a1)
{
  v2 = sub_1BF8D031C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InvocationType.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v84 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8278, &qword_1BF9B6390);
  v5 = OUTLINED_FUNCTION_1(v4);
  v79 = v6;
  v80 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v77 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8280, &qword_1BF9B6398);
  v12 = OUTLINED_FUNCTION_1(v11);
  v75 = v13;
  v76 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v74 = v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8288, &qword_1BF9B63A0);
  OUTLINED_FUNCTION_1(v81);
  v71 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  v78 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8290, &qword_1BF9B63A8);
  v24 = OUTLINED_FUNCTION_1(v23);
  v72 = v25;
  v73 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v70 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8298, &qword_1BF9B63B0);
  v31 = OUTLINED_FUNCTION_1(v30);
  v68 = v32;
  v69 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v67 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE82A0, &qword_1BF9B63B8);
  OUTLINED_FUNCTION_1(v38);
  v67[1] = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v67 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE82A8, &qword_1BF9B63C0);
  v46 = OUTLINED_FUNCTION_1(v45);
  v82 = v47;
  v83 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v50);
  v51 = *v0;
  v52 = v3[3];
  __swift_project_boxed_opaque_existential_1(v3, v52);
  sub_1BF8D02C8();
  sub_1BF9B5898();
  switch(v51 >> 8)
  {
    case 2u:
      v85 = 0;
      sub_1BF8D0514();
      OUTLINED_FUNCTION_38_0();
      v53 = OUTLINED_FUNCTION_21_0();
      v54(v53, v38);
      v55 = OUTLINED_FUNCTION_24_0();
      v57 = v52;
      goto LABEL_9;
    case 3u:
      v86 = 1;
      sub_1BF8D04C0();
      OUTLINED_FUNCTION_13_1();
      (*(v68 + 8))(v37, v69);
      goto LABEL_8;
    case 4u:
      sub_1BF8D046C();
      v58 = v70;
      OUTLINED_FUNCTION_13_1();
      v60 = v72;
      v59 = v73;
      goto LABEL_6;
    case 5u:
      sub_1BF8D0370();
      v58 = v74;
      OUTLINED_FUNCTION_13_1();
      v60 = v75;
      v59 = v76;
      goto LABEL_6;
    case 6u:
      sub_1BF8D031C();
      v58 = v77;
      OUTLINED_FUNCTION_13_1();
      v60 = v79;
      v59 = v80;
LABEL_6:
      (*(v60 + 8))(v58, v59);
LABEL_8:
      v55 = OUTLINED_FUNCTION_24_0();
      v57 = v44;
LABEL_9:
      v56(v55, v57);
      break;
    default:
      v61 = v71;
      sub_1BF8D03C4();
      v62 = v78;
      OUTLINED_FUNCTION_38_0();
      sub_1BF8BD1B0();
      v63 = v81;
      v64 = v84;
      sub_1BF9B5638();
      if (!v64)
      {
        sub_1BF8D0418();
        sub_1BF9B5638();
      }

      (*(v61 + 8))(v62, v63);
      v65 = OUTLINED_FUNCTION_24_0();
      v66(v65, v52);
      break;
  }

  OUTLINED_FUNCTION_37();
}

uint64_t InvocationType.hash(into:)()
{
  v1 = *v0;
  switch(v1 >> 8)
  {
    case 2u:
      v2 = 0;
      return MEMORY[0x1BFB5EAC0](v2);
    case 3u:
      v2 = 1;
      return MEMORY[0x1BFB5EAC0](v2);
    case 4u:
      v2 = 2;
      return MEMORY[0x1BFB5EAC0](v2);
    case 5u:
      v2 = 4;
      return MEMORY[0x1BFB5EAC0](v2);
    case 6u:
      v2 = 5;
      return MEMORY[0x1BFB5EAC0](v2);
    default:
      MEMORY[0x1BFB5EAC0](3);
      if (v1 == 2)
      {
        v4 = 0;
        goto LABEL_12;
      }

      if (v1 == 3)
      {
        v4 = 1;
LABEL_12:
        MEMORY[0x1BFB5EAC0](v4);
        goto LABEL_14;
      }

      MEMORY[0x1BFB5EAC0](2);
      sub_1BF9B4B48();

LABEL_14:
      sub_1BF9B4B48();
  }
}

uint64_t InvocationType.hashValue.getter()
{
  v2 = *v0;
  sub_1BF9B57A8();
  InvocationType.hash(into:)();
  return sub_1BF9B57E8();
}

void InvocationType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, unsigned __int8 a13)
{
  OUTLINED_FUNCTION_39();
  v136 = v13;
  v15 = v14;
  v131 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE82D8, &qword_1BF9B63C8);
  v18 = OUTLINED_FUNCTION_1(v17);
  v126 = v19;
  v127 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v130 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE82E0, &qword_1BF9B63D0);
  v25 = OUTLINED_FUNCTION_1(v24);
  v124 = v26;
  v125 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  v129 = v30;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE82E8, &qword_1BF9B63D8);
  OUTLINED_FUNCTION_1(v122);
  v128 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  v134 = v35;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE82F0, &qword_1BF9B63E0);
  OUTLINED_FUNCTION_1(v133);
  v123 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_12();
  v132 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE82F8, &qword_1BF9B63E8);
  v42 = OUTLINED_FUNCTION_1(v41);
  v120 = v43;
  v121 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v115 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8300, &qword_1BF9B63F0);
  OUTLINED_FUNCTION_1(v49);
  v119 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v115 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8308, &qword_1BF9B63F8);
  OUTLINED_FUNCTION_1(v56);
  v58 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v115 - v62;
  v64 = v15[3];
  v65 = v15[4];
  v135 = v15;
  __swift_project_boxed_opaque_existential_1(v15, v64);
  sub_1BF8D02C8();
  v66 = v136;
  sub_1BF9B5868();
  if (v66)
  {
    goto LABEL_8;
  }

  v117 = v55;
  v116 = v49;
  v118 = v48;
  v67 = v133;
  v68 = v134;
  v136 = v58;
  v69 = sub_1BF9B5568();
  sub_1BF8D0848(v69, 0);
  if (v72 == v73 >> 1)
  {
LABEL_7:
    v85 = sub_1BF9B5308();
    swift_allocError();
    v87 = v86;
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v87 = &type metadata for InvocationType;
    sub_1BF9B54B8();
    OUTLINED_FUNCTION_36_0();
    (*(*(v85 - 8) + 104))(v87, *MEMORY[0x1E69E6AF8], v85);
    swift_willThrow();
    swift_unknownObjectRelease();
    v89 = OUTLINED_FUNCTION_32();
    v90(v89, v56);
LABEL_8:
    v91 = v135;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_37();
    return;
  }

  v115 = 0;
  if (v72 < (v73 >> 1))
  {
    v74 = *(v71 + v72);
    sub_1BF8D2128(v72 + 1, v73 >> 1, v70, v71, v72, v73);
    v76 = v75;
    v78 = v77;
    swift_unknownObjectRelease();
    if (v76 == v78 >> 1)
    {
      v79 = v115;
      switch(v74)
      {
        case 1:
          v138 = 1;
          sub_1BF8D04C0();
          OUTLINED_FUNCTION_7_0();
          swift_unknownObjectRelease();
          v103 = OUTLINED_FUNCTION_21_0();
          v104(v103);
          v105 = OUTLINED_FUNCTION_3_0();
          v106(v105);
          v84 = 768;
          goto LABEL_17;
        case 2:
          sub_1BF8D046C();
          OUTLINED_FUNCTION_7_0();
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21_0();
          v97(v96, v67);
          v98 = OUTLINED_FUNCTION_3_0();
          v99(v98);
          v84 = 1024;
          goto LABEL_17;
        case 3:
          sub_1BF8D03C4();
          v100 = v68;
          OUTLINED_FUNCTION_17_2();
          sub_1BF9B54A8();
          if (v79)
          {
            v107 = OUTLINED_FUNCTION_3_0();
            v108(v107);
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          sub_1BF8D0B2C();
          v101 = v122;
          OUTLINED_FUNCTION_35();
          v102 = v136;
          sub_1BF8D0B80();
          OUTLINED_FUNCTION_35();
          v113 = v128;
          swift_unknownObjectRelease();
          (*(v113 + 8))(v100, v101);
          (*(v102 + 8))(v63, v56);
          if (a11)
          {
            v114 = 256;
          }

          else
          {
            v114 = 0;
          }

          v84 = v114 | a13;
LABEL_17:
          v91 = v135;
          *v131 = v84;
          break;
        case 4:
          sub_1BF8D0370();
          OUTLINED_FUNCTION_7_0();
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_21_0();
          v93(v92);
          v94 = OUTLINED_FUNCTION_3_0();
          v95(v94);
          v84 = 1280;
          goto LABEL_17;
        case 5:
          sub_1BF8D031C();
          OUTLINED_FUNCTION_7_0();
          swift_unknownObjectRelease();
          v109 = OUTLINED_FUNCTION_21_0();
          v110(v109);
          v111 = OUTLINED_FUNCTION_3_0();
          v112(v111);
          v84 = 1536;
          goto LABEL_17;
        default:
          v137 = 0;
          sub_1BF8D0514();
          OUTLINED_FUNCTION_7_0();
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_21_0();
          v81(v80, v116);
          v82 = OUTLINED_FUNCTION_3_0();
          v83(v82);
          v84 = 512;
          goto LABEL_17;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1BF8CCA24()
{
  v2 = *v0;
  sub_1BF9B57A8();
  InvocationType.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CCA80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BF8CA3F0();
}

uint64_t sub_1BF8CCA98@<X0>(uint64_t *a1@<X8>)
{
  result = InvocationModality.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1BF8CCB94()
{
  sub_1BF9B4B48();
}

uint64_t sub_1BF8CCC38(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_33_0();
  }

  sub_1BF9B4B48();
}

uint64_t sub_1BF8CCCC0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_26_1();
  }

  sub_1BF9B4B48();
}

uint64_t sub_1BF8CCD40()
{
  OUTLINED_FUNCTION_11_4();
  switch(v0)
  {
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_15_5();
      break;
    case 5:
      break;
    default:
      OUTLINED_FUNCTION_20_0();
      break;
  }

  sub_1BF9B4B48();
}

uint64_t sub_1BF8CCE0C()
{
  AppBundleIdentifier.rawValue.getter();
  OUTLINED_FUNCTION_29();
}

uint64_t sub_1BF8CCE58()
{
  sub_1BF9B4B48();
}

uint64_t sub_1BF8CCEC0()
{
  sub_1BF9B4B48();
}

uint64_t sub_1BF8CCF2C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_20_0();
      break;
    case 3:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  sub_1BF9B4B48();
}

uint64_t sub_1BF8CCFD8()
{
  sub_1BF9B4B48();
}

uint64_t sub_1BF8CD040()
{
  sub_1BF9B4B48();
}

uint64_t sub_1BF8CD0A8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  DeliveryVehicle.rawValue.getter();
  OUTLINED_FUNCTION_29();
}

uint64_t sub_1BF8CD100(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      OUTLINED_FUNCTION_20_0();
      break;
    default:
      break;
  }

  sub_1BF9B4B48();
}

uint64_t sub_1BF8CD240()
{
  sub_1BF9B4B48();
}

uint64_t sub_1BF8CD2C0()
{
  sub_1BF9B4B48();
}

uint64_t sub_1BF8CD3D4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_20_0();
  }

  sub_1BF9B4B48();
}

uint64_t sub_1BF8CD460(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_31_0();
      break;
    case 4:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  sub_1BF9B4B48();
}

uint64_t sub_1BF8CD538(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  sub_1BF9B4B48();
}

void *sub_1BF8CD608()
{
  result = sub_1BF8CD628();
  off_1EDBF5098 = result;
  return result;
}

void *sub_1BF8CD628()
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1BF8D01A0();
  v0 = v6;
  v1 = *(v6 + 16);
  v2 = *(v6 + 24) >> 1;
  v3 = v1 + 1;
  if (v2 <= v1)
  {
    sub_1BF8D01A0();
    v0 = v6;
    v2 = *(v6 + 24) >> 1;
  }

  *(v0 + 16) = v3;
  *(v0 + v1 + 32) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_1BF8D01A0();
    v0 = v6;
  }

  *(v0 + 16) = v4;
  *(v0 + v3 + 32) = 1;
  sub_1BF8D228C(v0);
  return &unk_1F3EF5120;
}

uint64_t static AssistantTurnState.allCases.getter()
{
  if (qword_1EDBF5090 != -1)
  {
    OUTLINED_FUNCTION_2_3();
  }

  swift_beginAccess();
}

uint64_t static AssistantTurnState.allCases.setter(void *a1)
{
  if (qword_1EDBF5090 != -1)
  {
    OUTLINED_FUNCTION_2_3();
  }

  swift_beginAccess();
  off_1EDBF5098 = a1;
}

uint64_t (*static AssistantTurnState.allCases.modify())()
{
  if (qword_1EDBF5090 != -1)
  {
    OUTLINED_FUNCTION_2_3();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BF8CD868@<X0>(void *a1@<X8>)
{
  sub_1BF8C97A4();
  swift_beginAccess();
  *a1 = off_1EDBF5098;
}

uint64_t sub_1BF8CD8BC(void **a1)
{
  v1 = *a1;

  sub_1BF8C97A4();
  swift_beginAccess();
  off_1EDBF5098 = v1;
}

uint64_t sub_1BF8CD924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E7275546F72657ALL && a2 == 0xE800000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61546E6968746977 && a2 == 0xEA00000000006B73;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x706D6F436B736174 && a2 == 0xEC0000006574656CLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF8CDA48(unsigned __int8 a1)
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](a1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CDA90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574616974696E69 && a2 == 0xEE00797472615064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8CDB10()
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](0);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CDB54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CDBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8CD924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8CDBC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF8CDA40();
  *a1 = result;
  return result;
}

uint64_t sub_1BF8CDBF0(uint64_t a1)
{
  v2 = sub_1BF8C3998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CDC2C(uint64_t a1)
{
  v2 = sub_1BF8C3998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CDC70()
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](0);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CDCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8CDA90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF8CDCDC(uint64_t a1)
{
  v2 = sub_1BF8C39EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CDD18(uint64_t a1)
{
  v2 = sub_1BF8C39EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CDD54(uint64_t a1)
{
  v2 = sub_1BF8D0BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CDD90(uint64_t a1)
{
  v2 = sub_1BF8D0BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF8CDDCC(uint64_t a1)
{
  v2 = sub_1BF8D0C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8CDE08(uint64_t a1)
{
  v2 = sub_1BF8D0C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssistantTurnState.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x1BFB5EAC0](v2);
  }

  if (v1 == 3)
  {
    v2 = 1;
    return MEMORY[0x1BFB5EAC0](v2);
  }

  MEMORY[0x1BFB5EAC0](2);
  sub_1BF9B4B48();
}

uint64_t AssistantTurnState.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1BFB5EAC0](2);
      sub_1BF9B4B48();

      return sub_1BF9B57E8();
    }

    v2 = 1;
  }

  MEMORY[0x1BFB5EAC0](v2);
  return sub_1BF9B57E8();
}

void AssistantTurnState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_39();
  v90 = v12;
  v14 = v13;
  v87 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8350, &qword_1BF9B6428);
  v85 = OUTLINED_FUNCTION_1(v16);
  v86 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v89 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8358, &qword_1BF9B6430);
  v83 = OUTLINED_FUNCTION_1(v22);
  v84 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8360, &qword_1BF9B6438);
  OUTLINED_FUNCTION_1(v29);
  v82 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v79 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE8368, &unk_1BF9B6440);
  OUTLINED_FUNCTION_1(v36);
  v88 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v79 - v41;
  v43 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1BF8C3998();
  v44 = v90;
  sub_1BF9B5868();
  if (v44)
  {
    goto LABEL_10;
  }

  v80 = v29;
  v81 = v35;
  v90 = v14;
  v45 = sub_1BF9B5568();
  sub_1BF8D0848(v45, 0);
  if (v48 == v49 >> 1)
  {
    goto LABEL_9;
  }

  v79 = 0;
  if (v48 < (v49 >> 1))
  {
    v50 = *(v47 + v48);
    sub_1BF8D2128(v48 + 1, v49 >> 1, v46, v47, v48, v49);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      v55 = v42;
      if (v50)
      {
        if (v50 == 1)
        {
          sub_1BF8D0BD4();
          OUTLINED_FUNCTION_17_2();
          v56 = v79;
          sub_1BF9B54A8();
          v57 = v87;
          if (!v56)
          {
            swift_unknownObjectRelease();
            (*(v84 + 8))(v28, v83);
            v58 = OUTLINED_FUNCTION_4_2();
            v59(v58, v36);
            v60 = 3;
LABEL_17:
            *v57 = v60;
            __swift_destroy_boxed_opaque_existential_1(v90);
            goto LABEL_11;
          }
        }

        else
        {
          sub_1BF8C39EC();
          OUTLINED_FUNCTION_17_2();
          v72 = v79;
          sub_1BF9B54A8();
          v57 = v87;
          if (!v72)
          {
            sub_1BF8D0C7C();
            v75 = v85;
            sub_1BF9B5558();
            v76 = v88;
            swift_unknownObjectRelease();
            v77 = OUTLINED_FUNCTION_32();
            v78(v77, v75);
            (*(v76 + 8))(v55, v36);
            v60 = a12;
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_1BF8D0C28();
        OUTLINED_FUNCTION_17_2();
        v67 = v79;
        sub_1BF9B54A8();
        if (!v67)
        {
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_21_0();
          v69(v68, v80);
          v70 = OUTLINED_FUNCTION_4_2();
          v71(v70, v36);
          v60 = 2;
          v57 = v87;
          goto LABEL_17;
        }
      }

      v73 = OUTLINED_FUNCTION_4_2();
      v74(v73, v36);
      swift_unknownObjectRelease();
      v14 = v90;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_11:
      OUTLINED_FUNCTION_37();
      return;
    }

LABEL_9:
    v61 = sub_1BF9B5308();
    swift_allocError();
    v63 = v62;
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v63 = &type metadata for AssistantTurnState;
    sub_1BF9B54B8();
    OUTLINED_FUNCTION_36_0();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = OUTLINED_FUNCTION_32();
    v66(v65, v36);
    v14 = v90;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1BF8CE590@<X0>(uint64_t *a1@<X8>)
{
  result = static AssistantTurnState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF8CE5C0()
{
  v1 = *v0;
  sub_1BF9B57A8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1BFB5EAC0](2);
      sub_1BF9B4B48();

      return sub_1BF9B57E8();
    }

    v2 = 1;
  }

  MEMORY[0x1BFB5EAC0](v2);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8CE67C@<X0>(char *a1@<X8>)
{
  v2 = sub_1BF9B5488();

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

double VersionedInvocation.init(invocationType:versions:)@<D0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8378, &qword_1BF9B85B0);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_1BF9B6370;
  *(v6 + 32) = v5;
  *a3 = v6;
  a3[1] = a2;
  return result;
}

SiriSuggestionsKit::VersionedInvocation __swiftcall VersionedInvocation.init(invocationTypes:versions:)(Swift::OpaquePointer invocationTypes, Swift::OpaquePointer_optional versions)
{
  v2->_rawValue = invocationTypes._rawValue;
  v2[1]._rawValue = versions.value;
  result.versions = versions;
  result.invocationTypes = invocationTypes;
  return result;
}

uint64_t static VersionedInvocation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1BF8CE858(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {

        v4 = sub_1BF8CEAB4(v2, v3);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BF8CE858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = 1;
  if (a1 != a2)
  {
    v4 = (a1 + 32);
    v5 = (a2 + 32);
    v6 = 0x6563696F76;
    while (2)
    {
      v8 = *v4++;
      v7 = v8;
      v9 = *v5;
      switch(v8 >> 8)
      {
        case 2u:
          if ((v9 & 0xFF00) != 0x200)
          {
            return 0;
          }

          goto LABEL_52;
        case 3u:
          if ((v9 & 0xFF00) != 0x300)
          {
            return 0;
          }

          goto LABEL_52;
        case 4u:
          if ((v9 & 0xFF00) != 0x400)
          {
            return 0;
          }

          goto LABEL_52;
        case 5u:
          if ((v9 & 0xFF00) != 0x500)
          {
            return 0;
          }

          goto LABEL_52;
        case 6u:
          if ((v9 & 0xFF00) != 0x600)
          {
            return 0;
          }

          goto LABEL_52;
        default:
          if ((v9 >> 8) - 2 < 5)
          {
            return 0;
          }

          v10 = *v5;
          if (v7 == 2)
          {
            if (v10 != 2)
            {
              return 0;
            }
          }

          else if (v7 == 3)
          {
            if (v10 != 3)
            {
              return 0;
            }
          }

          else
          {
            if ((v9 & 0xFE) == 2)
            {
              return 0;
            }

            v11 = v6;
            if (v7)
            {
              v12 = 0x6E61747369737361;
            }

            else
            {
              v12 = 1919251317;
            }

            if (v7)
            {
              v13 = 0xE900000000000074;
            }

            else
            {
              v13 = 0xE400000000000000;
            }

            if (v9)
            {
              v14 = 0x6E61747369737361;
            }

            else
            {
              v14 = 1919251317;
            }

            if (v9)
            {
              v15 = 0xE900000000000074;
            }

            else
            {
              v15 = 0xE400000000000000;
            }

            if (v12 == v14 && v13 == v15)
            {

              v6 = v11;
            }

            else
            {
              v21 = sub_1BF9B56D8();

              v6 = v11;
              if ((v21 & 1) == 0)
              {
                return 0;
              }
            }
          }

          if ((v7 >> 8))
          {
            v17 = 0x6465707974;
          }

          else
          {
            v17 = v6;
          }

          if ((v9 >> 8))
          {
            v18 = 0x6465707974;
          }

          else
          {
            v18 = v6;
          }

          if (v17 == v18)
          {
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v19 = sub_1BF9B56D8();
            swift_bridgeObjectRelease_n();
            if ((v19 & 1) == 0)
            {
              return 0;
            }
          }

LABEL_52:
          ++v5;
          if (!--v2)
          {
            return 1;
          }

          continue;
      }
    }
  }

  return v3;
}