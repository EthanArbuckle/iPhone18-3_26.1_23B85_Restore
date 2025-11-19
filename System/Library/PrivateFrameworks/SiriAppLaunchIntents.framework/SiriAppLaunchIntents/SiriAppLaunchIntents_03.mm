uint64_t sub_2660FE628()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660FE728()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_8_11();

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_2660FE7E0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8_11();

  OUTLINED_FUNCTION_5_3();
  v2 = *(v0 + 232);

  return v1();
}

uint64_t sub_2660FE870(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2660FFDAC(a2, &v7 - v5);
  return sub_26618B660();
}

uint64_t sub_2660FE900()
{
  OUTLINED_FUNCTION_18();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = *(*(sub_26618B1E0() - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B6A0();
  v1[10] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[11] = v6;
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618C6B0();
  v1[13] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_8_2();
  v13 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2660FEA18()
{
  v26 = v0;
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3B8, &qword_2661910F8);
  v2 = sub_26618B5E0();
  v3 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v8 = __swift_project_value_buffer(v7, qword_2814B4A98);
  (*(v5 + 16))(v6, v8, v7);
  v9 = sub_26618C690();
  v10 = sub_26618CAA0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    v0[5] = v4;
    v17 = sub_26618C8D0();
    v19 = sub_266103A98(v17, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2660B7000, v9, v10, "CloseAppHandleIntentStrategy.makeFailureHandlingIntentResponse() called with code %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x26677CC30](v16, -1, -1);
    MEMORY[0x26677CC30](v15, -1, -1);
  }

  (*(v12 + 8))(v13, v14);
  v20 = v0[7];
  v21 = v0[8];
  v22 = sub_26618B5F0();
  sub_266145AE0();

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_2660FEC90;

  return sub_2660C02E8();
}

uint64_t sub_2660FEC90(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = v4[16];
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v1)
  {
    v9 = v5[15];
    v10 = v5[12];
    v11 = v5[9];

    OUTLINED_FUNCTION_5_3();

    return v12();
  }

  else
  {
    v5[17] = a1;
    v14 = OUTLINED_FUNCTION_3_6();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_2660FEDDC()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[17];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  sub_26618B1B0();
  sub_26618B620();
  v5 = v4[26];
  __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v6 = swift_allocObject();
  v0[18] = v6;
  *(v6 + 16) = xmmword_26618F7E0;
  *(v6 + 32) = v1;
  v7 = *(MEMORY[0x277D5BE58] + 4);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_2660FEF10;
  v10 = v0[12];
  v11 = v0[6];
  OUTLINED_FUNCTION_13_6();

  return MEMORY[0x2821BB488](v12, v13, v14, v15, v16);
}

uint64_t sub_2660FEF10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660FF010()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t *sub_2660FF0B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2660D3208((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  return v0;
}

uint64_t sub_2660FF0F8()
{
  sub_2660FF0B8();

  return MEMORY[0x2821FE8D8](v0, 216, 7);
}

uint64_t sub_2660FF154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_2660FF218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_2660FF2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_2660FF3A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_2660FDD24();
}

uint64_t sub_2660FF44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D2E00;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_2660FF510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_2660FF5D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_2660FE900();
}

uint64_t sub_2660FF680(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660FF734;

  return (sub_2660FF898)(a1, a2);
}

uint64_t sub_2660FF734()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5_7();

  return v6(v5);
}

unint64_t sub_2660FF818(uint64_t a1)
{
  result = sub_2660FF840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660FF840()
{
  result = qword_28005C3B0;
  if (!qword_28005C3B0)
  {
    type metadata accessor for CloseAppHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C3B0);
  }

  return result;
}

uint64_t sub_2660FF898(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26618B070();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660FF958, 0, 0);
}

uint64_t sub_2660FF958()
{
  v1 = v0[2];
  sub_26618B0A0();
  v2 = qword_28005BC58;

  if (v2 != -1)
  {
    swift_once();
    v15 = v0[2];
  }

  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = qword_28005D188;
  type metadata accessor for CloseAppIntent();
  v8 = v7;
  v9 = v6;
  OUTLINED_FUNCTION_4_11();
  sub_26618B090();
  v10 = OUTLINED_FUNCTION_6_8();
  v11(v10);

  v12 = OUTLINED_FUNCTION_5_7();

  return v13(v12);
}

uint64_t sub_2660FFA5C()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_26618B070();
  v0[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_8_2();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660FFB00()
{
  v1 = v0[2];
  sub_26618B0A0();
  v2 = qword_28005BC60;

  if (v2 != -1)
  {
    swift_once();
    v15 = v0[2];
  }

  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = qword_28005D190;
  type metadata accessor for DeepLaunchIntent();
  v8 = v7;
  v9 = v6;
  OUTLINED_FUNCTION_4_11();
  sub_26618B090();
  v10 = OUTLINED_FUNCTION_6_8();
  v11(v10);

  v12 = OUTLINED_FUNCTION_5_7();

  return v13(v12);
}

uint64_t sub_2660FFC04()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_26618B070();
  v0[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_8_2();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660FFCA8()
{
  v1 = v0[2];
  sub_26618B0A0();
  v2 = qword_28005BC68;

  if (v2 != -1)
  {
    swift_once();
    v15 = v0[2];
  }

  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = qword_28005D198;
  type metadata accessor for DeepLaunchIntent();
  v8 = v7;
  v9 = v6;
  OUTLINED_FUNCTION_4_11();
  sub_26618B090();
  v10 = OUTLINED_FUNCTION_6_8();
  v11(v10);

  v12 = OUTLINED_FUNCTION_5_7();

  return v13(v12);
}

uint64_t sub_2660FFDAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660FFE1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660FFEE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return sub_26618B060();
}

uint64_t OUTLINED_FUNCTION_8_11()
{
  v2 = v0[25];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[26];

  return sub_2660FFE1C(v6);
}

uint64_t sub_266100004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 23899;
  }

  OUTLINED_FUNCTION_12_7();
  v31 = v10;
  v32 = v11;
  v30 = MEMORY[0x277D84F90];
  v13 = v12;
  sub_26612A450();
  v14 = v30;
  v15 = *(v13 + 16);
  v16 = (a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
  v27 = *(v13 + 72);
  v28 = v15;
  v26 = (v13 + 8);
  do
  {
    v17 = v28;
    v28(v8, v16, v3);
    v17(v29, v8, v3);
    v18 = sub_26618C8D0();
    v20 = v19;
    (*v26)(v8, v3);
    v30 = v14;
    v21 = *(v14 + 16);
    if (v21 >= *(v14 + 24) >> 1)
    {
      sub_26612A450();
      v14 = v30;
    }

    *(v14 + 16) = v21 + 1;
    v22 = v14 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    v16 += v27;
    --v9;
  }

  while (v9);
  v30 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  sub_266104320();
  OUTLINED_FUNCTION_18_7();

  v23 = OUTLINED_FUNCTION_12_1();
  MEMORY[0x26677BCF0](v23);

  MEMORY[0x26677BCF0](23818, 0xE200000000000000);
  return v31;
}

void sub_2661002AC(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    if (!sub_26618CCD0())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  OUTLINED_FUNCTION_12_7();
  v4 = sub_2661005E8(a1);
  if (!v4)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
    sub_266104320();
    OUTLINED_FUNCTION_18_7();

    v14 = OUTLINED_FUNCTION_12_1();
    MEMORY[0x26677BCF0](v14);

    MEMORY[0x26677BCF0](23818, 0xE200000000000000);
    return;
  }

  v5 = v4;
  v15 = a2;
  v16 = MEMORY[0x277D84F90];
  sub_26612A450();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v7(0);
      v9 = sub_26618C8D0();
      v11 = v10;
      v12 = *(v16 + 16);
      if (v12 >= *(v16 + 24) >> 1)
      {
        sub_26612A450();
        v7 = v15;
      }

      ++v6;
      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
    }

    while (v5 != v6);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_26610047C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 23899;
  }

  OUTLINED_FUNCTION_12_7();
  v17 = v3;
  v16 = MEMORY[0x277D84F90];
  sub_26612A450();
  v4 = (a1 + 40);
  do
  {
    v14 = *(v4 - 1);
    v15 = *v4;

    v5 = sub_26618C8D0();
    v7 = v6;
    v8 = *(v16 + 16);
    if (v8 >= *(v16 + 24) >> 1)
    {
      sub_26612A450();
    }

    *(v16 + 16) = v8 + 1;
    v9 = v16 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    v4 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  sub_266104320();
  v10 = OUTLINED_FUNCTION_18_7();
  v12 = v11;

  MEMORY[0x26677BCF0](v10, v12);

  MEMORY[0x26677BCF0](23818, 0xE200000000000000);
  return v17;
}

