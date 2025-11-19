uint64_t sub_268EE4EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_268EE50EC()
{
  v2 = qword_2802DE160;
  if (!qword_2802DE160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE160);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268EE51E4()
{
  v0 = sub_268F872B8();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1650 = v2;
  return result;
}

uint64_t *sub_268EE5224()
{
  if (qword_2802DB7C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1650;
}

uint64_t sub_268EE5284()
{
  v0 = sub_268EE5224();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268EE52BC()
{
  v2 = *(v0 + 152);

  return v2;
}

uint64_t sub_268EE52E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = v7;

  v7[12] = a3;
  sub_268CDE730(a1, v19);
  sub_268CDF978(v19, v7 + 2);
  sub_268CDE730(a2, v18);
  sub_268CDF978(v18, v7 + 7);

  v7[13] = a4;
  sub_268CDE730(a5, v17);
  sub_268CDF978(v17, v7 + 14);

  v7[19] = a6;

  v7[20] = a7;

  __swift_destroy_boxed_opaque_existential_0(a5);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v16;
}

uint64_t sub_268EE5448@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_268F9B284();
  v2 = sub_268DC7CC8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);

  v3 = sub_268EE5224();
  MEMORY[0x277D82BE0](*v3);
  MEMORY[0x277D82BE0](a1);
  sub_268D588E0();
  sub_268F99694();
  v4 = sub_268F996A4();
  return (*(*(v4 - 8) + 56))(a2, 0, 1);
}

uint64_t sub_268EE55B0(uint64_t a1, uint64_t a2)
{
  v3[136] = v2;
  v3[135] = a2;
  v3[134] = a1;
  v3[123] = v3;
  v3[124] = 0;
  v3[125] = 0;
  v3[127] = 0;
  v3[129] = 0;
  v3[130] = 0;
  v3[131] = 0;
  v3[132] = 0;
  v3[133] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[137] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[138] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[139] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[140] = v7;
  v13 = *(v7 - 8);
  v3[141] = v13;
  v8 = *(v13 + 64) + 15;
  v3[142] = swift_task_alloc();
  v9 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[143] = swift_task_alloc();
  v10 = sub_268F99BC4();
  v3[144] = v10;
  v14 = *(v10 - 8);
  v3[145] = v14;
  v15 = *(v14 + 64);
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  v3[124] = a2;
  v3[125] = v2;
  v11 = v3[123];

  return MEMORY[0x2822009F8](sub_268EE5818, 0);
}

uint64_t sub_268EE5818()
{
  v31 = v0[136];
  v0[123] = v0;
  sub_268F9B284();
  v1 = sub_268DC7CC8();
  v30 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v30);
  sub_268CDE730(v31 + 112, (v0 + 93));
  v33 = v0[96];
  v32 = v0[97];
  __swift_project_boxed_opaque_existential_1(v0 + 93, v33);
  v34 = (*(v32 + 56))(v33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 93);
  if (v34)
  {
    v24 = v29[136];
    v25 = v29[135];
    sub_268F9B284();
    v2 = sub_268DC7CC8();
    v23 = *v2;
    MEMORY[0x277D82BE0](*v2);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v23);
    v29[148] = *(v24 + 104);

    v29[149] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
    v28 = sub_268F99B34();
    v29[150] = v28;
    v26 = sub_268F99B44();
    v29[151] = v26;
    v27 = sub_268F99B24();
    v29[152] = v27;
    v3 = swift_task_alloc();
    v29[153] = v3;
    *v3 = v29[123];
    v3[1] = sub_268EE5E6C;

    return sub_268EDBA5C(v28, v26, v27);
  }

  else
  {
    sub_268CDE730(v29[136] + 112, (v29 + 98));
    v21 = v29[101];
    v20 = v29[102];
    __swift_project_boxed_opaque_existential_1(v29 + 98, v21);
    v22 = (*(v20 + 16))(v21);
    __swift_destroy_boxed_opaque_existential_0(v29 + 98);
    if (v22)
    {
      v15 = v29[136];
      v16 = v29[135];
      sub_268F999C4();
      v5 = sub_268F999B4();
      v29[168] = v5;
      v29[129] = v5;
      sub_268F9B284();
      v6 = sub_268DC7CC8();
      v14 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v14);
      v29[169] = *(v15 + 104);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      v19 = sub_268F99B34();
      v29[170] = v19;
      v17 = sub_268F99B44();
      v29[171] = v17;
      v18 = sub_268F99B24();
      v29[172] = v18;
      v7 = swift_task_alloc();
      v29[173] = v7;
      *v7 = v29[123];
      v7[1] = sub_268EE6C34;

      return sub_268ECFB1C(v19, v17, v18);
    }

    else
    {
      v10 = v29[135];
      v29[178] = *(v29[136] + 104);

      v29[179] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
      v11 = sub_268F99B34();
      v29[180] = v11;
      v12 = sub_268F99B44();
      v29[181] = v12;
      v13 = sub_268F99B24();
      v29[182] = v13;
      v8 = swift_task_alloc();
      v29[183] = v8;
      *v8 = v29[123];
      v8[1] = sub_268EE7214;
      v9 = v29[139];

      return sub_268ECB4CC(v9, v11, v12, v13);
    }
  }
}

uint64_t sub_268EE5E6C(uint64_t a1)
{
  v14 = *v2;
  v12 = *v2 + 16;
  v13 = v14 + 123;
  v4 = *(*v2 + 1224);
  v14[123] = *v2;
  v14[154] = a1;
  v14[155] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268EE78D8;
  }

  else
  {
    v9 = *(v12 + 1192);
    v10 = *(v12 + 1184);
    v11 = *(v12 + 1168);

    v5 = *v13;
    v6 = sub_268EE6024;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EE6024()
{
  v1 = v0[154];
  v9 = v0[149];
  v5 = v0[147];
  v6 = v0[143];
  v8 = v0[136];
  v2 = v0[135];
  v0[123] = v0;
  v0[133] = v1;
  sub_268F99804();

  v7 = swift_task_alloc();
  *(v7 + 16) = v8;
  *(v7 + 24) = v2;
  sub_268F99B94();

  v0[156] = *(v8 + 104);

  v11 = sub_268F99B34();
  v0[157] = v11;
  v12 = sub_268F99B44();
  v0[158] = v12;
  v13 = sub_268F99B24();
  v0[159] = v13;
  v3 = swift_task_alloc();
  *(v10 + 1280) = v3;
  *v3 = *(v10 + 984);
  v3[1] = sub_268EE61D8;

  return sub_268ED9CC4(v10 + 168, v11, v12, v13);
}

uint64_t sub_268EE61D8()
{
  v12 = *v1;
  v10 = *v1 + 16;
  v11 = (v12 + 984);
  v2 = *(*v1 + 1280);
  *(v12 + 984) = *v1;
  *(v12 + 1288) = v0;

  if (v0)
  {
    v5 = *v11;
    v4 = sub_268EE7A80;
  }

  else
  {
    v7 = *(v10 + 1248);
    v8 = *(v10 + 1240);
    v9 = *(v10 + 1232);

    v3 = *v11;
    v4 = sub_268EE6390;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268EE6390()
{
  v0[123] = v0;
  memcpy(v0 + 57, v0 + 21, 0x90uLL);
  memcpy(v0 + 39, v0 + 57, 0x90uLL);
  if (sub_268D34BC0((v0 + 39)) == 1)
  {
    v14 = v21[154];
    sub_268F999C4();
    v21[165] = sub_268F999B4();
    sub_268D29170();
    v15 = sub_268F9B734();
    v13 = v8;
    MEMORY[0x277D82BE0](v14);
    *v13 = v14;
    sub_268CD0F7C();
    v21[166] = v15;
    v16 = (MEMORY[0x277D5BD50] + *MEMORY[0x277D5BD50]);
    v9 = *(MEMORY[0x277D5BD50] + 4);
    v10 = swift_task_alloc();
    v21[167] = v10;
    *v10 = v21[123];
    v10[1] = sub_268EE69AC;
    v11 = v21[147];
    v12 = v21[134];

    return v16(v12, v15, v11);
  }

  else
  {
    v18 = v21[154];
    sub_268F999C4();
    v21[162] = sub_268F999B4();
    sub_268D34CD8(v21 + 39, v21 + 75);
    memcpy(v21 + 2, v21 + 39, 0x90uLL);
    sub_268D34E04((v21 + 2));
    v21[121] = &type metadata for SnippetModels;
    v21[122] = sub_268D34E18();
    v1 = swift_allocObject();
    v21[118] = v1;
    memcpy((v1 + 16), v21 + 2, 0x91uLL);
    sub_268D29170();
    v19 = sub_268F9B734();
    v17 = v2;
    MEMORY[0x277D82BE0](v18);
    *v17 = v18;
    sub_268CD0F7C();
    v21[163] = v19;
    v20 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
    v3 = *(MEMORY[0x277D5BD38] + 4);
    v4 = swift_task_alloc();
    v21[164] = v4;
    *v4 = v21[123];
    v4[1] = sub_268EE66F4;
    v5 = v21[147];
    v6 = v21[134];

    return v20(v6, v21 + 118, v19, v5);
  }
}

uint64_t sub_268EE66F4()
{
  v7 = *v0;
  v5 = (*v0 + 944);
  v1 = *(*v0 + 1312);
  v4 = *(*v0 + 1304);
  v6 = *(*v0 + 1296);
  *(v7 + 984) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v5);

  v2 = *(v7 + 984);

  return MEMORY[0x2822009F8](sub_268EE685C, 0);
}

uint64_t sub_268EE685C()
{
  v8 = v0[154];
  v7 = v0[147];
  v5 = v0[145];
  v6 = v0[144];
  v0[123] = v0;
  sub_268D34F58(v0 + 39);
  (*(v5 + 8))(v7, v6);
  MEMORY[0x277D82BD8](v8);
  v1 = v0[147];
  v9 = v0[146];
  v10 = v0[143];
  v11 = v0[142];
  v12 = v0[139];
  v13 = v0[137];

  v2 = *(v0[123] + 8);
  v3 = v0[123];

  return v2();
}

uint64_t sub_268EE69AC()
{
  v6 = *v0;
  v1 = *(*v0 + 1336);
  v4 = *(*v0 + 1328);
  v5 = *(*v0 + 1320);
  *(v6 + 984) = *v0;

  v2 = *(v6 + 984);

  return MEMORY[0x2822009F8](sub_268EE6B04, 0);
}

uint64_t sub_268EE6B04()
{
  v8 = v0[154];
  v1 = v0[147];
  v2 = v0[145];
  v3 = v0[144];
  v0[123] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v8);
  v4 = v0[147];
  v9 = v0[146];
  v10 = v0[143];
  v11 = v0[142];
  v12 = v0[139];
  v13 = v0[137];

  v5 = *(v0[123] + 8);
  v6 = v0[123];

  return v5();
}

uint64_t sub_268EE6C34(uint64_t a1)
{
  v14 = *v2;
  v12 = *v2 + 16;
  v13 = v14 + 123;
  v4 = *(*v2 + 1384);
  v14[123] = *v2;
  v14[174] = a1;
  v14[175] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268EE7C7C;
  }

  else
  {
    v9 = *(v12 + 1352);
    v10 = *(v12 + 1344);
    v11 = *(v12 + 1336);

    v5 = *v13;
    v6 = sub_268EE6DEC;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EE6DEC()
{
  v14 = MEMORY[0x277D5BD48];
  v1 = v0[174];
  v10 = v0[146];
  v11 = v0[143];
  v13 = v0[136];
  v9 = v0[135];
  v0[123] = v0;
  v0[131] = v1;
  sub_268F99804();

  v12 = swift_task_alloc();
  *(v12 + 16) = v13;
  *(v12 + 24) = v9;
  sub_268F99B94();

  v16 = (v14 + *v14);
  v2 = v14[1];
  v3 = swift_task_alloc();
  v15[176] = v3;
  *v3 = v15[123];
  v3[1] = sub_268EE6F64;
  v4 = v15[174];
  v5 = v15[168];
  v6 = v15[146];
  v7 = v15[134];

  return v16(v7, v4, v6);
}

uint64_t sub_268EE6F64()
{
  v8 = *v1;
  v7 = (v8 + 984);
  v2 = *(*v1 + 1408);
  *(v8 + 984) = *v1;
  *(v8 + 1416) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_268EE7E40;
  }

  else
  {
    v3 = *v7;
    v4 = sub_268EE70D0;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268EE70D0()
{
  v8 = v0[174];
  v9 = v0[168];
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v0[123] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v8);

  v4 = v0[147];
  v10 = v0[146];
  v11 = v0[143];
  v12 = v0[142];
  v13 = v0[139];
  v14 = v0[137];

  v5 = *(v0[123] + 8);
  v6 = v0[123];

  return v5();
}

uint64_t sub_268EE7214()
{
  v8 = *v0;
  v1 = *(*v0 + 1464);
  v4 = *(*v0 + 1456);
  v5 = *(*v0 + 1448);
  v6 = *(*v0 + 1440);
  v7 = *(*v0 + 1424);
  *(v8 + 984) = *v0;

  v2 = *(v8 + 984);

  return MEMORY[0x2822009F8](sub_268EE73AC, 0);
}

uint64_t sub_268EE73AC()
{
  v1 = v0[142];
  v2 = v0[139];
  v3 = v0[138];
  v0[123] = v0;
  sub_268D2DFAC(v3, (v0 + 126), v1);
  v24 = v30[179];
  v27 = v30[136];
  v23 = v30[135];
  v26 = sub_268F99B44();
  v25 = sub_268F99B24();
  v29 = sub_268EE97F4(v26, v25);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v30[127] = v29;
  sub_268CDE730(v27 + 16, (v30 + 103));
  sub_268CDE730(v27 + 16, (v30 + 108));
  v28 = v30[112];
  __swift_project_boxed_opaque_existential_1(v30 + 108, v30[111]);
  sub_268F997C4();
  v30[128] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
  sub_268D34954();
  sub_268D349B8();
  sub_268F9AF84();
  v9 = v30[179];
  v16 = v30[142];
  v17 = v30[140];
  v14 = v30[137];
  v10 = v30[136];
  v8 = v30[135];
  v13 = v30[134];
  v15 = v30[141];
  v12 = sub_268F99B44();
  v11 = sub_268F99B24();
  sub_268EEA2EC(v12, v11, v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v30[113] = 0;
  v30[114] = 0;
  v30[115] = 0;
  v30[116] = 0;
  v30[117] = 0;
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  v13[3] = sub_268F99C74();
  v13[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_268F998D4();

  sub_268D28414(v30 + 113);
  sub_268D34AC0(v14);

  __swift_destroy_boxed_opaque_existential_0(v30 + 108);
  __swift_destroy_boxed_opaque_existential_0(v30 + 103);

  (*(v15 + 8))(v16, v17);
  v4 = v30[147];
  v18 = v30[146];
  v19 = v30[143];
  v20 = v30[142];
  v21 = v30[139];
  v22 = v30[137];

  v5 = *(v30[123] + 8);
  v6 = v30[123];

  return v5();
}

uint64_t sub_268EE78D8()
{
  v1 = v0[152];
  v7 = v0[151];
  v8 = v0[150];
  v9 = v0[148];
  v0[123] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v10 = v0[155];
  v2 = v10;
  v0[132] = v10;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v3 = v0[147];
  v11 = v0[146];
  v12 = v0[143];
  v13 = v0[142];
  v14 = v0[139];
  v15 = v0[137];

  v4 = *(v0[123] + 8);
  v5 = v0[123];

  return v4();
}

uint64_t sub_268EE7A80()
{
  v1 = v0[159];
  v7 = v0[158];
  v8 = v0[157];
  v9 = v0[156];
  v13 = v0[154];
  v11 = v0[147];
  v10 = v0[145];
  v12 = v0[144];
  v0[123] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  (*(v10 + 8))(v11, v12);
  MEMORY[0x277D82BD8](v13);
  v14 = v0[161];
  v2 = v14;
  v0[132] = v14;
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  v3 = v0[147];
  v15 = v0[146];
  v16 = v0[143];
  v17 = v0[142];
  v18 = v0[139];
  v19 = v0[137];

  v4 = *(v0[123] + 8);
  v5 = v0[123];

  return v4();
}

uint64_t sub_268EE7C7C()
{
  v1 = v0[172];
  v7 = v0[171];
  v8 = v0[170];
  v9 = v0[169];
  v0[123] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v10 = v0[175];
  v11 = v0[168];
  v2 = v10;
  v0[130] = v10;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v3 = v0[147];
  v12 = v0[146];
  v13 = v0[143];
  v14 = v0[142];
  v15 = v0[139];
  v16 = v0[137];

  v4 = *(v0[123] + 8);
  v5 = v0[123];

  return v4();
}

uint64_t sub_268EE7E40()
{
  v9 = v0[174];
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v0[123] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v9);
  v10 = v0[177];
  v11 = v0[168];
  v4 = v10;
  v0[130] = v10;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v5 = v0[147];
  v12 = v0[146];
  v13 = v0[143];
  v14 = v0[142];
  v15 = v0[139];
  v16 = v0[137];

  v6 = *(v0[123] + 8);
  v7 = v0[123];

  return v6();
}

uint64_t sub_268EE7FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v9 = a3;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v15 = &v7 - v8;
  v18 = v4;
  v17 = v5;
  v16 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v14 = sub_268F99B44();
  v13 = sub_268F99B24();
  sub_268EEA2EC(v14, v13, v15);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  return sub_268F99BA4();
}

uint64_t sub_268EE8128(uint64_t a1, uint64_t a2)
{
  v3[37] = v2;
  v3[36] = a2;
  v3[35] = a1;
  v3[24] = v3;
  v3[25] = 0;
  v3[26] = 0;
  v3[22] = 0;
  v3[23] = 0;
  v3[29] = 0;
  v3[31] = 0;
  v3[32] = 0;
  v3[33] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[39] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[41] = v7;
  v14 = *(v7 - 8);
  v3[42] = v14;
  v8 = *(v14 + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v10 = sub_268F99BC4();
  v3[45] = v10;
  v15 = *(v10 - 8);
  v3[46] = v15;
  v11 = *(v15 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[25] = a2;
  v3[26] = v2;
  v12 = v3[24];

  return MEMORY[0x2822009F8](sub_268EE8378, 0);
}

uint64_t sub_268EE8378()
{
  v62 = v0[37];
  v1 = v0[36];
  v0[24] = v0;
  sub_268F9B284();
  v2 = sub_268DC7CC8();
  v59 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE168, &unk_268FA9D50);
  v61 = sub_268F99B44();
  v0[27] = v61;
  v60 = sub_268D588E0();
  v3 = SettingIntent.settingIdentifier.getter(v60, &protocol witness table for INSetNumericSettingIntent);
  v0[48] = v4;
  v0[22] = v3;
  v0[23] = v4;
  MEMORY[0x277D82BD8](v61);
  sub_268CDE730(v62 + 112, (v0 + 2));
  v64 = v0[5];
  v63 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v64);
  if (((*(v63 + 16))(v64) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v58 + 2);
LABEL_11:
    v40 = v58[43];
    v36 = v58[40];
    v41 = v58[39];
    v35 = v58[36];
    v39 = *(v58[37] + 104);

    sub_268F99B34();
    v38 = sub_268F99B44();
    v37 = sub_268F99B24();
    sub_268ECE950(v38, v37, v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);

    sub_268D2DFAC(v41, (v58 + 28), v40);
    v32 = v58[37];
    v29 = v58[36];
    v31 = sub_268F99B44();
    v30 = sub_268F99B24();
    v34 = sub_268EE97F4(v31, v30);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    v58[29] = v34;
    sub_268CDE730(v32 + 16, (v58 + 7));
    sub_268CDE730(v32 + 16, (v58 + 12));
    v33 = v58[16];
    __swift_project_boxed_opaque_existential_1(v58 + 12, v58[15]);
    sub_268F997C4();
    v58[30] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
    sub_268D34954();
    sub_268D349B8();
    sub_268F9AF84();
    v23 = v58[43];
    v24 = v58[41];
    v21 = v58[38];
    v17 = v58[37];
    v16 = v58[36];
    v20 = v58[35];
    v22 = v58[42];
    v19 = sub_268F99B44();
    v18 = sub_268F99B24();
    sub_268EEA2EC(v19, v18, v21);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v58[17] = 0;
    v58[18] = 0;
    v58[19] = 0;
    v58[20] = 0;
    v58[21] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v20[3] = sub_268F99C74();
    v20[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v20);
    sub_268F998D4();

    sub_268D28414(v58 + 17);
    sub_268D34AC0(v21);

    __swift_destroy_boxed_opaque_existential_0(v58 + 12);
    __swift_destroy_boxed_opaque_existential_0(v58 + 7);

    (*(v22 + 8))(v23, v24);

    v13 = v58[47];
    v25 = v58[44];
    v26 = v58[43];
    v27 = v58[40];
    v28 = v58[38];

    v14 = *(v58[24] + 8);
    v15 = v58[24];

    return v14();
  }

  v5 = v58[36];
  v56 = sub_268F99B24();
  v57 = [v56 errorDetail];
  if (v57)
  {
    v52 = sub_268F9AE24();
    v53 = v6;
    MEMORY[0x277D82BD8](v57);
    v54 = v52;
    v55 = v53;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v7 = v58[36];
  MEMORY[0x277D82BD8](v56);
  v48 = sub_268F99B44();
  v58[34] = v48;
  v49 = SettingIntent.settingIdentifier.getter(v60, &protocol witness table for INSetNumericSettingIntent);
  v50 = v8;
  MEMORY[0x277D82BD8](v48);
  v51 = sub_268E07564(v54, v55, v49, v50);

  __swift_destroy_boxed_opaque_existential_0(v58 + 2);
  if ((v51 & 1) == 0)
  {
    goto LABEL_11;
  }

  v43 = v58[37];
  v44 = v58[36];
  sub_268F999C4();
  v9 = sub_268F999B4();
  v58[49] = v9;
  v58[31] = v9;
  sub_268F9B284();
  v10 = sub_268DC7CC8();
  v42 = *v10;
  MEMORY[0x277D82BE0](*v10);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v42);
  v58[50] = *(v43 + 104);

  v47 = sub_268F99B34();
  v58[51] = v47;
  v45 = sub_268F99B44();
  v58[52] = v45;
  v46 = sub_268F99B24();
  v58[53] = v46;
  v11 = swift_task_alloc();
  v58[54] = v11;
  *v11 = v58[24];
  v11[1] = sub_268EE8E70;

  return sub_268ED6344(v47, v45, v46);
}

uint64_t sub_268EE8E70(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 432);
  *(v12 + 192) = *v2;
  v13 = (v12 + 192);
  *(v12 + 440) = a1;
  *(v12 + 448) = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268EE9458;
  }

  else
  {
    v9 = *(v12 + 416);
    v10 = *(v12 + 408);
    v11 = *(v12 + 400);

    v5 = *v13;
    v6 = sub_268EE9024;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EE9024()
{
  v14 = MEMORY[0x277D5BD48];
  v1 = v0[55];
  v10 = v0[47];
  v11 = v0[44];
  v13 = v0[37];
  v9 = v0[36];
  v0[24] = v0;
  v0[33] = v1;
  sub_268F99804();

  v12 = swift_task_alloc();
  *(v12 + 16) = v13;
  *(v12 + 24) = v9;
  sub_268F99B94();

  v16 = (v14 + *v14);
  v2 = v14[1];
  v3 = swift_task_alloc();
  v15[57] = v3;
  *v3 = v15[24];
  v3[1] = sub_268EE91A0;
  v4 = v15[55];
  v5 = v15[49];
  v6 = v15[47];
  v7 = v15[35];

  return v16(v7, v4, v6);
}

uint64_t sub_268EE91A0()
{
  v7 = *v1;
  v2 = *(*v1 + 456);
  *(v7 + 192) = *v1;
  v8 = (v7 + 192);
  *(v7 + 464) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268EE962C;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268EE9308;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268EE9308()
{
  v8 = v0[55];
  v9 = v0[49];
  v10 = v0[48];
  v1 = v0[47];
  v2 = v0[46];
  v3 = v0[45];
  v0[24] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v8);

  v4 = v0[47];
  v11 = v0[44];
  v12 = v0[43];
  v13 = v0[40];
  v14 = v0[38];

  v5 = *(v0[24] + 8);
  v6 = v0[24];

  return v5();
}

uint64_t sub_268EE9458()
{
  v1 = v0[53];
  v7 = v0[52];
  v8 = v0[51];
  v9 = v0[50];
  v0[24] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v10 = v0[56];
  v11 = v0[49];
  v12 = v0[48];
  v2 = v10;
  v0[32] = v10;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v3 = v0[47];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[38];

  v4 = *(v0[24] + 8);
  v5 = v0[24];

  return v4();
}

uint64_t sub_268EE962C()
{
  v9 = v0[55];
  v1 = v0[47];
  v2 = v0[46];
  v3 = v0[45];
  v0[24] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v9);
  v10 = v0[58];
  v11 = v0[49];
  v12 = v0[48];
  v4 = v10;
  v0[32] = v10;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v5 = v0[47];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[38];

  v6 = *(v0[24] + 8);
  v7 = v0[24];

  return v6();
}

uint64_t sub_268EE97F4(void *a1, void *a2)
{
  v69[1] = 0;
  v65 = 0;
  v62 = 0;
  v60 = 0;
  v58 = 0;
  v69[3] = a1;
  v69[2] = a2;
  sub_268D34954();
  v69[0] = sub_268F9B734();
  v52 = [a2 errorDetail];
  if (v52)
  {
    v45 = sub_268F9AE24();
    v46 = v2;
    MEMORY[0x277D82BD8](v52);
    v47 = v45;
    v48 = v46;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v44 = sub_268E07564(v47, v48, 0, 0);

  if (v44)
  {
    v22 = [a1 settingMetadata];
    if (v22)
    {
      v19 = [v22 settingId];
      v20._countAndFlagsBits = sub_268F9AE24();
      v20._object = v7;
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v19);
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v66 = v21;
    if (v21._object)
    {
      v67 = v66;
    }

    else
    {
      v67._countAndFlagsBits = sub_268F9AEF4();
      v67._object = v8;
    }

    NumericSettingIdentifier.init(rawValue:)(v67);
    v18 = v68;
    if (v68 != 13)
    {
      v65 = v68;
      v16 = v50[12];

      v64 = v18;
      v17 = sub_268E5787C(&v64);

      if (v17)
      {
        v63 = [a2 updatedValue];
        if (v63)
        {
          v13 = v63;
          MEMORY[0x277D82BE0](v63);
          sub_268D35038(&v63);
          v14 = [v13 value];
          MEMORY[0x277D82BD8](v13);
          v15 = v14;
        }

        else
        {
          sub_268D35038(&v63);
          v15 = 0;
        }

        if (v15)
        {
          v62 = v15;
          v11 = v50[12];

          v61 = v18;
          v12 = sub_268E574DC(&v61);

          if (v12)
          {
            v60 = v12;
            MEMORY[0x277D82BE0](v12);
            v59 = v12;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
            sub_268F9B064();
            MEMORY[0x277D82BD8](v12);
          }

          MEMORY[0x277D82BD8](v15);
        }
      }
    }
  }

  else
  {
    v41 = v50[19];

    v42 = v50[20];

    v43 = [a1 settingMetadata];
    if (v43)
    {
      v36 = [v43 settingId];
      v37 = sub_268F9AE24();
      v38 = v3;
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v36);
      v39 = v37;
      v40 = v38;
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v35 = sub_268F36E44(v42, v39, v40);

    if (v35)
    {
      v58 = v35;
      v34 = sub_268F9B284();
      v4 = sub_268DC7CC8();
      oslog = *v4;
      MEMORY[0x277D82BE0](*v4);
      MEMORY[0x277D82BE0](v35);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      v29 = swift_allocObject();
      *(v29 + 16) = 32;
      v30 = swift_allocObject();
      *(v30 + 16) = 8;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_268D350F4;
      *(v28 + 24) = v27;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_268CD7608;
      *(v31 + 24) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v32 = v5;

      *v32 = sub_268CD7600;
      v32[1] = v29;

      v32[2] = sub_268CD7600;
      v32[3] = v30;

      v32[4] = sub_268CD7614;
      v32[5] = v31;
      sub_268CD0F7C();

      if (os_log_type_enabled(oslog, v34))
      {
        buf = sub_268F9B3A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v25 = sub_268CD5448(0);
        v26 = sub_268CD5448(1);
        v57[0] = buf;
        v56 = v25;
        v55 = v26;
        sub_268CD549C(2, v57);
        sub_268CD549C(1, v57);
        v53 = sub_268CD7600;
        v54 = v29;
        sub_268CD54B0(&v53, v57, &v56, &v55);
        v53 = sub_268CD7600;
        v54 = v30;
        sub_268CD54B0(&v53, v57, &v56, &v55);
        v53 = sub_268CD7614;
        v54 = v31;
        sub_268CD54B0(&v53, v57, &v56, &v55);
        _os_log_impl(&dword_268CBE000, oslog, v34, "HandleNumericSettingFlowStrategy: rendered punchout button: %s", buf, 0xCu);
        sub_268CD54FC(v25);
        sub_268CD54FC(v26);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](oslog);
      MEMORY[0x277D82BE0](v35);
      v57[1] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
      sub_268F9B064();
      MEMORY[0x277D82BD8](v35);
    }

    else
    {
      sub_268F9B284();
      v6 = sub_268DC7CC8();
      v23 = *v6;
      MEMORY[0x277D82BE0](*v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v23);
    }
  }

  v10 = v69[0];

  sub_268CD7930(v69);
  return v10;
}

uint64_t sub_268EEA2EC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v46 = a3;
  v66 = a1;
  v64 = a2;
  v62 = sub_268EEB490;
  v48 = "HandleNumericSettingFlowStrategy: Updating NL context update with undo direct invocation failed.";
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA40, &qword_268F9FFF8);
  v49 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v50 = v13 - v49;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v51 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v52 = v13 - v51;
  v58 = sub_268F999A4();
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v54 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v55 = v13 - v54;
  v82 = v13 - v54;
  v81 = v5;
  v80 = v6;
  v79 = v3;
  v63 = swift_allocBox();
  v59 = v7;
  v78 = v7;
  v60 = *(v56 + 56);
  v61 = v56 + 56;
  v60(v7, 1, 1, v58);
  v65 = *sub_268E04568();

  MEMORY[0x277D82BE0](v64);

  sub_268E04CF8(v66, v64, v62, v63);

  MEMORY[0x277D82BD8](v64);

  v67 = [v66 settingMetadata];
  if (v67)
  {
    v45 = v67;
    v39 = v67;
    v40 = [v67 settingId];
    v41 = sub_268F9AE24();
    v42 = v9;
    MEMORY[0x277D82BD8](v39);
    *&v8 = MEMORY[0x277D82BD8](v40).n128_u64[0];
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v37 = v44;
  v38 = v43;
  if (!v44)
  {
    goto LABEL_18;
  }

  v35 = v38;
  v36 = v37;
  v33 = v37;
  v34 = v38;
  v75 = v38;
  v76 = v37;
  v10 = [v64 oldValue];
  v74 = v10;
  if (v10)
  {
    v29 = &v74;
    v30 = v74;
    MEMORY[0x277D82BE0](v74);
    sub_268D35038(v29);
    v31 = [v30 value];
    MEMORY[0x277D82BD8](v30);
    v32 = v31;
  }

  else
  {
    sub_268D35038(&v74);
    v32 = 0;
  }

  v28 = v32;
  if (!v32)
  {

LABEL_18:
    v13[3] = sub_268F9B284();
    v15 = *sub_268DC7CC8();
    MEMORY[0x277D82BE0](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v14 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v15);
    v16 = &v77;
    swift_beginAccess();
    sub_268EEB498(v59, v46);
    swift_endAccess();
  }

  v27 = v28;
  v22 = v28;
  v73 = v28;
  v25 = v70;
  sub_268CDE730(v47 + 112, v70);
  v24 = v71;
  v23 = v72;
  __swift_project_boxed_opaque_existential_1(v25, v71);
  v26 = (*(v23 + 24))(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  if (v26)
  {
    v21 = &v68;
    swift_beginAccess();
    sub_268EEB498(v59, v52);
    swift_endAccess();
    if ((*(v56 + 48))(v52, 1, v58) != 1)
    {
      (*(v56 + 32))(v55, v52, v58);
      v18 = 0;
      type metadata accessor for UndoNumericSetting();
      sub_268F44B34(v34, v33, v22);
      v11 = *(*(sub_268F99C24() - 8) + 56);
      v19 = 0;
      v20 = 1;
      v11(v50);
      sub_268F99934();
      (*(v56 + 16))(v46, v55, v58);
      v60(v46, v19, v20, v58);
      (*(v56 + 8))(v55, v58);
      MEMORY[0x277D82BD8](v22);
    }

    sub_268D34AC0(v52);
  }

  v17 = &v69;
  swift_beginAccess();
  sub_268EEB498(v59, v46);
  swift_endAccess();
  MEMORY[0x277D82BD8](v22);
}

uint64_t sub_268EEAC9C(const void *a1, uint64_t a2)
{
  v7 = a1;
  v5 = a2;
  v13 = 0;
  v12 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = &v4 - v6;
  v13 = v2;
  v9 = swift_projectBox();
  v12 = v9;
  sub_268EEB498(v7, v8);
  v10 = &v11;
  swift_beginAccess();
  sub_268EEB72C(v8, v9);
  return swift_endAccess();
}

uint64_t sub_268EEAD84()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v3 = v0[19];

  v4 = v0[20];

  return v6;
}

uint64_t sub_268EEAE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C68](a1, a2, v7, a4);
}

