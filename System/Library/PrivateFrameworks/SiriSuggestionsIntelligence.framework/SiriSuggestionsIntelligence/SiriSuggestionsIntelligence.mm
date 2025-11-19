uint64_t SiriSuggestionsIntelligence.AppleAccountService.init(accountStore:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1DA3A02A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA3A6D38();
  *a1 = result;
  return result;
}

void sub_1DA3A02C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1DA3A02FC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1DA3A0318()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DA3A0390()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_1DA3A03CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1DA3A041C()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_17_0(*(v0 + 24));
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = v3 | v6;
  v9 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);
  v11 = *(v0 + v9 + 8);

  v12 = *(v0 + v10 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v8 | 7);
}

uint64_t sub_1DA3A054C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA3A0584()
{
  v1 = sub_1DA421974();
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA3A0610()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0);
  OUTLINED_FUNCTION_5_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_1DA421974();
  OUTLINED_FUNCTION_6_1();
  v10 = v9;
  v11 = *(v9 + 80);
  v30 = *(v12 + 64);
  v13 = (v0 + v5);
  v14 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v14))
  {
    v29 = v7;
    v15 = v13[1];

    v16 = v13[3];

    __swift_destroy_boxed_opaque_existential_0(v13 + 4);
    __swift_destroy_boxed_opaque_existential_0(v13 + 9);
    v17 = v14[8];
    v18 = sub_1DA421814();
    if (!OUTLINED_FUNCTION_55(v18))
    {
      OUTLINED_FUNCTION_17_0(v1);
      (*(v19 + 8))(v13 + v17, v1);
    }

    v20 = v14[9];
    v21 = sub_1DA421714();
    if (!OUTLINED_FUNCTION_55(v21))
    {
      OUTLINED_FUNCTION_17_0(v1);
      (*(v22 + 8))(v13 + v20, v1);
    }

    v23 = v14[10];
    v24 = sub_1DA421754();
    v7 = v29;
    if (!__swift_getEnumTagSinglePayload(v13 + v23, 1, v24))
    {
      OUTLINED_FUNCTION_17_0(v24);
      (*(v25 + 8))(v13 + v23, v24);
    }
  }

  v26 = (v5 + v7 + v11) & ~v11;
  v27 = (v30 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v10 + 8))(v0 + v26, v8);

  return MEMORY[0x1EEE6BDD0](v0, v27 + 8, v4 | v11 | 7);
}

uint64_t sub_1DA3A08B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE08, &qword_1DA424070);
    v9 = OUTLINED_FUNCTION_0_3(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[8];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE10, &qword_1DA424078);
      v14 = OUTLINED_FUNCTION_0_3(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE18, &qword_1DA424080);
        v12 = a3[10];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1DA3A09E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE08, &qword_1DA424070);
    v9 = OUTLINED_FUNCTION_0_3(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[8];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE10, &qword_1DA424078);
      v14 = OUTLINED_FUNCTION_0_3(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[9];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE18, &qword_1DA424080);
        v12 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DA3A0B4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA3A0B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE50, &unk_1DA4245D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DA3A0C34()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA3A0C6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA3A0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DA421724();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DA3A0D3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DA421724();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA3A0F08()
{
  v0 = sub_1DA422234();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DA3A0F54(char a1)
{
  if (!a1)
  {
    return 0x65636E6169726176;
  }

  if (a1 == 1)
  {
    return 1851876717;
  }

  return 0x5364656C706D6173;
}

uint64_t sub_1DA3A1098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3CD9B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA3A1224()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA3A14B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F8, &qword_1DA427B10);
  OUTLINED_FUNCTION_3_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA3A1538()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 40, v4 | 7);
}

uint64_t sub_1DA3A1614()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA3A167C()
{
  if (*(v0 + 24))
  {

    v1 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA3A16C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA3A1828(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DA3A18BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA3A1970()
{
  v1 = sub_1DA421374();
  OUTLINED_FUNCTION_17_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DA3A1C58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA3A1C90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA3A1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  *(v4 + 40) = *a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 56) = v5;
  *(v4 + 72) = *(a2 + 32);
  return v4;
}

uint64_t sub_1DA3A1EF8()
{
  OUTLINED_FUNCTION_28_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

char *sub_1DA3A1FD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1DA3A1FF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DA3A2020(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DA3A20CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3A2098();
  *a1 = result & 1;
  return result;
}

uint64_t SiriSuggestionsIntelligence.AppleAccountService.__allocating_init(accountStore:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19();
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = a2;
  return result;
}

uint64_t SiriSuggestionsIntelligence.AppleAccountService.getAccountDetails()()
{
  OUTLINED_FUNCTION_16();
  v1[8] = v2;
  v1[9] = v0;
  v3 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  v1[10] = v3;
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAE878, &qword_1DA423160);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  v12 = type metadata accessor for SiriSuggestionsIntelligence.Device();
  v1[15] = v12;
  v13 = *(v12 - 8);
  v1[16] = v13;
  v14 = *(v13 + 64) + 15;
  v1[17] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DA3A2290()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[9];
  v2 = *(v1 + 24);
  v3 = (*(v1 + 16))();
  _s16AccountExtractorCMa();
  v0[18] = swift_initStackObject();
  v0[19] = sub_1DA3A2C50(v3);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1DA3A2358;

  return sub_1DA3A2D40();
}

uint64_t sub_1DA3A2358()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*v0 + 160);
  v7 = *v0;
  *(*v0 + 168) = v2;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3A244C()
{
  v53 = v0;
  v1 = v0[21];
  v50 = v0[16];
  v2 = sub_1DA3A4F50(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v51 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x1DA74D830](v3, v0[21]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 = v0[14];
    v10 = v0[15];
    sub_1DA3A2864(v11);

    if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
    {
      sub_1DA3A6A2C(v0[14], &unk_1ECBAE878, &qword_1DA423160);
      ++v3;
    }

    else
    {
      v12 = v0[17];
      v13 = v0[14];
      OUTLINED_FUNCTION_14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1DA3A4F74(0, *(v51 + 16) + 1, 1, v51);
      }

      v15 = *(v51 + 16);
      v14 = *(v51 + 24);
      if (v15 >= v14 >> 1)
      {
        v51 = sub_1DA3A4F74(v14 > 1, v15 + 1, 1, v51);
      }

      v16 = v0[17];
      *(v51 + 16) = v15 + 1;
      v17 = v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v18 = *(v50 + 72);
      OUTLINED_FUNCTION_14();
      v3 = v9;
    }
  }

  v19 = v0[21];
  v20 = v0[19];
  v21 = v0[12];
  v22 = v0[13];
  v23 = v0[10];

  sub_1DA3A340C(v22);
  v24 = *(v23 + 20);
  sub_1DA3A6934();
  *v21 = v51;
  if (qword_1EE102CB0 == -1)
  {
    goto LABEL_16;
  }

LABEL_24:
  swift_once();
LABEL_16:
  v25 = v0[11];
  v26 = v0[12];
  v27 = sub_1DA421A94();
  __swift_project_value_buffer(v27, static Logger.intelligenceCategory);
  v28 = OUTLINED_FUNCTION_19();
  sub_1DA3A50BC(v28, v25);
  v29 = sub_1DA421A74();
  v30 = sub_1DA421F54();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[19];
  v33 = v0[13];
  v34 = v0[11];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v52 = v36;
    *v35 = 136315138;
    v37 = SiriSuggestionsIntelligence.AccountDetails.description.getter();
    v39 = v38;
    sub_1DA3A5120(v34);
    v40 = sub_1DA3A5FE8(v37, v39, &v52);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1DA39E000, v29, v30, "Extracted account details as: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  else
  {
    v41 = v0[19];

    sub_1DA3A5120(v34);
  }

  sub_1DA3A6A2C(v33, &qword_1ECBAE870, &qword_1DA4252E0);
  v42 = v0[17];
  v44 = v0[13];
  v43 = v0[14];
  v46 = v0[11];
  v45 = v0[12];
  v47 = v0[8];
  sub_1DA3A517C();

  v48 = v0[1];

  return v48();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA3A2864@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEAC0, &qword_1DA4233A8);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29[-v7];
  v9 = sub_1DA421724();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DA3A4664(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1DA3A6A2C(v8, &unk_1ECBAEAC0, &qword_1DA4233A8);
    type metadata accessor for SiriSuggestionsIntelligence.Device();
    v14 = OUTLINED_FUNCTION_7();
  }

  else
  {
    v18 = *(v10 + 32);
    v18(v13, v8, v9);
    v30 = [v1 currentDevice];
    v19 = sub_1DA3A6894(v1, &selRef_modelDisplayName);
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = 0xE000000000000000;
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v24 = sub_1DA3A6894(v1, &selRef_osVersion);
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v22 = v25;
    }

    v27 = type metadata accessor for SiriSuggestionsIntelligence.Device();
    v18((a1 + *(v27 + 28)), v13, v9);
    *a1 = v30;
    *(a1 + 8) = v21;
    *(a1 + 16) = v23;
    *(a1 + 24) = v26;
    *(a1 + 32) = v22;
    v14 = a1;
    v15 = 0;
    v16 = 1;
    v17 = v27;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t SiriSuggestionsIntelligence.AppleAccountService.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.AppleAccountService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA3A2AC4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3A2B60;

  return SiriSuggestionsIntelligence.AppleAccountService.getAccountDetails()();
}

uint64_t sub_1DA3A2B60()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DA3A2C50(void *a1)
{
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E698C268]) initWithAccountStore_];
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E698C250]) initWithAccountStore_];
  v3 = *(v1 + 32);
  v4 = _s20AccountStoreDelegateCMa();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligenceP33_5C99411072011048FFC9A949C6515F9C20AccountStoreDelegate_servicesOwnerManager] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  *(v1 + 40) = v7;
  [*(v1 + 24) setDelegate_];
  v8 = [objc_allocWithZone(MEMORY[0x1E698B898]) initWithAccountManager_];

  *(v1 + 16) = v8;
  return v1;
}

uint64_t sub_1DA3A2D60()
{
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v1 = sub_1DA421A94();
  v0[5] = __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "Getting devices", v4, 2u);
    OUTLINED_FUNCTION_17();
  }

  v5 = v0[4];

  v6 = sub_1DA3A67D0(*(v5 + 24));
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = sub_1DA3EA240(*MEMORY[0x1E698C218], v6);

  if (v14)
  {
    v15 = v0[4];

    v0[2] = 0;
    v16 = swift_task_alloc();
    v0[6] = v16;
    *(v16 + 16) = v0 + 2;
    *(v16 + 24) = v15;
    v17 = *(MEMORY[0x1E69E88D0] + 4);
    v18 = swift_task_alloc();
    v0[7] = v18;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAD0, &qword_1DA4233B0);
    *v18 = v0;
    v18[1] = sub_1DA3A2FF4;
    v11 = sub_1DA3A6AD8;
    v9 = 0x6369766544746567;
    v10 = 0xEC00000029287365;
    v6 = (v0 + 3);
    v7 = 0;
    v8 = 0;
    v12 = v16;

    return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v19 = sub_1DA421A74();
  v20 = sub_1DA421F64();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DA39E000, v19, v20, "There is no cloud account attributed to this device. Unable to get device lists", v21, 2u);
    OUTLINED_FUNCTION_17();
  }

  v22 = v0[1];
  v23 = MEMORY[0x1E69E7CC0];

  return v22(v23);
}

uint64_t sub_1DA3A2FF4()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v7 = *v0;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3A3100()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = sub_1DA421A74();
  v4 = sub_1DA421F54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA39E000, v3, v4, "Finished fetching device lists", v5, 2u);
    OUTLINED_FUNCTION_17();
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

void sub_1DA3A31D8(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAE9E8, &qword_1DA4232D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE8F0, &qword_1DA423208);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v11 = _s18DeviceListDelegateCMa();
  v12 = objc_allocWithZone(v11);
  sub_1DA3A6934();
  v20.receiver = v12;
  v20.super_class = v11;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  sub_1DA3A6A2C(v9, &unk_1ECBAE9E8, &qword_1DA4232D8);
  v14 = *a2;
  *a2 = v13;
  v15 = v13;

  [*(a3 + 16) setDelegate_];
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v16 = sub_1DA421A94();
  __swift_project_value_buffer(v16, static Logger.extractionCategory);
  v17 = sub_1DA421A74();
  v18 = sub_1DA421F54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DA39E000, v17, v18, "Assigned device list delegate", v19, 2u);
    MEMORY[0x1DA74E430](v19, -1, -1);
  }
}

uint64_t sub_1DA3A340C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DA3A67D0(*(v1 + 24));
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = sub_1DA3EA240(*MEMORY[0x1E698C218], result);

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v4 creationDate];
  if (!v5)
  {

LABEL_6:
    if (qword_1EE102CB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.intelligenceCategory);
    v6 = sub_1DA421A74();
    v9 = sub_1DA421F54();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA39E000, v6, v9, "iCloud account does not have a creation date", v10, 2u);
      MEMORY[0x1DA74E430](v10, -1, -1);
    }

    v7 = 1;
    goto LABEL_11;
  }

  v6 = v5;
  sub_1DA4210A4();

  v7 = 0;
LABEL_11:

  v11 = sub_1DA4210B4();

  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v11);
}

