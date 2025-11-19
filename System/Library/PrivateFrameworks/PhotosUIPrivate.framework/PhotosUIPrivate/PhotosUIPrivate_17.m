uint64_t sub_1B38A4CC0(char a1)
{
  OUTLINED_FUNCTION_7_30();
  MEMORY[0x1B8C6AD50](qword_1B3D0B538[a1]);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A4D0C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30();
  MEMORY[0x1B8C6AD50](a1);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A4D80()
{
  sub_1B3C9C668();
}

uint64_t sub_1B38A4ED0()
{
  sub_1B3C9C668();
}

uint64_t sub_1B38A4F30()
{
  sub_1B3C9C668();
}

uint64_t sub_1B38A4FDC()
{
  sub_1B3C9C668();
}

uint64_t sub_1B38A5108()
{
  sub_1B3C9C668();
}

uint64_t sub_1B38A517C()
{
  sub_1B3C9D7C8();
  sub_1B3C9C668();

  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A521C()
{
  sub_1B3C9D7C8();
  sub_1B38A4F30();
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A5260(uint64_t a1, unsigned __int8 a2)
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](a2);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A52A4()
{
  sub_1B3C9D7C8();
  sub_1B3C9C668();

  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A5330(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1B3C9D7C8();
  a3(a2);
  OUTLINED_FUNCTION_6_30();

  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A5384(uint64_t a1, char a2)
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](qword_1B3D0B538[a2]);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A53D4(uint64_t a1, uint64_t a2)
{
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](a2);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A5418()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38A54B0, v5, v4);
}

uint64_t sub_1B38A54B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B38A4B54();
  *v4 = v0;
  v4[1] = sub_1B38A2F70;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D0B508);
}

uint64_t sub_1B38A55BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1B3C9C888();
  v3[5] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38A5658, v5, v4);
}

uint64_t sub_1B38A5658()
{
  sub_1B3C97B28();
  if (*(v0 + 88))
  {
    v1 = 0x80000001B3D0E260;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  if ((*(v0 + 88) & 1) != 0 || v1 != 0xE900000000000065)
  {
    sub_1B3C9D6A8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545D0);
  sub_1B3C98638();
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 16) = xmmword_1B3CF6CE0;
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A3260;

  return sub_1B37E6898();
}

uint64_t sub_1B38A5814()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852788);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v36[-v2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v36[-v5];
  v39 = sub_1B3C97F38();
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = sub_1B3C98188();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v12 = sub_1B3C9C598();
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v43 = sub_1B3C97F48();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858700);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858708) - 8);
  v15 = *v14;
  v42 = *(*v14 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v44 = v17;
  *(v17 + 16) = xmmword_1B3CFA2E0;
  v18 = (v17 + v16);
  v41 = v14[14];
  *v18 = 0;
  sub_1B3C9C538();
  sub_1B3C98178();
  v37 = *MEMORY[0x1E6968DF0];
  v19 = *(v6 + 104);
  v38 = v6 + 104;
  v40 = v19;
  v19(v9);
  OUTLINED_FUNCTION_18_10();
  sub_1B3C97F58();
  OUTLINED_FUNCTION_5_2();
  v20 = v43;
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v43);
  v24 = sub_1B3C97C48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_12_17();
  v28 = &v18[v42];
  v42 = v14[14];
  *v28 = 1;
  sub_1B3C9C538();
  sub_1B3C98178();
  v40(v9, v37, v39);
  OUTLINED_FUNCTION_18_10();
  sub_1B3C97F58();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v24);
  OUTLINED_FUNCTION_12_17();
  sub_1B3C97C68();
  sub_1B38A6448();
  return sub_1B3C9C4D8();
}

uint64_t sub_1B38A5C64()
{
  v0 = sub_1B3C9D568();

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

uint64_t sub_1B38A5CB8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7369776B636F6C63;
  }
}

uint64_t sub_1B38A5CF8()
{
  v0 = sub_1B3C97CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  v6 = OUTLINED_FUNCTION_8_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v40 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  v27 = *MEMORY[0x1E695A500];
  v28 = *(v1 + 104);
  v28(v4, v27, v0);
  sub_1B374FC40();
  v39 = sub_1B3C97B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858710);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v40);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v20);
  v28(v4, v27, v0);
  sub_1B38A6568();
  sub_1B3C97B48();
  return v39;
}

uint64_t sub_1B38A6030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B38A5C64();
  *a1 = result;
  return result;
}

uint64_t sub_1B38A6060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A5CB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B38A608C(uint64_t a1)
{
  v2 = sub_1B38A6978();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38A60D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B38A5418();
}

uint64_t sub_1B38A6184@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A5CF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38A61AC(uint64_t a1)
{
  v2 = sub_1B38A4B54();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38A61EC()
{
  result = qword_1EB858678;
  if (!qword_1EB858678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858678);
  }

  return result;
}

uint64_t sub_1B38A629C(uint64_t a1)
{
  v2 = sub_1B38A6878();

  return MEMORY[0x1EEDB3868](a1, v2);
}

uint64_t sub_1B38A62E8(uint64_t a1)
{
  v2 = sub_1B38A6568();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1B38A6338(uint64_t a1)
{
  v2 = sub_1B38A6614();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1B38A6398()
{
  result = qword_1EB858690;
  if (!qword_1EB858690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858690);
  }

  return result;
}

unint64_t sub_1B38A63F0()
{
  result = qword_1EB858698;
  if (!qword_1EB858698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858698);
  }

  return result;
}

unint64_t sub_1B38A6448()
{
  result = qword_1EB8586A0;
  if (!qword_1EB8586A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586A0);
  }

  return result;
}

unint64_t sub_1B38A64A0()
{
  result = qword_1EB8586A8;
  if (!qword_1EB8586A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586A8);
  }

  return result;
}

unint64_t sub_1B38A6568()
{
  result = qword_1EB8586B0;
  if (!qword_1EB8586B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586B0);
  }

  return result;
}

unint64_t sub_1B38A65BC()
{
  result = qword_1EB8586B8;
  if (!qword_1EB8586B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586B8);
  }

  return result;
}

unint64_t sub_1B38A6614()
{
  result = qword_1EB8586C0;
  if (!qword_1EB8586C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586C0);
  }

  return result;
}

unint64_t sub_1B38A6668()
{
  result = qword_1EB8586C8;
  if (!qword_1EB8586C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586C8);
  }

  return result;
}

unint64_t sub_1B38A66C0()
{
  result = qword_1EB8586D0;
  if (!qword_1EB8586D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586D0);
  }

  return result;
}

unint64_t sub_1B38A6718()
{
  result = qword_1EB8586D8;
  if (!qword_1EB8586D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586D8);
  }

  return result;
}

unint64_t sub_1B38A6770()
{
  result = qword_1EB8586E0;
  if (!qword_1EB8586E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586E0);
  }

  return result;
}

unint64_t sub_1B38A67C8()
{
  result = qword_1EB8586E8;
  if (!qword_1EB8586E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586E8);
  }

  return result;
}

unint64_t sub_1B38A6824()
{
  result = qword_1EB8586F0;
  if (!qword_1EB8586F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586F0);
  }

  return result;
}

unint64_t sub_1B38A6878()
{
  result = qword_1EB8586F8;
  if (!qword_1EB8586F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8586F8);
  }

  return result;
}

uint64_t sub_1B38A68CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B3714CE0;

  return sub_1B38A55BC(a1, v5, v4);
}

unint64_t sub_1B38A6978()
{
  result = qword_1EB858718;
  if (!qword_1EB858718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858718);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosSetRotationAssistantIntent.RotationDirectionAssistantEnum(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_6_30()
{

  return sub_1B3C9C668();
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return sub_1B3C9D7C8();
}

unint64_t sub_1B38A6AFC()
{
  result = qword_1EB858720;
  if (!qword_1EB858720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858720);
  }

  return result;
}

unint64_t sub_1B38A6B54()
{
  result = qword_1EB858728;
  if (!qword_1EB858728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858728);
  }

  return result;
}

unint64_t sub_1B38A6BF8()
{
  result = qword_1EB858730;
  if (!qword_1EB858730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858730);
  }

  return result;
}

uint64_t sub_1B38A6C4C()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38A6CE4, v5, v4);
}

uint64_t sub_1B38A6CE4()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B38A6BF8();
  *v4 = v0;
  v4[1] = sub_1B38A3D64;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D0B708);
}

uint64_t sub_1B38A6DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1B3C9C598();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1B3C97F48();
  v3[9] = swift_task_alloc();
  v5 = sub_1B3C97AE8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v3[13] = swift_task_alloc();
  sub_1B3C9C888();
  v3[14] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v3[15] = v7;
  v3[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B38A6FA4, v7, v6);
}

uint64_t sub_1B38A6FA4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 104);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A4104;

  return sub_1B3713FCC();
}

uint64_t sub_1B38A707C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513E8);
  OUTLINED_FUNCTION_0();
  v41 = v1;
  v42 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v40 = v38 - v2;
  v3 = sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v39 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v28 = *MEMORY[0x1E695A500];
  v29 = *(v5 + 104);
  v29(v8, v28, v3);
  sub_1B374FC40();
  v30 = sub_1B3C97B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851400);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v39);
  v43 = 0;
  v44 = 1;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
  (*(v41 + 104))(v40, *MEMORY[0x1E695A178], v42);
  v29(v8, v28, v3);
  sub_1B3C97BA8();
  return v30;
}

uint64_t sub_1B38A7420(uint64_t a1)
{
  v2 = sub_1B38A7690();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38A746C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38A6C4C();
}

uint64_t sub_1B38A7518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A707C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38A7540(uint64_t a1)
{
  v2 = sub_1B38A6BF8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38A7580()
{
  result = qword_1EB858738;
  if (!qword_1EB858738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858738);
  }

  return result;
}

uint64_t sub_1B38A75E8()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B374F8B4;

  return sub_1B38A6DEC(v3, v5, v4);
}

unint64_t sub_1B38A7690()
{
  result = qword_1EB858740;
  if (!qword_1EB858740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858740);
  }

  return result;
}

unint64_t sub_1B38A76E8()
{
  result = qword_1EB858748;
  if (!qword_1EB858748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858748);
  }

  return result;
}

unint64_t sub_1B38A7740()
{
  result = qword_1EB858750;
  if (!qword_1EB858750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858750);
  }

  return result;
}

unint64_t sub_1B38A77E4()
{
  result = qword_1EB858758;
  if (!qword_1EB858758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858758);
  }

  return result;
}

uint64_t sub_1B38A7838()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38A78CC, v4, v3);
}

uint64_t sub_1B38A78CC()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B38A77E4();
  *v1 = v0;
  v1[1] = sub_1B38A79B4;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D0B8B0);
}

uint64_t sub_1B38A79B4()
{
  OUTLINED_FUNCTION_0_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v2[9] = v0;

  v4 = v2[6];
  v5 = v2[7];
  if (v0)
  {
    v6 = sub_1B37139F0;
  }

  else
  {
    v6 = sub_1B3713994;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B38A7ABC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v2[4] = swift_task_alloc();
  sub_1B3C9C888();
  v2[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38A7B8C, v4, v3);
}

uint64_t sub_1B38A7B8C()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 32);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A7C44;

  return sub_1B38502EC();
}

uint64_t sub_1B38A7C44()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  sub_1B3713154(v3);
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1B38A7E0C;
  }

  else
  {
    v6 = sub_1B38A7D9C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1B38A7D9C()
{
  OUTLINED_FUNCTION_0_0();

  sub_1B3C97B18();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B38A7E0C()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B38A7E70()
{
  v0 = sub_1B3C97CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  sub_1B374FC40();
  return sub_1B3C97B68();
}

uint64_t sub_1B38A80EC(uint64_t a1)
{
  v2 = sub_1B38A8340();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38A8138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38A7838();
}

uint64_t sub_1B38A81D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A7E70();
  *a1 = result;
  return result;
}

uint64_t sub_1B38A8200(uint64_t a1)
{
  v2 = sub_1B38A77E4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38A8240()
{
  result = qword_1EB858760;
  if (!qword_1EB858760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858760);
  }

  return result;
}

uint64_t sub_1B38A82A8()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B374F8B4;

  return sub_1B38A7ABC(v3, v0);
}

unint64_t sub_1B38A8340()
{
  result = qword_1EB858768;
  if (!qword_1EB858768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858768);
  }

  return result;
}

unint64_t sub_1B38A8398()
{
  result = qword_1EB858770;
  if (!qword_1EB858770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858770);
  }

  return result;
}

unint64_t sub_1B38A83F0()
{
  result = qword_1EB858778;
  if (!qword_1EB858778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858778);
  }

  return result;
}

unint64_t sub_1B38A8494()
{
  result = qword_1EB858780;
  if (!qword_1EB858780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858780);
  }

  return result;
}

uint64_t sub_1B38A84E8()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = sub_1B3C98618();
  v0[7] = v4;
  v0[8] = *(v4 - 8);
  v0[9] = swift_task_alloc();
  sub_1B3C9C888();
  v0[10] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v0[11] = v6;
  v0[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B38A85DC, v6, v5);
}

uint64_t sub_1B38A85DC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[2] = v5;
  v0[3] = v4;
  sub_1B3C97B28();
  v6 = sub_1B3C98608();
  v8 = v7;
  v0[13] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_task_alloc();
  v0[15] = v10;
  sub_1B38A8494();
  *v10 = v0;
  v10[1] = sub_1B38A873C;
  v11 = v0[4];

  return MEMORY[0x1EEE2CA70](v11, 0, 0, v6, v8, 0, 1, &unk_1B3D0BA60);
}

uint64_t sub_1B38A873C()
{
  OUTLINED_FUNCTION_0_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v2[16] = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1B38A8854;
  }

  else
  {

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1B37BAF04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B38A8854()
{

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B38A88D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1B3C98638();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1B3C98618();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1B3C9C888();
  v3[11] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v3[12] = v7;
  v3[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B38A8A2C, v7, v6);
}

uint64_t sub_1B38A8A2C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1B3C97B28();
  sub_1B3C985F8();
  v0[14] = v4;
  (*(v2 + 8))(v1, v3);
  sub_1B3C97B28();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1B38A8B2C;

  return sub_1B37BB4E8();
}

uint64_t sub_1B38A8B2C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_1B37BB478;
  }

  else
  {
    v8 = sub_1B38A8CE8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1B38A8CE8()
{

  sub_1B3C97B18();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B38A8D70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545E8);
  v1 = OUTLINED_FUNCTION_8_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  v51 = v46 - v2;
  v3 = sub_1B3C97CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x1EEE9AC00](v13);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v48 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  v29 = *MEMORY[0x1E695A500];
  v30 = *(v4 + 104);
  v46[1] = v4 + 104;
  v47 = v30;
  v30(v6, v29, v3);
  sub_1B38A935C(&qword_1EB852760, MEMORY[0x1E69C31E8]);
  v50 = sub_1B3C97B68();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545F0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v48);
  v34 = sub_1B3C98618();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v22);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v22);
  v47(v6, v29, v3);
  v44 = MEMORY[0x1E69C31D8];
  sub_1B38A935C(&qword_1EB8545F8, MEMORY[0x1E69C31D8]);
  sub_1B3C9D388();
  sub_1B38A935C(&qword_1EB854600, v44);
  sub_1B3C97B48();
  return v50;
}

uint64_t sub_1B38A9194(uint64_t a1)
{
  v2 = sub_1B38A9450();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38A91E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38A84E8();
}

uint64_t sub_1B38A928C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A8D70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38A92B4(uint64_t a1)
{
  v2 = sub_1B38A8494();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38A92F4()
{
  result = qword_1EB858788;
  if (!qword_1EB858788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858788);
  }

  return result;
}

uint64_t sub_1B38A935C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B38A93A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B374F8B4;

  return sub_1B38A88D8(a1, v5, v4);
}

unint64_t sub_1B38A9450()
{
  result = qword_1EB858790;
  if (!qword_1EB858790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858790);
  }

  return result;
}

unint64_t sub_1B38A94A8()
{
  result = qword_1EB858798;
  if (!qword_1EB858798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858798);
  }

  return result;
}

unint64_t sub_1B38A9500()
{
  result = qword_1EB8587A0;
  if (!qword_1EB8587A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587A0);
  }

  return result;
}

unint64_t sub_1B38A95A4()
{
  result = qword_1EB8587A8;
  if (!qword_1EB8587A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587A8);
  }

  return result;
}

uint64_t sub_1B38A95F8()
{
  OUTLINED_FUNCTION_0_0();
  v0[4] = v1;
  v0[5] = v2;
  sub_1B3C9C888();
  v0[6] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[7] = v4;
  v0[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38A968C, v4, v3);
}

uint64_t sub_1B38A968C()
{
  v0[2] = v0[5];
  sub_1B3C97B28();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1B38A95A4();
  *v2 = v0;
  v2[1] = sub_1B38A9798;
  v3 = v0[4];

  return MEMORY[0x1EEE2CA70](v3, 0, 0, 0, 0, v1, 0, &unk_1B3D0BC08);
}

uint64_t sub_1B38A9798()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v3[10] = v0;

  v6 = v3[7];
  v7 = v3[8];
  if (v0)
  {
    v8 = sub_1B3759FD0;
  }

  else
  {
    v8 = sub_1B3759F74;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B38A989C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1B3C9C888();
  v2[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38A9934, v4, v3);
}

