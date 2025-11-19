uint64_t sub_268C48C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C725565676170 && a2 == 0xE700000000000000;
  if (v4 || (sub_268C5AA50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000268C5BE30 == a2;
    if (v6 || (sub_268C5AA50() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6554726564616572 && a2 == 0xEA00000000007478;
      if (v7 || (sub_268C5AA50() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_268C5AA50();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_268C48E24(unsigned __int8 a1)
{
  sub_268C5AA70();
  MEMORY[0x26D629530](a1);
  return sub_268C5AA90();
}

unint64_t sub_268C48E78(char a1)
{
  result = 0x6C725565676170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6554726564616572;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C48F2C()
{
  v1 = *v0;
  sub_268C5AA70();
  MEMORY[0x26D629530](v1);
  return sub_268C5AA90();
}

uint64_t sub_268C48F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C48C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C48FC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C48DE4();
  *a1 = result;
  return result;
}

uint64_t sub_268C48FE8(uint64_t a1)
{
  v2 = sub_268C493D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C49024(uint64_t a1)
{
  v2 = sub_268C493D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MockSafariReaderData.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_268C5A200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MockSafariReaderData();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = v4;
  OUTLINED_FUNCTION_2(*(v4 + 24));
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_268C5AA50() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2(*(v6 + 28));
  if (v9 && v10 == v11)
  {
    return 1;
  }

  return sub_268C5AA50();
}

uint64_t type metadata accessor for MockSafariReaderData()
{
  result = qword_2802D3478;
  if (!qword_2802D3478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MockSafariReaderData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3448, &qword_268C5B3D0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C493D4();
  sub_268C5AAB0();
  v23[15] = 0;
  sub_268C5A220();
  sub_268C49804(&qword_2802D3458);
  OUTLINED_FUNCTION_5();
  sub_268C5AA30();
  if (!v2)
  {
    v14 = type metadata accessor for MockSafariReaderData();
    v15 = *(v3 + v14[5]);
    v23[14] = 1;
    OUTLINED_FUNCTION_5();
    sub_268C5AA20();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    v23[13] = 2;
    OUTLINED_FUNCTION_5();
    sub_268C5AA10();
    v19 = (v3 + v14[7]);
    v20 = *v19;
    v21 = v19[1];
    v23[12] = 3;
    OUTLINED_FUNCTION_5();
    sub_268C5AA10();
  }

  return (*(v8 + 8))(v12, v5);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_268C493D4()
{
  result = qword_2802D3450;
  if (!qword_2802D3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3450);
  }

  return result;
}

uint64_t MockSafariReaderData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_268C5A220();
  v5 = OUTLINED_FUNCTION_0(v4);
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3460, &qword_268C5B3D8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v36 = v12;
  v37 = v11;
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v15 = type metadata accessor for MockSafariReaderData();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C493D4();
  sub_268C5AAA0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v18;
  v21 = v35;
  v42 = 0;
  sub_268C49804(&unk_2802D3468);
  OUTLINED_FUNCTION_4();
  sub_268C5AA00();
  (*(v21 + 32))(v18, v38, v4);
  v41 = 1;
  OUTLINED_FUNCTION_4();
  v18[v15[5]] = sub_268C5A9F0() & 1;
  v40 = 2;
  OUTLINED_FUNCTION_4();
  v22 = sub_268C5A9E0();
  v23 = a1;
  v24 = (v20 + v15[6]);
  *v24 = v22;
  v24[1] = v25;
  v39 = 3;
  OUTLINED_FUNCTION_4();
  v26 = sub_268C5A9E0();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_1();
  v30(v29);
  v31 = (v20 + v15[7]);
  *v31 = v26;
  v31[1] = v28;
  sub_268C49848(v20, v34);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_268C498AC(v20);
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

uint64_t sub_268C49804(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268C5A220();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C49848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MockSafariReaderData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C498AC(uint64_t a1)
{
  v2 = type metadata accessor for MockSafariReaderData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C49950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C5A220();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_268C49A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268C5A220();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268C49B10()
{
  result = sub_268C5A220();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MockSafariReaderData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MockSafariReaderData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268C49CF4);
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

unint64_t sub_268C49D44()
{
  result = qword_2802D34E8;
  if (!qword_2802D34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D34E8);
  }

  return result;
}

unint64_t sub_268C49D9C()
{
  result = qword_2802D34F0;
  if (!qword_2802D34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D34F0);
  }

  return result;
}

unint64_t sub_268C49DF4()
{
  result = qword_2802D34F8;
  if (!qword_2802D34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D34F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_268C49EB0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  sub_268C509C0(a1, v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_entity);
  v12 = (v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_locale);
  *v12 = a2;
  v12[1] = a3;
  sub_268C50724(a4, v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker);
  v13 = v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_outputPublisher;
  v14 = *(a5 + 16);
  *v13 = *a5;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a5 + 32);
  sub_268C50724(a6, v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState);
  return v6;
}

void sub_268C49F58()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268C5A490();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_268C5A750();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_16(v11, qword_2802D4560);
  (*(v14 + 16))(v19);
  (*(v5 + 16))(v10, v1, v2);
  v20 = sub_268C5A740();
  v21 = sub_268C5A910();
  if (os_log_type_enabled(v20, v21))
  {
    v31 = v11;
    v22 = OUTLINED_FUNCTION_29();
    v30 = OUTLINED_FUNCTION_37();
    v32 = v30;
    *v22 = 136315138;
    sub_268C50920(&qword_2802D3A30, MEMORY[0x277D5C118]);
    v23 = sub_268C5AA40();
    v25 = v24;
    (*(v5 + 8))(v10, v2);
    v26 = sub_268C56F44(v23, v25, &v32);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_268C47000, v20, v21, "ReadThisFlow.on input: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    v27 = OUTLINED_FUNCTION_47();
    v29 = v31;
  }

  else
  {

    (*(v5 + 8))(v10, v2);
    v27 = OUTLINED_FUNCTION_47();
    v29 = v11;
  }

  v28(v27, v29);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_268C4A214()
{
  OUTLINED_FUNCTION_10();
  v1[25] = v2;
  v1[26] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A20, &qword_268C5B898);
  v1[27] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[28] = v4;
  v6 = *(v5 + 64);
  v1[29] = OUTLINED_FUNCTION_49();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A28, &qword_268C5B8A0) - 8) + 64);
  v1[30] = OUTLINED_FUNCTION_49();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39B0, &qword_268C5B848);
  v1[31] = v8;
  OUTLINED_FUNCTION_12(v8);
  v1[32] = v9;
  v11 = *(v10 + 64);
  v1[33] = OUTLINED_FUNCTION_49();
  v12 = sub_268C5A750();
  v1[34] = v12;
  OUTLINED_FUNCTION_12(v12);
  v1[35] = v13;
  v15 = *(v14 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_268C4A3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = v12[39];
  v14 = v12[34];
  v15 = v12[35];
  v16 = __swift_project_value_buffer(v14, qword_2802D4560);
  v12[40] = v16;
  v17 = *(v15 + 16);
  v12[41] = v17;
  v12[42] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v13, v16, v14);
  v18 = sub_268C5A740();
  v19 = sub_268C5A910();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_28();
    *v20 = 0;
    _os_log_impl(&dword_268C47000, v18, v19, "Entering ReadThisFlow execute", v20, 2u);
    OUTLINED_FUNCTION_18();
  }

  v21 = v12[39];
  v22 = v12[34];
  v23 = v12[35];
  v24 = v12[26];

  v25 = *(v23 + 8);
  v12[43] = v25;
  v25(v21, v22);
  sub_268C4C6D0();
  if ((v26 & 1) == 0)
  {
    v30 = v12 + 2;
    v17(v12[37], v16, v12[34]);
    v35 = sub_268C5A740();
    v36 = sub_268C5A910();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_28();
      *v37 = 0;
      _os_log_impl(&dword_268C47000, v35, v36, "Safari not frontmost app, not reading", v37, 2u);
      OUTLINED_FUNCTION_18();
    }

    v38 = v12[37];
    v39 = v12[34];
    v40 = v12[35];
    v42 = v12[25];
    v41 = v12[26];

    v25(v38, v39);
    sub_268C4B4D8(0, v12 + 2);
    v33 = 6;
    v34 = 5;
    goto LABEL_11;
  }

  v28 = v12[30];
  v27 = v12[31];
  v29 = v12[26];
  sub_268C4C18C();
  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    v30 = v12 + 7;
    v32 = v12[25];
    v31 = v12[26];
    sub_268C50968(v12[30], &qword_2802D3A28, &qword_268C5B8A0);
    sub_268C4B4D8(2, v12 + 7);
    v33 = 11;
    v34 = 10;
LABEL_11:
    v43 = v12[v33];
    __swift_project_boxed_opaque_existential_1(v30, v12[v34]);
    sub_268C5A3F0();
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_24();

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_35();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }

  v53 = v12[33];
  v54 = v12[30];
  v55 = v12[31];
  v56 = v12[29];
  v57 = *(v12[32] + 32);
  v58 = OUTLINED_FUNCTION_19();
  v59(v58);
  sub_268C5A8D0();
  v60 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v12[44] = v61;
  *v61 = v62;
  OUTLINED_FUNCTION_6(v61);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2822005A8](v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12);
}

uint64_t sub_268C4A714()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 352);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_268C4A810()
{
  v47 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  if (v2 == 255)
  {
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v21 = *(v0 + 248);
    v22 = *(v0 + 208);
    v23 = *(v0 + 200);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    sub_268C4B4D8(2, (v0 + 136));
    v24 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    sub_268C5A3F0();
    v25 = *(v20 + 8);
    v26 = OUTLINED_FUNCTION_11();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_11:
    OUTLINED_FUNCTION_24();

    OUTLINED_FUNCTION_9();

    return v41();
  }

  if (v2 == 5)
  {
    v3 = *(v0 + 336);
    (*(v0 + 328))(*(v0 + 304), *(v0 + 320), *(v0 + 272));
    v4 = v1;
    v5 = sub_268C5A740();
    v6 = sub_268C5A910();
    sub_268C5090C(v1, 5);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 344);
    v9 = *(v0 + 304);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    if (v7)
    {
      v45 = *(v0 + 304);
      v12 = OUTLINED_FUNCTION_29();
      v44 = v11;
      v13 = OUTLINED_FUNCTION_37();
      v46 = v13;
      *v12 = 136315138;
      v14 = [v4 description];
      v15 = sub_268C5A800();
      v43 = v8;
      v17 = v16;

      sub_268C5090C(v1, 5);
      v18 = sub_268C56F44(v15, v17, &v46);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_268C47000, v5, v6, "connection: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      v43(v45, v44);
    }

    else
    {

      v8(v9, v11);
    }

    v32 = *(v0 + 256);
    v31 = *(v0 + 264);
    v33 = *(v0 + 248);
    v35 = *(v0 + 224);
    v34 = *(v0 + 232);
    v36 = *(v0 + 208);
    v37 = *(v0 + 216);
    v38 = *(v0 + 200);
    sub_268C4AE38();
    sub_268C4B1BC();
    sub_268C5A400();
    sub_268C5090C(v1, 5);
    (*(v35 + 8))(v34, v37);
    v39 = OUTLINED_FUNCTION_47();
    v40(v39, v33);
    goto LABEL_11;
  }

  sub_268C5090C(*(v0 + 176), v2);
  v28 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 352) = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822005A8]();
}

uint64_t sub_268C4AB6C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[36];
  v5 = v0[34];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v6 = v0[24];
  v2(v4, v3, v5);
  MEMORY[0x26D6298C0](v6);
  v7 = sub_268C5A740();
  v8 = sub_268C5A910();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_29();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x26D6298C0](v6);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_268C47000, v7, v8, "Error: %@", v9, 0xCu);
    sub_268C50968(v10, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
  }

  v12 = v0[43];
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[34];
  v16 = v0[32];
  v22 = v0[31];
  v23 = v0[33];
  v18 = v0[25];
  v17 = v0[26];

  v12(v13, v15);
  MEMORY[0x26D6298C0](v6);
  sub_268C4B1BC();

  sub_268C4B4D8(0, v0 + 12);
  v19 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_268C5A3F0();

  (*(v16 + 8))(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_9();

  return v20();
}

uint64_t sub_268C4ADA8()
{
  type metadata accessor for ReadThisFlow(0);
  sub_268C50920(&qword_2802D3A18, type metadata accessor for ReadThisFlow);
  return sub_268C5A2B0();
}

void sub_268C4AE38()
{
  OUTLINED_FUNCTION_26();
  v34 = v0;
  v2 = sub_268C5A750();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_32();
  v8 = sub_268C5A250();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  v14 = [objc_allocWithZone(MEMORY[0x277D4C490]) init];
  sub_268C5A240();
  v15 = sub_268C5A230();
  v17 = v16;
  (*(v11 + 8))(v0, v8);
  sub_268C507DC(v15, v17, v14, &selRef_setCardSectionId_);
  v18 = sub_268C5A7F0();
  [v14 setPlaybackBundleIdentifier:v18];

  v19 = [objc_allocWithZone(MEMORY[0x277D47200]) init];
  sub_268C508CC(0, &qword_2802D3A00, 0x277D47200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A08, &qword_268C5B890);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_268C5B5C0;
  *(v20 + 32) = v14;
  v21 = sub_268C5A900();

  v22 = objc_allocWithZone(MEMORY[0x277D479E8]);
  v23 = v21;
  v24 = [v22 init];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_268C5B5C0;
  *(v25 + 32) = v23;
  sub_268C50848(v25, v24);
  v26 = *(v34 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker + 32);
  __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker), *(v34 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker + 24));
  v27 = sub_268C5A460();
  if (qword_2802D3430 != -1)
  {
    v27 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_8(v27, qword_2802D4560);
  (*(v5 + 16))(v1);
  v28 = sub_268C5A740();
  v29 = sub_268C5A910();
  if (OUTLINED_FUNCTION_38(v29))
  {
    v30 = OUTLINED_FUNCTION_28();
    *v30 = 0;
    _os_log_impl(&dword_268C47000, v28, v29, "Presented UI and returning from ReadThisFlow", v30, 2u);
    OUTLINED_FUNCTION_18();
    v31 = v14;
  }

  else
  {
    v31 = v28;
    v28 = v23;
    v23 = v14;
  }

  v32 = OUTLINED_FUNCTION_47();
  v33(v32, v2);
  OUTLINED_FUNCTION_22();
}

