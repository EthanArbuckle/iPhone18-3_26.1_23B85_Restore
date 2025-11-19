uint64_t sub_267D1090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[173] = a7;
  v7[172] = a6;
  v7[171] = a5;
  v7[170] = a4;
  return MEMORY[0x2822009F8](sub_267D10938, 0, 0);
}

uint64_t sub_267D10938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_12();
  v11 = *(v10 + 1360);
  type metadata accessor for INSendMessageIntentResponseCode(0);
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v10 + 16, v10 + 1352, sub_267D10A00, v10 + 1296, v12, v13, v14, v15, a9, a10);
}

uint64_t sub_267D10A00()
{
  *(v1 + 1392) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_7(sub_267D1113C);
  }

  else
  {
    return OUTLINED_FUNCTION_2_7(sub_267D10A2C);
  }
}

uint64_t sub_267D10A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v19;
  v22 = v19[169];
  if (v22 == 1 || *MEMORY[0x277CD4560] != v22)
  {
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x282200930](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v23 = v19[173];
    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);
    sub_267B9AFEC(v23, (v19 + 162));
    v25 = sub_267EF89F8();
    v26 = sub_267EF95D8();
    if (os_log_type_enabled(v25, v26))
    {
      v18 = OUTLINED_FUNCTION_48();
      v27 = swift_slowAlloc();
      a9 = v27;
      *v18 = 136315138;
      v28 = v19[166];
      __swift_project_boxed_opaque_existential_0(v19 + 162, v19[165]);
      v29 = *(v28 + 360);
      v30 = OUTLINED_FUNCTION_4_1();
      v19[167] = v31(v30);
      v19[168] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v33 = sub_267EF9098();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(v19 + 162);
      v36 = sub_267BA33E8(v33, v35, &a9);

      *(v18 + 4) = v36;
      OUTLINED_FUNCTION_47_11(&dword_267B93000, v37, v38, "#LocationAccessCheckStrategy App:%s has not requested location access before.");
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v19 + 162);
    }

    OUTLINED_FUNCTION_42_12();
    sub_267D1353C();
    v47 = OUTLINED_FUNCTION_61_1();
    *v48 = 2;
    (v18)(v47, 0);

    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_36_0();

    return MEMORY[0x282200920](v49, v50, v51, v52);
  }
}

uint64_t sub_267D10C78()
{
  *(v1 + 1400) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_7(sub_267D112A8);
  }

  else
  {
    return OUTLINED_FUNCTION_2_7(sub_267D10CA4);
  }
}

uint64_t sub_267D10CA4()
{
  OUTLINED_FUNCTION_56();
  if (*(v1 + 1416) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36_11(v4))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v5, v6, "#LocationAccessCheckStrategy sharing is supported");
      OUTLINED_FUNCTION_26();
    }

    v7 = *(v1 + 1376);
    v8 = *(v1 + 1368);

    v8(0, 0);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36_11(v11))
    {
      v0 = OUTLINED_FUNCTION_32();
      *v0 = 0;
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v12, v13, "#LocationAccessCheckStrategy Siri doesn't have access to precise location.");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_42_12();

    sub_267D1353C();
    v14 = OUTLINED_FUNCTION_61_1();
    *v15 = 0;
    (v0)(v14, 0);
  }

  return MEMORY[0x282200920](v1 + 656, v1 + 1416, sub_267D110E0, v1 + 1296);
}

uint64_t sub_267D10E40()
{
  *(v1 + 1408) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_2_7(sub_267D11414);
  }

  else
  {
    return OUTLINED_FUNCTION_2_7(sub_267D10E6C);
  }
}

uint64_t sub_267D10E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v19;
  if (*(v19 + 1416) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v22 = *(v19 + 1384);
    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    sub_267B9AFEC(v22, v19 + 1296);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();
    if (os_log_type_enabled(v24, v25))
    {
      v18 = OUTLINED_FUNCTION_48();
      v26 = swift_slowAlloc();
      a9 = v26;
      *v18 = 136315138;
      v27 = *(v19 + 1328);
      __swift_project_boxed_opaque_existential_0((v19 + 1296), *(v19 + 1320));
      v28 = *(v27 + 360);
      v29 = OUTLINED_FUNCTION_4_1();
      *(v19 + 1336) = v30(v29);
      *(v19 + 1344) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v32 = sub_267EF9098();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0((v19 + 1296));
      v35 = sub_267BA33E8(v32, v34, &a9);

      *(v18 + 4) = v35;
      OUTLINED_FUNCTION_47_11(&dword_267B93000, v36, v37, "#LocationAccessCheckStrategy App:%s doesn't have access to precise location.");
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v19 + 1296));
    }

    OUTLINED_FUNCTION_42_12();
    sub_267D1353C();
    v43 = OUTLINED_FUNCTION_61_1();
    v45 = v43;
    v46 = 1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36_11(v40))
    {
      v18 = OUTLINED_FUNCTION_32();
      *v18 = 0;
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v41, v42, "#LocationAccessCheckStrategy Both Siri and App doesn't have access to precise location.");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_42_12();

    sub_267D1353C();
    v43 = OUTLINED_FUNCTION_61_1();
    v45 = v43;
    v46 = 3;
  }

  *v44 = v46;
  (v18)(v43, 0);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_36_0();

  return MEMORY[0x282200920](v47, v48, v49, v50);
}

uint64_t sub_267D1113C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v22;
  a20 = v23;
  a18 = v20;
  v24 = *(v20 + 1392);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = v24;
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_5_4();
    a10 = v29;
    OUTLINED_FUNCTION_33_8(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a10);

    *(v21 + 4) = v32;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v33, v34, "#LocationAccessCheckStrategy Error while checking location access for Siri / app: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  OUTLINED_FUNCTION_37_8();
  v28(v24, 1);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200920](v35, v36, v37, v38);
}

uint64_t sub_267D112A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v22;
  a20 = v23;
  a18 = v20;
  v24 = *(v20 + 1400);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = v24;
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_5_4();
    a10 = v29;
    OUTLINED_FUNCTION_33_8(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a10);

    *(v21 + 4) = v32;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v33, v34, "#LocationAccessCheckStrategy Error while checking location access for Siri / app: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  OUTLINED_FUNCTION_37_8();
  v28(v24, 1);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200920](v35, v36, v37, v38);
}

uint64_t sub_267D11414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v22;
  a20 = v23;
  a18 = v20;
  v24 = *(v20 + 1408);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = v24;
  v27 = sub_267EF89F8();
  v28 = sub_267EF95E8();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_5_4();
    a10 = v29;
    OUTLINED_FUNCTION_33_8(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a10);

    *(v21 + 4) = v32;
    OUTLINED_FUNCTION_22_1(&dword_267B93000, v33, v34, "#LocationAccessCheckStrategy Error while checking location access for Siri / app: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  OUTLINED_FUNCTION_37_8();
  v28(v24, 1);

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200920](v35, v36, v37, v38);
}

uint64_t sub_267D11580(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_267D11614;

  return sub_267D125E8();
}

uint64_t sub_267D11614()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    v13 = OUTLINED_FUNCTION_41_10();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_267D11750(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_267D117E4;

  return sub_267D1206C();
}

uint64_t sub_267D117E4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    v13 = OUTLINED_FUNCTION_41_10();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_267D11924(void *a1, void (*a2)(id *), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_267EF7C38();
  sub_267EF7C08();
  v22[0] = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (swift_dynamicCast())
  {
    switch(v24)
    {
      case 1:
        OUTLINED_FUNCTION_62_0();
        v21 = swift_allocObject();
        OUTLINED_FUNCTION_20_10(v21);

        v12 = &unk_267F03E70;
        break;
      case 2:
        OUTLINED_FUNCTION_62_0();
        v19 = swift_allocObject();
        OUTLINED_FUNCTION_20_10(v19);

        v12 = &unk_267F03E80;
        break;
      case 3:
        OUTLINED_FUNCTION_62_0();
        v20 = swift_allocObject();
        OUTLINED_FUNCTION_20_10(v20);

        v12 = &unk_267F03E60;
        break;
      case 4:
      case 5:
      case 6:
      case 7:

        v10 = *(v4 + 96);
        swift_retain_n();
        v12 = &unk_267F03E48;
        break;
      default:
        v10 = *(v4 + 96);
        swift_retain_n();

        v12 = &unk_267F03E90;
        break;
    }

    v13 = v12;
    v14 = sub_267EF93F8();
    OUTLINED_FUNCTION_46_11(v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = v13;
    v15[7] = v10;

    OUTLINED_FUNCTION_40_11();
    sub_267E8FA18();
  }

  else
  {

    sub_267C266B0();
    v17 = OUTLINED_FUNCTION_61_1();
    *v18 = 0xD00000000000002BLL;
    v18[1] = 0x8000000267F17330;
    v22[0] = v17;
    v23 = 1;
    a2(v22);

    return sub_267B9FF34(v22, &unk_28022A480, &unk_267F029F0);
  }
}

uint64_t sub_267D11C4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CBA544;

  return sub_267DF756C();
}

uint64_t sub_267D11CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267D11D0C, 0, 0);
}

uint64_t sub_267D11D0C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*(v0 + 24) + 96);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_26_15(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_25_6(v3);

  return sub_267DF8800();
}

uint64_t sub_267D11D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267D11DB8, 0, 0);
}

uint64_t sub_267D11DB8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*(v0 + 24) + 96);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_26_15(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_25_6(v3);

  return sub_267DF7DFC();
}

uint64_t sub_267D11E40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_267D11F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267D11F48, 0, 0);
}

uint64_t sub_267D11F48()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*(v0 + 24) + 96);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_26_15(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_25_6(v3);

  return sub_267DF7A28();
}

uint64_t sub_267D11FD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CB92C0;

  return sub_267DF82A4();
}

uint64_t sub_267D12084()
{
  v1 = *(v0 + 32);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_267D121AC;

  return v8(v2, v3);
}

uint64_t sub_267D121AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  v2[6] = v6;
  v2[7] = v7;
  v2[8] = v0;

  if (v0)
  {
    v8 = sub_267D12470;
  }

  else
  {
    v8 = sub_267D122B8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267D122B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v18[6];
    v25 = v18[7];
    v26 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v26 = 136315394;
    v18[2] = v24;
    type metadata accessor for AFLocationAuthorizationStyle(0);
    v27 = sub_267EF9098();
    v29 = sub_267BA33E8(v27, v28, &a9);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v18[3] = v25;
    type metadata accessor for CLAccuracyAuthorization(0);
    v30 = sub_267EF9098();
    v32 = sub_267BA33E8(v30, v31, &a9);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_267B93000, v22, v23, "#LocationAccessCheckStrategy locationService returned authorization style %s and accuracy %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_32_0();
  }

  if ((v18[6] - 3) < 2)
  {
    v33 = v18[7] == 0;
  }

  v34 = v18[1];
  OUTLINED_FUNCTION_36_0();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_267D12470()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 64);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#LocationAccessCheckStrategy locationService returned error %@", v8, 0xCu);
    sub_267B9FF34(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_267D125E8()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_267EF89E8();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D126DC, 0, 0);
}

uint64_t sub_267D126DC()
{
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = qword_280240FC8;
  v0[7] = qword_280240FC8;
  v5 = v4;
  sub_267EF89C8();
  sub_267EF9698();
  OUTLINED_FUNCTION_24_11();
  sub_267EF89B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267EFCA40;
  v7 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  sub_267E7605C(0x353535383034312BLL, 0xEC00000033323130, 2);
  v8 = sub_267EF2A58();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  v9 = objc_allocWithZone(MEMORY[0x277CD3E90]);
  OUTLINED_FUNCTION_30_15();
  *(v6 + 32) = sub_267C7BD3C(v10, v11, v12, v13, v14, v15, v16, v17, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267EFCA40;
  *(v18 + 32) = [objc_opt_self() attachmentWithCurrentLocation];
  v19 = objc_allocWithZone(MEMORY[0x277CD4078]);
  OUTLINED_FUNCTION_30_15();
  v28 = sub_267E8F82C(v20, v21, v22, v23, v24, v25, v26, v27, 0, 0, v18);
  v0[8] = v28;
  v29 = v28;
  v30 = sub_267EF8FF8();
  [v29 _setLaunchId_];

  v31 = [objc_allocWithZone(MEMORY[0x277D473A8]) init];
  v0[9] = v31;
  sub_267BA9F38(0, &qword_28022BCC0, 0x277D47418);
  v32 = sub_267EF9788();
  [v31 setIntent_];

  v33 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
  v34 = *(MEMORY[0x277D5BFB8] + 4);
  v35 = swift_task_alloc();
  v0[10] = v35;
  sub_267BA9F38(0, &qword_28022AD38, 0x277D473B0);
  *v35 = v0;
  v35[1] = sub_267D12A24;

  return MEMORY[0x2821BB6A0](v31);
}

uint64_t sub_267D12A24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;
  *(v2 + 96) = v0;

  if (v0)
  {
    v7 = sub_267D12FBC;
  }

  else
  {
    v7 = sub_267D12B2C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267D12B2C()
{
  v1 = [*(v0 + 88) intentResponse];
  if (v1)
  {
    v2 = v1;
    sub_267BB41B0(v1);
    if (v3)
    {
      v4 = sub_267EF8FF8();
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_267D13160(v2);
    if (v6 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v8 = v5;
      v9 = v6;
      v7 = sub_267EF2BB8();
      sub_267BBE0C8(v8, v9);
    }

    v10 = INIntentResponseCreate();

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v13 = sub_267EF8A08();
        __swift_project_value_buffer(v13, qword_280240FB0);
        v14 = v10;
        v15 = sub_267EF89F8();
        v16 = sub_267EF95D8();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = OUTLINED_FUNCTION_48();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          *(v17 + 4) = v12;
          *v18 = v12;
          v19 = v14;
          _os_log_impl(&dword_267B93000, v15, v16, "#LocationAccessCheckStrategy Received intentResponse to check app location authorization: %@", v17, 0xCu);
          sub_267B9FF34(v18, &unk_280229E30, &unk_267EFC270);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        v20 = *(v0 + 88);
        v21 = *(v0 + 64);
        v22 = *(v0 + 72);
        v23 = *(v0 + 48);
        v24 = *(v0 + 40);
        v47 = *(v0 + 56);
        v48 = *(v0 + 32);
        v49 = *(v0 + 24);

        v25 = [v12 code];
        sub_267EF9688();
        sub_267EF89B8();
        (*(v24 + 8))(v23, v48);

        v26 = *(v0 + 8);

        return v26(v25);
      }
    }

    else
    {
      v10 = v2;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = *(v0 + 88);
  v29 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
  v30 = v28;
  v31 = sub_267EF89F8();
  v32 = sub_267EF95E8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 88);
    v34 = OUTLINED_FUNCTION_48();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v33;
    *v35 = v33;
    v36 = v33;
    _os_log_impl(&dword_267B93000, v31, v32, "#LocationAccessCheckStrategy Invalid ConfirmIntentCompleted received: %@", v34, 0xCu);
    sub_267B9FF34(v35, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  v37 = *(v0 + 88);
  v39 = *(v0 + 64);
  v38 = *(v0 + 72);

  sub_267C266B0();
  OUTLINED_FUNCTION_61_1();
  *v40 = 0xD00000000000001ELL;
  v40[1] = 0x8000000267F17310;
  swift_willThrow();

  v42 = *(v0 + 48);
  v41 = *(v0 + 56);
  v43 = *(v0 + 32);
  v44 = *(v0 + 40);
  v45 = *(v0 + 24);
  sub_267EF9688();
  OUTLINED_FUNCTION_24_11();
  sub_267EF89B8();
  (*(v44 + 8))(v42, v43);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_267D12FBC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 96);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  sub_267EF9688();
  OUTLINED_FUNCTION_24_11();
  sub_267EF89B8();
  (*(v6 + 8))(v4, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t *sub_267D13088()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v0;
}

uint64_t sub_267D130C0()
{
  sub_267D13088();

  return swift_deallocClassInstance();
}

uint64_t sub_267D13160(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF2BE8();

  return v3;
}

uint64_t sub_267D131C4()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11(v1);

  return sub_267D11FD0();
}

uint64_t sub_267D1324C()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_11(v8);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_36_0();

  return sub_267E9089C();
}

uint64_t sub_267D132EC()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return sub_267D11F24(v6, v2, v1);
}

uint64_t sub_267D13384()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return sub_267D11D94(v6, v2, v1);
}

uint64_t sub_267D1341C()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return sub_267D11CE8(v6, v2, v1);
}

uint64_t sub_267D134B4()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11(v1);

  return sub_267D11C4C();
}

unint64_t sub_267D1353C()
{
  result = qword_28022AD40;
  if (!qword_28022AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD40);
  }

  return result;
}

uint64_t sub_267D13590()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12_2(v6);
  *v7 = v8;
  v7[1] = sub_267CBA544;
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_36_0();

  return sub_267D1090C(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267D13638()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_267D11580(v3);
}

uint64_t sub_267D136C0()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return sub_267D11750(v3);
}

uint64_t sub_267D1374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v15;
  v8[12] = v16;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = sub_267EF4228();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v12 = *(v11 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D13880, 0, 0);
}

uint64_t sub_267D13880()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  sub_267EF90F8();
  sub_267EF79B8();
  v5 = 1;
  OUTLINED_FUNCTION_1_38(v1, 0);
  if (v2)
  {
    v6 = v0[15];
    v7 = v0[6];
    v8 = v0[7];
    sub_267EF90F8();
    v5 = 0;
  }

  v9 = v0[9];
  v10 = 1;
  OUTLINED_FUNCTION_1_38(v0[15], v5);
  if (v9)
  {
    v11 = v0[14];
    v12 = v0[8];
    v13 = v0[9];
    sub_267EF90F8();
    v10 = 0;
  }

  v14 = v0[11];
  v15 = 1;
  OUTLINED_FUNCTION_1_38(v0[14], v10);
  if (v14)
  {
    v16 = v0[13];
    v17 = v0[10];
    v18 = v0[11];
    sub_267EF90F8();
    v15 = 0;
  }

  v19 = v0[5];
  OUTLINED_FUNCTION_1_38(v0[13], v15);
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_267D139E4;
  v21 = v0[19];
  v23 = v0[15];
  v22 = v0[16];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];

  return sub_267CEA24C();
}

uint64_t sub_267D139E4()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 168) = v0;

  sub_267BBD6F0(v6);
  sub_267BBD6F0(v5);
  sub_267BBD6F0(v4);
  sub_267BBD6F0(v3);
  if (v0)
  {
    v7 = sub_267D13F28;
  }

  else
  {
    v7 = sub_267D13B78;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267D13B78()
{
  v70 = v0;
  v1 = v0[19];
  v0[2] = sub_267EF41F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  v2 = sub_267EF8FC8();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  else
  {

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = v0[11];
    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);

    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    if (v13)
    {
      v63 = v0[10];
      v64 = v0[11];
      v61 = v0[8];
      v62 = v0[9];
      v55 = v0[7];
      v58 = v0[6];
      v67 = v0[17];
      v68 = v0[19];
      v17 = v0[4];
      v18 = v0[5];
      v19 = v0[3];
      v65 = v12;
      v20 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69 = v66;
      *v20 = 136316162;
      *(v20 + 4) = sub_267BA33E8(v19, v17, &v69);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v18;
      *(v20 + 22) = 2080;

      v29 = OUTLINED_FUNCTION_0_26(v21, v22, v23, v24, v25, v26, v27, v28, v55, v58);

      *(v20 + 24) = v29;
      *(v20 + 32) = 2080;

      v38 = OUTLINED_FUNCTION_0_26(v30, v31, v32, v33, v34, v35, v36, v37, v56, v59);

      *(v20 + 34) = v38;
      *(v20 + 42) = 2080;

      v47 = OUTLINED_FUNCTION_0_26(v39, v40, v41, v42, v43, v44, v45, v46, v57, v60);

      *(v20 + 44) = v47;
      _os_log_impl(&dword_267B93000, v11, v65, "#AdaptiveImageGlyphUtils failed to produce a description for %s glyph with count: %ld and descriptions %s, %s, %s", v20, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v66, -1, -1);
      MEMORY[0x26D60A7B0](v20, -1, -1);

      (*(v15 + 8))(v68, v67);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v2 = 0;
    v4 = 0;
  }

  v48 = v0[19];
  v50 = v0[15];
  v49 = v0[16];
  v52 = v0[13];
  v51 = v0[14];

  v53 = v0[1];

  return v53(v2, v4);
}

uint64_t sub_267D13F28()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];

  v6 = v0[1];
  v7 = v0[21];

  return v6();
}