uint64_t sub_268EEAF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3D0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C70](a1, a2, v7, a4);
}

uint64_t sub_268EEAFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C48](a1, a2, v7, a4);
}

uint64_t sub_268EEB0A8(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268EE55B0(a1, a2);
}

uint64_t sub_268EEB168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3C0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C60](a1, a2, v7, a4);
}

uint64_t sub_268EEB23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B3B8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for HandleNumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9C58](a1, a2, v7, a4);
}

uint64_t sub_268EEB310(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return sub_268EE8128(a1, a2);
}

uint64_t sub_268EEB3E8(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for HandleNumericSettingFlowStrategy();
  v2 = sub_268EEB5E8();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

void *sub_268EEB498(const void *a1, void *a2)
{
  v6 = sub_268F999A4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_268EEB5E8()
{
  v2 = qword_2802DE170;
  if (!qword_2802DE170)
  {
    type metadata accessor for HandleNumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268EEB668(uint64_t a1)
{
  result = sub_268EEB694();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268EEB694()
{
  v2 = qword_2802DE178;
  if (!qword_2802DE178)
  {
    type metadata accessor for HandleNumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE178);
    return WitnessTable;
  }

  return v2;
}

void *sub_268EEB72C(const void *a1, void *a2)
{
  v7 = sub_268F999A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_268EEB954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  return sub_268EEBF0C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_268EEBA4C()
{
  v2 = *(v0 + qword_280FE37A0);

  return v2;
}

uint64_t sub_268EEBA80@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_280FE3800;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268EEBAEC()
{
  v2 = *(v0 + qword_280FE37C8);

  return v2;
}

uint64_t sub_268EEBB20()
{
  v2 = *(v0 + qword_280FE3808);

  return v2;
}

uint64_t sub_268EEBB54()
{
  v2 = *(v0 + qword_280FE37E0);

  return v2;
}

uint64_t sub_268EEBBB0()
{
  v2 = *(v0 + qword_280FE80B0);

  return v2;
}

uint64_t sub_268EEBBE4()
{
  v2 = *(v0 + qword_280FE80A8);

  return v2;
}

uint64_t sub_268EEBC40()
{
  v2 = *(v0 + qword_280FE37C0);

  return v2;
}

uint64_t sub_268EEBC9C()
{
  v2 = *(v0 + qword_280FE37F8);

  return v2;
}

uint64_t sub_268EEBCD0()
{
  v2 = *(v0 + qword_280FE37A8);

  return v2;
}

uint64_t sub_268EEBD04()
{
  v2 = *(v0 + qword_280FE37B8);

  return v2;
}

uint64_t sub_268EEBD38()
{
  v2 = *(v0 + qword_280FE3818);

  return v2;
}

uint64_t sub_268EEBD6C()
{
  v2 = *(v0 + qword_280FE37E8);

  return v2;
}

uint64_t sub_268EEBDA0()
{
  v2 = *(v0 + qword_280FE37F0);

  return v2;
}

uint64_t sub_268EEBDFC()
{
  v2 = *(v0 + qword_280FE37D8);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t sub_268EEBE60()
{
  v5 = *(*v0 + qword_280FE8090);
  v4 = *(*v0 + qword_280FE8090 + 8);
  v2 = *(v0 + qword_280FE37C8);

  v3 = sub_268F9AA34();

  return v3 & 1;
}

uint64_t sub_268EEBF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v124 = a1;
  v134 = a2;
  v125 = a3;
  v126 = a4;
  v127 = a5;
  v128 = a6;
  v135 = a7;
  v129 = a8;
  v130 = a9;
  v131 = a10;
  v132 = a11;
  v139 = a12;
  v140 = a13;
  v141 = a14;
  v133 = a15;
  v182 = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v142 = *v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v122 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v123 = &v47 - v122;
  v136 = sub_268F9AB24();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v17 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v135);
  v143 = &v47 - v19;
  v184 = *(v142 + qword_280FE8090);
  v183 = *(v142 + qword_280FE8090 + 8);
  v180 = v20;
  v181 = v21;
  v178 = v22;
  v179 = v23;
  v177 = v24;
  v176 = v25;
  v175 = v26;
  v174 = v27;
  v173 = v28;
  v172 = v29;
  v171 = v30;
  v170 = v139;
  v169 = v140;
  v168 = v141;
  v167 = v31;
  v182 = v15;
  v144 = v15;
  if (MEMORY[0x26D62DA00](v18))
  {
    v119 = sub_268F99874();
    v120 = sub_268F9B594();

    v121 = v120;
  }

  else
  {

    v121 = v135;
  }

  v32 = v136;
  v33 = v143;
  v34 = v137;
  v35 = v129;
  *(v144 + qword_280FE37A0) = v121;
  v113 = v182;
  v111 = *(v34 + 16);
  v112 = v34 + 16;
  v111(v33, v35, v32);
  (*(v137 + 32))(v113 + qword_280FE3800, v143, v136);
  v115 = v182;
  sub_268F9AA44();
  v114 = v166;
  sub_268CDE730(v128, v166);
  *(v115 + qword_280FE37C8) = sub_268F9AA14();
  sub_268F9AB14();
  sub_268CDF9B4();
  v118 = sub_268F9B8A4();
  v116 = *(v137 + 8);
  v117 = v137 + 8;
  v116(v143, v136);
  if (v118)
  {
    v87 = v182;
    v107 = 0;
    SettingIntentCATs = type metadata accessor for GetSettingIntentCATs();
    v111(v143, v129, v136);
    v104 = sub_268F9A8C4();
    v85 = v155;
    sub_268CDE730(v128, v155);
    sub_268F9A894();
    *(v87 + qword_280FE3808) = sub_268F9A904();
    v90 = v182;
    SettingIntentCATsSimple = type metadata accessor for GetSettingIntentCATsSimple();
    v111(v143, v129, v136);
    v88 = v154;
    sub_268CDE730(v128, v154);
    sub_268F9A894();
    *(v90 + qword_280FE37E0) = sub_268F9A9F4();
    v93 = v182;
    v92 = type metadata accessor for SettingIntentCATs();
    v111(v143, v129, v136);
    v91 = v153;
    sub_268CDE730(v128, v153);
    sub_268F9A894();
    *(v93 + qword_280FE80B0) = sub_268F9A904();
    v96 = v182;
    v95 = type metadata accessor for SettingIntentCATsSimple();
    v111(v143, v129, v136);
    v94 = v152;
    sub_268CDE730(v128, v152);
    sub_268F9A894();
    *(v96 + qword_280FE80A8) = sub_268F9A9F4();
    v99 = v182;
    v98 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor();
    v111(v143, v129, v136);
    v97 = v150;
    sub_268CDE730(v128, v150);
    sub_268F9A894();
    v36 = sub_268F9A904();
    v151[3] = v98;
    v151[4] = &off_28798CE80;
    v151[0] = v36;
    sub_268CDF978(v151, v99 + qword_280FE37B0);
    v102 = v182;
    v101 = type metadata accessor for SetBinarySettingIntentCATsSimple();
    v111(v143, v129, v136);
    v100 = v149;
    sub_268CDE730(v128, v149);
    sub_268F9A894();
    *(v102 + qword_280FE37C0) = sub_268F9A9F4();
    v106 = v182;
    SettingIntentCATPatternsExecutor = type metadata accessor for GetSettingIntentCATPatternsExecutor();
    v111(v143, v129, v136);
    v103 = v147;
    sub_268CDE730(v128, v147);
    sub_268F9A894();
    v37 = sub_268F9A904();
    v148[3] = SettingIntentCATPatternsExecutor;
    v148[4] = &off_287994088;
    v148[0] = v37;
    sub_268CDF978(v148, v106 + qword_280FE37D0);
    v110 = v182;
    v109 = type metadata accessor for SettingIntentCATPatternsExecutor();
    v111(v143, v129, v136);
    v108 = v145;
    sub_268CDE730(v128, v145);
    sub_268F9A894();
    v38 = sub_268F9A904();
    v146[3] = v109;
    v146[4] = &off_287992048;
    v146[0] = v38;
    sub_268CDF978(v146, v110 + qword_280FE80A0);
  }

  else
  {
    v66 = v182;
    v82 = 0;
    type metadata accessor for GetSettingIntentCATs();
    sub_268CDFA34();
    *(v66 + qword_280FE3808) = sub_268F9A904();
    v69 = v182;
    v68 = type metadata accessor for GetSettingIntentCATsSimple();
    v111(v143, v129, v136);
    v73 = sub_268F9A8C4();
    v67 = v165;
    sub_268CDE730(v128, v165);
    sub_268F9A894();
    *(v69 + qword_280FE37E0) = sub_268F9A9F4();
    v70 = v182;
    type metadata accessor for SettingIntentCATs();
    sub_268CDFA34();
    *(v70 + qword_280FE80B0) = sub_268F9A904();
    v74 = v182;
    v72 = type metadata accessor for SettingIntentCATsSimple();
    v111(v143, v129, v136);
    v71 = v164;
    sub_268CDE730(v128, v164);
    sub_268F9A894();
    *(v74 + qword_280FE80A8) = sub_268F9A9F4();
    v77 = v182;
    v76 = type metadata accessor for SetBinarySettingIntentCATsSimple();
    v111(v143, v129, v136);
    v75 = v163;
    sub_268CDE730(v128, v163);
    sub_268F9A894();
    *(v77 + qword_280FE37C0) = sub_268F9A9F4();
    v79 = v182;
    v78 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor();
    sub_268CDFA34();
    v39 = sub_268F9A904();
    v162[3] = v78;
    v162[4] = &off_28798CE80;
    v162[0] = v39;
    sub_268CDF978(v162, v79 + qword_280FE37B0);
    v81 = v182;
    v80 = type metadata accessor for GetSettingIntentCATPatternsExecutor();
    sub_268CDFA34();
    v40 = sub_268F9A904();
    v161[3] = v80;
    v161[4] = &off_287994088;
    v161[0] = v40;
    sub_268CDF978(v161, v81 + qword_280FE37D0);
    v84 = v182;
    v83 = type metadata accessor for SettingIntentCATPatternsExecutor();
    sub_268CDFA34();
    v41 = sub_268F9A904();
    v160[3] = v83;
    v160[4] = &off_287992048;
    v160[0] = v41;
    sub_268CDF978(v160, v84 + qword_280FE80A0);
  }

  v48 = v182;

  *(v48 + qword_280FE37F8) = v130;
  v49 = v182;

  *(v49 + qword_280FE37A8) = v131;
  v50 = v182;

  *(v50 + qword_280FE37B8) = v132;
  v51 = v182;

  *(v51 + qword_280FE3818) = v139;
  v52 = v182;

  v42 = v128;
  *(v52 + qword_280FE37E8) = v140;
  v53 = v182;
  v54 = v159;
  sub_268CDE730(v42, v159);
  sub_268CDF978(v54, v53 + qword_280FE3810);
  v55 = v182;

  v43 = v133;
  *(v55 + qword_280FE37F0) = v141;
  v56 = v182;
  MEMORY[0x277D82BE0](v43);
  v44 = v127;
  *(v56 + qword_280FE37D8) = v133;
  v57 = v182;
  v58 = v158;
  sub_268CDE730(v44, v158);
  sub_268CDF978(v58, v57 + qword_280FE3820);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
  v61 = 0;
  v60 = sub_268F9B734();
  v59 = type metadata accessor for INIntentSlotValueType();
  sub_268CDFA4C();
  v62 = sub_268F9ADA4();
  v63 = v157;
  sub_268CDE730(v127, v157);
  v64 = v156;
  sub_268CDE730(v128, v156);
  v45 = sub_268F99BD4();
  (*(*(v45 - 8) + 56))(v123, 1);
  v65 = sub_268F99AA4();

  v182 = v65;
  MEMORY[0x277D82BD8](v133);

  v116(v129, v136);

  __swift_destroy_boxed_opaque_existential_0(v128);
  __swift_destroy_boxed_opaque_existential_0(v127);

  return v65;
}

uint64_t sub_268EECD84(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v60 = a1;
  v65 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v54 = "Handling intent in the main process.";
  v55 = &dword_268CBE000;
  v56 = sub_268EEE9B0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v62 = *v5;
  v61 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v63 = (v29 - v61);
  v83 = v6;
  v82 = v7;
  v81 = v8;
  v79 = v9;
  v80 = v10;
  v78 = v5;
  v77 = *(v62 + qword_280FE8090);
  v76 = *(v62 + qword_280FE8090 + 8);
  v64 = *(v5 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v64);
  v66 = [v65 settingMetadata];
  if (v66)
  {
    v52 = v66;
    v46 = v66;
    v47 = [v66 settingId];
    v48 = sub_268F9AE24();
    v49 = v11;
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    v50 = v48;
    v51 = v49;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v68 = v50;
  v69 = v51;
  if (v51)
  {
    v70 = v68;
    v71 = v69;
  }

  else
  {
    v70 = sub_268F9AEF4();
    v71 = v12;
    if (v69)
    {
      sub_268CD9D30(&v68);
    }
  }

  v45 = v71;
  sub_268DE0918(v70, v71, v72);

  MEMORY[0x277D82BD8](v64);
  if (v72[3])
  {
    p_dst = &__dst;
    sub_268CDF978(v72, &__dst);
    v43 = v74;
    v44 = v75;
    __swift_project_boxed_opaque_existential_1(p_dst, v74);
    if ((*(v44 + 16))(v65, v43))
    {
      v37 = *sub_268DC866C();
      MEMORY[0x277D82BE0](v37);
      v35 = sub_268F9B284();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v34 = sub_268F9B734();
      v32 = v13;
      MEMORY[0x277D82BE0](v65);
      v29[1] = &v67;
      v67 = v65;
      v29[0] = sub_268D2E630();
      sub_268D59CAC();
      v30 = sub_268F9AE74();
      v31 = v14;
      v32[3] = MEMORY[0x277D837D0];
      v15 = sub_268CDD224();
      v16 = v30;
      v17 = v31;
      v18 = v32;
      v19 = v15;
      v20 = v34;
      v32[4] = v19;
      *v18 = v16;
      v18[1] = v17;
      sub_268CD0F7C();
      v36 = v20;
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v37);
      v41 = &__dst;
      v38 = v74;
      v39 = v75;
      __swift_project_boxed_opaque_existential_1(&__dst, v74);

      MEMORY[0x277D82BE0](v65);
      v21 = swift_allocObject();
      v22 = v59;
      v23 = v53;
      v24 = v60;
      v25 = v39;
      v26 = v21;
      v27 = v65;
      v40 = v26;
      v26[2] = v58;
      v26[3] = v22;
      v26[4] = v23;
      v26[5] = v24;
      v26[6] = v27;
      (*(v25 + 24))();

      return __swift_destroy_boxed_opaque_existential_0(v41);
    }

    __swift_destroy_boxed_opaque_existential_0(&__dst);
  }

  else
  {
    sub_268D28414(v72);
  }

  sub_268EEE378(v60, v65, v57, v63);
  v58(v63);
  sub_268D28378(v63);
}

uint64_t sub_268EED430(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v42 = a1;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v25 = a5;
  v26 = a6;
  v39 = "Got main process response %@. Handling.";
  v37 = &dword_268CBE000;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v51 = 0;
  v50 = 0;
  v28 = *a4;
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v29 = (v24 - v27);
  v57 = v6;
  v55 = v7;
  v56 = v8;
  v54 = v9;
  v43 = 0;
  v53 = *(v28 + qword_280FE8090);
  v52 = *(v28 + qword_280FE8090 + 8);
  v51 = v10;
  v50 = v11;
  v41 = *sub_268DC866C();
  MEMORY[0x277D82BE0](v41);
  v38 = sub_268F9B284();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v36 = sub_268F9B734();
  v34 = v12;
  MEMORY[0x277D82BE0](v42);
  v31 = &v49;
  v49 = v42;
  v30 = sub_268CDD0DC();
  sub_268CDD1A4();
  v32 = sub_268F9AE74();
  v33 = v13;
  v34[3] = MEMORY[0x277D837D0];
  v14 = sub_268CDD224();
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v14;
  v19 = v36;
  v34[4] = v18;
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  v40 = v19;
  sub_268F9AC04();

  *&v20 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  v21 = [v42 code];
  v46 = &v48;
  v48 = v21;
  v44 = &v47;
  v47 = 3;
  v45 = type metadata accessor for INGetSettingIntentResponseCode();
  sub_268DDD0E4();
  if (sub_268F9B754())
  {

    MEMORY[0x277D82BE0](v42);
    sub_268EEE378(v25, v26, v42, v29);
  }

  else
  {

    MEMORY[0x277D82BE0](v42);
    sub_268EF11E8(v26, v42, v29);
  }

  v22 = MEMORY[0x277D82BD8](v42);
  (v24[0])(v29, v22);
  sub_268D28378(v29);
}

uint64_t sub_268EED844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = v4;
  v5[27] = a4;
  v5[26] = a3;
  v5[25] = a2;
  v5[24] = a1;
  v5[14] = v5;
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = 0;
  v5[18] = 0;
  v5[20] = 0;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = a4;
  v5[18] = v4;
  v6 = v5[14];
  return MEMORY[0x2822009F8](sub_268EED8C8, 0);
}

uint64_t sub_268EED8C8()
{
  v1 = v0[28];
  v34 = v0[26];
  v0[14] = v0;
  v33 = *(v1 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v33);
  v35 = [v34 settingMetadata];
  if (v35)
  {
    v27 = [v35 settingId];
    v28 = sub_268F9AE24();
    v29 = v2;
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v27);
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  *(v32 + 96) = v30;
  *(v32 + 104) = v31;
  if (*(v32 + 104))
  {
    v36 = *(v32 + 96);
    v37 = *(v32 + 104);
  }

  else
  {
    v36 = sub_268F9AEF4();
    v37 = v3;
    if (*(v32 + 104))
    {
      sub_268CD9D30(v32 + 96);
    }
  }

  sub_268DE0918(v36, v37, (v32 + 56));

  MEMORY[0x277D82BD8](v33);
  if (*(v32 + 80))
  {
    v26 = *(v32 + 208);
    sub_268CDF978((v32 + 56), (v32 + 16));
    v24 = *(v32 + 40);
    v25 = *(v32 + 48);
    __swift_project_boxed_opaque_existential_1((v32 + 16), v24);
    v4 = (*(v25 + 16))(v26, v24);
    if (v4)
    {
      v16 = *(v32 + 208);
      v5 = sub_268DC866C();
      v20 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B284();
      *(v32 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v19 = v6;
      MEMORY[0x277D82BE0](v16);
      *(v32 + 152) = v16;
      sub_268D2E630();
      sub_268D59CAC();
      v17 = sub_268F9AE74();
      v18 = v7;
      v19[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      *(v32 + 240) = v8;
      v19[4] = v8;
      *v19 = v17;
      v19[1] = v18;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v20);
      v21 = *(v32 + 40);
      v22 = *(v32 + 48);
      __swift_project_boxed_opaque_existential_1((v32 + 16), v21);
      v23 = (*(v22 + 32) + **(v22 + 32));
      v9 = *(*(v22 + 32) + 4);
      v10 = swift_task_alloc();
      *(v32 + 248) = v10;
      *v10 = *(v32 + 112);
      v10[1] = sub_268EEDEF8;
      v11 = *(v32 + 208);

      return v23(v11, v21, v22);
    }

    __swift_destroy_boxed_opaque_existential_0((v32 + 16));
  }

  else
  {
    sub_268D28414((v32 + 56));
  }

  v13 = *(v32 + 224);
  sub_268EEE378(*(v32 + 200), *(v32 + 208), *(v32 + 216), *(v32 + 192));
  v14 = *(*(v32 + 112) + 8);
  v15 = *(v32 + 112);

  return v14();
}

uint64_t sub_268EEDEF8(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 248);
  *(v6 + 112) = *v1;
  *(v6 + 256) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_268EEE014, 0);
}

uint64_t sub_268EEE014()
{
  v23 = v0[32];
  v19 = v0[30];
  v21 = v0[29];
  v0[14] = v0;
  v0[20] = v23;
  v1 = sub_268DC866C();
  v22 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  sub_268F9B734();
  v20 = v2;
  MEMORY[0x277D82BE0](v23);
  v0[21] = v23;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v3 = sub_268F9AE74();
  v20[3] = MEMORY[0x277D837D0];
  v20[4] = v19;
  *v20 = v3;
  v20[1] = v4;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v22);
  v0[22] = [v23 code];
  v0[23] = 3;
  type metadata accessor for INGetSettingIntentResponseCode();
  sub_268DDD0E4();
  if (sub_268F9B754())
  {
    v17 = v18[32];
    v5 = v18[28];
    v15 = v18[26];
    v16 = v18[25];
    v14 = v18[24];
    MEMORY[0x277D82BE0](v17);
    sub_268EEE378(v16, v15, v17, v14);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v17);
  }

  else
  {
    v13 = v18[32];
    v6 = v18[28];
    v11 = v18[26];
    v12 = v18[25];
    v10 = v18[24];
    MEMORY[0x277D82BE0](v13);
    sub_268EF11E8(v11, v13, v10);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v13);
  }

  __swift_destroy_boxed_opaque_existential_0(v18 + 2);
  v7 = *(v18[14] + 8);
  v8 = v18[14];

  return v7();
}

