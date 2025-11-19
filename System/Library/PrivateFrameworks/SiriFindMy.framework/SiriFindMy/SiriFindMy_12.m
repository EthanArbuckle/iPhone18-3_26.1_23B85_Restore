uint64_t sub_266D1E0B4()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_266D1E160(*(v0 + 16), *(v0 + 24));
    *(v0 + 64) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_266D1E0E8()
{
  v1 = *(v0 + 65);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_266D1E0B4();
    *(v0 + 65) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_266D1E118()
{
  v1 = *(v0 + 66);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_266D1E160(0xD000000000000010, 0x8000000266DC1710);
    *(v0 + 66) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_266D1E160(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_266D1E2D4(a1, a2, 0);
  if (result)
  {

    return 1;
  }

  return result;
}

void *sub_266D1E1E4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_266D1E214()
{
  sub_266D1E1E4();

  return MEMORY[0x2821FE8D8](v0, 67, 7);
}

uint64_t sub_266D1E26C()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000266DC1710;
  *(v0 + 32) = 0xD00000000000001CLL;
  *(v0 + 40) = 0x8000000266DC35E0;
  *(v0 + 48) = 0xD00000000000001ALL;
  *(v0 + 56) = 0x8000000266DC3600;
  *(v0 + 64) = 514;
  *(v0 + 66) = 2;
  return result;
}

id sub_266D1E2D4(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_266DAA6FC();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_266DA72FC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t type metadata accessor for PersonEntityRepresentation()
{
  result = qword_2800CCB90;
  if (!qword_2800CCB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D1E43C(void *a1)
{
  v2 = [a1 person];
  if (v2 && (sub_266D1EA34(v2), v3))
  {
    sub_266D1EAA4(&qword_2800CCBE8);
    v4 = sub_266DA92AC();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_266D1E4D8(uint64_t a1)
{
  v3 = sub_266DA92FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_266DA935C();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_266D1E5E0()
{
  v0 = sub_266DA934C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_266D1E6E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_266D1E748(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_266D1E7C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_266D1E820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266DA931C();
  *a1 = result;
  return result;
}

uint64_t sub_266D1EA34(void *a1)
{
  v2 = [a1 customIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266D1EAA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PersonEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266D1EAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_266D1EB18, 0, 0);
}

uint64_t sub_266D1EB18()
{
  OUTLINED_FUNCTION_84();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v9[2] = &unk_266DB8968;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = &unk_266DB8978;
  v9[7] = v8;
  v10 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[12] = v11;
  *v11 = v12;
  v11[1] = sub_266D1EC9C;
  v13 = v0[2];
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200740]();
}

uint64_t sub_266D1EC9C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_92_0();
  v3 = v1;
  OUTLINED_FUNCTION_9_2();
  *v4 = v1;
  v5 = *(v1 + 96);
  v6 = *v2;
  *v4 = *v2;

  OUTLINED_FUNCTION_91_2();
  v8 = *(v7 + 88);
  if (v0)
  {
  }

  else
  {
    v11 = *(v3 + 72);
    v10 = *(v3 + 80);

    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_266D1EDE4(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for Location();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_266D1EF18;

  return v10(v6);
}

uint64_t sub_266D1EF18()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[4];

    OUTLINED_FUNCTION_28();
  }

  else
  {
    v12 = v3[3];
    v11 = v3[4];
    v13 = v3[2];
    OUTLINED_FUNCTION_2_46();
    OUTLINED_FUNCTION_32();
    sub_266D27E10();
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);

    OUTLINED_FUNCTION_15_4();
  }

  return v10();
}

uint64_t sub_266D1F03C(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266D1F140;

  return v9(a1, a2);
}

uint64_t sub_266D1F140()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  OUTLINED_FUNCTION_15_4();

  return v5();
}

uint64_t sub_266D1F220()
{
  OUTLINED_FUNCTION_22_0();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[8] = v5;
  v0[9] = v6;
  v0[6] = v7;
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  OUTLINED_FUNCTION_4_3(v9);
  v11 = *(v10 + 64);
  v0[14] = OUTLINED_FUNCTION_62();
  v12 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266D1F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v12 = v10[14];
  v14 = v10[10];
  v13 = v10[11];
  v16 = v10[8];
  v15 = v10[9];
  v17 = v10[7];
  v18 = sub_266DAA9EC();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  OUTLINED_FUNCTION_62_4();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_101_0(v22);
  v23 = OUTLINED_FUNCTION_61_2();
  sub_266D20264(v23, v24, v11);
  v25 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v25, v26, &qword_266DB32D8);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
  OUTLINED_FUNCTION_62_4();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v14;
  v30[5] = v13;
  v31 = OUTLINED_FUNCTION_61_2();
  sub_266D20264(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v34, v35, &qword_266DB32D8);
  v36 = *(MEMORY[0x277D85818] + 4);
  v37 = swift_task_alloc();
  v10[15] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCB8, &qword_266DB8A38);
  *v37 = v10;
  v37[1] = sub_266D1F434;
  v38 = v10[7];
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2822004D0](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_266D1F434()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1F52C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v3 == 1)
  {
    sub_266C4DBB8(v1, v2, 1);
    sub_266D28A38();
    v5 = OUTLINED_FUNCTION_87();
    swift_willThrow();
    *(v0 + 136) = v5;
    OUTLINED_FUNCTION_4_37(*(v0 + 96));
    v16 = v6;
    v8 = *(v7 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 144) = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_32_8(v9);

    return v16(v11);
  }

  else
  {
    v13 = *(v0 + 48);
    *v13 = v1 & 1;
    *(v13 + 8) = v2;
    *(v13 + 16) = v3;
    *(v13 + 24) = v4 & 1;
    v14 = *(v0 + 112);

    OUTLINED_FUNCTION_15_4();

    return v15();
  }
}

uint64_t sub_266D1F664()
{
  OUTLINED_FUNCTION_34();
  *(v0 + 136) = *(v0 + 128);
  OUTLINED_FUNCTION_4_37(*(v0 + 96));
  v8 = v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 144) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_32_8(v4);

  return v8(v6);
}

uint64_t sub_266D1F70C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1F804()
{
  OUTLINED_FUNCTION_22_0();

  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266D1F864()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 152);

  return v2();
}

uint64_t sub_266D1F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC60, &unk_266DB8990) - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v8[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D1F9E8, 0, 0);
}

uint64_t sub_266D1F9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v12 = v10[13];
  v14 = v10[6];
  v13 = v10[7];
  v16 = v10[4];
  v15 = v10[5];
  v17 = v10[3];
  v18 = sub_266DAA9EC();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  OUTLINED_FUNCTION_62_4();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_101_0(v22);
  v23 = OUTLINED_FUNCTION_61_2();
  sub_266D2042C(v23, v24, v11);
  v25 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v25, v26, &qword_266DB32D8);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
  OUTLINED_FUNCTION_62_4();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v14;
  v30[5] = v13;
  v31 = OUTLINED_FUNCTION_61_2();
  sub_266D2042C(v31, v32, v33);
  v34 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v34, v35, &qword_266DB32D8);
  v36 = *(MEMORY[0x277D85818] + 4);
  v37 = swift_task_alloc();
  v10[14] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC68, &qword_266DB89C0);
  *v37 = v10;
  v37[1] = sub_266D1FB6C;
  v38 = v10[10];
  v39 = v10[3];
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2822004D0](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_266D1FB6C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1FC64()
{
  OUTLINED_FUNCTION_84();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v3, v4, v5);
  if (v6)
  {
    sub_266C1825C(v2, &qword_2800CCC60, &unk_266DB8990);
    sub_266D28A38();
    v7 = OUTLINED_FUNCTION_87();
    swift_willThrow();
    *(v0 + 128) = v7;
    OUTLINED_FUNCTION_4_37(*(v0 + 64));
    v21 = v8;
    v10 = *(v9 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 136) = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_31_8(v11);

    return v21(v13);
  }

  else
  {
    v15 = *(v0 + 96);
    v16 = *(v0 + 16);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_43_6();
    sub_266D1CB20();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_43_6();
    sub_266D1CB20();
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 80);

    OUTLINED_FUNCTION_15_4();

    return v20();
  }
}

uint64_t sub_266D1FDDC()
{
  OUTLINED_FUNCTION_34();
  *(v0 + 128) = *(v0 + 120);
  OUTLINED_FUNCTION_4_37(*(v0 + 64));
  v8 = v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 136) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_8(v4);

  return v8(v6);
}

uint64_t sub_266D1FE84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D1FF7C()
{
  OUTLINED_FUNCTION_22_0();

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_15_4();

  return v4();
}

uint64_t sub_266D1FFF0()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_28();
  v5 = *(v0 + 144);

  return v4();
}

uint64_t sub_266D20074(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_266C4716C;

  return v9(a1);
}

uint64_t sub_266D2016C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_266C48BB4;

  return v9(a1);
}

uint64_t sub_266D20264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  sub_266D1CAC8();
  v10 = sub_266DAA9EC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_266C1825C(v9, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_266DAA99C();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_266D2042C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  sub_266D1CAC8();
  v10 = sub_266DAA9EC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_266C1825C(v9, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_266DAA99C();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_266D20604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_266DAAECC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D206C4, 0, 0);
}

uint64_t sub_266D206C4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 48);
  sub_266DAB22C();
  OUTLINED_FUNCTION_12_4(dword_266DB89C8);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_49_7(v2);

  return v4(v3);
}

uint64_t sub_266D20758()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_92_0();
  v3 = v1[7];
  v4 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_91_2();
  v7 = *(v6 + 48);
  v8 = v1[5];
  v9 = v1[4];
  if (v0)
  {

    v10 = *(v8 + 8);
  }

  else
  {
    v13 = *(v8 + 8);
  }

  v11 = OUTLINED_FUNCTION_42();
  v12(v11);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_102();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D208C8()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 48);
  sub_266D28A38();
  OUTLINED_FUNCTION_87();
  swift_willThrow();

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266D20950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_266DAAECC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D20A10, 0, 0);
}

uint64_t sub_266D20A10()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 48);
  sub_266DAB22C();
  OUTLINED_FUNCTION_12_4(dword_266DB89C8);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_49_7(v2);

  return v4(v3);
}

uint64_t sub_266D20AA4()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_92_0();
  v3 = v1[7];
  v4 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_91_2();
  v7 = *(v6 + 48);
  v8 = v1[5];
  v9 = v1[4];
  if (v0)
  {

    v10 = *(v8 + 8);
  }

  else
  {
    v13 = *(v8 + 8);
  }

  v11 = OUTLINED_FUNCTION_42();
  v12(v11);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_102();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D20C14()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCBF0);
  v1 = __swift_project_value_buffer(v0, qword_2800CCBF0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D20D10(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_94(v6, v7);
  v8 = [objc_opt_self() *a3];
  sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
  return sub_266DA704C();
}

uint64_t LocationDescriptionType.rawValue.getter()
{
  result = 0x74616964656D6D69;
  switch(*v0)
  {
    case 1:
      result = 0x636F4C7265707968;
      break;
    case 2:
      result = 0x6C61636F6CLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_80_1();
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = OUTLINED_FUNCTION_52_5();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D20EB0()
{
  v1 = *v0;
  switch(v1)
  {
    case 1:
    case 4:
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_90_2();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_80_1();
      goto LABEL_5;
    case 5:
      OUTLINED_FUNCTION_52_5();
LABEL_5:
      v2 = sub_266DAB17C();

      if (v2)
      {
        goto LABEL_12;
      }

      switch(v1)
      {
        case 2:
        case 4:
          break;
        case 3:
          OUTLINED_FUNCTION_80_1();
          break;
        case 5:
          OUTLINED_FUNCTION_52_5();
          break;
        default:
          goto LABEL_11;
      }

      v3 = sub_266DAB17C();

      if (v3)
      {
        goto LABEL_12;
      }

      switch(v1)
      {
        case 2:
          goto LABEL_11;
        default:
          OUTLINED_FUNCTION_13_11();
          v6 = sub_266DAB17C();

          v4 = v6 ^ 1;
          break;
      }

      break;
    default:
LABEL_11:

LABEL_12:
      v4 = 0;
      break;
  }

  return v4 & 1;
}

SiriFindMy::LocationDescriptionType_optional __swiftcall LocationDescriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_266D21168@<X0>(uint64_t *a1@<X8>)
{
  result = LocationDescriptionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266D211A0()
{
  v1 = v0;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CCBF0);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_11();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Prefetching User Location", v5, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  return (*(v7 + 16))(v6, v7);
}

Swift::Void __swiftcall LocationDescriptionProviding.prefetchUserLocation()()
{
  v2 = v1;
  v3 = v0;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v4 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v4, qword_2800CCBF0);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_11();
    *v7 = 0;
    _os_log_impl(&dword_266C08000, v5, v6, "Prefetching User Location", v7, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  (*(v2 + 8))(v12, v3, v2);
  v8 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_42();
  v11(v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
}

void sub_266D213B0()
{
  OUTLINED_FUNCTION_6();
  v144 = v0;
  v131 = v2;
  v4 = v3;
  v6 = v5;
  v147 = v7;
  v8 = sub_266DA750C();
  v9 = OUTLINED_FUNCTION_4_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_19();
  v138 = v12;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  v13 = OUTLINED_FUNCTION_0_2(v146);
  v137 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_33_0();
  v135 = v17;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_16();
  v136 = v19;
  OUTLINED_FUNCTION_3_4();
  v133 = type metadata accessor for Address();
  v20 = OUTLINED_FUNCTION_0(v133);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v26 = OUTLINED_FUNCTION_4_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_33_0();
  v132 = v29;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_16();
  v134 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  v33 = OUTLINED_FUNCTION_4_3(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_33_0();
  v148 = v36;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_16();
  v145 = v38;
  OUTLINED_FUNCTION_3_4();
  v39 = sub_266DA746C();
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v140 = v41;
  v141 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v47 = OUTLINED_FUNCTION_4_3(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0_5();
  v52 = v50 - v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_17_16();
  v139 = v54;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v55 = OUTLINED_FUNCTION_0(v128);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_33_0();
  v142 = v58;
  OUTLINED_FUNCTION_15_8();
  v60 = MEMORY[0x28223BE20](v59);
  v62 = &v121[-v61];
  v63 = MEMORY[0x28223BE20](v60);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v64);
  v66 = &v121[-v65];
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v67 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v67, qword_2800CCBF0);
  v149 = v6;
  OUTLINED_FUNCTION_43_6();
  sub_266D1CAC8();
  v143 = v4;
  OUTLINED_FUNCTION_43_6();
  sub_266D1CAC8();
  v68 = sub_266DA948C();
  v69 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_79_3(v69))
  {
    v70 = swift_slowAlloc();
    v124 = OUTLINED_FUNCTION_108_2();
    v150 = v124;
    *v70 = 136315394;
    v125 = v52;
    v123 = v62;
    sub_266D1CAC8();
    v71 = sub_266DAA72C();
    v122 = v6;
    v73 = v72;
    sub_266C1825C(v66, &qword_2800C9B20, &unk_266DB1EC0);
    v74 = sub_266C22A3C(v71, v73, &v150);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2080;
    sub_266D1CAC8();
    sub_266DAA72C();
    v52 = v125;
    v62 = v123;
    sub_266C1825C(v1, &qword_2800C9B20, &unk_266DB1EC0);
    v75 = OUTLINED_FUNCTION_42();
    v78 = sub_266C22A3C(v75, v76, v77);

    *(v70 + 14) = v78;
    _os_log_impl(&dword_266C08000, v68, v122, "Compute params for targetLocation: %s and userLocation: %s", v70, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    OUTLINED_FUNCTION_107_2(v1);
    OUTLINED_FUNCTION_107_2(v66);
  }

  v79 = v141;
  sub_266D1CAC8();
  v80 = type metadata accessor for Location();
  OUTLINED_FUNCTION_61(v62, 1, v80);
  v81 = v145;
  v82 = v146;
  v83 = v142;
  v84 = v139;
  if (v102)
  {
    sub_266C1825C(v62, &qword_2800C9B20, &unk_266DB1EC0);
    v86 = 1;
  }

  else
  {
    (*(v140 + 16))(v139, &v62[*(v80 + 28)], v79);
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v62, v85);
    v86 = 0;
  }

  __swift_storeEnumTagSinglePayload(v84, v86, 1, v79);
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v52, 1, v79);
  if (v102)
  {
    sub_266C1825C(v84, &qword_2800C9B28, &qword_266DAE4B8);
    v92 = 0;
    v91 = 0;
  }

  else
  {
    v87 = v140;
    OUTLINED_FUNCTION_89_2();
    v88 = v130;
    v89(v130, v52, v79);
    sub_266DA907C();
    v90 = v129;
    (*(v87 + 16))(v129, v88, v79);
    v91 = sub_266CEEB00(v90);
    (*(v87 + 8))(v88, v79);
    sub_266C1825C(v84, &qword_2800C9B28, &qword_266DAE4B8);

    v92 = sub_266CEEBBC();
  }

  sub_266D22820(v81, &v151, v143, v149);
  v93 = v151;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v83, 1, v80);
  if (v102)
  {
    v94 = &qword_2800C9B20;
    v95 = &unk_266DB1EC0;
    v96 = v83;
  }

  else
  {
    v97 = *(v80 + 44);
    v98 = v134;
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v83, v99);
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    v100 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_61(v100, v101, v133);
    if (!v102)
    {
      v103 = v127;
      sub_266D27E10();
      sub_266DA8F2C();
      v104 = v126;
      sub_266D27DB8();
      v105 = sub_266D7F7B0(v104);
      OUTLINED_FUNCTION_1_43();
      sub_266D27D60(v103, v106);
      sub_266C1825C(v98, &qword_2800CC420, &unk_266DB0480);
      goto LABEL_19;
    }

    v94 = &qword_2800CC420;
    v95 = &unk_266DB0480;
    v96 = v98;
  }

  sub_266C1825C(v96, v94, v95);
  v105 = 0;
LABEL_19:
  sub_266D1CAC8();
  v107 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v107, v108, v82);
  if (v102)
  {
    sub_266C1825C(v81, &qword_2800CCC10, &qword_266DB86B0);
    v118 = 0;
  }

  else
  {
    v110 = v136;
    v109 = v137;
    OUTLINED_FUNCTION_89_2();
    v111(v110, v148, v82);
    sub_266DA8F9C();
    v112 = v135;
    (*(v109 + 16))(v135, v110, v82);
    v149 = v105;
    v113 = v91;
    v114 = v93;
    v115 = v92;
    v116 = v81;
    v117 = v138;
    sub_266DA74FC();
    v118 = sub_266D5290C(v112, v117);
    (*(v109 + 8))(v110, v82);
    v119 = v116;
    v92 = v115;
    v93 = v114;
    v91 = v113;
    v105 = v149;
    sub_266C1825C(v119, &qword_2800CCC10, &qword_266DB86B0);
  }

  v120 = v147;
  *v147 = v105;
  v120[1] = v118;
  *(v120 + 16) = v93;
  v120[3] = v91;
  v120[4] = v92;
  OUTLINED_FUNCTION_5();
}

