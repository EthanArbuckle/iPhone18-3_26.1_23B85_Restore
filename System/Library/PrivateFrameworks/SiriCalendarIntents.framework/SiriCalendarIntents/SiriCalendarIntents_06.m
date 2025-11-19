uint64_t sub_2665C8A3C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v8 = v7;
  *(v10 + 104) = v9;

  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2665C8B48()
{
  v1 = v0[13];
  v2 = v0[9];
  [v2 setSetDateTimeRange_];

  v3 = sub_2665D9924();
  [v2 setSetLocation_];

  v5 = v0[9];
  v4 = v0[10];

  OUTLINED_FUNCTION_1_27();
  sub_2665C8290(v4, v6, sub_2665C90D4);
  OUTLINED_FUNCTION_6();
  sub_2665C8E14();
  v8 = v7;

  v9 = OUTLINED_FUNCTION_2_24();

  return v10(v9, v8);
}

uint64_t sub_2665C8C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_2665C8CEC;

  return sub_2665C8518(a1, a2, 0, 0, a5);
}

uint64_t sub_2665C8CEC()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_2_24();

  return v7(v6, v2);
}

uint64_t sub_2665C8DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_2665C7ECC();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_2665C8E14()
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v0 = sub_2665EFC38();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = v0;
  v3 = sub_26666C148();
  v4 = sub_26666C618();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v21 = v2;
    v7 = v2;
    v8 = [v7 description];
    v9 = sub_26666C308();
    v11 = v10;

    v12 = sub_2665BFC90(v9, v11, &v22);

    *(v5 + 4) = v12;
    v2 = v21;
    _os_log_impl(&dword_266549000, v3, v4, "[UpdateEventIntentWrapping] Parsed Intent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x266789690](v6, -1, -1);
    MEMORY[0x266789690](v5, -1, -1);
  }

  v13 = sub_26666C148();
  v14 = sub_26666C618();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    sub_26659A3E0();
    v17 = sub_26666C558();
    v19 = sub_2665BFC90(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_266549000, v13, v14, "[UpdateEventIntentWrapping] Parameters to Update: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x266789690](v16, -1, -1);
    MEMORY[0x266789690](v15, -1, -1);
  }

  return v2;
}

uint64_t sub_2665C91BC()
{
  result = v0;
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_2665C91F8(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  v2 = a1[21];

  *(v1 + 29) = v2;
  return v1;
}

double sub_2665C9250@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1 == OUTLINED_FUNCTION_3_23() && a2 == v7;
  if (v9 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v10;
    return result;
  }

  v11 = a1 == 0xD000000000000012 && 0x800000026667CFE0 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = v3[25];
    goto LABEL_7;
  }

  v13 = a1 == OUTLINED_FUNCTION_4_24() && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = v3[26];
    goto LABEL_7;
  }

  v14 = a1 == 0xD000000000000010 && 0x800000026667D010 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = v3[27];
    goto LABEL_7;
  }

  v15 = a1 == 0xD000000000000015 && 0x800000026667D030 == a2;
  if (v15 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = v3[28];
    goto LABEL_7;
  }

  v16 = a1 == 0xD000000000000014 && 0x800000026667D050 == a2;
  if (v16 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = v3[29];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_2665C93B0()
{
  v0 = sub_26666C958();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2665C9404()
{
  result = OUTLINED_FUNCTION_3_23();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_24();
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2665C94D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2666043C8();
}

uint64_t sub_2665C94FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2665C93B0();
  *a2 = result;
  return result;
}

uint64_t sub_2665C952C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2665C9404();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2665C9574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2665C93FC();
  *a1 = result;
  return result;
}

uint64_t sub_2665C95A8(uint64_t a1)
{
  v2 = sub_2665C9C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665C95E4(uint64_t a1)
{
  v2 = sub_2665C9C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665C9620()
{

  return MEMORY[0x2821FE8D8](v0, 30, 7);
}

uint64_t sub_2665C967C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E6B8, &qword_266675088);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v22[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665C9C08();
  sub_26666CBE8();
  v15 = v3[24];
  v22[15] = 0;
  OUTLINED_FUNCTION_1_13();
  if (!v2)
  {
    v16 = v3[25];
    v22[14] = 1;
    OUTLINED_FUNCTION_1_13();
    v17 = v3[26];
    v22[13] = 2;
    OUTLINED_FUNCTION_1_13();
    v18 = v3[27];
    v22[12] = 3;
    OUTLINED_FUNCTION_1_13();
    v19 = v3[28];
    v22[11] = 4;
    OUTLINED_FUNCTION_1_13();
    v20 = v3[29];
    v22[10] = 5;
    OUTLINED_FUNCTION_1_13();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_2665C982C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_2665C98A0(a1);
  return v2;
}

uint64_t sub_2665C98A0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E6A8, &qword_266675080);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v17 - v12;
  *(v1 + 16) = 0;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665C9C08();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetWindowOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8() & 1;
    v22 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8() & 1;
    v21 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_1_8() & 1;
    v20 = 3;
    *(v1 + 27) = OUTLINED_FUNCTION_1_8() & 1;
    v19 = 4;
    *(v1 + 28) = OUTLINED_FUNCTION_1_8() & 1;
    v18 = 5;
    v16 = OUTLINED_FUNCTION_1_8();
    (*(v8 + 8))(v13, v5);
    *(v3 + 29) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2665C9B10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665C982C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665C9BC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetWindowOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2665C9C08()
{
  result = qword_28007E6B0;
  if (!qword_28007E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarResultSetWindowOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarResultSetWindowOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665C9DC4()
{
  result = qword_28007E6C0;
  if (!qword_28007E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6C0);
  }

  return result;
}

unint64_t sub_2665C9E1C()
{
  result = qword_28007E6C8;
  if (!qword_28007E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6C8);
  }

  return result;
}

unint64_t sub_2665C9E74()
{
  result = qword_28007E6D0;
  if (!qword_28007E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6D0);
  }

  return result;
}

uint64_t sub_2665C9F14(uint64_t a1)
{
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);

  v3 = sub_26666C148();
  v4 = sub_26666C5E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_21();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136315138;
    v7 = sub_2665764B0();
    v8 = MEMORY[0x2667887F0](a1, v7);
    v10 = sub_2665BFC90(v8, v9, &v48);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_266549000, v3, v4, "#EKRecurrenceDayOfWeek array: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  result = sub_2665C485C(a1);
  if (result)
  {
    v13 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v14 = 0;
    v15 = 0;
    v47 = a1 & 0xC000000000000001;
    *&v12 = 136315138;
    v44 = v12;
    v45 = result;
    do
    {
      if (v47)
      {
        v16 = MEMORY[0x266788B60](v15, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = sub_26666C148();
      v19 = sub_26666C5E8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_21();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_266549000, v18, v19, "#EKRecurrenceDayOfWeek single: %@", v20, 0xCu);
        sub_26658FD5C(v21);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      if (qword_28007CE20 != -1)
      {
        swift_once();
      }

      v23 = qword_2800957C8;
      v24 = [v17 dayOfTheWeek];
      if (*(v23 + 16) && (v25 = sub_2665C580C(v24), (v26 & 1) != 0))
      {
        v27 = *(*(v23 + 56) + 8 * v25);
        v28 = sub_26666C148();
        v29 = sub_26666C5E8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = OUTLINED_FUNCTION_21();
          v46 = v27;
          v31 = swift_slowAlloc();
          *v30 = v44;
          v48 = v31;
          type metadata accessor for INDayOfWeekOptions(0);
          v32 = sub_26666C318();
          v34 = a1;
          v35 = sub_2665BFC90(v32, v33, &v48);
          v13 = v45;

          *(v30 + 4) = v35;
          a1 = v34;
          _os_log_impl(&dword_266549000, v28, v29, "#EKRecurrenceDayOfWeek mappedWeekday: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          v27 = v46;
          OUTLINED_FUNCTION_4_1();
          OUTLINED_FUNCTION_4_1();
        }

        v14 |= v27;
      }

      else
      {
      }

      ++v15;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
  }

  v36 = sub_26666C148();
  v37 = sub_26666C5E8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_21();
    v39 = v14;
    v40 = swift_slowAlloc();
    v48 = v40;
    *v38 = 136315138;
    type metadata accessor for INDayOfWeekOptions(0);
    v41 = sub_26666C318();
    v43 = sub_2665BFC90(v41, v42, &v48);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_266549000, v36, v37, "#EKRecurrenceDayOfWeek dayOfWeekOptions: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v14 = v39;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  return v14;
}

uint64_t sub_2665CA3A8()
{
  type metadata accessor for EKWeekday(0);
  type metadata accessor for INDayOfWeekOptions(0);
  sub_2665CA400();
  result = sub_26666C258();
  qword_2800957C8 = result;
  return result;
}

unint64_t sub_2665CA400()
{
  result = qword_28007E6D8;
  if (!qword_28007E6D8)
  {
    type metadata accessor for EKWeekday(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E6D8);
  }

  return result;
}

uint64_t sub_2665CA458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2665CA5A4;

  return v17(a1, a2, a3, a3, a4, a5, a6);
}

uint64_t sub_2665CA5A4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_2665CA6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2665CA7F0;

  return (v15)(a1, a2, 0, 0, a3, a4, a5);
}

uint64_t sub_2665CA7F4(void *a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v6 = OUTLINED_FUNCTION_3_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for CalendarEventConcept.Builder(0);
  OUTLINED_FUNCTION_7(v14);
  v15 = sub_2666648F4();
  sub_2665EF53C(a1);
  if (v16)
  {
    sub_26666C358();

    v17 = sub_26666BDA8();
    v18 = 0;
  }

  else
  {
    v17 = sub_26666BDA8();
    v18 = 1;
  }

  v19 = 1;
  __swift_storeEnumTagSinglePayload(v13, v18, 1, v17);
  v20 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier;
  swift_beginAccess();
  sub_2665BE6B0(v13, v15 + v20);
  swift_endAccess();
  sub_266566494(v13, &unk_28007D130, &unk_266671DF0);
  sub_2665EF548(a1);
  if (v21)
  {
    sub_26666C358();

    v19 = 0;
  }

  v22 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v2, v19, 1, v22);
  v23 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title;
  swift_beginAccess();
  sub_2665BE6B0(v2, v15 + v23);
  swift_endAccess();
  sub_266566494(v2, &unk_28007D130, &unk_266671DF0);
  sub_26666BB78();
  v24 = a1;
  v25 = sub_2665CB618(v24);
  sub_2666649C8(v25);

  sub_26666BD58();
  v26 = sub_2665CAF44([v24 location]);
  sub_2666649E0(v26);

  v27 = sub_2665EC9BC(a2);
  v28 = sub_266664A34(v27);

  *(v28 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isAllDay) = sub_2665EC938() & 1;
  v29 = [v24 dateTimeRange];
  if (v29)
  {
    v30 = v29;
    sub_2665D3034();
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  *(v28 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_startAndEndEqual) = v32 & 1;
  type metadata accessor for CalendarEventRecurrence();
  v33 = v24;
  v34 = sub_2665CAE4C([v33 dateTimeRange]);

  v35 = sub_2666649D4(v34);

  v36 = type metadata accessor for CalendarEventConcept(0);
  OUTLINED_FUNCTION_7(v36);
  v37 = sub_266664B2C(v35);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v37;
}

uint64_t sub_2665CAB68(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v6 = OUTLINED_FUNCTION_3_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v18 = sub_26666BB58();
  OUTLINED_FUNCTION_7(v18);
  sub_26666BB48();
  v19 = [a1 startDate];
  if (v19)
  {
    v20 = v19;
    sub_266668CE8();

    v21 = sub_266668D38();
    v22 = 0;
  }

  else
  {
    v21 = sub_266668D38();
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v22, 1, v21);
  sub_266557CE4(v3, v17);
  sub_266668D38();
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_266566494(v17, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    sub_266668CC8();
    OUTLINED_FUNCTION_2_25();
    (*(v23 + 8))(v17, v21);
  }

  sub_26666BB38();

  v24 = [a1 endDate];
  if (v24)
  {
    v25 = v24;
    sub_266668CE8();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v2, v26, 1, v21);
  sub_266557CE4(v2, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v21) == 1)
  {
    sub_266566494(v1, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    sub_266668CC8();
    OUTLINED_FUNCTION_2_25();
    (*(v27 + 8))(v1, v21);
  }

  sub_26666BB28();

  v28 = sub_26666BB68();

  return v28;
}

uint64_t sub_2665CAE4C(void *a1)
{
  v2 = [a1 recurrenceRule];
  type metadata accessor for CalendarEventRecurrence.Builder();
  swift_initStackObject();
  v3 = sub_26663E658();
  if (v2)
  {
    *(v3 + 16) = [v2 interval];
    *(v3 + 24) = 0;
    *(v3 + 32) = [v2 frequency];
    *(v3 + 40) = 0;
    sub_2665CB964([v2 weeklyRecurrenceDays]);
    v4 = *(v3 + 48);
    *(v3 + 48) = v5;
  }

  type metadata accessor for CalendarEventRecurrence();
  swift_allocObject();
  v6 = sub_26663E6D4(v3);

  return v6;
}

uint64_t sub_2665CAF44(void *a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v7 = OUTLINED_FUNCTION_3_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_10_5();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v73 - v16;
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_6_12();
  v21 = MEMORY[0x28223BE20](v19, v20);
  v78 = &v73 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v73 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v73 - v29;
  MEMORY[0x28223BE20](v28, v31);
  OUTLINED_FUNCTION_0_27();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v34, v35);
  v39 = &v73 - v38;
  if (!a1)
  {
    return 0;
  }

  v76 = v37;
  v77 = v1;
  v73 = v36;
  v40 = sub_26666BC88();
  OUTLINED_FUNCTION_7(v40);
  v41 = a1;
  sub_26666BC78();
  sub_2666111C8(v41);
  v75 = v17;
  if (v42)
  {
    sub_26666C358();

    v43 = sub_26666BDA8();
    v44 = 0;
  }

  else
  {
    v43 = sub_26666BDA8();
    v44 = 1;
  }

  v46 = 1;
  __swift_storeEnumTagSinglePayload(v39, v44, 1, v43);
  sub_26666BC68();

  sub_266566494(v39, &unk_28007D130, &unk_266671DF0);
  sub_2666111D4(v41);
  v74 = v4;
  if (v47)
  {
    sub_26666C358();

    v46 = 0;
  }

  sub_26666BDA8();
  v48 = 1;
  OUTLINED_FUNCTION_3_24(v3, v46);
  sub_26666BBC8();

  sub_266566494(v3, &unk_28007D130, &unk_266671DF0);
  sub_2666111EC(v41);
  if (v49)
  {
    sub_26666C358();

    v48 = 0;
  }

  v50 = 1;
  OUTLINED_FUNCTION_3_24(v2, v48);
  sub_26666BBD8();

  sub_266566494(v2, &unk_28007D130, &unk_266671DF0);
  sub_2666111E0(v41);
  if (v51)
  {
    sub_26666C358();

    v50 = 0;
  }

  v52 = v74;
  v53 = 1;
  OUTLINED_FUNCTION_3_24(v30, v50);
  sub_26666BBE8();

  sub_266566494(v30, &unk_28007D130, &unk_266671DF0);
  sub_266611210(v41);
  if (v54)
  {
    sub_26666C358();

    v53 = 0;
  }

  v55 = v76;
  v56 = v78;
  v57 = 1;
  OUTLINED_FUNCTION_3_24(v26, v53);
  sub_26666BC08();

  sub_266566494(v26, &unk_28007D130, &unk_266671DF0);
  sub_2665816B4(v41, &selRef_ISOcountryCode);
  if (v58)
  {
    sub_26666C358();

    v57 = 0;
  }

  v59 = v75;
  v60 = 1;
  OUTLINED_FUNCTION_3_24(v56, v57);
  sub_26666BBF8();

  sub_266566494(v56, &unk_28007D130, &unk_266671DF0);
  sub_26661121C(v41);
  if (v61)
  {
    sub_26666C358();

    v60 = 0;
  }

  v62 = 1;
  OUTLINED_FUNCTION_3_24(v52, v60);
  sub_26666BC18();

  sub_266566494(v52, &unk_28007D130, &unk_266671DF0);
  sub_2666111F8(v41);
  if (v63)
  {
    sub_26666C358();

    v62 = 0;
  }

  v64 = 1;
  OUTLINED_FUNCTION_3_24(v59, v62);
  sub_26666BC38();

  sub_266566494(v59, &unk_28007D130, &unk_266671DF0);
  sub_266611204(v41);
  if (v65)
  {
    sub_26666C358();

    v64 = 0;
  }

  OUTLINED_FUNCTION_3_24(v55, v64);
  sub_26666BC48();

  sub_266566494(v55, &unk_28007D130, &unk_266671DF0);
  sub_2665816B4(v41, &selRef_fullThoroughfare);
  if (v66)
  {
    v67 = v73;
    sub_26666C358();

    OUTLINED_FUNCTION_3_24(v67, 0);
    sub_26666BC28();

    sub_266566494(v67, &unk_28007D130, &unk_266671DF0);
  }

  v68 = sub_26666BBB8();
  OUTLINED_FUNCTION_7(v68);
  sub_26666BBA8();
  sub_26666BC58();
  sub_26666BB88();

  v69 = sub_26666BB98();

  v70 = sub_26666BD38();
  OUTLINED_FUNCTION_7(v70);
  sub_26666BD28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_26666E050;
  *(v71 + 32) = v69;

  sub_26666BD18();

  v45 = sub_26666BD48();

  return v45;
}

uint64_t sub_2665CB618(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_0_27();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v33 - v17;
  v19 = sub_26666BB58();
  OUTLINED_FUNCTION_7(v19);
  sub_26666BB48();
  v20 = [a1 dateTimeRange];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 startDate];

    if (v22)
    {
      sub_266668CE8();

      v23 = sub_266668D38();
      v24 = 0;
    }

    else
    {
      v23 = sub_266668D38();
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v15, v24, 1, v23);
    sub_266557CE4(v15, v18);
    sub_266668D38();
    if (__swift_getEnumTagSinglePayload(v18, 1, v23) == 1)
    {
      sub_266566494(v18, &qword_28007D140, &qword_26666F140);
    }

    else
    {
      sub_266668CC8();
      (*(*(v23 - 8) + 8))(v18, v23);
    }
  }

  sub_26666BB38();

  v25 = [a1 dateTimeRange];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 endDate];

    if (v27)
    {
      sub_266668CE8();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v2, v28, 1, v29);
    sub_266557CE4(v2, v1);
    if (__swift_getEnumTagSinglePayload(v1, 1, v29) == 1)
    {
      sub_266566494(v1, &qword_28007D140, &qword_26666F140);
    }

    else
    {
      sub_266668CC8();
      OUTLINED_FUNCTION_2_25();
      (*(v30 + 8))(v1, v29);
    }
  }

  sub_26666BB28();

  v31 = sub_26666BB68();

  return v31;
}