void sub_268C4B1BC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39F0, &qword_268C5B880) - 8) + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32();
  v5 = sub_268C5A3C0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v13 = (v12 + 104);
  sub_268C5A310();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_268C5A360();
  if (v2)
  {
    (*v13)(v11, *MEMORY[0x277D5BC00], v5);
    v14 = *MEMORY[0x277D5B8D0];
    v15 = sub_268C5A330();
    OUTLINED_FUNCTION_4_0(v15);
    (*(v16 + 104))(v0, v14, v15);
    v17 = OUTLINED_FUNCTION_30();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
    *(swift_allocObject() + 16) = v2;
    MEMORY[0x26D6298C0](v2);
  }

  else
  {
    (*v13)(v11, *MEMORY[0x277D5BC10], v5);
    v20 = *MEMORY[0x277D5B950];
    v21 = sub_268C5A330();
    OUTLINED_FUNCTION_4_0(v21);
    (*(v22 + 104))(v0, v20, v21);
    v23 = OUTLINED_FUNCTION_30();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  }

  OUTLINED_FUNCTION_21();
  sub_268C5A350();
  sub_268C5A320();

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_268C4B480(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  MEMORY[0x26D6298C0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39F8, &qword_268C5B888);
  sub_268C5A810();
  return sub_268C5A340();
}

uint64_t sub_268C4B4D8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_268C505B8(v2 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_outputPublisher, &v10, &qword_2802D39D8, &qword_268C5B980);
  if (v11)
  {
    sub_268C50724(&v10, v12);
  }

  else
  {
    sub_268C50968(&v10, &qword_2802D39D8, &qword_268C5B980);
    sub_268C5A480();
  }

  sub_268C50618(v12, &v10);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = sub_268C5A290();
  OUTLINED_FUNCTION_50(v6);

  v7 = sub_268C5A280();
  v8 = MEMORY[0x277D5B3F0];
  a2[3] = v6;
  a2[4] = v8;
  *a2 = v7;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_268C4B5F4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 264) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = a3;
  v4 = sub_268C5A750();
  *(v3 + 144) = v4;
  v5 = *(v4 - 8);
  *(v3 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v8 = *(*(sub_268C5A6F0() - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v9 = sub_268C5A420();
  *(v3 + 192) = v9;
  v10 = *(v9 - 8);
  *(v3 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268C4B790, 0, 0);
}

uint64_t sub_268C4B790()
{
  OUTLINED_FUNCTION_45();
  v36 = v0;
  if (sub_268C547F4(*(v0 + 264)) == 0xD000000000000015 && 0x8000000268C5BFF0 == v1)
  {
  }

  else
  {
    v3 = sub_268C5AA50();

    if ((v3 & 1) == 0)
    {
      v5 = *(v0 + 184);
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      sub_268C5A6E0();
      ThisCATProvider = type metadata accessor for ReadThisCATProvider();
      OUTLINED_FUNCTION_50(ThisCATProvider);
      *(v0 + 224) = sub_268C5436C(v5, v34);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 232) = v7;
      *v7 = v8;
      v7[1] = sub_268C4B9CC;
      v9 = *(v0 + 216);
      v10 = *(v0 + 264);
      v11 = MEMORY[0x277D84F90];

      return sub_268C5455C(v9, v10, v11);
    }
  }

  if (qword_2802D3430 != -1)
  {
    v4 = OUTLINED_FUNCTION_0_0();
  }

  v13 = *(v0 + 168);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  OUTLINED_FUNCTION_8(v4, qword_2802D4560);
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_19();
  v18(v17);
  v19 = sub_268C5A740();
  v20 = sub_268C5A930();
  if (OUTLINED_FUNCTION_38(v20))
  {
    v21 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_44(v21);
    OUTLINED_FUNCTION_25(&dword_268C47000, v22, v23, "Defaulting to generic error template response");
    OUTLINED_FUNCTION_18();
  }

  v24 = *(v0 + 168);
  v25 = *(v0 + 144);
  v26 = *(v0 + 152);

  v27 = *(v26 + 8);
  v28 = OUTLINED_FUNCTION_11();
  v29(v28);
  v30 = *(MEMORY[0x277D5BCC8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 248) = v31;
  *v31 = v32;
  v33 = OUTLINED_FUNCTION_7(v31);

  return MEMORY[0x2821BAEC8](v33);
}

uint64_t sub_268C4B9CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  v4 = *(v2 + 232);
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v7 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_268C4BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v13 = *(v12 + 216);
  v14 = *(v12 + 192);
  v15 = *(v12 + 200);
  v16 = *(v12 + 176);
  v17 = *(v12 + 128);
  OUTLINED_FUNCTION_36(*(v12 + 136));
  sub_268C5A410();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = sub_268C5A4E0();
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0;
  *(v12 + 56) = 0u;
  v23 = MEMORY[0x277D5C1D8];
  v17[3] = v22;
  v17[4] = v23;
  __swift_allocate_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_23();
  sub_268C50968(v12 + 56, &unk_2802D3A40, &qword_268C5B878);
  sub_268C50968(v16, &unk_2802D39E0, &qword_268C5B870);
  v24 = *(v15 + 8);
  v25 = OUTLINED_FUNCTION_11();
  v26(v25);
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v12 + 56, a10, a11, a12);
}

uint64_t sub_268C4BC18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v3 = *(v2 + 248);
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_268C4BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v14 = *(v12 + 200);
  v13 = *(v12 + 208);
  v15 = *(v12 + 192);
  v16 = *(v12 + 176);
  v17 = *(v12 + 128);
  OUTLINED_FUNCTION_36(*(v12 + 136));
  sub_268C5A410();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = sub_268C5A4E0();
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v12 + 16) = 0u;
  v23 = MEMORY[0x277D5C1D8];
  v17[3] = v22;
  v17[4] = v23;
  __swift_allocate_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_23();
  sub_268C50968(v12 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C50968(v16, &unk_2802D39E0, &qword_268C5B870);
  v24 = *(v14 + 8);
  v25 = OUTLINED_FUNCTION_11();
  v26(v25);
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v12 + 16, a10, a11, a12);
}

uint64_t sub_268C4BE5C()
{
  v51 = v0;
  v1 = v0[28];

  v3 = 0x2802D3000uLL;
  if (qword_2802D3430 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0();
  }

  v4 = v0[30];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  OUTLINED_FUNCTION_8(v2, qword_2802D4560);
  v8 = *(v6 + 16);
  v9 = OUTLINED_FUNCTION_19();
  v10(v9);
  MEMORY[0x26D6298C0](v4);
  v11 = sub_268C5A740();
  v12 = sub_268C5A930();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[30];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[18];
  if (v13)
  {
    v18 = OUTLINED_FUNCTION_29();
    v19 = OUTLINED_FUNCTION_37();
    v50 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v49 = v15;
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[14];
    v23 = sub_268C5AA60();
    v25 = sub_268C56F44(v23, v24, &v50);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_268C47000, v11, v12, "Could not get CAT template: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_18();
    v3 = 0x2802D3000;
    OUTLINED_FUNCTION_18();

    v26 = (*(v16 + 8))(v49, v17);
  }

  else
  {

    v26 = (*(v16 + 8))(v15, v17);
  }

  if (*(v3 + 1072) != -1)
  {
    v26 = OUTLINED_FUNCTION_0_0();
  }

  v27 = v0[21];
  v28 = v0[18];
  v29 = v0[19];
  OUTLINED_FUNCTION_8(v26, qword_2802D4560);
  v30 = *(v29 + 16);
  v31 = OUTLINED_FUNCTION_19();
  v32(v31);
  v33 = sub_268C5A740();
  v34 = sub_268C5A930();
  if (OUTLINED_FUNCTION_38(v34))
  {
    v35 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_44(v35);
    OUTLINED_FUNCTION_25(&dword_268C47000, v36, v37, "Defaulting to generic error template response");
    OUTLINED_FUNCTION_18();
  }

  v38 = v0[21];
  v39 = v0[18];
  v40 = v0[19];

  v41 = *(v40 + 8);
  v42 = OUTLINED_FUNCTION_11();
  v43(v42);
  v44 = *(MEMORY[0x277D5BCC8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[31] = v45;
  *v45 = v46;
  v47 = OUTLINED_FUNCTION_7(v45);

  return MEMORY[0x2821BAEC8](v47);
}

uint64_t sub_268C4C0F8()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 256);

  return v1();
}

void sub_268C4C18C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268C5A270();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_268C5A250();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  sub_268C508CC(0, &qword_2802D39A8, 0x277D23BA0);
  v20 = sub_268C4C4E8();
  if (v20)
  {
    v21 = v20;
    v22 = objc_allocWithZone(MEMORY[0x277D23720]);
    v39 = sub_268C4FA08(0x6F546E657473694CLL, 0xEC00000065676150, 0, 0, 0, 0, 0);
    v23 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
    sub_268C507DC(1769105747, 0xE400000000000000, v23, &selRef_setClientLabel_);
    [v23 setSource_];
    sub_268C5A240();
    v24 = sub_268C5A230();
    v38 = v2;
    v26 = v25;
    (*(v14 + 8))(v19, v11);
    sub_268C507DC(v24, v26, v23, &selRef_setClientLabel_);
    sub_268C508CC(0, &qword_2802D39B8, 0x277D23C08);
    v27 = *(v1 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState), *(v1 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState + 24));
    sub_268C5A390();
    sub_268C5A260();
    (*(v5 + 8))(v10, v38);
    v28 = sub_268C4C55C();
    [v23 setEnvironment_];

    sub_268C4C5D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39B0, &qword_268C5B848);
    v29 = OUTLINED_FUNCTION_30();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    OUTLINED_FUNCTION_22();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39B0, &qword_268C5B848);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

id sub_268C4C4E8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268C5A7F0();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

id sub_268C4C55C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268C5A7F0();

  v2 = [v0 initWithLocaleIdentifier_];

  return v2;
}

uint64_t sub_268C4C5D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39C0, &unk_268C5B850);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_33();
  (*(v5 + 104))(v0, *MEMORY[0x277D858A0]);
  return sub_268C5A8F0();
}