void LocationDescriptionProviding.computeParams(targetLocation:userLocation:now:)()
{
  OUTLINED_FUNCTION_6();
  v146 = v0;
  v147 = v3;
  v145 = v4;
  v132 = v5;
  v7 = v6;
  v9 = v8;
  v150 = v10;
  v11 = sub_266DA750C();
  v12 = OUTLINED_FUNCTION_4_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_19();
  v138 = v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  v16 = OUTLINED_FUNCTION_0_2(v149);
  v137 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_33_0();
  v135 = v20;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_16();
  v136 = v22;
  OUTLINED_FUNCTION_3_4();
  v133 = type metadata accessor for Address();
  v23 = OUTLINED_FUNCTION_0(v133);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v29 = OUTLINED_FUNCTION_4_3(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_16();
  v134 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  v35 = OUTLINED_FUNCTION_4_3(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_33_0();
  v148 = v38;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_3();
  v40 = sub_266DA746C();
  v41 = OUTLINED_FUNCTION_0_2(v40);
  v141 = v42;
  v142 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v48 = OUTLINED_FUNCTION_4_3(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_33_0();
  v139 = v51;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_17_16();
  v140 = v53;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v54 = OUTLINED_FUNCTION_0(v129);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_33_0();
  v143 = v57;
  OUTLINED_FUNCTION_15_8();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v122[-v60];
  v62 = MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v63);
  v65 = &v122[-v64];
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v66 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v66, qword_2800CCBF0);
  v151 = v9;
  sub_266D1CAC8();
  v144 = v7;
  sub_266D1CAC8();
  v67 = sub_266DA948C();
  v68 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_79_3(v68))
  {
    v69 = swift_slowAlloc();
    v125 = OUTLINED_FUNCTION_108_2();
    v152 = v125;
    *v69 = 136315394;
    v126 = v1;
    v124 = v61;
    sub_266D1CAC8();
    v70 = sub_266DAA72C();
    v123 = v9;
    v72 = v71;
    sub_266C1825C(v65, &qword_2800C9B20, &unk_266DB1EC0);
    v73 = sub_266C22A3C(v70, v72, &v152);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    sub_266D1CAC8();
    OUTLINED_FUNCTION_13_11();
    v74 = sub_266DAA72C();
    v76 = v75;
    v1 = v126;
    v61 = v124;
    sub_266C1825C(v2, &qword_2800C9B20, &unk_266DB1EC0);
    v77 = sub_266C22A3C(v74, v76, &v152);

    *(v69 + 14) = v77;
    _os_log_impl(&dword_266C08000, v67, v123, "Compute params for targetLocation: %s and userLocation: %s", v69, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    OUTLINED_FUNCTION_107_2(v2);
    OUTLINED_FUNCTION_107_2(v65);
  }

  v78 = v142;
  v79 = v140;
  sub_266D1CAC8();
  v80 = type metadata accessor for Location();
  OUTLINED_FUNCTION_61(v61, 1, v80);
  v81 = v149;
  v82 = v143;
  v83 = v139;
  if (v102)
  {
    sub_266C1825C(v61, &qword_2800C9B20, &unk_266DB1EC0);
    v85 = 1;
  }

  else
  {
    (*(v141 + 16))(v79, &v61[*(v80 + 28)], v78);
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v61, v84);
    v85 = 0;
  }

  __swift_storeEnumTagSinglePayload(v79, v85, 1, v78);
  sub_266D1CAC8();
  v86 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v86, v87, v78);
  if (v102)
  {
    sub_266C1825C(v79, &qword_2800C9B28, &qword_266DAE4B8);
    v92 = 0;
    v91 = 0;
  }

  else
  {
    v88 = v141;
    v89 = v131;
    (*(v141 + 32))(v131, v83, v78);
    sub_266DA907C();
    v90 = v130;
    (*(v88 + 16))(v130, v89, v78);
    v91 = sub_266CEEB00(v90);
    (*(v88 + 8))(v89, v78);
    sub_266C1825C(v79, &qword_2800C9B28, &qword_266DAE4B8);

    v92 = sub_266CEEBBC();
  }

  (*(v147 + 32))(v1, &v153, v144, v151, v145);
  v93 = v153;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v82, 1, v80);
  if (v102)
  {
    v94 = &qword_2800C9B20;
    v95 = &unk_266DB1EC0;
    v96 = v82;
  }

  else
  {
    v97 = *(v80 + 44);
    v98 = v134;
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v82, v99);
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    v100 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_61(v100, v101, v133);
    if (!v102)
    {
      v103 = v128;
      sub_266D27E10();
      sub_266DA8F2C();
      v104 = v127;
      sub_266D27DB8();
      v105 = sub_266D7F7B0(v104);
      OUTLINED_FUNCTION_1_43();
      sub_266D27D60(v103, v106);
      sub_266C1825C(v98, &qword_2800CC420, &unk_266DB0480);
      goto LABEL_19;
    }

    v94 = &qword_2800CC420;
    v95 = &unk_266DB0480;
    v96 = v98;
  }

  sub_266C1825C(v96, v94, v95);
  v105 = 0;
LABEL_19:
  v107 = v148;
  sub_266D1CAC8();
  v108 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v108, v109, v81);
  if (v102)
  {
    sub_266C1825C(v1, &qword_2800CCC10, &qword_266DB86B0);
    v119 = 0;
  }

  else
  {
    v110 = v137;
    v111 = *(v137 + 32);
    v151 = v105;
    v112 = v91;
    v113 = v92;
    v114 = v93;
    v115 = v136;
    v111(v136, v107, v81);
    sub_266DA8F9C();
    v116 = v1;
    v117 = v135;
    (*(v110 + 16))(v135, v115, v81);
    v118 = v138;
    sub_266DA74FC();
    v119 = sub_266D5290C(v117, v118);
    v120 = v115;
    v93 = v114;
    v92 = v113;
    v91 = v112;
    v105 = v151;
    (*(v110 + 8))(v120, v81);
    sub_266C1825C(v116, &qword_2800CCC10, &qword_266DB86B0);
  }

  v121 = v150;
  *v150 = v105;
  v121[1] = v119;
  *(v121 + 16) = v93;
  v121[3] = v91;
  v121[4] = v92;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D22820(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v191 = a4;
  v192 = a1;
  v193 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_0();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_10();
  v184 = v12;
  OUTLINED_FUNCTION_3_4();
  v180 = sub_266DA919C();
  v13 = OUTLINED_FUNCTION_0_2(v180);
  v175 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_15_0(v17);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC18, &unk_266DB86B8);
  OUTLINED_FUNCTION_0(v178);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v23 = OUTLINED_FUNCTION_4_3(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_16();
  v181 = v27;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  v28 = OUTLINED_FUNCTION_0_2(v194);
  v188 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_33_0();
  v185 = v32;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_16();
  v186 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v36 = OUTLINED_FUNCTION_4_3(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_33_0();
  v183 = v39;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_19_4();
  v187 = v43;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v44);
  v45 = OUTLINED_FUNCTION_104_2();
  v46 = OUTLINED_FUNCTION_0(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_19();
  v190 = v49;
  OUTLINED_FUNCTION_3_4();
  v50 = type metadata accessor for Location();
  v51 = OUTLINED_FUNCTION_0(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_33_0();
  v189 = v54;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_3();
  v56 = OUTLINED_FUNCTION_93();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
  v59 = OUTLINED_FUNCTION_4_3(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_96_2();
  MEMORY[0x28223BE20](v63);
  v65 = &v172 - v64;
  v182 = a3;
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_61(v65, 1, v50);
  if (v71)
  {
    v66 = &qword_2800C9B20;
    v67 = &unk_266DB1EC0;
    v68 = v65;
LABEL_10:
    sub_266C1825C(v68, v66, v67);
    OUTLINED_FUNCTION_43();
    result = __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
    *v193 = 6;
    return result;
  }

  sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v69 = CLLocation.init(_:)(v4);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v65, v70);
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v6, 1, v50);
  if (v71)
  {

    v66 = &qword_2800C9B20;
    v67 = &unk_266DB1EC0;
    v68 = v6;
    goto LABEL_10;
  }

  v72 = v189;
  sub_266D27E10();
  v73 = *(v50 + 44);
  sub_266D1CAC8();
  v74 = v45;
  OUTLINED_FUNCTION_61(v7, 1, v45);
  if (v75)
  {
    sub_266D27D60(v72, type metadata accessor for Location);

    v66 = &qword_2800CC420;
    v67 = &unk_266DB0480;
    v68 = v7;
    goto LABEL_10;
  }

  sub_266D27E10();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v81 = CLLocation.init(_:)(v4);
  v191 = v69;
  [v69 distanceFromLocation_];

  v82 = [objc_opt_self() meters];
  v83 = sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
  v84 = v186;
  OUTLINED_FUNCTION_14_2();
  sub_266DA704C();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v5, 1, v50);
  if (v85)
  {
    sub_266C1825C(v5, &qword_2800C9B20, &unk_266DB1EC0);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v45);
    v89 = 0;
    v90 = v188;
LABEL_17:
    v95 = v183;
LABEL_18:
    v96 = v194;
    goto LABEL_19;
  }

  v91 = *(v50 + 44);
  v92 = v187;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v5, v93);
  OUTLINED_FUNCTION_15_21(v92);
  v90 = v188;
  if (v94)
  {
    v89 = 0;
    goto LABEL_17;
  }

  v140 = v177;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v140);
  v172 = v83;
  if (v141)
  {
    sub_266C1825C(v140, &qword_2800CC420, &unk_266DB0480);
    v148 = v180;
    v146 = v181;
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v148);
  }

  else
  {
    v145 = v74[8];
    v146 = v181;
    sub_266D1CAC8();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v140, v147);
    v148 = v180;
  }

  v149 = v74[8];
  v82 = *(v178 + 48);
  v83 = &unk_266DAFBF0;
  v150 = v179;
  OUTLINED_FUNCTION_63_1();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_61(v150, 1, v148);
  v95 = v183;
  if (v71)
  {
    sub_266C1825C(v146, &qword_2800CA038, &unk_266DAFBF0);
    v151 = OUTLINED_FUNCTION_88_2();
    OUTLINED_FUNCTION_61(v151, v152, v148);
    v90 = v188;
    if (v71)
    {
      sub_266C1825C(&qword_2800CA038, &qword_2800CA038, &unk_266DAFBF0);
      v96 = v194;
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v83 = v176;
  sub_266D1CAC8();
  v153 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_61(v153, v154, v148);
  if (v155)
  {
    sub_266C1825C(v146, &qword_2800CA038, &unk_266DAFBF0);
    v156 = *(v175 + 8);
    v157 = OUTLINED_FUNCTION_93();
    v158(v157);
    v90 = v188;
LABEL_47:
    sub_266C1825C(&qword_2800CA038, &qword_2800CCC18, &unk_266DB86B8);
    v89 = 0;
    goto LABEL_18;
  }

  v159 = v175;
  OUTLINED_FUNCTION_89_2();
  v160 = &qword_2800CA038 + v82;
  v161 = v173;
  v162(v173, v160, v148);
  OUTLINED_FUNCTION_38_9();
  sub_266D28A8C(v163, v164);
  LODWORD(v182) = sub_266DAA6EC();
  v165 = *(v159 + 8);
  v165(v161, v148);
  v83 = &qword_2800CA038;
  v82 = &unk_266DAFBF0;
  sub_266C1825C(v181, &qword_2800CA038, &unk_266DAFBF0);
  v165(v176, v148);
  v166 = OUTLINED_FUNCTION_4_4();
  sub_266C1825C(v166, v167, &unk_266DAFBF0);
  v90 = v188;
  v96 = v194;
  if ((v182 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_51:
  v82 = v174;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v82);
  if (v71)
  {
    sub_266C1825C(v82, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21(v74[9]);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_1_43();
  sub_266D27D60(v82, v168);
  OUTLINED_FUNCTION_17_21(v74[9]);
  if (!&qword_2800CA038)
  {
LABEL_62:
    if (!v169)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (!v169)
  {

    goto LABEL_65;
  }

  if (v83 != *v170 || &qword_2800CA038 != v169)
  {
    OUTLINED_FUNCTION_32();
    v83 = sub_266DAB17C();

    if (v83)
    {
      goto LABEL_67;
    }

LABEL_65:
    v89 = 0;
    goto LABEL_19;
  }

LABEL_67:
  if (qword_2800C9390 != -1)
  {
    OUTLINED_FUNCTION_47_6();
  }

  __swift_project_value_buffer(v96, qword_2800E63D8);
  v89 = sub_266DA703C();
LABEL_19:
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v95);
  if (v71)
  {
    sub_266C1825C(v95, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21(v74[10]);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v95, v97);
    OUTLINED_FUNCTION_17_21(v74[10]);
    if (v83)
    {
      if (v98)
      {
        if (v82 == *v99 && v83 == v98)
        {

          v101 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_14_2();
          v101 = sub_266DAB17C();
        }
      }

      else
      {

        v101 = 0;
      }

      goto LABEL_30;
    }
  }

  v101 = v98 == 0;
LABEL_30:
  v102 = *(v90 + 16);
  v103 = v184;
  v102(v184, v84, v96);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v96);
  sub_266D242C0(v103, v89 & 1, v101 & 1, v107, v108, v109, v110, v111, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183);
  sub_266C1825C(v103, &qword_2800CCC10, &qword_266DB86B0);
  v112 = v197;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v113 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v113, qword_2800CCBF0);
  v102(v185, v84, v96);
  v114 = sub_266DA948C();
  v115 = sub_266DAAB0C();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v196 = OUTLINED_FUNCTION_108_2();
    *v116 = 136315650;
    v195 = v112;
    v117 = sub_266DAA72C();
    v119 = sub_266C22A3C(v117, v118, &v196);

    *(v116 + 4) = v119;
    v120 = v187;
    OUTLINED_FUNCTION_58_2();
    v121 = OUTLINED_FUNCTION_56_3();
    v122(v121);
    v123 = OUTLINED_FUNCTION_4_4();
    v126 = sub_266C22A3C(v123, v124, v125);

    *(v116 + 20) = v126;
    OUTLINED_FUNCTION_98_1(&dword_266C08000, v127, v128, "Distance compute results: type: %s sameCity? %{BOOL}d distance: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    v96 = v194;
    OUTLINED_FUNCTION_6_1();

    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v189, v129);
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v190, v130);
  }

  else
  {

    v131 = OUTLINED_FUNCTION_76_3();
    v132(v131);
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v189, v133);
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v190, v134);
    v120 = v187;
  }

  v135 = OUTLINED_FUNCTION_75_2();
  v136(v135);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v96);
  *v193 = v112;
  return sub_266C1825C(v120, &qword_2800CC420, &unk_266DB0480);
}

