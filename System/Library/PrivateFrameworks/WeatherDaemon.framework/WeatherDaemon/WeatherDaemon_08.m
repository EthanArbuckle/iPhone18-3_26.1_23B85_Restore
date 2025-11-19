uint64_t sub_1B60D6E20()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_10();

    return MEMORY[0x1EEE6DFA0]();
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v7();
  }
}

uint64_t sub_1B60D6F5C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_10();

    return MEMORY[0x1EEE6DFA0]();
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v7();
  }
}

uint64_t sub_1B60D7090()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924908);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B6225510;
  *(v2 + 32) = v1;
  sub_1B60D7908();
  OUTLINED_FUNCTION_127();
  *v3 = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_3_17();

  return v4();
}

uint64_t sub_1B60D7164()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (v0)
  {
    (*(v3 + 336))(*(v3 + 224), *(v3 + 200));
  }

  else
  {
    v8 = *(v3 + 240);
    v7 = *(v3 + 248);
    v9 = *(v3 + 232);
    (*(v3 + 336))(*(v3 + 224), *(v3 + 200));
    (*(v8 + 8))(v7, v9);
  }

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1B60D72A0()
{
  OUTLINED_FUNCTION_16_10();

  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 272);
  *(v0 + 256) = v3;
  *(v0 + 264) = v2;
  if (v3 == *(v0 + 144))
  {
    sub_1B62216B4();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v4;
      swift_task_alloc();
      OUTLINED_FUNCTION_7_10();
      *(v0 + 296) = v5;
      *v5 = v6;
      v5[1] = sub_1B60D6E20;
      v7 = *(v0 + 136);
      v8 = *(v0 + 144);
LABEL_10:

      v15(v7, v8);
      return;
    }
  }

  else
  {
    *(v0 + 272) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    sub_1B62216B4();
    if (!v1)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v10;
      swift_task_alloc();
      OUTLINED_FUNCTION_7_10();
      *(v0 + 280) = v11;
      *v11 = v12;
      v13 = OUTLINED_FUNCTION_6_12();
      *(v13 + 8) = v14;
      v7 = *(v0 + 136);
      v8 = v3;
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_3_17();

  v9();
}

uint64_t sub_1B60D7470()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[36];
  (*(v0[30] + 8))(v0[31], v0[29]);

  OUTLINED_FUNCTION_3_17();

  return v2();
}

uint64_t sub_1B60D7518()
{
  sub_1B62216B4();
  v1 = (*(v0 + 168))(*(v0 + 288), *(v0 + 264));
  v2 = *(v0 + 288);
  if ((v1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924908);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_23_4(inited, v24, v25, v26, v27, v28, v29, v30, xmmword_1B6225510, v37, v38);
    sub_1B608F500(inited);
    sub_1B60D7908();
    OUTLINED_FUNCTION_127();
    *v31 = v39;
    swift_willThrow();

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_22_5();

    __asm { BRAA            X1, X16 }
  }

  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B609CB90();
    v5 = v34;
  }

  v6 = *(v5 + 16);
  if (v6 >= *(v5 + 24) >> 1)
  {
    sub_1B609CB90();
    v5 = v35;
  }

  *(v0 + 328) = v5;
  v7 = *(v0 + 288);
  v8 = *(v0 + 256);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 184);
  *(v5 + 16) = v6 + 1;
  *(v5 + 8 * v6 + 32) = v7;
  v13 = v12(v8);
  v15 = v14;
  sub_1B6222004();
  *(v0 + 120) = v13;
  *(v0 + 128) = v15;
  *(v0 + 104) = 0;
  *(v0 + 96) = 0;
  *(v0 + 112) = 1;
  OUTLINED_FUNCTION_10_11();
  sub_1B6038C88(v16, v17);
  sub_1B6221FE4();
  OUTLINED_FUNCTION_9_9();
  sub_1B6038C88(v18, v19);
  sub_1B6221C24();
  v20 = *(v10 + 8);
  *(v0 + 336) = v20;
  *(v0 + 344) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v9, v11);
  v21 = swift_task_alloc();
  *(v0 + 352) = v21;
  *v21 = v0;
  v21[1] = sub_1B60D7164;
  OUTLINED_FUNCTION_22_5();

  return MEMORY[0x1EEE6DE58]();
}

uint64_t sub_1B60D7824()
{
  OUTLINED_FUNCTION_16_10();
  v1 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924908);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_23_4(inited, v3, v4, v5, v6, v7, v8, v9, xmmword_1B6225510, v13, v14);
  sub_1B608F500(inited);
  sub_1B60D7908();
  OUTLINED_FUNCTION_127();
  *v10 = v15;
  swift_willThrow();

  OUTLINED_FUNCTION_3_17();

  return v11();
}

unint64_t sub_1B60D7908()
{
  result = qword_1EDAB0AB0;
  if (!qword_1EDAB0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0AB0);
  }

  return result;
}

unint64_t sub_1B60D795C()
{
  result = qword_1EB925600;
  if (!qword_1EB925600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925600);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TaskError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60D7A60()
{
  result = qword_1EB925608;
  if (!qword_1EB925608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925608);
  }

  return result;
}

uint64_t sub_1B60D7AD4()
{
  v0 = sub_1B6220574();
  __swift_allocate_value_buffer(v0, qword_1EDAB0308);
  __swift_project_value_buffer(v0, qword_1EDAB0308);
  return sub_1B6220584();
}

uint64_t sub_1B60D7B70()
{
  v0 = sub_1B62205C4();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1B62205D4();
  sub_1B62205B4();
  v11 = *(v1 + 8);
  v11(v7, v0);
  sub_1B62205D4();
  sub_1B62205B4();
  v11(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925610);
  v12 = *(v1 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B6227640;
  v15 = v14 + v13;
  v16 = *(v2 + 16);
  v16(v15, v10, v0);
  v16(v15 + v12, v7, v0);
  v17 = sub_1B6220784();

  v11(v7, v0);
  v11(v10, v0);
  return v17;
}

uint64_t sub_1B60D7EA4(void (*a1)(void))
{
  v2 = sub_1B6220A04();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  a1(0);
  sub_1B6220A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925620);
  v8 = OUTLINED_FUNCTION_1_18();
  *(v8 + 16) = xmmword_1B6225510;
  (*(v3 + 16))(v8 + v3, v7, v2);
  v9 = sub_1B6220754();

  (*(v4 + 8))(v7, v2);
  return v9;
}

uint64_t sub_1B60D808C()
{
  v0 = sub_1B6220574();
  __swift_allocate_value_buffer(v0, qword_1EDAAFA80);
  __swift_project_value_buffer(v0, qword_1EDAAFA80);
  return sub_1B6220584();
}

uint64_t sub_1B60D8128(id *a1)
{
  v2 = sub_1B6220674();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = *a1;
  sub_1B6220684();
  sub_1B62207B4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B60D8210()
{
  v0 = sub_1B62205C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1B62205D4();
  sub_1B62205B4();
  v7 = *(v1 + 8);
  v7(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925610);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B6225510;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_1B6220784();

  v7(v6, v0);
  return v10;
}

uint64_t sub_1B60D8418(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B6220594();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  sub_1B62205A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925618);
  v8 = OUTLINED_FUNCTION_1_18();
  *(v8 + 16) = xmmword_1B6225510;
  (*(v4 + 16))(v8 + a2, v7, v3);
  v9 = sub_1B6220784();

  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_1B60D8574(unint64_t *a1)
{
  v2 = sub_1B6220A04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1B602370C(0, a1);
  sub_1B6220A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925620);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B6225510;
  (*(v3 + 16))(v8 + v7, v6, v2);
  v9 = sub_1B6220754();

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_1B60D86DC()
{
  v0 = sub_1B6220594();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  sub_1B62205A4();
  sub_1B62205A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925618);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B6227640;
  v10 = v9 + v8;
  v11 = *(v1 + 16);
  v11(v10, v6, v0);
  v11(v10 + v7, v3, v0);
  v12 = sub_1B6220784();

  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  return v12;
}

uint64_t sub_1B60D890C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6220574();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

_BYTE *storeEnumTagSinglePayload for MachServices(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60D8A54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B60D8A94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B60D8AF4()
{
  result = qword_1EB925628;
  if (!qword_1EB925628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925628);
  }

  return result;
}

uint64_t NextHourForecast.condition.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for NextHourForecast() + 20);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NextHourForecast.condition.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.summary.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for NextHourForecast() + 24);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NextHourForecast.summary.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.forecastStart.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for NextHourForecast() + 28);

  return sub_1B603D764(v0, v2);
}

uint64_t NextHourForecast.forecastStart.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.forecastEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NextHourForecast() + 32);

  return sub_1B6058CE0(v3, a1);
}

uint64_t NextHourForecast.forecastEnd.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for NextHourForecast() + 32);

  return sub_1B603D764(v0, v2);
}

uint64_t NextHourForecast.forecastEnd.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.minutes.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for NextHourForecast() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NextHourForecast.minutes.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast();
  return OUTLINED_FUNCTION_5();
}

uint64_t NextHourForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925630);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B60D9374();
  v47 = v16;
  v18 = v49;
  sub_1B62220D4();
  if (!v18)
  {
    v19 = v13;
    v20 = v8;
    v56 = 0;
    OUTLINED_FUNCTION_3_18();
    sub_1B60DA0F0(v21, v22);
    v23 = v47;
    sub_1B6221DD4();
    v24 = v11;
    type metadata accessor for ForecastCondition();
    v55 = 1;
    sub_1B60DA0F0(&qword_1EDAB0040, type metadata accessor for ForecastCondition);
    v25 = sub_1B6221D34();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ForecastSummary();
    v54 = 2;
    sub_1B60DA0F0(&qword_1EDAB0148, type metadata accessor for ForecastSummary);
    v49 = sub_1B6221D14();
    v45 = v26;
    v28 = sub_1B621D8F4();
    v53 = 3;
    OUTLINED_FUNCTION_2_22();
    sub_1B60DA0F0(v29, v30);
    sub_1B6221D24();
    v52 = 4;
    v43 = v28;
    sub_1B6221D24();
    type metadata accessor for ForecastMinute();
    v51 = 5;
    sub_1B60DA0F0(&qword_1EDAB01F0, type metadata accessor for ForecastMinute);
    v44 = sub_1B6221D14();
    (*(v19 + 8))(v23, v48);
    HourForecast = type metadata accessor for NextHourForecast();
    v32 = HourForecast[7];
    v33 = v46;
    OUTLINED_FUNCTION_3_10();
    v34 = v43;
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v43);
    v38 = v20;
    v39 = HourForecast[8];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v34);
    sub_1B603D8D8(v24, v33);
    *(v33 + HourForecast[5]) = v45;
    *(v33 + HourForecast[6]) = v49;
    sub_1B603D764(v38, v33 + v32);
    sub_1B603D764(v5, v33 + v39);
    *(v33 + HourForecast[9]) = v44;
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

unint64_t sub_1B60D9374()
{
  result = qword_1EDAB00A0;
  if (!qword_1EDAB00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB00A0);
  }

  return result;
}

void NextHourForecast.minutes(for:)()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for NextHourForecast();
  sub_1B6220784();
  sub_1B608E748();
}

uint64_t sub_1B60D9434(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  sub_1B6058CE0(a1, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B608CA50(v10);
    v18 = 0;
  }

  else
  {
    v23[1] = v2;
    v19 = *(v12 + 32);
    v19(v17, v10, v11);
    if (sub_1B621D824())
    {
      v20 = type metadata accessor for ForecastSummary();
      sub_1B6058CE0(a2 + *(v20 + 20), v7);
      if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
      {
        (*(v12 + 8))(v17, v11);
        sub_1B608CA50(v7);
        v18 = 1;
      }

      else
      {
        v19(v14, v7, v11);
        v18 = sub_1B621D824();
        v21 = *(v12 + 8);
        v21(v14, v11);
        v21(v17, v11);
      }
    }

    else
    {
      (*(v12 + 8))(v17, v11);
      v18 = 0;
    }
  }

  return v18 & 1;
}