uint64_t sub_268EEE378@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = *(*v4 + qword_280FE8090);
  v40 = *(*v4 + qword_280FE8090 + 8);
  v36 = sub_268D2E630();
  v37._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v36, &protocol witness table for INGetSettingIntent);
  v37._object = v5;
  if (v5)
  {

    BinarySettingIdentifier.init(rawValue:)(v37);
    if (v39 == 65)
    {

      NumericSettingIdentifier.init(rawValue:)(v37);
      if (v38 == 13)
      {
        v10 = sub_268DC866C();
        v27 = *v10;
        MEMORY[0x277D82BE0](*v10);
        sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v26 = v11;
        MEMORY[0x277D82BE0](a2);
        sub_268D59CAC();
        v24 = sub_268F9AE74();
        v25 = v12;
        v26[3] = MEMORY[0x277D837D0];
        v26[4] = sub_268CDD224();
        *v26 = v24;
        v26[1] = v25;
        sub_268CD0F7C();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v27);
        sub_268D28BD4();
        v13 = swift_allocError();
        *v14 = 1;
        *a4 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_268EEFBC0(a1, a2, a3, a4);
      }
    }

    else
    {
      v6 = sub_268DC7B48();
      v31 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v30 = v7;
      MEMORY[0x277D82BE0](a2);
      sub_268D59CAC();
      v28 = sub_268F9AE74();
      v29 = v8;
      v30[3] = MEMORY[0x277D837D0];
      v30[4] = sub_268CDD224();
      *v30 = v28;
      v30[1] = v29;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v31);
      sub_268EEE9C8(a1, a2, a3, a4);
    }
  }

  else
  {
    v15 = sub_268DC866C();
    v23 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v22 = v16;
    MEMORY[0x277D82BE0](a2);
    sub_268D59CAC();
    v20 = sub_268F9AE74();
    v21 = v17;
    v22[3] = MEMORY[0x277D837D0];
    v22[4] = sub_268CDD224();
    *v22 = v20;
    v22[1] = v21;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v23);
    sub_268D28BD4();
    v18 = swift_allocError();
    *v19 = 2;
    *a4 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268EEE9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v118 = a4;
  v126 = a1;
  v128 = a2;
  v127 = a3;
  v120 = "Providing verbose version of DescribeBinarySettingState CAT for %@.";
  v121 = &dword_268CBE000;
  v122 = "GetSettingIntentResponse response has invalid value %@";
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v149 = 0u;
  v150 = 0u;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v143 = 0;
  v144 = 0;
  v141 = 0;
  v140 = 0;
  v136 = *v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v124 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123);
  v125 = (v43 - v124);
  v157 = v43 - v124;
  v129 = sub_268F9AB24();
  v130 = *(v129 - 8);
  v131 = v129 - 8;
  v133 = *(v130 + 64);
  v132 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v128);
  v134 = v43 - v132;
  v135 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v137 = v43 - v135;
  v156 = v7;
  v155 = v6;
  v154 = v8;
  v153 = v4;
  v152 = *(v136 + qword_280FE8090);
  v151 = *(v136 + qword_280FE8090 + 8);
  *&v138 = sub_268F1A720(v6, v8);
  *(&v138 + 1) = v9;
  *&v139 = v10;
  *(&v139 + 1) = v11;
  if (!v9)
  {
    sub_268D28BD4();
    v43[3] = 1;
    v40 = swift_allocError();
    v41 = v118;
    *v42 = 2;
    *v41 = v40;
    return swift_storeEnumTagMultiPayload();
  }

  v116 = v138;
  v117 = v139;
  v112 = *(&v139 + 1);
  v113 = *(&v138 + 1);
  v114 = v138;
  v149 = v138;
  v150 = v139;
  v115 = sub_268E07A88(v139);
  if (v115 == 2)
  {
    v52 = *sub_268DC866C();
    MEMORY[0x277D82BE0](v52);
    v50 = sub_268F9B294();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v49 = sub_268F9B734();
    v47 = v29;
    MEMORY[0x277D82BE0](v127);
    v44 = &v148;
    v148 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v45 = sub_268F9AE64();
    v46 = v30;
    v47[3] = MEMORY[0x277D837D0];
    v31 = sub_268CDD224();
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v35 = v31;
    v36 = v49;
    v47[4] = v35;
    *v34 = v32;
    v34[1] = v33;
    sub_268CD0F7C();
    v51 = v36;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v52);
    sub_268D28BD4();
    v53 = 1;
    v37 = swift_allocError();
    v38 = v118;
    *v39 = 1;
    *v38 = v37;
    swift_storeEnumTagMultiPayload();
  }

  v111 = v115;
  v103 = v115;
  v147 = v115 & 1;
  v146 = 0;
  v104 = *(v119 + qword_280FE37B8);

  v110 = sub_268F23C10();

  v145 = v110;

  v105 = *(v119 + qword_280FE37A8);

  v106 = sub_268E12F2C();
  v107 = v12;

  v108 = MEMORY[0x26D62DB30](v114, v113, v106, v107);
  v109 = v13;

  v143 = v108;
  v144 = v109;
  MEMORY[0x277D82BE0](v110);
  if (v110)
  {
    v102 = v110;
    v98 = v110;

    v97 = sub_268F9AE14();

    v99 = [v98 integerForKey_];
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    v100 = v99;
    v101 = 0;
  }

  else
  {
    v100 = 0;
    v101 = 1;
  }

  v96 = v100;
  if (v101)
  {
    v94 = 0;
  }

  else
  {
    v95 = v96;
    v93 = v96;
    v140 = v96;
    v91 = *(v119 + qword_280FE37A8);

    v92 = sub_268E12F10();

    if (v93 < v92)
    {
      result = MEMORY[0x277D82BE0](v110);
      if (v110)
      {
        v90 = v110;
        v88 = v110;
        v89 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          __break(1u);
          return result;
        }

        v87 = sub_268F9AE14();

        [v88 setInteger:v89 forKey:v87];
        MEMORY[0x277D82BD8](v87);
        MEMORY[0x277D82BD8](v88);
      }

      v85 = *sub_268DC866C();
      MEMORY[0x277D82BE0](v85);
      v83 = sub_268F9B284();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v82 = sub_268F9B734();
      v80 = v16;

      v80[3] = MEMORY[0x277D837D0];
      v17 = sub_268CDD224();
      v18 = v114;
      v19 = v80;
      v20 = v113;
      v21 = v17;
      v22 = v82;
      v80[4] = v21;
      *v19 = v18;
      v19[1] = v20;
      sub_268CD0F7C();
      v84 = v22;
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v85);
      v146 = 1;
      v86 = 1;
    }

    else
    {
      v86 = 0;
    }

    v94 = v86;
  }

  v23 = v137;
  v70 = v94;
  v24 = sub_268DB98D4();
  v74 = *v24;
  v75 = v24[1];
  v76 = *(v24 + 16);
  v77 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v77);
  (*(v130 + 16))(v23, v119 + qword_280FE3800, v129);
  sub_268F9AB14();
  v73 = sub_268F9AB04();
  v72 = *(v130 + 8);
  v71 = v130 + 8;
  v72(v134, v129);
  v72(v137, v129);
  sub_268DB9934(v74, v75, v76, v77, (v73 ^ 1) & 1);
  MEMORY[0x277D82BD8](v77);

  v142 = 45;
  v25 = BinarySettingIdentifier.rawValue.getter();
  v78 = v26;
  v79 = MEMORY[0x26D62DB50](v114, v113, v25);

  if (v79)
  {
    v65 = *(v119 + qword_280FE3808);

    type metadata accessor for SettingsMultiSetting();

    v64 = sub_268E067CC(v114, v113, v103 & 1);
    v62 = sub_268E07A88(v112);
    v63 = *(v119 + qword_280FE37C8);

    sub_268CDAE64(v64, v62, v70 & 1, v63);

    v27 = sub_268DB98D4();
    v68 = *v27;
    v66 = v27[1];
    v67 = *(v27 + 16);
    v69 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v69);
    sub_268DB9B78(v68, v66, v67, v69);
    MEMORY[0x277D82BD8](v69);
  }

  else
  {
    v141 = v125;
    v57 = *(v119 + qword_280FE3808);

    type metadata accessor for SettingsBinarySetting();

    v56 = SettingsBinarySetting.__allocating_init(settingId:value:)(v114, v113, v103 & 1);
    v54 = sub_268E07A88(v112);
    v55 = *(v119 + qword_280FE37C8);

    sub_268CDA85C(v56, v54, v70 & 1, v55);

    v28 = sub_268DB98D4();
    v60 = *v28;
    v58 = v28[1];
    v59 = *(v28 + 16);
    v61 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v61);
    sub_268DB9B78(v60, v58, v59, v61);
    MEMORY[0x277D82BD8](v61);
  }

  sub_268D28A00(v125, v118);
  sub_268D28378(v125);

  MEMORY[0x277D82BD8](v110);
}

double sub_268EEFA10@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v11 = *(*v4 + qword_280FE8090);
  v10 = *(*v4 + qword_280FE8090 + 8);
  MEMORY[0x277D82BE0](a3);
  [a3 _intentResponseCode];
  MEMORY[0x277D82BD8](a3);
  type metadata accessor for INIntentResponseCode();
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    MEMORY[0x277D82BE0](a3);
    sub_268EEE378(a2, a1, a3, a4);
  }

  else
  {
    MEMORY[0x277D82BE0](a3);
    sub_268EF11E8(a1, a3, a4);
  }

  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_268EEFBC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v151 = a4;
  v160 = a1;
  v162 = a2;
  v161 = a3;
  v153 = "Providing verbose CAT for displayBrightness.";
  v154 = &dword_268CBE000;
  v155 = "Providing spoken-only version of CAT for displayBrightness.";
  v156 = "GetSettingIntentResponse response has invalid value %@";
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v187 = 0;
  v184 = 0;
  v185 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v176 = 0;
  v177 = 0;
  v175 = 0;
  v170 = *v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v158 = (*(*(v157 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v157);
  v159 = (v56 - v158);
  v198 = v56 - v158;
  v163 = sub_268F9AB24();
  v164 = *(v163 - 8);
  v165 = v163 - 8;
  v167 = *(v164 + 64);
  v166 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v162);
  v168 = v56 - v166;
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v171 = v56 - v169;
  v197 = v7;
  v196 = v6;
  v195 = v8;
  v194 = v4;
  v193 = *(v170 + qword_280FE8090);
  v192 = *(v170 + qword_280FE8090 + 8);
  v172 = sub_268F1B14C(v6, v8);
  v173 = v9;
  v174 = v10;
  if (v9)
  {
    v148 = v172;
    v149 = v173;
    v150 = v174;
    v146 = v174;
    v144 = v173;
    v145 = v172;
    v189 = v172;
    v190 = v173;
    v191 = v174;
    MEMORY[0x277D82BE0](v174);
    v147 = [v146 value];
    if (v147)
    {
      v143 = v147;
      v140 = v147;
      v187 = v147;
      MEMORY[0x277D82BD8](v146);

      v186 = 2;
      v11 = NumericSettingIdentifier.rawValue.getter();
      v141 = v12;
      v142 = MEMORY[0x26D62DB50](v145, v144, v11);

      if ((v142 & 1) == 0)
      {
LABEL_21:
        v83 = sub_268E07C44(v162);
        v84 = v20;
        v184 = v83;
        v185 = v20;
        v78 = MEMORY[0x277D837D0];
        v77 = sub_268F9B734();
        v76 = v21;
        v22 = sub_268E42B68();
        v23 = v76;
        *v76 = v22;
        v23[1] = v24;
        v25 = sub_268E42B68();
        v26 = v76;
        v76[2] = v25;
        v26[3] = v27;
        v28 = sub_268E42B68();
        v29 = v76;
        v30 = v28;
        v31 = v77;
        v76[4] = v30;
        v29[5] = v32;
        sub_268CD0F7C();
        v81 = &v183;
        v183 = v31;
        v33 = sub_268F9AE94();
        v80 = v182;
        v182[0] = v33;
        v182[1] = v34;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        sub_268DA6BFC();
        v35 = sub_268F9AFC4();
        v36 = v171;
        v82 = v35;
        sub_268CD9D30(v80);
        sub_268CD7930(v81);
        v91 = 1;
        v181 = v82 & 1;
        v85 = sub_268E42B68();
        v87 = v37;
        v38 = sub_268F9AE94();
        v86 = v39;
        v88 = MEMORY[0x26D62DB50](v85, v87, v38);

        v180 = v88 & 1 & v91;
        v40 = sub_268DB98D4();
        v93 = *v40;
        v94 = v40[1];
        v95 = *(v40 + 16);
        v96 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v96);
        (*(v164 + 16))(v36, v152 + qword_280FE3800, v163);
        sub_268F9AB14();
        v92 = sub_268F9AB04();
        v90 = *(v164 + 8);
        v89 = v164 + 8;
        v90(v168, v163);
        v90(v171, v163);
        sub_268DB9934(v93, v94, v95, v96, (v92 ^ v91) & 1);
        MEMORY[0x277D82BD8](v96);
        v179 = v159;
        v71 = *(v152 + qword_280FE3808);

        type metadata accessor for SettingsNumericSetting();

        MEMORY[0x277D82BE0](v140);
        v70 = SettingsNumericSetting.__allocating_init(settingId:value:)(v145, v144, v140);
        v69 = *(v152 + qword_280FE37C8);

        v67 = *(v152 + qword_280FE3818);

        v68 = sub_268EADBD0();

        sub_268CDB484(v70, v69, v68, v82 & 1, v88 & 1);

        v41 = sub_268DB98D4();
        v74 = *v41;
        v72 = v41[1];
        v73 = *(v41 + 16);
        v75 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v75);
        sub_268DB9B78(v74, v72, v73, v75);
        MEMORY[0x277D82BD8](v75);
        sub_268D28A00(v159, v151);
        sub_268D28378(v159);

        MEMORY[0x277D82BD8](v140);

        return MEMORY[0x277D82BD8](v146);
      }

      v133 = *(v152 + qword_280FE37B8);

      v139 = sub_268F23C10();

      v178 = v139;

      v134 = *(v152 + qword_280FE37A8);

      v135 = sub_268E12F2C();
      v136 = v13;

      v137 = MEMORY[0x26D62DB30](v145, v144, v135, v136);
      v138 = v14;

      v176 = v137;
      v177 = v138;
      MEMORY[0x277D82BE0](v139);
      if (v139)
      {
        v132 = v139;
        v128 = v139;

        v127 = sub_268F9AE14();

        v129 = [v128 integerForKey_];
        MEMORY[0x277D82BD8](v127);
        MEMORY[0x277D82BD8](v128);
        v130 = v129;
        v131 = 0;
      }

      else
      {
        v130 = 0;
        v131 = 1;
      }

      v126 = v130;
      if (v131)
      {
LABEL_20:

        MEMORY[0x277D82BD8](v139);
        goto LABEL_21;
      }

      v125 = v126;
      v124 = v126;
      v175 = v126;
      v122 = *(v152 + qword_280FE37A8);

      v123 = sub_268E12F10();

      if (v124 >= v123)
      {
        v15 = v171;
        v106 = *sub_268DC866C();
        MEMORY[0x277D82BE0](v106);
        v104 = sub_268F9B284();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v114 = 0;
        v105 = sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v106);
        v16 = sub_268DB98D4();
        v110 = *v16;
        v111 = v16[1];
        v112 = *(v16 + 16);
        v113 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v113);
        (*(v164 + 16))(v15, v152 + qword_280FE3800, v163);
        sub_268F9AB14();
        v109 = sub_268F9AB04();
        v108 = *(v164 + 8);
        v107 = v164 + 8;
        v108(v168, v163);
        v108(v171, v163);
        sub_268DB9934(v110, v111, v112, v113, (v109 ^ 1) & 1);
        MEMORY[0x277D82BD8](v113);
        v117 = *(v152 + qword_280FE3808);

        type metadata accessor for SettingsNumericSetting();

        MEMORY[0x277D82BE0](v140);
        v116 = SettingsNumericSetting.__allocating_init(settingId:value:)(v145, v144, v140);
        v115 = *(v152 + qword_280FE37C8);

        sub_268CDB9C4(v116, v115);

        v17 = sub_268DB98D4();
        v120 = *v17;
        v118 = v17[1];
        v119 = *(v17 + 16);
        v121 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v121);
        sub_268DB9B78(v120, v118, v119, v121);
        MEMORY[0x277D82BD8](v121);
        sub_268D28A00(v159, v151);
        sub_268D28378(v159);

        MEMORY[0x277D82BD8](v139);
        MEMORY[0x277D82BD8](v140);

        return MEMORY[0x277D82BD8](v146);
      }

      result = MEMORY[0x277D82BE0](v139);
      if (!v139)
      {
LABEL_17:
        v99 = *sub_268DC866C();
        MEMORY[0x277D82BE0](v99);
        v97 = sub_268F9B284();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v98 = sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v99);
        goto LABEL_20;
      }

      v103 = v139;
      v101 = v139;
      v102 = v124 + 1;
      if (!__OFADD__(v124, 1))
      {

        v100 = sub_268F9AE14();

        [v101 setInteger:v102 forKey:v100];
        MEMORY[0x277D82BD8](v100);
        MEMORY[0x277D82BD8](v101);
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      MEMORY[0x277D82BD8](v146);
      v65 = *sub_268DC866C();
      MEMORY[0x277D82BE0](v65);
      v63 = sub_268F9B294();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v62 = sub_268F9B734();
      v60 = v42;
      MEMORY[0x277D82BE0](v161);
      v57 = &v188;
      v188 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
      v58 = sub_268F9AE64();
      v59 = v43;
      v60[3] = MEMORY[0x277D837D0];
      v44 = sub_268CDD224();
      v45 = v58;
      v46 = v59;
      v47 = v60;
      v48 = v44;
      v49 = v62;
      v60[4] = v48;
      *v47 = v45;
      v47[1] = v46;
      sub_268CD0F7C();
      v64 = v49;
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v65);
      sub_268D28BD4();
      v66 = 1;
      v50 = swift_allocError();
      v51 = v151;
      *v52 = 1;
      *v51 = v50;
      swift_storeEnumTagMultiPayload();

      return MEMORY[0x277D82BD8](v146);
    }
  }

  else
  {
    sub_268D28BD4();
    v56[3] = 1;
    v53 = swift_allocError();
    v54 = v151;
    *v55 = 2;
    *v54 = v53;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_268EF1074(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_280FE8090);
  v20 = *(v13 + qword_280FE8090 + 8);

  sub_268EF11E8(v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

uint64_t sub_268EF11E8@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v27 = *(*v3 + qword_280FE8090);
  v26 = *(*v3 + qword_280FE8090 + 8);
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v19 = [a2 code];
    MEMORY[0x277D82BD8](a2);
    v20 = v19;
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  if (v21)
  {
    v10 = sub_268DC866C();
    v13 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v13);
    sub_268D28BD4();
    v11 = swift_allocError();
    *v12 = 2;
    *a3 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }

  else if (v20 == 6)
  {
    v18 = *(v24 + qword_280FE80B0);

    sub_268F537E4();
  }

  else if (v20 == 7)
  {
    return sub_268EF162C(a1, a2, a3);
  }

  else
  {
    v5 = sub_268DC866C();
    v17 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v16 = v6;
    MEMORY[0x277D82BE0](a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v14 = sub_268F9AE64();
    v15 = v7;
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = sub_268CDD224();
    *v16 = v14;
    v16[1] = v15;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v17);
    sub_268D284D4();
    v8 = swift_allocError();
    *v9 = 7;
    *a3 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268EF162C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v187 = a3;
  v199 = a1;
  v207 = a2;
  v189 = "GetSettingIntentResponse 'other reason' error code contains unsupported error detail: %@";
  v190 = &dword_268CBE000;
  v191 = "GetSettingIntentResponse contains error code 'other reason' but no details: %@";
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v227 = 0;
  v228 = 0;
  v215 = 0;
  v216 = 0;
  v212 = 0;
  v213 = 0;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v205 = *v3;
  v192 = sub_268F9AB24();
  v193 = *(v192 - 8);
  v194 = v192 - 8;
  v195 = (*(v193 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v192);
  v196 = v68 - v195;
  v197 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68 - v195);
  v198 = v68 - v197;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v202 = *(*(v200 - 8) + 64);
  v201 = (v202 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v207);
  v203 = (v68 - v201);
  v204 = (v202 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v206 = (v68 - v204);
  v233 = v68 - v204;
  v232 = v7;
  v231 = v6;
  v230 = v3;
  v229[2] = *(v205 + qword_280FE8090);
  v229[1] = *(v205 + qword_280FE8090 + 8);
  MEMORY[0x277D82BE0](v6);
  if (v207)
  {
    v186 = v207;
    v184 = v207;
    v185 = [v207 errorDetail];
    if (v185)
    {
      v183 = v185;
      v178 = v185;
      v179 = sub_268F9AE24();
      v180 = v8;
      MEMORY[0x277D82BD8](v178);
      v181 = v179;
      v182 = v180;
    }

    else
    {
      v181 = 0;
      v182 = 0;
    }

    v175 = v182;
    v174 = v181;
    MEMORY[0x277D82BD8](v184);
    v176 = v174;
    v177 = v175;
  }

  else
  {
    v176 = 0;
    v177 = 0;
  }

  v172 = v177;
  v173 = v176;
  if (v177)
  {
    v170 = v173;
    v171 = v172;
    v9 = v198;
    v167 = v172;
    v166 = v173;
    v227 = v173;
    v228 = v172;
    v157 = sub_268D28BD4();
    v160 = 1;
    v10 = swift_allocError();
    v11 = v206;
    *v12 = 4;
    *v11 = v10;
    swift_storeEnumTagMultiPayload();
    v13 = sub_268DB98D4();
    v162 = *v13;
    v163 = v13[1];
    v164 = *(v13 + 16);
    v165 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v165);
    (*(v193 + 16))(v9, v188 + qword_280FE3800, v192);
    sub_268F9AB14();
    v161 = sub_268F9AB04();
    v159 = *(v193 + 8);
    v158 = v193 + 8;
    v159(v196, v192);
    v159(v198, v192);
    sub_268DB9934(v162, v163, v164, v165, (v161 ^ v160) & 1);
    MEMORY[0x277D82BD8](v165);

    v14 = sub_268E948B8();
    v168 = v226;
    v226[0] = v14;
    v226[1] = v15;
    v225[2] = v166;
    v225[3] = v167;
    v169 = MEMORY[0x26D62DB50](v14, v15, v166, v167);
    sub_268CD9D30(v168);
    if (v169)
    {

      v156 = [v199 settingMetadata];
      if (v156)
      {
        v155 = v156;
        v149 = v156;
        v150 = [v156 settingId];
        v151 = sub_268F9AE24();
        v152 = v16;
        MEMORY[0x277D82BD8](v149);
        MEMORY[0x277D82BD8](v150);
        v153 = v151;
        v154 = v152;
      }

      else
      {
        v153 = 0;
        v154 = 0;
      }

      v147 = v154;
      v148 = v153;
      if (!v154)
      {
        v133 = 1;
        v17 = swift_allocError();
        v18 = v203;
        *v19 = 2;
        *v18 = v17;
        swift_storeEnumTagMultiPayload();
        sub_268D28630(v203, v206);
        v20 = sub_268DB98D4();
        v136 = *v20;
        v134 = v20[1];
        v135 = *(v20 + 16);
        v137 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v137);
        sub_268DB9B78(v136, v134, v135, v137);
        MEMORY[0x277D82BD8](v137);
        sub_268D28718(v206, v187);
      }

      v145 = v148;
      v146 = v147;
      v143 = v147;
      v144 = v148;
      v208 = v148;
      v209 = v147;
      if (sub_268E07AE4(v148, v147))
      {
        v142 = *(v188 + qword_280FE80B0);

        type metadata accessor for SettingsBinarySetting();

        v141 = SettingsBinarySetting.__allocating_init(settingId:value:)(v144, v143, 0);
        v140 = *(v188 + qword_280FE37C8);

        sub_268F54220(v141, v140, 2);

        sub_268D28630(v203, v206);
      }

      else if (sub_268E07B94(v144, v143))
      {
        v139 = *(v188 + qword_280FE80B0);

        v138 = *(v188 + qword_280FE37C8);

        sub_268F548D0(v138);

        sub_268D28630(v203, v206);
      }
    }

    else
    {

      v22 = sub_268E948B8();
      v131 = v225;
      v225[0] = v22;
      v225[1] = v23;
      v224[2] = v166;
      v224[3] = v167;
      v132 = MEMORY[0x26D62DB50](v22, v23, v166, v167);
      sub_268CD9D30(v131);
      if (v132)
      {

        v214 = v199;
        v24 = sub_268D2E630();
        v129 = SettingIntent.settingIdentifier.getter(v24, &protocol witness table for INGetSettingIntent);
        v130 = v25;
        if (!v25)
        {
          v116 = 1;
          v27 = swift_allocError();
          v28 = v203;
          *v29 = 2;
          *v28 = v27;
          swift_storeEnumTagMultiPayload();
          sub_268D28630(v203, v206);
          v30 = sub_268DB98D4();
          v119 = *v30;
          v117 = v30[1];
          v118 = *(v30 + 16);
          v120 = *sub_268DC7BA8();
          MEMORY[0x277D82BE0](v120);
          sub_268DB9B78(v119, v117, v118, v120);
          MEMORY[0x277D82BD8](v120);
          sub_268D28718(v206, v187);
        }

        v127 = v129;
        v128 = v130;
        v126 = v130;
        v122 = v129;
        v212 = v129;
        v213 = v130;
        v121 = *(v188 + qword_280FE37F8);

        v26._countAndFlagsBits = v122;
        v26._object = v126;
        BinarySettingIdentifier.init(rawValue:)(v26);
        v211[0] = v211[1];
        v123 = sub_268F397B4(v211);

        v210 = v123;
        v125 = *(v188 + qword_280FE3808);

        type metadata accessor for SettingsBinarySetting();

        v124 = SettingsBinarySetting.__allocating_init(settingId:value:)(v122, v126, 0);
        sub_268CDBDD0(v124, v123);

        sub_268D28630(v203, v206);
      }

      else
      {

        v31 = sub_268E948B8();
        v114 = v224;
        v224[0] = v31;
        v224[1] = v32;
        v223[2] = v166;
        v223[3] = v167;
        v115 = MEMORY[0x26D62DB50](v31, v32, v166, v167);
        sub_268CD9D30(v114);
        if (v115)
        {

          v217 = v199;
          v33 = sub_268D2E630();
          v112 = SettingIntent.settingIdentifier.getter(v33, &protocol witness table for INGetSettingIntent);
          v113 = v34;
          if (!v34)
          {
            v101 = 1;
            v35 = swift_allocError();
            v36 = v203;
            *v37 = 2;
            *v36 = v35;
            swift_storeEnumTagMultiPayload();
            sub_268D28630(v203, v206);
            v38 = sub_268DB98D4();
            v104 = *v38;
            v102 = v38[1];
            v103 = *(v38 + 16);
            v105 = *sub_268DC7BA8();
            MEMORY[0x277D82BE0](v105);
            sub_268DB9B78(v104, v102, v103, v105);
            MEMORY[0x277D82BD8](v105);
            sub_268D28718(v206, v187);
          }

          v110 = v112;
          v111 = v113;
          v109 = v113;
          v106 = v112;
          v215 = v112;
          v216 = v113;
          v108 = *(v188 + qword_280FE80B0);

          type metadata accessor for SettingsBinarySetting();

          v107 = SettingsBinarySetting.__allocating_init(settingId:value:)(v106, v109, 0);
          sub_268F5525C(v107);

          sub_268D28630(v203, v206);
        }

        else
        {

          v39 = sub_268E948B8();
          v99 = v223;
          v223[0] = v39;
          v223[1] = v40;
          v222[1] = v166;
          v222[2] = v167;
          v100 = MEMORY[0x26D62DB50](v39, v40, v166, v167);
          sub_268CD9D30(v99);
          if (v100)
          {

            v92 = 0;
            type metadata accessor for SettingIntentCATs();
            sub_268CDFA34();
            v98 = sub_268F9A904();
            v93 = *(v188 + qword_280FE37E8);

            v221 = v199;
            v41 = sub_268D2E630();
            v42 = SettingIntent.deviceCategory.getter(v41, &protocol witness table for INGetSettingIntent);
            v96 = sub_268D3DD54(v42, v43 & 1);

            v97 = v218;
            sub_268CDE730(v188 + qword_280FE3810, v218);
            v95 = v219;
            v94 = v220;
            __swift_project_boxed_opaque_existential_1(v97, v219);
            v44 = sub_268F997F4();
            sub_268F5767C(v96 & 1, v44 & 1);
            __swift_destroy_boxed_opaque_existential_0(v97);
          }

          else
          {

            v90 = *sub_268DC866C();
            MEMORY[0x277D82BE0](v90);
            v88 = sub_268F9B294();
            v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v87 = sub_268F9B734();
            v85 = v45;
            MEMORY[0x277D82BE0](v207);
            v82 = v222;
            v222[0] = v207;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
            v83 = sub_268F9AE64();
            v84 = v46;
            v85[3] = MEMORY[0x277D837D0];
            v47 = sub_268CDD224();
            v48 = v83;
            v49 = v84;
            v50 = v85;
            v51 = v47;
            v52 = v87;
            v85[4] = v51;
            *v50 = v48;
            v50[1] = v49;
            sub_268CD0F7C();
            v89 = v52;
            sub_268F9AC04();

            MEMORY[0x277D82BD8](v90);
            v91 = 1;
            v53 = swift_allocError();
            v54 = v203;
            *v55 = 4;
            *v54 = v53;
            swift_storeEnumTagMultiPayload();
          }

          sub_268D28630(v203, v206);
        }
      }
    }

    v56 = sub_268DB98D4();
    v80 = *v56;
    v78 = v56[1];
    v79 = *(v56 + 16);
    v81 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v81);
    sub_268DB9B78(v80, v78, v79, v81);
    MEMORY[0x277D82BD8](v81);
    sub_268D28718(v206, v187);
  }

  else
  {
    v76 = *sub_268DC866C();
    MEMORY[0x277D82BE0](v76);
    v74 = sub_268F9B294();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v73 = sub_268F9B734();
    v71 = v57;
    MEMORY[0x277D82BE0](v207);
    v68[1] = v229;
    v229[0] = v207;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v69 = sub_268F9AE64();
    v70 = v58;
    v71[3] = MEMORY[0x277D837D0];
    v59 = sub_268CDD224();
    v60 = v69;
    v61 = v70;
    v62 = v71;
    v63 = v59;
    v64 = v73;
    v71[4] = v63;
    *v62 = v60;
    v62[1] = v61;
    sub_268CD0F7C();
    v75 = v64;
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v76);
    sub_268D28BD4();
    v77 = 1;
    v65 = swift_allocError();
    v66 = v187;
    *v67 = 3;
    *v66 = v65;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268EF27A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = v4[2];
  return MEMORY[0x2822009F8](sub_268EF2820, 0);
}