uint64_t sub_267D13FC8()
{
  OUTLINED_FUNCTION_102();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_267BA9F38(0, &unk_28022AF60, 0x277D23800);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9F98C(v7, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D140CC()
{
  OUTLINED_FUNCTION_102();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9F98C(v7, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D141C8(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

void sub_267D14244(void *a1)
{
  OUTLINED_FUNCTION_102();
  v2 = OUTLINED_FUNCTION_108();
  objc_setAssociatedObject(v2, v3, a1, 1);
  swift_endAccess();
}

uint64_t sub_267D142A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_267EF8FF8();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_102();
  v3 = OUTLINED_FUNCTION_66();
  objc_setAssociatedObject(v3, v4, v2, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267D14320(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = a1;
  v12 = sub_267EF89F8();
  v13 = sub_267EF95C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67240448;
    *(v14 + 4) = [v11 isRunning];

    *(v14 + 8) = 1026;
    *(v14 + 10) = a4 & 1;
    _os_log_impl(&dword_267B93000, v12, v13, "ShareThisFlow ScreenshotDelegate workflowRunnerClient was invoked, client.isRunning: %{BOOL,public}d cancelled: %{BOOL,public}d", v14, 0xEu);
    MEMORY[0x26D60A7B0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  if (a3)
  {
    v15 = v5 + OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback;
    v17 = *(v5 + OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback);
    v16 = *(v15 + 8);
    v18 = a3;
    v17(a3, 1);
  }

  else
  {
    v19 = *(v5 + OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback + 8);
    (*(v5 + OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback))(a2, 0);
  }
}

id sub_267D145E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_267D14658(char a1)
{
  if (!a1)
  {
    return 0x696C616974696E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6169566572616873;
}

uint64_t sub_267D146C8()
{
  v0 = sub_267EF9D38();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D1472C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D146C8();
  *a2 = result;
  return result;
}

uint64_t sub_267D1475C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267D14658(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_267D1479C(char a1)
{
  v2 = v1;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);

  oslog = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = 0xD000000000000010;
      }

      else
      {
        v8 = 0x6169566572616873;
      }

      if (a1 == 1)
      {
        v9 = 0x8000000267F10550;
      }

      else
      {
        v9 = 0xEF6567617373654DLL;
      }
    }

    else
    {
      v8 = 0x696C616974696E69;
      v9 = 0xEB0000000064657ALL;
    }

    v10 = sub_267BA33E8(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = 0xD000000000000010;
    v12 = 0x8000000267F10550;
    if (*(v2 + 464) != 1)
    {
      v11 = 0x6169566572616873;
      v12 = 0xEF6567617373654DLL;
    }

    if (*(v2 + 464))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x696C616974696E69;
    }

    if (*(v2 + 464))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xEB0000000064657ALL;
    }

    v15 = sub_267BA33E8(v13, v14, &v17);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_267B93000, oslog, v5, "#ShareThisFlow transitioned from state %s to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v7, -1, -1);
    MEMORY[0x26D60A7B0](v6, -1, -1);
  }
}

void sub_267D14A00(char a1)
{
  v2 = *(v1 + 464);
  *(v1 + 464) = a1;
  sub_267D1479C(v2);
}

void sub_267D14A60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF30, &qword_267EFF048);
  v0 = sub_267EF6288();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_267EFCE30;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D5EF28], v0);
  v6(v5 + v2, *MEMORY[0x277D5EF70], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D5EEF0], v0);
  sub_267E6EDB8();
  qword_280240AA8 = v7;
}

void sub_267D14B9C()
{
  OUTLINED_FUNCTION_48_0();
  v0 = sub_267EF4BA8();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = *(v3 + 16);
  v8 = OUTLINED_FUNCTION_19();
  v9(v8);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_52();
    v24 = v13;
    *v12 = 136315138;
    sub_267D2483C(&qword_28022AF50, MEMORY[0x277D5C118]);
    v14 = sub_267EF9E58();
    v16 = v15;
    v17 = *(v3 + 8);
    v18 = OUTLINED_FUNCTION_3();
    v19(v18);
    v20 = sub_267BA33E8(v14, v16, &v24);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_267B93000, v10, v11, "#ShareThisFlow.on input %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    v21 = *(v3 + 8);
    v22 = OUTLINED_FUNCTION_3();
    v23(v22);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267D14DAC()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_267EF4028();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v133 = v13 - v12;
  v130 = sub_267EF4C08();
  v14 = OUTLINED_FUNCTION_58(v130);
  v129 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v128 = v19 - v18;
  v126 = sub_267EF4BA8();
  v20 = OUTLINED_FUNCTION_58(v126);
  v124 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v122 = v25 - v24;
  v127 = sub_267EF37A8();
  v26 = OUTLINED_FUNCTION_58(v127);
  v125 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v123 = v31 - v30;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v32 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);

  v33 = sub_267EF89F8();
  v34 = sub_267EF95D8();

  if (os_log_type_enabled(v33, v34))
  {
    v131 = v9;
    v35 = v6;
    v36 = v5;
    v37 = v3;
    v38 = OUTLINED_FUNCTION_48();
    v39 = OUTLINED_FUNCTION_52();
    v139[0] = v39;
    *v38 = 136315138;
    v40 = 0x8000000267F10550;
    v41 = 0xD000000000000010;
    if (*(v1 + 464) != 1)
    {
      v41 = 0x6169566572616873;
      v40 = 0xEF6567617373654DLL;
    }

    if (*(v1 + 464))
    {
      v42 = v41;
    }

    else
    {
      v42 = 0x696C616974696E69;
    }

    if (*(v1 + 464))
    {
      v43 = v40;
    }

    else
    {
      v43 = 0xEB0000000064657ALL;
    }

    v44 = sub_267BA33E8(v42, v43, v139);

    *(v38 + 4) = v44;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();

    v3 = v37;
    v5 = v36;
    v6 = v35;
    v9 = v131;
  }

  else
  {
  }

  v50 = *(v1 + 192);
  OUTLINED_FUNCTION_48_15((v1 + 168), v50);
  OUTLINED_FUNCTION_23();
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_0_0();
  v58 = v57 - v56;
  (*(v52 + 16))(v57 - v56);
  v59 = OUTLINED_FUNCTION_19();
  v61 = sub_267E59398(v59, v60);
  (*(v52 + 8))(v58, v50);
  if (v61)
  {
    sub_267D239F0();
  }

  if (!*(v1 + 464))
  {
    sub_267D17188();
    if ((v66 & 1) == 0)
    {
      sub_267D14A00(2);
      v65 = v133;
      sub_267EF3FB8();
      goto LABEL_28;
    }

    v121 = v3;
    v67 = sub_267EF89F8();
    v68 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v68))
    {
      v69 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v69);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v67, v68, "#ShareThisFlow looking for ExpanseFlow..");
      OUTLINED_FUNCTION_26();
    }

    v132 = v9;
    v120 = v5;

    __swift_project_boxed_opaque_existential_0((v1 + 384), *(v1 + 408));
    v70 = *(v1 + 192);
    v71 = *(v1 + 200);
    OUTLINED_FUNCTION_48_15((v1 + 168), v70);
    OUTLINED_FUNCTION_23();
    v73 = v72;
    v75 = *(v74 + 64);
    MEMORY[0x28223BE20](v76);
    OUTLINED_FUNCTION_1_39();
    v77 = OUTLINED_FUNCTION_13_24(v73);
    v78(v77);
    (*(v71 + 8))(v70, v71);
    v79 = *(v73 + 8);
    v80 = OUTLINED_FUNCTION_108();
    v81(v80);
    sub_267EF4B88();
    (*(v124 + 8))(v122, v126);
    sub_267EF85F8();
    (*(v129 + 8))(v128, v130);
    v82 = sub_267EF3778();
    (*(v125 + 8))(v123, v127);
    v83 = v6;
    if (v82)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF40, &qword_267F042D8);
      sub_267EF33C8();

      v84 = v121;
      if (*(&v137 + 1))
      {
        sub_267B9A5E8(&v136, v139);
        sub_267B9AFEC(v139, &v136);
        v85 = sub_267EF89F8();
        v86 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v86))
        {
          v87 = OUTLINED_FUNCTION_48();
          v88 = OUTLINED_FUNCTION_52();
          v135 = v88;
          *v87 = 136315138;
          sub_267B9AFEC(&v136, &v134);
          v89 = sub_267EF9098();
          v91 = v90;
          __swift_destroy_boxed_opaque_existential_0(&v136);
          v92 = sub_267BA33E8(v89, v91, &v135);

          *(v87 + 4) = v92;
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
          OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_26();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v136);
        }

        v118 = v139[4];
        __swift_project_boxed_opaque_existential_0(v139, v139[3]);
        v119 = *(v118 + 8);

        sub_267EF3FC8();

        v120(v133);
        (*(v132 + 8))(v133, v83);
        __swift_destroy_boxed_opaque_existential_0(v139);
        goto LABEL_29;
      }
    }

    else
    {
      v138 = 0;
      v136 = 0u;
      v137 = 0u;
      v84 = v121;
    }

    sub_267B9F98C(&v136, &qword_28022AF38, &qword_267F042D0);
    v101 = *(v1 + 200);
    OUTLINED_FUNCTION_48_15((v1 + 168), *(v1 + 192));
    OUTLINED_FUNCTION_23();
    v103 = v102;
    v105 = *(v104 + 64);
    MEMORY[0x28223BE20](v106);
    OUTLINED_FUNCTION_1_39();
    (*(v103 + 16))(v82);
    v107 = *(v101 + 344);
    v108 = OUTLINED_FUNCTION_26_0();
    LOBYTE(v101) = v109(v108);
    v110 = *(v103 + 8);
    v111 = OUTLINED_FUNCTION_66();
    v112(v111);
    if (v101)
    {
      v113 = *(v1 + 56);
      v114 = *(v1 + 65);
      *(v1 + 56) = 1;
      v115 = *(v1 + 64);
      *(v1 + 64) = 0;
      sub_267D240BC(v113, v115, v114);
      OUTLINED_FUNCTION_94();
      v116 = swift_allocObject();
      v116[2] = v1;
      v116[3] = v120;
      v116[4] = v84;

      v117 = OUTLINED_FUNCTION_10_5();
      sub_267D21690(v117);
    }

    else
    {
      sub_267D14A00(2);
      sub_267EF3FB8();
      v120(v133);
      (*(v9 + 8))(v133, v6);
    }

    goto LABEL_29;
  }

  if (*(v1 + 464) == 1)
  {
    v62 = *(v1 + 56);
    v63 = *(v1 + 65);
    *(v1 + 56) = 2;
    v64 = *(v1 + 64);
    *(v1 + 64) = 0;
    sub_267D240BC(v62, v64, v63);
    v65 = v133;
    sub_267EF4018();
LABEL_28:
    v5(v65);
    v98 = *(v9 + 8);
    v99 = OUTLINED_FUNCTION_3();
    v100(v99);
    goto LABEL_29;
  }

  sub_267D15AF0();
LABEL_29:
  OUTLINED_FUNCTION_47();
}

void sub_267D157B8(uint64_t a1)
{
  v2 = sub_267EF8628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v27 = *(v3 + 16);
  v27(v9, a1, v2);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a1;
    v14 = v13;
    v24 = swift_slowAlloc();
    v28 = v24;
    *v14 = 136315138;
    sub_267D2483C(&qword_28022AF48, MEMORY[0x277D55D58]);
    v15 = sub_267EF9E58();
    v25 = v7;
    v17 = v16;
    (*(v3 + 8))(v9, v2);
    v18 = sub_267BA33E8(v15, v17, &v28);
    v7 = v25;

    *(v14 + 4) = v18;
    _os_log_impl(&dword_267B93000, v11, v12, "#ShareThisFlow ExpanseFlow returned result=%s", v14, 0xCu);
    v19 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D60A7B0](v19, -1, -1);
    v20 = v14;
    a1 = v26;
    MEMORY[0x26D60A7B0](v20, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  v27(v7, a1, v2);
  v21 = (*(v3 + 88))(v7, v2);
  if (v21 == *MEMORY[0x277D55D48])
  {
    v22 = 1;
LABEL_10:
    sub_267D14A00(v22);
    return;
  }

  if (v21 == *MEMORY[0x277D55D50])
  {
    v22 = 2;
    goto LABEL_10;
  }

  sub_267EF9E98();
  __break(1u);
}

void sub_267D15AF0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v92 = *v0;
  v6 = sub_267EF4028();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v18);
  v91 = &v90 - v19;
  v20 = v0[24];
  v21 = v0[25];
  OUTLINED_FUNCTION_48_15(v0 + 21, v20);
  OUTLINED_FUNCTION_23();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_39();
  (*(v23 + 16))(v0);
  LOBYTE(v21) = (*(v21 + 344))(v20, v21);
  (*(v23 + 8))(v0, v20);
  if ((v21 & 1) == 0)
  {
    v90 = v3;
    v32 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v33 = *(v32 + 8);
    v34 = OUTLINED_FUNCTION_61_2();
    v35(v34, v32);
    __swift_project_boxed_opaque_existential_0(v93, v94);
    v36 = sub_267DBF8D8();
    __swift_destroy_boxed_opaque_existential_0(v93);
    if ((v36 & 1) == 0)
    {
      OUTLINED_FUNCTION_81_6();
      v65 = OUTLINED_FUNCTION_61_1();
      *v66 = 0xD00000000000002BLL;
      v66[1] = v36;
      OUTLINED_FUNCTION_2_34(v65);
      sub_267EF4018();
      v5(v14);
      v67 = *(v9 + 8);
      v68 = OUTLINED_FUNCTION_95_0();
      v69(v68);
      goto LABEL_27;
    }

    v37 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v38 = *(v37 + 8);
    v39 = OUTLINED_FUNCTION_4_1();
    v40(v39);
    __swift_project_boxed_opaque_existential_0(v93, v94);
    OUTLINED_FUNCTION_4_1();
    if (sub_267EF3C48())
    {
      v42 = v1[24];
      v41 = v1[25];
      OUTLINED_FUNCTION_48_15(v1 + 21, v42);
      OUTLINED_FUNCTION_23();
      v44 = v43;
      v46 = *(v45 + 64);
      MEMORY[0x28223BE20](v47);
      OUTLINED_FUNCTION_0_0();
      (*(v44 + 16))(v49 - v48);
      LOBYTE(v41) = sub_267E59398(v42, v41);
      v50 = *(v44 + 8);
      v51 = OUTLINED_FUNCTION_95_0();
      v52(v51);
      __swift_destroy_boxed_opaque_existential_0(v93);
      if ((v41 & 1) == 0)
      {
        v53 = v90;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v54 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
        v55 = sub_267EF89F8();
        v56 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_5_2(v56))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_30_11();
          _os_log_impl(v57, v58, v59, v60, v61, 2u);
          OUTLINED_FUNCTION_18_2();
        }

        OUTLINED_FUNCTION_81_6();
        v62 = OUTLINED_FUNCTION_61_1();
        *v63 = 0xD000000000000029;
        v63[1] = v55;
        OUTLINED_FUNCTION_2_34(v62);
        OUTLINED_FUNCTION_94();
        v64 = swift_allocObject();
        v64[2] = v1;
        v64[3] = v5;
        v64[4] = v53;

        v31 = 0xD000000000000014;
        goto LABEL_3;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v93);
    }

    sub_267B9AFEC((v1 + 21), v93);
    v70 = v95;
    __swift_project_boxed_opaque_existential_0(v93, v94);
    v71 = *(v70 + 440);
    v72 = OUTLINED_FUNCTION_4_1();
    v74 = v73(v72);
    if (v74 == 17)
    {
      __swift_destroy_boxed_opaque_existential_0(v93);
      v75 = v90;
    }

    else
    {
      if (sub_267D6CFAC(v74) == 0x68736E6565726373 && v76 == 0xEA0000000000746FLL)
      {

        __swift_destroy_boxed_opaque_existential_0(v93);
        v75 = v90;
      }

      else
      {
        v78 = sub_267EF9EA8();

        __swift_destroy_boxed_opaque_existential_0(v93);
        v75 = v90;
        if ((v78 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      *(v1 + 208) = 1;
    }

LABEL_25:
    if (*(v1 + 208) == 1)
    {
      v79 = OUTLINED_FUNCTION_54_0();
      sub_267D22594(v79, v80);
      goto LABEL_27;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v81 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v81, qword_280240FB0);
    v82 = sub_267EF89F8();
    v83 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v83))
    {
      v84 = OUTLINED_FUNCTION_32();
      *v84 = 0;
      _os_log_impl(&dword_267B93000, v82, v83, "#ShareThisFlow fetching foregroundApp", v84, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v85 = sub_267EF93F8();
    OUTLINED_FUNCTION_79_5(v91, v86, v87, v85);
    v88 = swift_allocObject();
    v88[2] = 0;
    v88[3] = 0;
    v88[4] = v1;
    v88[5] = v5;
    v89 = v92;
    v88[6] = v75;
    v88[7] = v89;

    OUTLINED_FUNCTION_10_5();
    sub_267E8FA18();
    goto LABEL_4;
  }

  v27 = v0[7];
  v28 = *(v0 + 65);
  v0[7] = 1;
  v29 = *(v0 + 64);
  *(v0 + 32) = 0;
  sub_267D240BC(v27, v29, v28);
  OUTLINED_FUNCTION_94();
  v30 = swift_allocObject();
  v30[2] = v0;
  v30[3] = v5;
  v30[4] = v3;

  v31 = OUTLINED_FUNCTION_10_5();
LABEL_3:
  sub_267D21690(v31);
LABEL_4:

LABEL_27:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D16210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_267EF4028();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D1630C, 0, 0);
}

uint64_t sub_267D1630C()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_267D163C0;
  v2 = *(v0 + 96);

  return sub_267C901FC(sub_267D24784, v2);
}

uint64_t sub_267D163C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D164A8()
{
  v2 = *(v1 + 160);
  if (v2)
  {
    result = sub_267D245B4(v2);
    if (result)
    {
      v1 = result;
      v4 = sub_267BAF0DC(result);
      v5 = 0;
      v38 = v1 & 0xC000000000000001;
LABEL_4:
      if (v5 == v4)
      {

        v6 = 0;
        v0 = 0;
LABEL_22:
        v1 = v37;
        goto LABEL_24;
      }

      v6 = v1 & 0xC000000000000001;
      sub_267BBD0EC(v5, v38 == 0, v1);
      if (v38)
      {
        v7 = MEMORY[0x26D609870](v5, v1);
      }

      else
      {
        v7 = *(v1 + 32 + 8 * v5);
      }

      v8 = v7;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (qword_280228740 != -1)
      {
        swift_once();
      }

      v10 = qword_280240AA0;
      result = sub_267D24554(v8);
      if (v11)
      {
        v12 = v11;
        if (*(v10 + 16))
        {
          v13 = result;
          v14 = *(v10 + 40);
          sub_267EF9FC8();
          sub_267EF9128();
          v15 = sub_267EFA018();
          v0 = ~(-1 << *(v10 + 32));
          while (1)
          {
            v16 = v15 & v0;
            if (((*(v10 + 56 + (((v15 & v0) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v0)) & 1) == 0)
            {
              break;
            }

            v17 = (*(v10 + 48) + 16 * v16);
            if (*v17 != v13 || v12 != v17[1])
            {
              v19 = sub_267EF9EA8();
              v15 = v16 + 1;
              if ((v19 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_4;
          }
        }

        v6 = sub_267D244E8(v8);
        v0 = v20;
        goto LABEL_22;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v6 = 0;
  v0 = 0;
LABEL_24:
  *(v1 + 168) = v6;
  *(v1 + 176) = v0;
  if (qword_280228818 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v21 = sub_267EF8A08();
  *(v1 + 184) = OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);

  v22 = sub_267EF89F8();
  v23 = sub_267EF95C8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_48();
    v39 = OUTLINED_FUNCTION_52();
    *v24 = 136380675;

    v25 = OUTLINED_FUNCTION_61_4();
    v28 = sub_267BA33E8(v25, v26, v27);

    *(v24 + 4) = v28;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_18_2();
  }

  v34 = *(v1 + 96);
  v35 = swift_task_alloc();
  *(v1 + 192) = v35;
  v35[2] = v34;
  v35[3] = v6;
  v35[4] = v0;
  v36 = swift_task_alloc();
  *(v1 + 200) = v36;
  *v36 = v1;
  v36[1] = sub_267D16864;

  return sub_267C9C118(sub_267D2478C, v35);
}

uint64_t sub_267D16864()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = v2[25];
  v11 = *v1;
  v3[26] = v5;
  v3[27] = v0;

  if (!v0)
  {
    v6 = v3[24];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267D16974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_41();
  v16 = v15;
  v17 = v15[26];
  sub_267B9AFEC(v15[12] + 168, (v15 + 2));
  v18 = v15[6];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v15[5]);
  v19 = *(v18 + 368);
  v20 = OUTLINED_FUNCTION_26_0();
  v22 = v21(v20);
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_0(v15 + 2);
  v25 = sub_267BAF0DC(v17);
  if (!v25)
  {
    v48 = v15[26];
    v50 = v15[21];
    v49 = v15[22];
    v51 = v15[20];
    v53 = v16[13];
    v52 = v16[14];
    v54 = v16[12];

    OUTLINED_FUNCTION_3();
    sub_267D20DF0();

LABEL_14:

LABEL_44:
    v107 = v16[17];
    v106 = v16[18];

    v108 = v16[1];
    OUTLINED_FUNCTION_15();

    v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, *(&a11 + 1), a12, a13, a14, a15);
    return;
  }

  v26 = v25;
  a9 = v22;
  *&a11 = v24;
  v27 = v15[22];
  v28 = v15[23];

  v29 = sub_267EF89F8();
  v30 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v30))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_45_2();
  }

  v36 = v15[26];

  v37 = 0;
  v38 = v36 & 0xC000000000000001;
  v39 = v36 & 0xFFFFFFFFFFFFFF8;
  a10 = v36;
  v40 = v36 + 32;
  while (1)
  {
    if (v26 == v37)
    {
      v55 = 0;
      while (v26 != v55)
      {
        if (v38)
        {
          v56 = MEMORY[0x26D609870](v55, v15[26]);
        }

        else
        {
          if (v55 >= *(v39 + 16))
          {
            goto LABEL_50;
          }

          v56 = *(v40 + 8 * v55);
        }

        v57 = v56;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_49;
        }

        sub_267D140CC();
        v59 = v58;

        ++v55;
        if (v59)
        {
          v16 = v15;
          v68 = v15[23];

          v69 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_64();
          if (os_log_type_enabled(v69, v70))
          {
            v72 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v72);
            v66 = "#ShareThisFlow.execute sharing a string value from ContextKit for both 1p and 3p sirikit apps";
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      v16 = v15;
      v15[10] = &type metadata for Features;
      v15[11] = sub_267BAFCAC();
      *(v15 + 56) = 16;
      v67 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v15 + 7);
      if ((v67 & 1) == 0)
      {
        if (!a11)
        {
LABEL_40:
          v90 = v15[23];
          v69 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_64();
          if (!os_log_type_enabled(v69, v91))
          {
            goto LABEL_43;
          }

          v92 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v92);
          v66 = "#ShareThisFlow.execute attachment is file for 1p app, returning success";
          goto LABEL_42;
        }

        if (a9 != 0xD000000000000013 || a11 != 0x8000000267F10280)
        {
          v74 = OUTLINED_FUNCTION_80_3();

          if ((v74 & 1) == 0)
          {
            v75 = v15[26];
            v76 = v15[23];

            v77 = sub_267EF89F8();
            v78 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_36(v78))
            {
              v79 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v79);
              OUTLINED_FUNCTION_64_1();
              _os_log_impl(v80, v81, v82, v83, v84, 2u);
              OUTLINED_FUNCTION_26();
            }

            v51 = v15[20];
            v85 = v16[14];
            a11 = *(v16 + 6);

            sub_267C266B0();
            v86 = OUTLINED_FUNCTION_61_1();
            *v87 = 0xD000000000000052;
            v87[1] = 0x8000000267F17790;
            OUTLINED_FUNCTION_2_34(v86);
            OUTLINED_FUNCTION_94();
            v88 = swift_allocObject();
            *(v88 + 16) = a11;
            *(v88 + 32) = v85;

            v89 = OUTLINED_FUNCTION_10_5();
            sub_267D21690(v89);

            goto LABEL_14;
          }

          goto LABEL_40;
        }
      }

      goto LABEL_40;
    }

    if (v38)
    {
      v41 = MEMORY[0x26D609870](v37, v15[26]);
    }

    else
    {
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_48;
      }

      v41 = *(v40 + 8 * v37);
    }

    v42 = v41;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    v43 = [v41 sharedLink];
    if (v43)
    {
      v60 = v43;
      v16 = v15;
      v61 = v15[23];
      v62 = v15[18];

      sub_267EF2B48();

      v63 = sub_267EF2BA8();
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
      sub_267B9F98C(v62, &qword_280229E20, &unk_267EFDCC0);
      v69 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (!os_log_type_enabled(v69, v64))
      {
LABEL_43:
        v93 = v16[20];
        v95 = v16[16];
        v94 = v16[17];
        v96 = v16[14];
        v97 = v16[15];
        v99 = v16[12];
        v98 = v16[13];

        v100 = *(v99 + 56);
        v101 = *(v99 + 65);
        *(v99 + 56) = a10;
        v102 = *(v99 + 64);
        *(v99 + 64) = 0;
        sub_267D240BC(v100, v102, v101);
        sub_267EF4018();
        v98(v94);

        v103 = *(v95 + 8);
        v104 = OUTLINED_FUNCTION_26_0();
        v105(v104);
        goto LABEL_44;
      }

      v65 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v65);
      v66 = "#ShareThisFlow.execute sharing a link, allowing both 1p and 3p sirikit apps";