void sub_268C4C6D0()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268C5A7C0();
  v2 = OUTLINED_FUNCTION_0(v1);
  v118 = v3;
  v119 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v117 = v7 - v6;
  OUTLINED_FUNCTION_41();
  v8 = sub_268C5A780();
  v9 = OUTLINED_FUNCTION_0(v8);
  v123 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v121 = v14 - v13;
  OUTLINED_FUNCTION_41();
  v15 = sub_268C5A7E0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v124 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v122 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v125 = &v112 - v23;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3998, &qword_268C5B838) - 8) + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v25);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39A0, &qword_268C5B840);
  v29 = OUTLINED_FUNCTION_4_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  v34 = (v32 - v33);
  MEMORY[0x28223BE20](v35);
  v126 = &v112 - v36;
  OUTLINED_FUNCTION_41();
  v37 = sub_268C5A750();
  v38 = OUTLINED_FUNCTION_0(v37);
  v127 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  v44 = v42 - v43;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v112 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v112 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v120 = &v112 - v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_34();
  if (sub_268C4D270())
  {
    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v54 = v37;
    OUTLINED_FUNCTION_16(v37, qword_2802D4560);
    v55 = v127;
    v56 = OUTLINED_FUNCTION_31(v127);
    v57(v56);
    v58 = sub_268C5A740();
    v59 = sub_268C5A920();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_28();
      *v60 = 0;
      _os_log_impl(&dword_268C47000, v58, v59, "checkForSafariOnScreen device is locked or on lock screen, skipping check and returning false", v60, 2u);
      OUTLINED_FUNCTION_18();
    }

    (*(v55 + 8))(v0, v54);
  }

  else
  {
    v61 = sub_268C5A5D0();
    OUTLINED_FUNCTION_50(v61);
    v116 = sub_268C5A5C0();
    v62 = MEMORY[0x26D629050]();
    if (v62)
    {
      v112 = v8;
      v113 = v15;
      v63 = v62;
      sub_268C5A720();
      v64 = sub_268C5A710();
      v65 = sub_268C5A7A0();
      OUTLINED_FUNCTION_50(v65);

      v114 = v63;
      OUTLINED_FUNCTION_17();
      sub_268C5A790();
      sub_268C5A7D0();
      OUTLINED_FUNCTION_42();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
      v70 = v126;
      v115 = v64;
      sub_268C5A700();

      sub_268C50968(v27, &qword_2802D3998, &qword_268C5B838);
      sub_268C505B8(v70, v34, &qword_2802D39A0, &qword_268C5B840);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = *v34;
        if (qword_2802D3430 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v72 = v37;
        OUTLINED_FUNCTION_16(v37, qword_2802D4560);
        v73 = v127;
        (*(v127 + 16))(v48);
        MEMORY[0x26D6298C0](v71);
        v74 = sub_268C5A740();
        v75 = sub_268C5A930();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = OUTLINED_FUNCTION_29();
          v77 = OUTLINED_FUNCTION_37();
          v128 = v71;
          v129 = v77;
          *v76 = 136315138;
          MEMORY[0x26D6298C0](v71);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3970, &qword_268C5B670);
          OUTLINED_FUNCTION_43();
          v78 = sub_268C5A810();
          v80 = sub_268C56F44(v78, v79, &v129);

          *(v76 + 4) = v80;
          _os_log_impl(&dword_268C47000, v74, v75, "checkForSafariOnScreen | Received a failure: %s -> nil", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v77);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_18();
        }

        (*(v73 + 8))(v48, v72);
        sub_268C50968(v126, &qword_2802D39A0, &qword_268C5B840);
      }

      else
      {
        v87 = v124;
        v86 = v125;
        v88 = v113;
        (*(v124 + 32))(v125, v34, v113);
        v89 = v122;
        (*(v87 + 16))(v122, v86, v88);
        if ((*(v87 + 88))(v89, v88) == *MEMORY[0x277D5FEC0])
        {
          (*(v87 + 96))(v89, v88);
          v90 = v121;
          (*(v123 + 32))(v121, v89, v112);
          v91 = v127;
          if (qword_2802D3420 != -1)
          {
            swift_once();
          }

          v92 = qword_2802D4550;
          v93 = v117;
          sub_268C5A770();
          v94 = sub_268C5A7B0();
          v96 = v95;
          (*(v118 + 8))(v93, v119);
          v97 = sub_268C54A10(v94, v96, v92);

          v98 = v120;
          if (qword_2802D3430 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_16(v37, qword_2802D4560);
          (*(v91 + 16))(v98);
          v99 = sub_268C5A740();
          v100 = sub_268C5A920();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = OUTLINED_FUNCTION_29();
            v102 = OUTLINED_FUNCTION_37();
            v129 = v102;
            *v101 = 136315138;
            if (v97)
            {
              v103 = 0x686374616DLL;
            }

            else
            {
              v103 = 0x686374616D206F6ELL;
            }

            if (v97)
            {
              v104 = 0xE500000000000000;
            }

            else
            {
              v104 = 0xE800000000000000;
            }

            v105 = v87;
            v106 = sub_268C56F44(v103, v104, &v129);

            *(v101 + 4) = v106;
            _os_log_impl(&dword_268C47000, v99, v100, "checkForSafariOnScreen %s found for SiriReaderFlowProvider bundles", v101, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v102);
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_18();

            (*(v91 + 8))(v120, v37);
            (*(v123 + 8))(v121, v112);
            (*(v105 + 8))(v125, v113);
          }

          else
          {

            (*(v91 + 8))(v98, v37);
            (*(v123 + 8))(v90, v112);
            (*(v87 + 8))(v125, v88);
          }

          sub_268C50968(v126, &qword_2802D39A0, &qword_268C5B840);
        }

        else
        {
          v107 = v127;
          if (qword_2802D3430 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_16(v37, qword_2802D4560);
          (*(v107 + 16))(v51);
          v108 = sub_268C5A740();
          v109 = sub_268C5A920();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_44(v110);
            _os_log_impl(&dword_268C47000, v108, v109, "checkForSafariOnScreen no candidate found", v64, 2u);
            OUTLINED_FUNCTION_18();
          }

          (*(v107 + 8))(v51, v37);
          v111 = *(v87 + 8);
          v111(v125, v88);
          sub_268C50968(v126, &qword_2802D39A0, &qword_268C5B840);
          v111(v89, v88);
        }
      }
    }

    else
    {
      if (qword_2802D3430 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v81 = v37;
      OUTLINED_FUNCTION_16(v37, qword_2802D4560);
      v82 = v127;
      (*(v127 + 16))(v44);
      v83 = sub_268C5A740();
      v84 = sub_268C5A920();
      if (OUTLINED_FUNCTION_38(v84))
      {
        v85 = OUTLINED_FUNCTION_28();
        *v85 = 0;
        _os_log_impl(&dword_268C47000, v83, v84, "checkForSafariOnScreen UsoEntityBuilder_common_App | unable to convert entity builder to entity", v85, 2u);
        OUTLINED_FUNCTION_18();
      }

      else
      {
      }

      (*(v82 + 8))(v44, v81);
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_268C4D270()
{
  v0 = sub_268C5A450();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  sub_268C5A4B0();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_268C5A440();
  v9 = sub_268C5A3A0();
  (*(v3 + 8))(v8, v0);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_268C5A4B0();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_11();
  LOBYTE(v0) = sub_268C5A380();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v0 & 1 | ((v9 & 1) == 0);
}

uint64_t sub_268C4D398()
{
  sub_268C50968(v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_entity, &qword_2802D3A38, &qword_268C5B8A8);
  v1 = *(v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_locale + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker));
  sub_268C50968(v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_outputPublisher, &qword_2802D39D8, &qword_268C5B980);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState));
  return v0;
}

uint64_t sub_268C4D424()
{
  sub_268C4D398();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_268C4D4A4()
{
  sub_268C4D554();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_268C4D554()
{
  if (!qword_2802D38D8)
  {
    sub_268C5A7C0();
    v0 = sub_268C5A970();
    if (!v1)
    {
      atomic_store(v0, &qword_2802D38D8);
    }
  }
}

uint64_t sub_268C4D5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268C4D678;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268C4D678()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_268C4D788()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268C4D824;

  return sub_268C4A214();
}

uint64_t sub_268C4D824()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return v5();
}

uint64_t sub_268C4D904(uint64_t a1, uint64_t a2)
{
  ThisFlow = type metadata accessor for ReadThisFlow(0);

  return MEMORY[0x2821BA658](ThisFlow, a2);
}

uint64_t sub_268C4D944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-1] - v10;
  (*(v12 + 16))(&v19[-1] - v10, a1, v8);
  sub_268C5A370();
  v13 = objc_allocWithZone(type metadata accessor for ReadThisAppIntentConnectionDelegate(0));
  v14 = sub_268C4DDFC(v11, v19);
  v15 = [a2 executorForAction:a3 options:a4 delegate:v14];
  [v15 perform];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  return sub_268C5A890();
}

uint64_t sub_268C4DAC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268C5A750();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v38[-v10];
  if (qword_2802D3430 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_2802D4560);
  v13 = v5[2];
  v13(v11, v12, v4);
  v14 = a3;
  v15 = sub_268C5A740();
  v16 = sub_268C5A920();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v5;
    v18 = v17;
    v40 = v17;
    v41 = swift_slowAlloc();
    v44 = v41;
    *v18 = 136315138;
    v19 = v14;
    v20 = [v19 description];
    v42 = v9;
    v21 = v20;
    v22 = v13;
    v23 = v12;
    v24 = sub_268C5A800();
    v39 = v16;
    v26 = v25;

    v27 = v24;
    v12 = v23;
    v13 = v22;
    v28 = sub_268C56F44(v27, v26, &v44);

    v29 = v40;
    *(v40 + 4) = v28;
    v9 = v42;
    _os_log_impl(&dword_268C47000, v15, v39, "Stopping executor %s", v29, 0xCu);
    v30 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D6299D0](v30, -1, -1);
    v5 = v43;
    MEMORY[0x26D6299D0](v29, -1, -1);
  }

  v31 = v5[1];
  v31(v11, v4);
  v13(v9, v12, v4);
  v32 = sub_268C5A740();
  v33 = sub_268C5A920();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v9;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_268C47000, v32, v33, "AsyncStream terminated", v35, 2u);
    v36 = v35;
    v9 = v34;
    MEMORY[0x26D6299D0](v36, -1, -1);
  }

  return (v31)(v9, v4);
}

id sub_268C4DDFC(uint64_t a1, uint64_t *a2)
{
  sub_268C50618(a2, &v2[OBJC_IVAR____TtC17SiriReaderIntents35ReadThisAppIntentConnectionDelegate_aceService]);
  v5 = OBJC_IVAR____TtC17SiriReaderIntents35ReadThisAppIntentConnectionDelegate_continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ReadThisAppIntentConnectionDelegate(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v6);
  return v8;
}

void sub_268C4DF8C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  OUTLINED_FUNCTION_0(v6);
  v25 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_33();
  v11 = sub_268C5A750();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_16(v11, qword_2802D4560);
  v17 = OUTLINED_FUNCTION_31(v14);
  v18(v17);
  v19 = v5;
  v20 = sub_268C5A740();
  v21 = sub_268C5A920();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_29();
    v22 = OUTLINED_FUNCTION_39();
    *v3 = 138412290;
    *(v3 + 4) = v19;
    *v22 = v19;
    v23 = v19;
    _os_log_impl(&dword_268C47000, v20, v21, v3, v3, 0xCu);
    sub_268C50968(v22, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
  }

  (*(v14 + 8))(v0, v11);
  v24 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  OUTLINED_FUNCTION_43();
  sub_268C5A8A0();
  (*(v25 + 8))(v1, v6);
  OUTLINED_FUNCTION_22();
}

void sub_268C4E2FC()
{
  OUTLINED_FUNCTION_26();
  v42 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v40 = v5;
  v41 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  v39 = &v37 - v9;
  OUTLINED_FUNCTION_41();
  v10 = sub_268C5A750();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_34();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = __swift_project_value_buffer(v10, qword_2802D4560);
  v38 = *(v13 + 16);
  v38(v0, v20, v10);
  v21 = v2;
  v22 = sub_268C5A740();
  v23 = sub_268C5A920();

  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_29();
    v37 = v18;
    v24 = OUTLINED_FUNCTION_39();
    *v18 = 138412290;
    *(v18 + 4) = v21;
    *v24 = v21;
    v25 = v21;
    _os_log_impl(&dword_268C47000, v22, v23, "ReadThisAppIntentConnectionDelegate got LNNeedsValueRequest: %@", v18, 0xCu);
    sub_268C50968(v24, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    v18 = v37;
    OUTLINED_FUNCTION_18();
  }

  v26 = *(v13 + 8);
  v26(v0, v10);
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v38(v18, v20, v10);
    v29 = v21;
    v30 = sub_268C5A740();
    v31 = sub_268C5A940();
    if (OUTLINED_FUNCTION_38(v31))
    {
      v32 = OUTLINED_FUNCTION_28();
      *v32 = 0;
      _os_log_impl(&dword_268C47000, v30, v31, "ReadThisAppIntentConnectionDelegate#executor(_:needsValueWith:) got called erronously with an LNSuccessResult", v32, 2u);
      OUTLINED_FUNCTION_18();
    }

    v26(v18, v10);
    v43 = v28;
    v44 = 5;
    v33 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
    v34 = v39;
    sub_268C5A8A0();
    (*(v40 + 8))(v34, v41);
    v43 = 0;
    sub_268C5A8B0();
  }

  else
  {
    v43 = v21;
    v44 = 0;
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
    OUTLINED_FUNCTION_43();
    v36 = v39;
    sub_268C5A8A0();
    (*(v40 + 8))(v36, v41);
  }

  OUTLINED_FUNCTION_22();
}