uint64_t LocationDescriptionProviding.distance(from:to:)(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v189 = a4;
  v190 = a1;
  v191 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10();
  v182 = v13;
  OUTLINED_FUNCTION_3_4();
  v178 = sub_266DA919C();
  v14 = OUTLINED_FUNCTION_0_2(v178);
  v173 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_15_0(v18);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC18, &unk_266DB86B8);
  OUTLINED_FUNCTION_0(v176);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10();
  v177 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v24 = OUTLINED_FUNCTION_4_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_16();
  v179 = v28;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  v29 = OUTLINED_FUNCTION_0_2(v192);
  v186 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_33_0();
  v183 = v33;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_16();
  v185 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v37 = OUTLINED_FUNCTION_4_3(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_33_0();
  v181 = v40;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19_4();
  v184 = v44;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_104_2();
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_19();
  v188 = v50;
  OUTLINED_FUNCTION_3_4();
  v51 = type metadata accessor for Location();
  v52 = OUTLINED_FUNCTION_0(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_33_0();
  v187 = v55;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3_3();
  v57 = OUTLINED_FUNCTION_93();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
  v60 = OUTLINED_FUNCTION_4_3(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_96_2();
  MEMORY[0x28223BE20](v64);
  v66 = &v169 - v65;
  v180 = a3;
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_61(v66, 1, v51);
  if (v72)
  {
    v67 = &qword_2800C9B20;
    v68 = &unk_266DB1EC0;
    v69 = v66;
LABEL_10:
    sub_266C1825C(v69, v67, v68);
    OUTLINED_FUNCTION_43();
    result = __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
    *v191 = 6;
    return result;
  }

  sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v70 = CLLocation.init(_:)(v4);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v66, v71);
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v6, 1, v51);
  if (v72)
  {

    v67 = &qword_2800C9B20;
    v68 = &unk_266DB1EC0;
    v69 = v6;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_46();
  v73 = v187;
  sub_266D27E10();
  v74 = *(v51 + 44);
  sub_266D1CAC8();
  v75 = v46;
  OUTLINED_FUNCTION_61(v7, 1, v46);
  if (v76)
  {
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v73, v77);

    v67 = &qword_2800CC420;
    v68 = &unk_266DB0480;
    v69 = v7;
    goto LABEL_10;
  }

  sub_266D27E10();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v83 = CLLocation.init(_:)(v4);
  v189 = v70;
  [v70 distanceFromLocation_];

  v84 = [objc_opt_self() meters];
  v85 = sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
  v86 = v185;
  OUTLINED_FUNCTION_14_2();
  sub_266DA704C();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v5, 1, v51);
  if (v87)
  {
    sub_266C1825C(v5, &qword_2800C9B20, &unk_266DB1EC0);
    v94 = v184;
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v46);
    v91 = 0;
    v92 = v186;
LABEL_17:
    v97 = v181;
LABEL_18:
    v98 = v192;
    goto LABEL_19;
  }

  v93 = *(v51 + 44);
  v94 = v184;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v5, v95);
  OUTLINED_FUNCTION_15_21(v94);
  v92 = v186;
  if (v96)
  {
    v91 = 0;
    goto LABEL_17;
  }

  v140 = v175;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v140);
  v170 = v85;
  if (v141)
  {
    sub_266C1825C(v140, &qword_2800CC420, &unk_266DB0480);
    v148 = v178;
    v146 = v179;
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v148);
  }

  else
  {
    v145 = v75[8];
    v146 = v179;
    sub_266D1CAC8();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v140, v147);
    v148 = v178;
  }

  v149 = v75[8];
  v84 = *(v176 + 48);
  v85 = &unk_266DAFBF0;
  v150 = v177;
  OUTLINED_FUNCTION_63_1();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_61(v150, 1, v148);
  v97 = v181;
  if (v72)
  {
    sub_266C1825C(v146, &qword_2800CA038, &unk_266DAFBF0);
    v151 = OUTLINED_FUNCTION_88_2();
    OUTLINED_FUNCTION_61(v151, v152, v148);
    v92 = v186;
    if (v72)
    {
      sub_266C1825C(&qword_2800CA038, &qword_2800CA038, &unk_266DAFBF0);
      v98 = v192;
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v85 = v174;
  sub_266D1CAC8();
  v153 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_61(v153, v154, v148);
  if (v155)
  {
    sub_266C1825C(v146, &qword_2800CA038, &unk_266DAFBF0);
    (*(v173 + 8))(v85, v148);
    v92 = v186;
LABEL_47:
    sub_266C1825C(&qword_2800CA038, &qword_2800CCC18, &unk_266DB86B8);
    v91 = 0;
    goto LABEL_18;
  }

  v156 = v173;
  OUTLINED_FUNCTION_89_2();
  v157 = &qword_2800CA038 + v84;
  v158 = v171;
  v159(v171, v157, v148);
  OUTLINED_FUNCTION_38_9();
  sub_266D28A8C(v160, v161);
  LODWORD(v180) = sub_266DAA6EC();
  v162 = *(v156 + 8);
  v162(v158, v148);
  v85 = &qword_2800CA038;
  v84 = &unk_266DAFBF0;
  sub_266C1825C(v179, &qword_2800CA038, &unk_266DAFBF0);
  v162(v174, v148);
  v163 = OUTLINED_FUNCTION_4_4();
  sub_266C1825C(v163, v164, &unk_266DAFBF0);
  v92 = v186;
  v98 = v192;
  if ((v180 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_51:
  v84 = v172;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v84);
  if (v72)
  {
    sub_266C1825C(v84, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21(v75[9]);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_1_43();
  sub_266D27D60(v84, v165);
  OUTLINED_FUNCTION_17_21(v75[9]);
  if (!&qword_2800CA038)
  {
LABEL_62:
    if (!v166)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (!v166)
  {

    goto LABEL_65;
  }

  if (v85 != *v167 || &qword_2800CA038 != v166)
  {
    OUTLINED_FUNCTION_32();
    v85 = sub_266DAB17C();

    if (v85)
    {
      goto LABEL_67;
    }

LABEL_65:
    v91 = 0;
    goto LABEL_19;
  }

LABEL_67:
  if (qword_2800C9390 != -1)
  {
    OUTLINED_FUNCTION_47_6();
  }

  __swift_project_value_buffer(v98, qword_2800E63D8);
  v91 = sub_266DA703C();
LABEL_19:
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v97);
  if (v72)
  {
    sub_266C1825C(v97, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21(v75[10]);
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v97, v99);
    OUTLINED_FUNCTION_17_21(v75[10]);
    if (v85)
    {
      if (v100)
      {
        if (v84 == *v101 && v85 == v100)
        {

          v103 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_14_2();
          v103 = sub_266DAB17C();
        }
      }

      else
      {

        v103 = 0;
      }

      goto LABEL_30;
    }
  }

  v103 = v100 == 0;
LABEL_30:
  v104 = *(v92 + 16);
  v105 = v182;
  v106 = OUTLINED_FUNCTION_93();
  v104(v106);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v98);
  LocationDescriptionProviding.locationType(_:sameCity:sameCountry:)(v105, v91 & 1, v103 & 1, v110, v111, v112, v113, v114, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  sub_266C1825C(v105, &qword_2800CCC10, &qword_266DB86B0);
  v115 = v195;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v116 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v116, qword_2800CCBF0);
  (v104)(v183, v86, v98);
  v117 = sub_266DA948C();
  v118 = sub_266DAAB0C();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v194 = OUTLINED_FUNCTION_108_2();
    *v119 = 136315650;
    v193 = v115;
    v120 = sub_266DAA72C();
    v122 = sub_266C22A3C(v120, v121, &v194);

    *(v119 + 4) = v122;
    v94 = v184;
    OUTLINED_FUNCTION_58_2();
    v123 = OUTLINED_FUNCTION_56_3();
    v124(v123);
    v125 = OUTLINED_FUNCTION_4_4();
    v128 = sub_266C22A3C(v125, v126, v127);

    *(v119 + 20) = v128;
    OUTLINED_FUNCTION_98_1(&dword_266C08000, v129, v130, "Distance compute results: type: %s sameCity? %{BOOL}d distance: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    v98 = v192;
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    v131 = OUTLINED_FUNCTION_76_3();
    v132(v131);
  }

  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v187, v133);
  OUTLINED_FUNCTION_1_43();
  sub_266D27D60(v188, v134);
  v135 = OUTLINED_FUNCTION_75_2();
  v136(v135);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v98);
  *v191 = v115;
  return sub_266C1825C(v94, &qword_2800CC420, &unk_266DB0480);
}

void sub_266D242C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_86_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20]();
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_61(v29, 1, v30);
  if (v33)
  {
    sub_266C1825C(v29, &qword_2800CCC10, &qword_266DB86B0);
    v34 = 5;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_77_4();
    v36(v35);
    if (qword_2800C9378 != -1)
    {
      OUTLINED_FUNCTION_46_4();
    }

    __swift_project_value_buffer(v30, qword_2800E6390);
    sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
    v37 = OUTLINED_FUNCTION_72_1();
    if (v37)
    {
      v38 = OUTLINED_FUNCTION_13_18();
      v39(v38);
      v34 = 0;
      goto LABEL_23;
    }

    if (qword_2800C9380 != -1)
    {
      v37 = OUTLINED_FUNCTION_45_5();
    }

    v40 = OUTLINED_FUNCTION_25_11(v37, qword_2800E63A8);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_13_18();
      v42(v41);
      v34 = 1;
      goto LABEL_23;
    }

    if (v22 != 2 && (v22 & 1) != 0)
    {
      v43 = OUTLINED_FUNCTION_13_18();
      v44(v43);
LABEL_18:
      v34 = 2;
      goto LABEL_23;
    }

    if (qword_2800C9388 != -1)
    {
      v40 = OUTLINED_FUNCTION_44_6();
    }

    v45 = OUTLINED_FUNCTION_25_11(v40, qword_2800E63C0);
    v46 = OUTLINED_FUNCTION_13_18();
    v47(v46);
    if (v45)
    {
      goto LABEL_18;
    }

    if (v21 == 2 || (v21 & 1) != 0)
    {
      v34 = 3;
    }

    else
    {
      v34 = 4;
    }
  }

LABEL_23:
  *v20 = v34;
  OUTLINED_FUNCTION_5();
}

void LocationDescriptionProviding.locationType(_:sameCity:sameCountry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_86_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_61(v30, 1, v31);
  if (v35)
  {
    sub_266C1825C(v30, &qword_2800CCC10, &qword_266DB86B0);
    v36 = 5;
  }

  else
  {
    v37 = OUTLINED_FUNCTION_77_4();
    v38(v37);
    if (qword_2800C9378 != -1)
    {
      OUTLINED_FUNCTION_46_4();
    }

    __swift_project_value_buffer(v31, qword_2800E6390);
    sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
    v39 = OUTLINED_FUNCTION_72_1();
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_13_18();
      v41(v40);
      v36 = 0;
      goto LABEL_23;
    }

    if (qword_2800C9380 != -1)
    {
      v39 = OUTLINED_FUNCTION_45_5();
    }

    v42 = OUTLINED_FUNCTION_25_11(v39, qword_2800E63A8);
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_13_18();
      v44(v43);
      v36 = 1;
      goto LABEL_23;
    }

    if (v22 != 2 && (v22 & 1) != 0)
    {
      v45 = OUTLINED_FUNCTION_13_18();
      v46(v45);
LABEL_18:
      v36 = 2;
      goto LABEL_23;
    }

    if (qword_2800C9388 != -1)
    {
      v42 = OUTLINED_FUNCTION_44_6();
    }

    v47 = OUTLINED_FUNCTION_25_11(v42, qword_2800E63C0);
    v48 = OUTLINED_FUNCTION_13_18();
    v49(v48);
    if (v47)
    {
      goto LABEL_18;
    }

    if (v21 == 2 || (v21 & 1) != 0)
    {
      v36 = 3;
    }

    else
    {
      v36 = 4;
    }
  }

LABEL_23:
  *v20 = v36;
  OUTLINED_FUNCTION_5();
}

uint64_t DeviceLocationDescriptionProviding.notFoundNearbyDescription(device:deviceLocation:)()
{
  OUTLINED_FUNCTION_22_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_266DA746C();
  v1[7] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266D2484C()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[9];
  v13 = v0[5];
  sub_266DA745C();
  v2 = *(v13 + 16);
  v12 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_266D2496C;
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v8, v5, v9, v6);
}

uint64_t sub_266D2496C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  v5 = v2[10];
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v11 = v6[1];
    OUTLINED_FUNCTION_102();

    return v14(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_266D24B04()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_266D24B60()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = type metadata accessor for DeviceLocationDescriptionProvider(0);
  OUTLINED_FUNCTION_11_3(v5);
  v1[22] = v6;
  v1[23] = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_62();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v8);
  v10 = *(v9 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v11 = type metadata accessor for Location();
  v1[29] = v11;
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64);
  v1[30] = OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D24C88()
{
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v1 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v1, qword_2800CCBF0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "LocationDescriptionProvider notFoundNearbyDescription", v4, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 152);

  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v6, 1, v5);
  if (v8)
  {
    sub_266C1825C(*(v0 + 224), &qword_2800C9B20, &unk_266DB1EC0);
    v9 = sub_266DA948C();
    v10 = sub_266DAAAEC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_11();
      *v11 = 0;
      _os_log_impl(&dword_266C08000, v9, v10, "No device location available, skipping user location.", v11, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v12 = *(v0 + 232);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);

    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v12);
    sub_266D213B0();
    sub_266C1825C(v14, &qword_2800C9B20, &unk_266DB1EC0);
    v23 = OUTLINED_FUNCTION_14_2();
    sub_266C1825C(v23, v24, &unk_266DB1EC0);
    *(v0 + 312) = v43;
    *(v0 + 328) = v45;
    *(v0 + 16) = v43;
    *(v0 + 32) = v44;
    *(v0 + 40) = v45;
    v25 = swift_task_alloc();
    *(v0 + 344) = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_65_1(v25);

    return sub_266D25768();
  }

  else
  {
    v27 = *(v0 + 240);
    v28 = *(v0 + 224);
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    OUTLINED_FUNCTION_2_46();
    sub_266D27E10();
    v33 = sub_266DAB37C();
    v35 = v34;
    sub_266D27DB8();
    v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v37 = swift_allocObject();
    *(v0 + 248) = v37;
    sub_266D27E10();
    OUTLINED_FUNCTION_12_4(&unk_266DB8958);
    v42 = v38;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 256) = v39;
    *v39 = v40;
    v39[1] = sub_266D25030;
    v41 = *(v0 + 216);

    return v42(v41, v33, v35, &unk_266DB8948, v37, &unk_266DB8950, 0);
  }
}

uint64_t sub_266D25030()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266D25130()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  OUTLINED_FUNCTION_2_46();
  sub_266D27DB8();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  sub_266D213B0();
  sub_266C1825C(v4, &qword_2800C9B20, &unk_266DB1EC0);
  *(v0 + 264) = v12;
  *(v0 + 280) = v14;
  *(v0 + 56) = v12;
  *(v0 + 72) = v13;
  *(v0 + 80) = v14;
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_65_1(v10);

  return sub_266D25768();
}

uint64_t sub_266D25240()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v9 + 304) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266D25340()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[27];

  sub_266C1825C(v6, &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v5, v7);
  v8 = v0[13];
  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266D25424()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v2[15] = v1;
  v2[16] = v4;
  v2[17] = v0;
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v9 + 352) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266D25524()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  v5 = v0[16];
  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X2, X16 }
}

void sub_266D255DC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  v5 = v0[44];
  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X1, X16 }
}

void sub_266D2568C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  sub_266C1825C(v0[27], &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v5, v6);

  v7 = v0[38];
  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D25768()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_62();
  v8 = sub_266DA750C();
  *(v1 + 40) = v8;
  OUTLINED_FUNCTION_11_3(v8);
  *(v1 + 48) = v9;
  v11 = *(v10 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_62();
  v12 = *v3;
  *(v1 + 120) = *(v3 + 16);
  v13 = *(v3 + 24);
  *(v1 + 64) = v12;
  *(v1 + 80) = v13;
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266D25850()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 120);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v5 + 40);
  type metadata accessor for FindmyDevice(0);
  v8 = type metadata accessor for DeviceLocationDescriptionProvider(0);
  (*(v3 + 16))(v2, v5 + *(v8 + 24), v4);
  *(v0 + 96) = sub_266D9AF54(v6, v2, 0, 0xF000000000000000, 0, 0, 0, 0);
  v9 = 1;
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_90_2();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_80_1();
      goto LABEL_5;
    case 5:
      OUTLINED_FUNCTION_52_5();
      goto LABEL_5;
    case 6:
      goto LABEL_6;
    default:
LABEL_5:
      v10 = *(v0 + 32);
      sub_266DAA77C();

      v9 = 0;
LABEL_6:
      v11 = *(v0 + 32);
      v12 = sub_266DA919C();
      __swift_storeEnumTagSinglePayload(v11, v9, 1, v12);
      v13 = swift_task_alloc();
      *(v0 + 104) = v13;
      *v13 = v0;
      v13[1] = sub_266D25A38;
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      v16 = *(v0 + 64);
      v17 = *(v0 + 72);
      v18 = *(v0 + 32);
      OUTLINED_FUNCTION_100();

      return sub_266D44260();
  }
}