uint64_t sub_268EF2820()
{
  v1 = v0[11];
  v14 = v1;
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v15 = [v14 _intentResponseCode];
  MEMORY[0x277D82BD8](v14);
  v0[7] = v15;
  v0[8] = 4;
  type metadata accessor for INIntentResponseCode();
  sub_268ECCA4C();
  if (sub_268F9B754())
  {
    v12 = v13[11];
    MEMORY[0x277D82BE0](v12);
    v2 = swift_task_alloc();
    v13[13] = v2;
    *v2 = v13[2];
    v2[1] = sub_268EF2A5C;
    v3 = v13[12];
    v4 = v13[10];
    v5 = v13[9];

    return sub_268EF2F84(v4, v5, v12);
  }

  else
  {
    v11 = v13[11];
    MEMORY[0x277D82BE0](v11);
    v7 = swift_task_alloc();
    v13[15] = v7;
    *v7 = v13[2];
    v7[1] = sub_268EF2C38;
    v8 = v13[12];
    v9 = v13[10];
    v10 = v13[9];

    return sub_268EFA4A4(v9, v10, v11);
  }
}

uint64_t sub_268EF2A5C(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 104);
  *(v8 + 16) = *v2;
  v9 = (v8 + 16);
  *(v8 + 112) = v1;

  if (v1)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](sub_268EF2E14, 0);
  }

  else
  {

    v4 = *(*v9 + 8);

    return v4(a1);
  }
}

uint64_t sub_268EF2C38(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 120);
  *(v8 + 16) = *v2;
  v9 = (v8 + 16);
  *(v8 + 128) = v1;

  if (v1)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](sub_268EF2ECC, 0);
  }

  else
  {

    v4 = *(*v9 + 8);

    return v4(a1);
  }
}

uint64_t sub_268EF2E14()
{
  v1 = v0[11];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = v0[14];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t sub_268EF2ECC()
{
  v1 = v0[11];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = v0[16];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t sub_268EF2F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[15] = a3;
  v4[14] = a2;
  v4[13] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = v3;
  v5 = v4[4];
  return MEMORY[0x2822009F8](sub_268EF3008, 0);
}

uint64_t sub_268EF3008()
{
  v1 = v0[14];
  v0[4] = v0;
  v0[9] = v1;
  v43 = sub_268D2E630();
  v44._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v43, &protocol witness table for INGetSettingIntent);
  v44._object = v2;
  v0[17] = v2;
  if (v2)
  {
    v42[2] = v44._countAndFlagsBits;
    v42[3] = v2;

    BinarySettingIdentifier.init(rawValue:)(v44);
    if (v45 != 65)
    {
      v37 = v42[14];
      v3 = sub_268DC7B48();
      v41 = *v3;
      MEMORY[0x277D82BE0](*v3);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v40 = v4;
      MEMORY[0x277D82BE0](v37);
      v42[12] = v37;
      sub_268D59CAC();
      v38 = sub_268F9AE74();
      v39 = v5;
      v40[3] = MEMORY[0x277D837D0];
      v40[4] = sub_268CDD224();
      *v40 = v38;
      v40[1] = v39;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v41);
      v6 = swift_task_alloc();
      v42[18] = v6;
      *v6 = v42[4];
      v6[1] = sub_268EF3834;
      v7 = v42[16];
      v8 = v42[15];
      v9 = v42[14];
      v10 = v42[13];

      return sub_268EF5148(v10, v9, v8);
    }

    NumericSettingIdentifier.init(rawValue:)(v44);
    if (v46 != 13)
    {
      v12 = swift_task_alloc();
      v42[21] = v12;
      *v12 = v42[4];
      v12[1] = sub_268EF3A5C;
      v13 = v42[16];
      v14 = v42[15];
      v15 = v42[14];
      v16 = v42[13];

      return sub_268EF7CE0(v16, v15, v14);
    }

    v32 = v42[14];
    v17 = sub_268DC866C();
    v36 = *v17;
    MEMORY[0x277D82BE0](*v17);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v35 = v18;
    MEMORY[0x277D82BE0](v32);
    v42[11] = v32;
    sub_268D59CAC();
    v33 = sub_268F9AE74();
    v34 = v19;
    v35[3] = MEMORY[0x277D837D0];
    v35[4] = sub_268CDD224();
    *v35 = v33;
    v35[1] = v34;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v36);
    sub_268D28BD4();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
  }

  else
  {
    v27 = v42[14];
    v21 = sub_268DC866C();
    v31 = *v21;
    MEMORY[0x277D82BE0](*v21);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v30 = v22;
    MEMORY[0x277D82BE0](v27);
    v42[10] = v27;
    sub_268D59CAC();
    v28 = sub_268F9AE74();
    v29 = v23;
    v30[3] = MEMORY[0x277D837D0];
    v30[4] = sub_268CDD224();
    *v30 = v28;
    v30[1] = v29;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v31);
    sub_268D28BD4();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }

  v25 = *(v42[4] + 8);
  v26 = v42[4];

  return v25();
}

uint64_t sub_268EF3834(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 144);
  v9[4] = *v2;
  v10 = v9 + 4;
  v9[19] = a1;
  v9[20] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268EF3C84;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268EF39A4;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EF39A4()
{
  v1 = v0[17];
  v0[4] = v0;

  v2 = v0[19];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3(v2);
}

uint64_t sub_268EF3A5C(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 168);
  v9[4] = *v2;
  v10 = v9 + 4;
  v9[22] = a1;
  v9[23] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268EF3D38;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268EF3BCC;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EF3BCC()
{
  v1 = v0[17];
  v0[4] = v0;

  v2 = v0[22];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3(v2);
}

uint64_t sub_268EF3C84()
{
  v1 = v0[17];
  v0[4] = v0;

  v2 = v0[20];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3();
}

uint64_t sub_268EF3D38()
{
  v1 = v0[17];
  v0[4] = v0;

  v2 = v0[23];
  v3 = *(v0[4] + 8);
  v4 = v0[4];

  return v3();
}

uint64_t sub_268EF3DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = v3;
  v4[26] = a3;
  v4[25] = a2;
  v4[24] = a1;
  v4[14] = v4;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[20] = 0;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = v3;
  v5 = v4[14];
  return MEMORY[0x2822009F8](sub_268EF3E6C, 0);
}

uint64_t sub_268EF3E6C()
{
  v1 = v0[27];
  v36 = v0[25];
  v0[14] = v0;
  v35 = *(v1 + qword_280FE37D8);
  MEMORY[0x277D82BE0](v35);
  v37 = [v36 settingMetadata];
  if (v37)
  {
    v29 = [v37 settingId];
    v30 = sub_268F9AE24();
    v31 = v2;
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v29);
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v34[12] = v32;
  v34[13] = v33;
  if (v34[13])
  {
    v38 = v34[12];
    v39 = v34[13];
  }

  else
  {
    v38 = sub_268F9AEF4();
    v39 = v3;
    if (v34[13])
    {
      sub_268CD9D30((v34 + 12));
    }
  }

  sub_268DE0918(v38, v39, v34 + 7);

  MEMORY[0x277D82BD8](v35);
  if (v34[10])
  {
    v28 = v34[25];
    sub_268CDF978(v34 + 7, v34 + 2);
    v26 = v34[5];
    v27 = v34[6];
    __swift_project_boxed_opaque_existential_1(v34 + 2, v26);
    v4 = (*(v27 + 16))(v28, v26);
    if (v4)
    {
      v18 = v34[25];
      v5 = sub_268DC866C();
      v22 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B284();
      v34[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v21 = v6;
      MEMORY[0x277D82BE0](v18);
      v34[19] = v18;
      sub_268D2E630();
      sub_268D59CAC();
      v19 = sub_268F9AE74();
      v20 = v7;
      v21[3] = MEMORY[0x277D837D0];
      v8 = sub_268CDD224();
      v34[29] = v8;
      v21[4] = v8;
      *v21 = v19;
      v21[1] = v20;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v22);
      v23 = v34[5];
      v24 = v34[6];
      __swift_project_boxed_opaque_existential_1(v34 + 2, v23);
      v25 = (*(v24 + 32) + **(v24 + 32));
      v9 = *(*(v24 + 32) + 4);
      v10 = swift_task_alloc();
      v34[30] = v10;
      *v10 = v34[14];
      v10[1] = sub_268EF44A4;
      v11 = v34[25];

      return v25(v11, v23, v24);
    }

    __swift_destroy_boxed_opaque_existential_0(v34 + 2);
  }

  else
  {
    sub_268D28414(v34 + 7);
  }

  v13 = swift_task_alloc();
  v34[38] = v13;
  *v13 = v34[14];
  v13[1] = sub_268EF4D98;
  v14 = v34[27];
  v15 = v34[26];
  v16 = v34[25];
  v17 = v34[24];

  return sub_268EF2F84(v17, v16, v15);
}

uint64_t sub_268EF44A4(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 240);
  *(v6 + 112) = *v1;
  *(v6 + 248) = a1;

  v4 = *(v6 + 112);

  return MEMORY[0x2822009F8](sub_268EF45C0, 0);
}

uint64_t sub_268EF45C0()
{
  v21 = v0[31];
  v17 = v0[29];
  v19 = v0[28];
  v0[14] = v0;
  v0[20] = v21;
  v1 = sub_268DC866C();
  v20 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  sub_268F9B734();
  v18 = v2;
  MEMORY[0x277D82BE0](v21);
  v0[21] = v21;
  sub_268CDD0DC();
  sub_268CDD1A4();
  v3 = sub_268F9AE74();
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = v17;
  *v18 = v3;
  v18[1] = v4;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v20);
  v0[22] = [v21 code];
  v0[23] = 3;
  type metadata accessor for INGetSettingIntentResponseCode();
  sub_268DDD0E4();
  if (sub_268F9B754())
  {
    v15 = v16[31];
    MEMORY[0x277D82BE0](v15);
    v5 = swift_task_alloc();
    v16[32] = v5;
    *v5 = v16[14];
    v5[1] = sub_268EF4908;
    v6 = v16[27];
    v7 = v16[25];
    v8 = v16[24];

    return sub_268EF2F84(v8, v7, v15);
  }

  else
  {
    v14 = v16[31];
    MEMORY[0x277D82BE0](v14);
    v10 = swift_task_alloc();
    v16[35] = v10;
    *v10 = v16[14];
    v10[1] = sub_268EF4B50;
    v11 = v16[27];
    v12 = v16[25];
    v13 = v16[24];

    return sub_268EFA4A4(v13, v12, v14);
  }
}

uint64_t sub_268EF4908(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 256);
  *(v9 + 112) = *v2;
  v10 = (v9 + 112);
  *(v9 + 264) = a1;
  *(v9 + 272) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268EF4F90;
  }

  else
  {

    v5 = *v10;
    v6 = sub_268EF4A8C;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EF4A8C()
{
  v1 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[33];
  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3(v2);
}

uint64_t sub_268EF4B50(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 280);
  *(v9 + 112) = *v2;
  v10 = (v9 + 112);
  *(v9 + 288) = a1;
  *(v9 + 296) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268EF506C;
  }

  else
  {

    v5 = *v10;
    v6 = sub_268EF4CD4;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EF4CD4()
{
  v1 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[36];
  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3(v2);
}

uint64_t sub_268EF4D98(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 304);
  *(v8 + 112) = *v2;
  v9 = v8 + 112;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268EF4F90()
{
  v5 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[34];
  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

uint64_t sub_268EF506C()
{
  v5 = v0[31];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[37];
  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

uint64_t sub_268EF5148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 272) = v3;
  *(v4 + 264) = a3;
  *(v4 + 256) = a2;
  *(v4 + 144) = v4;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 400) = 0;
  *(v4 + 401) = 0;
  *(v4 + 192) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 200) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 280) = v5;
  v8 = *(v5 - 8);
  *(v4 + 288) = v8;
  v9 = *(v8 + 64);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  v6 = *(v4 + 144);

  return MEMORY[0x2822009F8](sub_268EF52E8, 0);
}

uint64_t sub_268EF52E8()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[32];
  v0[18] = v0;
  v86 = sub_268F1A720(v3, v2);
  v87 = v4;
  v88 = v5;
  v89 = v6;
  v0[39] = v4;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
    goto LABEL_28;
  }

  *(v85 + 96) = v86;
  *(v85 + 104) = v4;
  *(v85 + 112) = v5;
  *(v85 + 120) = v6;
  v84 = sub_268E07A88(v5);
  if (v84 == 2)
  {
    v39 = *(v85 + 264);
    v30 = sub_268DC866C();
    v43 = *v30;
    MEMORY[0x277D82BE0](*v30);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v42 = v31;
    MEMORY[0x277D82BE0](v39);
    *(v85 + 184) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v40 = sub_268F9AE64();
    v41 = v32;
    v42[3] = MEMORY[0x277D837D0];
    v42[4] = sub_268CDD224();
    *v42 = v40;
    v42[1] = v41;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v43);
    sub_268D28BD4();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