int8x8_t sub_2665CB964(unsigned int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E6E0, &qword_266675258);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_266675240;
  *(v2 + 32) = (a1 & 0x40) != 0;
  *(v2 + 33) = a1 & 1;
  v3 = *&vshl_u16((*&vdup_n_s16(a1) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  result = vuzp1_s8(v3, v3);
  *(v2 + 34) = result.i32[0];
  *(v2 + 38) = (a1 & 0x20) != 0;
  return result;
}

uint64_t sub_2665CB9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26666BCE8();
  OUTLINED_FUNCTION_7(v4);
  sub_26666BCD8();
  sub_266668CC8();
  sub_26666BCC8();

  if (a2)
  {

    sub_26666BCB8();
  }

  v5 = sub_26666BCF8();

  v6 = sub_266668D38();
  OUTLINED_FUNCTION_0_5(v6);
  (*(v7 + 8))(a1);
  return v5;
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2665CBB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_266668D98();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665CBBEC, 0, 0);
}

id sub_2665CBBEC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_266668D88();
  *(v0 + 16) = sub_266668D78();
  *(v0 + 24) = v5;
  *(v0 + 32) = 45;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 95;
  *(v0 + 56) = 0xE100000000000000;
  v24 = sub_266595F88();
  v23 = MEMORY[0x277D837D0];
  v6 = sub_26666C6F8();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v10 = result;
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = type metadata accessor for StringLocalizer();
    v14 = sub_2665CBE50(v12, v11, 0x617A696C61636F4CLL, 0xEB00000000656C62, *(v4 + *(v13 + 20)), v6, v8, v10);
    v16 = v15;

    v17 = *(v0 + 104);
    if (v16)
    {

      v18 = *(v0 + 8);

      return v18(v14, v16);
    }

    else
    {
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);
      sub_2665CBF28();
      swift_allocError();
      *v21 = v20;
      v21[1] = v19;
      v21[2] = 0x617A696C61636F4CLL;
      v21[3] = 0xEB00000000656C62;
      v21[4] = v6;
      v21[5] = v8;
      swift_willThrow();

      v22 = *(v0 + 8);

      return v22();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2665CBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_26666C2F8();
  v11 = sub_26666C2F8();
  v12 = sub_26666C2F8();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_26666C308();

  return v14;
}

unint64_t sub_2665CBF28()
{
  result = qword_28007E6E8[0];
  if (!qword_28007E6E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28007E6E8);
  }

  return result;
}

uint64_t sub_2665CBF7C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v14 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = swift_checkMetadataState();
    if (v8 > 0x3F)
    {
      return v7;
    }

    else
    {
      v15 = *(v7 - 8) + 64;
      v12 = *(a1 + 96);
      v13 = *(a1 + 112);
      v9 = type metadata accessor for PromptWrapperFlow.State();
      v4 = v9;
      if (v10 <= 0x3F)
      {
        v16 = *(v9 - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return v4;
}

void sub_2665CC0BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 96);
  v36 = *(*v2 + 80);
  v37 = v5;
  v38 = v4;
  v6 = type metadata accessor for PromptWrapperFlow.State();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - v14;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v16 = sub_26666C168();
  __swift_project_value_buffer(v16, qword_28156D7E8);
  v17 = v7[2];
  v17(v15, a1, v6);
  swift_retain_n();
  v18 = sub_26666C148();
  v19 = sub_26666C618();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v20 = 136446466;
    v17(v12, v15, v6);
    v33 = v19;
    v21 = v7[1];
    v21(v15, v6);
    v32 = v18;
    v22 = sub_2665CDC28(v6);
    v24 = v23;
    v21(v12, v6);
    v25 = sub_2665BFC90(v22, v24, &v35);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    v26 = *(*v2 + 136);
    swift_beginAccess();
    v17(v12, v2 + v26, v6);

    v27 = sub_2665CDC28(v6);
    v29 = v28;

    v21(v12, v6);
    v30 = sub_2665BFC90(v27, v29, &v35);

    *(v20 + 14) = v30;
    v18 = v32;
    _os_log_impl(&dword_266549000, v32, v33, "[PromptWrapperFlow] transitioned from %{public}s to %{public}s.", v20, 0x16u);
    v31 = v34;
    swift_arrayDestroy();
    MEMORY[0x266789690](v31, -1, -1);
    MEMORY[0x266789690](v20, -1, -1);
  }

  else
  {

    (v7[1])(v15, v6);
  }
}

uint64_t sub_2665CC46C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  v18[2] = *(*v1 + 80);
  v18[3] = v5;
  v19 = v4;
  v6 = type metadata accessor for PromptWrapperFlow.State();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = v18 - v13;
  v15 = *(v3 + 136);
  OUTLINED_FUNCTION_23_4();
  (*(v9 + 16))(v14, v1 + v15, v6);
  swift_beginAccess();
  (*(v9 + 24))(v1 + v15, a1, v6);
  swift_endAccess();
  sub_2665CC0BC(v14);
  v16 = *(v9 + 8);
  v16(a1, v6);
  return (v16)(v14, v6);
}

uint64_t sub_2665CC60C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 96);
  v36 = *(v5 + 80);
  v38 = v36;
  v39 = v6;
  v35 = *(v5 + 104);
  v40 = v35;
  v7 = type metadata accessor for PromptWrapperFlow.State();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_8_10();
  v34 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v33 - v17;
  v19 = *(v4 + 136);
  OUTLINED_FUNCTION_23_4();
  v20 = *(v10 + 16);
  v20(v18, &v2[v19], v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_266669A28();
    v21 = sub_266669778();
    OUTLINED_FUNCTION_18_2(v21);
    return (*(v22 + 32))(a1, v18);
  }

  else
  {
    v33 = a1;
    (*(v10 + 8))(v18, v7);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v24 = sub_26666C168();
    __swift_project_value_buffer(v24, qword_28156D7E8);

    v25 = sub_26666C148();
    v26 = sub_26666C608();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      v20(v34, &v2[v19], v7);
      swift_getWitnessTable();
      v29 = sub_26666C328();
      v31 = sub_2665BFC90(v29, v30, &v37);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_266549000, v25, v26, "exitValue called when flow is in an invalid state %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v32 = &v2[*(*v2 + 120)];
    return sub_266669518();
  }
}

uint64_t sub_2665CC960(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  OUTLINED_FUNCTION_9_15();
  v6 = v5;
  v7 = sub_266669E18();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v58 = v9;
  v59 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9_15();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_9_15();
  v18 = *(v17 + 104);
  v19 = *(v4 + 112);
  v62[1] = v16;
  v61 = *(v6 + 88);
  v63 = v61;
  v64 = v18;
  v65 = v19;
  v20 = type metadata accessor for PromptWrapperFlow.State();
  v21 = OUTLINED_FUNCTION_3_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21, v26);
  OUTLINED_FUNCTION_8_10();
  v60 = v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v57 - v30;
  OUTLINED_FUNCTION_9_15();
  v33 = *(v32 + 136);
  OUTLINED_FUNCTION_23_4();
  (*(v23 + 16))(v31, &v2[v33], v20);
  LODWORD(v33) = swift_getEnumCaseMultiPayload();
  (*(v23 + 8))(v31, v20);
  if (v33 != 2)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v49 = sub_26666C168();
    __swift_project_value_buffer(v49, qword_28156D7E8);
    v50 = sub_26666C148();
    v51 = sub_26666C618();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_17;
    }

    v52 = OUTLINED_FUNCTION_20();
    *v52 = 0;
    v53 = "[PromptWrapperFlow] Got input when not running wrapped flow. Ignoring...";
    goto LABEL_16;
  }

  v34 = &v2[*(*v2 + 120)];
  if ((sub_2666694F8() & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v54 = sub_26666C168();
    __swift_project_value_buffer(v54, qword_28156D7E8);
    v50 = sub_26666C148();
    v51 = sub_26666C618();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_17;
    }

    v52 = OUTLINED_FUNCTION_20();
    *v52 = 0;
    v53 = "[PromptWrapperFlow] Wrapped flow does not want to accept input. Ignoring...";
LABEL_16:
    _os_log_impl(&dword_266549000, v50, v51, v53, v52, 2u);
    OUTLINED_FUNCTION_4_1();
LABEL_17:

    return 0;
  }

  v35 = *(*v2 + 128);
  v36 = (*(v19 + 8))(a1, v61, v19);
  if (v36)
  {
    v37 = v36;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v38 = sub_26666C168();
    __swift_project_value_buffer(v38, qword_28156D7E8);
    v39 = v58;
    v40 = v59;
    (*(v58 + 16))(v14, a1, v59);
    v41 = sub_26666C148();
    v42 = sub_26666C618();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *&v61 = swift_slowAlloc();
      v62[0] = v61;
      *v43 = 136315138;
      sub_2665B934C();
      v44 = sub_26666CAA8();
      v45 = v39;
      v47 = v46;
      (*(v45 + 8))(v14, v40);
      v48 = sub_2665BFC90(v44, v47, v62);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_266549000, v41, v42, "[PromptWrapperFlow] Inserting guard flow before letting wrapped flow process input: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v39 + 8))(v14, v40);
    }

    v56 = v60;
    *v60 = v37;
    swift_storeEnumTagMultiPayload();

    sub_2665CC46C(v56);
  }

  return 1;
}

uint64_t sub_2665CCE9C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *v1;
  v4 = sub_266669AB8();
  *(v2 + 136) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v2 + 144) = v5;
  v7 = *(v6 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v8 = sub_2666698C8();
  *(v2 + 168) = v8;
  OUTLINED_FUNCTION_3_1(v8);
  *(v2 + 176) = v9;
  v11 = *(v10 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *(v3 + 80);
  *(v2 + 200) = *(v3 + 88);
  OUTLINED_FUNCTION_5_19();
  *(v2 + 208) = *(v12 + 96);
  OUTLINED_FUNCTION_5_19();
  *(v2 + 216) = *(v13 + 104);
  OUTLINED_FUNCTION_5_19();
  v15 = *(v14 + 112);
  *&v17 = v16;
  *(&v17 + 1) = v18;
  *&v20 = v19;
  *(&v20 + 1) = v21;
  *(v2 + 224) = v15;
  *(v2 + 32) = v20;
  *(v2 + 16) = v17;
  *(v2 + 48) = v15;
  v22 = type metadata accessor for PromptWrapperFlow.State();
  *(v2 + 232) = v22;
  OUTLINED_FUNCTION_3_1(v22);
  *(v2 + 240) = v23;
  v25 = *(v24 + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665CD0AC, 0, 0);
}

uint64_t sub_2665CD0AC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 128);
  v5 = *(*v4 + 136);
  OUTLINED_FUNCTION_23_4();
  (*(v3 + 16))(v1, v4 + v5, v2);
  OUTLINED_FUNCTION_31_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *(v0 + 256);
      v31 = *(v0 + 232);
      v32 = *(v0 + 240);
      v33 = *(v0 + 120);
      sub_2666698A8();
      v34 = *(v32 + 8);
      v35 = OUTLINED_FUNCTION_31_1();
      v36(v35);
      goto LABEL_12;
    case 2u:
      *(v0 + 264) = *(**(v0 + 128) + 120);
      v11 = *(MEMORY[0x277D5B878] + 4);
      v12 = swift_task_alloc();
      *(v0 + 272) = v12;
      *v12 = v0;
      v12[1] = sub_2665CD46C;
      v13 = *(v0 + 216);
      v14 = *(v0 + 184);
      v15 = *(v0 + 192);

      return MEMORY[0x2821BA608](v14, v15, v13);
    case 3u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v16 = sub_26666C168();
      __swift_project_value_buffer(v16, qword_28156D7E8);
      v17 = sub_26666C148();
      v18 = sub_26666C608();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_20();
        *v19 = 0;
        _os_log_impl(&dword_266549000, v17, v18, "[PromptWrapperFlow] execute called while still running child flow.", v19, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v20 = *(v0 + 248);
      v22 = *(v0 + 224);
      v21 = *(v0 + 232);
      v23 = *(v0 + 120);
      v24 = *(v0 + 128);
      v44 = *(v0 + 192);
      v45 = *(v0 + 208);

      *(v0 + 56) = v44;
      *(v0 + 72) = v45;
      *(v0 + 88) = v22;
      type metadata accessor for PromptWrapperFlow.Errors();
      swift_getWitnessTable();
      v25 = swift_allocError();
      *v26 = 1;
      *v20 = v25;
      *(v20 + 8) = 0;
      v27 = *MEMORY[0x277D5BC30];
      sub_266669A28();
      v28 = sub_266669778();
      OUTLINED_FUNCTION_18_2(v28);
      (*(v29 + 104))(v20, v27);
      swift_storeEnumTagMultiPayload();
      sub_2665CC46C(v20);
      sub_2666698A8();
      goto LABEL_12;
    default:
      v6 = *(v0 + 248);
      v7 = *(v0 + 232);
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      v10 = **(v0 + 256);
      swift_storeEnumTagMultiPayload();
      sub_2665CC46C(v6);

      sub_266669848();

LABEL_12:
      v38 = *(v0 + 248);
      v37 = *(v0 + 256);
      v39 = *(v0 + 184);
      v41 = *(v0 + 152);
      v40 = *(v0 + 160);

      v42 = *(v0 + 8);

      return v42();
  }
}

uint64_t sub_2665CD46C()
{
  v1 = *(*v0 + 272);
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_2665CD560, 0, 0);
}

uint64_t sub_2665CD560()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  sub_266669818();
  (*(v5 + 104))(v3, *MEMORY[0x277D5BEC8], v4);
  LOBYTE(v1) = sub_266669AA8();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  if (v1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v7 = sub_26666C168();
    __swift_project_value_buffer(v7, qword_28156D7E8);
    v8 = sub_26666C148();
    v9 = sub_26666C618();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_20();
      *v10 = 0;
      _os_log_impl(&dword_266549000, v8, v9, "[PromptWrapperFlow] wrapped flow completed.", v10, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v11 = v0[33];
    v12 = v0[31];
    v13 = v0[29];
    v14 = v0[27];
    v15 = v0[24];
    v16 = v0[16];

    sub_266669518();
    swift_storeEnumTagMultiPayload();
    sub_2665CC46C(v12);
  }

  (*(v0[22] + 32))(v0[15], v0[23], v0[21]);
  v18 = v0[31];
  v17 = v0[32];
  v19 = v0[23];
  v21 = v0[19];
  v20 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2665CD774(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 112);
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v8 = type metadata accessor for PromptWrapperFlow.State();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - v11;
  v13 = *a1;
  if (sub_2666692E8())
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v14 = sub_26666C168();
    __swift_project_value_buffer(v14, qword_28156D7E8);
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266549000, v15, v16, "[PromptWrapperFlow] Inserted guard flow passed. Resuming wrapped flow.", v17, 2u);
      MEMORY[0x266789690](v17, -1, -1);
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v18 = sub_26666C168();
    __swift_project_value_buffer(v18, qword_28156D7E8);
    v19 = sub_26666C148();
    v20 = sub_26666C618();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = v8;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_266549000, v19, v20, "[PromptWrapperFlow] Inserted guard flow failed. Exiting with a (handled) error.", v21, 2u);
      MEMORY[0x266789690](v22, -1, -1);
    }

    v29 = v3;
    v30 = v4;
    v31 = v5;
    v32 = v6;
    v33 = v7;
    type metadata accessor for PromptWrapperFlow.Errors();
    swift_getWitnessTable();
    v23 = swift_allocError();
    *v24 = 0;
    *v12 = v23;
    v12[8] = 1;
    v25 = *MEMORY[0x277D5BC30];
    sub_266669A28();
    v26 = sub_266669778();
    (*(*(v26 - 8) + 104))(v12, v25, v26);
  }

  swift_storeEnumTagMultiPayload();
  return sub_2665CC46C(v12);
}

uint64_t sub_2665CDACC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6961466472617567;
  }
}

uint64_t sub_2665CDB10()
{
  sub_26666CB88();
  sub_26655110C(v2, *v0);
  return sub_26666CBC8();
}

uint64_t sub_2665CDB60()
{
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 112);
  type metadata accessor for PromptWrapperFlow();
  swift_getWitnessTable();
  return sub_266669548();
}

unint64_t sub_2665CDC28(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_0(a1);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1, v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v8);
  OUTLINED_FUNCTION_31_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *(v3 + 8);
      v12 = OUTLINED_FUNCTION_31_1();
      v13(v12);
      result = 0x6574656C706D6F63;
      break;
    case 2u:
      result = 0xD000000000000012;
      break;
    case 3u:
      result = 0xD000000000000013;
      break;
    default:
      v9 = *v8;

      result = 0x6E69747265736E69;
      break;
  }

  return result;
}