uint64_t sub_2661005E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26618CCD0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id CloseAppIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloseAppIntentHandler.init()()
{
  sub_26618B0E0();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v0 = static InstalledAppProvider.shared;
  v23 = type metadata accessor for InstalledAppProvider();
  v24 = &protocol witness table for InstalledAppProvider;
  *&v22 = v0;
  v20 = &type metadata for CoreDuetAppSelectionResolver;
  v21 = &off_2877CC198;
  v1 = swift_allocObject();
  *&v19 = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v28 = &type metadata for AppsSearcher;
  v29 = &off_2877CC0A0;
  v2 = swift_allocObject();
  v27[0] = v2;
  v18[20] = 2;
  sub_2660C5864(&v22, v18);
  sub_2660C5864(&v22, v17);
  v3 = objc_opt_self();
  swift_retain_n();
  sub_266104130([v3 sharedPreferences], &selRef_languageCode);
  v4 = type metadata accessor for RegexAppsResolver();
  v18[8] = v4;
  v18[9] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18[5]);
  sub_2660C5864(v17, boxed_opaque_existential_0);
  v6 = boxed_opaque_existential_0 + *(v4 + 20);
  sub_26618A600();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v26)
  {
    v18[13] = &type metadata for AceAppResolver;
    v18[14] = &off_2877CC000;
    v7 = swift_allocObject();
    v18[10] = v7;
    sub_2660B9EB8(&v25, v7 + 56);
    sub_2660B9EB8(&v22, v7 + 16);
    *(v7 + 96) = 2;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v22);
    sub_2660C8040(&v25, &qword_28005C3C0, &qword_266191100);
    memset(&v18[10], 0, 40);
  }

  sub_2660B9EB8(&v19, &v18[15]);
  memcpy((v2 + 16), v18, 0xA8uLL);
  v8 = v28;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v10 = *(v8[-1].Description + 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_26610419C(v12, v0);
  __swift_destroy_boxed_opaque_existential_1(v27);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t CloseAppIntentHandler.resolveApplication(for:)()
{
  OUTLINED_FUNCTION_18();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_26618C6B0();
  v1[12] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[13] = v4;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266100AD8()
{
  v218 = v0;
  v1 = v0;
  v2 = *(v0 + 80);
  v3 = sub_266145AE0();
  v4 = *(v0 + 80);
  if (v3)
  {
    type metadata accessor for Application();
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    OUTLINED_FUNCTION_8();
    v8 = sub_2661038FC(v6, v7);
    v9 = [v4 application];
    if (v9 && (sub_266104130(v9, &selRef_appId), v10))
    {
      sub_26618C8A0();
      OUTLINED_FUNCTION_30_3();
    }

    else
    {
      v5 = 0;
    }

    v32 = *(v0 + 80);
    [v8 setAppId_];

    v33 = [v32 application];
    if (v33 && (sub_266104130(v33, &selRef_name), v34))
    {
      sub_26618C8A0();
      OUTLINED_FUNCTION_30_3();
    }

    else
    {
      v5 = 0;
    }

    [v8 setName_];

    OUTLINED_FUNCTION_39_1();
    if (!v17)
    {
      goto LABEL_104;
    }

    goto LABEL_18;
  }

  v11 = [v4 application];
  v208 = v0;
  if (v11)
  {
    v12 = v11;
    v13 = sub_2660C9D30(v11);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      OUTLINED_FUNCTION_39_1();
      if (!v17)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v18 = *(v0 + 168);
      v19 = *(v0 + 104);
      __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
      v20 = OUTLINED_FUNCTION_26_3();
      v21(v20);

      v22 = sub_26618C690();
      v23 = sub_26618CAD0();

      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v1 + 168);
      v28 = v1 + 96;
      v27 = *(v1 + 96);
      v26 = *(v28 + 8);
      if (v24)
      {
        v29 = OUTLINED_FUNCTION_49_0();
        v30 = OUTLINED_FUNCTION_45_1();
        v217 = v30;
        *v29 = 136315138;
        v31 = sub_266103A98(v15, v16, &v217);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_2660B7000, v22, v23, "Application resolved in previous turn, succeeding with %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      else
      {
      }

      (*(v26 + 8))(v25, v27);
      type metadata accessor for CloseAppApplicationResolutionResult();
      v149 = OUTLINED_FUNCTION_7_9();
      static ApplicationResolutionResult.success(with:)(v149);

      v1 = v208;
      goto LABEL_73;
    }
  }

  v53 = sub_2661040AC(*(v0 + 80));
  if (!v53)
  {
    goto LABEL_77;
  }

  v54 = v53;
  v215 = sub_2661005E8(v53);
  if (!v215)
  {

LABEL_77:
    OUTLINED_FUNCTION_39_1();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v162 = *(v0 + 144);
    v164 = *(v0 + 96);
    v163 = *(v1 + 104);
    v165 = __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
    *(v1 + 184) = v165;
    v166 = *(v163 + 16);
    *(v1 + 192) = v166;
    *(v1 + 200) = (v163 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v166(v162, v165, v164);
    v167 = sub_26618C690();
    v168 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v168))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v169, v170, "No suggested applications found, falling back to appSearcher");
      OUTLINED_FUNCTION_7_2();
    }

    v171 = *(v1 + 144);
    v172 = *(v1 + 96);
    v173 = *(v1 + 104);
    v174 = *(v1 + 80);
    v175 = *(v1 + 88);

    v176 = *(v173 + 8);
    *(v1 + 208) = v176;
    v176(v171, v172);
    sub_2660C5864(v175 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_appsSearcher, v1 + 16);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v177 = [v174 requestedApplication];
    if (v177)
    {
      sub_266104130(v177, &selRef_name);
      v179 = v178;
    }

    else
    {
      v179 = 0;
    }

    *(v1 + 216) = v179;
    v180 = [*(v1 + 80) requestedApplication];
    if (v180)
    {
      v181 = sub_266104130(v180, &selRef_appId);
      v183 = v182;
    }

    else
    {
      v181 = 0;
      v183 = 0;
    }

    *(v1 + 224) = v183;
    v184 = swift_task_alloc();
    *(v1 + 232) = v184;
    *v184 = v1;
    OUTLINED_FUNCTION_38_1(v184);
    v185 = OUTLINED_FUNCTION_12_1();

    return sub_2661515C4(v185, v186, v181, v183, 0);
  }

  OUTLINED_FUNCTION_39_1();
  if (!v17)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v55 = *(v0 + 160);
  v56 = *(v0 + 104);
  __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
  v57 = OUTLINED_FUNCTION_26_3();
  v209 = v58;
  v214 = v59;
  v59(v57);

  v60 = sub_26618C690();
  v61 = sub_26618CAA0();

  v62 = os_log_type_enabled(v60, v61);
  v8 = *(v1 + 160);
  v65 = v1 + 96;
  v63 = *(v1 + 96);
  v64 = *(v65 + 8);
  if (v62)
  {
    v66 = OUTLINED_FUNCTION_49_0();
    v212 = v64;
    v67 = OUTLINED_FUNCTION_45_1();
    v217 = v67;
    *v66 = 136315138;
    OUTLINED_FUNCTION_1_11();
    sub_2661002AC(v54, v68);
    v71 = sub_266103A98(v69, v70, &v217);

    *(v66 + 4) = v71;
    OUTLINED_FUNCTION_41_1(&dword_2660B7000, v72, v73, "Suggested applications: %s");
    __swift_destroy_boxed_opaque_existential_1(v67);
    v64 = v212;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_9_9();
  }

  v213 = *(v64 + 8);
  (v213)(v8, v63);
  v74 = 0;
  v1 = v208;
  v216 = MEMORY[0x277D84F90];
  v206 = (*(v208 + 88) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps);
  v210 = v54 & 0xFFFFFFFFFFFFFF8;
  v211 = v54 & 0xC000000000000001;
  v207 = MEMORY[0x277D84F90];
  v205 = v54;
  while (1)
  {
    if (v215 == v74)
    {

      if (qword_2814B2C48 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v97 = *(v1 + 128);
      v8 = *(v1 + 104);
      __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
      v214(v97);
      v98 = v207;

      v99 = sub_26618C690();
      v100 = v1;
      v101 = sub_26618CAA0();

      v102 = OUTLINED_FUNCTION_43_1();
      v103 = v100[16];
      v105 = v100[12];
      v104 = v100[13];
      if (v102)
      {
        v8 = OUTLINED_FUNCTION_49_0();
        v106 = OUTLINED_FUNCTION_45_1();
        v217 = v106;
        *v8 = 136315138;
        OUTLINED_FUNCTION_1_11();
        sub_2661002AC(v207, v107);
        v110 = sub_266103A98(v108, v109, &v217);

        *(v8 + 1) = v110;
        v98 = v207;
        _os_log_impl(&dword_2660B7000, v99, v101, "Apps before filtering: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v106);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v111 = OUTLINED_FUNCTION_25_4();
      v213(v111);
      v112 = *(v208 + 88);
      v217 = MEMORY[0x277D84F90];
      v113 = sub_2661005E8(v98);
      v114 = 0;
      v1 = v112 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps;
      v115 = v98 & 0xC000000000000001;
      v116 = v98 & 0xFFFFFFFFFFFFFF8;
      while (v113 != v114)
      {
        if (v115)
        {
          v117 = MEMORY[0x26677C150](v114, v98);
        }

        else
        {
          if (v114 >= *(v116 + 16))
          {
            goto LABEL_103;
          }

          v117 = *(v98 + 8 * v114 + 32);
        }

        v118 = v117;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_102;
        }

        sub_2660C9D30(v117);
        if (v119)
        {
          v8 = v119;
          v120 = *(v1 + 32);
          __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
          v121 = *(v120 + 40);
          v122 = OUTLINED_FUNCTION_11_0();
          v124 = v123(v122);

          if (v124)
          {
          }

          else
          {
            sub_26618CDE0();
            v125 = v217[2];
            sub_26618CE10();
            sub_26618CE20();
            sub_26618CDF0();
          }

          v98 = v207;
        }

        else
        {
        }

        ++v114;
      }

      v126 = *(v208 + 120);
      v127 = *(v208 + 96);

      v128 = v217;
      v129 = OUTLINED_FUNCTION_28_4();
      v130(v129);

      v131 = sub_26618C690();
      sub_26618CAA0();

      v132 = OUTLINED_FUNCTION_43_1();
      v133 = *(v208 + 120);
      v135 = *(v208 + 96);
      v134 = *(v208 + 104);
      if (v132)
      {
        v136 = OUTLINED_FUNCTION_49_0();
        v137 = OUTLINED_FUNCTION_45_1();
        v217 = v137;
        *v136 = 136315138;
        OUTLINED_FUNCTION_1_11();
        sub_2661002AC(v128, v138);
        v141 = sub_266103A98(v139, v140, &v217);

        *(v136 + 4) = v141;
        OUTLINED_FUNCTION_81(&dword_2660B7000, v142, v143, "Apps after filtering: %s");
        __swift_destroy_boxed_opaque_existential_1(v137);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v144 = OUTLINED_FUNCTION_25_4();
      v213(v144);
      result = sub_2661005E8(v128);
      v1 = v208;
      if (result != 1)
      {
        if (result >= 2)
        {
          type metadata accessor for CloseAppApplicationResolutionResult();
          v203 = OUTLINED_FUNCTION_7_9();
          static ApplicationResolutionResult.disambiguation(with:)(v203);
          OUTLINED_FUNCTION_7_9();
        }

        else
        {
          v187 = *(v208 + 80);

          v188 = [v187 requestedApplication];
          if (v188 && (sub_266104130(v188, &selRef_name), v189) || (v190 = [*(v208 + 80) requestedApplication]) != 0 && (sub_266104130(v190, &selRef_appId), v191))
          {
            v192 = *(v208 + 112);
            v193 = *(v208 + 96);

            v194 = OUTLINED_FUNCTION_28_4();
            v195(v194);
            v196 = sub_26618C690();
            v197 = sub_26618CAB0();
            if (OUTLINED_FUNCTION_15_2(v197))
            {
              *OUTLINED_FUNCTION_6_2() = 0;
              OUTLINED_FUNCTION_40_2(&dword_2660B7000, v198, v199, "No matching apps were found");
              OUTLINED_FUNCTION_7_2();
            }

            v200 = *(v208 + 104);
            v201 = *(v208 + 112);
            v202 = *(v208 + 96);

            (v213)(v201, v202);
            type metadata accessor for CloseAppApplicationResolutionResult();
            static CloseAppApplicationResolutionResult.unsupported(forReason:)(2);
          }

          else
          {
            type metadata accessor for CloseAppApplicationResolutionResult();
            v204 = [swift_getObjCClassFromMetadata() needsValue];
          }
        }

        goto LABEL_73;
      }

      if ((v128 & 0xC000000000000001) != 0)
      {
        v146 = MEMORY[0x26677C150](0, v128);
      }

      else
      {
        if (!*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v146 = *(v128 + 32);
      }

      v147 = v146;

      type metadata accessor for CloseAppApplicationResolutionResult();
      v148 = OUTLINED_FUNCTION_30_3();
      static ApplicationResolutionResult.success(with:)(v148);

      goto LABEL_73;
    }

    if (v211)
    {
      v75 = MEMORY[0x26677C150](v74, v54);
    }

    else
    {
      if (v74 >= *(v210 + 16))
      {
        goto LABEL_101;
      }

      v75 = *(v54 + 8 * v74 + 32);
    }

    v76 = v75;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    sub_2660C9D30(v75);
    if (!v77)
    {
      goto LABEL_36;
    }

    v8 = v77;
    v78 = v206[4];
    __swift_project_boxed_opaque_existential_1(v206, v206[3]);
    v79 = *(v78 + 16);
    v80 = OUTLINED_FUNCTION_11_0();
    v82 = v81;
    v84 = v83(v80);

    if (v84)
    {
      sub_2660C9D3C(v76);
      if (v96)
      {
        sub_26618C8A0();
        OUTLINED_FUNCTION_7_9();
      }

      else
      {
        v82 = 0;
      }

      [v84 setSceneId_];

      MEMORY[0x26677BD40]();
      v8 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v207 = v216;
      ++v74;
    }

    else
    {
LABEL_36:
      (v214)(*(v1 + 152), v209, *(v1 + 96));
      v85 = v76;
      v86 = sub_26618C690();
      v87 = sub_26618CAA0();

      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v1 + 152);
      v90 = *(v1 + 96);
      if (v88)
      {
        v8 = OUTLINED_FUNCTION_49_0();
        v91 = OUTLINED_FUNCTION_45_1();
        v217 = v91;
        *v8 = 136315138;
        *(v1 + 56) = sub_2660C9D30(v85);
        *(v1 + 64) = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
        v93 = sub_26618C8D0();
        v95 = sub_266103A98(v93, v94, &v217);
        v1 = v208;

        *(v8 + 1) = v95;
        _os_log_impl(&dword_2660B7000, v86, v87, "%s is not found in installedApps", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        v54 = v205;
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      (v213)(v89, v90);
      ++v74;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  OUTLINED_FUNCTION_0_10();
LABEL_18:
  v35 = *(v1 + 176);
  v36 = *(v1 + 104);
  __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
  v37 = OUTLINED_FUNCTION_26_3();
  v38(v37);
  v39 = sub_26618C690();
  v40 = sub_26618CAA0();
  if (os_log_type_enabled(v39, v40))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v46 = *(v1 + 176);
  v48 = *(v1 + 96);
  v47 = *(v1 + 104);

  v49 = *(v47 + 8);
  v50 = OUTLINED_FUNCTION_11_2();
  v51(v50);
  type metadata accessor for CloseAppApplicationResolutionResult();
  v52 = OUTLINED_FUNCTION_7_9();
  static ApplicationResolutionResult.success(with:)(v52);

LABEL_73:
  v151 = *(v1 + 168);
  v150 = *(v1 + 176);
  v153 = *(v1 + 152);
  v152 = *(v1 + 160);
  v155 = *(v1 + 136);
  v154 = *(v1 + 144);
  v156 = v1;
  v157 = *(v1 + 128);
  v159 = *(v156 + 112);
  v158 = *(v156 + 120);

  v160 = OUTLINED_FUNCTION_5_7();

  return v161(v160);
}

uint64_t sub_2661019B0()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  v5[30] = v0;

  if (!v0)
  {
    v12 = v5[27];
    v11 = v5[28];
    v5[31] = v3;
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266101ACC()
{
  v90 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[31];
  v86 = v0[26];
  v2 = v0[24];
  if (qword_2814B2C48 != -1)
  {
LABEL_42:
    OUTLINED_FUNCTION_0_10();
  }

  v3 = v0[16];
  v4 = v0[13];
  __swift_project_value_buffer(v0[12], qword_2814B4AB0);
  v2(v3);

  v5 = sub_26618C690();
  sub_26618CAA0();

  v6 = OUTLINED_FUNCTION_43_1();
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v88 = v1;
  if (v6)
  {
    v10 = OUTLINED_FUNCTION_49_0();
    v11 = OUTLINED_FUNCTION_45_1();
    v89 = v11;
    *v10 = 136315138;
    OUTLINED_FUNCTION_1_11();
    sub_2661002AC(v1, v12);
    v15 = sub_266103A98(v13, v14, &v89);

    *(v10 + 4) = v15;
    OUTLINED_FUNCTION_81(&dword_2660B7000, v16, v17, "Apps before filtering: %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  v18 = OUTLINED_FUNCTION_25_4();
  v86(v18);
  v87 = v0;
  v19 = v0[11];
  v89 = MEMORY[0x277D84F90];
  v20 = sub_2661005E8(v1);
  v21 = 0;
  v22 = (v19 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps);
  v2 = (v1 & 0xC000000000000001);
  v0 = (v1 & 0xFFFFFFFFFFFFFF8);
  while (v20 != v21)
  {
    if (v2)
    {
      v23 = MEMORY[0x26677C150](v21, v1);
    }

    else
    {
      if (v21 >= v0[2])
      {
        goto LABEL_41;
      }

      v23 = *(v1 + 8 * v21 + 32);
    }

    v24 = v23;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v25 = sub_2660C9D30(v23);
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v29 = v22[3];
      v30 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v29);
      LOBYTE(v27) = (*(v30 + 40))(v27, v28, 2, v29, v30);

      if (v27)
      {
      }

      else
      {
        sub_26618CDE0();
        v31 = v89[2];
        sub_26618CE10();
        sub_26618CE20();
        sub_26618CDF0();
      }

      v1 = v88;
    }

    else
    {
    }

    ++v21;
  }

  v32 = v87[15];
  v33 = v87[12];

  v34 = v89;
  v35 = OUTLINED_FUNCTION_36_0();
  v36(v35);

  v37 = sub_26618C690();
  sub_26618CAA0();

  v38 = OUTLINED_FUNCTION_43_1();
  v39 = v87[15];
  v41 = v87[12];
  v40 = v87[13];
  if (v38)
  {
    v42 = OUTLINED_FUNCTION_49_0();
    v43 = OUTLINED_FUNCTION_45_1();
    v89 = v43;
    *v42 = 136315138;
    OUTLINED_FUNCTION_1_11();
    sub_2661002AC(v34, v44);
    v47 = sub_266103A98(v45, v46, &v89);

    *(v42 + 4) = v47;
    OUTLINED_FUNCTION_81(&dword_2660B7000, v48, v49, "Apps after filtering: %s");
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (v86)(v39, v41);
  result = sub_2661005E8(v34);
  if (result == 1)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x26677C150](0, v34);
    }

    else
    {
      if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v51 = *(v34 + 32);
    }

    v52 = v51;

    type metadata accessor for CloseAppApplicationResolutionResult();
    v53 = OUTLINED_FUNCTION_7_9();
    static ApplicationResolutionResult.success(with:)(v53);
  }

  else
  {
    if (result < 2)
    {
      v54 = v87[10];

      v55 = [v54 requestedApplication];
      if (v55 && (sub_266104130(v55, &selRef_name), v56))
      {
        v57 = v87;
      }

      else
      {
        v57 = v87;
        v59 = [v87[10] requestedApplication];
        if (!v59 || (sub_266104130(v59, &selRef_appId), !v60))
        {
          type metadata accessor for CloseAppApplicationResolutionResult();
          v73 = [swift_getObjCClassFromMetadata() needsValue];
          goto LABEL_37;
        }
      }

      v61 = v57[14];
      v62 = v57[12];

      v63 = OUTLINED_FUNCTION_36_0();
      v64(v63);
      v65 = sub_26618C690();
      v66 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v66))
      {
        *OUTLINED_FUNCTION_6_2() = 0;
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v67, v68, "No matching apps were found");
        v57 = v87;
        OUTLINED_FUNCTION_7_2();
      }

      v70 = v57[13];
      v69 = v57[14];
      v71 = v87[12];

      v72 = OUTLINED_FUNCTION_12_1();
      v57 = v87;
      v86(v72);
      type metadata accessor for CloseAppApplicationResolutionResult();
      static CloseAppApplicationResolutionResult.unsupported(forReason:)(2);
      goto LABEL_37;
    }

    type metadata accessor for CloseAppApplicationResolutionResult();
    v58 = OUTLINED_FUNCTION_30_3();
    static ApplicationResolutionResult.disambiguation(with:)(v58);
    OUTLINED_FUNCTION_30_3();
  }

  v57 = v87;
LABEL_37:
  v75 = v57[21];
  v74 = v57[22];
  v76 = v57;
  v77 = v57[20];
  v79 = v76[18];
  v78 = v76[19];
  v81 = v76[16];
  v80 = v76[17];
  v83 = v76[14];
  v82 = v76[15];

  v84 = OUTLINED_FUNCTION_5_7();

  return v85(v84);
}

uint64_t sub_2661020B8()
{
  v44 = v0;
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[17];
  v8 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5(v7, v6, v8);
  v9 = v1;
  v10 = sub_26618C690();
  LOBYTE(v7) = sub_26618CAB0();

  if (os_log_type_enabled(v10, v7))
  {
    v11 = v0[30];
    v42 = v0[26];
    v12 = v0[17];
    v13 = v0[12];
    v14 = v0[13];
    v15 = OUTLINED_FUNCTION_49_0();
    v16 = OUTLINED_FUNCTION_45_1();
    v43 = v16;
    *v15 = 136315138;
    v0[9] = v11;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v18 = sub_26618C8D0();
    v20 = sub_266103A98(v18, v19, &v43);

    *(v15 + 4) = v20;
    OUTLINED_FUNCTION_41_1(&dword_2660B7000, v21, v22, "An error occurred trying to resolve the app: %s");
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_9_9();

    v23 = OUTLINED_FUNCTION_12_1();
    v42(v23);
  }

  else
  {
    v24 = v0[26];
    v25 = v0[17];
    v26 = v0[12];
    v27 = v0[13];

    v28 = OUTLINED_FUNCTION_12_1();
    v24(v28);
  }

  v29 = v0[30];
  type metadata accessor for CloseAppApplicationResolutionResult();
  static CloseAppApplicationResolutionResult.unsupported(forReason:)(1);

  v31 = v0[21];
  v30 = v0[22];
  v33 = v0[19];
  v32 = v0[20];
  v35 = v0[17];
  v34 = v0[18];
  v37 = v0[15];
  v36 = v0[16];
  v38 = v0[14];

  v39 = OUTLINED_FUNCTION_5_7();

  return v40(v39);
}

void sub_266102300(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v21 = MEMORY[0x277D84F90];
  v7 = sub_2661005E8(a3);
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v18 = v4;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return;
    }

    if (v9)
    {
      v10 = MEMORY[0x26677C150](v8, v4);
    }

    else
    {
      if (v8 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v20 = v10;
    v12 = a1(&v20);
    if (v3)
    {

      return;
    }

    if (v12)
    {
      sub_26618CDE0();
      v13 = v7;
      v14 = v9;
      v15 = a1;
      v16 = a2;
      v17 = *(v21 + 16);
      sub_26618CE10();
      a2 = v16;
      a1 = v15;
      v9 = v14;
      v7 = v13;
      v4 = v18;
      sub_26618CE20();
      sub_26618CDF0();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_26610249C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266102560;

  return CloseAppIntentHandler.resolveApplication(for:)();
}

uint64_t sub_266102560()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t CloseAppIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_26618C6B0();
  v0[2] = v1;
  OUTLINED_FUNCTION_0_4(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266102760()
{
  OUTLINED_FUNCTION_1_0();
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = __swift_project_value_buffer(v3, qword_2814B4AB0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v6))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v7, v8, "Confirm step: success");
    OUTLINED_FUNCTION_7_2();
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  v12 = *(v10 + 8);
  v13 = OUTLINED_FUNCTION_12_1();
  v14(v13);
  objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  CloseAppIntentResponse.init(code:userActivity:)(1, 0);
  OUTLINED_FUNCTION_7_9();

  v15 = OUTLINED_FUNCTION_5_7();

  return v16(v15);
}

uint64_t sub_2661028AC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2661046AC;

  return CloseAppIntentHandler.confirm(intent:)();
}

uint64_t CloseAppIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266102A2C()
{
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *(v0 + 72) = __swift_project_value_buffer(*(v0 + 32), qword_2814B4AB0);
  v4 = *(v2 + 16);
  *(v0 + 80) = v4;
  *(v0 + 88) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = OUTLINED_FUNCTION_11_0();
  v4(v5);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    OUTLINED_FUNCTION_49_0();
    v10 = OUTLINED_FUNCTION_34_1();
    *v6 = 138412290;
    *(v6 + 1) = v9;
    *v10 = v9;
    v11 = v9;
    _os_log_impl(&dword_2660B7000, v7, v8, "Calling handle with %@", v6, 0xCu);
    sub_2660C8040(v10, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  v12 = *(v0 + 64);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = *(v0 + 16);

  v16 = *(v14 + 8);
  *(v0 + 96) = v16;
  *(v0 + 104) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17 = OUTLINED_FUNCTION_11_2();
  v16(v17);
  if (sub_266145AE0())
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider), *(*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider + 24));
    v18 = swift_task_alloc();
    *(v0 + 112) = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_38_1(v18);
    OUTLINED_FUNCTION_42_2();

    return sub_266153094();
  }

  v21 = [*(v0 + 16) application];
  if (v21)
  {
    sub_266104130(v21, &selRef_sceneId);
    *(v0 + 128) = v22;
    if (v22)
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider), *(*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider + 24));
      v23 = swift_task_alloc();
      *(v0 + 136) = v23;
      *v23 = v0;
      OUTLINED_FUNCTION_38_1(v23);
      OUTLINED_FUNCTION_42_2();

      return sub_26615313C();
    }
  }

  v25 = [*(v0 + 16) application];
  if (!v25 || (sub_266104130(v25, &selRef_appId), (*(v0 + 152) = v26) == 0))
  {
    v30 = *(v0 + 56);
    v31 = *(v0 + 32);
    v32 = OUTLINED_FUNCTION_11_0();
    v4(v32);
    v33 = sub_26618C690();
    v34 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v34))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v35, v36, "Missing required information to handle intent");
      OUTLINED_FUNCTION_7_2();
    }

    v37 = *(v0 + 56);
    v38 = *(v0 + 32);

    v39 = OUTLINED_FUNCTION_12_1();
    v16(v39);
    v40 = 5;
LABEL_24:
    v41 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
    CloseAppIntentResponse.init(code:userActivity:)(v40, 0);
    OUTLINED_FUNCTION_23_2();

    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_42_2();

    __asm { BRAA            X2, X16 }
  }

  v27 = (*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  if ((sub_266152C70() & 1) == 0)
  {

    v40 = 100;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v28 = swift_task_alloc();
  *(v0 + 160) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_38_1(v28);
  OUTLINED_FUNCTION_42_2();

  return sub_266152E98();
}

uint64_t sub_266102E94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266102F90()
{
  OUTLINED_FUNCTION_1_0();
  v0 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_23_2();

  v1 = OUTLINED_FUNCTION_5_7();

  return v2(v1);
}

uint64_t sub_26610300C()
{
  v3 = v0[15];
  v4 = OUTLINED_FUNCTION_5_8();
  v5(v4);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660C8040(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_31_3();
  v17 = OUTLINED_FUNCTION_11_2();
  v2(v17);
  v18 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_35_1();

  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];

  v22 = OUTLINED_FUNCTION_5_7();

  return v23(v22);
}

uint64_t sub_26610315C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266103258()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 128);

  v2 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_23_2();

  v3 = OUTLINED_FUNCTION_5_7();

  return v4(v3);
}

uint64_t sub_2661032DC()
{
  v3 = v0[16];

  v4 = v0[18];
  v5 = OUTLINED_FUNCTION_5_8();
  v6(v5);
  v7 = v4;
  v8 = sub_26618C690();
  v9 = sub_26618CAB0();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_49_0();
    v10 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660C8040(v10, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_31_3();
  v18 = OUTLINED_FUNCTION_11_2();
  v2(v18);
  v19 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_35_1();

  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];

  v23 = OUTLINED_FUNCTION_5_7();

  return v24(v23);
}

uint64_t sub_266103434()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266103530()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 152);

  v2 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_23_2();

  v3 = OUTLINED_FUNCTION_5_7();

  return v4(v3);
}

uint64_t sub_2661035B4()
{
  v3 = v0[19];

  v4 = v0[21];
  v5 = OUTLINED_FUNCTION_5_8();
  v6(v5);
  v7 = v4;
  v8 = sub_26618C690();
  v9 = sub_26618CAB0();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_49_0();
    v10 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660C8040(v10, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_31_3();
  v18 = OUTLINED_FUNCTION_11_2();
  v2(v18);
  v19 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_35_1();

  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];

  v23 = OUTLINED_FUNCTION_5_7();

  return v24(v23);
}

uint64_t sub_26610372C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_266124ECC(a6, v10);
}

uint64_t sub_2661037B0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2661046AC;

  return CloseAppIntentHandler.handle(intent:)();
}

id CloseAppIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloseAppIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2661038FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