LABEL_28:
    v35 = *(v85 + 304);
    v38 = *(v85 + 296);

    v36 = *(*(v85 + 144) + 8);
    v37 = *(v85 + 144);

    return v36();
  }

  v77 = *(v85 + 272);
  *(v85 + 400) = v84 & 1;
  v76 = *(v77 + qword_280FE37B8);

  v83 = sub_268F23C10();
  *(v85 + 320) = v83;

  *(v85 + 192) = v83;

  v78 = *(v77 + qword_280FE37A8);

  v79 = sub_268E12F2C();
  v80 = v7;

  v81 = MEMORY[0x26D62DB30](v86, v87, v79, v80);
  v82 = v8;
  *(v85 + 328) = v8;

  *(v85 + 128) = v81;
  *(v85 + 136) = v82;
  MEMORY[0x277D82BE0](v83);
  if (v83)
  {

    v72 = sub_268F9AE14();

    v73 = [v83 integerForKey_];
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v83);
    v74 = v73;
    v75 = 0;
  }

  else
  {
    v74 = 0;
    v75 = 1;
  }

  if (v75)
  {
    v71 = 0;
  }

  else
  {
    v9 = *(v85 + 272);
    *(v85 + 248) = v74;
    v10 = *(v9 + qword_280FE37A8);

    v70 = sub_268E12F10();

    if (v74 >= v70)
    {
      v68 = 0;
    }

    else
    {
      MEMORY[0x277D82BE0](v83);
      if (v83)
      {
        result = v83;
        if (__OFADD__(v74, 1))
        {
          __break(1u);
          return result;
        }

        v69 = sub_268F9AE14();

        [v83 setInteger:v74 + 1 forKey:v69];
        MEMORY[0x277D82BD8](v69);
        MEMORY[0x277D82BD8](v83);
      }

      v13 = sub_268DC866C();
      v67 = *v13;
      MEMORY[0x277D82BE0](*v13);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v66 = v14;

      v66[3] = MEMORY[0x277D837D0];
      v66[4] = sub_268CDD224();
      *v66 = v86;
      v66[1] = v87;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v67);
      *(v85 + 401) = 1;
      v68 = 1;
    }

    v71 = v68;
  }

  v15 = *(v85 + 304);
  v57 = *(v85 + 296);
  v58 = *(v85 + 280);
  v55 = *(v85 + 272);
  v56 = *(v85 + 288);
  v16 = sub_268DB9CB4();
  v61 = *v16;
  v62 = v16[1];
  v63 = *(v16 + 16);
  v17 = sub_268DC7BA8();
  v64 = *v17;
  MEMORY[0x277D82BE0](*v17);
  (*(v56 + 16))(v15, v55 + qword_280FE3800, v58);
  sub_268F9AB14();
  v60 = sub_268F9AB04();
  v59 = *(v56 + 8);
  v59(v57, v58);
  v59(v15, v58);
  sub_268DB9934(v61, v62, v63, v64, (v60 ^ 1) & 1);
  MEMORY[0x277D82BD8](v64);

  v18 = BinarySettingIdentifier.rawValue.getter();
  v65 = MEMORY[0x26D62DB50](v86, v87, v18);

  if (v65)
  {
    v50 = *(v85 + 272);
    sub_268CDE730(v50 + qword_280FE37D0, v85 + 56);
    v52 = *(v85 + 80);
    v53 = *(v85 + 88);
    __swift_project_boxed_opaque_existential_1((v85 + 56), v52);

    v51 = swift_task_alloc();
    *(v85 + 336) = v51;
    *(v51 + 16) = v50;
    *(v51 + 24) = v86;
    *(v51 + 32) = v87;
    *(v51 + 40) = v88;
    *(v51 + 48) = v89;
    *(v51 + 56) = v84 & 1;
    v54 = (*(v53 + 16) + **(v53 + 16));
    v19 = *(*(v53 + 16) + 4);
    v20 = swift_task_alloc();
    v21 = sub_268F1C008;
    v22 = v51;
    v23 = v52;
    v24 = v53;
    v25 = v54;
    *(v85 + 344) = v20;
    *v20 = *(v85 + 144);
    v20[1] = sub_268EF61B0;
    v26 = v84 & 1;
    v27 = v71 & 1;
  }

  else
  {
    v44 = *(v85 + 272);
    v45 = *(v85 + 256);
    sub_268CDE730(v44 + qword_280FE37D0, v85 + 16);
    v47 = *(v85 + 40);
    v48 = *(v85 + 48);
    __swift_project_boxed_opaque_existential_1((v85 + 16), v47);

    MEMORY[0x277D82BE0](v45);
    v46 = swift_task_alloc();
    *(v85 + 368) = v46;
    *(v46 + 16) = v44;
    *(v46 + 24) = v86;
    *(v46 + 32) = v87;
    *(v46 + 40) = v88;
    *(v46 + 48) = v89;
    *(v46 + 56) = v84 & 1;
    *(v46 + 64) = v45;
    v49 = (*(v48 + 32) + **(v48 + 32));
    v28 = *(*(v48 + 32) + 4);
    v29 = swift_task_alloc();
    v21 = sub_268F1BFE4;
    v22 = v46;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    *(v85 + 376) = v29;
    *v29 = *(v85 + 144);
    v29[1] = sub_268EF6508;
    v26 = v84 & 1;
    v27 = v71 & 1;
  }

  return v25(v26, v27, v21, v22, v23, v24);
}

uint64_t sub_268EF61B0(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 344);
  v12[18] = *v2;
  v13 = v12 + 18;
  v12[44] = a1;
  v12[45] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268EF6870;
  }

  else
  {
    v5 = v12[42];
    v11 = v12[39];
    v10 = v12[34];

    v6 = *v13;
    v7 = sub_268EF6354;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EF6354()
{
  v1 = v0[44];
  v12 = v0[41];
  v13 = v0[40];
  v14 = v0[39];
  v0[18] = v0;
  v0[30] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);

  v16 = v0[44];
  v4 = v0[38];
  v15 = v0[37];

  v5 = *(v0[18] + 8);
  v6 = v0[18];

  return v5(v16);
}

uint64_t sub_268EF6508(uint64_t a1)
{
  v13 = *v2;
  v4 = *(*v2 + 376);
  v13[18] = *v2;
  v14 = v13 + 18;
  v13[48] = a1;
  v13[49] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_268EF6BA0;
  }

  else
  {
    v5 = v13[46];
    v11 = v13[39];
    v10 = v13[34];
    v12 = v13[32];

    v6 = *v14;
    v7 = sub_268EF66BC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EF66BC()
{
  v1 = v0[48];
  v12 = v0[41];
  v13 = v0[40];
  v14 = v0[39];
  v0[18] = v0;
  v0[27] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);

  v16 = v0[48];
  v4 = v0[38];
  v15 = v0[37];

  v5 = *(v0[18] + 8);
  v6 = v0[18];

  return v5(v16);
}

uint64_t sub_268EF6870()
{
  v22 = v0[45];
  v1 = v0[42];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[39];
  v13 = v0[34];
  v0[18] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v22;
  v0[28] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[29] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB9CB4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v24);

  v9 = v0[38];
  v26 = v0[37];

  v10 = *(v0[18] + 8);
  v11 = v0[18];

  return v10();
}

uint64_t sub_268EF6BA0()
{
  v23 = v0[49];
  v1 = v0[46];
  v24 = v0[41];
  v25 = v0[40];
  v26 = v0[39];
  v13 = v0[34];
  v14 = v0[32];
  v0[18] = v0;

  MEMORY[0x277D82BD8](v14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v23;
  v0[25] = v23;
  v3 = sub_268DC866C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v17 = v4;
  v5 = v23;
  v0[26] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v7 = sub_268DB9CB4();
  v21 = *v7;
  v19 = v7[1];
  v20 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v22 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v25);

  v9 = v0[38];
  v27 = v0[37];

  v10 = *(v0[18] + 8);
  v11 = v0[18];

  return v10();
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268EF6EE8(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v47 = a1;
  v37 = a2;
  v48._countAndFlagsBits = a3;
  v48._object = a4;
  v36 = a5;
  v45 = a6;
  v42 = a7;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0;
  v57 = 0;
  v52 = 0;
  v39 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v29 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v30 = &v20 - v29;
  v43 = 0;
  v31 = type metadata accessor for SFSymbolStructSpeakableString();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v35 = &v20 - v34;
  v66 = &v20 - v34;
  v38 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v47);
  v40 = &v20 - v38;
  v65 = v8;
  v64 = v9;
  v63 = *(v39 + qword_280FE8090);
  v62 = *(v39 + qword_280FE8090 + 8);
  *&v60 = v10;
  *(&v60 + 1) = v11;
  *&v61 = v12;
  *(&v61 + 1) = v13;
  v59 = v14 & 1;
  v41 = *(v9 + qword_280FE37C8);

  v15 = *v47;
  *v47 = v41;

  type metadata accessor for SettingsMultiSetting();

  v44 = sub_268E067CC(v48._countAndFlagsBits, v48._object, v42 & 1);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters();
  v16 = (v47 + SettingIntentDescribeMultiSettingStateParameters[6]);
  v17 = *v16;
  *v16 = v44;

  v18 = sub_268E07A88(v45);
  *(v47 + SettingIntentDescribeMultiSettingStateParameters[7]) = v18;

  result.value = BinarySettingIdentifier.init(rawValue:)(v48).value;
  v49 = v58;
  if (v58 != 65)
  {
    v28 = v49;
    v57 = v49;
    v26 = 45;
    v56 = 45;
    sub_268E0697C(&v56, v40);
    sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[5]);
    v55 = v26;
    sub_268E06F58(&v55, v40);
    sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[8]);
    v54 = v26;
    sub_268E06FB0(&v54, 0, 1, v40);
    sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[14]);
    sub_268E798B8(v40);
    sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[10]);

    result.value = BinarySettingIdentifier.init(rawValue:)(v48).value;
    v27 = v53;
    if (v53 != 65)
    {
      v25 = v27;
      v24 = v27;
      v52 = v27;
      v51 = v27;
      sub_268E799BC(v40);
      sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[9]);
      v50 = v24;
      sub_268E7A8B4(v30);
      if ((*(v32 + 48))(v30, 1, v31) == 1)
      {
        return sub_268D2A318(v30);
      }

      else
      {
        sub_268D2A4A0(v30, v35);
        v23 = sub_268F9A9C4();
        v21 = *(v23 - 8);
        v22 = v23 - 8;
        (*(v21 + 16))(v40, v35);
        (*(v21 + 56))(v40, 0, 1, v23);
        sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[11]);
        sub_268D2A1F0((v35 + *(v31 + 20)), v40);
        sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[13]);
        sub_268D2A1F0((v35 + *(v31 + 24)), v40);
        sub_268D29FC8(v40, v47 + SettingIntentDescribeMultiSettingStateParameters[12]);
        return sub_268D2A724(v35);
      }
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268EF7508(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v47 = v81;
  v60 = a1;
  v50 = a2;
  v61._countAndFlagsBits = a3;
  v61._object = a4;
  v48 = a5;
  v58 = a6;
  v55 = a7;
  v49 = a8;
  v81[1] = 0;
  v81[0] = 0;
  v80 = 0;
  v76 = 0u;
  v77 = 0u;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v52 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v40 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v41 = v28 - v40;
  v56 = 0;
  v42 = type metadata accessor for SFSymbolStructSpeakableString();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v46 = v28 - v45;
  v47[1] = v28 - v45;
  v51 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v60);
  v10 = v52;
  v53 = v28 - v51;
  *v11 = v9;
  v80 = v12;
  v79 = *(v10 + qword_280FE8090);
  v78 = *(v10 + qword_280FE8090 + 8);
  *&v76 = v13;
  *(&v76 + 1) = v14;
  *&v77 = v15;
  *(&v77 + 1) = v16;
  v75 = v17 & 1;
  v74 = v18;
  v54 = *(v12 + qword_280FE37C8);

  v19 = *v60;
  *v60 = v54;

  type metadata accessor for SettingsBinarySetting();

  v57 = SettingsBinarySetting.__allocating_init(settingId:value:)(v61._countAndFlagsBits, v61._object, v55 & 1);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters();
  v20 = (v60 + SettingIntentDescribeBinarySettingStateParameters[6]);
  v21 = *v20;
  *v20 = v57;

  v22 = sub_268E07A88(v58);
  *(v60 + SettingIntentDescribeBinarySettingStateParameters[7]) = v22;

  result.value = BinarySettingIdentifier.init(rawValue:)(v61).value;
  v62 = v73;
  if (v73 != 65)
  {
    v39 = v62;
    v37 = v62;
    v72 = v62;
    v71 = v62;
    sub_268E0697C(&v71, v53);
    sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[5]);
    v70 = v37;
    sub_268E06F58(&v70, v53);
    sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[8]);
    sub_268E798B8(v53);
    sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[10]);

    BinarySettingIdentifier.init(rawValue:)(v61);
    v38 = v69;
    if (v69 != 65)
    {
      v36 = v38;
      v35 = v38;
      v65 = v38;
      v64 = v38;
      sub_268E799BC(v53);
      sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[9]);
      v63 = v35;
      sub_268E7A8B4(v41);
      if ((*(v43 + 48))(v41, 1, v42) == 1)
      {
        sub_268D2A318(v41);
      }

      else
      {
        sub_268D2A4A0(v41, v46);
        v34 = sub_268F9A9C4();
        v32 = *(v34 - 8);
        v33 = v34 - 8;
        (*(v32 + 16))(v53, v46);
        (*(v32 + 56))(v53, 0, 1, v34);
        sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[11]);
        sub_268D2A1F0((v46 + *(v42 + 20)), v53);
        sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[13]);
        sub_268D2A1F0((v46 + *(v42 + 24)), v53);
        sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[12]);
        sub_268D2A724(v46);
      }
    }

    *(v60 + SettingIntentDescribeBinarySettingStateParameters[17]) = !sub_268E0829C();
    v29 = 0;
    v28[2] = sub_268D291D4();

    v28[1] = sub_268E62B3C();
    v68 = v49;
    v24 = sub_268D2E630();
    v25 = SettingIntent.deviceCategory.getter(v24, &protocol witness table for INGetSettingIntent);
    v27 = sub_268E3D824(v29, v29, v29, v29, v25, v26 & 1);
    v31 = sub_268F2B620(v61._countAndFlagsBits, v61._object, v27, v29);
    v67 = v31;
    sub_268CD7620();
    MEMORY[0x277D82BE0](v31);
    v30 = sub_268DA95CC(v31, 3, v29);
    v66 = v30;
    sub_268E06D9C(v30, v53);
    sub_268D29FC8(v53, v60 + SettingIntentDescribeBinarySettingStateParameters[14]);
    MEMORY[0x277D82BD8](v30);
    return MEMORY[0x277D82BD8](v31);
  }

  return result;
}

uint64_t sub_268EF7CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 272) = v3;
  *(v4 + 264) = a3;
  *(v4 + 256) = a2;
  *(v4 + 136) = v4;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 184) = 0;
  *(v4 + 424) = 0;
  *(v4 + 432) = 0;
  *(v4 + 192) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 248) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 280) = v5;
  v8 = *(v5 - 8);
  *(v4 + 288) = v8;
  v9 = *(v8 + 64);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;
  v6 = *(v4 + 136);

  return MEMORY[0x2822009F8](sub_268EF7E84, 0);
}

uint64_t sub_268EF7E84()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[32];
  v0[17] = v0;
  v94 = sub_268F1B14C(v3, v2);
  v95 = v4;
  v96 = v5;
  v0[39] = v4;
  v0[40] = v5;
  if (!v4)
  {
    sub_268D28BD4();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();
    goto LABEL_29;
  }

  *(v93 + 96) = v94;
  *(v93 + 104) = v4;
  *(v93 + 112) = v5;
  MEMORY[0x277D82BE0](v5);
  v6 = [v96 value];
  v92 = v6;
  *(v93 + 328) = v6;
  if (!v6)
  {
    v35 = *(v93 + 264);
    MEMORY[0x277D82BD8](v96);
    v26 = sub_268DC866C();
    v39 = *v26;
    MEMORY[0x277D82BE0](*v26);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v38 = v27;
    MEMORY[0x277D82BE0](v35);
    *(v93 + 176) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v36 = sub_268F9AE64();
    v37 = v28;
    v38[3] = MEMORY[0x277D837D0];
    v38[4] = sub_268CDD224();
    *v38 = v36;
    v38[1] = v37;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v39);
    sub_268D28BD4();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();

    MEMORY[0x277D82BD8](v96);
LABEL_29:
    v31 = *(v93 + 304);
    v34 = *(v93 + 296);

    v32 = *(*(v93 + 136) + 8);
    v33 = *(v93 + 136);

    return v32();
  }

  *(v93 + 184) = v6;
  MEMORY[0x277D82BD8](v96);

  v7 = NumericSettingIdentifier.rawValue.getter();
  v91 = MEMORY[0x26D62DB50](v94, v95, v7);

  if (v91)
  {
    v84 = *(v93 + 272);
    v83 = *(v84 + qword_280FE37B8);

    v90 = sub_268F23C10();
    *(v93 + 336) = v90;

    *(v93 + 216) = v90;

    v85 = *(v84 + qword_280FE37A8);

    v86 = sub_268E12F2C();
    v87 = v8;

    v88 = MEMORY[0x26D62DB30](v94, v95, v86, v87);
    v89 = v9;
    *(v93 + 344) = v9;

    *(v93 + 120) = v88;
    *(v93 + 128) = v89;
    MEMORY[0x277D82BE0](v90);
    if (v90)
    {

      v79 = sub_268F9AE14();

      v80 = [v90 integerForKey_];
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v90);
      v81 = v80;
      v82 = 0;
    }

    else
    {
      v81 = 0;
      v82 = 1;
    }

    if ((v82 & 1) == 0)
    {
      v10 = *(v93 + 272);
      *(v93 + 224) = v81;
      v11 = *(v10 + qword_280FE37A8);

      v78 = sub_268E12F10();

      if (v81 >= v78)
      {
        v12 = *(v93 + 304);
        v64 = *(v93 + 296);
        v65 = *(v93 + 280);
        v72 = *(v93 + 272);
        v73 = *(v93 + 256);
        v63 = *(v93 + 288);
        v13 = sub_268DC866C();
        v62 = *v13;
        MEMORY[0x277D82BE0](*v13);
        sub_268F9B284();
        *(v93 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v62);
        v14 = sub_268DB9CB4();
        v68 = *v14;
        v69 = v14[1];
        v70 = *(v14 + 16);
        v15 = sub_268DC7BA8();
        v71 = *v15;
        MEMORY[0x277D82BE0](*v15);
        (*(v63 + 16))(v12, v72 + qword_280FE3800, v65);
        sub_268F9AB14();
        v67 = sub_268F9AB04();
        v66 = *(v63 + 8);
        v66(v64, v65);
        v66(v12, v65);
        sub_268DB9934(v68, v69, v70, v71, (v67 ^ 1) & 1);
        MEMORY[0x277D82BD8](v71);
        sub_268CDE730(v72 + qword_280FE37D0, v93 + 56);
        v75 = *(v93 + 80);
        v76 = *(v93 + 88);
        __swift_project_boxed_opaque_existential_1((v93 + 56), v75);

        MEMORY[0x277D82BE0](v96);
        MEMORY[0x277D82BE0](v92);
        MEMORY[0x277D82BE0](v73);
        v74 = swift_task_alloc();
        *(v93 + 360) = v74;
        v74[2] = v72;
        v74[3] = v94;
        v74[4] = v95;
        v74[5] = v96;
        v74[6] = v92;
        v74[7] = v73;
        v77 = (*(v76 + 40) + **(v76 + 40));
        v16 = *(*(v76 + 40) + 4);
        v17 = swift_task_alloc();
        *(v93 + 368) = v17;
        *v17 = *(v93 + 136);
        v17[1] = sub_268EF916C;

        return v77(sub_268F1C044, v74, v75, v76);
      }

      MEMORY[0x277D82BE0](v90);
      if (v90)
      {
        result = v90;
        if (__OFADD__(v81, 1))
        {
          __break(1u);
          return result;
        }

        v61 = sub_268F9AE14();

        [v90 setInteger:v81 + 1 forKey:v61];
        MEMORY[0x277D82BD8](v61);
        MEMORY[0x277D82BD8](v90);
      }

      v20 = sub_268DC866C();
      v60 = *v20;
      MEMORY[0x277D82BE0](*v20);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v60);
    }

    MEMORY[0x277D82BD8](v90);
  }

  v58 = *(v93 + 256);
  v59 = sub_268E07FF4(v58);
  *(v93 + 424) = v59 & 1;
  sub_268E07C44(v58);
  sub_268F9AE94();

  v97 = sub_268E493BC();
  if (v97 == 16)
  {
    v57 = 0;
  }

  else
  {
    *(v93 + 425) = 13;
    *(v93 + 426) = v97;
    sub_268E4A21C();
    v57 = sub_268F9AE04();
  }

  v21 = *(v93 + 304);
  v41 = *(v93 + 296);
  v42 = *(v93 + 280);
  v50 = *(v93 + 272);
  v51 = *(v93 + 256);
  v40 = *(v93 + 288);
  *(v93 + 432) = v57 & 1;
  v22 = sub_268DB9CB4();
  v45 = *v22;
  v46 = v22[1];
  v47 = *(v22 + 16);
  v23 = sub_268DC7BA8();
  v48 = *v23;
  MEMORY[0x277D82BE0](*v23);
  (*(v40 + 16))(v21, v50 + qword_280FE3800, v42);
  sub_268F9AB14();
  v44 = sub_268F9AB04();
  v43 = *(v40 + 8);
  v43(v41, v42);
  v43(v21, v42);
  sub_268DB9934(v45, v46, v47, v48, (v44 ^ 1) & 1);
  MEMORY[0x277D82BD8](v48);
  sub_268CDE730(v50 + qword_280FE37D0, v93 + 16);
  v54 = *(v93 + 40);
  v55 = *(v93 + 48);
  __swift_project_boxed_opaque_existential_1((v93 + 16), v54);
  v49 = *(v50 + qword_280FE3818);

  v52 = sub_268EADBD0();

  MEMORY[0x277D82BE0](v96);
  MEMORY[0x277D82BE0](v92);
  MEMORY[0x277D82BE0](v51);
  v53 = swift_task_alloc();
  *(v93 + 392) = v53;
  v53[2] = v50;
  v53[3] = v94;
  v53[4] = v95;
  v53[5] = v96;
  v53[6] = v92;
  v53[7] = v51;
  v56 = (*(v55 + 48) + **(v55 + 48));
  v24 = *(*(v55 + 48) + 4);
  v25 = swift_task_alloc();
  *(v93 + 400) = v25;
  *v25 = *(v93 + 136);
  v25[1] = sub_268EF9518;

  return v56(v59 & 1, v57 & 1, v52, sub_268F1C028, v53, v54, v55);
}

uint64_t sub_268EF916C(uint64_t a1)
{
  v15 = *v2;
  v4 = *(*v2 + 368);
  v15[17] = *v2;
  v16 = v15 + 17;
  v15[47] = a1;
  v15[48] = v1;

  if (v1)
  {
    v8 = *v16;
    v7 = sub_268EF9898;
  }

  else
  {
    v5 = v15[45];
    v13 = v15[41];
    v12 = v15[40];
    v11 = v15[39];
    v10 = v15[34];
    v14 = v15[32];

    v6 = *v16;
    v7 = sub_268EF9340;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EF9340()
{
  v1 = v0[47];
  v12 = v0[43];
  v13 = v0[42];
  v14 = v0[41];
  v16 = v0[40];
  v15 = v0[39];
  v0[17] = v0;
  v0[31] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  MEMORY[0x277D82BD8](v16);
  v18 = v0[47];
  v4 = v0[38];
  v17 = v0[37];

  v5 = *(v0[17] + 8);
  v6 = v0[17];

  return v5(v18);
}

uint64_t sub_268EF9518(uint64_t a1)
{
  v15 = *v2;
  v4 = *(*v2 + 400);
  v15[17] = *v2;
  v16 = v15 + 17;
  v15[51] = a1;
  v15[52] = v1;

  if (v1)
  {
    v8 = *v16;
    v7 = sub_268EF9C24;
  }

  else
  {
    v5 = v15[49];
    v13 = v15[41];
    v12 = v15[40];
    v11 = v15[39];
    v10 = v15[34];
    v14 = v15[32];

    v6 = *v16;
    v7 = sub_268EF96EC;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EF96EC()
{
  v1 = v0[51];
  v12 = v0[41];
  v14 = v0[40];
  v13 = v0[39];
  v0[17] = v0;
  v0[26] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  MEMORY[0x277D82BD8](v14);
  v16 = v0[51];
  v4 = v0[38];
  v15 = v0[37];

  v5 = *(v0[17] + 8);
  v6 = v0[17];

  return v5(v16);
}

uint64_t sub_268EF9898()
{
  v24 = v0[48];
  v1 = v0[45];
  v18 = v0[44];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[41];
  v29 = v0[40];
  v28 = v0[39];
  v13 = v0[34];
  v14 = v0[32];
  v0[17] = v0;

  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v24;
  v0[29] = v24;
  v3 = sub_268DC866C();
  v19 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  sub_268F9B734();
  v17 = v4;
  v5 = v24;
  v0[30] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v19);
  v7 = sub_268DB9CB4();
  v22 = *v7;
  v20 = v7[1];
  v21 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v23 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v22, v20, v21, v23);
  MEMORY[0x277D82BD8](v23);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);

  MEMORY[0x277D82BD8](v29);
  v9 = v0[38];
  v30 = v0[37];

  v10 = *(v0[17] + 8);
  v11 = v0[17];

  return v10();
}

uint64_t sub_268EF9C24()
{
  v23 = v0[52];
  v1 = v0[49];
  v24 = v0[41];
  v26 = v0[40];
  v25 = v0[39];
  v13 = v0[34];
  v14 = v0[32];
  v0[17] = v0;

  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v23;
  v0[24] = v23;
  v3 = sub_268DC866C();
  v18 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v17 = v4;
  v5 = v23;
  v0[25] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v15 = sub_268F9AE64();
  v16 = v6;
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = sub_268CDD224();
  *v17 = v15;
  v17[1] = v16;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v18);
  v7 = sub_268DB9CB4();
  v21 = *v7;
  v19 = v7[1];
  v20 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v22 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v21, v19, v20, v22);
  MEMORY[0x277D82BD8](v22);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v24);

  MEMORY[0x277D82BD8](v26);
  v9 = v0[38];
  v27 = v0[37];

  v10 = *(v0[17] + 8);
  v11 = v0[17];

  return v10();
}