uint64_t sub_1DA3A35BC()
{
  v0 = sub_1DA3A3584();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DA3A35EC(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAE9E8, &qword_1DA4232D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v33 - v4;
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA421A94();
  __swift_project_value_buffer(v6, static Logger.extractionCategory);
  v7 = sub_1DA421A74();
  v8 = sub_1DA421F54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DA39E000, v7, v8, "Loading devices", v9, 2u);
    MEMORY[0x1DA74E430](v9, -1, -1);
  }

  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1DA3A4F50(v10);
  v33[2] = a1;
  v34 = v5;
  if (result)
  {
    v12 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v13 = v10 & 0xC000000000000001;

    v14 = 0;
    *&v15 = 136315138;
    v35 = v15;
    v36 = v10;
    v37 = v12;
    do
    {
      if (v13)
      {
        v16 = MEMORY[0x1DA74D830](v14, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = sub_1DA421A74();
      v19 = sub_1DA421F54();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = v35;
        v22 = sub_1DA3A6894(v17, &selRef_model);
        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v22 = 0x7465736E75;
          v24 = 0xE500000000000000;
        }

        v25 = v13;
        v26 = sub_1DA3A5FE8(v22, v24, &v38);

        *(v20 + 4) = v26;
        v13 = v25;
        _os_log_impl(&dword_1DA39E000, v18, v19, "Got device: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x1DA74E430](v21, -1, -1);
        v27 = v20;
        v10 = v36;
        v12 = v37;
        MEMORY[0x1DA74E430](v27, -1, -1);
      }

      else
      {
      }

      ++v14;
    }

    while (v12 != v14);
  }

  else
  {
  }

  v28 = sub_1DA421A74();
  v29 = sub_1DA421F54();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DA39E000, v28, v29, "finished getting devices", v30, 2u);
    MEMORY[0x1DA74E430](v30, -1, -1);
  }

  v31 = v34;
  sub_1DA3A6934();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE8F0, &qword_1DA423208);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    return sub_1DA3A6A2C(v31, &unk_1ECBAE9E8, &qword_1DA4232D8);
  }

  v38 = v10;

  sub_1DA421DF4();
  return (*(*(v32 - 8) + 8))(v31, v32);
}

uint64_t sub_1DA3A3B28()
{
  v1 = v0;
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA421A94();
  __swift_project_value_buffer(v2, static Logger.extractionCategory);
  v3 = sub_1DA421A74();
  v4 = sub_1DA421F54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA39E000, v3, v4, "getting accounts", v5, 2u);
    MEMORY[0x1DA74E430](v5, -1, -1);
  }

  type metadata accessor for AIDAServiceType(0);
  sub_1DA3A6990(0, &unk_1EE102D00, 0x1E6959A28);
  sub_1DA3A6B88(&qword_1EE100FA8, type metadata accessor for AIDAServiceType);
  v6 = sub_1DA421AE4();
  v7 = *MEMORY[0x1E698C218];
  v8 = *(v1 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligenceP33_5C99411072011048FFC9A949C6515F9C20AccountStoreDelegate_servicesOwnerManager);
  v9 = [v8 accountForService_];
  if (v9)
  {
    v10 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v50 = v6;
    sub_1DA3E278C(v10, v7);
  }

  else
  {
    v11 = sub_1DA3B74F4(v7);
    if (v12)
    {
      v13 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v6;
      v14 = *(v6 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9E0, &qword_1DA4232D0);
      sub_1DA4221A4();
      v6 = v50;

      v15 = *(*(v50 + 56) + 8 * v13);
      sub_1DA4221C4();
    }
  }

  v16 = *MEMORY[0x1E698C238];
  v17 = [v8 accountForService_];
  if (v17)
  {
    v18 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    v50 = v6;
    sub_1DA3E278C(v18, v16);
  }

  else
  {
    v19 = sub_1DA3B74F4(v16);
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v6;
      v22 = *(v6 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9E0, &qword_1DA4232D0);
      sub_1DA4221A4();
      v6 = v50;

      v23 = *(*(v50 + 56) + 8 * v21);
      sub_1DA4221C4();
    }
  }

  v24 = sub_1DA421A74();
  v25 = sub_1DA421F54();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v27;
    *v26 = 136315138;
    v28 = sub_1DA3A4130(v6, MEMORY[0x1E698C218]);
    v30 = sub_1DA3A5FE8(v28, v29, &v50);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DA39E000, v24, v25, "Cloud Creation Date: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1DA74E430](v27, -1, -1);
    MEMORY[0x1DA74E430](v26, -1, -1);
  }

  v31 = sub_1DA421A74();
  v32 = sub_1DA421F54();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50 = v34;
    *v33 = 136315138;
    v35 = sub_1DA3A4130(v6, MEMORY[0x1E698C238]);
    v37 = sub_1DA3A5FE8(v35, v36, &v50);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1DA39E000, v31, v32, "Store Creation Date: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1DA74E430](v34, -1, -1);
    MEMORY[0x1DA74E430](v33, -1, -1);
  }

  v38 = sub_1DA421A74();
  v39 = sub_1DA421F54();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50 = v41;
    *v40 = 136315138;

    sub_1DA3A4280(v42);
    v44 = v43;

    v45 = MEMORY[0x1DA74D4B0](v44, MEMORY[0x1E69E6158]);
    v47 = v46;

    v48 = sub_1DA3A5FE8(v45, v47, &v50);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_1DA39E000, v38, v39, "Got accounts for %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1DA74E430](v41, -1, -1);
    MEMORY[0x1DA74E430](v40, -1, -1);
  }

  return v6;
}

uint64_t sub_1DA3A4130(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = sub_1DA3EA240(*a2, a1);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 creationDate];

    if (v15)
    {
      sub_1DA4210A4();

      v16 = sub_1DA4210B4();
      v17 = 0;
    }

    else
    {
      v16 = sub_1DA4210B4();
      v17 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v17, 1, v16);
    sub_1DA3A6760(v10, v12);
  }

  else
  {
    v18 = sub_1DA4210B4();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  }

  return sub_1DA421BB4();
}

void sub_1DA3A4280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160();
    v5 = sub_1DA3A68F4(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = *(*(a1 + 48) + 8 * v5);
        type metadata accessor for AIDAServiceType(0);
        v10 = v9;
        v11 = sub_1DA421BB4();
        v13 = v12;
        v14 = *(v28 + 16);
        if (v14 >= *(v28 + 24) >> 1)
        {
          sub_1DA3B0160();
        }

        *(v28 + 16) = v14 + 1;
        v15 = v28 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
        v16 = 1 << *(a1 + 32);
        if (v5 >= v16)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v17 = *(a1 + 64 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1DA3A2020(v5, v27, v25 & 1);
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_1DA3A2020(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v24)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

id sub_1DA3A4614(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1DA3A4664@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA3A6894(v1, &selRef_model);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v89 = v3;
    v90 = v4;
    v7 = sub_1DA3A6A84();
    v14 = OUTLINED_FUNCTION_5(v7, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, 0x615720656C707041);
    if (v14)
    {

      v21 = MEMORY[0x1E69D2E48];
    }

    else
    {
      v89 = v5;
      v90 = v6;
      v27 = OUTLINED_FUNCTION_5(v14, MEMORY[0x1E69E6158], v15, v16, v17, v18, v19, v20, 1684099177);
      if (v27)
      {

        v21 = MEMORY[0x1E69D2E40];
      }

      else
      {
        v89 = v5;
        v90 = v6;
        v34 = OUTLINED_FUNCTION_5(v27, MEMORY[0x1E69E6158], v28, v29, v30, v31, v32, v33, 0x656E6F685069);
        if (v34)
        {

          v21 = MEMORY[0x1E69D2E50];
        }

        else
        {
          v89 = v5;
          v90 = v6;
          v41 = OUTLINED_FUNCTION_5(v34, MEMORY[0x1E69E6158], v35, v36, v37, v38, v39, v40, 0x646F50656D6F48);
          if (v41)
          {

            v21 = MEMORY[0x1E69D2E68];
          }

          else
          {
            v89 = v5;
            v90 = v6;
            v48 = OUTLINED_FUNCTION_5(v41, MEMORY[0x1E69E6158], v42, v43, v44, v45, v46, v47, 543383885);
            if (v48 & 1) != 0 || (v89 = v5, v90 = v6, v55 = OUTLINED_FUNCTION_5(v48, MEMORY[0x1E69E6158], v49, v50, v51, v52, v53, v54, 0x6B6F6F4263614DLL), (v55) || (v89 = v5, v90 = v6, v62 = OUTLINED_FUNCTION_5(v55, MEMORY[0x1E69E6158], v56, v57, v58, v59, v60, v61, 0x206C617574726956), (v62))
            {

              v21 = MEMORY[0x1E69D2E30];
            }

            else
            {
              v89 = v5;
              v90 = v6;
              v76 = OUTLINED_FUNCTION_5(v62, MEMORY[0x1E69E6158], v63, v64, v65, v66, v67, v68, 0x565420656C707041);
              if (v76)
              {

                v21 = MEMORY[0x1E69D2E58];
              }

              else
              {
                v89 = v5;
                v90 = v6;
                if ((OUTLINED_FUNCTION_5(v76, MEMORY[0x1E69E6158], v77, v78, v79, v80, v81, v82, 0xD000000000000010) & 1) == 0)
                {
                  if (qword_1EE102E00 != -1)
                  {
                    OUTLINED_FUNCTION_12();
                  }

                  v83 = sub_1DA421A94();
                  __swift_project_value_buffer(v83, static Logger.extractionCategory);

                  v84 = sub_1DA421A74();
                  v85 = sub_1DA421F74();

                  if (os_log_type_enabled(v84, v85))
                  {
                    v86 = swift_slowAlloc();
                    v87 = swift_slowAlloc();
                    v89 = v87;
                    *v86 = 136315138;
                    v88 = sub_1DA3A5FE8(v5, v6, &v89);

                    *(v86 + 4) = v88;
                    _os_log_impl(&dword_1DA39E000, v84, v85, "Unknown device model: %s", v86, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v87);
                    OUTLINED_FUNCTION_17();
                    OUTLINED_FUNCTION_17();
                  }

                  else
                  {
                  }

                  sub_1DA421724();
                  v72 = OUTLINED_FUNCTION_7();
                  return __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
                }

                v21 = MEMORY[0x1E69D2E70];
              }
            }
          }
        }
      }
    }

    v69 = *v21;
    v70 = sub_1DA421724();
    OUTLINED_FUNCTION_9(v70);
    (*(v71 + 104))(a1, v69, v70);
    v72 = a1;
    v73 = 0;
    v74 = 1;
    v75 = v70;
    return __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  }

  sub_1DA421724();
  v22 = OUTLINED_FUNCTION_7();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t variable initialization expression of SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.accountDetails()
{
  type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  v0 = OUTLINED_FUNCTION_7();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DA3A4ACC()
{
  v0 = sub_1DA421B94();
  v1 = MEMORY[0x1DA74D3F0](v0);

  return v1;
}

uint64_t sub_1DA3A4B04()
{
  sub_1DA421B94();
  sub_1DA421BF4();
}

uint64_t sub_1DA3A4B60()
{
  OUTLINED_FUNCTION_20();

  result = sub_1DA421B74();
  *v0 = 0;
  return result;
}

uint64_t sub_1DA3A4BD0()
{
  OUTLINED_FUNCTION_20();

  v2 = sub_1DA421B84();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1DA3A4C4C()
{
  v1 = OUTLINED_FUNCTION_21();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1DA3A4C74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA3EE474();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3A4C9C@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DA3A4CD4()
{
  v1 = OUTLINED_FUNCTION_21();
  result = sub_1DA3B8360(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DA3A4CFC(uint64_t a1)
{
  v2 = sub_1DA3A6B88(&qword_1EE100FA8, type metadata accessor for AIDAServiceType);
  v3 = sub_1DA3A6B88(&qword_1ECBAEB28, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DA3A4DB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1DA421B64();
  OUTLINED_FUNCTION_19();

  *a2 = v2;
  return result;
}

uint64_t sub_1DA3A4DFC(uint64_t a1)
{
  v2 = sub_1DA3A6B88(&qword_1ECBAEB18, type metadata accessor for MLModelMetadataKey);
  v3 = sub_1DA3A6B88(&qword_1ECBAEB20, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DA3A4EB8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA3A4F50(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DA4221E4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

size_t sub_1DA3A4F74(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DA3A5E68(v9, a2, &qword_1ECBAEAB8, &qword_1DA4233A0, type metadata accessor for SiriSuggestionsIntelligence.Device);
  v11 = *(type metadata accessor for SiriSuggestionsIntelligence.Device() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DA3AFE34(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DA3A50BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3A5120(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA3A517C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

void sub_1DA3A51D8()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA18, &qword_1DA423300);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3B2D08(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA20, &qword_1DA423308);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A52A0()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA28, &unk_1DA423310);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3B2D08(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA30, &qword_1DA423970);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5368()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA0, &qword_1DA423388);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3B2D08(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA8, &qword_1DA423390);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5430()
{
  OUTLINED_FUNCTION_11();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
      v9 = OUTLINED_FUNCTION_22();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 8);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3();
        sub_1DA3AFF58(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v7)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5520()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3AFF78(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A55D8()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA80, &qword_1DA423368);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3A03CC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5690()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA70, &qword_1DA424720);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3AFFA0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5758()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA90, &qword_1DA423378);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3A03CC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA98, &qword_1DA423380);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5848(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_22();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_13();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10();
  if (!v11)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5920()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9F8, &qword_1DA4232E0);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3A1FD0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA00, &qword_1DA4232E8);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A59E8()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA58, &unk_1DA423340);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3A1FD0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA60, &unk_1DA4268C0);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5AB0()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5F0, &unk_1DA423330);
      v8 = OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_3();
        sub_1DA3AFFF0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA50, &qword_1DA4246D0);
    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v6)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DA3A5B78()
{
  OUTLINED_FUNCTION_11();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9D8, &qword_1DA423D10);
      v9 = OUTLINED_FUNCTION_22();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_13();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3();
        sub_1DA3AFE4C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v7)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1DA3A5C34(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DA3A5E68(v9, a2, &qword_1ECBAEA38, &qword_1DA423320, MEMORY[0x1E69D2A98]);
  v11 = *(sub_1DA421314() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DA3B0018(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3A5D44()
{
  OUTLINED_FUNCTION_11();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA10, &qword_1DA423CB0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3();
        sub_1DA3AFFC8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_6();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10();
  if (!v7)
  {
    OUTLINED_FUNCTION_1();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1DA3A5E00(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9D8, &qword_1DA423D10);
  v4 = OUTLINED_FUNCTION_22();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_13();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_1DA3A5E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
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

uint64_t sub_1DA3A5F8C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1DA3A5FE8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1DA3A5FE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA3A60AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DA3A69D0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1DA3A60AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DA3A61AC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1DA422104();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DA3A61AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DA3A61F8(a1, a2);
  sub_1DA3A6310(&unk_1F55E7F38);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DA3A61F8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DA421C14())
  {
    result = sub_1DA3E9778(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DA422074();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DA422104();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA3A6310(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1DA3A63F4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DA3A63F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAB0, &qword_1DA423398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1DA3A64E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t _s18DeviceListDelegateCMa()
{
  result = qword_1EE102128;
  if (!qword_1EE102128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA3A65C0()
{
  sub_1DA3A6650();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA3A6650()
{
  if (!qword_1EE100FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAE8F0, &qword_1DA423208);
    v0 = sub_1DA421F94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE100FC8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA3A6760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3A67D0(void *a1)
{
  v1 = [a1 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for AIDAServiceType(0);
  sub_1DA3A6990(0, &unk_1EE102D00, 0x1E6959A28);
  sub_1DA3A6B88(&qword_1EE100FA8, type metadata accessor for AIDAServiceType);
  v3 = sub_1DA421AC4();

  return v3;
}

uint64_t sub_1DA3A6894(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DA421B94();

  return v4;
}

uint64_t sub_1DA3A68F4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DA422004();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DA3A6934()
{
  OUTLINED_FUNCTION_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1DA3A6990(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DA3A69D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA3A6A2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1DA3A6A84()
{
  result = qword_1EE101008;
  if (!qword_1EE101008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101008);
  }

  return result;
}

void sub_1DA3A6AF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1DA3A6B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA3A6D38()
{
  sub_1DA421B94();
  v0 = sub_1DA421B64();

  return v0;
}

size_t OUTLINED_FUNCTION_0(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x1EEDC6A10](&a9, a2, a2, v9, v9);
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return sub_1DA3A517C();
}

void OUTLINED_FUNCTION_17()
{

  JUMPOUT(0x1DA74E430);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_allocObject();
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  v5 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.init()()
{
  swift_defaultActor_initialize();
  v1 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  OUTLINED_FUNCTION_8_0(v1);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.getAccountDetails()()
{
  OUTLINED_FUNCTION_16();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC50, &qword_1DA4236F8);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A70DC, v0, 0);
}

uint64_t sub_1DA3A70DC()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  swift_beginAccess();
  sub_1DA3A88F8(v1 + v3, v2, &qword_1ECBAEC50, &qword_1DA4236F8);
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v4);
  v6 = v0[7];
  if (EnumTagSinglePayload == 1)
  {
    sub_1DA3A8CA8(v0[7], &qword_1ECBAEC50, &qword_1DA4236F8);
    sub_1DA3A7200();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sub_1DA3A7254(v0[7], v0[5]);
  }

  OUTLINED_FUNCTION_4_0();

  return v7();
}

unint64_t sub_1DA3A7200()
{
  result = qword_1ECBAEC58;
  if (!qword_1ECBAEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEC58);
  }

  return result;
}

uint64_t sub_1DA3A7254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(_:)()
{
  OUTLINED_FUNCTION_16();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC50, &qword_1DA4236F8);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A734C, v0, 0);
}

uint64_t sub_1DA3A734C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[6];
  v2 = v0[7];
  sub_1DA3A50BC(v0[5], v2);
  v3 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  swift_beginAccess();
  sub_1DA3A7408(v2, v1 + v4);
  swift_endAccess();

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_1DA3A7408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC50, &qword_1DA4236F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.createProvider(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3A749C, 0, 0);
}

uint64_t sub_1DA3A749C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[4];
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  OUTLINED_FUNCTION_8_0(v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DA3A755C;
  v6 = v0[3];

  return SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(_:)();
}

uint64_t sub_1DA3A755C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DA3A7648, 0, 0);
}

uint64_t sub_1DA3A7648()
{
  v1 = v0[5];
  v2 = v0[2];
  v2[3] = v0[4];
  v2[4] = &protocol witness table for SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider;
  *v2 = v1;
  OUTLINED_FUNCTION_4_0();
  return v3();
}

uint64_t static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(using:on:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC60, &qword_1DA423710);
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1DA421E04();
  v14 = sub_1DA421E24();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DA3A7ED4(a1, v18);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  sub_1DA3A1FF8(v18, (v15 + 5));
  v15[10] = a3;
  v15[11] = a4;

  sub_1DA3A80E4(0, 0, v13, &unk_1DA423720, v15);

  return sub_1DA3A8CA8(v13, &qword_1ECBAEC60, &qword_1DA423710);
}

uint64_t sub_1DA3A77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(type metadata accessor for SiriSuggestionsIntelligence.AccountDetails() - 8) + 64) + 15;
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A785C, 0, 0);
}

uint64_t sub_1DA3A785C()
{
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  v0[7] = __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v4, v5, "Prefetching account details...");
    OUTLINED_FUNCTION_17();
  }

  v6 = v0[3];

  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 8);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1DA3A7A34;
  v12 = v0[6];

  return v14(v12, v7, v8);
}