uint64_t sub_1B38A9934()
{
  OUTLINED_FUNCTION_0_0();
  sub_1B3C97B28();
  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1B38A99D4;

  return sub_1B375A338();
}

uint64_t sub_1B38A99D4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v3[10] = v0;

  if (v0)
  {
    v6 = v3[6];
    v7 = v3[7];
    v8 = sub_1B375A2D0;
  }

  else
  {

    v6 = v3[6];
    v7 = v3[7];
    v8 = sub_1B375A268;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B38A9AE0()
{
  v0 = sub_1B3C97CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C97C18();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A28);
  v8 = sub_1B3C97F48();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v10[1] = 0;
  sub_1B3C97C08();
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  sub_1B370ED54(&qword_1EB852A30, &qword_1EB852A38);
  sub_1B374FC40();
  return sub_1B3C97BC8();
}

uint64_t sub_1B38A9CE4(uint64_t a1)
{
  v2 = sub_1B38A9F38();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38A9D30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B38A95F8();
}

uint64_t sub_1B38A9DD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A9AE0();
  *a1 = result;
  return result;
}

uint64_t sub_1B38A9DF8(uint64_t a1)
{
  v2 = sub_1B38A95A4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38A9E38()
{
  result = qword_1EB8587B0;
  if (!qword_1EB8587B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587B0);
  }

  return result;
}

uint64_t sub_1B38A9EA0()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B38A989C(v3, v0);
}

unint64_t sub_1B38A9F38()
{
  result = qword_1EB8587B8;
  if (!qword_1EB8587B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587B8);
  }

  return result;
}

unint64_t sub_1B38A9F90()
{
  result = qword_1EB8587C0;
  if (!qword_1EB8587C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587C0);
  }

  return result;
}

unint64_t sub_1B38A9FE8()
{
  result = qword_1EB8587C8;
  if (!qword_1EB8587C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587C8);
  }

  return result;
}

unint64_t sub_1B38AA08C()
{
  result = qword_1EB8587D0;
  if (!qword_1EB8587D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587D0);
  }

  return result;
}

uint64_t sub_1B38AA0E0()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38AA178, v5, v4);
}

uint64_t sub_1B38AA178()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B38AA08C();
  *v4 = v0;
  v4[1] = sub_1B38A3D64;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D0BDC8);
}

uint64_t sub_1B38AA280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1B3C9C598();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1B3C97F48();
  v3[8] = swift_task_alloc();
  v5 = sub_1B3C97AE8();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v3[12] = swift_task_alloc();
  sub_1B3C9C888();
  v3[13] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v3[14] = v7;
  v3[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B38AA438, v7, v6);
}

uint64_t sub_1B38AA438()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 96);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1B38AA510;

  return sub_1B37167A0();
}

uint64_t sub_1B38AA510()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 136) = v0;

  sub_1B3713154(v3);
  v4 = *(v2 + 120);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1B3713F40;
  }

  else
  {
    v6 = sub_1B38AA664;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1B38AA664()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  sub_1B3C9C538();
  sub_1B37BF998(v4);
  (*(v5 + 8))(v4, v6);
  sub_1B3C97AF8();
  sub_1B3C97B08();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_1B38AA78C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851468);
  v1 = OUTLINED_FUNCTION_8_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v43 - v2;
  v3 = sub_1B3C97CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x1EEE9AC00](v13);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v45 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  v29 = *MEMORY[0x1E695A500];
  v30 = *(v4 + 104);
  v43 = v4 + 104;
  v44 = v30;
  v30(v6, v29, v3);
  sub_1B374FC40();
  v31 = sub_1B3C97B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851470);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v45);
  v48 = 2;
  sub_1B3C9C828();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v22);
  v44(v6, v29, v3);
  sub_1B3C97B88();
  return v31;
}

uint64_t sub_1B38AAAF4(uint64_t a1)
{
  v2 = sub_1B38AAD64();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38AAB40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38AA0E0();
}

uint64_t sub_1B38AABEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38AA78C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38AAC14(uint64_t a1)
{
  v2 = sub_1B38AA08C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38AAC54()
{
  result = qword_1EB8587D8;
  if (!qword_1EB8587D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587D8);
  }

  return result;
}

uint64_t sub_1B38AACBC()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B374F8B4;

  return sub_1B38AA280(v3, v5, v4);
}

unint64_t sub_1B38AAD64()
{
  result = qword_1EB8587E0;
  if (!qword_1EB8587E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587E0);
  }

  return result;
}

unint64_t sub_1B38AADBC()
{
  result = qword_1EB8587E8;
  if (!qword_1EB8587E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587E8);
  }

  return result;
}

unint64_t sub_1B38AAE14()
{
  result = qword_1EB8587F0;
  if (!qword_1EB8587F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587F0);
  }

  return result;
}

unint64_t sub_1B38AAEB8()
{
  result = qword_1EB8587F8;
  if (!qword_1EB8587F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8587F8);
  }

  return result;
}

uint64_t sub_1B38AAF0C()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38AAFA4, v5, v4);
}

uint64_t sub_1B38AAFA4()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B38AAEB8();
  *v4 = v0;
  v4[1] = sub_1B38A3D64;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D0BF70);
}

uint64_t sub_1B38AB0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1B3C9C598();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1B3C97F48();
  v3[9] = swift_task_alloc();
  v5 = sub_1B3C97AE8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v3[13] = swift_task_alloc();
  sub_1B3C9C888();
  v3[14] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v3[15] = v7;
  v3[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B38AB264, v7, v6);
}

uint64_t sub_1B38AB264()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 104);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A4104;

  return sub_1B3882E00();
}

uint64_t sub_1B38AB33C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513E8);
  OUTLINED_FUNCTION_0();
  v41 = v1;
  v42 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v40 = v38 - v2;
  v3 = sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v39 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v28 = *MEMORY[0x1E695A500];
  v29 = *(v5 + 104);
  v29(v8, v28, v3);
  sub_1B374FC40();
  v30 = sub_1B3C97B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851400);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v39);
  v43 = 0;
  v44 = 1;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
  (*(v41 + 104))(v40, *MEMORY[0x1E695A178], v42);
  v29(v8, v28, v3);
  sub_1B3C97BA8();
  return v30;
}

uint64_t sub_1B38AB6E0(uint64_t a1)
{
  v2 = sub_1B38AB950();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38AB72C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38AAF0C();
}

uint64_t sub_1B38AB7D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38AB33C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38AB800(uint64_t a1)
{
  v2 = sub_1B38AAEB8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38AB840()
{
  result = qword_1EB858800;
  if (!qword_1EB858800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858800);
  }

  return result;
}

uint64_t sub_1B38AB8A8()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B374F8B4;

  return sub_1B38AB0AC(v3, v5, v4);
}

unint64_t sub_1B38AB950()
{
  result = qword_1EB858808;
  if (!qword_1EB858808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858808);
  }

  return result;
}

unint64_t sub_1B38AB9A8()
{
  result = qword_1EB858810;
  if (!qword_1EB858810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858810);
  }

  return result;
}

unint64_t sub_1B38ABA00()
{
  result = qword_1EB858818;
  if (!qword_1EB858818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858818);
  }

  return result;
}

unint64_t sub_1B38ABAA4()
{
  result = qword_1EB858820;
  if (!qword_1EB858820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858820);
  }

  return result;
}

uint64_t sub_1B38ABAF8()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38ABB8C, v4, v3);
}

uint64_t sub_1B38ABB8C()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B38ABAA4();
  *v1 = v0;
  v1[1] = sub_1B38A79B4;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D0C110);
}

uint64_t sub_1B38ABC74(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1B3C98638();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1B3C9C888();
  v2[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38ABD68, v5, v4);
}

uint64_t sub_1B38ABD68()
{
  OUTLINED_FUNCTION_0_0();
  sub_1B3C97B28();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B38ABE04;

  return sub_1B37FEA44();
}

uint64_t sub_1B38ABE04()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = sub_1B37FE9E0;
  }

  else
  {
    v8 = sub_1B37FE970;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1B38ABF9C()
{
  v0 = sub_1B3C97CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  sub_1B374FC40();
  return sub_1B3C97B68();
}

uint64_t sub_1B38AC218(uint64_t a1)
{
  v2 = sub_1B38AC46C();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38AC264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38ABAF8();
}

uint64_t sub_1B38AC304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38ABF9C();
  *a1 = result;
  return result;
}

uint64_t sub_1B38AC32C(uint64_t a1)
{
  v2 = sub_1B38ABAA4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38AC36C()
{
  result = qword_1EB858828;
  if (!qword_1EB858828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858828);
  }

  return result;
}

uint64_t sub_1B38AC3D4()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B374F8B4;

  return sub_1B38ABC74(v3, v0);
}

unint64_t sub_1B38AC46C()
{
  result = qword_1EB858830;
  if (!qword_1EB858830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858830);
  }

  return result;
}

unint64_t sub_1B38AC4C4()
{
  result = qword_1EB858838;
  if (!qword_1EB858838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858838);
  }

  return result;
}

unint64_t sub_1B38AC51C()
{
  result = qword_1EB858840;
  if (!qword_1EB858840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858840);
  }

  return result;
}

unint64_t sub_1B38AC5C0()
{
  result = qword_1EB858848;
  if (!qword_1EB858848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858848);
  }

  return result;
}

uint64_t sub_1B38AC614()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38AC6AC, v5, v4);
}

uint64_t sub_1B38AC6AC()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B38AC5C0();
  *v4 = v0;
  v4[1] = sub_1B38A3D64;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D0C2B8);
}

uint64_t sub_1B38AC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1B3C9C598();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1B3C97F48();
  v3[9] = swift_task_alloc();
  v5 = sub_1B3C97AE8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v3[13] = swift_task_alloc();
  sub_1B3C9C888();
  v3[14] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v3[15] = v7;
  v3[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B38AC96C, v7, v6);
}

uint64_t sub_1B38AC96C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 104);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A4104;

  return sub_1B37F0E80();
}

uint64_t sub_1B38ACA44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513E8);
  OUTLINED_FUNCTION_0();
  v41 = v1;
  v42 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v40 = v38 - v2;
  v3 = sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v39 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v28 = *MEMORY[0x1E695A500];
  v29 = *(v5 + 104);
  v29(v8, v28, v3);
  sub_1B374FC40();
  v30 = sub_1B3C97B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851400);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v39);
  v43 = 0;
  v44 = 1;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
  (*(v41 + 104))(v40, *MEMORY[0x1E695A178], v42);
  v29(v8, v28, v3);
  sub_1B3C97BA8();
  return v30;
}

uint64_t sub_1B38ACDE8(uint64_t a1)
{
  v2 = sub_1B38AD058();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38ACE34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38AC614();
}

uint64_t sub_1B38ACEE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38ACA44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38ACF08(uint64_t a1)
{
  v2 = sub_1B38AC5C0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38ACF48()
{
  result = qword_1EB858850;
  if (!qword_1EB858850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858850);
  }

  return result;
}

uint64_t sub_1B38ACFB0()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B374F8B4;

  return sub_1B38AC7B4(v3, v5, v4);
}

unint64_t sub_1B38AD058()
{
  result = qword_1EB858858;
  if (!qword_1EB858858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858858);
  }

  return result;
}

unint64_t sub_1B38AD0B0()
{
  result = qword_1EB858860;
  if (!qword_1EB858860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858860);
  }

  return result;
}

unint64_t sub_1B38AD108()
{
  result = qword_1EB858868;
  if (!qword_1EB858868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858868);
  }

  return result;
}

unint64_t sub_1B38AD1AC()
{
  result = qword_1EB858870;
  if (!qword_1EB858870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858870);
  }

  return result;
}

uint64_t sub_1B38AD200()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38AD294, v4, v3);
}

uint64_t sub_1B38AD294()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B38AD1AC();
  *v1 = v0;
  v1[1] = sub_1B38A79B4;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D0C468);
}

uint64_t sub_1B38AD37C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v2[4] = swift_task_alloc();
  sub_1B3C9C888();
  v2[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38AD44C, v4, v3);
}

uint64_t sub_1B38AD44C()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 32);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A7C44;

  return sub_1B37F6290();
}

uint64_t sub_1B38AD504()
{
  v0 = sub_1B3C97CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  sub_1B374FC40();
  return sub_1B3C97B68();
}

uint64_t sub_1B38AD780(uint64_t a1)
{
  v2 = sub_1B38AD9D4();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38AD7CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38AD200();
}

uint64_t sub_1B38AD86C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38AD504();
  *a1 = result;
  return result;
}

uint64_t sub_1B38AD894(uint64_t a1)
{
  v2 = sub_1B38AD1AC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38AD8D4()
{
  result = qword_1EB858878;
  if (!qword_1EB858878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858878);
  }

  return result;
}

uint64_t sub_1B38AD93C()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B374F8B4;

  return sub_1B38AD37C(v3, v0);
}

unint64_t sub_1B38AD9D4()
{
  result = qword_1EB858880;
  if (!qword_1EB858880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858880);
  }

  return result;
}

id sub_1B38ADA28(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_secondarySceneView;
  v7 = objc_allocWithZone(sub_1B3C9A078());
  v8 = OUTLINED_FUNCTION_3_44(v7, sel_initWithFrame_);
  if (qword_1EB850148 != -1)
  {
    OUTLINED_FUNCTION_0_48();
  }

  sub_1B3C9A068();
  *&v3[v6] = v8;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView__currentLayoutInfo] = 0;
  result = PLWallpaperGetLog();
  if (result)
  {
    sub_1B3C9A568();
    *&v3[OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_parallaxSpatialPhotoOcclusionLayer] = a1;
    v3[OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_isEditing] = a2 & 1;
    v12.receiver = v3;
    v12.super_class = type metadata accessor for PUParallaxSpatialPhotoOcclusionLayerView();
    v10 = a1;
    v11 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_1B38AE22C();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B38ADB88()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_secondarySceneView;
  v3 = objc_allocWithZone(sub_1B3C9A078());
  v4 = OUTLINED_FUNCTION_3_44(v3, sel_initWithFrame_);
  if (qword_1EB850148 != -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    sub_1B3C9A068();
    *(v1 + v2) = v4;
    *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView__currentLayoutInfo) = 0;
    if (PLWallpaperGetLog())
    {
      break;
    }

    __break(1u);
LABEL_4:
    OUTLINED_FUNCTION_0_48();
  }

  sub_1B3C9A568();
  OUTLINED_FUNCTION_1_45();
  __break(1u);
}

void sub_1B38ADC68()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_secondarySceneView;
  v3 = objc_allocWithZone(sub_1B3C9A078());
  v4 = OUTLINED_FUNCTION_3_44(v3, sel_initWithFrame_);
  if (qword_1EB850148 != -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    sub_1B3C9A068();
    *(v1 + v2) = v4;
    *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView__currentLayoutInfo) = 0;
    if (PLWallpaperGetLog())
    {
      break;
    }

    __break(1u);
LABEL_4:
    OUTLINED_FUNCTION_0_48();
  }

  sub_1B3C9A568();
  OUTLINED_FUNCTION_1_45();
  __break(1u);
}

void sub_1B38ADDA0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_parallaxSpatialPhotoOcclusionLayer);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_parallaxSpatialPhotoOcclusionLayer) = a1;
  v2 = a1;
  sub_1B38ADE00();
}

void sub_1B38ADE00()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_parallaxSpatialPhotoOcclusionLayer);
  sub_1B3710718(0, &qword_1EB8588C0);
  v2 = v1;
  v3 = sub_1B3C9CFA8();

  if ((v3 & 1) == 0)
  {

    sub_1B38AE22C();
  }
}

void sub_1B38ADEA8(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PUParallaxSpatialPhotoOcclusionLayerView();
  objc_msgSendSuper2(&v4, sel_layoutWithInfo_, a1);
  v3 = a1;
  sub_1B38AE1CC(a1);
}

id sub_1B38ADF64(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PUParallaxSpatialPhotoOcclusionLayerView();
  v3 = objc_msgSendSuper2(&v5, sel_snapshotViewAfterScreenUpdates_, a1 & 1);

  return v3;
}

void *sub_1B38AE040()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView__currentLayoutInfo);
  v2 = v1;
  return v1;
}

void *sub_1B38AE0E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_secondarySceneView);
  v2 = v1;
  return v1;
}

void sub_1B38AE114(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView__currentLayoutInfo);
  if (a1)
  {
    if (v2)
    {
      v3 = a1;
      sub_1B3710718(0, &qword_1EB8576F8);
      v4 = v2;
      v5 = v3;
      LOBYTE(v3) = sub_1B3C9CFA8();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  sub_1B38AE724();
}

void sub_1B38AE1CC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView__currentLayoutInfo);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView__currentLayoutInfo) = a1;
  v2 = a1;
  sub_1B38AE114(v3);
}

uint64_t sub_1B38AE22C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B38AEDD8;
  *(v3 + 24) = v2;
  v8[4] = sub_1B375324C;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B37D35C4;
  v8[3] = &block_descriptor_63;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1B38AE38C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_secondarySceneView];
  v3 = [v2 superview];
  if (!v3 || (v4 = v3, sub_1B3710718(0, &unk_1EB84F790), v5 = a1, v6 = sub_1B3C9CFA8(), v4, v5, (v6 & 1) == 0))
  {
    [a1 bounds];
    [v2 setFrame_];
    [a1 addSubview_];
    v7 = [a1 currentLayoutInfo];
    if (v7)
    {
      v8 = v7;
      sub_1B38AE498(v2, v7);
    }
  }

  sub_1B38AE724();
}