LABEL_42:
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v69, v40, v66);
      OUTLINED_FUNCTION_26();
      goto LABEL_43;
    }

    v44 = v15[18];

    v45 = sub_267EF2BA8();
    OUTLINED_FUNCTION_79_5(v44, v46, v47, v45);
    sub_267B9F98C(v44, &qword_280229E20, &unk_267EFDCC0);
    ++v37;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_267D16F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v16 = v14[23];
  v15 = v14[24];
  v17 = v14[22];

  v18 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v20);
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v18, v15, "#ShareThisFlow error executing fetchSharingAttachments");
    OUTLINED_FUNCTION_26();
  }

  v21 = v14[27];
  v23 = v14[16];
  v22 = v14[17];
  v24 = v14[14];
  v42 = v14[20];
  v43 = v14[15];
  v26 = v14[12];
  v25 = v14[13];

  v27 = *(v26 + 56);
  v28 = *(v26 + 65);
  *(v26 + 56) = v21;
  v29 = *(v26 + 64);
  *(v26 + 64) = 256;
  v30 = v21;
  sub_267D240BC(v27, v29, v28);
  sub_267EF4018();
  v25(v22);

  (*(v23 + 8))(v22, v43);
  v32 = v14[17];
  v31 = v14[18];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14);
}

uint64_t sub_267D17070(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[20];
  __swift_project_boxed_opaque_existential_0(a3 + 16, a3[19]);

  sub_267C0BC60(sub_267C36688, v6);
}

uint64_t sub_267D1711C(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{

  return sub_267D17B0C(a4, a5, a3, a1, a2);
}

void sub_267D17188()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v148[3] = &type metadata for Features;
  v148[4] = sub_267BAFCAC();
  LOBYTE(v148[0]) = 1;
  v3 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v148);
  if ((v3 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v20))
    {
      goto LABEL_14;
    }

LABEL_13:
    v50 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v50);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v51, v52, v53, v54, v55, 2u);
    OUTLINED_FUNCTION_26();
LABEL_14:

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_23();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_39();
  v9 = OUTLINED_FUNCTION_13_24(v5);
  v10(v9);
  v11 = *(v1 + 88);
  v12 = OUTLINED_FUNCTION_54_0();
  v14 = v13(v12);
  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_108();
  v17(v16);
  if ((v14 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_23();
    v22 = v21;
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v25);
    OUTLINED_FUNCTION_1_39();
    v26 = OUTLINED_FUNCTION_13_24(v22);
    v27(v26);
    v28 = *(v14 + 80);
    v29 = OUTLINED_FUNCTION_54_0();
    v14 = v30(v29);
    v31 = *(v22 + 8);
    v32 = OUTLINED_FUNCTION_108();
    v33(v32);
    if ((v14 & 1) == 0)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v70 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);

      v71 = sub_267EF89F8();
      v72 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_101_3(v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 67240448;
        v74 = v2[25];
        OUTLINED_FUNCTION_48_15(v2 + 21, v2[24]);
        OUTLINED_FUNCTION_23();
        v76 = *(v75 + 64);
        MEMORY[0x28223BE20](v77);
        OUTLINED_FUNCTION_1_39();
        v78 = OUTLINED_FUNCTION_15_18();
        v79(v78);
        v80 = *(v74 + 88);
        v81 = OUTLINED_FUNCTION_63();
        v82(v81);
        v83 = OUTLINED_FUNCTION_16_16();
        v84(v83);
        OUTLINED_FUNCTION_86_4();
        *(v73 + 4) = v85;
        *(v73 + 8) = 1026;
        v86 = v2[25];
        OUTLINED_FUNCTION_48_15(v2 + 21, v2[24]);
        OUTLINED_FUNCTION_23();
        v88 = *(v87 + 64);
        MEMORY[0x28223BE20](v89);
        OUTLINED_FUNCTION_1_39();
        v90 = OUTLINED_FUNCTION_15_18();
        v91(v90);
        v92 = *(v86 + 80);
        v93 = OUTLINED_FUNCTION_63();
        v94(v93);
        v95 = OUTLINED_FUNCTION_16_16();
        v96(v95);
        OUTLINED_FUNCTION_86_4();
        *(v73 + 10) = v97;

        OUTLINED_FUNCTION_97_6(&dword_267B93000, v98, v99, "#ShareThisFlow #shouldRouteToExpanse isShareRequest=%{BOOL,public}d, isUnshareRequest=%{BOOL,public}d => shouldRouteToExpanse=false");
        OUTLINED_FUNCTION_29_1();

        goto LABEL_15;
      }

LABEL_27:

      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_23();
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_39();
  v39 = OUTLINED_FUNCTION_13_24(v35);
  v40(v39);
  v41 = *(v14 + 328);
  v42 = OUTLINED_FUNCTION_54_0();
  v44 = v43(v42);
  v45 = *(v35 + 8);
  v46 = OUTLINED_FUNCTION_108();
  v47(v46);
  if (v44)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v48 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
    v19 = sub_267EF89F8();
    v49 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v49))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_23();
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_39();
  v61 = OUTLINED_FUNCTION_13_24(v57);
  v62(v61);
  v63 = *(v44 + 336);
  v64 = OUTLINED_FUNCTION_54_0();
  v66 = v65(v64);
  v67 = *(v57 + 8);
  v68 = OUTLINED_FUNCTION_108();
  v69(v68);
  if (v66)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_23();
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_1_39();
  v105 = OUTLINED_FUNCTION_13_24(v101);
  v106(v105);
  v107 = *(v66 + 344);
  v108 = OUTLINED_FUNCTION_54_0();
  v110 = v109(v108);
  v111 = *(v101 + 8);
  v112 = OUTLINED_FUNCTION_108();
  v113(v112);
  if (v110)
  {
LABEL_23:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v114 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v114, qword_280240FB0);

    v71 = sub_267EF89F8();
    v115 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_101_3(v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 67240448;
      v117 = v2[25];
      OUTLINED_FUNCTION_48_15(v2 + 21, v2[24]);
      OUTLINED_FUNCTION_23();
      v119 = *(v118 + 64);
      MEMORY[0x28223BE20](v120);
      OUTLINED_FUNCTION_1_39();
      v121 = OUTLINED_FUNCTION_15_18();
      v122(v121);
      v123 = *(v117 + 336);
      v124 = OUTLINED_FUNCTION_63();
      v125(v124);
      v126 = OUTLINED_FUNCTION_16_16();
      v127(v126);
      OUTLINED_FUNCTION_86_4();
      *(v116 + 4) = v128;
      *(v116 + 8) = 1026;
      v129 = v2[25];
      OUTLINED_FUNCTION_48_15(v2 + 21, v2[24]);
      OUTLINED_FUNCTION_23();
      v131 = *(v130 + 64);
      MEMORY[0x28223BE20](v132);
      OUTLINED_FUNCTION_1_39();
      v133 = OUTLINED_FUNCTION_15_18();
      v134(v133);
      v135 = *(v129 + 344);
      v136 = OUTLINED_FUNCTION_63();
      v137(v136);
      v138 = OUTLINED_FUNCTION_16_16();
      v139(v138);
      OUTLINED_FUNCTION_86_4();
      *(v116 + 10) = v140;

      OUTLINED_FUNCTION_97_6(&dword_267B93000, v141, v142, "#ShareThisFlow #shouldRouteToExpanse isExplicitShareInCallIntent=%{BOOL,public}d, isOnlySupportedInCall=%{BOOL,public}d => shouldRouteToExpanse=true");
      OUTLINED_FUNCTION_29_1();

      goto LABEL_15;
    }

    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_0(v2 + 53, v2[56]);
  v143 = sub_267EF8638();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v144 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v144, qword_280240FB0);
  v145 = sub_267EF89F8();
  v146 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v146))
  {
    v147 = swift_slowAlloc();
    *v147 = 67240448;
    *(v147 + 4) = v143 & 1;
    *(v147 + 8) = 1026;
    *(v147 + 10) = v143 & 1;
    _os_log_impl(&dword_267B93000, v145, v146, "#ShareThisFlow #shouldRouteToExpanse isScreenShareSupportingCallSalient=%{BOOL,public}d => shouldRouteToExpanse=%{BOOL,public}d", v147, 0xEu);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_15:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D17B0C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v174 = a2;
  v173 = a1;
  v8 = sub_267EF5778();
  v163 = *(v8 - 8);
  v9 = *(v163 + 64);
  MEMORY[0x28223BE20](v8);
  v167 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF8, &qword_267F042B8);
  v11 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v175 = &v148 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF00, &unk_267F042C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v169 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v176 = &v148 - v18;
  MEMORY[0x28223BE20](v17);
  v168 = &v148 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF08, &unk_267F09620);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v164 = &v148 - v22;
  v165 = sub_267EF6288();
  v162 = *(v165 - 8);
  v23 = *(v162 + 64);
  MEMORY[0x28223BE20](v165);
  v161 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_267EF57C8();
  v171 = *(v178 - 8);
  v25 = *(v171 + 64);
  MEMORY[0x28223BE20](v178);
  v177 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v166 = &v148 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;

  v31 = a3[5];
  v32 = a3[6];
  __swift_project_boxed_opaque_existential_0(a3 + 2, v31);
  v33 = *(v32 + 8);
  swift_retain_n();
  v33(&v182, v31, v32);
  __swift_project_boxed_opaque_existential_0(&v182, v184);
  v34 = sub_267DBF8D8();
  __swift_destroy_boxed_opaque_existential_0(&v182);
  v35 = MEMORY[0x277D84F90];
  if ((v34 & 1) == 0)
  {
    v182 = MEMORY[0x277D84F90];
    LOBYTE(v183) = 0;
    a4(&v182);

    goto LABEL_69;
  }

  v159 = a4;
  v160 = v30;
  v172 = a5;
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  v38 = a3[24];
  v37 = a3[25];
  v39 = __swift_project_boxed_opaque_existential_0(a3 + 21, v38);
  v40 = *(v38 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v43);
  LOBYTE(v37) = sub_267E59398(v38, v37);
  (*(v40 + 8))(v43, v38);
  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A60, &qword_267EFEED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x8000000267F177F0;
    v182 = v173;
    v183 = v174;
    MEMORY[0x28223BE20](inited);
    *(&v148 - 2) = &v182;
    v45 = sub_267C9B19C();
    swift_setDeallocating();
    sub_267DB70E8();
    if (v45)
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v46 = sub_267EF8A08();
      __swift_project_value_buffer(v46, qword_280240FB0);
      v47 = sub_267EF89F8();
      v48 = sub_267EF95C8();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v160;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_267B93000, v47, v48, "#ShareThisFlow calling WFOnScreenContentService to get on-screen context for playing content from selected 3rd party app", v51, 2u);
        MEMORY[0x26D60A7B0](v51, -1, -1);
      }

      v52 = a3[5];
      v53 = a3[6];
      __swift_project_boxed_opaque_existential_0(a3 + 2, v52);
      (*(v53 + 8))(&v182, v52, v53);
      __swift_project_boxed_opaque_existential_0(&v182, v184);
      v54 = sub_267EF3C28();
      __swift_destroy_boxed_opaque_existential_0(&v182);
      if (v54)
      {
        v182 = v35;
        LOBYTE(v183) = 0;
        v159(&v182);

        goto LABEL_69;
      }

      sub_267D1C848(sub_267BE9C54, v50);
      goto LABEL_67;
    }
  }

  v56 = a3[24];
  v55 = a3[25];
  v57 = __swift_project_boxed_opaque_existential_0(a3 + 21, v56);
  v58 = *(v56 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v148 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v58 + 16))(v61);
  LOBYTE(v55) = sub_267E59398(v56, v55);
  (*(v58 + 8))(v61, v56);
  if (v55)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A60, &qword_267EFEED8);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_267EFCC90;
  *(v62 + 32) = xmmword_267F03EF0;
  *(v62 + 48) = 0xD000000000000012;
  *(v62 + 56) = 0x8000000267F105C0;
  v182 = v173;
  v183 = v174;
  MEMORY[0x28223BE20](v62);
  *(&v148 - 2) = &v182;
  v63 = sub_267C9B19C();
  swift_setDeallocating();
  sub_267DB70E8();
  v64 = v172;
  if (v63)
  {
LABEL_13:
    v65 = v36;
    if (qword_280228818 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_14;
  }

  sub_267BB170C((a3 + 43), &v180, &unk_28022ADE0, &qword_267F0AA60);
  if (v181)
  {
    sub_267B9A5E8(&v180, &v182);
    v73 = sub_267EF6628();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    sub_267EF6618();
    v76 = MEMORY[0x26D6059D0]();

    if (v76)
    {
      v77 = __swift_project_boxed_opaque_existential_0(&v182, v184);
      v78 = a3[5];
      v79 = a3[6];
      v174 = v76;
      __swift_project_boxed_opaque_existential_0(a3 + 2, v78);
      (*(v79 + 8))(&v180, v78, v79);
      __swift_project_boxed_opaque_existential_0(&v180, v181);
      v80 = v166;
      v81 = v174;
      sub_267EF3B68();
      v173 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v173);
      v82 = *v77;
      v83 = sub_267C8E0F4(v81, v80);
      sub_267B9F98C(v80, &unk_28022AF10, &unk_267F001E0);
      __swift_destroy_boxed_opaque_existential_0(&v180);
      if (v83)
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v84 = sub_267EF8A08();
        __swift_project_value_buffer(v84, qword_280240FB0);
        v85 = sub_267EF89F8();
        v86 = sub_267EF95D8();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_267B93000, v85, v86, "#ShareThisFlow found Siri generated string", v87, 2u);
          MEMORY[0x26D60A7B0](v87, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_267EFCA40;
        *(v88 + 32) = v83;
        v179 = v88;
        v89 = sub_267EF5E88();
        v90 = *(v89 + 48);
        v91 = *(v89 + 52);
        swift_allocObject();
        v92 = v83;
        sub_267EF5E78();
        v93 = MEMORY[0x26D6059D0]();

        if (v93)
        {
          v94 = __swift_project_boxed_opaque_existential_0(&v182, v184);
          v95 = a3[5];
          v96 = a3[6];
          __swift_project_boxed_opaque_existential_0(a3 + 2, v95);
          (*(v96 + 8))(&v180, v95, v96);
          __swift_project_boxed_opaque_existential_0(&v180, v181);
          v97 = v166;
          sub_267EF3B68();
          __swift_storeEnumTagSinglePayload(v97, 0, 1, v173);
          v98 = *v94;
          v99 = sub_267C8E0F4(v93, v97);
          sub_267B9F98C(v97, &unk_28022AF10, &unk_267F001E0);
          __swift_destroy_boxed_opaque_existential_0(&v180);
          if (v99)
          {
            v100 = sub_267EF89F8();
            v101 = sub_267EF95C8();
            v102 = os_log_type_enabled(v100, v101);
            v103 = v159;
            if (v102)
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&dword_267B93000, v100, v101, "#ShareThisFlow found Siri generated image", v104, 2u);
              MEMORY[0x26D60A7B0](v104, -1, -1);
            }

            MEMORY[0x26D608F90]();
            if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();
            v88 = v179;

LABEL_78:
            *&v180 = v88;
            BYTE8(v180) = 0;
            v103(&v180);

            __swift_destroy_boxed_opaque_existential_0(&v182);

            goto LABEL_68;
          }
        }

        v145 = sub_267EF89F8();
        v146 = sub_267EF95D8();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&dword_267B93000, v145, v146, "#ShareThisFlow: No Siri generated image found", v147, 2u);
          MEMORY[0x26D60A7B0](v147, -1, -1);
        }

        v103 = v159;
        goto LABEL_78;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v182);
  }

  else
  {
    sub_267B9F98C(&v180, &unk_28022ADE0, &qword_267F0AA60);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v105 = sub_267EF8A08();
  v151 = __swift_project_value_buffer(v105, qword_280240FB0);
  v106 = sub_267EF89F8();
  v107 = sub_267EF95D8();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_267B93000, v106, v107, "#ShareThisFlow: no Siri generated content found", v108, 2u);
    MEMORY[0x26D60A7B0](v108, -1, -1);
  }

  sub_267B9AFEC((a3 + 21), &v182);
  v109 = v184;
  v110 = v185;
  __swift_project_boxed_opaque_existential_0(&v182, v184);
  v111 = (*(v110 + 448))(v109, v110);
  if (!sub_267BAF0DC(v111))
  {

    __swift_destroy_boxed_opaque_existential_0(&v182);
LABEL_58:
    v133 = v160;
    goto LABEL_64;
  }

  sub_267BBD0EC(0, (v111 & 0xC000000000000001) == 0, v111);
  if ((v111 & 0xC000000000000001) != 0)
  {
    v112 = MEMORY[0x26D609870](0, v111);
  }

  else
  {
    v112 = *(v111 + 32);
  }

  __swift_destroy_boxed_opaque_existential_0(&v182);

  v113 = sub_267EF5A08();

  if (!v113)
  {

    goto LABEL_58;
  }

  v149 = v112;
  v114 = sub_267EF5688();

  v174 = v114;
  v115 = *(v114 + 16);
  v116 = v168;
  if (!v115)
  {
LABEL_59:
    v134 = v36;

    if (!sub_267EF5EA8())
    {

      v135 = v164;
      __swift_storeEnumTagSinglePayload(v164, 1, 1, v165);
      v133 = v160;
      goto LABEL_63;
    }

    v135 = v164;
    sub_267EF6278();

    v136 = v165;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v135, 1, v165);
    v133 = v160;
    if (EnumTagSinglePayload == 1)
    {

LABEL_63:
      sub_267B9F98C(v135, &qword_28022AF08, &unk_267F09620);
      goto LABEL_64;
    }

    v142 = v162;
    v143 = v161;
    (*(v162 + 32))(v161, v135, v136);
    if (qword_280228748 != -1)
    {
      swift_once();
    }

    sub_267EE9A5C();
    if (v144)
    {

      sub_267D1FB88(v149, v143, a3, v134, v159, v64);

      (*(v142 + 8))(v143, v136);
LABEL_67:

LABEL_68:

      goto LABEL_69;
    }

    (*(v142 + 8))(v143, v136);