uint64_t sub_1DA3A7A34()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = v2[8];
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA3A7D6C, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[10] = v7;
    *v7 = v5;
    v7[1] = sub_1DA3A7B98;
    v8 = v3[6];
    v9 = v3[2];

    return SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(_:)();
  }
}

uint64_t sub_1DA3A7B98()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  sub_1DA3A5120(v3);

  return MEMORY[0x1EEE6DFA0](sub_1DA3A7CA0, 0, 0);
}

uint64_t sub_1DA3A7CA0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 56);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v4, v5, "Finished extracting account details");
    OUTLINED_FUNCTION_17();
  }

  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 16));

  OUTLINED_FUNCTION_4_0();

  return v8();
}

uint64_t sub_1DA3A7D6C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = sub_1DA421A74();
  v5 = sub_1DA421F74();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DA39E000, v4, v5, "Unable to get account details: %@", v8, 0xCu);
    sub_1DA3A8CA8(v9, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 16));

  OUTLINED_FUNCTION_4_0();

  return v14();
}

uint64_t sub_1DA3A7ED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA3A7F38(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_5_0(v8);
  *v9 = v10;
  v9[1] = sub_1DA3A8004;

  return sub_1DA3A77C8(a1, v3, v4, v5, (v1 + 5), v6, v7);
}

uint64_t sub_1DA3A8004()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_1DA3A80E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC60, &qword_1DA423710);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v28 - v13;
  sub_1DA3A88F8(a3, v28 - v13, &qword_1ECBAEC60, &qword_1DA423710);
  v15 = sub_1DA421E24();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DA3A8CA8(v14, &qword_1ECBAEC60, &qword_1DA423710);
  }

  else
  {
    sub_1DA421E14();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1DA421DD4();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1DA421BC4() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.createProvider(using:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails;
  v13 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  result = static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.setAccountDetails(using:on:completion:)(a1, v11, a2, a3);
  a4[3] = v4;
  a4[4] = &protocol witness table for SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider;
  *a4 = v11;
  return result;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.deinit()
{
  sub_1DA3A8CA8(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails, &qword_1ECBAEC50, &qword_1DA4236F8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.__deallocating_deinit()
{
  sub_1DA3A8CA8(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence32PreFetchedAccountDetailsProvider_accountDetails, &qword_1ECBAEC50, &qword_1DA4236F8);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA3A84E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3A8004;

  return SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.getAccountDetails()();
}

uint64_t SiriSuggestionsIntelligence.AccountErrors.hashValue.getter()
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](0);
  return sub_1DA422474();
}

uint64_t sub_1DA3A8600()
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.AccountErrors.hash(into:)();
  return sub_1DA422474();
}

unint64_t sub_1DA3A8640()
{
  result = qword_1ECBAEC68;
  if (!qword_1ECBAEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEC68);
  }

  return result;
}

uint64_t type metadata accessor for SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider()
{
  result = qword_1EE102D58;
  if (!qword_1EE102D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA3A86F8()
{
  sub_1DA3A8794();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA3A8794()
{
  if (!qword_1EE102898[0])
  {
    type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
    v0 = sub_1DA421F94();
    if (!v1)
    {
      atomic_store(v0, qword_1EE102898);
    }
  }
}

uint64_t _s13AccountErrorsOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s13AccountErrorsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA3A88F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DA3A8960(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA3A8A58;

  return v7(a1);
}

uint64_t sub_1DA3A8A58()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_1DA3A8B3C()
{
  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_0(v4);

  return v7(v6);
}

uint64_t sub_1DA3A8BD0()
{
  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_0(v4);

  return v7(v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DA3A8CA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

unint64_t sub_1DA3A8DB0()
{
  type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  v0 = swift_allocObject();
  v0[5] = &type metadata for SiriSuggestionsIntelligence.DefaultContextFeatureExtractors;
  result = sub_1DA3B2400();
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[6] = result;
  v0[7] = v2;
  v0[8] = v2;
  qword_1EE102DB8 = v0;
  return result;
}

uint64_t static SiriSuggestionsIntelligence.getNoOpFeatureService()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE102DB0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE102DB8;
  a1[3] = type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  OUTLINED_FUNCTION_2_1();
  a1[4] = sub_1DA3B24B4(v3, v4, v5);
  *a1 = v2;
}

uint64_t sub_1DA3A8EE8()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 16);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(v2 + 8);
  v4 = *(MEMORY[0x1E69D2F00] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1DA3A8F9C;
  v6 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE405C0](v6);
}

uint64_t sub_1DA3A8F9C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DA421974();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v7 = sub_1DA4216D4();
  v1[8] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_40();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  v1[11] = v11;
  OUTLINED_FUNCTION_5_2(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_40();
  v15 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC80, &qword_1DA423928) - 8) + 64);
  v1[4] = OUTLINED_FUNCTION_40();
  v4 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  v1[4] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_40();
  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3A91D8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v50 = v0[12];
    v51 = v0[13];
    v49 = v0[11];
    v4 = v0[9];
    v5 = v0[5];
    v61 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0180(0, v2, 0);
    v6 = *(v4 + 16);
    v4 += 16;
    v3 = v61;
    v7 = *(v4 + 64);
    OUTLINED_FUNCTION_49();
    v9 = v1 + v8;
    v47 = *(v4 + 56);
    v48 = v10;
    v46 = (v4 - 8);
    v45 = v0;
    v11 = (v5 + 8);
    do
    {
      v12 = v0[13];
      v13 = v0[10];
      v14 = v0[7];
      v59 = v0[8];
      v60 = v2;
      v15 = v0[6];
      v53 = v0[4];
      v48(v13, v9);
      v58 = *(v49 + 48);
      v16 = sub_1DA421684();
      v56 = v17;
      v57 = v16;
      sub_1DA421694();
      v18 = sub_1DA421964();
      v54 = v19;
      v55 = v18;
      v52 = *v11;
      (*v11)(v14, v53);
      sub_1DA421674();
      sub_1DA4216B4();
      v20 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
      v21 = v3;
      v22 = v20[8];
      sub_1DA4216A4();
      sub_1DA421814();
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      v27 = v20[9];
      sub_1DA4216C4();
      sub_1DA421714();
      v3 = v21;
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      sub_1DA421694();
      v32 = v12 + v20[10];
      sub_1DA421954();
      v52(v15, v53);
      *v12 = v57;
      v51[1] = v56;
      v51[2] = v55;
      v51[3] = v54;
      OUTLINED_FUNCTION_47();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v20);
      sub_1DA421694();
      (*v46)(v13, v59);
      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1DA3B0180(v36 > 1, v37 + 1, 1);
        v3 = v21;
      }

      v0 = v45;
      v38 = v45[13];
      *(v3 + 16) = v37 + 1;
      v39 = *(v50 + 80);
      OUTLINED_FUNCTION_49();
      v41 = *(v40 + 72);
      sub_1DA3B2718();
      v9 += v47;
      v2 = v60 - 1;
    }

    while (v60 != 1);
  }

  v0[14] = v3;
  v42 = swift_task_alloc();
  v0[15] = v42;
  *v42 = v0;
  v42[1] = sub_1DA3A94F8;
  v43 = v0[3];

  return sub_1DA3A9678(v3);
}