uint64_t sub_266103990(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2661039DC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_266103A3C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_266103A98(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_266103A98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_8();
  v9 = sub_266103B58(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_2660CD384(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

unint64_t sub_266103B58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266103C58(a5, a6);
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
    result = sub_26618CDD0();
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

uint64_t sub_266103C58(uint64_t a1, unint64_t a2)
{
  v4 = sub_266103CA4(a1, a2);
  sub_266103DBC(&unk_2877C9830);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266103CA4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_26618C940())
  {
    result = sub_266103EA0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26618CD70();
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
          result = sub_26618CDD0();
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

uint64_t sub_266103DBC(uint64_t result)
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

    result = sub_266103F10(result, v8, 1, v3);
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

void *sub_266103EA0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3F0, &unk_266191190);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_266103F10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3F0, &unk_266191190);
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

_BYTE **sub_266104004(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_266104014(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_266104088(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_2661040AC(void *a1)
{
  v1 = [a1 suggestedApplications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Application();
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_266104130(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_26618C8B0();

  return v4;
}

id sub_26610419C(const void *a1, uint64_t a2)
{
  v13[3] = &type metadata for AppsSearcher;
  v13[4] = &off_2877CC0A0;
  v13[0] = swift_allocObject();
  memcpy((v13[0] + 16), a1, 0xA8uLL);
  v12[3] = &type metadata for AppTerminationProvider;
  v12[4] = &off_2877CC0D0;
  v4 = objc_allocWithZone(type metadata accessor for CloseAppIntentHandler());
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, &type metadata for AppsSearcher);
  v6 = *(off_2877CC070 + 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for AppTerminationProvider);
  v10 = sub_266104598(v8, a2, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

unint64_t sub_266104320()
{
  result = qword_28005C3E8;
  if (!qword_28005C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005BD80, &qword_26618E528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C3E8);
  }

  return result;
}

uint64_t sub_266104384()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_11(v5);

  return v7(v6);
}

uint64_t sub_26610441C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_11(v5);

  return v7(v6);
}

uint64_t objectdestroy_14Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2661044FC()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_3_11(v5);

  return v7(v6);
}

id sub_266104598(const void *a1, uint64_t a2, void *a3)
{
  v11[3] = type metadata accessor for InstalledAppProvider();
  v11[4] = &protocol witness table for InstalledAppProvider;
  v11[0] = a2;
  v10[3] = &type metadata for AppsSearcher;
  v10[4] = &off_2877CC0A0;
  v10[0] = swift_allocObject();
  memcpy((v10[0] + 16), a1, 0xA8uLL);
  v9[3] = &type metadata for AppTerminationProvider;
  v9[4] = &off_2877CC0D0;
  sub_2660C5864(v10, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_appsSearcher);
  sub_2660C5864(v11, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps);
  sub_2660C5864(v9, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for CloseAppIntentHandler();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  return v0[6];
}

void OUTLINED_FUNCTION_9_9()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return MEMORY[0x2821FBB70](592428, 0xE300000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_23_2()
{
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

void OUTLINED_FUNCTION_31_3()
{
  v4 = v1[12];
  v3 = v1[13];
  v5 = v1[6];
  v6 = v1[4];
}

char *OUTLINED_FUNCTION_34_3()
{

  return CloseAppIntentResponse.init(code:userActivity:)(4, 0);
}

char *OUTLINED_FUNCTION_35_1()
{

  return CloseAppIntentResponse.init(code:userActivity:)(5, 0);
}

void OUTLINED_FUNCTION_40_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_41_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_43_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2661048E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a1;
  v194 = a2;
  v2 = sub_26618B790();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v180 = v4;
  v181 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v179 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v178 = &v168[-v10];
  OUTLINED_FUNCTION_18_2();
  v11 = sub_26618B8E0();
  v12 = OUTLINED_FUNCTION_2_2(v11);
  v176 = v13;
  v177 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_6();
  v175 = v16;
  OUTLINED_FUNCTION_18_2();
  v182 = sub_26618B980();
  v17 = OUTLINED_FUNCTION_2_2(v182);
  v171 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_6();
  v172 = v21;
  OUTLINED_FUNCTION_18_2();
  v183 = sub_26618B840();
  v22 = OUTLINED_FUNCTION_2_2(v183);
  v185 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_6();
  v184 = v26;
  OUTLINED_FUNCTION_18_2();
  v174 = type metadata accessor for AppLaunchIntent();
  v27 = OUTLINED_FUNCTION_16(v174);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_6();
  v186 = v30;
  OUTLINED_FUNCTION_18_2();
  v31 = sub_26618C0E0();
  v32 = OUTLINED_FUNCTION_2_2(v31);
  v187 = v33;
  v188 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_6();
  v189 = v36;
  OUTLINED_FUNCTION_18_2();
  v37 = sub_26618B800();
  v38 = OUTLINED_FUNCTION_2_2(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v43);
  v45 = &v168[-v44];
  v46 = sub_26618C6B0();
  v47 = OUTLINED_FUNCTION_2_2(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_24_1();
  v54 = (v52 - v53);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v60);
  v62 = &v168[-v61];
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_37_0(v46, qword_2814B4A98);
  v63 = v49;
  v64 = *(v49 + 16);
  v173 = v65;
  v191 = v64;
  v192 = (v49 + 16);
  v64(v62);
  v66 = sub_26618C690();
  v67 = sub_26618CAA0();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_20_6(v68);
    OUTLINED_FUNCTION_28_5(&dword_2660B7000, v66, v67, "CloseAppNeedsValueStrategy.actionForInput() called");
    OUTLINED_FUNCTION_7_2();
  }

  v69 = v46;
  v190 = *(v63 + 8);
  v190(v62, v46);
  v70 = v193;
  sub_26618B770();
  v71 = *(v40 + 88);
  v72 = OUTLINED_FUNCTION_33_1();
  v74 = v73(v72);
  if (v74 == *MEMORY[0x277D5C128])
  {
    v75 = *(v40 + 96);
    v76 = OUTLINED_FUNCTION_33_1();
    v77(v76);
    v79 = v187;
    v78 = v188;
    v80 = v189;
    (*(v187 + 32))(v189, v45, v188);
    v81 = v186;
    (*(v79 + 16))(v186, v80, v78);
    if (sub_2660C97B4())
    {
      sub_26618B290();
LABEL_43:
      sub_2660DD7D0(v81);
      return (*(v79 + 8))(v80, v78);
    }

    if (qword_2814B3D30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_10();
    sub_266107F48(v101, 255, v102);
    sub_26618BDA0();
    if (v195 != 11)
    {
      if (sub_266146C4C(v195) == 0x65736F6C63 && v103 == 0xE500000000000000)
      {
      }

      else
      {
        v105 = sub_26618D000();

        if ((v105 & 1) == 0)
        {
          if (qword_2814B2C38 != -1)
          {
            OUTLINED_FUNCTION_2_5();
          }

          OUTLINED_FUNCTION_37_0(v46, qword_2814B4A80);
          OUTLINED_FUNCTION_16_7();
          v106();
          v107 = sub_26618C690();
          v108 = sub_26618CA90();
          if (OUTLINED_FUNCTION_16_4(v108))
          {
            *OUTLINED_FUNCTION_6_2() = 0;
            OUTLINED_FUNCTION_7_7(&dword_2660B7000, v109, v110, "Incorrect verb in intent for flow, ignoring input");
            v80 = v189;
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v111();
          sub_26618B2B0();
          goto LABEL_43;
        }
      }
    }

    OUTLINED_FUNCTION_16_7();
    v131();
    v132 = sub_26618C690();
    v133 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v133))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v134, v135, "CloseAppNeedsValueStrategy.actionForInput() handling");
      v80 = v189;
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_21_7();
    v136();
    sub_26618B2A0();
    goto LABEL_43;
  }

  if (v74 == *MEMORY[0x277D5C160])
  {
    v82 = *(v40 + 96);
    v83 = OUTLINED_FUNCTION_33_1();
    v84(v83);
    v86 = v184;
    v85 = v185;
    v87 = v183;
    (*(v185 + 32))(v184, v45, v183);
    v88 = v175;
    sub_26618B820();
    v89 = sub_26618B8B0();
    (*(v176 + 8))(v88, v177);
    v90 = v178;
    sub_266139C58(v89, v178);

    v91 = v182;
    if (__swift_getEnumTagSinglePayload(v90, 1, v182) == 1)
    {
      sub_2660BF79C(v90, &qword_28005BF28, &qword_26618F960);
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_37_0(v69, qword_2814B4A80);
      OUTLINED_FUNCTION_16_7();
      v92();
      v93 = sub_26618C690();
      v94 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v94))
      {
        v95 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_20_6(v95);
        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_28_5(v96, v97, v98, v99);
        OUTLINED_FUNCTION_7_2();
      }

      OUTLINED_FUNCTION_21_7();
      v100();
      sub_26618B2B0();
      return (*(v85 + 8))(v86, v87);
    }

    OUTLINED_FUNCTION_22_2();
    v129 = v172;
    (*(v88 + 32))(v172, v90, v91);
    if (sub_26618B940() & 1) != 0 || (sub_26618B930())
    {
      sub_26618B290();
LABEL_35:
      (*(v88 + 8))(v129, v91);
      return (*(v85 + 8))(v86, v87);
    }

    if (!sub_266144F30())
    {
      sub_26618B2B0();
      goto LABEL_35;
    }

    sub_26613BA0C();
    v138 = v137;
    if (sub_266145BC4(v137) != 0x65736F6C63 || v139 != 0xE500000000000000)
    {
      v141 = sub_26618D000();

      if (v141)
      {
        goto LABEL_68;
      }

      v88 = 1953068401;
      if (sub_266145BC4(v138) == 1953068401 && v142 == 0xE400000000000000)
      {
        OUTLINED_FUNCTION_22_2();
      }

      else
      {
        v144 = sub_26618D000();

        OUTLINED_FUNCTION_22_2();
        if (v144)
        {
          goto LABEL_68;
        }

        if (sub_266145BC4(v138) != 0x627265566F6ELL || v145 != 0xE600000000000000)
        {
          v147 = sub_26618D000();

          if ((v147 & 1) == 0)
          {
            if (qword_2814B2C38 != -1)
            {
              OUTLINED_FUNCTION_2_5();
            }

            OUTLINED_FUNCTION_37_0(v69, qword_2814B4A80);
            OUTLINED_FUNCTION_16_7();
            v148();
            v149 = sub_26618C690();
            v150 = sub_26618CAB0();
            v151 = OUTLINED_FUNCTION_15_3(v150);
            v152 = v185;
            if (v151)
            {
              v88 = OUTLINED_FUNCTION_6_2();
              *v88 = 0;
              OUTLINED_FUNCTION_17_3();
              _os_log_impl(v153, v154, v155, v156, v88, 2u);
              OUTLINED_FUNCTION_22_2();
              OUTLINED_FUNCTION_7_2();
            }

            OUTLINED_FUNCTION_21_7();
            v157();
            goto LABEL_74;
          }

LABEL_68:
          __swift_project_boxed_opaque_existential_1((v169 + 152), *(v169 + 176));
          v158 = sub_2660FA19C();
          if (qword_28005BC80 != -1)
          {
            swift_once();
          }

          v159 = sub_26612EAB0(v158, qword_28005D1A0);

          v152 = v185;
          if (v159)
          {
            OUTLINED_FUNCTION_16_7();
            v160();
            v161 = sub_26618C690();
            v162 = sub_26618CAA0();
            if (OUTLINED_FUNCTION_15_3(v162))
            {
              v88 = OUTLINED_FUNCTION_6_2();
              *v88 = 0;
              OUTLINED_FUNCTION_17_3();
              _os_log_impl(v163, v164, v165, v166, v88, 2u);
              OUTLINED_FUNCTION_22_2();
              OUTLINED_FUNCTION_7_2();
            }

            OUTLINED_FUNCTION_21_7();
            v167();
            sub_26618B2A0();
            goto LABEL_75;
          }

LABEL_74:
          sub_26618B2B0();
LABEL_75:

          (*(v88 + 8))(v172, v91);
          return (*(v152 + 8))(v184, v87);
        }
      }
    }

    goto LABEL_68;
  }

  v189 = v63 + 8;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_37_0(v46, qword_2814B4A80);
  OUTLINED_FUNCTION_16_7();
  v112();
  v113 = v179;
  v114 = v180;
  v115 = v181;
  (*(v180 + 16))(v179, v70, v181);
  v116 = sub_26618C690();
  v117 = sub_26618CAB0();
  if (OUTLINED_FUNCTION_16_4(v117))
  {
    v118 = OUTLINED_FUNCTION_49_0();
    v193 = v69;
    v119 = v118;
    v188 = v118;
    v192 = swift_slowAlloc();
    v196 = v192;
    *v119 = 136315138;
    v120 = v170;
    LODWORD(v191) = v54;
    sub_26618B770();
    v121 = sub_266145588(v120);
    v122 = v115;
    v124 = v123;
    (*(v114 + 8))(v113, v122);
    v125 = sub_266103A98(v121, v124, &v196);

    v126 = v188;
    *(v188 + 4) = v125;
    _os_log_impl(&dword_2660B7000, v116, v191, "Unable to handle parse: %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v192);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v127 = v54;
    v128 = v193;
  }

  else
  {

    (*(v114 + 8))(v113, v115);
    v127 = v54;
    v128 = v69;
  }

  v190(v127, v128);
  sub_26618B2B0();
  return (*(v40 + 8))(v45, v37);
}

uint64_t sub_2661057D0()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x2822009F8](sub_26610587C, 0, 0);
}

uint64_t sub_26610587C()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[5];
  v1 = v0[6];
  OUTLINED_FUNCTION_37_0(v0[4], qword_2814B4A98);
  (*(v2 + 16))(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "CloseAppNeedsValueStrategy.makePromptForValue() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  (*(v7 + 8))(v6, v8);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_2661059E8;
  v11 = v0[2];

  return sub_26617B588();
}

uint64_t sub_2661059E8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_266105AF0()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_26618B790();
  v1[7] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B8E0();
  v1[10] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B840();
  v1[13] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_8_2();
  v17 = *(*(type metadata accessor for AppLaunchIntent() - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618C6B0();
  v1[17] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v1[18] = v19;
  v21 = *(v20 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v22 = sub_26618C0E0();
  v1[25] = v22;
  OUTLINED_FUNCTION_0_4(v22);
  v1[26] = v23;
  v25 = *(v24 + 64);
  v1[27] = OUTLINED_FUNCTION_8_2();
  v26 = sub_26618B800();
  v1[28] = v26;
  OUTLINED_FUNCTION_0_4(v26);
  v1[29] = v27;
  v29 = *(v28 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266105D98, 0, 0);
}

uint64_t sub_266105D98()
{
  v178 = v0;
  v1 = v0 + 31;
  v2 = v0[31];
  v4 = v0 + 29;
  v3 = v0[29];
  v5 = v0[28];
  v7 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v172 = sub_26618B6B0();
  sub_26618B770();
  v8 = *(v3 + 88);
  v9 = OUTLINED_FUNCTION_11_2();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x277D5C128])
  {
    v12 = v0[31];
    v13 = v0[26];
    v14 = v0[27];
    v15 = v0[25];
    (*(v0[29] + 96))(v12, v0[28]);
    (*(v13 + 32))(v14, v12, v15);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v16 = v0[24];
    v17 = v0[18];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
    v165 = v18;
    v162 = *(v17 + 16);
    v162(v16);
    v19 = sub_26618C690();
    v20 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v20))
    {
      v21 = OUTLINED_FUNCTION_6_2();
      *v21 = 0;
      _os_log_impl(&dword_2660B7000, v19, v20, "CloseAppNeedsValueStrategy.parseValueResponse() Creating intent from NLv3IntentOnly parse", v21, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v22 = v0[26];
    v23 = v0[27];
    v25 = v0[24];
    v24 = v0[25];
    v158 = v0[23];
    v27 = v0[17];
    v26 = v0[18];
    v28 = v0[16];
    v29 = v0[6];

    v30 = v25;
    v31 = *(v26 + 8);
    v31(v30, v27);
    (*(v22 + 16))(v28, v23, v24);
    v32 = __swift_project_boxed_opaque_existential_1((v29 + 152), *(v29 + 176));
    sub_266107968(v28, v32, v172);
    (v162)(v158, v165, v27);
    v33 = v172;
    v34 = sub_26618C690();
    LOBYTE(v22) = sub_26618CAD0();

    if (os_log_type_enabled(v34, v22))
    {
      v35 = OUTLINED_FUNCTION_49_0();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v33;
      *v36 = v33;
      v37 = v33;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v38, v39, v40, v41, v35, 0xCu);
      sub_2660BF79C(v36, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];

    v45 = OUTLINED_FUNCTION_11_2();
    (v31)(v45);
    v46 = [v33 application];
    v47 = v46;
    if (v46)
    {
      v46 = type metadata accessor for Application();
    }

    else
    {
      v175 = 0;
      v176 = 0;
    }

    v102 = v0[26];
    v101 = v0[27];
    v103 = v0[25];
    v104 = v0[16];
    v105 = v0[3];
    v174 = v47;
    v177 = v46;
    type metadata accessor for CloseAppIntent();
    sub_26618B4A0();
    sub_2660DD7D0(v104);
    (*(v102 + 8))(v101, v103);
    goto LABEL_34;
  }

  if (v11 != *MEMORY[0x277D5C160])
  {
    v168 = v0 + 28;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v84 = v0[18];
    v83 = v0[19];
    v86 = v0[8];
    v85 = v0[9];
    v87 = v0[7];
    v88 = v0[4];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A80);
    v90 = *(v84 + 16);
    v89 = v84 + 16;
    v90(v83);
    (*(v86 + 16))(v85, v88, v87);
    v91 = sub_26618C690();
    v92 = sub_26618CAB0();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = v0[30];
      v160 = v0[17];
      v163 = v0[19];
      v95 = v0[8];
      v94 = v0[9];
      v153 = v0[7];
      v156 = v0[18];
      OUTLINED_FUNCTION_49_0();
      v96 = OUTLINED_FUNCTION_47_2();
      v174 = v96;
      *v89 = 136315138;
      sub_26618B770();
      v97 = sub_266145588(v93);
      v99 = v98;
      (*(v95 + 8))(v94, v153);
      v4 = v0 + 29;
      v100 = sub_266103A98(v97, v99, &v174);

      *(v89 + 4) = v100;
      _os_log_impl(&dword_2660B7000, v91, v92, "Unable to process parse: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v156 + 8))(v163, v160);
    }

    else
    {
      v107 = v0[18];
      v106 = v0[19];
      v108 = v0[17];
      v110 = v0[8];
      v109 = v0[9];
      v111 = v0[7];

      (*(v110 + 8))(v109, v111);
      (*(v107 + 8))(v106, v108);
    }

    goto LABEL_28;
  }

  v48 = v0[15];
  v49 = v0[31];
  v50 = v0[14];
  v51 = v0[13];
  (*(v0[29] + 96))(v49, v0[28]);
  (*(v50 + 32))(v48, v49, v51);
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v168 = v0 + 13;
  v52 = v0[22];
  v53 = v0[18];
  OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
  v155 = v54;
  v159 = *(v53 + 16);
  v159(v52);
  v55 = sub_26618C690();
  v56 = sub_26618CAA0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_6_2();
    *v57 = 0;
    _os_log_impl(&dword_2660B7000, v55, v56, "CloseAppNeedsValueStrategy.parseValueResponse() Creating intent from USO parse", v57, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v58 = v0[22];
  v60 = v0[17];
  v59 = v0[18];
  v61 = v0[15];
  v63 = v0[11];
  v62 = v0[12];
  v64 = v0[10];

  v65 = *(v59 + 8);
  v65(v58, v60);
  sub_26618B820();
  v66 = sub_266144AE8();
  (*(v63 + 8))(v62, v64);
  v67 = v0[17];
  if (!v66)
  {
    (v159)(v0[20], v155, v0[17]);
    v112 = sub_26618C690();
    v113 = sub_26618CAB0();
    v4 = v0 + 14;
    if (OUTLINED_FUNCTION_15_3(v113))
    {
      v114 = OUTLINED_FUNCTION_6_2();
      *v114 = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v115, v116, v117, v118, v114, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v119 = v0[20];
    v121 = v0[17];
    v120 = v0[18];

    v122 = OUTLINED_FUNCTION_11_2();
    (v65)(v122);
    v1 = v0 + 15;
LABEL_28:
    sub_2660D3004();
    swift_allocError();
    *v123 = 0;
    v124 = *v1;
    v125 = *v168;
    v126 = *v4;
    v127 = v0[30];
    v128 = v0[31];
    v129 = v0[27];
    v131 = v0[23];
    v130 = v0[24];
    v150 = v0[22];
    v151 = v0[21];
    v152 = v0[20];
    v154 = v0[19];
    v157 = v0[16];
    v161 = v0[15];
    v164 = v0[12];
    v170 = v0[9];
    swift_willThrow();

    (*(v126 + 8))(v124, v125);

    OUTLINED_FUNCTION_5_3();
    goto LABEL_35;
  }

  v169 = v65;
  v68 = v0[21];
  v69 = __swift_project_boxed_opaque_existential_1((v0[6] + 152), *(v0[6] + 176));
  v70 = v172;
  sub_266106FB4(v66, v69, v172);
  (v159)(v68, v155, v67);

  v71 = sub_26618C690();
  v72 = sub_26618CAD0();

  v73 = os_log_type_enabled(v71, v72);
  v74 = v0[21];
  v76 = v0[17];
  v75 = v0[18];
  if (v73)
  {
    v166 = v0[17];
    OUTLINED_FUNCTION_49_0();
    v77 = OUTLINED_FUNCTION_47_2();
    v174 = v77;
    *v172 = 136315138;
    v0[2] = v66;
    sub_26618C0D0();

    v78 = sub_26618C8D0();
    v80 = sub_266103A98(v78, v79, &v174);

    *(v172 + 1) = v80;
    _os_log_impl(&dword_2660B7000, v71, v72, "CloseAppNeedsValueStrategy.parseValueResponse() Finished creating intent from parse: %s", v172, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    OUTLINED_FUNCTION_7_2();
    v70 = v172;
    OUTLINED_FUNCTION_7_2();

    v81 = v74;
    v82 = v166;
  }

  else
  {

    v81 = v74;
    v82 = v76;
  }

  v169(v81, v82);
  v133 = [v70 application];
  v134 = v133;
  if (v133)
  {
    v133 = type metadata accessor for Application();
  }

  else
  {
    v175 = 0;
    v176 = 0;
  }

  v135 = v0[14];
  v136 = v0[15];
  v137 = v0[13];
  v105 = v0[3];
  v174 = v134;
  v177 = v133;
  type metadata accessor for CloseAppIntent();
  sub_26618B4A0();

  (*(v135 + 8))(v136, v137);
LABEL_34:
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C360, &qword_266190D78);
  __swift_storeEnumTagSinglePayload(v105, 0, 1, v138);
  v140 = v0[30];
  v139 = v0[31];
  v141 = v0[27];
  v143 = v0[23];
  v142 = v0[24];
  v145 = v0[21];
  v144 = v0[22];
  v147 = v0[19];
  v146 = v0[20];
  v148 = v0[16];
  v167 = v0[15];
  v171 = v0[12];
  v173 = v0[9];

  OUTLINED_FUNCTION_5_3();
LABEL_35:

  return v132();
}

uint64_t *sub_2661068C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2660D31B4((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t sub_2661068F8()
{
  sub_2661068C0();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t sub_266106974()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266107F90;

  return sub_266105AF0();
}

uint64_t sub_266106A28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266106AC4;

  return sub_2661057D0();
}

uint64_t sub_266106AC4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_266106BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B370] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_266107F90;

  return MEMORY[0x2821B9BF8](a1, a2, v10, a4);
}

uint64_t sub_266106C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B378] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_266107F90;

  return MEMORY[0x2821B9C00](a1, a2, v10, a4);
}