void sub_268C4E740()
{
  OUTLINED_FUNCTION_26();
  v64 = v2;
  v65 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  OUTLINED_FUNCTION_0(v5);
  v63 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  OUTLINED_FUNCTION_0(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_32();
  v18 = sub_268C5A750();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_34();
  if (v4)
  {
    v29 = MEMORY[0x26D6298C0](v4);
    if (qword_2802D3430 != -1)
    {
      v29 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_8(v29, qword_2802D4560);
    v30 = v21;
    v31 = *(v21 + 16);
    v32 = OUTLINED_FUNCTION_19();
    v33(v32);
    MEMORY[0x26D6298C0](v4);
    v34 = sub_268C5A740();
    v35 = sub_268C5A920();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_29();
      v37 = OUTLINED_FUNCTION_37();
      v66 = v4;
      v67 = v37;
      *v36 = 136315138;
      MEMORY[0x26D6298C0](v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3970, &qword_268C5B670);
      v38 = sub_268C5A810();
      v62 = v18;
      v40 = sub_268C56F44(v38, v39, &v67);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_268C47000, v34, v35, "ReadThisAppIntentConnectionDelegate finished with error: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      (*(v30 + 8))(v0, v62);
    }

    else
    {

      (*(v30 + 8))(v0, v18);
    }

    v67 = v4;
    MEMORY[0x26D6298C0](v4);
    sub_268C5A8B0();

    goto LABEL_15;
  }

  v60 = v1;
  v61 = v14;
  v57 = v12;
  v58 = v11;
  v41 = v64;
  v59 = v5;
  if (qword_2802D3430 != -1)
  {
    v28 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_8(v28, qword_2802D4560);
  v42 = v21;
  (*(v21 + 16))(v26);
  v43 = v41;
  v44 = v41;
  v45 = sub_268C5A740();
  v46 = sub_268C5A920();

  v47 = os_log_type_enabled(v45, v46);
  v48 = v60;
  v49 = v61;
  if (v47)
  {
    v62 = v18;
    OUTLINED_FUNCTION_29();
    v50 = OUTLINED_FUNCTION_39();
    *v18 = 138412290;
    if (!v41)
    {
      goto LABEL_17;
    }

    v51 = v50;
    *(v18 + 4) = v44;
    *v50 = v43;
    v52 = v44;
    _os_log_impl(&dword_268C47000, v45, v46, "ReadThisAppIntentConnectionDelegate finished with result: %@", v18, 0xCu);
    sub_268C50968(v51, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
    v18 = v62;
  }

  (*(v42 + 8))(v26, v18);
  v53 = v63;
  v54 = v58;
  v55 = v59;
  (*(v63 + 16))(v58, v65 + OBJC_IVAR____TtC17SiriReaderIntents35ReadThisAppIntentConnectionDelegate_continuation, v59);
  if (v43)
  {
    v67 = v43;
    v68 = 5;
    v56 = v44;
    sub_268C5A8A0();
    (*(v53 + 8))(v54, v55);
    (*(v49 + 8))(v48, v57);
    v67 = 0;
    sub_268C5A8B0();
LABEL_15:
    OUTLINED_FUNCTION_22();
    return;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_268C4ECC4()
{
  OUTLINED_FUNCTION_10();
  v1 = sub_268C5A750();
  v0[2] = v1;
  OUTLINED_FUNCTION_12(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_268C4ED68()
{
  OUTLINED_FUNCTION_27();
  if (qword_2802D3430 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_0();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  OUTLINED_FUNCTION_8(v1, qword_2802D4560);
  v5 = *(v3 + 16);
  v6 = OUTLINED_FUNCTION_19();
  v7(v6);
  v8 = sub_268C5A740();
  v9 = sub_268C5A920();
  if (OUTLINED_FUNCTION_38(v9))
  {
    v10 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_44(v10);
    OUTLINED_FUNCTION_25(&dword_268C47000, v11, v12, "ReadThisAppIntentConnectionDelegate executorEnvironmentForViewSnippet");
    OUTLINED_FUNCTION_18();
  }

  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];

  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_11();
  v18(v17);

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_268C4EEFC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_268C4EFB4;

  return sub_268C4ECC4();
}

uint64_t sub_268C4EFB4()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  OUTLINED_FUNCTION_9();

  return v10();
}

uint64_t sub_268C4F104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3990, &qword_268C5B7F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_268C5A880();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_268C5B808;
  v10[5] = v9;
  sub_268C4FD20(0, 0, v7, &unk_268C5B818, v10);
}

uint64_t sub_268C4F214()
{
  v1 = sub_268C5A750();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  if (qword_2802D3430 != -1)
  {
    v7 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_8(v7, qword_2802D4560);
  v8 = *(v4 + 16);
  v9 = OUTLINED_FUNCTION_19();
  v10(v9);
  v11 = sub_268C5A740();
  v12 = sub_268C5A920();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_28();
    *v13 = 0;
    _os_log_impl(&dword_268C47000, v11, v12, "ReadThisAppIntentConnectionDelegate shouldRunShowOutputAction return false", v13, 2u);
    OUTLINED_FUNCTION_18();
  }

  (*(v4 + 8))(v0, v1);
  return 0;
}

void sub_268C4F3B8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_33();
  v10 = sub_268C5A750();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_16(v10, qword_2802D4560);
  v16 = OUTLINED_FUNCTION_31(v13);
  v17(v16);
  v18 = sub_268C5A740();
  v19 = sub_268C5A920();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_28();
    *v20 = 0;
    _os_log_impl(&dword_268C47000, v18, v19, "ReadThisAppIntentConnectionDelegate needsContinueInAppWith request", v20, 2u);
    OUTLINED_FUNCTION_18();
  }

  (*(v13 + 8))(v0, v10);
  v21 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  OUTLINED_FUNCTION_43();
  sub_268C5A8A0();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_22();
}

id sub_268C4F6A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadThisAppIntentConnectionDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268C4F784(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268C4F7BC()
{
  sub_268C4F858();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_268C4F858()
{
  if (!qword_2802D3968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D3970, &qword_268C5B670);
    v0 = sub_268C5A8C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2802D3968);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_268C4F934(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
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

uint64_t sub_268C4F974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_268C4FA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v8 = v7;
  v13 = sub_268C5A7F0();

  if (a4)
  {
    v14 = sub_268C5A7F0();
  }

  else
  {
    v14 = 0;
  }

  sub_268C508CC(0, &qword_2802D39C8, 0x277D23938);
  v15 = sub_268C5A850();

  sub_268C508CC(0, &qword_2802D39D0, 0x277D238D8);
  v16 = sub_268C5A850();

  v17 = [v8 initWithIdentifier:v13 mangledTypeName:v14 openAppWhenRun:a5 & 1 outputFlags:a6 outputType:a7 systemProtocols:v15 parameters:v16];

  return v17;
}

uint64_t sub_268C4FB50(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_268C50A3C;

  return v7();
}

uint64_t sub_268C4FC38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_268C50A3C;

  return v8();
}

uint64_t sub_268C4FD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3990, &qword_268C5B7F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_268C505B8(a3, v25 - v11, &qword_2802D3990, &qword_268C5B7F8);
  v13 = sub_268C5A880();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_268C50968(v12, &qword_2802D3990, &qword_268C5B7F8);
  }

  else
  {
    sub_268C5A870();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_268C5A860();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_268C5A820() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_268C50968(a3, &qword_2802D3990, &qword_268C5B7F8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_268C50968(a3, &qword_2802D3990, &qword_268C5B7F8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_268C4FFFC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268C500F4;

  return v7(a1);
}

uint64_t sub_268C500F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return v5();
}

uint64_t sub_268C501D8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268C50220()
{
  OUTLINED_FUNCTION_27();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_268C4D824;
  v6 = OUTLINED_FUNCTION_11();

  return v7(v6);
}

uint64_t sub_268C502D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_268C50A3C;
  v7 = OUTLINED_FUNCTION_11();

  return v8(v7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_268C503CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_268C50A3C;

  return sub_268C4FC38(a1, v4, v5, v7);
}

uint64_t sub_268C50494()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C504CC()
{
  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_20(v4);

  return v7(v6);
}

uint64_t sub_268C50570()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C505B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268C50618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268C5067C()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_268C4D824;

  return sub_268C4B5F4(v3, v5, v4);
}

uint64_t sub_268C50724(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_268C5079C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_268C507DC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_268C5A7F0();

  [a3 *a4];
}

void sub_268C50848(uint64_t a1, void *a2)
{
  sub_268C508CC(0, &qword_2802D3A10, 0x277D47140);
  v3 = sub_268C5A850();

  [a2 setViews_];
}

uint64_t sub_268C508CC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_268C5090C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_268C50920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268C50968(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_268C509C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A38, &qword_268C5B8A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6(uint64_t result)
{
  *(result + 8) = sub_268C4A714;
  v2 = *(v1 + 232);
  v3 = *(v1 + 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_18()
{

  JUMPOUT(0x26D6299D0);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_23()
{

  return sub_268C5A3E0();
}

uint64_t OUTLINED_FUNCTION_24()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + v1 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + v1), *(a1 + v1 + 24));

  return sub_268C5A3B0();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_38(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40()
{
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_268C50E80(uint64_t a1)
{
  v2 = sub_268C5A490();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_268C5A750();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = __swift_project_value_buffer(v11, qword_2802D4560);
  (*(v14 + 16))(v19, v20, v11);
  (*(v5 + 16))(v10, a1, v2);
  v21 = sub_268C5A740();
  v22 = sub_268C5A910();
  if (os_log_type_enabled(v21, v22))
  {
    v30 = v11;
    v23 = OUTLINED_FUNCTION_29();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v23 = 136315138;
    sub_268C5404C(&qword_2802D3A30, 255, MEMORY[0x277D5C118]);
    v24 = sub_268C5AA40();
    v26 = v25;
    (*(v5 + 8))(v10, v2);
    v27 = sub_268C56F44(v24, v26, &v31);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_268C47000, v21, v22, "ReadThisFlow.on input: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    (*(v14 + 8))(v19, v30);
  }

  else
  {

    (*(v5 + 8))(v10, v2);
    (*(v14 + 8))(v19, v11);
  }

  return 1;
}

uint64_t sub_268C51164()
{
  type metadata accessor for ScreenReaderFlow();
  sub_268C5404C(&qword_2802D3A88, v0, type metadata accessor for ScreenReaderFlow);
  return sub_268C5A2B0();
}

uint64_t sub_268C511F0()
{
  OUTLINED_FUNCTION_10();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_268C5A430();
  v1[20] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[21] = v4;
  v6 = *(v5 + 64);
  v1[22] = OUTLINED_FUNCTION_49();
  v7 = sub_268C5A750();
  v1[23] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[24] = v8;
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268C5137C()
{
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[37];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_2802D4560);
  v0[38] = v4;
  v5 = *(v3 + 16);
  v0[39] = v5;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_268C5A740();
  v7 = sub_268C5A910();
  if (OUTLINED_FUNCTION_17_0(v7))
  {
    *OUTLINED_FUNCTION_28() = 0;
    OUTLINED_FUNCTION_25(&dword_268C47000, v8, v9, "Entering ScreenReaderFlow");
    OUTLINED_FUNCTION_18();
  }

  v10 = v0[37];
  v11 = v0[23];
  v12 = v0[24];

  v13 = *(v12 + 8);
  v0[41] = v13;
  v13(v10, v11);
  v14 = [objc_allocWithZone(MEMORY[0x277D47118]) init];
  v0[42] = v14;
  sub_268C5A370();
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = *(MEMORY[0x277D5BFB8] + 4);
  v18 = swift_task_alloc();
  v0[43] = v18;
  v19 = sub_268C508CC(0, &unk_2802D3A70, 0x277D471B0);
  *v18 = v0;
  v18[1] = sub_268C51550;

  return MEMORY[0x2821BB6A0](v14, v15, v19, v16);
}

uint64_t sub_268C51550()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  *v5 = v4;
  v7 = *(v6 + 344);
  v8 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v9 = v8;
  *(v10 + 352) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268C51654()
{
  v1 = v0[42];
  v2 = v0[18];
  sub_268C5A400();

  v3 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  OUTLINED_FUNCTION_18_0();

  OUTLINED_FUNCTION_9();

  return v11();
}

uint64_t sub_268C51754()
{
  v1 = v0;
  v0[17] = v0[44];
  v2 = v0 + 17;
  v3 = v0[22];
  v4 = v0[20];
  MEMORY[0x26D6298C0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3970, &qword_268C5B670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v5 = (*(v0[21] + 88))(v0[22], v0[20]);
  if (v5 == *MEMORY[0x277D5BE70])
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = v0[38];
    v9 = v0[28];
    v10 = v1[22];
    v11 = v1[23];
    v12 = v1[20];
    v13 = v1[21];

    (*(v13 + 96))(v10, v12);
    v14 = *v10;
    v15 = OUTLINED_FUNCTION_28_0();
    v7(v15);
    MEMORY[0x26D6298C0](v14);
    v16 = sub_268C5A740();
    LOBYTE(v11) = sub_268C5A910();

    if (os_log_type_enabled(v16, v11))
    {
      OUTLINED_FUNCTION_29();
      v17 = OUTLINED_FUNCTION_23_0();
      *v9 = 138412290;
      MEMORY[0x26D6298C0](v14);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v18;
      *v17 = v18;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      sub_268C53FEC(v17, &qword_2802D3A80, &qword_268C5B7E0);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    v35 = v1[24] + 8;
    (v1[41])(v1[28], v1[23]);
    goto LABEL_43;
  }

  if (v5 != *MEMORY[0x277D5BE80])
  {
    if (v5 == *MEMORY[0x277D5BE88])
    {
      v37 = v0[39];
      v36 = v0[40];
      v38 = v0[38];
      v39 = v0[27];
      v41 = v1[22];
      v40 = v1[23];
      v42 = v1[20];
      v43 = v1[21];

      (*(v43 + 96))(v41, v42);
      v44 = *v41;
      v45 = OUTLINED_FUNCTION_28_0();
      v37(v45);
      v46 = v44;
      v47 = sub_268C5A740();
      LOBYTE(v42) = sub_268C5A910();

      if (os_log_type_enabled(v47, v42))
      {
        OUTLINED_FUNCTION_29();
        v48 = OUTLINED_FUNCTION_23_0();
        *v39 = 138412290;
        *(v39 + 4) = v46;
        *v48 = v46;
        v49 = v46;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
        sub_268C53FEC(v48, &qword_2802D3A80, &qword_268C5B7E0);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        v49 = v47;
        v47 = v46;
      }

      v91 = v1[41];
      v92 = v1[27];
      v93 = v1[23];
      v94 = v1[24];

      v91(v92, v93);
      goto LABEL_43;
    }

    if (v5 == *MEMORY[0x277D5BE78])
    {
      v74 = v0[39];
      v73 = v0[40];
      v75 = v0[38];
      v76 = v0[26];
      v77 = v1[23];

      v78 = OUTLINED_FUNCTION_28_0();
      v74(v78);
      v79 = sub_268C5A740();
      v80 = sub_268C5A910();
      if (OUTLINED_FUNCTION_17_0(v80))
      {
        v81 = OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_11_0(v81);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v82, v83, v84, v85, v86, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v87 = v1[41];
      v88 = v1[26];
      v89 = v1[23];
      v90 = v1[24];

      v87(v88, v89);
      goto LABEL_43;
    }

    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_28:
    v96 = v0[44];
    v98 = v1[39];
    v97 = v1[40];
    v99 = v1[38];
    v100 = v1[25];
    v101 = v1[23];

    v98(v100, v99, v101);
    MEMORY[0x26D6298C0](v96);
    v102 = sub_268C5A740();
    LOBYTE(v101) = sub_268C5A910();

    v103 = os_log_type_enabled(v102, v101);
    v104 = v1[44];
    if (v103)
    {
      OUTLINED_FUNCTION_29();
      v105 = OUTLINED_FUNCTION_23_0();
      *v96 = 138412290;
      MEMORY[0x26D6298C0](v104);
      v106 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 1) = v106;
      *v105 = v106;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v107, v108, v109, v110, v111, 0xCu);
      sub_268C53FEC(v105, &qword_2802D3A80, &qword_268C5B7E0);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    v112 = v1[24] + 8;
    (v1[41])(v1[25], v1[23]);
    goto LABEL_44;
  }

  v24 = v0[21];
  v25 = v0[22];
  v26 = v1[20];

  (*(v24 + 96))(v25, v26);
  v27 = *v25;
  v28 = [*v25 errorCode];
  if (*MEMORY[0x277D47BD0] == v28)
  {
    OUTLINED_FUNCTION_16_0();
    v29 = v1 + 36;
    v30 = v1[36];
    v31 = OUTLINED_FUNCTION_27_0();
    v32(v31);
    v33 = sub_268C5A740();
    v34 = sub_268C5A910();
    if (OUTLINED_FUNCTION_14_0(v34))
    {
      goto LABEL_35;
    }

LABEL_41:
    v123 = v33;
    v33 = v27;
    goto LABEL_42;
  }

  if (*MEMORY[0x277D47BD8] == v28)
  {
    v170 = v27;
    v55 = v2 - 5;
    OUTLINED_FUNCTION_16_0();
    v56 = v1[35];
    v57 = OUTLINED_FUNCTION_27_0();
    v58(v57);
    v59 = sub_268C5A740();
    v60 = sub_268C5A910();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_11_0(v61);
      OUTLINED_FUNCTION_32_0(&dword_268C47000, v62, v63, "Handling SAAXScreenReaderNothingToSpeakErrorCode");
      OUTLINED_FUNCTION_4_1();
    }

    v64 = v1[41];
    v65 = v1[42];
    v66 = v1[35];
    v67 = v1[23];
    v68 = v1[24];
    v70 = v1[18];
    v69 = v1[19];

    v64(v66, v67);
    sub_268C52CF4(v55);
    v71 = v1[15];
    v72 = v1[16];
    goto LABEL_18;
  }

  if (*MEMORY[0x277D47BE8] == v28)
  {
    OUTLINED_FUNCTION_16_0();
    v29 = v1 + 34;
    v95 = v1[34];
    goto LABEL_34;
  }

  if (*MEMORY[0x277D47BF0] == v28)
  {
    OUTLINED_FUNCTION_16_0();
    v29 = v1 + 33;
    v113 = v1[33];
LABEL_34:
    v114 = OUTLINED_FUNCTION_27_0();
    v115(v114);
    v33 = sub_268C5A740();
    v116 = sub_268C5A910();
    if (!OUTLINED_FUNCTION_14_0(v116))
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (*MEMORY[0x277D47BC0] == v28)
  {
    OUTLINED_FUNCTION_16_0();
    v29 = v1 + 32;
    v124 = v1[32];
    v125 = OUTLINED_FUNCTION_27_0();
    v126(v125);
    v33 = sub_268C5A740();
    v127 = sub_268C5A910();
    if (OUTLINED_FUNCTION_14_0(v127))
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  if (*MEMORY[0x277D47BC8] != v28)
  {
    v147 = *MEMORY[0x277D47BE0];
    OUTLINED_FUNCTION_16_0();
    if (v150 != v149)
    {
      v29 = v1 + 29;
      v148(v1[29]);
      v123 = v27;
      v33 = sub_268C5A740();
      v163 = sub_268C5A910();
      if (OUTLINED_FUNCTION_17_0(v163))
      {
        v164 = OUTLINED_FUNCTION_29();
        *v164 = 134217984;
        *(v164 + 4) = [v123 errorCode];

        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v165, v166, v167, v168, v169, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        v33 = v123;
      }

      goto LABEL_42;
    }

    v170 = v27;
    v55 = v2 - 10;
    v148(v1[30]);
    v151 = sub_268C5A740();
    v152 = sub_268C5A910();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_11_0(v153);
      OUTLINED_FUNCTION_32_0(&dword_268C47000, v154, v155, "Handling SAAXScreenReaderSettingNotEnabledErrorCode");
      OUTLINED_FUNCTION_4_1();
    }

    v156 = v1[41];
    v65 = v1[42];
    v157 = v1[30];
    v158 = v1[23];
    v159 = v1[24];
    v161 = v1[18];
    v160 = v1[19];

    v156(v157, v158);
    sub_268C52130(v55);
    v71 = v1[10];
    v162 = v1[11];
LABEL_18:
    __swift_project_boxed_opaque_existential_1(v55, v71);
    sub_268C5A3F0();

    __swift_destroy_boxed_opaque_existential_1(v55);
    goto LABEL_45;
  }

  v29 = v1 + 31;
  v128 = v1[40];
  (v1[39])(v1[31], v1[38], v1[23]);
  v33 = sub_268C5A740();
  v129 = sub_268C5A910();
  if (!OUTLINED_FUNCTION_14_0(v129))
  {
    goto LABEL_41;
  }

LABEL_35:
  v117 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_0(v117);
  OUTLINED_FUNCTION_15_0();
  _os_log_impl(v118, v119, v120, v121, v122, 2u);
  OUTLINED_FUNCTION_4_1();
  v123 = v27;
LABEL_42:
  v130 = *v29;
  v131 = v1[41];
  v132 = v1[23];
  v133 = v1[24];

  v131(v130, v132);
LABEL_43:

LABEL_44:
  v134 = v1[42];
  v135 = v1[18];
  sub_268C5A400();

LABEL_45:
  v136 = v1[36];
  v137 = v1[37];
  v139 = v1[34];
  v138 = v1[35];
  v141 = v1[32];
  v140 = v1[33];
  v144 = v1 + 30;
  v143 = v1[30];
  v142 = v144[1];
  OUTLINED_FUNCTION_18_0();

  OUTLINED_FUNCTION_9();

  return v145();
}

uint64_t sub_268C52148(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_268C5A750();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = *(*(sub_268C5A6F0() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v8 = sub_268C5A420();
  v2[18] = v8;
  v9 = *(v8 - 8);
  v2[19] = v9;
  v10 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268C522C8, 0, 0);
}

uint64_t sub_268C522C8()
{
  OUTLINED_FUNCTION_22_0();
  ThisCATProvider = type metadata accessor for ReadThisCATProvider();
  v2 = *(ThisCATProvider + 48);
  v3 = *(ThisCATProvider + 52);
  v4 = swift_allocObject();
  v0[21] = OUTLINED_FUNCTION_33_0(v4, v5, v6, v7, v8, v9, v10, v11, v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[22] = v12;
  *v12 = v13;
  v12[1] = sub_268C52388;
  v14 = v0[20];
  v15 = MEMORY[0x277D84F90];

  return sub_268C5455C(v14, 3, v15);
}

uint64_t sub_268C52388()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (!v0)
  {
    v9 = *(v3 + 168);
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268C5248C()
{
  v1 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_268C508CC(0, &unk_2802D3A50, 0x277D479F0);
  v5 = sub_268C52B08();
  v6 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
  sub_268C507DC(0x746553206E65704FLL, 0xED000073676E6974, v6, &selRef_setText_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A08, &qword_268C5B890);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268C5B5C0;
  *(v7 + 32) = v5;
  v20 = v5;
  sub_268C53F6C(v7, v6);
  v8 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  sub_268C5A3B0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_268C5B5C0;
  *(v9 + 32) = v6;
  v10 = sub_268C5A410();
  v11 = OUTLINED_FUNCTION_37_0(v10);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v12 = MEMORY[0x277D5C1D8];
  v3[3] = v11;
  v3[4] = v12;
  __swift_allocate_boxed_opaque_existential_1(v3);
  v13 = v6;
  sub_268C5A3E0();

  sub_268C53FEC(v0 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C53FEC(v2, &unk_2802D39E0, &qword_268C5B870);
  (*(v1 + 8))(v21, v22);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 120);

  OUTLINED_FUNCTION_3_1();

  return v18();
}

uint64_t sub_268C52724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[21];

  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = v22[23];
  v28 = v22[14];
  v27 = v22[15];
  __swift_project_value_buffer(v22[13], qword_2802D4560);
  v29 = OUTLINED_FUNCTION_24_0();
  v30(v29);
  MEMORY[0x26D6298C0](v26);
  v31 = sub_268C5A740();
  v32 = sub_268C5A930();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v22[23];
  v36 = v22[14];
  v35 = v22[15];
  v37 = v22[13];
  if (v33)
  {
    v38 = OUTLINED_FUNCTION_29();
    v39 = swift_slowAlloc();
    a11 = v39;
    OUTLINED_FUNCTION_31_0(4.8149e-34);
    v56 = v35;
    v41 = v22[7];
    v40 = v22[8];
    v42 = v22[9];
    v43 = sub_268C5AA60();
    v45 = sub_268C56F44(v43, v44, &a11);

    *(v38 + 4) = v45;
    OUTLINED_FUNCTION_35_0(&dword_268C47000, v46, v47, "Could not get CAT template: %s");
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    (*(v36 + 8))(v56, v37);
  }

  else
  {

    (*(v36 + 8))(v35, v37);
  }

  v48 = v22[11];
  v49 = sub_268C5A4E0();
  v50 = MEMORY[0x277D5C1D8];
  v48[3] = v49;
  v48[4] = v50;
  __swift_allocate_boxed_opaque_existential_1(v48);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v22[24] = v51;
  *v51 = v52;
  v51[1] = sub_268C5292C;
  v53 = v22[12];
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();

  return sub_268C535FC();
}

uint64_t sub_268C5292C()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[20];
    v14 = v3[16];
    v13 = v3[17];
    v15 = v3[15];

    OUTLINED_FUNCTION_3_1();

    return v16();
  }
}

uint64_t sub_268C52A78()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 88));

  OUTLINED_FUNCTION_9();
  v6 = *(v0 + 200);

  return v5();
}

id sub_268C52B08()
{
  v0 = sub_268C5A250();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A68, qword_268C5B9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  OUTLINED_FUNCTION_28_0();
  sub_268C5A210();
  v14 = sub_268C5A220();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    v15 = sub_268C5A1F0();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  [v13 setPunchOutUri_];

  v16 = v13;
  sub_268C5A240();
  v17 = sub_268C5A230();
  v19 = v18;
  (*(v3 + 8))(v8, v0);
  sub_268C507DC(v17, v19, v16, &selRef_setAceId_);

  return v16;
}

uint64_t sub_268C52D0C@<X0>(uint64_t *a1@<X8>)
{
  sub_268C53CB8(v1 + 16, &v9);
  if (v10)
  {
    sub_268C50A40(&v9, v11);
  }

  else
  {
    sub_268C53FEC(&v9, &qword_2802D39D8, &qword_268C5B980);
    sub_268C5A480();
  }

  sub_268C50618(v11, &v9);
  v3 = sub_268C5A290();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_268C5A280();
  v7 = MEMORY[0x277D5B3F0];
  a1[3] = v3;
  a1[4] = v7;
  *a1 = v6;
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_268C52DE8(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_268C5A750();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = *(*(sub_268C5A6F0() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v8 = sub_268C5A420();
  v2[18] = v8;
  v9 = *(v8 - 8);
  v2[19] = v9;
  v10 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268C52F68, 0, 0);
}

uint64_t sub_268C52F68()
{
  OUTLINED_FUNCTION_22_0();
  ThisCATProvider = type metadata accessor for ReadThisCATProvider();
  v2 = *(ThisCATProvider + 48);
  v3 = *(ThisCATProvider + 52);
  v4 = swift_allocObject();
  v0[21] = OUTLINED_FUNCTION_33_0(v4, v5, v6, v7, v8, v9, v10, v11, v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[22] = v12;
  *v12 = v13;
  v12[1] = sub_268C53028;
  v14 = v0[20];
  v15 = MEMORY[0x277D84F90];

  return sub_268C5455C(v14, 4, v15);
}

uint64_t sub_268C53028()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (!v0)
  {
    v9 = *(v3 + 168);
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268C5312C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  sub_268C5A3B0();
  v8 = sub_268C5A410();
  v9 = OUTLINED_FUNCTION_37_0(v8);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_268C5A3E0();
  sub_268C53FEC(v0 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C53FEC(v4, &unk_2802D39E0, &qword_268C5B870);
  (*(v2 + 8))(v1, v3);
  v11 = *(v0 + 160);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);

  OUTLINED_FUNCTION_3_1();

  return v15();
}

uint64_t sub_268C532A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[21];

  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = v22[23];
  v28 = v22[14];
  v27 = v22[15];
  __swift_project_value_buffer(v22[13], qword_2802D4560);
  v29 = OUTLINED_FUNCTION_24_0();
  v30(v29);
  MEMORY[0x26D6298C0](v26);
  v31 = sub_268C5A740();
  v32 = sub_268C5A930();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v22[23];
  v36 = v22[14];
  v35 = v22[15];
  v37 = v22[13];
  if (v33)
  {
    v38 = OUTLINED_FUNCTION_29();
    v39 = swift_slowAlloc();
    a11 = v39;
    OUTLINED_FUNCTION_31_0(4.8149e-34);
    v56 = v35;
    v41 = v22[7];
    v40 = v22[8];
    v42 = v22[9];
    v43 = sub_268C5AA60();
    v45 = sub_268C56F44(v43, v44, &a11);

    *(v38 + 4) = v45;
    OUTLINED_FUNCTION_35_0(&dword_268C47000, v46, v47, "Could not get CAT template: %s");
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    (*(v36 + 8))(v56, v37);
  }

  else
  {

    (*(v36 + 8))(v35, v37);
  }

  v48 = v22[11];
  v49 = sub_268C5A4E0();
  v50 = MEMORY[0x277D5C1D8];
  v48[3] = v49;
  v48[4] = v50;
  __swift_allocate_boxed_opaque_existential_1(v48);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v22[24] = v51;
  *v51 = v52;
  v51[1] = sub_268C534B0;
  v53 = v22[12];
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();

  return sub_268C535FC();
}

uint64_t sub_268C534B0()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[25] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[20];
    v14 = v3[16];
    v13 = v3[17];
    v15 = v3[15];

    OUTLINED_FUNCTION_3_1();

    return v16();
  }
}

uint64_t sub_268C535FC()
{
  OUTLINED_FUNCTION_10();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870) - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_49();
  v4 = sub_268C5A420();
  v1[10] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_49();
  v8 = sub_268C5A750();
  v1[13] = v8;
  OUTLINED_FUNCTION_12(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_268C53720()
{
  OUTLINED_FUNCTION_27();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_2802D4560);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_268C5A740();
  v6 = sub_268C5A930();
  if (OUTLINED_FUNCTION_17_0(v6))
  {
    *OUTLINED_FUNCTION_28() = 0;
    OUTLINED_FUNCTION_25(&dword_268C47000, v7, v8, "Defaulting to generic error template response");
    OUTLINED_FUNCTION_18();
  }

  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];

  (*(v10 + 8))(v9, v11);
  v12 = *(MEMORY[0x277D5BCC8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[16] = v13;
  *v13 = v14;
  v13[1] = sub_268C5386C;
  v15 = v0[12];

  return MEMORY[0x2821BAEC8](v15);
}

uint64_t sub_268C5386C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268C53968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_30_0();
  v32 = *(v14 + 120);
  v16 = *(v14 + 88);
  v15 = *(v14 + 96);
  v17 = *(v14 + 72);
  v18 = *(v14 + 80);
  v20 = *(v14 + 56);
  v19 = *(v14 + 64);
  v21 = v19[11];
  __swift_project_boxed_opaque_existential_1(v19 + 7, v19[10]);
  sub_268C5A3B0();
  v22 = sub_268C5A410();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
  *(v14 + 48) = 0;
  *(v14 + 32) = 0u;
  *(v14 + 16) = 0u;
  sub_268C5A3E0();
  sub_268C53FEC(v14 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C53FEC(v17, &unk_2802D39E0, &qword_268C5B870);
  (*(v16 + 8))(v15, v18);

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_29_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v14 + 16, a10, v32, a12, a13, a14);
}

uint64_t sub_268C53ABC()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_9();
  v5 = v0[17];

  return v4();
}

uint64_t sub_268C53B30()
{
  sub_268C53FEC(v0 + 16, &qword_2802D39D8, &qword_268C5B980);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_268C53BE4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268C4D824;

  return sub_268C511F0();
}

uint64_t sub_268C53C80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScreenReaderFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_268C53CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39D8, &qword_268C5B980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C53D28()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_268C50A3C;
  v4 = OUTLINED_FUNCTION_25_0();

  return sub_268C52DE8(v4, v0);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D6299D0);
  }

  return result;
}

uint64_t sub_268C53E08(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_268C53E68()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_268C4D824;
  v4 = OUTLINED_FUNCTION_25_0();

  return sub_268C52148(v4, v0);
}

void sub_268C53EF8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_268C53F6C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A60, &qword_268C5B9B8);
  v3 = sub_268C5A850();

  [a2 setCommands_];
}