void sub_1B38AE498(void *a1, void *a2)
{
  [*&v2[OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_parallaxSpatialPhotoOcclusionLayer] frame];
  [a2 viewFrameForLayerFrame_];
  OUTLINED_FUNCTION_6();
  if (PXRectIsValid() && ([a2 additionalContentTransform], OUTLINED_FUNCTION_17_1(v9, v10, v11, v12, v13, v14, v15, v16, v40, v42, v44, v46, v48[0]), PXAffineTransformIsValid()))
  {
    [a2 additionalContentTransform];
    OUTLINED_FUNCTION_17_1(v17, v18, v19, v20, v21, v22, v23, v24, v41, v43, v45, v47, v48[0]);
    v49.origin.x = OUTLINED_FUNCTION_17();
    v50 = CGRectApplyAffineTransform(v49, v25);
    [a1 setFrame_];
    [a1 layoutIfNeeded];
    if ([a2 visibilityEffects])
    {
      v26 = [a1 layer];
      [a2 visibilityAmount];
      *&v27 = v27;
      [v26 setOpacity_];
    }

    [v2 updatePortalViewGeometryAndEffects];
  }

  else
  {
    v28 = v2;
    v29 = sub_1B3C9A538();
    v30 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = *&v33;
      *v31 = 138412546;
      *(v31 + 4) = v28;
      *v32 = v28;
      *(v31 + 12) = 2080;
      v34 = v28;
      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v3, v4, v5, v6];
      v36 = sub_1B3C9C5E8();
      v38 = v37;

      v39 = sub_1B3749364(v36, v38, v48);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1B36F3000, v29, v30, "%@ attempted to set invalid frame:%s", v31, 0x16u);
      sub_1B3732918(v32);
      OUTLINED_FUNCTION_3_5();
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }
  }
}

void sub_1B38AE724()
{
  v5 = [v0 currentLayoutInfo];
  if (v5)
  {
    v6 = v5;
    [v5 additionalContentTransform];
    OUTLINED_FUNCTION_16_16(v7, v8, v9, v10, v11, v12, v13, v14, v40, v42, v44, v46, v48, *&v50, *&v51);
    if (PXAffineTransformIsValid())
    {
      [v6 containerFrame];
      if (PXRectIsValid())
      {
        sub_1B38AE498(*&v0[OBJC_IVAR____TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView_secondarySceneView], v6);
        [v6 containerFrame];
        OUTLINED_FUNCTION_6();
        [v6 additionalTransform];
        [v0 setTransform_];
        PXRectWithSize();
        [v0 setBounds_];
        OUTLINED_FUNCTION_17();
        PXRectGetCenter();
        [v0 setCenter_];

        return;
      }
    }

    v15 = v6;
    v16 = v0;
    v17 = sub_1B3C9A538();
    v18 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v19 = 138412802;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2080;
      v21 = v16;
      [v15 additionalContentTransform];
      OUTLINED_FUNCTION_16_16(v22, v23, v24, v25, v26, v27, v28, v29, v41, v43, v45, v47, v49, *&v50, *&v51);
      v30 = NSStringFromAffineTransform();

      if (!v30)
      {
        __break(1u);
        return;
      }

      v31 = sub_1B3C9C5E8();
      v33 = v32;

      v34 = sub_1B3749364(v31, v33, &v50);

      *(v19 + 14) = v34;
      *(v19 + 22) = 2080;
      [v15 containerFrame];
      OUTLINED_FUNCTION_6();
      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v3, v4];
      v36 = sub_1B3C9C5E8();
      v38 = v37;

      v39 = sub_1B3749364(v36, v38, &v50);

      *(v19 + 24) = v39;
      _os_log_impl(&dword_1B36F3000, v17, v18, "%@ Attempted to set invalid geometry transform:%s containerFrame:%s", v19, 0x20u);
      sub_1B3732918(v20);
      OUTLINED_FUNCTION_3_5();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }
  }
}

void sub_1B38AEA48()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B3C9C5A8();
  v2 = [v0 BOOLForKey_];

  byte_1EB878FC8 = v2;
}

void sub_1B38AEAD8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B3C9C5A8();
  v2 = [v0 BOOLForKey_];

  byte_1EB878FC9 = v2 ^ 1;
}

void sub_1B38AEB6C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B3C9C5A8();
  v2 = [v0 BOOLForKey_];

  byte_1EB878FCA = v2;
}

id sub_1B38AEBFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PUParallaxSpatialPhotoOcclusionLayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PUParallaxSpatialPhotoOcclusionLayerView()
{
  result = qword_1EB8588B0;
  if (!qword_1EB8588B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B38AED24()
{
  result = sub_1B3C9A558();
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

id OUTLINED_FUNCTION_3_44(id a1, SEL a2)
{

  return [a1 a2];
}

unint64_t sub_1B38AEE18()
{
  result = qword_1EB8588C8;
  if (!qword_1EB8588C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8588C8);
  }

  return result;
}

unint64_t sub_1B38AEE70()
{
  result = qword_1EB8588D0;
  if (!qword_1EB8588D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8588D0);
  }

  return result;
}

unint64_t sub_1B38AEF14()
{
  result = qword_1EB8588D8;
  if (!qword_1EB8588D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8588D8);
  }

  return result;
}

uint64_t sub_1B38AEF68()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38AEFFC, v4, v3);
}

uint64_t sub_1B38AEFFC()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B38AEF14();
  *v1 = v0;
  v1[1] = sub_1B38A79B4;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D0C670);
}

uint64_t sub_1B38AF0E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v2[4] = swift_task_alloc();
  sub_1B3C9C888();
  v2[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38AF1B4, v4, v3);
}

uint64_t sub_1B38AF1B4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 32);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A7C44;

  return sub_1B371267C();
}

uint64_t sub_1B38AF26C()
{
  v0 = sub_1B3C97CC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  sub_1B374FC40();
  return sub_1B3C97B68();
}

uint64_t sub_1B38AF4E8(uint64_t a1)
{
  v2 = sub_1B38AF73C();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38AF534()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38AEF68();
}

uint64_t sub_1B38AF5D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38AF26C();
  *a1 = result;
  return result;
}

uint64_t sub_1B38AF5FC(uint64_t a1)
{
  v2 = sub_1B38AEF14();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38AF63C()
{
  result = qword_1EB8588E0;
  if (!qword_1EB8588E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8588E0);
  }

  return result;
}

uint64_t sub_1B38AF6A4()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B374F8B4;

  return sub_1B38AF0E4(v3, v0);
}

unint64_t sub_1B38AF73C()
{
  result = qword_1EB8588E8;
  if (!qword_1EB8588E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8588E8);
  }

  return result;
}

id sub_1B38AF790(double a1, double a2)
{
  [v2 _setPagingSpringPull_];

  return [v2 _setPagingFriction_];
}

void sub_1B38AF7E0(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1B38AF790(a2, a3);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EB8782F8 == -1)
  {
    if (qword_1EB878300)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EB878300)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EB8782F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EB8782E4 > a3)
      {
        return 1;
      }

      if (dword_1EB8782E4 >= a3)
      {
        return dword_1EB8782E8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EB878300;
  if (qword_1EB878300)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EB878300 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1B8C6DFA0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EB8782E4, &dword_1EB8782E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void sub_1B38B1BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38B30F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1B38B323C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_1B38B3574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38B3810(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 112));
  objc_destroyWeak((v1 - 104));
  _Unwind_Resume(a1);
}

void sub_1B38B3A88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B38B9318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38B95BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B38BE078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B38BF828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38C09B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1B38C35D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1B38C49D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38C4D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B38C7970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38C86C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSServiceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B74078;
    v8 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUWallpaperShortcutsPlaygroundSettings+UI.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PRSService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUWallpaperShortcutsPlaygroundSettings+UI.m" lineNumber:31 description:{@"Unable to find class %s", "PRSService"}];

LABEL_10:
    __break(1u);
  }

  getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

CTFontRef PUPosterSimulatedTimeFontForIdentifier(void *a1)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v7[0] = @"ADT Slab Time";
  v7[1] = @"New York Time";
  v8[0] = @".ADTSlabNumeric-Semibold";
  v8[1] = @".NewYorkNumeric-Semibold";
  v7[2] = @"SF Rail Time";
  v7[3] = @"SF Rounded Time";
  v8[2] = @".SFRailNumeric-Regular";
  v8[3] = @".SFRoundedNumeric-Semibold";
  v7[4] = @"SF Soft Time";
  v7[5] = @"SF Stencil Time";
  v8[4] = @".SFSoftNumeric-Semibold";
  v8[5] = @".SFStencilNumeric-Semibold";
  v7[6] = @"New York Heavy";
  v8[6] = @".NewYorkNumeric-Heavy";
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v8 forKeys:v7 count:7];
  v4 = [v3 objectForKeyedSubscript:v2];

  if (v4)
  {
    v5 = CTFontCreateWithNameAndOptions(v4, 100.0, 0, 0x20000uLL);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PUPosterLookLocalizedDisplayNameForLayerStyleKind(void *a1)
{
  v1 = PUPosterLookLocalizedDisplayNameForLayerStyleKind_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&PUPosterLookLocalizedDisplayNameForLayerStyleKind_onceToken, &__block_literal_global_1445);
  }

  v3 = [PUPosterLookLocalizedDisplayNameForLayerStyleKind_displayNamesByStyleKind objectForKeyedSubscript:v2];

  return v3;
}

void __PUPosterLookLocalizedDisplayNameForLayerStyleKind_block_invoke()
{
  v14[11] = *MEMORY[0x1E69E9840];
  v13[0] = *MEMORY[0x1E69C0B28];
  v12 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_ORIGINAL");
  v14[0] = v12;
  v13[1] = *MEMORY[0x1E69C0B30];
  v0 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_STUDIO");
  v14[1] = v0;
  v13[2] = *MEMORY[0x1E69C0AE0];
  v1 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_BLACK_AND_WHITE");
  v14[2] = v1;
  v13[3] = *MEMORY[0x1E69C0AD8];
  v2 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_BLACK_AND_WHITE");
  v14[3] = v2;
  v13[4] = *MEMORY[0x1E69C0AF0];
  v3 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_COLOR_BACKDROP");
  v14[4] = v3;
  v13[5] = *MEMORY[0x1E69C0B00];
  v4 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_COLOR_WASH");
  v14[5] = v4;
  v13[6] = *MEMORY[0x1E69C0AF8];
  v5 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_COLOR_WASH_DUOTONE");
  v14[6] = v5;
  v13[7] = *MEMORY[0x1E69C0B08];
  v6 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_GREEN_SCREEN");
  v14[7] = v6;
  v13[8] = *MEMORY[0x1E69C0B20];
  v7 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_GREEN_SCREEN_MONO");
  v14[8] = v7;
  v13[9] = *MEMORY[0x1E69C0B10];
  v8 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_GREEN_SCREEN_BLUR");
  v14[9] = v8;
  v13[10] = *MEMORY[0x1E69C0B18];
  v9 = PULocalizedString(@"PHOTOS_WALLPAPER_LOOK_GREEN_SCREEN_GRAPHIC");
  v14[10] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:11];
  v11 = PUPosterLookLocalizedDisplayNameForLayerStyleKind_displayNamesByStyleKind;
  PUPosterLookLocalizedDisplayNameForLayerStyleKind_displayNamesByStyleKind = v10;
}

id PULocalizedWallpaperShuffleConfigurationPeopleCount()
{
  v0 = PULocalizedString(@"PHOTOS_WALLPAPER_SHUFFLE_CONFIGURATION_PEOPLE_COUNT");
  v1 = PULocalizedStringWithValidatedFormat(v0, @"%lu");

  return v1;
}

id PUWallpaperCacheDirectoryURL()
{
  if (PUWallpaperCacheDirectoryURL_onceToken != -1)
  {
    dispatch_once(&PUWallpaperCacheDirectoryURL_onceToken, &__block_literal_global_84);
  }

  v1 = PUWallpaperCacheDirectoryURL_cacheURL;

  return v1;
}

void __PUWallpaperCacheDirectoryURL_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 temporaryDirectory];
  v2 = [v1 URLByAppendingPathComponent:@"WallpaperCache" isDirectory:1];
  v3 = PUWallpaperCacheDirectoryURL_cacheURL;
  PUWallpaperCacheDirectoryURL_cacheURL = v2;

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  v5 = [v4 createDirectoryAtURL:PUWallpaperCacheDirectoryURL_cacheURL withIntermediateDirectories:1 attributes:0 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed to created Wallpaper cache directory, error: %{public}@", buf, 0xCu);
    }
  }
}

CGAffineTransform *PUPosterAdditionalTransformForDeviceOrientation@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E695EFD0];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  if (result >= 2)
  {
    if (result == 3)
    {
      v4 = 1.57079633;
    }

    else if (result == 4)
    {
      v4 = -1.57079633;
    }

    else
    {
      v4 = 3.14159265;
      if (result != 2)
      {
        v4 = 0.0;
      }
    }

    return CGAffineTransformMakeRotation(a2, v4);
  }

  return result;
}

CGAffineTransform *PUPosterAdditionalTransformForDeviceOrientationAndContainerFrame@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v5;
  v6 = *(v3 + 32);
  *(a2 + 32) = v6;
  if (result >= 3)
  {
    v10 = v5;
    v11 = v4;
    v9 = v6;
    PXSizeTranspose();
    PXSizeSubtract();
    *&v12.a = v11;
    *&v12.c = v10;
    *&v12.tx = v9;
    return CGAffineTransformTranslate(a2, &v12, v7 * 0.5, v8 * 0.5);
  }

  return result;
}

double PUPosterGenericCenteredTitleBounds()
{
  v0 = [MEMORY[0x1E69C0938] deviceConfiguration];
  v1 = [v0 portraitConfiguration];
  [v1 timeRect];
  PXRectWithSizeAlignedToRectEdges();
  v3 = v2;

  return v3;
}

double PUPosterAdditionalViewTitleHeight(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 layoutVariant];
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  Height = CGRectGetHeight(v29);
  if (v10 == 4)
  {
    v26 = [v9 configuration];
    [v26 maxStrechAmountNormalized];
    v12 = Height * v27;
  }

  else if (v10 == 3)
  {
    [v9 maxClockShift];
    v12 = Height * v25;
  }

  else
  {
    v12 = 0.0;
    if (v10 == 2)
    {
      [v9 visibleFrame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [v9 adaptiveVisibleFrame];
      v21 = CGRectGetHeight(v30);
      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      v22 = v21 - CGRectGetHeight(v31);
      v32.origin.x = v14;
      v32.origin.y = v16;
      v32.size.width = v18;
      v32.size.height = v20;
      v23 = Height * (v22 / CGRectGetHeight(v32));
      [v9 maxClockShift];
      v12 = v23 + Height * v24;
    }
  }

  return v12;
}

uint64_t PUAdjustedSalientContentRectangleFromEnvironment(void *a1)
{
  [a1 px_salientContentRectangle];
  PXEdgeInsetsMake();

  return PXEdgeInsetsInsetRect();
}

__CFString *PUPosterStringFromDeviceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B740D0[a1 - 1];
  }
}

__CFString *PUPosterStringFromLayoutOrientation(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"portrait";
  }

  if (a1 == 2)
  {
    return @"landscape";
  }

  else
  {
    return v1;
  }
}

uint64_t PUColorMatrixMakeInactive(_OWORD *a1)
{
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  CAColorMatrixMakeSaturation();
  CAColorMatrixMakeMultiplyColor();
  return CAColorMatrixConcat();
}

void sub_1B38C9E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38CA12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38D1694(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 176));
  objc_destroyWeak((v1 - 168));
  _Unwind_Resume(a1);
}

void sub_1B38D32B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38D36B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B38D4B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38D6470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

__CFString *PUActivityItemSourceStateDebugDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B74478[a1];
  }
}

void sub_1B38DA40C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1B38DC6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Block_object_dispose((v35 - 112), 8);
  _Block_object_dispose((v35 - 80), 8);
  _Block_object_dispose((v35 - 48), 8);
  _Unwind_Resume(a1);
}

__CFString *PUActivityItemSourceControllerStateDebugDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7B74640[a1];
  }
}

void getCPLErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCPLErrorDomainSymbolLoc_ptr;
  v9 = getCPLErrorDomainSymbolLoc_ptr;
  if (!getCPLErrorDomainSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getCPLErrorDomainSymbolLoc_block_invoke;
    v5[3] = &unk_1E7B800F0;
    v5[4] = &v6;
    __getCPLErrorDomainSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = *v0;

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCPLErrorDomain(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUErrorPresentationController.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B38DF1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCPLErrorDomainSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CloudPhotoLibraryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CloudPhotoLibraryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B74680;
    v7 = 0;
    CloudPhotoLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CloudPhotoLibraryLibraryCore_frameworkLibrary;
  if (!CloudPhotoLibraryLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudPhotoLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"PUErrorPresentationController.m" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CPLErrorDomain");
  *(*(a1[4] + 8) + 24) = result;
  getCPLErrorDomainSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CloudPhotoLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudPhotoLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B38DFFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38E0B94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B38E1750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a29);
  _Unwind_Resume(a1);
}

void sub_1B38E32C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38E36D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSCSensitivityAnalysisClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SensitiveContentAnalysisLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SensitiveContentAnalysisLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B74A10;
    v8 = 0;
    SensitiveContentAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SensitiveContentAnalysisLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SensitiveContentAnalysisLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUActivityViewController.m" lineNumber:137 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SCSensitivityAnalysis");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSCSensitivityAnalysisClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUActivityViewController.m" lineNumber:139 description:{@"Unable to find class %s", "SCSensitivityAnalysis"}];