uint64_t sub_266D25A38()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_92_0();
  v3 = v1;
  OUTLINED_FUNCTION_9_2();
  *v4 = v1;
  v5 = *(v1 + 104);
  v6 = *v2;
  *v4 = *v2;
  *(v1 + 112) = v0;

  OUTLINED_FUNCTION_91_2();
  v8 = *(v7 + 96);
  if (v0)
  {
    sub_266C1825C(*(v3 + 32), &qword_2800CA038, &unk_266DAFBF0);

    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = *(v3 + 56);
    sub_266C1825C(*(v3 + 32), &qword_2800CA038, &unk_266DAFBF0);

    v14 = *(v6 + 8);
    OUTLINED_FUNCTION_102();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_266D25BDC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[7];
  v2 = v0[4];

  OUTLINED_FUNCTION_28();
  v4 = v0[14];

  return v3();
}

uint64_t sub_266D25C44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D25C64, 0, 0);
}

uint64_t sub_266D25C64()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[4] = v4;
  v5 = *(v3 + 8);
  *v4 = v6;
  v4[1] = sub_266D25D18;
  v7 = v0[2];

  return sub_266D7BF1C(v7, v2, v5);
}

uint64_t sub_266D25D18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266D25DF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D25E18, 0, 0);
}

uint64_t sub_266D25E18()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39();
  }

  v1 = *(v0 + 24);
  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CCBF0);
  v3 = v1;
  v4 = sub_266DA948C();
  v5 = sub_266DAAAEC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_266C08000, v4, v5, "LocationDescriptionProvider: Failed getting user location with error: %@", v7, 0xCu);
    sub_266C1825C(v8, &qword_2800C9F78, &unk_266DB1430);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v11 = *(v0 + 16);

  type metadata accessor for Location();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_266D25F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D26038;

  return sub_266D24B60();
}

uint64_t sub_266D26038()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;

  OUTLINED_FUNCTION_43_4();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_266D26124@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v97 = a1;
  v9 = sub_266DA750C();
  v10 = *(v9 - 8);
  isa = v10[8].isa;
  MEMORY[0x28223BE20](v9);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v14 = *(*(v92 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v92);
  v91 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v95 = &v88 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v88 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v88 - v23;
  MEMORY[0x28223BE20](v22);
  v101 = &v88 - v25;
  v26 = *a3;
  v102 = *(a3 + 8);
  v96 = *(a3 + 16);
  v27 = *(a3 + 24);
  v98 = *(a3 + 32);
  v99 = v27;
  v28 = [a2 friendLocation];
  v29 = [v28 location];

  v100 = v29;
  v94 = v21;
  if (!v29 || (v30 = v100, sub_266D6CDF4(&v106), v30, v31 = v108, v108 == 255))
  {
    v41 = sub_266DA919C();
    v42 = v101;
    v43 = 1;
  }

  else
  {
    v90 = v5;
    v93 = v10;
    v32 = v101;
    v33 = v9;
    v34 = v26;
    v35 = v24;
    v36 = a4;
    v38 = v106;
    v37 = v107;
    v103 = v106;
    v104 = v107;
    v105 = v108;
    sub_266D91274();
    v39 = v38;
    a4 = v36;
    v24 = v35;
    v26 = v34;
    v9 = v33;
    v40 = v37;
    v5 = v90;
    sub_266C23130(v39, v40, v31);
    v41 = sub_266DA919C();
    v42 = v32;
    v10 = v93;
    v43 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v41);
  sub_266DA900C();
  v44 = [v97 person];
  v45 = type metadata accessor for FriendLocationDescriptionProvider(0);
  (v10[2].isa)(v13, v5 + *(v45 + 24), v9);
  v46 = sub_266DA8FBC();
  switch(v96)
  {
    case 6uLL:
      v87 = sub_266DA919C();
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v87);

      break;
    default:

      sub_266DAA77C();

      v47 = sub_266DA919C();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v47);
      break;
  }

  v97 = v46;
  if (qword_2800C9370 != -1)
  {
    swift_once();
  }

  v48 = sub_266DA94AC();
  __swift_project_value_buffer(v48, qword_2800CCBF0);
  v49 = v94;
  sub_266D1CAC8();
  v96 = v24;
  v50 = v95;
  sub_266D1CAC8();
  v51 = v97;

  swift_retain_n();

  v52 = sub_266DA948C();
  v53 = sub_266DAAB0C();

  LODWORD(v90) = v53;
  v93 = v52;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v89 = a4;
    v55 = v54;
    v88 = swift_slowAlloc();
    v106 = v88;
    *v55 = 136316674;
    v103 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC90, &qword_266DB89E8);
    v56 = sub_266DAA72C();
    v58 = sub_266C22A3C(v56, v57, &v106);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    v59 = v102;
    sub_266D1CAC8();
    v60 = sub_266DAA72C();
    v62 = v61;
    sub_266C1825C(v49, &qword_2800CA038, &unk_266DAFBF0);
    v63 = v50;
    v64 = sub_266C22A3C(v60, v62, &v106);
    v51 = v97;

    *(v55 + 14) = v64;
    *(v55 + 22) = 2080;
    v103 = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC98, &qword_266DB89F0);
    v65 = sub_266DAA72C();
    v67 = sub_266C22A3C(v65, v66, &v106);

    *(v55 + 24) = v67;
    *(v55 + 32) = 2080;
    v103 = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCA0, &qword_266DB89F8);
    v68 = sub_266DAA72C();
    v70 = sub_266C22A3C(v68, v69, &v106);

    *(v55 + 34) = v70;
    *(v55 + 42) = 2080;
    sub_266D1CAC8();
    v71 = sub_266DAA72C();
    v73 = v72;
    sub_266C1825C(v63, &qword_2800CA038, &unk_266DAFBF0);
    v74 = sub_266C22A3C(v71, v73, &v106);

    *(v55 + 44) = v74;
    *(v55 + 52) = 2080;
    v103 = v99;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCA8, &qword_266DB8A00);
    v75 = sub_266DAA72C();
    v77 = sub_266C22A3C(v75, v76, &v106);

    *(v55 + 54) = v77;
    *(v55 + 62) = 2080;
    v103 = v98;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCB0, &qword_266DB8A08);
    v78 = sub_266DAA72C();
    v80 = sub_266C22A3C(v78, v79, &v106);

    *(v55 + 64) = v80;
    v81 = v93;
    _os_log_impl(&dword_266C08000, v93, v90, "foundFriendDescriptionCAT %s, %s, %s, %s, %s, %s, %s", v55, 0x48u);
    v82 = v88;
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v82, -1, -1);
    v83 = v55;
    a4 = v89;
    MEMORY[0x26D5F2480](v83, -1, -1);
  }

  else
  {

    sub_266C1825C(v50, &qword_2800CA038, &unk_266DAFBF0);
    sub_266C1825C(v49, &qword_2800CA038, &unk_266DAFBF0);
  }

  sub_266D1CB20();
  v84 = type metadata accessor for FriendLocationDescriptionProvider.FriendLocationDescriptionParams(0);
  v85 = v84[7];
  result = sub_266D1CB20();
  *(a4 + v84[5]) = v102;
  *(a4 + v84[6]) = v51;
  return result;
}

uint64_t sub_266D26A40()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for FriendLocationDescriptionProvider.FriendLocationDescriptionParams(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA746C();
  v1[7] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v14 = type metadata accessor for Location();
  v1[13] = v14;
  OUTLINED_FUNCTION_4_3(v14);
  v16 = *(v15 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_266D26B90()
{
  OUTLINED_FUNCTION_84();
  v2 = [*(v1 + 24) friendLocation];
  if (!v2 || (v3 = v2, v0 = [v2 location], v3, !v0))
  {
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
LABEL_7:
    sub_266C1825C(*(v1 + 96), &qword_2800C9B20, &unk_266DB1EC0);
    if (qword_2800C9370 != -1)
    {
      OUTLINED_FUNCTION_3_39();
    }

    v17 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v17, qword_2800CCBF0);
    v18 = sub_266DA948C();
    v19 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_79_3(v19))
    {
      v20 = OUTLINED_FUNCTION_11();
      *v20 = 0;
      _os_log_impl(&dword_266C08000, v18, v0, "LocationDescriptionProvider: should not have a nil friendLocation", v20, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266D28AF4();
    OUTLINED_FUNCTION_87();
    swift_willThrow();
    OUTLINED_FUNCTION_59_4();

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_82_2();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  sub_266C5FF68(v0, v5);
  OUTLINED_FUNCTION_61(v5, 1, v4);
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = *(v1 + 120);
  v8 = *(v1 + 96);
  v9 = *(v1 + 24);
  OUTLINED_FUNCTION_2_46();
  sub_266D27E10();
  v10 = [v9 userLocation];
  if (v10)
  {
    sub_266C5FF68(v10, *(v1 + 88));
  }

  else
  {
    v23 = *(v1 + 104);
    v24 = *(v1 + 88);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 128) = v29;
  *v29 = v30;
  v29[1] = sub_266D26E10;
  v31 = *(v1 + 112);
  v32 = *(v1 + 120);
  v33 = *(v1 + 88);
  v34 = *(v1 + 32);
  OUTLINED_FUNCTION_82_2();

  return sub_266D274C4(v35, v36, v37);
}

uint64_t sub_266D26E10()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D26F08()
{
  v30 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v25 = *(v0 + 16);
  v26 = *(v0 + 24);
  OUTLINED_FUNCTION_2_46();
  sub_266D27DB8();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  sub_266DA745C();
  sub_266D213B0();
  (*(v5 + 8))(v6, v8);
  sub_266C1825C(v4, &qword_2800C9B20, &unk_266DB1EC0);
  v14 = v28;
  v15 = v29;
  v16 = v27;
  *(v0 + 144) = v27;
  *(v0 + 160) = v15;
  v27 = v16;
  v28 = v14;
  v29 = v15;
  sub_266D26124(v25, v26, &v27, v7);
  v17 = *(v9 + 40);
  v18 = v10[6];
  v19 = v10[7];
  v20 = *(v7 + v10[5]);
  v21 = *(v7 + v18);
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  *v22 = v0;
  v22[1] = sub_266D270A4;
  v23 = *(v0 + 48);

  return sub_266CB3AF8();
}

uint64_t sub_266D270A4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v8 = *(v7 + 176);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  *(v5 + 184) = v0;

  if (!v0)
  {
    *(v5 + 192) = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266D271B4()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v14 = v0[10];
  v15 = v0[9];
  v9 = v0[6];
  OUTLINED_FUNCTION_40_5();
  sub_266D27D60(v9, v10);

  sub_266D27D60(v6, type metadata accessor for Location);
  sub_266C1825C(v7, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266D27D60(v5, type metadata accessor for Location);

  OUTLINED_FUNCTION_43_4();
  v12 = v0[24];

  return v11(v12);
}

uint64_t sub_266D272F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v11 = v10[20];
  v12 = v10[21];
  v14 = v10[18];
  v13 = v10[19];
  v16 = v10[14];
  v15 = v10[15];
  v17 = v10[11];
  v18 = v10[6];
  OUTLINED_FUNCTION_40_5();
  sub_266D27D60(v19, v20);
  sub_266D27D60(v16, type metadata accessor for Location);
  sub_266C1825C(v17, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266D27D60(v15, type metadata accessor for Location);

  v21 = v10[23];
  OUTLINED_FUNCTION_59_4();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_100();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

void sub_266D27404()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[15];
  sub_266C1825C(v0[11], &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v1, v2);
  v3 = v0[17];
  OUTLINED_FUNCTION_59_4();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_82_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D274C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D2759C, 0, 0);
}

uint64_t sub_266D2759C()
{
  OUTLINED_FUNCTION_56();
  v19 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  OUTLINED_FUNCTION_2_46();
  sub_266D27DB8();
  type metadata accessor for Location();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_266D22820(v1, v18, v4, v2);
  sub_266C1825C(v2, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266C1825C(v1, &qword_2800CCC10, &qword_266DB86B0);
  if (v18[0] == 6)
  {
    v10 = 2;
  }

  else
  {
    v18[1] = v18[0];
    if (sub_266D20EB0())
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }
  }

  v11 = v0[11];
  v12 = type metadata accessor for FriendLocationDescriptionProvider(0);
  sub_266C233D0(v11 + *(v12 + 32), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[7] = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[14] = v13;
  *v13 = v14;
  v13[1] = sub_266D27714;
  v15 = v0[8];
  v16 = v0[9];

  return GEOServicesReverseGeocoder.reverseGeocodeLocationAsync(_:spokenNeeds:)();
}

uint64_t sub_266D27714()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266D2780C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[12];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_15_4();

  return v3();
}

uint64_t sub_266D27878()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[12];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_28();
  v4 = v0[15];

  return v3();
}

uint64_t sub_266D278E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_266DAAEBC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_266D279E8, 0, 0);
}

uint64_t sub_266D279E8()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  sub_266DAAECC();
  sub_266D28A8C(&qword_2800CCC78, MEMORY[0x277D85928]);
  OUTLINED_FUNCTION_42();
  sub_266DAB20C();
  sub_266D28A8C(&qword_2800CCC80, MEMORY[0x277D858F8]);
  sub_266DAAEDC();
  v6 = *(v4 + 8);
  v0[12] = v6;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = *(MEMORY[0x277D85A58] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_266D27B68;
  v9 = v0[11];
  v10 = v0[7];
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x2822008C8]();
}

uint64_t sub_266D27B68()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (!v0)
  {
    v18 = v3[10];
    v17 = v3[11];

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_109_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_109_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266D27CFC()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_28();
  v4 = v0[15];

  return v3();
}