void *sub_268EF9F94(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v33 = a1;
  v25 = a2;
  v28 = a3;
  v31 = a4;
  v30 = a5;
  v23 = a6;
  v24 = a7;
  v45 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v37 = 0;
  v21 = *a2;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = &v20 - v20;
  v45 = MEMORY[0x28223BE20](v33);
  v44 = v7;
  v32 = 0;
  v43 = *(v21 + qword_280FE8090);
  v42 = *(v21 + qword_280FE8090 + 8);
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v38 = v11;
  v37 = v12;
  v22 = *(v7 + qword_280FE37C8);

  v13 = *(v33 + 8);
  *(v33 + 8) = v22;

  type metadata accessor for SettingsNumericSetting();

  MEMORY[0x277D82BE0](v23);
  v14 = SettingsNumericSetting.__allocating_init(settingId:value:)(v28, v31, v23);
  v15 = *(v33 + 16);
  *(v33 + 16) = v14;

  MEMORY[0x277D82BE0](v30);
  v36 = v24;
  v16 = sub_268D2E630();
  v26 = SettingIntent.deviceCategory.getter(v16, &protocol witness table for INGetSettingIntent);
  v27 = v17;
  v29 = v35;
  sub_268CDE730(v25 + qword_280FE3810, v35);
  sub_268E0A770(v28, v31, v30, v27 & 1, v29, v34);
  __swift_destroy_boxed_opaque_existential_0(v29);
  MEMORY[0x277D82BD8](v30);

  SettingIntentDescribeNumericSettingStateSpokenOnlyParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters();
  return sub_268D29FC8(v34, (v33 + *(SettingIntentDescribeNumericSettingStateSpokenOnlyParameters + 28)));
}

void *sub_268EFA21C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v33 = a1;
  v25 = a2;
  v28 = a3;
  v31 = a4;
  v30 = a5;
  v23 = a6;
  v24 = a7;
  v45 = 0;
  v44 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v37 = 0;
  v21 = *a2;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = &v20 - v20;
  v45 = MEMORY[0x28223BE20](v33);
  v44 = v7;
  v32 = 0;
  v43 = *(v21 + qword_280FE8090);
  v42 = *(v21 + qword_280FE8090 + 8);
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v38 = v11;
  v37 = v12;
  v22 = *(v7 + qword_280FE37C8);

  v13 = *(v33 + 8);
  *(v33 + 8) = v22;

  type metadata accessor for SettingsNumericSetting();

  MEMORY[0x277D82BE0](v23);
  v14 = SettingsNumericSetting.__allocating_init(settingId:value:)(v28, v31, v23);
  v15 = *(v33 + 24);
  *(v33 + 24) = v14;

  MEMORY[0x277D82BE0](v30);
  v36 = v24;
  v16 = sub_268D2E630();
  v26 = SettingIntent.deviceCategory.getter(v16, &protocol witness table for INGetSettingIntent);
  v27 = v17;
  v29 = v35;
  sub_268CDE730(v25 + qword_280FE3810, v35);
  sub_268E0A770(v28, v31, v30, v27 & 1, v29, v34);
  __swift_destroy_boxed_opaque_existential_0(v29);
  MEMORY[0x277D82BD8](v30);

  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters();
  return sub_268D29FC8(v34, (v33 + *(SettingIntentDescribeNumericSettingStateParameters + 40)));
}

uint64_t sub_268EFA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 224) = v3;
  *(v4 + 216) = a3;
  *(v4 + 208) = a2;
  *(v4 + 112) = v4;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 304) = 0;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  v5 = *(v4 + 112);
  return MEMORY[0x2822009F8](sub_268EFA528, 0);
}

uint64_t sub_268EFA528()
{
  v1 = *(v0 + 216);
  v68 = v1;
  *(v0 + 112) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v68)
  {
    v63 = *(v67 + 216);
    v64 = [v63 code];
    MEMORY[0x277D82BD8](v63);
    v65 = v64;
    v66 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 1;
  }

  if (v66)
  {
    v28 = sub_268DC866C();
    v32 = *v28;
    MEMORY[0x277D82BE0](*v28);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v32);
    sub_268D28BD4();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
LABEL_25:
    v30 = *(*(v67 + 112) + 8);
    v31 = *(v67 + 112);

    return v30();
  }

  *(v67 + 152) = v65;
  if (v65 != 6)
  {
    if (v65 == 7)
    {
      v2 = swift_task_alloc();
      *(v67 + 232) = v2;
      *v2 = *(v67 + 112);
      v2[1] = sub_268EFB264;
      v3 = *(v67 + 224);
      v4 = *(v67 + 216);
      v5 = *(v67 + 208);

      return sub_268EFD960(v5, v4);
    }

    v33 = *(v67 + 216);
    v24 = sub_268DC866C();
    v37 = *v24;
    MEMORY[0x277D82BE0](*v24);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v36 = v25;
    MEMORY[0x277D82BE0](v33);
    *(v67 + 160) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v34 = sub_268F9AE64();
    v35 = v26;
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = sub_268CDD224();
    *v36 = v34;
    v36[1] = v35;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);
    sub_268D284D4();
    swift_allocError();
    *v27 = 7;
    swift_willThrow();
    goto LABEL_25;
  }

  v55 = *(v67 + 216);
  v61 = *(v67 + 208);
  v7 = sub_268DC866C();
  v60 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v58 = v8;
  MEMORY[0x277D82BE0](v55);
  *(v67 + 168) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
  v56 = sub_268F9AE64();
  v57 = v9;
  v58[3] = MEMORY[0x277D837D0];
  v59 = sub_268CDD224();
  v58[4] = v59;
  *v58 = v56;
  v58[1] = v57;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v60);
  *(v67 + 176) = v61;
  v10 = sub_268D2E630();
  v62._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v10, &protocol witness table for INGetSettingIntent);
  v62._object = v11;
  *(v67 + 240) = v11;
  if (v11)
  {
    *(v67 + 96) = v62._countAndFlagsBits;
    *(v67 + 104) = v11;

    BinarySettingIdentifier.init(rawValue:)(v62);
    if (v69 != 65)
    {
      *(v67 + 304) = v69;
      v53 = *sub_268E79858();

      *(v67 + 192) = v53;
      *(v67 + 305) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
      sub_268D28B4C();
      sub_268D288C8();
      v54 = sub_268F9AFC4();
      sub_268CD7930((v67 + 192));
      if (v54)
      {
        v48 = *(v67 + 224);
        v45 = *(v67 + 216);
        v12 = sub_268DC866C();
        v47 = *v12;
        MEMORY[0x277D82BE0](*v12);
        sub_268F9B284();
        sub_268F9B734();
        v46 = v13;
        MEMORY[0x277D82BE0](v45);
        *(v67 + 200) = v45;
        v14 = sub_268F9AE64();
        v46[3] = MEMORY[0x277D837D0];
        v46[4] = v59;
        *v46 = v14;
        v46[1] = v15;
        sub_268CD0F7C();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v47);
        sub_268CDE730(v48 + qword_280FE80A0, v67 + 56);
        v50 = *(v67 + 80);
        v51 = *(v67 + 88);
        __swift_project_boxed_opaque_existential_1((v67 + 56), v50);

        v49 = swift_task_alloc();
        *(v67 + 248) = v49;
        *(v49 + 16) = v62;
        *(v49 + 32) = v48;
        v52 = (*(v51 + 24) + **(v51 + 24));
        v16 = *(*(v51 + 24) + 4);
        v17 = swift_task_alloc();
        *(v67 + 256) = v17;
        *v17 = *(v67 + 112);
        v17[1] = sub_268EFB470;

        return v52(sub_268F1C060, v49, v50, v51);
      }
    }
  }

  v41 = *(v67 + 224);
  v38 = *(v67 + 216);
  v18 = sub_268DC866C();
  v40 = *v18;
  MEMORY[0x277D82BE0](*v18);
  sub_268F9B284();
  sub_268F9B734();
  v39 = v19;
  MEMORY[0x277D82BE0](v38);
  *(v67 + 184) = v38;
  v20 = sub_268F9AE64();
  v39[3] = MEMORY[0x277D837D0];
  v39[4] = v59;
  *v39 = v20;
  v39[1] = v21;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v40);
  sub_268CDE730(v41 + qword_280FE80A0, v67 + 16);
  v44 = *(v67 + 40);
  v42 = *(v67 + 48);
  __swift_project_boxed_opaque_existential_1((v67 + 16), v44);
  v43 = (*(v42 + 40) + **(v42 + 40));
  v22 = *(*(v42 + 40) + 4);
  v23 = swift_task_alloc();
  *(v67 + 280) = v23;
  *v23 = *(v67 + 112);
  v23[1] = sub_268EFB6E4;

  return v43(v44, v42);
}

uint64_t sub_268EFB264(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 232);
  *(v8 + 112) = *v2;
  v9 = v8 + 112;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t sub_268EFB470(uint64_t a1)
{
  v12 = *v2;
  v4 = *(*v2 + 256);
  v12[14] = *v2;
  v13 = v12 + 14;
  v12[33] = a1;
  v12[34] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268EFB9C0;
  }

  else
  {
    v5 = v12[31];
    v10 = v12[30];
    v11 = v12[28];

    v6 = *v13;
    v7 = sub_268EFB614;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EFB614()
{
  v5 = v0[30];
  v0[14] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[33];
  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2(v1);
}

uint64_t sub_268EFB6E4(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 280);
  v9[14] = *v2;
  v10 = v9 + 14;
  v9[36] = a1;
  v9[37] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268EFB90C;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268EFB854;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EFB854()
{
  v0[14] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[36];
  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2(v1);
}

uint64_t sub_268EFB90C()
{
  v0[14] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[37];
  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

uint64_t sub_268EFB9C0()
{
  v1 = v0[31];
  v7 = v0[30];
  v6 = v0[28];
  v0[14] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v2 = v0[34];
  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3();
}

uint64_t *sub_268EFBAAC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *(*a4 + qword_280FE8090);
  v14 = *(*a4 + qword_280FE8090 + 8);
  type metadata accessor for SettingsBinarySetting();

  v4 = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);
  v5 = a1[1];
  a1[1] = v4;

  *(a1 + 16) = sub_268CDD6D4() & 1;
  v12 = *(a4 + qword_280FE37C8);

  v6 = *a1;
  *a1 = v12;

  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters();
  result = a1;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 36)) = 2;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 32)) = 1;
  return result;
}

uint64_t sub_268EFBC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 160) = v3;
  *(v4 + 152) = a2;
  *(v4 + 72) = v4;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 240) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 168) = v5;
  v8 = *(v5 - 8);
  *(v4 + 176) = v8;
  v9 = *(v8 + 64);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  v6 = *(v4 + 72);

  return MEMORY[0x2822009F8](sub_268EFBD84, 0);
}

uint64_t sub_268EFBD84()
{
  v42 = v0[19];
  v0[9] = v0;
  v1 = sub_268DC866C();
  v41 = *v1;
  MEMORY[0x277D82BE0](*v1);
  sub_268F9B284();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v40 = v2;
  MEMORY[0x277D82BE0](v42);
  v0[14] = v42;
  v43 = sub_268D2E630();
  sub_268D59CAC();
  v38 = sub_268F9AE74();
  v39 = v3;
  v40[3] = MEMORY[0x277D837D0];
  v4 = sub_268CDD224();
  v0[26] = v4;
  v40[4] = v4;
  *v40 = v38;
  v40[1] = v39;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v41);
  v0[15] = v42;
  v0[7] = SettingIntent.settingIdentifier.getter(v43, &protocol witness table for INGetSettingIntent);
  v0[8] = v5;
  if (v0[8])
  {
    v45 = *(v37 + 56);
  }

  else
  {
    v45._countAndFlagsBits = sub_268F9AEF4();
    v45._object = v6;
    if (*(v37 + 64))
    {
      sub_268CD9D30(v37 + 56);
    }
  }

  v29 = *(v37 + 192);
  v28 = *(v37 + 184);
  v30 = *(v37 + 168);
  v26 = *(v37 + 160);
  v27 = *(v37 + 176);
  BinarySettingIdentifier.init(rawValue:)(v45);
  *(v37 + 240) = v44;
  sub_268D28C4C();
  *(v37 + 128) = sub_268CF0C44();
  v7 = sub_268DB9CB4();
  v33 = *v7;
  v34 = v7[1];
  v35 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v36 = *v8;
  MEMORY[0x277D82BE0](*v8);
  (*(v27 + 16))(v29, v26 + qword_280FE3800, v30);
  sub_268F9AB14();
  v32 = sub_268F9AB04();
  v31 = *(v27 + 8);
  v31(v28, v30);
  v31(v29, v30);
  sub_268DB9934(v33, v34, v35, v36, (v32 ^ 1) & 1);
  MEMORY[0x277D82BD8](v36);
  if (v44 != 65 && (v44 == 35 || v44 == 36))
  {
    sub_268CDE730(*(v37 + 160) + qword_280FE37D0, v37 + 16);
    v25 = *(v37 + 40);
    v23 = *(v37 + 48);
    __swift_project_boxed_opaque_existential_1((v37 + 16), v25);
    v24 = (*(v23 + 56) + **(v23 + 56));
    v9 = *(*(v23 + 56) + 4);
    v10 = swift_task_alloc();
    *(v37 + 216) = v10;
    *v10 = *(v37 + 72);
    v10[1] = sub_268EFC4D4;

    return v24(v25, v23);
  }

  else
  {
    v12 = sub_268DB9CB4();
    v20 = *v12;
    v18 = v12[1];
    v19 = *(v12 + 16);
    v13 = sub_268DC7BA8();
    v21 = *v13;
    MEMORY[0x277D82BE0](*v13);
    sub_268DB9B78(v20, v18, v19, v21);
    MEMORY[0x277D82BD8](v21);
    sub_268D284D4();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    MEMORY[0x277D82BD8](*(v37 + 128));
    v15 = *(v37 + 192);
    v22 = *(v37 + 184);

    v16 = *(*(v37 + 72) + 8);
    v17 = *(v37 + 72);

    return v16();
  }
}

uint64_t sub_268EFC4D4(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 216);
  v9[9] = *v2;
  v10 = v9 + 9;
  v9[28] = a1;
  v9[29] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_268EFC7A4;
  }

  else
  {
    v5 = *v10;
    v6 = sub_268EFC644;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268EFC644()
{
  v1 = v0[28];
  v9 = v1;
  v14 = v0[24];
  v15 = v0[23];
  v0[9] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[16];
  v0[16] = v9;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = sub_268DB9CB4();
  v12 = *v3;
  v10 = v3[1];
  v11 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v13 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v12, v10, v11, v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[16]);

  v5 = *(*(v16 + 72) + 8);
  v6 = *(v16 + 72);
  v7 = *(v16 + 224);

  return v5(v7);
}

uint64_t sub_268EFC7A4()
{
  v21 = v0[29];
  v13 = v0[26];
  v15 = v0[25];
  v0[9] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v21;
  v0[17] = v21;
  v2 = sub_268DC866C();
  v16 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  sub_268F9B734();
  v14 = v3;
  v4 = v21;
  v0[18] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = v13;
  *v14 = v5;
  v14[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[16]);
  v9 = v0[24];
  v22 = v0[23];

  v10 = *(v0[9] + 8);
  v11 = v0[9];

  return v10();
}

uint64_t sub_268EFCA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = v3;
  v4[17] = a2;
  v4[9] = v4;
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[16] = 0;
  v5 = sub_268F9AB24();
  v4[19] = v5;
  v8 = *(v5 - 8);
  v4[20] = v8;
  v9 = *(v8 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = v3;
  v6 = v4[9];

  return MEMORY[0x2822009F8](sub_268EFCBE4, 0);
}

uint64_t sub_268EFCBE4()
{
  v1 = v0[22];
  v43 = v0[21];
  v42 = v0[20];
  v44 = v0[19];
  v41 = v0[18];
  v51 = v0[17];
  v0[9] = v0;
  v2 = sub_268DB98D4();
  v47 = *v2;
  v48 = v2[1];
  v49 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v50 = *v3;
  MEMORY[0x277D82BE0](*v3);
  (*(v42 + 16))(v1, v41 + qword_280FE3800, v44);
  sub_268F9AB14();
  v46 = sub_268F9AB04();
  v45 = *(v42 + 8);
  v45(v43, v44);
  v45(v1, v44);
  sub_268DB9934(v47, v48, v49, v50, (v46 ^ 1) & 1);
  v52 = [v51 settingMetadata];
  if (v52)
  {
    v37 = [v52 settingId];
    v38._countAndFlagsBits = sub_268F9AE24();
    v38._object = v4;
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v37);
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  *(v40 + 184) = v39._object;
  if (v39._object)
  {
    *(v40 + 56) = v39;

    BinarySettingIdentifier.init(rawValue:)(v39);
    if (v53 != 65 && (v53 == 35 || v53 == 36))
    {
      sub_268CDE730(*(v40 + 144) + qword_280FE37B0, v40 + 16);
      v33 = *(v40 + 40);
      v34 = *(v40 + 48);
      __swift_project_boxed_opaque_existential_1((v40 + 16), v33);
      v36 = sub_268E948B8();
      v32 = v5;
      *(v40 + 192) = v5;
      v35 = (*(v34 + 128) + **(v34 + 128));
      v6 = *(*(v34 + 128) + 4);
      v7 = swift_task_alloc();
      *(v40 + 200) = v7;
      *v7 = *(v40 + 72);
      v7[1] = sub_268EFD404;

      return v35(v36, v32, v33, v34);
    }

    sub_268D28CD0();
    v30 = swift_allocError();
    swift_willThrow();

    v31 = v30;
  }

  else
  {
    v9 = sub_268DB98D4();
    v27 = *v9;
    v25 = v9[1];
    v26 = *(v9 + 16);
    v10 = sub_268DC7BA8();
    v28 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268DB9B78(v27, v25, v26, v28);
    MEMORY[0x277D82BD8](v28);
    sub_268D28BD4();
    v29 = swift_allocError();
    *v11 = 2;
    swift_willThrow();
    v31 = v29;
  }

  v23 = *(v40 + 176);
  v24 = *(v40 + 168);
  v12 = v31;
  *(v40 + 112) = v31;
  v13 = sub_268DC7B48();
  v22 = *v13;
  MEMORY[0x277D82BE0](*v13);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v21 = v14;
  v15 = v31;
  *(v40 + 120) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v19 = sub_268F9AE64();
  v20 = v16;
  v21[3] = MEMORY[0x277D837D0];
  v21[4] = sub_268CDD224();
  *v21 = v19;
  v21[1] = v20;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v22);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v17 = *(*(v40 + 72) + 8);
  v18 = *(v40 + 72);

  return v17();
}

uint64_t sub_268EFD404(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 200);
  v10[9] = *v2;
  v11 = v10 + 9;
  v10[26] = a1;
  v10[27] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268EFD6D0;
  }

  else
  {
    v5 = v10[24];

    v6 = *v11;
    v7 = sub_268EFD588;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268EFD588()
{
  v1 = v0[26];
  v12 = v0[23];
  v13 = v0[22];
  v14 = v0[21];
  v0[9] = v0;
  v0[16] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB98D4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v4 = *(*(v15 + 72) + 8);
  v5 = *(v15 + 72);
  v6 = *(v15 + 208);

  return v4(v6);
}

uint64_t sub_268EFD6D0()
{
  v1 = v0[24];
  v10 = v0[23];
  v0[9] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v15 = v0[27];
  v16 = v0[22];
  v17 = v0[21];
  v2 = v15;
  v0[14] = v15;
  v3 = sub_268DC7B48();
  v14 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v4;
  v5 = v15;
  v0[15] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v11 = sub_268F9AE64();
  v12 = v6;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v14);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v7 = *(v0[9] + 8);
  v8 = v0[9];

  return v7();
}

uint64_t sub_268EFD960(uint64_t a1, uint64_t a2)
{
  *(v3 + 896) = v2;
  *(v3 + 888) = a2;
  *(v3 + 880) = a1;
  *(v3 + 608) = v3;
  *(v3 + 616) = 0;
  *(v3 + 624) = 0;
  *(v3 + 632) = 0;
  *(v3 + 416) = 0;
  *(v3 + 424) = 0;
  *(v3 + 656) = 0;
  *(v3 + 672) = 0;
  *(v3 + 680) = 0;
  *(v3 + 696) = 0;
  *(v3 + 704) = 0;
  *(v3 + 720) = 0;
  *(v3 + 728) = 0;
  *(v3 + 736) = 0;
  *(v3 + 1288) = 0;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  *(v3 + 744) = 0;
  *(v3 + 760) = 0;
  *(v3 + 560) = 0;
  *(v3 + 568) = 0;
  *(v3 + 776) = 0;
  *(v3 + 792) = 0;
  *(v3 + 576) = 0;
  *(v3 + 584) = 0;
  *(v3 + 808) = 0;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0;
  *(v3 + 816) = 0;
  *(v3 + 1312) = 0;
  *(v3 + 1320) = 0;
  *(v3 + 1328) = 0;
  *(v3 + 592) = 0;
  *(v3 + 600) = 0;
  *(v3 + 832) = 0;
  *(v3 + 848) = 0;
  *(v3 + 856) = 0;
  *(v3 + 872) = 0;
  v4 = sub_268F9AB24();
  *(v3 + 904) = v4;
  v7 = *(v4 - 8);
  *(v3 + 912) = v7;
  v8 = *(v7 + 64);
  *(v3 + 920) = swift_task_alloc();
  *(v3 + 928) = swift_task_alloc();
  *(v3 + 616) = a1;
  *(v3 + 624) = a2;
  *(v3 + 632) = v2;
  v5 = *(v3 + 608);

  return MEMORY[0x2822009F8](sub_268EFDB38, 0);
}