uint64_t sub_268C53FEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_268C5404C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x26D6299D0);
}

BOOL OUTLINED_FUNCTION_14_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_16_0()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v1 = v0[29];
  v4 = v0[28];
  v5 = v0[27];
  v6 = v0[26];
  v7 = v0[25];
  v8 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  v2 = *(v0 + 136);

  return sub_268C5A6E0();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_32_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_268C5436C(v9, &a9);
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_268C5A4E0();
}

uint64_t type metadata accessor for ReadThisCATProvider()
{
  result = qword_2802D3A90;
  if (!qword_2802D3A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C5436C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C5A6F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A68, qword_268C5B9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  sub_268C54900(a2, &v18);
  if (v19)
  {
    sub_268C50724(&v18, v20);
    sub_268C5A6B0();
    sub_268C50618(v20, &v18);
    v13 = sub_268C5A6A0();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v14 = v13;
  }

  else
  {
    sub_268C54970(&v18);
    v13 = 0;
  }

  v15 = sub_268C5A220();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  (*(v5 + 16))(v8, a1, v4);
  v16 = sub_268C5A6C0();

  sub_268C54970(a2);
  (*(v5 + 8))(a1, v4);
  return v16;
}

uint64_t sub_268C5455C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_268C54584, 0, 0);
}