uint64_t sub_1DA3A94F8()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3_0();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[6];
  v8 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  v10 = OUTLINED_FUNCTION_7_0();

  return v11(v10);
}

uint64_t sub_1DA3A9678(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v2[98] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED90, &qword_1DA423D80) - 8) + 64) + 15;
  v2[99] = swift_task_alloc();
  v4 = sub_1DA421A64();
  v2[100] = v4;
  v5 = *(v4 - 8);
  v2[101] = v5;
  v6 = *(v5 + 64) + 15;
  v2[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3A979C, 0, 0);
}

uint64_t sub_1DA3A979C()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_4_1();
    swift_once();
  }

  v1 = sub_1DA421A94();
  v0[103] = __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "Running feature extraction", v4, 2u);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  v5 = v0[96];

  if (*(v5 + 16))
  {
    v6 = v0[102];
    v7 = v0[99];
    v8 = v0[98];
    v9 = v0[97];
    v10 = sub_1DA4219F4();
    sub_1DA4219D4();

    v11 = sub_1DA4219F4();
    sub_1DA421A04();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
    swift_asyncLet_begin();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED98, &qword_1DA423D98);
    OUTLINED_FUNCTION_42(v7, v13, v14, v12);
    v15 = swift_allocObject();
    v0[104] = v15;
    *(v15 + 16) = v9;
    *(v15 + 24) = v8;
    v16 = *(MEMORY[0x1E69D3018] + 4);

    v17 = swift_task_alloc();
    v0[105] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
    type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
    OUTLINED_FUNCTION_50();
    *v17 = v18;
    v17[1] = sub_1DA3A9AB8;
    v19 = v0[99];
    v20 = v0[96];
    OUTLINED_FUNCTION_57();

    return MEMORY[0x1EEE40720](v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v29 = sub_1DA421A74();
    v30 = sub_1DA421F54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DA39E000, v29, v30, "No suggestions supplied. Skipping feature extraction", v31, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    v32 = v0[102];
    v33 = v0[99];

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_57();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

void sub_1DA3A9AB8()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 840);
  v8 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  if (v1)
  {
  }

  else
  {
    v10 = v4[104];
    v11 = v4[99];
    v4[106] = v0;
    sub_1DA3A6A2C(v11, &qword_1ECBAED90, &qword_1DA423D80);

    MEMORY[0x1EEE6DEB8](v4 + 2, v4 + 89, sub_1DA3A9C04, v4 + 82);
  }
}

uint64_t sub_1DA3A9C18()
{
  v44 = v0;
  v1 = v0[103];
  v2 = v0[89];
  v43 = v0[106];

  sub_1DA3BCE48(v3);
  v4 = v43;
  v0[107] = v43;

  v5 = sub_1DA421A74();
  v6 = sub_1DA421F54();

  if (!os_log_type_enabled(v5, v6))
  {
LABEL_17:

    v14 = sub_1DA3A9FDC;
    v12 = v0 + 2;
    v13 = v0 + 89;
    v15 = v0 + 90;

    return MEMORY[0x1EEE6DEB0](v12, v13, v14, v15);
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v42 = v8;
  *v7 = 136315138;
  v9 = sub_1DA3A6D84(v4);
  v10 = MEMORY[0x1E69E7CC0];
  v38 = v8;
  if (!v9)
  {
LABEL_16:
    v0[95] = v10;
    v28 = OUTLINED_FUNCTION_24();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    sub_1DA3B26D0(&qword_1EE100FD0, &qword_1ECBAEDA8, &unk_1DA4251D0);
    v30 = sub_1DA421B34();
    v32 = v31;

    v33 = sub_1DA3A5FE8(v30, v32, &v42);

    *(v7 + 4) = v33;
    _os_log_impl(&dword_1DA39E000, v5, v6, "Finished extracting features:\n%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    goto LABEL_17;
  }

  v11 = v9;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1DA3B0160();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v35 = v7;
    v36 = v6;
    v37 = v5;
    v16 = 0;
    v10 = v43;
    v40 = v11;
    v41 = v4 & 0xC000000000000001;
    v39 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4;
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v41)
      {
        v19 = MEMORY[0x1DA74D830](v16, v4);
      }

      else
      {
        if (v16 >= *(v39 + 16))
        {
          goto LABEL_21;
        }

        v19 = *(v4 + 8 * v16 + 32);
      }

      v20 = v19;
      v0[87] = 0;
      v0[88] = 0xE000000000000000;
      MEMORY[0x1DA74D370](0x2020202020, 0xE500000000000000);
      MEMORY[0x1DA74D370](*&v20[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature], *&v20[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature + 8]);
      MEMORY[0x1DA74D370](64, 0xE100000000000000);
      if (*&v20[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId + 8])
      {
        v21 = *&v20[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId];
        v22 = *&v20[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId + 8];
      }

      v23 = OUTLINED_FUNCTION_36();
      MEMORY[0x1DA74D370](v23);

      MEMORY[0x1DA74D370](61, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
      sub_1DA422194();

      v24 = v0[87];
      v25 = v0[88];
      v43 = v10;
      v26 = *(v10 + 16);
      if (v26 >= *(v10 + 24) >> 1)
      {
        sub_1DA3B0160();
        v10 = v43;
      }

      *(v10 + 16) = v26 + 1;
      v27 = v10 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v25;
      ++v16;
      v4 = v17;
      if (v18 == v40)
      {
        v5 = v37;
        v6 = v36;
        v7 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return MEMORY[0x1EEE6DEB0](v12, v13, v14, v15);
}

uint64_t sub_1DA3A9FF0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = sub_1DA4219F4();
  sub_1DA4219E4();

  (*(v2 + 8))(v1, v3);
  v5 = v0[107];
  v6 = v0[102];
  v7 = v0[99];

  v8 = OUTLINED_FUNCTION_7_0();

  return v9(v8);
}

uint64_t sub_1DA3AA138()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[3];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC88, &qword_1DA423930);
  OUTLINED_FUNCTION_42(v2, v4, v5, v3);
  v6 = *(MEMORY[0x1E69D3018] + 4);

  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC90, &qword_1DA423948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  OUTLINED_FUNCTION_50();
  *v7 = v12;
  v7[1] = sub_1DA3AA244;
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];

  return MEMORY[0x1EEE40720](v15, v13, &unk_1DA423940, v14, v8, v9, v10, v11);
}

void sub_1DA3AA244()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 40);
  v8 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  if (v1)
  {
  }

  else
  {
    v11 = v4[3];
    v10 = v4[4];
    v4[6] = v0;
    sub_1DA3A6A2C(v10, &qword_1ECBAEC80, &qword_1DA423928);

    v12 = swift_task_alloc();
    v4[7] = v12;
    *v12 = v8;
    v12[1] = sub_1DA3AA3B4;
    v13 = v4[3];
    v14 = OUTLINED_FUNCTION_31();

    sub_1DA3A9678(v14);
  }
}

uint64_t sub_1DA3AA3B4()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_7_0();

  return v8(v7);
}

uint64_t sub_1DA3AA4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AA4F8, 0, 0);
}

uint64_t sub_1DA3AA4F8()
{
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED88, &qword_1DA423D70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910) - 8);
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 80);
  *(v0 + 56) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = xmmword_1DA4238F0;
  *(v0 + 60) = v1[14];
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 40) = v6;
  *v6 = v7;
  v6[1] = sub_1DA3AA640;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_1DA3AA908(v5 + v4, v8);
}

uint64_t sub_1DA3AA640()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3AA724()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 60);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32) + ((*(v0 + 56) + 32) & ~*(v0 + 56));
  type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v9 = *(MEMORY[0x1E69D3160] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 48) = v10;
  *v10 = v11;
  v10[1] = sub_1DA3AA804;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE407F8](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1DA3AA804()
{
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = *(v1 + 32);

  return v5(v6);
}

uint64_t sub_1DA3AA908(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1DA421974();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AA9C8, 0, 0);
}

uint64_t sub_1DA3AA9C8()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[7] = sub_1DA421894();
  v0[8] = v6;
  OUTLINED_FUNCTION_21_0();
  v7 = *(MEMORY[0x1E69D3160] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[9] = v8;
  *v8 = v9;
  v8[1] = sub_1DA3AAA8C;
  v10 = v0[6];
  OUTLINED_FUNCTION_25();

  return MEMORY[0x1EEE407F8](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DA3AAA8C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3AAB70()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v0[10] = sub_1DA421964();
  v0[11] = v6;
  (*(v2 + 8))(v1, v3);
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v0[12] = sub_1DA421884();
  swift_getObjectType();
  v8 = *(MEMORY[0x1E69D3280] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[13] = v9;
  *v9 = v10;
  v9[1] = sub_1DA3AAC70;
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE40A08](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DA3AAC70()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3AAD70()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_36();
  sub_1DA421854();
  sub_1DA421734();

  OUTLINED_FUNCTION_21_0();
  v3 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  v0[14] = v3;
  v4 = v2 + *(v3 + 32);
  OUTLINED_FUNCTION_36();
  sub_1DA421864();
  v5 = *(v3 + 36);
  v6 = sub_1DA421714();
  OUTLINED_FUNCTION_42(v2 + v5, v7, v8, v6);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_36();
  v9 = sub_1DA421884();
  v11 = v10;
  v0[15] = v9;
  v0[16] = v10;
  v0[17] = swift_getObjectType();
  v12 = *(*(v11 + 8) + 8);
  v14 = sub_1DA421DD4();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AAE70, v14, v13);
}

uint64_t sub_1DA3AAE70()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[2] + *(v0[14] + 40);
  sub_1DA421A34();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3AAEE4()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  *v4 = *(v0 + 56);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  OUTLINED_FUNCTION_4_0();

  return v5();
}

uint64_t sub_1DA3AB000()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[5];
    v24 = v0[4];
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0180(0, v2, 0);
    v3 = v25;
    v23 = sub_1DA421974();
    v5 = *(v23 - 8);
    v22 = *(v5 + 16);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = v0[6];
      v22(v8 + *(v24 + 48), v6, v23);
      v9 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
      OUTLINED_FUNCTION_42(v8, v10, v11, v9);
      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DA3B0180(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[6];
      *(v25 + 16) = v13 + 1;
      v15 = *(v4 + 80);
      OUTLINED_FUNCTION_49();
      v16 = *(v4 + 72);
      sub_1DA3B2718();
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  v0[7] = v3;
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1DA3AB1CC;
  v18 = v0[3];
  OUTLINED_FUNCTION_53();

  return sub_1DA3A9678(v19);
}

uint64_t sub_1DA3AB1CC()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_7_0();

  return v8(v7);
}

uint64_t sub_1DA3AB2F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AB310, 0, 0);
}

uint64_t sub_1DA3AB310()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 24);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(v2 + 16);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1DA3AB430;
  v6 = OUTLINED_FUNCTION_24();

  return v8(v6);
}

uint64_t sub_1DA3AB430()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3AB51C()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_4_0();
  return v1();
}

uint64_t sub_1DA3AB54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[186] = a3;
  v3[185] = a2;
  v3[179] = a1;
  v4 = sub_1DA421974();
  v3[187] = v4;
  v5 = *(v4 - 8);
  v3[188] = v5;
  v6 = *(v5 + 64) + 15;
  v3[189] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);
  v3[190] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[191] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0) - 8) + 64) + 15;
  v3[192] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AB688, 0, 0);
}

uint64_t sub_1DA3AB688()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[192];
  v2 = v0[191];
  v3 = v0[190];
  v4 = v0[189];
  v5 = v0[188];
  v6 = v0[187];
  v18 = v0[185];
  v19 = v0[186];
  v7 = v0[179];
  sub_1DA3B2A94();
  v8 = *(v3 + 48);
  sub_1DA3B2718();
  v9 = *(v5 + 8);
  v0[193] = v9;
  v0[194] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2 + v8, v6);
  sub_1DA3B2A94();
  (*(v5 + 32))(v4, v2 + *(v3 + 48), v6);
  sub_1DA3A6A2C(v2, &qword_1ECBAEDB0, &qword_1DA423DC0);
  v10 = swift_task_alloc();
  v0[195] = v10;
  v10[2] = v18;
  v10[3] = v1;
  v10[4] = v4;
  v10[5] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  swift_asyncLet_begin();
  v11 = swift_task_alloc();
  v0[196] = v11;
  v11[2] = v18;
  v11[3] = v4;
  v11[4] = v19;
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DEB8](v12, v13, v14, v15);
}

uint64_t sub_1DA3AB878()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 1576) = *(v0 + 1336);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1DA3AB8E4, v0 + 1344);
}

uint64_t sub_1DA3AB8F8()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[173];
  v4 = v0[197];

  sub_1DA3BCE48(v2);
  v0[198] = v4;

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 173, sub_1DA3AB978, v0 + 174);
}