uint64_t sub_268EFDB38()
{
  v236 = v0;
  v1 = *(v0 + 888);
  v230 = v1;
  *(v0 + 608) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v230)
  {
    v227 = *(v229 + 888);
    v228 = [v227 errorDetail];
    if (v228)
    {
      v223 = sub_268F9AE24();
      v224 = v2;
      MEMORY[0x277D82BD8](v228);
      v225 = v223;
      v226 = v224;
    }

    else
    {
      v225 = 0;
      v226 = 0;
    }

    MEMORY[0x277D82BD8](v227);
    v221 = v225;
    v222 = v226;
  }

  else
  {
    v221 = 0;
    v222 = 0;
  }

  *(v229 + 936) = v222;
  if (!v222)
  {
    v91 = *(v229 + 888);
    v84 = sub_268DC866C();
    v95 = *v84;
    MEMORY[0x277D82BE0](*v84);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v94 = v85;
    MEMORY[0x277D82BE0](v91);
    *(v229 + 640) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v92 = sub_268F9AE64();
    v93 = v86;
    v94[3] = MEMORY[0x277D837D0];
    v94[4] = sub_268CDD224();
    *v94 = v92;
    v94[1] = v93;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v95);
    sub_268D28BD4();
    swift_allocError();
    *v87 = 3;
    swift_willThrow();
    goto LABEL_70;
  }

  v3 = *(v229 + 928);
  v212 = *(v229 + 920);
  v213 = *(v229 + 904);
  v210 = *(v229 + 896);
  v211 = *(v229 + 912);
  *(v229 + 416) = v221;
  *(v229 + 424) = v222;
  v4 = sub_268DB9CB4();
  v216 = *v4;
  v217 = v4[1];
  v218 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v219 = *v5;
  MEMORY[0x277D82BE0](*v5);
  (*(v211 + 16))(v3, v210 + qword_280FE3800, v213);
  sub_268F9AB14();
  v215 = sub_268F9AB04();
  v214 = *(v211 + 8);
  v214(v212, v213);
  v214(v3, v213);
  sub_268DB9934(v216, v217, v218, v219, (v215 ^ 1) & 1);
  MEMORY[0x277D82BD8](v219);

  *(v229 + 432) = sub_268E948B8();
  *(v229 + 440) = v6;
  v220 = MEMORY[0x26D62DB50](*(v229 + 432), *(v229 + 440), v221, v222);
  sub_268CD9D30(v229 + 432);
  if (v220)
  {
    v208 = *(v229 + 880);

    v209 = [v208 settingMetadata];
    if (v209)
    {
      v203 = [v209 settingId];
      v204 = sub_268F9AE24();
      v205 = v7;
      MEMORY[0x277D82BD8](v209);
      MEMORY[0x277D82BD8](v203);
      v206 = v204;
      v207 = v205;
    }

    else
    {
      v206 = 0;
      v207 = 0;
    }

    *(v229 + 944) = v207;
    if (v207)
    {
      *(v229 + 592) = v206;
      *(v229 + 600) = v207;
      if (sub_268E07AE4(v206, v207))
      {
        v198 = *(v229 + 896);
        sub_268CDE730(v198 + qword_280FE80A0, v229 + 376);
        v200 = *(v229 + 400);
        v201 = *(v229 + 408);
        __swift_project_boxed_opaque_existential_1((v229 + 376), v200);

        v199 = swift_task_alloc();
        *(v229 + 952) = v199;
        v199[2] = v198;
        v199[3] = v206;
        v199[4] = v207;
        v202 = (*(v201 + 24) + **(v201 + 24));
        v8 = *(*(v201 + 24) + 4);
        v9 = swift_task_alloc();
        v10 = v199;
        v11 = v200;
        v12 = v201;
        v13 = v202;
        v14 = v9;
        v15 = sub_268F1C0C0;
        *(v229 + 960) = v14;
        *v14 = *(v229 + 608);
        v14[1] = sub_268F0038C;

        return v13(v15, v10, v11, v12);
      }

      if (sub_268E07B94(v206, v207))
      {
        v193 = *(v229 + 896);
        sub_268CDE730(v193 + qword_280FE80A0, v229 + 336);
        v195 = *(v229 + 360);
        v196 = *(v229 + 368);
        __swift_project_boxed_opaque_existential_1((v229 + 336), v195);

        v194 = swift_task_alloc();
        *(v229 + 984) = v194;
        v194[2] = v193;
        v194[3] = v206;
        v194[4] = v207;
        v197 = (*(v196 + 48) + **(v196 + 48));
        v16 = *(*(v196 + 48) + 4);
        v17 = swift_task_alloc();
        v10 = v194;
        v11 = v195;
        v12 = v196;
        v13 = v197;
        v18 = v17;
        v15 = sub_268F1C0B0;
        *(v229 + 992) = v18;
        *v18 = *(v229 + 608);
        v18[1] = sub_268F006A4;

        return v13(v15, v10, v11, v12);
      }

      v81 = sub_268DB98D4();
      v98 = *v81;
      v96 = v81[1];
      v97 = *(v81 + 16);
      v82 = sub_268DC7BA8();
      v99 = *v82;
      MEMORY[0x277D82BE0](*v82);
      sub_268DB9B78(v98, v96, v97, v99);
      MEMORY[0x277D82BD8](v99);
      sub_268D28BD4();
      swift_allocError();
      *v83 = 4;
      swift_willThrow();
    }

    else
    {
      v19 = sub_268DB98D4();
      v191 = *v19;
      v189 = v19[1];
      v190 = *(v19 + 16);
      v20 = sub_268DC7BA8();
      v192 = *v20;
      MEMORY[0x277D82BE0](*v20);
      sub_268DB9B78(v191, v189, v190, v192);
      MEMORY[0x277D82BD8](v192);
      sub_268D28BD4();
      swift_allocError();
      *v21 = 2;
      swift_willThrow();
    }

    goto LABEL_70;
  }

  *(v229 + 448) = sub_268E948B8();
  *(v229 + 456) = v22;
  v187 = MEMORY[0x26D62DB50](*(v229 + 448), *(v229 + 456), v221, v222);
  sub_268CD9D30(v229 + 448);
  if ((v187 & 1) == 0)
  {

    *(v229 + 464) = sub_268E948B8();
    *(v229 + 472) = v43;
    v150 = MEMORY[0x26D62DB50](*(v229 + 464), *(v229 + 472), v221, v222);
    sub_268CD9D30(v229 + 464);
    if (v150)
    {
      v147 = *(v229 + 880);

      *(v229 + 768) = v147;
      v44 = sub_268D2E630();
      v148 = SettingIntent.settingIdentifier.getter(v44, &protocol witness table for INGetSettingIntent);
      v149 = v45;
      *(v229 + 1120) = v45;
      if (v45)
      {
        v46 = *(v229 + 896);
        *(v229 + 560) = v148;
        *(v229 + 568) = v45;
        sub_268CDE730(v46 + qword_280FE80A0, v229 + 176);
        v144 = *(v229 + 200);
        v145 = *(v229 + 208);
        __swift_project_boxed_opaque_existential_1((v229 + 176), v144);

        v143 = swift_task_alloc();
        *(v229 + 1128) = v143;
        *(v143 + 16) = v148;
        *(v143 + 24) = v149;
        v146 = (*(v145 + 32) + **(v145 + 32));
        v47 = *(*(v145 + 32) + 4);
        v48 = swift_task_alloc();
        v10 = v143;
        v11 = v144;
        v12 = v145;
        v13 = v146;
        v49 = v48;
        v15 = sub_268F1C078;
        *(v229 + 1136) = v49;
        *v49 = *(v229 + 608);
        v49[1] = sub_268F013CC;

        return v13(v15, v10, v11, v12);
      }

      v50 = sub_268DB98D4();
      v141 = *v50;
      v139 = v50[1];
      v140 = *(v50 + 16);
      v51 = sub_268DC7BA8();
      v142 = *v51;
      MEMORY[0x277D82BE0](*v51);
      sub_268DB9B78(v141, v139, v140, v142);
      MEMORY[0x277D82BD8](v142);
      sub_268D28BD4();
      swift_allocError();
      *v52 = 2;
      swift_willThrow();
    }

    else
    {

      *(v229 + 480) = sub_268E948B8();
      *(v229 + 488) = v53;
      v138 = MEMORY[0x26D62DB50](*(v229 + 480), *(v229 + 488), v221, v222);
      sub_268CD9D30(v229 + 480);
      if (v138)
      {
        v136 = *(v229 + 880);

        v137 = [v136 settingMetadata];
        if (v137)
        {
          v134 = [v137 targetDevice];
          MEMORY[0x277D82BD8](v137);
          v135 = v134;
        }

        else
        {
          v135 = 0;
        }

        *(v229 + 1160) = v135;
        if (v135)
        {
          v133 = *(v229 + 880);
          *(v229 + 728) = v135;
          *(v229 + 736) = [v135 deviceCategory];
          *(v229 + 1288) = sub_268E07FF4(v133) & 1;
          *(v229 + 544) = sub_268F9AEF4();
          *(v229 + 552) = v54;
          BatteryDevice = ReadBatteryDeviceCategory.rawValue.getter();
          v56 = *(v229 + 552);
          *(v229 + 544) = BatteryDevice;
          *(v229 + 552) = v57;

          sub_268CDE730(*(v229 + 896) + qword_280FE37D0, v229 + 136);
          v130 = *(v229 + 160);
          v131 = *(v229 + 168);
          __swift_project_boxed_opaque_existential_1((v229 + 136), v130);
          v129 = swift_task_alloc();
          *(v229 + 1168) = v129;
          *(v129 + 16) = v229 + 544;
          v132 = (*(v131 + 8) + **(v131 + 8));
          v58 = *(*(v131 + 8) + 4);
          v59 = swift_task_alloc();
          v10 = v129;
          v11 = v130;
          v12 = v131;
          v13 = v132;
          v60 = v59;
          v15 = sub_268F1C070;
          *(v229 + 1176) = v60;
          *v60 = *(v229 + 608);
          v60[1] = sub_268F016D4;

          return v13(v15, v10, v11, v12);
        }

        v61 = sub_268DC866C();
        v128 = *v61;
        MEMORY[0x277D82BE0](*v61);
        sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v128);
        sub_268D28CD0();
        swift_allocError();
        swift_willThrow();
      }

      else
      {

        *(v229 + 496) = sub_268E948B8();
        *(v229 + 504) = v62;
        v127 = MEMORY[0x26D62DB50](*(v229 + 496), *(v229 + 504), v221, v222);
        sub_268CD9D30(v229 + 496);
        if (v127)
        {
          v121 = *(v229 + 896);

          sub_268CDE730(v121 + qword_280FE37B0, v229 + 96);
          v123 = *(v229 + 120);
          v124 = *(v229 + 128);
          __swift_project_boxed_opaque_existential_1((v229 + 96), v123);
          v126 = sub_268E948B8();
          v122 = v63;
          *(v229 + 1200) = v63;
          v125 = (*(v124 + 128) + **(v124 + 128));
          v64 = *(*(v124 + 128) + 4);
          v65 = swift_task_alloc();
          v10 = v122;
          v11 = v123;
          v12 = v124;
          v13 = v125;
          v66 = v65;
          v15 = v126;
          *(v229 + 1208) = v66;
          *v66 = *(v229 + 608);
          v66[1] = sub_268F019E4;

          return v13(v15, v10, v11, v12);
        }

        *(v229 + 512) = sub_268E948B8();
        *(v229 + 520) = v67;
        v120 = MEMORY[0x26D62DB50](*(v229 + 512), *(v229 + 520), v221, v222);
        sub_268CD9D30(v229 + 512);
        if (v120)
        {
          v114 = *(v229 + 896);

          sub_268CDE730(v114 + qword_280FE37B0, v229 + 56);
          v116 = *(v229 + 80);
          v117 = *(v229 + 88);
          __swift_project_boxed_opaque_existential_1((v229 + 56), v116);
          v119 = sub_268E948B8();
          v115 = v68;
          *(v229 + 1232) = v68;
          v118 = (*(v117 + 128) + **(v117 + 128));
          v69 = *(*(v117 + 128) + 4);
          v70 = swift_task_alloc();
          v10 = v115;
          v11 = v116;
          v12 = v117;
          v13 = v118;
          v71 = v70;
          v15 = v119;
          *(v229 + 1240) = v71;
          *v71 = *(v229 + 608);
          v71[1] = sub_268F01CC8;

          return v13(v15, v10, v11, v12);
        }

        *(v229 + 528) = sub_268E948B8();
        *(v229 + 536) = v72;
        v113 = MEMORY[0x26D62DB50](*(v229 + 528), *(v229 + 536), v221, v222);
        sub_268CD9D30(v229 + 528);
        if (v113)
        {
          v109 = *(v229 + 896);

          sub_268CDE730(v109 + qword_280FE80A0, v229 + 16);
          v112 = *(v229 + 40);
          v110 = *(v229 + 48);
          __swift_project_boxed_opaque_existential_1((v229 + 16), v112);
          v111 = (*(v110 + 104) + **(v110 + 104));
          v73 = *(*(v110 + 104) + 4);
          v74 = swift_task_alloc();
          *(v229 + 1264) = v74;
          *v74 = *(v229 + 608);
          v74[1] = sub_268F01FAC;

          return v111(v112, v110);
        }

        v100 = *(v229 + 888);

        v75 = sub_268DC866C();
        v104 = *v75;
        MEMORY[0x277D82BE0](*v75);
        sub_268F9B294();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        sub_268F9B734();
        v103 = v76;
        MEMORY[0x277D82BE0](v100);
        *(v229 + 648) = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
        v101 = sub_268F9AE64();
        v102 = v77;
        v103[3] = MEMORY[0x277D837D0];
        v103[4] = sub_268CDD224();
        *v103 = v101;
        v103[1] = v102;
        sub_268CD0F7C();
        sub_268F9AC04();

        MEMORY[0x277D82BD8](v104);
        v78 = sub_268DB98D4();
        v107 = *v78;
        v105 = v78[1];
        v106 = *(v78 + 16);
        v79 = sub_268DC7BA8();
        v108 = *v79;
        MEMORY[0x277D82BE0](*v79);
        sub_268DB9B78(v107, v105, v106, v108);
        MEMORY[0x277D82BD8](v108);
        sub_268D28BD4();
        swift_allocError();
        *v80 = 4;
        swift_willThrow();
      }
    }

LABEL_70:
    v88 = *(v229 + 928);
    v90 = *(v229 + 920);

    v35 = v188;
    v36 = *(*(v229 + 608) + 8);
    v89 = *(v229 + 608);

    return v36(v35);
  }

  v185 = *(v229 + 880);

  *(v229 + 800) = v185;
  v23 = sub_268D2E630();
  v186._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v23, &protocol witness table for INGetSettingIntent);
  v186._object = v24;
  *(v229 + 1016) = v24;
  if (!v24)
  {
    v40 = sub_268DB98D4();
    v153 = *v40;
    v151 = v40[1];
    v152 = *(v40 + 16);
    v41 = sub_268DC7BA8();
    v154 = *v41;
    MEMORY[0x277D82BE0](*v41);
    sub_268DB9B78(v153, v151, v152, v154);
    MEMORY[0x277D82BD8](v154);
    sub_268D28BD4();
    swift_allocError();
    *v42 = 2;
    swift_willThrow();

    goto LABEL_70;
  }

  *(v229 + 576) = v186._countAndFlagsBits;
  *(v229 + 584) = v24;
  sub_268D28C4C();
  *(v229 + 808) = sub_268CF0C44();
  v25 = BinarySettingIdentifier.rawValue.getter();
  v184 = MEMORY[0x26D62DB50](v186._countAndFlagsBits, v186._object, v25);

  if (v184)
  {
    v178 = *(v229 + 896);
    v177 = *(v178 + qword_280FE37F8);

    v234[2] = 45;
    v26._countAndFlagsBits = BinarySettingIdentifier.rawValue.getter();
    BinarySettingIdentifier.init(rawValue:)(v26);
    v235 = v234[1];
    v183 = sub_268F397B4(&v235);

    *(v229 + 1328) = v183;
    sub_268CDE730(v178 + qword_280FE80A0, v229 + 296);
    v180 = *(v229 + 320);
    v181 = *(v229 + 328);
    __swift_project_boxed_opaque_existential_1((v229 + 296), v180);

    v179 = swift_task_alloc();
    *(v229 + 1024) = v179;
    *(v179 + 16) = v186;
    v182 = (*(v181 + 64) + **(v181 + 64));
    v27 = *(*(v181 + 64) + 4);
    v28 = swift_task_alloc();
    *(v229 + 1032) = v28;
    *v28 = *(v229 + 608);
    v28[1] = sub_268F009BC;

    return v182(v183, sub_268F1C0A4, v179, v180, v181);
  }

  else
  {

    BinarySettingIdentifier.init(rawValue:)(v186);
    if (v231 == 65)
    {

      NumericSettingIdentifier.init(rawValue:)(v186);
      if (v232 == 13)
      {
        v166 = *(v229 + 1016);
        v167 = *(v229 + 936);
        v32 = sub_268DB9CB4();
        v164 = *v32;
        v162 = v32[1];
        v163 = *(v32 + 16);
        v33 = sub_268DC7BA8();
        v165 = *v33;
        MEMORY[0x277D82BE0](*v33);
        sub_268DB9B78(v164, v162, v163, v165);
        MEMORY[0x277D82BD8](v165);
        v169 = *(v229 + 808);
        MEMORY[0x277D82BE0](v169);
        MEMORY[0x277D82BD8](*(v229 + 808));

        v34 = *(v229 + 928);
        v168 = *(v229 + 920);

        v35 = v169;
        v36 = *(*(v229 + 608) + 8);
        v37 = *(v229 + 608);

        return v36(v35);
      }

      v156 = *(v229 + 896);
      *(v229 + 1296) = v232;
      v155 = *(v156 + qword_280FE37F8);

      v233 = v232;
      v161 = sub_268F3988C(&v233);

      *(v229 + 1304) = v161;
      sub_268CDE730(v156 + qword_280FE80A0, v229 + 216);
      v158 = *(v229 + 240);
      v159 = *(v229 + 248);
      __swift_project_boxed_opaque_existential_1((v229 + 216), v158);

      v157 = swift_task_alloc();
      *(v229 + 1088) = v157;
      *(v157 + 16) = v186;
      *(v157 + 32) = v232;
      v160 = (*(v159 + 72) + **(v159 + 72));
      v38 = *(*(v159 + 72) + 4);
      v39 = swift_task_alloc();
      *(v229 + 1096) = v39;
      *v39 = *(v229 + 608);
      v39[1] = sub_268F0105C;

      return v160(v161, sub_268F1C084, v157, v158, v159);
    }

    else
    {
      v171 = *(v229 + 896);
      *(v229 + 1312) = v231;
      v170 = *(v171 + qword_280FE37F8);

      v234[0] = v231;
      v176 = sub_268F397B4(v234);

      *(v229 + 1320) = v176;
      sub_268CDE730(v171 + qword_280FE37D0, v229 + 256);
      v173 = *(v229 + 280);
      v174 = *(v229 + 288);
      __swift_project_boxed_opaque_existential_1((v229 + 256), v173);

      v172 = swift_task_alloc();
      *(v229 + 1056) = v172;
      *(v172 + 16) = v186;
      *(v172 + 32) = v231;
      v175 = (*(v174 + 24) + **(v174 + 24));
      v30 = *(*(v174 + 24) + 4);
      v31 = swift_task_alloc();
      *(v229 + 1064) = v31;
      *v31 = *(v229 + 608);
      v31[1] = sub_268F00D00;

      return v175(v176, sub_268F1C094, v172, v173, v174);
    }
  }
}