LABEL_64:
    v138 = sub_267EF89F8();
    v139 = sub_267EF95C8();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_267B93000, v138, v139, "#ShareThisFlow calling WFOnScreenContentService to get on-screen context", v140, 2u);
      MEMORY[0x26D60A7B0](v140, -1, -1);
    }

    sub_267D1C848(sub_267BE9C54, v133);
    goto LABEL_67;
  }

  v173 = v8;
  v117 = 0;
  v166 = (v174 + ((*(v171 + 80) + 32) & ~*(v171 + 80)));
  v157 = v171 + 16;
  v156 = *MEMORY[0x277D5E4C0];
  v155 = (v163 + 104);
  v150 = (v163 + 32);
  v152 = (v163 + 8);
  v163 = v171 + 8;
  v153 = v115 - 1;
  v158 = v36;
  v154 = a3;
  while (1)
  {
    v65 = v177;
    if (v117 >= *(v174 + 16))
    {
      break;
    }

    v118 = v178;
    (*(v171 + 16))(v177, &v166[*(v171 + 72) * v117], v178);
    v119 = v116;
    sub_267EF5788();
    v120 = v176;
    v121 = v173;
    (*v155)(v176, v156, v173);
    __swift_storeEnumTagSinglePayload(v120, 0, 1, v121);
    v122 = *(v170 + 48);
    v123 = v175;
    sub_267BB170C(v119, v175, &qword_28022AF00, &unk_267F042C0);
    sub_267BB170C(v120, v123 + v122, &qword_28022AF00, &unk_267F042C0);
    if (__swift_getEnumTagSinglePayload(v123, 1, v121) == 1)
    {
      sub_267B9F98C(v120, &qword_28022AF00, &unk_267F042C0);
      sub_267B9F98C(v119, &qword_28022AF00, &unk_267F042C0);
      (*v163)(v65, v118);
      v124 = __swift_getEnumTagSinglePayload(v123 + v122, 1, v121);
      v116 = v119;
      v64 = v172;
      if (v124 == 1)
      {
        sub_267B9F98C(v123, &qword_28022AF00, &unk_267F042C0);
        v36 = v158;
        a3 = v154;
        goto LABEL_59;
      }

      goto LABEL_51;
    }

    v125 = v169;
    sub_267BB170C(v123, v169, &qword_28022AF00, &unk_267F042C0);
    v126 = __swift_getEnumTagSinglePayload(v123 + v122, 1, v121);
    v64 = v172;
    if (v126 == 1)
    {
      sub_267B9F98C(v176, &qword_28022AF00, &unk_267F042C0);
      v127 = v168;
      sub_267B9F98C(v168, &qword_28022AF00, &unk_267F042C0);
      (*v163)(v177, v178);
      v128 = v125;
      v116 = v127;
      (*v152)(v128, v121);
LABEL_51:
      sub_267B9F98C(v123, &qword_28022AEF8, &qword_267F042B8);
      v36 = v158;
      a3 = v154;
      if (v153 == v117)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v129 = v167;
    (*v150)(v167, v123 + v122, v121);
    sub_267D2483C(&unk_28022AF20, MEMORY[0x277D5E4D8]);
    v130 = sub_267EF8FE8();
    v131 = *v152;
    (*v152)(v129, v121);
    sub_267B9F98C(v176, &qword_28022AF00, &unk_267F042C0);
    v132 = v168;
    sub_267B9F98C(v168, &qword_28022AF00, &unk_267F042C0);
    (*v163)(v177, v178);
    v131(v169, v121);
    v116 = v132;
    sub_267B9F98C(v175, &qword_28022AF00, &unk_267F042C0);
    v36 = v158;
    a3 = v154;
    if ((v130 & 1) != 0 || v153 == v117)
    {
      goto LABEL_59;
    }

LABEL_55:
    ++v117;
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_14:
  v66 = sub_267EF8A08();
  __swift_project_value_buffer(v66, qword_280240FB0);
  v67 = sub_267EF89F8();
  v68 = sub_267EF95C8();
  v69 = os_log_type_enabled(v67, v68);
  v70 = v160;
  if (v69)
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_267B93000, v67, v68, "#ShareThisFlow checking now playing queue for something to share", v71, 2u);
    MEMORY[0x26D60A7B0](v71, -1, -1);
  }

  v72 = swift_allocObject();
  v72[2] = v65;
  v72[3] = sub_267BE9C54;
  v72[4] = v70;

  sub_267D1F1DC(sub_267D247E4, v72);

LABEL_69:
}

uint64_t sub_267D193C8(void *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  if (a1)
  {
    swift_beginAccess();
    v6 = a1;
    MEMORY[0x26D608F90]();
    sub_267BDECD0(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_267EF9368();
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = *(a2 + 16);

  a3(v8, 0);
}

uint64_t sub_267D1949C(void *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (a1)
  {
    v5 = qword_280228818;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_267B93000, v8, v9, "#ShareThisFlow appending contextualScreenEntityAttachment", v10, 2u);
      MEMORY[0x26D60A7B0](v10, -1, -1);
    }

    v11 = swift_beginAccess();
    MEMORY[0x26D608F90](v11);
    sub_267BDECD0(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_267EF9368();
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = 0;

  a3(&v13);
}

uint64_t sub_267D19638()
{
  OUTLINED_FUNCTION_12();
  v12 = *MEMORY[0x277D85DE8];
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D196C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v61 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 56);
  v16 = *(v14 + 64);
  v18 = *(v14 + 40);
  v17 = *(v14 + 48);
  objc_allocWithZone(MEMORY[0x277D23800]);

  v19 = sub_267D240D8();
  v20 = objc_opt_self();
  *(v14 + 16) = 0;
  v21 = [v20 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v14 + 16];
  v22 = *(v14 + 16);
  if (v21)
  {
    v24 = *(v14 + 56);
    v23 = *(v14 + 64);
    v26 = *(v14 + 24);
    v25 = *(v14 + 32);
    sub_267EF2BE8();

    sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);

    v27 = OUTLINED_FUNCTION_26_0();
    sub_267CAB9F0(v27, v28);
    v29 = OUTLINED_FUNCTION_26_0();
    v32 = sub_267D199D0(v29, v30, v24, v23, 0xD000000000000025, v31);
    [objc_opt_self() attachmentWithFile_];
    v33 = v19;
    sub_267D14244(v19);

    sub_267D142A4(v26, v25);

    v34 = OUTLINED_FUNCTION_26_0();
    sub_267BBE0DC(v34, v35);
  }

  else
  {
    v36 = v22;
    v37 = sub_267EF2A78();

    swift_willThrow();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = v37;
    v40 = sub_267EF89F8();
    v41 = sub_267EF95E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_48();
      v43 = OUTLINED_FUNCTION_100_5();
      *v42 = 138412290;
      v44 = v37;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_267B9F98C(v43, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_4_3();
  v51 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64_3();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, v61, a12, a13, a14);
}

id sub_267D199D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_267EF2BB8();
  v10 = sub_267EF8FF8();

  if (a6)
  {
    v11 = sub_267EF8FF8();
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() fileWithData:v9 filename:v10 typeIdentifier:v11];

  sub_267BBE0DC(a1, a2);
  return v12;
}

uint64_t sub_267D19AAC()
{
  v0 = sub_267EF5548();
  OUTLINED_FUNCTION_97(v0);
  sub_267EF5538();
  result = MEMORY[0x26D6059D0]();
  if (result)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267D19AFC()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_267EF8A38();
  v1[5] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v7 = sub_267EF57C8();
  v1[9] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_50();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEE0, &qword_267F01FA0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v14 = sub_267EF8AE8();
  v1[16] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[17] = v15;
  v17 = *(v16 + 64);
  v1[18] = OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267D19C94()
{
  v112 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[3];
  sub_267EF8A28();
  sub_267EF8AD8();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);
  sub_267EF54E8();
  sub_267EF5E08();

  v8 = v0[2];
  v0[19] = v8;
  if (v8)
  {
    v9 = v0[15];
    v10 = v0[9];

    v11 = sub_267EF5688();

    sub_267C8F478(v11, v9);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
    v13 = v0[15];
    if (EnumTagSinglePayload == 1)
    {

      sub_267B9F98C(v13, &qword_28022AEE0, &qword_267F01FA0);
    }

    else
    {
      v41 = v0[9];
      v40 = v0[10];
      sub_267EF5768();
      v0[20] = v42;
      v43 = *(v40 + 8);
      v44 = OUTLINED_FUNCTION_73();
      v110 = v45;
      (v45)(v44);
      v109 = *(v11 + 16);
      if (v109)
      {
        v46 = 0;
        v47 = v0[10];
        v48 = v11 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        do
        {
          if (v46 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v49 = *(v47 + 72);
          v50 = *(v47 + 16);
          (v50)(v0[13], v48 + v49 * v46, v0[9]);
          v51 = sub_267EF57B8();
          if (v52)
          {
            if (v51 == 0x69746E655F707061 && v52 == 0xEF657079745F7974)
            {

LABEL_22:
              v58 = v0[14];
              v59 = v0[9];
              v108 = *(v0[10] + 32);
              (v108)(v58, v0[13], v59);
              sub_267EF57A8();
              v0[21] = v60;
              v110(v58, v59);
              v61 = 0;
              while (v61 < *(v11 + 16))
              {
                v62 = v0[11];
                v63 = v0[9];
                v64 = OUTLINED_FUNCTION_73();
                v50(v64);
                v65 = sub_267EF57B8();
                if (v66)
                {
                  if (v65 == 0x64695F6D657469 && v66 == 0xE700000000000000)
                  {

LABEL_41:
                    v101 = v0[11];
                    v102 = v0[12];
                    v103 = v0[9];

                    v104 = OUTLINED_FUNCTION_66();
                    v108(v104);
                    sub_267EF57A8();
                    v0[22] = v105;
                    v106 = OUTLINED_FUNCTION_73();
                    (v110)(v106);
                    v107 = swift_task_alloc();
                    v0[23] = v107;
                    *v107 = v0;
                    v107[1] = sub_267D1A41C;

                    return sub_267D19638();
                  }

                  v68 = sub_267EF9EA8();

                  if (v68)
                  {
                    goto LABEL_41;
                  }
                }

                ++v61;
                v110(v0[11], v0[9]);
                v48 += v49;
                if (v109 == v61)
                {

                  goto LABEL_32;
                }
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v54 = sub_267EF9EA8();

            if (v54)
            {
              goto LABEL_22;
            }
          }

          ++v46;
          v110(v0[13], v0[9]);
        }

        while (v109 != v46);

LABEL_32:
      }

      else
      {
      }
    }

    if (qword_280228818 != -1)
    {
LABEL_46:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v69 = v0[8];
    v71 = v0[5];
    v70 = v0[6];
    v72 = v0[3];
    v73 = sub_267EF8A08();
    __swift_project_value_buffer(v73, qword_280240FB0);
    v74 = *(v70 + 16);
    v75 = OUTLINED_FUNCTION_65_5();
    v76(v75);
    v77 = sub_267EF89F8();
    v78 = sub_267EF95E8();
    v79 = OUTLINED_FUNCTION_101_3(v78);
    v80 = v0[8];
    v82 = v0[5];
    v81 = v0[6];
    if (v79)
    {
      v83 = OUTLINED_FUNCTION_48();
      v84 = OUTLINED_FUNCTION_52();
      v111 = v84;
      *v83 = 136315138;
      OUTLINED_FUNCTION_7_25();
      sub_267D2483C(v85, v86);
      v87 = sub_267EF9E58();
      v89 = v88;
      (*(v81 + 8))(v80, v82);
      v90 = sub_267BA33E8(v87, v89, &v111);

      *(v83 + 4) = v90;
      _os_log_impl(&dword_267B93000, v77, v78, "#ShareThisFlow could not get properties from appEntity object %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {

      (*(v81 + 8))(v80, v82);
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    v17 = v0[3];
    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = *(v15 + 16);
    v20 = OUTLINED_FUNCTION_108();
    v21(v20);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95E8();
    v24 = OUTLINED_FUNCTION_78_7(v23);
    v26 = v0[6];
    v25 = v0[7];
    v27 = v0[5];
    if (v24)
    {
      v28 = OUTLINED_FUNCTION_48();
      v29 = OUTLINED_FUNCTION_52();
      v111 = v29;
      *v28 = 136315138;
      OUTLINED_FUNCTION_7_25();
      sub_267D2483C(v30, v31);
      sub_267EF9E58();
      v32 = *(v26 + 8);
      v33 = OUTLINED_FUNCTION_73();
      v34(v33);
      v35 = OUTLINED_FUNCTION_61_4();
      sub_267BA33E8(v35, v36, v37);
      OUTLINED_FUNCTION_61_2();

      *(v28 + 4) = v25;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v38, v39, "#ShareThisFlow could not get appEntity from entity %s");
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v55 = *(v26 + 8);
      v56 = OUTLINED_FUNCTION_73();
      v57(v56);
    }
  }

  v91 = v0[18];
  v92 = v0[14];
  v93 = v0[15];
  v95 = v0[12];
  v94 = v0[13];
  v96 = v0[11];
  v98 = v0[7];
  v97 = v0[8];

  OUTLINED_FUNCTION_4_3();

  return v99(0);
}

uint64_t sub_267D1A41C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = v3[23];
  v5 = v3[22];
  v6 = v3[21];
  v7 = v3[20];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v11 + 192) = v10;

  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D1A560()
{
  OUTLINED_FUNCTION_29();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = v0[19];
    v8 = OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_100_5();
    *v8 = 138412290;
    *(v8 + 4) = v3;
    *v9 = v6;
    v10 = v3;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_267B9F98C(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
    v16 = v0[19];
  }

  v17 = v0[24];
  v18 = v0[18];
  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[11];
  v25 = v0[7];
  v24 = v0[8];

  OUTLINED_FUNCTION_4_3();

  return v26(v17);
}

uint64_t sub_267D1A714()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEC8, &qword_267F04288);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  v1[3] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF8A38();
  v1[4] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[5] = v6;
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_50();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v9 = sub_267EF8AF8();
  v1[9] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_50();
  v1[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);
  v1[13] = v13;
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_50();
  v1[15] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267D1A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[14];
  v26 = v22[15];
  v27 = v22[13];
  v28 = v22[2];
  sub_267D19AAC();
  v29 = sub_267EF8A58();
  OUTLINED_FUNCTION_97(v29);
  OUTLINED_FUNCTION_22_0();
  v22[16] = sub_267EF8A48();
  v30 = v28[42];
  __swift_project_boxed_opaque_existential_0(v28 + 38, v28[41]);
  sub_267EF8948();
  sub_267BB170C(v26, v25, &qword_28022AED0, &unk_267F04290);
  OUTLINED_FUNCTION_37_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v33))
    {
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v34);
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    v41 = v22[14];
    v40 = v22[15];

    v42 = OUTLINED_FUNCTION_19();
    sub_267B9F98C(v42, v43, &unk_267F04290);
    v44 = v41;
LABEL_7:
    sub_267B9F98C(v44, &qword_28022AED0, &unk_267F04290);
LABEL_8:
    v46 = v22[14];
    v45 = v22[15];
    v48 = v22[11];
    v47 = v22[12];
    v50 = v22[7];
    v49 = v22[8];
    v51 = v22[6];
    v52 = v22[3];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_64_3();

    return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
  }

  v62 = v22[11];
  v63 = v22[10];
  (*(v63 + 32))(v22[12], v22[14], v22[9]);
  v64 = *(v63 + 16);
  v65 = OUTLINED_FUNCTION_19();
  v66(v65);
  v67 = *(v63 + 88);
  v68 = OUTLINED_FUNCTION_37_1();
  v70 = v69(v68);
  if (v70 == *MEMORY[0x277D5FEC0])
  {
    v71 = v22[8];
    v72 = v22[4];
    v73 = v22[5];
    (*(v22[10] + 96))(v22[11], v22[9]);
    v74 = *(v73 + 32);
    v75 = OUTLINED_FUNCTION_61_0();
    v76(v75);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v77 = v22[7];
    v78 = v22[8];
    v79 = v22[4];
    v80 = v22[5];
    v81 = sub_267EF8A08();
    __swift_project_value_buffer(v81, qword_280240FB0);
    v82 = *(v80 + 16);
    v83 = OUTLINED_FUNCTION_61_0();
    v84(v83);
    v85 = sub_267EF89F8();
    v86 = sub_267EF95D8();
    v87 = OUTLINED_FUNCTION_78_7(v86);
    v88 = v22[7];
    v89 = v22[4];
    v90 = v22[5];
    if (v87)
    {
      v91 = OUTLINED_FUNCTION_48();
      v148 = OUTLINED_FUNCTION_52();
      a11 = v148;
      *v91 = 136315138;
      OUTLINED_FUNCTION_7_25();
      sub_267D2483C(v92, v93);
      sub_267EF9E58();
      v96 = *(v90 + 8);
      v95 = v90 + 8;
      v94 = v96;
      v97 = OUTLINED_FUNCTION_73();
      v96(v97);
      v98 = OUTLINED_FUNCTION_61_4();
      sub_267BA33E8(v98, v99, v100);
      OUTLINED_FUNCTION_61_2();

      *(v91 + 4) = v88;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v101, v102, "#ShareThisFlow fetchAppEntityResults foundMatch with %s");
      __swift_destroy_boxed_opaque_existential_0(v148);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v124 = *(v90 + 8);
      v95 = v90 + 8;
      v94 = v124;
      v125 = OUTLINED_FUNCTION_73();
      v124(v125);
    }

    v22[17] = v95;
    v22[18] = v94;
    v126 = swift_task_alloc();
    v22[19] = v126;
    *v126 = v22;
    v126[1] = sub_267D1B02C;
    v127 = v22[8];
  }

  else
  {
    if (v70 != *MEMORY[0x277D5FEC8])
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v130 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v130, qword_280240FB0);
      v131 = sub_267EF89F8();
      v132 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v132))
      {
        v133 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v133);
        OUTLINED_FUNCTION_52_8();
        _os_log_impl(v134, v135, v136, v137, v138, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v139 = v22[15];
      v141 = v22[11];
      v140 = v22[12];
      v142 = v22[9];
      v143 = v22[10];

      v144 = *(v143 + 8);
      v144(v140, v142);
      sub_267B9F98C(v139, &qword_28022AED0, &unk_267F04290);
      v145 = OUTLINED_FUNCTION_63();
      (v144)(v145);
      goto LABEL_8;
    }

    v103 = v22[11];
    (*(v22[10] + 96))(v103, v22[9]);
    v104 = *v103;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v105 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v105, qword_280240FB0);

    v106 = sub_267EF89F8();
    v107 = sub_267EF95D8();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = v22[4];
      v109 = OUTLINED_FUNCTION_48();
      v110 = OUTLINED_FUNCTION_52();
      a11 = v110;
      *v109 = 136315138;
      v111 = MEMORY[0x26D608FD0](v104, v108);
      v113 = sub_267BA33E8(v111, v112, &a11);

      *(v109 + 4) = v113;
      _os_log_impl(&dword_267B93000, v106, v107, "#ShareThisFlow fetchAppEntityResults found multiple matches with %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    v115 = v22[3];
    v114 = v22[4];
    sub_267C8F038(v104, v115);

    if (__swift_getEnumTagSinglePayload(v115, 1, v114) == 1)
    {
      sub_267B9F98C(v22[3], &qword_28022AEC8, &qword_267F04288);
      v116 = sub_267EF89F8();
      v117 = sub_267EF95E8();
      v118 = OUTLINED_FUNCTION_101_3(v117);
      v119 = v22[15];
      v120 = v22[12];
      v121 = v22[9];
      v122 = v22[10];
      if (v118)
      {
        v123 = OUTLINED_FUNCTION_32();
        *v123 = 0;
        _os_log_impl(&dword_267B93000, v116, v117, "#ShareThisFlow foundMatchPlural: no elements in the multiple match RREntity candidates", v123, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      (*(v122 + 8))(v120, v121);
      v44 = v119;
      goto LABEL_7;
    }

    (*(v22[5] + 32))(v22[6], v22[3], v22[4]);
    v146 = swift_task_alloc();
    v22[21] = v146;
    *v146 = v22;
    v146[1] = sub_267D1B21C;
    v147 = v22[6];
  }

  v128 = v22[2];
  OUTLINED_FUNCTION_64_3();

  return sub_267D19AFC();
}

uint64_t sub_267D1B02C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 152);
  *v2 = *v0;
  *(v1 + 160) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D1B114()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  v1(v8, v9);
  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_26_0();
  v12(v11);
  sub_267B9F98C(v4, &qword_28022AED0, &unk_267F04290);
  v13 = v0[20];
  OUTLINED_FUNCTION_77_3();

  OUTLINED_FUNCTION_4_3();

  return v14(v13);
}

uint64_t sub_267D1B21C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 168);
  *v2 = *v0;
  *(v1 + 176) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D1B304()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];

  (*(v7 + 8))(v6, v8);
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_26_0();
  v11(v10);
  sub_267B9F98C(v2, &qword_28022AED0, &unk_267F04290);
  v12 = v0[22];
  OUTLINED_FUNCTION_77_3();

  OUTLINED_FUNCTION_4_3();

  return v13(v12);
}