uint64_t sub_268C54584()
{
  v1 = sub_268C547F4(*(v0 + 64));
  v3 = v2;
  *(v0 + 40) = v2;
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v10 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_268C54654;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v1, v3, v6);
}

uint64_t sub_268C54654()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268C54790, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_268C54790()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

unint64_t sub_268C547F4(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C548C8()
{
  v0 = sub_268C5A6D0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_268C54900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AA0, qword_268C5BA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C54970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AA0, qword_268C5BA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268C549E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_268C547F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_268C54A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_268C5AA70();
  sub_268C5A830();
  v7 = sub_268C5AA90();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_268C5AA50();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_268C54AFC()
{
  result = sub_268C574E8(&unk_287981DC8);
  qword_2802D4550 = result;
  return result;
}

uint64_t SiriReaderFlowProvider.__allocating_init(referenceResolver:aceServiceInvoker:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_20_0();
  SiriReaderFlowProvider.init(referenceResolver:aceServiceInvoker:deviceState:outputPublisher:)(v7, v8, a3, a4);
  return v6;
}

uint64_t SiriReaderFlowProvider.init(referenceResolver:aceServiceInvoker:deviceState:outputPublisher:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  sub_268C50724(a1, v4 + 16);
  sub_268C50724(a2, v4 + 56);
  sub_268C50724(a3, v4 + 96);
  v8 = *(a4 + 16);
  *(v4 + 136) = *a4;
  *(v4 + 152) = v8;
  *(v4 + 168) = *(a4 + 32);
  return v4;
}

void SiriReaderFlowProvider.findFlow(for:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v140 = v2;
  v124 = sub_268C5A4F0();
  v3 = OUTLINED_FUNCTION_0(v124);
  v123 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v122 = v8 - v7;
  OUTLINED_FUNCTION_41();
  v131 = sub_268C5A4D0();
  v9 = OUTLINED_FUNCTION_0(v131);
  v126 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v125 = v14 - v13;
  OUTLINED_FUNCTION_41();
  v15 = sub_268C5A680();
  v16 = OUTLINED_FUNCTION_0(v15);
  v134 = v17;
  v135 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v133 = v21 - v20;
  OUTLINED_FUNCTION_41();
  v22 = sub_268C5A4A0();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  v138 = (v28 - v29);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23_1();
  v142 = v31;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_1();
  v136 = v33;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v119 - v35;
  v37 = sub_268C5A750();
  v38 = OUTLINED_FUNCTION_0(v37);
  v143 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  v139 = (v42 - v43);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_23_1();
  v121 = v45;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v119 - v47;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v49 = __swift_project_value_buffer(v37, qword_2802D4560);
  v50 = *(v143 + 16);
  v128 = v49;
  v129 = v50;
  v130 = v143 + 16;
  v50(v48);
  v51 = *(v25 + 16);
  v141 = v1;
  v51(v36, v1, v22);
  v52 = v25;
  v53 = sub_268C5A740();
  v54 = sub_268C5A910();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v132 = v51;
    v56 = v55;
    v57 = swift_slowAlloc();
    v127 = v37;
    v119 = v57;
    v144[0] = v57;
    *v56 = 136315138;
    v120 = v48;
    v132(v136, v36, v22);
    v58 = sub_268C5A810();
    v60 = v59;
    v61 = v52;
    v62 = OUTLINED_FUNCTION_14_1();
    v63(v62);
    v64 = v58;
    v65 = v143;
    v66 = sub_268C56F44(v64, v60, v144);

    *(v56 + 4) = v66;
    _os_log_impl(&dword_268C47000, v53, v54, "Finding flow for parse: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    v37 = v127;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    v67 = v65;
    v51 = v132;
    v68 = *(v67 + 8);
    v68(v120, v37);
  }

  else
  {

    v69 = OUTLINED_FUNCTION_14_1();
    v70(v69);
    v68 = *(v143 + 8);
    v68(v48, v37);
    v61 = v52;
  }

  v51(v142, v141, v22);
  v71 = *(v61 + 88);
  v72 = OUTLINED_FUNCTION_11_1();
  v74 = v73(v72);
  v76 = v138;
  v75 = v139;
  if (v74 == *MEMORY[0x277D5C128])
  {
    v77 = OUTLINED_FUNCTION_8_0();
    v78(v77);
    v80 = v133;
    v79 = v134;
    v81 = OUTLINED_FUNCTION_24_1();
    v82 = v135;
    v83(v81);
    sub_268C55A48();
    (*(v79 + 8))(v80, v82);
  }

  else if (v74 == *MEMORY[0x277D5C130])
  {
    v84 = OUTLINED_FUNCTION_8_0();
    v85(v84);
    v86 = *v75;
    sub_268C55470();
    swift_unknownObjectRelease();
  }

  else if (v74 == *MEMORY[0x277D5C160])
  {
    v87 = OUTLINED_FUNCTION_8_0();
    v88(v87);
    v90 = v125;
    v89 = v126;
    v91 = OUTLINED_FUNCTION_24_1();
    v92(v91);
    v93 = v122;
    sub_268C5A4C0();
    v94 = sub_268C5A500();
    (*(v123 + 8))(v93, v124);
    if (v94)
    {
      sub_268C55470();
      swift_unknownObjectRelease();
    }

    else
    {
      v110 = OUTLINED_FUNCTION_22_1();
      v111(v110);
      v112 = sub_268C5A740();
      v113 = sub_268C5A910();
      if (OUTLINED_FUNCTION_15_1(v113))
      {
        v114 = OUTLINED_FUNCTION_28();
        *v114 = 0;
        OUTLINED_FUNCTION_21_0();
        _os_log_impl(v115, v116, v117, v118, v114, 2u);
        OUTLINED_FUNCTION_18();
      }

      v68(v121, v37);
      sub_268C5A2F0();
    }

    (*(v89 + 8))(v90, v131);
  }

  else
  {
    v137 = v61;
    v95 = OUTLINED_FUNCTION_22_1();
    v96(v95);
    v97 = v51;
    v51(v76, v141, v22);
    v98 = sub_268C5A740();
    v99 = sub_268C5A930();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v135 = v100;
      v141 = swift_slowAlloc();
      v144[0] = v141;
      *v100 = 136315138;
      v97(v136, v76, v22);
      v101 = sub_268C5A810();
      v127 = v37;
      v103 = v102;
      v104 = OUTLINED_FUNCTION_9_0();
      v76(v104);
      v105 = sub_268C56F44(v101, v103, v144);

      v106 = v135;
      *(v135 + 1) = v105;
      _os_log_impl(&dword_268C47000, v98, v99, "Received unsupported parse: %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v141);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      v107 = v75;
      v108 = v127;
    }

    else
    {

      v109 = OUTLINED_FUNCTION_9_0();
      v76(v109);
      v107 = v75;
      v108 = v37;
    }

    v68(v107, v108);
    sub_268C5A2F0();
    (v76)(v142, v22);
  }

  OUTLINED_FUNCTION_22();
}

void sub_268C55470()
{
  OUTLINED_FUNCTION_26();
  v65 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A38, &qword_268C5B8A8);
  v2 = OUTLINED_FUNCTION_19_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v60 = v5 - v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v61 = &v59 - v8;
  OUTLINED_FUNCTION_41();
  v9 = sub_268C5A750();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v62 = (v15 - v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23_1();
  v66 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v9, qword_2802D4560);
  v22 = *(v12 + 16);
  v23 = OUTLINED_FUNCTION_11_1();
  v22(v23);
  v24 = sub_268C5A740();
  v25 = sub_268C5A910();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_28();
    v64 = v9;
    *v26 = 0;
    _os_log_impl(&dword_268C47000, v24, v25, "Handling NLv4 parse", v26, 2u);
    v9 = v64;
    OUTLINED_FUNCTION_18();
  }

  v27 = *(v12 + 8);
  v27(v21, v9);
  v28 = swift_unknownObjectRetain();
  v29 = ReaderNLv4Intent.init(userDialogAct:)(v28);
  v31 = v30;
  v33 = v32;
  if (ReaderNLv4Intent.shouldStartScreenReader.getter(v29, v30, v32))
  {
    v63 = v31;
    v64 = v33;
    v34 = OUTLINED_FUNCTION_11_1();
    v22(v34);
    v35 = sub_268C5A740();
    v36 = sub_268C5A910();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_28();
      *v37 = 0;
      _os_log_impl(&dword_268C47000, v35, v36, "Creating ScreenReaderFlow", v37, 2u);
      OUTLINED_FUNCTION_18();
    }

    v27(v66, v9);
    v38 = v65;
    sub_268C505B8(v65 + 136, v69, &qword_2802D39D8, &qword_268C5B980);
    sub_268C50618(v38 + 96, v68);
    type metadata accessor for ScreenReaderFlow();
    v39 = swift_allocObject();
    v40 = v69[1];
    *(v39 + 16) = v69[0];
    *(v39 + 32) = v40;
    *(v39 + 48) = v70;
    sub_268C50724(v68, v39 + 56);
    *&v69[0] = v39;
    sub_268C5791C(&qword_2802D3A88, type metadata accessor for ScreenReaderFlow);
    sub_268C5A2A0();

    sub_268C5A300();
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_13_0();
  if ((ReaderNLv4Intent.read.getter() & 1) == 0)
  {
    sub_268C5A2F0();
    swift_unknownObjectRelease();

LABEL_14:

    goto LABEL_15;
  }

  v63 = v31;
  v64 = v33;
  v41 = OUTLINED_FUNCTION_11_1();
  v22(v41);
  v42 = sub_268C5A740();
  v43 = sub_268C5A910();
  if (OUTLINED_FUNCTION_15_1(v43))
  {
    v44 = OUTLINED_FUNCTION_28();
    *v44 = 0;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v45, v46, v47, v48, v44, 2u);
    OUTLINED_FUNCTION_18();
  }

  v27(v62, v9);
  v49 = v61;
  v50 = v65;
  sub_268C55DF8();
  v51 = v60;
  sub_268C505B8(v49, v60, &qword_2802D3A38, &qword_268C5B8A8);
  sub_268C50618(v50 + 56, v69);
  sub_268C505B8(v50 + 136, v68, &qword_2802D39D8, &qword_268C5B980);
  sub_268C50618(v50 + 96, v67);
  v52 = [objc_opt_self() sharedPreferences];
  v53 = sub_268C578AC(v52);
  v55 = v54;
  ThisFlow = type metadata accessor for ReadThisFlow(0);
  OUTLINED_FUNCTION_50(ThisFlow);
  *&v69[0] = sub_268C49EB0(v51, v53, v55, v69, v68, v67);
  OUTLINED_FUNCTION_5_1();
  sub_268C5791C(v57, v58);
  sub_268C5A2A0();

  sub_268C5A300();

  swift_unknownObjectRelease();

  sub_268C50968(v49, &qword_2802D3A38, &qword_268C5B8A8);