uint64_t sub_266106D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v13 = v6;
  v13[1] = sub_266107F90;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_266106E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CloseAppNeedsValueStrategy();
  *v15 = v7;
  v15[1] = sub_266107F90;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

void sub_266106F40(uint64_t a1, void *a2)
{
  type metadata accessor for Application();
  v3 = sub_26618C990();

  [a2 setSuggestedApplications_];
}

uint64_t sub_266106FB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C460, &unk_2661912D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_24_1();
  v115 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v116 = &v111 - v11;
  OUTLINED_FUNCTION_18_2();
  v12 = sub_26618C6B0();
  v13 = OUTLINED_FUNCTION_2_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_5();
  v117 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v111 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v111 - v27;
  v123[3] = &type metadata for ReferenceResolver;
  v123[4] = &off_2877CC6F0;
  v123[0] = swift_allocObject();
  sub_2660CFC00(a2, v123[0] + 16);
  v118 = a3;
  v29 = [a3 requestedApplication];
  if (!v29)
  {
    type metadata accessor for Application();
    v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v29 = OUTLINED_FUNCTION_14_6();
    [v118 setRequestedApplication_];
  }

  sub_266139FE4(v31, v32, v33, v34, v35, v36, v37, v38, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121[0], v121[1]);
  v114 = v15;
  if ((v39 & 1) == 0 && !sub_266139E9C())
  {
    v49 = [v118 requestedApplication];
    if (v49)
    {
      v50 = v49;
      v51 = sub_26613B704();
      sub_26614484C(v51, v52, 0, 0, 0, 0);
    }

    __swift_project_boxed_opaque_existential_1(v123, &type metadata for ReferenceResolver);
    v113 = a1;
    v53 = sub_2660FA19C();
    v54 = 0;
    v55 = MEMORY[0x277D84F90];
    v122[0] = MEMORY[0x277D84F90];
    v56 = *(v53 + 16);
    for (i = (v53 + 40); ; i += 2)
    {
      if (v56 == v54)
      {

        sub_266106F40(v55, v118);
        goto LABEL_40;
      }

      if (v54 >= *(v53 + 16))
      {
        break;
      }

      v59 = *(i - 1);
      v58 = *i;
      type metadata accessor for Application();
      v60 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v26 = OUTLINED_FUNCTION_14_6();
      sub_26614484C(0, 0xE000000000000000, v59, v58, 0, 0);

      MEMORY[0x26677BD40](v61);
      if (*((v122[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v55 = v122[0];
      ++v54;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_37_0(v12, qword_2814B4A98);
  v40 = *(v15 + 16);
  v113 = v41;
  v112 = v40;
  v40(v28);
  v42 = sub_26618C690();
  v43 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v43))
  {
    v44 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_20_6(v44);
    OUTLINED_FUNCTION_28_5(&dword_2660B7000, v42, v43, "CloseAppConverter user referenced an app without name or verb only request");
    OUTLINED_FUNCTION_7_2();
  }

  v45 = *(v15 + 8);
  v46 = OUTLINED_FUNCTION_11_2();
  v45(v46);
  v47 = MEMORY[0x277D84F90];
  sub_266106F40(MEMORY[0x277D84F90], v118);
  sub_26618BDF0();
  if (!v122[3])
  {
    goto LABEL_31;
  }

  sub_2660BF73C(v122, v121, &qword_28005C0A8, qword_26618FAE0);
  sub_26618BE00();
  if (OUTLINED_FUNCTION_8_12() || (sub_26618BDE0(), (OUTLINED_FUNCTION_8_12() & 1) != 0))
  {

    sub_26618BED0();

    if (v119)
    {
      sub_26618BB90();

      OUTLINED_FUNCTION_35_2();
      v48 = sub_266162360();
      sub_266106F40(v48, v118);
    }

    v47 = MEMORY[0x277D84F90];
    __swift_destroy_boxed_opaque_existential_1(v121);
    goto LABEL_34;
  }

  sub_26618BE80();
  if ((OUTLINED_FUNCTION_8_12() & 1) == 0)
  {
    sub_26618BFA0();
    if (OUTLINED_FUNCTION_8_12())
    {

      v63 = sub_26618BFC0();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      sub_26618BFB0();
      v66 = MEMORY[0x26677B1D0]();

      if (v66)
      {
        OUTLINED_FUNCTION_35_2();
        v67 = sub_266162360();
        sub_266106F40(v67, v118);
      }

      goto LABEL_29;
    }

    __swift_destroy_boxed_opaque_existential_1(v121);
    v47 = MEMORY[0x277D84F90];
LABEL_31:
    OUTLINED_FUNCTION_31_4();
    v68();
    v69 = sub_26618C690();
    v70 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_3(v70))
    {
      v71 = OUTLINED_FUNCTION_6_2();
      v111 = v20;
      OUTLINED_FUNCTION_20_6(v71);
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_28_5(v72, v73, v74, v75);
      OUTLINED_FUNCTION_7_2();

      (v45)(v111, v12);
    }

    else
    {

      (v45)(v20, v12);
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_35_2();
  v62 = sub_266162714();
  sub_266106F40(v62, v118);
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1(v121);
  v47 = MEMORY[0x277D84F90];
LABEL_34:
  sub_2660BF79C(v122, &qword_28005C0A8, qword_26618FAE0);
  v76 = sub_2661040AC(v118);
  if (v76)
  {
    v47 = v76;
  }

  v77 = sub_2661046B8(v47);

  if (!v77)
  {
    OUTLINED_FUNCTION_31_4();
    v78();
    v79 = sub_26618C690();
    v80 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_3(v80))
    {
      v81 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_20_6(v81);
      OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_28_5(v82, v83, v84, v85);
      OUTLINED_FUNCTION_7_2();
    }

    v86 = OUTLINED_FUNCTION_33_1();
    v45(v86);
  }

LABEL_40:
  if (qword_2814B2C40 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_37_0(v12, qword_2814B4A98);
  v87 = v114;
  v88 = v117;
  (*(v114 + 16))(v117);
  v89 = v118;
  v90 = sub_26618C690();
  v91 = sub_26618CAA0();

  if (os_log_type_enabled(v90, v91))
  {
    v118 = v12;
    v92 = v87;
    OUTLINED_FUNCTION_49_0();
    v93 = OUTLINED_FUNCTION_47_2();
    v122[0] = v93;
    *v26 = 136315138;
    v94 = sub_2661040AC(v89);
    if (v94)
    {
      sub_266100294(v94);
      v96 = v95;
      v98 = v97;
    }

    else
    {
      v98 = 0xE200000000000000;
      v96 = 23899;
    }

    v99 = sub_266103A98(v96, v98, v122);

    *(v26 + 4) = v99;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v100, v101, v102, v103, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v93);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v92 + 8))(v117, v118);
  }

  else
  {

    (*(v87 + 8))(v88, v12);
  }

  v105 = v115;
  v104 = v116;
  sub_26613E87C();
  v106 = sub_26618BF30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v104, 1, v106);
  v108 = 0;
  if (EnumTagSinglePayload != 1)
  {
    sub_2660BF73C(v104, v105, &qword_28005C460, &unk_2661912D8);
    v109 = *(v106 - 8);
    if ((*(v109 + 88))(v105, v106) == *MEMORY[0x277D5EA28])
    {
      v108 = 2;
    }

    else
    {
      (*(v109 + 8))(v105, v106);
      v108 = 0;
    }
  }

  [v89 setAppReference_];
  sub_2660BF79C(v104, &qword_28005C460, &unk_2661912D8);
  return __swift_destroy_boxed_opaque_existential_1(v123);
}

uint64_t sub_266107968(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26618C6B0();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46[-1] - v15;
  v47 = &type metadata for ReferenceResolver;
  v48 = &off_2877CC6F0;
  v46[0] = swift_allocObject();
  sub_2660CFC00(a2, v46[0] + 16);
  v17 = [a3 requestedApplication];
  if (!v17)
  {
    type metadata accessor for Application();
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = OUTLINED_FUNCTION_14_6();
    [a3 setRequestedApplication_];
  }

  v19 = [a3 requestedApplication];
  if (v19)
  {
    v20 = v19;
    sub_266144578();
  }

  if (qword_2814B3DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent();
  OUTLINED_FUNCTION_7_10();
  sub_266107F48(v21, 255, v22);
  sub_26618BDA0();
  if (v45 - 1 < 5)
  {
    v23 = (v45 - 1) + 1;
  }

  else
  {
    v23 = 0;
  }

  [a3 setAppReference_];
  if (qword_2814B3DE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_24_3();
  [a3 setAppNoun_];
  if (sub_26614E894())
  {
    OUTLINED_FUNCTION_24_3();
    switch(v45)
    {
      case 1:

        goto LABEL_16;
      case 4:
        goto LABEL_18;
      default:
        v24 = sub_26618D000();

        if (v24)
        {
LABEL_16:
          v25 = sub_26618BF10();
          v26 = *(v25 + 48);
          v27 = *(v25 + 52);
          swift_allocObject();
          sub_26618BF00();
          if (MEMORY[0x26677B1D0]())
          {
            __swift_project_boxed_opaque_existential_1(v46, v47);
            v28 = sub_266162360();
            sub_266106F40(v28, a3);
          }

          else
          {
            if (qword_2814B2C40 != -1)
            {
              OUTLINED_FUNCTION_0_3();
            }

            OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
            (*(v8 + 16))(v16);
            v30 = sub_26618C690();
            v31 = sub_26618CAB0();
            if (OUTLINED_FUNCTION_15_1(v31))
            {
              v32 = OUTLINED_FUNCTION_6_2();
              *v32 = 0;
              _os_log_impl(&dword_2660B7000, v30, v31, "Error building entity for reference resolution", v32, 2u);
              OUTLINED_FUNCTION_7_2();
            }

            else
            {
            }

            (*(v8 + 8))(v16, v5);
          }
        }

        else
        {
LABEL_18:
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v29 = sub_266162714();
          sub_266106F40(v29, a3);
        }

        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_3();
        }

        OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
        (*(v8 + 16))(v13);
        v33 = a3;
        v34 = sub_26618C690();
        v35 = sub_26618CAA0();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = OUTLINED_FUNCTION_49_0();
          v37 = swift_slowAlloc();
          v45 = v37;
          *v36 = 136315138;
          v38 = sub_2661040AC(v33);
          if (v38)
          {
            sub_266100294(v38);
            v40 = v39;
            v42 = v41;
          }

          else
          {
            v42 = 0xE200000000000000;
            v40 = 23899;
          }

          v43 = sub_266103A98(v40, v42, &v45);

          *(v36 + 4) = v43;
          _os_log_impl(&dword_2660B7000, v34, v35, "CloseAppConverter suggestedApplications: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        (*(v8 + 8))(v13, v5);
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_266107F48(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_8_12()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_14_6()
{

  return sub_2661038FC(0, 0);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return sub_26618BDA0();
}

void OUTLINED_FUNCTION_28_5(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_2661080B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2661080CC()
{
  OUTLINED_FUNCTION_18();
  v0[5] = sub_26618C850();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_266108194;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_2660C7BDC();
}

uint64_t sub_266108194()
{
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_2661082A8()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(sub_26618B1E0() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_26618B6A0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_26618C6B0();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2661083E8()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "CloseApp.UnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[3];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v12 = sub_26618B6C0();
  v13 = [v12 unsupportedReason];

  v14 = CloseAppApplicationUnsupportedReason.init(rawValue:)(v13);
  if ((v15 & 1) != 0 || v14 != 2)
  {
    sub_2660D3004();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[5];

    OUTLINED_FUNCTION_5_3();

    return v23();
  }

  else
  {
    v16 = *__swift_project_boxed_opaque_existential_1((v0[4] + 56), *(v0[4] + 80));
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_26610867C;

    return sub_2661080B4(0xD000000000000014, 0x8000000266199110);
  }
}

uint64_t sub_26610867C()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = v3[12];
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  if (v1)
  {
    v8 = v4[11];
    v9 = v4[8];
    v10 = v4[5];

    OUTLINED_FUNCTION_5_3();

    return v11();
  }

  else
  {
    v4[13] = v0;
    v13 = OUTLINED_FUNCTION_3_6();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2661087C4()
{
  v1 = v0[13];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  sub_26618B1B0();
  sub_26618B620();
  v5 = v4[15];
  v6 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = xmmword_26618F7E0;
  *(v7 + 32) = v1;
  v8 = *(MEMORY[0x277D5BE58] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_266108908;
  v11 = v0[8];
  v12 = v0[2];

  return MEMORY[0x2821BB488](v12, v7, v11, v5, v6);
}

uint64_t sub_266108908()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266108A0C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t sub_266108ACC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v2 = sub_26618B6B0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_266108B40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2660D3208(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  return v0;
}

uint64_t sub_266108B70()
{
  sub_266108B40();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_266108BC8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266108F9C;

  return sub_2661082A8();
}

uint64_t sub_266108C74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266108D08;

  return sub_266108AB8(a1);
}

uint64_t sub_266108D08()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_266108DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CloseAppUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_266108EB8;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_266108EB8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  OUTLINED_FUNCTION_5_3();

  return v4();
}

id sub_266108FA0()
{
  result = [objc_allocWithZone(type metadata accessor for DeepLaunchIntentHandler()) init];
  qword_28005D190 = result;
  return result;
}

uint64_t sub_266108FD4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v84 = a2;
  v2 = sub_26618B790();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v81 = v4;
  v82 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_69_0();
  v78 = v7;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v8);
  v75 = &v74 - v9;
  v80 = sub_26618B800();
  v10 = OUTLINED_FUNCTION_2_2(v80);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_69_0();
  v77 = v15;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  v19 = sub_26618C6B0();
  v20 = OUTLINED_FUNCTION_2_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_69_0();
  v85 = v25;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v26);
  v76 = &v74 - v27;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - v29;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v31 = __swift_project_value_buffer(v19, qword_2814B4A98);
  v32 = v19;
  v79 = *(v22 + 16);
  v79(v30, v31, v19);
  v33 = sub_26618C690();
  v34 = sub_26618CAA0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2660B7000, v33, v34, "DeepLaunchFlowStrategy.actionForInput() called", v35, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v36 = *(v22 + 8);
  v37 = v32;
  v83 = v22 + 8;
  v36(v30, v32);
  sub_26618B770();
  sub_2660C87C0();
  (*(v12 + 8))(v18, v80);
  v38 = v88;
  if (v88)
  {
    v39 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v40 = (*(v39 + 8))(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v87);
    v41 = v82;
    v42 = v85;
    if (v40)
    {
      sub_26613C14C();
      if (v43)
      {

        v44 = v76;
        v79(v76, v31, v37);
        v45 = v81;
        v46 = v75;
        (*(v81 + 16))(v75, v86, v41);
        v47 = sub_26618C690();
        v48 = sub_26618CAA0();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v86 = v37;
          v50 = v49;
          v51 = v46;
          v85 = swift_slowAlloc();
          v87[0] = v85;
          *v50 = 136315138;
          v52 = v77;
          sub_26618B770();
          v53 = sub_266145588(v52);
          v55 = v54;
          (*(v45 + 8))(v51, v41);
          v56 = sub_266103A98(v53, v55, v87);

          *(v50 + 4) = v56;
          _os_log_impl(&dword_2660B7000, v47, v48, "DeepLaunchFlowStrategy going to handle parse %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v85);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();

          v57 = v76;
          v58 = v86;
        }

        else
        {

          (*(v45 + 8))(v46, v41);
          v57 = v44;
          v58 = v37;
        }

        v36(v57, v58);
        sub_26618B2A0();
      }
    }
  }

  else
  {
    sub_2660DD714(v87);
    v41 = v82;
    v42 = v85;
  }

  v79(v42, v31, v37);
  v59 = v81;
  v60 = v78;
  (*(v81 + 16))(v78, v86, v41);
  v61 = sub_26618C690();
  v62 = sub_26618CAA0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = v60;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v87[0] = v65;
    *v64 = 136315138;
    v66 = v77;
    sub_26618B770();
    v67 = sub_266145588(v66);
    v86 = v36;
    v68 = v67;
    v69 = v37;
    v71 = v70;
    (*(v59 + 8))(v63, v41);
    v72 = sub_266103A98(v68, v71, v87);

    *(v64 + 4) = v72;
    _os_log_impl(&dword_2660B7000, v61, v62, "DeepLaunchFlowStrategy unable to handle parse %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v86(v85, v69);
  }

  else
  {

    (*(v59 + 8))(v60, v41);
    v36(v42, v37);
  }

  return sub_26618B2B0();
}

uint64_t sub_266109670()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_26618B800();
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_26618C6B0();
  v1[14] = v7;
  v8 = *(v7 - 8);
  v1[15] = v8;
  v9 = *(v8 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2661097A4, 0, 0);
}

uint64_t sub_2661097A4()
{
  v66 = v0;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_2814B4A98);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_26618C690();
  v7 = sub_26618CAA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2660B7000, v6, v7, "DeepLaunchFlowStrategy.makeIntentFromParse() called", v8, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v9 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[8];

  v13 = *(v10 + 8);
  v13(v9, v11);
  v14 = v0[8];
  if (v12)
  {
    v64 = v0[8];
  }

  else
  {
    v64 = [objc_allocWithZone(type metadata accessor for DeepLaunchIntent()) init];
  }

  v15 = v0[7];
  v16 = v14;
  sub_2660C87C0();
  v17 = v0[5];
  if (v17)
  {
    v18 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v19 = (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v19)
    {
      sub_26613C14C();
      if (v20)
      {
        v22 = v0[16];
        v21 = v0[17];
        v24 = v0[12];
        v23 = v0[13];
        v25 = v0[9];

        v26 = __swift_project_boxed_opaque_existential_1((v25 + 16), *(v25 + 40));
        sub_26610A4C8(v19, v26, v64);

        v27 = v0[1];

        return v27(v64);
      }
    }
  }

  else
  {
    sub_2660DD714((v0 + 2));
  }

  v63 = v13;
  v29 = v0[13];
  v31 = v0[10];
  v30 = v0[11];
  v32 = v0[7];
  v5(v0[16], v4, v0[14]);
  v33 = *(v30 + 16);
  v33(v29, v32, v31);
  v34 = sub_26618C690();
  v35 = sub_26618CAB0();
  v36 = os_log_type_enabled(v34, v35);
  v38 = v0[15];
  v37 = v0[16];
  v40 = v0[13];
  v39 = v0[14];
  if (v36)
  {
    v62 = v0[16];
    v41 = v0[11];
    v42 = v0[12];
    v59 = v0[10];
    v61 = v0[14];
    v43 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v65 = v60;
    *v43 = 136315138;
    v33(v42, v40, v59);
    v44 = sub_266145588(v42);
    v45 = v35;
    v47 = v46;
    (*(v41 + 8))(v40, v59);
    v48 = sub_266103A98(v44, v47, &v65);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_2660B7000, v34, v45, "DeepLaunchFlowStrategy.makeIntentFromParse() unable to handle parse %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v49 = v61;
    v50 = v62;
  }

  else
  {
    v52 = v0[10];
    v51 = v0[11];

    (*(v51 + 8))(v40, v52);
    v50 = v37;
    v49 = v39;
  }

  v63(v50, v49);
  v53 = v0[16];
  v54 = v0[17];
  v56 = v0[12];
  v55 = v0[13];
  sub_2660D3004();
  swift_allocError();
  *v57 = 0;
  swift_willThrow();

  v58 = v0[1];

  return v58();
}

uint64_t sub_266109C84()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266109D2C;

  return sub_266109670();
}

uint64_t sub_266109D2C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_266109E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeepLaunchFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266109E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeepLaunchFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_266109F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeepLaunchFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2660F44FC;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_26610A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DeepLaunchFlowStrategy();
  *v11 = v5;
  v11[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_26610A0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for DeepLaunchFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_26610A1AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660F4320;

  return (sub_2660FFA5C)(a1, a2);
}

uint64_t sub_26610A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for DeepLaunchFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2660FDC04;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_26610A3A4(uint64_t a1)
{
  result = sub_26610A41C(&qword_28005C468);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26610A41C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeepLaunchFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26610A45C(uint64_t a1, void *a2)
{
  v3 = sub_26618C990();

  [a2 setPageCanonicalNames_];
}

uint64_t sub_26610A4C8(uint64_t a1, uint64_t a2, void *a3)
{
  v19[3] = &type metadata for ReferenceResolver;
  v19[4] = &off_2877CC6F0;
  v19[0] = swift_allocObject();
  sub_2660CFC00(a2, v19[0] + 16);
  sub_26613C14C();
  if (v5)
  {
    v6 = sub_26618C8A0();
  }

  else
  {
    v6 = 0;
  }

  [a3 setPageName_];

  sub_26613C48C();
  sub_26610A45C(v7, a3);
  v8 = [a3 requestedApplication];
  if (!v8)
  {
    type metadata accessor for Application();
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = sub_2661038FC(0, 0);
    [a3 setRequestedApplication_];
  }

  v10 = [a3 requestedApplication];
  if (v10)
  {
    v11 = v10;
    v12 = sub_26613B704();
    v14 = v13;
    __swift_project_boxed_opaque_existential_1(v19, &type metadata for ReferenceResolver);
    v15 = sub_2660FA19C();
    if (v15[2])
    {
      v17 = v15[4];
      v16 = v15[5];
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    sub_26614484C(v12, v14, v17, v16, 0, 0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

id sub_26610A69C()
{
  result = [objc_allocWithZone(type metadata accessor for DeepLaunchIntentHandler()) init];
  qword_28005D198 = result;
  return result;
}

uint64_t sub_26610A6D0()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26610A778()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[6];
  v1 = v0[7];
  __swift_project_value_buffer(v0[5], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v7);
    _os_log_impl(&dword_2660B7000, v5, v6, "DeepLaunchHandleIntentStrategy.makeIntentHandledResponse() called", v2, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  v11 = v0[3];

  v12 = *(v9 + 8);
  v13 = OUTLINED_FUNCTION_12_1();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C488, qword_266191728);
  v15 = sub_26618B5F0();
  v16 = [v15 requestedApplication];

  if (v16 && (sub_26610410C(v16), v17))
  {
    v18 = v17;
  }

  else
  {

    v18 = 0xE000000000000000;
  }

  v0[8] = v18;
  v19 = v0[3];
  v20 = sub_26618B5F0();
  sub_26610C848(v20);
  v0[9] = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[10] = v22;
  *v22 = v23;
  v22[1] = sub_26610A974;
  v24 = v0[4];
  v25 = v0[2];

  return sub_26610AABC();
}

uint64_t sub_26610A974()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1[10];
  v3 = v1[8];
  v4 = v1[7];
  v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t sub_26610AABC()
{
  OUTLINED_FUNCTION_18();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B6A0();
  v1[9] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 64);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v17 = sub_26618C6B0();
  v1[13] = v17;
  OUTLINED_FUNCTION_0_4(v17);
  v1[14] = v18;
  v20 = *(v19 + 64);
  v1[15] = OUTLINED_FUNCTION_8_2();
  v21 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26610ABF4()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[14];
  v1 = v0[15];
  __swift_project_value_buffer(v0[13], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v7);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v8, v9, "DeepLaunchHandleIntentStrategy.makeIntentHandledResponse() called");
    OUTLINED_FUNCTION_28_3();
  }

  v11 = v0[14];
  v10 = v0[15];
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[6];
  v15 = v0[4];

  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_12_1();
  v18(v17);
  type metadata accessor for DeepLaunchCATPatternsExecutor(0);
  sub_26618C330();
  v0[16] = sub_26618C2D0();

  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_26610AD90;
  v20 = v0[5];
  v21 = v0[6];
  v22 = OUTLINED_FUNCTION_20_7();

  return sub_2660BD174(v22, v23, v24, v25, v26, v27);
}

uint64_t sub_26610AD90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 136);
  *v4 = *v1;
  v3[18] = v7;
  v3[19] = v0;

  if (!v0)
  {
    v8 = v3[16];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26610AE9C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  v4 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v5 = *(MEMORY[0x277D5BE50] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[20] = v6;
  *v6 = v7;
  v6[1] = sub_26610AF70;
  v8 = v0[18];
  v9 = v0[11];
  v10 = OUTLINED_FUNCTION_17_6();

  return MEMORY[0x2821BB480](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_26610AF70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26610B06C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v3, v4);

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t sub_26610B120()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[8];

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t sub_26610B1AC()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 64);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_26610B258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  sub_26618C300();
  OUTLINED_FUNCTION_22_3();
  sub_2660BDBE8(v7, a1);
  swift_bridgeObjectRetain_n();
  sub_26618C2F0();
  OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for DeepLaunchLaunchingQuickActionParameters(0);
  return sub_2660BDBE8(v7, a1 + *(v8 + 24));
}

uint64_t sub_26610B364()
{
  OUTLINED_FUNCTION_18();
  v0[7] = v1;
  v2 = sub_26618C6B0();
  v0[8] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[9] = v3;
  v5 = *(v4 + 64);
  v0[10] = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26610B408()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[9];
  v1 = v0[10];
  __swift_project_value_buffer(v0[8], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v7);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v8, v9, "DeepLaunchHandleIntentStrategy.makeIntentHandledResponse() called");
    OUTLINED_FUNCTION_28_3();
  }

  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v13 = v0[8];

  (*(v11 + 8))(v10, v13);
  sub_26618B040();
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_26618B0D0();
  sub_26618B0C0();
  sub_26618B050();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v15 = sub_26618B870();
  v16 = MEMORY[0x277D5C1D8];
  v12[3] = v15;
  v12[4] = v16;
  __swift_allocate_boxed_opaque_existential_0(v12);
  sub_26618B860();

  OUTLINED_FUNCTION_5_3();

  return v17();
}