uint64_t sub_267D1B40C()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_267EF8818();
  v0[3] = v1;
  OUTLINED_FUNCTION_30_0(v1);
  v0[4] = v2;
  v4 = *(v3 + 64);
  v0[5] = OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v0[6] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF2BA8();
  v0[7] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v0[8] = v9;
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_50();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE88, &unk_267F04258);
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_2();
  v15 = sub_267EF8758();
  v0[14] = v15;
  OUTLINED_FUNCTION_30_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_2();
  v19 = sub_267EF8858();
  v0[17] = v19;
  OUTLINED_FUNCTION_30_0(v19);
  v0[18] = v20;
  v22 = *(v21 + 64);
  v0[19] = OUTLINED_FUNCTION_2();
  v23 = sub_267EF8838();
  v0[20] = v23;
  OUTLINED_FUNCTION_30_0(v23);
  v0[21] = v24;
  v26 = *(v25 + 64);
  v0[22] = OUTLINED_FUNCTION_2();
  v27 = sub_267EF8878();
  v0[23] = v27;
  OUTLINED_FUNCTION_30_0(v27);
  v0[24] = v28;
  v30 = *(v29 + 64);
  v0[25] = OUTLINED_FUNCTION_2();
  v31 = sub_267EF88D8();
  v0[26] = v31;
  OUTLINED_FUNCTION_30_0(v31);
  v0[27] = v32;
  v34 = *(v33 + 64);
  v0[28] = OUTLINED_FUNCTION_2();
  v35 = sub_267EF8918();
  v0[29] = v35;
  OUTLINED_FUNCTION_30_0(v35);
  v0[30] = v36;
  v38 = *(v37 + 64);
  v0[31] = OUTLINED_FUNCTION_2();
  v39 = sub_267EF8728();
  v0[32] = v39;
  OUTLINED_FUNCTION_30_0(v39);
  v0[33] = v40;
  v42 = *(v41 + 64);
  v0[34] = OUTLINED_FUNCTION_50();
  v0[35] = swift_task_alloc();
  v43 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_267D1B794()
{
  v1 = v0[35];
  v2 = v0[33];
  v32 = v1;
  v33 = v0[32];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[4];
  v8 = sub_267EF88A8();
  OUTLINED_FUNCTION_97(v8);
  v0[36] = sub_267EF8898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE90, &qword_267F00E10);
  v9 = *(v7 + 72);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_267EFC020;
  sub_267EF8788();
  sub_267EF8718();
  sub_267EF8908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE98, &qword_267F04268);
  v12 = *(v4 + 72);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267EFC020;
  sub_267EF88C8();
  v0[2] = v14;
  sub_267D2483C(&qword_28022AEA0, MEMORY[0x277D1D4E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEA8, &qword_267F04270);
  sub_267D2462C();
  sub_267EF99C8();
  sub_267EF88F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEB8, &qword_267F04278);
  v15 = sub_267EF88B8();
  OUTLINED_FUNCTION_58(v15);
  v17 = v16;
  v19 = *(v18 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_267EFCC90;
  v22 = (v21 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEC0, &qword_267F04280);
  v23 = *(v2 + 72);
  v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_267EFC020;
  (*(v2 + 16))(v25 + v24, v32, v33);
  sub_267E6F730();
  *v22 = v26;
  v27 = *(v17 + 104);
  v27(v22, *MEMORY[0x277D1D428], v15);
  *(v22 + v19) = v11;
  v27((v22 + v19), *MEMORY[0x277D1D438], v15);
  sub_267E6F564();
  sub_267EF88E8();
  v28 = *(MEMORY[0x277D1D3B8] + 4);
  v29 = swift_task_alloc();
  v0[37] = v29;
  *v29 = v0;
  v29[1] = sub_267D1BAF8;
  v30 = v0[31];

  return MEMORY[0x282176408](v30);
}

uint64_t sub_267D1BAF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 296);
  *v3 = *v1;
  *(v2 + 304) = v6;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267D1BBF8(__n128 a1)
{
  v218 = v1;
  v2 = v1[38];
  v216 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1[24];
    v214 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v6 = v1[21];
    v210 = (v6 + 88);
    v206 = (v6 + 96);
    v207 = (v6 + 8);
    v205 = (v1[18] + 32);
    v204 = (v1[15] + 32);
    v7 = v1[8];
    v198 = (v7 + 16);
    v199 = (v7 + 32);
    v197 = (v7 + 8);
    v203 = (v1[33] + 8);
    v8 = MEMORY[0x277D84F90];
    v196 = (v1[4] + 8);
    v209 = *MEMORY[0x277D1D360];
    v200 = v1[39];
    a1.n128_u64[0] = 136315394;
    v189 = a1;
    v202 = v1[38];
    v208 = *(v2 + 16);
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v9 = v1[22];
      v10 = v1[20];
      (*(v5 + 16))(v1[25], v214 + *(v5 + 72) * v4, v1[23]);
      sub_267EF8868();
      v11 = *(v5 + 8);
      v12 = OUTLINED_FUNCTION_65_5();
      v13(v12);
      v14 = *v210;
      v15 = OUTLINED_FUNCTION_63();
      v17 = v16(v15);
      v18 = v1[22];
      v19 = v1[20];
      if (v17 == v209)
      {
        break;
      }

      (*v207)(v1[22], v19);
LABEL_16:
      if (++v4 == v3)
      {
        v215 = v8;
        v148 = v1[38];

        goto LABEL_35;
      }
    }

    v20 = v1[19];
    v21 = v1[17];
    v23 = v1[13];
    v22 = v1[14];
    (*v206)(v1[22], v19);
    (*v205)(v20, v18, v21);
    sub_267EF8848();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v22);
    v25 = v1[13];
    if (EnumTagSinglePayload == 1)
    {
      v26 = v1[19];
      v27 = v1[17];
      OUTLINED_FUNCTION_74_4();
      v28();
      sub_267B9F98C(v25, &qword_28022AE88, &unk_267F04258);
    }

    else
    {
      (*v204)(v1[16], v1[13], v1[14]);
      v29 = sub_267EF8738();
      v30 = 0;
      v31 = 1 << *(v29 + 32);
      v32 = (v31 + 63) >> 6;
      v33 = 56;
      if (!v32)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v34 = *(v29 + v33);
        if (v34)
        {
          break;
        }

        v30 -= 64;
        v33 += 8;
        if (!--v32)
        {
          goto LABEL_13;
        }
      }

      v35 = __clz(__rbit64(v34));
      if (v35 - v31 != v30)
      {
        v45 = v1[16];
        sub_267C96230(v35 - v30, *(v29 + 36), v29, v1[34]);

        v46 = sub_267EF8748();
        if (v46)
        {
          v53 = v46;
          v55 = v1[6];
          v54 = v1[7];
          sub_267EF8708();
          if (__swift_getEnumTagSinglePayload(v55, 1, v54) == 1)
          {
            v56 = v1[34];
            v57 = v1[32];
            v58 = v1[19];
            v60 = v1[16];
            v59 = v1[17];
            v61 = v1[14];
            v192 = v1[6];

            OUTLINED_FUNCTION_84_3(v62, v63, v64, v65, v66, v67, v68, v69, v163, v164, v165, v166, v167, v168, v169, v170, v172, v175, v178, v181, v184, v187, v189.n128_i64[0], v189.n128_i64[1], v190, v192, v196, v197, v198, v199, v200, v202, v203);
            v70 = OUTLINED_FUNCTION_65_5();
            v71(v70);
            OUTLINED_FUNCTION_72_6();
            v72(v60, v61);
            OUTLINED_FUNCTION_74_4();
            v73 = OUTLINED_FUNCTION_63();
            v74(v73);
            sub_267B9F98C(v191, &qword_280229E20, &unk_267EFDCC0);
          }

          else
          {
            v80 = v1[11];
            (*v199)(v1[12], v1[6], v1[7]);
            sub_267CF2988(v80);
            v188 = v200;
            if (v200)
            {
              if (qword_280228818 != -1)
              {
                OUTLINED_FUNCTION_0_10();
                swift_once();
              }

              v81 = v1[12];
              v82 = v1[9];
              v83 = v1[7];
              v84 = sub_267EF8A08();
              __swift_project_value_buffer(v84, qword_280240FB0);
              v85 = *v198;
              v86 = OUTLINED_FUNCTION_19();
              v87(v86);
              v88 = v200;
              v89 = sub_267EF89F8();
              v90 = sub_267EF95E8();

              v91 = os_log_type_enabled(v89, v90);
              v173 = v1[32];
              v176 = v1[34];
              v193 = v1[19];
              v182 = v1[16];
              v185 = v1[17];
              v179 = v1[14];
              v171 = v1[12];
              v92 = v1[9];
              v93 = v1[7];
              if (v91)
              {
                v166 = v89;
                v94 = swift_slowAlloc();
                v165 = OUTLINED_FUNCTION_100_5();
                v167 = OUTLINED_FUNCTION_52();
                v217 = v167;
                *v94 = v189.n128_u32[0];
                sub_267D2483C(&qword_28022AE70, MEMORY[0x277CC9260]);
                v200 = v53;
                v95 = sub_267EF9E58();
                HIDWORD(v164) = v90;
                v97 = v96;
                v168 = v93;
                v169 = *v197;
                v98 = OUTLINED_FUNCTION_65_5();
                v99(v98);
                v100 = sub_267BA33E8(v95, v97, &v217);

                *(v94 + 4) = v100;
                *(v94 + 12) = 2112;
                v101 = v188;
                v102 = _swift_stdlib_bridgeErrorToNSError();
                *(v94 + 14) = v102;
                *v165 = v102;
                _os_log_impl(&dword_267B93000, v166, BYTE4(v164), "#ShareThisFlow Cannot copy image file at %s. error %@", v94, 0x16u);
                sub_267B9F98C(v165, &unk_280229E30, &unk_267EFC270);
                OUTLINED_FUNCTION_29_1();
                __swift_destroy_boxed_opaque_existential_0(v167);
                OUTLINED_FUNCTION_29_1();
                OUTLINED_FUNCTION_26();

                v103 = (v169)(v171, v93);
              }

              else
              {

                v144 = *v197;
                v145 = OUTLINED_FUNCTION_65_5();
                v144(v145);
                v103 = (v144)(v171, v93);
              }

              OUTLINED_FUNCTION_84_3(v103, v104, v105, v106, v107, v108, v109, v110, v163, v164, v165, v166, v167, v168, v169, v171, v173, v176, v179, v182, v185, v188, v189.n128_i64[0], v189.n128_i64[1], v190, v193, v196, v197, v198, v199, v200, v202, v203);
              v146(v175, v172);
              OUTLINED_FUNCTION_72_6();
              v147(v181, v178);
              OUTLINED_FUNCTION_74_4();
              v142 = v191;
              v143 = v184;
            }

            else
            {
              v112 = v1[10];
              v111 = v1[11];
              v113 = v1[7];
              v114 = v1[5];
              v194 = v1[3];
              sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
              v115 = *v198;
              v116 = OUTLINED_FUNCTION_19();
              v117(v116);
              sub_267EF86F8();
              v119 = v118;
              sub_267EF87D8();
              v120 = sub_267EF8768();
              v201 = v53;
              v122 = v121;
              (*v196)(v114, v194);
              v123 = OUTLINED_FUNCTION_37_1();
              v195 = sub_267E0C800(v123, v124, v119, v120, v122);
              v125 = [objc_opt_self() attachmentWithFile_];
              MEMORY[0x26D608F90]();
              if (*((v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_267EF9328();
              }

              v126 = v1[32];
              v183 = v1[17];
              v186 = v1[19];
              v180 = v1[16];
              v174 = v1[34];
              v177 = v1[14];
              v127 = v1[11];
              v128 = v1[12];
              v129 = v1[7];
              sub_267EF9368();
              v8 = v216;

              v130 = *v197;
              (*v197)(v127, v129);
              v131 = (v130)(v128, v129);
              OUTLINED_FUNCTION_84_3(v131, v132, v133, v134, v135, v136, v137, v138, v163, v164, v165, v166, v167, v168, v169, v170, v174, v177, v180, v183, v186, 0, v189.n128_i64[0], v189.n128_i64[1], v190, v195, v196, v197, v198, v199, v201, v202, v203);
              v139(v172, v126);
              OUTLINED_FUNCTION_72_6();
              v140(v178, v175);
              OUTLINED_FUNCTION_74_4();
              v143 = v181;
              v142 = v184;
            }

            v141(v142, v143);
            v200 = 0;
          }

          v2 = v202;
          goto LABEL_15;
        }

        v75 = v1[19];
        v77 = v1[16];
        v76 = v1[17];
        v78 = v1[14];
        OUTLINED_FUNCTION_84_3(v1[34], v1[32], v47, v48, v49, v50, v51, v52, v163, v164, v165, v166, v167, v168, v169, v170, v172, v175, v178, v181, v184, v187, v189.n128_i64[0], v189.n128_i64[1], v190, v191, v196, v197, v198, v199, v200, v202, v203);
        v79();
        OUTLINED_FUNCTION_72_6();
        v41 = OUTLINED_FUNCTION_63();
      }

      else
      {
LABEL_13:
        v36 = v1[19];
        v38 = v1[16];
        v37 = v1[17];
        v39 = v1[14];

        OUTLINED_FUNCTION_72_6();
        v41 = v38;
        v42 = v39;
      }

      v40(v41, v42);
      OUTLINED_FUNCTION_74_4();
      v43 = OUTLINED_FUNCTION_65_5();
      v44(v43);
    }

LABEL_15:
    v3 = v208;
    goto LABEL_16;
  }

  v215 = MEMORY[0x277D84F90];
LABEL_35:
  v150 = v1[35];
  v149 = v1[36];
  v151 = v1[32];
  v152 = v1[33];
  v154 = v1[30];
  v153 = v1[31];
  v155 = v1[29];

  v156 = *(v154 + 8);
  v157 = OUTLINED_FUNCTION_37_1();
  v158(v157);
  v159 = *(v152 + 8);
  v160 = OUTLINED_FUNCTION_66();
  v161(v160);
  OUTLINED_FUNCTION_41_11();
  v211 = v1[9];
  v212 = v1[6];
  v213 = v1[5];

  OUTLINED_FUNCTION_4_3();

  v162(v215);
}

uint64_t sub_267D1C624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v17 = v16[39];
  v18 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
  v19 = v17;
  v20 = sub_267EF89F8();
  v21 = sub_267EF95E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v16[39];
    v23 = OUTLINED_FUNCTION_48();
    v24 = OUTLINED_FUNCTION_100_5();
    *v23 = 138412290;
    v25 = v22;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    OUTLINED_FUNCTION_52_8();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_267B9F98C(v24, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v32 = v16[39];
  v34 = v16[35];
  v33 = v16[36];
  v35 = v16[32];
  v36 = v16[33];
  v38 = v16[30];
  v37 = v16[31];
  v39 = v16[29];

  v40 = *(v38 + 8);
  v41 = OUTLINED_FUNCTION_63();
  v42(v41);
  v43 = *(v36 + 8);
  v44 = OUTLINED_FUNCTION_37_1();
  v45(v44);
  OUTLINED_FUNCTION_41_11();
  v57 = v47;
  v58 = v46;
  v59 = v16[9];
  v60 = v16[6];
  v61 = v16[5];

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_15();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, v57, v58, v59, v60, v61, a14, a15, a16);
}

uint64_t sub_267D1C848(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_267EF93F8();
  OUTLINED_FUNCTION_79_5(v10, v12, v13, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = a1;
  v14[6] = a2;

  OUTLINED_FUNCTION_10_5();
  sub_267D7635C();
}

uint64_t sub_267D1C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = sub_267EF8A08();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D1C9F4, 0, 0);
}

uint64_t sub_267D1C9F4()
{
  v15 = v0;
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];
    v7 = __swift_project_value_buffer(v6, qword_280240FB0);
    v0[19] = v7;
    (*(v5 + 16))(v4, v7, v6);
    sub_267EF3838();
    v8 = type metadata accessor for MessagesSELFPerformanceLogger();
    OUTLINED_FUNCTION_97(v8);
    v0[20] = OUTLINED_FUNCTION_96_3(103, v9, v10, v11, v14);
    v12 = swift_allocObject();
    v0[21] = v12;
    *(v12 + 16) = MEMORY[0x277D84F90];
    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    v13[1] = sub_267D1CB68;

    return sub_267D1B40C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267D1CB68(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *(v4 + 176);
  v7 = *v2;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 184) = v1;

  if (!v1)
  {
    *(v5 + 192) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D1CC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v13 = v10[21];
  sub_267C9B788(v10[24]);
  if (sub_267BAF0DC(*(v13 + 16)))
  {
    v14 = v10[19];
    v15 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v17);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v15, v13, "#ShareThisFlow retrieved on screen entities using IntelligenceContextClient");
      OUTLINED_FUNCTION_26();
    }

    v19 = v10[20];
    v18 = v10[21];
    v21 = v10[14];
    v20 = v10[15];

    v22 = *(v18 + 16);

    v21(v23, 0);

    goto LABEL_10;
  }

  v10[11] = &type metadata for Features;
  v24 = sub_267BAFCAC();
  *(v10 + 64) = 16;
  v10[12] = v24;
  v25 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v10 + 8);
  if ((v25 & 1) == 0)
  {
    OUTLINED_FUNCTION_73_5();
    v30 = [objc_allocWithZone(MEMORY[0x277D7A070]) init];
    OUTLINED_FUNCTION_65_3();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_14(v31);
    v10[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_29_14(COERCE_DOUBLE(1107296256));
    v10[4] = v32;
    v10[5] = &block_descriptor_11;
    v33 = _Block_copy(v12);
    v34 = v10[7];

    [v11 getOnScreenContentWithOptions:v30 completionHandler:v33];

    _Block_release(v33);

LABEL_10:

    v35 = v10[18];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_36_0();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }

  v26 = swift_task_alloc();
  v10[25] = v26;
  *v26 = v10;
  v26[1] = sub_267D1CEEC;
  v27 = v10[13];
  OUTLINED_FUNCTION_36_0();

  return sub_267D1A714();
}