LABEL_15:
  OUTLINED_FUNCTION_22();
}

void sub_268C55A48()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v46 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A38, &qword_268C5B8A8);
  v6 = OUTLINED_FUNCTION_19_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for ReaderNLv3Intent();
  v16 = OUTLINED_FUNCTION_19_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = sub_268C5A750();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v31 = __swift_project_value_buffer(v22, qword_2802D4560);
  (*(v25 + 16))(v30, v31, v22);
  v32 = sub_268C5A740();
  v33 = sub_268C5A910();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_28();
    v45 = v21;
    *v34 = 0;
    _os_log_impl(&dword_268C47000, v32, v33, "Handling NLv3 parse", v34, 2u);
    v21 = v45;
    OUTLINED_FUNCTION_18();
  }

  (*(v25 + 8))(v30, v22);
  v35 = sub_268C5A680();
  OUTLINED_FUNCTION_4_0(v35);
  (*(v36 + 16))(v21, v3);
  if (ReaderNLv3Intent.read.getter())
  {
    sub_268C55DF8();
    sub_268C505B8(v14, v11, &qword_2802D3A38, &qword_268C5B8A8);
    sub_268C50618(v1 + 56, v49);
    sub_268C505B8(v1 + 136, v48, &qword_2802D39D8, &qword_268C5B980);
    sub_268C50618(v1 + 96, v47);
    v37 = [objc_opt_self() sharedPreferences];
    v38 = sub_268C578AC(v37);
    v40 = v39;
    ThisFlow = type metadata accessor for ReadThisFlow(0);
    OUTLINED_FUNCTION_50(ThisFlow);
    *&v49[0] = sub_268C49EB0(v11, v38, v40, v49, v48, v47);
    OUTLINED_FUNCTION_5_1();
    sub_268C5791C(v42, v43);
    sub_268C5A2A0();

    sub_268C5A300();

    sub_268C50968(v14, &qword_2802D3A38, &qword_268C5B8A8);
  }

  else
  {
    sub_268C5A2F0();
  }

  sub_268C57850(v21);
  OUTLINED_FUNCTION_22();
}

void sub_268C55DF8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_268C5A750();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v71 = v65 - v13;
  OUTLINED_FUNCTION_41();
  v14 = sub_268C5A7E0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v69 = v16;
  v70 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39A0, &qword_268C5B840);
  v23 = OUTLINED_FUNCTION_4_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  v28 = (v26 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = v65 - v30;
  v32 = sub_268C5A610();
  OUTLINED_FUNCTION_50(v32);
  v72 = sub_268C5A600();
  v33 = MEMORY[0x26D629050]();
  if (!v33)
  {
    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v53 = __swift_project_value_buffer(v3, qword_2802D4560);
    (*(v6 + 16))(v11, v53, v3);
    v54 = sub_268C5A740();
    v55 = sub_268C5A930();
    if (OUTLINED_FUNCTION_15_1(v55))
    {
      v56 = v6;
      v57 = OUTLINED_FUNCTION_28();
      *v57 = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v58, v59, v60, v61, v57, 2u);
      v6 = v56;
      OUTLINED_FUNCTION_18();
    }

    else
    {
    }

    (*(v6 + 8))(v11, v3);
    goto LABEL_16;
  }

  v66 = v6;
  v67 = v3;
  v68 = v2;
  v35 = v0[5];
  v34 = v0[6];
  v36 = v33;
  v65[1] = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v35);
  v37 = sub_268C5A7A0();
  OUTLINED_FUNCTION_50(v37);

  sub_268C5A790();
  sub_268C5A730();

  sub_268C505B8(v31, v28, &qword_2802D39A0, &qword_268C5B840);
  OUTLINED_FUNCTION_20_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = v36;
    v38 = *v28;
    v2 = v68;
    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v39 = v67;
    v40 = __swift_project_value_buffer(v67, qword_2802D4560);
    v41 = v66;
    v42 = v71;
    (*(v66 + 16))(v71, v40, v39);
    MEMORY[0x26D6298C0](v38);
    v43 = sub_268C5A740();
    v44 = sub_268C5A930();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v73 = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v47 = sub_268C5AA60();
      v49 = sub_268C56F44(v47, v48, &v73);
      v69 = v31;
      v50 = v41;
      v51 = v49;

      *(v45 + 4) = v51;
      _os_log_impl(&dword_268C47000, v43, v44, "Failed to make SRR resolve call %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      (*(v50 + 8))(v71, v39);
      v52 = v69;
    }

    else
    {

      (*(v41 + 8))(v42, v39);
      v52 = v31;
    }

    sub_268C50968(v52, &qword_2802D39A0, &qword_268C5B840);
LABEL_16:
    v64 = sub_268C5A7C0();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v64);
    goto LABEL_17;
  }

  v63 = v69;
  v62 = v70;
  (*(v69 + 4))(v21, v28, v70);
  sub_268C56384();

  v63[1](v21, v62);
  sub_268C50968(v31, &qword_2802D39A0, &qword_268C5B840);
LABEL_17:
  OUTLINED_FUNCTION_22();
}

void sub_268C56384()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v63 = v2;
  v3 = sub_268C5A7C0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_268C5A780();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = sub_268C5A7E0();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v29 = (v28 - v27);
  (*(v24 + 16))(v28 - v27, v1, v21);
  v30 = *(v24 + 88);
  v31 = OUTLINED_FUNCTION_13_0();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x277D5FEC0])
  {
    v34 = *(v24 + 96);
    v35 = OUTLINED_FUNCTION_13_0();
    v36(v35);
    (*(v15 + 32))(v20, v29, v12);
    if (qword_2802D3420 != -1)
    {
      OUTLINED_FUNCTION_4_2();
      swift_once();
    }

    v37 = qword_2802D4550;
    sub_268C5A770();
    v38 = sub_268C5A7B0();
    v40 = v39;
    (*(v6 + 8))(v11, v3);
    LOBYTE(v38) = sub_268C54A10(v38, v40, v37);

    if (v38)
    {
      sub_268C5A770();
      v41 = *(v15 + 8);
      v42 = OUTLINED_FUNCTION_20_0();
      v43(v42);
      v44 = v63;
      v45 = 0;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v44, v45, 1, v3);
      goto LABEL_13;
    }

    v51 = *(v15 + 8);
    v52 = OUTLINED_FUNCTION_20_0();
    v53(v52);
LABEL_11:
    v44 = v63;
    v45 = 1;
    goto LABEL_12;
  }

  v46 = v33;
  if (v33 == *MEMORY[0x277D5FED0] || v33 == *MEMORY[0x277D5FEC8])
  {
    v47 = *(v24 + 96);
    v48 = OUTLINED_FUNCTION_13_0();
    v49(v48);
    v50 = *v29;
    sub_268C56748();
LABEL_9:

    goto LABEL_13;
  }

  if (v33 == *MEMORY[0x277D5FED8])
  {
    v54 = *(v24 + 96);
    v55 = OUTLINED_FUNCTION_13_0();
    v56(v55);
    if (!*(*v29 + 16))
    {
      v62 = *v29;

      goto LABEL_11;
    }

    v57 = *(*v29 + 32);

    sub_268C56748();
    goto LABEL_9;
  }

  v58 = *MEMORY[0x277D5FEE0];
  __swift_storeEnumTagSinglePayload(v63, 1, 1, v3);
  if (v46 != v58)
  {
    v59 = *(v24 + 8);
    v60 = OUTLINED_FUNCTION_13_0();
    v61(v60);
  }

LABEL_13:
  OUTLINED_FUNCTION_22();
}