LABEL_10:
    __break(1u);
  }

  getSCSensitivityAnalysisClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B38E47E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __SensitiveContentAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SensitiveContentAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B38E4C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B38E5CA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B38E63B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38E6474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1B38E9A28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1B38E9EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B38F0910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B38F1FD0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B38F286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3900854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3904628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PUSharedLibraryStateForAsset(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69C3A08];
  v3 = [v1 photoLibrary];
  v4 = [v2 sharedLibraryStatusProviderWithPhotoLibrary:v3];

  if (![v4 hasSharedLibrary])
  {
    goto LABEL_6;
  }

  if ([v1 participatesInLibraryScope] && (objc_msgSend(v1, "canPerformEditOperation:", 103) & 1) != 0)
  {
    v5 = 1;
    goto LABEL_10;
  }

  if ([v1 participatesInLibraryScope])
  {
LABEL_6:
    v5 = 0;
    goto LABEL_10;
  }

  if ([v1 canPerformEditOperation:102])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
}

void sub_1B3908D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1B3908EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_1B390C074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B390CA60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B390ECC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B390F404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3910564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7019(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3911678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39124D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B39129DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3912B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3917720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

PUPickerAssetPreparationOptions *PUPickerAssetPreparationOptionsFromAdditionalSelectionState(void *a1)
{
  v1 = a1;
  v2 = [v1 shouldIncludeLocation];
  v3 = [v1 shouldIncludeCaption];
  v4 = [v1 userEncodingPolicy];

  v5 = [[PUPickerAssetPreparationOptions alloc] initWithIncludeLocation:v2 includeCaption:v3 userEncodingPolicy:v4];

  return v5;
}

void PUPhotoEditHandleURLAction(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PUPhotoEditAutomationLog();
  v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];

  v7 = [v6 scheme];
  v8 = [v7 isEqualToString:@"photos"];

  if (v8)
  {
    v9 = [v6 host];
    if ([v9 isEqualToString:@"edit"])
    {
      v10 = PXProgrammaticNavigationQueryValuesForComponents();
      v11 = PXProgrammaticNavigationPathComponentsForURLComponents();
      v12 = [v11 firstObject];
      if (PUPhotoEditActionHandlerFromName_onceToken != -1)
      {
        dispatch_once(&PUPhotoEditActionHandlerFromName_onceToken, &__block_literal_global_199);
      }

      v13 = [PUPhotoEditActionHandlerFromName_mapping objectForKeyedSubscript:v12];
      v14 = [v13 pointerValue];

      if (v14)
      {
        v15 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
        v16 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
        v17 = v16;
        if (v14 == PUPhotoEditApply && !v15 && v16)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __PUPhotoEditHandleURLAction_block_invoke;
          v18[3] = &unk_1E7B7F350;
          v21 = PUPhotoEditApply;
          v19 = v3;
          v20 = v10;
          PUPhotoEditEnterMode(v17, v18);
        }

        else
        {
          v14(v3, v10);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PUPhotoEditHandleURLAction: Unknown photos://edit/ action: '%@'", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PUPhotoEditHandleURLAction: attempt to handle non-'photos://edit/' automation URL", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PUPhotoEditHandleURLAction: attempt to handle non-'photos://' automation URL", buf, 2u);
  }
}

id PUPhotoEditAutomationLog()
{
  if (PUPhotoEditAutomationLog_onceToken != -1)
  {
    dispatch_once(&PUPhotoEditAutomationLog_onceToken, &__block_literal_global_7860);
  }

  v1 = PUPhotoEditAutomationLog_log;

  return v1;
}

void PUPhotoEditEnterMode(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 ppt_overOneUpPresentationSession];
  [v5 ppt_presentPhotoEditor];
  v6 = [v4 navigationController];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PUPhotoEditEnterMode_block_invoke;
  v9[3] = &unk_1E7B80B48;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  v8 = v6;
  [v8 ppt_performBlockAfterNextNavigationAnimation:v9];
}

void __PUPhotoEditEnterMode_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) px_descendantViewControllerWithClass:objc_opt_class()];
  v5 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PUPhotoEditEnterMode(PUOneUpViewController *__strong, __strong dispatch_block_t)_block_invoke"}];
    [v3 handleFailureInFunction:v4 file:@"PUPhotoEditAutomation.m" lineNumber:102 description:@"Expected a PUPhotoEditViewController to be available now. ppt_presentPhotoEditor could be presenting edit asynchronously now."];

    v2 = 0;
  }

  [v2 ppt_setEditIsReadyNotificationBlock:*(a1 + 40)];
}

void PUPhotoEditApply(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 px_descendantViewControllerWithClass:objc_opt_class()];

  v6 = [v3 objectForKeyedSubscript:@"adjustment"];
  v7 = [v3 objectForKeyedSubscript:@"value"];
  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"value"];
    v9 = [v8 isEqualToString:&stru_1F2AC6818];

    if ((v9 & 1) == 0)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v17 setNumberStyle:1];
      v18 = [v3 objectForKeyedSubscript:@"value"];
      v7 = [v17 numberFromString:v18];

      if (v6)
      {
        goto LABEL_5;
      }

LABEL_10:
      PUPhotoEditNotifyCompletionKeyForActionParameters(v3);
      goto LABEL_24;
    }

    v7 = 0;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ([v6 isEqualToString:@"portraitEffect"])
  {
    v10 = [v3 objectForKeyedSubscript:@"effect"];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@" "];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __PUPhotoEditApply_block_invoke;
    v43[3] = &unk_1E7B80DD0;
    v44 = v3;
    v12 = v5;
    v13 = v11;
    v14 = v43;
    if (v12)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __PUPhotoEditApplyPortraitEffect_block_invoke;
      v48 = &unk_1E7B80CB0;
      v15 = v12;
      v49 = v15;
      v50 = v13;
      v51 = v14;
      [v15 ppt_navigateToPortraitLightingEffects:&v45];
    }

    v16 = v44;
LABEL_15:

    goto LABEL_24;
  }

  if ([v6 isEqualToString:@"style"])
  {
    v19 = [v3 objectForKeyedSubscript:@"style"];
    v20 = [v19 stringByReplacingOccurrencesOfString:@"_" withString:@" "];

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __PUPhotoEditApply_block_invoke_2;
    v41[3] = &unk_1E7B80DD0;
    v42 = v3;
    v21 = v5;
    v13 = v20;
    v22 = v41;
    if (v21)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __PUPhotoEditApplyStyle_block_invoke;
      v48 = &unk_1E7B80CB0;
      v23 = v21;
      v49 = v23;
      v50 = v13;
      v51 = v22;
      [v23 ppt_selectStyleController:&v45];
    }

    v16 = v42;
    goto LABEL_15;
  }

  if ([v6 isEqualToString:@"replayBrushstroke"])
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __PUPhotoEditApply_block_invoke_3;
    v39[3] = &unk_1E7B80DD0;
    v40 = v3;
    v24 = v5;
    v25 = v39;
    if (v24)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __PUPhotoEditReplayBrushstroke_block_invoke;
      v48 = &unk_1E7B80B48;
      v26 = v24;
      v49 = v26;
      v50 = v25;
      [v26 ppt_selectCleanupController:&v45];
    }

    v27 = v40;
  }

  else
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __PUPhotoEditApply_block_invoke_4;
    v37 = &unk_1E7B80DD0;
    v38 = v3;
    v28 = v5;
    v29 = v6;
    v30 = v7;
    v31 = &v34;
    if (v28)
    {
      v32 = PUPhotoEditAutomationLog();
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __PUPhotoEditApplyAdjustment_block_invoke;
      v48 = &unk_1E7B7DCB0;
      v49 = v29;
      v33 = v28;
      v50 = v33;
      v53 = v31;
      v51 = v30;
      v52 = v32;
      [v33 ppt_selectAdjustmentsController:{&v45, v34, v35, v36, v37}];
    }

    v27 = v38;
  }

LABEL_24:
}

uint64_t __PUPhotoEditApplyAdjustment_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEqual:@"auto"])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 64);

    return [v2 ppt_applyAutoenhance:v3];
  }

  else if ([&unk_1F2B7CCC8 containsObject:*(a1 + 32)])
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);

    return [v5 ppt_scrollSliderNamed:v6 value:v7 completion:v8];
  }

  else
  {
    v9 = *(a1 + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "PUPhotoEditApplyAdjustment: Unknown Adjustment Type: %@", &v11, 0xCu);
    }

    result = *(a1 + 64);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void PUPhotoEditNotifyCompletionKeyForActionParameters(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"completionKey"];
  if (v1)
  {
    v3 = v1;
    v2 = v1;
    notify_post([v3 UTF8String]);
    v1 = v3;
  }
}

void __PUPhotoEditActionHandlerFromName_block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"enter";
  v0 = [MEMORY[0x1E696B098] valueWithPointer:PUPhotoEditEnter];
  v6[0] = v0;
  v5[1] = @"apply";
  v1 = [MEMORY[0x1E696B098] valueWithPointer:PUPhotoEditApply];
  v6[1] = v1;
  v5[2] = @"exit";
  v2 = [MEMORY[0x1E696B098] valueWithPointer:PUPhotoEditExit];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = PUPhotoEditActionHandlerFromName_mapping;
  PUPhotoEditActionHandlerFromName_mapping = v3;
}

void PUPhotoEditExit(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PUPhotoEditAutomationLog();
  v6 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"action"];
    if ([v7 isEqualToString:@"cancel"])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __PUPhotoEditExit_block_invoke;
      v13[3] = &unk_1E7B80DD0;
      v14 = v4;
      [v6 ppt_cancelEditsWithCompletion:v13];
      v8 = v14;
    }

    else if ([v7 isEqualToString:@"save"])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __PUPhotoEditExit_block_invoke_2;
      v11[3] = &unk_1E7B80DD0;
      v12 = v4;
      [v6 ppt_saveWithCompletion:v11];
      v8 = v12;
    }

    else
    {
      if (![v7 isEqualToString:@"revert"])
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PUPhotoEditExit: Unknown Action: %@", buf, 0xCu);
        }

        PUPhotoEditNotifyCompletionKeyForActionParameters(v4);
        goto LABEL_11;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __PUPhotoEditExit_block_invoke_3;
      v9[3] = &unk_1E7B80DD0;
      v10 = v4;
      [v6 ppt_revertWithCompletion:v9];
      v8 = v10;
    }

LABEL_11:
    goto LABEL_12;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "PUPhotoEditExit: Unable to find edit view controller from root view controller: %@", buf, 0xCu);
  }

LABEL_12:
}

void PUPhotoEditEnter(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"assetUUID"];
  if (v3)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __PUPhotoEditEnter_block_invoke;
    v30[3] = &unk_1E7B80DD0;
    v31 = v2;
    v4 = v3;
    v5 = v30;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v33 = __PUPhotoEditEnterForAssetUUID_block_invoke;
    v34 = &unk_1E7B75160;
    v35 = v5;
    v6 = v4;
    v7 = v32;
    v8 = PUPhotoEditAutomationLog();
    v9 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v10 = [v9 librarySpecificFetchOptions];

    [v10 setFetchLimit:1];
    [v10 setWantsIncrementalChangeDetails:0];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"localIdentifier = %@", v6];
    [v10 setPredicate:v11];

    v12 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v10];
    v13 = [v12 firstObject];
    v14 = v13;
    if (v13)
    {
      v27 = v13;
      v28 = v12;
      v29 = v7;
      v26 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
      v15 = [MEMORY[0x1E69BE538] albumListInPhotoLibrary:?];
      v16 = [v15 albums];
      v17 = [v16 array];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
LABEL_5:
        v22 = v8;
        v23 = 0;
        while (1)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v37 + 1) + 8 * v23);
          if ([v24 kindValue] == 1613)
          {
            break;
          }

          if (v20 == ++v23)
          {
            v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
            v8 = v22;
            if (v20)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v25 = v24;

        v8 = v22;
        if (!v25)
        {
          goto LABEL_17;
        }

        v7 = v29;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "Can't navigate to 1-up", buf, 2u);
        }

        v33(v29, 0);
      }

      else
      {
LABEL_11:

LABEL_17:
        v7 = v29;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Could not find the All Photos Album", buf, 2u);
        }

        v33(v29, 0);
      }

      v14 = v27;
      v12 = v28;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 138412290;
        v42 = v6;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Could not find asset with UUID: %@", v41, 0xCu);
      }

      v33(v7, 0);
    }
  }

  else
  {
    PUPhotoEditNotifyCompletionKeyForActionParameters(v2);
  }
}

void __PUPhotoEditEnterForAssetUUID_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    PUPhotoEditEnterMode(a2, *(a1 + 32));
  }
}

uint64_t __PUPhotoEditAutomationLog_block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PhotoEditAutomation");
  v1 = PUPhotoEditAutomationLog_log;
  PUPhotoEditAutomationLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1B39237B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3923A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PUAssetActionTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 0x42)
  {
    return @"None";
  }

  else
  {
    return off_1E7B75288[a1 - 1];
  }
}

void sub_1B3926198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3926530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3927B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3927E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PUAffineTransformByLinearlyInterpolatingBetweenTransforms()
{
  NUDecomposeAffineTransform();
  NUDecomposeAffineTransform();
  PXFloatByLinearlyInterpolatingFloats();
  PXFloatByLinearlyInterpolatingFloats();
  PXFloatByLinearlyInterpolatingFloats();
  PXFloatByLinearlyInterpolatingFloats();
  return NURecomposeAffineTransform();
}

void sub_1B392FC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3931148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3931584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

__CFString *PUOneUpImageAnalysisInteractionHostModeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7B75800[a1];
  }
}

void sub_1B393A460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B393A684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11736(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B393A868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PUQuadForRect(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  MinX = CGRectGetMinX(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MaxX = CGRectGetMaxX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  MinY = CGRectGetMinY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  MaxY = CGRectGetMaxY(v16);
  *a1 = MinX;
  a1[1] = MinY;
  a1[2] = MinX;
  a1[3] = MaxY;
  a1[4] = MaxX;
  a1[5] = MaxY;
  a1[6] = MaxX;
  a1[7] = MinY;
}

float64x2_t PUQuadApplyPerspectiveTransform@<Q0>(double *a1@<X0>, float64x2_t *a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = vaddq_f32(a5, vmlaq_n_f32(vmulq_n_f32(a3, v5), a4, v6));
  v8 = a1[2];
  v9 = a1[3];
  v10 = vaddq_f32(a5, vmlaq_n_f32(vmulq_n_f32(a3, v8), a4, v9));
  v11 = a1[4];
  v12 = a1[5];
  v13 = vaddq_f32(a5, vmlaq_n_f32(vmulq_n_f32(a3, v11), a4, v12));
  v14 = a1[6];
  v15 = a1[7];
  v16 = vaddq_f32(a5, vmlaq_n_f32(vmulq_n_f32(a3, v14), a4, v15));
  *a2 = vcvtq_f64_f32(vdiv_f32(*v7.i8, *&vdupq_laneq_s32(v7, 2)));
  a2[1] = vcvtq_f64_f32(vdiv_f32(*v10.i8, *&vdupq_laneq_s32(v10, 2)));
  result = vcvtq_f64_f32(vdiv_f32(*v16.i8, *&vdupq_laneq_s32(v16, 2)));
  a2[2] = vcvtq_f64_f32(vdiv_f32(*v13.i8, *&vdupq_laneq_s32(v13, 2)));
  a2[3] = result;
  return result;
}

float64x2_t PUQuadGetCentroid(double *a1, double a2, double a3, double a4, double a5, float64x2_t a6, float64x2_t a7)
{
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v13 = a1[6];
  v12 = a1[7];
  v14 = *a1 + (v9 - *a1) * 0.5;
  v15 = v7 + (v8 - v7) * 0.5;
  v16 = v11 + (v13 - v11) * 0.5;
  v17 = v10 + (v12 - v10) * 0.5;
  v18.f64[0] = v15 - v17;
  v19 = v16 - v14;
  if (v15 - v17 == 0.0 && v19 == 0.0 || (v20 = v9 + (v11 - v9) * 0.5, v21 = v8 + (v10 - v8) * 0.5, v22 = *a1 + (v13 - *a1) * 0.5, v23 = v7 + (v12 - v7) * 0.5, v24.f64[0] = v21 - v23, v25 = v22 - v20, v21 - v23 == 0.0) && v25 == 0.0)
  {
    __assert_rtn("PULineMake", "PULine.h", 30, "a != 0.0 || b != 0.0");
  }

  a6.f64[0] = v14 * (v17 - v15) + (v14 - v16) * v15;
  a7.f64[0] = v20 * (v23 - v21) + (v20 - v22) * v21;
  v26.f64[0] = a6.f64[0];
  v26.f64[1] = v18.f64[0];
  result = *MEMORY[0x1E695F050];
  v28.f64[0] = a7.f64[0];
  v28.f64[1] = v21 - v23;
  *&v26.f64[0] = vmovn_s64(vceqq_f64(vdivq_f64(vnegq_f64(v26), vdupq_lane_s64(*&v19, 0)), vdivq_f64(vnegq_f64(v28), vdupq_lane_s64(*&v25, 0))));
  if ((HIDWORD(v26.f64[0]) & LODWORD(v26.f64[0]) & 1) == 0)
  {
    v18.f64[1] = v19;
    v24.f64[1] = v25;
    v29.f64[0] = a6.f64[0];
    v29.f64[1] = v18.f64[0];
    v30.f64[0] = a7.f64[0];
    v30.f64[1] = v21 - v23;
    v31 = vmlaq_f64(vmulq_f64(v30, vnegq_f64(v18)), v24, v29);
    if (*&v31.i64[1] != 0.0)
    {
      *&v32.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(a6), v24, 1), a7, v18, 1);
      *&v32.f64[1] = v31.i64[0];
      return vdivq_f64(v32, vdupq_lane_s64(vextq_s8(v31, v31, 8uLL).i64[0], 0));
    }
  }

  return result;
}