uint64_t sub_2665CDD94()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_19();
  v3 = v2;
  (*(*(v1[10] - 8) + 8))(v0 + v1[15], v1[10]);
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 128), v1[11]);
  v4 = *(*v0 + 136);
  OUTLINED_FUNCTION_5_19();
  v9 = *(v3 + 96);
  v10 = *(v5 + 112);
  v6 = type metadata accessor for PromptWrapperFlow.State();
  OUTLINED_FUNCTION_18_2(v6);
  (*(v7 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_2665CDF0C()
{
  sub_2665CDD94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2665CDF9C(uint64_t a1)
{
  sub_2665CE020();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 32);
    sub_266669A28();
    sub_266669778();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2665CE020()
{
  if (!qword_28007E7F0[0])
  {
    v0 = sub_266669388();
    if (!v1)
    {
      atomic_store(v0, qword_28007E7F0);
    }
  }
}

uint64_t sub_2665CE098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2665CE148;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2665CE148(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_2665CE260(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2665CE2FC;

  return sub_2665CCE9C(a1);
}

uint64_t sub_2665CE2FC()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

_BYTE *sub_2665CE434(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static EventRecurrencePromptResult.identifier.getter()
{
  OUTLINED_FUNCTION_7_15();

  return OUTLINED_FUNCTION_6_13();
}

uint64_t static EventRecurrencePromptResult.identifier.setter(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  static EventRecurrencePromptResult.identifier = a1;
  off_28007E880 = a2;
  qword_28007E888 = a3;
  off_28007E890 = a4;
}

uint64_t sub_2665CE668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E4F73696874 && a2 == 0xE700000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7105633 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

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

uint64_t sub_2665CE774(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 0x656E4F73696874;
  }

  return 7105633;
}

uint64_t sub_2665CE7C0(uint64_t a1)
{
  v2 = sub_2665CED50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE7FC(uint64_t a1)
{
  v2 = sub_2665CED50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665CE838(uint64_t a1)
{
  v2 = sub_2665CEDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE874(uint64_t a1)
{
  v2 = sub_2665CEDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665CE8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665CE668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665CE8E0(uint64_t a1)
{
  v2 = sub_2665CECFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE91C(uint64_t a1)
{
  v2 = sub_2665CECFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665CE958(uint64_t a1)
{
  v2 = sub_2665CEDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665CE994(uint64_t a1)
{
  v2 = sub_2665CEDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EventRecurrencePromptResult.encode(to:)(void *a1, int a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E898, &qword_266675490);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v46 = v5;
  v47 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  v45 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8A0, &qword_266675498);
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v43 = v13;
  v44 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8A8, &qword_2666754A0);
  OUTLINED_FUNCTION_3_0(v20);
  v42 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v41 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8B0, &qword_2666754A8);
  OUTLINED_FUNCTION_3_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v41 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665CECFC();
  sub_26666CBE8();
  v38 = (v30 + 8);
  if (v48)
  {
    if (v48 == 1)
    {
      v50 = 1;
      sub_2665CEDA4();
      OUTLINED_FUNCTION_6_8();
      (*(v43 + 8))(v19, v44);
    }

    else
    {
      v51 = 2;
      sub_2665CED50();
      v39 = v45;
      OUTLINED_FUNCTION_6_8();
      (*(v46 + 8))(v39, v47);
    }
  }

  else
  {
    v49 = 0;
    sub_2665CEDF8();
    OUTLINED_FUNCTION_6_8();
    (*(v42 + 8))(v27, v20);
  }

  return (*v38)(v36, v28);
}

unint64_t sub_2665CECFC()
{
  result = qword_28007E8B8;
  if (!qword_28007E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8B8);
  }

  return result;
}

unint64_t sub_2665CED50()
{
  result = qword_28007E8C0;
  if (!qword_28007E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8C0);
  }

  return result;
}

unint64_t sub_2665CEDA4()
{
  result = qword_28007E8C8;
  if (!qword_28007E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8C8);
  }

  return result;
}

unint64_t sub_2665CEDF8()
{
  result = qword_28007E8D0;
  if (!qword_28007E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8D0);
  }

  return result;
}

uint64_t EventRecurrencePromptResult.init(from:)(uint64_t *a1)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8D8, &qword_2666754B0);
  OUTLINED_FUNCTION_3_0(v76);
  v74 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5, v6);
  v72 = &v66 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8E0, &qword_2666754B8);
  OUTLINED_FUNCTION_3_0(v73);
  v71 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8E8, &qword_2666754C0);
  OUTLINED_FUNCTION_3_0(v15);
  v70 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E8F0, &unk_2666754C8);
  OUTLINED_FUNCTION_3_0(v23);
  v75 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v27, v28);
  v29 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2665CECFC();
  v30 = v77;
  sub_26666CBD8();
  if (v30)
  {
    goto LABEL_12;
  }

  v66 = v15;
  v67 = v22;
  v68 = v14;
  v69 = 0;
  v31 = v76;
  v77 = a1;
  v32 = sub_26666C9F8();
  result = sub_266575DD8(v32, 0);
  v29 = v23;
  if (v35 == v36 >> 1)
  {
    goto LABEL_10;
  }

  if (v35 < (v36 >> 1))
  {
    v37 = v23;
    v38 = *(v34 + v35);
    v39 = sub_266575DD4(v35 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v73;
    v45 = v74;
    if (v41 == v43 >> 1)
    {
      v29 = v38;
      if (v38)
      {
        v70 = v39;
        v46 = v69;
        if (v38 == 1)
        {
          v79 = 1;
          sub_2665CEDA4();
          v47 = v68;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v46)
          {
            swift_unknownObjectRelease();
            (*(v71 + 8))(v47, v44);
            v48 = OUTLINED_FUNCTION_4_20();
            v49(v48);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v77);
            return v29;
          }
        }

        else
        {
          LODWORD(v73) = v38;
          v80 = 2;
          sub_2665CED50();
          v29 = v72;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v46)
          {
            swift_unknownObjectRelease();
            (*(v45 + 8))(v29, v31);
            v64 = OUTLINED_FUNCTION_4_20();
            v65(v64);
            v29 = v73;
            goto LABEL_21;
          }
        }

        v60 = OUTLINED_FUNCTION_4_20();
        v61(v60);
      }

      else
      {
        v78 = 0;
        sub_2665CEDF8();
        v56 = v67;
        OUTLINED_FUNCTION_5_15();
        v57 = v69;
        sub_26666C968();
        if (!v57)
        {
          swift_unknownObjectRelease();
          (*(v70 + 8))(v56, v66);
          v62 = OUTLINED_FUNCTION_3_19();
          v63(v62, v37);
          goto LABEL_21;
        }

        v58 = OUTLINED_FUNCTION_3_19();
        v59(v58, v37);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v29 = v37;
LABEL_10:
    v50 = sub_26666C848();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v52 = &type metadata for EventRecurrencePromptResult;
    sub_26666C978();
    sub_26666C838();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = OUTLINED_FUNCTION_3_19();
    v55(v54, v29);
LABEL_11:
    a1 = v77;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665CF420()
{
  OUTLINED_FUNCTION_7_15();

  return OUTLINED_FUNCTION_6_13();
}

uint64_t sub_2665CF474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = EventRecurrencePromptResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665CF4BC(uint64_t a1)
{
  v2 = sub_266669E58();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v3, v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v36 - v13;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v15 = sub_26666C168();
  v16 = __swift_project_value_buffer(v15, qword_28156D7E8);
  v17 = *(v5 + 16);
  v17(v14, a1, v2);
  v36[1] = v16;
  v18 = sub_26666C148();
  v19 = sub_26666C618();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36[0] = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    v17(v11, v14, v2);
    v23 = sub_26666C318();
    v25 = v24;
    (*(v5 + 8))(v14, v2);
    v26 = sub_2665BFC90(v23, v25, &v38);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_266549000, v18, v19, "[EventRecurrencePromptParser] Parsing parse: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_4_1();
    a1 = v36[0];
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v5 + 8))(v14, v2);
  }

  if (sub_2665DA448(a1))
  {
    return 0;
  }

  v27 = sub_2665CF810(a1);
  v28 = sub_26666C148();
  v29 = sub_26666C618();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136446210;
    v37 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E950, &qword_266675940);
    v32 = sub_26666C318();
    v34 = sub_2665BFC90(v32, v33, &v38);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_266549000, v28, v29, "[EventRecurrencePromptParser] returning: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  return v27;
}

uint64_t sub_2665CF810(uint64_t a1)
{
  v61 = a1;
  v1 = sub_266669E88();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_266669E48();
  v60 = *(v58 - 8);
  v5 = *(v60 + 64);
  v7 = MEMORY[0x28223BE20](v58, v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v59 = &v53 - v10;
  v11 = sub_26666B208();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266669E58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v53 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v53 - v29;
  v31 = *(v18 + 16);
  v31(&v53 - v29, v61, v17);
  v32 = (*(v18 + 88))(v30, v17);
  if (v32 == *MEMORY[0x277D5C128])
  {
    v31(v27, v30, v17);
    (*(v18 + 96))(v27, v17);
    (*(v12 + 32))(v16, v27, v11);
    v33 = sub_2665CFE64(v16);
    (*(v12 + 8))(v16, v11);
    goto LABEL_19;
  }

  if (v32 != *MEMORY[0x277D5C150])
  {
    if (v32 == *MEMORY[0x277D5C160])
    {
      v31(v27, v30, v17);
      (*(v18 + 96))(v27, v17);
      v43 = v54;
      v42 = v55;
      v44 = v56;
      (*(v55 + 32))(v54, v27, v56);
      v33 = sub_2665CFF8C();
      (*(v42 + 8))(v43, v44);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v31(v23, v30, v17);
  (*(v18 + 96))(v23, v17);
  v34 = v58;
  (*(v60 + 32))(v59, v23, v58);
  v35 = sub_266669E28();
  v37 = v36;
  swift_beginAccess();
  v38 = qword_28007E888;
  v39 = off_28007E890;
  v62 = static EventRecurrencePromptResult.identifier;
  v63 = off_28007E880;
  swift_bridgeObjectRetain_n();

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](v38, v39);

  if (v35 == v62 && v37 == v63)
  {

    goto LABEL_18;
  }

  v41 = sub_26666CAC8();

  if (v41)
  {
LABEL_18:
    v50 = v59;
    v49 = v60;
    (*(v60 + 16))(v57, v59, v34);
    sub_2665631B4();
    v33 = v51;
    (*(v49 + 8))(v50, v34);
    goto LABEL_19;
  }

  (*(v60 + 8))(v59, v34);
LABEL_12:
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v45 = sub_26666C168();
  __swift_project_value_buffer(v45, qword_28156D7E8);
  v46 = sub_26666C148();
  v47 = sub_26666C618();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_266549000, v46, v47, "[EventRecurrencePromptParser] parse failed. Unsupported parse type", v48, 2u);
    MEMORY[0x266789690](v48, -1, -1);
  }

  v33 = 3;
LABEL_19:
  (*(v18 + 8))(v30, v17);
  return v33;
}

uint64_t sub_2665CFE64(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26666B208();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  sub_26656960C();
  sub_26666A528();
  sub_266563A38(v6);
  if (v11 == 4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (v11 == 3)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_2665CFF8C()
{
  if (sub_2665F17DC())
  {
    sub_26666AC08();
  }

  else
  {
    if (!sub_2665F1578())
    {
      return 3;
    }

    sub_26666A808();
  }

  if (v3)
  {
    v0 = sub_26666A458();
  }

  else
  {
    v0 = 0;
  }

  v1 = sub_2665D003C(v0);

  return v1;
}

uint64_t sub_2665D003C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E958, &qword_266675948);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  if (!a1)
  {
    v15 = sub_26666A828();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
    goto LABEL_6;
  }

  sub_26666A818();
  v11 = sub_26666A828();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
LABEL_6:
    v14 = 3;
    goto LABEL_7;
  }

  sub_2665D0780(v10, v7);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(v7, v11);
  if (v13 != *MEMORY[0x277D5EA50])
  {
    if (v13 == *MEMORY[0x277D5EA28])
    {
      v14 = 2;
      goto LABEL_7;
    }

    (*(v12 + 8))(v7, v11);
    goto LABEL_6;
  }

  v14 = 1;
LABEL_7:
  sub_2665D0718(v10);
  return v14;
}

unint64_t sub_2665D01F4()
{
  result = qword_28007E8F8;
  if (!qword_28007E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8F8);
  }

  return result;
}

unint64_t sub_2665D0248(void *a1)
{
  a1[1] = sub_266563DE0();
  a1[2] = sub_2665D0280();
  result = sub_2665D01F4();
  a1[3] = result;
  return result;
}

unint64_t sub_2665D0280()
{
  result = qword_28007E900;
  if (!qword_28007E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E900);
  }

  return result;
}

_BYTE *sub_2665D02E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665D03F4()
{
  result = qword_28007E908;
  if (!qword_28007E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E908);
  }

  return result;
}

unint64_t sub_2665D044C()
{
  result = qword_28007E910;
  if (!qword_28007E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E910);
  }

  return result;
}

unint64_t sub_2665D04A4()
{
  result = qword_28007E918;
  if (!qword_28007E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E918);
  }

  return result;
}

unint64_t sub_2665D04FC()
{
  result = qword_28007E920;
  if (!qword_28007E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E920);
  }

  return result;
}

unint64_t sub_2665D0554()
{
  result = qword_28007E928;
  if (!qword_28007E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E928);
  }

  return result;
}

unint64_t sub_2665D05AC()
{
  result = qword_28007E930;
  if (!qword_28007E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E930);
  }

  return result;
}

unint64_t sub_2665D0604()
{
  result = qword_28007E938;
  if (!qword_28007E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E938);
  }

  return result;
}

unint64_t sub_2665D065C()
{
  result = qword_28007E940;
  if (!qword_28007E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E940);
  }

  return result;
}

unint64_t sub_2665D06B4()
{
  result = qword_28007E948;
  if (!qword_28007E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E948);
  }

  return result;
}

uint64_t sub_2665D0718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E958, &qword_266675948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665D0780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E958, &qword_266675948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return swift_beginAccess();
}

uint64_t sub_2665D082C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047342 && a2 == 0xE400000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461657263 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_2665D08F0(char a1)
{
  if (a1)
  {
    return 0x657461657263;
  }

  else
  {
    return 1954047342;
  }
}

uint64_t sub_2665D0924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665D082C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665D094C(uint64_t a1)
{
  v2 = sub_2665D0D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665D0988(uint64_t a1)
{
  v2 = sub_2665D0D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665D09C4(uint64_t a1)
{
  v2 = sub_2665D0DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665D0A00(uint64_t a1)
{
  v2 = sub_2665D0DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665D0A3C(uint64_t a1)
{
  v2 = sub_2665D0DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665D0A78(uint64_t a1)
{
  v2 = sub_2665D0DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.PromptForTitleBtnLabel.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E960, &qword_266675950);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E968, &qword_266675958);
  OUTLINED_FUNCTION_3_0(v32);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E970, &qword_266675960);
  OUTLINED_FUNCTION_3_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v32 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665D0D50();
  sub_26666CBE8();
  v30 = (v22 + 8);
  if (v35)
  {
    v37 = 1;
    sub_2665D0DA4();
    sub_26666CA08();
    (*(v33 + 8))(v11, v34);
  }

  else
  {
    v36 = 0;
    sub_2665D0DF8();
    sub_26666CA08();
    (*(v13 + 8))(v19, v32);
  }

  return (*v30)(v28, v20);
}

unint64_t sub_2665D0D50()
{
  result = qword_28007E978;
  if (!qword_28007E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E978);
  }

  return result;
}

unint64_t sub_2665D0DA4()
{
  result = qword_28007E980;
  if (!qword_28007E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E980);
  }

  return result;
}

unint64_t sub_2665D0DF8()
{
  result = qword_28007E988;
  if (!qword_28007E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E988);
  }

  return result;
}

uint64_t Snippet.PromptForTitleBtnLabel.init(from:)(unint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E990, &qword_266675968);
  OUTLINED_FUNCTION_3_0(v52);
  v50 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E998, &qword_266675970);
  OUTLINED_FUNCTION_3_0(v9);
  v49 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E9A0, &unk_266675978);
  OUTLINED_FUNCTION_3_0(v17);
  v51 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v46 - v23;
  v25 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_2665D0D50();
  v26 = v53;
  sub_26666CBD8();
  if (v26)
  {
    goto LABEL_8;
  }

  v47 = v9;
  v48 = v16;
  v53 = a1;
  v27 = v52;
  v28 = sub_26666C9F8();
  result = sub_266575DD8(v28, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v37 = sub_26666C848();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v39 = &type metadata for Snippet.PromptForTitleBtnLabel;
    sub_26666C978();
    sub_26666C838();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v24, v17);
    a1 = v53;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v46 = 0;
  if (v31 < (v32 >> 1))
  {
    a1 = *(v30 + v31);
    sub_266575DD4(v31 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (a1)
      {
        LODWORD(v49) = a1;
        v55 = 1;
        sub_2665D0DA4();
        OUTLINED_FUNCTION_12_3();
        swift_unknownObjectRelease();
        (*(v50 + 8))(v8, v27);
        v42 = OUTLINED_FUNCTION_4_8();
        v43(v42);
        a1 = v49;
      }

      else
      {
        v54 = 0;
        sub_2665D0DF8();
        v41 = v48;
        OUTLINED_FUNCTION_12_3();
        swift_unknownObjectRelease();
        (*(v49 + 8))(v41, v47);
        v44 = OUTLINED_FUNCTION_4_8();
        v45(v44);
      }

      __swift_destroy_boxed_opaque_existential_1(v53);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665D1310@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = Snippet.PromptForTitleBtnLabel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_2665D1360()
{
  result = qword_28007E9A8;
  if (!qword_28007E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9A8);
  }

  return result;
}

_BYTE *sub_2665D13C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665D14C4()
{
  result = qword_28007E9B0;
  if (!qword_28007E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9B0);
  }

  return result;
}

unint64_t sub_2665D151C()
{
  result = qword_28007E9B8;
  if (!qword_28007E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9B8);
  }

  return result;
}

unint64_t sub_2665D1574()
{
  result = qword_28007E9C0;
  if (!qword_28007E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9C0);
  }

  return result;
}

unint64_t sub_2665D15CC()
{
  result = qword_28007E9C8;
  if (!qword_28007E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9C8);
  }

  return result;
}

unint64_t sub_2665D1624()
{
  result = qword_28007E9D0;
  if (!qword_28007E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9D0);
  }

  return result;
}

unint64_t sub_2665D167C()
{
  result = qword_28007E9D8;
  if (!qword_28007E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9D8);
  }

  return result;
}

unint64_t sub_2665D16D4()
{
  result = qword_28007E9E0;
  if (!qword_28007E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9E0);
  }

  return result;
}

id sub_2665D1730(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    return 0;
  }

  if (a2 >> 62)
  {
    v4 = sub_26666C768();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 <= a1)
  {
    return 0;
  }

  sub_2665C4864(a1, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x266788B60](a1, a2);
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

uint64_t sub_2665D17D4(uint64_t a1, void *a2)
{
  v4 = sub_266669E58();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_0_23();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v11 = sub_26666C168();
  __swift_project_value_buffer(v11, qword_28156D7E8);
  v12 = sub_26666C148();
  v13 = sub_26666C618();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266549000, v12, v13, "[StrategyHelpers] actionForInputForRecurrencePrompt Determining action for input", v14, 2u);
    MEMORY[0x266789690](v14, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_266669DF8();
  v15 = sub_2665CF4BC(v2);
  (*(v7 + 8))(v2, v4);
  if (v15 - 1 < 2)
  {
    return sub_2666697D8();
  }

  if (v15)
  {
    return sub_2666697E8();
  }

  return sub_2666697C8();
}

uint64_t sub_2665D19A0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_266668D98();
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  OUTLINED_FUNCTION_0_23();
  if (a2)
  {
    sub_2665D1730(*a1, a2);
  }

  sub_26666BCA8();
  (*(v12 + 16))(v4, a3, v9);
  result = sub_26666BC98();
  *a4 = result;
  return result;
}