void sub_268C56748()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v72 = v2;
  v69 = sub_268C5A750();
  v3 = OUTLINED_FUNCTION_0(v69);
  v68 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v71 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AA8, &qword_268C5BAA8);
  v10 = OUTLINED_FUNCTION_19_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v68 - v13;
  OUTLINED_FUNCTION_41();
  v82 = sub_268C5A7C0();
  v14 = OUTLINED_FUNCTION_0(v82);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v79 = v20 - v19;
  OUTLINED_FUNCTION_41();
  v21 = sub_268C5A780();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  v75 = (v25 - v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v68 - v28;
  v30 = 0;
  v31 = *(v1 + 16);
  v80 = v1;
  v81 = v31;
  v76 = (v16 + 8);
  v77 = v32 + 16;
  v74 = (v32 + 32);
  v33 = MEMORY[0x277D84F90];
  v78 = v32;
  v73 = (v32 + 8);
LABEL_2:
  while (v30 != v81)
  {
    v84 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v83 = *(v78 + 72);
    v34 = v21;
    (*(v78 + 16))(v29, v80 + v84 + v83 * v30, v21);
    if (qword_2802D3420 != -1)
    {
      OUTLINED_FUNCTION_4_2();
      swift_once();
    }

    ++v30;
    v35 = qword_2802D4550;
    v36 = v79;
    v37 = v29;
    sub_268C5A770();
    v38 = sub_268C5A7B0();
    v40 = v39;
    (*v76)(v36, v82);
    if (*(v35 + 16))
    {
      v41 = *(v35 + 40);
      sub_268C5AA70();
      sub_268C5A830();
      v42 = sub_268C5AA90();
      v43 = ~(-1 << *(v35 + 32));
      while (1)
      {
        v44 = v42 & v43;
        if (((*(v35 + 56 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {
          break;
        }

        v45 = (*(v35 + 48) + 16 * v44);
        if (*v45 != v38 || v45[1] != v40)
        {
          v47 = sub_268C5AA50();
          v42 = v44 + 1;
          if ((v47 & 1) == 0)
          {
            continue;
          }
        }

        v48 = *v74;
        v29 = v37;
        v21 = v34;
        (*v74)(v75, v37, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_268C57678(0, *(v33 + 16) + 1, 1);
          v33 = v85;
        }

        v51 = v83;
        v50 = v84;
        v53 = *(v33 + 16);
        v52 = *(v33 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_268C57678(v52 > 1, v53 + 1, 1);
          v33 = v85;
        }

        *(v33 + 16) = v53 + 1;
        v48(v33 + v50 + v53 * v51, v75, v21);
        goto LABEL_2;
      }
    }

    v29 = v37;
    v21 = v34;
    (*v73)(v37, v34);
  }

  if (*(v33 + 16))
  {
    v54 = v70;
    sub_268C59EC8(v33, v70);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v21);
    v56 = v72;
    if (EnumTagSinglePayload == 1)
    {
      sub_268C50968(v54, &qword_2802D3AA8, &qword_268C5BAA8);
      v57 = 1;
    }

    else
    {
      sub_268C5A770();
      (*v73)(v54, v21);
      v57 = 0;
    }
  }

  else
  {

    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v58 = v69;
    v59 = __swift_project_value_buffer(v69, qword_2802D4560);
    v60 = v68;
    (*(v68 + 16))(v71, v59, v58);
    v61 = sub_268C5A740();
    v62 = sub_268C5A930();
    if (OUTLINED_FUNCTION_15_1(v62))
    {
      v63 = OUTLINED_FUNCTION_28();
      *v63 = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v64, v65, v66, v67, v63, 2u);
      OUTLINED_FUNCTION_18();
    }

    (*(v60 + 8))(v71, v58);
    v57 = 1;
    v56 = v72;
  }

  __swift_storeEnumTagSinglePayload(v56, v57, 1, v82);
  OUTLINED_FUNCTION_22();
}

uint64_t *SiriReaderFlowProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_268C50968((v0 + 17), &qword_2802D39D8, &qword_268C5B980);
  return v0;
}

uint64_t SiriReaderFlowProvider.__deallocating_deinit()
{
  SiriReaderFlowProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_268C56DA0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_268C56DEC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_268C5A780(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_268C5A780();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_268C56EE8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_268C56F44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_268C56F44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268C57008(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_268C57964(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_268C57008(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_268C57108(a5, a6);
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
    result = sub_268C5A9B0();
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

uint64_t sub_268C57108(uint64_t a1, unint64_t a2)
{
  v4 = sub_268C57154(a1, a2);
  sub_268C5726C(&unk_287981DA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_268C57154(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_268C5A840())
  {
    result = sub_268C57350(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268C5A990();
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
          result = sub_268C5A9B0();
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_268C5726C(uint64_t result)
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

    result = sub_268C573C0(result, v8, 1, v3);
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

void *sub_268C57350(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AC0, &unk_268C5BAC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_268C573C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AC0, &unk_268C5BAC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_268C574B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_268C574E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AB8, &qword_268C5BAB8);
  result = sub_268C5A980();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_268C5AA70();

    sub_268C5A830();
    result = sub_268C5AA90();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_268C5AA50() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

size_t sub_268C57678(size_t a1, int64_t a2, char a3)
{
  result = sub_268C57698(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_268C57698(size_t result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AB0, &qword_268C5BAB0);
  v10 = *(sub_268C5A780() - 8);
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
  v15 = *(sub_268C5A780() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_268C56DEC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_268C57850(uint64_t a1)
{
  v2 = type metadata accessor for ReaderNLv3Intent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C578AC(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268C5A800();

  return v3;
}

uint64_t sub_268C5791C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268C57964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_0()
{
  v2 = (*(v1 - 152) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v0;
  v4 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  result = v1;
  *(v2 - 280) = *(v0 + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_15_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  result = v0;
  v3 = *(v1 - 224);
  v4 = *(v1 - 216);
  v5 = *(v1 - 208);
  return result;
}

uint64_t sub_268C57AD8()
{
  sub_268C57C2C();
  result = sub_268C5A960();
  qword_2802D4558 = result;
  return result;
}

uint64_t sub_268C57B3C()
{
  v0 = sub_268C5A750();
  __swift_allocate_value_buffer(v0, qword_2802D4560);
  __swift_project_value_buffer(v0, qword_2802D4560);
  if (qword_2802D3428 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D4558;
  return sub_268C5A760();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_268C57C2C()
{
  result = qword_2802D3AC8;
  if (!qword_2802D3AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802D3AC8);
  }

  return result;
}

uint64_t sub_268C57C70(char a1, char a2)
{
  v3 = sub_268C547F4(a1);
  v5 = v4;
  if (v3 == sub_268C547F4(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_268C5AA50();
  }

  return v8 & 1;
}

uint64_t sub_268C57CF4(unsigned __int8 a1, char a2)
{
  v2 = 1684104562;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684104562;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x65756E69746E6F63;
      break;
    case 2:
      v5 = 1869901671;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x65726975716E69;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x7463656C6573;
      break;
    case 5:
      v5 = 0x6B63614270696B73;
      v3 = 0xEC00000064726177;
      break;
    case 6:
      v5 = 0x77726F4670696B73;
      v3 = 0xEB00000000647261;
      break;
    case 7:
      v5 = 1886352499;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x65756E69746E6F63;
      break;
    case 2:
      v2 = 1869901671;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x65726975716E69;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x7463656C6573;
      break;
    case 5:
      v2 = 0x6B63614270696B73;
      v6 = 0xEC00000064726177;
      break;
    case 6:
      v2 = 0x77726F4670696B73;
      v6 = 0xEB00000000647261;
      break;
    case 7:
      v2 = 1886352499;
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
    v8 = sub_268C5AA50();
  }

  return v8 & 1;
}

uint64_t sub_268C57F24(char a1)
{
  sub_268C5AA70();
  sub_268C58558(a1);
  sub_268C5A830();

  return sub_268C5AA90();
}

uint64_t sub_268C57F88()
{
  sub_268C5A830();
}

uint64_t sub_268C580AC(uint64_t a1, char a2)
{
  sub_268C5AA70();
  sub_268C58558(a2);
  sub_268C5A830();

  return sub_268C5AA90();
}

uint64_t ReaderNLv3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268C5A680();
  v5 = OUTLINED_FUNCTION_4_0(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t ReaderNLv3Intent.read.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 114;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE400000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t sub_268C58238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B10, &qword_268C5BBC0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268C5A530();
  qword_2802D3AD0 = result;
  return result;
}

uint64_t sub_268C582A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B08, "H\n");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268C5BAD0;
  if (qword_2802D3438 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D3AD0;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B10, &qword_268C5BBC0);
  *(v0 + 64) = sub_268C592CC(&qword_2802D3B18, &qword_2802D3B10, &qword_268C5BBC0);
  *(v0 + 32) = v1;
  v2 = sub_268C5A520();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  result = sub_268C5A510();
  qword_2802D3AD8 = result;
  return result;
}

uint64_t ReaderNLv3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268C5A680();
  v4 = OUTLINED_FUNCTION_4_0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ReaderNLv3Intent.intent.setter(uint64_t a1)
{
  v3 = sub_268C5A680();
  v4 = OUTLINED_FUNCTION_4_0(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t ReaderNLv3Intent.domainOntologyNode.getter()
{
  if (qword_2802D3440 != -1)
  {
    swift_once();
  }
}

uint64_t sub_268C58500()
{
  v0 = sub_268C5A9D0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268C58558(char a1)
{
  result = 1684104562;
  switch(a1)
  {
    case 1:
      result = 0x65756E69746E6F63;
      break;
    case 2:
      result = 1869901671;
      break;
    case 3:
      result = 0x65726975716E69;
      break;
    case 4:
      result = 0x7463656C6573;
      break;
    case 5:
      result = 0x6B63614270696B73;
      break;
    case 6:
      result = 0x77726F4670696B73;
      break;
    case 7:
      result = 1886352499;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C5866C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268C58500();
  *a2 = result;
  return result;
}

uint64_t sub_268C5869C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268C58558(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for ReaderNLv3Intent()
{
  result = qword_2802D3AF0;
  if (!qword_2802D3AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_268C58714@<X0>(void *a1@<X8>)
{
  result = sub_268C5854C();
  *a1 = result;
  return result;
}

uint64_t sub_268C5873C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C593C4();
  v5 = sub_268C59418();
  v6 = sub_268C5946C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t ReaderNLv3Intent.continue.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 99;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE800000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.goto.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 103;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE400000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.inquire.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 105;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE700000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.select.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 115;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE600000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.skipBackward.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v13)
  {
    v10 = 0;
  }

  else
  {
    v10 = 119;
    v11 = sub_268C58558(v9);
    v13 = v11 == 0x6B63614270696B73 && v12 == 0xEC00000064726177;
    if (v13)
    {

      v10 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.skipForward.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v13)
  {
    v10 = 0;
  }

  else
  {
    v10 = 97;
    v11 = sub_268C58558(v9);
    v13 = v11 == 0x77726F4670696B73 && v12 == 0xEB00000000647261;
    if (v13)
    {

      v10 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.stop.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  type metadata accessor for ReaderNLv3Intent();
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 115;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE400000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t sub_268C58DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268C5A680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_268C58E20(uint64_t a1)
{
  v2 = sub_268C59060(&qword_2802D3B00);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268C58E88(uint64_t a1)
{
  v2 = sub_268C59060(&qword_2802D3B00);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268C58EE0(uint64_t a1)
{
  v2 = sub_268C59060(&qword_2802D3B00);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268C58F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C5A680();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268C58FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C5A680();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_268C58FF4()
{
  result = sub_268C5A680();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268C59060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReaderNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReaderNLv3Intent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReaderNLv3Intent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x268C591F8);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268C59234()
{
  result = qword_2802D3B20;
  if (!qword_2802D3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B20);
  }

  return result;
}

uint64_t sub_268C592CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_268C59318()
{
  result = qword_2802D3B38;
  if (!qword_2802D3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B38);
  }

  return result;
}

unint64_t sub_268C59370()
{
  result = qword_2802D3B40;
  if (!qword_2802D3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B40);
  }

  return result;
}

unint64_t sub_268C593C4()
{
  result = qword_2802D3B48;
  if (!qword_2802D3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B48);
  }

  return result;
}

unint64_t sub_268C59418()
{
  result = qword_2802D3B50;
  if (!qword_2802D3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B50);
  }

  return result;
}

unint64_t sub_268C5946C()
{
  result = qword_2802D3B58;
  if (!qword_2802D3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_0(unint64_t *a1)
{

  return sub_268C59060(a1);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{

  return MEMORY[0x2821C1128](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_6_0()
{
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_268C5AA50();
}

uint64_t ReaderNLv4Intent.init(userDialogAct:)(uint64_t a1)
{
  v3 = sub_268C5A750();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11 || (v12 = [v11 task], v13 = sub_268C5A950(), v12, !v13))
  {
    if (qword_2802D3430 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v1, qword_2802D4560);
    (*(v6 + 16))(v10, v18, v1);
    v19 = sub_268C5A740();
    v20 = sub_268C5A930();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_268C47000, v19, v20, "Unable to convert USO serialized graph to USO graph Siri NL, no initial task", v21, 2u);
      MEMORY[0x26D6299D0](v21, -1, -1);
    }

    (*(v6 + 8))(v10, v1);
    return a1;
  }

  v15 = MEMORY[0x26D629020](v14);

  result = sub_268C59FC0(v15);
  if (!result)
  {
LABEL_7:

    return a1;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D629450](0, v15);
    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t ReaderNLv4Intent.shouldStartScreenReader.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B60, &qword_268C5BD10);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_268C5A660();
  v13 = OUTLINED_FUNCTION_1_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B68, &qword_268C5BD18);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v45 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B70, &qword_268C5BD20);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v45 - v29;
  if (!a3)
  {
    goto LABEL_11;
  }

  v31 = sub_268C5A670();
  v32 = sub_268C59F70(0x69746E4572657375, 0xEC00000073656974, v31);

  if (!v32)
  {
    goto LABEL_11;
  }

  result = sub_268C59FC0(v32);
  if (!result)
  {

    goto LABEL_11;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x26D629450](0, v32);
LABEL_7:

    if (v34)
    {

      sub_268C5A690();

      v35 = sub_268C5A630();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v35);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v35);
      v36 = sub_268C5A640();
      sub_268C50968(v9, &qword_2802D3B60, &qword_268C5BD10);
      sub_268C50968(v11, &qword_2802D3B60, &qword_268C5BD10);
      (*(v15 + 8))(v19, v3);
      sub_268C59E08(v36, v23);

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B78, &qword_268C5BD28);
      if (__swift_getEnumTagSinglePayload(v23, 1, v37) != 1)
      {
        (*(v15 + 32))(v30, &v23[*(v37 + 48)], v3);
        __swift_storeEnumTagSinglePayload(v30, 0, 1, v3);
        v43 = sub_268C5A620();
        OUTLINED_FUNCTION_4_0(v43);
        (*(v44 + 8))(v23);
LABEL_12:
        sub_268C505B8(v30, v28, &qword_2802D3B70, &qword_268C5BD20);
        if (__swift_getEnumTagSinglePayload(v28, 1, v3) == 1)
        {
          sub_268C50968(v28, &qword_2802D3B70, &qword_268C5BD20);
        }

        else
        {
          v38 = sub_268C5A650();
          (*(v15 + 8))(v28, v3);
          if (v38[2])
          {
            v40 = v38[4];
            v39 = v38[5];

            if (v40 == 0x6E6565726373 && v39 == 0xE600000000000000)
            {

              v42 = 1;
            }

            else
            {
              v42 = sub_268C5AA50();
            }

            goto LABEL_22;
          }
        }

        v42 = 0;
LABEL_22:
        sub_268C50968(v30, &qword_2802D3B70, &qword_268C5BD20);
        return v42 & 1;
      }

      sub_268C50968(v23, &qword_2802D3B68, &qword_268C5BD18);
    }

LABEL_11:
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v3);
    goto LABEL_12;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v32 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t ReaderNLv4Intent.read.getter()
{
  sub_268C5A590();
  sub_268C505B8(&v3, &v1, &unk_2802D3B80, &qword_268C5BD30);
  if (*(&v2 + 1))
  {
    sub_268C5A5B0();
    if (OUTLINED_FUNCTION_2_3())
    {

      sub_268C50968(&v3, &unk_2802D3B80, &qword_268C5BD30);
      return 1;
    }
  }

  else
  {
    sub_268C50968(&v1, &unk_2802D3B80, &qword_268C5BD30);
  }

  v1 = v3;
  v2 = v4;
  if (*(&v4 + 1))
  {
    sub_268C5A5E0();
    if (OUTLINED_FUNCTION_2_3())
    {

      return 1;
    }
  }

  else
  {
    sub_268C50968(&v1, &unk_2802D3B80, &qword_268C5BD30);
  }

  return 0;
}

uint64_t sub_268C59E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B78, &qword_268C5BD28);
  v6 = v5;
  if (v4)
  {
    sub_268C505B8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_2802D3B78, &qword_268C5BD28);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_268C59EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_268C5A780();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_268C59F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268C5A088(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_268C59FC0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_268C59FF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_268C5A038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_268C5A088(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_268C5AA70();
  sub_268C5A830();
  v6 = sub_268C5AA90();

  return sub_268C5A100(a1, a2, v6);
}

unint64_t sub_268C5A100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268C5AA50() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_dynamicCast();
}