uint64_t sub_1DA3AB98C()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 1568);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1336, sub_1DA3AB9F4, v0 + 1440);
}

uint64_t sub_1DA3ABA08()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[195];
  v2 = v0[194];
  v3 = v0[193];
  v4 = v0[192];
  v5 = v0[191];
  v6 = v0[189];
  v7 = v0[187];

  v8 = OUTLINED_FUNCTION_36();
  v3(v8);
  sub_1DA3A6A2C(v4, &qword_1ECBAEDB0, &qword_1DA423DC0);

  OUTLINED_FUNCTION_23();
  v10 = v0[198];

  return v9(v10);
}

uint64_t sub_1DA3ABAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1DA421974();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0) - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDC8, &qword_1DA423E08) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3ABC3C, 0, 0);
}

uint64_t sub_1DA3ABC3C()
{
  OUTLINED_FUNCTION_54();
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v28 = v0[9];
  v29 = v0[6];
  v9 = v0[4];
  v30 = *(v0[3] + 56);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDD0, &qword_1DA423E10);
  OUTLINED_FUNCTION_42(v2, v11, v12, v10);
  sub_1DA3B2A94();
  (*(v6 + 16))(v5, v8, v7);
  v13 = (v3 + *(v6 + 80) + ((*(v4 + 80) + 16) & ~*(v4 + 80))) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v0[15] = v14;
  sub_1DA3B2718();
  (*(v6 + 32))(v14 + v13, v5, v7);
  *(v14 + ((v28 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v15 = *(MEMORY[0x1E69D3018] + 4);
  v16 = swift_task_alloc();
  v0[16] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA20, &qword_1DA423308);
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  OUTLINED_FUNCTION_50();
  *v16 = v17;
  v16[1] = sub_1DA3ABE24;
  v18 = v0[14];
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE40720](v19, v20, v21, v22, v23, v24, v25, v26);
}

void sub_1DA3ABE24()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  if (v1)
  {
  }

  else
  {
    v10 = v4[14];
    v11 = v4[15];
    v4[17] = v0;
    sub_1DA3A6A2C(v10, &qword_1ECBAEDC8, &qword_1DA423E08);

    v12 = OUTLINED_FUNCTION_26();

    MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1DA3ABF5C()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  **(v0 + 16) = *(v0 + 136);

  OUTLINED_FUNCTION_4_0();

  return v4();
}

uint64_t sub_1DA3ABFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3AC0A8, 0, 0);
}

uint64_t sub_1DA3AC0A8()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  sub_1DA3B2A94();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DA3A6A2C(v0[6], &qword_1ECBAEDB0, &qword_1DA423DC0);
    v4 = v0[8];
    v5 = v0[6];

    OUTLINED_FUNCTION_23();
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }

  else
  {
    v9 = v0[4];
    v10 = v0[2];
    sub_1DA3B2C40(v0[6], v0[8]);
    v11 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1DA421964();
    v0[9] = v12;
    v13 = swift_task_alloc();
    v0[10] = v13;
    OUTLINED_FUNCTION_2_1();
    sub_1DA3B24B4(v14, v15, v16);
    v17 = *(v11 + 8);
    *v13 = v0;
    v13[1] = sub_1DA3AC26C;
    v18 = v0[8];
    v19 = v0[5];
    v21 = v0[7];
    OUTLINED_FUNCTION_30();

    return sub_1DA3AC480();
  }
}

uint64_t sub_1DA3AC26C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA3AC370()
{
  OUTLINED_FUNCTION_16();
  sub_1DA3B2CA4(v0[8]);
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_7_0();

  return v5(v4);
}

uint64_t sub_1DA3AC3E4(uint64_t a1, uint64_t a2)
{
  sub_1DA422094();

  strcpy(v5, "suggestion###");
  MEMORY[0x1DA74D370](a1, a2);
  MEMORY[0x1DA74D370](2302755, 0xE300000000000000);
  return v5[0];
}

uint64_t sub_1DA3AC480()
{
  OUTLINED_FUNCTION_16();
  v0[15] = v17;
  v0[16] = v18;
  v0[13] = v1;
  v0[14] = v16;
  v0[11] = v2;
  v0[12] = v3;
  v0[9] = v4;
  v0[10] = v5;
  v0[7] = v6;
  v0[8] = v7;
  v0[6] = v8;
  v9 = *(v1 - 8);
  v0[17] = v9;
  v0[18] = *(v9 + 64);
  v0[19] = OUTLINED_FUNCTION_40();
  v10 = *(v16 - 8);
  v0[20] = v10;
  v0[21] = *(v10 + 64);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DA3AC5A8()
{
  v62 = v0;
  v1 = v0[13];
  v2 = v0[6];
  DynamicType = swift_getDynamicType();
  v0[24] = DynamicType;
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_4_1();
    swift_once();
  }

  v59 = DynamicType;
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[7];
  v8 = sub_1DA421A94();
  v0[25] = __swift_project_value_buffer(v8, static Logger.extractionCategory);
  v58 = *(v5 + 16);
  v58(v4, v7, v6);
  v9 = sub_1DA421A74();
  v10 = sub_1DA421F54();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[14];
  if (v11)
  {
    v56 = v0[13];
    v15 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v15 = 136315394;
    OUTLINED_FUNCTION_38();
    v0[4] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v16 = sub_1DA421BB4();
    v18 = v17;
    v19 = *(v13 + 8);
    v20 = OUTLINED_FUNCTION_38();
    v21(v20);
    v22 = sub_1DA3A5FE8(v16, v18, &v61);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v0[5] = v59;
    swift_getMetatypeMetadata();
    v23 = sub_1DA421BB4();
    v25 = sub_1DA3A5FE8(v23, v24, &v61);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_1DA39E000, v9, v10, "Extracting features from %s using: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    v26 = *(v13 + 8);
    v27 = OUTLINED_FUNCTION_38();
    v28(v27);
  }

  v29 = v0[21];
  v30 = v0[22];
  v31 = v0[20];
  v49 = v0[19];
  v32 = v0[17];
  v33 = v0[18];
  v34 = v0[13];
  v50 = v30;
  v51 = v0[12];
  v52 = v0[16];
  v53 = v0[10];
  v55 = v0[11];
  v57 = v0[9];
  v54 = v0[8];
  v35 = v0[6];
  v36 = v0[7];
  v60 = *(v0 + 7);
  (*(v32 + 16))();
  (v58)(v30, v36);
  v37 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v38 = (v33 + *(v31 + 80) + v37) & ~*(v31 + 80);
  v39 = (v29 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v0[26] = v41;
  *(v41 + 16) = v51;
  *(v41 + 24) = v34;
  *(v41 + 32) = v60;
  *(v41 + 48) = v52;
  (*(v32 + 32))(v41 + v37, v49, v34);
  (*(v31 + 32))(v41 + v38, v50, v60);
  v42 = (v41 + v39);
  *v42 = v53;
  v42[1] = v55;
  v43 = (v41 + v40);
  *v43 = v54;
  v43[1] = v57;
  *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v44 = *(MEMORY[0x1E69D3548] + 4);

  v45 = swift_task_alloc();
  v0[27] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  *v45 = v0;
  v45[1] = sub_1DA3AC9EC;
  v47.n128_u64[0] = 10.0;

  return MEMORY[0x1EEE40F70](v0 + 2, &unk_1DA423CC8, v41, v46, v47);
}

uint64_t sub_1DA3AC9EC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 224) = v0;

  if (v0)
  {
    v9 = sub_1DA3ACB6C;
  }

  else
  {
    v10 = *(v3 + 208);

    v9 = sub_1DA3ACAF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DA3ACAF4()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[2];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];

  v5 = OUTLINED_FUNCTION_7_0();

  return v6(v5);
}

uint64_t sub_1DA3ACB6C()
{
  v28 = v0;
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = v1;
  v5 = sub_1DA421A74();
  v6 = sub_1DA421F74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 192);
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    *(v0 + 24) = v8;
    swift_getMetatypeMetadata();
    v13 = sub_1DA421BB4();
    v15 = sub_1DA3A5FE8(v13, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1DA39E000, v5, v6, "Failed to extract suggestion features from: %s. Error: %@", v10, 0x16u);
    sub_1DA3A6A2C(v11, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v18);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v19);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v20);
  }

  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 152);

  OUTLINED_FUNCTION_23();
  v25 = MEMORY[0x1E69E7CC0];

  return v24(v25);
}

uint64_t sub_1DA3ACD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DA421974();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB8, &qword_1DA423DE8) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3ACE5C, 0, 0);
}

uint64_t sub_1DA3ACE5C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = *(v0[3] + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDC0, &qword_1DA423DF0);
  OUTLINED_FUNCTION_42(v1, v10, v11, v9);
  (*(v4 + 16))(v2, v7, v5);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v0[11] = v13;
  (*(v4 + 32))(v13 + v12, v2, v5);
  *(v13 + ((v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v14 = *(MEMORY[0x1E69D3018] + 4);
  v15 = swift_task_alloc();
  v0[12] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA8, &qword_1DA423390);
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  OUTLINED_FUNCTION_50();
  *v15 = v20;
  v15[1] = sub_1DA3ACFF0;
  v21 = v0[10];

  return MEMORY[0x1EEE40720](v8, v21, &unk_1DA423E00, v13, v16, v17, v18, v19);
}

void sub_1DA3ACFF0()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  if (v1)
  {
  }

  else
  {
    v10 = v4[10];
    v11 = v4[11];
    v4[13] = v0;
    sub_1DA3A6A2C(v10, &qword_1ECBAEDB8, &qword_1DA423DE8);

    v12 = OUTLINED_FUNCTION_26();

    MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1DA3AD128()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  **(v0 + 16) = *(v0 + 104);

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_1DA3AD198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AD1BC, 0, 0);
}

uint64_t sub_1DA3AD1BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1DA421964();
  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  sub_1DA421974();
  OUTLINED_FUNCTION_2_1();
  sub_1DA3B24B4(v6, v7, v8);
  v9 = *(v3 + 8);
  *v5 = v0;
  v5[1] = sub_1DA3AD2DC;
  v10 = v0[3];
  v11 = v0[4];
  OUTLINED_FUNCTION_30();

  return sub_1DA3AC480();
}

uint64_t sub_1DA3AD2DC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_7_0();

  return v7(v6);
}

uint64_t sub_1DA3AD3E0()
{
  MEMORY[0x1DA74D370]();
  MEMORY[0x1DA74D370](2302755, 0xE300000000000000);
  return 0x23236E6F69746361;
}

uint64_t *SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1DA3AD4A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3AD53C;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)();
}

uint64_t sub_1DA3AD53C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_0();

  return v6(v5);
}

uint64_t sub_1DA3AD620()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3B2D04;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)();
}

uint64_t sub_1DA3AD6B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3B2D04;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.extractFeatures(from:)();
}

uint64_t sub_1DA3AD750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DA3A8D08;

  return (sub_1DA3AD834)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DA3AD834(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3AD87C, 0, 0);
}

uint64_t sub_1DA3AD87C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3];
  v2 = v0[2];
  v2[3] = v0[4];
  OUTLINED_FUNCTION_2_1();
  v2[4] = sub_1DA3B24B4(v3, v4, v5);
  *v2 = v1;
  OUTLINED_FUNCTION_4_0();
  v8 = v6;

  return v8();
}

uint64_t _FeatureService.create(featureFlagProvider:configProvider:accountDetailsProviderOverride:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a6;
  return OUTLINED_FUNCTION_1_0(sub_1DA3AD938);
}

uint64_t sub_1DA3AD938()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v2 + 24) = v6;
  __swift_allocate_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_17_0(v6);
  (*(v3 + 16))();
  OUTLINED_FUNCTION_4_0();

  return v4();
}

uint64_t sub_1DA3AD9D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3A8004;

  return SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService.destroy()();
}

void *static SiriSuggestionsIntelligence.getFeatureServiceBuilder()()
{
  type metadata accessor for SiriSuggestionsIntelligence.FeatureServiceBuilder();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v1;
  result[4] = v1;
  return result;
}

void *SiriSuggestionsIntelligence.FeatureServiceBuilder.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v1;
  result[4] = v1;
  return result;
}

void *SiriSuggestionsIntelligence.FeatureServiceBuilder.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