double PUQuadGetMinX(double *a1)
{
  result = *a1;
  if (*a1 >= a1[2])
  {
    result = a1[2];
  }

  if (result >= a1[4])
  {
    result = a1[4];
  }

  if (result >= a1[6])
  {
    return a1[6];
  }

  return result;
}

double PUQuadGetMaxX(double *a1)
{
  result = *a1;
  if (*a1 < a1[2])
  {
    result = a1[2];
  }

  if (result < a1[4])
  {
    result = a1[4];
  }

  if (result < a1[6])
  {
    return a1[6];
  }

  return result;
}

double PUQuadGetMinY(double *a1)
{
  result = a1[1];
  if (result >= a1[3])
  {
    result = a1[3];
  }

  if (result >= a1[5])
  {
    result = a1[5];
  }

  if (result >= a1[7])
  {
    return a1[7];
  }

  return result;
}

double PUQuadGetMaxY(double *a1)
{
  result = a1[1];
  if (result < a1[3])
  {
    result = a1[3];
  }

  if (result < a1[5])
  {
    result = a1[5];
  }

  if (result < a1[7])
  {
    return a1[7];
  }

  return result;
}

void PUQuadScaleFactorToFillRect(__int128 *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, float64_t a6, double a7)
{
  MinX = CGRectGetMinX(*&a2);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  MinY = CGRectGetMinY(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  MaxY = CGRectGetMaxY(v36);
  v17 = a1[1];
  v30 = *a1;
  v31 = v17;
  v19 = a1[3];
  v32 = a1[2];
  v18.f64[1] = *(&v32 + 1);
  v33 = v19;
  v18.f64[0] = a6;
  _scaleFactorForPoints(&v30, v18, a7, MinX, MinY);
  v20 = a1[1];
  v30 = *a1;
  v31 = v20;
  v22 = a1[3];
  v32 = a1[2];
  v21.f64[1] = *(&v32 + 1);
  v33 = v22;
  v21.f64[0] = a6;
  _scaleFactorForPoints(&v30, v21, a7, MinX, MaxY);
  v23 = a1[1];
  v30 = *a1;
  v31 = v23;
  v25 = a1[3];
  v32 = a1[2];
  v24.f64[1] = *(&v32 + 1);
  v33 = v25;
  v24.f64[0] = a6;
  _scaleFactorForPoints(&v30, v24, a7, MaxX, MaxY);
  v26 = a1[1];
  v30 = *a1;
  v31 = v26;
  v28 = a1[3];
  v32 = a1[2];
  v27.f64[1] = *(&v32 + 1);
  v33 = v28;
  v27.f64[0] = a6;
  _scaleFactorForPoints(&v30, v27, a7, MaxX, MinY);
}

void _scaleFactorForPoints(__int128 *a1, float64x2_t a2, double a3, double a4, double a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v44 = *a1;
  v45 = v8;
  v43[0] = v44;
  v43[1] = v6;
  v43[2] = v6;
  v43[3] = v7;
  v43[4] = v7;
  v43[5] = v8;
  v38 = a2.f64[0];
  v9 = a5 - a3;
  a2.f64[0] = a2.f64[0] - a4;
  if (v9 == 0.0 && a2.f64[0] == 0.0)
  {
LABEL_18:
    __assert_rtn("PULineMake", "PULine.h", 30, "a != 0.0 || b != 0.0");
  }

  v10 = 0;
  v11 = a2;
  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  __y = a3 - a5;
  a2.f64[0] = a4 * (a3 - a5) + (a4 - v38) * a5;
  v40 = *MEMORY[0x1E695F050];
  v32 = vnegq_f64(a2);
  __x = v11;
  v14.f64[0] = a2.f64[0];
  v14.f64[1] = v9;
  v15 = vdivq_f64(vnegq_f64(v14), vdupq_lane_s64(*&v11.f64[0], 0));
  v14.f64[0] = v9;
  v14.f64[1] = v11.f64[0];
  v16 = vnegq_f64(v14);
  v17 = vextq_s8(v16, v16, 8uLL);
  v16.i64[1] = *&v17.f64[0];
  v34 = v16;
  a2.f64[1] = v9;
  v35 = a2;
  v36 = v15;
  while (1)
  {
    v18 = *&v43[v10];
    v19 = *(&v43[v10] + 1);
    v21 = *&v43[v10 + 1];
    v20 = *(&v43[v10 + 1] + 1);
    v22.f64[0] = v19 - v20;
    v23 = v21 - v18;
    if (v19 - v20 == 0.0 && v23 == 0.0)
    {
      goto LABEL_18;
    }

    v24.f64[0] = v18 * (v20 - v19) + (v18 - v21) * v19;
    v24.f64[1] = v19 - v20;
    *&v24.f64[0] = vmovn_s64(vceqq_f64(v36, vdivq_f64(vnegq_f64(v24), vdupq_lane_s64(*&v23, 0))));
    v25 = v40;
    if ((HIDWORD(v24.f64[0]) & LODWORD(v24.f64[0]) & 1) == 0)
    {
      v22.f64[1] = v21 - v18;
      v26.f64[0] = v18 * (v20 - v19) + (v18 - v21) * v19;
      v26.f64[1] = v19 - v20;
      v27 = vmlaq_f64(vmulq_f64(v26, v34), v22, v35);
      v25 = v40;
      if (*&v27.i64[1] != 0.0)
      {
        v17.f64[0] = v18 * (v20 - v19) + (v18 - v21) * v19;
        *&v28.f64[0] = *&vmlaq_f64(vmulq_laneq_f64(v32, v22, 1), v17, __x);
        *&v28.f64[1] = v27.i64[0];
        v25 = vdivq_f64(v28, vdupq_lane_s64(vextq_s8(v27, v27, 8uLL).i64[0], 0));
      }
    }

    v29 = v25.f64[1];
    v41 = v25.f64[0];
    if (PUPointIsOnLineSegmentBetweenPoints(v25.f64[0], v25.f64[1], a4, a5, v38, a3) && PUPointIsOnLineSegmentBetweenPoints(v41, v29, v18, v19, v21, v20))
    {
      v30 = v41;
    }

    else
    {
      v29 = v13;
      v30 = v12;
    }

    if (v30 != v12 || v29 != v13)
    {
      break;
    }

    v10 += 2;
    if (v10 == 8)
    {
      return;
    }
  }

  v42 = v30;
  hypot(__x.f64[0], __y);
  hypot(v38 - v42, a3 - v29);
}

void PUQuadApplyScaleFactor(_OWORD *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>)
{
  memset(v19, 0, sizeof(v19));
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v16.a = *MEMORY[0x1E695EFD0];
  v14 = *&v16.a;
  *&v16.c = v13;
  *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
  v12 = *&v16.tx;
  CGAffineTransformTranslate(&v18, &v16, -a4, -a5);
  v10 = a1[1];
  *&v16.a = *a1;
  *&v16.c = v10;
  v11 = a1[3];
  *&v16.tx = a1[2];
  v17 = v11;
  _applyAffineTransform(v19, &v16.a, &v18.a);
  memset(v15, 0, sizeof(v15));
  *&v18.a = v14;
  *&v18.c = v13;
  *&v18.tx = v12;
  CGAffineTransformScale(&v16, &v18, a3, a3);
  _applyAffineTransform(v15, v19, &v16.a);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&v18.a = v14;
  *&v18.c = v13;
  *&v18.tx = v12;
  CGAffineTransformTranslate(&v16, &v18, a4, a5);
  _applyAffineTransform(a2, v15, &v16.a);
}

double _applyAffineTransform(double *a1, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = v7 + v3 * v5 + *a3 * *a2;
  result = v8 + v3 * v6 + v4 * *a2;
  v11 = a2[2];
  v12 = a2[3];
  v13 = v7 + v5 * v12 + *a3 * v11;
  v14 = v8 + v6 * v12 + v4 * v11;
  v15 = a2[4];
  v16 = a2[5];
  v17 = v7 + v5 * v16 + *a3 * v15;
  v18 = v8 + v6 * v16 + v4 * v15;
  v19 = a2[6];
  v20 = a2[7];
  v21 = v7 + v5 * v20 + *a3 * v19;
  *a1 = v9;
  a1[1] = result;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v17;
  a1[5] = v18;
  a1[6] = v21;
  a1[7] = v8 + v6 * v20 + v4 * v19;
  return result;
}

BOOL PUQuadContainsPoint(double *a1, CGFloat a2, CGFloat a3)
{
  v3 = a2 + -1.0;
  v4 = a2 + -1.0 - a2;
  if (a3 - a3 == 0.0 && v4 == 0.0)
  {
    __assert_rtn("PULineMake", "PULine.h", 30, "a != 0.0 || b != 0.0");
  }

  v23 = v4;
  v29 = a3 - a3;
  v31 = 0.0;
  v5 = a1[1];
  v28 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v24 = a1[7];
  v25 = v3;
  v12 = PUPointIsOnLineSegmentBetweenPoints(a2, a3, *a1, v5, v6, v7);
  v13 = PUPointIsOnLineSegmentBetweenPoints(a2, a3, v6, v7, v8, v9);
  v14 = PUPointIsOnLineSegmentBetweenPoints(a2, a3, v8, v9, v10, v24);
  v15 = PUPointIsOnLineSegmentBetweenPoints(a2, a3, v28, v5, v10, v24);
  result = 1;
  if (!v12 && !v13 && !v14 && !v15)
  {
    *v19.i64 = v29;
    *v16.i64 = a2 * v29 + (a2 - v25) * a3;
    v26 = v16;
    *&v19.i64[1] = v23;
    v30 = v19;
    v17.f64[0] = v7;
    _incrementIntersectionCount(&v31, v19, v16, v28, v5, v6, v17, a2);
    v20.f64[0] = v9;
    _incrementIntersectionCount(&v31, v30, v26, v6, v7, v8, v20, a2);
    v21.f64[0] = v24;
    _incrementIntersectionCount(&v31, v30, v26, v8, v9, v10, v21, a2);
    v22.f64[0] = v5;
    _incrementIntersectionCount(&v31, v30, v26, v10, v24, v28, v22, a2);
    return ((v31 - 1) & 0xFFFFFFFD) == 0;
  }

  return result;
}

BOOL _incrementIntersectionCount(float *a1, int64x2_t a2, int64x2_t a3, double a4, double a5, double a6, float64x2_t a7, double a8)
{
  v10 = a7.f64[0];
  v14.f64[0] = a5 - a7.f64[0];
  v15 = a6 - a4;
  if (a5 - a7.f64[0] == 0.0 && v15 == 0.0)
  {
    __assert_rtn("PULineMake", "PULine.h", 30, "a != 0.0 || b != 0.0");
  }

  a7.f64[0] = a4 * (a7.f64[0] - a5) + (a4 - a6) * a5;
  v16.f64[0] = a4 * (v10 - a5) + (a4 - a6) * a5;
  v16.f64[1] = v14.f64[0];
  v17 = vmovn_s64(vceqq_f64(vdivq_f64(vnegq_f64(vzip1q_s64(a3, a2)), vdupq_laneq_s64(a2, 1)), vdivq_f64(vnegq_f64(v16), vdupq_lane_s64(*&v15, 0))));
  v18 = v17.i8[4] & v17.i8[0];
  v19 = *(MEMORY[0x1E695F050] + 8);
  v36 = *MEMORY[0x1E695F050];
  if (v17.i8[4] & v17.i8[0])
  {
    v20 = *MEMORY[0x1E695F050];
  }

  else
  {
    v14.f64[1] = v15;
    *&v21.f64[0] = a3.i64[0];
    *&v21.f64[1] = a2.i64[0];
    v22.f64[0] = a4 * (v10 - a5) + (a4 - a6) * a5;
    v22.f64[1] = v14.f64[0];
    v23 = vmlaq_f64(vmulq_f64(v22, vnegq_f64(a2)), v14, v21);
    v20 = *MEMORY[0x1E695F050];
    if (*&v23.i64[1] != 0.0)
    {
      *&v24.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(a3), v14, 1), a7, a2, 1);
      *&v24.f64[1] = v23.i64[0];
      v20 = vdivq_f64(v24, vdupq_lane_s64(vextq_s8(v23, v23, 8uLL).i64[0], 0));
    }
  }

  v25 = v20;
  if (a4 >= a6)
  {
    v26 = a6;
  }

  else
  {
    v26 = a4;
  }

  if (a5 >= v10)
  {
    v27 = v10;
  }

  else
  {
    v27 = a5;
  }

  result = PURectContainsPoint(v26, v27, fabs(v15), fabs(v10 - a5), v20.f64[0], v20.f64[1]);
  if (result)
  {
    v29 = v25.f64[1];
  }

  else
  {
    v29 = v19;
  }

  v30 = v25.f64[0];
  if (!result)
  {
    v30 = *&v36;
  }

  if ((v18 & 1) != 0 || (v29 == v19 ? (v31 = v30 == *&v36) : (v31 = 0), !v31 ? (v32 = v30 < a8) : (v32 = 0), v32))
  {
    v33 = v30 == a4;
    if (v29 != a5)
    {
      v33 = 0;
    }

    v34 = v30 == a6;
    if (v29 != v10)
    {
      v34 = 0;
    }

    v35 = 1.0;
    if (v33 || v34)
    {
      v35 = 0.5;
    }

    *a1 = *a1 + v35;
  }

  return result;
}

BOOL PUQuadContainsRect(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v71.origin.x = a2;
  v71.origin.y = a3;
  v71.size.width = a4;
  v71.size.height = a5;
  MaxX = CGRectGetMaxX(v71);
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  MinY = CGRectGetMinY(v72);
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  MaxY = CGRectGetMaxY(v73);
  v14 = *(a1 + 1);
  v67 = *a1;
  v68 = v14;
  v15 = *(a1 + 3);
  v69 = *(a1 + 2);
  v70 = v15;
  v16 = PUQuadContainsPoint(&v67, MinX, MinY);
  v17 = *(a1 + 1);
  v67 = *a1;
  v68 = v17;
  v18 = *(a1 + 3);
  v69 = *(a1 + 2);
  v70 = v18;
  v19 = PUQuadContainsPoint(&v67, MinX, MaxY);
  v20 = *(a1 + 1);
  v67 = *a1;
  v68 = v20;
  v21 = *(a1 + 3);
  v69 = *(a1 + 2);
  v70 = v21;
  v22 = PUQuadContainsPoint(&v67, MaxX, MaxY);
  v23 = *(a1 + 1);
  v67 = *a1;
  v68 = v23;
  v24 = *(a1 + 3);
  v69 = *(a1 + 2);
  v70 = v24;
  v25 = PUQuadContainsPoint(&v67, MaxX, MinY);
  result = 0;
  if (v16 && v19 && v22 && v25)
  {
    v65 = a1[5];
    v66 = a1[4];
    v63 = a1[7];
    v64 = a1[6];
    v30 = a1[2];
    v29 = a1[3];
    v32 = *a1;
    v31 = a1[1];
    v26.f64[0] = MinX;
    v27.f64[0] = MinY;
    if (_checkIntersectionPoints(*a1, v31, v30, v29, v26, v27, MinX, MaxY))
    {
      return 0;
    }

    v33.f64[0] = MaxX;
    v34.f64[0] = MinY;
    if (_checkIntersectionPoints(v32, v31, v30, v29, v33, v34, MaxX, MaxY))
    {
      return 0;
    }

    v35.f64[0] = MinX;
    v36.f64[0] = MinY;
    if (_checkIntersectionPoints(v32, v31, v30, v29, v35, v36, MaxX, MinY))
    {
      return 0;
    }

    v37.f64[0] = MinX;
    v38.f64[0] = MaxY;
    if (_checkIntersectionPoints(v32, v31, v30, v29, v37, v38, MaxX, MaxY))
    {
      return 0;
    }

    v39.f64[0] = MinX;
    v40.f64[0] = MinY;
    if (_checkIntersectionPoints(v30, v29, v66, v65, v39, v40, MinX, MaxY))
    {
      return 0;
    }

    v41.f64[0] = MaxX;
    v42.f64[0] = MinY;
    if (_checkIntersectionPoints(v30, v29, v66, v65, v41, v42, MaxX, MaxY))
    {
      return 0;
    }

    v43.f64[0] = MinX;
    v44.f64[0] = MinY;
    if (_checkIntersectionPoints(v30, v29, v66, v65, v43, v44, MaxX, MinY))
    {
      return 0;
    }

    v45.f64[0] = MinX;
    v46.f64[0] = MaxY;
    if (_checkIntersectionPoints(v30, v29, v66, v65, v45, v46, MaxX, MaxY))
    {
      return 0;
    }

    v47.f64[0] = MinX;
    v48.f64[0] = MinY;
    if (_checkIntersectionPoints(v66, v65, v64, v63, v47, v48, MinX, MaxY))
    {
      return 0;
    }

    v49.f64[0] = MaxX;
    v50.f64[0] = MinY;
    if (_checkIntersectionPoints(v66, v65, v64, v63, v49, v50, MaxX, MaxY))
    {
      return 0;
    }

    v51.f64[0] = MinX;
    v52.f64[0] = MinY;
    if (_checkIntersectionPoints(v66, v65, v64, v63, v51, v52, MaxX, MinY))
    {
      return 0;
    }

    v53.f64[0] = MinX;
    v54.f64[0] = MaxY;
    if (_checkIntersectionPoints(v66, v65, v64, v63, v53, v54, MaxX, MaxY))
    {
      return 0;
    }

    v55.f64[0] = MinX;
    v56.f64[0] = MinY;
    if (_checkIntersectionPoints(v32, v31, v64, v63, v55, v56, MinX, MaxY))
    {
      return 0;
    }

    v57.f64[0] = MaxX;
    v58.f64[0] = MinY;
    if (_checkIntersectionPoints(v32, v31, v64, v63, v57, v58, MaxX, MaxY))
    {
      return 0;
    }

    v59.f64[0] = MinX;
    v60.f64[0] = MinY;
    if (_checkIntersectionPoints(v32, v31, v64, v63, v59, v60, MaxX, MinY))
    {
      return 0;
    }

    else
    {
      v61.f64[0] = MinX;
      v62.f64[0] = MaxY;
      return !_checkIntersectionPoints(v32, v31, v64, v63, v61, v62, MaxX, MaxY);
    }
  }

  return result;
}