uint64_t sub_26610B5B0()
{
  OUTLINED_FUNCTION_18();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_26618C6B0();
  v1[9] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[10] = v5;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26610B66C()
{
  v48 = v0;
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C488, qword_266191728);
  v2 = sub_26618B5E0();
  v3 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = __swift_project_value_buffer(v6, qword_2814B4A98);
  v9 = *(v7 + 16);
  v9(v5, v8, v6);
  v10 = sub_26618C690();
  v11 = sub_26618CAA0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[12];
  v14 = v0[10];
  v45 = v4;
  v46 = v0[9];
  if (v12)
  {
    v15 = swift_slowAlloc();
    v44 = v8;
    v16 = swift_slowAlloc();
    v47 = v16;
    *v15 = 136315138;
    v0[5] = v4;
    v17 = sub_26618C8D0();
    v19 = sub_266103A98(v17, v18, &v47);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2660B7000, v10, v11, "DeepLaunchHandleIntentStrategy.makeFailureHandlingIntentResponse() called with code %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v20 = v16;
    v8 = v44;
    MEMORY[0x26677CC30](v20, -1, -1);
    MEMORY[0x26677CC30](v15, -1, -1);

    v21 = *(v14 + 8);
    v21(v13, v46);
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v46);
  }

  v22 = v0[7];
  v23 = sub_26618B5F0();
  v24 = [v23 requestedApplication];

  if (v24 && (sub_26610410C(v24), (v0[13] = v25) != 0))
  {
    if (v45 == 100)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[14] = v26;
      *v26 = v27;
      v26[1] = sub_26610BA34;
      v28 = v0[8];
      v29 = v0[6];

      return sub_26610BB84();
    }
  }

  else
  {
    v9(v0[11], v8, v0[9]);
    v31 = sub_26618C690();
    v32 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v32))
    {
      v33 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v33);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v34, v35, "DeepLaunchHandleIntentStrategy.makeFailureHandlingIntentResponse no app name or action name");
      OUTLINED_FUNCTION_28_3();
    }

    v37 = v0[10];
    v36 = v0[11];
    v38 = v0[9];

    v39 = OUTLINED_FUNCTION_12_1();
    (v21)(v39);
  }

  sub_2660D3004();
  swift_allocError();
  *v40 = 0;
  swift_willThrow();
  v42 = v0[11];
  v41 = v0[12];

  OUTLINED_FUNCTION_5_3();

  return v43();
}

uint64_t sub_26610BA34()
{
  OUTLINED_FUNCTION_19();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  v5 = *(v2 + 112);
  v6 = *v1;
  *v4 = *v1;

  v7 = *(v2 + 104);
  if (v0)
  {

    v9 = *(v3 + 88);
    v8 = *(v3 + 96);
  }

  else
  {
    v12 = *(v3 + 88);
    v11 = *(v3 + 96);
  }

  v10 = *(v6 + 8);

  return v10();
}

uint64_t sub_26610BB84()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B6A0();
  v1[7] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[8] = v9;
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v12);
  v14 = *(v13 + 64);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v15 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26610BC6C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[10];
  v2 = v0[4];
  type metadata accessor for DeepLaunchCATPatternsExecutor(0);
  sub_26618C330();
  v0[11] = sub_26618C2D0();

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_26610BD50;
  v4 = OUTLINED_FUNCTION_20_7();

  return sub_2660BD58C(v4, v5, v6, v7);
}

uint64_t sub_26610BD50()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (!v0)
  {
    v8 = v3[11];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26610BE5C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  v4 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v5 = *(MEMORY[0x277D5BE50] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[15] = v6;
  *v6 = v7;
  v6[1] = sub_26610BF30;
  v8 = v0[13];
  v9 = v0[9];
  v10 = OUTLINED_FUNCTION_17_6();

  return MEMORY[0x2821BB480](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_26610BF30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26610C02C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_12_1();
  v8(v7);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_26610C0D0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[11];

  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t sub_26610C150()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 128);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 48);

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_26610C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_26610C2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_26610C39C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_26610A6D0();
}

uint64_t sub_26610C448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_26610B364();
}

uint64_t sub_26610C4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D2E00;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_26610C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeepLaunchHandleIntentStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_26610C668()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_26610B5B0();
}

uint64_t sub_26610C714(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660DA1C4;

  return (sub_2660FFC04)(a1, a2);
}

unint64_t sub_26610C7C8(uint64_t a1)
{
  result = sub_26610C7F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26610C7F0()
{
  result = qword_28005C480;
  if (!qword_28005C480)
  {
    type metadata accessor for DeepLaunchHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C480);
  }

  return result;
}