uint64_t sub_1DA3ADB28(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v7 = v5[4];
      v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
      a2(v8, v2, v6, v7);

      v5 += 5;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1DA3ADBC4(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t))
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return a2(v5, v2, v3, v4);
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.actionExtractors(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      SiriSuggestionsIntelligence.FeatureServiceBuilder.actionExtractor(_:)(v2);

      v2 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.actionExtractor(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1DA3AFD48(sub_1DA3A5368);
  v4 = *(*(v1 + 32) + 16);
  sub_1DA3AFDEC(v4, sub_1DA3A5368);
  v5 = *(v1 + 32);
  *(v5 + 16) = v4 + 1;
  sub_1DA3B2454(a1, v5 + 40 * v4 + 32);
  *(v2 + 32) = v5;
  swift_endAccess();
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.build(clock:)()
{
  OUTLINED_FUNCTION_16();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_1DA421A94();
  v1[25] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v1[26] = v5;
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_40();
  v8 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA3ADDE8()
{
  v1 = v0[27];
  v2 = v0[24];
  sub_1DA4219C4();

  v3 = sub_1DA421A74();
  v4 = sub_1DA421F54();

  if (os_log_type_enabled(v3, v4))
  {
    v39 = v0[26];
    v5 = v0[24];
    v40 = v0[25];
    v41 = v0[27];
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315650;
    OUTLINED_FUNCTION_44();
    v7 = v5[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA30, &qword_1DA423970);
    OUTLINED_FUNCTION_33();
    v8 = OUTLINED_FUNCTION_45();
    v12 = OUTLINED_FUNCTION_41(v8, v9, v10, v11);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    OUTLINED_FUNCTION_44();
    v13 = v5[3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA20, &qword_1DA423308);
    OUTLINED_FUNCTION_33();
    v14 = OUTLINED_FUNCTION_45();
    v18 = OUTLINED_FUNCTION_41(v14, v15, v16, v17);

    *(v6 + 14) = v18;
    *(v6 + 22) = 2080;
    OUTLINED_FUNCTION_44();
    v19 = v5[4];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAA8, &qword_1DA423390);
    OUTLINED_FUNCTION_33();
    v20 = OUTLINED_FUNCTION_45();
    v24 = OUTLINED_FUNCTION_41(v20, v21, v22, v23);

    *(v6 + 24) = v24;
    _os_log_impl(&dword_1DA39E000, v3, v4, "Created FeatureService with:\ncontextualExtractors: \n%s,\nsuggestionFeatureExtractors: \n%s,\nactionExtractors: \n%s", v6, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();

    (*(v39 + 8))(v41, v40);
  }

  else
  {
    v26 = v0[26];
    v25 = v0[27];
    v27 = v0[25];

    v28 = *(v26 + 8);
    v29 = OUTLINED_FUNCTION_24();
    v30(v29);
  }

  v0[28] = type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[29] = v31;
  *v31 = v32;
  v31[1] = sub_1DA3AE090;
  v33 = v0[23];
  v34 = v0[24];
  OUTLINED_FUNCTION_53();

  return sub_1DA3AE300(v35, v36);
}

uint64_t sub_1DA3AE090()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3AE174()
{
  v1 = v0[28];
  v20 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  OUTLINED_FUNCTION_44();
  v4 = *(v2 + 24);
  OUTLINED_FUNCTION_44();
  v5 = *(v2 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
  OUTLINED_FUNCTION_6_1();
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_40();
  (*(v10 + 16))(v13, v8, v6);

  v14 = sub_1DA3B1688(v13, v4, v5, v1, v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3[3] = v1;
  OUTLINED_FUNCTION_2_1();
  v3[4] = sub_1DA3B24B4(v15, v16, v17);
  *v3 = v14;

  OUTLINED_FUNCTION_4_0();

  return v18();
}

uint64_t sub_1DA3AE300(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_1_0(sub_1DA3AE31C);
}

uint64_t sub_1DA3AE31C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[17];
  OUTLINED_FUNCTION_44();
  v2 = *(v1 + 16);
  v0[18] = v2;

  v0[5] = &type metadata for SiriSuggestionsIntelligence.DefaultContextFeatureExtractors;
  v0[6] = sub_1DA3B2400();
  v0[2] = v2;
  type metadata accessor for SiriSuggestionsIntelligence.ContextFeatureExtractionQueue(0);

  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1DA3AE408;
  v4 = v0[16];

  return sub_1DA3E5A34(v4);
}

uint64_t sub_1DA3AE408()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3AE4F4()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  sub_1DA3B2454(v0 + 16, v0 + 56);
  v4 = type metadata accessor for SiriSuggestionsIntelligence.QueuedContextFeatureExtractors();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  sub_1DA3A1FF8((v0 + 56), v5 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v3[3] = v4;
  v3[4] = sub_1DA3B24B4(&qword_1EE101480, 255, type metadata accessor for SiriSuggestionsIntelligence.QueuedContextFeatureExtractors);
  *v3 = v5;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

void *SiriSuggestionsIntelligence.FeatureServiceBuilder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t SiriSuggestionsIntelligence.FeatureServiceBuilder.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.FeatureServiceBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t SiriSuggestionsIntelligence.SourcedFeature.source.getter()
{
  result = *(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_source);
  v2 = *(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_source + 8);
  return result;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeature.actionId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId);
  v2 = *(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId + 8);

  return OUTLINED_FUNCTION_39();
}

id SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)()
{
  OUTLINED_FUNCTION_34();
  ObjectType = swift_getObjectType();
  sub_1DA3B1C24(v5, &v1[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature]);
  v7 = &v1[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_source];
  *v7 = v4;
  *(v7 + 1) = v3;
  v8 = &v1[OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId];
  *v8 = v2;
  *(v8 + 1) = v0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1DA3B1C80(v5);
  return v9;
}

void *SiriSuggestionsIntelligence.SourcedFeature.__allocating_init(from:)(uint64_t *a1)
{
  v2 = sub_1DA421424();
  OUTLINED_FUNCTION_6_1();
  v54 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECB0, &qword_1DA423978);
  OUTLINED_FUNCTION_6_1();
  v56 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1DA3B1CD4();
  v19 = v57;
  sub_1DA422484();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v53 = v18;
    v57 = v8;
    LOBYTE(v58) = 0;
    sub_1DA3B1D28();
    sub_1DA4222B4();
    v20 = v9;
    LOBYTE(v58) = 1;
    OUTLINED_FUNCTION_19_0();
    sub_1DA3B24B4(v21, 255, v22);
    v23 = v2;
    sub_1DA4222B4();
    v24 = v55;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    v67 = 2;
    sub_1DA3B1E38(&qword_1EE100FF0);
    sub_1DA4222B4();
    v52 = v20;
    v51 = v58;
    sub_1DA421414();
    v39 = sub_1DA4220A4();

    v40 = v54;
    if (v39 && dynamic_cast_existential_1_conditional(v39))
    {
      sub_1DA3B1C24(&v59, &v58);
      v41 = objc_allocWithZone(v24);
      v17 = SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)();
      (*(v40 + 8))(v57, v23);
      sub_1DA3B1C80(&v59);
      (*(v56 + 8))(v15, v52);
    }

    else
    {

      v42 = sub_1DA421764();
      sub_1DA3B24B4(&qword_1ECBAECD8, 255, MEMORY[0x1E69D2F30]);
      v43 = swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECE0, &qword_1DA423998) + 48);
      v47 = v53;
      *(v45 + 24) = &_s14SourcedFeatureC10CodingKeysON;
      *(v45 + 32) = v47;
      *v45 = 1;
      v48 = v57;
      (*(v40 + 16))(v45 + v46, v57, v23);
      v49 = *MEMORY[0x1E69D2F28];
      OUTLINED_FUNCTION_17_0(v42);
      (*(v50 + 104))(v45);
      swift_willThrow();
      (*(v40 + 8))(v48, v23);
      sub_1DA3B1C80(&v59);
      v36 = v52;
      v26 = v56;
      if (qword_1EE102E00 != -1)
      {
        OUTLINED_FUNCTION_4_1();
        swift_once();
      }

      v27 = sub_1DA421A94();
      __swift_project_value_buffer(v27, static Logger.extractionCategory);
      v28 = v43;
      v29 = sub_1DA421A74();
      v30 = sub_1DA421F74();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v36;
        v33 = swift_slowAlloc();
        *v31 = 138412290;
        v34 = v43;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1DA39E000, v29, v30, "Unable to deserialise feature. Setting to default error value. Check other logs for actual error: %@", v31, 0xCu);
        sub_1DA3A6A2C(v33, &qword_1ECBAEC70, &qword_1DA42A510);
        v36 = v32;
        v26 = v56;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      v59 = 0;
      v60 = 0xE000000000000000;
      MEMORY[0x1DA74D370](0x2021524F525245, 0xE700000000000000);
      v58 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
      sub_1DA422194();
      v63 = MEMORY[0x1E69E6158];
      v64 = MEMORY[0x1E69E6190];
      v61 = v59;
      v62 = v60;
      v59 = 0x726F727265;
      v60 = 0xE500000000000000;
      v65 = MEMORY[0x1E69E6160];
      v66 = 0;
      _s14SourcedFeatureC14ErrorExtractorCMa();
      v37 = objc_allocWithZone(v55);
      v17 = SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)();

      (*(v26 + 8))(v15, v36);
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return v17;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeature.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DA421424();
  OUTLINED_FUNCTION_6_1();
  v26[0] = v6;
  v26[1] = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECE8, qword_1DA4239A0);
  OUTLINED_FUNCTION_6_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3B1CD4();
  sub_1DA422494();
  LOBYTE(v27) = 0;
  sub_1DA3B1DE4();
  sub_1DA422334();
  if (!v2)
  {
    v18 = v26[0];
    v19 = *(v3 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_source);
    sub_1DA421404();
    LOBYTE(v27) = 1;
    OUTLINED_FUNCTION_19_0();
    sub_1DA3B24B4(v20, 255, v21);
    sub_1DA422334();
    v22 = *(v18 + 8);
    v23 = OUTLINED_FUNCTION_38();
    v24(v23);
    v27 = *(v3 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_actionId);
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    sub_1DA3B1E38(&unk_1EE100FF8);
    sub_1DA422334();
  }

  return (*(v11 + 8))(v16, v9);
}

uint64_t sub_1DA3AF198()
{
  OUTLINED_FUNCTION_20();
  v3 = v1 == 0x65727574616566 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_43() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x656372756F73 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_43() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x64496E6F69746361 && v0 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_43();

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

uint64_t _s27SiriSuggestionsIntelligenceAAO16MotionConfidenceO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](a1);
  return sub_1DA422474();
}

uint64_t sub_1DA3AF310(char a1)
{
  if (!a1)
  {
    return 0x65727574616566;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0x64496E6F69746361;
}

uint64_t sub_1DA3AF380()
{
  v1 = *v0;
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](v1);
  return sub_1DA422474();
}

uint64_t sub_1DA3AF3CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3AF198();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3AF400(uint64_t a1)
{
  v2 = sub_1DA3B1CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3AF43C(uint64_t a1)
{
  v2 = sub_1DA3B1CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3AF4B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3AF540;

  return sub_1DA3AF478();
}

uint64_t sub_1DA3AF540()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;

  OUTLINED_FUNCTION_23();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

id SiriSuggestionsIntelligence.SourcedFeature.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSuggestionsIntelligence.SourcedFeature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1DA3AF724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.SourcedFeature.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DA3AF79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v19;
  v8[13] = v20;
  v8[10] = v17;
  v8[11] = v18;
  v8[8] = a8;
  v8[9] = v16;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[3] = a1;
  v10 = *(v20 + 16);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v8[14] = v12;
  *v12 = v8;
  v12[1] = sub_1DA3AF8EC;

  return v14(a3);
}

uint64_t sub_1DA3AF8EC()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;
  *(v4 + 120) = v1;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v4 + 128) = v0;
    v12 = OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1DA3AFA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_54();
  v15 = *(v14 + 120);
  v16 = *(v14 + 104);
  v17 = *(v14 + 64);
  v36 = *(v14 + 48);
  v18 = *(v14 + 24);
  *(v14 + 16) = *(v14 + 128);
  v19 = swift_task_alloc();
  v20 = *(v14 + 88);
  v21 = *(v14 + 32);
  *(v19 + 16) = *(v14 + 72);
  *(v19 + 32) = v20;
  *(v19 + 48) = v16;
  *(v19 + 56) = v21;
  *(v19 + 72) = v36;
  *(v19 + 88) = v17;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED08, &qword_1DA423CD8);
  v23 = type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  v24 = sub_1DA3B26D0(&qword_1EE100FD8, &qword_1ECBAED08, &qword_1DA423CD8);
  v26 = sub_1DA3C4BD8(sub_1DA3B235C, v19, v22, v23, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);

  *v18 = v26;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, *(&v36 + 1), a11, a12, a13, a14);
}

id sub_1DA3AFB68@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, unint64_t)@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 4271950;
  }

  if (a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v9 = a2(v7, v8);
  v11 = v10;

  MEMORY[0x1DA74D370](v9, v11);

  MEMORY[0x1DA74D370](*a1, a1[1]);
  sub_1DA3B239C((a1 + 2), v15);
  v15[6] = a1[8];
  v12 = objc_allocWithZone(type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature());

  result = SiriSuggestionsIntelligence.SourcedFeature.init(feature:source:actionId:)();
  *a5 = result;
  return result;
}

uint64_t sub_1DA3AFCA0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1DA3AFD48(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DA3AFDEC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_1DA3AFE4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1DA3AFE6C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910);

    return MEMORY[0x1EEE6BD00](a3);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3);
  }

  return result;
}

char *sub_1DA3AFF58(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1DA3AFF78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1DA3AFFA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

char *sub_1DA3AFFC8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_1DA3AFFF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_1(a3, result);
  }

  return result;
}

uint64_t sub_1DA3B0030(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_20();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_9(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    v14 = OUTLINED_FUNCTION_48();

    return MEMORY[0x1EEE6BD00](v14);
  }

  else if (a3 != v5)
  {
    v13 = OUTLINED_FUNCTION_48();

    return MEMORY[0x1EEE6BCF8](v13);
  }

  return result;
}