uint64_t sub_267D1CEEC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 200);
  *v2 = *v0;
  *(v1 + 208) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D1CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v13 = v10[26];
  if (v13)
  {
    v14 = v10[19];
    v15 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v17);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v18, v19, "#ShareThisFlow found and fetched on screen file using onscreen app entity");
      OUTLINED_FUNCTION_26();
    }

    v21 = v10[20];
    v20 = v10[21];
    v23 = v10[14];
    v22 = v10[15];

    v24 = v13;
    MEMORY[0x26D608F90]();
    sub_267BDECD0(*((*(v20 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_267EF9368();
    v25 = *(v20 + 16);

    v23(v26, 0);
  }

  else
  {
    OUTLINED_FUNCTION_73_5();
    v27 = [objc_allocWithZone(MEMORY[0x277D7A070]) init];
    OUTLINED_FUNCTION_65_3();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_27_14(v28);
    v10[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_29_14(COERCE_DOUBLE(1107296256));
    v10[4] = v29;
    v10[5] = &block_descriptor_11;
    v30 = _Block_copy(v12);
    v31 = v10[7];

    [v11 getOnScreenContentWithOptions:v27 completionHandler:v30];

    _Block_release(v30);
  }

  v32 = v10[18];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_267D1D1C0()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];

  OUTLINED_FUNCTION_17();
  v5 = v0[23];

  return v4();
}

void sub_267D1D230(void (*a1)(char *, char *, uint64_t), void *a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6)
{
  v192 = a6;
  v193 = a4;
  v194 = a5;
  v191 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v181 - v12);
  v14 = sub_267EF2BA8();
  v190 = *(v14 - 8);
  v15 = *(v190 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v181 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v181 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v181 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v181 - v28;
  sub_267C7B358();
  if (a2)
  {
    v30 = a2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    v32 = a2;
    v33 = sub_267EF89F8();
    v34 = sub_267EF95E8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      aBlock[6] = a2;
      v37 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v38 = sub_267EF9098();
      v40 = sub_267BA33E8(v38, v39, aBlock);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_267B93000, v33, v34, "#ShareThisFlow WFOnScreenContentService returned an error: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x26D60A7B0](v36, -1, -1);
      MEMORY[0x26D60A7B0](v35, -1, -1);
    }

    v41 = a2;
    v193(a2, 1);

    return;
  }

  v185 = v11;
  v188 = v13;
  v182 = v21;
  v183 = v18;
  v184 = v27;
  v186 = v24;
  v187 = v29;
  v189 = v14;
  v42 = v191;
  if (!v191)
  {
    v72 = v188;
    __swift_storeEnumTagSinglePayload(v188, 1, 1, v189);
LABEL_22:
    sub_267B9F98C(v72, &qword_280229E20, &unk_267EFDCC0);
    v78 = v192;
    swift_beginAccess();
    if (!sub_267BAF0DC(*(v78 + 16)))
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v79 = sub_267EF8A08();
      __swift_project_value_buffer(v79, qword_280240FB0);
      v80 = sub_267EF89F8();
      v81 = sub_267EF95C8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_267B93000, v80, v81, "#ShareThisFlow attachmentList is empty after calling WFOnScreenContentService, no on screen content found", v82, 2u);
        MEMORY[0x26D60A7B0](v82, -1, -1);
      }
    }

    swift_beginAccess();
    v83 = *(v78 + 16);

    v193(v84, 0);

    return;
  }

  v43 = [v191 file];
  v44 = v189;
  v45 = v190;
  if (v43)
  {
    v46 = v43;
    v47 = [v43 fileURL];
    if (v47)
    {
      v48 = v47;
      v49 = v187;
      sub_267EF2B48();

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v50 = sub_267EF8A08();
      v51 = __swift_project_value_buffer(v50, qword_280240FB0);
      v52 = v46;
      v53 = sub_267EF89F8();
      v54 = sub_267EF95D8();
      v188 = v52;

      v55 = os_log_type_enabled(v53, v54);
      v186 = v51;
      v56 = v184;
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138412290;
        v59 = v188;
        *(v57 + 4) = v188;
        *v58 = v46;
        v60 = v59;
        _os_log_impl(&dword_267B93000, v53, v54, "#ShareThisFlow WFOnScreenContentService returned a file: %@", v57, 0xCu);
        sub_267B9F98C(v58, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v58, -1, -1);
        MEMORY[0x26D60A7B0](v57, -1, -1);
      }

      (*(v45 + 16))(v56, v49, v44);
      v61 = sub_267EF89F8();
      v62 = sub_267EF95C8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock[0] = v64;
        *v63 = 136380675;
        sub_267D2483C(&qword_28022AE70, MEMORY[0x277CC9260]);
        v65 = sub_267EF9E58();
        v66 = v44;
        v68 = v67;
        v69 = v56;
        v70 = *(v45 + 8);
        v70(v69, v66);
        v71 = sub_267BA33E8(v65, v68, aBlock);
        v44 = v66;
        v49 = v187;

        *(v63 + 4) = v71;
        _os_log_impl(&dword_267B93000, v61, v62, "#ShareThisFlow adding an attachment with a URL of:%{private}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x26D60A7B0](v64, -1, -1);
        MEMORY[0x26D60A7B0](v63, -1, -1);
      }

      else
      {

        v100 = v56;
        v70 = *(v45 + 8);
        v70(v100, v44);
      }

      v101 = v188;
      [v188 _setMarkedForDeletionOnDeallocation_];
      v102 = swift_allocObject();
      *(v102 + 16) = [objc_opt_self() attachmentWithFile_];
      v103 = sub_267D50E80();
      sub_267CFDB98(v103);
      v104 = [v42 contentItem];
      if (v104)
      {
        v105 = v104;
        objc_opt_self();
        v106 = swift_dynamicCastObjCClass();
        if (v106)
        {
          v107 = v106;
          v191 = v105;
          v108 = [v106 asset];
          v109 = sub_267EF89F8();
          v110 = sub_267EF95C8();

          v111 = os_log_type_enabled(v109, v110);
          v185 = v107;
          if (v111)
          {
            v112 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            aBlock[0] = v184;
            *v112 = 136380675;
            v113 = [v108 localIdentifier];
            v114 = v44;
            v115 = sub_267EF9028();
            v116 = v108;
            v117 = v70;
            v119 = v118;

            v120 = v115;
            v44 = v114;
            v49 = v187;
            v121 = sub_267BA33E8(v120, v119, aBlock);
            v70 = v117;
            v108 = v116;

            *(v112 + 4) = v121;
            _os_log_impl(&dword_267B93000, v109, v110, "#ShareThisFlow onScreenContent.contentItem was WFPhotoMediaContentItem and has asset identifier %{private}s", v112, 0xCu);
            v122 = v184;
            __swift_destroy_boxed_opaque_existential_0(v184);
            MEMORY[0x26D60A7B0](v122, -1, -1);
            MEMORY[0x26D60A7B0](v112, -1, -1);
          }

          if ([v108 hasAdjustments])
          {
            v123 = [objc_allocWithZone(MEMORY[0x277CD9850]) init];
            [v123 setNetworkAccessAllowed_];
            [v123 setSkipDisplaySizeImage_];
            v124 = swift_allocObject();
            v126 = v192;
            v125 = v193;
            v124[2] = v102;
            v124[3] = v126;
            v127 = v194;
            v124[4] = v125;
            v124[5] = v127;
            aBlock[4] = sub_267D24488;
            aBlock[5] = v124;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_267D1ED68;
            aBlock[3] = &block_descriptor_105;
            v128 = _Block_copy(aBlock);
            v129 = v123;

            [v108 requestContentEditingInputWithOptions:v129 completionHandler:v128];
            _Block_release(v128);

LABEL_57:
            goto LABEL_58;
          }

          v147 = *(v102 + 16);
          v148 = v192;
          swift_beginAccess();
          v149 = v147;
          MEMORY[0x26D608F90]();
          sub_267BDECD0(*((*(v148 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_267EF9368();
          swift_endAccess();
          v150 = v191;
          v151 = sub_267EF89F8();
          v152 = sub_267EF95C8();
          v191 = v150;

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            aBlock[0] = v184;
            *v153 = 136315138;
            v154 = [v185 asset];
            v155 = v44;
            v156 = [v154 localIdentifier];

            v157 = sub_267EF9028();
            v158 = v108;
            v159 = v70;
            v161 = v160;

            v44 = v155;
            v49 = v187;
            v162 = sub_267BA33E8(v157, v161, aBlock);
            v70 = v159;
            v108 = v158;
            v163 = v185;

            *(v153 + 4) = v162;
            v164 = &selRef_personTypes;
            _os_log_impl(&dword_267B93000, v151, v152, "#ShareThisFlow onScreenContent.contentItem was WFPhotoMediaContentItem and has asset identifier %s", v153, 0xCu);
            v165 = v184;
            __swift_destroy_boxed_opaque_existential_0(v184);
            MEMORY[0x26D60A7B0](v165, -1, -1);
            MEMORY[0x26D60A7B0](v153, -1, -1);
          }

          else
          {

            v163 = v185;
            v164 = &selRef_personTypes;
          }

          v166 = [v163 v164[204]];
          v167 = sub_267CFD844(v166);

          v168 = sub_267EF89F8();
          v169 = sub_267EF95D8();
          if (os_log_type_enabled(v168, v169))
          {
            v170 = v163;
            v171 = swift_slowAlloc();
            *v171 = 67109120;
            *(v171 + 4) = v167;
            _os_log_impl(&dword_267B93000, v168, v169, "#ShareThisFlow is asset available locally: %{BOOL}d", v171, 8u);
            v172 = v171;
            v163 = v170;
            v164 = &selRef_personTypes;
            MEMORY[0x26D60A7B0](v172, -1, -1);
          }

          if (!v167)
          {
            v176 = sub_267EF89F8();
            v177 = sub_267EF95C8();
            if (os_log_type_enabled(v176, v177))
            {
              v178 = swift_slowAlloc();
              *v178 = 0;
              _os_log_impl(&dword_267B93000, v176, v177, "#ShareThisFlow starting download of remote PHAsset", v178, 2u);
              MEMORY[0x26D60A7B0](v178, -1, -1);
            }

            v129 = [v163 v164[204]];
            v179 = v192;

            v180 = v194;

            sub_267CFC89C(v129, v193, v180, v179);

            goto LABEL_57;
          }

          v173 = v192;
          swift_beginAccess();
          v174 = *(v173 + 16);

          v193(v175, 0);

          v146 = v191;
LABEL_46:

LABEL_58:
          v70(v49, v44);

          return;
        }
      }

      v138 = sub_267EF89F8();
      v139 = sub_267EF95C8();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_267B93000, v138, v139, "#ShareThisFlow file was not a mediaItem, completing with file attachments", v140, 2u);
        MEMORY[0x26D60A7B0](v140, -1, -1);
      }

      v141 = *(v102 + 16);
      v142 = v192;
      swift_beginAccess();
      v143 = v141;
      MEMORY[0x26D608F90]();
      sub_267BDECD0(*((*(v142 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_267EF9368();
      v144 = *(v142 + 16);
      swift_endAccess();

      v193(v145, 0);
      v146 = v188;
      goto LABEL_46;
    }
  }

  v73 = [v42 URL];
  if (v73)
  {
    v74 = v73;
    v75 = v185;
    sub_267EF2B48();

    v76 = 0;
  }

  else
  {
    v76 = 1;
    v75 = v185;
  }

  __swift_storeEnumTagSinglePayload(v75, v76, 1, v44);
  v77 = v75;
  v72 = v188;
  sub_267C26704(v77, v188);
  if (__swift_getEnumTagSinglePayload(v72, 1, v44) == 1)
  {
    goto LABEL_22;
  }

  v85 = v186;
  (*(v45 + 32))(v186, v72, v44);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v86 = sub_267EF8A08();
  __swift_project_value_buffer(v86, qword_280240FB0);
  v87 = *(v45 + 16);
  v88 = v182;
  v87(v182, v85, v44);
  v89 = sub_267EF89F8();
  v90 = sub_267EF95C8();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v191 = v87;
    v92 = v91;
    v188 = swift_slowAlloc();
    aBlock[0] = v188;
    *v92 = 136380675;
    sub_267D2483C(&qword_28022AE70, MEMORY[0x277CC9260]);
    v93 = sub_267EF9E58();
    v95 = v94;
    v96 = *(v45 + 8);
    v96(v88, v189);
    v97 = sub_267BA33E8(v93, v95, aBlock);

    *(v92 + 4) = v97;
    _os_log_impl(&dword_267B93000, v89, v90, "#ShareThisFlow WFOnScreenContentService returned a url: %{private}s, building a sharedLink attachment", v92, 0xCu);
    v98 = v188;
    __swift_destroy_boxed_opaque_existential_0(v188);
    v44 = v189;
    MEMORY[0x26D60A7B0](v98, -1, -1);
    v99 = v92;
    v87 = v191;
    MEMORY[0x26D60A7B0](v99, -1, -1);
  }

  else
  {

    v96 = *(v45 + 8);
    v96(v88, v44);
  }

  v130 = v183;
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v131 = v186;
  v87(v130, v186, v44);
  v132 = sub_267E80978(v130);
  v133 = v192;
  swift_beginAccess();
  v134 = v132;
  MEMORY[0x26D608F90]();
  sub_267BDECD0(*((*(v133 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_267EF9368();
  swift_endAccess();
  v135 = sub_267D50E80();
  sub_267CFDB98(v135);
  swift_beginAccess();
  v136 = *(v133 + 16);

  v193(v137, 0);

  v96(v131, v44);
}

uint64_t sub_267D1E504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v95 = a5;
  v93 = a3;
  v9 = sub_267EF8818();
  v90 = *(v9 - 8);
  v10 = v90[8];
  MEMORY[0x28223BE20](v9);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_267EF2BA8();
  v13 = *(v94 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v94);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v81 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v81 - v26;
  if (a1)
  {
    v91 = v25;
    v92 = a4;
    v28 = a1;
    v29 = [v28 fullSizeImageURL];
    if (v29)
    {
      v30 = v29;
      v89 = a6;
      sub_267EF2B48();

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v90 = v28;
      v31 = sub_267EF8A08();
      __swift_project_value_buffer(v31, qword_280240FB0);
      v32 = v94;
      v88 = v13[2];
      v88(v24, v27, v94);
      v33 = sub_267EF89F8();
      v34 = sub_267EF95D8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v96[0] = v87;
        *v35 = 136315138;
        v36 = sub_267EF2AC8();
        v38 = v37;
        v39 = v13[1];
        v39(v24, v94);
        v40 = sub_267BA33E8(v36, v38, v96);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_267B93000, v33, v34, "#ShareThisFlow asset.requestContentEditingInput with imageURL: %s", v35, 0xCu);
        v41 = v87;
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x26D60A7B0](v41, -1, -1);
        v42 = v35;
        v32 = v94;
        MEMORY[0x26D60A7B0](v42, -1, -1);
      }

      else
      {

        v39 = v13[1];
        v39(v24, v32);
      }

      a4 = v92;
      sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
      v57 = v91;
      v88(v91, v27, v32);
      v58 = sub_267EF2AE8();
      v60 = sub_267E0C800(v57, v58, v59, 0x692E63696C627570, 0xEC0000006567616DLL);
      v61 = [objc_opt_self() attachmentWithFile_];

      v62 = v93;
      swift_beginAccess();
      v63 = *(v62 + 16);
      *(v62 + 16) = v61;

      swift_beginAccess();
      v64 = v61;
      MEMORY[0x26D608F90]();
      sub_267BDECD0(*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_267EF9368();
      swift_endAccess();

      v39(v27, v32);
    }

    else
    {

      v43 = v28;
      v44 = [v43 videoURL];
      if (v44)
      {
        v45 = v44;
        v88 = v43;
        sub_267EF2B48();

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v89 = a6;
        v46 = sub_267EF8A08();
        __swift_project_value_buffer(v46, qword_280240FB0);
        v47 = v94;
        v85 = v13[2];
        v85(v17, v20, v94);
        v48 = sub_267EF89F8();
        v49 = sub_267EF95D8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v83 = v50;
          v84 = swift_slowAlloc();
          v96[0] = v84;
          *v50 = 136315138;
          v82 = sub_267EF2AC8();
          v52 = v51;
          v53 = v13[1];
          v86 = (v13 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v87 = v53;
          (v53)(v17, v47);
          v54 = sub_267BA33E8(v82, v52, v96);

          v55 = v83;
          *(v83 + 1) = v54;
          _os_log_impl(&dword_267B93000, v48, v49, "#SharethisFlow asset.requestContentEditingInput with videoURL: %s", v55, 0xCu);
          v56 = v84;
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x26D60A7B0](v56, -1, -1);
          MEMORY[0x26D60A7B0](v55, -1, -1);
        }

        else
        {

          v65 = v13[1];
          v86 = (v13 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v87 = v65;
          (v65)(v17, v47);
        }

        sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
        v66 = v91;
        v85(v91, v20, v47);
        v67 = sub_267EF2AE8();
        v69 = v68;
        sub_267EF87E8();
        v70 = sub_267EF8768();
        v72 = v71;
        (v90[1])(v12, v9);
        v73 = sub_267E0C800(v66, v67, v69, v70, v72);
        v74 = [objc_opt_self() attachmentWithFile_];

        v75 = v93;
        swift_beginAccess();
        v76 = *(v75 + 16);
        *(v75 + 16) = v74;

        a4 = v92;
        swift_beginAccess();
        v77 = v74;
        MEMORY[0x26D608F90]();
        sub_267BDECD0(*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_267EF9368();
        swift_endAccess();

        (v87)(v20, v47);
      }

      else
      {

        a4 = v92;
      }
    }
  }

  swift_beginAccess();
  v78 = *(a4 + 16);

  v95(v79, 0);
}

void sub_267D1ED68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_267EF8EF8();

  v6 = a2;
  v4(a2, v5);
}

void sub_267D1EE0C()
{
  OUTLINED_FUNCTION_48_0();
  v53 = v1;
  v54 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_267EF2BA8();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC8, &unk_267F030E0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  sub_267BB170C(v5, &v50 - v21, &qword_28022ABC8, &unk_267F030E0);
  OUTLINED_FUNCTION_66();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    v24 = v22[8];
    v25 = v22[9];
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      *v29 = 0;
      _os_log_impl(&dword_267B93000, v27, v28, "#ShareThisFlow SharableMediaAttachmentUtils returned error downloading asset", v29, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267D24494();
    v30 = OUTLINED_FUNCTION_61_1();
    *v31 = v23;
    *(v31 + 8) = v24;
    *(v31 + 9) = v25;
    v3(v30, 1);
  }

  else
  {
    (*(v9 + 32))(v16, v22, v6);
    v32 = v6;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v33 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);
    (*(v9 + 16))(v14, v16, v6);
    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_48();
      v51 = v16;
      v37 = v36;
      v38 = OUTLINED_FUNCTION_52();
      v55 = v38;
      *v37 = 136315138;
      sub_267EF2AC8();
      v52 = v3;
      v39 = OUTLINED_FUNCTION_75_4();
      v40(v39, v6);
      v41 = OUTLINED_FUNCTION_108();
      v44 = sub_267BA33E8(v41, v42, v43);
      v32 = v6;
      v3 = v52;

      *(v37 + 4) = v44;
      _os_log_impl(&dword_267B93000, v34, v35, "#ShareThisFlow SharableMediaAttachmentUtils downloaded asset with URL: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_32_0();
      v16 = v51;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v45 = OUTLINED_FUNCTION_75_4();
      v46(v45, v6);
    }

    v47 = v53;
    swift_beginAccess();
    v48 = *(v47 + 16);

    v3(v49, 0);

    (v14)(v16, v32);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D1F1DC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_267EF93F8();
  OUTLINED_FUNCTION_79_5(v10, v13, v14, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_267D242D4;
  v15[5] = v11;
  v15[6] = &unk_267F04228;
  v15[7] = v2;

  OUTLINED_FUNCTION_10_5();
  sub_267E8FA18();
}

uint64_t sub_267D1F300(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = sub_267EF2BA8();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = sub_267EF8A08();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D1F46C, 0, 0);
}

uint64_t sub_267D1F46C()
{
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    v7 = v0[11];
    v8 = __swift_project_value_buffer(v6, qword_280240FB0);
    v0[21] = v8;
    (*(v5 + 16))(v4, v8, v6);
    sub_267EF3838();
    v9 = type metadata accessor for MessagesSELFPerformanceLogger();
    OUTLINED_FUNCTION_97(v9);
    v0[22] = OUTLINED_FUNCTION_96_3(104, v10, v11, v12, v0 + 2);
    __swift_project_boxed_opaque_existential_0((v7 + 224), *(v7 + 248));
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_267D1F5CC;

    return sub_267D65298();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267D1F5CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *(v1 + 72) = v3;
  *(v1 + 56) = v0;
  *(v1 + 64) = v4;
  v6 = *(v5 + 184);
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v10 + 200) = v9;

  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D1F6B4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  sub_267C7B358();
  if (v1)
  {
    v3 = *(v0 + 168);
    v4 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v6);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#ShareThisFlow getNowPlayingiTunesStoreIdentifier failed");
      OUTLINED_FUNCTION_26();
    }

    v9 = *(v0 + 176);
    v10 = *(v0 + 80);

    *v10 = 0;
    OUTLINED_FUNCTION_99_3();

    OUTLINED_FUNCTION_17();

    return v11();
  }

  else
  {
    v13 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_0((*(v0 + 88) + 224), *(*(v0 + 88) + 248));
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_267D1F824;
    v15 = *(v0 + 96);

    return sub_267D63778();
  }
}