uint64_t sub_26610C848(void *a1)
{
  v2 = [a1 pageName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return 0;
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_26618B620();
}

id sub_26610C924()
{
  sub_26618B0E0();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v0 = static InstalledAppProvider.shared;
  v25 = type metadata accessor for InstalledAppProvider();
  v26 = &protocol witness table for InstalledAppProvider;
  *&v24 = v0;
  v22 = &type metadata for CoreDuetAppSelectionResolver;
  v23 = &off_2877CC198;
  v1 = swift_allocObject();
  *&v21 = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v30 = &type metadata for AppsSearcher;
  v31 = &off_2877CC0A0;
  v2 = swift_allocObject();
  v29[0] = v2;
  v20[20] = 1;
  sub_2660C5864(&v24, v20);
  sub_2660C5864(&v24, v19);
  v3 = objc_opt_self();

  sub_266104118([v3 sharedPreferences]);
  v4 = type metadata accessor for RegexAppsResolver();
  v20[8] = v4;
  v20[9] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20[5]);
  sub_2660C5864(v19, boxed_opaque_existential_0);
  v6 = boxed_opaque_existential_0 + *(v4 + 20);
  sub_26618A600();
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v28)
  {
    v20[13] = &type metadata for AceAppResolver;
    v20[14] = &off_2877CC000;
    v7 = swift_allocObject();
    v20[10] = v7;
    sub_2660B9EB8(&v27, v7 + 56);
    sub_2660B9EB8(&v24, v7 + 16);
    *(v7 + 96) = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v24);
    sub_2660C8040(&v27, &qword_28005C3C0, &qword_266191100);
    memset(&v20[10], 0, 40);
  }

  sub_2660B9EB8(&v21, &v20[15]);
  memcpy((v2 + 16), v20, 0xA8uLL);
  v8 = type metadata accessor for AppShortcutItemRunner();
  v9 = sub_2660CB854();
  if (v9)
  {
    v10 = &off_2877CAB08;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v20[1] = 0;
    v20[2] = 0;
  }

  v20[0] = v9;
  v20[3] = v8;
  v20[4] = v10;
  v11 = v30;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v13 = *(v11[-1].Description + 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_26610ECE8(v15, v20);
  __swift_destroy_boxed_opaque_existential_1(v29);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t sub_26610CCDC()
{
  OUTLINED_FUNCTION_18();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_26618C6B0();
  v1[34] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[35] = v4;
  v6 = *(v5 + 64) + 15;
  v1[36] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26610CD88(uint64_t a1)
{
  if (qword_2814B2C48 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10();
  }

  v3 = *(v1 + 280);
  v2 = *(v1 + 288);
  v4 = *(v1 + 272);
  v5 = *(v1 + 256);
  OUTLINED_FUNCTION_14_3(a1, qword_2814B4AB0);
  v6 = *(v3 + 16);
  v7 = OUTLINED_FUNCTION_13_2();
  v8(v7);
  v9 = v5;
  v10 = sub_26618C690();
  LOBYTE(v4) = sub_26618CAD0();

  if (os_log_type_enabled(v10, v4))
  {
    v11 = *(v1 + 256);
    OUTLINED_FUNCTION_49_0();
    v12 = OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_15_6(v12, 5.7779e-34);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660C8040(v12, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_28_3();
  }

  v19 = *(v1 + 280);
  v18 = *(v1 + 288);
  v20 = *(v1 + 272);
  v21 = *(v1 + 256);

  v22 = *(v19 + 8);
  v23 = OUTLINED_FUNCTION_12_1();
  v24(v23);
  sub_26610E7B0(v21);
  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = [*(v1 + 256) requestedApplication];
  if (!v26 || (v27 = sub_266104124(v26), !v28))
  {

    goto LABEL_14;
  }

  v29 = v27;
  v30 = v28;
  sub_26610E814(*(v1 + 264) + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_hsqaRunner, v1 + 56);
  if (!*(v1 + 80))
  {

    sub_2660C8040(v1 + 56, &qword_28005C4A0, &qword_266191788);
    goto LABEL_14;
  }

  sub_2660B9EB8((v1 + 56), v1 + 16);
  OUTLINED_FUNCTION_3_12();
  sub_2660CCB54(v29, v30, v1 + 136);
  if (!*(v1 + 160))
  {
    v41 = *(v1 + 256);
    sub_2660C8040(v1 + 136, &qword_28005BFF0, &qword_266191790);
    result = sub_26610E884(v41);
    if (result)
    {
      v42 = result;
      v43 = 0;
      v52 = *(result + 16);
      for (i = (result + 40); ; i += 2)
      {
        if (v52 == v43)
        {

          goto LABEL_26;
        }

        if (v43 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v46 = *(i - 1);
        v45 = *i;
        OUTLINED_FUNCTION_3_12();

        sub_2660CCB54(v29, v30, v1 + 216);
        if (*(v1 + 240))
        {
          break;
        }

        ++v43;
        result = sub_2660C8040(v1 + 216, &qword_28005BFF0, &qword_266191790);
      }

      sub_2660B9EB8((v1 + 216), v1 + 176);
      v47 = *(v1 + 200);
      v48 = *(v1 + 208);
      __swift_project_boxed_opaque_existential_1((v1 + 176), v47);
      result = (*(v48 + 8))(v47, v48);
      if (!v49)
      {
        goto LABEL_31;
      }

      type metadata accessor for DeepLaunchPageNameResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v51 = sub_26618C8A0();

      [ObjCClassFromMetadata successWithResolvedString_];

      v37 = (v1 + 176);
      goto LABEL_12;
    }

LABEL_26:

    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
LABEL_14:
    type metadata accessor for DeepLaunchPageNameResolutionResult();
    static DeepLaunchPageNameResolutionResult.unsupported(forReason:)(1);
    goto LABEL_15;
  }

  sub_2660B9EB8((v1 + 136), v1 + 96);
  v31 = *(v1 + 120);
  v32 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v31);
  result = (*(v32 + 8))(v31, v32);
  if (v34)
  {

    type metadata accessor for DeepLaunchPageNameResolutionResult();
    v35 = swift_getObjCClassFromMetadata();
    v36 = sub_26618C8A0();

    [v35 successWithResolvedString_];

    v37 = (v1 + 96);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
LABEL_15:
    v38 = *(v1 + 288);

    v39 = OUTLINED_FUNCTION_5_7();

    return v40(v39);
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26610D254(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26610D318;

  return sub_26610CCDC();
}

uint64_t sub_26610D318()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  (v4)[2](v4, v2);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_26610D478()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_26618C6B0();
  v1[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[6] = v4;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26610D530(uint64_t a1)
{
  if (qword_2814B2C48 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10();
  }

  v2 = v1[8];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[3];
  v1[9] = OUTLINED_FUNCTION_14_3(a1, qword_2814B4AB0);
  v1[10] = *(v4 + 16);
  v1[11] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = OUTLINED_FUNCTION_13_2();
  v7(v6);
  v8 = v5;
  v9 = sub_26618C690();
  LOBYTE(v3) = sub_26618CAD0();

  if (os_log_type_enabled(v9, v3))
  {
    v10 = v1[3];
    OUTLINED_FUNCTION_49_0();
    v11 = OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_15_6(v11, 5.7779e-34);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660C8040(v11, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_28_3();
  }

  v17 = v1[8];
  v18 = v1[5];
  v19 = v1[6];
  v20 = v1[3];

  v1[12] = *(v19 + 8);
  v1[13] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21 = OUTLINED_FUNCTION_12_1();
  v22(v21);
  v23 = [v20 requestedApplication];
  v1[14] = v23;
  if (v23)
  {
    v24 = v23;
    __swift_project_boxed_opaque_existential_1((v1[4] + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_appsSearcher), *(v1[4] + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_appsSearcher + 24));
    v25 = sub_2660C9D24(v24);
    v27 = v26;
    v1[15] = v26;
    v28 = sub_2660C9D30(v24);
    v30 = v29;
    v1[16] = v29;
    v31 = swift_task_alloc();
    v1[17] = v31;
    *v31 = v1;
    v31[1] = sub_26610D7B8;

    return sub_2661515C4(v25, v27, v28, v30, 0);
  }

  else
  {
    type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
    static DeepLaunchRequestedApplicationResolutionResult.unsupported(forReason:)(2);
    v34 = v1[7];
    v33 = v1[8];

    v35 = OUTLINED_FUNCTION_5_7();

    return v36(v35);
  }
}

uint64_t sub_26610D7B8()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  v2[18] = v4;
  v2[19] = v0;

  if (v0)
  {
    v5 = sub_26610D9E8;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];

    v5 = sub_26610D8D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26610D8D8()
{
  OUTLINED_FUNCTION_1_0();
  if (sub_2661046B8(v0[18]) < 1)
  {
    v4 = v0[14];
    v5 = v0[18];

    type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
    static DeepLaunchRequestedApplicationResolutionResult.unsupported(forReason:)(2);
  }

  else
  {
    v1 = v0[18] & 0xC000000000000001;
    sub_2661046C8(0);
    if (v1)
    {
      v2 = MEMORY[0x26677C150](0, v0[18]);
      v11 = v0[18];
    }

    else
    {
      v2 = *(v0[18] + 32);
    }

    v3 = v0[14];

    type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
    static ApplicationResolutionResult.success(with:)(v2);
  }

  v7 = v0[7];
  v6 = v0[8];

  v8 = OUTLINED_FUNCTION_5_7();

  return v9(v8);
}

uint64_t sub_26610D9E8()
{
  v37 = v0;
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[5];

  v5(v7, v6, v8);
  v9 = v1;
  v10 = sub_26618C690();
  v11 = sub_26618CAA0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[19];
    v13 = v0[12];
    v35 = v0[13];
    v14 = v0[7];
    v15 = v0[5];
    v16 = OUTLINED_FUNCTION_49_0();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    v0[2] = v12;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v19 = sub_26618C8D0();
    v21 = sub_266103A98(v19, v20, &v36);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2660B7000, v10, v11, "An error occurred trying to find apps: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v22 = OUTLINED_FUNCTION_12_1();
    v13(v22);
  }

  else
  {
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[7];
    v26 = v0[5];

    v27 = OUTLINED_FUNCTION_12_1();
    v24(v27);
  }

  v28 = v0[19];
  v29 = v0[14];
  type metadata accessor for DeepLaunchRequestedApplicationResolutionResult();
  static DeepLaunchRequestedApplicationResolutionResult.unsupported(forReason:)(1);

  v31 = v0[7];
  v30 = v0[8];

  v32 = OUTLINED_FUNCTION_5_7();

  return v33(v32);
}

uint64_t sub_26610DC10(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26610EE18;

  return sub_26610D478();
}

uint64_t sub_26610DCD4()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_26618C6B0();
  v0[2] = v1;
  OUTLINED_FUNCTION_0_4(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26610DD7C()
{
  OUTLINED_FUNCTION_1_0();
  if (qword_2814B2C48 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_10();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  OUTLINED_FUNCTION_14_3(v1, qword_2814B4AB0);
  v5 = *(v3 + 16);
  v6 = OUTLINED_FUNCTION_13_2();
  v7(v6);
  v8 = sub_26618C690();
  v9 = sub_26618CAA0();
  if (os_log_type_enabled(v8, v9))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v16 = v0[3];
  v15 = v0[4];
  v17 = v0[2];

  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_12_1();
  v20(v19);
  v21 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
  DeepLaunchIntentResponse.init(code:userActivity:)(1, 0);

  v22 = OUTLINED_FUNCTION_5_7();

  return v23(v22);
}

uint64_t sub_26610DED8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26610EE18;

  return sub_26610DCD4();
}

uint64_t sub_26610DF90()
{
  OUTLINED_FUNCTION_18();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_26618C6B0();
  v1[28] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[29] = v4;
  v6 = *(v5 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26610E048(uint64_t a1)
{
  v106 = v1;
  if (qword_2814B2C48 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_10();
  }

  v2 = *(v1 + 248);
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  v5 = *(v1 + 208);
  OUTLINED_FUNCTION_14_3(a1, qword_2814B4AB0);
  v6 = *(v4 + 16);
  v7 = OUTLINED_FUNCTION_13_2();
  v103 = v8;
  v8(v7);
  v9 = v5;
  v10 = sub_26618C690();
  LOBYTE(v3) = sub_26618CAA0();

  if (os_log_type_enabled(v10, v3))
  {
    v11 = *(v1 + 208);
    OUTLINED_FUNCTION_49_0();
    v12 = OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_15_6(v12, 5.7779e-34);
    OUTLINED_FUNCTION_27_1();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660C8040(v12, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_28_3();
  }

  v18 = *(v1 + 248);
  v19 = *(v1 + 224);
  v20 = *(v1 + 232);
  v21 = *(v1 + 208);

  v22 = *(v20 + 8);
  v23 = OUTLINED_FUNCTION_12_1();
  v22(v23);
  v24 = [v21 requestedApplication];
  if (v24)
  {
    v25 = sub_266104124(v24);
    if (v26)
    {
      v27 = v25;
      sub_26610E7B0(*(v1 + 208));
      if (v28)
      {
        sub_26610E814(*(v1 + 216) + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_hsqaRunner, v1 + 56);
        if (!*(v1 + 80))
        {
          sub_2660C8040(v1 + 56, &qword_28005C4A0, &qword_266191788);
          return sub_26618CE80();
        }

        sub_2660B9EB8((v1 + 56), v1 + 16);
        OUTLINED_FUNCTION_3_12();
        v29 = OUTLINED_FUNCTION_19_6();
        sub_2660CCB54(v29, v30, v31);
        if (*(v1 + 120))
        {
          sub_2660C8040(v1 + 96, &qword_28005BFF0, &qword_266191790);
          OUTLINED_FUNCTION_3_12();
          v32 = OUTLINED_FUNCTION_19_6();
          sub_2660CCA78(v32, v33, v34, v35);

LABEL_25:

          v79 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
          v80 = 4;
        }

        else
        {
          v61 = *(v1 + 208);

          sub_2660C8040(v1 + 96, &qword_28005BFF0, &qword_266191790);
          v62 = sub_26610E884(v61);
          if (v62)
          {
            v63 = v62;
            v99 = v22;
            v100 = v27;
            v64 = 0;
            v102 = *(v62 + 16);
            for (i = (v62 + 40); ; i += 2)
            {
              if (v102 == v64)
              {

                goto LABEL_29;
              }

              if (v64 >= *(v63 + 16))
              {
                break;
              }

              v67 = *(i - 1);
              v66 = *i;
              OUTLINED_FUNCTION_3_12();

              v76 = OUTLINED_FUNCTION_20_8(v68, v69, v70, v71, v72, v73, v74, v75, v96, v97, v98, v99, v100);
              sub_2660CCB54(v76, v77, v78);
              if (*(v1 + 160))
              {

                sub_2660C8040(v1 + 136, &qword_28005BFF0, &qword_266191790);
                v83 = OUTLINED_FUNCTION_3_12();
                v91 = OUTLINED_FUNCTION_20_8(v83, v84, v85, v86, v87, v88, v89, v90, v96, v97, v98, v99, v100);
                sub_2660CCA78(v91, v92, v93, v94);

                goto LABEL_25;
              }

              ++v64;
              sub_2660C8040(v1 + 136, &qword_28005BFF0, &qword_266191790);
            }

            __break(1u);
            v95 = swift_once();
            v36 = *(v1 + 240);
            v37 = *(v1 + 224);
            OUTLINED_FUNCTION_14_3(v95, qword_2814B4A98);
            v38 = OUTLINED_FUNCTION_13_2();
            v103(v38);
            v39 = i;
            v40 = sub_26618C690();
            v41 = sub_26618CAB0();

            v42 = os_log_type_enabled(v40, v41);
            v43 = *(v1 + 240);
            v44 = *(v1 + 224);
            if (v42)
            {
              v45 = OUTLINED_FUNCTION_49_0();
              v46 = swift_slowAlloc();
              v105 = v46;
              *v45 = 136315138;
              swift_getErrorValue();
              v104 = v43;
              v48 = *(v1 + 176);
              v47 = *(v1 + 184);
              v49 = *(v1 + 192);
              v50 = sub_26618D040();
              v101 = v44;
              v52 = sub_266103A98(v50, v51, &v105);

              *(v45 + 4) = v52;
              _os_log_impl(&dword_2660B7000, v40, v41, "Eror running shortcut item %s", v45, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v46);
              OUTLINED_FUNCTION_7_2();
              OUTLINED_FUNCTION_7_2();

              v54 = v101;
              v53 = v104;
            }

            else
            {

              v53 = v43;
              v54 = v44;
            }

            (v64)(v53, v54);
            v81 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
            DeepLaunchIntentResponse.init(code:userActivity:)(100, 0);

            goto LABEL_31;
          }

LABEL_29:

          v82 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
          v80 = 5;
        }

        DeepLaunchIntentResponse.init(code:userActivity:)(v80, 0);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_1((v1 + 16));
        goto LABEL_15;
      }
    }
  }

  v55 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentResponse());
  DeepLaunchIntentResponse.init(code:userActivity:)(5, 0);
LABEL_15:
  v57 = *(v1 + 240);
  v56 = *(v1 + 248);

  v58 = OUTLINED_FUNCTION_5_7();

  return v59(v58);
}

uint64_t sub_26610E644(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26610EE18;

  return sub_26610DF90();
}

id sub_26610E708()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeepLaunchIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26610E7B0(void *a1)
{
  v1 = [a1 pageName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_26610E814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A0, &qword_266191788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26610E884(void *a1)
{
  v1 = [a1 pageCanonicalNames];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_26610E8DC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610E96C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610E9FC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610EA8C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_11(v1);

  return v4(v3);
}

uint64_t sub_26610EB1C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_26610EC0C(const void *a1, uint64_t a2, void *a3)
{
  v9[3] = &type metadata for AppsSearcher;
  v9[4] = &off_2877CC0A0;
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), a1, 0xA8uLL);
  sub_2660C5864(v9, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_appsSearcher);
  sub_26610E814(a2, a3 + OBJC_IVAR____TtC20SiriAppLaunchIntents23DeepLaunchIntentHandler_hsqaRunner);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for DeepLaunchIntentHandler();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_2660C8040(a2, &qword_28005C4A0, &qword_266191788);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

id sub_26610ECE8(const void *a1, uint64_t a2)
{
  v13[3] = &type metadata for AppsSearcher;
  v13[4] = &off_2877CC0A0;
  v13[0] = swift_allocObject();
  memcpy((v13[0] + 16), a1, 0xA8uLL);
  v4 = objc_allocWithZone(type metadata accessor for DeepLaunchIntentHandler());
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, &type metadata for AppsSearcher);
  v6 = *(off_2877CC070 + 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_26610EC0C(v8, a2, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t *OUTLINED_FUNCTION_3_12()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_15_6(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

void OUTLINED_FUNCTION_18_8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void *sub_26610EEB8()
{
  sub_26618B810();
  sub_26618B810();
  type metadata accessor for LocUtil();
  v0 = swift_allocObject();
  sub_2660B9EB8(&v14, v0 + 16);
  v1 = sub_26618B470();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_26618B460();
  v5 = type metadata accessor for BaseDialogProvider();
  v6 = swift_allocObject();
  v15 = v1;
  v16 = MEMORY[0x277D5BD58];
  *&v14 = v4;
  v13[3] = v5;
  v13[4] = &off_2877CAA90;
  v13[0] = v6;
  type metadata accessor for DeepLaunchUnsupportedValueStrategy();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v13, v5);
  v9 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_4();
  (*(v10 + 16))(v4);
  v11 = *v4;
  v7[16] = v5;
  v7[17] = &off_2877CAA90;
  v7[13] = v11;
  sub_2660B9EB8(&v17, (v7 + 2));
  v7[7] = v0;
  sub_2660B9EB8(&v14, (v7 + 8));
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v7;
}

uint64_t sub_26610F048()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618B530();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_25_0();
  v1[8] = swift_task_alloc();
  v8 = sub_26618C6B0();
  v1[9] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_25_0();
  v1[12] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26610F154()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = __swift_project_value_buffer(v0[9], qword_2814B4A98);
  v55 = *(v2 + 16);
  v56 = v3;
  v55(v1);
  v4 = sub_26618C690();
  v5 = sub_26618CAA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_2();
    *v6 = 0;
    _os_log_impl(&dword_2660B7000, v4, v5, "DeepLaunchUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v6, 2u);
    OUTLINED_FUNCTION_7_3();
  }

  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[3];

  v14 = *(v8 + 8);
  v14(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  sub_26618B6D0();
  v15 = sub_26618B520();
  v17 = v16;
  v18 = *(v12 + 8);
  v18(v10, v11);
  if (v15 == 0xD000000000000014 && 0x8000000266199420 == v17)
  {
  }

  else
  {
    v20 = sub_26618D000();

    if ((v20 & 1) == 0)
    {
      v21 = v0[7];
      v22 = v0[5];
      v23 = v0[3];
      sub_26618B6D0();
      v24 = sub_26618B520();
      v26 = v25;
      v18(v21, v22);
      if (v24 == 0x656D614E65676170 && v26 == 0xE800000000000000)
      {
      }

      else
      {
        v28 = sub_26618D000();

        if ((v28 & 1) == 0)
        {
          (v55)(v0[11], v56, v0[9]);
          v29 = sub_26618C690();
          v30 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_2(v30))
          {
            v31 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_30_0(v31);
            OUTLINED_FUNCTION_14_0(&dword_2660B7000, v32, v33, "DeepLaunchUnsupportedValueStrategy.makeUnsupportedValueOutput() got unknown parameter");
            OUTLINED_FUNCTION_28_3();
          }

          v35 = v0[10];
          v34 = v0[11];
          v36 = v0[9];

          v37 = OUTLINED_FUNCTION_12_1();
          (v14)(v37);
          sub_2660D3004();
          v38 = OUTLINED_FUNCTION_31_5();
          OUTLINED_FUNCTION_13_7(v38, v39);
          v41 = v0[11];
          v40 = v0[12];
          v43 = v0[7];
          v42 = v0[8];

          OUTLINED_FUNCTION_5_3();
          OUTLINED_FUNCTION_22_0();

          __asm { BRAA            X1, X16 }
        }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[14] = v52;
      *v52 = v53;
      OUTLINED_FUNCTION_10_7(v52);
      OUTLINED_FUNCTION_22_0();

      return sub_266110E04();
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[13] = v46;
  *v46 = v47;
  OUTLINED_FUNCTION_10_7(v46);
  OUTLINED_FUNCTION_22_0();

  return sub_26610F8A8(v48, v49);
}

uint64_t sub_26610F534()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[8];
  v8 = v1[7];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_26610F6A0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[8];
  v8 = v1[7];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_26610F80C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26610F834()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v2 = sub_26618B6B0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26610F8A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26610F8D4()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v2 = sub_26618B6C0();
  v3 = [v2 unsupportedReason];

  v4 = DeepLaunchRequestedApplicationUnsupportedReason.init(rawValue:)(v3);
  if (v5)
  {
    sub_2660D3004();
    v6 = OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_13_7(v6, v7);
    OUTLINED_FUNCTION_5_3();

    return v8();
  }

  else if (v4 == 2)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[6] = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_10_7(v10);

    return sub_26610FB40();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[5] = v12;
    *v12 = v0;
    v12[1] = sub_26610FA60;
    v13 = v0[3];

    return sub_2661108F0();
  }
}

uint64_t sub_26610FA60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_26610FB40()
{
  OUTLINED_FUNCTION_18();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[18] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B6A0();
  v1[20] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[21] = v14;
  v16 = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_8_2();
  v17 = sub_26618C6B0();
  v1[23] = v17;
  OUTLINED_FUNCTION_0_4(v17);
  v1[24] = v18;
  v20 = *(v19 + 64);
  v1[25] = OUTLINED_FUNCTION_25_0();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26610FCAC()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  *(v0 + 224) = __swift_project_value_buffer(*(v0 + 184), qword_2814B4A98);
  v3 = *(v2 + 16);
  *(v0 + 232) = v3;
  *(v0 + 240) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = OUTLINED_FUNCTION_11_0();
  v3(v4);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_34_4(&dword_2660B7000, v7, v8, "DeepLaunchUnsupportedValueStrategy.templateDialogForUnsupportedApp() called");
    OUTLINED_FUNCTION_7_3();
  }

  v9 = *(v0 + 216);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v0 + 120);

  v13 = *(v11 + 8);
  *(v0 + 248) = v13;
  v13(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v14 = sub_26618B6C0();
  v15 = [v14 unsupportedReason];

  v16 = DeepLaunchRequestedApplicationUnsupportedReason.init(rawValue:)(v15);
  if ((v17 & 1) == 0 && v16 == 2)
  {
    v18 = *(v0 + 120);
    v19 = sub_26618B6B0();
    v20 = [v19 requestedApplication];

    if (v20)
    {
      v21 = sub_26610410C(v20);
      *(v0 + 256) = v21;
      *(v0 + 264) = v22;
      if (v22)
      {
        v23 = *(v0 + 128);
        *(v0 + 16) = v21;
        *(v0 + 24) = v22;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 64) = 1;

        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        *(v0 + 272) = v24;
        *v24 = v25;
        v24[1] = sub_26610FFDC;

        return sub_2660C1068();
      }
    }

    v27 = *(v0 + 200);
    v28 = *(v0 + 184);
    v29 = OUTLINED_FUNCTION_11_0();
    v3(v29);
    v30 = sub_26618C690();
    v31 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v31))
    {
      v32 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v32);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v33, v34, "Unable to get app name, skipping button punchout for app store");
      OUTLINED_FUNCTION_28_3();
    }

    v36 = *(v0 + 192);
    v35 = *(v0 + 200);
    v37 = *(v0 + 184);

    v38 = OUTLINED_FUNCTION_12_1();
    (v13)(v38);
  }

  sub_2660D3004();
  v39 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_13_7(v39, v40);
  OUTLINED_FUNCTION_25_5();

  OUTLINED_FUNCTION_5_3();

  return v41();
}

uint64_t sub_26610FFDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 272);
  *v4 = *v1;
  *(v3 + 280) = v7;
  *(v3 + 288) = v0;

  if (v0)
  {
    v8 = sub_266110800;
  }

  else
  {
    sub_2661121B0(v3 + 16);
    v8 = sub_2661100EC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2661100EC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  v4 = *(v3 + 56);
  sub_26617CA00(0xD000000000000010, 0x80000002661993E0);
  if (v5)
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[17];
    v63 = v0[18];
    v64 = v0[35];
    v9 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26618E190;
    v11 = sub_26618AB80();
    v12 = MEMORY[0x277D63778];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 32));
    v14 = sub_266110B14();

    *boxed_opaque_existential_0 = v14;
    *(boxed_opaque_existential_0 + 8) = 0;
    (*(*(v11 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D63720], v11);
    sub_26618AB60();
    OUTLINED_FUNCTION_12_1();
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    v0[12] = OUTLINED_FUNCTION_37_1();
    v0[13] = sub_266112158();
    v15 = __swift_allocate_boxed_opaque_existential_0(v0 + 9);
    sub_2660F113C(v63, v15);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v16 = OUTLINED_FUNCTION_35_3();
    v0[37] = v16;
    *(v16 + 16) = xmmword_26618F7E0;
    *(v16 + 32) = v64;
    v17 = *(MEMORY[0x277D5BE48] + 4);
    v18 = v64;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[38] = v19;
    *v19 = v20;
    v19[1] = sub_266110498;
    v21 = v0[22];
    v22 = v0[14];
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB478](v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v30 = v0[33];
    v32 = v0[29];
    v31 = v0[30];
    v33 = v0[28];
    v34 = v0[26];
    v35 = v0[23];

    v32(v34, v33, v35);
    v36 = sub_26618C690();
    v37 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v37))
    {
      v38 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v38);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v39, v40, "Unable to get buttonLabel, skipping button punchout for app store");
      OUTLINED_FUNCTION_28_3();
    }

    v41 = v0[35];
    v42 = v0[31];
    v43 = v0[26];
    v44 = v0[23];
    v45 = v0[24];
    v46 = v0[16];

    v47 = OUTLINED_FUNCTION_12_1();
    v42(v47);
    v48 = v46[12];
    __swift_project_boxed_opaque_existential_1(v46 + 8, v46[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v49 = OUTLINED_FUNCTION_35_3();
    v0[39] = v49;
    *(v49 + 16) = xmmword_26618F7E0;
    *(v49 + 32) = v41;
    v50 = *(MEMORY[0x277D5BE58] + 4);
    v51 = v41;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[40] = v52;
    *v52 = v53;
    v52[1] = sub_266110654;
    v54 = v0[22];
    v55 = v0[14];
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB488](v56, v57, v58, v59, v60);
  }
}