void sub_1DA3B00EC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1DA3B0160()
{
  v1 = *v0;
  sub_1DA3B0618();
  *v0 = v2;
}

size_t sub_1DA3B0180(size_t a1, int64_t a2, char a3)
{
  result = sub_1DA3B0700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DA3B01A0()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1DA3B2D00;
  v4 = OUTLINED_FUNCTION_31();

  return sub_1DA3AA4D8(v4, v0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1DA3B02B0()
{
  v1 = *v0;
  sub_1DA3B08CC();
  *v0 = v2;
}

char *sub_1DA3B02D0(char *a1, int64_t a2, char a3)
{
  result = sub_1DA3B09D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DA3B02F0()
{
  v1 = *v0;
  sub_1DA3B15A4();
  *v0 = v2;
}

void *sub_1DA3B0320(void *a1, int64_t a2, char a3)
{
  result = sub_1DA3B0B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DA3B0340(char *a1, int64_t a2, char a3)
{
  result = sub_1DA3B0D50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DA3B0360()
{
  v1 = *v0;
  sub_1DA3B0E68();
  *v0 = v2;
}

void *sub_1DA3B0410(void *a1, int64_t a2, char a3)
{
  result = sub_1DA3B0F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA3B0430(void *a1, int64_t a2, char a3)
{
  result = sub_1DA3B1064(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA3B0450(void *a1, int64_t a2, char a3)
{
  result = sub_1DA3B119C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DA3B05B8()
{
  v1 = *v0;
  sub_1DA3B0E68();
  *v0 = v2;
}

void sub_1DA3B05E8()
{
  v1 = *v0;
  sub_1DA3B15A4();
  *v0 = v2;
}

void sub_1DA3B0618()
{
  OUTLINED_FUNCTION_11();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE9D8, &qword_1DA423D10);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1DA3B0700(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED88, &qword_1DA423D70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC78, &qword_1DA423910) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DA3AFE6C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DA3B08CC()
{
  OUTLINED_FUNCTION_11();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA70, &qword_1DA424720);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_35();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[11 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_51();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
    OUTLINED_FUNCTION_51();
    swift_arrayInitWithCopy();
  }
}

char *sub_1DA3B09D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED30, &qword_1DA423D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA3B0B14(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED10, &qword_1DA423CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED18, &unk_1DA423CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3B0C48()
{
  OUTLINED_FUNCTION_11();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA58, &unk_1DA423340);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_35();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[3 * v2 + 4] <= v9 + 4)
    {
      v12 = OUTLINED_FUNCTION_51();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA60, &unk_1DA4268C0);
    OUTLINED_FUNCTION_51();
    swift_arrayInitWithCopy();
  }
}

char *sub_1DA3B0D50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3B0E68()
{
  OUTLINED_FUNCTION_11();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_56(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v2;
    *(v15 + 3) = 2 * v16 - 64;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[v2] <= v17)
    {
      memmove(v17, v18, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, v2);
  }
}

void *sub_1DA3B0F2C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5F0, &unk_1DA423330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA50, &qword_1DA4246D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA3B1064(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED48, &qword_1DA423D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED50, &qword_1DA423D38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA3B119C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED68, &qword_1DA423D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED70, &qword_1DA423D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA3B12D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_10();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_56(a1, a2, a3, a4, a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 24);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v17 != a4 || a4 + 32 + 24 * v15 <= (v17 + 4))
    {
      memmove(v17 + 4, (a4 + 32), 24 * v15);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void sub_1DA3B13F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_10();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_56(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_5_2(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(*(a7(0) - 8) + 80);
  OUTLINED_FUNCTION_49();
  if (v11)
  {
    sub_1DA3B0030(a4 + v26, v15, v22 + v26, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA3B15A4()
{
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_10();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_56(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_35();
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[24 * v11] <= v15)
    {
      memmove(v15, v16, 24 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 24 * v11);
  }
}

uint64_t *sub_1DA3B1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v10 + 32))(&v20 - v15);
  v17 = swift_allocObject();
  (*(v10 + 16))(v14, v16, a5);
  v18 = sub_1DA3B17F0(v14, a2, a3, v17, a5, a6);
  (*(v10 + 8))(v16, a5);
  return v18;
}

uint64_t *sub_1DA3B17F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  a4[5] = a5;
  a4[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  a4[7] = a2;
  a4[8] = a3;
  return a4;
}

uint64_t sub_1DA3B1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  OUTLINED_FUNCTION_6_1();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = *(v7 + 16);
  v16(&v20 - v14);
  swift_beginAccess();
  sub_1DA3AFD48(sub_1DA3A52A0);
  v17 = *(*(a2 + 16) + 16);
  sub_1DA3AFDEC(v17, sub_1DA3A52A0);
  (v16)(v13, v15, a3);
  sub_1DA3B24FC(v17, v13, (a2 + 16), a3, v20, sub_1DA3B2D10);
  swift_endAccess();
  v18 = *(v7 + 8);

  v18(v15, a3);
  return a2;
}

uint64_t sub_1DA3B1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v6 = *(a3 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = v6[2];
  v13(&v17 - v11);
  swift_beginAccess();
  sub_1DA3AFD48(sub_1DA3A51D8);
  v14 = *(*(a2 + 24) + 16);
  sub_1DA3AFDEC(v14, sub_1DA3A51D8);
  (v13)(v10, v12, a3);
  sub_1DA3B24FC(v14, v10, (a2 + 24), a3, v17, sub_1DA3B2D10);
  swift_endAccess();
  v15 = v6[1];

  v15(v12, a3);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1DA3B1CD4()
{
  result = qword_1EE100828;
  if (!qword_1EE100828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100828);
  }

  return result;
}

unint64_t sub_1DA3B1D28()
{
  result = qword_1ECBAECB8;
  if (!qword_1ECBAECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAECB8);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DA3B1DE4()
{
  result = qword_1EE101088;
  if (!qword_1EE101088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101088);
  }

  return result;
}

uint64_t sub_1DA3B1E38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAECD0, &qword_1DA423990);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3B1EA4(uint64_t a1, uint64_t a2)
{
  result = sub_1DA3B24B4(&qword_1EE102C80, a2, type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  *(a1 + 16) = result;
  return result;
}

uint64_t _s14SourcedFeatureC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14SourcedFeatureC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3B2094()
{
  result = qword_1ECBAECF0;
  if (!qword_1ECBAECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAECF0);
  }

  return result;
}

unint64_t sub_1DA3B20EC()
{
  result = qword_1EE100818;
  if (!qword_1EE100818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100818);
  }

  return result;
}

unint64_t sub_1DA3B2144()
{
  result = qword_1EE100820;
  if (!qword_1EE100820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100820);
  }

  return result;
}

uint64_t sub_1DA3B2198()
{
  v2 = v1;
  v27 = v0[3];
  v28 = v0[2];
  v3 = v0[4];
  v25 = v0[6];
  v26 = v0[5];
  OUTLINED_FUNCTION_6_1();
  v6 = (*(*(v3 - 8) + 64) + ((((*(v4 + 80) + 56) & ~*(v4 + 80)) + *(v5 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);
  v13 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DA3A8004;
  OUTLINED_FUNCTION_53();

  return sub_1DA3AF79C(v15, v16, v17, v18, v19, v20, v21, v22);
}

id sub_1DA3B235C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 64);
  v6 = *(v2 + 88);
  v9 = *(v2 + 48);
  v8 = *(v2 + 32);
  return sub_1DA3AFB68(a1, *(v2 + 56), *(v2 + 72), *(v2 + 80), a2);
}

uint64_t sub_1DA3B239C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1DA3B2400()
{
  result = qword_1EE102D68;
  if (!qword_1EE102D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102D68);
  }

  return result;
}

uint64_t sub_1DA3B2454(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_17_0(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1DA3B24B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DA3B24FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v13[3] = a4;
  v13[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_17_0(a4);
  (*(v10 + 32))();
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return a6(v13, v11 + 40 * a1 + 32);
}

uint64_t sub_1DA3B25A0()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DA3A8D08;

  return sub_1DA3AB2F0(v3, v0);
}

uint64_t sub_1DA3B2634()
{
  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v4[1] = sub_1DA3B2D00;
  v6 = OUTLINED_FUNCTION_24();

  return sub_1DA3AB54C(v6, v7, v1);
}

uint64_t sub_1DA3B26D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DA3B2718()
{
  OUTLINED_FUNCTION_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_39();
  v7(v6);
  return v0;
}

uint64_t sub_1DA3B2770()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DA3A8D08;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_57();

  return sub_1DA3ABAC8(v8, v9, v10, v11, v12);
}

uint64_t sub_1DA3B2818()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1DA3A8D08;
  OUTLINED_FUNCTION_25();

  return sub_1DA3ACD58(v7, v8, v9, v4);
}

uint64_t sub_1DA3B28BC()
{
  OUTLINED_FUNCTION_6_0();
  v1 = sub_1DA421974();
  OUTLINED_FUNCTION_5_2(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v6[1] = sub_1DA3B29B0;
  v8 = OUTLINED_FUNCTION_31();

  return sub_1DA3AD198(v8, v9, v4);
}

uint64_t sub_1DA3B29B0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8_1();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  OUTLINED_FUNCTION_23();

  return v6(v0);
}

uint64_t sub_1DA3B2A94()
{
  OUTLINED_FUNCTION_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_39();
  v7(v6);
  return v0;
}

uint64_t sub_1DA3B2AEC()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDB0, &qword_1DA423DC0);
  OUTLINED_FUNCTION_5_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1DA421974();
  OUTLINED_FUNCTION_5_2(v6);
  v9 = *(v0 + ((*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32(v10);
  *v11 = v12;
  v11[1] = sub_1DA3B2D00;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_57();

  return sub_1DA3ABFD8(v13, v14, v15, v16);
}

uint64_t sub_1DA3B2C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3B2CA4(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_1DA421784();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DA3A5FE8(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_45()
{
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_1DA3B31C8(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DA421B94();

  return v4;
}

_OWORD *SiriSuggestionsIntelligence.Feature.init(featureName:featureValue:featureVector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_1DA3B3334(a3, (a5 + 16));
  *(a5 + 64) = a4;
  return result;
}

_OWORD *sub_1DA3B3334(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

_OWORD *static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
  v7 = v6;
  v13 = MEMORY[0x1E69E6370];
  v14 = MEMORY[0x1E69E6390];
  v15 = MEMORY[0x1E69E6378];
  LOBYTE(v12) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_1DA4238F0;
  v10 = 0.0;
  if (a2)
  {
    v10 = 1.0;
  }

  *(v8 + 32) = v10;
  *a3 = v5;
  *(a3 + 8) = v7;
  result = sub_1DA3B3334(&v12, (a3 + 16));
  *(a3 + 64) = v9;
  return result;
}

double static SiriSuggestionsIntelligence.createNumericFeature(featureId:featureValue:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
  v7 = v6;
  v8 = MEMORY[0x1E69E6560];
  a3[5] = MEMORY[0x1E69E6530];
  a3[6] = v8;
  a3[7] = MEMORY[0x1E69E6538];
  a3[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DA4238F0;
  result = a2;
  *(v9 + 32) = a2;
  *a3 = v5;
  a3[1] = v7;
  a3[8] = v9;
  return result;
}

double static SiriSuggestionsIntelligence.createTimeIntervalFeature(featureId:featureValue:)@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
  v7 = v6;
  v8 = MEMORY[0x1E69E63E8];
  *(a2 + 40) = MEMORY[0x1E69E63B0];
  *(a2 + 48) = v8;
  *(a2 + 56) = MEMORY[0x1E69E63C0];
  *(a2 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_1DA4238F0;
  *(v9 + 32) = a3;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 64) = v9;
  return result;
}

void static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a4 + 16);
  if (v9)
  {
    v24 = a4;

    sub_1DA3B531C(&v24);
    v10 = sub_1DA3B3908(a2, a3, v24);
    v12 = v11;

    if (v12)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    sub_1DA3B3C98(a1, a2, a3, v9 + 1, v13, a5);
  }

  else
  {
    if (qword_1ECBAE838 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v14 = sub_1DA421A94();
    v15 = OUTLINED_FUNCTION_13_1(v14, static Logger.inferenceCategory);
    v16 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_7_1(v16))
    {
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_2();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
      v21 = sub_1DA3A5FE8(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DA39E000, v15, v16, "Can't convert %s to one hot encoding due to unbouded values, returning feature without vector", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    v22 = MEMORY[0x1E69E6190];
    a5[5] = MEMORY[0x1E69E6158];
    a5[6] = v22;
    a5[7] = MEMORY[0x1E69E6160];
    a5[2] = a2;
    a5[3] = a3;
    *a5 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
    a5[1] = v23;
    a5[8] = 0;
  }
}

uint64_t sub_1DA3B3768(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE700000000000000;
    v7 = 0x676E696E726F6DLL;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE600000000000000;
        v7 = 0x79616464696DLL;
        break;
      case 2:
        v7 = 0x6F6F6E7265746661;
        v6 = 0xE90000000000006ELL;
        break;
      case 3:
        v7 = 0x676E696E657665;
        break;
      default:
        break;
    }

    v8 = 0xE700000000000000;
    v9 = 0x676E696E726F6DLL;
    switch(a1)
    {
      case 1:
        v8 = 0xE600000000000000;
        v9 = 0x79616464696DLL;
        break;
      case 2:
        v9 = 0x6F6F6E7265746661;
        v8 = 0xE90000000000006ELL;
        break;
      case 3:
        v9 = 0x676E696E657665;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_1DA4223A4();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1DA3B3908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1DA4223A4() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1DA3B3994(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DA3B39D8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v5 = *(sub_1DA4216E4() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
    sub_1DA3B6158(&qword_1ECBAEE00);
    if (sub_1DA421B54())
    {
      break;
    }

    ++v3;
  }

  return v3;
}

void sub_1DA3B3AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_1();
  a23 = v29;
  a24 = v30;
  v34 = OUTLINED_FUNCTION_5_3(v31, v32, v33);
  if (v26 >= v27)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v35 = sub_1DA421A94();
      v36 = OUTLINED_FUNCTION_13_1(v35, static Logger.inferenceCategory);
      v37 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v37))
      {
        OUTLINED_FUNCTION_2_2();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v48 = swift_slowAlloc();
        a12 = v48;
        *v38 = 136315650;
        v39 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
        sub_1DA3A5FE8(v39, v40, &a12);

        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_12_0(&dword_1DA39E000, v41, v42, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector");
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C(v34);
  v34 = v47;
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v34 + 16) > v26)
  {
    OUTLINED_FUNCTION_6_2(v34 + 8 * v26);
LABEL_10:
    v43 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
    v44 = MEMORY[0x1E69E6560];
    v45 = MEMORY[0x1E69E6538];
    v24[5] = MEMORY[0x1E69E6530];
    v24[6] = v44;
    v24[1] = v46;
    v24[2] = v25;
    *v24 = v43;
    v24[7] = v45;
    v24[8] = v34;
    OUTLINED_FUNCTION_10_0();
    return;
  }

  __break(1u);
}

void sub_1DA3B3C98(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_1DA3B493C(a4, 0.0);
  if (a5 >= a4)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v13 = sub_1DA421A94();
      __swift_project_value_buffer(v13, static Logger.inferenceCategory);
      v14 = sub_1DA421A74();
      v15 = sub_1DA421F64();
      if (os_log_type_enabled(v14, v15))
      {
        v26 = v15;
        v16 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v27;
        *v16 = 136315650;
        v17 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
        v19 = a3;
        v20 = sub_1DA3A5FE8(v17, v18, &v28);

        *(v16 + 4) = v20;
        a3 = v19;
        *(v16 + 12) = 2048;
        *(v16 + 14) = a5;
        *(v16 + 22) = 2048;
        *(v16 + 24) = a4;
        _os_log_impl(&dword_1DA39E000, v14, v26, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v16, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1DA74E430](v27, -1, -1);
        MEMORY[0x1DA74E430](v16, -1, -1);
      }

      goto LABEL_10;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA3B5D1C(v12);
    v12 = v25;
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (a5 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_4:
  if (*(v12 + 16) <= a5)
  {
    __break(1u);
    return;
  }

  *(v12 + 8 * a5 + 32) = 0x3FF0000000000000;
LABEL_10:
  v21 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
  v22 = MEMORY[0x1E69E6190];
  a6[5] = MEMORY[0x1E69E6158];
  a6[6] = v22;
  v23 = MEMORY[0x1E69E6160];
  a6[2] = a2;
  a6[3] = a3;
  *a6 = v21;
  a6[1] = v24;
  a6[7] = v23;
  a6[8] = v12;
}

void sub_1DA3B3ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_1();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_1DA3B493C(v28, 0.0);
  if (v27 >= v29)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v39 = sub_1DA421A94();
      v40 = OUTLINED_FUNCTION_13_1(v39, static Logger.inferenceCategory);
      v41 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v41))
      {
        OUTLINED_FUNCTION_2_2();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v53 = v31;
        v52 = swift_slowAlloc();
        a12 = v52;
        *v42 = 136315650;
        v43 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v35);
        v45 = v35;
        v46 = sub_1DA3A5FE8(v43, v44, &a12);

        *(v42 + 4) = v46;
        v35 = v45;
        *(v42 + 12) = 2048;
        *(v42 + 14) = v27;
        *(v42 + 22) = 2048;
        *(v42 + 24) = v29;
        _os_log_impl(&dword_1DA39E000, v40, v41, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v42, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v52);
        v31 = v53;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C(v38);
  v38 = v51;
  if (v27 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v38 + 16) > v27)
  {
    OUTLINED_FUNCTION_6_2(v38 + 8 * v27);
LABEL_10:
    v47 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v35);
    v49 = v48;
    *(v37 + 40) = &type metadata for SiriSuggestionsIntelligence.SemanticLocation;
    *(v37 + 48) = sub_1DA3B62EC();
    v50 = sub_1DA3B6340();
    *(v37 + 8) = v49;
    *(v37 + 16) = v33;
    *(v37 + 24) = v31;
    *v37 = v47;
    *(v37 + 56) = v50;
    *(v37 + 64) = v38;
    OUTLINED_FUNCTION_10_0();
    return;
  }

  __break(1u);
}

void sub_1DA3B40E4(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1DA3B493C(a3, 0.0);
  if (a4 >= a3)
  {
    v33 = a5;
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v17 = sub_1DA421A94();
      v18 = OUTLINED_FUNCTION_13_1(v17, static Logger.inferenceCategory);
      v19 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v19))
      {
        OUTLINED_FUNCTION_2_2();
        v32 = a1;
        v20 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v31 = a7;
        v30 = swift_slowAlloc();
        v34 = v30;
        *v20 = 136315650;
        v21 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v32);
        v23 = a6;
        v24 = sub_1DA3A5FE8(v21, v22, &v34);

        *(v20 + 4) = v24;
        a6 = v23;
        *(v20 + 12) = 2048;
        *(v20 + 14) = a4;
        *(v20 + 22) = 2048;
        *(v20 + 24) = a3;
        _os_log_impl(&dword_1DA39E000, v18, v19, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v20, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        a7 = v31;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        a1 = v32;
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      a5 = v33;
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C(v16);
  v16 = v29;
  if (a4 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v16 + 16) > a4)
  {
    OUTLINED_FUNCTION_6_2(v16 + 8 * a4);
LABEL_10:
    v25 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
    v27 = v26;
    *(a8 + 40) = a5;
    *(a8 + 48) = a6();
    v28 = a7();
    *(a8 + 16) = a2;
    *a8 = v25;
    *(a8 + 8) = v27;
    *(a8 + 56) = v28;
    *(a8 + 64) = v16;
    return;
  }

  __break(1u);
}