uint64_t sub_266D27D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266D27DB8()
{
  OUTLINED_FUNCTION_6_22();
  v2 = v1(0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v0;
}

uint64_t sub_266D27E10()
{
  OUTLINED_FUNCTION_6_22();
  v2 = v1(0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return v0;
}

unint64_t sub_266D27E6C()
{
  result = qword_2800CCC30;
  if (!qword_2800CCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationDescriptionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266D27F9C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_266D27FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of DeviceLocationDescriptionProviding.notFoundNearbyDescription(device:deviceLocation:now:)()
{
  OUTLINED_FUNCTION_84();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v1 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 16) = v13;
  *v13 = v0;
  v13[1] = sub_266D281E8;

  return v15(v10, v8, v6, v4, v2);
}

uint64_t sub_266D281E8()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  OUTLINED_FUNCTION_43_4();

  return v7(v2);
}

uint64_t sub_266D28318()
{
  result = sub_266C79A8C(319, &qword_2800CCC48);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FindMyFriendCATsSimple();
    if (v2 <= 0x3F)
    {
      result = sub_266DA750C();
      if (v3 <= 0x3F)
      {
        result = sub_266C29814(319, &qword_2800C9A80, 0x277CCABD8);
        if (v4 <= 0x3F)
        {
          result = sub_266C79A8C(319, &qword_2800CBBE0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266DA750C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DA750C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266D28564()
{
  result = sub_266C79A8C(319, &qword_2800CCC48);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FindDeviceAndPlaySoundCATsSimple();
    if (v2 <= 0x3F)
    {
      result = sub_266DA750C();
      if (v3 <= 0x3F)
      {
        result = sub_266C29814(319, &qword_2800C9A80, 0x277CCABD8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_266D28638()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = type metadata accessor for DeviceLocationDescriptionProvider(0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_6_23(v6);
  *v7 = v8;
  v7[1] = sub_266C48BB4;

  return sub_266D25C44(v2, v0 + v5);
}

uint64_t sub_266D28704()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_6_23(v5);
  *v6 = v7;
  v6[1] = sub_266C48BB4;

  return sub_266D1EDE4(v2, v4);
}

uint64_t sub_266D287B0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_23(v3);
  *v4 = v5;
  v4[1] = sub_266C48BB4;
  OUTLINED_FUNCTION_102();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_266D28864()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_23(v7);
  *v8 = v9;
  v8[1] = sub_266C4716C;
  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_100();

  return sub_266D1F8CC(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266D28920()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D2016C(v3, v4, v5, v6);
}

uint64_t sub_266D289AC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D20950(v3, v4, v5, v6, v7);
}

unint64_t sub_266D28A38()
{
  result = qword_2800CCC70;
  if (!qword_2800CCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC70);
  }

  return result;
}

uint64_t sub_266D28A8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266D28AF4()
{
  result = qword_2800CCC88;
  if (!qword_2800CCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC88);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_62_4();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_266D28B84()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D20074(v3, v4, v5, v6);
}

uint64_t sub_266D28C10()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D20604(v3, v4, v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for LocationDescriptionError(_BYTE *result, int a2, int a3)
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

uint64_t sub_266D28D70()
{
  sub_266D28E74(319, &qword_2800CA680, MEMORY[0x277D55C48]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_266D28E74(319, &qword_2800CCCD0, MEMORY[0x277D55B48]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_266D28E74(319, &qword_2800CCCD8, MEMORY[0x277D55B70]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_266D28E74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_266DAAC1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_266D28ECC()
{
  result = qword_2800CCCE0;
  if (!qword_2800CCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCCE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_11(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_266DA703C();
}

uint64_t OUTLINED_FUNCTION_31_8(uint64_t a1)
{
  *(a1 + 8) = sub_266D1FE84;
  v2 = *(v1 + 72);
  return *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t a1)
{
  *(a1 + 8) = sub_266D1F70C;
  v2 = *(v1 + 104);
  return *(v1 + 48);
}

uint64_t OUTLINED_FUNCTION_41_3()
{
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[3];
  return v2[2];
}

void OUTLINED_FUNCTION_50_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  v2 = *(*(v1 - 184) + 8);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_2()
{
  *(v1 + 12) = 1024;
  *(v1 + 14) = v0 & 1;
  *(v1 + 18) = 2080;
  v4 = *(v2 - 136);

  return MEMORY[0x28211B6A8](v4);
}

uint64_t OUTLINED_FUNCTION_59_4()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];
}

uint64_t OUTLINED_FUNCTION_65_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 168);
  return *(v2 + 144);
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  v3 = *(v1 - 168) + v0;

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return sub_266DA703C();
}

BOOL OUTLINED_FUNCTION_79_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_98_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_100_1()
{
  v3 = (v0 + *(v1 + 36));
  v5 = *v3;
  v4 = v3[1];
}

uint64_t OUTLINED_FUNCTION_101_0(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_103_1()
{
  v3 = (v0 + *(v1 + 40));
  v5 = *v3;
  v4 = v3[1];
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return type metadata accessor for Address();
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1)
{

  return sub_266C1825C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return swift_slowAlloc();
}

uint64_t sub_266D2955C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = sub_266DA9A1C();
  v4 = OUTLINED_FUNCTION_0_2(v103);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v99 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCE8, &qword_266DB8B28);
  v13 = OUTLINED_FUNCTION_4_3(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v94 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v22 = OUTLINED_FUNCTION_4_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v94 - v25;
  v27 = sub_266DA9C4C();
  v28 = OUTLINED_FUNCTION_4_3(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_266DA746C();
  v34 = OUTLINED_FUNCTION_0_2(v33);
  v101 = v35;
  v102 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v104 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  v40 = OUTLINED_FUNCTION_4_3(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v94 - v43;
  v45 = sub_266DA9BCC();
  if (v45)
  {
    v46 = v45;
    v95 = v6;
    v100 = v26;
    sub_266DA9BAC();
    v47 = sub_266DA9EBC();
    if (__swift_getEnumTagSinglePayload(v44, 1, v47) == 1)
    {
      sub_266C47654(v44, &qword_2800CC028, &qword_266DB59C8);
      v48 = 0;
      v49 = 0;
      v50 = 255;
    }

    else
    {
      v55 = sub_266DA9EAC();
      v57 = v56;
      (*(*(v47 - 8) + 8))(v44, v47);
      v58._countAndFlagsBits = sub_266DAA73C();
      DefaultLocationLabel.init(rawValue:)(v58);
      v48 = v105;
      if (v105 == 5)
      {
        v59 = sub_266DAA73C();
        sub_266D91A18(v59, v60, &v105);

        v50 = v107;
        if (v107 == 255)
        {
          v50 = 1;
          v48 = v55;
          v49 = v57;
        }

        else
        {
          v48 = v105;
          v49 = v106;
        }
      }

      else
      {

        v49 = 0;
        v50 = 0;
      }
    }

    [v46 coordinate];
    v62 = v61;
    [v46 coordinate];
    v64 = v63;
    [v46 horizontalAccuracy];
    v66 = v65;
    [v46 verticalAccuracy];
    v68 = v67;
    v69 = [v46 timestamp];
    sub_266DA744C();

    if (v50 == 255)
    {
      v96 = 0;
      v97 = 0;
    }

    else
    {
      v105 = v48;
      v106 = v49;
      v107 = v50;
      v70 = LocationLabel.rawValue.getter();
      v96 = v71;
      v97 = v70;
      sub_266C23130(v48, v49, v50);
    }

    v72 = sub_266DA9B7C();
    if (v72 >= 6)
    {
      v74 = 0;
    }

    else
    {
      v74 = v72;
    }

    if (v73)
    {
      v75 = 6;
    }

    else
    {
      v75 = v74;
    }

    sub_266DA9B4C();
    sub_266CF6AD8(v32, &v105);
    v76 = v105;
    sub_266DA9BBC();
    sub_266D29C3C(v20, v18);
    v77 = 1;
    v78 = v103;
    if (__swift_getEnumTagSinglePayload(v18, 1, v103) != 1)
    {
      v79 = v95;
      v80 = v98;
      (*(v95 + 32))(v98, v18, v78);
      v81 = v99;
      (*(v79 + 16))(v99, v80, v78);
      sub_266C6E194(v81, v100);
      (*(v79 + 8))(v80, v78);
      v77 = 0;
    }

    sub_266C47654(v20, &qword_2800CCCE8, &qword_266DB8B28);
    v82 = type metadata accessor for Address();
    v83 = v100;
    __swift_storeEnumTagSinglePayload(v100, v77, 1, v82);

    v84 = sub_266DA9BDC();
    OUTLINED_FUNCTION_8_0(v84);
    (*(v85 + 8))(a1);
    v86 = type metadata accessor for Location();
    v87 = v86[8];
    v88 = v86[9];
    *(a2 + v88) = 6;
    v89 = (a2 + v87);
    v90 = v86[10];
    *(a2 + v90) = 4;
    v91 = v86[11];
    __swift_storeEnumTagSinglePayload(a2 + v91, 1, 1, v82);
    *a2 = v62;
    *(a2 + 8) = v64;
    *(a2 + 16) = v66;
    *(a2 + 24) = v68;
    *(a2 + 32) = 0;
    (*(v101 + 32))(a2 + v86[7], v104, v102);
    v92 = v96;
    *v89 = v97;
    v89[1] = v92;
    *(a2 + v88) = v75;
    *(a2 + v90) = v76;
    sub_266C60554(v83, a2 + v91);
    v93 = (a2 + v86[12]);
    *v93 = 1701736302;
    v93[1] = 0xE400000000000000;
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v86);
  }

  else
  {
    v51 = sub_266DA9BDC();
    OUTLINED_FUNCTION_8_0(v51);
    (*(v52 + 8))(a1);
    v53 = type metadata accessor for Location();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v53);
  }
}

uint64_t sub_266D29C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCE8, &qword_266DB8B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D29CB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_266D29CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D29D64()
{
  v2 = v0;
  v3 = sub_266DA81AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6();
  }

  v8 = sub_266DA94AC();
  __swift_project_value_buffer(v8, qword_2800E64C0);
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();
  if (os_log_type_enabled(v9, v10))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_266C08000, v9, v10, "SetGeoFence.FlowStrategy.actionForInput() called", v1, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  __swift_project_boxed_opaque_existential_1((v2 + 88), *(v2 + 112));
  sub_266DA816C();
  sub_266CD6764(v7, v30);
  (*(v4 + 8))(v7, v3);
  sub_266C6F230(v30, v28);
  if (v29 == 2)
  {
    sub_266C6F308(v28);
    sub_266C6F230(v30, v28);
    v11 = sub_266DA948C();
    v12 = sub_266DAAB0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      sub_266C6F230(v28, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v15 = sub_266C22A3C(v10, v1, &v27);

      *(v13 + 4) = v15;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v16, v17, "SetGeoFence.FlowStrategy.actionForInput() handling task: %s");
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v28, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CBC();
  }

  else
  {
    if (v29 == 255)
    {
      sub_266C3A088(v28, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v28);
    }

    sub_266C6F230(v30, v28);
    v18 = sub_266DA948C();
    v19 = sub_266DAAB0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      sub_266C6F230(v28, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v22 = sub_266C22A3C(v10, v1, &v27);

      *(v20 + 4) = v22;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v23, v24, "SetGeoFence.FlowStrategy.actionForInput() ignoring unsupported task: %s");
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v28, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CCC();
  }

  return sub_266C3A088(v30, &qword_2800CA870, &qword_266DB1F08);
}

uint64_t sub_266D2A198()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_266DA750C();
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D2A258, 0, 0);
}

uint64_t sub_266D2A258()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((*(v0 + 168) + 88), *(*(v0 + 168) + 112));
  sub_266CD6764(v2, v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 160);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for SetGeoFenceIntent()) init];
  }

  sub_266C6F230(v0 + 16, v0 + 64);
  v4 = *(v0 + 104);
  if (v4 == 2)
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 160);
    sub_266C0B0D8((v0 + 64), v0 + 112);
    v11 = v9[5];
    __swift_project_boxed_opaque_existential_1(v9 + 1, v9[4]);
    v12 = v10;
    sub_266DA7AFC();
    v13 = __swift_project_boxed_opaque_existential_1(v9 + 6, v9[9]);
    sub_266D2AAF8((v0 + 112), v13, v6, v3);
    (*(v7 + 8))(v6, v8);
    if (qword_2800C93F8 != -1)
    {
      OUTLINED_FUNCTION_7_6();
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_2800E64C0);
    v15 = v3;
    v16 = sub_266DA948C();
    v17 = sub_266DAAB0C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_266C08000, v16, v17, "SetGeoFence Intent created: %@", v18, 0xCu);
      sub_266C3A088(v19, &qword_2800C9F78, &unk_266DB1430);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    v21 = *(v0 + 192);

    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);

    OUTLINED_FUNCTION_43_4();

    return v22(v15);
  }

  else
  {
    if (v4 == 255)
    {
      v5 = *(v0 + 160);
      sub_266C3A088(v0 + 64, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      v24 = *(v0 + 160);
      sub_266C6F308(v0 + 64);
    }

    v25 = *(v0 + 192);
    sub_266C55488();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_266D2A5A4()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D2A664, 0, 0);
}

uint64_t sub_266D2A664()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = **(v0 + 32);
  type metadata accessor for SetGeoFenceIntent();

  v7 = v6;
  v8 = v5;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v9 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43_4();

  return v10(v9);
}

uint64_t sub_266D2A754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB8B30;
  v1 = sub_266DA7A7C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_266DA7A6C();
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_266DA7A6C();
  return v0;
}

uint64_t sub_266D2A82C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D02CA0;

  return sub_266D2A198();
}

uint64_t sub_266D2A8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D03318;

  return sub_266D2A5A4();
}

unint64_t sub_266D2A990()
{
  result = qword_2800CCCF0;
  if (!qword_2800CCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCCF0);
  }

  return result;
}

unint64_t sub_266D2A9E8()
{
  result = qword_2800CCCF8;
  if (!qword_2800CCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCCF8);
  }

  return result;
}

unint64_t sub_266D2AA40()
{
  result = qword_2800CCD00;
  if (!qword_2800CCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD00);
  }

  return result;
}

void sub_266D2AA94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();

  [a3 setLabel_];
}

uint64_t sub_266D2AAF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v47 - v14;
  v16 = sub_266DA8C4C();
  v53 = v16;
  v54 = &off_28785D468;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, a2, v16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v19 + 8))(v18, v19);
  v20 = sub_266DA8D0C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v20) == 1)
  {
    sub_266C3A088(v15, &unk_2800C95E0, &unk_266DAE370);
  }

  else
  {
    v21 = __swift_project_boxed_opaque_existential_1(v52, v53);
    v22 = sub_266D03560(a4, v21, a3, v15);
    (*(*(v20 - 8) + 8))(v15, v20);
    if (v22)
    {
      type metadata accessor for INFriend();
      v23 = type metadata accessor for Friend();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
      v24 = sub_266C6FCE0(v22, v11);
      goto LABEL_6;
    }
  }

  v24 = 0;
LABEL_6:
  [a4 setFriend_];

  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a4 setNotifyMe_];

  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a4 setNotifyOnce_];

  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  [a4 setAction_];
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  [a4 setTrigger_];
  type metadata accessor for SpeakableLocation();
  v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v36 = sub_266CAB33C(0, 0);
  [a4 setLocation_];

  v37 = [a4 location];
  if (v37)
  {
    v38 = v37;
    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v39);
    (*(v40 + 48))(&v49, v39, v40);
    v41 = v49;
    v42 = v50;
    LOBYTE(v40) = v51;
    v47[1] = v49;
    v47[2] = v50;
    v48 = v51;
    v43 = LocationLabel.rawValue.getter();
    v45 = v44;
    sub_266C17E24(v41, v42, v40);
    sub_266D2AA94(v43, v45, v38);
  }

  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_266D2AF8C(char a1)
{
  if (a1 == 2)
  {
    if (qword_2800C9110 != -1)
    {
      swift_once();
    }

    v1 = sub_266DA94AC();
    __swift_project_value_buffer(v1, &unk_2800E61A8);
    v2 = sub_266DA948C();
    v3 = sub_266DAAB0C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315394;
      *(v4 + 4) = sub_266C22A3C(7104878, 0xE300000000000000, &v9);
      *(v4 + 12) = 1024;
      *(v4 + 14) = 1;
      _os_log_impl(&dword_266C08000, v2, v3, "Location Permission guard skipped. { requiredPrecision: %s, supportedPlatform: %{BOOL}d }", v4, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x26D5F2480](v5, -1, -1);
      MEMORY[0x26D5F2480](v4, -1, -1);
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD08, &qword_266DB8CD8);
    v7 = sub_266D2B318();

    return MEMORY[0x2821BA320](sub_266C34AA0, 0, v6, v7);
  }

  else
  {

    return sub_266D2B15C(a1);
  }
}

uint64_t sub_266D2B15C(char a1)
{
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, &unk_2800E61A8);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = 0x657372616F63;
    if (a1)
    {
      v7 = 0x65736963657270;
    }

    v8 = 0xE600000000000000;
    if (a1)
    {
      v8 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v9 = 7104878;
    }

    else
    {
      v9 = v7;
    }

    if (a1 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_266C22A3C(v9, v10, &v13);

    *(v5 + 4) = v11;
    *(v5 + 12) = 1024;
    *(v5 + 14) = 1;
    _os_log_impl(&dword_266C08000, v3, v4, "Location Permission guard applied. { requiredPrecision: %s, supportedPlatform: %{BOOL}d }", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D5F2480](v6, -1, -1);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  return MEMORY[0x2821BA2C0](a1 & 1);
}

unint64_t sub_266D2B318()
{
  result = qword_2800CCD10;
  if (!qword_2800CCD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CCD08, &qword_266DB8CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD10);
  }

  return result;
}

uint64_t static FMFPunchOutProvider.getPunchOurURL(friendId:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_266DA737C();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_44();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  if (qword_2800C94A0 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  __swift_project_value_buffer(v10, qword_2800E6560);
  v19 = OUTLINED_FUNCTION_2_47();
  v3(v19);
  (v3)(v2, v18, v10);
  if (a1)
  {

    sub_266DA733C();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v20, 1, v10);
  v21 = *(v13 + 8);
  v21(v2, v10);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v13 + 32))(a2, v18, v10);
    result = __swift_getEnumTagSinglePayload(v9, 1, v10);
    if (result != 1)
    {
      return sub_266C2A858(v9);
    }
  }

  else
  {
    v21(v18, v10);
    return (*(v13 + 32))(a2, v9, v10);
  }

  return result;
}

id sub_266D2B5D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_266DA737C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_44();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  if (qword_2800C94A0 != -1)
  {
    OUTLINED_FUNCTION_0_63();
  }

  __swift_project_value_buffer(v9, qword_2800E6560);
  v21 = OUTLINED_FUNCTION_2_47();
  v3(v21);
  (v3)(v2, v18, v9);
  if (a2)
  {

    sub_266DA733C();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v22, 1, v9);
  v23 = *(v12 + 8);
  v23(v2, v9);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    (*(v12 + 32))(v20, v18, v9);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_266C2A858(v8);
    }
  }

  else
  {
    v23(v18, v9);
    (*(v12 + 32))(v20, v8, v9);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v25 = sub_266DA732C();
  [v24 setPunchOutUri_];

  v23(v20, v9);
  return v24;
}