uint64_t sub_268F0038C(uint64_t a1)
{
  v14 = *v2;
  v12 = (*v2 + 16);
  v13 = v14 + 76;
  v4 = *(*v2 + 960);
  v14[76] = *v2;
  v14[121] = a1;
  v14[122] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F0227C;
  }

  else
  {
    v5 = v12[117];
    v11 = v12[116];
    v10 = v12[110];

    v6 = *v13;
    v7 = sub_268F00534;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F00534()
{
  v1 = v0[121];
  v12 = v0[118];
  v13 = v0[117];
  v0[76] = v0;
  v0[109] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v15 = v0[121];
  v4 = v0[116];
  v14 = v0[115];

  v5 = *(v0[76] + 8);
  v6 = v0[76];

  return v5(v15);
}

uint64_t sub_268F006A4(uint64_t a1)
{
  v14 = *v2;
  v12 = (*v2 + 16);
  v13 = v14 + 76;
  v4 = *(*v2 + 992);
  v14[76] = *v2;
  v14[125] = a1;
  v14[126] = v1;

  if (v1)
  {
    v8 = *v13;
    v7 = sub_268F02580;
  }

  else
  {
    v5 = v12[121];
    v11 = v12[116];
    v10 = v12[110];

    v6 = *v13;
    v7 = sub_268F0084C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F0084C()
{
  v1 = v0[125];
  v12 = v0[118];
  v13 = v0[117];
  v0[76] = v0;
  v0[106] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v15 = v0[125];
  v4 = v0[116];
  v14 = v0[115];

  v5 = *(v0[76] + 8);
  v6 = v0[76];

  return v5(v15);
}

uint64_t sub_268F009BC(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 76;
  v4 = *(*v2 + 1032);
  v13[76] = *v2;
  v13[130] = a1;
  v13[131] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F02884;
  }

  else
  {
    v5 = *(v11 + 1008);
    v10 = *(v11 + 1000);

    v6 = *v12;
    v7 = sub_268F00B54;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F00B54()
{
  v1 = v0[130];
  v0[76] = v0;
  v2 = v0[101];
  v0[101] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v13 = v0[127];
  v14 = v0[117];
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  v16 = v0[101];
  MEMORY[0x277D82BE0](v16);
  MEMORY[0x277D82BD8](v0[101]);

  v5 = v0[116];
  v15 = v0[115];

  v6 = *(v0[76] + 8);
  v7 = v0[76];

  return v6(v16);
}

uint64_t sub_268F00D00(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 76;
  v4 = *(*v2 + 1064);
  v13[76] = *v2;
  v13[134] = a1;
  v13[135] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F02BAC;
  }

  else
  {
    v5 = *(v11 + 1040);
    v10 = *(v11 + 1000);

    v6 = *v12;
    v7 = sub_268F00E98;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F00E98()
{
  v1 = v0[134];
  v0[76] = v0;
  v2 = v0[101];
  v0[101] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v13 = v0[127];
  v14 = v0[117];
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  v16 = v0[101];
  MEMORY[0x277D82BE0](v16);
  MEMORY[0x277D82BD8](v0[101]);

  v5 = v0[116];
  v15 = v0[115];

  v6 = *(v0[76] + 8);
  v7 = v0[76];

  return v6(v16);
}

uint64_t sub_268F0105C(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 76;
  v4 = *(*v2 + 1096);
  v13[76] = *v2;
  v13[138] = a1;
  v13[139] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F02ED8;
  }

  else
  {
    v5 = *(v11 + 1072);
    v10 = *(v11 + 1000);

    v6 = *v12;
    v7 = sub_268F011F4;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F011F4()
{
  v1 = v0[138];
  v0[76] = v0;
  v2 = v0[101];
  v0[101] = v1;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v13 = v0[127];
  v14 = v0[117];
  v3 = sub_268DB9CB4();
  v11 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v11, v9, v10, v12);
  MEMORY[0x277D82BD8](v12);
  v16 = v0[101];
  MEMORY[0x277D82BE0](v16);
  MEMORY[0x277D82BD8](v0[101]);

  v5 = v0[116];
  v15 = v0[115];

  v6 = *(v0[76] + 8);
  v7 = v0[76];

  return v6(v16);
}

uint64_t sub_268F013CC(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 76;
  v4 = *(*v2 + 1136);
  v13[76] = *v2;
  v13[143] = a1;
  v13[144] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = sub_268F03204;
  }

  else
  {
    v5 = *(v11 + 1112);
    v10 = *(v11 + 1104);

    v6 = *v12;
    v7 = sub_268F01564;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F01564()
{
  v1 = v0[143];
  v12 = v0[140];
  v13 = v0[117];
  v0[76] = v0;
  v0[99] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v15 = v0[143];
  v4 = v0[116];
  v14 = v0[115];

  v5 = *(v0[76] + 8);
  v6 = v0[76];

  return v5(v15);
}

uint64_t sub_268F016D4(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 76;
  v4 = *(*v2 + 1176);
  v12[76] = *v2;
  v12[148] = a1;
  v12[149] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268F034F8;
  }

  else
  {
    v5 = *(v10 + 1152);

    v6 = *v11;
    v7 = sub_268F0185C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F0185C()
{
  v1 = v0[148];
  v12 = v0[145];
  v13 = v0[117];
  v0[76] = v0;
  v0[95] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  sub_268CD9D30((v0 + 68));
  MEMORY[0x277D82BD8](v12);

  v15 = v0[148];
  v4 = v0[116];
  v14 = v0[115];

  v5 = *(v0[76] + 8);
  v6 = v0[76];

  return v5(v15);
}

uint64_t sub_268F019E4(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 76;
  v4 = *(*v2 + 1208);
  v12[76] = *v2;
  v12[152] = a1;
  v12[153] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268F037FC;
  }

  else
  {
    v5 = *(v10 + 1184);

    v6 = *v11;
    v7 = sub_268F01B6C;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F01B6C()
{
  v1 = v0[152];
  v12 = v0[117];
  v0[76] = v0;
  v0[90] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v14 = v0[152];
  v4 = v0[116];
  v13 = v0[115];

  v5 = *(v0[76] + 8);
  v6 = v0[76];

  return v5(v14);
}

uint64_t sub_268F01CC8(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 76;
  v4 = *(*v2 + 1240);
  v12[76] = *v2;
  v12[156] = a1;
  v12[157] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_268F03AD4;
  }

  else
  {
    v5 = *(v10 + 1216);

    v6 = *v11;
    v7 = sub_268F01E50;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F01E50()
{
  v1 = v0[156];
  v12 = v0[117];
  v0[76] = v0;
  v0[87] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v14 = v0[156];
  v4 = v0[116];
  v13 = v0[115];

  v5 = *(v0[76] + 8);
  v6 = v0[76];

  return v5(v14);
}

uint64_t sub_268F01FAC(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 76;
  v4 = *(*v2 + 1264);
  v10[76] = *v2;
  v10[159] = a1;
  v10[160] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = sub_268F03DAC;
  }

  else
  {
    v5 = *v9;
    v6 = sub_268F02120;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268F02120()
{
  v1 = v0[159];
  v12 = v0[117];
  v0[76] = v0;
  v0[84] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_268DB9CB4();
  v10 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);

  v14 = v0[159];
  v4 = v0[116];
  v13 = v0[115];

  v5 = *(v0[76] + 8);
  v6 = v0[76];

  return v5(v14);
}

uint64_t sub_268F0227C()
{
  v22 = v0[122];
  v1 = v0[119];
  v23 = v0[118];
  v24 = v0[117];
  v13 = v0[112];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v2 = v22;
  v0[107] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[108] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB9CB4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v25 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F02580()
{
  v22 = v0[126];
  v1 = v0[123];
  v23 = v0[118];
  v24 = v0[117];
  v13 = v0[112];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v2 = v22;
  v0[104] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[105] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB9CB4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v25 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F02884()
{
  v1 = v0[128];
  v13 = v0[127];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v0[101]);
  v22 = v0[131];
  v23 = v0[127];
  v24 = v0[117];
  v2 = v22;
  v0[102] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[103] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB9CB4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v25 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F02BAC()
{
  v1 = v0[132];
  v13 = v0[127];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  MEMORY[0x277D82BD8](v0[101]);
  v22 = v0[135];
  v23 = v0[127];
  v24 = v0[117];
  v2 = v22;
  v0[102] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[103] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB9CB4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v25 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F02ED8()
{
  v1 = v0[136];
  v13 = v0[127];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v0[101]);
  v22 = v0[139];
  v23 = v0[127];
  v24 = v0[117];
  v2 = v22;
  v0[102] = v22;
  v3 = sub_268DC866C();
  v17 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v16 = v4;
  v5 = v22;
  v0[103] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v14 = sub_268F9AE64();
  v15 = v6;
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = sub_268CDD224();
  *v16 = v14;
  v16[1] = v15;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v17);
  v7 = sub_268DB9CB4();
  v20 = *v7;
  v18 = v7[1];
  v19 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v21 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v20, v18, v19, v21);
  MEMORY[0x277D82BD8](v21);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v25 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F03204()
{
  v21 = v0[144];
  v1 = v0[141];
  v22 = v0[140];
  v23 = v0[117];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v2 = v21;
  v0[97] = v21;
  v3 = sub_268DC866C();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v21;
  v0[98] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v24 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F034F8()
{
  v21 = v0[149];
  v1 = v0[146];
  v22 = v0[145];
  v23 = v0[117];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = v21;
  v0[93] = v21;
  v3 = sub_268DC866C();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v21;
  v0[94] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 68));
  MEMORY[0x277D82BD8](v22);

  v9 = v0[116];
  v24 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F037FC()
{
  v21 = v0[153];
  v1 = v0[150];
  v22 = v0[117];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v21;
  v0[88] = v21;
  v3 = sub_268DC866C();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v21;
  v0[89] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v23 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F03AD4()
{
  v21 = v0[157];
  v1 = v0[154];
  v22 = v0[117];
  v0[76] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v21;
  v0[85] = v21;
  v3 = sub_268DC866C();
  v16 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v4;
  v5 = v21;
  v0[86] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v13 = sub_268F9AE64();
  v14 = v6;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v16);
  v7 = sub_268DB9CB4();
  v19 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v19, v17, v18, v20);
  MEMORY[0x277D82BD8](v20);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v9 = v0[116];
  v23 = v0[115];

  v10 = *(v0[76] + 8);
  v11 = v0[76];

  return v10();
}

uint64_t sub_268F03DAC()
{
  v20 = v0[160];
  v21 = v0[117];
  v0[76] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v20;
  v0[82] = v20;
  v2 = sub_268DC866C();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v3;
  v4 = v20;
  v0[83] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v12 = sub_268F9AE64();
  v13 = v5;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;
  sub_268CD0F7C();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v15);
  v6 = sub_268DB9CB4();
  v18 = *v6;
  v16 = v6[1];
  v17 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v19 = *v7;
  MEMORY[0x277D82BE0](*v7);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v8 = v0[116];
  v22 = v0[115];

  v9 = *(v0[76] + 8);
  v10 = v0[76];

  return v9();
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268F0407C(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  v29 = a1;
  v20 = a2;
  v30._countAndFlagsBits = a3;
  v30._object = a4;
  v40 = 0;
  v39 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v24 = *a2;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29);
  v22 = &v15 - v21;
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v25 = &v15 - v23;
  v40 = v6;
  v39 = v7;
  v27 = 0;
  v38 = *(v24 + qword_280FE8090);
  v37 = *(v24 + qword_280FE8090 + 8);
  v35 = v8;
  v36 = v9;
  v26 = *(v7 + qword_280FE37C8);

  v10 = *v29;
  *v29 = v26;

  type metadata accessor for SettingsBinarySetting();

  v28 = 1;
  v11 = SettingsBinarySetting.__allocating_init(settingId:value:)(v30._countAndFlagsBits, v30._object, 0);
  v12 = v29[1];
  v29[1] = v11;

  *(v29 + 16) = sub_268CDD6D4() & v28;

  result.value = BinarySettingIdentifier.init(rawValue:)(v30).value;
  v31 = v34;
  if (v34 != 65)
  {
    v19 = v31;
    v33 = v31;
    v32 = v31;
    sub_268E0697C(&v32, v25);
    v18 = 0;
    DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters();
    sub_268D29FC8(v25, v29 + *(DoesNotSupportBinarySettingParameters + 28));
    sub_268D2A1F0(v29 + *(DoesNotSupportBinarySettingParameters + 28), v22);
    v14 = sub_268F9A9C4();
    v16 = (*(*(v14 - 8) + 48))(v22, 1) == 1;
    v15 = v16;
    result.value = sub_268D28588(v22);
    *(v29 + *(DoesNotSupportBinarySettingParameters + 32)) = v15;
  }

  return result;
}

SiriSettingsIntents::NumericSettingIdentifier_optional sub_268F0437C(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  v30 = a1;
  v21 = a2;
  v31._countAndFlagsBits = a3;
  v31._object = a4;
  v41 = 0;
  v40 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v25 = *a2;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v30);
  v23 = &v16 - v22;
  v24 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v26 = &v16 - v24;
  v41 = v6;
  v40 = v7;
  v28 = 0;
  v39 = *(v25 + qword_280FE8090);
  v38 = *(v25 + qword_280FE8090 + 8);
  v36 = v8;
  v37 = v9;
  v27 = *(v7 + qword_280FE37C8);

  v10 = *v30;
  *v30 = v27;

  v29 = type metadata accessor for SettingsNumericSetting();

  sub_268D34FD4();
  v11 = sub_268F2B5E0(v28);
  v12 = SettingsNumericSetting.__allocating_init(settingId:value:)(v31._countAndFlagsBits, v31._object, v11);
  v13 = v30[1];
  v30[1] = v12;

  *(v30 + 16) = sub_268CDD6D4() & 1;

  result.value = NumericSettingIdentifier.init(rawValue:)(v31).value;
  v32 = v35;
  if (v35 != 13)
  {
    v20 = v32;
    v34 = v32;
    v33 = v32;
    sub_268E0AE44(&v33, v26);
    v19 = 0;
    DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters();
    sub_268D29FC8(v26, v30 + *(DoesNotSupportNumericSettingParameters + 28));
    sub_268D2A1F0(v30 + *(DoesNotSupportNumericSettingParameters + 28), v23);
    v15 = sub_268F9A9C4();
    v17 = (*(*(v15 - 8) + 48))(v23, 1) == 1;
    v16 = v17;
    result.value = sub_268D28588(v23);
    *(v30 + *(DoesNotSupportNumericSettingParameters + 32)) = v16;
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268F04688(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a1;
  v22._countAndFlagsBits = a2;
  v22._object = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v21);
  v18 = &v12 - v17;
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v20 = &v12 - v19;
  v29 = v5;
  v27 = v6;
  v28 = v7;
  type metadata accessor for SettingsMultiSetting();

  v8 = sub_268E067CC(v22._countAndFlagsBits, v22._object, 0);
  v9 = *(v21 + 8);
  *(v21 + 8) = v8;

  result.value = BinarySettingIdentifier.init(rawValue:)(v22).value;
  v23 = v26;
  if (v26 != 65)
  {
    v16 = v23;
    v25 = v23;
    v24 = v23;
    sub_268E0697C(&v24, v20);
    v15 = 0;
    v14 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters();
    sub_268D29FC8(v20, (v21 + *(v14 + 24)));
    sub_268D2A1F0((v21 + *(v14 + 24)), v18);
    v11 = sub_268F9A9C4();
    v13 = (*(*(v11 - 8) + 48))(v18, 1) == 1;
    v12 = v13;
    result.value = sub_268D28588(v18);
    *(v21 + *(v14 + 28)) = v12;
  }

  return result;
}

uint64_t sub_268F048D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v29 = a1;
  v22 = a2;
  v23 = a3;
  v26 = a4;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29);
  v32 = &v18 - v20;
  v21 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v27 = &v18 - v21;
  v37 = v6;
  v35 = v7;
  v36 = v8;
  v34 = v9;
  v30 = 0;
  type metadata accessor for SettingsBinarySetting();

  v31 = 1;
  v10 = SettingsBinarySetting.__allocating_init(settingId:value:)(v22, v23, 0);
  v11 = *(v29 + 8);
  *(v29 + 8) = v10;

  v33[1] = 44;
  v12 = BinarySettingIdentifier.rawValue.getter();
  v24 = v13;
  v25 = MEMORY[0x26D62DB50](v12);

  v14 = v26;
  v15 = v27;
  *(v29 + 1) = v25 & v31;
  v33[0] = v14;
  sub_268E0697C(v33, v15);
  v28 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters();
  sub_268D29FC8(v27, (v29 + *(v28 + 28)));
  sub_268D2A1F0((v29 + *(v28 + 28)), v32);
  v16 = sub_268F9A9C4();
  v19 = (*(*(v16 - 8) + 48))(v32, v31) == 1;
  v18 = v19;
  result = sub_268D28588(v32);
  *(v29 + *(v28 + 32)) = v18;
  return result;
}

uint64_t sub_268F04B34(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a1;
  v21 = a2;
  v20 = a3;
  v23 = a4;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v26);
  v28 = &v15 - v17;
  v18 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v24 = &v15 - v18;
  v33 = v6;
  v31 = v7;
  v32 = v8;
  v30 = v9;
  v27 = 0;
  v19 = type metadata accessor for SettingsNumericSetting();

  sub_268D34FD4();
  v10 = sub_268F2B5E0(v27);
  v22 = SettingsNumericSetting.__allocating_init(settingId:value:)(v21, v20, v10);
  v25 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters();
  v11 = (v26 + v25[7]);
  v12 = *v11;
  *v11 = v22;

  v29 = v23;
  sub_268E0AE44(&v29, v24);
  sub_268D29FC8(v24, (v26 + v25[6]));
  sub_268D2A1F0((v26 + v25[6]), v28);
  v13 = sub_268F9A9C4();
  v16 = (*(*(v13 - 8) + 48))(v28, 1) == 1;
  v15 = v16;
  result = sub_268D28588(v28);
  *(v26 + v25[9]) = v15;
  return result;
}

uint64_t sub_268F04D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SettingsBinarySetting();

  v3 = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
}

void *sub_268F04DF8(void *a1, uint64_t *a2)
{
  v12 = a1;
  v6 = a2;
  v14 = 0;
  v13 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v5 - v5;
  v14 = MEMORY[0x28223BE20](v12);
  v13 = v2;
  v7 = *v2;
  v8 = v2[1];

  v9 = *v6;
  v10 = v6[1];

  sub_268F9A9A4();
  v3 = sub_268F9A9C4();
  (*(*(v3 - 8) + 56))(v11, 0, 1);
  return sub_268D29FC8(v11, v12);
}

uint64_t sub_268F04F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[114] = v4;
  v5[113] = a4;
  v5[112] = a3;
  v5[111] = a2;
  v5[110] = a1;
  v5[100] = v5;
  v5[101] = 0;
  v5[102] = 0;
  v5[103] = 0;
  v5[104] = 0;
  v5[98] = 0;
  v5[99] = 0;
  v5[101] = a2;
  v5[102] = a3;
  v5[103] = a4;
  v5[104] = v4;
  v6 = v5[100];
  return MEMORY[0x2822009F8](sub_268F04FB4, 0);
}

uint64_t sub_268F04FB4()
{
  v1 = v0[112];
  v0[100] = v0;
  v0[105] = v1;
  v51 = sub_268D2E630();
  v52._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v51, &protocol witness table for INGetSettingIntent);
  v52._object = v2;
  v0[115] = v2;
  if (v2)
  {
    v50[98] = v52._countAndFlagsBits;
    v50[99] = v2;

    BinarySettingIdentifier.init(rawValue:)(v52);
    if (v53 != 65)
    {
      v45 = v50[112];
      v3 = sub_268DC866C();
      v49 = *v3;
      MEMORY[0x277D82BE0](*v3);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v48 = v4;
      MEMORY[0x277D82BE0](v45);
      v50[109] = v45;
      sub_268D59CAC();
      v46 = sub_268F9AE74();
      v47 = v5;
      v48[3] = MEMORY[0x277D837D0];
      v48[4] = sub_268CDD224();
      *v48 = v46;
      v48[1] = v47;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v49);
      v6 = swift_task_alloc();
      v50[116] = v6;
      *v6 = v50[100];
      v6[1] = sub_268F05924;
      v7 = v50[114];
      v8 = v50[113];
      v9 = v50[112];
      v10 = v50[111];

      return sub_268F06108((v50 + 56), v10, v9, v8);
    }

    NumericSettingIdentifier.init(rawValue:)(v52);
    if (v54 != 13)
    {
      v40 = v50[112];
      v12 = sub_268DC866C();
      v44 = *v12;
      MEMORY[0x277D82BE0](*v12);
      sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v43 = v13;
      MEMORY[0x277D82BE0](v40);
      v50[108] = v40;
      sub_268D59CAC();
      v41 = sub_268F9AE74();
      v42 = v14;
      v43[3] = MEMORY[0x277D837D0];
      v43[4] = sub_268CDD224();
      *v43 = v41;
      v43[1] = v42;
      sub_268CD0F7C();
      sub_268F9AC04();

      MEMORY[0x277D82BD8](v44);
      v15 = swift_task_alloc();
      v50[118] = v15;
      *v15 = v50[100];
      v15[1] = sub_268F05C60;
      v16 = v50[114];
      v17 = v50[113];
      v18 = v50[112];
      v19 = v50[111];

      return sub_268F07744((v50 + 2), v19, v18, v17);
    }

    v35 = v50[112];
    v20 = sub_268DC866C();
    v39 = *v20;
    MEMORY[0x277D82BE0](*v20);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v38 = v21;
    MEMORY[0x277D82BE0](v35);
    v50[107] = v35;
    sub_268D59CAC();
    v36 = sub_268F9AE74();
    v37 = v22;
    v38[3] = MEMORY[0x277D837D0];
    v38[4] = sub_268CDD224();
    *v38 = v36;
    v38[1] = v37;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v39);
    sub_268D28BD4();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }

  else
  {
    v30 = v50[112];
    v24 = sub_268DC866C();
    v34 = *v24;
    MEMORY[0x277D82BE0](*v24);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v33 = v25;
    MEMORY[0x277D82BE0](v30);
    v50[106] = v30;
    sub_268D59CAC();
    v31 = sub_268F9AE74();
    v32 = v26;
    v33[3] = MEMORY[0x277D837D0];
    v33[4] = sub_268CDD224();
    *v33 = v31;
    v33[1] = v32;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v34);
    sub_268D28BD4();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
  }

  v28 = *(v50[100] + 8);
  v29 = v50[100];

  return v28();
}

uint64_t sub_268F05924()
{
  v8 = *v1;
  v7 = (v8 + 800);
  v2 = *(*v1 + 928);
  *(v8 + 800) = *v1;
  *(v8 + 936) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_268F05FA8;
  }

  else
  {
    v3 = *v7;
    v4 = sub_268F05A98;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268F05A98()
{
  v0[100] = v0;
  memcpy(v0 + 84, v0 + 56, 0x70uLL);
  memcpy(v0 + 70, v0 + 84, 0x70uLL);
  if (v0[71])
  {
    v7 = v8[110];
    v7[3] = &type metadata for BinarySettingModel;
    v7[4] = sub_268F1C148();
    v1 = swift_allocObject();
    *v7 = v1;
    memcpy((v1 + 16), v8 + 70, 0x70uLL);
  }

  else
  {
    v6 = v8[110];
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
  }

  v2 = v8[115];

  v3 = *(v8[100] + 8);
  v4 = v8[100];

  return v3();
}

uint64_t sub_268F05C60()
{
  v8 = *v1;
  v7 = (v8 + 800);
  v2 = *(*v1 + 944);
  *(v8 + 800) = *v1;
  *(v8 + 952) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_268F06058;
  }

  else
  {
    v3 = *v7;
    v4 = sub_268F05DD4;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268F05DD4()
{
  v0[100] = v0;
  memcpy(v0 + 38, v0 + 2, 0x90uLL);
  memcpy(v0 + 20, v0 + 38, 0x90uLL);
  if (sub_268D34BC0((v0 + 20)) == 1)
  {
    v6 = v8[110];
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
  }

  else
  {
    v7 = v8[110];
    v7[3] = &type metadata for NumericSettingModel;
    v7[4] = sub_268F1C0D0();
    v1 = swift_allocObject();
    *v7 = v1;
    memcpy((v1 + 16), v8 + 20, 0x90uLL);
  }

  v2 = v8[115];

  v3 = *(v8[100] + 8);
  v4 = v8[100];

  return v3();
}

uint64_t sub_268F05FA8()
{
  v1 = v0[115];
  v0[100] = v0;

  v2 = v0[117];
  v3 = *(v0[100] + 8);
  v4 = v0[100];

  return v3();
}

uint64_t sub_268F06058()
{
  v1 = v0[115];
  v0[100] = v0;

  v2 = v0[119];
  v3 = *(v0[100] + 8);
  v4 = v0[100];

  return v3();
}

uint64_t sub_268F06108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 744) = v4;
  *(v5 + 736) = a4;
  *(v5 + 728) = a3;
  *(v5 + 720) = a1;
  *(v5 + 656) = v5;
  *(v5 + 664) = 0;
  *(v5 + 672) = 0;
  *(v5 + 680) = 0;
  *(v5 + 688) = 0;
  *(v5 + 576) = 0u;
  *(v5 + 592) = 0u;
  *(v5 + 896) = 0;
  *(v5 + 704) = 0;
  *(v5 + 608) = 0;
  *(v5 + 616) = 0;
  *(v5 + 624) = 0;
  *(v5 + 632) = 0;
  *(v5 + 904) = 0;
  v14 = *v4;
  v6 = sub_268F9A9C4();
  *(v5 + 752) = v6;
  v10 = *(v6 - 8);
  *(v5 + 760) = v10;
  v7 = *(v10 + 64) + 15;
  *(v5 + 768) = swift_task_alloc();
  *(v5 + 664) = a2;
  *(v5 + 672) = a3;
  *(v5 + 680) = a4;
  *(v5 + 688) = v4;
  *(v5 + 776) = *(v14 + qword_280FE8090);
  *(v5 + 784) = *(v14 + qword_280FE8090 + 8);
  v8 = *(v5 + 656);

  return MEMORY[0x2822009F8](sub_268F062D4, 0);
}

uint64_t sub_268F062D4()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v0[82] = v0;
  v31 = sub_268F1A720(v3, v2);
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v0[99] = v31;
  v0[100] = v4;
  v0[101] = v5;
  v0[102] = v6;
  if (v4)
  {
    v28 = v4;
    *(v30 + 576) = v31;
    *(v30 + 584) = v4;
    *(v30 + 592) = v5;
    *(v30 + 600) = v6;
    v29 = sub_268E07A88(v5);
    *(v30 + 897) = v29;
    if (v29 != 2)
    {
      v7 = *(v30 + 784);
      v8 = *(v30 + 776);
      v9 = *(v30 + 744);
      *(v30 + 896) = v29 & 1;
      v10 = sub_268CDFACC();
      v11 = sub_268F17A54(v31, v32, v33, v34, v29 & 1, v10 & 1);
      *(v30 + 824) = v11;
      *(v30 + 704) = v11;
      v12 = swift_task_alloc();
      *(v30 + 832) = v12;
      *v12 = *(v30 + 656);
      v12[1] = sub_268F06750;
      v13 = *(v30 + 744);

      return sub_268F18090(v31, v28, v33, v34, v29 & 1);
    }

    v23 = *(v30 + 736);
    v15 = sub_268DC866C();
    v27 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v26 = v16;
    MEMORY[0x277D82BE0](v23);
    *(v30 + 696) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE180, qword_268FA9EF8);
    v24 = sub_268F9AE64();
    v25 = v17;
    v26[3] = MEMORY[0x277D837D0];
    v26[4] = sub_268CDD224();
    *v26 = v24;
    v26[1] = v25;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v27);
    sub_268D28BD4();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  else
  {
    sub_268D28BD4();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  v20 = *(v30 + 768);

  v21 = *(*(v30 + 656) + 8);
  v22 = *(v30 + 656);

  return v21();
}

uint64_t sub_268F06750(uint64_t a1, uint64_t a2)
{
  v18 = *v3;
  v15 = *v3 + 16;
  v16 = (*v3 + 656);
  v17 = (*v3 + 608);
  v5 = *(*v3 + 832);
  v18[82] = *v3;
  v18[105] = v2;
  v19 = a1;
  v18[106] = a1;
  v18[107] = a2;

  if (v2)
  {
    v12 = *v16;

    return MEMORY[0x2822009F8](sub_268F07570, 0);
  }

  else
  {
    v14 = *(v15 + 784);
    v13 = *(v15 + 881);
    *v17 = v19;
    v17[1] = a2;
    v6 = swift_task_alloc();
    *(v15 + 848) = v6;
    *v6 = *v16;
    v6[1] = sub_268F069C0;
    v7 = *(v15 + 800);
    v8 = *(v15 + 792);
    v9 = *(v15 + 776);
    v10 = *(v15 + 728);

    return sub_268F193F4(v9, v14, v8, v7, v13 & 1);
  }
}

uint64_t sub_268F069C0(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 82;
  v5 = *(*v3 + 864);
  v11[82] = *v3;
  v11[109] = v2;
  v11[110] = a1;
  v11[111] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = sub_268F07650;
  }

  else
  {
    v6 = *v10;
    v7 = sub_268F06B38;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_268F06B38()
{
  v62 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v58 = *(v0 + 792);
  *(v0 + 656) = v0;
  *(v0 + 624) = v2;
  *(v0 + 632) = v1;

  BinarySettingIdentifier.init(rawValue:)(v58);
  if (v59 == 65)
  {
    v31 = *(v57 + 888);
    v32 = *(v57 + 856);
    v33 = *(v57 + 824);
    v24 = *(v57 + 792);
    v25 = *(v57 + 800);
    v17 = sub_268DC866C();
    v30 = *v17;
    MEMORY[0x277D82BE0](*v17);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v29 = v18;

    *(v57 + 640) = v24;
    *(v57 + 648) = v25;
    v26 = MEMORY[0x277D837D0];
    v27 = sub_268F9AE84();
    v28 = v19;
    v29[3] = v26;
    v29[4] = sub_268CDD224();
    *v29 = v27;
    v29[1] = v28;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v30);
    sub_268D28BD4();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = *(v57 + 768);

    v22 = *(*(v57 + 656) + 8);
    v23 = *(v57 + 656);

    return v22();
  }

  else
  {
    v55 = *(v57 + 888);
    v53 = *(v57 + 856);
    v49 = *(v57 + 824);
    v56 = *(v57 + 792);
    v3 = *(v57 + 768);
    settingId_8 = *(v57 + 752);
    v48 = *(v57 + 760);
    *(v57 + 904) = v59;

    (*(v48 + 16))(v3, v49 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, settingId_8);

    settingId = sub_268F9A9B4();
    v52 = v4;
    (*(v48 + 8))(v3, settingId_8);
    graphicIcon._countAndFlagsBits = sub_268E7AE3C();
    graphicIcon._object = v5;

    BinarySettingIdentifier.init(rawValue:)(v56);
    if (v60 == 65)
    {
      url = 0;
    }

    else
    {
      v61[119] = v60;
      url.value._countAndFlagsBits = sub_268E7B768();
      url.value._object = v6;
    }

    v46 = *(v57 + 728);
    directInvocationId = *sub_268E7EE28();

    *(v57 + 712) = v46;
    v7 = sub_268D2E630();
    SettingIntent.deviceCategory.getter(v7, &protocol witness table for INGetSettingIntent);
    if (v8)
    {
      v43 = 0;
      v44 = 1;
    }

    else
    {
      sub_268CD4334();
      v43 = v9;
      v44 = 0;
    }

    if (v44)
    {
      deviceCategoryInt = 0;
    }

    else
    {
      deviceCategoryInt = v43;
    }

    v10._object = v52;
    v10._countAndFlagsBits = settingId;
    v39 = *(v57 + 824);
    v41 = *(v57 + 768);
    __dst = *(v57 + 720);
    v40 = *(v57 + 800);
    BinarySettingModel.init(settingId:graphicIcon:label:secondLabel:oldValue:updatedValue:url:directInvocationId:deviceCategoryInt:)((v57 + 16), v10, graphicIcon, *(v57 + 848), *(v57 + 880), *(v57 + 897) & 1, *(v57 + 897) & 1, url, directInvocationId, deviceCategoryInt);
    memcpy((v57 + 128), (v57 + 16), 0x70uLL);
    v11 = sub_268DC866C();
    v37 = *v11;
    MEMORY[0x277D82BE0](*v11);
    sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v36 = v12;
    sub_268D28EFC(v57 + 128, v57 + 240);
    memcpy((v57 + 352), (v57 + 128), 0x70uLL);
    v34 = sub_268F9AE64();
    v35 = v13;
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = sub_268CDD224();
    *v36 = v34;
    v36[1] = v35;
    sub_268CD0F7C();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v37);
    sub_268D28EFC(v57 + 128, v57 + 464);
    memcpy(v61, (v57 + 128), 0x70uLL);
    memcpy(__dst, v61, 0x70uLL);
    sub_268D29010((v57 + 128));

    v14 = *(*(v57 + 656) + 8);
    v15 = *(v57 + 656);

    return v14();
  }
}

uint64_t sub_268F07570()
{
  v1 = v0[103];
  v7 = v0[100];
  v0[82] = v0;

  v2 = v0[105];
  v3 = v0[96];

  v4 = *(v0[82] + 8);
  v5 = v0[82];

  return v4();
}

uint64_t sub_268F07650()
{
  v1 = v0[107];
  v7 = v0[103];
  v8 = v0[100];
  v0[82] = v0;

  v2 = v0[109];
  v3 = v0[96];

  v4 = *(v0[82] + 8);
  v5 = v0[82];

  return v4();
}

uint64_t sub_268F07744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1096) = v4;
  *(v5 + 1088) = a4;
  *(v5 + 1080) = a3;
  *(v5 + 1072) = a1;
  *(v5 + 968) = v5;
  *(v5 + 976) = 0;
  *(v5 + 984) = 0;
  *(v5 + 992) = 0;
  *(v5 + 1000) = 0;
  *(v5 + 880) = 0;
  *(v5 + 888) = 0;
  *(v5 + 896) = 0;
  *(v5 + 1016) = 0;
  *(v5 + 904) = 0;
  *(v5 + 912) = 0;
  *(v5 + 1184) = 0;
  *(v5 + 1188) = 0;
  *(v5 + 1024) = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 976) = a2;
  *(v5 + 984) = a3;
  *(v5 + 992) = a4;
  *(v5 + 1000) = v4;
  v6 = *(v5 + 968);

  return MEMORY[0x2822009F8](sub_268F078A8, 0);
}