void sub_2665D1AA0()
{
  OUTLINED_FUNCTION_28_0();
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_25_7();
  sub_2665A9D2C(v10, v0);
  v18 = sub_266668B08();
  v19 = 0;
  if (__swift_getEnumTagSinglePayload(v0, 1, v18) != 1)
  {
    v19 = sub_266668A18();
    OUTLINED_FUNCTION_4_5(v18);
    (*(v20 + 8))(v0, v18);
  }

  sub_2665A9D2C(v8, v1);
  OUTLINED_FUNCTION_27_5(v1, 1, v18);
  if (v21)
  {
    v23 = 0;
    if (!v4)
    {
LABEL_8:
      v22 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v23 = sub_266668A18();
    OUTLINED_FUNCTION_4_5(v18);
    (*(v24 + 8))(v1, v18);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v22 = sub_26666C2F8();

LABEL_9:
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v25 initWithStartDateComponents:v19 endDateComponents:v23 recurrenceRule:v6 userInput:v22 allDay:v26];

  sub_266594028(v8, &unk_28007DC90, &qword_266676EB0);
  sub_266594028(v10, &unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_27_0();
}

id sub_2665D1CD4()
{
  v2 = v0;
  v3 = sub_266668EB8();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v90 = v5;
  v91 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_266668E68();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v87 = v14;
  v88 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13, v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v92 = sub_266668B08();
  v21 = OUTLINED_FUNCTION_3_0(v92);
  v89 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21, v25);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v30 = OUTLINED_FUNCTION_3_3(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v86 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v37 = OUTLINED_FUNCTION_3_3(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v86 - v41;
  v43 = sub_266668D38();
  v44 = OUTLINED_FUNCTION_3_0(v43);
  v93 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44, v48);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v49, v50);
  OUTLINED_FUNCTION_6_14();
  result = [v2 startDate];
  if (result)
  {
    v52 = result;
    sub_266668CE8();

    v53 = [v2 endDate];
    if (v53)
    {
      v54 = v53;
      sub_266668CE8();

      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v43);
      sub_266594028(v42, &qword_28007D140, &qword_26666F140);
      sub_2665D3034();
      if ((v58 & 1) == 0)
      {
        v59 = [v2 endDateComponents];
        if (v59)
        {
          v60 = v59;
          sub_266668A28();

          v61 = 0;
        }

        else
        {
          v61 = 1;
        }

        __swift_storeEnumTagSinglePayload(v35, v61, 1, v92);
        v65 = sub_2666450AC();
        sub_266594028(v35, &unk_28007DC90, &qword_266676EB0);
        if (!v65)
        {
          return (*(v93 + 8))(v1, v43);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v43);
      sub_266594028(v42, &qword_28007D140, &qword_26666F140);
    }

    v66 = [v2 allDay];
    sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
    v67 = sub_26666C658();
    v68 = v67;
    if (v66)
    {
      v69 = sub_26666C678();

      if (v69)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v70 = sub_26666C168();
        __swift_project_value_buffer(v70, qword_28156D7E8);
        v71 = sub_26666C148();
        v72 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_266549000, v71, v72, "#resolveEndDate allDay event with no endDate provided", v73, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        return (*(v93 + 8))(v1, v43);
      }
    }

    else
    {
    }

    sub_266552C44(0, &qword_28007D258, 0x277CF77C8);
    v74 = sub_26666C648();
    if (v74)
    {
      v75 = v74;
      [v74 defaultEventDuration];
      v77 = v76;
    }

    else
    {
      v77 = 0x40AC200000000000;
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v78 = sub_26666C168();
    __swift_project_value_buffer(v78, qword_28156D7E8);
    v79 = sub_26666C148();
    v80 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 134217984;
      *(v81 + 4) = v77;
      _os_log_impl(&dword_266549000, v79, v80, "[resolveEndDate] no endDate provided and not allDay, setting duration to %f", v81, 0xCu);
      OUTLINED_FUNCTION_4_1();
    }

    sub_266668E58();
    sub_266668EA8();
    sub_266668C78();
    sub_266668DD8();
    v82 = *(v93 + 8);
    v83 = OUTLINED_FUNCTION_23_7();
    v82(v83);
    (*(v90 + 8))(v11, v91);
    (*(v87 + 8))(v20, v88);
    v84 = sub_266668A18();
    v85 = sub_26666C2F8();
    [v2 setValue:v84 forKeyPath:v85];

    (*(v89 + 8))(v28, v92);
    return (v82)(v1, v43);
  }

  return result;
}

id sub_2665D2370()
{
  v1 = [v0 allDay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void sub_2665D23CC()
{
  OUTLINED_FUNCTION_28_0();
  v8 = v7;
  v76 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_27_8();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    v29 = [v8 startDateComponents];
    if (v29)
    {
      v30 = v29;
      sub_266668A28();

      v31 = sub_266668B08();
      v32 = 0;
    }

    else
    {
      v31 = sub_266668B08();
      v32 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v32, 1, v31);
    v37 = OUTLINED_FUNCTION_35_4();
    sub_2665D515C(v37, v38);
    sub_266668B08();
    OUTLINED_FUNCTION_27_5(v4, 1, v31);
    if (!v39)
    {
      OUTLINED_FUNCTION_4_5(v31);
      (*(v43 + 32))(v0, v4, v31);
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v31);
      v47 = v76;
      v48 = &selRef_setConflictingEventIdentifiers_;
      goto LABEL_14;
    }
  }

  else
  {
    sub_266668B08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  v47 = v76;
  v40 = [v76 startDateComponents];
  if (v40)
  {
    v41 = v40;
    sub_266668A28();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v49 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v5, v42, 1, v49);
  sub_2665D515C(v5, v0);
  OUTLINED_FUNCTION_27_5(v4, 1, v49);
  if (!v39)
  {
    sub_266594028(v4, &unk_28007DC90, &qword_266676EB0);
  }

  v48 = &selRef_setConflictingEventIdentifiers_;
  if (!v8)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v49);
    v56 = v75;
    goto LABEL_20;
  }

LABEL_14:
  v50 = [v8 v48[27]];
  if (v50)
  {
    v51 = v50;
    sub_266668A28();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v3, v52, 1, v53);
  v54 = OUTLINED_FUNCTION_30_7();
  sub_2665D515C(v54, v55);
  OUTLINED_FUNCTION_27_5(v1, 1, v53);
  v56 = v75;
  if (!v39)
  {
    OUTLINED_FUNCTION_4_5(v53);
    (*(v57 + 32))(v75, v1, v53);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v53);
    goto LABEL_25;
  }

LABEL_20:
  v64 = [v47 v48[27]];
  if (v64)
  {
    v65 = v64;
    sub_266668A28();

    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v2, v66, 1, v67);
  sub_2665D515C(v2, v56);
  OUTLINED_FUNCTION_27_5(v1, 1, v67);
  if (!v39)
  {
    sub_266594028(v1, &unk_28007DC90, &qword_266676EB0);
  }

LABEL_25:
  v68 = [v8 recurrenceRule];
  if (v68)
  {
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v68 = [v47 recurrenceRule];
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  v69 = sub_2665D50F8(v8);
  if (v70)
  {
    v71 = v69;
    v72 = v70;
    goto LABEL_32;
  }

LABEL_31:
  v71 = sub_2665D50F8(v47);
  v72 = v73;

LABEL_32:
  v74 = [v8 allDay];
  if (!v74)
  {
    v74 = [v76 allDay];
  }

  objc_allocWithZone(MEMORY[0x277CD3B68]);
  sub_26660B270(v0, v56, v68, v71, v72, v74);
  OUTLINED_FUNCTION_27_0();
}

void sub_2665D289C()
{
  OUTLINED_FUNCTION_28_0();
  v135 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v6 = OUTLINED_FUNCTION_3_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_10_5();
  v137 = v10 - v11;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_24_5();
  v130 = v14;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_24_5();
  v132 = v17;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_24_5();
  v136 = v20;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_24_5();
  v134 = v23;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_24_5();
  v128 = v26;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_24_5();
  v129 = v29;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v30, v31);
  v133 = v126 - v32;
  v138 = sub_266668D38();
  v33 = OUTLINED_FUNCTION_3_0(v138);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33, v38);
  OUTLINED_FUNCTION_10_5();
  v127 = (v39 - v40);
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v41, v42);
  v44 = v126 - v43;
  v143 = sub_266668EB8();
  v45 = OUTLINED_FUNCTION_3_0(v143);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45, v50);
  OUTLINED_FUNCTION_10_5();
  v142 = v51 - v52;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v53, v54);
  OUTLINED_FUNCTION_6_14();
  v141 = sub_266668E68();
  v55 = OUTLINED_FUNCTION_3_0(v141);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55, v60);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v61, v62);
  OUTLINED_FUNCTION_25_7();
  v63 = sub_266668B08();
  v64 = OUTLINED_FUNCTION_3_0(v63);
  v131 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64, v68);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v69, v70);
  v72 = v126 - v71;
  sub_266668E58();
  sub_266668EA8();
  v139 = v4;
  v73 = [v4 startDate];
  if (!v73)
  {
    __break(1u);
    goto LABEL_16;
  }

  v74 = v73;
  sub_266668CE8();

  v140 = v72;
  OUTLINED_FUNCTION_23_2();
  sub_266668DD8();
  v75 = *(v47 + 8);
  v126[1] = v47 + 8;
  v75(v1, v143);
  v76 = *(v57 + 8);
  v76(v0, v141);
  v77 = v35 + 8;
  v78 = *(v35 + 8);
  v79 = v44;
  v80 = v138;
  v126[2] = v77;
  v78(v79, v138);
  sub_266668E58();
  sub_266668EA8();
  v81 = [v139 endDate];
  if (!v81)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v82 = v81;
  v83 = v127;
  sub_266668CE8();

  v84 = v142;
  sub_266668DD8();
  v75(v84, v143);
  v76(v2, v141);
  v78(v83, v80);
  v85 = v135;
  v86 = [v135 startDateComponents];
  if (v86)
  {
    v87 = v86;
    v88 = v128;
    sub_266668A28();

    v89 = 0;
    v90 = v133;
    v91 = v134;
    v92 = v130;
    v93 = v131;
  }

  else
  {
    v89 = 1;
    v90 = v133;
    v91 = v134;
    v92 = v130;
    v93 = v131;
    v88 = v128;
  }

  OUTLINED_FUNCTION_3_24(v88, v89);
  v94 = v88;
  v95 = v129;
  sub_2665D515C(v94, v129);
  OUTLINED_FUNCTION_1_28(v95);
  v96 = v144;
  if (v97)
  {
    sub_266594028(v95, &unk_28007DC90, &qword_266676EB0);
    v104 = 1;
  }

  else
  {
    (*(v93 + 16))(v91, v140, v63);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v63);
    sub_266644BD4(v91, v90);
    sub_266594028(v91, &unk_28007DC90, &qword_266676EB0);
    v101 = *(v93 + 8);
    v102 = OUTLINED_FUNCTION_19_13();
    v103(v102);
    v104 = 0;
  }

  v105 = 1;
  OUTLINED_FUNCTION_3_24(v90, v104);
  v106 = [v85 endDateComponents];
  if (v106)
  {
    v107 = v106;
    sub_266668A28();

    v105 = 0;
  }

  OUTLINED_FUNCTION_3_24(v92, v105);
  v108 = v132;
  sub_2665D515C(v92, v132);
  OUTLINED_FUNCTION_1_28(v108);
  if (v97)
  {
    sub_266594028(v108, &unk_28007DC90, &qword_266676EB0);
    v116 = 1;
    v112 = v136;
  }

  else
  {
    (*(v93 + 16))(v91, v96, v63);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v63);
    v112 = v136;
    sub_266644BD4(v91, v136);
    sub_266594028(v91, &unk_28007DC90, &qword_266676EB0);
    v113 = *(v93 + 8);
    v114 = OUTLINED_FUNCTION_19_13();
    v115(v114);
    v116 = 0;
  }

  OUTLINED_FUNCTION_3_24(v112, v116);
  sub_2665A9D2C(v90, v91);
  sub_2665A9D2C(v112, v137);
  v117 = [v85 recurrenceRule];
  v118 = sub_2665D50F8(v85);
  v120 = v119;
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v121 = sub_26666C658();
  v122 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v123 = OUTLINED_FUNCTION_30_7();
  sub_26660B270(v123, v124, v117, v118, v120, v121);
  sub_266594028(v112, &unk_28007DC90, &qword_266676EB0);
  sub_266594028(v90, &unk_28007DC90, &qword_266676EB0);
  v125 = *(v93 + 8);
  v125(v144, v63);
  v125(v140, v63);
  OUTLINED_FUNCTION_27_0();
}