uint64_t NextHourForecast.isAllClear.getter()
{
  v1 = type metadata accessor for ForecastSummary();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for NextHourForecast();
  v8 = 0;
  v9 = *(v0 + *(result + 24));
  v10 = *(v9 + 16);
  while (1)
  {
    v11 = v8;
    if (v10 == v8)
    {
      return v10 == v11;
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    sub_1B60D9824(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8++, v6, type metadata accessor for ForecastSummary);
    v12 = v6[*(v1 + 24)];
    result = sub_1B60D9884();
    if (v12)
    {
      return v10 == v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60D9824(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B60D9884()
{
  v1 = OUTLINED_FUNCTION_3();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B60D98D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7473616365726F66 && a2 == 0xEB00000000646E45;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x736574756E696DLL && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1B6221F24();

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

uint64_t sub_1B60D9AD4(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 0x7972616D6D7573;
      break;
    case 3:
    case 4:
      result = 0x7473616365726F66;
      break;
    case 5:
      result = 0x736574756E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60D9B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60D98D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60D9BC0(uint64_t a1)
{
  v2 = sub_1B60D9374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60D9BFC(uint64_t a1)
{
  v2 = sub_1B60D9374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NextHourForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925638);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D9374();
  sub_1B62220F4();
  LOBYTE(v19) = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_3_18();
  sub_1B60DA0F0(v11, v12);
  sub_1B6221EC4();
  if (!v2)
  {
    HourForecast = type metadata accessor for NextHourForecast();
    v19 = *(v3 + HourForecast[5]);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925640);
    sub_1B60D9ED4();
    OUTLINED_FUNCTION_0_32();
    v19 = *(v3 + HourForecast[6]);
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925648);
    sub_1B60D9F88();
    OUTLINED_FUNCTION_0_32();
    LOBYTE(v19) = 3;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_2_22();
    sub_1B60DA0F0(v14, v15);
    OUTLINED_FUNCTION_7_11();
    LOBYTE(v19) = 4;
    OUTLINED_FUNCTION_7_11();
    v19 = *(v3 + HourForecast[9]);
    v18 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925650);
    sub_1B60DA03C();
    OUTLINED_FUNCTION_0_32();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60D9ED4()
{
  result = qword_1EDAAFC78;
  if (!qword_1EDAAFC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925640);
    sub_1B60DA0F0(&qword_1EDAB0048, type metadata accessor for ForecastCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC78);
  }

  return result;
}

unint64_t sub_1B60D9F88()
{
  result = qword_1EDAAFC80;
  if (!qword_1EDAAFC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925648);
    sub_1B60DA0F0(&qword_1EDAB0150, type metadata accessor for ForecastSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC80);
  }

  return result;
}

unint64_t sub_1B60DA03C()
{
  result = qword_1EDAAFC90;
  if (!qword_1EDAAFC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925650);
    sub_1B60DA0F0(&qword_1EDAB01F8, type metadata accessor for ForecastMinute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC90);
  }

  return result;
}

uint64_t sub_1B60DA0F0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for NextHourForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60DA260()
{
  result = qword_1EB925658;
  if (!qword_1EB925658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925658);
  }

  return result;
}

unint64_t sub_1B60DA2B8()
{
  result = qword_1EDAB0090;
  if (!qword_1EDAB0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0090);
  }

  return result;
}

unint64_t sub_1B60DA310()
{
  result = qword_1EDAB0098;
  if (!qword_1EDAB0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0098);
  }

  return result;
}

uint64_t DemoDataProvider.demoData(named:subdirectory:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1B621D634();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  if (qword_1EDAAEA00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1EDAAEA08)
  {
    return 0;
  }

  v12 = qword_1EDAAEA08;
  v13 = sub_1B62211B4();
  v14 = sub_1B62211B4();
  if (a4)
  {
    a4 = sub_1B62211B4();
  }

  v15 = [v12 URLForResource:v13 withExtension:v14 subdirectory:a4];

  if (!v15)
  {

    return 0;
  }

  sub_1B621D5E4();

  (*(v6 + 32))(v11, v8, v5);
  v16 = sub_1B60DA5A4();

  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_1B60DA5A4()
{
  v0 = sub_1B6220434();
  v61 = *(v0 - 8);
  v62 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v56 = v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v59 = v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = v52 - v5;
  v6 = sub_1B6220414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = v52 - v10;
  v11 = sub_1B6220404();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6220F24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B62203F4();
  v19 = sub_1B621D604();
  MEMORY[0x1B8C90150](v19);
  v20 = sub_1B62203D4();
  (*(v16 + 8))(v18, v15);
  if (!v20)
  {
    if (qword_1EB9244C0 != -1)
    {
      swift_once();
    }

    v25 = sub_1B6220B34();
    __swift_project_value_buffer(v25, qword_1EB942AC8);
    v26 = sub_1B6220B14();
    v27 = sub_1B62217F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B6020000, v26, v27, "can't create reading file stream", v28, 2u);
      MEMORY[0x1B8C91C90](v28, -1, -1);
    }

    return 0;
  }

  v53 = v7;
  v54 = v6;
  v63 = MEMORY[0x1E69E7CC0];
  sub_1B60DB018();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925670);
  sub_1B60DB070();
  sub_1B6221AA4();
  v21 = sub_1B62203C4();
  v22 = *(v12 + 8);
  v22(v14, v11);
  if (!v21)
  {
    goto LABEL_13;
  }

  v55 = v20;
  sub_1B6220494();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1B6221AA4();
  v23 = sub_1B6220454();
  v22(v14, v11);
  if (!v23)
  {
    sub_1B62203E4();

LABEL_13:
    sub_1B62203E4();
    goto LABEL_14;
  }

  v24 = sub_1B6220464();
  v31 = v24;
  if (!v24)
  {
    goto LABEL_5;
  }

  v32 = v59;
  sub_1B6220444();
  v33 = v60;
  sub_1B6220424();
  v34 = v62;
  v35 = *(v61 + 8);
  v35(v32, v62);
  v36 = v54;
  if (__swift_getEnumTagSinglePayload(v33, 1, v54) == 1)
  {

    sub_1B60DB0D4(v33);
LABEL_5:
    sub_1B6220474();

    sub_1B62203E4();

    sub_1B62203E4();
LABEL_14:

    return 0;
  }

  v59 = v35;
  v61 = v31;
  v37 = v53;
  v38 = v36;
  v39 = v58;
  (*(v53 + 32))(v58, v33, v38);
  v40 = v57;
  v41 = v39;
  v42 = v38;
  (*(v37 + 16))(v57, v41, v38);
  if ((*(v37 + 88))(v40, v38) != *MEMORY[0x1E69E5BB8])
  {

    v50 = *(v37 + 8);
    v50(v40, v42);
LABEL_29:
    v50(v58, v42);
    goto LABEL_5;
  }

  (*(v37 + 96))(v40, v38);
  v43 = *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925680) + 48));
  v44 = v59;
  (v59)(v40, v34);
  if (!v43)
  {

    v50 = *(v37 + 8);
    goto LABEL_29;
  }

  if (v43 < 0)
  {
    __break(1u);
    swift_once();
    v46 = sub_1B6220B34();
    __swift_project_value_buffer(v46, qword_1EB942AC8);
    v47 = sub_1B6220B14();
    v48 = sub_1B62217F4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      MEMORY[0x1B8C91C90](v49, -1, -1);
    }
  }

  else
  {
    v40 = swift_slowAlloc();
    v45 = v56;
    sub_1B6220444();
    sub_1B6220484();
    v52[1] = v23;
    v44(v45, v62);
  }

  v51 = v58;
  v29 = sub_1B60DAF04(v40, v43);
  MEMORY[0x1B8C91C90](v40, -1, -1);

  (*(v53 + 8))(v51, v42);
  sub_1B6220474();

  sub_1B62203E4();

  sub_1B62203E4();

  return v29;
}

uint64_t sub_1B60DAF04(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_1B621D644();
    }

    else
    {
      sub_1B621D4D4();
      swift_allocObject();
      sub_1B621D494();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B621D6B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_1B60DB018()
{
  result = qword_1EB925668;
  if (!qword_1EB925668)
  {
    sub_1B6220404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925668);
  }

  return result;
}

unint64_t sub_1B60DB070()
{
  result = qword_1EB925678;
  if (!qword_1EB925678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925678);
  }

  return result;
}

uint64_t sub_1B60DB0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ResponseType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_0_9();
    v5 = sub_1B6221F44();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    ResponseType.init(rawValue:)(v8);
    v9 = v11[0];
    if (LOBYTE(v11[0]) == 9)
    {
      v9 = 8;
    }

    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::ResponseType_optional __swiftcall ResponseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ResponseType.rawValue.getter()
{
  result = 0x5245544C454853;
  switch(*v0)
  {
    case 1:
      result = 0x4554415543415645;
      break;
    case 2:
      v2 = 0x524150455250;
      goto LABEL_6;
    case 3:
      v2 = 0x545543455845;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 4:
      result = 0x44494F5641;
      break;
    case 5:
      result = 0x524F54494E4F4DLL;
      break;
    case 6:
      result = 0x535345535341;
      break;
    case 7:
      result = 0x41454C435F4C4C41;
      break;
    case 8:
      result = 1162760014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B60DB350()
{
  result = qword_1EB925688;
  if (!qword_1EB925688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925688);
  }

  return result;
}

uint64_t sub_1B60DB3C8@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60DB5EC()
{
  result = qword_1EDAAFA60;
  if (!qword_1EDAAFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFA60);
  }

  return result;
}

uint64_t HourlyForecast.hours.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HourlyForecast() + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HourlyForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925690);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60DB97C();
  sub_1B62220D4();
  if (!v2)
  {
    v12 = v8;
    v13 = v19;
    v22 = 0;
    OUTLINED_FUNCTION_0_33();
    sub_1B60DBDCC(v14, v15);
    v16 = v20;
    sub_1B6221DD4();
    type metadata accessor for HourForecast();
    v21 = 1;
    sub_1B60DBDCC(&qword_1EDAB07D0, type metadata accessor for HourForecast);
    v18 = sub_1B6221D14();
    (*(v12 + 8))(v11, v16);
    sub_1B603D8D8(v6, v13);
    *(v13 + *(type metadata accessor for HourlyForecast() + 20)) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60DB97C()
{
  result = qword_1EDAB0768;
  if (!qword_1EDAB0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0768);
  }

  return result;
}

uint64_t sub_1B60DB9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60DBA94(char a1)
{
  if (a1)
  {
    return 0x7372756F68;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B60DBAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60DB9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60DBAF8(uint64_t a1)
{
  v2 = sub_1B60DB97C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60DBB34(uint64_t a1)
{
  v2 = sub_1B60DB97C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HourlyForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925698);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60DB97C();
  sub_1B62220F4();
  v16 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_0_33();
  sub_1B60DBDCC(v11, v12);
  OUTLINED_FUNCTION_2_2();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for HourlyForecast() + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256A0);
    sub_1B60DBD18();
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60DBD18()
{
  result = qword_1EDAB0440;
  if (!qword_1EDAB0440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9256A0);
    sub_1B60DBDCC(&qword_1EDAB07D8, type metadata accessor for HourForecast);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0440);
  }

  return result;
}

uint64_t sub_1B60DBDCC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for HourlyForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60DBF54()
{
  result = qword_1EB9256A8;
  if (!qword_1EB9256A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256A8);
  }

  return result;
}

unint64_t sub_1B60DBFAC()
{
  result = qword_1EDAB0758;
  if (!qword_1EDAB0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0758);
  }

  return result;
}

unint64_t sub_1B60DC004()
{
  result = qword_1EDAB0760;
  if (!qword_1EDAB0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0760);
  }

  return result;
}

uint64_t sub_1B60DC090()
{
  sub_1B62207E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251B8);
  sub_1B62209F4();

  v0 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256B0);
  v1 = sub_1B6220944();

  return v1;
}

uint64_t sub_1B60DC18C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1B62207D4();
  a2[3] = &type metadata for CloudChannelMap;
  a2[4] = &off_1F2D9B1E8;
  *a2 = v3;
}

uint64_t sub_1B60DC264(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B60DC2B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B60DC34C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_1B60DC37C()
{
  result = qword_1EB9256B8;
  if (!qword_1EB9256B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256B8);
  }

  return result;
}