uint64_t sub_266110498()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *(v4 + 296);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26611059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();
  v11 = *(v10 + 144);

  sub_2660F11A0(v11);
  v12 = OUTLINED_FUNCTION_14_8();
  v13(v12);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266110654()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266110754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();

  v11 = OUTLINED_FUNCTION_14_8();
  v12(v11);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266110800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();
  v11 = *(v10 + 264);
  sub_2661121B0(v10 + 16);

  v12 = *(v10 + 288);
  OUTLINED_FUNCTION_25_5();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2661108A4()
{
  sub_26618B650();
  sub_26618B680();
  return sub_26618B640();
}

uint64_t sub_2661108F0()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_26618C6B0();
  v0[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_8_2();
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266110994()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v9);
    _os_log_impl(&dword_2660B7000, v7, v8, "DeepLaunchUnsupportedValueStrategy.patternDialogForUnsupportedApp() called", v5, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_12_1();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v17 = sub_26618B6C0();
  v18 = [v17 unsupportedReason];

  DeepLaunchRequestedApplicationUnsupportedReason.init(rawValue:)(v18);
  sub_2660D3004();
  v19 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_13_7(v19, v20);

  OUTLINED_FUNCTION_5_3();

  return v21();
}

id sub_266110B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = sub_26618A460();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_4();
  sub_26618A450();
  sub_26618A440();
  MEMORY[0x2667797F0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C0, qword_2661918E0);
  v10 = sub_26618A400();
  OUTLINED_FUNCTION_0_4(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_26618E250;
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A410();
  v15 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_26618A420();
  v16 = sub_26618A500();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) != 1)
  {
    v17 = sub_26618A4D0();
    (*(*(v16 - 8) + 8))(v6, v16);
  }

  [v15 setPunchOutUri_];

  (*(v8 + 8))(v0, v7);
  return v15;
}

uint64_t sub_266110E04()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v10);
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B6A0();
  v1[13] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_8_2();
  v17 = sub_26618C6B0();
  v1[16] = v17;
  OUTLINED_FUNCTION_0_4(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = OUTLINED_FUNCTION_25_0();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_266110F7C()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = v0[21];
  v2 = v0[17];
  v0[22] = __swift_project_value_buffer(v0[16], qword_2814B4A98);
  v3 = *(v2 + 16);
  v0[23] = v3;
  v0[24] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = OUTLINED_FUNCTION_11_0();
  v3(v4);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_34_4(&dword_2660B7000, v7, v8, "DeepLaunchUnsupportedValueStrategy.templateDialogForUnsupportedQuickAction() called");
    OUTLINED_FUNCTION_7_3();
  }

  v9 = v0[21];
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[8];

  v13 = *(v11 + 8);
  v0[25] = v13;
  v13(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4A8, &qword_2661918D8);
  v14 = sub_26618B6C0();
  v15 = [v14 unsupportedReason];

  v16 = DeepLaunchPageNameUnsupportedReason.init(rawValue:)(v15);
  if ((v17 & 1) == 0 && v16 == 1)
  {
    v18 = v0[8];
    v19 = sub_26618B6B0();
    v20 = [v19 requestedApplication];

    if (v20 && (v21 = sub_26610410C(v20), v0[26] = v21, (v0[27] = v22) != 0))
    {
      v23 = v21;
      v24 = v22;
      v25 = v0[8];
      v26 = sub_26618B6B0();
      v27 = [v26 requestedApplication];

      if (v27)
      {
        v0[28] = sub_266104124(v27);
        v0[29] = v28;
        if (v28)
        {
          v29 = v0[9];
          v30 = swift_task_alloc();
          v0[30] = v30;
          *v30 = v0;
          v30[1] = sub_266111334;

          return sub_2660C5428(v23, v24);
        }
      }

      v41 = v0[19];
      v42 = v0[16];

      v43 = OUTLINED_FUNCTION_11_0();
      v3(v43);
      v35 = sub_26618C690();
      v44 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v44))
      {
        v45 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v45);
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v46, v47, "Unable to get appId, skipping button punchout for app launch");
        OUTLINED_FUNCTION_28_3();
      }

      v48 = v0[19];
    }

    else
    {
      v32 = v0[18];
      v33 = v0[16];
      v34 = OUTLINED_FUNCTION_11_0();
      v3(v34);
      v35 = sub_26618C690();
      v36 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v36))
      {
        v37 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v37);
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v38, v39, "Unable to get app name, skipping button punchout for app launch");
        OUTLINED_FUNCTION_28_3();
      }

      v40 = v0[18];
    }

    v49 = v0[16];
    v50 = v0[17];

    v51 = OUTLINED_FUNCTION_12_1();
    (v13)(v51);
  }

  sub_2660D3004();
  v52 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_13_7(v52, v53);
  OUTLINED_FUNCTION_28_6();

  OUTLINED_FUNCTION_5_3();

  return v54();
}

uint64_t sub_266111334()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 240);
  *v3 = *v1;
  *(v2 + 248) = v6;
  *(v2 + 256) = v0;

  if (v0)
  {
    v7 = sub_266111C20;
  }

  else
  {
    v7 = sub_26611143C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26611143C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  sub_26618B1B0();
  OUTLINED_FUNCTION_23_3();
  v4 = *(v3 + 56);
  sub_26617CA00(0x5050415F4E45504FLL, 0xE800000000000000);
  if (v5)
  {
    v6 = v0[29];
    v64 = v0[28];
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[10];
    v65 = v0[11];
    v66 = v0[31];
    v10 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4B0, &qword_266196770);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26618E190;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2661120AC();
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
    sub_26618C8C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26618E190;
    v13 = sub_26618AB80();
    v14 = MEMORY[0x277D63778];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v12 + 32));
    v16 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_266112100(v64, v6, v16);

    *boxed_opaque_existential_0 = v16;
    *(boxed_opaque_existential_0 + 8) = 0;
    (*(*(v13 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D63720], v13);
    sub_26618AB60();
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    v0[5] = OUTLINED_FUNCTION_37_1();
    v0[6] = sub_266112158();
    v17 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    sub_2660F113C(v65, v17);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v18 = OUTLINED_FUNCTION_35_3();
    v0[33] = v18;
    *(v18 + 16) = xmmword_26618F7E0;
    *(v18 + 32) = v66;
    v19 = *(MEMORY[0x277D5BE48] + 4);
    v20 = v66;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[34] = v21;
    *v21 = v22;
    v21[1] = sub_266111898;
    v23 = v0[15];
    v24 = v0[7];
    OUTLINED_FUNCTION_24_4();

    return MEMORY[0x2821BB478](v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v31 = v0[29];
    v32 = v0[27];
    v34 = v0[23];
    v33 = v0[24];
    v35 = v0[22];
    v36 = v0[20];
    v37 = v0[16];

    v34(v36, v35, v37);
    v38 = sub_26618C690();
    v39 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v39))
    {
      v40 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_30_0(v40);
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v41, v42, "Unable to get buttonLabel, skipping button punchout for app store");
      OUTLINED_FUNCTION_28_3();
    }

    v43 = v0[31];
    v44 = v0[25];
    v45 = v0[20];
    v46 = v0[16];
    v47 = v0[17];
    v48 = v0[9];

    v49 = OUTLINED_FUNCTION_12_1();
    v44(v49);
    v50 = v48[12];
    __swift_project_boxed_opaque_existential_1(v48 + 8, v48[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v51 = OUTLINED_FUNCTION_35_3();
    v0[35] = v51;
    *(v51 + 16) = xmmword_26618F7E0;
    *(v51 + 32) = v43;
    v52 = *(MEMORY[0x277D5BE58] + 4);
    v53 = v43;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[36] = v54;
    *v54 = v55;
    v54[1] = sub_266111A64;
    v56 = v0[15];
    v57 = v0[7];
    OUTLINED_FUNCTION_13_6();

    return MEMORY[0x2821BB488](v58, v59, v60, v61, v62);
  }
}

uint64_t sub_266111898()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *(v4 + 264);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26611199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();
  v12 = *(v10 + 112);
  v11 = *(v10 + 120);
  v13 = *(v10 + 104);
  v14 = *(v10 + 88);

  sub_2660F11A0(v14);
  v15 = *(v12 + 8);
  v16 = OUTLINED_FUNCTION_11_0();
  v17(v16);
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_266111A64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 288);
  v3 = *(v1 + 280);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266111B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_68();
  v12 = *(v10 + 112);
  v11 = *(v10 + 120);
  v13 = *(v10 + 104);

  v14 = *(v12 + 8);
  v15 = OUTLINED_FUNCTION_11_0();
  v16(v15);
  OUTLINED_FUNCTION_26_4();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_29_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_266111C20()
{
  OUTLINED_FUNCTION_68();
  v1 = v0[29];
  v2 = v0[27];

  v3 = v0[32];
  OUTLINED_FUNCTION_28_6();

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_266111CDC()
{
  sub_26618B650();
  sub_26618B680();
  return sub_26618B640();
}

uint64_t *sub_266111D28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_2660D3208((v0 + 13));
  return v0;
}

uint64_t sub_266111D60()
{
  sub_266111D28();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_266111DB8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_26610F048();
}

uint64_t sub_266111E64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266111EF8;

  return sub_26610F80C(a1);
}

uint64_t sub_266111EF8()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_266111FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeepLaunchUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_2660D2E00;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

unint64_t sub_2661120AC()
{
  result = qword_28005C4B8;
  if (!qword_28005C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C4B8);
  }

  return result;
}

void sub_266112100(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setBundleId_];
}

unint64_t sub_266112158()
{
  result = qword_2814B3FF0[0];
  if (!qword_2814B3FF0[0])
  {
    type metadata accessor for AppLaunchDataModels(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B3FF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = *(v0[21] + 8);
  return v0[22];
}

uint64_t OUTLINED_FUNCTION_25_5()
{
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
}

uint64_t OUTLINED_FUNCTION_28_6()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_34_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_35_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);

  return type metadata accessor for AppLaunchDataModels(0);
}

uint64_t sub_2661123A8(uint64_t a1)
{
  v2 = sub_26618C6B0();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v106 = v4;
  v107 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_69_0();
  v104 = v7;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v8);
  v102 = &v99 - v9;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v10);
  v99 = &v99 - v11;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v12);
  v100 = &v99 - v13;
  v105 = type metadata accessor for AppLaunchIntent();
  v14 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26618C0E0();
  v18 = OUTLINED_FUNCTION_2_2(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26618B800();
  v26 = OUTLINED_FUNCTION_2_2(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_69_0();
  v101 = v31;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v32);
  v103 = &v99 - v33;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v99 - v35;
  v37 = *(v28 + 16);
  v37(&v99 - v35, a1, v25);
  if ((*(v28 + 88))(v36, v25) != *MEMORY[0x277D5C128])
  {
    v105 = v36;
    v51 = a1;
    sub_2660C87C0();
    if (!v109)
    {
      sub_2660DD714(&v108);
      v75 = v106;
      v76 = v107;
      v77 = v25;
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5();
      }

      v78 = __swift_project_value_buffer(v76, qword_2814B4A80);
      (*(v75 + 16))(v104, v78, v76);
      v79 = v103;
      v37(v103, v51, v25);
      v80 = sub_26618C690();
      v81 = sub_26618CAB0();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v100 = v82;
        v83 = swift_slowAlloc();
        v110[0] = v83;
        *v82 = 136315138;
        LODWORD(v102) = v81;
        v81 = v101;
        v37(v101, v79, v25);
        v84 = sub_266145588(v81);
        v86 = v85;
        v87 = OUTLINED_FUNCTION_4_12();
        v81(v87, v25);
        v88 = sub_266103A98(v84, v86, v110);
        v77 = v25;

        v89 = v100;
        *(v100 + 4) = v88;
        _os_log_impl(&dword_2660B7000, v80, v102, "Unable to handle parse: %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();

        (*(v106 + 8))(v104, v107);
      }

      else
      {

        v98 = OUTLINED_FUNCTION_4_12();
        v81(v98, v25);
        (*(v106 + 8))(v104, v76);
      }

      v81(v105, v77);
      return 0;
    }

    sub_2660B9EB8(&v108, v110);
    v52 = v111;
    v53 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v54 = (*(v53 + 8))(v52, v53);
    v55 = v107;
    v56 = v28;
    if (!v54)
    {
      v91 = v105;
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5();
      }

      v92 = __swift_project_value_buffer(v55, qword_2814B4A80);
      v93 = v106;
      v94 = v102;
      (*(v106 + 16))(v102, v92, v55);
      v95 = sub_26618C690();
      v96 = sub_26618CAB0();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_2660B7000, v95, v96, "Unable to extract verb from UserDialogAct, ignoring input", v97, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      (*(v93 + 8))(v94, v55);
      __swift_destroy_boxed_opaque_existential_1(v110);
      (*(v56 + 8))(v91, v25);
      return 0;
    }

    sub_26613BA0C();
    v58 = v57;

    v60 = sub_266145BC4(v58) == 1852141679 && v59 == 0xE400000000000000;
    v61 = v105;
    if (!v60)
    {
      v62 = OUTLINED_FUNCTION_6_9();

      if (v62)
      {
        goto LABEL_42;
      }

      if (sub_266145BC4(v58) != 0x736972616D6D7573 || v63 != 0xE900000000000065)
      {
        v65 = sub_26618D000();

        if ((v65 & 1) == 0)
        {
          if (sub_266145BC4(v58) != 0x627265566F6ELL || v66 != 0xE600000000000000)
          {
            v68 = sub_26618D000();

            if ((v68 & 1) == 0)
            {
              if (qword_2814B2C38 != -1)
              {
                OUTLINED_FUNCTION_2_5();
              }

              v69 = __swift_project_value_buffer(v55, qword_2814B4A80);
              v70 = v106;
              v71 = v99;
              (*(v106 + 16))(v99, v69, v55);
              v72 = sub_26618C690();
              v73 = sub_26618CA90();
              if (os_log_type_enabled(v72, v73))
              {
                v74 = swift_slowAlloc();
                *v74 = 0;
                _os_log_impl(&dword_2660B7000, v72, v73, "Incorrect verb in userDialogAct for flow, ignoring input", v74, 2u);
                OUTLINED_FUNCTION_7_2();
              }

              (*(v70 + 8))(v71, v55);
              __swift_destroy_boxed_opaque_existential_1(v110);
              (*(v56 + 8))(v61, v25);
              return 0;
            }

            goto LABEL_42;
          }

          goto LABEL_41;
        }

LABEL_42:
        __swift_destroy_boxed_opaque_existential_1(v110);
        (*(v28 + 8))(v61, v25);
        return 1;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  (*(v28 + 96))(v36, v25);
  (*(v20 + 32))(v24, v36, v17);
  (*(v20 + 16))(v16, v24, v17);
  v38 = v20;
  v39 = v16;
  v40 = v24;
  if (qword_2814B3D30 != -1)
  {
    swift_once();
  }

  sub_2660C98B4();
  sub_26618BDA0();
  if (LOBYTE(v110[0]) == 11)
  {
    goto LABEL_44;
  }

  if (sub_266146C4C(v110[0]) == 1852141679 && v41 == 0xE400000000000000)
  {

    goto LABEL_44;
  }

  v43 = OUTLINED_FUNCTION_6_9();

  if (v43)
  {
LABEL_44:
    sub_2660DD7D0(v16);
    (*(v38 + 8))(v24, v17);
    return 1;
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v44 = v107;
  v45 = __swift_project_value_buffer(v107, qword_2814B4A80);
  v46 = v106;
  v47 = v100;
  (*(v106 + 16))(v100, v45, v44);
  v48 = sub_26618C690();
  v49 = sub_26618CA90();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2660B7000, v48, v49, "Incorrect verb in intent for flow, ignoring input", v50, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v46 + 8))(v47, v44);
  sub_2660DD7D0(v39);
  (*(v38 + 8))(v40, v17);
  return 0;
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return sub_26618D000();
}

BOOL sub_266112E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v0 = sub_26618B5E0();
  v1 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2 == 102;
}

uint64_t sub_266112E80()
{
  type metadata accessor for BaseDialogProvider();
  swift_allocObject();
  v0 = sub_26618B470();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  sub_26618B460();

  sub_26618B810();
  v3 = OUTLINED_FUNCTION_19_7();
  v6 = sub_266115714(v3, v4, v5);

  return v6;
}

uint64_t sub_266112F1C()
{
  OUTLINED_FUNCTION_18();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A0, &unk_266191AC0);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v0[11] = OUTLINED_FUNCTION_8_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v0[12] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B980();
  v0[13] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v0[14] = v11;
  v13 = *(v12 + 64);
  v0[15] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618B8E0();
  v0[16] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v0[17] = v15;
  v17 = *(v16 + 64);
  v0[18] = OUTLINED_FUNCTION_25_0();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v18 = sub_26618B840();
  v0[21] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v0[22] = v19;
  v21 = *(v20 + 64);
  v0[23] = OUTLINED_FUNCTION_25_0();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v22 = sub_26618C6B0();
  v0[26] = v22;
  OUTLINED_FUNCTION_0_4(v22);
  v0[27] = v23;
  v25 = *(v24 + 64);
  v0[28] = OUTLINED_FUNCTION_25_0();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v26 = sub_26618B7F0();
  v0[33] = v26;
  OUTLINED_FUNCTION_0_4(v26);
  v0[34] = v27;
  v29 = *(v28 + 64);
  v0[35] = OUTLINED_FUNCTION_8_2();
  v30 = sub_26618B800();
  v0[36] = v30;
  OUTLINED_FUNCTION_0_4(v30);
  v0[37] = v31;
  v33 = *(v32 + 64);
  v0[38] = OUTLINED_FUNCTION_8_2();
  v34 = sub_26618B540();
  v0[39] = v34;
  OUTLINED_FUNCTION_0_4(v34);
  v0[40] = v35;
  v37 = *(v36 + 64);
  v0[41] = OUTLINED_FUNCTION_25_0();
  v0[42] = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v38, v39, v40);
}