void sub_1DA3B4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_1();
  a23 = v29;
  a24 = v30;
  v34 = OUTLINED_FUNCTION_5_3(v31, v32, v33);
  if (v26 >= v27)
  {
    if (qword_1ECBAE838 == -1)
    {
LABEL_7:
      v35 = sub_1DA421A94();
      v36 = OUTLINED_FUNCTION_13_1(v35, static Logger.inferenceCategory);
      v37 = sub_1DA421F64();
      if (OUTLINED_FUNCTION_7_1(v37))
      {
        OUTLINED_FUNCTION_2_2();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_2_2();
        v49 = swift_slowAlloc();
        a12 = v49;
        *v38 = 136315650;
        v39 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
        sub_1DA3A5FE8(v39, v40, &a12);

        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_12_0(&dword_1DA39E000, v41, v42, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector");
        __swift_destroy_boxed_opaque_existential_0(v49);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_2();
    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C(v34);
  v34 = v48;
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (*(v34 + 16) > v26)
  {
    OUTLINED_FUNCTION_6_2(v34 + 8 * v26);
LABEL_10:
    v43 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v28);
    v45 = v44;
    v46 = sub_1DA4216E4();
    v24[5] = v46;
    v24[6] = sub_1DA3B6158(&qword_1ECBAEDF0);
    v24[7] = sub_1DA3B6158(&qword_1ECBAEDF8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24 + 2);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v25, v46);
    *v24 = v43;
    v24[1] = v45;
    v24[8] = v34;
    OUTLINED_FUNCTION_10_0();
    return;
  }

  __break(1u);
}

void static SiriSuggestionsIntelligence.createOneHotFeature<A>(featureId:featureValue:oneHotLength:oneHotIndex:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = sub_1DA3B493C(a3, 0.0);
  if (a4 >= a3)
  {
    if (qword_1ECBAE838 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1DA3B5D1C(v16);
  v16 = v29;
  if (a4 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_0_2();
LABEL_7:
    v17 = sub_1DA421A94();
    v18 = OUTLINED_FUNCTION_13_1(v17, static Logger.inferenceCategory);
    v32 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_7_1(v32))
    {
      OUTLINED_FUNCTION_2_2();
      v33 = a1;
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_2();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v19 = 136315650;
      v20 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v33);
      log = v18;
      v22 = a7;
      v23 = a2;
      v24 = sub_1DA3A5FE8(v20, v21, &v34);

      *(v19 + 4) = v24;
      a2 = v23;
      a7 = v22;
      *(v19 + 12) = 2048;
      *(v19 + 14) = a4;
      *(v19 + 22) = 2048;
      *(v19 + 24) = a3;
      _os_log_impl(&dword_1DA39E000, log, v32, "Feature %s has one hot index %ld longer than possible values %ld, returning all zero vector", v19, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      a1 = v33;
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_4:
  if (*(v16 + 16) > a4)
  {
    OUTLINED_FUNCTION_6_2(v16 + 8 * a4);
LABEL_10:
    v25 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1);
    v27 = v26;
    a8[5] = a5;
    a8[6] = a6;
    a8[7] = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 2);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
    *a8 = v25;
    a8[1] = v27;
    a8[8] = v16;
    return;
  }

  __break(1u);
}

void static SiriSuggestionsIntelligence.createEnumFeature<A>(featureId:featureValue:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v20[1] = a6;
  v21 = a7;
  v24 = a4;
  v25 = a5;
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_3_1(AssociatedTypeWitness);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v20 - v15;
  OUTLINED_FUNCTION_11_0();
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v26 = sub_1DA421DB4();
  sub_1DA421DA4();
  swift_getWitnessTable();
  v23 = a2;
  sub_1DA421F24();
  if (v28)
  {
    v18 = sub_1DA421D94();
  }

  else
  {
    v18 = v27;
  }

  OUTLINED_FUNCTION_11_0();
  v19 = sub_1DA421F04();
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  static SiriSuggestionsIntelligence.createOneHotFeature<A>(featureId:featureValue:oneHotLength:oneHotIndex:)(v22, v23, v19, v18, a3, v24, v25, v21);
}

uint64_t sub_1DA3B493C(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1DA421D74();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1DA423EA0)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.Feature.featureName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriSuggestionsIntelligence.Feature.base64FeatureValue()()
{
  v2 = v0;
  v3 = sub_1DA420ED4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DA420EC4();
  v6 = *(v0 + 40);
  v7 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v8 = sub_1DA420EB4();
  if (!v1)
  {
    v10 = v8;
    v11 = v9;
    v2 = sub_1DA421004();
    v6 = v12;
    sub_1DA3B5D30(v10, v11);
  }

  v13 = v2;
  v14 = v6;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

_OWORD *SiriSuggestionsIntelligence.Feature.init(featureName:featureValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = sub_1DA3B3334(a3, (a4 + 16));
  *(a4 + 64) = 0;
  return result;
}

uint64_t SiriSuggestionsIntelligence.Feature.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDD8, &qword_1DA423EB0);
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3B5D88();
  sub_1DA422484();
  if (!v2)
  {
    LOBYTE(v16[0]) = 0;
    v9 = sub_1DA422274();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v17 = 1;
    sub_1DA421794();
    v12 = OUTLINED_FUNCTION_8_2();
    v13(v12);
    sub_1DA3B3334(v16, (a2 + 16));
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 64) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SiriSuggestionsIntelligence.Feature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDE0, &qword_1DA423EB8);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3B5D88();
  sub_1DA422494();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v22[0]) = 0;
  sub_1DA4222F4();
  if (v2)
  {
    return (*(v8 + 8))(v12, v5);
  }

  v23 = 1;
  v17 = v3[5];
  v18 = v3[7];
  v19 = __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
  v22[3] = v17;
  v22[4] = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
  sub_1DA4217A4();
  (*(v8 + 8))(v12, v5);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1DA3B5074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65727574616566 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665727574616566 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA3B514C(char a1)
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](a1 & 1);
  return sub_1DA422474();
}

uint64_t sub_1DA3B5194(char a1)
{
  if (a1)
  {
    return 0x5665727574616566;
  }

  else
  {
    return 0x4E65727574616566;
  }
}

uint64_t sub_1DA3B51EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3B5074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3B5220(uint64_t a1)
{
  v2 = sub_1DA3B5D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3B525C(uint64_t a1)
{
  v2 = sub_1DA3B5D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DA3B52C8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1DA3B52EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA3B531C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA3CCC48(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DA3B5388(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DA3B5388(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DA422344();
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
        v6 = sub_1DA421D74();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DA3B5544(v7, v8, a1, v4);
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
    return sub_1DA3B547C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DA3B547C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1DA4223A4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}