void sub_2665D3034()
{
  OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v9 = OUTLINED_FUNCTION_3_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_10_5();
  v112 = v13 - v14;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_24_5();
  v111 = v17;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_24_5();
  v114 = v20;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_24_5();
  v113 = v23;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_24_5();
  v116 = v26;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_18_7();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_27_8();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x28223BE20](v37, v38);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v39, v40);
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_6_14();
  v45 = [v1 startDateComponents];
  if (v45)
  {
    v46 = v45;
    sub_266668A28();

    v47 = sub_266668B08();
    v48 = 0;
  }

  else
  {
    v47 = sub_266668B08();
    v48 = 1;
  }

  v49 = 1;
  __swift_storeEnumTagSinglePayload(v7, v48, 1, v47);
  sub_2665D515C(v7, v3);
  v50 = [v1 endDateComponents];
  if (v50)
  {
    v51 = v50;
    sub_266668A28();

    v49 = 0;
  }

  v52 = sub_266668B08();
  OUTLINED_FUNCTION_3_24(v6, v49);
  v53 = OUTLINED_FUNCTION_30_7();
  sub_2665D515C(v53, v54);
  sub_2665A9D2C(v3, v1);
  OUTLINED_FUNCTION_1_28(v1);
  if (v55)
  {
    sub_266594028(v1, &unk_28007DC90, &qword_266676EB0);
    v56 = 0;
    v58 = 1;
  }

  else
  {
    v56 = sub_266668A78();
    v58 = v57;
    OUTLINED_FUNCTION_0_15();
    v60 = *(v59 + 8);
    v61 = OUTLINED_FUNCTION_19_13();
    v62(v61);
  }

  sub_2665A9D2C(v4, v5);
  OUTLINED_FUNCTION_1_28(v5);
  if (v55)
  {
    sub_266594028(v5, &unk_28007DC90, &qword_266676EB0);
    if ((v58 & 1) == 0)
    {
LABEL_57:
      v101 = OUTLINED_FUNCTION_23_7();
      sub_266594028(v101, v102, &qword_266676EB0);
      sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
      goto LABEL_58;
    }
  }

  else
  {
    v63 = sub_266668A78();
    v65 = v64;
    OUTLINED_FUNCTION_0_15();
    (*(v66 + 8))(v5, v52);
    if (v58)
    {
      if ((v65 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v65 & 1) != 0 || v56 != v63)
    {
      goto LABEL_57;
    }
  }

  v67 = OUTLINED_FUNCTION_23_2();
  sub_2665A9D2C(v67, v68);
  OUTLINED_FUNCTION_1_28(v2);
  if (v55)
  {
    sub_266594028(v2, &unk_28007DC90, &qword_266676EB0);
    v69 = 0;
    v71 = 1;
  }

  else
  {
    v69 = sub_266668A88();
    v71 = v70;
    OUTLINED_FUNCTION_0_15();
    (*(v72 + 8))(v2, v52);
  }

  v73 = OUTLINED_FUNCTION_23_7();
  sub_2665A9D2C(v73, v74);
  OUTLINED_FUNCTION_1_28(v0);
  if (v55)
  {
    sub_266594028(v0, &unk_28007DC90, &qword_266676EB0);
    if ((v71 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v75 = sub_266668A88();
    v77 = v76;
    OUTLINED_FUNCTION_0_15();
    (*(v78 + 8))(v0, v52);
    if (v71)
    {
      if ((v77 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v77 & 1) != 0 || v69 != v75)
    {
      goto LABEL_57;
    }
  }

  sub_2665A9D2C(v3, v115);
  OUTLINED_FUNCTION_1_28(v115);
  if (v55)
  {
    sub_266594028(v115, &unk_28007DC90, &qword_266676EB0);
    v79 = 0;
    v81 = 1;
  }

  else
  {
    v79 = sub_266668A38();
    v81 = v80;
    OUTLINED_FUNCTION_0_15();
    v83 = *(v82 + 8);
    v84 = OUTLINED_FUNCTION_19_13();
    v85(v84);
  }

  sub_2665A9D2C(v4, v116);
  OUTLINED_FUNCTION_1_28(v116);
  if (v55)
  {
    sub_266594028(v116, &unk_28007DC90, &qword_266676EB0);
    if ((v81 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v86 = sub_266668A38();
    v88 = v87;
    OUTLINED_FUNCTION_0_15();
    (*(v89 + 8))(v116, v52);
    if (v81)
    {
      if ((v88 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v88 & 1) != 0 || v79 != v86)
    {
      goto LABEL_57;
    }
  }

  sub_2665A9D2C(v3, v113);
  OUTLINED_FUNCTION_1_28(v113);
  if (v55)
  {
    sub_266594028(v113, &unk_28007DC90, &qword_266676EB0);
    v90 = 0;
    v92 = 1;
  }

  else
  {
    v90 = sub_266668A58();
    v92 = v91;
    OUTLINED_FUNCTION_0_15();
    v94 = *(v93 + 8);
    v95 = OUTLINED_FUNCTION_19_13();
    v96(v95);
  }

  sub_2665A9D2C(v4, v114);
  OUTLINED_FUNCTION_1_28(v114);
  if (v55)
  {
    sub_266594028(v114, &unk_28007DC90, &qword_266676EB0);
    if ((v92 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v97 = sub_266668A58();
    v99 = v98;
    OUTLINED_FUNCTION_0_15();
    (*(v100 + 8))(v114, v52);
    if (v92)
    {
      if ((v99 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v99 & 1) != 0 || v90 != v97)
    {
      goto LABEL_57;
    }
  }

  sub_2665A9D2C(v3, v111);
  OUTLINED_FUNCTION_1_28(v111);
  if (v55)
  {
    sub_266594028(v111, &unk_28007DC90, &qword_266676EB0);
  }

  else
  {
    sub_266668A98();
    OUTLINED_FUNCTION_0_15();
    v104 = *(v103 + 8);
    v105 = OUTLINED_FUNCTION_19_13();
    v106(v105);
  }

  sub_2665A9D2C(v4, v112);
  OUTLINED_FUNCTION_1_28(v112);
  if (v55)
  {
    OUTLINED_FUNCTION_32_6(v4);
    OUTLINED_FUNCTION_32_6(v3);
    OUTLINED_FUNCTION_32_6(v112);
  }

  else
  {
    sub_266668A98();
    sub_266594028(v4, &unk_28007DC90, &qword_266676EB0);
    sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
    OUTLINED_FUNCTION_0_15();
    v108 = *(v107 + 8);
    v109 = OUTLINED_FUNCTION_35_4();
    v110(v109);
  }

LABEL_58:
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_2665D37E8()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_10_5();
  v103 = v9 - v10;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_24_5();
  v108 = v15;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v16, v17);
  v109 = &v98[-v18];
  v112 = sub_266668E68();
  v19 = OUTLINED_FUNCTION_3_0(v112);
  v110 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19, v23);
  OUTLINED_FUNCTION_1_0();
  v111 = v25 - v24;
  v26 = sub_266668D38();
  v27 = OUTLINED_FUNCTION_3_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27, v32);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_8_15();
  v37 = MEMORY[0x28223BE20](v35, v36);
  v39 = &v98[-v38];
  MEMORY[0x28223BE20](v37, v40);
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v98[-v43];
  v45 = [v0 startDate];
  if (!v45)
  {
    return v45;
  }

  sub_266668CE8();

  v104 = v0;
  v45 = [v0 endDate];
  if (!v45)
  {
    (*(v29 + 8))(v44, v26);
    return v45;
  }

  v101 = v3;
  sub_266668CE8();

  v46 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v47 = sub_26666C168();
  v48 = __swift_project_value_buffer(v47, qword_28156D7E8);
  v49 = *(v29 + 16);
  v107 = v44;
  v49(v39, v44, v26);
  v106 = v46;
  v49(v1, v46, v26);
  v102 = v48;
  v50 = sub_26666C148();
  v51 = sub_26666C618();
  v52 = os_log_type_enabled(v50, v51);
  v113 = v26;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v114 = v100;
    *v53 = 136315394;
    sub_2665D51CC();
    v54 = sub_26666CAA8();
    v56 = v55;
    v99 = v51;
    v57 = *(v29 + 8);
    v105 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v57)(v39, v113);
    v58 = sub_2665BFC90(v54, v56, &v114);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2080;
    v26 = v113;
    v59 = sub_26666CAA8();
    v61 = v60;
    v62 = OUTLINED_FUNCTION_30_7();
    v57(v62);
    v63 = sub_2665BFC90(v59, v61, &v114);

    *(v53 + 14) = v63;
    _os_log_impl(&dword_266549000, v50, v99, "startDate: %s endDate: %s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    v64 = v57;
    OUTLINED_FUNCTION_4_1();

    v65 = v105;
  }

  else
  {

    v64 = *(v29 + 8);
    v65 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = OUTLINED_FUNCTION_30_7();
    v64(v66);
    (v64)(v39, v26);
  }

  v67 = v111;
  sub_266668E28();
  sub_266668CF8();
  sub_266668D18();
  (v64)(v2, v26);
  v68 = sub_266668E48();
  v69 = [v104 endDateComponents];
  if (v69)
  {
    v70 = v69;
    v71 = v108;
    sub_266668A28();

    v72 = 0;
  }

  else
  {
    v72 = 1;
    v71 = v108;
  }

  v73 = v109;
  v105 = v65;
  v74 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v71, v72, 1, v74);
  sub_2665D515C(v71, v73);
  OUTLINED_FUNCTION_27_5(v73, 1, v74);
  if (v75)
  {
    sub_266594028(v73, &unk_28007DC90, &qword_266676EB0);
  }

  else
  {
    v79 = sub_266668A58();
    v81 = v80;
    OUTLINED_FUNCTION_4_5(v74);
    v83 = *(v82 + 8);
    v83(v73, v74);
    if ((v81 & 1) == 0 && v79 == 23)
    {
      v84 = [v104 endDateComponents];
      if (v84)
      {
        v85 = v84;
        v86 = v103;
        sub_266668A28();

        v87 = 0;
      }

      else
      {
        v87 = 1;
        v86 = v103;
      }

      v88 = v101;
      __swift_storeEnumTagSinglePayload(v86, v87, 1, v74);
      sub_2665D515C(v86, v88);
      OUTLINED_FUNCTION_27_5(v88, 1, v74);
      if (v75)
      {
        sub_266594028(v88, &unk_28007DC90, &qword_266676EB0);
        v76 = v113;
        v77 = v107;
      }

      else
      {
        v89 = sub_266668A98();
        v91 = v90;
        v83(v88, v74);
        v76 = v113;
        v77 = v107;
        if ((v91 & 1) == 0)
        {
          v45 = v89 == 59;
LABEL_28:
          OUTLINED_FUNCTION_28_6();
          if (!v78)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      v45 = 0;
      goto LABEL_28;
    }
  }

  v45 = 0;
  OUTLINED_FUNCTION_28_6();
  v76 = v113;
  v77 = v107;
  if (!v78)
  {
    goto LABEL_31;
  }

LABEL_30:
  v92 = v45;
  if ((v68 ^ 1))
  {
LABEL_31:
    v92 = v45;
    v45 = 0;
  }

  v93 = sub_26666C148();
  v94 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v94))
  {
    OUTLINED_FUNCTION_28_6();
    if (v78)
    {
      v95 = 1;
    }

    else
    {
      v95 = 0;
    }

    v96 = swift_slowAlloc();
    *v96 = 67109888;
    *(v96 + 4) = v45;
    *(v96 + 8) = 1024;
    *(v96 + 10) = v95;
    v77 = v107;
    *(v96 + 14) = 1024;
    *(v96 + 16) = v68 & 1;
    *(v96 + 20) = 1024;
    *(v96 + 22) = v92;
    _os_log_impl(&dword_266549000, v93, v94, "isRestOfToday: %{BOOL}d startIsNow: %{BOOL}d endIsSameDay: %{BOOL}d endIsEndOfDay: %{BOOL}d", v96, 0x1Au);
    v76 = v113;
    OUTLINED_FUNCTION_4_1();
  }

  (*(v110 + 8))(v67, v112);
  (v64)(v106, v76);
  (v64)(v77, v76);
  return v45;
}

uint64_t sub_2665D3FB8()
{
  v2 = v0;
  v3 = sub_266668D38();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v14 = OUTLINED_FUNCTION_3_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v21 = OUTLINED_FUNCTION_3_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_27_8();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_25_7();
  v27 = [v0 startDateComponents];
  if (v27)
  {
    v28 = v27;
    sub_266668A28();

    v29 = sub_266668B08();
    v30 = 0;
  }

  else
  {
    v29 = sub_266668B08();
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v30, 1, v29);
  v31 = sub_266645300();
  sub_266594028(v0, &unk_28007DC90, &qword_266676EB0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = [v0 endDateComponents];
  if (v32)
  {
    v33 = v32;
    sub_266668A28();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v1, v34, 1, v35);
  v36 = sub_266645300();
  sub_266594028(v1, &unk_28007DC90, &qword_266676EB0);
  if (v36)
  {
    v37 = [v2 endDate];
    if (v37)
    {
      v38 = v37;
      sub_266668CE8();

      (*(v6 + 32))(v19, v12, v3);
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v3);
      sub_266594028(v19, &qword_28007D140, &qword_26666F140);
      sub_2665D3034();
      v43 = v42;
    }

    else
    {
      v43 = 1;
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v3);
      sub_266594028(v19, &qword_28007D140, &qword_26666F140);
    }
  }

  else
  {
LABEL_11:
    v43 = 0;
  }

  return v43 & 1;
}

void sub_2665D42A4()
{
  OUTLINED_FUNCTION_28_0();
  v85 = v0;
  v1 = sub_266668EB8();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v82 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  OUTLINED_FUNCTION_1_0();
  v7 = sub_266668E68();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v81 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8, v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v17 = OUTLINED_FUNCTION_3_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_10_5();
  v83 = v21 - v22;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v78 - v25;
  v27 = sub_266668D38();
  v28 = OUTLINED_FUNCTION_3_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28, v33);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v34, v35);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v36, v37);
  v38 = [v85 startDate];
  if (v38)
  {
    v39 = v38;
    sub_266668CE8();

    v40 = [v85 endDate];
    if (v40)
    {
      v41 = v40;
      sub_266668CE8();

      sub_266668CF8();
      if (sub_266668CA8() & 1) != 0 && (sub_266668C98())
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v42 = sub_26666C168();
        __swift_project_value_buffer(v42, qword_28156D7E8);
        v43 = sub_26666C148();
        v79 = sub_26666C5E8();
        v80 = v43;
        if (os_log_type_enabled(v43, v79))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_266549000, v80, v79, "#adjustForPastStart setting start datetime to now", v44, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_266668E58();
        sub_266668EA8();
        sub_266668DD8();
        v45 = *(v82 + 8);
        v46 = OUTLINED_FUNCTION_35_4();
        v47(v46);
        (*(v81 + 8))(v15, v7);
        v48 = sub_266668B08();
        v49 = 1;
        OUTLINED_FUNCTION_26_2();
        __swift_storeEnumTagSinglePayload(v50, v51, v52, v48);
        v53 = [v85 endDateComponents];
        if (v53)
        {
          v54 = v53;
          v55 = v83;
          sub_266668A28();

          v49 = 0;
        }

        else
        {
          v55 = v83;
        }

        __swift_storeEnumTagSinglePayload(v55, v49, 1, v48);
        v69 = [v85 recurrenceRule];
        v70 = sub_2665D50F8(v85);
        v72 = v71;
        v73 = [v85 allDay];
        v74 = objc_allocWithZone(MEMORY[0x277CD3B68]);
        sub_26660B270(v26, v55, v69, v70, v72, v73);
        v75 = *(v30 + 8);
        v76 = OUTLINED_FUNCTION_23_7();
        v75(v76);
        (v75)(v84, v27);
        v77 = OUTLINED_FUNCTION_45();
        v75(v77);
        OUTLINED_FUNCTION_27_0();
        return;
      }

      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v56 = sub_26666C168();
      __swift_project_value_buffer(v56, qword_28156D7E8);
      v57 = sub_26666C148();
      v58 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_2(v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_266549000, v57, v58, "#adjustForPastStart not modifying start datetime", v59, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v60 = *(v30 + 8);
      v61 = OUTLINED_FUNCTION_23_7();
      v60(v61);
      (v60)(v84, v27);
      v62 = OUTLINED_FUNCTION_45();
      v60(v62);
    }

    else
    {
      v63 = *(v30 + 8);
      v64 = OUTLINED_FUNCTION_45();
      v65(v64);
    }
  }

  OUTLINED_FUNCTION_27_0();

  v68 = v66;
}