uint64_t sub_267D1F824()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267D1F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void (*a11)(uint64_t), void (*a12)(uint64_t), uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_41();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = v24[12];
  v27 = v24[13];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v27);
  v30 = v24[21];
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v28, &qword_280229E20, &unk_267EFDCC0);
    v31 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v33);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v34, v35, "#ShareThisFlow getProductPageURL failed");
      OUTLINED_FUNCTION_26();
    }

    v36 = v24[22];
    v37 = v24[10];

    *v37 = 0;
  }

  else
  {
    v38 = v24[16];
    v39 = v24[14];
    (*(v39 + 32))(v24[17], v28, v27);
    v40 = *(v39 + 16);
    v41 = OUTLINED_FUNCTION_91_1();
    v40(v41);
    v42 = sub_267EF89F8();
    v43 = sub_267EF95C8();
    v44 = OUTLINED_FUNCTION_78_7(v43);
    v45 = v24[16];
    v46 = v24[13];
    v47 = v24[14];
    if (v44)
    {
      v48 = OUTLINED_FUNCTION_48();
      a10 = OUTLINED_FUNCTION_52();
      a13 = a10;
      *v48 = 136380675;
      a9 = sub_267EF2AC8();
      a11 = v40;
      v50 = v49;
      v51 = OUTLINED_FUNCTION_66_9();
      v52(v51);
      sub_267BA33E8(a9, v50, &a13);
      OUTLINED_FUNCTION_61_2();
      v40 = a11;

      *(v48 + 4) = v45;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v53, v54, "#ShareThisFlow fetchNowPlayingAttachment returning %{private}s");
      __swift_destroy_boxed_opaque_existential_0(a10);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v55 = OUTLINED_FUNCTION_66_9();
      v56(v55);
    }

    v57 = v24[22];
    v58 = v24[17];
    v59 = v24[15];
    v60 = v24[13];
    v61 = v24[10];
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v62 = OUTLINED_FUNCTION_108();
    v40(v62);
    v63 = sub_267E80978(v59);

    v64 = OUTLINED_FUNCTION_37_1();
    a12(v64);
    *v61 = v63;
  }

  OUTLINED_FUNCTION_99_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_267D1FB88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v151 = a2;
  v10 = sub_267EF6288();
  v152 = *(v10 - 8);
  v153 = v10;
  v11 = *(v152 + 64);
  MEMORY[0x28223BE20](v10);
  v150 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v150 - v15;
  v167 = sub_267EF8AE8();
  v161 = *(v167 - 8);
  v17 = *(v161 + 64);
  v18 = MEMORY[0x28223BE20](v167);
  v20 = (&v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v154 = &v150 - v22;
  MEMORY[0x28223BE20](v21);
  v158 = &v150 - v23;
  v24 = qword_280228818;

  if (v24 != -1)
  {
    swift_once();
  }

  v166 = v20;
  v25 = sub_267EF8A08();
  v168 = __swift_project_value_buffer(v25, qword_280240FB0);
  v26 = sub_267EF89F8();
  v27 = sub_267EF95D8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_267B93000, v26, v27, "#ShareThisFlow ContextualScreenResolution is enabled and there is a MentionResolver span match, checking for context entities", v28, 2u);
    MEMORY[0x26D60A7B0](v28, -1, -1);
  }

  v29 = a3[41];
  v30 = a3[42];
  __swift_project_boxed_opaque_existential_0(a3 + 38, v29);
  v31 = sub_267EF56B8();
  sub_267EBD060(v31, v29, v30);
  v33 = v32;

  v34 = sub_267EF89F8();
  v35 = sub_267EF95C8();
  v36 = os_log_type_enabled(v34, v35);
  v155 = a4;
  v156 = v16;
  v159 = a6;
  v157 = a5;
  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    *(v37 + 4) = *(v33 + 16);

    _os_log_impl(&dword_267B93000, v34, v35, "#ShareThisFlow RRAAS returned %{public}ld results", v37, 0xCu);
    MEMORY[0x26D60A7B0](v37, -1, -1);
  }

  else
  {
  }

  v39 = v166;
  v40 = v167;
  v160 = v33;
  v41 = *(v33 + 16);
  if (v41)
  {
    v42 = *(v161 + 16);
    v43 = v160 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v44 = *(v161 + 72);
    v165 = (v161 + 8);
    *&v38 = 136315138;
    v162 = v38;
    v163 = v44;
    v164 = v161 + 16;
    do
    {
      v42(v39, v43, v40);
      v45 = sub_267EF89F8();
      v46 = sub_267EF95D8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = v42;
        v49 = swift_slowAlloc();
        v169[0] = v49;
        *v47 = v162;
        sub_267EF8AD8();
        v50 = sub_267EF66B8();
        v52 = v51;

        (*v165)(v166, v167);
        v53 = v50;
        v40 = v167;
        v54 = sub_267BA33E8(v53, v52, v169);
        v39 = v166;

        *(v47 + 4) = v54;
        _os_log_impl(&dword_267B93000, v45, v46, "#ShareThisFlow rraasResult was %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        v55 = v49;
        v42 = v48;
        v44 = v163;
        MEMORY[0x26D60A7B0](v55, -1, -1);
        MEMORY[0x26D60A7B0](v47, -1, -1);
      }

      else
      {

        (*v165)(v39, v40);
      }

      v43 += v44;
      --v41;
    }

    while (v41);
  }

  v56 = v156;
  sub_267BBE6E0(v160, v156);

  if (__swift_getEnumTagSinglePayload(v56, 1, v40) != 1)
  {
    v59 = v161;
    v60 = v158;
    (*(v161 + 32))(v158, v56, v40);
    v61 = v154;
    (*(v59 + 16))(v154, v60, v40);
    v62 = sub_267EF89F8();
    v63 = sub_267EF95D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v169[0] = v65;
      *v64 = 136315138;
      sub_267EF8AD8();
      v66 = sub_267EF66B8();
      v68 = v67;

      v69 = *(v59 + 8);
      v69(v61, v167);
      v70 = sub_267BA33E8(v66, v68, v169);
      v40 = v167;

      *(v64 + 4) = v70;
      _os_log_impl(&dword_267B93000, v62, v63, "#ShareThisFlow first rraasResult was %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      v71 = v65;
      v60 = v158;
      MEMORY[0x26D60A7B0](v71, -1, -1);
      MEMORY[0x26D60A7B0](v64, -1, -1);
    }

    else
    {

      v69 = *(v59 + 8);
      v69(v61, v40);
    }

    sub_267EF8AD8();
    sub_267EF5B98();
    sub_267EF5E08();

    v72 = MEMORY[0x277D5EEF0];
    if (v169[0])
    {
      if (!sub_267EF5B78() || (v73 = sub_267EF6298(), v75 = v74, , !v75))
      {
LABEL_43:
        v57 = sub_267EF5B78();
        if (!v57)
        {
          v69(v60, v40);

LABEL_93:
          v58 = v155;
          goto LABEL_94;
        }

        v113 = sub_267EF6298();
        v107 = v114;

        if (v107)
        {
          if (!sub_267EF5B78())
          {
LABEL_51:

            v69(v60, v40);
LABEL_79:
            v57 = 0;
            goto LABEL_93;
          }

          sub_267EF56B8();

          v115 = sub_267EF66B8();
          v117 = v116;

          if (v115 == 0xD000000000000013 && 0x8000000267F17810 == v117)
          {

            v60 = v158;
          }

          else
          {
            v119 = sub_267EF9EA8();

            v60 = v158;
            if ((v119 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          v167 = v113;
          v130 = v152;
          v129 = v153;
          v131 = v150;
          (*(v152 + 104))(v150, *MEMORY[0x277D5EF28], v153);
          v132 = sub_267C28EF0(v151, v131);
          (*(v130 + 8))(v131, v129);
          if (v132)
          {

            v133 = sub_267EF89F8();
            v134 = sub_267EF95D8();

            if (os_log_type_enabled(v133, v134))
            {
              v135 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v169[0] = v136;
              *v135 = 136315138;
              v106 = v167;
              *(v135 + 4) = sub_267BA33E8(v167, v107, v169);
              _os_log_impl(&dword_267B93000, v133, v134, "#ShareThisFlow resolved common_Agent with value %s", v135, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v136);
              MEMORY[0x26D60A7B0](v136, -1, -1);
              v137 = v135;
              v60 = v158;
              MEMORY[0x26D60A7B0](v137, -1, -1);
            }

            else
            {

              v106 = v167;
            }

            v57 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
            if (!v57)
            {

              goto LABEL_91;
            }

LABEL_85:
            sub_267D142A4(v106, v107);
LABEL_91:

            goto LABEL_92;
          }

          v69(v60, v40);
        }

        else
        {
          v69(v60, v40);
        }

        goto LABEL_79;
      }

      if (sub_267EF5B78())
      {
        sub_267EF56B8();

        v76 = sub_267EF66B8();
        v78 = v77;

        if (v76 == 0xD000000000000012 && 0x8000000267F17830 == v78)
        {

          v40 = v167;
          v60 = v158;
        }

        else
        {
          v80 = sub_267EF9EA8();

          v40 = v167;
          v60 = v158;
          if ((v80 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v97 = *v72;
        v99 = v152;
        v98 = v153;
        v100 = v75;
        v101 = v69;
        v102 = v73;
        v103 = v150;
        (*(v152 + 104))(v150, v97, v153);
        v104 = sub_267C28EF0(v151, v103);
        v105 = v103;
        v106 = v102;
        v69 = v101;
        v107 = v100;
        (*(v99 + 8))(v105, v98);
        if (v104)
        {

          v108 = sub_267EF89F8();
          v109 = sub_267EF95D8();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v169[0] = v111;
            *v110 = 136315138;
            *(v110 + 4) = sub_267BA33E8(v106, v100, v169);
            _os_log_impl(&dword_267B93000, v108, v109, "#ShareThisFlow resolved common_Agent with value %s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v111);
            MEMORY[0x26D60A7B0](v111, -1, -1);
            v112 = v110;
            v60 = v158;
            MEMORY[0x26D60A7B0](v112, -1, -1);
          }

          v57 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
          if (!v57)
          {

LABEL_92:
            v69(v60, v40);
            goto LABEL_93;
          }

          goto LABEL_85;
        }
      }

LABEL_42:

      goto LABEL_43;
    }

    sub_267EF8AD8();
    sub_267EF5FC8();
    sub_267EF5E08();

    v166 = v69;
    if (v169[0])
    {
      v81 = sub_267EF5FB8();
      v58 = v155;
      if (v82)
      {
        v83 = v82;
        v165 = v81;
        v84 = *v72;
        v86 = v152;
        v85 = v153;
        v87 = v150;
        (*(v152 + 104))(v150, v84, v153);
        v88 = sub_267C28EF0(v151, v87);
        (*(v86 + 8))(v87, v85);
        if (v88)
        {

          v89 = sub_267EF89F8();
          v90 = sub_267EF95D8();

          v91 = os_log_type_enabled(v89, v90);
          v92 = v166;
          if (v91)
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v169[0] = v94;
            *v93 = 136315138;
            v95 = v165;
            *(v93 + 4) = sub_267BA33E8(v165, v83, v169);
            v96 = "#ShareThisFlow resolved common_PhoneNumber with value %s";
LABEL_60:
            _os_log_impl(&dword_267B93000, v89, v90, v96, v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v94);
            v127 = v94;
            v40 = v167;
            MEMORY[0x26D60A7B0](v127, -1, -1);
            MEMORY[0x26D60A7B0](v93, -1, -1);

            v128 = v158;
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        v69 = v166;
      }

      else
      {
      }
    }

    else
    {
      v58 = v155;
    }

    sub_267EF8AD8();
    sub_267EF6078();
    sub_267EF5E08();

    if (v169[0])
    {
      v120 = sub_267EF6068();
      if (v121)
      {
        v83 = v121;
        v165 = v120;
        v123 = v152;
        v122 = v153;
        v124 = v150;
        (*(v152 + 104))(v150, *MEMORY[0x277D5EF28], v153);
        v125 = sub_267C28EF0(v151, v124);
        (*(v123 + 8))(v124, v122);
        if (v125)
        {

          v89 = sub_267EF89F8();
          v90 = sub_267EF95D8();

          v126 = os_log_type_enabled(v89, v90);
          v92 = v166;
          if (v126)
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v169[0] = v94;
            *v93 = 136315138;
            v95 = v165;
            *(v93 + 4) = sub_267BA33E8(v165, v83, v169);
            v96 = "#ShareThisFlow resolved common_EmailAddress with value %s";
            goto LABEL_60;
          }

LABEL_66:

          v128 = v158;
          v95 = v165;
LABEL_67:
          v57 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
          if (v57)
          {
LABEL_68:
            sub_267D142A4(v95, v83);
LABEL_89:

            v92(v128, v40);
            goto LABEL_94;
          }

LABEL_88:

          goto LABEL_89;
        }

        v69 = v166;
      }

      else
      {
      }
    }

    sub_267EF8AD8();
    sub_267EF6198();
    sub_267EF5E08();

    if (v169[0])
    {
      v138 = sub_267EF6188();
      if (v139)
      {
        v83 = v139;
        v165 = v138;
        v141 = v152;
        v140 = v153;
        v142 = v150;
        (*(v152 + 104))(v150, *MEMORY[0x277D5EF70], v153);
        v143 = sub_267C28EF0(v151, v142);
        (*(v141 + 8))(v142, v140);
        if (v143)
        {

          v144 = sub_267EF89F8();
          v145 = sub_267EF95D8();

          v146 = os_log_type_enabled(v144, v145);
          v92 = v166;
          if (v146)
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v169[0] = v148;
            *v147 = 136315138;
            v95 = v165;
            *(v147 + 4) = sub_267BA33E8(v165, v83, v169);
            _os_log_impl(&dword_267B93000, v144, v145, "#ShareThisFlow resolved common_PostalAddress with value %s", v147, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v148);
            v149 = v148;
            v40 = v167;
            MEMORY[0x26D60A7B0](v149, -1, -1);
            MEMORY[0x26D60A7B0](v147, -1, -1);
          }

          else
          {

            v95 = v165;
          }

          v57 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
          v128 = v158;
          if (v57)
          {
            goto LABEL_68;
          }

          goto LABEL_88;
        }

        v166(v60, v40);
      }

      else
      {
        v69(v60, v40);
      }
    }

    else
    {
      v69(v60, v40);
    }

    v57 = 0;
    goto LABEL_94;
  }

  sub_267B9F98C(v56, &qword_2802294B0, &qword_267F001F0);
  v57 = 0;
  v58 = v155;
LABEL_94:

  sub_267D1949C(v57, v58, v157);
}

void sub_267D20DF0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v10))
  {
    v11 = OUTLINED_FUNCTION_32();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "#ShareThisFlow sharingAttachments is empty", v11, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267B9AFEC(v1 + 168, v83);
  v12 = v84;
  v13 = v85;
  __swift_project_boxed_opaque_existential_0(v83, v84);
  (*(v13 + 360))(v12, v13);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_0(v83);
  v84 = &type metadata for Features;
  v85 = sub_267BAFCAC();
  LOBYTE(v83[0]) = 16;
  v16 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v83);
  if (v16)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    OUTLINED_FUNCTION_89_6();
    v19 = v7 == v18 && v17 == v5;
    if (v19 || (OUTLINED_FUNCTION_95_0(), (OUTLINED_FUNCTION_80_3() & 1) != 0))
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_28:

    v66 = sub_267EF89F8();
    v67 = sub_267EF95D8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_48();
      v69 = OUTLINED_FUNCTION_52();
      v83[0] = v69;
      *v68 = 136315138;
      if (v5)
      {
      }

      v70 = OUTLINED_FUNCTION_95_0();
      v73 = sub_267BA33E8(v70, v71, v72);

      *(v68 + 4) = v73;
      OUTLINED_FUNCTION_30_11();
      _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {
    }

    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_89_6();
    *v80 = v79 + 31;
    v80[1] = v66;
    OUTLINED_FUNCTION_2_34(v81);
    OUTLINED_FUNCTION_94();
    v82 = swift_allocObject();
    OUTLINED_FUNCTION_19_14(v82);

    goto LABEL_34;
  }

  if (v15)
  {
    goto LABEL_28;
  }

LABEL_13:
  v21 = *(v1 + 192);
  v20 = *(v1 + 200);
  OUTLINED_FUNCTION_48_15((v1 + 168), v21);
  OUTLINED_FUNCTION_23();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v29 = v28 - v27;
  (*(v23 + 16))(v28 - v27);
  LOBYTE(v20) = sub_267E59398(v21, v20);
  (*(v23 + 8))(v29, v21);
  if (v20)
  {
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v31))
    {
      v32 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v32);
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_89_6();
    *v39 = v38 + 70;
    v39[1] = v30;
    OUTLINED_FUNCTION_2_34(v40);
    OUTLINED_FUNCTION_94();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_19_14(v41);

LABEL_34:
    v56 = 0;
LABEL_35:
    sub_267D21690(v56);
    goto LABEL_36;
  }

  if (v3)
  {
    if (qword_280228738 != -1)
    {
      swift_once();
    }

    v42 = OUTLINED_FUNCTION_91_1();
    if (sub_267BC2F78(v42, v43, v44))
    {

      v45 = sub_267EF89F8();
      v46 = sub_267EF95D8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_48();
        v48 = OUTLINED_FUNCTION_52();
        v83[0] = v48;
        *v47 = 136315138;
        v49 = OUTLINED_FUNCTION_91_1();
        *(v47 + 4) = sub_267BA33E8(v49, v50, v51);
        _os_log_impl(&dword_267B93000, v45, v46, "#ShareThisFlow we don't have a sharing attachment but the foreground app is known: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_45_2();
      }

      OUTLINED_FUNCTION_81_6();
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_89_6();
      *v53 = v52 + 68;
      v53[1] = v45;
      OUTLINED_FUNCTION_2_34(v54);
      OUTLINED_FUNCTION_94();
      v55 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v55);

      v56 = OUTLINED_FUNCTION_91_1();
      goto LABEL_35;
    }
  }

  v57 = sub_267EF89F8();
  v58 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v58))
  {
    v59 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v59);
    OUTLINED_FUNCTION_52_8();
    _os_log_impl(v60, v61, v62, v63, v64, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  *(v1 + 208) = 1;
  OUTLINED_FUNCTION_94();
  v65 = swift_allocObject();
  OUTLINED_FUNCTION_19_14(v65);

  sub_267D215F8(sub_267D241DC, v58);
LABEL_36:

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D21444(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{

  return sub_267D21BA0(a1, 1, a2, a2, a3, a4);
}

uint64_t sub_267D214B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if ((*(a2 + 65) & 1) == 0)
  {
    v6 = *(a2 + 56);
    if (v6 >= 3 && (*(a2 + 64) & 1) == 0)
    {
      sub_267D240AC(v6);
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v7 = sub_267EF8A08();
      __swift_project_value_buffer(v7, qword_280240FB0);
      v8 = sub_267EF89F8();
      v9 = sub_267EF95C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_267B93000, v8, v9, "#ShareThisFlow updating exitValue with screenshotFallback: true", v10, 2u);
        MEMORY[0x26D60A7B0](v10, -1, -1);
      }

      v11 = *(a2 + 56);
      v12 = *(a2 + 65);
      *(a2 + 56) = v6;
      v13 = *(a2 + 64);
      *(a2 + 64) = 1;
      sub_267D240BC(v11, v13, v12);
    }
  }

  return a3(a1);
}

uint64_t sub_267D215F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_94();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *(v2 + 120);

  sub_267E4B280();
}

void sub_267D21850()
{
  OUTLINED_FUNCTION_48_0();
  v23[1] = v0;
  v2 = v1;
  v3 = sub_267EF4228();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_61_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v17);
  v19 = (v23 - v18);
  v20 = OUTLINED_FUNCTION_63();
  sub_267BB170C(v20, v21, &qword_2802295B8, &qword_267EFDCB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v24[0] = *v19;
  }

  else
  {
    (*(v6 + 32))(v11, v19, v3);
    sub_267D219F0();
    (*(v6 + 8))(v11, v3);
  }

  v25 = EnumCaseMultiPayload == 1;
  v2(v24);
  sub_267B9F98C(v24, &unk_28022A480, &unk_267F029F0);
  OUTLINED_FUNCTION_47();
}

void sub_267D219F0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_26_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_61_4();
  v15(v14);
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_61_4();
  v19(v18);
  __swift_project_boxed_opaque_existential_0(v27, v27[3]);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v20 = sub_267EF4158();
  OUTLINED_FUNCTION_79_5(v11, v21, v22, v20);
  v23 = sub_267EF4CC8();
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24 = MEMORY[0x277D5C1D8];
  v3[3] = v23;
  v3[4] = v24;
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_267EF3F48();
  sub_267B9F98C(v25, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v11, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v27);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267D21BA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v12 = sub_267EF4028();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  sub_267BB170C(a1, v48, &unk_28022A480, &unk_267F029F0);
  if (v49)
  {
    v43 = v13;
    v44 = a5;
    v18 = *&v48[0];
    v19 = *(a3 + 56);
    v20 = *(a3 + 65);
    *(a3 + 56) = *&v48[0];
    v21 = a6;
    v22 = *(a3 + 64);
    *(a3 + 64) = 256;

    v45 = v21;

    v23 = v18;
    sub_267D240BC(v19, v22, v20);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);
    v25 = v18;
    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47[0] = v42;
      *v28 = 136315138;
      v46[0] = v18;
      v29 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v30 = sub_267EF9098();
      v32 = sub_267BA33E8(v30, v31, v47);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_267B93000, v26, v27, "#ShareThisFlow failed to make output: %s", v28, 0xCu);
      v33 = v42;
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x26D60A7B0](v33, -1, -1);
      MEMORY[0x26D60A7B0](v28, -1, -1);
    }

    v34 = v44;
    v35 = v43;
    sub_267EF4018();
    sub_267D214B0(v16, a4, v34);

    (*(v35 + 8))(v16, v12);
  }

  else
  {
    sub_267B9A5E8(v48, v47);
    v36 = *(a3 + 40);
    v37 = *(a3 + 48);
    __swift_project_boxed_opaque_existential_0((a3 + 16), v36);
    v38 = *(v37 + 32);

    v38(v46, v36, v37);
    __swift_project_boxed_opaque_existential_0(v46, v46[3]);
    v39 = swift_allocObject();
    *(v39 + 16) = a2 & 1;
    *(v39 + 24) = a3;
    *(v39 + 32) = sub_267D241E8;
    *(v39 + 40) = v17;

    sub_267EF4168();

    __swift_destroy_boxed_opaque_existential_0(v47);
    __swift_destroy_boxed_opaque_existential_0(v46);
  }
}