_BYTE *storeEnumTagSinglePayload for FMFPunchOutProvider(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_63()
{

  return swift_once();
}

uint64_t Snippets.SetGeoFenceConfirmation.init(contact:notifyTitle:notifyMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_266D2B9FC(a1, a6);
  result = type metadata accessor for Snippets.SetGeoFenceConfirmation();
  v12 = (a6 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = (a6 + *(result + 24));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_266D2B9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.Contact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Snippets.SetGeoFenceConfirmation()
{
  result = qword_2800CCD40;
  if (!qword_2800CCD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D2BAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.Contact();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Snippets.SetGeoFenceConfirmation.notifyTitle.modify())(void, void)
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Snippets.SetGeoFenceConfirmation() + 20);
  return nullsub_1;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Snippets.SetGeoFenceConfirmation.notifyMessage.modify())(void, void)
{
  OUTLINED_FUNCTION_7_8();
  v0 = *(type metadata accessor for Snippets.SetGeoFenceConfirmation() + 24);
  return nullsub_1;
}

uint64_t static Snippets.SetGeoFenceConfirmation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Snippets.Contact();
  v7 = *(v6 + 24);
  if ((sub_266DA748C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(*(v6 + 28));
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
  OUTLINED_FUNCTION_0_64(*(v11 + 20));
  v14 = v4 && v12 == v13;
  if (!v14 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(*(v11 + 24));
  if (v4 && v15 == v16)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266D2BE18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6954796669746F6ELL && a2 == 0xEB00000000656C74;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x654D796669746F6ELL && a2 == 0xED00006567617373)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

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

uint64_t sub_266D2BF34(char a1)
{
  if (!a1)
  {
    return 0x746361746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6954796669746F6ELL;
  }

  return 0x654D796669746F6ELL;
}

uint64_t sub_266D2BFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D2BE18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D2BFD0(uint64_t a1)
{
  v2 = sub_266D2C21C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D2C00C(uint64_t a1)
{
  v2 = sub_266D2C21C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.SetGeoFenceConfirmation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD18, &qword_266DB8D00);
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D2C21C();
  sub_266DAB36C();
  v24[15] = 0;
  type metadata accessor for Snippets.Contact();
  OUTLINED_FUNCTION_1_45();
  sub_266D2C6E4(v14, v15);
  sub_266DAB11C();
  if (!v2)
  {
    v16 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
    v17 = (v3 + *(v16 + 20));
    v18 = *v17;
    v19 = v17[1];
    v24[14] = 1;
    sub_266DAB0EC();
    v20 = (v3 + *(v16 + 24));
    v21 = *v20;
    v22 = v20[1];
    v24[13] = 2;
    sub_266DAB0EC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_266D2C21C()
{
  result = qword_2800CCD20;
  if (!qword_2800CCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD20);
  }

  return result;
}

uint64_t Snippets.SetGeoFenceConfirmation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34[0] = a2;
  v4 = type metadata accessor for Snippets.Contact();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD28, &qword_266DB8D08);
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v34[1] = v11;
  v34[2] = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D2C21C();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = 0;
  OUTLINED_FUNCTION_1_45();
  sub_266D2C6E4(v21, v22);
  sub_266DAB05C();
  sub_266D2B9FC(v35, v19);
  v37 = 1;
  v23 = sub_266DAB01C();
  v24 = &v19[*(v14 + 20)];
  *v24 = v23;
  v24[1] = v25;
  v36 = 2;
  v26 = sub_266DAB01C();
  v35 = v27;
  v28 = v26;
  v29 = OUTLINED_FUNCTION_2_48();
  v30(v29);
  v31 = &v19[*(v14 + 24)];
  v32 = v35;
  *v31 = v28;
  *(v31 + 1) = v32;
  sub_266D2C5A0(v19, v34[0], type metadata accessor for Snippets.SetGeoFenceConfirmation);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_266D2C600();
}

uint64_t sub_266D2C5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266D2C600()
{
  v1 = OUTLINED_FUNCTION_7_8();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_266D2C6E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266D2C788()
{
  result = type metadata accessor for Snippets.Contact();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s23SetGeoFenceConfirmationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D2C8E4()
{
  result = qword_2800CCD50;
  if (!qword_2800CCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD50);
  }

  return result;
}

unint64_t sub_266D2C93C()
{
  result = qword_2800CCD58;
  if (!qword_2800CCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD58);
  }

  return result;
}

unint64_t sub_266D2C994()
{
  result = qword_2800CCD60;
  if (!qword_2800CCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_64@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t sub_266D2CA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = sub_266DA716C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_266DA715C();
    sub_266DA714C();
    if (a3)
    {
      MEMORY[0x26D5EDA90](0x72756769666E6F63, 0xE900000000000065);
      v33 = 47;
      v34 = 0xE100000000000000;
      MEMORY[0x26D5F1170](a1, a2);
      v19 = v33;
      v20 = v34;
    }

    else
    {
      MEMORY[0x26D5EDA90](0x737361707962, 0xE600000000000000);
      v20 = 0xE700000000000000;
      v19 = 0x6563697665642FLL;
    }

    MEMORY[0x26D5EDAA0](v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA758, &qword_266DB1980);
    v25 = *(sub_266DA70FC() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_266DAE4A0;
    sub_266DA70EC();
    sub_266DA710C();
    sub_266DA711C();
    v28 = sub_266DA737C();
    OUTLINED_FUNCTION_1_46(v13);
    if (v29)
    {
      if (a3)
      {
        if (qword_2800C93A0 != -1)
        {
          swift_once();
        }

        v30 = qword_2800E6408;
      }

      else
      {
        if (qword_2800C93A8 != -1)
        {
          swift_once();
        }

        v30 = qword_2800E6420;
      }

      __swift_project_value_buffer(v28, v30);
      OUTLINED_FUNCTION_0_65();
      (*(v32 + 16))(a4);
      (*(v15 + 8))(v18, v14);
      result = OUTLINED_FUNCTION_1_46(v13);
      if (!v29)
      {
        return sub_266C2A858(v13);
      }
    }

    else
    {
      (*(v15 + 8))(v18, v14);
      OUTLINED_FUNCTION_0_65();
      return (*(v31 + 32))(a4, v13, v28);
    }
  }

  else
  {
    if (qword_2800C9398 != -1)
    {
      swift_once();
    }

    v21 = sub_266DA737C();
    __swift_project_value_buffer(v21, qword_2800E63F0);
    OUTLINED_FUNCTION_0_65();
    v23 = *(v22 + 16);

    return v23(a4);
  }

  return result;
}

uint64_t sub_266D2CE90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_266DA737C();
  __swift_allocate_value_buffer(v4, qword_2800E63F0);
  v5 = __swift_project_value_buffer(v4, qword_2800E63F0);
  sub_266DA736C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_266D2CFBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v5, qword_2800E6420);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v9 = *(v8 + 32);
    v10 = OUTLINED_FUNCTION_2_49();
    return v11(v10);
  }

  return result;
}

uint64_t sub_266D2D09C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v8, a2);
  OUTLINED_FUNCTION_4_38();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v2);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v12 = *(v11 + 32);
    v13 = OUTLINED_FUNCTION_2_49();
    return v14(v13);
  }

  return result;
}

uint64_t sub_266D2D168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v5, qword_2800E6450);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v9 = *(v8 + 32);
    v10 = OUTLINED_FUNCTION_2_49();
    return v11(v10);
  }

  return result;
}

uint64_t sub_266D2D230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v5, qword_2800E6468);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v9 = *(v8 + 32);
    v10 = OUTLINED_FUNCTION_2_49();
    return v11(v10);
  }

  return result;
}

uint64_t sub_266D2D2F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v5, qword_2800E6480);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v9 = *(v8 + 32);
    v10 = OUTLINED_FUNCTION_2_49();
    return v11(v10);
  }

  return result;
}

uint64_t sub_266D2D3C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_266C1CEB4(a1);
    v5 = v4;
    LOBYTE(a1) = sub_266CC7C44();
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_266D2CA28(v3, v5, a1 & 1, a2);

  v6 = sub_266DA737C();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return sub_266DA737C();
}

BOOL sub_266D2D4E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_266D2D590(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_266D2D5F0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCD68);
  v1 = __swift_project_value_buffer(v0, qword_2800CCD68);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D2D6B8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return sub_266D2E454(a1);
  }
}

uint64_t sub_266D2D6E0()
{
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v2 = v0;
    v3 = v0[7];
    v4 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    v1 = (*(v4 + 8))(v3, v4);
    v5 = v0[2];
    v2[2] = v1;
  }

  return v1;
}

uint64_t sub_266D2D76C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_266D2E6E8();
    v1 = v2;
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
  }

  return v1;
}

void *sub_266D2D7C8@<X0>(void *a1@<X8>)
{
  v2 = sub_266D2D6E0();
  if (*(v2 + 16) && (v3 = sub_266D99E08(), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 248 * v3);
    memcpy(__dst, v5, 0xF2uLL);
    memmove(__src, v5, 0xF2uLL);
    nullsub_1(__src, v6);
    sub_266CFBD3C(__dst, v10);

    memcpy(v10, __src, 0xF2uLL);
  }

  else
  {

    sub_266C9D234(v10);
  }

  return memcpy(a1, v10, 0xF2uLL);
}

void sub_266D2D8A4()
{
  OUTLINED_FUNCTION_6();
  v106 = v2;
  v104 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC030, &qword_266DB59D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *&v116 = &v103 - v6;
  v7 = sub_266D2D6E0();
  v9 = v7 + 64;
  v8 = *(v7 + 64);
  v10 = OUTLINED_FUNCTION_5_34(v7);
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v121 = v10;

  v16 = 0;
  v105 = 0;
  v119 = v15;
  v120 = MEMORY[0x277D84F90];
LABEL_2:
  if (v13)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      OUTLINED_FUNCTION_2_50();
LABEL_48:
      v71 = sub_266DA94AC();
      __swift_project_value_buffer(v71, qword_2800CCD68);
      sub_266C233D0(v106, v122);
      v72 = v117;

      v73 = sub_266DA948C();
      v74 = sub_266DAAB0C();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v125[0] = v120;
        *v75 = 136315650;
        *(v75 + 4) = sub_266C22A3C(v0, v72, v125);
        *(v75 + 12) = 2080;
        *v129 = v1;
        *&v129[8] = v121;
        v76 = sub_266DAA72C();
        v78 = sub_266C22A3C(v76, v77, v125);

        *(v75 + 14) = v78;
        *(v75 + 22) = 2080;
        v79 = v123;
        v80 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v81 = sub_266CDA8CC(v79, v80);
        v83 = v82;
        __swift_destroy_boxed_opaque_existential_0(v122);
        v84 = sub_266C22A3C(v81, v83, v125);

        *(v75 + 24) = v84;
        _os_log_impl(&dword_266C08000, v73, v74, "Selected semantic %s with matchType '%s' for device %s", v75, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v122);
      }

      v96 = v128;
      OUTLINED_FUNCTION_17_22();
      *&v125[0] = v0;
      *(&v125[0] + 1) = v72;
      LOBYTE(v125[1]) = v108;
      BYTE1(v125[1]) = v109;
      *(&v125[2] + 8) = v111;
      *(&v125[1] + 8) = v110;
      *(&v125[4] + 8) = v113;
      *(&v125[3] + 8) = v112;
      BYTE8(v125[5]) = v96;
      BYTE9(v125[5]) = v114;
      BYTE10(v125[5]) = v115;
      v125[6] = v116;
      v125[7] = v118;
      *&v125[8] = v119;
      nullsub_1(v125, v97);
      v98 = OUTLINED_FUNCTION_8_18();
      memcpy(v98, v99, 0x102uLL);
      v100 = v104;
      goto LABEL_58;
    }

    if (v17 >= v15)
    {
      break;
    }

    v13 = *(v9 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
LABEL_7:
      OUTLINED_FUNCTION_1_47();
      v19 = v18 | (v16 << 6);
      v20 = (*(v121 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      memcpy(v129, (*(v121 + 56) + 248 * v19), 0xF2uLL);
      v117 = v22;
      *&v131[0] = v22;
      *(&v131[0] + 1) = v21;
      memcpy(&v131[1], v129, 0xF2uLL);
      v23 = *&v129[56];
      *&v118 = v21;
      if (*&v129[56])
      {
        v24 = v106[3];
        v1 = v106[4];
        __swift_project_boxed_opaque_existential_1(v106, v24);
        v25 = *(v1 + 72);

        v26 = OUTLINED_FUNCTION_8_18();
        sub_266CFBD3C(v26, v27);
        v28 = v25(v24, v1);
        v0 = &v103;
        *&v125[0] = v28;
        *(&v125[0] + 1) = v29;
        MEMORY[0x28223BE20](v28);
        v101 = v125;
        v30 = v105;
        LOBYTE(v24) = sub_266D2D4E0(sub_266CAB4BC, (&v103 - 4), v23);
        v105 = v30;

        if (v24)
        {
          v31 = v129[0];
          v32 = *(v23 + 16);
          v33 = 0x4000000000000000;
          goto LABEL_18;
        }
      }

      else
      {

        v34 = OUTLINED_FUNCTION_8_18();
        sub_266CFBD3C(v34, v35);
      }

      if ((v129[72] & 1) == 0)
      {
        v36 = *&v129[64];
        v37 = v106[3];
        v38 = v106[4];
        __swift_project_boxed_opaque_existential_1(v106, v37);
        v39 = (*(v38 + 56))(v37, v38);
        if ((v40 & 1) == 0 && v36 == v39)
        {
          v32 = 0;
          v46 = v129[0] & 1;
LABEL_20:
          v47 = v118;

          v48 = OUTLINED_FUNCTION_8_18();
          sub_266CFBD3C(v48, v49);
          sub_266C3A088(v131, &qword_2800CCD80, &qword_266DB8F58);
          memcpy(v125, v129, 0xF2uLL);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v0 = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_11_23(isUniquelyReferenced_nonNull_native, v51, v52, v120);
            sub_266CFA69C();
            v120 = v57;
          }

          v53 = v120[2];
          if (v53 >= v120[3] >> 1)
          {
            sub_266CFA69C();
            v120 = v58;
          }

          v54 = v120;
          v120[2] = v53 + 1;
          v55 = &v54[35 * v53];
          v55[4] = v117;
          v55[5] = v0;
          memcpy(v55 + 6, v125, 0xF2uLL);
          v56 = WORD2(v122[0]);
          *(v55 + 290) = v122[0];
          *(v55 + 147) = v56;
          v55[37] = v46;
          v55[38] = v32;
          v15 = v119;
          goto LABEL_2;
        }
      }

      if (*&v129[48])
      {
        v125[0] = *&v129[40];
        v41 = v106[3];
        v1 = v106[4];
        __swift_project_boxed_opaque_existential_1(v106, v41);
        v0 = *(v1 + 64);

        v122[0] = (v0)(v41, v1);
        v122[1] = v42;
        v43 = sub_266DA750C();
        v44 = v116;
        __swift_storeEnumTagSinglePayload(v116, 1, 1, v43);
        v101 = sub_266C680F8();
        v102 = v101;
        v45 = sub_266DAACAC();
        sub_266C3A088(v44, &qword_2800CC030, &qword_266DB59D0);

        if (!v45)
        {
          v32 = 0;
          v31 = v129[0];
          v33 = 0x8000000000000000;
LABEL_18:
          v46 = v33 & 0xFFFFFFFFFFFFFFFELL | v31 & 1;
          goto LABEL_20;
        }
      }

      sub_266C3A088(v131, &qword_2800CCD80, &qword_266DB8F58);
      v15 = v119;
      goto LABEL_2;
    }
  }

  v59 = v120;
  v107 = v120[2];
  if (v107)
  {
    memcpy(v131, v120 + 4, 0x118uLL);
    v121 = *&v131[17];
    v117 = *(&v131[0] + 1);
    v60 = *&v131[0];
    v61 = *(&v131[16] + 1);
    v119 = *&v131[8];
    v118 = v131[7];
    v116 = v131[6];
    v114 = BYTE9(v131[5]);
    v115 = BYTE10(v131[5]);
    v62 = BYTE8(v131[5]);
    OUTLINED_FUNCTION_7_27(v131);
    v108 = LOBYTE(v131[1]);
    v109 = BYTE1(v131[1]);
    sub_266D2F478(v131, v129);
    memcpy(v130, &v131[8] + 8, sizeof(v130));
    v63 = 1;
    v64 = 32;
    v103 = 32;
    while (2)
    {
      v1 = v61;
      v65 = v61 & 0xC000000000000000;
      v66 = v61 >> 62;
      v67 = v64 + 280 * v63;
      v68 = v62 & 1;
LABEL_28:
      v128 = v68;
      v0 = v60;
      if (v107 == v63)
      {

        if (qword_2800C93D0 == -1)
        {
          goto LABEL_48;
        }

        goto LABEL_61;
      }

      *&v125[0] = v60;
      *(&v125[0] + 1) = v117;
      LOBYTE(v125[1]) = v108;
      BYTE1(v125[1]) = v109;
      *(&v125[1] + 8) = v110;
      *(&v125[2] + 8) = v111;
      *(&v125[3] + 8) = v112;
      *(&v125[4] + 8) = v113;
      BYTE8(v125[5]) = v128;
      BYTE9(v125[5]) = v114;
      BYTE10(v125[5]) = v115;
      v125[6] = v116;
      v125[7] = v118;
      *&v125[8] = v119;
      OUTLINED_FUNCTION_17_22();
      v126 = v1;
      v127 = v121;
      if (v63 >= v59[2])
      {
        goto LABEL_60;
      }

      memcpy(v129, v59 + v67, sizeof(v129));
      v61 = *&v129[264];
      v69 = *&v129[272];
      if (*&v129[264] >> 62)
      {
        if (*&v129[264] >> 62 == 1)
        {
          if (v65 == 0x4000000000000000)
          {
            if (((*&v129[264] ^ v1) & 1) == 0)
            {
              if (*&v129[272] < v121)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }

            goto LABEL_40;
          }

          v70 = 1;
LABEL_44:
          if (v70 < v66)
          {
LABEL_46:
            sub_266D2F478(v129, v122);
            sub_266C3A088(v125, &qword_2800CC850, &unk_266DB6C20);
            v60 = *v129;
            v117 = *&v129[8];
            v119 = *&v129[128];
            v118 = *&v129[112];
            v116 = *&v129[96];
            v114 = v129[89];
            v115 = v129[90];
            v62 = v129[88];
            OUTLINED_FUNCTION_7_27(v129);
            v108 = v129[16];
            v109 = v129[17];
            memcpy(v130, &v129[136], sizeof(v130));
            ++v63;
            v121 = v69;
            v59 = v120;
            v64 = v103;
            continue;
          }

          goto LABEL_45;
        }

        if (v65 != 0x8000000000000000)
        {
          v70 = 2;
          goto LABEL_44;
        }
      }

      else if (v66)
      {
        v70 = 0;
        goto LABEL_44;
      }

      break;
    }

    if (((*&v129[264] ^ v1) & 1) == 0)
    {
LABEL_45:
      v67 += 280;
      ++v63;
      v59 = v120;
      goto LABEL_28;
    }

LABEL_40:
    if (v129[264])
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (qword_2800C93D0 != -1)
  {
    OUTLINED_FUNCTION_2_50();
  }

  v85 = sub_266DA94AC();
  __swift_project_value_buffer(v85, qword_2800CCD68);
  sub_266C233D0(v106, v131);
  v86 = sub_266DA948C();
  v87 = sub_266DAAAFC();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v129 = v89;
    *v88 = 136315138;
    v90 = *(&v131[1] + 1);
    v91 = *&v131[2];
    __swift_project_boxed_opaque_existential_1(v131, *(&v131[1] + 1));
    v92 = sub_266CDA8CC(v90, v91);
    v94 = v93;
    __swift_destroy_boxed_opaque_existential_0(v131);
    v95 = sub_266C22A3C(v92, v94, v129);

    *(v88 + 4) = v95;
    _os_log_impl(&dword_266C08000, v86, v87, "Could not find a mapping for device: %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v131);
  }

  v100 = v104;
  sub_266D2F4E8(v129);
LABEL_58:
  memcpy(v100, v129, 0x102uLL);
  OUTLINED_FUNCTION_5();
}