void sub_2665D4854()
{
  OUTLINED_FUNCTION_28_0();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_10_5();
  v17 = MEMORY[0x28223BE20](v15, v16);
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_18_7();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_6_14();
  if (v9)
  {
    v75 = v34;
    v76 = v33;
    v35 = v9;
    v36 = [v35 startDateComponents];
    if (v36)
    {
      v37 = v36;
      sub_266668A28();

      v38 = sub_266668B08();
      v39 = 0;
    }

    else
    {
      v38 = sub_266668B08();
      v39 = 1;
    }

    v40 = 1;
    __swift_storeEnumTagSinglePayload(v5, v39, 1, v38);
    sub_2665D515C(v5, v3);
    v41 = [v35 endDateComponents];
    if (v41)
    {
      v42 = v41;
      sub_266668A28();

      v40 = 0;
    }

    v43 = sub_266668B08();
    OUTLINED_FUNCTION_3_24(v2, v40);
    v44 = OUTLINED_FUNCTION_45();
    sub_2665D515C(v44, v45);
    OUTLINED_FUNCTION_1_28(v0);
    if (v46)
    {
      sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);

LABEL_39:
      sub_266594028(v0, &unk_28007DC90, &qword_266676EB0);
      goto LABEL_40;
    }

    sub_2665A9D2C(v3, v1);
    OUTLINED_FUNCTION_1_28(v1);
    if (v46)
    {
      sub_266594028(v1, &unk_28007DC90, &qword_266676EB0);
      v47 = 0;
      v49 = 1;
    }

    else
    {
      v47 = sub_266668A78();
      v49 = v48;
      OUTLINED_FUNCTION_0_15();
      v51 = *(v50 + 8);
      v52 = OUTLINED_FUNCTION_19_13();
      v53(v52);
    }

    sub_2665A9D2C(v0, v7);
    OUTLINED_FUNCTION_1_28(v7);
    if (v46)
    {
      sub_266594028(v7, &unk_28007DC90, &qword_266676EB0);
      if ((v49 & 1) == 0)
      {
LABEL_38:

        sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
        goto LABEL_39;
      }
    }

    else
    {
      v74 = v47;
      v54 = sub_266668A78();
      v56 = v55;
      OUTLINED_FUNCTION_0_15();
      v58 = *(v57 + 8);
      v59 = OUTLINED_FUNCTION_35_4();
      v60(v59);
      if (v49)
      {
        if ((v56 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if ((v56 & 1) != 0 || v74 != v54)
      {
        goto LABEL_38;
      }
    }

    sub_2665A9D2C(v3, v6);
    OUTLINED_FUNCTION_1_28(v6);
    if (v46)
    {
      sub_266594028(v6, &unk_28007DC90, &qword_266676EB0);
      v61 = 0;
      v63 = 1;
    }

    else
    {
      v61 = sub_266668A88();
      v63 = v62;
      OUTLINED_FUNCTION_0_15();
      (*(v64 + 8))(v6, v43);
    }

    sub_2665A9D2C(v0, v4);
    OUTLINED_FUNCTION_1_28(v4);
    if (v46)
    {
      sub_266594028(v4, &unk_28007DC90, &qword_266676EB0);
      if ((v63 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v65 = sub_266668A88();
      v67 = v66;
      OUTLINED_FUNCTION_0_15();
      (*(v68 + 8))(v4, v43);
      if (v63)
      {
        if ((v67 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if ((v67 & 1) != 0 || v61 != v65)
      {
        goto LABEL_38;
      }
    }

    sub_2665A9D2C(v3, v75);
    OUTLINED_FUNCTION_1_28(v75);
    if (v46)
    {
      sub_266594028(v75, &unk_28007DC90, &qword_266676EB0);
    }

    else
    {
      sub_266668A38();
      OUTLINED_FUNCTION_0_15();
      v70 = *(v69 + 8);
      v71 = OUTLINED_FUNCTION_19_13();
      v72(v71);
    }

    sub_2665A9D2C(v0, v76);
    OUTLINED_FUNCTION_1_28(v76);
    if (v46)
    {
      OUTLINED_FUNCTION_32_6(v3);

      OUTLINED_FUNCTION_32_6(v76);
    }

    else
    {
      sub_266668A38();

      sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
      OUTLINED_FUNCTION_0_15();
      (*(v73 + 8))(v76, v43);
    }

    goto LABEL_39;
  }

LABEL_40:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665D4E04()
{
  OUTLINED_FUNCTION_28_0();
  v5 = v4;
  v7 = v6;
  v56 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v10 = OUTLINED_FUNCTION_3_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_10_5();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_18_7();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v55 - v23;
  v25 = sub_266668B08();
  v26 = OUTLINED_FUNCTION_3_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26, v31);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_6_14();
  if (!v7)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v25);
LABEL_8:
    v41 = v24;
LABEL_17:
    sub_266594028(v41, &unk_28007DC90, &qword_266676EB0);
    goto LABEL_18;
  }

  v34 = [v7 *v5];
  if (v34)
  {
    v35 = v34;
    sub_266668A28();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v36, 1, v25);
  sub_2665D515C(v3, v24);
  OUTLINED_FUNCTION_27_5(v24, 1, v25);
  if (v40)
  {
    goto LABEL_8;
  }

  v42 = *(v28 + 32);
  v42(v1, v24, v25);
  if (!v56)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v25);
LABEL_16:
    v49 = *(v28 + 8);
    v50 = OUTLINED_FUNCTION_23_2();
    v51(v50);
    v41 = v0;
    goto LABEL_17;
  }

  v43 = [v56 *v5];
  if (v43)
  {
    v44 = v43;
    sub_266668A28();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v45, 1, v25);
  sub_2665D515C(v16, v0);
  OUTLINED_FUNCTION_27_5(v0, 1, v25);
  if (v40)
  {
    goto LABEL_16;
  }

  v52 = OUTLINED_FUNCTION_23_7();
  (v42)(v52);
  sub_266645474();
  v53 = *(v28 + 8);
  v53(v2, v25);
  v54 = OUTLINED_FUNCTION_23_2();
  (v53)(v54);
LABEL_18:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665D50F8(void *a1)
{
  v1 = [a1 userInput];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

uint64_t sub_2665D515C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2665D51CC()
{
  result = qword_28007E9E8;
  if (!qword_28007E9E8)
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1)
{

  return sub_266594028(a1, v1, v2);
}

unint64_t sub_2665D5350(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 8)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v2 = sub_26666C168();
    __swift_project_value_buffer(v2, qword_28156D7E8);
    v3 = sub_26666C148();
    v4 = sub_26666C608();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_266549000, v3, v4, "Unknown EKParticipantStatus: %ld", v5, 0xCu);
      MEMORY[0x266789690](v5, -1, -1);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2665D5448(uint64_t a1, unsigned __int8 *a2)
{
  v3 = OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_promptedForEventRecurrence;
  v4 = a2[OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_promptedForEventRecurrence];
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = a2;
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  v9 = v4 ^ 1u;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v9;
    *(v10 + 8) = 1024;
    *(v10 + 10) = a2[v3];

    _os_log_impl(&dword_266549000, v7, v8, "[DeleteEvent.FlowProducersAsync] Should Confirm Intent: %{BOOL}d; Prompted For EventRecurrence: %{BOOL}d", v10, 0xEu);
    MEMORY[0x266789690](v10, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  return v9;
}

uint64_t sub_2665D5588(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2665D55C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665D5644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = sub_266669E18();
  v4 = OUTLINED_FUNCTION_3_0(v66);
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v4, v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v65 - v18;
  v20 = sub_266669E58();
  v21 = OUTLINED_FUNCTION_3_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21, v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266669DF8();
  v29 = sub_266561674(v28, v71);
  (*(v23 + 8))(v28, v20, v29);
  if (v71[0] == 3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    OUTLINED_FUNCTION_12_9();
    v31 = v66;
    v32(v12, a1, v66);
    v33 = sub_26666C148();
    v34 = sub_26666C618();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_21();
      v35 = OUTLINED_FUNCTION_13();
      v69 = v35;
      *v16 = 136315138;
      sub_2665B934C();
      sub_26666CAA8();
      OUTLINED_FUNCTION_11_12();
      v36(v12, v31);
      v37 = OUTLINED_FUNCTION_21_5();
      v40 = sub_2665BFC90(v37, v38, v39);

      *(v16 + 4) = v40;
      _os_log_impl(&dword_266549000, v33, v34, "[DeleteEvent ConfirmIntent] Returning .ignore() for input: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      (*(v6 + 8))(v12, v31);
    }

    sub_2666697E8();
  }

  else
  {
    sub_2665B9288(v71, &v69);
    if (v69 == 2)
    {
      v41 = v66;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v42 = sub_26666C168();
      __swift_project_value_buffer(v42, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v43();
      v44 = sub_26666C148();
      v45 = sub_26666C618();
      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_21();
        v46 = OUTLINED_FUNCTION_13();
        v68 = v46;
        *v16 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v47(v19, v41);
        v48 = OUTLINED_FUNCTION_21_5();
        v51 = sub_2665BFC90(v48, v49, v50);

        *(v16 + 4) = v51;
        _os_log_impl(&dword_266549000, v44, v45, "[DeleteEvent ConfirmIntent] Returning .cancel() for input: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v6 + 8))(v19, v41);
      }

      sub_2666697C8();
    }

    else
    {
      v52 = v66;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v53 = sub_26666C168();
      __swift_project_value_buffer(v53, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v54();
      v55 = sub_26666C148();
      v56 = sub_26666C618();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_21();
        v58 = swift_slowAlloc();
        v68 = v58;
        *v57 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v59(v16, v52);
        v60 = OUTLINED_FUNCTION_21_5();
        v63 = sub_2665BFC90(v60, v61, v62);

        *(v57 + 4) = v63;
        _os_log_impl(&dword_266549000, v55, v56, "[DeleteEvent ConfirmIntent] Returning .handle() for input: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        (*(v6 + 8))(v16, v52);
      }

      sub_2666697D8();
      sub_266557D74(&v70, &unk_28007D200, &qword_26666FD20);
    }
  }

  return sub_266557D74(v71, &qword_28007E368, &unk_266673E30);
}

uint64_t sub_2665D5C00()
{
  OUTLINED_FUNCTION_14();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = sub_266669E18();
  v1[20] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[21] = v6;
  v8 = *(v7 + 64);
  v1[22] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64);
  v1[23] = OUTLINED_FUNCTION_19();
  v12 = sub_266669E58();
  v1[24] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[25] = v13;
  v15 = *(v14 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2665D5D24()
{
  v46 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1(*(v0 + 152), *(*(v0 + 152) + 24));
  sub_266669DF8();
  v5 = sub_266561674(v1, v0 + 16);
  (*(v2 + 8))(v1, v3, v5);
  sub_2665B9288(v0 + 16, v0 + 72);
  v6 = *(v0 + 72);
  if (v6 == 2)
  {
    sub_2665B92F8(v0 + 72);
    goto LABEL_5;
  }

  if (v6 == 3)
  {
    sub_266557D74(v0 + 72, &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 160);
    v10 = *(v0 + 136);
    v11 = sub_26666C168();
    v12 = __swift_project_value_buffer(v11, qword_28156D7E8);
    (*(v8 + 16))(v7, v10, v9);
    v13 = sub_26666C148();
    v14 = sub_26666C5F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 208);
      v16 = *(v0 + 192);
      v18 = *(v0 + 168);
      v17 = *(v0 + 176);
      v19 = *(v0 + 160);
      OUTLINED_FUNCTION_21();
      v20 = OUTLINED_FUNCTION_13();
      v45 = v20;
      *v12 = 136315138;
      sub_266669DF8();
      v21 = sub_26666C318();
      v23 = v22;
      v24 = *(v18 + 8);
      v25 = OUTLINED_FUNCTION_21_5();
      v26(v25);
      v27 = sub_2665BFC90(v21, v23, &v45);

      *(v12 + 4) = v27;
      _os_log_impl(&dword_266549000, v13, v14, "[DeleteEvent ConfirmIntent] Did not get ConfirmationTask from parse: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v29 = *(v0 + 168);
      v28 = *(v0 + 176);
      v30 = *(v0 + 160);

      (*(v29 + 8))(v28, v30);
    }

    v31 = *(v0 + 208);
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    sub_26656CBFC();
    v34 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v34, v35);
    sub_266557D74(v0 + 16, &qword_28007E368, &unk_266673E30);

    OUTLINED_FUNCTION_24_1();
    goto LABEL_14;
  }

  v37 = *(v0 + 208);
  v38 = *(v0 + 176);
  v39 = *(v0 + 184);
  v40 = *(v0 + 144);
  v41 = *(v0 + 128);
  sub_266557D74(v0 + 80, &unk_28007D200, &qword_26666FD20);
  v42 = sub_266669AF8();
  v43 = MEMORY[0x277D5BED0];
  if ((v6 & 1) == 0)
  {
    v43 = MEMORY[0x277D5BED8];
  }

  (*(*(v42 - 8) + 104))(v39, *v43, v42);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E9F0, &qword_266675E18);
  sub_266669B68();
  sub_266552C44(0, &qword_28007D010, 0x277CD3B98);
  sub_266669A98();
  sub_266557D74(v0 + 16, &qword_28007E368, &unk_266673E30);

  OUTLINED_FUNCTION_24_1();
LABEL_14:

  return v36();
}

uint64_t sub_2665D6108()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[30] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v1[31] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v1[32] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[33] = v11;
  v13 = *(v12 + 64);
  v1[34] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v14);
  v16 = *(v15 + 64);
  v1[35] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v17);
  v19 = *(v18 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v20 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v20);
  v22 = *(v21 + 64);
  v1[38] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2665D6298()
{
  if (qword_28156C150 != -1)
  {
LABEL_40:
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[DeleteEvent.ConfirmIntent] Making confirm delete output", v4, 2u);
    OUTLINED_FUNCTION_12();
  }

  v5 = v0[28];
  v6 = v0[29];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E9F0, &qword_266675E18);
  v7 = sub_266669B68();
  v8 = sub_26658C0E0(v7);
  v10 = v9;
  v11 = *__swift_project_boxed_opaque_existential_1((v6 + 80), *(v6 + 104));
  v0[5] = type metadata accessor for EventProvider();
  v0[6] = &off_287806290;
  v0[2] = v11;
  sub_26655358C((v0 + 2), (v0 + 7));

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (!v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    goto LABEL_20;
  }

  v12 = *__swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);

  v13 = sub_26655A8B4();
  v14 = sub_26665140C(v8, v10, v13);
  v0[39] = v14;

  swift_bridgeObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (!v14)
  {
LABEL_20:
    v33 = sub_26666C148();
    v34 = sub_26666C608();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_266549000, v33, v34, "[DeleteEvent ConfirmIntent] target event identifier unexpectedly nil on intent", v35, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    sub_26656CBFC();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v36, v37);
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_24_1();

    return v49();
  }

  v15 = sub_26666B078();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_26666B068();
  v0[40] = v18;
  v19 = sub_26666AF28();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_26666AF18();
  v0[41] = v22;
  sub_26666AC38();
  sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
  v23 = v14;
  sub_2665EB4F8();
  v25 = v24;
  v0[42] = v24;
  v61 = v23;
  v26 = sub_2665EF6AC(v61);
  v27 = *&v26;
  if (v26)
  {
    v56 = v0;
    v57 = v25;
    v58 = v22;
    v59 = v18;
    v60 = v6;
    v62 = MEMORY[0x277D84F90];
    v28 = sub_2665C485C(v26);
    v29 = 0;
    v0 = (*&v27 & 0xC000000000000001);
    while (v28 != v29)
    {
      if (v0)
      {
        v30 = MEMORY[0x266788B60](v29, *&v27);
      }

      else
      {
        if (v29 >= *((*&v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v30 = *(*&v27 + 8 * v29 + 32);
      }

      v31 = v30;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ([v30 participantType] == 1 && (objc_msgSend(v31, sel_isCurrentUser) & 1) == 0)
      {
        sub_26666C868();
        v32 = *(v62 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v29;
    }

    v38 = sub_2665C485C(v62);

    v39 = v38 <= 3;
    if (v38 <= 3)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = (v38 - 3);
    }

    v40 = v39;
    v6 = v60;
    v0 = v56;
  }

  else
  {
    v40 = 1;
  }

  v41 = v0[38];
  sub_26655358C(v6 + 80, (v0 + 12));
  v42 = v25;
  sub_2665AAA8C(v42, (v0 + 12), v43, v44, v45, v46, v47, v48, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v51 = v0[29];
  v52 = *(v51 + 120);
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v51 + 40, (v0 + 17));
  v53 = sub_2665CA7F4(v42, v0 + 17);
  v0[43] = v53;
  v54 = swift_task_alloc();
  v0[44] = v54;
  *v54 = v0;
  v54[1] = sub_2665D6818;

  return sub_2665DD990(v53, 0, 0, *&v27, v40);
}

uint64_t sub_2665D6818(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v7 = *(v3 + 344);

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665D6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 368);
  v16 = *(v14 + 320);
  v18 = *(v14 + 296);
  v17 = *(v14 + 304);
  v20 = *(v14 + 280);
  v19 = *(v14 + 288);
  sub_26655358C(*(v14 + 232) + 128, v14 + 176);
  v21 = *(v14 + 208);
  __swift_project_boxed_opaque_existential_1((v14 + 176), *(v14 + 200));
  sub_2665B5F10(v17, v18);
  v22 = type metadata accessor for Snippet();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v22);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  sub_266662A60(v16, v20);
  if (v15)
  {
    v26 = *(v14 + 328);
    v27 = *(v14 + 336);
    v29 = *(v14 + 312);
    v28 = *(v14 + 320);
    v31 = *(v14 + 296);
    v30 = *(v14 + 304);
    v32 = *(v14 + 288);

    sub_266557D74(v32, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v31, &unk_28007DE30, &unk_26666EAF0);
    sub_2665AE46C(v30);
    __swift_destroy_boxed_opaque_existential_1((v14 + 176));
    v34 = *(v14 + 296);
    v33 = *(v14 + 304);
    v36 = *(v14 + 280);
    v35 = *(v14 + 288);
    v37 = *(v14 + 272);
    v39 = *(v14 + 240);
    v38 = *(v14 + 248);

    OUTLINED_FUNCTION_24_1();

    return v40();
  }

  else
  {
    v43 = *(v14 + 272);
    v42 = *(v14 + 280);
    v45 = *(v14 + 240);
    v44 = *(v14 + 248);
    v46 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v46);
    sub_2666696B8();
    sub_26666BB08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    sub_266669788();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    sub_26656CFC4();
    v55 = swift_task_alloc();
    *(v14 + 376) = v55;
    *v55 = v14;
    v55[1] = sub_2665D6C24;
    v56 = *(v14 + 360);
    v58 = *(v14 + 288);
    v57 = *(v14 + 296);
    v60 = *(v14 + 272);
    v59 = *(v14 + 280);
    v61 = *(v14 + 216);
    v72 = *(v14 + 248);
    v73 = *(v14 + 240);
    OUTLINED_FUNCTION_4_7();

    return sub_2665643AC(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2665D6C24()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[47];
  v3 = v1[37];
  v4 = v1[36];
  v5 = v1[35];
  v6 = v1[34];
  v7 = v1[33];
  v8 = v1[32];
  v9 = v1[31];
  v10 = v1[30];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  sub_266557D74(v10, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v9, &unk_28007DE20, &unk_26666EAE0);
  (*(v7 + 8))(v6, v8);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v13, v14, v15);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v16, v17, v18);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2665D6E50()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 240);

  sub_2665AE46C(v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  OUTLINED_FUNCTION_24_1();

  return v10();
}

uint64_t sub_2665D6F4C()
{
  v1 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];

  sub_2665AE46C(v5);
  v6 = v0[46];
  OUTLINED_FUNCTION_20_10();

  OUTLINED_FUNCTION_24_1();

  return v7();
}

uint64_t sub_2665D7018()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D70AC();
}

uint64_t sub_2665D70AC()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_266669708();
  v1[9] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[10] = v4;
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v10);
  v12 = *(v11 + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v16);
  v18 = *(v17 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2665D7218()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 64);
  sub_26655358C(v3 + 128, v0 + 16);
  v4 = *(v0 + 40);
  *(v0 + 136) = v4;
  *(v0 + 152) = __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v5 = type metadata accessor for Snippet();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  v12 = *(v3 + 120);
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_2665D7308;

  return sub_2665DE2B8();
}

uint64_t sub_2665D7308(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = v4[20];
  v7 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v5[21] = v1;

  if (v1)
  {
    v9 = v5[16];
    sub_266557D74(v5[15], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v9, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[22] = a1;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665D744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[17];
  v16 = v14[18];
  v18 = v14[13];
  v17 = v14[14];
  v20 = v14[11];
  v19 = v14[12];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_2666696A8();
  sub_26656CFC4();
  v33 = swift_task_alloc();
  v14[23] = v33;
  *v33 = v14;
  v33[1] = sub_2665D75A0;
  v34 = v14[22];
  v35 = v14[19];
  v36 = v14[16];
  v38 = v14[14];
  v37 = v14[15];
  v39 = v14[11];
  v40 = v14[7];
  v45 = v14[17];
  v46 = v14[18];
  v43 = v14[13];
  v44 = v14[12];

  return sub_2665643AC(v40, v36, v37, v34, 0, 0, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665D75A0()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[23];
  v3 = v1[22];
  v24 = v1[16];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[10];
  v10 = v1[9];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  (*(v9 + 8))(v8, v10);
  sub_266557D74(v7, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v6, &unk_28007DE20, &unk_26666EAE0);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v13, v14, v15);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v16, v17, v18);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2665D77E8()
{
  OUTLINED_FUNCTION_22_3();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665D787C()
{
  OUTLINED_FUNCTION_22_3();

  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 168);

  return v1();
}

uint64_t sub_2665D7914()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D5C00();
}

uint64_t sub_2665D79C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D6108();
}

uint64_t sub_2665D7A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B430] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9D08](a1, a2, a3, a4);
}

uint64_t sub_2665D7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9D10](a1, a2, a3, a4);
}

uint64_t sub_2665D7BF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D7018();
}

uint64_t sub_2665D7C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665D70AC();
}

uint64_t sub_2665D7D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26656CD98;

  return MEMORY[0x2821B9D00](a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_20_10()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v8 = v0[30];
  v7 = v0[31];
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t type metadata accessor for CommonCATsSimple()
{
  result = qword_28156CB40;
  if (!qword_28156CB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665D7EE4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2665D987C;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000029, 0x800000026667EC70, v3);
}

uint64_t sub_2665D7F9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665D7FB4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_266671D70;
  *(v2 + 32) = 0x746E657665;
  *(v2 + 40) = 0xE500000000000000;
  if (v1)
  {
    type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v3 = v0[3];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_15_11();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(v2 + 88) = 0xE800000000000000;
  *(v2 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v2 + 96) = v3;
  v6 = *MEMORY[0x277D55C70];
  v7 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_7_11();

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_20_11(v8);
  v9 = OUTLINED_FUNCTION_8_16();

  return v11(v9);
}

uint64_t sub_2665D8118()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_6_5();

    return v14(v13);
  }
}

uint64_t sub_2665D8244(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665D8260()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_266671D70;
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000026667EC10;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "numConflicts");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v7 = MEMORY[0x277D839F8];
  }

  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  v8 = *MEMORY[0x277D55C70];
  v9 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_7_11();
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_20_11(v10);
  OUTLINED_FUNCTION_19_14();

  return v11();
}

uint64_t sub_2665D83E8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_6_5();

    return v14(v13);
  }
}

uint64_t sub_2665D8514()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v5);
  v7 = *(v6 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665D85A8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_266672100;
  *(v3 + 32) = 0x7954746E65746E69;
  *(v3 + 40) = 0xEA00000000006570;
  OUTLINED_FUNCTION_23_8(v3, v4, &unk_28007D130, &unk_266671DF0);
  v5 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v5) == 1)
  {
    sub_266557D74(*(v0 + 40), &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_26();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_17_5();
    v8();
  }

  v9 = *(v0 + 72);
  v10 = *(v0 + 24);
  *(v3 + 80) = 0x73746E657665;
  *(v3 + 88) = 0xE600000000000000;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DDA0, &qword_266675EA0);
  *(v3 + 96) = v10;
  *(v3 + 120) = v11;
  *(v3 + 128) = 0xD000000000000019;
  *(v3 + 136) = 0x800000026667EBF0;
  *(v3 + 168) = MEMORY[0x277D839B0];
  *(v3 + 144) = v9;
  v12 = *(MEMORY[0x277D55C70] + 4);
  v15 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_20_11(v13);

  return v15(0xD000000000000018, 0x800000026667EBD0, v3);
}

uint64_t sub_2665D87C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_5_11();

    return v15(v14);
  }
}

uint64_t sub_2665D88F0()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_24_1();
  v4 = v0[8];

  return v3();
}

uint64_t sub_2665D8954()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v8);
  v10 = *(v9 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2665D89EC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  v4 = OUTLINED_FUNCTION_12_13(v3, xmmword_266671D50);
  OUTLINED_FUNCTION_23_8(v4, v5, &unk_28007D130, &unk_266671DF0);
  v6 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v6) == 1)
  {
    sub_266557D74(*(v0 + 64), &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_26();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_17_5();
    v9();
  }

  v10 = *(v0 + 24);
  strcpy((v3 + 80), "dateTimeRange");
  *(v3 + 94) = -4864;
  if (v10)
  {
    v11 = sub_26666BB78();
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v13 = *(v0 + 32);
  *(v3 + 96) = v12;
  *(v3 + 120) = v11;
  *(v3 + 128) = 0x6E65727275636572;
  *(v3 + 136) = 0xEA00000000006563;
  if (v13)
  {
    v14 = type metadata accessor for CalendarEventRecurrence();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 96);
  *(v3 + 144) = v15;
  *(v3 + 168) = v14;
  *(v3 + 176) = 0x7961446C6C417369;
  v19 = MEMORY[0x277D839B0];
  *(v3 + 184) = 0xE800000000000000;
  *(v3 + 192) = v18;
  *(v3 + 216) = v19;
  *(v3 + 224) = 0x7365657469766E69;
  *(v3 + 232) = 0xE800000000000000;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v3 + 240) = v17;
  *(v3 + 264) = v20;
  *(v3 + 272) = 0x6E6F697461636F6CLL;
  *(v3 + 280) = 0xE800000000000000;
  v21 = 0;
  if (v16)
  {
    v21 = sub_26666BD58();
  }

  else
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  *(v3 + 288) = v16;
  *(v3 + 312) = v21;
  v22 = *MEMORY[0x277D55C70];
  v23 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_7_11();

  v24 = swift_task_alloc();
  *(v0 + 80) = v24;
  *v24 = v0;
  v24[1] = sub_266592C28;
  v25 = *(v0 + 56);
  v26 = OUTLINED_FUNCTION_8_16();

  return v28(v26);
}

uint64_t sub_2665D8CB8()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665D8D54()
{
  v1 = v0[7];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[8] = v3;
  v4 = OUTLINED_FUNCTION_12_13(v3, xmmword_266672100);
  OUTLINED_FUNCTION_23_8(v4, v5, &unk_28007D130, &unk_266671DF0);
  v6 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v6) == 1)
  {
    sub_266557D74(v0[7], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_26();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_17_5();
    v9();
  }

  v10 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  OUTLINED_FUNCTION_15_11();
  *(v3 + 80) = v13 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(v3 + 88) = 0xE800000000000000;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v3 + 96) = v11;
  *(v3 + 120) = v14;
  *(v3 + 128) = 0x756F4E746E657665;
  *(v3 + 136) = 0xE90000000000006ELL;
  sub_26659236C(v12, v10, &unk_28007D130, &unk_266671DF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v2);
  v16 = v0[6];
  v17 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    v18 = v0[3];

    sub_266557D74(v16, &unk_28007D130, &unk_266671DF0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_4_26();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_17_5();
    v21();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v27 = v22;
  v23 = swift_task_alloc();
  v0[9] = v23;
  *v23 = v0;
  v23[1] = sub_2665D8FC0;
  v24 = v0[5];
  v25 = OUTLINED_FUNCTION_8_16();

  return v27(v25);
}

uint64_t sub_2665D8FC0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = OUTLINED_FUNCTION_5_11();

    return v16(v15);
  }
}