uint64_t sub_266113250()
{
  v214 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 72);
  sub_26618B770();
  v5 = *(v2 + 88);
  v6 = OUTLINED_FUNCTION_12_1();
  v8 = v7(v6);
  if (v8 != *MEMORY[0x277D5C150])
  {
    if (v8 != *MEMORY[0x277D5C160])
    {
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v63 = *(v0 + 216);
      v62 = *(v0 + 224);
      __swift_project_value_buffer(*(v0 + 208), qword_2814B4A98);
      v64 = OUTLINED_FUNCTION_8_3();
      v65(v64);
      v66 = sub_26618C690();
      v67 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v67))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v68, v69, "LaunchAppConfirmationStrategy.parseConfirmationResponse unsupported parse type");
        OUTLINED_FUNCTION_28_3();
      }

      v71 = *(v0 + 296);
      v70 = *(v0 + 304);
      v72 = *(v0 + 288);
      v73 = *(v0 + 224);
      goto LABEL_34;
    }

    v18 = *(v0 + 200);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    (*(*(v0 + 296) + 96))(*(v0 + 304), *(v0 + 288));
    v21 = *(v20 + 32);
    v22 = OUTLINED_FUNCTION_19_7();
    v23(v22);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v24 = *(v0 + 248);
    v25 = *(v0 + 216);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 168);
    v29 = *(v0 + 176);
    v199 = __swift_project_value_buffer(*(v0 + 208), qword_2814B4A98);
    v203 = *(v25 + 16);
    v203(v24);
    v191 = *(v29 + 16);
    v191(v27, v26, v28);
    v30 = sub_26618C690();
    v31 = sub_26618CAA0();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 216);
    v34 = *(v0 + 192);
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    if (v32)
    {
      v211 = *(v0 + 248);
      log = v30;
      v187 = *(v0 + 208);
      v38 = *(v0 + 152);
      v37 = *(v0 + 160);
      v39 = *(v0 + 136);
      v174 = *(v0 + 128);
      buf = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v213 = v178;
      *buf = 136315138;
      sub_26618B820();
      (*(v39 + 16))(v38, v37, v174);
      v40 = sub_2661458C0();
      v42 = v41;
      v43 = OUTLINED_FUNCTION_20_9();
      v44(v43);
      (*(v39 + 8))(v37, v174);
      v45 = sub_266103A98(v40, v42, &v213);

      *(buf + 4) = v45;
      _os_log_impl(&dword_2660B7000, log, v31, "LaunchAppConfirmationStrategy.parseConfirmationResponse using follow up USO parse:  %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v178);
      MEMORY[0x26677CC30](v178, -1, -1);
      OUTLINED_FUNCTION_28_3();

      v46 = *(v33 + 8);
      v47 = v211;
      v48 = v187;
    }

    else
    {

      v97 = OUTLINED_FUNCTION_20_9();
      v98(v97);
      v99 = *(v33 + 8);
      v47 = OUTLINED_FUNCTION_12_1();
    }

    v212 = v46;
    v46(v47, v48);
    v100 = *(v0 + 200);
    v102 = *(v0 + 136);
    v101 = *(v0 + 144);
    v103 = *(v0 + 128);
    v105 = *(v0 + 96);
    v104 = *(v0 + 104);
    sub_26618B820();
    v106 = sub_26618B8B0();
    v107 = *(v102 + 8);
    v108 = OUTLINED_FUNCTION_12_1();
    v107(v108);
    sub_266139C58(v106, v105);

    if (__swift_getEnumTagSinglePayload(v105, 1, v104) == 1)
    {
      v109 = *(v0 + 232);
      v111 = *(v0 + 200);
      v110 = *(v0 + 208);
      v112 = *(v0 + 184);
      v113 = *(v0 + 168);
      sub_2660C8040(*(v0 + 96), &qword_28005BF28, &qword_26618F960);
      (v203)(v109, v199, v110);
      v191(v112, v111, v113);
      v114 = sub_26618C690();
      v205 = sub_26618CAB0();
      v115 = os_log_type_enabled(v114, v205);
      v117 = *(v0 + 176);
      v116 = *(v0 + 184);
      v208 = *(v0 + 168);
      if (v115)
      {
        v196 = v36;
        v201 = *(v0 + 232);
        v118 = *(v0 + 152);
        v119 = *(v0 + 160);
        v193 = *(v0 + 208);
        v181 = v114;
        v121 = *(v0 + 128);
        v120 = *(v0 + 136);
        v189 = *(v0 + 216);
        v122 = swift_slowAlloc();
        logb = swift_slowAlloc();
        v213 = logb;
        *v122 = 136315138;
        sub_26618B820();
        (*(v120 + 16))(v118, v119, v121);
        sub_2661458C0();
        v123 = OUTLINED_FUNCTION_14_9();
        v196(v123);
        v124 = v119;
        v36 = v196;
        (v107)(v124, v121);
        v125 = OUTLINED_FUNCTION_12_1();
        v128 = sub_266103A98(v125, v126, v127);

        *(v122 + 4) = v128;
        _os_log_impl(&dword_2660B7000, v181, v205, "LaunchAppConfirmationStrategy.parseConfirmationResponse missing required userDialogActs from parse: %s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(logb);
        MEMORY[0x26677CC30](logb, -1, -1);
        MEMORY[0x26677CC30](v122, -1, -1);

        v129 = v193;
        v130 = v201;
      }

      else
      {

        v135 = OUTLINED_FUNCTION_14_9();
        v36(v135);
        v130 = OUTLINED_FUNCTION_12_1();
      }

      v212(v130, v129);
      v136 = *(v0 + 200);
      v137 = *(v0 + 168);
      sub_2660D3004();
      v138 = OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_16_8(v138, v139);
      (v36)(v136, v137);
      goto LABEL_35;
    }

    v131 = *(v0 + 120);
    (*(*(v0 + 112) + 32))(v131, *(v0 + 96), *(v0 + 104));
    if (sub_26618B920())
    {
      v132 = OUTLINED_FUNCTION_6_10();
      v133(v132);
      (v36)(v103, v104);
      v134 = MEMORY[0x277D5BED8];
    }

    else
    {
      v131 = *(v0 + 120);
      if ((sub_26618B930() & 1) == 0)
      {
        v197 = v36;
        (v203)(*(v0 + 240), v199, *(v0 + 208));
        v142 = sub_26618C690();
        v143 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_15_2(v143))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_14_0(&dword_2660B7000, v144, v145, "LaunchAppConfirmationStrategy.parseConfirmationResponse unexpected UDA");
          OUTLINED_FUNCTION_28_3();
        }

        v146 = *(v0 + 240);
        v147 = *(v0 + 208);
        v148 = *(v0 + 216);
        v209 = *(v0 + 200);
        v149 = *(v0 + 168);
        v150 = *(v0 + 176);
        v151 = *(v0 + 112);
        v152 = *(v0 + 120);
        v153 = *(v0 + 104);

        v154 = OUTLINED_FUNCTION_12_1();
        (v212)(v154);
        sub_2660D3004();
        v155 = OUTLINED_FUNCTION_31_5();
        OUTLINED_FUNCTION_16_8(v155, v156);
        (*(v151 + 8))(v152, v153);
        v197(v209, v149);
        goto LABEL_35;
      }

      v140 = OUTLINED_FUNCTION_6_10();
      v141(v140);
      (v36)(v103, v104);
      v134 = MEMORY[0x277D5BED0];
    }

    (*(v105 + 104))(v131, *v134, v101);
    goto LABEL_55;
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  (*(*(v0 + 296) + 96))(*(v0 + 304), *(v0 + 288));
  v12 = *(v11 + 32);
  v13 = OUTLINED_FUNCTION_19_7();
  v14(v13);
  if (sub_26618B7D0() == 0xD00000000000002ELL && 0x8000000266198300 == v15)
  {
  }

  else
  {
    v17 = sub_26618D000();

    if ((v17 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v49 = *(v0 + 280);
  v50 = sub_26618B7E0();
  if (!v50)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_28;
  }

  sub_266158220(0xD000000000000011, 0x8000000266198330, v50, (v0 + 16));

  if (!*(v0 + 40))
  {
LABEL_28:
    sub_2660C8040(v0 + 16, &qword_28005C0A8, qword_26618FAE0);
LABEL_29:
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v74 = *(v0 + 256);
    v75 = *(v0 + 216);
    __swift_project_value_buffer(*(v0 + 208), qword_2814B4A98);
    v76 = OUTLINED_FUNCTION_8_3();
    v77(v76);
    v66 = sub_26618C690();
    v78 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v78))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v79, v80, "LaunchAppConfirmationStrategy.parseConfirmationResponse received misformatted directInvocation");
      OUTLINED_FUNCTION_28_3();
    }

    v71 = *(v0 + 272);
    v70 = *(v0 + 280);
    v73 = *(v0 + 256);
    v72 = *(v0 + 264);
LABEL_34:
    v81 = *(v0 + 208);
    v82 = *(v0 + 216);

    (*(v82 + 8))(v73, v81);
    sub_2660D3004();
    v83 = OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_16_8(v83, v84);
    (*(v71 + 8))(v70, v72);
LABEL_35:
    v86 = *(v0 + 328);
    v85 = *(v0 + 336);
    v87 = *(v0 + 304);
    v88 = *(v0 + 280);
    v89 = *(v0 + 248);
    v90 = *(v0 + 256);
    v92 = *(v0 + 232);
    v91 = *(v0 + 240);
    v93 = *(v0 + 224);
    v94 = *(v0 + 200);
    v180 = *(v0 + 192);
    loga = *(v0 + 184);
    v188 = *(v0 + 160);
    v192 = *(v0 + 152);
    v195 = *(v0 + 144);
    v200 = *(v0 + 120);
    v204 = *(v0 + 96);
    v207 = *(v0 + 88);

    OUTLINED_FUNCTION_5_3();
    goto LABEL_36;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  v51 = *(v0 + 48);
  v52 = *(v0 + 56);
  v53 = sub_26617C1B4();
  if (v53 == 2)
  {
    goto LABEL_29;
  }

  v55 = *(v0 + 272);
  v54 = *(v0 + 280);
  v56 = *(v0 + 264);
  if (v53)
  {
    v57 = sub_26618D000();

    v58 = *(v55 + 8);
    v59 = OUTLINED_FUNCTION_11_0();
    v60(v59);
    v61 = MEMORY[0x277D5BED0];
    if (v57)
    {
      v61 = MEMORY[0x277D5BED8];
    }
  }

  else
  {

    v157 = *(v55 + 8);
    v158 = OUTLINED_FUNCTION_11_0();
    v159(v158);
    v61 = MEMORY[0x277D5BED8];
  }

  v160 = *(v0 + 336);
  v161 = *(v0 + 320);
  (*(v161 + 104))(*(v0 + 328), *v61, *(v0 + 312));
  v162 = *(v161 + 32);
  v163 = OUTLINED_FUNCTION_11_0();
  v164(v163);
LABEL_55:
  v165 = *(v0 + 336);
  v166 = *(v0 + 312);
  v167 = *(v0 + 320);
  v168 = *(v0 + 304);
  v169 = *(v0 + 280);
  v173 = *(v0 + 256);
  v175 = *(v0 + 248);
  bufa = *(v0 + 240);
  v179 = *(v0 + 232);
  v182 = *(v0 + 224);
  logc = *(v0 + 200);
  v190 = *(v0 + 192);
  v194 = *(v0 + 184);
  v198 = *(v0 + 160);
  v202 = *(v0 + 152);
  v206 = *(v0 + 144);
  v210 = *(v0 + 120);
  v170 = *(v0 + 88);
  v171 = *(v0 + 80);
  v172 = *(v0 + 64);
  (*(v167 + 16))(v170, v165, v166);
  __swift_storeEnumTagSinglePayload(v170, 0, 1, v166);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  sub_26618B5F0();
  type metadata accessor for LaunchAppIntent();
  OUTLINED_FUNCTION_19_7();
  sub_26618B510();
  (*(v167 + 8))(v165, v166);

  OUTLINED_FUNCTION_5_3();
LABEL_36:

  return v95();
}

uint64_t sub_266113F50()
{
  OUTLINED_FUNCTION_18();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[25] = OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(0);
  OUTLINED_FUNCTION_3_0(v7);
  v9 = *(v8 + 64);
  v1[26] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618AB50();
  v1[27] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[28] = v11;
  v13 = *(v12 + 64);
  v1[29] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 64);
  v1[30] = OUTLINED_FUNCTION_8_2();
  v17 = sub_26618B6A0();
  v1[31] = v17;
  OUTLINED_FUNCTION_0_4(v17);
  v1[32] = v18;
  v20 = *(v19 + 64);
  v1[33] = OUTLINED_FUNCTION_8_2();
  v21 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_2661140B0()
{
  v1 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C8, &unk_266191AB0);
  v2 = sub_26618B5F0();
  v3 = [v2 application];
  v0[34] = v3;

  if (v3)
  {
    v0[35] = sub_2660C9D24(v3);
    v0[36] = v4;
    if (v4)
    {
      v0[37] = sub_2660C9D30(v3);
      v0[38] = v5;
      if (v5)
      {
        v6 = v0[24];

        v7 = swift_task_alloc();
        v0[39] = v7;
        *v7 = v0;
        v7[1] = sub_266114268;

        return sub_2660C2880();
      }
    }
  }

  sub_2660D3004();
  OUTLINED_FUNCTION_31_5();
  *v9 = 0;
  swift_willThrow();
  v10 = v0[33];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[25];
  v13 = v0[26];

  OUTLINED_FUNCTION_5_3();

  return v15();
}

uint64_t sub_266114268()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 312);
  *v4 = *v1;
  v3[40] = v7;
  v3[41] = v0;

  if (v0)
  {
    v8 = sub_2661149F0;
  }

  else
  {
    v9 = v3[36];

    v8 = sub_266114374;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_266114374()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v52 = *(v0 + 288);
  v53 = *(v0 + 328);
  v3 = *(v0 + 264);
  v48 = v2;
  v49 = *(v0 + 272);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  v47 = *(v0 + 216);
  v7 = *(v0 + 200);
  v50 = *(v0 + 208);
  v51 = *(v0 + 280);
  sub_26618B1C0();
  sub_26618B620();

  MEMORY[0x26677BCF0](v2, v1);
  MEMORY[0x26677BCF0](47, 0xE100000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26618E190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E190;
  *(v0 + 160) = 0xD000000000000011;
  *(v0 + 168) = 0x8000000266198330;
  v10 = MEMORY[0x277D837D0];
  sub_26618CD20();
  *(inited + 96) = v10;
  *(inited + 72) = 0x6D7269666E6F63;
  *(inited + 80) = 0xE700000000000000;
  sub_26618C850();
  v11 = sub_26618AB80();
  v12 = MEMORY[0x277D63778];
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  __swift_allocate_boxed_opaque_existential_0((v8 + 32));
  sub_26618AB70();

  sub_26618AB60();
  v13 = sub_2661247D4(v49);
  v15 = v14;
  (*(v6 + 16))(v7, v4, v47);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v47);
  sub_26616694C(v51, v52, v48, v1, v13, v15, 0xD000000000000024, 0x8000000266199480, v7, v45, 1, 2, v46, v47, 0x8000000266199480, 0xD000000000000024, v48, v49, v50, v51, v52);
  if (v53)
  {
    v16 = *(v0 + 320);
    v17 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 216);

    (*(v21 + 8))(v20, v22);
    v23 = *(v19 + 8);
    v24 = OUTLINED_FUNCTION_11_0();
    v25(v24);
    v26 = *(v0 + 264);
    v27 = *(v0 + 232);
    v28 = *(v0 + 240);
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);

    OUTLINED_FUNCTION_5_3();

    return v31();
  }

  else
  {
    v33 = *(v0 + 320);
    v34 = *(v0 + 208);
    v35 = *(v0 + 192);
    v36 = v35[5];
    v37 = v35[6];
    __swift_project_boxed_opaque_existential_1(v35 + 2, v36);
    *(v0 + 144) = type metadata accessor for AppLaunchDataModels(0);
    *(v0 + 152) = sub_266112158();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 120));
    sub_266115654(v34, boxed_opaque_existential_0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v39 = swift_allocObject();
    *(v0 + 336) = v39;
    *(v39 + 16) = xmmword_26618F7E0;
    *(v39 + 32) = v33;
    v40 = *(MEMORY[0x277D5BE38] + 4);
    v41 = v33;
    v42 = swift_task_alloc();
    *(v0 + 344) = v42;
    *v42 = v0;
    v42[1] = sub_2661147F8;
    v43 = *(v0 + 264);
    v44 = *(v0 + 176);

    return MEMORY[0x2821BB468](v44, v0 + 120, v39, v43, v36, v37);
  }
}

uint64_t sub_2661147F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 336);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 120));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2661148F8()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 208);
  v15 = *(v0 + 200);

  sub_2661156B8(v9);
  (*(v8 + 8))(v6, v7);
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_11_0();
  v12(v11);

  OUTLINED_FUNCTION_5_3();

  return v13();
}

uint64_t sub_2661149F0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);

  swift_bridgeObjectRelease_n();
  v3 = *(v0 + 328);
  v4 = *(v0 + 264);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);

  OUTLINED_FUNCTION_5_3();

  return v9();
}

uint64_t sub_266114AAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  sub_26618B650();
  sub_26618B680();
  sub_2661484FC();
  v4 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_266114B74()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[5] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_8_2();
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_266114C70;

  return sub_2660C452C();
}

uint64_t sub_266114C70(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;

  if (v1)
  {
    v11 = v5[7];
    v12 = v5[4];

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    v5[9] = a1;

    return MEMORY[0x2822009F8](sub_266114DBC, 0, 0);
  }
}

uint64_t sub_266114DBC()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  sub_26618B1D0();
  sub_26618B620();
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = xmmword_26618F7E0;
  *(v7 + 32) = v1;
  v8 = *(MEMORY[0x277D5BE58] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_266114F00;
  v11 = v0[7];
  v12 = v0[2];

  return MEMORY[0x2821BB488](v12, v7, v11, v5, v6);
}

uint64_t sub_266114F00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266115000()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_11_0();
  v7(v6);

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_2661150BC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2660D3208(v0 + 56);
  sub_2660D31B4(v0 + 96);
  return v0;
}

uint64_t sub_2661150EC()
{
  sub_2661150BC();

  return MEMORY[0x2821FE8D8](v0, 185, 7);
}

uint64_t sub_266115144()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_266112F1C();
}

uint64_t sub_2661151F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D2E00;

  return sub_266113F50();
}

uint64_t sub_2661152A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B430] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9D08](a1, a2, v10, a4);
}

uint64_t sub_266115364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B438] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9D10](a1, a2, v10, a4);
}

uint64_t sub_266115428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B440] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return MEMORY[0x2821B9D18](a1, a2, v10, a4);
}

uint64_t sub_2661154EC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_266114B74();
}

uint64_t sub_266115588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B428] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for LaunchAppConfirmationStrategy();
  *v11 = v5;
  v11[1] = sub_2660D3260;

  return MEMORY[0x2821B9D00](a1, a2, a3, v12, a5);
}