void sub_266D2E318()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  sub_266D2D8A4();
  if (sub_266D2F434(__src) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    memcpy(__dst, __src, 0x102uLL);
    v5 = __dst[1];
    v11 = __dst[16];
    if (__dst[16])
    {
      v18 = __dst[15];

      v5 = v11;
    }

    else
    {
      v18 = __dst[0];
    }

    v6 = __dst[5];
    v7 = __dst[6];
    v12 = v1[3];
    v13 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v12);
    v14 = *(v13 + 56);

    v15 = v14(v12, v13);
    v8 = sub_266D2D6B8(v15, v16 & 1);
    v9 = v17;
    sub_266C9D124(&__dst[2]);
    v10 = BYTE1(__dst[11]) & 1 | ((BYTE2(__dst[11]) & 1) << 8);
    v4 = v18;
  }

  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  *(v3 + 32) = v8;
  *(v3 + 40) = v9;
  *(v3 + 48) = v10;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D2E454(uint64_t a1)
{
  v2 = sub_266D2D76C();
  if (*(v2 + 16) && (v3 = sub_266D99F28(a1), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_266D2E4C8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = sub_266D2D6E0();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v4 + 64;
  v10 = v8 & *(v4 + 64);
  v11 = (v7 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(v5 + 56) + 248 * (v13 | (v6 << 6));
    v15 = *(v14 + 88);
    if (v15)
    {
      v16 = *(v14 + 64);
      v17 = *(v14 + 72);
      v18 = *(v14 + 80) == v3 && v15 == v1;
      if (v18 || (sub_266DAB17C() & 1) != 0)
      {
LABEL_15:

        OUTLINED_FUNCTION_5();
        return;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_15;
    }

    v10 = *(v9 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_266D2E5D8()
{
  v0 = sub_266D2D6E0();
  if (*(v0 + 16) && (v1 = sub_266D99E08(), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 248 * v1);
    memcpy(__dst, v3, 0xF2uLL);
    memmove(__src, v3, 0xF2uLL);
    sub_266CFBD3C(__dst, v7);

    nullsub_1(__src, v4);
  }

  else
  {

    sub_266C9D234(__src);
  }

  memcpy(__dst, __src, 0xF2uLL);
  if (sub_266C9D0E0(__dst) == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = __src[8];
  }

  memcpy(v7, __src, 0xF2uLL);
  sub_266C3A088(v7, &unk_2800CAF18, &qword_266DB8F70);
  return v5;
}

void sub_266D2E6E8()
{
  OUTLINED_FUNCTION_6();
  v0 = sub_266D2D6E0();
  v1 = v0[8];
  OUTLINED_FUNCTION_5_34(v0);
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v7 = 0;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v7;
    if (!v4)
    {
      break;
    }

LABEL_6:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (v0[6] + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    memcpy(__dst, (v0[7] + 248 * v10), 0xF2uLL);
    v27[0] = v12;
    v27[1] = v13;
    memcpy(v28, __dst, sizeof(v28));
    if (__dst[9])
    {

      sub_266CFBD3C(__dst, v25);
      sub_266C3A088(v27, &qword_2800CCD80, &qword_266DB8F58);
    }

    else
    {
      v23 = __dst[8];
      if (__dst[14])
      {
        v12 = __dst[13];
        v22 = __dst[14];
      }

      else
      {

        v22 = v13;
      }

      sub_266CFBD3C(__dst, v25);

      sub_266C3A088(v27, &qword_2800CCD80, &qword_266DB8F58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_11_23(isUniquelyReferenced_nonNull_native, v15, v16, v24);
        sub_266CFA92C();
        v24 = v20;
      }

      v17 = *(v24 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v24 + 24) >> 1)
      {
        sub_266CFA92C();
        v18 = v17 + 1;
        v24 = v21;
      }

      *(v24 + 16) = v18;
      v19 = (v24 + 24 * v17);
      v19[4] = v23;
      v19[5] = v12;
      v19[6] = v22;
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      sub_266D2E8FC(v24);
      OUTLINED_FUNCTION_5();
      return;
    }

    v4 = v0[v7 + 8];
    ++v8;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_266D2E8FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD88, &qword_266DB8F60);
    v3 = sub_266DAAF6C();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_266D2F0F4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *sub_266D2E994()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  return v0;
}

uint64_t sub_266D2E9C4()
{
  sub_266D2E994();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_266D2EA1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266DAFA10;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_266D2EA80(uint64_t a1)
{
  OUTLINED_FUNCTION_6_29(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD98, &unk_266DB8F78);
  v27 = v3;
  v8 = sub_266DAAF5C();
  if (!v2[2])
  {
LABEL_30:

    *v1 = v8;
    return;
  }

  OUTLINED_FUNCTION_0_66();
  if (!v4)
  {
LABEL_4:
    v10 = v6;
    while (1)
    {
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v10;
      if (v5[v6])
      {
        OUTLINED_FUNCTION_9_18();
        goto LABEL_9;
      }
    }

    if (v27)
    {
      OUTLINED_FUNCTION_10_18();
      if (v25 != v26)
      {
        *v5 = -1 << v24;
      }

      else
      {
        OUTLINED_FUNCTION_16_16(v24);
      }

      v2[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_1_47();
LABEL_9:
    v11 = v9 | (v6 << 6);
    v12 = *(v2[7] + 8 * v11);
    v28 = *(v2[6] + 16 * v11);
    v13 = *(v2[6] + 16 * v11 + 8);
    if ((v27 & 1) == 0)
    {
    }

    v14 = v8[5];
    sub_266DAB2AC();
    sub_266DAB2CC();
    if (v13)
    {
      sub_266DAA7BC();
    }

    v15 = sub_266DAB2DC();
    OUTLINED_FUNCTION_4_39(v15);
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_22:
    OUTLINED_FUNCTION_3_41(v17);
    *(v23 + 16 * v22) = v28;
    *(v8[7] + 8 * v22) = v12;
    ++v8[2];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v7 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_266D2EC6C(uint64_t a1)
{
  OUTLINED_FUNCTION_6_29(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA240, &qword_266DB02D0);
  v32 = v3;
  v8 = sub_266DAAF5C();
  if (!v2[2])
  {
LABEL_28:

    *v1 = v8;
    return;
  }

  v31 = v2;
  OUTLINED_FUNCTION_0_66();
  if (!v4)
  {
LABEL_4:
    v10 = v6;
    while (1)
    {
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v10;
      if (v5[v6])
      {
        OUTLINED_FUNCTION_9_18();
        goto LABEL_9;
      }
    }

    if (v32)
    {
      OUTLINED_FUNCTION_10_18();
      if (v29 != v30)
      {
        *v5 = -1 << v28;
      }

      else
      {
        OUTLINED_FUNCTION_16_16(v28);
      }

      v2[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_1_47();
LABEL_9:
    v11 = v9 | (v6 << 6);
    v12 = (v2[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v2[7] + v11);
    if ((v32 & 1) == 0)
    {
      v16 = v12[1];
    }

    v17 = v8[5];
    sub_266DAB2AC();
    sub_266DAA7BC();
    v18 = sub_266DAB2DC();
    OUTLINED_FUNCTION_4_39(v18);
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_20:
    OUTLINED_FUNCTION_3_41(v20);
    v27 = (v26 + 16 * v25);
    *v27 = v13;
    v27[1] = v14;
    *(v8[7] + v25) = v15;
    ++v8[2];
    v2 = v31;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (*(v7 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_266D2EE30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD88, &qword_266DB8F60);
  v36 = a2;
  result = sub_266DAAF5C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_266D2EA1C(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = (*(v5 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    if ((v36 & 1) == 0)
    {
    }

    v24 = *(v8 + 40);
    result = sub_266DAB29C();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v8 + 48) + 8 * v28) = v20;
    v33 = (*(v8 + 56) + 16 * v28);
    *v33 = v22;
    v33[1] = v23;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_266D2F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_266DAB17C() & 1;
  }
}

uint64_t sub_266D2F0F4(uint64_t a1, char a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  v6 = 0;
  v47 = *(a1 + 16);
  v7 = (a1 + 48);
  while (1)
  {
    if (v47 == v6)
    {
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v48 = v7;
    v49 = v6;
    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v11 = *v3;
    v12 = sub_266D99F28(v9);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_21;
    }

    v17 = v12;
    v18 = v13;
    v19 = v11[3];

    if (v19 >= v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD90, &qword_266DB8F68);
        sub_266DAAF0C();
      }
    }

    else
    {
      sub_266D2EE30(v16, a2 & 1);
      v20 = *v3;
      v21 = sub_266D99F28(v9);
      if ((v18 & 1) != (v22 & 1))
      {
        goto LABEL_23;
      }

      v17 = v21;
    }

    v23 = *v3;
    if (v18)
    {
      v24 = (v23[7] + 16 * v17);
      v25 = *v24;
      v26 = v24[1];
      v27 = qword_2800C93D0;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_266DA94AC();
      __swift_project_value_buffer(v28, qword_2800CCD68);

      v29 = sub_266DA948C();
      v30 = sub_266DAAAFC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = v25;
        v32 = swift_slowAlloc();
        v50 = v32;
        *v31 = 136315394;
        *(v31 + 4) = sub_266C22A3C(v45, v26, &v50);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_266C22A3C(v8, v10, &v50);
        _os_log_impl(&dword_266C08000, v29, v30, "Multiple semantics list the same category id: [%s, %s], choosing the first one. This can only happen if the DeviceMapping file is wrong.", v31, 0x16u);
        swift_arrayDestroy();
        v33 = v32;
        v25 = v45;
        MEMORY[0x26D5F2480](v33, -1, -1);
        v34 = v31;
        v5 = a1;
        MEMORY[0x26D5F2480](v34, -1, -1);
      }

      v36 = v48;
      v35 = v49;
      v37 = (v23[7] + 16 * v17);
      v38 = v37[1];
      *v37 = v25;
      v37[1] = v26;
    }

    else
    {
      v23[(v17 >> 6) + 8] |= 1 << v17;
      *(v23[6] + 8 * v17) = v9;
      v39 = (v23[7] + 16 * v17);
      *v39 = v8;
      v39[1] = v10;
      v40 = v23[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_22;
      }

      v23[2] = v42;
      v36 = v48;
      v35 = v49;
    }

    v7 = v36 + 3;
    v6 = v35 + 1;
    a2 = 1;
    v3 = a3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

uint64_t sub_266D2F434(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266D2F478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC850, &unk_266DB6C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_0_66()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_39(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_6_29(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_7_27@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 72);
  *(v1 + 80) = *(a1 + 56);
  *(v1 + 96) = v2;
  v3 = *(a1 + 40);
  result = *(a1 + 24);
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_16@<X0>(uint64_t a1@<X8>)
{

  return sub_266D2EA1C(0, (a1 + 63) >> 6, v1);
}

void *OUTLINED_FUNCTION_17_22()
{

  return memcpy((v0 + 616), (v0 + 1048), 0x7AuLL);
}

uint64_t sub_266D2F6C4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E6498);
  v1 = __swift_project_value_buffer(v0, qword_2800E6498);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D2F78C()
{
  sub_266DA929C();
  result = sub_266DA927C();
  qword_2800E64B0 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FindDevice.FindDeviceFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D2F8DC()
{
  result = qword_2800CCDA0;
  if (!qword_2800CCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCDA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy15SearchCriterionO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xC)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_266D2F94C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF3 && *(a1 + 17))
    {
      v2 = *a1 + 242;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0xD)
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

uint64_t sub_266D2F98C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 16) = 0;
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_266D2F9D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xD)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    LOBYTE(a2) = 13;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_266D2F9F8(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 1:
      OUTLINED_FUNCTION_0_67();
      v63 = *(v62 + 8);
      v64 = OUTLINED_FUNCTION_1_33();
      v66 = v65(v64);
      goto LABEL_32;
    case 2:
      OUTLINED_FUNCTION_0_67();
      v39 = *(v38 + 8);
      v40 = OUTLINED_FUNCTION_1_33();
      v101 = v41(v40);
      v102 = v42;
      sub_266C680F8();
      v43 = OUTLINED_FUNCTION_5_35();
      v45 = v44;

      v108 = v43;
      v109 = v45;
      OUTLINED_FUNCTION_5_35();
      v25 = sub_266DAACBC();
      goto LABEL_55;
    case 3:
      OUTLINED_FUNCTION_0_67();
      v47 = *(v46 + 40);
      v48 = OUTLINED_FUNCTION_1_33();
      v49(v48);
      v50 = sub_266DAA73C();
      v52 = v51;

      if (v50 == sub_266DAA73C() && v52 == v53)
      {

LABEL_52:

        v25 = 1;
        return v25 & 1;
      }

      else
      {
        v55 = sub_266DAB17C();

        return v55 & 1;
      }

    case 4:
      OUTLINED_FUNCTION_4_40();
      v20 = *(v19 + 56);
      v21 = OUTLINED_FUNCTION_3_42();
      v23 = v22(v21) == a3;
      v25 = (v24 & 1) == 0 && v23;
      return v25 & 1;
    case 5:
      v68 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      v69 = 0;
      if (v107)
      {
        v70 = 0;
        if (v102)
        {
          v108 = v101;
          v109 = v102;
          sub_266C680F8();
          v69 = sub_266DAAC6C();
          v70 = v71;
        }
      }

      else
      {
        v70 = 0;
      }

      v108 = a3;
      v109 = a4;
      sub_266C680F8();
      v90 = sub_266DAAC6C();
      if (v70)
      {
        if (v69 == v90 && v70 == v91)
        {
          v25 = 1;
        }

        else
        {
          v25 = sub_266DAB17C();
        }
      }

      else
      {
        v25 = 0;
      }

      if (v107 && (v93 = v104, , sub_266C24A30(&v101), v93))
      {
        v94 = sub_266DAAC6C();
        v96 = v95;
      }

      else
      {
        v94 = 0;
        v96 = 0;
      }

      v97 = sub_266DAAC6C();
      if (v96)
      {
        if (v94 == v97 && v96 == v98)
        {
          v100 = 1;
        }

        else
        {
          v100 = sub_266DAB17C();
        }
      }

      else
      {
        v100 = 0;
      }

      goto LABEL_84;
    case 6:
      v74 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      if (!v107)
      {
        goto LABEL_43;
      }

      if (v102)
      {
        sub_266C680F8();
        sub_266DAAC6C();
        OUTLINED_FUNCTION_6_30();
        sub_266DAAC6C();
        v25 = sub_266D301AC();
      }

      else
      {
        v25 = 0;
      }

      if (v104)
      {
        v101 = v103;
        v102 = v104;
        sub_266C680F8();
        sub_266DAAC6C();

        OUTLINED_FUNCTION_6_30();
        sub_266DAAC6C();
        v100 = sub_266D301AC();

LABEL_84:

        v25 |= v100;
      }

      return v25 & 1;
    case 7:
      v56 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      if (v107 && (v57 = v105, v58 = v106, , sub_266C24A30(&v101), v58))
      {
        v108 = v57;
        v109 = v58;
        sub_266C680F8();
        v59 = sub_266DAAC6C();
        v61 = v60;
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }

      v108 = a3;
      v109 = a4;
      sub_266C680F8();
      v87 = sub_266DAAC6C();
      if (v61)
      {
        if (v59 == v87 && v61 == v88)
        {
          v25 = 1;
        }

        else
        {
          v25 = OUTLINED_FUNCTION_7_28();
        }

LABEL_55:
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_56;
    case 8:
      v84 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      if (v107 && (v85 = v105, v86 = v106, , sub_266C24A30(&v101), v86))
      {
        v108 = v85;
        v109 = v86;
        sub_266C680F8();
        OUTLINED_FUNCTION_5_35();

LABEL_42:
        OUTLINED_FUNCTION_5_35();
        v25 = sub_266D301AC();

LABEL_56:
      }

      else
      {
LABEL_43:
        v25 = 0;
      }

      return v25 & 1;
    case 9:
      OUTLINED_FUNCTION_4_40();
      v35 = *(v34 + 96);
      v36 = OUTLINED_FUNCTION_3_42();
      v25 = v37(v36) ^ a3 ^ 1;
      return v25 & 1;
    case 10:
      OUTLINED_FUNCTION_0_67();
      v76 = *(v75 + 64);
      v77 = OUTLINED_FUNCTION_1_33();
      v66 = v78(v77);
LABEL_32:
      v101 = v66;
      v102 = v67;
      sub_266C680F8();
      v79 = sub_266DAAC6C();
      v81 = v80;

      OUTLINED_FUNCTION_6_30();
      if (v79 == sub_266DAAC6C() && v81 == v82)
      {
        v25 = 1;
      }

      else
      {
        v25 = OUTLINED_FUNCTION_7_28();
      }

      goto LABEL_56;
    case 11:
      OUTLINED_FUNCTION_0_67();
      v15 = *(v14 + 64);
      v16 = OUTLINED_FUNCTION_1_33();
      v101 = v17(v16);
      v102 = v18;
      sub_266C680F8();
      OUTLINED_FUNCTION_5_35();

      OUTLINED_FUNCTION_6_30();
      goto LABEL_42;
    case 12:
      OUTLINED_FUNCTION_4_40();
      v27 = *(v26 + 72);
      v28 = OUTLINED_FUNCTION_3_42();
      v30 = v29(v28);
      v13 = sub_266C50F74(v30, v31, a3);
      goto LABEL_12;
    case 13:
      v72 = a1[3];
      v73 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v72);
      return (*(v73 + 88))(v72, v73) & 1;
    default:
      OUTLINED_FUNCTION_0_67();
      v8 = *(v7 + 16);
      v9 = OUTLINED_FUNCTION_1_33();
      if (v10(v9) == a3 && v11 == a4)
      {
        goto LABEL_52;
      }

      v13 = sub_266DAB17C();
LABEL_12:
      v32 = v13;

      return v32 & 1;
  }
}

uint64_t sub_266D301AC()
{
  sub_266C680F8();
  if (sub_266DAACBC())
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_266DAACBC();
  }

  return v0 & 1;
}

uint64_t sub_266D30258(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_33;
      }

      v6 = a1 == a4;
      return v6 & 1;
    case 5:
      if (a6 != 5)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 6:
      if (a6 == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    case 7:
      if (a6 != 7)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 8:
      if (a6 != 8)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 9:
      if (a6 != 9)
      {
        goto LABEL_33;
      }

      v6 = a4 ^ a1 ^ 1;
      return v6 & 1;
    case 10:
      if (a6 != 10)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 11:
      if (a6 != 11)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 12:
      if (a6 != 12)
      {
        goto LABEL_33;
      }

      return sub_266C65B10(a1, a4);
    case 13:
      if (a6 != 13 || a5 | a4)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    default:
      if (a6)
      {
LABEL_33:
        v6 = 0;
      }

      else
      {
LABEL_26:
        if (a1 != a4 || a2 != a5)
        {
          return sub_266DAB17C();
        }

LABEL_31:
        v6 = 1;
      }

      return v6 & 1;
  }
}

uint64_t OUTLINED_FUNCTION_1_48()
{

  return SFMContactDataProvider.ownerContact(of:)(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return sub_266DAAC6C();
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return sub_266DAB17C();
}

uint64_t sub_266D3047C(void *a1, id a2)
{
  v153 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDC0, &qword_266DB9250);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v124 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDC8, &qword_266DB9258);
  OUTLINED_FUNCTION_4_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v143 = &v124 - v14;
  v15 = sub_266DA9DAC();
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v140 = v17;
  v141 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v142 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  OUTLINED_FUNCTION_4_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25);
  v139 = &v124 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC120, &qword_266DB5C88);
  OUTLINED_FUNCTION_4_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v124 - v31;
  v33 = sub_266DA9BDC();
  v34 = OUTLINED_FUNCTION_0_2(v33);
  v146 = v35;
  v147 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_0_5();
  v144 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  v145 = &v124 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDD0, &qword_266DB9260);
  OUTLINED_FUNCTION_4_3(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v45);
  v47 = &v124 - v46;
  v150 = sub_266DA9E5C();
  v48 = OUTLINED_FUNCTION_0_2(v150);
  v148 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_0_5();
  v138 = v52 - v53;
  MEMORY[0x28223BE20](v54);
  v149 = &v124 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDD8, &qword_266DB9268);
  OUTLINED_FUNCTION_4_3(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v59);
  v61 = &v124 - v60;
  v152 = sub_266DA9E6C();
  v62 = OUTLINED_FUNCTION_0_2(v152);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_0_5();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70);
  v151 = &v124 - v71;
  v72 = [a2 notifyMe];
  if (!v72)
  {
    goto LABEL_11;
  }

  v73 = v72;
  v137 = [v72 BOOLValue];

  v74 = [a2 notifyOnce];
  if (!v74)
  {
    goto LABEL_11;
  }

  v75 = v74;
  v76 = [v74 BOOLValue];

  v77 = [a2 location];
  if (!v77)
  {
    goto LABEL_11;
  }

  v78 = v77;
  v136 = v64;
  sub_266D31128([a2 trigger], v61);
  v79 = v152;
  if (__swift_getEnumTagSinglePayload(v61, 1, v152) == 1)
  {

    sub_266C3A088(v61, &qword_2800CCDD8, &qword_266DB9268);
LABEL_11:
    if (qword_2800C93E8 != -1)
    {
      OUTLINED_FUNCTION_4_41();
    }

    v92 = sub_266DA94AC();
    __swift_project_value_buffer(v92, qword_2800CCDA8);
    v93 = sub_266DA948C();
    v94 = sub_266DAAAEC();
    v95 = os_log_type_enabled(v93, v94);
    v96 = v153;
    if (v95)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_266C08000, v93, v94, "SetGeoFence intent did not have the required fields to create FMFAddLocationAlterAction", v97, 2u);
      MEMORY[0x26D5F2480](v97, -1, -1);
    }

    sub_266C701F4(v96);
    return 0;
  }

  v132 = v76;
  v133 = v9;
  v134 = v2;
  v80 = v136;
  v81 = v151;
  (*(v136 + 32))(v151, v61, v79);
  v82 = v78;
  v135 = a2;
  v83 = [a2 trigger];
  sub_266D3125C(v82, v137, v83, v47);
  v84 = v150;
  if (__swift_getEnumTagSinglePayload(v47, 1, v150) == 1)
  {
    (*(v80 + 8))(v81, v79);

    v85 = &qword_2800CCDD0;
    v86 = &qword_266DB9260;
    v87 = v47;
LABEL_10:
    sub_266C3A088(v87, v85, v86);
    a2 = v135;
    goto LABEL_11;
  }

  v88 = v148;
  v89 = v149;
  (*(v148 + 32))(v149, v47, v84);
  v90 = v82;
  sub_266D314A4(v90, v32);
  v91 = v147;
  if (__swift_getEnumTagSinglePayload(v32, 1, v147) == 1)
  {

    (*(v88 + 8))(v89, v84);
    (*(v136 + 8))(v151, v152);
    v85 = &qword_2800CC120;
    v86 = &qword_266DB5C88;
    v87 = v32;
    goto LABEL_10;
  }

  v131 = v90;
  v101 = v145;
  v100 = v146;
  (*(v146 + 32))(v145, v32, v91);
  v102 = v153[1];
  v130 = *v153;
  v129 = v102;

  sub_266C66C84();
  v128 = v103;
  sub_266C66D88();
  v127 = v104;
  (*(v100 + 16))(v144, v101, v91);
  v105 = v139;
  sub_266DA9BAC();
  v106 = sub_266DA9EBC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, 1, v106);
  v108 = v136;
  if (EnumTagSinglePayload == 1)
  {
    sub_266C3A088(v105, &qword_2800CC028, &qword_266DB59C8);
    v126 = 0;
    v125 = 0;
  }

  else
  {
    v126 = sub_266DA9E8C();
    v125 = v109;
    (*(*(v106 - 8) + 8))(v105, v106);
  }

  v110 = v148;
  (*(v148 + 16))(v138, v149, v150);
  v111 = MEMORY[0x277D07C18];
  if (!v137)
  {
    v111 = MEMORY[0x277D07C10];
  }

  (*(v140 + 104))(v142, *v111, v141);
  v113 = v151;
  v112 = v152;
  (*(v108 + 16))(v69, v151, v152);
  sub_266DA9BEC();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
  sub_266DA9E7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
  v98 = sub_266DA9E1C();

  sub_266C701F4(v153);
  v122 = OUTLINED_FUNCTION_7_29();
  v123(v122);
  (*(v110 + 8))(v149, v150);
  (*(v108 + 8))(v113, v112);
  return v98;
}

uint64_t sub_266D31060()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCDA8);
  v1 = __swift_project_value_buffer(v0, qword_2800CCDA8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D31128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA9E6C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v12 = v11 - v10;
  if ((a1 - 1) >= 3)
  {
    OUTLINED_FUNCTION_43();

    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v4);
  }

  else
  {
    (*(v7 + 104))(v12, **(&unk_279C03600 + a1 - 1), v4);
    (*(v7 + 32))(a2, v12, v4);
    OUTLINED_FUNCTION_59();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  }
}