uint64_t sub_2665D90FC()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_24_1();
  v5 = v0[10];

  return v4();
}

uint64_t sub_2665D916C()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665D91FC()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_266671D70;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x800000026667E140;
  OUTLINED_FUNCTION_23_8(v3, v4, &unk_28007D130, &unk_266671DF0);
  v5 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v5) == 1)
  {
    sub_266557D74(v0[5], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_26();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_17_5();
    v8();
  }

  v9 = v0[3];
  OUTLINED_FUNCTION_15_11();
  *(v3 + 80) = v10 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  *(v3 + 88) = 0xE700000000000000;
  v11 = 0;
  if (v9)
  {
    v11 = sub_26666BCA8();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v9;
  *(v3 + 120) = v11;
  v12 = *MEMORY[0x277D55C70];
  v13 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_7_11();
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_20_11(v14);
  OUTLINED_FUNCTION_19_14();

  return v15();
}

uint64_t sub_2665D93C4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_5_11();

    return v15(v14);
  }
}

uint64_t sub_2665D94F4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_26658BF28;
  v3 = OUTLINED_FUNCTION_8_16();

  return v5(v3);
}

uint64_t sub_2665D95A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_17_5();
  return sub_2665D95F4(v3, v4);
}

uint64_t sub_2665D95F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v15 = OUTLINED_FUNCTION_3_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  sub_26659236C(a1, &v22 - v19, &qword_28007D2B0, &qword_26666E5F0);
  (*(v8 + 16))(v13, a2, v2);
  v20 = sub_26666BDB8();
  (*(v8 + 8))(a2, v2);
  sub_266557D74(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v20;
}

uint64_t sub_2665D976C(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v13, a2, v3);
  v16 = sub_26666BDC8();
  (*(v8 + 8))(a2, v3);
  return v16;
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

__n128 *OUTLINED_FUNCTION_12_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656C746974;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26659236C(v4, v5, a3, a4);
}

uint64_t sub_2665D9924()
{
  if (sub_26666A9F8())
  {
    v0 = sub_26666ABB8();
    v2 = v1;

    if (v2)
    {
      goto LABEL_6;
    }
  }

  v3 = sub_26666A9F8();
  if (v3)
  {
    v4 = sub_26666ABC8();

    if (v4)
    {
      v0 = sub_26666AAF8();
      v2 = v5;

      if (v2)
      {
LABEL_6:
        sub_2665BD5A0();
        v6 = objc_allocWithZone(MEMORY[0x277CE41F8]);

        v3 = sub_266606794([v6 init], v0, v2, 0);
        goto LABEL_7;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_7:

  return v3;
}

uint64_t sub_2665D9A28()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v0 = sub_26666C168();
  __swift_project_value_buffer(v0, qword_28156D7E8);

  v1 = sub_26666C148();
  v2 = sub_26666C618();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    sub_26666AA48();

    v5 = sub_26666C318();
    v7 = sub_2665BFC90(v5, v6, &v12);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_266549000, v1, v2, "[USOIntentHelpers] Attempting to make event attribute for %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x266789690](v4, -1, -1);
    MEMORY[0x266789690](v3, -1, -1);
  }

  if (sub_26666A9E8())
  {

    return 3;
  }

  else if (sub_26666AA38() || sub_26666A9D8())
  {

    return 2;
  }

  else if (sub_26666AA28() || sub_26666A9F8())
  {

    return 1;
  }

  else
  {
    v9 = sub_26666C148();
    v10 = sub_26666C5F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_20();
      *v11 = 0;
      _os_log_impl(&dword_266549000, v9, v10, "[USOIntentHelpers] Unsupported requested event attribute", v11, 2u);
      MEMORY[0x266789690](v11, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_2665D9C5C(uint64_t a1, char *a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;
  v6 = sub_26666A318();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E9F8, &qword_266675EA8);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v74 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  i = &v68 - v26;
  v28 = sub_26666A4C8();
  v78 = *(v28 + 16);
  v79 = v7;
  if (v78)
  {
    v71 = a3;
    v72 = v12;
    v73 = i;
    v29 = *(v7 + 16);
    v76 = v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v77 = v29;
    (v29)(v19);
    v30 = v7 + 8;
    v75 = (v7 + 32);
    for (i = 1; ; ++i)
    {
      if (v78 == i)
      {

        i = v73;
        (*v75)(v73, v19, v6);
        __swift_storeEnumTagSinglePayload(i, 0, 1, v6);
        v7 = v79;
        v12 = v72;
        goto LABEL_11;
      }

      if (i >= *(v28 + 16))
      {
        break;
      }

      LODWORD(v7) = v28;
      v3 = v79;
      v77(v16, v76 + *(v79 + 72) * i, v6);
      v4 = sub_26666A2F8();
      v31 = sub_26666A2F8();
      v32 = *(v3 + 8);
      if (v4 >= v31)
      {
        v32(v16, v6);
      }

      else
      {
        v32(v19, v6);
        (*v75)(v19, v16, v6);
      }
    }

    __break(1u);
LABEL_41:
    if (v7 == v4)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  __swift_storeEnumTagSinglePayload(i, 1, 1, v6);
LABEL_11:
  v33 = sub_26666A278();
  if ((v33 & 0x100000000) != 0 || (v34 = v33, v35 = sub_26666A298(), (v35 & 0x100000000) != 0))
  {
LABEL_15:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v37 = sub_26666C168();
    __swift_project_value_buffer(v37, qword_28156D7E8);
    v38 = sub_26666C148();
    v39 = sub_26666C5F8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v40);
      OUTLINED_FUNCTION_3_25(&dword_266549000, v41, v39, "[USOIntentHelpers] Missing required indexes from entity span or utterance alignment");
      OUTLINED_FUNCTION_11_6();
    }

    goto LABEL_20;
  }

  LODWORD(v3) = v35;
  v36 = v74;
  sub_2665DA3BC(i, v74);
  if (__swift_getEnumTagSinglePayload(v36, 1, v6) == 1)
  {
    sub_2665DA354(v36);
    goto LABEL_15;
  }

  (*(v7 + 32))(v12, v36, v6);
  if (sub_26666A2F8() > v34 || sub_26666A308() < v3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v44 = sub_26666C168();
    __swift_project_value_buffer(v44, qword_28156D7E8);
    v45 = sub_26666C148();
    v46 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_4_11(v46))
    {
      v47 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v47);
      OUTLINED_FUNCTION_3_25(&dword_266549000, v48, v3, "[USOIntentHelpers] Entity span is not contained within utterance alignment");
      OUTLINED_FUNCTION_11_6();
    }

    (*(v7 + 8))(v12, v6);
    goto LABEL_20;
  }

  v49 = sub_26666A2F8();
  v50 = v34 - v49;
  if (v34 < v49)
  {
    __break(1u);
    goto LABEL_51;
  }

  v78 = v6;
  v51 = sub_26666A2F8();
  LODWORD(v7) = v3 - v51;
  if (v3 < v51)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v52 = sub_26666A308();
  v19 = v12;
  v53 = sub_26666A2F8();
  v4 = v52 - v53;
  if (v52 < v53)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v30 = v69;
  v16 = v70;
  if (MEMORY[0x266788730](v69, v70) != v4)
  {
    if (qword_28156C150 == -1)
    {
LABEL_38:
      v54 = sub_26666C168();
      __swift_project_value_buffer(v54, qword_28156D7E8);
      v55 = sub_26666C148();
      v56 = sub_26666C5F8();
      v57 = OUTLINED_FUNCTION_4_11(v56);
      v58 = v79;
      if (!v57)
      {
LABEL_47:

        (*(v58 + 8))(v19, v78);
LABEL_20:
        v42 = 0;
LABEL_21:
        sub_2665DA354(i);
        return v42;
      }

      v59 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v59);
      v61 = "[USOIntentHelpers] Base string string length is not the same as utterance alignment";
LABEL_46:
      OUTLINED_FUNCTION_3_25(&dword_266549000, v60, v3, v61);
      OUTLINED_FUNCTION_11_6();
      goto LABEL_47;
    }

LABEL_53:
    OUTLINED_FUNCTION_1_1();
    goto LABEL_38;
  }

  if (!v50)
  {
    goto LABEL_41;
  }

  if (v7 != v4)
  {
LABEL_42:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v62 = sub_26666C168();
    __swift_project_value_buffer(v62, qword_28156D7E8);
    v55 = sub_26666C148();
    v63 = sub_26666C618();
    v64 = OUTLINED_FUNCTION_4_11(v63);
    v58 = v79;
    if (!v64)
    {
      goto LABEL_47;
    }

    v65 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_24_3(v65);
    v61 = "[USOIntentHelpers] Entity Span is not a suffix or prefix of the utterance alignment";
    goto LABEL_46;
  }

LABEL_48:
  v80 = v30;
  v81 = v16;
  sub_266595F88();

  v66 = sub_26666C378();
  v80 = v30;
  v81 = v16;

  result = sub_26666C378();
  if (result >> 14 >= v66 >> 14)
  {
    v67 = MEMORY[0x266788740](v66, result, v30, v16);
    v42 = MEMORY[0x266788760](v67);
    (*(v79 + 8))(v19, v78);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665DA354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E9F8, &qword_266675EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665DA3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E9F8, &qword_266675EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_3_25(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_2665DA448(uint64_t a1)
{
  v2 = sub_266669E88();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v90 = v4;
  v91 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  OUTLINED_FUNCTION_1_0();
  v89 = v9 - v8;
  v98 = sub_266669E48();
  v10 = OUTLINED_FUNCTION_3_0(v98);
  v100 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10, v14);
  OUTLINED_FUNCTION_8_10();
  v96 = v15;
  MEMORY[0x28223BE20](v16, v17);
  v97 = &v88 - v18;
  v99 = sub_26666B208();
  v19 = OUTLINED_FUNCTION_3_0(v99);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19, v24);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = sub_266669E58();
  v29 = OUTLINED_FUNCTION_3_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29, v34);
  OUTLINED_FUNCTION_8_10();
  v94 = v35;
  v38 = MEMORY[0x28223BE20](v36, v37);
  v40 = (&v88 - v39);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = &v88 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v48 = &v88 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v50 = *(v31 + 16);
  v95 = a1;
  v52 = &v88 - v51;
  v50();
  v53 = *(v31 + 88);
  v101 = v52;
  v54 = v53(v52, v28);
  if (v54 == *MEMORY[0x277D5C128])
  {
    (v50)(v48, v101, v28);
    (*(v31 + 96))(v48, v28);
    v55 = v99;
    (*(v21 + 32))(v27, v48, v99);
    v56 = sub_2665DAC20(v27);
    (*(v21 + 8))(v27, v55);
    v57 = v31;
    v58 = v28;
    goto LABEL_22;
  }

  v99 = v28;
  v92 = v50;
  v93 = v31;
  if (v54 != *MEMORY[0x277D5C150])
  {
    v67 = v92;
    v57 = v93;
    v58 = v99;
    if (v54 == *MEMORY[0x277D5C130])
    {
      (v92)(v40, v101, v99);
      (*(v57 + 96))(v40, v58);
      v68 = *v40;
      objc_opt_self();
      v56 = swift_dynamicCastObjCClass() != 0;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v54 == *MEMORY[0x277D5C160])
    {
      (v92)(v48, v101, v99);
      (*(v57 + 96))(v48, v58);
      v73 = v89;
      v72 = v90;
      v74 = v91;
      (*(v90 + 32))(v89, v48, v91);
      v56 = sub_2665DAD94();
      (*(v72 + 8))(v73, v74);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v58 = v99;
  (v92)(v44, v101, v99);
  v57 = v93;
  (*(v93 + 96))(v44, v58);
  v59 = v97;
  v60 = v44;
  v61 = v98;
  (*(v100 + 32))(v97, v60, v98);
  v62 = sub_266669E28();
  v64 = v63;
  v102 = 0xD000000000000028;
  v103 = 0x800000026667D640;
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000014, 0x800000026667DA00);
  if (v62 == v102 && v64 == v103)
  {

    goto LABEL_13;
  }

  v66 = sub_26666CAC8();

  if (v66)
  {
LABEL_13:
    v69 = v100;
    (*(v100 + 16))(v96, v59, v61);
    sub_2665629D8();
    v71 = v70;
    (*(v69 + 8))(v59, v61);
    v56 = v71 == 2;
    goto LABEL_22;
  }

  (*(v100 + 8))(v59, v61);
  v67 = v92;
LABEL_16:
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v75 = sub_26666C168();
  __swift_project_value_buffer(v75, qword_28156D7E8);
  v76 = v94;
  (v67)(v94, v95, v58);
  v77 = sub_26666C148();
  v78 = sub_26666C618();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = v67;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v102 = v81;
    *v80 = 136315138;
    (v79)(v48, v76, v99);
    v82 = sub_26666C318();
    v83 = v76;
    v85 = v84;
    (*(v93 + 8))(v83, v99);
    v86 = sub_2665BFC90(v82, v85, &v102);

    *(v80 + 4) = v86;
    v58 = v99;
    v57 = v93;
    _os_log_impl(&dword_266549000, v77, v78, "CancelTask parse failed. Unsupported parse type: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x266789690](v81, -1, -1);
    MEMORY[0x266789690](v80, -1, -1);
  }

  else
  {

    (*(v57 + 8))(v76, v58);
  }

  v56 = 0;
LABEL_22:
  (*(v57 + 8))(v101, v58);
  return v56 & 1;
}

uint64_t sub_2665DAC20(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = sub_26666B208();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  sub_26656960C();
  sub_26666A528();
  sub_266563A38(v7);
  if (v13 == 7)
  {
    v9 = 0;
  }

  else if (sub_2666313F0(v13) == 0x6C65636E6163 && v10 == 0xE600000000000000)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_26666CAC8();
  }

  return v9 & 1;
}

uint64_t sub_2665DAD94()
{
  v0 = sub_266669EE8();
  v1 = OUTLINED_FUNCTION_3_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1, v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v19 - v13;
  sub_266669E78();
  v15 = sub_266669ED8();
  (*(v3 + 8))(v9, v0);
  sub_2665EC518(v15, v14);

  v16 = sub_266669F98();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    sub_2665DAF2C(v14);
    v17 = 0;
  }

  else
  {
    v17 = sub_266669F58();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  return v17 & 1;
}

uint64_t sub_2665DAF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665DAF94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2665DAFD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2665DB018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 208) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665DB0A4()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  v7 = sub_266561674(v6, &v17);
  v8 = *(v2 + 8);
  v8(v6, v1, v7);
  if (v17 == 3)
  {
    sub_26656CAEC(&v17, &qword_28007E368, &unk_266673E30);
    __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
    sub_266669DF8();
    sub_26659AC88(v6, &v17);
    (v8)(v6, v1);
    if (v18[24] == 255)
    {
      sub_26656CAEC(&v17, &unk_28007D200, &qword_26666FD20);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v12 = sub_26666C168();
      __swift_project_value_buffer(v12, qword_28156D7E8);
      v13 = sub_26666C148();
      v14 = sub_26666C618();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_20();
        *v15 = 0;
        _os_log_impl(&dword_266549000, v13, v14, "[ChangeOrCancelStrategy] Unsupported input, returning .ignore", v15, 2u);
        MEMORY[0x266789690](v15, -1, -1);
      }

      return sub_2666697E8();
    }

    else
    {
      v20 = v17;
      *v21 = *v18;
      *&v21[9] = *&v18[9];
      v9 = OUTLINED_FUNCTION_16_11();
      sub_2665DB5D4(v9);
      return sub_266553988(&v20);
    }
  }

  else
  {
    v20 = v17;
    *v21 = *v18;
    *&v21[16] = *&v18[16];
    v22 = v19;
    v11 = OUTLINED_FUNCTION_16_11();
    sub_2665DB338(v11);
    return sub_2665B92F8(&v20);
  }
}

uint64_t sub_2665DB338(uint64_t a1)
{
  sub_2665DD59C(a1, v14);
  if (v14[0] == 2)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v1 = sub_26666C168();
    __swift_project_value_buffer(v1, qword_28156D7E8);
    v2 = sub_26666C148();
    v3 = sub_26666C618();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_266549000, v2, v3, "[ChangeOrCancelStrategy] Returning .cancel() for input", v4, 2u);
      MEMORY[0x266789690](v4, -1, -1);
    }

    return sub_2666697C8();
  }

  else
  {
    if (v14[0])
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v6 = sub_26666C168();
      __swift_project_value_buffer(v6, qword_28156D7E8);
      v7 = sub_26666C148();
      v8 = sub_26666C618();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_266549000, v7, v8, "[ChangeOrCancelStrategy] Returning .cancel() due to confirmed rejected.", v9, 2u);
        MEMORY[0x266789690](v9, -1, -1);
      }

      sub_2666697C8();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v10 = sub_26666C168();
      __swift_project_value_buffer(v10, qword_28156D7E8);
      v11 = sub_26666C148();
      v12 = sub_26666C618();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_266549000, v11, v12, "[ChangeOrCancelStrategy] Returning .handle()", v13, 2u);
        MEMORY[0x266789690](v13, -1, -1);
      }

      sub_2666697D8();
    }

    return sub_26656CAEC(&v15, &unk_28007D200, &qword_26666FD20);
  }
}

uint64_t sub_2665DB5D4(uint64_t a1)
{
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266549000, v3, v4, "[ChangeOrCancelStrategy] Calculating action for input for calendarTask", v5, 2u);
    MEMORY[0x266789690](v5, -1, -1);
  }

  sub_266553950(a1, v8);
  v6 = v8[40];
  sub_266553988(v8);
  if (v6 == 3)
  {
    return sub_2666697D8();
  }

  else
  {
    return sub_2666697E8();
  }
}

uint64_t sub_2665DB6F4()
{
  OUTLINED_FUNCTION_14();
  v1[49] = v2;
  v1[50] = v0;
  v1[47] = v3;
  v1[48] = v4;
  v1[46] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  v1[51] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64);
  v1[52] = OUTLINED_FUNCTION_19();
  v12 = sub_266669E58();
  v1[53] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[54] = v13;
  v15 = *(v14 + 64);
  v1[55] = OUTLINED_FUNCTION_19();
  v16 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2665DB7F8()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 376);
  __swift_project_boxed_opaque_existential_1(*(v0 + 400), *(*(v0 + 400) + 24));
  sub_266669DF8();
  v5 = sub_266561674(v1, v0 + 16);
  v6 = *(v2 + 8);
  v6(v1, v3, v5);
  if (*(v0 + 16) == 3)
  {
    sub_26656CAEC(v0 + 16, &qword_28007E368, &unk_266673E30);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    *(v0 + 216) = -1;
  }

  else
  {
    sub_2665DD59C(v0 + 16, v0 + 72);
    if (*(v0 + 72) == 2)
    {
      *(v0 + 208) = 0;
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 216) = -1;
      sub_2665B92F8(v0 + 16);
    }

    else
    {
      *(v0 + 201) = *(v0 + 105);
      v7 = *(v0 + 96);
      *(v0 + 176) = *(v0 + 80);
      *(v0 + 192) = v7;
      v8 = *(v0 + 216);
      sub_2665B92F8(v0 + 16);
      if (v8 != 255)
      {
        v9 = *(v0 + 192);
        *(v0 + 128) = *(v0 + 176);
        *(v0 + 144) = v9;
        *(v0 + 153) = *(v0 + 201);
        goto LABEL_9;
      }
    }
  }

  v10 = *(v0 + 440);
  v11 = *(v0 + 424);
  v12 = *(v0 + 376);
  __swift_project_boxed_opaque_existential_1((*(v0 + 400) + 40), *(*(v0 + 400) + 64));
  sub_266669DF8();
  sub_26659AC88(v10, v0 + 128);
  (v6)(v10, v11);
  if (*(v0 + 216) != 255)
  {
    sub_26656CAEC(v0 + 176, &unk_28007D200, &qword_26666FD20);
  }