void sub_267D21FA8()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_267EF4028();
  v11 = OUTLINED_FUNCTION_58(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  sub_267BB170C(v9, v39, &unk_28022A480, &unk_267F029F0);
  if (v40)
  {
    v19 = *&v39[0];
    v20 = *(v1 + 56);
    v21 = *(v1 + 65);
    *(v1 + 56) = *&v39[0];
    v22 = *(v1 + 64);
    *(v1 + 64) = 256;
    v23 = v19;
    sub_267D240BC(v20, v22, v21);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v24 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
    v25 = v19;
    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();

    if (os_log_type_enabled(v26, v27))
    {
      v35 = OUTLINED_FUNCTION_48();
      v36 = OUTLINED_FUNCTION_52();
      v37[0] = v19;
      v38[0] = v36;
      *v35 = 136315138;
      v28 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v29 = sub_267EF9098();
      v31 = sub_267BA33E8(v29, v30, v38);

      *(v35 + 4) = v31;
      _os_log_impl(&dword_267B93000, v26, v27, "#ShareThisFlow failed to make output: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    sub_267EF4018();
    v5(v18);

    (*(v13 + 8))(v18, v10);
  }

  else
  {
    sub_267B9A5E8(v39, v38);
    v32 = *(v1 + 40);
    v33 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), v32);
    (*(v33 + 32))(v37, v32, v33);
    __swift_project_boxed_opaque_existential_0(v37, v37[3]);
    OUTLINED_FUNCTION_65_3();
    v34 = swift_allocObject();
    *(v34 + 16) = v7 & 1;
    *(v34 + 24) = v1;
    *(v34 + 32) = v5;
    *(v34 + 40) = v3;

    sub_267EF4168();

    __swift_destroy_boxed_opaque_existential_0(v38);
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267D222E8(void *a1, char a2, char a3, uint64_t a4, void (*a5)(void))
{
  v10 = sub_267EF4028();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = *(a4 + 56);
    v16 = *(a4 + 65);
    *(a4 + 56) = a1;
    v17 = *(a4 + 64);
    *(a4 + 64) = 256;
    v18 = a1;
    sub_267D240BC(v15, v17, v16);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = a1;
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();
    sub_267C16E28(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = a1;
      v33 = v31;
      *v23 = 136315138;
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v25 = sub_267EF9098();
      v27 = a5;
      v28 = sub_267BA33E8(v25, v26, &v33);

      *(v23 + 4) = v28;
      a5 = v27;
      _os_log_impl(&dword_267B93000, v21, v22, "#ShareThisFlow error prompting for screenshot: %s", v23, 0xCu);
      v29 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D60A7B0](v29, -1, -1);
      MEMORY[0x26D60A7B0](v23, -1, -1);
    }
  }

  else if (a3)
  {
    sub_267D14DAC();
    return;
  }

  sub_267EF4018();
  a5(v14);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_267D22594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_45_2();
  }

  v92 = &type metadata for Features;
  v93 = sub_267BAFCAC();
  LOBYTE(v91) = 16;
  v14 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v91);
  if (v14)
  {
    goto LABEL_20;
  }

  sub_267B9AFEC((v3 + 21), &v91);
  v15 = v93;
  __swift_project_boxed_opaque_existential_0(&v91, v92);
  v16 = *(v15 + 368);
  v17 = OUTLINED_FUNCTION_63();
  v18(v17);
  if (!v19)
  {
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0(&v91);
  sub_267B9AFEC((v3 + 21), &v91);
  v20 = v93;
  __swift_project_boxed_opaque_existential_0(&v91, v92);
  v21 = *(v20 + 368);
  v22 = OUTLINED_FUNCTION_63();
  v24 = v23(v22);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_0(&v91);
    goto LABEL_15;
  }

  if (v24 == 0xD000000000000013 && v25 == 0x8000000267F10280)
  {

LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(&v91);
LABEL_20:
    v39 = [objc_allocWithZone(MEMORY[0x277D79EA0]) initWithSurface_];
    v40 = [objc_allocWithZone(MEMORY[0x277D7A170]) init];
    v41 = sub_267EF89F8();
    v42 = sub_267EF95D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *&v91 = swift_slowAlloc();
      *v43 = 136315394;
      v87 = a1;
      v44 = [v40 identifier];
      v86 = v39;
      v45 = a2;
      v46 = sub_267EF9028();
      v48 = v47;

      v49 = sub_267BA33E8(v46, v48, &v91);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      v50 = [v40 displayString];
      v51 = sub_267EF9028();
      v53 = v52;

      v54 = v51;
      a2 = v45;
      v39 = v86;
      v55 = sub_267BA33E8(v54, v53, &v91);
      a1 = v87;

      *(v43 + 14) = v55;
      OUTLINED_FUNCTION_52_8();
      _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    v61 = swift_allocObject();
    v62 = sub_267BA9F38(0, &unk_28022ADF0, 0x277D79EC8);
    v63 = v40;
    v64 = v39;
    v65 = OUTLINED_FUNCTION_73();
    v61[2] = sub_267D22C98(v65, v66);
    v61[5] = v62;
    v61[6] = &off_2878D2818;
    sub_267BB170C((v3 + 10), &v89, &qword_28022ADD8, &unk_267F04200);
    if (v90)
    {
      sub_267B9A5E8(&v89, &v91);
      __swift_destroy_boxed_opaque_existential_0(v61 + 2);
      sub_267B9A5E8(&v91, (v61 + 2));
    }

    else
    {
      sub_267B9F98C(&v89, &qword_28022ADD8, &unk_267F04200);
    }

    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    OUTLINED_FUNCTION_94();
    v67 = swift_allocObject();
    *(v67 + 2) = v3;
    *(v67 + 3) = a1;
    *(v67 + 4) = a2;
    v68 = a2;
    v69 = type metadata accessor for ScreenshotDelegate();
    v70 = objc_allocWithZone(v69);
    v71 = &v70[OBJC_IVAR____TtC16SiriMessagesFlowP33_AC72C49DCF17A2EF063087622590466618ScreenshotDelegate_callback];
    *v71 = sub_267D24160;
    v71[1] = v67;
    v88.receiver = v70;
    v88.super_class = v69;

    v72 = objc_msgSendSuper2(&v88, sel_init);
    swift_unownedRelease();
    v73 = v3[27];
    v3[27] = v72;
    v74 = v72;

    v75 = v61[6];
    __swift_mutable_project_boxed_opaque_existential_1((v61 + 2), v61[5]);
    v76 = *(v75 + 16);
    v77 = OUTLINED_FUNCTION_54_0();
    v78(v77);
    v79 = [objc_allocWithZone(MEMORY[0x277D47B18]) init];
    [v79 setShouldHideSiri_];
    v80 = v3[6];
    __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
    v81 = *(v80 + 16);
    v82 = OUTLINED_FUNCTION_54_0();
    v83(v82);
    __swift_project_boxed_opaque_existential_0(&v91, v92);
    OUTLINED_FUNCTION_65_3();
    v84 = swift_allocObject();
    v84[2] = v61;
    v84[3] = v3;
    v84[4] = a1;
    v84[5] = v68;
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);

    sub_267EF4268();

    __swift_destroy_boxed_opaque_existential_0(&v91);
  }

  v27 = OUTLINED_FUNCTION_80_3();

  __swift_destroy_boxed_opaque_existential_0(&v91);
  if (v27)
  {
    goto LABEL_20;
  }

LABEL_15:
  v28 = sub_267EF89F8();
  v29 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v29))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_18_2();
  }

  OUTLINED_FUNCTION_81_6();
  v35 = OUTLINED_FUNCTION_61_1();
  *v36 = 0xD000000000000032;
  v36[1] = v28;
  OUTLINED_FUNCTION_2_34(v35);
  OUTLINED_FUNCTION_94();
  v37 = swift_allocObject();
  v37[2] = v3;
  v37[3] = a1;
  v37[4] = a2;

  v38 = OUTLINED_FUNCTION_10_5();
  sub_267D21690(v38);
}

id sub_267D22C98(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContextualAction:a1 actionContext:a2];

  return v4;
}

uint64_t sub_267D22CF4(unint64_t a1, char a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v84 = a4;
  v9 = sub_267EF8818();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v9);
  v78 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267EF2BA8();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v72 - v17;
  v18 = sub_267EF4028();
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = *(v82 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v22 = *(a3 + 40);
  v23 = *(a3 + 48);
  __swift_project_boxed_opaque_existential_0((a3 + 16), v22);
  (*(v23 + 16))(v85, v22, v23);

  __swift_project_boxed_opaque_existential_0(v85, v85[3]);
  v24 = [objc_allocWithZone(MEMORY[0x277D47B18]) init];
  sub_267EF4248();

  __swift_destroy_boxed_opaque_existential_0(v85);
  swift_unownedRetainStrong();
  v25 = *(a3 + 216);
  *(a3 + 216) = 0;

  if (a2)
  {
    swift_unownedRetainStrong();
    v26 = *(a3 + 56);
    v27 = *(a3 + 65);
    *(a3 + 56) = a1;
    v28 = *(a3 + 64);
    *(a3 + 64) = 256;
    v29 = a1;
    sub_267D240BC(v26, v28, v27);

    sub_267EF4018();
    v84(v21);
  }

  else
  {
    v75 = v21;
    v30 = v84;
    if (a1 && sub_267BAF0DC(a1))
    {
      sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
      v74 = a5;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26D609870](0, a1);
      }

      else
      {
        v31 = *(a1 + 32);
      }

      v32 = v31;
      v33 = v81;
      v34 = v77;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v35 = sub_267EF8A08();
      __swift_project_value_buffer(v35, qword_280240FB0);
      v36 = v32;
      v37 = sub_267EF89F8();
      v38 = sub_267EF95D8();

      v39 = &off_279C2E000;
      if (os_log_type_enabled(v37, v38))
      {
        v40 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v85[0] = v73;
        *v40 = 136315138;
        v41 = v38;
        v42 = [v36 fileURL];
        sub_267EF2B48();

        v43 = sub_267EF2AC8();
        v45 = v44;
        v46 = v76;
        (*(v76 + 8))(v81, v34);
        v47 = sub_267BA33E8(v43, v45, v85);
        v33 = v81;

        *(v40 + 4) = v47;
        v48 = v41;
        v39 = &off_279C2E000;
        _os_log_impl(&dword_267B93000, v37, v48, "#ShareThisFlow got contextual action output file with URL: %s", v40, 0xCu);
        v49 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x26D60A7B0](v49, -1, -1);
        MEMORY[0x26D60A7B0](v40, -1, -1);
      }

      else
      {

        v46 = v76;
      }

      sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
      v55 = [v36 v39[436]];
      sub_267EF2B48();

      v56 = [v36 v39[436]];
      sub_267EF2B48();

      v57 = v33;
      v58 = sub_267EF2AE8();
      v60 = v59;
      (*(v46 + 8))(v16, v34);
      v61 = v78;
      sub_267EF87D8();
      v62 = sub_267EF8768();
      v64 = v63;
      (*(v79 + 8))(v61, v80);
      v65 = sub_267E0C800(v57, v58, v60, v62, v64);
      v66 = [objc_opt_self() attachmentWithFile_];
      swift_unownedRetainStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_267EFCA40;
      *(v67 + 32) = v66;
      v68 = *(a3 + 56);
      LOBYTE(v58) = *(a3 + 65);
      *(a3 + 56) = v67;
      v69 = *(a3 + 64);
      *(a3 + 64) = 0;
      v70 = v66;
      sub_267D240BC(v68, v69, v58);

      v21 = v75;
      sub_267EF4018();
      v84(v21);
    }

    else
    {
      swift_unownedRetainStrong();
      sub_267C266B0();
      v50 = swift_allocError();
      *v51 = 0xD000000000000040;
      v51[1] = 0x8000000267F17580;
      v52 = *(a3 + 56);
      v53 = *(a3 + 65);
      *(a3 + 56) = v50;
      v54 = *(a3 + 64);
      *(a3 + 64) = 0;
      *(a3 + 65) = 1;
      sub_267D240BC(v52, v54, v53);

      v21 = v75;
      sub_267EF4018();
      v30(v21);
    }
  }

  return (*(v82 + 8))(v21, v83);
}

uint64_t sub_267D23404(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v59 = a5;
  v56 = a3;
  v54 = a2;
  v7 = sub_267EF4028();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_267EF43D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  sub_267BB170C(a1, &v50 - v20, &qword_28022AE08, &unk_267F04210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = a4;
    (*(v11 + 32))(v17, v21, v10);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v22 = sub_267EF8A08();
    __swift_project_value_buffer(v22, qword_280240FB0);
    v23 = *(v11 + 16);
    v23(v15, v17, v10);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v52 = v26;
      v53 = swift_slowAlloc();
      *v26 = 138412290;
      sub_267D2483C(&unk_28022AE10, MEMORY[0x277D5BE90]);
      swift_allocError();
      v23(v27, v15, v10);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = *(v11 + 8);
      v51 = v23;
      v29(v15, v10);
      v30 = v52;
      v31 = v53;
      *(v52 + 1) = v28;
      *v31 = v28;
      v32 = v25;
      v33 = v30;
      _os_log_impl(&dword_267B93000, v24, v32, "#ShareThisFlow SAUISetUpdateMask returned error: %@", v30, 0xCu);
      sub_267B9F98C(v31, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v31, -1, -1);
      MEMORY[0x26D60A7B0](v33, -1, -1);

      v34 = v51;
    }

    else
    {

      v29 = *(v11 + 8);
      v34 = v23;
      v29(v15, v10);
    }

    sub_267D2483C(&unk_28022AE10, MEMORY[0x277D5BE90]);
    v43 = swift_allocError();
    v34(v44, v17, v10);
    v45 = v56;
    v46 = *(v56 + 56);
    v47 = *(v56 + 65);
    *(v56 + 56) = v43;
    v48 = *(v45 + 64);
    *(v45 + 64) = 256;
    sub_267D240BC(v46, v48, v47);
    v49 = v55;
    sub_267EF4018();
    v54(v49);
    (*(v57 + 8))(v49, v58);
    return (v29)(v17, v10);
  }

  else
  {
    sub_267B9F98C(v21, &qword_28022AE08, &unk_267F04210);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v35 = sub_267EF8A08();
    __swift_project_value_buffer(v35, qword_280240FB0);
    v36 = sub_267EF89F8();
    v37 = sub_267EF95D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_267B93000, v36, v37, "#ShareThisFlow SAUISetUpdateMask to hide succeeded", v38, 2u);
      MEMORY[0x26D60A7B0](v38, -1, -1);
    }

    v39 = v54;
    swift_beginAccess();
    sub_267B9AFEC(v39 + 16, v60);
    v40 = v61;
    v41 = v62;
    __swift_project_boxed_opaque_existential_0(v60, v61);
    (*(v41 + 32))(v40, v41);
    return __swift_destroy_boxed_opaque_existential_0(v60);
  }
}

void sub_267D239F0()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_54_0();
  v4(v3);
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  OUTLINED_FUNCTION_54_0();
  sub_267EF45A8();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
    v6 = v0[59];
    v7 = *(v0[60] + 8);
    v8 = OUTLINED_FUNCTION_108();
    v9(v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v10 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v12))
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v13);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_267D23B2C()
{
  sub_267D240BC(*(v0 + 56), *(v0 + 64), *(v0 + 65));

  sub_267B9F98C(v0 + 80, &qword_28022ADD8, &unk_267F04200);
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9F98C(v0 + 344, &unk_28022ADE0, &qword_267F0AA60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 384));
  return __swift_destroy_boxed_opaque_existential_0((v0 + 424));
}

uint64_t sub_267D23BD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267D240BC(*(v0 + 56), *(v0 + 64), *(v0 + 65));

  sub_267B9F98C(v0 + 80, &qword_28022ADD8, &unk_267F04200);
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9F98C(v0 + 344, &unk_28022ADE0, &qword_267F0AA60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 384));
  __swift_destroy_boxed_opaque_existential_0((v0 + 424));
  return v0;
}

uint64_t sub_267D23C80()
{
  sub_267D23BD0();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ShareThisFlow.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ShareThisFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow15ShareThisResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267D23E54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 9))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267D23EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_267D23F04(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_267D23F38()
{
  result = qword_28022ADD0;
  if (!qword_28022ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ADD0);
  }

  return result;
}

uint64_t sub_267D23FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267BAEBEC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

id sub_267D24080@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 65);
  *a1 = v3;
  v5 = *(v2 + 64);
  *(a1 + 8) = v5;
  *(a1 + 9) = v4;
  return sub_267D240A0(v3, v5, v4);
}

id sub_267D240A0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_267D240AC(a1);
  }
}

unint64_t sub_267D240AC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void sub_267D240BC(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_267D240C8(a1);
  }
}

unint64_t sub_267D240C8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

id sub_267D240D8()
{
  v1 = sub_267EF8FF8();

  v2 = sub_267EF8FF8();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

void sub_267D241BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_267D21850();
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_267D24244()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  v4[1] = sub_267BBD07C;

  return sub_267D1F300(v2, v0);
}

uint64_t sub_267D242D4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_267D24300()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_19(v4);
  OUTLINED_FUNCTION_36_0();

  return sub_267E99430();
}

uint64_t sub_267D24398()
{
  OUTLINED_FUNCTION_31_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_19(v3);

  return sub_267D1C930(v5, v6, v7, v8, v9, v1);
}

uint64_t objectdestroy_40Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

unint64_t sub_267D24494()
{
  result = qword_28022AE80;
  if (!qword_28022AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AE80);
  }

  return result;
}

uint64_t sub_267D244E8(void *a1)
{
  v2 = [a1 associatedBundleIdentifier];

  if (v2)
  {
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_108();
}

uint64_t sub_267D24554(void *a1)
{
  v1 = [a1 associatedBundleIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267D245B4(void *a1)
{
  v2 = [a1 applicationContexts];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022AEE8, 0x277CEF170);
  v3 = sub_267EF92F8();

  return v3;
}

unint64_t sub_267D2462C()
{
  result = qword_28022AEB0;
  if (!qword_28022AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AEA8, &qword_267F04270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AEB0);
  }

  return result;
}

uint64_t objectdestroy_85Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v4, v5, 7);
}

uint64_t sub_267D246E0()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_19(v4);
  OUTLINED_FUNCTION_36_0();

  return sub_267D16210(v6, v7, v8, v9, v10, v11);
}

void sub_267D24778()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_267C04D24();
}

uint64_t objectdestroy_37Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_267D2483C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for EditMessageCATs()
{
  result = qword_28022AFD0;
  if (!qword_28022AFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267D24940()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BF1CB4;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D249F0(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267D24A08()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x6552656E4F736168;
  *(v2 + 40) = 0xEF746E6569706963;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BF0];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_1_5(v3);
  *(v0 + 32) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_267D24B30;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return v9(v6, 0xD00000000000002DLL, 0x8000000267F179C0, v2);
}

uint64_t sub_267D24B30()
{
  OUTLINED_FUNCTION_12();
  v3 = *(*v1 + 40);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v2;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB73B4, 0, 0);
  }

  else
  {
    v5 = *(v2 + 32);

    OUTLINED_FUNCTION_17();

    return v6();
  }
}

uint64_t sub_267D24C5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267D24C74()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v9 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_267D24DBC;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, 0xD00000000000002DLL, 0x8000000267F17990, v2);
}

uint64_t sub_267D24DBC()
{
  OUTLINED_FUNCTION_12();
  v3 = *(*v1 + 48);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CE920C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 40);

    OUTLINED_FUNCTION_17();

    return v6();
  }
}

uint64_t sub_267D24EE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D24F98()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D25048()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D250F8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D251A8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267CFB43C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267D25258(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267D252AC(a1, a2);
}

uint64_t sub_267D252AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267BB2D24(a1);
  return v12;
}

id sub_267D25420()
{
  v0 = sub_267EF67F8();
  result = [objc_allocWithZone(v0) init];
  qword_280240AD8 = v0;
  unk_280240AE0 = &off_2878D78B8;
  qword_280240AC0 = result;
  return result;
}

id sub_267D25470()
{
  result = sub_267D25490();
  qword_280240AE8 = result;
  return result;
}

id sub_267D25490()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  [v0 setCountLimit_];
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277CBD140];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_267D25914;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_267D256EC;
  v8[3] = &block_descriptor_12;
  v4 = _Block_copy(v8);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();

  return v5;
}

id sub_267D255F4(uint64_t a1, void *a2)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267B93000, v4, v5, "#INObjects+DialogObjectConversion received a contact change notification, clearing cache", v6, 2u);
    MEMORY[0x26D60A7B0](v6, -1, -1);
  }

  return [a2 removeAllObjects];
}

uint64_t sub_267D256EC(uint64_t a1)
{
  v2 = sub_267EF2748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_267EF2738();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_267D257E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  result = [v0 setCountLimit_];
  qword_280240AF0 = v0;
  return result;
}

uint64_t sub_267D25830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 1;
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
    case 8:
      sub_267EF90F8();
      v3 = 0;
      break;
    default:
      break;
  }

  v4 = sub_267EF79B8();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

_BYTE *storeEnumTagSinglePayload for NetworkErrors(_BYTE *result, int a2, int a3)
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

unint64_t sub_267D259CC()
{
  result = qword_28022AFE0;
  if (!qword_28022AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AFE0);
  }

  return result;
}

uint64_t type metadata accessor for MessageEntityRepresentation()
{
  result = qword_28022AFE8;
  if (!qword_28022AFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267D25AAC(uint64_t a1)
{
  v3 = sub_267EF7F68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_267EF7FC8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_267D25BB4()
{
  sub_267EF7FB8();

  return swift_deallocClassInstance();
}

uint64_t sub_267D25CC0(uint64_t a1)
{
  v3 = sub_267D26000(&qword_28022B038);

  return MEMORY[0x28213DE00](a1, v1, v3);
}

uint64_t sub_267D25D1C()
{
  v1 = sub_267D26000(&qword_28022B028);

  return MEMORY[0x28213DB58](v0, v1);
}

uint64_t sub_267D25D8C(uint64_t a1)
{
  v3 = sub_267D26000(&qword_28022B038);

  return MEMORY[0x28213DDE8](a1, v1, v3);
}

uint64_t sub_267D25DE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267EF7F88();
  *a1 = result;
  return result;
}

uint64_t sub_267D26000(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessageEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267D26048(uint64_t a1)
{
  if ((a1 - 2000) >= 6)
  {
    return 6;
  }

  else
  {
    return a1 - 2000;
  }
}

_BYTE *storeEnumTagSinglePayload for TapbackRepresentation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267D26144()
{
  result = qword_28022B040;
  if (!qword_28022B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B040);
  }

  return result;
}

uint64_t sub_267D261BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267D26048(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_267D261E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267D2605C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_267D2623C(uint64_t a1)
{
  v2 = sub_267D26690();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_267D26278(uint64_t a1)
{
  v2 = sub_267D26690();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_267D262B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267D26528();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_267D26300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267D26690();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_267D26368(uint64_t a1, uint64_t a2)
{
  v4 = sub_267D26528();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_267D263B8()
{
  result = qword_28022B048;
  if (!qword_28022B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B048);
  }

  return result;
}

unint64_t sub_267D26410()
{
  result = qword_28022B050;
  if (!qword_28022B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B050);
  }

  return result;
}

unint64_t sub_267D26468()
{
  result = qword_28022B058;
  if (!qword_28022B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022B060, &qword_267F04798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B058);
  }

  return result;
}

unint64_t sub_267D264D0()
{
  result = qword_28022B068;
  if (!qword_28022B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B068);
  }

  return result;
}

unint64_t sub_267D26528()
{
  result = qword_28022B070;
  if (!qword_28022B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B070);
  }

  return result;
}

unint64_t sub_267D26580()
{
  result = qword_28022B078;
  if (!qword_28022B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B078);
  }

  return result;
}

unint64_t sub_267D265D8()
{
  result = qword_28022B080;
  if (!qword_28022B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B080);
  }

  return result;
}

unint64_t sub_267D2663C()
{
  result = qword_28022B088;
  if (!qword_28022B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B088);
  }

  return result;
}

unint64_t sub_267D26690()
{
  result = qword_28022B090;
  if (!qword_28022B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B090);
  }

  return result;
}

uint64_t sub_267D266E8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);

  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    *v4 = 136315138;
    v11 = *(v0 + 16);
    v12 = v5;
    sub_267EF7C38();
    sub_267D2707C(&qword_28022A060, 255, MEMORY[0x277D55380]);
    v6 = sub_267EF9E58();
    v8 = sub_267BA33E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_267B93000, v2, v3, "#FixedAppResolutionOnDeviceFlowStrategy selecting %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4458();
  v9 = *(v0 + 16);
  return sub_267EF4438();
}