BOOL _checkIntersectionPoints(double a1, double a2, double a3, double a4, float64x2_t a5, float64x2_t a6, double a7, double a8)
{
  v9 = a6.f64[0];
  v10 = a5.f64[0];
  v15.f64[0] = a2 - a4;
  v16 = a3 - a1;
  if (a2 - a4 == 0.0 && v16 == 0.0 || (v17.f64[0] = a6.f64[0] - a8, v18 = a7 - a5.f64[0], a6.f64[0] - a8 == 0.0) && v18 == 0.0)
  {
    __assert_rtn("PULineMake", "PULine.h", 30, "a != 0.0 || b != 0.0");
  }

  a5.f64[0] = a1 * (a4 - a2) + (a1 - a3) * a2;
  a6.f64[0] = v10 * (a8 - a6.f64[0]) + (v10 - a7) * a6.f64[0];
  v19.f64[0] = a5.f64[0];
  v19.f64[1] = v15.f64[0];
  v20 = *MEMORY[0x1E695F050];
  v21.f64[0] = v10 * (a8 - v9) + (v10 - a7) * v9;
  v21.f64[1] = v9 - a8;
  *&v19.f64[0] = vmovn_s64(vceqq_f64(vdivq_f64(vnegq_f64(v19), vdupq_lane_s64(*&v16, 0)), vdivq_f64(vnegq_f64(v21), vdupq_lane_s64(*&v18, 0))));
  if ((HIDWORD(v19.f64[0]) & LODWORD(v19.f64[0]) & 1) == 0)
  {
    v15.f64[1] = v16;
    v17.f64[1] = a7 - v10;
    v22.f64[0] = a1 * (a4 - a2) + (a1 - a3) * a2;
    v22.f64[1] = v15.f64[0];
    v23.f64[0] = v10 * (a8 - v9) + (v10 - a7) * v9;
    v23.f64[1] = v9 - a8;
    v24 = vmlaq_f64(vmulq_f64(v23, vnegq_f64(v15)), v17, v22);
    if (*&v24.i64[1] != 0.0)
    {
      *&v25.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(a5), v17, 1), a6, v15, 1);
      *&v25.f64[1] = v24.i64[0];
      v20 = vdivq_f64(v25, vdupq_lane_s64(vextq_s8(v24, v24, 8uLL).i64[0], 0));
    }
  }

  v26 = v20;
  result = PUPointIsOnLineSegmentBetweenPoints(v20.f64[0], v20.f64[1], a1, a2, a3, a4);
  if (result)
  {
    result = PUPointIsOnLineSegmentBetweenPoints(v26.f64[0], v26.f64[1], v10, v9, a7, a8);
    if (result)
    {
      v28 = v26.f64[0] == a1 && v26.f64[1] == a2;
      result = 0;
      if (!v28)
      {
        v29 = vabdd_f64(v26.f64[1], a2);
        if ((vabdd_f64(v26.f64[0], a1) >= 0.00000011920929 || v29 >= 0.00000011920929) && (v26.f64[0] != a3 || v26.f64[1] != a4))
        {
          v32 = vabdd_f64(v26.f64[1], a4);
          v33 = vabdd_f64(v26.f64[0], a3) < 0.00000011920929 && v32 < 0.00000011920929;
          if (!v33 && (v26.f64[0] != v10 || v26.f64[1] != v9))
          {
            v34 = vabdd_f64(v26.f64[1], v9);
            v35 = vabdd_f64(v26.f64[0], v10) < 0.00000011920929 && v34 < 0.00000011920929;
            if (!v35 && (v26.f64[0] != a7 || v26.f64[1] != a8) && (vabdd_f64(v26.f64[0], a7) >= 0.00000011920929 || fabs(v26.f64[1] - a8) >= 0.00000011920929))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void PUContextDrawPoint(CGContext *a1, CGFloat a2, CGFloat a3)
{
  CGContextSaveGState(a1);
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, a2, a3, 0.4, 6.28318531, 0.0, 1);
  CGContextAddPath(a1, Mutable);
  CGPathRelease(Mutable);
  CGContextDrawPath(a1, kCGPathFill);

  CGContextRestoreGState(a1);
}

void PUContextDrawLineBetweenPoints(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  CGContextSaveGState(a1);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, a2, a3);
  CGPathAddLineToPoint(Mutable, 0, a4, a5);
  CGContextAddPath(a1, Mutable);
  CGContextDrawPath(a1, kCGPathStroke);
  CGPathRelease(Mutable);

  CGContextRestoreGState(a1);
}

CGImageRef PUQuadImageCreate(double *a1)
{
  PUQuadGetBoundingRect();
  v3 = v2;
  v5 = v4;
  v7 = 10 * v6;
  v9 = 10 * v8;
  v10 = 40 * v6;
  v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v12 = CGBitmapContextCreate(0, v7, v9, 8uLL, v10, v11, 1u);
  CGColorSpaceRelease(v11);
  CGContextTranslateCTM(v12, v3 * -10.0, v5 * -10.0);
  CGContextScaleCTM(v12, 10.0, 10.0);
  CGContextSetLineWidth(v12, 0.1);
  v13 = a1[1];
  v30 = a1[3];
  v31 = a1[2];
  v32 = a1[5];
  v33 = a1[4];
  v35 = a1[6];
  v36 = *a1;
  v34 = a1[7];
  CGContextSaveGState(v12);
  CGContextSaveGState(v12);
  ClipBoundingBox = CGContextGetClipBoundingBox(v12);
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  MinX = CGRectGetMinX(ClipBoundingBox);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MinY = CGRectGetMinY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MaxX = CGRectGetMaxX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxY = CGRectGetMaxY(v40);
  PUContextDrawLineBetweenPoints(v12, MinX, 0.0, MaxX, 0.0);
  PUContextDrawLineBetweenPoints(v12, 0.0, MinY, 0.0, MaxY);
  if (MaxX > 1.0)
  {
    v22 = 1.0;
    do
    {
      PUContextDrawLineBetweenPoints(v12, v22, -0.5, v22, 0.5);
      v22 = v22 + 1.0;
    }

    while (v22 < MaxX);
  }

  if (MinX < 1.0)
  {
    v23 = 1.0;
    do
    {
      PUContextDrawLineBetweenPoints(v12, v23, -0.5, v23, 0.5);
      v23 = v23 + -1.0;
    }

    while (v23 > MinX);
  }

  if (MaxY > 1.0)
  {
    v24 = 1.0;
    do
    {
      PUContextDrawLineBetweenPoints(v12, -0.5, v24, 0.5, v24);
      v24 = v24 + 1.0;
    }

    while (v24 < MaxY);
  }

  if (MinY < 1.0)
  {
    v25 = 1.0;
    do
    {
      PUContextDrawLineBetweenPoints(v12, -0.5, v25, 0.5, v25);
      v25 = v25 + -1.0;
    }

    while (v25 > MinY);
  }

  CGContextRestoreGState(v12);
  SRGB = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
  CGContextSetStrokeColorWithColor(v12, SRGB);
  CGContextSetFillColorWithColor(v12, SRGB);
  CGColorRelease(SRGB);
  PUContextDrawPoint(v12, v36, v13);
  PUContextDrawPoint(v12, v31, v30);
  PUContextDrawPoint(v12, v33, v32);
  PUContextDrawPoint(v12, v35, v34);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v36, v13);
  CGPathAddLineToPoint(Mutable, 0, v31, v30);
  CGPathAddLineToPoint(Mutable, 0, v33, v32);
  CGPathAddLineToPoint(Mutable, 0, v35, v34);
  CGPathAddLineToPoint(Mutable, 0, v36, v13);
  CGContextAddPath(v12, Mutable);
  CGPathRelease(Mutable);
  CGContextDrawPath(v12, kCGPathStroke);
  CGContextRestoreGState(v12);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  return Image;
}

void sub_1B39402BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12307(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3942F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3947338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39475C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3947934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  objc_destroyWeak((v13 + 72));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B3948230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak((v41 + 48));
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a41);
  objc_destroyWeak((v42 - 168));
  objc_destroyWeak((v42 - 160));
  _Unwind_Resume(a1);
}

void sub_1B394B468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B394B600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3950AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39516CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39541A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B39549EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3956320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39569E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15223(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B395A26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B395AA28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

__CFString *PUBrowsingVideoDesiredPlayStateDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PUBrowsingVideoDesiredPlayStateDescription(PUBrowsingVideoDesiredPlayState)"];
    [v6 handleFailureInFunction:v7 file:@"PUBrowsingVideoPlayer.m" lineNumber:59 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return off_1E7B75E00[a1];
}

void sub_1B395DA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16533(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PUSharingErrorTypeDescription(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B75FF0[a1];
  }
}

void sub_1B3968960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18015(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B396AD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B396BBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B396C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B396DA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSCNetworkReachabilityCreateWithAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemConfigurationLibrary();
  result = dlsym(v2, "SCNetworkReachabilityCreateWithAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SystemConfigurationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SystemConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SystemConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B76260;
    v6 = 0;
    SystemConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SystemConfigurationLibraryCore_frameworkLibrary;
  if (!SystemConfigurationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemConfigurationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PUCloudPhotoWelcomeViewController.m" lineNumber:28 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getSCNetworkReachabilityGetFlagsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemConfigurationLibrary();
  result = dlsym(v2, "SCNetworkReachabilityGetFlags");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSCNetworkReachabilityGetFlagsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SystemConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SystemConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B3971108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18697(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _vitalityTransformRequiredProperties()
{
  if (_vitalityTransformRequiredProperties_onceToken != -1)
  {
    dispatch_once(&_vitalityTransformRequiredProperties_onceToken, &__block_literal_global_214);
  }

  v1 = _vitalityTransformRequiredProperties_keys;

  return v1;
}

void ___vitalityTransformRequiredProperties_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = NSStringFromSelector(sel_metadata);
  v4[0] = v0;
  v1 = NSStringFromSelector(sel_tracks);
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v3 = _vitalityTransformRequiredProperties_keys;
  _vitalityTransformRequiredProperties_keys = v2;
}

id _vitalityLoadingQueue()
{
  if (_vitalityLoadingQueue_onceToken != -1)
  {
    dispatch_once(&_vitalityLoadingQueue_onceToken, &__block_literal_global_19260);
  }

  v1 = _vitalityLoadingQueue_queue;

  return v1;
}

void sub_1B397572C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void ___vitalityLoadingQueue_block_invoke()
{
  v0 = px_dispatch_queue_create();
  v1 = _vitalityLoadingQueue_queue;
  _vitalityLoadingQueue_queue = v0;

  v2 = _vitalityLoadingQueue_queue;
  v3 = VitalityLoadingQueueIdentifier;
  v4 = MEMORY[0x1E695E118];

  dispatch_queue_set_specific(v2, v3, v4, 0);
}

void sub_1B397E14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B397FDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3980100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B398184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3983294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v15 - 56));
  _Unwind_Resume(a1);
}

void sub_1B39850AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20551(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3986DB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3987C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_1B39954B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21603(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3995714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B399B838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1B399D6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B399D87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void commonInit(void *a1)
{
  v5 = a1;
  [v5 _setupCleanupControls];
  [v5 _setupResetButton];
  *(v5 + 1320) = 0;
  *(v5 + 1321) = 0;
  v1 = +[PUPhotoEditProtoSettings sharedInstance];
  v2 = [v1 simulatedModelCatalogDownload];

  v3 = [MEMORY[0x1E696AE30] processInfo];
  *(v5 + 169) = [v3 thermalState];

  v4 = [objc_alloc(MEMORY[0x1E69C42A8]) initWithPackageType:v2];
  [v5 setModelDeliveryManager:v4];

  [v5 setProgressDelay:15.0];
}

BOOL PUDisplayVelocityEqualToDisplayVelocity(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

void sub_1B39A0A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22061(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PUItemProviderForAsset(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSItemProvider * _Nullable PUItemProviderForAsset(PHAsset *__strong _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"PUPhotosFileProvider.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v2 = PXDragAndDropItemProviderForAsset();

  return v2;
}

void sub_1B39A3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B39A3FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B39A43B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak((v18 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22517(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B39A74D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39A8174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39A87C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBSRequestPasscodeUnlockUISymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSRequestPasscodeUnlockUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSRequestPasscodeUnlockUISymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SpringBoardServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B76D00;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PUEditPluginSession.m" lineNumber:45 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBSSpringBoardServerPortSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBSSpringBoardServerPort");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSSpringBoardServerPortSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBGetScreenLockStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBGetScreenLockStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBGetScreenLockStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B39AEF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39AF42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39AF85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39AFC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PUTesterRootSettingsLoadIfNecessary(int a1)
{
  v2 = testerRootSettings;
  if (testerRootSettings)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 == 0;
  }

  if (!v3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getPUTesterRootSettingsClass_softClass;
    v13 = getPUTesterRootSettingsClass_softClass;
    if (!getPUTesterRootSettingsClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getPUTesterRootSettingsClass_block_invoke;
      v9[3] = &unk_1E7B800F0;
      v9[4] = &v10;
      __getPUTesterRootSettingsClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 sharedInstance];
    v7 = testerRootSettings;
    testerRootSettings = v6;

    v2 = testerRootSettings;
  }

  return v2;
}

void sub_1B39B1A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPUTesterRootSettingsClass_block_invoke(uint64_t a1)
{
  PhotosUITesterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterRootSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterRootSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterRootSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUFakePhotosUITesterHeaders.m" lineNumber:23 description:{@"Unable to find class %s", "PUTesterRootSettings"}];

    __break(1u);
  }
}

void PhotosUITesterLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosUITesterLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotosUITesterLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B76EC8;
    v5 = 0;
    PhotosUITesterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosUITesterLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUITesterLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PUFakePhotosUITesterHeaders.m" lineNumber:22 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotosUITesterLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosUITesterLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPUTesterAirPlayScreenSimulatorClass_block_invoke(uint64_t a1)
{
  PhotosUITesterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterAirPlayScreenSimulator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterAirPlayScreenSimulatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterAirPlayScreenSimulatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUFakePhotosUITesterHeaders.m" lineNumber:24 description:{@"Unable to find class %s", "PUTesterAirPlayScreenSimulator"}];

    __break(1u);
  }
}

void __getPUTesterRootSettingsViewControllerClass_block_invoke(uint64_t a1)
{
  PhotosUITesterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterRootSettingsViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterRootSettingsViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterRootSettingsViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUFakePhotosUITesterHeaders.m" lineNumber:25 description:{@"Unable to find class %s", "PUTesterRootSettingsViewController"}];

    __break(1u);
  }
}

void __getPUTesterSampleAccessoryViewSettingsClass_block_invoke(uint64_t a1)
{
  PhotosUITesterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterSampleAccessoryViewSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterSampleAccessoryViewSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterSampleAccessoryViewSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUFakePhotosUITesterHeaders.m" lineNumber:27 description:{@"Unable to find class %s", "PUTesterSampleAccessoryViewSettings"}];

    __break(1u);
  }
}

void __getPUTesterSampleAccessoryViewControllerClass_block_invoke(uint64_t a1)
{
  PhotosUITesterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterSampleAccessoryViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterSampleAccessoryViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterSampleAccessoryViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUFakePhotosUITesterHeaders.m" lineNumber:26 description:{@"Unable to find class %s", "PUTesterSampleAccessoryViewController"}];

    __break(1u);
  }
}

void __getPUTesterOneUpInitialZoomScalesReviewViewControllerClass_block_invoke(uint64_t a1)
{
  PhotosUITesterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterOneUpInitialZoomScalesReviewViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUTesterOneUpInitialZoomScalesReviewViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterOneUpInitialZoomScalesReviewViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUFakePhotosUITesterHeaders.m" lineNumber:28 description:{@"Unable to find class %s", "PUTesterOneUpInitialZoomScalesReviewViewController"}];

    __break(1u);
  }
}

uint64_t PUWallpaperPosterStyleMixMakeWithStyle@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *MEMORY[0x1E69C0B38];
  *a2 = result;
  a2[1] = 0;
  a2[2] = v2;
  return result;
}

uint64_t PUWallpaperPosterStyleMixMakeBetweenTwoStyles@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void sub_1B39B2ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39B39AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_destroyWeak((v52 + 56));
  objc_destroyWeak((v53 - 144));
  _Unwind_Resume(a1);
}