LABEL_9:
  v13 = *(v0 + 384);
  v14 = *(*(v0 + 392) + 16);
  *(v0 + 448) = v14;
  *(v0 + 456) = sub_266669CE8();
  v15 = sub_266669CB8();
  *(v0 + 464) = v15;
  sub_26655A100(v0 + 128, v0 + 224);
  v16 = *(v0 + 264);
  if (v16 == 3)
  {
    sub_2665536F8((v0 + 224), v0 + 272);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v17 = sub_26666C168();
    *(v0 + 472) = __swift_project_value_buffer(v17, qword_28156D7E8);
    v18 = sub_26666C148();
    v19 = sub_26666C618();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_20();
      *v20 = 0;
      _os_log_impl(&dword_266549000, v18, v19, "[ChangeOrCancelStrategy] Checking for date time range on update task", v20, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v21 = *(v0 + 384);

    v22 = sub_266669CC8();
    v23 = [v22 itemToConfirm];

    sub_26666C718();
    swift_unknownObjectRelease();
    *(v0 + 480) = sub_2665F0658((v0 + 312));
    *(v0 + 488) = v24;
    v47 = v24;
    __swift_destroy_boxed_opaque_existential_1((v0 + 312));
    v48 = *(v0 + 296);
    v49 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v48);
    v50 = [v47 startDate];
    if (v50)
    {
      v51 = v50;
      v52 = *(v0 + 416);
      sub_266668CE8();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = *(v0 + 416);
    v55 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v54, v53, 1, v55);
    v56 = swift_task_alloc();
    *(v0 + 496) = v56;
    v57 = *(v49 + 8);
    *v56 = v0;
    v56[1] = sub_2665DBE20;
    v58 = *(v0 + 416);

    return sub_2665CA6A8(0, 0, v58, v48, v57);
  }

  else
  {
    if (v16 == 255)
    {
      sub_26656CAEC(v0 + 224, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v0 + 224);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v25 = sub_26666C168();
    __swift_project_value_buffer(v25, qword_28156D7E8);
    v26 = sub_26666C148();
    v27 = sub_26666C618();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_20();
      *v28 = 0;
      _os_log_impl(&dword_266549000, v26, v27, "[ChangeOrCancelStrategy] Got non-change request, removing date components", v28, 2u);
      MEMORY[0x266789690](v28, -1, -1);
    }

    v29 = *(v0 + 384);
    v30 = *(v0 + 392);

    v31 = sub_266669CB8();
    (*(*(v30 + 32) + 32))(v14);

    v32 = *(v0 + 344);
    v34 = *(v0 + 440);
    v33 = *(v0 + 448);
    v35 = *(v0 + 408);
    v59 = *(v0 + 416);
    v36 = *(v0 + 368);
    v37 = *MEMORY[0x277D5BED0];
    v38 = sub_266669AF8();
    OUTLINED_FUNCTION_18_2(v38);
    v40 = *(v39 + 104);
    v41 = v32;
    v40(v35, v37, v38);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
    sub_266669B98();

    sub_26656CAEC(v0 + 128, &unk_28007D200, &qword_26666FD20);

    OUTLINED_FUNCTION_5_3();

    return v45();
  }
}

uint64_t sub_2665DBE20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 496);
  v3 = *(v1 + 416);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 504) = v6;

  sub_26656CAEC(v3, &qword_28007D140, &qword_26666F140);

  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665DBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  v13 = v12[63];
  v14 = v12[59];
  v15 = [v13 setDateTimeRange];

  v16 = sub_26666C148();
  v17 = sub_26666C618();
  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    a9 = v12 + 45;
    if (v18)
    {
      v19 = OUTLINED_FUNCTION_20();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v16, v17, "[ChangeOrCancelStrategy] Date time exist, updating the current.", v19, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v20 = v12[60];
    v21 = v12[61];
    v22 = v12[57];
    v23 = v12[58];
    v24 = v12[56];
    v26 = v12[48];
    v25 = v12[49];

    v27 = sub_266669CB8();
    v28 = *(v25 + 32);
    v29 = (v12 + 45);
    sub_2665B2A7C(v15, 1, v24, v28);
  }

  else
  {
    if (v18)
    {
      v30 = OUTLINED_FUNCTION_20();
      *v30 = 0;
      _os_log_impl(&dword_266549000, v16, v17, "[ChangeOrCancelStrategy] No date time existed, removing date components", v30, 2u);
      MEMORY[0x266789690](v30, -1, -1);
    }

    v31 = v12[60];
    v21 = v12[61];
    v32 = v12[57];
    v27 = v12[58];
    v33 = v12[56];
    v35 = v12[48];
    v34 = v12[49];

    v15 = sub_266669CB8();
    v36 = *(*(v34 + 32) + 32);
    v29 = (v12 + 44);
    v36(v33);
  }

  v37 = *v29;
  __swift_destroy_boxed_opaque_existential_1(v12 + 34);
  v39 = v12[55];
  v38 = v12[56];
  v41 = v12[51];
  v40 = v12[52];
  v42 = v12[46];
  v43 = *MEMORY[0x277D5BED0];
  v44 = sub_266669AF8();
  OUTLINED_FUNCTION_18_2(v44);
  (*(v45 + 104))(v41, v43, v44);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v44);
  sub_266669B98();

  sub_26656CAEC((v12 + 16), &unk_28007D200, &qword_26666FD20);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_7();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_2665DC1D0()
{
  OUTLINED_FUNCTION_14();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v5);
  v7 = *(v6 + 64);
  v1[20] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v8);
  v10 = *(v9 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v11 = sub_266669708();
  v1[22] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[23] = v12;
  v14 = *(v13 + 64);
  v1[24] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v15);
  v17 = *(v16 + 64);
  v1[25] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v18);
  v20 = *(v19 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v21 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v21);
  v23 = *(v22 + 64);
  v1[28] = OUTLINED_FUNCTION_19();
  v24 = sub_2666699C8();
  v1[29] = v24;
  OUTLINED_FUNCTION_3_1(v24);
  v1[30] = v25;
  v27 = *(v26 + 64);
  v1[31] = OUTLINED_FUNCTION_19();
  v28 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2665DC7E8(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = v4[39];
  v7 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v5[40] = v1;

  if (v1)
  {
    v9 = v5[27];
    sub_26656CAEC(v5[26], &unk_28007DE30, &unk_26666EAF0);
    sub_26656CAEC(v9, &unk_28007DE30, &unk_26666EAF0);
    v10 = sub_2665DCE08;
  }

  else
  {
    v5[41] = a1;
    v10 = sub_2665DC930;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2665DC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[36];
  v16 = v14[37];
  v17 = v14[29];
  v18 = v14[24];
  v20 = v14[20];
  v19 = v14[21];
  (*(v14[30] + 16))(v14[25], v14[31], v17);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  sub_2666696B8();
  v24 = sub_26666BB08();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v24);
  v25 = sub_266669788();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v25);
  sub_26656CFC4();
  v26 = swift_task_alloc();
  v14[42] = v26;
  *v26 = v14;
  v26[1] = sub_2665DCAAC;
  v27 = v14[41];
  v28 = v14[38];
  v30 = v14[26];
  v29 = v14[27];
  v32 = v14[24];
  v31 = v14[25];
  v33 = v14[16];
  v38 = v14[36];
  v39 = v14[37];
  v36 = v14[21];
  v37 = v14[20];

  return sub_2665643AC(v33, v29, v30, v27, 0, 0, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665DCAAC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[42];
  v3 = v1[41];
  v18 = v1[27];
  v4 = v1[26];
  v5 = v1[25];
  v6 = v1[24];
  v7 = v1[23];
  v8 = v1[22];
  v9 = v1[21];
  v10 = v1[20];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  sub_26656CAEC(v10, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v9, &unk_28007DE20, &unk_26666EAE0);
  (*(v7 + 8))(v6, v8);
  sub_26656CAEC(v5, &qword_28007D338, &qword_26666EEB0);
  sub_26656CAEC(v4, &unk_28007DE30, &unk_26666EAF0);
  sub_26656CAEC(v18, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2665DCCF4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v13 = v0[25];
  v14 = v0[24];
  v15 = v0[21];
  v16 = v0[20];

  sub_2665AE46C(v8);
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  OUTLINED_FUNCTION_5_3();

  return v11();
}

uint64_t sub_2665DCE08()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];

  sub_2665AE46C(v8);
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v9 = v0[40];
  OUTLINED_FUNCTION_13_9();

  OUTLINED_FUNCTION_24_1();

  return v10();
}

uint64_t sub_2665DCF00(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_31();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2665DCF28()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  sub_266669758();
  sub_266669748();
  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_2665DCF98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665DB6F4();
}

uint64_t sub_2665DD058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4E0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26657A00C;

  return MEMORY[0x2821B9E10](a1, a2, a3, a4);
}

uint64_t sub_2665DD118()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665DC1D0();
}

uint64_t sub_2665DD1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B4F0] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26656CD98;

  return MEMORY[0x2821B9E28](a1, a2, a3, a4, a5);
}

uint64_t sub_2665DD294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B500] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26656CD98;

  return MEMORY[0x2821B9E38](a1, a2, a3, a4, a5);
}

uint64_t sub_2665DD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

uint64_t sub_2665DD424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B508] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9E40](a1, a2, a3, a4);
}

uint64_t sub_2665DD4E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26656CD98;

  return sub_2665DCF00(a1);
}

uint64_t OUTLINED_FUNCTION_13_9()
{
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];
}

uint64_t type metadata accessor for DeleteEventCATsSimple()
{
  result = qword_28007EA80;
  if (!qword_28007EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665DD6BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665DD6D0()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_26666EED0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v4 = *(MEMORY[0x277D55C70] + 4);
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2665DD800;
  v6 = v0[3];

  return v8(0xD000000000000027, 0x800000026667ED70, v2);
}

uint64_t sub_2665DD800()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2665DD930, 0, 0);
  }

  else
  {
    v9 = *(v3 + 32);

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665DD930()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2665DD990(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665DD9B4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_266671D60);
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = *(v0 + 66);
  v6 = *(v0 + 65);
  v7 = *(v0 + 64);
  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;
  v2[5].n128_u64[0] = 0x4C794264656B7361;
  v2[5].n128_u64[1] = 0xEF6E6F697461636FLL;
  v8 = MEMORY[0x277D839B0];
  v2[6].n128_u8[0] = v7;
  v2[7].n128_u64[1] = v8;
  v2[8].n128_u64[0] = 0x49794264656B7361;
  v2[8].n128_u64[1] = 0xEF7365657469766ELL;
  v2[9].n128_u8[0] = v6;
  v2[10].n128_u64[1] = v8;
  v2[11].n128_u64[0] = 0xD000000000000015;
  v2[11].n128_u64[1] = 0x800000026667E230;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v2[12].n128_u64[1] = 0;
    v2[13].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x277D839F8];
  }

  v2[12].n128_u64[0] = v9;
  v2[13].n128_u64[1] = v10;
  v11 = *(MEMORY[0x277D55C70] + 4);
  v15 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_2665DDBA4;
  v13 = *(v0 + 32);

  return v15(0xD000000000000019, 0x800000026667ED50, v2);
}

uint64_t sub_2665DDBA4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2665DDCD4, 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665DDCD4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2665DDD34()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26658BF28;
  v2 = OUTLINED_FUNCTION_7_17();

  return v3(v2);
}

uint64_t sub_2665DDDDC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665DDE84, 0, 0);
}

uint64_t sub_2665DDE84()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_266671D70;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x800000026667E140;
  sub_266566430(v2, v1, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_266594028(v0[6], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_5(v4);
    (*(v7 + 32))();
  }

  v8 = v0[5];
  v9 = v0[3];
  *(v3 + 80) = 0x746954746E657665;
  *(v3 + 88) = 0xEA0000000000656CLL;
  sub_266566430(v9, v8, &unk_28007D130, &unk_266671DF0);
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v4);
  v11 = v0[5];
  if (v10 == 1)
  {
    sub_266594028(v0[5], &unk_28007D130, &unk_266671DF0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_4_5(v4);
    (*(v12 + 32))();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v17 = v13;
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_2665DE0F8;
  v15 = v0[4];

  return v17(0xD000000000000022, 0x800000026667ED00, v3);
}

uint64_t sub_2665DE0F8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v4 = v3;
  OUTLINED_FUNCTION_15_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2665DE244, 0, 0);
  }

  else
  {
    v11 = v4[6];
    v10 = v4[7];
    v12 = v4[5];

    v13 = *(v8 + 8);

    return v13(v1);
  }
}

uint64_t sub_2665DE244()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_2665DE2B8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665D987C;
  v2 = OUTLINED_FUNCTION_7_17();

  return v3(v2);
}

uint64_t sub_2665DE360(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2665DE3B4(a1, a2);
}

uint64_t sub_2665DE3B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  sub_266566430(a1, &v20 - v17, &qword_28007D2B0, &qword_26666E5F0);
  (*(v8 + 16))(v13, a2, v2);
  v18 = sub_26666BDB8();
  (*(v8 + 8))(a2, v2);
  sub_266594028(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v18;
}

uint64_t sub_2665DE530(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v13, a2, v3);
  v16 = sub_26666BDC8();
  (*(v8 + 8))(a2, v3);
  return v16;
}

uint64_t sub_2665DE650(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for NeedsConfirmationConflictFlow.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2665DE6F8()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = type metadata accessor for NeedsConfirmationConflictFlow.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v11 = sub_26666C168();
  __swift_project_value_buffer(v11, qword_28156D7E8);

  v22 = sub_26666C148();
  v12 = sub_26666C618();
  if (os_log_type_enabled(v22, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = *(*v0 + 120);
    swift_beginAccess();
    (*(v6 + 16))(v10, v1 + v15, v5);
    v16 = sub_2665E0774(v5);
    v18 = v17;

    (*(v6 + 8))(v10, v5);
    v19 = sub_2665BFC90(v16, v18, &v23);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_266549000, v22, v12, "[NeedsConfirmationConflictFlow] transitioned to state %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x266789690](v14, -1, -1);
    MEMORY[0x266789690](v13, -1, -1);
  }

  else
  {

    v20 = v22;
  }
}

uint64_t sub_2665DE9C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_8_17();
  v5 = *(v4 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_17();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_8_17();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_8_17();
  v11 = *(v10 + 96);
  v12 = type metadata accessor for NeedsConfirmationConflictFlow.State();
  OUTLINED_FUNCTION_18_2(v12);
  return (*(v13 + 16))(a1, &v1[v5]);
}

uint64_t sub_2665DEA7C(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_8_17();
  v5 = *(v4 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_17();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_8_17();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_8_17();
  v11 = *(v10 + 96);
  v12 = type metadata accessor for NeedsConfirmationConflictFlow.State();
  v13 = *(v12 - 8);
  (*(v13 + 24))(&v1[v5], a1, v12);
  swift_endAccess();
  sub_2665DE6F8();
  return (*(v13 + 8))(a1, v12);
}

uint64_t sub_2665DEB84@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = *v1;
  OUTLINED_FUNCTION_42_0();
  v4 = *(v3 + 80);
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  v8 = type metadata accessor for NeedsConfirmationConflictFlow.State();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  OUTLINED_FUNCTION_10_5();
  v77 = (v15 - v16);
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v74 - v19;
  sub_266669BB8();
  v21 = OUTLINED_FUNCTION_11_15();
  v22 = OUTLINED_FUNCTION_3_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22, v27);
  OUTLINED_FUNCTION_10_5();
  v30 = v28 - v29;
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = &v74 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v74 - v37;
  sub_2665DE9C0(v20);
  if (__swift_getEnumTagSinglePayload(v20, 4, v21))
  {
    v39 = v78;
    v75 = v24;
    v76 = v21;
    v42 = *(v11 + 8);
    v41 = (v11 + 8);
    v40 = v42;
    v42(v20, v8);
    v43 = v8;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v44 = sub_26666C168();
    __swift_project_value_buffer(v44, qword_28156D7E8);

    v45 = sub_26666C148();
    v46 = sub_26666C608();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_21();
      v48 = OUTLINED_FUNCTION_13_0();
      v74 = v41;
      v49 = v48;
      v79 = v48;
      *v47 = 136315138;
      v50 = v43;
      v51 = v77;
      sub_2665DE9C0(v77);
      v52 = sub_2665E0774(v50);
      v53 = v40;
      v55 = v54;

      v53(v51, v50);
      v56 = sub_2665BFC90(v52, v55, &v79);
      v39 = v78;

      *(v47 + 4) = v56;
      _os_log_impl(&dword_266549000, v45, v46, "[NeedsConfirmationConflictFlow] Flow exitValue was called an unexpected state: %s returning .error", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    sub_26656CBFC();
    v69 = swift_allocError();
    v71 = OUTLINED_FUNCTION_35_3(v69, v70);
    *v39 = v72;
    *(v39 + 8) = 0;
    return (*(v75 + 104))(v39, *MEMORY[0x277D5BC30], v76, v71);
  }

  else
  {
    v57 = *(v24 + 32);
    v76 = v30;
    v77 = v57;
    v57(v38, v20, v21);
    v58 = v24;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v59 = sub_26666C168();
    __swift_project_value_buffer(v59, qword_28156D7E8);
    v60 = *(v24 + 16);
    v60(v35, v38, v21);
    v61 = sub_26666C148();
    v62 = sub_26666C618();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_21();
      LODWORD(v75) = v62;
      v64 = v63;
      v74 = OUTLINED_FUNCTION_13_0();
      v79 = v74;
      *v64 = 136315138;
      v60(v76, v35, v21);
      OUTLINED_FUNCTION_2_26();
      swift_getWitnessTable();
      v65 = sub_26666C328();
      v67 = v66;
      (*(v58 + 8))(v35, v21);
      v68 = sub_2665BFC90(v65, v67, &v79);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_266549000, v61, v75, "[NeedsConfirmationConflictFlow] Exiting needs confirmation flow with %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v58 + 8))(v35, v21);
    }

    return v77(v78, v38, v21);
  }
}