uint64_t sub_266D3125C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_266DA9E5C();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_5();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v35[-1] - v18;
  sub_266D6CDF4(v35);

  switch(v36)
  {
    case 0:
      v23 = MEMORY[0x277D07C20];
      goto LABEL_19;
    case 1:
      sub_266C23130(v35[0], v35[1], 1);
      v23 = MEMORY[0x277D07C38];
LABEL_19:
      v24 = *v23;
      v25 = *(v11 + 104);
      goto LABEL_20;
    case 2:
      if (LOBYTE(v35[0]) == 2)
      {
        v21 = a3 == 5 || a3 == 2;
        if ((a2 & 1) == 0)
        {
          v21 = a3 == 1;
        }

        if (v21)
        {
          v22 = MEMORY[0x277D07C28];
        }

        else
        {
          v22 = MEMORY[0x277D07C30];
        }

        (*(v11 + 104))(v16, *v22, v8);
        (*(v11 + 32))(v19, v16, v8);
        goto LABEL_21;
      }

      v25 = *(v11 + 104);
      if (v35[0])
      {
        v33 = MEMORY[0x277D07C28];
      }

      else
      {
        v33 = MEMORY[0x277D07C30];
      }

      v24 = *v33;
LABEL_20:
      v25(v19, v24, v8);
LABEL_21:
      (*(v11 + 32))(a4, v19, v8);
      OUTLINED_FUNCTION_59();
      return __swift_storeEnumTagSinglePayload(v26, v27, v28, v8);
  }

  OUTLINED_FUNCTION_43();

  return __swift_storeEnumTagSinglePayload(v30, v31, v32, v8);
}

uint64_t sub_266D314A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCE8, &qword_266DB8B28);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = sub_266DA9A1C();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v61 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDE0, &qword_266DB9270);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDE8, &qword_266DB9278);
  OUTLINED_FUNCTION_4_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  v27 = OUTLINED_FUNCTION_4_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_5();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v58 - v34;
  if ([a1 location])
  {
    sub_266C39CC0(a1, &selRef_fullThoroughfare);
    v59 = a1;
    v60 = a2;
    sub_266DA9C3C();
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    sub_266DA9C5C();
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    sub_266DA9E9C();
    v44 = v59;
    v45 = v61;
    sub_266D31810(v44);
    (*(v13 + 16))(v9, v45, v10);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v10);
    sub_266D319F8(v35, v32);
    sub_266DA9B8C();

    (*(v13 + 8))(v45, v10);
    sub_266C3A088(v35, &qword_2800CC028, &qword_266DB59C8);
    sub_266DA9BDC();
    OUTLINED_FUNCTION_59();
    return __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  }

  else
  {

    sub_266DA9BDC();
    OUTLINED_FUNCTION_43();

    return __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  }
}

void sub_266D31810(void *a1)
{
  sub_266C39CC0(a1, &selRef_country);
  sub_266C39CC0(a1, &selRef_countryCode);
  sub_266C39CC0(a1, &selRef_thoroughfare);
  sub_266C39CC0(a1, &selRef_fullThoroughfare);
  v1 = [a1 locality];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 spokenPhrase];

    sub_266DAA70C();
  }

  v4 = sub_266D31A8C(a1);
  if (v4)
  {
    if (v4[2])
    {
      v6 = v4[4];
      v5 = v4[5];
    }
  }

  sub_266C39CC0(a1, &selRef_administrativeArea);
  sub_266D31A8C(a1);
  sub_266C39CC0(a1, &selRef_fullThoroughfare);
  sub_266DA99DC();
}

uint64_t sub_266D319F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D31A8C(void *a1)
{
  v1 = [a1 areasOfInterest];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA93C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_4_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_29()
{
  result = *(v0 - 184);
  v2 = *(*(v0 - 176) + 8);
  v3 = *(v0 - 168);
  return result;
}

uint64_t sub_266D31B14()
{
  v0 = sub_266DAAF8C();

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

uint64_t sub_266D31B68()
{
  sub_266DA929C();
  result = sub_266DA927C();
  qword_2800E64B8 = result;
  return result;
}

uint64_t sub_266D31BC4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E64C0);
  v1 = __swift_project_value_buffer(v0, qword_2800E64C0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_BYTE *storeEnumTagSinglePayload for SetGeoFence.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D31D6C()
{
  result = qword_2800CCDF0;
  if (!qword_2800CCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCDF0);
  }

  return result;
}

BOOL static LocationPrecision.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 1;
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && *a1 == *a2)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 0;
}

uint64_t sub_266D31E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736963657270 && a2 == 0xE700000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657372616F63 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266D31ECC(char a1)
{
  if (a1)
  {
    return 0x657372616F63;
  }

  else
  {
    return 0x65736963657270;
  }
}

uint64_t sub_266D31F00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000266DC3790 == a2;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266DC37B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

unint64_t sub_266D31FD8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_266D32010(uint64_t a1)
{
  v2 = sub_266D3252C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3204C(uint64_t a1)
{
  v2 = sub_266D3252C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D32090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D31E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D320B8(uint64_t a1)
{
  v2 = sub_266D324D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D320F4(uint64_t a1)
{
  v2 = sub_266D324D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D32138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D31F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D32160(uint64_t a1)
{
  v2 = sub_266D32580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3219C(uint64_t a1)
{
  v2 = sub_266D32580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationPrecision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDF8, &qword_266DB9340);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v35 = v5;
  v36 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE00, &qword_266DB9348);
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v37 = v13;
  v38 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE08, &qword_266DB9350);
  OUTLINED_FUNCTION_0_2(v39);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v27 = *v1;
  v26 = v1[1];
  v28 = *(v1 + 16);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D324D8();
  sub_266DAB36C();
  if (v28)
  {
    v44 = 1;
    sub_266D3252C();
    v30 = v39;
    sub_266DAB08C();
    (*(v35 + 8))(v10, v36);
    return (*(v20 + 8))(v25, v30);
  }

  else
  {
    v43 = 0;
    sub_266D32580();
    v32 = v39;
    sub_266DAB08C();
    v42 = 0;
    v33 = v38;
    v34 = v40;
    sub_266DAB10C();
    if (!v34)
    {
      v41 = 1;
      sub_266DAB10C();
    }

    (*(v37 + 8))(v18, v33);
    return (*(v20 + 8))(v25, v32);
  }
}