void sub_1B39B5F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 - 136));
  _Unwind_Resume(a1);
}

void sub_1B39B6E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39B7EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B39B80D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39BB638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39BBBB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t PUActivityItemSharingPreferencesMake(unsigned int a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = 0x10000000000;
  if (!a6)
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if (!a5)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!a4)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!a3)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!a2)
  {
    v10 = 0;
  }

  return v10 | a1 | v9 | v8 | v7 | v6;
}

id PUActivityItemSharingPreferencesDescription(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  if (a1)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  if ((a1 & 0x100) != 0)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  if ((a1 & 0x10000) != 0)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if ((a1 & 0x1000000) != 0)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  if ((a1 & 0x100000000) != 0)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  if ((a1 & 0x10000000000) != 0)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = v13;
  v15 = PXActivityItemExportFormatDescription();
  v16 = [v2 stringWithFormat:@"(exclude live: %@, exclude location: %@, exclude caption: %@, exclude AX description: %@, include all photos data: %@, unmodified original: %@, format preference: %@)", v4, v6, v8, v10, v12, v14, v15];

  return v16;
}

void sub_1B39BFA44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B39C028C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25155(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B39C0D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39C13D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25428(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B39C17A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__286(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B39C2B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double PUPointApplyPerspectiveTransform(double a1, double a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = a1;
  v6 = a2;
  v7 = vaddq_f32(a5, vmlaq_n_f32(vmulq_n_f32(a3, v5), a4, v6));
  *&result = *&vcvtq_f64_f32(vdiv_f32(*v7.i8, *&vdupq_laneq_s32(v7, 2)));
  return result;
}

double PUPerspectiveTransformMakeWithRows(int *a1)
{
  v1 = 0;
  v2 = *(MEMORY[0x1E69E9B10] + 16);
  v10[0] = *MEMORY[0x1E69E9B10];
  v10[1] = v2;
  v10[2] = *(MEMORY[0x1E69E9B10] + 32);
  do
  {
    v3 = 0;
    v4 = &v10[v1];
    v5 = *v4;
    v6 = a1;
    do
    {
      v7 = *v6;
      v6 += 3;
      v9 = v5;
      *(&v9 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3))) = v7;
      v5 = v9;
      ++v3;
    }

    while (v3 != 3);
    *(v4 + 2) = DWORD2(v9);
    *v4 = v5;
    ++v1;
    ++a1;
  }

  while (v1 != 3);
  return *v10;
}

double PUPerspectiveTransformDenormalize(float32x4_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5)
{
  if (a4 == 0.0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PUPerspectiveTransform PUPerspectiveTransformDenormalize(PUPerspectiveTransform, CGSize)"}];
    [v13 handleFailureInFunction:v14 file:@"PUPerspectiveTransform.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"basis.width != 0"}];
  }

  if (a5 == 0.0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PUPerspectiveTransform PUPerspectiveTransformDenormalize(PUPerspectiveTransform, CGSize)"}];
    [v15 handleFailureInFunction:v16 file:@"PUPerspectiveTransform.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"basis.height != 0"}];
  }

  v7 = a4;
  v8.f32[0] = 1.0 / v7;
  v8.i32[1] = HIDWORD(*MEMORY[0x1E69E9B10]);
  v8.i32[2] = *(MEMORY[0x1E69E9B10] + 8);
  v29.columns[2] = *(MEMORY[0x1E69E9B10] + 32);
  v8.i32[3] = HIDWORD(*MEMORY[0x1E69E9B10]);
  v18 = v8;
  v19 = v29.columns[2];
  v9 = a5;
  v29.columns[1].i32[0] = *(MEMORY[0x1E69E9B10] + 16);
  v29.columns[1].f32[1] = 1.0 / v9;
  v29.columns[1].i64[1] = *(MEMORY[0x1E69E9B10] + 24);
  v17 = v29.columns[1];
  v29.columns[0] = v8;
  v30 = __invert_f3(v29);
  v10 = 0;
  v23 = v18;
  v24 = v17;
  v25 = v19;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  do
  {
    *(&v26 + v10 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*(&v23 + v10 * 4))), a2, *&v23.f32[v10], 1), a3, *(&v23 + v10 * 4), 2);
    v10 += 4;
  }

  while (v10 != 12);
  v11 = 0;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  do
  {
    *(&v26 + v11 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30.columns[0], COERCE_FLOAT(*(&v23 + v11 * 4))), v30.columns[1], *&v23.f32[v11], 1), v30.columns[2], *(&v23 + v11 * 4), 2);
    v11 += 4;
  }

  while (v11 != 12);
  return *v26.i64;
}

double PUPerspectiveTransformMaxInsetForDimensions(float32x4_t a1, float32x4_t a2, float32x4_t a3, double a4, double a5)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PUPerspectiveTransformMaxInsetForDimensions_block_invoke;
  aBlock[3] = &unk_1E7B77200;
  aBlock[4] = &v22;
  v7 = _Block_copy(aBlock);
  v14 = vmulq_f32(a1, 0);
  v8 = vaddq_f32(a3, vmlaq_f32(v14, 0, a2));
  v15 = vdivq_f32(v8, vdupq_laneq_s32(v8, 2)).u64[0];
  v7[2](a4 * *&v15);
  (v7[2])(v7, a5 * *(&v15 + 1));
  v9 = vaddq_f32(a3, vaddq_f32(a2, v14));
  v16 = vdivq_f32(v9, vdupq_laneq_s32(v9, 2)).u64[0];
  (v7[2])(v7, a4 * *&v16);
  (v7[2])(v7, a5 * (1.0 - *(&v16 + 1)));
  v10 = vaddq_f32(a3, vaddq_f32(a2, a1));
  v17 = vdivq_f32(v10, vdupq_laneq_s32(v10, 2)).u64[0];
  (v7[2])(v7, a4 * (1.0 - *&v17));
  (v7[2])(v7, a5 * (1.0 - *(&v17 + 1)));
  v11 = vaddq_f32(a3, vmlaq_f32(a1, 0, a2));
  a3.i64[0] = vdivq_f32(v11, vdupq_laneq_s32(v11, 2)).u64[0];
  (v7[2])(v7, a4 * (1.0 - a3.f32[0]));
  (v7[2])(v7, a5 * a3.f32[1]);
  v12 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v12;
}

uint64_t __PUPerspectiveTransformMaxInsetForDimensions_block_invoke(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) > a2)
  {
    a2 = *(v2 + 24);
  }

  *(v2 + 24) = a2;
  return result;
}

double PURectWithSizeThatFitsInRect(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v9 = a3;
  if (a1 != 0.0 && a2 != 0.0)
  {
    v10 = a1 / a2;
    v14.origin.x = a3;
    v14.origin.y = a4;
    v14.size.width = a5;
    v14.size.height = a6;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v9;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (v10 <= Width / CGRectGetHeight(v15))
    {
      v18.origin.x = v9;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      v12 = v10 * CGRectGetHeight(v18);
      v19.origin.x = v9;
      v19.origin.y = a4;
      v19.size.width = a5;
      v19.size.height = a6;
      return CGRectGetMidX(v19) + v12 * -0.5;
    }

    else
    {
      v16.origin.x = v9;
      v16.origin.y = a4;
      v16.size.width = a5;
      v16.size.height = a6;
      CGRectGetWidth(v16);
      v17.origin.x = v9;
      v17.origin.y = a4;
      v17.size.width = a5;
      v17.size.height = a6;
      CGRectGetMidY(v17);
    }
  }

  return v9;
}

double PURectWithMinimumSize(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = (CGRectGetWidth(*&a1) - a5) * 0.5;
  if (v11 <= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v13 = (CGRectGetHeight(v21) - a6) * 0.5;
  if (v13 <= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;

  *&result = CGRectInset(*&v15, v12, v14);
  return result;
}

double PURectGetCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double PUClampValueWithEase(double result, double a2, double a3, double a4, double a5)
{
  v5 = result;
  if (result < a2)
  {
    result = a2;
  }

  if (result >= a3)
  {
    result = a3;
  }

  v6 = a3 - a2;
  if (a4 > 0.0)
  {
    if (v6 * 0.5 <= a4)
    {
      a4 = v6 * 0.5;
    }

    v7 = (v5 - (a2 - a4)) / (a4 + a4);
    v8 = v7 >= 1.0 || v7 <= 0.0;
    v9 = a2 + v7 * v7 * a4;
    if (!v8)
    {
      result = v9;
    }
  }

  if (a5 > 0.0)
  {
    v10 = v6 * 0.5;
    if (v6 * 0.5 > a5)
    {
      v10 = a5;
    }

    v11 = (v10 + a3 - v5) / (v10 + v10);
    v12 = v11 >= 1.0 || v11 <= 0.0;
    v13 = a3 + -(v11 * v11) * v10;
    if (!v12)
    {
      return v13;
    }
  }

  return result;
}

double PUProgressValueWithEaseInOut(double a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v1 = fmin(a1, 1.0);
  return v1 * v1 / (v1 * v1 + (1.0 - v1) * (1.0 - v1));
}

uint64_t PUEdgeOppositeToEdge(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1B3D0D100[a1];
  }
}

double PUSizeMin(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double PUSizeMax(double result, double a2, double a3)
{
  if (result < a3)
  {
    return a3;
  }

  return result;
}

double PUPixelSizeFromPointSize(double a1)
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return a1 * *&PUMainScreenScale_screenScale;
}

void __PUMainScreenScale_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v1 scale];
  PUMainScreenScale_screenScale = v0;
}

double PUMainScreenScale()
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return *&PUMainScreenScale_screenScale;
}

double PUPixelWidth()
{
  if (PUPixelWidth_onceToken != -1)
  {
    dispatch_once(&PUPixelWidth_onceToken, &__block_literal_global_2);
  }

  return *&PUPixelWidth_pixelWidth;
}

void __PUPixelWidth_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v1 scale];
  *&PUPixelWidth_pixelWidth = 1.0 / v0;
}

uint64_t PUPointIsValid()
{
  result = CGFloatIsValid();
  if (result)
  {

    return CGFloatIsValid();
  }

  return result;
}

double PUAngleDifference(double a1, double a2)
{
    ;
  }

    ;
  }

  return result;
}

double PUSizeGetAspectRatio(double a1, double a2)
{
  result = 0.0;
  if ((a1 != -1.79769313e308 || a2 != -1.79769313e308) && (a1 != *MEMORY[0x1E695F060] || a2 != *(MEMORY[0x1E695F060] + 8)))
  {
    return a1 / a2;
  }

  return result;
}

double PURectGetAspectRatio(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = 0.0;
  if (!CGRectIsEmpty(*&a1))
  {
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    if (!CGRectIsInfinite(v12) && (a3 != -1.79769313e308 || a4 != -1.79769313e308) && (a3 != *MEMORY[0x1E695F060] || a4 != *(MEMORY[0x1E695F060] + 8)))
    {
      return a3 / a4;
    }
  }

  return v8;
}

double PURectWithAspectRatioFillingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  Width = CGRectGetWidth(v12);
  v13.origin.x = v8;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  if (Width / CGRectGetHeight(v13) >= a1)
  {
    v15.origin.x = v8;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    CGRectGetMidY(v15);
  }

  else
  {
    v14.origin.x = v8;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    return CGRectGetMidX(v14) + a5 * a1 * -0.5;
  }

  return v8;
}

double PURectWithAspectRatioFittingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  Width = CGRectGetWidth(v12);
  v13.origin.x = v8;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  if (Width / CGRectGetHeight(v13) <= a1)
  {
    v15.origin.x = v8;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    CGRectGetMidY(v15);
  }

  else
  {
    v14.origin.x = v8;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    return CGRectGetMidX(v14) + a5 * a1 * -0.5;
  }

  return v8;
}

CGFloat PUAffineTransformWithAnchorPointTranslationRotationScale@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  CGAffineTransformMakeTranslation(a1, a4, a5);
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeTranslation(&v26, a2 + a4, a3 + a5);
  v25 = v26;
  CGAffineTransformInvert(&t2, &v25);
  v14 = *(a1 + 16);
  *&v23.a = *a1;
  *&v23.c = v14;
  *&v23.tx = *(a1 + 32);
  CGAffineTransformConcat(&v25, &v23, &t2);
  v15 = *&v25.c;
  *a1 = *&v25.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v25.tx;
  CGAffineTransformMakeRotation(&t2, a6);
  v16 = *(a1 + 16);
  *&v23.a = *a1;
  *&v23.c = v16;
  *&v23.tx = *(a1 + 32);
  CGAffineTransformConcat(&v25, &v23, &t2);
  v17 = *&v25.c;
  *a1 = *&v25.a;
  *(a1 + 16) = v17;
  *(a1 + 32) = *&v25.tx;
  CGAffineTransformMakeScale(&t2, a7, a7);
  v18 = *(a1 + 16);
  *&v23.a = *a1;
  *&v23.c = v18;
  *&v23.tx = *(a1 + 32);
  CGAffineTransformConcat(&v25, &v23, &t2);
  v19 = *&v25.c;
  *a1 = *&v25.a;
  *(a1 + 16) = v19;
  *(a1 + 32) = *&v25.tx;
  v20 = *(a1 + 16);
  *&t2.a = *a1;
  *&t2.c = v20;
  *&t2.tx = *(a1 + 32);
  v23 = v26;
  CGAffineTransformConcat(&v25, &t2, &v23);
  v21 = *&v25.c;
  *a1 = *&v25.a;
  *(a1 + 16) = v21;
  result = v25.tx;
  *(a1 + 32) = *&v25.tx;
  return result;
}

CGFloat PUAffineTransformToMatchRect@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v30 = a8 / a4;
  v29 = a9 / a5;
  v33.origin.x = a6;
  v33.origin.y = a7;
  v33.size.width = a8;
  v33.size.height = a9;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  v18 = MidX - CGRectGetMidX(v34);
  v35.origin.x = a6;
  v35.origin.y = a7;
  v35.size.width = a8;
  v35.size.height = a9;
  MidY = CGRectGetMidY(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v20 = MidY - CGRectGetMidY(v36);
  v21 = MEMORY[0x1E695EFD0];
  v22 = *MEMORY[0x1E695EFD0];
  v23 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v23;
  v24 = *(v21 + 32);
  *(a1 + 32) = v24;
  *&v32.a = v22;
  *&v32.c = v23;
  *&v32.tx = v24;
  CGAffineTransformTranslate(a1, &v32, v18, v20);
  v25 = *(a1 + 16);
  *&v31.a = *a1;
  *&v31.c = v25;
  *&v31.tx = *(a1 + 32);
  CGAffineTransformScale(&v32, &v31, v30, v29);
  v26 = *&v32.c;
  *a1 = *&v32.a;
  *(a1 + 16) = v26;
  result = v32.tx;
  *(a1 + 32) = *&v32.tx;
  return result;
}

double PURoundToPixel(double a1)
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return round(*&PUMainScreenScale_screenScale * a1) / *&PUMainScreenScale_screenScale;
}

double PUFloorToPixel(double a1)
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return floor(*&PUMainScreenScale_screenScale * a1) / *&PUMainScreenScale_screenScale;
}

double PUCeilingToPixel(double a1)
{
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return ceil(*&PUMainScreenScale_screenScale * a1) / *&PUMainScreenScale_screenScale;
}

double PUExtendRectToPixel(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxY(v9);
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return floor(a1 * *&PUMainScreenScale_screenScale) / *&PUMainScreenScale_screenScale;
}

double PURoundRectToPixel(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxY(v9);
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  return round(a1 * *&PUMainScreenScale_screenScale) / *&PUMainScreenScale_screenScale;
}

uint64_t PUPointIsEqualToPointWithTolerance()
{
  result = PXFloatEqualToFloatWithTolerance();
  if (result)
  {

    return PXFloatEqualToFloatWithTolerance();
  }

  return result;
}

uint64_t PUPointIsApproximatelyEqualToPoint()
{
  result = PXFloatApproximatelyEqualToFloat();
  if (result)
  {

    return PXFloatApproximatelyEqualToFloat();
  }

  return result;
}