WeatherDaemon::WeatherProduct_optional __swiftcall WeatherProduct.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B60DC458@<X0>(unint64_t *a1@<X8>)
{
  result = WeatherProduct.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1B60DC480(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v8 = sub_1B6220B34();
  __swift_project_value_buffer(v8, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  v9 = sub_1B6220B14();
  v10 = sub_1B62217F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B602EEB0(a1, a2, &v13);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1B602EEB0(a3, a4, &v13);
    _os_log_impl(&dword_1B6020000, v9, v10, "Fetching AQI scale for name: %{public}s with language: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v12, -1, -1);
    MEMORY[0x1B8C91C90](v11, -1, -1);
  }

  sub_1B610B98C();
}

uint64_t static NextHourForecastDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB9256C0 = a1;
  off_1EB9256C8 = a2;
}

uint64_t (*static NextHourForecastDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60DC6E0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB9256C8;
  *a1 = qword_1EB9256C0;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60DC730(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB9256C0 = v2;
  off_1EB9256C8 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60DC794()
{
  if (qword_1EDAB10F0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  return &qword_1EDAB10F8;
}

uint64_t static NextHourForecastDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB10F0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB10F8 = a1;
  qword_1EDAB1100 = a2;
}

uint64_t (*static NextHourForecastDescriptor.version.modify())()
{
  if (qword_1EDAB10F0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60DC8B4@<X0>(void *a1@<X8>)
{
  sub_1B60DC794();
  swift_beginAccess();
  v2 = qword_1EDAB1100;
  *a1 = qword_1EDAB10F8;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60DC908(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60DC794();
  swift_beginAccess();
  qword_1EDAB10F8 = v2;
  qword_1EDAB1100 = v1;
}

_BYTE *storeEnumTagSinglePayload for NextHourForecastDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t PressureTrend.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    OUTLINED_FUNCTION_0_9();
    sub_1B6221F44();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = sub_1B6221CD4();

    if (v5 >= 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }

    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::PressureTrend_optional __swiftcall PressureTrend.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PressureTrend.rawValue.getter()
{
  v1 = 0x474E494C4C4146;
  if (*v0 != 1)
  {
    v1 = 0x594441455453;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x474E49534952;
  }
}

unint64_t sub_1B60DCBA0()
{
  result = qword_1EB9256D0;
  if (!qword_1EB9256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256D0);
  }

  return result;
}

uint64_t sub_1B60DCC18@<X0>(uint64_t *a1@<X8>)
{
  result = PressureTrend.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B60DCCC0()
{
  result = qword_1EDAB1618;
  if (!qword_1EDAB1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1618);
  }

  return result;
}

uint64_t sub_1B60DCD68@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_6_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B60DCD94(uint64_t a1)
{
  v2 = sub_1B60DCF20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60DCDD0(uint64_t a1)
{
  v2 = sub_1B60DCF20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataUnavailable.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60DCF20();
  sub_1B62220F4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B60DCF20()
{
  result = qword_1EDAB06F0;
  if (!qword_1EDAB06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataUnavailable(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60DD0AC()
{
  result = qword_1EDAB06E0;
  if (!qword_1EDAB06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06E0);
  }

  return result;
}

unint64_t sub_1B60DD104()
{
  result = qword_1EDAB06E8;
  if (!qword_1EDAB06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB06E8);
  }

  return result;
}

uint64_t PrecipitationConditionParameterType.init(from:)@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_9();
  sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    OUTLINED_FUNCTION_0_9();
    sub_1B6221F44();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v5 = sub_1B6221CD4();

    *a2 = v5 == 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

WeatherDaemon::PrecipitationConditionParameterType_optional __swiftcall PrecipitationConditionParameterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PrecipitationConditionParameterType.rawValue.getter()
{
  if (*v0)
  {
    return 0x415F444E4F434553;
  }

  else
  {
    return 0x54415F5453524946;
  }
}

unint64_t sub_1B60DD2E0()
{
  result = qword_1EB9256E0;
  if (!qword_1EB9256E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256E0);
  }

  return result;
}

uint64_t sub_1B60DD358@<X0>(uint64_t *a1@<X8>)
{
  result = PrecipitationConditionParameterType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationConditionParameterType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60DD4F4()
{
  result = qword_1EB9256E8;
  if (!qword_1EB9256E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9256E8);
  }

  return result;
}

uint64_t sub_1B60DD548(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000065;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_12();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DD5DC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1751607656;
  }

  else
  {
    v3 = 7827308;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1751607656;
  }

  else
  {
    v5 = 7827308;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DD660(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_12();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DD6F4(unsigned __int8 a1, char a2)
{
  v2 = 5719374;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 5719374;
  switch(v4)
  {
    case 1:
      v5 = 0x435F474E49584157;
      goto LABEL_7;
    case 2:
      v6 = 0x5F5453524946;
      goto LABEL_11;
    case 3:
      v5 = 0x475F474E49584157;
      goto LABEL_9;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1280070982;
      break;
    case 5:
      v5 = 0x475F474E494E4157;
LABEL_9:
      v3 = 0xEE0053554F424249;
      break;
    case 6:
      v6 = 0x5F4452494854;
LABEL_11:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x5551000000000000;
      v3 = 0xED00005245545241;
      break;
    case 7:
      v5 = 0x435F474E494E4157;
LABEL_7:
      v3 = 0xEF544E4543534552;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x435F474E49584157;
      goto LABEL_18;
    case 2:
      v8 = 0x5F5453524946;
      goto LABEL_22;
    case 3:
      v2 = 0x475F474E49584157;
      goto LABEL_20;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1280070982;
      break;
    case 5:
      v2 = 0x475F474E494E4157;
LABEL_20:
      v7 = 0xEE0053554F424249;
      break;
    case 6:
      v8 = 0x5F4452494854;
LABEL_22:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x5551000000000000;
      v7 = 0xED00005245545241;
      break;
    case 7:
      v2 = 0x435F474E494E4157;
LABEL_18:
      v7 = 0xEF544E4543534552;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23();
  }

  return v10 & 1;
}

uint64_t sub_1B60DD8F8(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000524548;
  v3 = 0x4749485F4843554DLL;
  v4 = a1;
  v5 = 0x4749485F4843554DLL;
  v6 = 0xEB00000000524548;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x524548474948;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x4C414D524F4ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x5245574F4CLL;
      break;
    case 4:
      v5 = 0x574F4C5F4843554DLL;
      v6 = 0xEA00000000005245;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x524548474948;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x4C414D524F4ELL;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x5245574F4CLL;
      break;
    case 4:
      v3 = 0x574F4C5F4843554DLL;
      v2 = 0xEA00000000005245;
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
    v8 = OUTLINED_FUNCTION_13_8();
  }

  return v8 & 1;
}

uint64_t sub_1B60DDA60(unsigned __int8 a1, char a2)
{
  v2 = 0x444556524553424FLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x444556524553424FLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x594C454B494CLL;
      break;
    case 2:
      v5 = 0x454C424953534F50;
      break;
    case 3:
      v5 = 0x594C454B494C4E55;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x594C454B494CLL;
      break;
    case 2:
      v2 = 0x454C424953534F50;
      break;
    case 3:
      v2 = 0x594C454B494C4E55;
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DDBA0(unsigned __int8 a1, char a2)
{
  v2 = 0x454D4552545845;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x454D4552545845;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x455245564553;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4554415245444F4DLL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x524F4E494DLL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x455245564553;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4554415245444F4DLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x524F4E494DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_0_35();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DDCE0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x54414944454D4D49;
  v4 = a1;
  v5 = 0x54414944454D4D49;
  v6 = 0xE900000000000045;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x4445544345505845;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x455255545546;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1414742352;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x4445544345505845;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x455255545546;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1414742352;
      break;
    case 4:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
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
    v8 = OUTLINED_FUNCTION_13_8();
  }

  return v8 & 1;
}

uint64_t sub_1B60DDE40()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DDEA4(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000054;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_11_12();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DDF38()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DDFB4()
{
  OUTLINED_FUNCTION_21_7();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0x444558494DLL;
      break;
    case 2:
      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_29_4();
      break;
    case 3:
      v0 = 0xE400000000000000;
      v3 = 1313423698;
      break;
    case 4:
      v0 = 0xE400000000000000;
      v3 = 1464815187;
      break;
    case 5:
      v3 = 0x5445454C53;
      break;
    case 6:
      v0 = 0xE400000000000000;
      v3 = 1279869256;
      break;
    case 7:
      v0 = 0xE700000000000000;
      v3 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x444558494DLL;
      break;
    case 2:
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_27_5();
      break;
    case 3:
      v5 = 0xE400000000000000;
      v2 = 1313423698;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v2 = 1464815187;
      break;
    case 5:
      v2 = 0x5445454C53;
      break;
    case 6:
      v5 = 0xE400000000000000;
      v2 = 1279869256;
      break;
    case 7:
      v5 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_23();
  }

  return v7 & 1;
}

uint64_t sub_1B60DE120()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DE194(char a1, char a2)
{
  v2 = 1702125924;
  if (a1)
  {
    OUTLINED_FUNCTION_17_7();
    if (v3)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    if (v3)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v8 = 1702125924;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_11();
    if (v10)
    {
      v2 = v12;
    }

    else
    {
      v2 = v14;
    }

    if (v10)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_23();
  }

  return v17 & 1;
}

uint64_t sub_1B60DE278(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657275;
  }

  else
  {
    v1 = 0xED00006E6F697461;
  }

  OUTLINED_FUNCTION_11_12();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DE34C(char a1, char a2)
{
  v3 = 0xE100000000000000;
  v4 = 78;
  switch(a1)
  {
    case 1:
      v3 = 0xE200000000000000;
      v4 = 17742;
      break;
    case 2:
      v4 = 69;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v4 = 17747;
      break;
    case 4:
      v4 = 83;
      break;
    case 5:
      v3 = 0xE200000000000000;
      v4 = 22355;
      break;
    case 6:
      v4 = 87;
      break;
    case 7:
      v3 = 0xE200000000000000;
      v4 = 22350;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 78;
  switch(a2)
  {
    case 1:
      v5 = 0xE200000000000000;
      v6 = 17742;
      break;
    case 2:
      v6 = 69;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v6 = 17747;
      break;
    case 4:
      v6 = 83;
      break;
    case 5:
      v5 = 0xE200000000000000;
      v6 = 22355;
      break;
    case 6:
      v6 = 87;
      break;
    case 7:
      v5 = 0xE200000000000000;
      v6 = 22350;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DE484(char a1, char a2)
{
  v2 = 0x31762F697061;
  if (a1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v3)
    {
      v5 = 0x32762F697061;
    }

    else
    {
      v5 = 13174;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x31762F697061;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_37_2();
    if (v7)
    {
      v2 = 0x32762F697061;
    }

    else
    {
      v2 = 13174;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE200000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23();
  }

  return v11 & 1;
}

uint64_t sub_1B60DE548(char a1, char a2)
{
  v2 = 0x746867696CLL;
  if (a1)
  {
    OUTLINED_FUNCTION_37_2();
    if (v3)
    {
      v5 = 0x6D756964656DLL;
    }

    else
    {
      v5 = 0x7976616568;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x746867696CLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_37_2();
    if (v7)
    {
      v2 = 0x6D756964656DLL;
    }

    else
    {
      v2 = 0x7976616568;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23();
  }

  return v11 & 1;
}

uint64_t sub_1B60DE61C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x474E4148435F4F4ELL;
  v4 = a1;
  v5 = 0x474E4148435F4F4ELL;
  v6 = 0xE900000000000045;
  switch(v4)
  {
    case 1:
      v5 = 4410953;
      v6 = 0xE300000000000000;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v5 = 4408644;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x594441455453;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 4410953;
      v2 = 0xE300000000000000;
      break;
    case 2:
      v2 = 0xE300000000000000;
      v3 = 4408644;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x594441455453;
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
    v8 = OUTLINED_FUNCTION_13_8();
  }

  return v8 & 1;
}

uint64_t sub_1B60DE744(char a1)
{
  if (a1)
  {
    v1 = "PARTS_PER_BILLION";
  }

  else
  {
    v1 = "IKELY";
  }

  v2 = v1 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v3 == v4 && v2 == (v7 | 0x8000000000000000);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_23();
  }

  return v9 & 1;
}

uint64_t sub_1B60DE7D8(char a1, char a2)
{
  v2 = 0x796C72756F68;
  if (a1)
  {
    OUTLINED_FUNCTION_38();
    if (v3)
    {
      v5 = 0x796C696164;
    }

    else
    {
      v5 = 0x6369646F69726570;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x796C72756F68;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_38();
    if (v7)
    {
      v2 = 0x796C696164;
    }

    else
    {
      v2 = 0x6369646F69726570;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE800000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23();
  }

  return v11 & 1;
}

uint64_t sub_1B60DE8B4(char a1, char a2)
{
  v2 = 0x7372756F68;
  if (a1)
  {
    OUTLINED_FUNCTION_17_7();
    if (v3)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    if (v3)
    {
      v9 = v4;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x7372756F68;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_11();
    if (v10)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v10)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_23();
  }

  return v17 & 1;
}

uint64_t sub_1B60DE988(char a1)
{
  if (a1)
  {
    v1 = 0xED00006E6F697461;
  }

  else
  {
    v1 = 0xEB00000000657275;
  }

  OUTLINED_FUNCTION_11_12();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DEA2C(char a1, char a2)
{
  v2 = 0x7961646F74;
  if (a1)
  {
    OUTLINED_FUNCTION_38();
    if (v3)
    {
      v5 = 0x68746E6F6DLL;
    }

    else
    {
      v5 = 0x6B6165727473;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x7961646F74;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_38();
    if (v7)
    {
      v2 = 0x68746E6F6DLL;
    }

    else
    {
      v2 = 0x6B6165727473;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23();
  }

  return v11 & 1;
}

uint64_t sub_1B60DEB00(char a1, char a2)
{
  v2 = 0x474E49534952;
  if (a1)
  {
    OUTLINED_FUNCTION_39_1();
    if (v3)
    {
      v5 = 0x474E494C4C4146;
    }

    else
    {
      v5 = 0x594441455453;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x474E49534952;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
    if (v7)
    {
      v2 = 0x474E494C4C4146;
    }

    else
    {
      v2 = 0x594441455453;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23();
  }

  return v11 & 1;
}

uint64_t sub_1B60DEBF4()
{
  OUTLINED_FUNCTION_21_7();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0x5452415453;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1347376211;
      break;
    case 3:
      v3 = 0x54535F5452415453;
      v0 = 0xEA0000000000504FLL;
      break;
    case 4:
      v3 = 0x4154535F504F5453;
      v0 = 0xEA00000000005452;
      break;
    case 5:
      v0 = 0xE800000000000000;
      v3 = 0x544E4154534E4F43;
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x5452415453;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1347376211;
      break;
    case 3:
      v2 = 0x54535F5452415453;
      v5 = 0xEA0000000000504FLL;
      break;
    case 4:
      v2 = 0x4154535F504F5453;
      v5 = 0xEA00000000005452;
      break;
    case 5:
      v5 = 0xE800000000000000;
      v2 = 0x544E4154534E4F43;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_23();
  }

  return v7 & 1;
}

uint64_t sub_1B60DED90(unsigned __int8 a1, char a2)
{
  v2 = 0x5245544C454853;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x5245544C454853;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x4554415543415645;
      break;
    case 2:
      v6 = 0x524150455250;
      goto LABEL_6;
    case 3:
      v6 = 0x545543455845;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x44494F5641;
      break;
    case 5:
      v5 = 0x524F54494E4F4DLL;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x535345535341;
      break;
    case 7:
      v5 = 0x41454C435F4C4C41;
      v3 = 0xE900000000000052;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1162760014;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE800000000000000;
      v2 = 0x4554415543415645;
      break;
    case 2:
      v8 = 0x524150455250;
      goto LABEL_16;
    case 3:
      v8 = 0x545543455845;
LABEL_16:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x45000000000000;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v2 = 0x44494F5641;
      break;
    case 5:
      v2 = 0x524F54494E4F4DLL;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x535345535341;
      break;
    case 7:
      v2 = 0x41454C435F4C4C41;
      v7 = 0xE900000000000052;
      break;
    case 8:
      v7 = 0xE400000000000000;
      v2 = 1162760014;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23();
  }

  return v10 & 1;
}

uint64_t sub_1B60DEF88(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_11_12();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DF01C(char a1, char a2)
{
  v2 = 0x44454C45444F4DLL;
  if (a1)
  {
    OUTLINED_FUNCTION_39_1();
    if (v3)
    {
      v5 = 0x4E4F4954415453;
    }

    else
    {
      v5 = 0x4E495F454C505041;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEE004C414E524554;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x44454C45444F4DLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
    if (v7)
    {
      v2 = 0x4E4F4954415453;
    }

    else
    {
      v2 = 0x4E495F454C505041;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEE004C414E524554;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_23();
  }

  return v11 & 1;
}

uint64_t sub_1B60DF11C(unsigned __int8 a1, char a2)
{
  v2 = 1212631368;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1212631368;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 5721932;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x4C414D524F4ELL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_1_19();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 5721932;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x4C414D524F4ELL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_0_35();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DF228(char a1, char a2)
{
  if (a1)
  {
    v2 = 7827310;
  }

  else
  {
    v2 = 7954788;
  }

  if (a2)
  {
    v3 = 7827310;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B60DF298(char a1, char a2)
{
  v2 = 0xEF73636974736974;
  v3 = 0x617453796C696164;
  if (a1)
  {
    OUTLINED_FUNCTION_14_10();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x617453796C696164;
    v10 = 0xEF73636974736974;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_14_10();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_13_8();
  }

  return v18 & 1;
}

uint64_t sub_1B60DF360()
{
  OUTLINED_FUNCTION_11_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B6221F24();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B60DF3FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23();
  }

  return v10 & 1;
}

uint64_t sub_1B60DF480(unsigned __int8 a1, char a2)
{
  v2 = 0xEF4E494D5F455255;
  v3 = 0x54415245504D4554;
  v4 = a1;
  v5 = 0x54415245504D4554;
  v6 = 0xEF4E494D5F455255;
  switch(v4)
  {
    case 1:
      v6 = 0xEF58414D5F455255;
      v5 = 0x54415245504D4554;
      break;
    case 2:
      OUTLINED_FUNCTION_30_3();
      OUTLINED_FUNCTION_27_5();
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1464815187;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xEF58414D5F455255;
      break;
    case 2:
      OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_29_4();
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1464815187;
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
    v8 = OUTLINED_FUNCTION_13_8();
  }

  return v8 & 1;
}

uint64_t sub_1B60DF5B8(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657275;
  }

  else
  {
    v1 = 0xEA00000000007261;
  }

  OUTLINED_FUNCTION_11_12();
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DF654(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x68746E6F6DLL;
  }

  else
  {
    v3 = 0x6E6F4D664F796164;
  }

  if (v2)
  {
    v4 = 0xEA00000000006874;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x68746E6F6DLL;
  }

  else
  {
    v5 = 0x6E6F4D664F796164;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEA00000000006874;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DF6E8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x616559664F796164;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x7469706963657270;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001B623B8D0;
    }

    else
    {
      v6 = 0xED00006E6F697461;
    }
  }

  else
  {
    v5 = 0x616559664F796164;
    v6 = 0xE900000000000072;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x7469706963657270;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001B623B8D0;
    }

    else
    {
      v2 = 0xED00006E6F697461;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8();
  }

  return v8 & 1;
}

uint64_t sub_1B60DF7F4(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = 1701602409;
      break;
    case 2:
      v3 = 0x80000001B623B980;
      v5 = 0xD000000000000022;
      break;
    case 3:
      v5 = 0x6573616261746164;
      v3 = 0xEF70756E61656C43;
      break;
    case 4:
      v5 = 0xD00000000000001CLL;
      v3 = 0x80000001B623B9C0;
      break;
    case 5:
      v3 = 0x80000001B623B9E0;
      v5 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1701602409;
      break;
    case 2:
      v6 = 0x80000001B623B980;
      v2 = 0xD000000000000022;
      break;
    case 3:
      v2 = 0x6573616261746164;
      v6 = 0xEF70756E61656C43;
      break;
    case 4:
      v2 = 0xD00000000000001CLL;
      v6 = 0x80000001B623B9C0;
      break;
    case 5:
      v6 = 0x80000001B623B9E0;
      v2 = 0xD00000000000001FLL;
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
    v8 = OUTLINED_FUNCTION_2_23();
  }

  return v8 & 1;
}

uint64_t sub_1B60DF9A0(unsigned __int8 a1, char a2)
{
  v2 = 0xEF72656469766F72;
  v3 = 0x50746C7561666564;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001B623B3B0;
    }

    else
    {
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v5 = 0x50746C7561666564;
    v6 = 0xEF72656469766F72;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001B623B3B0;
    }

    else
    {
      v2 = 0xE000000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_8();
  }

  return v8 & 1;
}

uint64_t sub_1B60DFA78(unsigned __int8 a1, char a2)
{
  v2 = 0x747065636341;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x747065636341;
  switch(v4)
  {
    case 1:
      v5 = 0x7A69726F68747541;
      v3 = 0xED00006E6F697461;
      break;
    case 2:
      v5 = 0x746E756F436F6547;
      v3 = 0xEE0065646F437972;
      break;
    case 3:
      v5 = 0x7365757165522D58;
      v6 = 1145646452;
      goto LABEL_7;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x80000001B623B200;
      break;
    case 5:
      v5 = 0x2D746E65746E6F43;
      v6 = 1701869908;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7A69726F68747541;
      v7 = 0xED00006E6F697461;
      break;
    case 2:
      v2 = 0x746E756F436F6547;
      v7 = 0xEE0065646F437972;
      break;
    case 3:
      v2 = 0x7365757165522D58;
      v8 = 1145646452;
      goto LABEL_14;
    case 4:
      v2 = 0xD000000000000010;
      v7 = 0x80000001B623B200;
      break;
    case 5:
      v2 = 0x2D746E65746E6F43;
      v8 = 1701869908;
LABEL_14:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_23();
  }

  return v10 & 1;
}

uint64_t static Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_8_13();
  v2 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  if ((sub_1B621D8A4() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for Metadata();
  if ((sub_1B621D8A4() & 1) == 0)
  {
    return 0;
  }

  v16 = v15[6];
  v17 = *(v11 + 48);
  sub_1B6058CE0(v1 + v16, v14);
  sub_1B6058CE0(v0 + v16, &v14[v17]);
  OUTLINED_FUNCTION_6_1(v14);
  if (v18)
  {
    OUTLINED_FUNCTION_6_1(&v14[v17]);
    if (v18)
    {
      sub_1B6037288(v14, &qword_1EB924600);
      goto LABEL_15;
    }

LABEL_11:
    sub_1B6037288(v14, &qword_1EB9255D8);
    return 0;
  }

  sub_1B6058CE0(v14, v10);
  OUTLINED_FUNCTION_6_1(&v14[v17]);
  if (v18)
  {
    (*(v4 + 8))(v10, v2);
    goto LABEL_11;
  }

  (*(v4 + 32))(v7, &v14[v17], v2);
  sub_1B609F140(&qword_1EB9255E0);
  v20 = sub_1B62211A4();
  v21 = *(v4 + 8);
  v21(v7, v2);
  v21(v10, v2);
  sub_1B6037288(v14, &qword_1EB924600);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v22 = v15[7];
  v23 = (v1 + v22);
  v24 = *(v1 + v22 + 8);
  v25 = (v0 + v22);
  v26 = *(v0 + v22 + 8);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (*(v1 + v15[8]) != *(v0 + v15[8]) || *(v1 + v15[9]) != *(v0 + v15[9]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_18();
  if (v29)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_7(v28);
    v32 = v18 && v30 == v31;
    if (!v32 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_18();
  if (v35)
  {
    if (!v33)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_7(v34);
    v38 = v18 && v36 == v37;
    if (!v38 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_18();
  if (v41)
  {
    if (!v39)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_7(v40);
    v44 = v18 && v42 == v43;
    if (!v44 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v45 = v15[13];
  v46 = *(v1 + v45);
  v47 = *(v0 + v45);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }

    goto LABEL_55;
  }

  result = 0;
  if (v47 != 2 && ((v47 ^ v46) & 1) == 0)
  {
LABEL_55:
    v48 = v15[14];
    v49 = *(v1 + v48);
    v50 = *(v0 + v48);
    if (v49)
    {
      if (!v50)
      {
        return 0;
      }
    }

    else if (v50)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_18();
    if (v53)
    {
      if (v51)
      {
        OUTLINED_FUNCTION_15_7(v52);
        v56 = v18 && v54 == v55;
        if (v56 || (sub_1B6221F24() & 1) != 0)
        {
LABEL_68:
          v57 = v15[16];
          v58 = *(v1 + v57);
          v59 = *(v0 + v57);
          if (v58 == 3)
          {
            if (v59 == 3)
            {
              return 1;
            }
          }

          else if (v59 != 3 && (sub_1B60DF01C(v58, v59) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v51)
    {
      goto LABEL_68;
    }

    return 0;
  }

  return result;
}

uint64_t Metadata.Units.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B6221CD4();

  *a1 = v2 != 0;
  return result;
}

uint64_t Metadata.readTime.setter()
{
  OUTLINED_FUNCTION_3();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Metadata.expireTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for Metadata() + 20);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Metadata.expireTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.reportedTime.getter()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1 + *(type metadata accessor for Metadata() + 24);

  return sub_1B6058CE0(v2, v0);
}

uint64_t Metadata.reportedTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for Metadata() + 24);

  return sub_1B603D764(v0, v2);
}

uint64_t Metadata.reportedTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.version.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Metadata();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Metadata.version.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.latitude.setter(double a1)
{
  result = type metadata accessor for Metadata();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Metadata.latitude.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.longitude.setter(double a1)
{
  result = type metadata accessor for Metadata();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Metadata.longitude.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.language.getter()
{
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_18_0();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t Metadata.language.setter()
{
  OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.language.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.providerName.setter()
{
  OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.providerName.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.providerLogo.setter()
{
  OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.providerLogo.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.temporarilyUnavailable.setter(char a1)
{
  result = type metadata accessor for Metadata();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Metadata.temporarilyUnavailable.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.units.getter()
{
  OUTLINED_FUNCTION_6_2();
  result = type metadata accessor for Metadata();
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t Metadata.units.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Metadata();
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t Metadata.units.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.attributionUrl.setter()
{
  OUTLINED_FUNCTION_8_13();
  type metadata accessor for Metadata();
  result = OUTLINED_FUNCTION_32_4();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Metadata.attributionUrl.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.sourceType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Metadata();
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t Metadata.sourceType.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for Metadata();
  return OUTLINED_FUNCTION_5();
}

uint64_t Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - v4;
  v6 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v69 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256F0);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1B60E10C8();
  v72 = v18;
  v20 = v73;
  sub_1B62220D4();
  if (!v20)
  {
    v73 = v15;
    v68 = v10;
    v22 = v69;
    v21 = v70;
    LOBYTE(v81) = 0;
    sub_1B609F140(&qword_1EDAB20F0);
    sub_1B6221DD4();
    LOBYTE(v81) = 1;
    sub_1B6221DD4();
    v67 = v13;
    LOBYTE(v81) = 2;
    v24 = v5;
    sub_1B6221D24();
    LOBYTE(v81) = 3;
    sub_1B6221D24();
    v25 = v83;
    v26 = v84;
    LOBYTE(v81) = 4;
    sub_1B6221DB4();
    v28 = v27;
    v85 = v26;
    LOBYTE(v81) = 5;
    sub_1B6221DB4();
    v29 = v73;
    v31 = v30;
    v64 = v25;
    LOBYTE(v79) = 6;
    sub_1B6221D24();
    v63 = v81;
    v66 = v82;
    LOBYTE(v77) = 7;
    sub_1B6221D24();
    v62 = v79;
    v65 = v80;
    LOBYTE(v75) = 8;
    sub_1B6221D24();
    v32 = v78;
    v61 = v77;
    LOBYTE(v75) = 9;
    LOBYTE(v60) = sub_1B6221D54() & 1;
    v60 = v60;
    LOBYTE(v75) = 10;
    sub_1B60E111C();
    v33 = v71;
    v34 = v72;
    sub_1B6221D24();
    v59 = v88;
    v87 = 11;
    sub_1B6221D24();
    v58 = v75;
    v57 = v76;
    v86 = 12;
    sub_1B60E1170();
    sub_1B6221D24();
    (*(v29 + 8))(v34, v33);
    LODWORD(v73) = v87;
    v35 = type metadata accessor for Metadata();
    v55 = v35[6];
    __swift_storeEnumTagSinglePayload(v21 + v55, 1, 1, v6);
    v36 = v35[7];
    v72 = v32;
    v37 = v21 + v36;
    v38 = v35[11];
    v54 = (v21 + v35[10]);
    v56 = (v21 + v38);
    v39 = v35[12];
    v71 = v35[13];
    v52 = (v21 + v39);
    v53 = v35[14];
    *(v21 + v53) = 1;
    v40 = v35[15];
    v41 = v35[16];
    v51 = v24;
    v42 = (v21 + v40);
    *(v21 + v41) = 3;
    v43 = *(v22 + 32);
    v43(v21, v67, v6);
    v43(v21 + v35[5], v68, v6);
    sub_1B603D764(v51, v21 + v55);
    *v37 = v64;
    *(v37 + 8) = v85;
    *(v21 + v35[8]) = v28;
    *(v21 + v35[9]) = v31;
    v44 = v54;
    v45 = v66;
    *v54 = v63;
    v44[1] = v45;
    v46 = v56;
    v47 = v65;
    *v56 = v62;
    v46[1] = v47;
    v48 = v52;
    v49 = v72;
    *v52 = v61;
    v48[1] = v49;
    *(v21 + v71) = v60;
    *(v21 + v53) = v59;
    v50 = v57;
    *v42 = v58;
    v42[1] = v50;
    *(v21 + v41) = v73;
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

unint64_t sub_1B60E10C8()
{
  result = qword_1EDAB1048;
  if (!qword_1EDAB1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1048);
  }

  return result;
}

unint64_t sub_1B60E111C()
{
  result = qword_1EDAB1010;
  if (!qword_1EDAB1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1010);
  }

  return result;
}

unint64_t sub_1B60E1170()
{
  result = qword_1EDAB0868;
  if (!qword_1EDAB0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0868);
  }

  return result;
}

uint64_t sub_1B60E11C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695464616572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6954657269707865 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646574726F706572 && a2 == 0xEC000000656D6954;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72656469766F7270 && a2 == 0xEC000000656D614ELL;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72656469766F7270 && a2 == 0xEC0000006F676F4CLL;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x80000001B623D120 == a2;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7374696E75 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7475626972747461 && a2 == 0xEE006C72556E6F69;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1B6221F24();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
      }
    }
  }
}

unint64_t sub_1B60E15D4(char a1)
{
  result = 0x656D695464616572;
  switch(a1)
  {
    case 1:
      result = 0x6954657269707865;
      break;
    case 2:
      result = 0x646574726F706572;
      break;
    case 3:
      result = 0x6E6F6973726576;
      break;
    case 4:
      result = 0x656475746974616CLL;
      break;
    case 5:
      result = 0x64757469676E6F6CLL;
      break;
    case 6:
      result = 0x65676175676E616CLL;
      break;
    case 7:
      result = 0x72656469766F7270;
      break;
    case 8:
      result = 0x72656469766F7270;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x7374696E75;
      break;
    case 11:
      result = 0x7475626972747461;
      break;
    case 12:
      result = 0x7954656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60E1768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60E11C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60E1790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60E15CC();
  *a1 = result;
  return result;
}

uint64_t sub_1B60E17B8(uint64_t a1)
{
  v2 = sub_1B60E10C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60E17F4(uint64_t a1)
{
  v2 = sub_1B60E10C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9256F8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E10C8();
  sub_1B62220F4();
  v13[31] = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8);
  OUTLINED_FUNCTION_6_13();
  sub_1B6221EC4();
  if (!v2)
  {
    v11 = type metadata accessor for Metadata();
    v13[30] = 1;
    OUTLINED_FUNCTION_6_13();
    sub_1B6221EC4();
    v13[29] = 2;
    OUTLINED_FUNCTION_6_13();
    sub_1B6221E74();
    v13[28] = 3;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E64();
    v13[27] = 4;
    OUTLINED_FUNCTION_3_2();
    sub_1B6221EA4();
    v13[26] = 5;
    OUTLINED_FUNCTION_3_2();
    sub_1B6221EA4();
    OUTLINED_FUNCTION_26_5(v11[10]);
    v13[25] = 6;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    OUTLINED_FUNCTION_26_5(v11[11]);
    v13[24] = 7;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    OUTLINED_FUNCTION_26_5(v11[12]);
    v13[15] = 8;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    v13[14] = 9;
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E34();
    v13[13] = *(v3 + v11[14]);
    v13[12] = 10;
    sub_1B60E1B94();
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E74();
    OUTLINED_FUNCTION_26_5(v11[15]);
    v13[11] = 11;
    OUTLINED_FUNCTION_9_10();
    sub_1B6221E24();
    v13[10] = *(v3 + v11[16]);
    v13[9] = 12;
    sub_1B60E1BE8();
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E74();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60E1B94()
{
  result = qword_1EDAB1020;
  if (!qword_1EDAB1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1020);
  }

  return result;
}

unint64_t sub_1B60E1BE8()
{
  result = qword_1EDAB17B0;
  if (!qword_1EDAB17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB17B0);
  }

  return result;
}

unint64_t sub_1B60E1C40()
{
  result = qword_1EB925700;
  if (!qword_1EB925700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925700);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60E1DF0()
{
  result = qword_1EB925708;
  if (!qword_1EB925708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925708);
  }

  return result;
}

unint64_t sub_1B60E1E48()
{
  result = qword_1EDAB1038;
  if (!qword_1EDAB1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1038);
  }

  return result;
}

unint64_t sub_1B60E1EA0()
{
  result = qword_1EDAB1040;
  if (!qword_1EDAB1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1040);
  }

  return result;
}

unint64_t sub_1B60E1EF4()
{
  result = qword_1EDAB1018;
  if (!qword_1EDAB1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1018);
  }

  return result;
}

uint64_t WeatherDataRequestOptions.units.getter()
{
  result = OUTLINED_FUNCTION_31_3();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t WeatherDataRequestOptions.countryCode.getter()
{
  type metadata accessor for WeatherDataRequestOptions();
  sub_1B6220784();
  return OUTLINED_FUNCTION_5_2();
}

uint64_t WeatherDataRequestOptions.locationOptions.getter()
{
  result = OUTLINED_FUNCTION_31_3();
  v3 = (v1 + *(result + 32));
  v4 = *v3;
  LOWORD(v3) = *(v3 + 4);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t WeatherDataRequestOptions.cachingOptions.getter()
{
  result = OUTLINED_FUNCTION_31_3();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t WeatherDataRequestOptions.treatmentIdentifiers.getter()
{
  type metadata accessor for WeatherDataRequestOptions();

  return sub_1B6220784();
}

uint64_t WeatherDataRequestOptions.preferredLanguages.getter()
{
  type metadata accessor for WeatherDataRequestOptions();

  return sub_1B6220784();
}

void WeatherDataRequestOptions.init(language:timeZone:units:countryCode:locationOptions:cachingOptions:cacheReadPolicy:treatmentIdentifiers:dailyDateInterval:hourlyDateInterval:periodicRelativeRange:dailyRelativeRange:hourlyRelativeRange:marineHourlyRelativeRange:networkActivity:needsMarineData:needsTwilightData:preferredLanguages:updateCacheAsynchronously:)(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  OUTLINED_FUNCTION_22_6();
  v24 = v16;
  v19 = OUTLINED_FUNCTION_35_2(v17, v18);
  sub_1B603D3DC(a1, a2 + v19[5], &qword_1EB924EF8);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_11_13(v20, v23);
  *(v21 + 24) = v24;
  *(a2 + v19[10]) = v25;
  OUTLINED_FUNCTION_36_2(a5, a2 + v19[11]);
  OUTLINED_FUNCTION_36_2(a6, a2 + v19[12]);
  sub_1B603D3DC(a7, a2 + v19[15], &qword_1EB924F18);
  sub_1B603D3DC(a10, a2 + v19[16], &qword_1EB924F20);
  sub_1B603D3DC(a8, a2 + v19[13], &qword_1EB924F08);
  sub_1B603D3DC(a9, a2 + v19[14], &qword_1EB924F10);
  sub_1B603D3DC(a11, a2 + v19[17], &qword_1EB924F30);
  OUTLINED_FUNCTION_23_5(v19[18]);
  *(a2 + v22) = a13;
  *(a2 + v19[22]) = a14;
}

uint64_t sub_1B60E247C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374696E75 && a2 == 0xE500000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF736E6F6974704FLL;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4F676E6968636163 && a2 == 0xEE00736E6F697470;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001B623C6A0 == a2;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001B623D140 == a2;
                if (v12 || (sub_1B6221F24() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x80000001B623D160 == a2;
                  if (v13 || (sub_1B6221F24() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001B623D180 == a2;
                    if (v14 || (sub_1B6221F24() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001B623D1A0 == a2;
                      if (v15 || (sub_1B6221F24() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x80000001B623D1C0 == a2;
                        if (v16 || (sub_1B6221F24() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001B623D1E0 == a2;
                          if (v17 || (sub_1B6221F24() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x416B726F7774656ELL && a2 == 0xEF79746976697463;
                            if (v18 || (sub_1B6221F24() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x72614D736465656ELL && a2 == 0xEF61746144656E69;
                              if (v19 || (sub_1B6221F24() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000011 && 0x80000001B623D200 == a2;
                                if (v20 || (sub_1B6221F24() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000012 && 0x80000001B623D220 == a2;
                                  if (v21 || (sub_1B6221F24() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6165526568636163 && a2 == 0xEF7963696C6F5064;
                                    if (v22 || (sub_1B6221F24() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000019 && 0x80000001B623D240 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1B6221F24();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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

unint64_t sub_1B60E2A50(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
      result = 0x656E6F5A656D6974;
      break;
    case 2:
      result = 0x7374696E75;
      break;
    case 3:
      result = 0x437972746E756F63;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x4F676E6968636163;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 15:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
    case 18:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0x416B726F7774656ELL;
      break;
    case 14:
      result = 0x72614D736465656ELL;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6165526568636163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60E2C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60E247C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60E2CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60E2A48();
  *a1 = result;
  return result;
}

uint64_t sub_1B60E2CDC(uint64_t a1)
{
  v2 = sub_1B60E3364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60E2D18(uint64_t a1)
{
  v2 = sub_1B60E3364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherDataRequestOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925710);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E3364();
  sub_1B62220F4();
  LOBYTE(v36) = 0;
  OUTLINED_FUNCTION_10_12();
  sub_1B6221E84();
  if (!v2)
  {
    v11 = type metadata accessor for WeatherDataRequestOptions();
    OUTLINED_FUNCTION_29_5(1);
    sub_1B621DB64();
    OUTLINED_FUNCTION_20_6();
    sub_1B60E44C4(v12, v13);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    LOBYTE(v36) = *(v3 + v11[6]);
    v41 = 2;
    sub_1B60E33B8();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221EC4();
    LOBYTE(v36) = 3;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E24();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    LOWORD(v14) = *(v14 + 4);
    *&v36 = v15;
    WORD4(v36) = v14;
    v41 = 4;
    sub_1B60E340C();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221E74();
    *&v36 = *(v3 + v11[9]);
    v41 = 5;
    sub_1B60E3460();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221EC4();
    *&v36 = *(v3 + v11[10]);
    v41 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925740);
    OUTLINED_FUNCTION_14_11();
    sub_1B60E4468(v16);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_29_5(7);
    sub_1B621D364();
    OUTLINED_FUNCTION_13_9();
    sub_1B60E44C4(v17, v18);
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    LOBYTE(v36) = 8;
    OUTLINED_FUNCTION_10_12();
    sub_1B6221E74();
    OUTLINED_FUNCTION_29_5(9);
    type metadata accessor for WeatherRequestDailyRelativeRange();
    OUTLINED_FUNCTION_21_8();
    sub_1B60E44C4(v19, v20);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    OUTLINED_FUNCTION_29_5(10);
    type metadata accessor for WeatherRequestHourlyRelativeRange();
    OUTLINED_FUNCTION_19_7();
    sub_1B60E44C4(v21, v22);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    OUTLINED_FUNCTION_29_5(11);
    type metadata accessor for WeatherRequestPeriodicRelativeRange();
    OUTLINED_FUNCTION_18_8();
    sub_1B60E44C4(v23, v24);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    OUTLINED_FUNCTION_29_5(12);
    type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
    OUTLINED_FUNCTION_17_8();
    sub_1B60E44C4(v25, v26);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    OUTLINED_FUNCTION_29_5(13);
    type metadata accessor for WDSNetworkActivity();
    OUTLINED_FUNCTION_15_8();
    sub_1B60E44C4(v27, v28);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221E74();
    OUTLINED_FUNCTION_44_1(14);
    OUTLINED_FUNCTION_7_12();
    sub_1B6221E94();
    OUTLINED_FUNCTION_44_1(15);
    OUTLINED_FUNCTION_7_12();
    sub_1B6221E94();
    *&v36 = *(v3 + v11[20]);
    v41 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
    OUTLINED_FUNCTION_14_11();
    sub_1B60E34B4(v29);
    OUTLINED_FUNCTION_5_19();
    sub_1B6221EC4();
    v30 = (v3 + v11[21]);
    v31 = *(v30 + 2);
    v32 = *v30;
    v34 = *(v30 + 6);
    v30 = (v30 + 24);
    v33 = v34;
    LOWORD(v34) = *(v30 + 2);
    LOBYTE(v30) = *(v30 + 6);
    v36 = v32;
    v37 = v31;
    v40 = v30;
    v39 = v34;
    v38 = v33;
    v41 = 17;
    sub_1B60E3510();
    OUTLINED_FUNCTION_6_14();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_44_1(18);
    OUTLINED_FUNCTION_7_12();
    sub_1B6221E94();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60E3364()
{
  result = qword_1EB925718;
  if (!qword_1EB925718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925718);
  }

  return result;
}

unint64_t sub_1B60E33B8()
{
  result = qword_1EB925728;
  if (!qword_1EB925728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925728);
  }

  return result;
}

unint64_t sub_1B60E340C()
{
  result = qword_1EB925730;
  if (!qword_1EB925730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925730);
  }

  return result;
}

unint64_t sub_1B60E3460()
{
  result = qword_1EB925738;
  if (!qword_1EB925738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925738);
  }

  return result;
}

uint64_t sub_1B60E34B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB924F68);
    result = OUTLINED_FUNCTION_46_2();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60E3510()
{
  result = qword_1EB925780;
  if (!qword_1EB925780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925780);
  }

  return result;
}

uint64_t WeatherDataRequestOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30);
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v111 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v112 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  OUTLINED_FUNCTION_0(v9);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v113 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  OUTLINED_FUNCTION_0(v12);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v115 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  OUTLINED_FUNCTION_0(v15);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v107 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  v20 = OUTLINED_FUNCTION_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v107 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  OUTLINED_FUNCTION_0(v26);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v107 - v28;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925788);
  OUTLINED_FUNCTION_2();
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v107 - v33;
  v120 = type metadata accessor for WeatherDataRequestOptions();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v118 = (&v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1[3];
  v114 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1B60E3364();
  v117 = v34;
  v38 = v119;
  sub_1B62220D4();
  if (v38)
  {
    v119 = v38;
    v40 = 0;
    LODWORD(v41) = 0;
    v42 = 0;
    v31 = 0;
    LODWORD(v43) = 0;
    OUTLINED_FUNCTION_4_17();
  }

  else
  {
    v119 = v25;
    v108 = v18;
    v109 = v22;
    LOBYTE(v121) = 0;
    v40 = v116;
    v39 = sub_1B6221D94();
    v18 = v118;
    *v118 = v39;
    *(v18 + 8) = v48;
    sub_1B621DB64();
    LOBYTE(v121) = 1;
    OUTLINED_FUNCTION_20_6();
    sub_1B60E44C4(v49, v50);
    OUTLINED_FUNCTION_30_4();
    sub_1B6221D84();
    v51 = v120;
    sub_1B603D3DC(v29, v18 + v120[5], &qword_1EB924EF8);
    v126 = 2;
    sub_1B60E436C();
    OUTLINED_FUNCTION_8_14();
    sub_1B6221DD4();
    v52 = v18;
    *(v18 + v51[6]) = v121;
    OUTLINED_FUNCTION_43_1(3);
    v53 = sub_1B6221D44();
    v54 = (v18 + v51[7]);
    *v54 = v53;
    v54[1] = v55;
    v126 = 4;
    sub_1B60E43C0();
    OUTLINED_FUNCTION_8_14();
    sub_1B6221D84();
    v56 = WORD4(v121);
    v57 = v18 + v51[8];
    *v57 = v121;
    *(v57 + 8) = v56;
    v126 = 5;
    sub_1B60E4414();
    OUTLINED_FUNCTION_8_14();
    sub_1B6221DD4();
    *(v18 + v51[9]) = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925740);
    v126 = 6;
    OUTLINED_FUNCTION_16_12();
    sub_1B60E4468(v58);
    OUTLINED_FUNCTION_42_3();
    sub_1B6221DD4();
    *(v18 + v51[10]) = v121;
    LODWORD(v25) = sub_1B621D364();
    LOBYTE(v121) = 7;
    OUTLINED_FUNCTION_13_9();
    LODWORD(v18) = sub_1B60E44C4(v59, v60);
    v43 = v119;
    OUTLINED_FUNCTION_32_5();
    sub_1B603D3DC(v43, v52 + v51[11], &qword_1EB924F00);
    OUTLINED_FUNCTION_44_1(8);
    v41 = v109;
    OUTLINED_FUNCTION_32_5();
    v119 = 0;
    sub_1B603D3DC(v41, v52 + v120[12], &qword_1EB924F00);
    v42 = type metadata accessor for WeatherRequestDailyRelativeRange();
    LOBYTE(v121) = 9;
    OUTLINED_FUNCTION_21_8();
    sub_1B60E44C4(v61, v62);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_42_3();
    v63 = v119;
    sub_1B6221D84();
    v119 = v63;
    if (v63)
    {
      v64 = OUTLINED_FUNCTION_26_6();
      v65(v64);
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_1_20();
    }

    else
    {
      OUTLINED_FUNCTION_34_2();
      sub_1B603D3DC(v108, v66, v67);
      type metadata accessor for WeatherRequestHourlyRelativeRange();
      LOBYTE(v121) = 10;
      OUTLINED_FUNCTION_19_7();
      sub_1B60E44C4(v68, v69);
      OUTLINED_FUNCTION_30_4();
      v42 = v117;
      v70 = v119;
      sub_1B6221D84();
      v119 = v70;
      if (v70)
      {
        v71 = OUTLINED_FUNCTION_26_6();
        v72(v71);
        LODWORD(v115) = 0;
        LODWORD(v116) = 0;
        LODWORD(v117) = 0;
        LODWORD(v18) = 0;
        OUTLINED_FUNCTION_1_20();
        LODWORD(v25) = 1;
      }

      else
      {
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v115, v73, v74);
        type metadata accessor for WeatherRequestPeriodicRelativeRange();
        LOBYTE(v121) = 11;
        OUTLINED_FUNCTION_18_8();
        sub_1B60E44C4(v75, v76);
        OUTLINED_FUNCTION_30_4();
        OUTLINED_FUNCTION_9_11();
        sub_1B6221D84();
        v119 = 0;
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v113, v77, v78);
        type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
        LOBYTE(v121) = 12;
        OUTLINED_FUNCTION_17_8();
        sub_1B60E44C4(v79, v80);
        OUTLINED_FUNCTION_30_4();
        OUTLINED_FUNCTION_9_11();
        sub_1B6221D84();
        v119 = 0;
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v112, v81, v82);
        type metadata accessor for WDSNetworkActivity();
        LOBYTE(v121) = 13;
        OUTLINED_FUNCTION_15_8();
        sub_1B60E44C4(v83, v84);
        OUTLINED_FUNCTION_30_4();
        OUTLINED_FUNCTION_9_11();
        sub_1B6221D84();
        v119 = 0;
        OUTLINED_FUNCTION_34_2();
        sub_1B603D3DC(v111, v85, v86);
        OUTLINED_FUNCTION_43_1(14);
        v42 = v117;
        v87 = v119;
        v88 = sub_1B6221DA4();
        v119 = v87;
        if (!v87)
        {
          *(v118 + v120[18]) = v88 & 1;
          OUTLINED_FUNCTION_43_1(15);
          v92 = sub_1B6221DA4();
          v119 = 0;
          *(v118 + v120[19]) = v92 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
          v126 = 16;
          OUTLINED_FUNCTION_16_12();
          sub_1B60E34B4(v93);
          OUTLINED_FUNCTION_9_11();
          sub_1B6221DD4();
          v119 = 0;
          *(v118 + v120[20]) = v121;
          v126 = 17;
          sub_1B60E450C();
          v41 = &v121;
          v42 = v117;
          v95 = v119;
          sub_1B6221DD4();
          v119 = v95;
          if (!v95)
          {
            v96 = v122;
            v97 = v124;
            v98 = v123;
            v99 = v118 + v120[21];
            *v99 = v121;
            *(v99 + 2) = v96;
            *(v99 + 6) = v98;
            *(v99 + 14) = v97;
            v99[30] = v125;
            OUTLINED_FUNCTION_43_1(18);
            v100 = sub_1B6221DA4();
            v119 = 0;
            v103 = v100;
            v104 = OUTLINED_FUNCTION_26_6();
            v105(v104);
            v106 = v118;
            *(v118 + v120[22]) = v103 & 1;
            sub_1B60E4560(v106, v110);
            __swift_destroy_boxed_opaque_existential_1(v114);
            return sub_1B60E45C4(v106);
          }

          v101 = OUTLINED_FUNCTION_26_6();
          v102(v101);
          v46 = 1;
          __swift_destroy_boxed_opaque_existential_1(v114);
          OUTLINED_FUNCTION_0_36();
          LODWORD(v116) = v94;
          LODWORD(v117) = v94;
          LODWORD(v18) = 1;
          v44 = v118;
          goto LABEL_6;
        }

        v89 = OUTLINED_FUNCTION_26_6();
        v90(v89);
        v40 = 1;
        OUTLINED_FUNCTION_0_36();
        LODWORD(v116) = v91;
        LODWORD(v117) = v91;
        LODWORD(v18) = 1;
      }
    }
  }

  v44 = v118;
  result = __swift_destroy_boxed_opaque_existential_1(v114);
  if (v40)
  {
    v46 = 0;
LABEL_6:

    goto LABEL_18;
  }

  v46 = 0;
LABEL_18:
  v47 = v120;
  if (!v41)
  {
    if (!v42)
    {
      goto LABEL_20;
    }

LABEL_8:

    if (v31)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (!v43)
    {
      goto LABEL_22;
    }

LABEL_10:
    result = sub_1B6037288(v44 + v47[12], &qword_1EB924F00);
    if (v25)
    {
      goto LABEL_23;
    }

LABEL_11:
    if (!v115)
    {
      goto LABEL_24;
    }

LABEL_12:
    result = sub_1B6037288(v44 + v47[14], &qword_1EB924F10);
    if (v116)
    {
      goto LABEL_25;
    }

LABEL_13:
    if (!v117)
    {
      goto LABEL_26;
    }

LABEL_14:
    result = sub_1B6037288(v44 + v47[16], &qword_1EB924F20);
    if (v18)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (v42)
  {
    goto LABEL_8;
  }

LABEL_20:
  if (!v31)
  {
    goto LABEL_9;
  }

LABEL_21:
  result = sub_1B6037288(v44 + v47[11], &qword_1EB924F00);
  if (v43)
  {
    goto LABEL_10;
  }

LABEL_22:
  if (!v25)
  {
    goto LABEL_11;
  }

LABEL_23:
  result = sub_1B6037288(v44 + v47[13], &qword_1EB924F08);
  if (v115)
  {
    goto LABEL_12;
  }

LABEL_24:
  if (!v116)
  {
    goto LABEL_13;
  }

LABEL_25:
  result = sub_1B6037288(v44 + v47[15], &qword_1EB924F18);
  if (v117)
  {
    goto LABEL_14;
  }

LABEL_26:
  if (v18)
  {
LABEL_27:
    result = sub_1B6037288(v44 + v47[17], &qword_1EB924F30);
    if ((v46 & 1) == 0)
    {
      return result;
    }
  }

LABEL_15:
  if (!v46)
  {
    return result;
  }
}

unint64_t sub_1B60E436C()
{
  result = qword_1EB925798;
  if (!qword_1EB925798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925798);
  }

  return result;
}

unint64_t sub_1B60E43C0()
{
  result = qword_1EB9257A0;
  if (!qword_1EB9257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257A0);
  }

  return result;
}

unint64_t sub_1B60E4414()
{
  result = qword_1EB9257A8;
  if (!qword_1EB9257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257A8);
  }

  return result;
}

uint64_t sub_1B60E4468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925740);
    result = OUTLINED_FUNCTION_46_2();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B60E44C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B60E450C()
{
  result = qword_1EB9257F0;
  if (!qword_1EB9257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257F0);
  }

  return result;
}

uint64_t sub_1B60E4560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataRequestOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60E45C4(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataRequestOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WeatherDataRequestOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataRequestOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60E47E0()
{
  result = qword_1EB9257F8;
  if (!qword_1EB9257F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9257F8);
  }

  return result;
}

unint64_t sub_1B60E4838()
{
  result = qword_1EB925800;
  if (!qword_1EB925800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925800);
  }

  return result;
}

unint64_t sub_1B60E4890()
{
  result = qword_1EB925808;
  if (!qword_1EB925808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925808);
  }

  return result;
}

void *sub_1B60E48E4()
{
  type metadata accessor for ExtremaInitializer();
  v0 = swift_allocObject();
  type metadata accessor for ExtremaReducer();
  v1 = swift_allocObject();
  type metadata accessor for ExtremaFinalizer();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925810);
  result = swift_allocObject();
  result[2] = sub_1B60E4A8C;
  result[3] = v0;
  result[4] = sub_1B60E4AB8;
  result[5] = v1;
  result[6] = sub_1B60E4AE0;
  result[7] = v2;
  return result;
}

uint64_t sub_1B60E4A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, double *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  result = sub_1B60E49D0(*a1, a2, a3, a4, a5, a6, a7, a8);
  *a9 = result;
  return result;
}

uint64_t sub_1B60E4A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B60E49AC();
  *a1 = result;
  return result;
}

uint64_t WeatherInterpolator.__allocating_init<A, B, C>(initializer:reducer:finalizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  WeatherInterpolator.init<A, B, C>(initializer:reducer:finalizer:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

void *WeatherInterpolator.init<A, B, C>(initializer:reducer:finalizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(*v9 + 88);
  v32 = *(*v9 + 80);
  v16 = sub_1B60E4D70(a1, v32, v13, a4, a5, a6, a7, a8, a9);
  v30 = v17;
  OUTLINED_FUNCTION_10_6();
  (*(v18 + 8))(a1, a4);
  v9[2] = v16;
  v9[3] = v30;
  v19 = OUTLINED_FUNCTION_14_12();
  v21 = sub_1B60E4EC8(v19, v20, v13, a4, a5, a6, a7, a8, a9);
  v23 = v22;
  OUTLINED_FUNCTION_10_6();
  (*(v24 + 8))(a2, a5);
  v9[4] = v21;
  v9[5] = v23;
  v25 = sub_1B60E5020(a3, v32, v13, a4, a5, a6, a7, a8, a9);
  v27 = v26;
  OUTLINED_FUNCTION_10_6();
  (*(v28 + 8))(a3, a6);
  v9[6] = v25;
  v9[7] = v27;
  return v9;
}

uint64_t (*sub_1B60E4D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v23 = a7;
  v24 = a8;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v23;
  v20 = v24;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  *(v19 + 9) = a9;
  (*(v14 + 32))(&v19[v18], v17, a4);
  return sub_1B60E6ACC;
}

uint64_t (*sub_1B60E4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2)
{
  v23 = a7;
  v24 = a8;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v23;
  v20 = v24;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  *(v19 + 9) = a9;
  (*(v14 + 32))(&v19[v18], v17, a5);
  return sub_1B60E6A54;
}

uint64_t (*sub_1B60E5020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a7;
  v24 = a8;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  v21 = v23;
  v20 = v24;
  *(v19 + 6) = a6;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  *(v19 + 9) = a9;
  (*(v14 + 32))(&v19[v18], v17, a6);
  return sub_1B60E69D0;
}

void WeatherInterpolator.reduce(_:from:to:clampRange:useMonotone:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v215) = a7;
  v187 = a6;
  v189 = a5;
  v188 = a4;
  v217 = a3;
  v210 = a2;
  v11 = *v8;
  v12 = *v8;
  v13 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2_7();
  v201 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v203 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  v212 = &v179 - v22;
  v192 = v8;
  v205 = *(v11 + 80);
  OUTLINED_FUNCTION_2_7();
  v190 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_3();
  v214 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v26);
  v209 = &v179 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924628);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_2_3();
  v213 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16();
  v208 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v179 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v179 - v38;
  v40 = type metadata accessor for InterpolationElement();
  OUTLINED_FUNCTION_2_7();
  v191 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_3();
  v200 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_16();
  v202 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_16();
  v204 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_16();
  v216 = v50;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_16();
  v206 = v52;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_16();
  v207 = v54;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_16();
  v211 = v56;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v179 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v179 - v61;
  v63 = sub_1B6221554();
  if (v63 < 2)
  {
    goto LABEL_7;
  }

  v64 = v63;
  v199 = v13;
  v65 = a8;
  v185 = v59;
  v220 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925818);
  v186 = sub_1B60E6888(&qword_1EB925820);
  sub_1B6221784();
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    v67 = v39;
LABEL_6:
    sub_1B608E0C4(v67);
    a8 = v65;
LABEL_7:
    if (qword_1EB9244B8 != -1)
    {
      OUTLINED_FUNCTION_0_37();
    }

    v68 = sub_1B6220B34();
    __swift_project_value_buffer(v68, qword_1EB942AB0);
    OUTLINED_FUNCTION_48();
    sub_1B6220784();
    v69 = sub_1B6220B14();
    v70 = sub_1B62217E4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v12;
      v72 = swift_slowAlloc();
      *v72 = 134217984;
      *(v72 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1B6020000, v69, v70, "Failed to reduce data points because there are not enough data points; count=%ld", v72, 0xCu);
      v12 = v71;
      OUTLINED_FUNCTION_30();
    }

    else
    {
    }

    v73 = *(v12 + 88);
    v74 = a8;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v73);
    return;
  }

  sub_1B60E6824(v39, v62);
  v220 = a1;
  sub_1B60E6888(&qword_1EB925828);
  v184 = v66;
  sub_1B6221164();
  if (__swift_getEnumTagSinglePayload(v36, 1, v40) == 1)
  {
    sub_1B60E68D8(v62);
    v67 = v36;
    goto LABEL_6;
  }

  sub_1B60E6824(v36, v185);
  v75 = sub_1B609F140(&qword_1EDAB0D78);
  v76 = v217;
  v77 = v210;
  v78 = v199;
  v79 = sub_1B6221184();
  v183 = v65;
  if (v79)
  {
    v216 = v12;
    v180 = v62;
    if (qword_1EB9244B8 != -1)
    {
LABEL_49:
      OUTLINED_FUNCTION_0_37();
    }

    v80 = sub_1B6220B34();
    __swift_project_value_buffer(v80, qword_1EB942AB0);
    OUTLINED_FUNCTION_16_13();
    v81 = v196;
    v82 = v199;
    (v12)(v196, v77, v199);
    (v12)(v197, v76, v82);
    v83 = sub_1B6220B14();
    v84 = sub_1B62217E4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v220 = v217;
      *v85 = 136315394;
      OUTLINED_FUNCTION_5_20(&qword_1EDAB0D70);
      v86 = sub_1B6221F04();
      v87 = v81;
      v88 = *(v64 + 8);
      v88(v87, v82);
      v89 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v89, v90, v91);
      OUTLINED_FUNCTION_48();

      *(v85 + 4) = v86;
      *(v85 + 12) = 2080;
      v92 = sub_1B6221F04();
      v94 = v93;
      v95 = OUTLINED_FUNCTION_14_12();
      (v88)(v95);
      v96 = sub_1B602EEB0(v92, v94, &v220);

      *(v85 + 14) = v96;
      _os_log_impl(&dword_1B6020000, v83, v84, "Failed to reduce data points because requested time range is degenerate; startDate=%s, endDate=%s", v85, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {

      v129 = *(v64 + 8);
      v130 = OUTLINED_FUNCTION_14_12();
      v129(v130);
      (v129)(v81, v82);
    }

    sub_1B60E68D8(v185);
    sub_1B60E68D8(v180);
    v73 = *(v216 + 88);
    v74 = v183;
    goto LABEL_13;
  }

  v97 = v78;
  if (sub_1B6221184() & 1) != 0 || (sub_1B6221184())
  {
    v216 = v12;
    v98 = v62;
    if (qword_1EB9244B8 != -1)
    {
      OUTLINED_FUNCTION_0_37();
    }

    v99 = sub_1B6220B34();
    __swift_project_value_buffer(v99, qword_1EB942AB0);
    OUTLINED_FUNCTION_16_13();
    (v12)(v193, v210, v78);
    v100 = v194;
    (v12)(v194, v217, v78);
    v101 = v198;
    sub_1B60E6934(v62, v198);
    v102 = v185;
    v103 = v200;
    sub_1B60E6934(v185, v200);
    v104 = sub_1B6220B14();
    LODWORD(v217) = sub_1B62217E4();
    if (os_log_type_enabled(v104, v217))
    {
      v105 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v220 = v215;
      *v105 = 136315906;
      OUTLINED_FUNCTION_5_20(&qword_1EDAB0D70);
      v214 = v104;
      v106 = OUTLINED_FUNCTION_17_9();
      v180 = v98;
      v107 = *(v64 + 8);
      v108 = OUTLINED_FUNCTION_14_12();
      v107(v108);
      v109 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v109, v110, v111);
      OUTLINED_FUNCTION_48();

      *(v105 + 4) = v106;
      *(v105 + 12) = 2080;
      v112 = OUTLINED_FUNCTION_17_9();
      (v107)(v100, v97);
      v113 = v183;
      v114 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v114, v115, v116);
      OUTLINED_FUNCTION_48();

      *(v105 + 14) = v112;
      *(v105 + 22) = 2080;
      v117 = v198;
      v118 = OUTLINED_FUNCTION_17_9();
      sub_1B60E68D8(v117);
      v119 = OUTLINED_FUNCTION_7_13();
      sub_1B602EEB0(v119, v120, v121);
      OUTLINED_FUNCTION_48();

      *(v105 + 24) = v118;
      *(v105 + 32) = 2080;
      v122 = v200;
      v123 = OUTLINED_FUNCTION_17_9();
      v125 = v124;
      sub_1B60E68D8(v122);
      v126 = sub_1B602EEB0(v123, v125, &v220);

      *(v105 + 34) = v126;
      v127 = v214;
      _os_log_impl(&dword_1B6020000, v214, v217, "Failed to reduce data points because the requested time range is outside the range of the data points; startDate=%s, endDate=%s, dataPointsStartDate=%s, dataPointsEndDate=%s", v105, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      sub_1B60E68D8(v185);
      sub_1B60E68D8(v180);
      v128 = v216;
    }

    else
    {

      sub_1B60E68D8(v103);
      sub_1B60E68D8(v101);
      v131 = *(v64 + 8);
      (v131)(v100, v97);
      v132 = OUTLINED_FUNCTION_14_12();
      v131(v132);
      sub_1B60E68D8(v102);
      sub_1B60E68D8(v98);
      v128 = v216;
      v113 = v183;
    }

    v73 = *(v128 + 88);
    v74 = v113;
    goto LABEL_13;
  }

  v196 = v75;
  v180 = v62;
  v200 = (v201 + 8);
  v133 = v64 - 1;
  v134 = 1;
  v12 = v211;
  v76 = v191;
  while (v64 != v134)
  {
    if (v134 >= *(a1 + 16))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_1B60E6934(a1 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v134, v12);
    v135 = *(v40 + 20);
    v136 = sub_1B6221184();
    v137 = v211 + v135;
    v12 = v211;
    (*v200)(v137, v97);
    ++v134;
    if (v136)
    {
      v133 = v134 - 2;
      v64 = v134 - 1;
      break;
    }
  }

  v138 = v192;
  v139 = v192[3];
  v198 = v192[2];
  v197 = v139;
  OUTLINED_FUNCTION_9_12(v133 - 1);
  v76 = v184;
  v12 = v133;
  sub_1B60E63B4(v195);
  v140 = v211;
  OUTLINED_FUNCTION_12_11();
  v141 = v207;
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_6_15(v133 + 2);
  sub_1B60E63B4(v142);
  v143 = v195;
  v198(v195, v140, v141, v64, v210);
  sub_1B608E0C4(v64);
  sub_1B60E68D8(v141);
  sub_1B60E68D8(v140);
  sub_1B608E0C4(v143);
  v144 = v138[5];
  v182 = v138[4];
  v181 = v144;
  v198 = (v201 + 16);
  v194 = (v190 + 1);
  v190 += 4;
  v193 = v40;
  v191 = a1;
  v145 = v208;
  v77 = v206;
  do
  {
    OUTLINED_FUNCTION_9_12(v12 - 1);
    sub_1B60E63B4(v145);
    OUTLINED_FUNCTION_12_11();
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v146 = v12;
    OUTLINED_FUNCTION_7_13();
    sub_1B62215A4();
    if (__OFADD__(v12, 2))
    {
      goto LABEL_47;
    }

    v201 = v12 + 1;
    v218 = v12 + 2;
    v219 = a1;
    sub_1B60E63B4(v213);
    v147 = v204;
    OUTLINED_FUNCTION_12_11();
    v148 = *(v40 + 20);
    v149 = v210;
    v150 = v199;
    v151 = sub_1B6221194();
    v152 = *v198;
    v197 = v146;
    if (v151)
    {
      v153 = v212;
      v154 = v149;
    }

    else
    {
      v154 = v147 + v148;
      v153 = v212;
    }

    v152(v153, v154, v150);
    v155 = v202;
    v156 = v147;
    v157 = *v200;
    (*v200)(v156 + v148, v150);
    OUTLINED_FUNCTION_12_11();
    v158 = *(v40 + 20);
    v159 = v150;
    if (sub_1B6221184())
    {
      v160 = v203;
      v161 = OUTLINED_FUNCTION_7_13();
    }

    else
    {
      v162 = v155 + v158;
      v160 = v203;
      v161 = v203;
    }

    v152(v161, v162, v159);
    v157(v155 + v158, v159);
    v163 = v209;
    v164 = v145;
    v77 = v206;
    v165 = v216;
    v166 = v213;
    v167 = v212;
    v182(v209, v164, v206, v216, v213, v212, v160, v215 & 1);
    v157(v160, v159);
    v157(v167, v159);
    v168 = v166;
    v145 = v208;
    sub_1B608E0C4(v168);
    sub_1B60E68D8(v165);
    sub_1B60E68D8(v77);
    sub_1B608E0C4(v145);
    v169 = *v194;
    v170 = v205;
    (*v194)(v163, v205);
    (*v190)(v163, v214, v170);
    v171 = v201;
    a1 = v191;
    sub_1B60E6614(v215 & 1, v201, v191);
    v12 = v197 + 1;
    v40 = v193;
    v64 = v207;
    v76 = v184;
  }

  while ((v172 & 1) != 0);
  if (__OFSUB__(v171, 2))
  {
    __break(1u);
  }

  else
  {
    v173 = v192[6];
    v215 = v192[7];
    v216 = v173;
    OUTLINED_FUNCTION_9_12(v171 - 2);
    sub_1B60E63B4(v195);
    v174 = v211;
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_12_11();
    v175 = v217;
    if (!__OFADD__(v171, 1))
    {
      OUTLINED_FUNCTION_6_15(v171 + 1);
      sub_1B60E63B4(v176);
      v177 = v209;
      v178 = v195;
      (v216)(v209, v195, v174, v64, v64, v175, v188, v189, v187 & 1);
      sub_1B608E0C4(v64);
      sub_1B60E68D8(v64);
      sub_1B60E68D8(v174);
      sub_1B608E0C4(v178);
      v169(v177, v205);
      sub_1B60E68D8(v185);
      sub_1B60E68D8(v180);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1B60E63B4@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v15[-v4];
  sub_1B6221764();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1B62213F4();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (v6)
  {
    v7 = sub_1B62217A4();
    v9 = v8;
    v10 = swift_getAssociatedTypeWitness();
    (*(*(v10 - 8) + 16))(a1, v9, v10);
    v7(v15, 0);
    v11 = a1;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = swift_getAssociatedTypeWitness();
    v11 = a1;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void sub_1B60E6614(char a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InterpolationElement();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (__OFADD__(a2, 2))
    {
      __break(1u);
      goto LABEL_14;
    }

    if ((a2 + 2) >= sub_1B6221554())
    {
      return;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (*(a3 + 16) > a2)
    {
LABEL_11:
      sub_1B60E6934(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2, v9);
      v10 = *(v6 + 20);
      sub_1B621D824();
      v11 = sub_1B621D8F4();
      (*(*(v11 - 8) + 8))(&v9[v10], v11);
      return;
    }

    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a2 + 1) < sub_1B6221554())
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (*(a3 + 16) > a2)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t WeatherInterpolator.deinit()
{

  return v0;
}

uint64_t WeatherInterpolator.__deallocating_deinit()
{
  WeatherInterpolator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1B60E6824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterpolationElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60E6888(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925818);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B60E68D8(uint64_t a1)
{
  v2 = type metadata accessor for InterpolationElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B60E6934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterpolationElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

WeatherDaemon::CardinalDirection_optional __swiftcall CardinalDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CardinalDirection.rawValue.getter()
{
  result = 78;
  switch(*v0)
  {
    case 1:
      result = 17742;
      break;
    case 2:
      result = 69;
      break;
    case 3:
      result = 17747;
      break;
    case 4:
      result = 83;
      break;
    case 5:
      result = 22355;
      break;
    case 6:
      result = 87;
      break;
    case 7:
      result = 22350;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B60E6C18()
{
  result = qword_1EB925830;
  if (!qword_1EB925830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925830);
  }

  return result;
}

uint64_t sub_1B60E6C90@<X0>(uint64_t *a1@<X8>)
{
  result = CardinalDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CardinalDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60E6EFC()
{
  result = qword_1EDAAF8E8[0];
  if (!qword_1EDAAF8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAAF8E8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B60E6F94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B60E6FB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t PrecipitationConditionParameter.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrecipitationConditionParameter() + 20);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t PrecipitationConditionParameter.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrecipitationConditionParameter() + 20);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t static PrecipitationConditionParameter.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x415F444E4F434553;
  }

  else
  {
    v3 = 0x54415F5453524946;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000054;
  }

  if (*a2)
  {
    v5 = 0x415F444E4F434553;
  }

  else
  {
    v5 = 0x54415F5453524946;
  }

  if (*a2)
  {
    v6 = 0xE900000000000054;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1B6221F24();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for PrecipitationConditionParameter();

  return sub_1B621D8A4();
}

uint64_t sub_1B60E7264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60E7334(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1B60E735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60E7264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60E7384(uint64_t a1)
{
  v2 = sub_1B60E75AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60E73C0(uint64_t a1)
{
  v2 = sub_1B60E75AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrecipitationConditionParameter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925838);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E75AC();
  sub_1B62220F4();
  v12[15] = *v3;
  v12[14] = 0;
  sub_1B60E7600();
  sub_1B6221EC4();
  if (!v2)
  {
    type metadata accessor for PrecipitationConditionParameter();
    v12[13] = 1;
    sub_1B621D8F4();
    sub_1B609F140(&unk_1EDAB20F8);
    sub_1B6221EC4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60E75AC()
{
  result = qword_1EB925840;
  if (!qword_1EB925840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925840);
  }

  return result;
}

unint64_t sub_1B60E7600()
{
  result = qword_1EB925848;
  if (!qword_1EB925848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925848);
  }

  return result;
}

uint64_t PrecipitationConditionParameter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v25 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925850);
  OUTLINED_FUNCTION_2();
  v27 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PrecipitationConditionParameter();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60E75AC();
  sub_1B62220D4();
  if (!v2)
  {
    v16 = v15;
    v24 = v12;
    v17 = v27;
    v18 = v28;
    v31 = 0;
    sub_1B60E7930();
    v19 = v29;
    sub_1B6221DD4();
    v23 = v16;
    *v16 = v32;
    v30 = 1;
    sub_1B609F140(&qword_1EDAB20F0);
    v22 = v7;
    sub_1B6221DD4();
    (*(v17 + 8))(v11, v19);
    v20 = v23;
    (*(v25 + 32))(&v23[*(v24 + 20)], v22, v18);
    sub_1B60E7984(v20, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60E7930()
{
  result = qword_1EB925858;
  if (!qword_1EB925858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925858);
  }

  return result;
}

uint64_t sub_1B60E7984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationConditionParameter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationConditionParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60E7B54()
{
  result = qword_1EB925860;
  if (!qword_1EB925860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925860);
  }

  return result;
}

unint64_t sub_1B60E7BAC()
{
  result = qword_1EB925868;
  if (!qword_1EB925868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925868);
  }

  return result;
}

unint64_t sub_1B60E7C04()
{
  result = qword_1EB925870;
  if (!qword_1EB925870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925870);
  }

  return result;
}

uint64_t static WeatherComparisonsDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB925878 = a1;
  off_1EB925880 = a2;
}

uint64_t (*static WeatherComparisonsDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60E7CF8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB925880;
  *a1 = qword_1EB925878;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60E7D48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB925878 = v2;
  off_1EB925880 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60E7DAC()
{
  if (qword_1EDAB1C28 != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  return &qword_1EDAB1C30;
}

uint64_t static WeatherComparisonsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1C28 != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1C30 = a1;
  qword_1EDAB1C38 = a2;
}

uint64_t (*static WeatherComparisonsDescriptor.version.modify())()
{
  if (qword_1EDAB1C28 != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60E7ECC@<X0>(void *a1@<X8>)
{
  sub_1B60E7DAC();
  swift_beginAccess();
  v2 = qword_1EDAB1C38;
  *a1 = qword_1EDAB1C30;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60E7F20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60E7DAC();
  swift_beginAccess();
  qword_1EDAB1C30 = v2;
  qword_1EDAB1C38 = v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherComparisonsDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60E8020(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = (*a1 & 1) == 0;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;

  sub_1B60E8088();

  return v3;
}

uint64_t sub_1B60E8088()
{
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EB924460 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v1 == 1)
  {
    type metadata accessor for Settings.DaemonStore();
    swift_initStaticObject();
    sub_1B60A2A5C();
    sub_1B621DC84();
    return sub_1B60E9EF4();
  }

  return result;
}

uint64_t sub_1B60E8168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925888);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v41 - v16;
  v18 = type metadata accessor for MonthlyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v18);
  v45 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v41 - v21;
  v23 = *(a4 + 8);
  v44 = *a4;
  v47 = a2;
  v48 = v44;
  v43 = v23;
  v49 = v23;
  v46 = a1;
  v24 = sub_1B60CB5C8(a1, a2, a3, &v48);
  v26 = v25;
  if (qword_1EB9244F8 != -1)
  {
    swift_once();
  }

  v27 = sub_1B6220B34();
  __swift_project_value_buffer(v27, qword_1EB942B58);
  sub_1B6220784();
  v28 = sub_1B6220B14();
  v29 = sub_1B62217F4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v41[1] = v14;
    v42 = a3;
    v31 = v30;
    v32 = v18;
    v33 = swift_slowAlloc();
    v48 = v33;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_1B602EEB0(v24, v26, &v48);
    _os_log_impl(&dword_1B6020000, v28, v29, "Attempting to read monthly statistics from cache; key=%{private,mask.hash}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v34 = v33;
    v18 = v32;
    MEMORY[0x1B8C91C90](v34, -1, -1);
    a3 = v42;
    MEMORY[0x1B8C91C90](v31, -1, -1);
  }

  sub_1B60E85CC(v24, v26, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1B602724C(v17, &qword_1EB925888);
    v48 = v44;
    v49 = v43;
    sub_1B60C8E7C(v46, a5, a6, v47, a3, &v48);
    v35 = swift_allocObject();
    *(v35 + 16) = v24;
    *(v35 + 24) = v26;
    *(v35 + 32) = a5;
    *(v35 + 40) = a6;
    sub_1B6220784();
    v36 = sub_1B62208D4();
    sub_1B6220954();

    v37 = swift_allocObject();
    *(v37 + 16) = v24;
    *(v37 + 24) = v26;
    v38 = sub_1B62208D4();
    v39 = sub_1B6220974();
  }

  else
  {

    sub_1B60EA178(v17, v22);
    sub_1B60EA1DC(v22, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925890);
    swift_allocObject();
    v39 = sub_1B6220994();
    sub_1B60EA240(v22);
  }

  return v39;
}

uint64_t sub_1B60E85CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_1B6220BD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B58);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = v7;
    v46 = v8;
    v16 = v15;
    v54 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(v47, a2, &v54);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve monthly statistics from cache; key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    v7 = v45;
    v8 = v46;
    MEMORY[0x1B8C91C90](v17, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  if (*(v49 + 16) == 1)
  {
    if (sub_1B60A059C())
    {
      sub_1B6220D44();
      v57 = MEMORY[0x1E69E6158];
      v58 = MEMORY[0x1E69D62D8];
      v54 = v47;
      v55 = a2;
      sub_1B6220784();
      sub_1B6220CD4();
      __swift_destroy_boxed_opaque_existential_1(&v54);
      v18 = sub_1B6220DD4();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
      sub_1B6220D14();

      sub_1B602724C(v6, &qword_1EB924B50);
      (*(v8 + 8))(v10, v7);
      v25 = v50[0];
      if (v50[0])
      {
        v26 = v51;
        v27 = v52;
        v54 = v50[0];
        v55 = v50[1];
        v56 = v50[2];
        v57 = v50[3];
        v58 = v51;
        v59 = v52;
        v49 = v53;
        v60 = v53;
        sub_1B6220784();
        v28 = sub_1B6220B14();
        v29 = sub_1B62217F4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v46 = v26;
          v31 = v30;
          v32 = swift_slowAlloc();
          v45 = v27;
          v33 = v32;
          v50[0] = v32;
          *v31 = 141558275;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          *(v31 + 14) = sub_1B602EEB0(v47, a2, v50);
          _os_log_impl(&dword_1B6020000, v28, v29, "Successfully retrieved monthly statistics from cache; key=%{private,mask.hash}s", v31, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x1B8C91C90](v33, -1, -1);
          MEMORY[0x1B8C91C90](v31, -1, -1);
        }

        if (qword_1EDAAF1F0 != -1)
        {
          swift_once();
        }

        sub_1B61DB658(xmmword_1EDAAF1F8, *(&xmmword_1EDAAF1F8 + 1), qword_1EDAAF208, dword_1EDAAF210 | ((word_1EDAAF214 | (byte_1EDAAF216 << 16)) << 32), v34, v35, v36, v37, v44, v45, v46, v47, v48, v49);

        return sub_1B60729F4(v25);
      }

      else
      {
        sub_1B6220784();
        v40 = sub_1B6220B14();
        v41 = sub_1B62217F4();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v54 = v43;
          *v42 = 141558275;
          *(v42 + 4) = 1752392040;
          *(v42 + 12) = 2081;
          *(v42 + 14) = sub_1B602EEB0(v47, a2, &v54);
          _os_log_impl(&dword_1B6020000, v40, v41, "Could not find monthly statistics in cache; key=%{private,mask.hash}s", v42, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1B8C91C90](v43, -1, -1);
          MEMORY[0x1B8C91C90](v42, -1, -1);
        }

        v38 = type metadata accessor for MonthlyWeatherStatistics();
        return __swift_storeEnumTagSinglePayload(v48, 1, 1, v38);
      }
    }

    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Cannot retrieve cached monthly statistics due to missing store";
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Monthly statistics cache is disabled - returning nil";
LABEL_13:
      _os_log_impl(&dword_1B6020000, v19, v20, v22, v21, 2u);
      MEMORY[0x1B8C91C90](v21, -1, -1);
    }
  }

  v23 = type metadata accessor for MonthlyWeatherStatistics();
  v24 = v48;

  return __swift_storeEnumTagSinglePayload(v24, 1, 1, v23);
}

uint64_t sub_1B60E8E34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for MonthlyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B58);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18[1] = a2;
    v16 = v15;
    v19 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(a3, a4, &v19);
    _os_log_impl(&dword_1B6020000, v12, v13, "Successfully fetched monthly statistics. key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  sub_1B60E9068(a1, a3, a4);
  sub_1B60EA1DC(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925890);
  swift_allocObject();
  return sub_1B6220994();
}

void sub_1B60E9068(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MonthlyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EB9244F8 != -1)
    {
      swift_once();
    }

    v27 = sub_1B6220B34();
    __swift_project_value_buffer(v27, qword_1EB942B58);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Monthly statistics cache is disabled - not caching";
    goto LABEL_12;
  }

  v18 = sub_1B60A059C();
  if (!v18)
  {
    if (qword_1EB9244F8 != -1)
    {
      swift_once();
    }

    v31 = sub_1B6220B34();
    __swift_project_value_buffer(v31, qword_1EB942B58);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Cannot cache monthly statistics due to missing store";
LABEL_12:
    _os_log_impl(&dword_1B6020000, v61, v28, v30, v29, 2u);
    MEMORY[0x1B8C91C90](v29, -1, -1);
LABEL_13:
    v32 = v61;

    return;
  }

  v19 = v18;
  sub_1B60EA1DC(a1, v17);
  v20 = type metadata accessor for Metadata();
  (*(v12 + 16))(v14, a1 + *(v20 + 20), v11);
  sub_1B6220784();
  sub_1B61D7F48();
  v61 = v19;
  v57 = a3;
  v58 = v4;
  v55 = v12;
  v56 = a2;
  v21 = v62;
  v59 = v63;
  v22 = v64;
  v23 = v65;
  v25 = v66;
  v24 = v67;
  v26 = v68;
  sub_1B6220D34();
  v60 = v21;
  v62 = v21;
  v63 = v59;
  v64 = v22;
  v65 = v23;
  v66 = v25;
  v67 = v24;
  v68 = v26;
  sub_1B6220D04();
  v54 = v26;
  v33 = v22;
  v34 = v23;
  v35 = v33;

  if (qword_1EB9244F8 != -1)
  {
    swift_once();
  }

  v36 = sub_1B6220B34();
  __swift_project_value_buffer(v36, qword_1EB942B58);
  v37 = v57;
  sub_1B6220784();

  v38 = sub_1B6220B14();
  v39 = sub_1B62217F4();

  v52 = v24;

  v53 = v25;

  v50 = v34;

  v51 = v35;

  if (!os_log_type_enabled(v38, v39))
  {

    goto LABEL_16;
  }

  v49 = v38;
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v62 = v41;
  *v40 = 141558531;
  *(v40 + 4) = 1752392040;
  *(v40 + 12) = 2081;
  *(v40 + 14) = sub_1B602EEB0(v56, v37, &v62);
  *(v40 + 22) = 2080;
  sub_1B6220D84();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    sub_1B60CDD24();
    v43 = v42;
    v45 = v44;
    (*(v55 + 8))(v10, v11);
    v46 = sub_1B602EEB0(v43, v45, &v62);

    *(v40 + 24) = v46;
    v47 = v49;
    _os_log_impl(&dword_1B6020000, v49, v39, "Just cached monthly statistics; key=%{private,mask.hash}s. It expires %s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v41, -1, -1);
    MEMORY[0x1B8C91C90](v40, -1, -1);

LABEL_16:
    sub_1B60E9AA8();

    return;
  }

  __break(1u);
}