uint64_t PUSizeIsEqualToSizeWithTolerance()
{
  result = PXFloatEqualToFloatWithTolerance();
  if (result)
  {

    return PXFloatEqualToFloatWithTolerance();
  }

  return result;
}

uint64_t PUSizeIsApproximatelyEqualToSize()
{
  result = PXFloatApproximatelyEqualToFloat();
  if (result)
  {

    return PXFloatApproximatelyEqualToFloat();
  }

  return result;
}

uint64_t PURectIsApproximatelyEqualToRect()
{
  if (!PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat())
  {
    return 0;
  }

  return PXFloatApproximatelyEqualToFloat();
}

uint64_t PUAffineTransformIsApproximatelyEqualToTransform()
{
  if (!PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat())
  {
    return 0;
  }

  return PXFloatApproximatelyEqualToFloat();
}

double PURectGetArea(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

double PUVectorProjVector(double a1, double a2, double a3, double a4)
{
  v4 = a4 * a4 + a3 * a3;
  v5 = 1.0 / sqrtf(v4);
  return a3 * v5 * (a2 * (a4 * v5) + a1 * (a3 * v5));
}

CGFloat PUInsetsOfRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v18 = a2 - a6;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectGetMaxX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMaxX(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMaxY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMaxY(v22);
  return v18;
}

void PUDiffVerticalRects(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = a1;
  if (v17)
  {
    v22 = v17;
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    if (!CGRectIntersectsRect(v24, v29))
    {
      v22[2](v22, 1, a6, a7, a8, a9);
      v22[2](v22, 0, a2, a3, a4, a5);
      goto LABEL_12;
    }

    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    MaxY = CGRectGetMaxY(v25);
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    MinY = CGRectGetMinY(v26);
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v27.size.height = a9;
    v19 = CGRectGetMaxY(v27);
    v28.origin.x = a6;
    v28.origin.y = a7;
    v28.size.width = a8;
    v28.size.height = a9;
    v20 = CGRectGetMinY(v28);
    if (v19 > MaxY)
    {
      v22[2](v22, 1, a6, MaxY, a8, v19 - MaxY);
    }

    if (MinY > v20)
    {
      v22[2](v22, 1, a6, v20, a8, MinY - v20);
    }

    v17 = v22;
    if (v19 < MaxY)
    {
      v22[2](v22, 0, a6, v19, a8, MaxY - v19);
      v17 = v22;
    }

    if (MinY < v20)
    {
      v17[2](v22, 0, a6, MinY, a8, v20 - MinY);
LABEL_12:
      v17 = v22;
    }
  }
}

void PUDiffHorizontalRects(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = a1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __PUDiffHorizontalRects_block_invoke;
  v19[3] = &unk_1E7B77310;
  v20 = v17;
  v18 = v17;
  PUDiffVerticalRects(v19, a3, a2, a5, a4, a7, a6, a9, a8);
}

float64x2_t PUTransformByLinearlyInterpolatingTransforms@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v4 = vmlaq_n_f64(vmulq_n_f64(a2[1], a4), a1[1], 1.0 - a4);
  *a3 = vmlaq_n_f64(vmulq_n_f64(*a2, a4), *a1, 1.0 - a4);
  a3[1] = v4;
  result = vmlaq_n_f64(vmulq_n_f64(a2[2], a4), a1[2], 1.0 - a4);
  a3[2] = result;
  return result;
}

CGFloat PUComposeTransform@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  v12 = MEMORY[0x1E695EFD0];
  v13 = *MEMORY[0x1E695EFD0];
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v14;
  v15 = *(v12 + 32);
  *(a2 + 32) = v15;
  *&v26.a = v13;
  *&v26.c = v14;
  *&v26.tx = v15;
  CGAffineTransformTranslate(a2, &v26, a3, a4);
  v16 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v16;
  *&t1.tx = a1[2];
  v17 = *(a2 + 16);
  *&v24.a = *a2;
  *&v24.c = v17;
  *&v24.tx = *(a2 + 32);
  CGAffineTransformConcat(&v26, &t1, &v24);
  v18 = *&v26.c;
  *a2 = *&v26.a;
  *(a2 + 16) = v18;
  *(a2 + 32) = *&v26.tx;
  v19 = *(a2 + 16);
  *&t1.a = *a2;
  *&t1.c = v19;
  *&t1.tx = *(a2 + 32);
  CGAffineTransformRotate(&v26, &t1, a7);
  v20 = *&v26.c;
  *a2 = *&v26.a;
  *(a2 + 16) = v20;
  *(a2 + 32) = *&v26.tx;
  v21 = *(a2 + 16);
  *&t1.a = *a2;
  *&t1.c = v21;
  *&t1.tx = *(a2 + 32);
  CGAffineTransformScale(&v26, &t1, a5, a6);
  v22 = *&v26.c;
  *a2 = *&v26.a;
  *(a2 + 16) = v22;
  result = v26.tx;
  *(a2 + 32) = *&v26.tx;
  return result;
}

void PUDecomposeTransform(uint64_t a1, void *a2, double *a3, double *a4, long double *a5)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = atan2(*(a1 + 8), *a1);
  v13 = MEMORY[0x1B8C6CC80]();
  v14 = sin(v12);
  if (fabs(v13) <= fabs(v14))
  {
    v15 = *(a1 + 8) / v14;
    v16 = -*(a1 + 16) / v14;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = *a1 / v13;
  v16 = *(a1 + 24) / v13;
  if (a2)
  {
LABEL_5:
    *a2 = v10;
    a2[1] = v11;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v15;
  }

  if (a4)
  {
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v12;
  }
}

void PUAdjustPointsToBeWithinRect(CGPoint *a1, CGPoint *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  p_x = &a1->x;
  p_y = &a1->y;
  if (!CGRectContainsPoint(*&a3, *a1) || (v33.origin.x = a3, v33.origin.y = a4, v33.size.width = a5, v33.size.height = a6, !CGRectContainsPoint(v33, *a2)))
  {
    UIRectGetCenter();
    v14 = v13;
    v16 = v15;
    UIMidPointBetweenPoints();
    v19 = a2->x - *p_x;
    v20 = a2->y - p_x[1];
    if (v19 == 0.0 || fabs(v20 / v19) > a6 / a5)
    {
      v21 = fabs(a6 * 0.5 / v20);
      *p_x = v14 - v21 * v19;
      p_x[1] = v16 - v21 * v20;
      a2->x = v14 + v21 * v19;
      a2->y = v16 + v21 * v20;
      v22 = v17 - v14;
      v34.origin.x = a3;
      v34.origin.y = a4;
      v34.size.width = a5;
      v34.size.height = a6;
      MaxX = CGRectGetMaxX(v34);
      x = *p_x;
      if (*p_x < a2->x)
      {
        x = a2->x;
      }

      v25 = MaxX - x;
      if (v22 >= v25)
      {
        v22 = v25;
      }

      v35.origin.x = a3;
      v35.origin.y = a4;
      v35.size.width = a5;
      v35.size.height = a6;
      MinX = CGRectGetMinX(v35);
    }

    else
    {
      v29 = fabs(a5 * 0.5 / v19);
      *p_x = v14 - v29 * v19;
      p_x[1] = v16 - v29 * v20;
      a2->x = v14 + v29 * v19;
      a2->y = v16 + v29 * v20;
      v22 = v18 - v16;
      v36.origin.x = a3;
      v36.origin.y = a4;
      v36.size.width = a5;
      v36.size.height = a6;
      MaxY = CGRectGetMaxY(v36);
      y = p_x[1];
      if (y < a2->y)
      {
        y = a2->y;
      }

      v32 = MaxY - y;
      if (v22 >= v32)
      {
        v22 = v32;
      }

      v37.origin.x = a3;
      v37.origin.y = a4;
      v37.size.width = a5;
      v37.size.height = a6;
      MinX = CGRectGetMinY(v37);
      p_x = p_y;
      a2 = (a2 + 8);
    }

    v27 = a2->x;
    if (*p_x < a2->x)
    {
      v27 = *p_x;
    }

    v28 = MinX - v27;
    if (v22 >= v28)
    {
      v28 = v22;
    }

    *p_x = *p_x + v28;
    a2->x = a2->x + v28;
  }
}

double PUDerivative(double (**a1)(id, double), double a2)
{
  v3 = a2 + 0.03125;
  v4 = a1 + 2;
  v5 = a1[2];
  v6 = a1;
  v7 = v5(v3);
  v8 = (*v4)(v6, a2 + -0.03125);

  return (v7 - v8) * 16.0;
}

void sub_1B39D04F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 216), 8);
  _Block_object_dispose((v29 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_1B39D257C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PUInsertObjectsInRange(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  [v8 replaceObjectsInRange:objc_msgSend(v8 withObjectsFromArray:"count") range:{0, v7, a3, a4}];
}

void sub_1B39D9AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39DA580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 248), 8);
  _Block_object_dispose((v41 - 200), 8);
  _Block_object_dispose((v41 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28466(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B39DD6A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B39DFEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PUEditingErrorTypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B77648[a1];
  }
}

void sub_1B39E70C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B39E7B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39E8B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  objc_destroyWeak((v32 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B39EAEB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 176));
  _Unwind_Resume(a1);
}

void sub_1B39ED888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39EEC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39F204C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39F6140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39F667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak(va);
  objc_destroyWeak((v13 - 88));
  _Unwind_Resume(a1);
}

void sub_1B39F7EB0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int buf, __int128 a24)
{
  if (a2 == 1)
  {
    v24 = objc_begin_catch(a1);
    v25 = PLLivePhotoPlaybackGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      buf = 138412546;
      WORD2(a24) = 2112;
      *(&a24 + 6) = v24;
      _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_FAULT, "Encountered exception when reading AVStillImageProcessingHomography from %@.\n\t%@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x1B39F7E70);
  }

  _Unwind_Resume(a1);
}

void sub_1B39FAB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B39FCDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AddFileURLsFromDirectoryWithDepthToArray(void *a1, uint64_t a2, void *a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (a2)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = *MEMORY[0x1E695EB28];
    v31[0] = *MEMORY[0x1E695EB28];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v21 = v5;
    v10 = [v7 enumeratorAtURL:v5 includingPropertiesForKeys:v9 options:4 errorHandler:0];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      v23 = *MEMORY[0x1E6982EE8];
      v22 = *MEMORY[0x1E6982E30];
      v14 = a2 - 1;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          v25 = 0;
          [v16 getResourceValue:&v25 forKey:v8 error:0];
          v17 = v25;
          if ([v17 BOOLValue])
          {
            AddFileURLsFromDirectoryWithDepthToArray(v16, v14, v6);
          }

          else
          {
            v18 = MEMORY[0x1E6982C40];
            v19 = [v16 pathExtension];
            v20 = [v18 typeWithFilenameExtension:v19];

            if (([v20 conformsToType:v23] & 1) != 0 || objc_msgSend(v20, "conformsToType:", v22))
            {
              [v6 addObject:v16];
            }
          }

          ++v15;
        }

        while (v12 != v15);
        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v5 = v21;
  }
}

id getPUTesterCurationViewControllerFactoryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUTesterCurationViewControllerFactoryClass_softClass;
  v7 = getPUTesterCurationViewControllerFactoryClass_softClass;
  if (!getPUTesterCurationViewControllerFactoryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUTesterCurationViewControllerFactoryClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getPUTesterCurationViewControllerFactoryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3A01048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUTesterCurationViewControllerFactoryClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotosUITesterLibraryCore_frameworkLibrary_32903)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotosUITesterLibraryCore_block_invoke_32904;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7B77AB8;
    v8 = 0;
    PhotosUITesterLibraryCore_frameworkLibrary_32903 = _sl_dlopen();
  }

  if (!PhotosUITesterLibraryCore_frameworkLibrary_32903)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUITesterLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PUAmbientPhotoFrameSettings+UI.m" lineNumber:25 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PUTesterCurationViewControllerFactory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPUTesterCurationViewControllerFactoryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PUAmbientPhotoFrameSettings+UI.m" lineNumber:26 description:{@"Unable to find class %s", "PUTesterCurationViewControllerFactory"}];

LABEL_10:
    __break(1u);
  }

  getPUTesterCurationViewControllerFactoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosUITesterLibraryCore_block_invoke_32904()
{
  result = _sl_dlopen();
  PhotosUITesterLibraryCore_frameworkLibrary_32903 = result;
  return result;
}

void sub_1B3A02F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33186(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A03228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A066F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A08EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PUPosterShuffleNextSignificantEventDateForDate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF00] distantFuture];
  v5 = v3;
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  for (i = v5; ; i = v4)
  {
    if (a2 == 4)
    {
      v9 = 0;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_9;
      }

      v8 = [v6 component:32 fromDate:i];
      v9 = v8 <= 22 ? v8 + 1 : 0;
    }

    v10 = [v6 nextDateAfterDate:i matchingHour:v9 minute:0 second:0 options:1024];

    v4 = v10;
LABEL_9:
    [v4 timeIntervalSinceDate:i];
    v12 = v11;
    v4 = v4;
    if (v12 >= 2.0)
    {
      break;
    }
  }

  return v4;
}

void sub_1B3A0D83C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33816(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A0DCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1B3A12DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A1388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A19BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A19EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A19FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34896(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A1C444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A20B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A20FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36055(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A27690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A28BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A2A11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  objc_destroyWeak((v56 + 32));
  objc_destroyWeak(&a56);
  objc_destroyWeak((v57 - 256));
  _Unwind_Resume(a1);
}

void sub_1B3A2B3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPREditorColorPickerConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPREditorColorPickerConfigurationClass_softClass;
  v7 = getPREditorColorPickerConfigurationClass_softClass;
  if (!getPREditorColorPickerConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPREditorColorPickerConfigurationClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getPREditorColorPickerConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3A2B81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPREditorColorPickerConfigurationClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PREditorColorPickerConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPREditorColorPickerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPREditorColorPickerConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUWallpaperPosterEditorController.m" lineNumber:119 description:{@"Unable to find class %s", "PREditorColorPickerConfiguration"}];

    __break(1u);
  }
}

void PosterKitLibrary()
{
  v17 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v0 = PosterKitLibraryCore_frameworkLibrary;
  v13 = PosterKitLibraryCore_frameworkLibrary;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __PosterKitLibraryCore_block_invoke;
    v7[4] = &unk_1E7B79810;
    v8 = &v10;
    v9 = v7;
    v14 = xmmword_1E7B78218;
    v15 = *off_1E7B78228;
    v16 = 0;
    v11[3] = _sl_dlopen();
    PosterKitLibraryCore_frameworkLibrary = *(v8[1] + 24);
    v0 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterKitLibrary(void)"];
    v4 = v2;
    v5 = v2;
    v6 = v3;
    [v4 handleFailureInFunction:v3 file:@"PUWallpaperPosterEditorController.m" lineNumber:117 description:{@"%s", v7[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v7[0];
  if (v7[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_1B3A2BA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRPosterColorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRPosterColorClass_softClass;
  v7 = getPRPosterColorClass_softClass;
  if (!getPRPosterColorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRPosterColorClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getPRPosterColorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3A2C734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRPosterColorClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRPosterColor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRPosterColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRPosterColorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUWallpaperPosterEditorController.m" lineNumber:121 description:{@"Unable to find class %s", "PRPosterColor"}];

    __break(1u);
  }
}

void sub_1B3A2D4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A2F014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A2F564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A2F8EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3A2FB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A310F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A31978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v40 + 40));
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v42 - 112));
  _Unwind_Resume(a1);
}

void sub_1B3A322E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1B3A326D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A3291C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A32D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A3301C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A332F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A341B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPREditorColorPickerCustomColorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPREditorColorPickerCustomColorClass_softClass;
  v7 = getPREditorColorPickerCustomColorClass_softClass;
  if (!getPREditorColorPickerCustomColorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPREditorColorPickerCustomColorClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getPREditorColorPickerCustomColorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3A342A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPREditorColorPaletteClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPREditorColorPaletteClass_softClass;
  v7 = getPREditorColorPaletteClass_softClass;
  if (!getPREditorColorPaletteClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPREditorColorPaletteClass_block_invoke;
    v3[3] = &unk_1E7B800F0;
    v3[4] = &v4;
    __getPREditorColorPaletteClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B3A344A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPREditorColorPaletteClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PREditorColorPalette");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPREditorColorPaletteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPREditorColorPaletteClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUWallpaperPosterEditorController.m" lineNumber:118 description:{@"Unable to find class %s", "PREditorColorPalette"}];

    __break(1u);
  }
}

void __getPREditorColorPickerCustomColorClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PREditorColorPickerCustomColor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPREditorColorPickerCustomColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPREditorColorPickerCustomColorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PUWallpaperPosterEditorController.m" lineNumber:120 description:{@"Unable to find class %s", "PREditorColorPickerCustomColor"}];

    __break(1u);
  }
}

void sub_1B3A374C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3A389A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A38BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A391EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A3AE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A3CCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A3DA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A3DC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A3E51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_destroyWeak((v34 + 56));
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 176), 8);
  objc_destroyWeak((v35 - 184));
  _Unwind_Resume(a1);
}

void sub_1B3A3F650(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1B3A40250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 72));
  _Unwind_Resume(a1);
}

void sub_1B3A40904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A411EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B3A43480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B3A44A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37270(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A44D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B3A45268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3A461E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37337(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3A4C23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}