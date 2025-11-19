uint64_t sub_267C0C9A4()
{
  OUTLINED_FUNCTION_62();
  sub_267BB170C(v0[7] + 112, (v0 + 2), &qword_280228F90, &qword_267EFC0A0);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v3 = *(OUTLINED_FUNCTION_54() + 40);
    OUTLINED_FUNCTION_34_2();
    v23 = (v4 + *v4);
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_267C0CC38;

    return v23(v1, v2);
  }

  else
  {
    sub_267B9F98C((v0 + 2), &qword_280228F90, &qword_267EFC0A0);
    v9 = v0[8];
    sub_267C0C2B8(v9);
    v10 = sub_267EF79B8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
    sub_267B9F98C(v9, &unk_28022AE30, &qword_267EFC0B0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v14))
    {
      v15 = EnumTagSinglePayload != 1;
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      *(v16 + 8) = 1024;
      *(v16 + 10) = v15;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v17, v18, v19, v20, v16, 0xEu);
      OUTLINED_FUNCTION_32_0();
    }

    v21 = v0[8];

    v22 = v0[1];

    return v22(0);
  }
}

uint64_t sub_267C0CC38()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C0CD20()
{
  OUTLINED_FUNCTION_62();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  sub_267C0C2B8(v2);
  v3 = sub_267EF79B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v6 = sub_267EF89F8();
  v7 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v1;
    *(v8 + 8) = 1024;
    *(v8 + 10) = EnumTagSinglePayload != 1;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v9, v10, v11, v12, v8, 0xEu);
    OUTLINED_FUNCTION_29_1();
  }

  v13 = *(v0 + 64);

  v14 = OUTLINED_FUNCTION_37();

  return v15(v14);
}

uint64_t sub_267C0CE88()
{
  OUTLINED_FUNCTION_12();
  v1[96] = v0;
  v1[95] = v2;
  v1[94] = v3;
  v1[93] = v4;
  v1[92] = v5;
  v6 = sub_267EF79B8();
  v1[97] = v6;
  v7 = *(v6 - 8);
  OUTLINED_FUNCTION_34_2();
  v1[98] = v8;
  v10 = *(v9 + 64) + 15;
  v1[99] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v12 = sub_267EF2E38();
  v1[104] = v12;
  v13 = *(v12 - 8);
  OUTLINED_FUNCTION_34_2();
  v1[105] = v14;
  v16 = *(v15 + 64) + 15;
  v1[106] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267C0D7C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 880);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = v2[12];
  v2[31] = v2[11];
  v2[32] = v6;
  v7 = v2[14];
  v2[33] = v2[13];
  v2[34] = v7;
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C0DD7C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 896);
  *v2 = *v0;
  *(v1 + 169) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C0DE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  *(v16 + 170) = *(v16 + 169);
  v17 = *(v16 + 736);
  if (*(v17 + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08D10);
    v42 = v18;
    v19 = swift_task_alloc();
    *(v16 + 904) = v19;
    *v19 = v16;
    OUTLINED_FUNCTION_1_12(v19);
    OUTLINED_FUNCTION_15();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, v42, a14, a15, a16);
  }

  else
  {
    v29 = *(v16 + 888);
    v40 = *(v16 + 864);
    v41 = *(v16 + 856);
    v39 = *(v16 + 800);
    v30 = *(v16 + 792);
    v31 = *(v16 + 768);
    v32 = *(v16 + 752);
    v33 = *(v16 + 744);
    v34 = __swift_project_boxed_opaque_existential_0(*(v16 + 760), *(*(v16 + 760) + 24));
    v43 = *v32;
    sub_267BB8364();
    v35 = swift_task_alloc();
    *(v16 + 944) = v35;
    v35[2] = v32;
    v35[3] = v29;
    v35[4] = v31;
    v35[5] = v30;
    v35[6] = v40;
    v35[7] = v39;
    v35[8] = v41;
    v35[9] = v33;
    v35[10] = v17;
    v36 = *v34;
    v37 = swift_task_alloc();
    *(v16 + 952) = v37;
    *v37 = v16;
    OUTLINED_FUNCTION_2_12(v37);
    OUTLINED_FUNCTION_15();

    return sub_267D43BF4();
  }
}

uint64_t sub_267C0DFE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 904);
  *v2 = *v0;
  *(v1 + 912) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C0E0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_41();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_57_2();
  a22 = v24;
  v27 = *(v24 + 912);
  v28 = *(v24 + 872);

  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v24 + 912);
    v32 = OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_52();
    a13 = v33;
    *v32 = 136315138;
    *(v24 + 728) = v31;
    type metadata accessor for MessagesSpokenDialogContext();
    sub_267C103DC();
    sub_267EF7B58();
    v34 = sub_267EF8F08();
    v36 = v35;

    v37 = sub_267BA33E8(v34, v36, &a13);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_267B93000, v29, v30, "#LocationComponent SpokenDialogContext: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v38 = *(v24 + 888);
  v39 = *(v24 + 864);
  v52 = *(v24 + 856);
  v53 = *(v24 + 912);
  v40 = *(v24 + 800);
  v41 = *(v24 + 792);
  v42 = *(v24 + 768);
  v43 = *(v24 + 752);
  v44 = *(v24 + 736);
  v45 = __swift_project_boxed_opaque_existential_0(*(v24 + 760), *(*(v24 + 760) + 24));
  v54 = *v43;
  sub_267BB8364();
  v46 = swift_task_alloc();
  *(v24 + 920) = v46;
  v46[2] = v43;
  v46[3] = v38;
  v46[4] = v42;
  v46[5] = v41;
  v46[6] = v39;
  v46[7] = v40;
  v46[8] = v52;
  v46[9] = v53;
  v46[10] = v44;
  v47 = *v45;
  v48 = swift_task_alloc();
  *(v24 + 928) = v48;
  *v48 = v24;
  v48[1] = sub_267C0E310;
  v49 = *(v24 + 170);
  OUTLINED_FUNCTION_15();

  return sub_267D463C4();
}

uint64_t sub_267C0E310()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[85] = v1;
  v2[86] = v4;
  v2[87] = v0;
  v6 = *(v5 + 928);
  v7 = *(v5 + 920);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 936) = v0;

  if (v0)
  {
    v11 = sub_267C0E584;
  }

  else
  {
    v11 = sub_267C0E434;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_267C0E434()
{
  OUTLINED_FUNCTION_53();
  v5 = v0[114];

  v6 = v0[86];
  v7 = v0[92];
  v8 = *(v7 + 416);
  if (v8)
  {
    v9 = v0[111];
    v10 = v0[107];
    if (*(v7 + 426))
    {
      v11 = v0[111];
    }

    else
    {
      v14 = *(v8 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v12 = v0[111];
    v13 = v0[107];
  }

  OUTLINED_FUNCTION_30();
  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_267C0E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v19 = *(v15 + 912);

  v20 = *(v15 + 936);
  OUTLINED_FUNCTION_19_1();

  sub_267B9F98C(v17, &unk_28022AE30, &qword_267EFC0B0);
  (*(v14 + 8))(v18, v16);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267C0E664()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[88] = v1;
  v2[89] = v4;
  v2[90] = v0;
  v6 = *(v5 + 952);
  v7 = *(v5 + 944);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 960) = v0;

  if (v0)
  {
    v11 = sub_267C0E8D0;
  }

  else
  {
    v11 = sub_267C0E788;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_267C0E788()
{
  OUTLINED_FUNCTION_53();
  v5 = v0[89];
  v6 = v0[92];
  v7 = *(v6 + 416);
  if (v7)
  {
    v8 = v0[111];
    v9 = v0[107];
    if (*(v6 + 426))
    {
      v10 = v0[111];
    }

    else
    {
      v13 = *(v7 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v11 = v0[111];
    v12 = v0[107];
  }

  OUTLINED_FUNCTION_30();
  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_267C0E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v19 = *(v15 + 960);
  OUTLINED_FUNCTION_19_1();

  sub_267B9F98C(v17, &unk_28022AE30, &qword_267EFC0B0);
  (*(v14 + 8))(v18, v16);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267C0E9A8(char a1)
{
  result = 0x6E6F697461636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6F4C646572616873;
      break;
    case 2:
      result = 0x794D646E6966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C0EA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v15;
  v8[16] = v16;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C0EB84, 0, 0);
}

void sub_267C0EB84()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  SpokenLocationComponentParameters = type metadata accessor for SearchForMessagesReadSpokenLocationComponentParameters(0);
  *(v0 + 208) = SpokenLocationComponentParameters;
  v5 = SpokenLocationComponentParameters[7];
  sub_267B9F98C(v2 + v5, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v7 = ComponentPatternCommonParameters[5];
  v8 = sub_267EF79B8();
  *(v0 + 216) = v8;
  OUTLINED_FUNCTION_22(v8);
  v81 = *(v9 + 16);
  v80 = v9 + 16;
  v81(v2 + v5, v3 + v7, v8);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  OUTLINED_FUNCTION_38_2();
  sub_267EF8348();
  v83 = v8;
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v15 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_46_1(SpokenLocationComponentParameters[13]);
  *(v0 + 32) = *(v2 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_49_0();
  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v21 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v83);
  OUTLINED_FUNCTION_46_1(SpokenLocationComponentParameters[14]);
  *(v0 + 40) = *(v2 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_49_0();
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  v26 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v83);
  OUTLINED_FUNCTION_46_1(SpokenLocationComponentParameters[17]);
  *(v0 + 48) = *(v2 + ComponentPatternCommonParameters[9]);
  v29 = OUTLINED_FUNCTION_49_0();
  v61 = *(v0 + 176);
  v62 = *(v0 + 56);
  OUTLINED_FUNCTION_8_0(v29, v63, v64, v65, v66, v67, v68, v69, v70, v72, v74, v76, v78, v80, v81, v7, SpokenLocationComponentParameters, v82, v83);
  sub_267BD3DDC(v61, v62 + SpokenLocationComponentParameters[19]);
  OUTLINED_FUNCTION_18_4();
  v30 = *(v7 + 44);
  v31 = *(ComponentPatternCommonParameters + v30);

  *(ComponentPatternCommonParameters + v30) = v61;
  sub_267C0C2B8(v3);
  sub_267BD3DDC(v3, ComponentPatternCommonParameters);
  sub_267B9F98C(ComponentPatternCommonParameters + *(v7 + 48), &unk_28022AE30, &qword_267EFC0B0);
  v32 = OUTLINED_FUNCTION_44_2();
  v33(v32);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v62);
  v37 = *(v7 + 60);
  v38 = *(ComponentPatternCommonParameters + v37);

  *(ComponentPatternCommonParameters + v37) = SpokenLocationComponentParameters;
  sub_267BE855C(v73, ComponentPatternCommonParameters + *(v7 + 64));
  OUTLINED_FUNCTION_70_0();

  *(ComponentPatternCommonParameters + v37) = v3;
  v39 = *(ComponentPatternCommonParameters + *(v7 + 72));

  v40 = OUTLINED_FUNCTION_69();
  *(v0 + 256) = OUTLINED_FUNCTION_51_0(v40, v41, v42, v43, v44, v45, v46, v47, v71, v73, v75, v77, v79);
  v48 = sub_267BDAF74();
  *(v0 + 272) = v48 & 1;
  if (v48)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v49 = swift_task_alloc();
    *(v0 + 264) = v49;
    *v49 = v0;
    v49[1] = sub_267C0F0EC;
    OUTLINED_FUNCTION_39_0();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v30)
  {
    v52 = OUTLINED_FUNCTION_6_2();
    v53(v52);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    v54 = OUTLINED_FUNCTION_11_4();
    v55(v54);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v56, v57, v58);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_39_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C0F0EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 273) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C0F1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v15 = *(v14 + 273);
  v16 = *(v14 + 272);
  v17 = *(v14 + 248);
  v18 = *(v14 + 256);
  v20 = *(v14 + 232);
  v19 = *(v14 + 240);
  v44 = *(v14 + 224);
  v22 = *(v14 + 152);
  v21 = *(v14 + 160);
  v23 = *(v14 + 136);
  sub_267EF7C18();
  v25 = 0xE000000000000000;
  if (v24)
  {
    v25 = v24;
  }

  v43 = v25;
  sub_267EF8238();
  sub_267EF8348();
  if (v44)
  {
    v26 = OUTLINED_FUNCTION_6_2();
    v27(v26);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    v44 = v28;
    v29 = OUTLINED_FUNCTION_11_4();
    v30(v29);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v31, v32, v33);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, a11, a12, a13, a14);
}

uint64_t sub_267C0F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v15;
  v8[16] = v16;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C0F4B0, 0, 0);
}

void sub_267C0F4B0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  LocationComponentParameters = type metadata accessor for SearchForMessagesReadLocationComponentParameters(0);
  *(v0 + 208) = LocationComponentParameters;
  v5 = LocationComponentParameters[7];
  sub_267B9F98C(v2 + v5, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v7 = ComponentPatternCommonParameters[5];
  v8 = sub_267EF79B8();
  *(v0 + 216) = v8;
  OUTLINED_FUNCTION_22(v8);
  v81 = *(v9 + 16);
  v80 = v9 + 16;
  v81(v2 + v5, v3 + v7, v8);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  OUTLINED_FUNCTION_38_2();
  sub_267EF8348();
  v83 = v8;
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v15 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_46_1(LocationComponentParameters[16]);
  *(v0 + 32) = *(v2 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_49_0();
  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v21 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v83);
  OUTLINED_FUNCTION_46_1(LocationComponentParameters[17]);
  *(v0 + 40) = *(v2 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_49_0();
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  v26 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v83);
  OUTLINED_FUNCTION_46_1(LocationComponentParameters[20]);
  *(v0 + 48) = *(v2 + ComponentPatternCommonParameters[9]);
  v29 = OUTLINED_FUNCTION_49_0();
  v61 = *(v0 + 176);
  v62 = *(v0 + 56);
  OUTLINED_FUNCTION_8_0(v29, v63, v64, v65, v66, v67, v68, v69, v70, v72, v74, v76, v78, v80, v81, v7, LocationComponentParameters, v82, v83);
  sub_267BD3DDC(v61, v62 + LocationComponentParameters[21]);
  OUTLINED_FUNCTION_18_4();
  v30 = *(v7 + 56);
  v31 = *(ComponentPatternCommonParameters + v30);

  *(ComponentPatternCommonParameters + v30) = v61;
  sub_267C0C2B8(v3);
  sub_267BD3DDC(v3, ComponentPatternCommonParameters);
  sub_267B9F98C(ComponentPatternCommonParameters + *(v7 + 60), &unk_28022AE30, &qword_267EFC0B0);
  v32 = OUTLINED_FUNCTION_44_2();
  v33(v32);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v62);
  v37 = *(v7 + 72);
  v38 = *(ComponentPatternCommonParameters + v37);

  *(ComponentPatternCommonParameters + v37) = LocationComponentParameters;
  sub_267BE855C(v73, ComponentPatternCommonParameters + *(v7 + 76));
  OUTLINED_FUNCTION_70_0();

  *(ComponentPatternCommonParameters + v37) = v3;
  v39 = *(ComponentPatternCommonParameters + *(v7 + 36));

  v40 = OUTLINED_FUNCTION_69();
  *(v0 + 256) = OUTLINED_FUNCTION_51_0(v40, v41, v42, v43, v44, v45, v46, v47, v71, v73, v75, v77, v79);
  v48 = sub_267BDAF74();
  *(v0 + 272) = v48 & 1;
  if (v48)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v49 = swift_task_alloc();
    *(v0 + 264) = v49;
    *v49 = v0;
    v49[1] = sub_267C0FA18;
    OUTLINED_FUNCTION_39_0();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v30)
  {
    v52 = OUTLINED_FUNCTION_6_2();
    v53(v52);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    v54 = OUTLINED_FUNCTION_11_4();
    v55(v54);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v56, v57, v58);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_39_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C0FA18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 273) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void *sub_267C0FB18()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_267C0FB40()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_267C0FB4C()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267C0FB90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267C0FC1C;

  return sub_267C0FB00();
}

uint64_t sub_267C0FC1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_37();

  return v6(v5);
}

uint64_t sub_267C0FD04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267C0CE88();
}

uint64_t sub_267C0FDC8()
{
  sub_267EF9D38();
  OUTLINED_FUNCTION_43();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267C0FE34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C0FDC8();
  *a2 = result;
  return result;
}

uint64_t sub_267C0FE64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C0E9A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C0FE90(uint64_t a1)
{
  v1 = a1 - 1001;
  if (a1 == 25)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (v1 >= 3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_267C0FEAC(void *a1)
{
  v2 = [a1 originalURL];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267C0FF30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_267C0FF84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow22LocationLinkParserType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267C10014(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_267C10054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_267C100C8(uint64_t a1)
{
  result = sub_267C100F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C100F0()
{
  result = qword_280228F98;
  if (!qword_280228F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228F98);
  }

  return result;
}

unint64_t sub_267C10144(uint64_t a1)
{
  result = sub_267C1016C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C1016C()
{
  result = qword_280228FA0;
  if (!qword_280228FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228FA0);
  }

  return result;
}

unint64_t sub_267C101C0(uint64_t a1)
{
  result = sub_267C101E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C101E8()
{
  result = qword_280228FA8;
  if (!qword_280228FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228FA8);
  }

  return result;
}

uint64_t sub_267C102A4()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_35_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_2(v1, v3, v4, v5, v6, v7, v8, v9, v20);
  OUTLINED_FUNCTION_40();

  return sub_267C0F364(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267C10340()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_35_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_2(v1, v3, v4, v5, v6, v7, v8, v9, v20);
  OUTLINED_FUNCTION_40();

  return sub_267C0EA38(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_267C103DC()
{
  result = qword_280228FB8;
  if (!qword_280228FB8)
  {
    type metadata accessor for MessagesSpokenDialogContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228FB8);
  }

  return result;
}

unint64_t sub_267C10434()
{
  result = qword_280228FC0;
  if (!qword_280228FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280228FC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesReferencedReactionMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_267C10500(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C105DC()
{
  result = qword_280228FC8;
  if (!qword_280228FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228FC8);
  }

  return result;
}

id sub_267C1065C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StewieStateMonitor.StewieStateMonitorDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_267C106B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StewieStateMonitor.StewieStateMonitorDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_267C106F0()
{
  v1 = v0;
  v2 = sub_267EF9648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = sub_267EF9638();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v10 = sub_267EF8EA8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_0_0();
  result = *(v1 + 16);
  if (result)
  {
    goto LABEL_7;
  }

  v24 = v3;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267B93000, v14, v15, "#StewieStateMonitor initializing CTStewieStateMonitor", v16, 2u);
    MEMORY[0x26D60A7B0](v16, -1, -1);
  }

  v17 = [objc_allocWithZone(type metadata accessor for StewieStateMonitor.StewieStateMonitorDelegate()) init];
  sub_267C10AB0();
  sub_267EF8E88();
  sub_267C10AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267C10B4C();
  sub_267EF99C8();
  (*(v24 + 104))(v7, *MEMORY[0x277D85260], v2);
  v18 = sub_267EF9668();
  v19 = [objc_allocWithZone(MEMORY[0x277CC3768]) initWithDelegate:v17 queue:v18];

  v20 = *(v1 + 16);
  *(v1 + 16) = v19;
  v21 = v19;

  [v21 start];
  result = *(v1 + 16);
  if (result)
  {
LABEL_7:
    v22 = [result getState];
    v23 = [v22 activeServices];

    return (v23 == 1);
  }

  return result;
}

uint64_t sub_267C10A54()
{

  return swift_deallocClassInstance();
}

unint64_t sub_267C10AB0()
{
  result = qword_280229038;
  if (!qword_280229038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229038);
  }

  return result;
}

unint64_t sub_267C10AF4()
{
  result = qword_280229040;
  if (!qword_280229040)
  {
    sub_267EF9638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229040);
  }

  return result;
}

unint64_t sub_267C10B4C()
{
  result = qword_280229050;
  if (!qword_280229050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229048, &unk_267EFC400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229050);
  }

  return result;
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

uint64_t sub_267C10C40()
{
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](0);
  return sub_267EFA018();
}

uint64_t sub_267C10C8C()
{
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](0);
  return sub_267EFA018();
}

uint64_t sub_267C10CCC()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t getEnumTagSinglePayload for CATProvider(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CATProvider(_BYTE *result, int a2, int a3)
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

unint64_t sub_267C10E3C()
{
  result = qword_280229080;
  if (!qword_280229080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229080);
  }

  return result;
}

uint64_t sub_267C10E90()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_messageType;
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_content, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_paymentTransferAmount;
  *v3 = 0;
  *(v3 + 8) = 1;
  return v0;
}

uint64_t sub_267C10F18()
{
  v1 = *(v0 + 16);

  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_messageType);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_content);
  return v0;
}

uint64_t sub_267C10F8C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v3 = OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_messageType;
  swift_beginAccess();
  sub_267C12290(a1 + v3, v1 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_messageType);
  v4 = OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_content;
  swift_beginAccess();
  sub_267C12290(a1 + v4, v1 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_content);
  v5 = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_paymentTransferAmount);
  v6 = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_paymentTransferAmount + 8);

  v7 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_paymentTransferAmount;
  *v7 = v5;
  *(v7 + 8) = v6;
  return v1;
}

uint64_t sub_267C1106C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for MessagesReferencedReactionMessage.Builder(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_267C10E90();
  sub_267BF43D0(a1);

  v14 = OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_messageType;
  OUTLINED_FUNCTION_8_1();
  sub_267BE855C(a2, v13 + v14);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_content;
  OUTLINED_FUNCTION_8_1();
  sub_267BE855C(a3, v13 + v15);
  swift_endAccess();
  v16 = v13 + OBJC_IVAR____TtCC16SiriMessagesFlow33MessagesReferencedReactionMessage7Builder_paymentTransferAmount;
  *v16 = a4;
  *(v16 + 8) = a5 & 1;
  v17 = type metadata accessor for MessagesReferencedReactionMessage(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  sub_267C10F8C(v13);

  sub_267BBD6F0(a3);
  sub_267BBD6F0(a2);
  return v20;
}

double sub_267C11180@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (!v14 && (OUTLINED_FUNCTION_3_5() & 1) == 0)
  {
    v18 = a1 == OUTLINED_FUNCTION_6_3() && a2 == v17;
    if (v18 || (OUTLINED_FUNCTION_3_5() & 1) != 0)
    {
      sub_267C12290(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_messageType, v13);
      v19 = sub_267EF79B8();
      if (__swift_getEnumTagSinglePayload(v13, 1, v19) != 1)
      {
        *(a3 + 24) = v19;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        (*(*(v19 - 8) + 32))(boxed_opaque_existential_0, v13, v19);
        return result;
      }

      v20 = v13;
    }

    else
    {
      v22 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
      if (!v22 && (OUTLINED_FUNCTION_3_5() & 1) == 0)
      {
        v25 = a1 == 0xD000000000000015 && 0x8000000267F0F870 == a2;
        if (v25 || (OUTLINED_FUNCTION_3_5()) && (*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_paymentTransferAmount + 8) & 1) == 0)
        {
          result = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_paymentTransferAmount);
          *(a3 + 24) = MEMORY[0x277D839F8];
          *a3 = result;
          return result;
        }

LABEL_18:
        result = 0.0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return result;
      }

      sub_267C12290(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_content, v11);
      v23 = sub_267EF79B8();
      if (__swift_getEnumTagSinglePayload(v11, 1, v23) != 1)
      {
        *(a3 + 24) = v23;
        v24 = __swift_allocate_boxed_opaque_existential_0(a3);
        (*(*(v23 - 8) + 32))(v24, v11, v23);
        return result;
      }

      v20 = v11;
    }

    sub_267BBD6F0(v20);
    goto LABEL_18;
  }

  v15 = *(v3 + 24);
  if (!v15)
  {
    goto LABEL_18;
  }

  *(a3 + 24) = sub_267EF77C8();
  *a3 = v15;

  return result;
}

uint64_t sub_267C11444()
{
  v0 = sub_267EF9D38();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267C11490(char a1)
{
  result = 0x7265646E6573;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_6_3();
      break;
    case 2:
      result = 0x746E65746E6F63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C11538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C11444();
  *a2 = result;
  return result;
}

uint64_t sub_267C11568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C11490(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C1159C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267C11444();
  *a1 = result;
  return result;
}

uint64_t sub_267C115DC(uint64_t a1)
{
  v2 = sub_267C121CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267C11618(uint64_t a1)
{
  v2 = sub_267C121CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267C11654()
{
  v1 = *(v0 + 24);

  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_messageType);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_content);
  return v0;
}

uint64_t sub_267C116B4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_267C11738()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267C117E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802290E0, &qword_267EFC600);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C121CC();
  sub_267EFA088();
  v22 = *(v3 + 24);
  v21[7] = 0;
  sub_267EF77C8();
  OUTLINED_FUNCTION_2_13();
  sub_267C12184(v14, v15);
  sub_267EF9DF8();
  if (!v2)
  {
    v21[6] = 1;
    sub_267EF79B8();
    OUTLINED_FUNCTION_1_13();
    sub_267C12184(v16, v17);
    OUTLINED_FUNCTION_5_7();
    v21[5] = 2;
    OUTLINED_FUNCTION_5_7();
    v18 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_paymentTransferAmount);
    v19 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_paymentTransferAmount + 8);
    v21[4] = 3;
    sub_267EF9DD8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_267C11A04(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_267C11B7C(a1);
  return v5;
}

void sub_267C11A54()
{
  if (!qword_280229098)
  {
    sub_267EF79B8();
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_280229098);
    }
  }
}

void sub_267C11AD4()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267C11B7C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802290C0, &qword_267EFC5F8);
  v12 = OUTLINED_FUNCTION_58(v35);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  *(v3 + 16) = 0;
  v18 = a1[3];
  v17 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_267C121CC();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesReferencedReactionMessage(0);
    v21 = *(*v3 + 48);
    v22 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v9;
    v34 = v14;
    sub_267EF77C8();
    v40 = 0;
    OUTLINED_FUNCTION_2_13();
    sub_267C12184(v19, v20);
    sub_267EF9D88();
    *(v3 + 24) = v41;
    sub_267EF79B8();
    v39 = 1;
    OUTLINED_FUNCTION_1_13();
    sub_267C12184(v24, v25);
    OUTLINED_FUNCTION_4_10();
    sub_267EF9D88();
    sub_267C12220(v11, v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_messageType);
    v38 = 2;
    v26 = v33;
    OUTLINED_FUNCTION_4_10();
    sub_267EF9D88();
    sub_267C12220(v26, v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_content);
    v37 = 3;
    v27 = sub_267EF9D68();
    LOBYTE(v26) = v28;
    v29 = OUTLINED_FUNCTION_0_3();
    v30(v29);
    v31 = v3 + OBJC_IVAR____TtC16SiriMessagesFlow33MessagesReferencedReactionMessage_paymentTransferAmount;
    *v31 = v27;
    *(v31 + 8) = v26 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  return v3;
}

void *sub_267C11F94()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_267C11FDC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_267C12028())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_267C120A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267C11A04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267C12184(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267C121CC()
{
  result = qword_2802290C8;
  if (!qword_2802290C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802290C8);
  }

  return result;
}

uint64_t sub_267C12220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C12290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for MessagesReferencedReactionMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C123E0()
{
  result = qword_2802290F8;
  if (!qword_2802290F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802290F8);
  }

  return result;
}

unint64_t sub_267C12438()
{
  result = qword_280229100;
  if (!qword_280229100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229100);
  }

  return result;
}

unint64_t sub_267C12490()
{
  result = qword_280229108;
  if (!qword_280229108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229108);
  }

  return result;
}

uint64_t sub_267C124E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[91] = v8;
  v9[90] = v19;
  v9[89] = a8;
  v9[88] = a7;
  v9[87] = a6;
  v9[86] = a5;
  v9[85] = a4;
  v9[84] = a3;
  v9[83] = a2;
  v9[82] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700) - 8) + 64);
  v9[92] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF2CC8();
  v9[93] = v11;
  v12 = *(v11 - 8);
  v9[94] = v12;
  v13 = *(v12 + 64);
  v9[95] = OUTLINED_FUNCTION_2();
  v14 = sub_267EF2E38();
  v9[96] = v14;
  v15 = *(v14 - 8);
  v9[97] = v15;
  v16 = *(v15 + 64);
  v9[98] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267C1264C, 0, 0);
}

uint64_t sub_267C1264C()
{
  v128 = v0;
  v112 = *(v0 + 784);
  v123 = *(v0 + 776);
  v124 = *(v0 + 768);
  v1 = *(v0 + 728);
  v116 = *(v0 + 720);
  v118 = *(v0 + 712);
  v2 = *(v0 + 704);
  v121 = *(v0 + 688);
  v122 = *(v0 + 696);
  v3 = *(v0 + 680);
  v114 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  ConversationEventStore.init()(__src);
  memcpy((v1 + 40), __src, 0x60uLL);
  sub_267BC1E68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267EFC020;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;

  sub_267EF7C18();
  v113 = sub_267DE86F4();
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_267EFC020;
  *(v126 + 32) = v5;
  *(v126 + 40) = v4;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v7);
  v9 = *(v8 + 8);
  swift_bridgeObjectRetain_n();

  v9(v7, v8);
  v10 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  sub_267EF3B68();
  sub_267EF42D8();
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF42C8();

  v120 = v3;
  v11 = sub_267BDD444(v114, v3, (v0 + 152), 0, 2u, v5, v4, v112, v118, v116, 1);

  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  (*(v123 + 8))(v112, v124);
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v111 = v2;
  sub_267B9AFEC(v2, v0 + 192);

  v125 = v113;

  ConversationEventStore.init()(v0 + 16);
  v12 = type metadata accessor for AnnounceHintExperimentController();
  *(v0 + 232) = swift_allocObject();
  *(v0 + 256) = v12;
  *(v0 + 264) = &off_2878CF3F8;
  v13 = sub_267EF67F8();
  v119 = [objc_allocWithZone(v13) init];
  v14 = sub_267EF72E8();
  v117 = type metadata accessor for MessageSummaryProvider();
  v15 = swift_allocObject();
  *(v0 + 296) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 304) = off_2878D1228;
  *(v0 + 336) = v13;
  *(v0 + 344) = &off_2878D78B8;
  *(v0 + 312) = v119;
  *(v0 + 376) = &type metadata for TTSUtil;
  *(v0 + 384) = &off_2878D0CB0;
  *(v0 + 352) = v14;
  *(v0 + 360) = &off_2878D0918;
  *(v0 + 416) = v117;
  *(v0 + 424) = &off_2878D8D98;
  *(v0 + 392) = v15;
  type metadata accessor for ConversationStateManager();
  v115 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 272, &type metadata for MessagesFeatureFlagsImpl);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 312, v13);
  v17 = *(v13 - 1);
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v19, v16, v13);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 352, *(v0 + 376));
  v21 = *(v0 + 416);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 392, v21);
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  v25 = OUTLINED_FUNCTION_2();
  (*(v23 + 16))(v25, v22, v21);
  v26 = *v19;
  v27 = *v25;
  v28 = *v20;
  *(v0 + 456) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 464) = off_2878D1228;
  *(v0 + 496) = v13;
  *(v0 + 504) = &off_2878D78B8;
  *(v0 + 472) = v26;
  *(v0 + 536) = &type metadata for TTSUtil;
  *(v0 + 544) = &off_2878D0CB0;
  *(v0 + 512) = v28;
  *(v0 + 576) = v117;
  *(v0 + 584) = &off_2878D8D98;
  *(v0 + 552) = v27;
  v29 = v119;
  *(v115 + 248) = OUTLINED_FUNCTION_1_14();
  *(v115 + 256) = OUTLINED_FUNCTION_1_14();
  *(v115 + 384) = OUTLINED_FUNCTION_1_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229120, &unk_267F0B820);
  v30 = OUTLINED_FUNCTION_1_14();
  v31 = MEMORY[0x277D84FA0];
  *(v115 + 392) = v30;
  *(v115 + 400) = v31;
  *(v115 + 416) = 0;
  *(v115 + 426) = 0;
  *(v115 + 80) = 2;
  *(v115 + 88) = v126;
  *(v115 + 96) = v120;
  *(v115 + 104) = v121;
  *(v115 + 112) = v122;
  *(v115 + 64) = v125;
  *(v115 + 72) = 0;
  *(v115 + 56) = v11;
  sub_267BEB520(v0 + 16, v115 + 152);
  sub_267C13520(v0 + 232, v115 + 344);
  sub_267B9AFEC(v0 + 472, v115 + 304);
  sub_267B9AFEC(v0 + 512, v115 + 432);
  sub_267B9AFEC(v0 + 552, v115 + 472);
  v32 = sub_267BAF0DC(v11);
  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v21 = v32;
  if (v32)
  {
    sub_267BBD0EC(0, (v11 & 0xC000000000000001) == 0, v11);
    if ((v11 & 0xC000000000000001) == 0)
    {
      v33 = *(v11 + 32);

LABEL_5:
      v34 = *(v115 + 416);
      *(v115 + 416) = v33;

      goto LABEL_7;
    }

LABEL_39:

    v33 = MEMORY[0x26D609870](0, v11);
    goto LABEL_5;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229130, &qword_267F0B830);
  v35 = sub_267EF8F28();
  __src[0] = v35;
  if (v21)
  {
    v36 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D609870](v36, v11);
      }

      else
      {
        v37 = *(v11 + 8 * v36 + 32);
      }

      ++v36;
      swift_beginAccess();
      v38 = *(v37 + 24);

      sub_267BE5E38(v39);
    }

    while (v21 != v36);
    v35 = __src[0];
  }

  v40 = *(v0 + 728);
  *(v115 + 144) = v35;
  sub_267EF6818();
  v41 = sub_267EF6808();

  sub_267B9EF14(v0 + 16);
  sub_267C13590(v0 + 232);
  __swift_destroy_boxed_opaque_existential_0((v0 + 552));
  __swift_destroy_boxed_opaque_existential_0((v0 + 512));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  *(v115 + 120) = 0xD000000000000012;
  *(v115 + 128) = 0x8000000267F11DE0;
  *(v115 + 136) = v41;
  sub_267B9A5E8((v0 + 432), v115 + 264);
  *(v115 + 408) = 0;
  *(v115 + 424) = 0;
  sub_267B9A5E8((v0 + 192), v115 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));

  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));

  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  sub_267BE43E8(1);
  *(v40 + 32) = v115;
  if (v21)
  {
    v42 = qword_280228818;

    if (v42 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v43 = *(v0 + 672);
    v44 = sub_267EF8A08();
    __swift_project_value_buffer(v44, qword_280240FB0);

    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();
    v47 = OUTLINED_FUNCTION_5_2(v46);
    v48 = *(v0 + 672);
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 134218240;
      v50 = sub_267BAF0DC(v11);

      *(v49 + 4) = v50;

      *(v49 + 12) = 2048;
      v51 = sub_267BAF0DC(v48);

      *(v49 + 14) = v51;

      _os_log_impl(&dword_267B93000, v45, v46, "#SpokenMessagesFlowSource Successfully built conversation state. %ld conversation(s) from %ld message(s)", v49, 0x16u);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v67 = *(v0 + 672);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v68 = *(v0 + 688);
    v69 = sub_267BE4AD0();
    v70 = type metadata accessor for SpokenConversationActionGroup(0);
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();

    v73 = sub_267EB74EC(v69, v115, 1);
    v74 = *(v115 + 416);

    if (v68)
    {
      v75 = *(v0 + 664);

      v76 = sub_267EF89F8();
      v77 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v77))
      {
        v78 = *(v0 + 688);
        v79 = swift_slowAlloc();
        *v79 = 134217984;
        *(v79 + 4) = v78;
        OUTLINED_FUNCTION_3_6(&dword_267B93000, v80, v81, "#SpokenMessagesFlowSource Skipping PlayNotificationSound as synchronousBurstIndex is '%ld' or user not interested in the conversation");
        OUTLINED_FUNCTION_32_0();
      }

      v82 = *(v0 + 728);

      v83 = sub_267C137FC(&qword_280229138, type metadata accessor for SpokenConversationActionGroup);
      *(v82 + 16) = v73;
      *(v82 + 24) = v83;
    }

    else
    {
      v84 = sub_267EF89F8();
      v85 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 134217984;
        *(v86 + 4) = 0;
        OUTLINED_FUNCTION_3_6(&dword_267B93000, v87, v88, "#SpokenMessagesFlowSource Playing notification sound as synchronousBurstIndex is '%ld'");
        OUTLINED_FUNCTION_32_0();
      }

      v89 = *(v0 + 728);
      v90 = *(v0 + 664);
      v91 = *(v0 + 656);

      v92 = type metadata accessor for PlayNotificationSoundActionGroup(0);
      v93 = *(v92 + 48);
      v94 = *(v92 + 52);
      swift_allocObject();

      v95 = sub_267C135F8(v91, v90, v115, v73);
      v96 = sub_267C137FC(&qword_280229140, type metadata accessor for PlayNotificationSoundActionGroup);
      *(v89 + 16) = v95;
      *(v89 + 24) = v96;
    }

    v97 = *(v0 + 760);
    v98 = *(v0 + 752);
    v99 = *(v0 + 744);
    v100 = *(v0 + 704);
    __src[0] = 0;
    __src[1] = 0;
    LOBYTE(__src[2]) = 4;
    sub_267EF2CB8();
    sub_267C5BD60(__src, v97);
    (*(v98 + 8))(v97, v99);
    v101 = v111[3];
    v102 = v111[4];
    __swift_project_boxed_opaque_existential_0(v100, v101);
    (*(v102 + 8))(v101, v102);
    v103 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_0((v0 + 592), *(v0 + 616));
    LOBYTE(v101) = sub_267EF3C48();
    __swift_destroy_boxed_opaque_existential_0((v0 + 592));
    v104 = *(v0 + 680);
    if (v101)
    {
      sub_267E98208(1);
    }
  }

  else
  {
    v52 = *(v0 + 672);
    v53 = *(v0 + 664);

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v54 = sub_267EF8A08();
    __swift_project_value_buffer(v54, qword_280240FB0);
    v55 = sub_267EF89F8();
    v56 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_267B93000, v55, v56, "#SpokenMessagesFlowSource conversation is empty", v57, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v58 = *(v0 + 736);
    v59 = *(v0 + 728);
    v60 = *(v0 + 680);

    v61 = sub_267EF4548();
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v61);
    v62 = sub_267EF4338();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v65 = sub_267EF4328();

    v66 = sub_267C137FC(&qword_280229148, MEMORY[0x277D5BDD0]);
    *(v59 + 16) = v65;
    *(v59 + 24) = v66;
  }

  v105 = *(v0 + 784);
  v106 = *(v0 + 760);
  v107 = *(v0 + 736);
  __swift_destroy_boxed_opaque_existential_0(*(v0 + 704));

  v108 = *(v0 + 8);
  v109 = *(v0 + 728);

  return v108(v109);
}

uint64_t sub_267C13440()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_267B9EF14(v0 + 40);
  return v0;
}

uint64_t sub_267C13470()
{
  sub_267C13440();

  return swift_deallocClassInstance();
}

uint64_t sub_267C134C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_267C13520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229128, &unk_267EFC860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C13590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229128, &unk_267EFC860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_267C135F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v21 - v10);
  v12 = sub_267C137FC(&qword_280229138, type metadata accessor for SpokenConversationActionGroup);
  v13 = sub_267BE6C54(a3);
  type metadata accessor for PlayNotificationSoundAction();
  swift_allocObject();
  v14 = sub_267E28F3C(a1, a2, a3);
  v15 = sub_267C137FC(&qword_280229150, type metadata accessor for PlayNotificationSoundAction);
  v16 = v13[3];
  v13[3] = v14;
  v13[4] = v15;

  swift_unknownObjectRelease();
  *v11 = a4;
  v11[1] = v12;
  v17 = *MEMORY[0x277D5BF58];
  v18 = sub_267EF4548();
  (*(*(v18 - 8) + 104))(v11, v17, v18);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
  v19 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v11, v13 + v19);
  swift_endAccess();

  return v13;
}

uint64_t sub_267C137FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C13844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_267C138B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return v3;
}

uint64_t sub_267C138E8()
{
  v34 = v0;
  v1 = v0[7];
  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    v3 = objc_allocWithZone(MEMORY[0x277CD40E0]);

    v5 = sub_267C94A44(v4, 1);
    v0[8] = v5;
    v6 = *(v1 + 40);
    v7 = v5;
    sub_267EF7C18();
    if (v8)
    {
      v9 = sub_267EF8FF8();
    }

    else
    {
      v9 = 0;
    }

    [v7 _setLaunchId_];

    sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
    v17 = sub_267EF9768();
    v0[9] = v17;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = v0[7];
    v19 = sub_267EF8A08();
    v0[10] = __swift_project_value_buffer(v19, qword_280240FB0);

    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x26D608FD0](v2, MEMORY[0x277D837D0]);
      v26 = sub_267BA33E8(v24, v25, &v33);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_267B93000, v20, v21, "#MarkMessagesAsReadAction Marking following messages as read: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v27 = *(v0[7] + 48);
    v28 = v27[5];
    v29 = v27[6];
    __swift_project_boxed_opaque_existential_0(v27 + 2, v28);
    (*(v29 + 24))(v28, v29);
    v30 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v31 = *(MEMORY[0x277D5BFB8] + 4);
    v32 = swift_task_alloc();
    v0[11] = v32;
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
    *v32 = v0;
    v32[1] = sub_267C13C90;

    return MEMORY[0x2821BB6A0](v17);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v13, v14, "#MarkMessagesAsReadAction No messages to mark as read");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_1();

    return v15();
  }
}

uint64_t sub_267C13C90(void *a1)
{
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_267C13E7C;
  }

  else
  {

    v5 = sub_267C13DAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267C13DAC()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  if (v4)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#MarkMessagesAsReadAction Messages marked as read");
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_267C13E7C()
{
  v1 = v0[12];
  v2 = v0[10];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_267B93000, v4, v5, "#MarkMessagesAsReadAction Failed to mark messages as read: %@", v10, 0xCu);
    sub_267C142D4(v11);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();

  return v14();
}

void *sub_267C13FDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_267C14014()
{
  sub_267C13FDC();

  return swift_deallocClassInstance();
}

uint64_t sub_267C1406C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267C14110()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_267C14154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BCE5E4;

  return sub_267C138C8();
}

uint64_t sub_267C141E0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267C14294(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarkMessagesAsReadAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267C142D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280229E30, &unk_267EFC270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267C1433C()
{
  sub_267EF2D48();
  v0 = sub_267EF8FF8();

  v1 = CEMCreateEmojiLocaleData();

  OUTLINED_FUNCTION_1_10();
  v2 = sub_267EF8FF8();
  v3 = CEMEmojiTokenCreateWithString();

  v4 = CEMEmojiTokenCopyNameWithCount();
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  if (v4)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_267EF9018();
    }
  }

  return 0;
}

void sub_267C14448(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12.location = *(a6 + 16);
  if (__OFSUB__(a2, v12.location))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12.length = a2 - v12.location;
  v13 = CFStringCreateWithSubstring(0, a5, v12);
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
  CFStringTrimWhitespace(MutableCopy);
  if (MutableCopy)
  {

    if (CFStringGetLength(MutableCopy))
    {
      v16 = sub_267EF9028();
      v18 = v17;
      swift_beginAccess();
      sub_267BFE184();
      v19 = *(*(a7 + 16) + 16);
      sub_267BFE2C4(v19);
      v20 = *(a7 + 16);
      *(v20 + 16) = v19 + 1;
      v21 = v20 + 32 * v19;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(a7 + 16) = v20;
      swift_endAccess();
    }

    v30.location = a2;
    v30.length = a3;
    v22 = CFStringCreateWithSubstring(0, a5, v30);
    if (!v22)
    {
      goto LABEL_13;
    }

    v23 = v22;
    v24 = sub_267EF9028();
    v26 = v25;
    swift_beginAccess();
    sub_267BFE184();
    v27 = *(*(a7 + 16) + 16);
    sub_267BFE2C4(v27);
    v28 = *(a7 + 16);
    *(v28 + 16) = v27 + 1;
    v29 = v28 + 32 * v27;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    *(v29 + 48) = 1;
    *(v29 + 56) = 1;
    *(a7 + 16) = v28;
    swift_endAccess();

    if (!__OFADD__(a2, a3))
    {
      swift_beginAccess();
      *(a6 + 16) = a2 + a3;
      return;
    }

    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_267C14628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t sub_267C146A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = sub_267C1483C;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v9 = sub_267C147D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267C147D4()
{
  v1 = v0[7];

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_267C1483C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_267C148A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *(v2 - 3);
    v4 = *(v2 - 2);
    v6 = *v2;
    v7 = *(v3 + 16);
    v42 = *(v2 - 1);
    if (!v7)
    {
      sub_267C16558();
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v3 + 16);
        sub_267BFE1F8();
        v3 = v35;
      }

      v18 = v42;
      v19 = *(v3 + 16);
      v20 = v19 + 1;
      if (v19 < *(v3 + 24) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

    if (!*v2 || (v8 = v3 + 32 * v7, (*(v8 + 24) & 1) == 0))
    {

      goto LABEL_16;
    }

    v39 = *v2;
    v41 = *(v2 - 2);
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v2 - 3);
    v12 = *(v8 + 16);
    sub_267EF2D48();

    sub_267C16558();
    v40 = v12;
    sub_267C16558();
    v13 = sub_267EF8FF8();

    v14 = CEMCreateEmojiLocaleData();

    v38 = v11;
    v15 = sub_267EF8FF8();
    v16 = CEMEmojiTokenCreateWithString();

    v17 = CEMEmojiTokenCopyNameWithCount();
    if (v14)
    {
      swift_unknownObjectRelease();
    }

    if (v16)
    {
      swift_unknownObjectRelease();
    }

    if (v17)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_267EF9018();
      }
    }

    sub_267EF2D48();
    v22 = sub_267EF8FF8();

    v23 = CEMCreateEmojiLocaleData();

    v24 = sub_267EF8FF8();
    sub_267BFE17C();
    v25 = CEMEmojiTokenCreateWithString();

    v26 = CEMEmojiTokenCopyNameWithCount();
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    v4 = v41;
    if (v25)
    {
      swift_unknownObjectRelease();
    }

    if (v26)
    {
      objc_opt_self();
      v5 = v38;
      if (swift_dynamicCastObjCClass())
      {
        sub_267EF9018();
      }
    }

    else
    {
      v5 = v38;
    }

    sub_267BFE17C();
    if (!*(v3 + 16))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267D5FFA0(v3);
      v3 = v37;
    }

    v27 = *(v3 + 16);
    if (!v27)
    {
      goto LABEL_42;
    }

    v28 = v27 - 1;
    v29 = v3 + 32 * v28;
    v30 = *(v29 + 32);
    v31 = *(v29 + 40);
    v32 = *(v29 + 48);
    v33 = *(v29 + 56);
    *(v3 + 16) = v28;
    sub_267BFE17C();
    v18 = v42 + v40;
    if (__OFADD__(v42, v40))
    {
      goto LABEL_43;
    }

    v19 = *(v3 + 16);
    v20 = v19 + 1;
    if (v19 >= *(v3 + 24) >> 1)
    {
      v6 = 1;
LABEL_38:
      sub_267BFE1F8();
      v3 = v36;
      goto LABEL_19;
    }

    v6 = 1;
LABEL_19:
    *(v3 + 16) = v20;
    v21 = v3 + 32 * v19;
    *(v21 + 32) = v5;
    *(v21 + 40) = v4;
    *(v21 + 48) = v18;
    *(v21 + 56) = v6;
    v2 += 32;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_267C14D28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 56);
    v3 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v2 - 3);
      v6 = *(v2 - 2);
      v8 = *(v2 - 1);
      if (*v2 == 1)
      {
        v9 = *(v2 - 2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v5 + 16);
          sub_267BFE1F8();
          v5 = v18;
        }

        v10 = *(v5 + 16);
        if (v10 >= *(v5 + 24) >> 1)
        {
          sub_267BFE1F8();
          v5 = v19;
        }

        *(v5 + 16) = v10 + 1;
        v11 = v5 + 32 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v6;
        *(v11 + 48) = v8;
        *(v11 + 56) = 1;
      }

      else
      {
        v12 = *(v5 + 16);
        v13 = *(v2 - 2);

        if (v12)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = *(v4 + 16);
            sub_267C70AB8();
            v4 = v24;
          }

          v14 = *(v4 + 16);
          if (v14 >= *(v4 + 24) >> 1)
          {
            sub_267C70AB8();
            v4 = v25;
          }

          *(v4 + 16) = v14 + 1;
          *(v4 + 8 * v14 + 32) = v5;
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229170, &unk_267EFEEC0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_267EFC020;
        *(v15 + 32) = v7;
        *(v15 + 40) = v6;
        *(v15 + 48) = v8;
        *(v15 + 56) = 0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v4 + 16);
          sub_267C70AB8();
          v4 = v21;
        }

        v16 = *(v4 + 16);
        if (v16 >= *(v4 + 24) >> 1)
        {
          sub_267C70AB8();
          v4 = v22;
        }

        *(v4 + 16) = v16 + 1;
        *(v4 + 8 * v16 + 32) = v15;
        sub_267BFE17C();
        v5 = v3;
      }

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
  }

  if (*(v5 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v4 + 16);
      sub_267C70AB8();
      v4 = v29;
    }

    v26 = *(v4 + 16);
    if (v26 >= *(v4 + 24) >> 1)
    {
      sub_267C70AB8();
      v4 = v30;
    }

    *(v4 + 16) = v26 + 1;
    *(v4 + 8 * v26 + 32) = v5;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_267C15008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_267EF79B8();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = sub_267EF4228();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C15160, 0, 0);
}

uint64_t sub_267C15160()
{
  v0[18] = *(v0[8] + 16);
  v1 = OUTLINED_FUNCTION_7_7();
  v4 = sub_267D5D584(v1, v2, v3);
  v0[19] = 0;
  v0[20] = v4;
  if (v0[18])
  {
    v5 = *(*(v0[8] + 32) + 16);
    if (v5)
    {
      v6 = 0;

      v7 = (v65 + 56);
      v67 = MEMORY[0x277D84F90];
      while (1)
      {
        v9 = *(v7 - 3);
        v8 = *(v7 - 2);
        if (*v7 == 1)
        {
          v10 = *(v7 - 1);
          v11 = v0[10];
          sub_267EF2D48();

          v12 = sub_267EF8FF8();

          v13 = CEMCreateEmojiLocaleData();

          OUTLINED_FUNCTION_3();
          v14 = sub_267EF8FF8();
          v15 = CEMEmojiTokenCreateWithString();

          v16 = CEMEmojiTokenCopyNameWithCount();
          if (v13)
          {
            swift_unknownObjectRelease();
          }

          if (v15)
          {
            swift_unknownObjectRelease();
          }

          if (!v16)
          {
            goto LABEL_19;
          }

          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

LABEL_19:
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v22 = sub_267EF8A08();
            __swift_project_value_buffer(v22, qword_280240FB0);

            v23 = sub_267EF89F8();
            v24 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_5_2(v24))
            {
              v25 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              *v25 = 136315138;
              v26 = OUTLINED_FUNCTION_3();
              v29 = sub_267BA33E8(v26, v27, v28);
              OUTLINED_FUNCTION_3();
              sub_267BFE17C();
              *(v25 + 4) = v29;
              _os_log_impl(&dword_267B93000, v23, v24, "#EmojiUtils Failed to get description of emoji: %s", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v68);
              OUTLINED_FUNCTION_32_0();
              OUTLINED_FUNCTION_32_0();
            }

            else
            {

              OUTLINED_FUNCTION_3();
              sub_267BFE17C();
            }

            OUTLINED_FUNCTION_3();
            sub_267BFE17C();
            goto LABEL_25;
          }

          v0[2] = 0;
          v0[3] = 0;
          sub_267EF9018();

          v17 = v0[3];
          if (!v17)
          {
            goto LABEL_19;
          }

          v66 = v0[2];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v67 + 16);
            OUTLINED_FUNCTION_4_7();
            sub_267BF4EE8();
            v67 = v31;
          }

          v19 = *(v67 + 16);
          v18 = *(v67 + 24);
          if (v19 >= v18 >> 1)
          {
            OUTLINED_FUNCTION_8_2(v18);
            sub_267BF4EE8();
            v67 = v32;
          }

          OUTLINED_FUNCTION_3();
          sub_267BFE17C();
          *(v67 + 16) = v19 + 1;
          v20 = v67 + 16 * v19;
          *(v20 + 32) = v66;
          *(v20 + 40) = v17;
        }

        else
        {
          v21 = *(v7 - 2);

          v6 = v8;
        }

LABEL_25:
        v7 += 32;
        if (!--v5)
        {
          v33 = *(v65 + 16);
          v34 = v0[18];
          v35 = v67;
          goto LABEL_30;
        }
      }
    }

    v6 = 0;
    v35 = MEMORY[0x277D84F90];
LABEL_30:
    v38 = v6;

    v39 = *(v35 + 16);
    if (v39)
    {
      v0[4] = MEMORY[0x277D84F90];
      sub_267C7220C();
      v40 = v0[4];
      v41 = (v35 + 40);
      do
      {
        v42 = v0[13];
        v43 = *(v41 - 1);
        v44 = *v41;

        sub_267EF90F8();

        v0[4] = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          OUTLINED_FUNCTION_8_2(v45);
          sub_267C7220C();
          v40 = v0[4];
        }

        v48 = v0[12];
        v47 = v0[13];
        v49 = v0[11];
        *(v40 + 16) = v46 + 1;
        OUTLINED_FUNCTION_9_4(v48);
        v52(v40 + v50 + *(v51 + 40) * v46);
        v41 += 2;
        --v39;
      }

      while (v39);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v0[21] = v40;
    if (v38)
    {
      v54 = v0[14];
      sub_267EF90F8();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    OUTLINED_FUNCTION_11_5(v53, v55);
    v56 = swift_task_alloc();
    v0[22] = v56;
    *v56 = v0;
    OUTLINED_FUNCTION_0_4(v56);

    return sub_267CE9DE8();
  }

  else
  {
    v36 = v4;
    v37 = v0[10];
    if (sub_267E43718())
    {
      v0[7] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
      sub_267BF5748();
    }

    else
    {
      v0[6] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
      sub_267BF5748();
      OUTLINED_FUNCTION_7_7();
    }

    v58 = sub_267EF8FC8();
    v60 = v59;

    v61 = v0[17];
    v63 = v0[13];
    v62 = v0[14];

    v64 = v0[1];

    return v64(v58, v60);
  }
}

uint64_t sub_267C157B0()
{
  v2 = *v1;
  v3 = (*v1)[22];
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[21];
  if (v0)
  {
    v6 = v2[20];
    sub_267BBD6F0(v2[14]);

    v7 = sub_267C16050;
  }

  else
  {
    sub_267BBD6F0(v2[14]);

    v7 = sub_267C1590C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267C1590C()
{
  v1 = v0[20];
  v2 = v0[17];
  v0[5] = sub_267EF41F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  OUTLINED_FUNCTION_7_7();
  v3 = sub_267EF8FC8();
  v5 = v4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_267D5FFB4(v0[20]);
    v7 = v75;
  }

  v8 = v0[19];
  result = (*(v0[16] + 8))(v0[17], v0[15]);
  if (v8 >= *(v7 + 16))
  {
    __break(1u);
    return result;
  }

  v10 = v7 + 16 * v0[19];
  v11 = *(v10 + 40);
  *(v10 + 32) = v3;
  *(v10 + 40) = v5;

  v13 = v0[18];
  v12 = v0[19];
  v0[19] = v12 + 1;
  v0[20] = v7;
  if (v12 + 1 == v13)
  {
    v14 = v0[10];
    if (sub_267E43718())
    {
      v0[7] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    }

    else
    {
      v0[6] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
      OUTLINED_FUNCTION_7_7();
    }

    v47 = sub_267EF8FC8();
    v49 = v48;

    v50 = v0[17];
    v52 = v0[13];
    v51 = v0[14];

    v53 = v0[1];

    return v53(v47, v49);
  }

  v77 = v12 + 1;
  v15 = *(*(v0[8] + 8 * (v12 + 1) + 32) + 16);
  if (v15)
  {
    v16 = 0;

    v17 = (v76 + 56);
    v78 = MEMORY[0x277D84F90];
    while (1)
    {
      v19 = *(v17 - 3);
      v18 = *(v17 - 2);
      if (*v17 == 1)
      {
        v20 = *(v17 - 1);
        v21 = v0[10];
        sub_267EF2D48();

        v22 = sub_267EF8FF8();

        v23 = CEMCreateEmojiLocaleData();

        OUTLINED_FUNCTION_1_10();
        v24 = sub_267EF8FF8();
        v25 = CEMEmojiTokenCreateWithString();

        v26 = CEMEmojiTokenCopyNameWithCount();
        if (v23)
        {
          swift_unknownObjectRelease();
        }

        if (v25)
        {
          swift_unknownObjectRelease();
        }

        if (!v26)
        {
          goto LABEL_24;
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

LABEL_24:
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v33 = sub_267EF8A08();
          __swift_project_value_buffer(v33, qword_280240FB0);

          v34 = sub_267EF89F8();
          v35 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v35))
          {
            v36 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *v36 = 136315138;
            v37 = OUTLINED_FUNCTION_1_10();
            v40 = sub_267BA33E8(v37, v38, v39);
            OUTLINED_FUNCTION_1_10();
            sub_267BFE17C();
            *(v36 + 4) = v40;
            _os_log_impl(&dword_267B93000, v34, v35, "#EmojiUtils Failed to get description of emoji: %s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v81);
            OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_32_0();
          }

          else
          {

            OUTLINED_FUNCTION_1_10();
            sub_267BFE17C();
          }

          OUTLINED_FUNCTION_1_10();
          sub_267BFE17C();
          goto LABEL_30;
        }

        v0[2] = 0;
        v0[3] = 0;
        sub_267EF9018();

        v27 = v0[3];
        if (!v27)
        {
          goto LABEL_24;
        }

        v79 = v16;
        v28 = v0[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = *(v78 + 16);
          OUTLINED_FUNCTION_4_7();
          sub_267BF4EE8();
          v78 = v42;
        }

        v30 = *(v78 + 16);
        v29 = *(v78 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_8_2(v29);
          sub_267BF4EE8();
          v78 = v43;
        }

        OUTLINED_FUNCTION_1_10();
        sub_267BFE17C();
        *(v78 + 16) = v30 + 1;
        v31 = v78 + 16 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        v16 = v79;
      }

      else
      {
        v32 = *(v17 - 2);

        v16 = v18;
      }

LABEL_30:
      v17 += 32;
      if (!--v15)
      {
        v44 = *(v76 + 16);
        v45 = v0[18];
        v46 = v78;
        goto LABEL_37;
      }
    }
  }

  v16 = 0;
  v46 = MEMORY[0x277D84F90];
LABEL_37:

  v54 = *(v0[8] + 8 * v77 + 24);
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = *(v54 + 32 * v55 + 24);
  }

  v57 = *(v46 + 16);
  if (v57)
  {
    v80 = v16;
    v0[4] = MEMORY[0x277D84F90];
    sub_267C7220C();
    v58 = v0[4];
    v59 = (v46 + 40);
    do
    {
      v60 = v0[13];
      v61 = *(v59 - 1);
      v62 = *v59;

      sub_267EF90F8();

      v0[4] = v58;
      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      if (v64 >= v63 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v63);
        sub_267C7220C();
        v58 = v0[4];
      }

      v66 = v0[12];
      v65 = v0[13];
      v67 = v0[11];
      *(v58 + 16) = v64 + 1;
      OUTLINED_FUNCTION_9_4(v66);
      v70(v58 + v68 + *(v69 + 40) * v64);
      v59 += 2;
      --v57;
    }

    while (v57);

    v16 = v80;
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v0[21] = v58;
  if (v16)
  {
    v72 = v0[14];
    sub_267EF90F8();

    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  OUTLINED_FUNCTION_11_5(v71, v73);
  v74 = swift_task_alloc();
  v0[22] = v74;
  *v74 = v0;
  OUTLINED_FUNCTION_0_4();

  return sub_267CE9DE8();
}

uint64_t sub_267C16050()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

BOOL sub_267C160C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF2728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_10();
  sub_267BFDCA0();
  v12 = v11;
  if (*(v11 + 16))
  {
    v43 = v10;
    v48 = 0;
    v49 = 0xE000000000000000;
    v13 = sub_267E43718();
    v14 = 32;
    if (!v13)
    {
      v14 = 0;
    }

    v45 = v14;
    if (v13)
    {
      v15 = 0xE100000000000000;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = *(v12 + 16);
    if (!v16)
    {

      v25 = 0;
LABEL_25:

      OUTLINED_FUNCTION_1_10();
      sub_267EF90F8();
      v34 = sub_267EF79B8();
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v34);
      return v25;
    }

    v38 = v7;
    v39 = v6;
    v40 = a2;
    v41 = a3;
    v42 = a1;
    v17 = 0;
    v18 = 0;
    v19 = -v16;
    v20 = v12 + 56;
    v21 = 1;
    v37 = v12 + 56;
    while (2)
    {
      v44 = v17;
      v22 = (v20 + 32 * v18++);
      while (1)
      {
        if ((v18 - 1) >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v23 = *(v22 - 1);
        if (*v22)
        {
          break;
        }

        a1 = *(v22 - 3);
        v24 = *(v22 - 2);
        v46 = a1;
        v47 = v24;
        swift_bridgeObjectRetain_n();
        MEMORY[0x26D608E60](v45, v15);
        MEMORY[0x26D608E60](v46, v47);
        sub_267BFE17C();

        v21 = 0;
        ++v18;
        v22 += 32;
        if (v19 + v18 == 1)
        {

          OUTLINED_FUNCTION_10_7();
LABEL_22:
          v46 = v48;
          v47 = v12;

          v33 = v43;
          sub_267EF26D8();
          sub_267BB5034();
          sub_267EF9918();
          (*(v15 + 8))(v33, v18);

          OUTLINED_FUNCTION_1_10();
          sub_267EF7988();
          v30 = sub_267EF79B8();
          v31 = a1;
          v32 = 0;
          goto LABEL_23;
        }
      }

      v17 = v44 + v23;
      if (!__OFADD__(v44, v23))
      {
        v20 = v37;
        if (v19 + v18)
        {
          continue;
        }

        OUTLINED_FUNCTION_10_7();
        if (v21)
        {
          v25 = v17 > 2;
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      break;
    }

LABEL_28:
    __break(1u);
  }

  else
  {

    if (qword_280228818 == -1)
    {
      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_0();
LABEL_19:
  v26 = sub_267EF8A08();
  __swift_project_value_buffer(v26, qword_280240FB0);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_267B93000, v27, v28, "#EmojiUtils No group name tokens to process", v29, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v30 = sub_267EF79B8();
  v31 = a1;
  v32 = 1;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  return 0;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_267C164B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_267C164F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_267C16560()
{
  v10 = sub_267EF9648();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_267EF9638();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_267EF8EA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_267C10AB0();
  sub_267EF8E98();
  v11 = MEMORY[0x277D84F90];
  sub_267C16E34(&qword_280229040, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267C16E7C(&qword_280229050, &qword_280229048, &unk_267EFC400);
  sub_267EF99C8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_267EF9668();
  qword_280229178 = result;
  return result;
}

uint64_t sub_267C167B0()
{
  v1 = sub_267EF8E58();
  v2 = OUTLINED_FUNCTION_58(v1);
  v27 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_267EF8EA8();
  v8 = OUTLINED_FUNCTION_58(v26);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_267EF6F58();
  v16 = OUTLINED_FUNCTION_58(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  if (qword_2802286F8 != -1)
  {
    swift_once();
  }

  v25 = qword_280229178;
  (*(v18 + 16))(&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v15);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  (*(v18 + 32))(v22 + v21, &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  aBlock[4] = sub_267C16B34;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C16DE4;
  aBlock[3] = &block_descriptor_0;
  v23 = _Block_copy(aBlock);
  sub_267EF8E78();
  v28 = MEMORY[0x277D84F90];
  sub_267C16E34(&qword_280229180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229188, qword_267F0DFB0);
  sub_267C16E7C(&qword_280229190, &qword_280229188, qword_267F0DFB0);
  sub_267EF99C8();
  MEMORY[0x26D609320](0, v14, v7, v23);
  _Block_release(v23);
  (*(v27 + 8))(v7, v1);
  (*(v10 + 8))(v14, v26);
}

uint64_t sub_267C16B34()
{
  v1 = *(sub_267EF6F58() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_267BF3A80(v2);
}

void sub_267C16B94(void *a1, char a2)
{
  if (a2)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v3 = sub_267EF8A08();
    __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = a1;
    oslog = sub_267EF89F8();
    v5 = sub_267EF95E8();
    sub_267C16E28(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_267EF9F68();
      v10 = sub_267BA33E8(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_267B93000, oslog, v5, "#Donation+Utilities: Error donating to Siri Remembers %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x26D60A7B0](v7, -1, -1);
      MEMORY[0x26D60A7B0](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    oslog = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267B93000, oslog, v12, "#Donation+Utilities: Donated successfully to Siri Remembers", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }
  }
}

uint64_t sub_267C16DE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_267C16E28(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_267C16E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267C16E7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_267C16F08(char a1)
{
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](a1 & 1);
  return sub_267EFA018();
}

uint64_t sub_267C16F6C()
{
  v1 = *v0;
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](v1);
  return sub_267EFA018();
}

void sub_267C16FC0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UnsendMessagesFlow.State(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = v19 - v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  (*(v14 + 16))(v20, v3, v12);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_48();
    v45 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v46 = v1;
    v44 = v26;
    v49 = v26;
    *v25 = 136315138;
    sub_267C1BF00(&qword_28022AF50, MEMORY[0x277D5C118]);
    v27 = sub_267EF9E58();
    v29 = v28;
    (*(v14 + 8))(v20, v12);
    v30 = sub_267BA33E8(v27, v29, &v49);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_267B93000, v22, v23, "#UnsendMessagesFlow received input %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v1 = v46;
    OUTLINED_FUNCTION_32_0();
    v11 = v45;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v14 + 8))(v20, v12);
  }

  v31 = OBJC_IVAR____TtC16SiriMessagesFlow18UnsendMessagesFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_7();
  sub_267C1BCAC(v1 + v31, v11, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_14();
  sub_267C1B8D8(v11, v34);
  if (EnumCaseMultiPayload != 3)
  {

    v35 = sub_267EF89F8();
    v36 = sub_267EF95D8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_48();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136315138;
      OUTLINED_FUNCTION_3_7();
      sub_267C1BCAC(v39 + v31, v47, v40);
      v41 = sub_267EF9098();
      v43 = sub_267BA33E8(v41, v42, &v48);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_267B93000, v35, v36, "#UnsendMessagesFlow input received in state %s, ignoring", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C173A8()
{
  OUTLINED_FUNCTION_12();
  v1[38] = v2;
  v1[39] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[40] = OUTLINED_FUNCTION_50();
  v1[41] = swift_task_alloc();
  v6 = type metadata accessor for TimedSentMessageContext(0);
  v1[42] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[43] = v7;
  v1[44] = *(v8 + 64);
  v1[45] = OUTLINED_FUNCTION_50();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v9 = type metadata accessor for UnsendMessagesFlow.State(0);
  v1[49] = v9;
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[50] = OUTLINED_FUNCTION_50();
  v1[51] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C174E4()
{
  v154 = v1;
  v3 = *(v1 + 408);
  v4 = *(v1 + 392);
  v5 = *(v1 + 312);
  v6 = OBJC_IVAR____TtC16SiriMessagesFlow18UnsendMessagesFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_7();
  sub_267C1BCAC(v5 + v6, v3, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_267C1B4DC(*(v1 + 408), *(v1 + 360));
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v95 = sub_267EF8A08();
      __swift_project_value_buffer(v95, qword_280240FB0);
      v96 = sub_267EF89F8();
      v97 = sub_267EF95C8();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v98);
        _os_log_impl(&dword_267B93000, v96, v97, "#UnsendMessagesFlow pushing unsend RCH flow", v0, 2u);
        OUTLINED_FUNCTION_26();
      }

      v99 = *(v1 + 360);
      v101 = *(v1 + 304);
      v100 = *(v1 + 312);

      sub_267C19954();
      goto LABEL_47;
    case 2:
      v67 = **(v1 + 408);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v68 = sub_267EF8A08();
      __swift_project_value_buffer(v68, qword_280240FB0);
      v69 = OUTLINED_FUNCTION_43();
      v70 = sub_267EF89F8();
      v71 = sub_267EF95E8();

      if (os_log_type_enabled(v70, v71))
      {
        OUTLINED_FUNCTION_48();
        v72 = OUTLINED_FUNCTION_40_2();
        *v2 = 138412290;
        v73 = v67;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v2 + 4) = v74;
        *v72 = v74;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
        sub_267B9F98C(v72, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_29_1();
      }

      v80 = *(v1 + 304);

      sub_267EF4018();
      goto LABEL_49;
    case 3:
      v81 = *(v1 + 304);
      v82 = *(v1 + 312);
      sub_267C191D8();
      goto LABEL_49;
    case 4:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v46 = *(v1 + 312);
      v47 = sub_267EF8A08();
      __swift_project_value_buffer(v47, qword_280240FB0);

      v48 = sub_267EF89F8();
      v49 = sub_267EF95E8();

      if (os_log_type_enabled(v48, v49))
      {
        v51 = *(v1 + 392);
        v50 = *(v1 + 400);
        v52 = OUTLINED_FUNCTION_48();
        v53 = swift_slowAlloc();
        v153 = v53;
        *v52 = 136315138;
        OUTLINED_FUNCTION_3_7();
        sub_267C1BCAC(v5 + v6, v50, v54);
        v55 = sub_267EF9098();
        v57 = sub_267BA33E8(v55, v56, &v153);

        *(v52 + 4) = v57;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      v63 = *(v1 + 408);
      v64 = *(v1 + 304);
      sub_267EF4018();
      OUTLINED_FUNCTION_2_14();
      v66 = v63;
      goto LABEL_48;
    case 5:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v102 = sub_267EF8A08();
      __swift_project_value_buffer(v102, qword_280240FB0);
      v103 = sub_267EF89F8();
      v104 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_5_2(v104))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v105, v106, v107, v108, v109, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v111 = *(v1 + 328);
      v110 = *(v1 + 336);
      v112 = *(v1 + 312);

      v113 = *(v112 + 136);
      sub_267C4C9C0(v111);
      if (__swift_getEnumTagSinglePayload(v111, 1, v110) == 1)
      {
        sub_267B9F98C(*(v1 + 328), &qword_280229228, &qword_267EFDD20);
        v114 = sub_267EF89F8();
        v115 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_5_2(v115))
        {
          v116 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v116);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v117, v118, v119, v120, v121, 2u);
          OUTLINED_FUNCTION_26();
        }

        v123 = *(v1 + 392);
        v122 = *(v1 + 400);

        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_267C1BA9C(v122, v5 + v6);
        swift_endAccess();
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v1 + 416) = v124;
        *v124 = v125;
        v126 = sub_267C17F9C;
        goto LABEL_43;
      }

      v141 = *(v1 + 376);
      v99 = *(v1 + 384);
      v143 = *(v1 + 344);
      v142 = *(v1 + 352);
      v144 = *(v1 + 304);
      v145 = *(v1 + 312);
      sub_267C1B4DC(*(v1 + 328), v99);
      sub_267B9AFEC(v145 + 56, v1 + 136);
      sub_267C195EC();
      v147 = v146;
      sub_267B9AFEC(v145 + 16, v1 + 176);
      type metadata accessor for RequestSupportCheckFlow();
      swift_allocObject();
      *(v1 + 296) = sub_267E90F8C((v1 + 136), v147, (v1 + 176));
      OUTLINED_FUNCTION_0_5();
      sub_267C1BCAC(v99, v141, v148);
      v149 = (*(v143 + 80) + 24) & ~*(v143 + 80);
      v150 = swift_allocObject();
      *(v150 + 16) = v145;
      sub_267C1B4DC(v141, v150 + v149);
      sub_267C1BF00(&qword_280229230, type metadata accessor for RequestSupportCheckFlow);

      sub_267EF3FC8();

LABEL_47:
      v65 = type metadata accessor for TimedSentMessageContext;
      v66 = v99;
LABEL_48:
      sub_267C1B8D8(v66, v65);
      goto LABEL_49;
    case 6:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 432) = v127;
      *v127 = v128;
      v127[1] = sub_267C182A0;
      v129 = *(v1 + 312);
      OUTLINED_FUNCTION_46();

      return sub_267C1A398();
    case 7:
      v83 = *(v1 + 320);
      v84 = *(*(v1 + 312) + 136);
      OUTLINED_FUNCTION_38_3(EnumCaseMultiPayload, v9, v10, *(v1 + 336));
      sub_267C4CF24(v83);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v85 = sub_267EF8A08();
      __swift_project_value_buffer(v85, qword_280240FB0);
      v86 = sub_267EF89F8();
      v87 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_5_2(v87))
      {
        v88 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v88);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v89, v90, v91, v92, v93, 2u);
        OUTLINED_FUNCTION_26();
      }

      v94 = *(v1 + 304);

      sub_267EF4018();
      goto LABEL_49;
    default:
      sub_267C1B4DC(*(v1 + 408), *(v1 + 368));
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v11 = sub_267EF8A08();
      __swift_project_value_buffer(v11, qword_280240FB0);
      v12 = sub_267EF89F8();
      v13 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_5_2(v13))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v19 = *(v1 + 312);

      OUTLINED_FUNCTION_9_6();
      v20 = OUTLINED_FUNCTION_7_1();
      v21(v20);
      v22 = *(v1 + 128);
      __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
      OUTLINED_FUNCTION_7_1();
      v23 = sub_267EF3C58();
      __swift_destroy_boxed_opaque_existential_0((v1 + 96));
      if (v23)
      {
        v24 = sub_267EF89F8();
        v25 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_5_2(v25))
        {
          v26 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v26);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_26();
        }

        v32 = *(v1 + 368);
        v33 = *(v1 + 376);
        v35 = *(v1 + 344);
        v34 = *(v1 + 352);
        v36 = *(v1 + 304);
        v37 = *(v1 + 312);

        v38 = sub_267EF33A8();
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        swift_allocObject();
        *(v1 + 288) = sub_267EF3388();
        OUTLINED_FUNCTION_0_5();
        sub_267C1BCAC(v32, v33, v41);
        v42 = (*(v35 + 80) + 24) & ~*(v35 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = v37;
        sub_267C1B4DC(v33, v43 + v42);
        v44 = swift_allocObject();
        *(v44 + 16) = sub_267C1BD0C;
        *(v44 + 24) = v43;

        sub_267EF3FC8();

        OUTLINED_FUNCTION_19_2();
        sub_267C1B8D8(v32, v45);

LABEL_49:
        OUTLINED_FUNCTION_12_6();

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_46();

        __asm { BRAA            X1, X16 }
      }

      v132 = *(v1 + 392);
      v133 = *(v1 + 400);
      v134 = *(v1 + 368);
      OUTLINED_FUNCTION_0_5();
      sub_267C1BCAC(v135, v133, v136);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_267C1BA9C(v133, v5 + v6);
      swift_endAccess();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 424) = v124;
      *v124 = v137;
      v126 = sub_267C18118;
LABEL_43:
      v124[1] = v126;
      v138 = *(v1 + 304);
      v139 = *(v1 + 312);
      OUTLINED_FUNCTION_46();

      return sub_267C173A8();
  }
}

uint64_t sub_267C17F9C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 416);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C18084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_267C18118()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 424);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C18200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 368);
  OUTLINED_FUNCTION_19_2();
  sub_267C1B8D8(v12, v13);
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_267C182A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 440) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C1839C()
{
  v1 = v0[39];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_43();
  v5(v4, v2);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v6);
  v8 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[56] = v9;
  *v9 = v10;
  v9[1] = sub_267C18488;

  return MEMORY[0x2821BB5D0](v0 + 2, v6, v7);
}

uint64_t sub_267C18488()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 456) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C18584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v10 + 2);
  __swift_destroy_boxed_opaque_existential_0(v10 + 7);
  v11 = v10[38];
  sub_267EF4018();
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267C18630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 440);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = OUTLINED_FUNCTION_43();
  v15 = sub_267EF89F8();
  v16 = sub_267EF95E8();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_40_2();
    *v11 = 138412290;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v19;
    *v17 = v19;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v25 = *(v10 + 304);
  sub_267EF4018();
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_267C187C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v10 + 2);
  __swift_destroy_boxed_opaque_existential_0(v10 + 7);
  v12 = v10[57];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = OUTLINED_FUNCTION_43();
  v15 = sub_267EF89F8();
  v16 = sub_267EF95E8();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_40_2();
    *v11 = 138412290;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v19;
    *v17 = v19;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v25 = v10[38];
  sub_267EF4018();
  OUTLINED_FUNCTION_12_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_267C18960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnsendMessagesFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  if (*(a1 + 8) == 1)
  {
    v11 = v10;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    v13 = v10;
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();

    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_12;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    v20 = "#UnsendMessagesFlow RequestSupportCheckFlow failed: %@";
    goto LABEL_11;
  }

  if (!v10)
  {
    sub_267C1BCAC(a3, v9, type metadata accessor for TimedSentMessageContext);
    goto LABEL_13;
  }

  v21 = v10;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = v10;
  v14 = sub_267EF89F8();
  v15 = sub_267EF95E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v24 = v10;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v25;
    *v17 = v25;
    v20 = "#UnsendMessagesFlow RequestSupportCheckFlow returned unsupported: %@";
LABEL_11:
    _os_log_impl(&dword_267B93000, v14, v15, v20, v16, 0xCu);
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v17, -1, -1);
    MEMORY[0x26D60A7B0](v16, -1, -1);
  }

LABEL_12:

  *v9 = v10;
LABEL_13:
  swift_storeEnumTagMultiPayload();
  v26 = OBJC_IVAR____TtC16SiriMessagesFlow18UnsendMessagesFlow_state;
  swift_beginAccess();
  sub_267C1BA9C(v9, a2 + v26);
  return swift_endAccess();
}

uint64_t sub_267C18C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v1[2] = 0xD000000000000011;
  v1[3] = 0x8000000267F11F50;
  v1[4] = 0xD000000000000022;
  v1[5] = 0x8000000267F11F70;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_267C18DA0;

  return sub_267C9BCE8(sub_267C1BEF4, v1);
}

uint64_t sub_267C18DA0()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;
  *(v7 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v16 = *(v7 + 16);

    v17 = *(v11 + 8);

    return v17(v5, v3);
  }
}

uint64_t sub_267C18EF4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 32);

  return v2();
}

uint64_t sub_267C18F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnsendMessagesFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267C1BCAC(a2, v7, type metadata accessor for TimedSentMessageContext);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow18UnsendMessagesFlow_state;
  swift_beginAccess();
  sub_267C1BA9C(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t sub_267C19030(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = &unk_267EFCBB8;
  v12[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267C1913C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C173A8();
}

uint64_t sub_267C191D8()
{
  v1 = type metadata accessor for UnsendMessagesFlow.State(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
  v8 = sub_267EF3488();
  OUTLINED_FUNCTION_30_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_267EFC020;
  sub_267EF3468();
  sub_267EF2F28();

  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC16SiriMessagesFlow18UnsendMessagesFlow_state;
  swift_beginAccess();
  sub_267C1BA9C(v7, v0 + v13);
  swift_endAccess();
  sub_267EF3428();

  sub_267EF3FC8();
}

uint64_t sub_267C1938C(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for UnsendMessagesFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_267B93000, v9, v10, "#UnsendMessagesFlow Sharing policy flow failed, request unsupported", v11, 2u);
      MEMORY[0x26D60A7B0](v11, -1, -1);
    }

    sub_267C1BB08();
    v12 = swift_allocError();
    *v13 = 0;
    *v7 = v12;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95C8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v15, v16, "#UnsendMessagesFlow Sharing policy flow passed", v17, 2u);
      MEMORY[0x26D60A7B0](v17, -1, -1);
    }
  }

  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtC16SiriMessagesFlow18UnsendMessagesFlow_state;
  swift_beginAccess();
  sub_267C1BA9C(v7, a2 + v18);
  return swift_endAccess();
}

void sub_267C195EC()
{
  OUTLINED_FUNCTION_48_0();
  v1 = sub_267EF7B88();
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v5 = type metadata accessor for TimedSentMessageContext(0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229208, &qword_267EFCB90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267EFC020;
  sub_267B9AFEC((v0 + 7), &v39);
  OUTLINED_FUNCTION_0_5();
  v13 = OUTLINED_FUNCTION_33();
  sub_267C1BCAC(v13, v14, v15);
  sub_267B9AFEC((v0 + 2), &v36);
  sub_267B9AFEC((v0 + 20), v35);
  __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
  v16 = sub_267C1B540(&v39, v11, &v36);
  __swift_destroy_boxed_opaque_existential_0(v35);
  *(v12 + 56) = type metadata accessor for UnsendMessagesUnsupportedUseCaseCheckFlowStrategy();
  *(v12 + 64) = &off_2878D07F0;
  *(v12 + 32) = v16;
  sub_267B9AFEC((v0 + 7), &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  type metadata accessor for SmsNLv4Intent();
  if (swift_dynamicCast())
  {

    v17 = v0[6];
    OUTLINED_FUNCTION_11_6(v0 + 2, v0[5]);
    v18 = OUTLINED_FUNCTION_33();
    v19(v18);
    v20 = type metadata accessor for NetworkStatusProvider();
    v21 = OUTLINED_FUNCTION_49();
    v22 = qword_2802286F0;

    if (v22 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    type metadata accessor for MessagesCATs();
    sub_267EF7B68();
    v23 = sub_267EF78E8();
    v37 = v20;
    v38 = &off_2878D2ED0;
    *&v36 = v21;
    v24 = type metadata accessor for OfflineCheckFlowStrategy();
    v25 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(&v36, v20);
    OUTLINED_FUNCTION_23();
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v28);
    OUTLINED_FUNCTION_0_0();
    v31 = (v30 - v29);
    (*(v32 + 16))(v30 - v29);
    v33 = *v31;
    v25[10] = v20;
    v25[11] = &off_2878D2ED0;
    v25[7] = v33;
    sub_267B9A5E8(&v39, (v25 + 2));
    v25[12] = v23;
    __swift_destroy_boxed_opaque_existential_0(&v36);

    v40 = v24;
    v41 = &off_2878D2580;
    *&v39 = v25;
    sub_267B9A5E8(&v39, &v36);
    v35[0] = v12;
    if (*(v12 + 16) >= *(v12 + 24) >> 1)
    {
      sub_267C70ADC();
      v35[0] = v34;
    }

    sub_267C730A8();
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C19954()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v38 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  v12 = sub_267EF7B88();
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v16 = type metadata accessor for TimedSentMessageContext(0);
  v17 = OUTLINED_FUNCTION_18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  type metadata accessor for UnsendMessageState();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  OUTLINED_FUNCTION_0_5();
  sub_267C1BCAC(v3, v22, v24);
  sub_267B9AFEC((v0 + 2), v39);
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  type metadata accessor for UnsendMessagesCATs();
  sub_267EF7B68();
  v25 = sub_267EF78E8();
  type metadata accessor for CommonTemplateProvider();
  v26 = OUTLINED_FUNCTION_49();
  sub_267C1B930(v22, v39, v25, v26);
  sub_267C19DD4();
  v27 = *__swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  sub_267E2F0F8();
  v29 = v1[10];
  v28 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v29);
  (*(v28 + 8))(v29, v28);
  LOBYTE(v28) = sub_267EF3528();
  (*(v5 + 8))(v11, v38);
  if (v28)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);
    v31 = sub_267EF89F8();
    v32 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v32))
    {
      v33 = OUTLINED_FUNCTION_32();
      *v33 = 0;
      _os_log_impl(&dword_267B93000, v31, v32, "#UnsendMessagesFlow pushing RCHFlow", v33, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF3FD8();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v36))
    {
      v37 = OUTLINED_FUNCTION_32();
      *v37 = 0;
      _os_log_impl(&dword_267B93000, v35, v36, "#UnsendMessagesFlow RCHFlow.on() returned false", v37, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C19D1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsendMessagesFlow.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow18UnsendMessagesFlow_state;
  swift_beginAccess();
  sub_267C1BA9C(v6, a2 + v7);
  return swift_endAccess();
}

void sub_267C19DD4()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v57 = v2;
  v4 = v3;
  v5 = type metadata accessor for TimedSentMessageContext(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802291C8, &qword_267EFCB78);
  OUTLINED_FUNCTION_23();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v52[-v20];
  sub_267BA9F38(0, &qword_2802291D0, 0x277CD4290);
  v22 = sub_267BA9F38(0, &qword_2802291D8, 0x277CD4298);
  sub_267EF36C8();
  v23 = *(v4 + *(v6 + 32));
  sub_267EF3568();
  OUTLINED_FUNCTION_45_4();
  sub_267EF3648();
  OUTLINED_FUNCTION_41_1();
  v24 = *(v22 + 176);
  v25 = OUTLINED_FUNCTION_31();
  if (v26(v25) & 1) != 0 || (OUTLINED_FUNCTION_41_1(), v27 = *(v22 + 296), v28 = OUTLINED_FUNCTION_31(), (v29(v28)) || (*(v1 + 152) & 1) == 0)
  {
    v55 = v19;
    v56 = v13;
    OUTLINED_FUNCTION_0_5();
    v54 = v4;
    v30 = OUTLINED_FUNCTION_33();
    sub_267C1BCAC(v30, v31, v32);
    OUTLINED_FUNCTION_41_1();
    v33 = *(v22 + 176);
    v34 = OUTLINED_FUNCTION_31();
    v53 = v35(v34);
    sub_267B9AFEC(v1 + 16, v63);
    if (qword_2802286F0 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    sub_267B9AFEC(qword_2802405A0, v61);
    sub_267EF8668();
    __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v59[3] = &type metadata for CATProvider;
    v59[4] = &off_2878CE7A0;
    v58[3] = &type metadata for MessagesFeatureFlagsImpl;
    v58[4] = off_2878D1228;
    v36 = type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v59, &type metadata for CATProvider);
    __swift_mutable_project_boxed_opaque_existential_1(v58, &type metadata for MessagesFeatureFlagsImpl);
    v40 = v39 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider;
    *(v40 + 24) = &type metadata for CATProvider;
    *(v40 + 32) = &off_2878CE7A0;
    v41 = v39 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_featureFlags;
    *(v41 + 24) = &type metadata for MessagesFeatureFlagsImpl;
    *(v41 + 32) = off_2878D1228;
    v42 = OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_confirmationResponse;
    v43 = sub_267EF44F8();
    __swift_storeEnumTagSinglePayload(v39 + v42, 1, 1, v43);
    sub_267C1B4DC(v10, v39 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sentMessageContext);
    *(v39 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_isDelete) = v53 & 1;
    *(v39 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_unsendMessageState) = v57;
    sub_267B9A5E8(&v60, v39 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sharedContextService);
    sub_267B9A5E8(v63, v39 + 16);

    __swift_destroy_boxed_opaque_existential_0(v58);
    __swift_destroy_boxed_opaque_existential_0(v59);
    __swift_destroy_boxed_opaque_existential_0(v61);
    *&v63[0] = v39;
    sub_267C1BF00(&qword_2802291E0, type metadata accessor for UnsendMessagesConfirmIntentFlowStrategy);
    sub_267EF3588();

    OUTLINED_FUNCTION_45_4();
    sub_267EF3658();
    v13 = v56;
    v19 = v55;
  }

  OUTLINED_FUNCTION_0_5();
  v44 = OUTLINED_FUNCTION_33();
  sub_267C1BCAC(v44, v45, v46);
  sub_267B9AFEC(v1 + 16, v63);
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  sub_267B9AFEC(qword_2802405A0, v61);
  type metadata accessor for CommonTemplateProvider();
  v47 = OUTLINED_FUNCTION_49();
  __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v48 = sub_267C1B600(v10, v63, v47);
  __swift_destroy_boxed_opaque_existential_0(v61);
  *&v63[0] = v48;
  type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  sub_267C1BF00(&qword_2802291E8, type metadata accessor for UnsendMessagesHandleIntentFlowStrategy);
  sub_267EF3558();

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_45_4();
  sub_267EF3638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802291F0, &qword_267EFCB80);
  *&v63[0] = OUTLINED_FUNCTION_49();
  sub_267C1B874();
  sub_267EF3598();

  OUTLINED_FUNCTION_45_4();
  sub_267EF3668();
  (*(v13 + 16))(v19, v21, v11);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229200, &qword_267EFCB88);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_267EF36D8();
  (*(v13 + 8))(v21, v11);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C1A398()
{
  OUTLINED_FUNCTION_12();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64) + 15;
  v1[34] = swift_task_alloc();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64) + 15;
  v1[35] = swift_task_alloc();
  v9 = sub_267EF4228();
  v1[36] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[37] = v10;
  v12 = *(v11 + 64);
  v1[38] = OUTLINED_FUNCTION_50();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267C1A4B4()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[35];
  v2 = v0[33];
  v3 = v2[11];
  __swift_project_boxed_opaque_existential_0(v2 + 7, v2[10]);
  v4 = *(v3 + 296);
  v5 = OUTLINED_FUNCTION_7_1();
  v7 = v6(v5);
  type metadata accessor for UnsendMessagesCATs();
  sub_267EF7B68();
  v0[41] = sub_267EF78E8();
  if (v7)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v8;
    *v8 = v9;
    v8[1] = sub_267C1A690;
    v10 = v0[39];

    return sub_267EBBD9C();
  }

  else
  {
    v12 = v2[11];
    __swift_project_boxed_opaque_existential_0(v2 + 7, v2[10]);
    v13 = *(v12 + 200);
    v14 = OUTLINED_FUNCTION_7_1();
    v16 = v15(v14);
    v17 = v2[10];
    v18 = v2[11];
    __swift_project_boxed_opaque_existential_0(v2 + 7, v17);
    v19 = (*(v18 + 96))(v17, v18);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[44] = v20;
    *v20 = v21;
    v20[1] = sub_267C1AB24;
    v22 = v0[38];

    return sub_267EBC530(v22, v16 & 1, v19 & 1);
  }
}

uint64_t sub_267C1A690()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (!v0)
  {
    v9 = *(v3 + 328);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C1A794()
{
  v1 = v0[43];
  v2 = v0[33];
  (*(v0[37] + 32))(v0[40], v0[39], v0[36]);
  v3 = v2[6];
  OUTLINED_FUNCTION_11_6(v2 + 2, v2[5]);
  v4 = OUTLINED_FUNCTION_6_4();
  v5(v4);
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_6_4();
  if (sub_267EF3C18())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v7 = v2[6];
    OUTLINED_FUNCTION_11_6(v2 + 2, v2[5]);
    v8 = OUTLINED_FUNCTION_6_4();
    v9(v8);
    v10 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_6_4();
    v11 = sub_267EF3BF8();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v12 = v0[33];
  sub_267B9AFEC((v12 + 20), (v0 + 27));
  v13 = v12[11];
  __swift_project_boxed_opaque_existential_0(v12 + 7, v12[10]);
  v14 = *(v13 + 368);
  v15 = OUTLINED_FUNCTION_6_4();
  v16(v15);
  OUTLINED_FUNCTION_44_3();
  v21 = v20 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  if (v22)
  {
    v23 = v19;
  }

  else
  {
    v21 = v17;
    v23 = v18;
  }

  v24 = sub_267DA0F10(v0 + 27, v21, v23);
  if (v1)
  {
    v25 = v0[40];
    v26 = v0[36];
    v27 = v0[37];

    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    (*(v27 + 8))(v25, v26);
    v29 = v0[39];
    v28 = v0[40];
    v30 = v0[38];
    v32 = v0[34];
    v31 = v0[35];

    OUTLINED_FUNCTION_17();
    goto LABEL_11;
  }

  v34 = v24;
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_267EFCA40;
  *(v35 + 32) = v34;
LABEL_10:
  v36 = v0[40];
  v37 = v0[37];
  v52 = v0[39];
  v53 = v0[38];
  v51 = v0[36];
  v54 = v0[35];
  v38 = v0[34];
  v39 = v0[32];
  OUTLINED_FUNCTION_9_6();
  v40 = OUTLINED_FUNCTION_7_1();
  v41(v40);
  OUTLINED_FUNCTION_9_6();
  v42 = OUTLINED_FUNCTION_7_1();
  v43(v42);
  v44 = v0[20];
  __swift_project_boxed_opaque_existential_0(v0 + 17, v44);
  OUTLINED_FUNCTION_7_1();
  sub_267EF3BC8();
  v45 = sub_267EF4158();
  OUTLINED_FUNCTION_38_3(v45, v46, v47, v45);
  sub_267EF4CC8();
  OUTLINED_FUNCTION_34_4();
  v48 = MEMORY[0x277D5C1D8];
  v39[3] = v49;
  v39[4] = v48;
  __swift_allocate_boxed_opaque_existential_0(v39);
  OUTLINED_FUNCTION_28_5();

  sub_267B9F98C(v44, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v38, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  (*(v37 + 8))(v36, v51);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  OUTLINED_FUNCTION_17();
LABEL_11:

  return v33();
}

uint64_t sub_267C1AB24()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    v9 = *(v3 + 328);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C1AC28()
{
  v1 = v0[45];
  v2 = v0[33];
  (*(v0[37] + 32))(v0[40], v0[38], v0[36]);
  v3 = v2[6];
  OUTLINED_FUNCTION_11_6(v2 + 2, v2[5]);
  v4 = OUTLINED_FUNCTION_6_4();
  v5(v4);
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_6_4();
  if (sub_267EF3C18())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v7 = v2[6];
    OUTLINED_FUNCTION_11_6(v2 + 2, v2[5]);
    v8 = OUTLINED_FUNCTION_6_4();
    v9(v8);
    v10 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_6_4();
    v11 = sub_267EF3BF8();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v12 = v0[33];
  sub_267B9AFEC((v12 + 20), (v0 + 27));
  v13 = v12[11];
  __swift_project_boxed_opaque_existential_0(v12 + 7, v12[10]);
  v14 = *(v13 + 368);
  v15 = OUTLINED_FUNCTION_6_4();
  v16(v15);
  OUTLINED_FUNCTION_44_3();
  v21 = v20 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  if (v22)
  {
    v23 = v19;
  }

  else
  {
    v21 = v17;
    v23 = v18;
  }

  v24 = sub_267DA0F10(v0 + 27, v21, v23);
  if (v1)
  {
    v25 = v0[40];
    v26 = v0[36];
    v27 = v0[37];

    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    (*(v27 + 8))(v25, v26);
    v29 = v0[39];
    v28 = v0[40];
    v30 = v0[38];
    v32 = v0[34];
    v31 = v0[35];

    OUTLINED_FUNCTION_17();
    goto LABEL_11;
  }

  v34 = v24;
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_267EFCA40;
  *(v35 + 32) = v34;
LABEL_10:
  v36 = v0[40];
  v37 = v0[37];
  v52 = v0[39];
  v53 = v0[38];
  v51 = v0[36];
  v54 = v0[35];
  v38 = v0[34];
  v39 = v0[32];
  OUTLINED_FUNCTION_9_6();
  v40 = OUTLINED_FUNCTION_7_1();
  v41(v40);
  OUTLINED_FUNCTION_9_6();
  v42 = OUTLINED_FUNCTION_7_1();
  v43(v42);
  v44 = v0[20];
  __swift_project_boxed_opaque_existential_0(v0 + 17, v44);
  OUTLINED_FUNCTION_7_1();
  sub_267EF3BC8();
  v45 = sub_267EF4158();
  OUTLINED_FUNCTION_38_3(v45, v46, v47, v45);
  sub_267EF4CC8();
  OUTLINED_FUNCTION_34_4();
  v48 = MEMORY[0x277D5C1D8];
  v39[3] = v49;
  v39[4] = v48;
  __swift_allocate_boxed_opaque_existential_0(v39);
  OUTLINED_FUNCTION_28_5();

  sub_267B9F98C(v44, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v38, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  (*(v37 + 8))(v36, v51);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  OUTLINED_FUNCTION_17();
LABEL_11:

  return v33();
}

uint64_t sub_267C1AFBC()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[41];

  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267C1B058()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[41];

  v2 = v0[45];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v7 = v0[34];
  v6 = v0[35];

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267C1B0F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  OUTLINED_FUNCTION_2_14();
  return sub_267C1B8D8(v0 + v2, v3);
}

uint64_t *sub_267C1B13C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  OUTLINED_FUNCTION_2_14();
  sub_267C1B8D8(v0 + v2, v3);
  return v0;
}

uint64_t sub_267C1B190()
{
  sub_267C1B13C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267C1B210()
{
  result = type metadata accessor for UnsendMessagesFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_267C1B2E4()
{
  result = type metadata accessor for TimedSentMessageContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_267C1B358();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_267C1B358()
{
  result = qword_2802291C0;
  if (!qword_2802291C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2802291C0);
  }

  return result;
}

uint64_t sub_267C1B3B4()
{
  v1 = *v0;
  sub_267C16FC0();
  return v2 & 1;
}

uint64_t sub_267C1B400()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267C173A8();
}

uint64_t sub_267C1B49C()
{
  type metadata accessor for UnsendMessagesFlow(0);

  return sub_267EF3748();
}

uint64_t sub_267C1B4DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedSentMessageContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C1B540(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v12[3] = &type metadata for CATProvider;
  v12[4] = &off_2878CE7A0;
  v6 = type metadata accessor for UnsendMessagesUnsupportedUseCaseCheckFlowStrategy();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for CATProvider);
  v10 = v9 + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_catProvider;
  *(v10 + 24) = &type metadata for CATProvider;
  *(v10 + 32) = &off_2878CE7A0;
  sub_267B9A5E8(a1, v9 + 56);
  sub_267C1B4DC(a2, v9 + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_sentMessageContext);
  sub_267B9A5E8(a3, v9 + 16);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t sub_267C1B600(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = sub_267EF7B88();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for CommonTemplateProvider();
  v29[3] = v8;
  v29[4] = &off_2878D2530;
  v29[0] = a3;
  v27 = &type metadata for MessagesFeatureFlagsImpl;
  v28 = off_2878D1228;
  v9 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v29, v8);
  v14 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v18 = *v16;
  v19 = (v12 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_commonTemplateProvider);
  v19[3] = v8;
  v19[4] = &off_2878D2530;
  *v19 = v18;
  v20 = v12 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_featureFlags;
  *(v20 + 24) = &type metadata for MessagesFeatureFlagsImpl;
  *(v20 + 32) = off_2878D1228;
  sub_267C1BCAC(a1, v12 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext, type metadata accessor for TimedSentMessageContext);
  v21 = type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
  sub_267EF7B68();
  v22 = sub_267EF78E8();
  v23 = (v12 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesPatterns);
  v23[3] = v21;
  v23[4] = &off_2878D7F50;
  *v23 = v22;
  type metadata accessor for UnsendMessagesCATs();
  sub_267EF7B68();
  v24 = sub_267EF78E8();
  sub_267C1B8D8(a1, type metadata accessor for TimedSentMessageContext);
  *(v12 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs) = v24;
  sub_267B9A5E8(a2, v12 + 16);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v12;
}

unint64_t sub_267C1B874()
{
  result = qword_2802291F8;
  if (!qword_2802291F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802291F0, &qword_267EFCB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802291F8);
  }

  return result;
}

uint64_t sub_267C1B8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267C1B930(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CommonTemplateProvider();
  v22[3] = v8;
  v22[4] = &off_2878D2530;
  v22[0] = a4;
  v9 = type metadata accessor for UnsendMessagesRCHFlowStrategy();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v8);
  v14 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = (v12 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_commonTemplateProvider);
  v19[3] = v8;
  v19[4] = &off_2878D2530;
  *v19 = v18;
  sub_267C1B4DC(a1, v12 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext);
  *(v12 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs) = a3;
  sub_267B9A5E8(a2, v12 + 16);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v12;
}

uint64_t sub_267C1BA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnsendMessagesFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_267C1BB08()
{
  result = qword_280229220;
  if (!qword_280229220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229220);
  }

  return result;
}

uint64_t sub_267C1BB5C()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267C1913C();
}

uint64_t sub_267C1BBF0()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_36_0();

  return sub_267E98DD0();
}

uint64_t sub_267C1BCAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267C1BD0C()
{
  v1 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_267C18F50(v3, v4);
}

uint64_t objectdestroy_19Tm()
{
  v1 = (type metadata accessor for TimedSentMessageContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_267EF2CC8();
  OUTLINED_FUNCTION_22(v6);
  (*(v7 + 8))(v0 + v3);
  v8 = *(v0 + v3 + v1[8]);

  v9 = *(v0 + v3 + v1[11]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267C1BE80(uint64_t a1)
{
  v3 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_267C18960(a1, v5, v6);
}

uint64_t sub_267C1BF00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AutoSendPersonalizationDataRecorder.SendMsgFollowUpValue(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for UnsendMessagesFlow.FlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267C1C0BC()
{
  result = qword_280229238;
  if (!qword_280229238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229238);
  }

  return result;
}

uint64_t sub_267C1C110(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 40) = a2;
  *(v3 + 48) = a1;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_267C1C124(void *a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    if (qword_280228820 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    sub_267EF95E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_267EFC020;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    sub_267EF9C58();
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_267BFBEB4();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_267EF8998();
  }

  else
  {
    sub_267C1C27C(a1);
  }

  return a3(0);
}

uint64_t sub_267C1C27C(void *a1)
{
  v2 = sub_267C1C438(a1);
  if (*(v2 + 16))
  {
    if (qword_280228820 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    sub_267EF95D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_267EFC020;
    v4 = *(v2 + 16);
    v5 = MEMORY[0x277D83C10];
    *(v3 + 56) = MEMORY[0x277D83B88];
    *(v3 + 64) = v5;
    *(v3 + 32) = v4;
    sub_267EF8998();

    v6 = *(v1 + 40);
    v7 = *(v1 + 48);
    v8 = *(v6 + 88);
    v9 = *(v6 + 96);

    sub_267E2C9F8(v8, v9, v2, MEMORY[0x277D84F90]);

    sub_267C1CE68(v2);
  }

  else
  {

    if (qword_280228820 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    sub_267EF95D8();

    return sub_267EF8998();
  }
}

uint64_t sub_267C1C438(void *a1)
{
  v2 = v1;
  v4 = sub_267EF2E38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267C86CD0(a1);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = sub_267BAF0DC(v9);
  if (!v11)
  {

LABEL_24:
    if (qword_280228820 != -1)
    {
LABEL_38:
      OUTLINED_FUNCTION_0_6();
    }

    sub_267EF95D8();
    v35 = MEMORY[0x277D84F90];
LABEL_26:
    sub_267EF8998();
    return v35;
  }

  v12 = v11;
  v47 = v8;
  v48 = v5;
  v49 = v4;
  v13 = 0;
  v55[0] = MEMORY[0x277D84F90];
  while (v12 != v13)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D609870](v13, v10);
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v14 = *(v10 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v54[0] = v14;
    if (sub_267C1CAC8(v54, v2))
    {
      sub_267EF9BD8();
      v16 = *(v55[0] + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v13;
  }

  v17 = v55[0];
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  sub_267EF95D8();
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v18 = swift_allocObject();
  v46 = xmmword_267EFCC90;
  *(v18 + 16) = xmmword_267EFCC90;
  v19 = sub_267BAF0DC(v17);
  v20 = MEMORY[0x277D83B88];
  v21 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v21;
  *(v18 + 32) = v19;
  v22 = sub_267BAF0DC(v10);

  *(v18 + 96) = v20;
  *(v18 + 104) = v21;
  *(v18 + 72) = v22;
  sub_267EF8998();

  if (!sub_267BAF0DC(v17))
  {

    sub_267EF95D8();
    v35 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v23 = *(v2 + 40);
  v24 = *(v23 + 168);

  sub_267C38BC8(v19);

  v25 = *(v23 + 128);
  v26 = *(v2 + 48);
  v27 = v26[5];
  v28 = v26[6];
  __swift_project_boxed_opaque_existential_0(v26 + 2, v27);
  v29 = *(v28 + 8);

  v29(v55, v27, v28);
  __swift_project_boxed_opaque_existential_0(v55, v55[3]);
  v30 = v47;
  sub_267EF3B68();
  LOBYTE(v26) = v26[11] != 0;
  v31 = sub_267EF42D8();
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF42C8();

  v32 = sub_267BDD444(v17, v25, v54, 0, 2u, 0, 0, v30, 0, 0, v26);

  __swift_destroy_boxed_opaque_existential_0(v54);
  (*(v48 + 8))(v30, v49);
  __swift_destroy_boxed_opaque_existential_0(v55);
  v33 = sub_267BAF0DC(v32);
  if (v33 == 1 && sub_267BAF0DC(v32))
  {
    OUTLINED_FUNCTION_1_9();
    if (v31)
    {
      v34 = MEMORY[0x26D609870](0, v32);
    }

    else
    {
      v34 = *(v32 + 32);
    }

    swift_beginAccess();
    if (*(*(v34 + 24) + 16))
    {

      v35 = *(v34 + 24);

      return v35;
    }
  }

  sub_267EF95E8();
  v36 = swift_allocObject();
  *(v36 + 16) = v46;
  *(v36 + 56) = MEMORY[0x277D83B88];
  *(v36 + 64) = MEMORY[0x277D83C10];
  *(v36 + 32) = v33;
  v52 = 0;
  v53 = 0xE000000000000000;
  v37 = sub_267BAF0DC(v32);
  if (v37)
  {
    OUTLINED_FUNCTION_1_9();
    if (v31)
    {
      v38 = MEMORY[0x26D609870](0, v32);
    }

    else
    {
      v38 = *(v32 + 32);
    }

    swift_beginAccess();
    v39 = *(v38 + 24);

    v40 = *(v39 + 16);
  }

  else
  {
    v40 = 0;
  }

  v50 = v40;
  v51 = v37 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229270, &unk_267EFCDA0);
  v41 = sub_267EF9098();
  MEMORY[0x26D608E60](v41);

  v42 = v52;
  v43 = v53;
  *(v36 + 96) = MEMORY[0x277D837D0];
  *(v36 + 104) = sub_267BFBEB4();
  *(v36 + 72) = v42;
  *(v36 + 80) = v43;
  sub_267EF8998();

  return MEMORY[0x277D84F90];
}

BOOL sub_267C1CAC8(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v44 - v6;
  v7 = sub_267EF2CC8();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = *a1;
  v15 = a2;
  v16 = *(a2 + 48);
  swift_beginAccess();
  v17 = *(v16 + 144);

  v18 = [v14 identifier];
  v19 = sub_267EF9028();

  v20 = sub_267BC2EE0(v19);

  if (v20)
  {
    goto LABEL_2;
  }

  v44 = v13;
  v22 = v11;
  v23 = v46;
  v24 = sub_267BDC968(v14);
  v26 = *(v15 + 40);
  v27 = *(v26 + 112);
  if (v25)
  {
    if (!v27)
    {
LABEL_2:

      return 0;
    }

    if (v24 == *(v26 + 104) && v25 == v27)
    {
    }

    else
    {
      v29 = sub_267EF9EA8();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = [v14 sender];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 isMe];

    if (v32)
    {
      return 0;
    }
  }

  v33 = v14;
  v34 = [v14 dateSent];
  if (v34)
  {
    v35 = v34;
    sub_267EF2C98();

    v36 = v45;
    v37 = *(v45 + 32);
    v38 = v23;
    v37(v23, v22, v7);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v7);
    v39 = v44;
    v37(v44, v38, v7);
  }

  else
  {
    v40 = v23;
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v7);
    v39 = v44;
    sub_267EF2C28();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v7);
    v36 = v45;
    if (EnumTagSinglePayload != 1)
    {
      sub_267C1D46C(v40);
    }
  }

  sub_267DE0D58(v22);
  v42 = sub_267EF2C58();
  v43 = *(v36 + 8);
  v43(v22, v7);
  v43(v39, v7);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

  return [v33 messageType] != 1000;
}

uint64_t sub_267C1CE68(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v41 = MEMORY[0x277D84F90];
    sub_267BE50EC();
    v4 = v41;
    v6 = *(v1 + 48);
    v7 = a1 + 32;
    v8 = *(v1 + 32);
    do
    {
      sub_267B9AFEC(v7, v40);
      sub_267B9AFEC(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v40);
        v42[0] = v35;
        v42[1] = v36;
        v42[2] = v37;
        v43 = v38;
        type metadata accessor for ReadAudioComponentAction();
        swift_allocObject();
        v9 = sub_267E38820(v42, v6);
        v10 = type metadata accessor for ReadAudioComponentAction;
        v11 = &unk_280229268;
      }

      else
      {
        type metadata accessor for DefaultReadComponentAction();
        swift_allocObject();
        v9 = sub_267BF902C(v40, v6, v8);
        v10 = type metadata accessor for DefaultReadComponentAction;
        v11 = &unk_280229258;
      }

      v12 = sub_267C1D424(v11, 255, v10);

      __swift_destroy_boxed_opaque_existential_0(v39);
      v41 = v4;
      v13 = v4[2];
      if (v13 >= v4[3] >> 1)
      {
        sub_267BE50EC();
        v4 = v41;
      }

      v4[2] = v13 + 1;
      v14 = &v4[2 * v13];
      v14[4] = v9;
      v14[5] = v12;
      v7 += 40;
      --v3;
    }

    while (v3);
    v2 = v1;
  }

  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  sub_267EF95F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_267EFCC90;
  v16 = v4[2];
  v17 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v17;
  *(v15 + 32) = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE10, &qword_267EFEED0);
  v19 = MEMORY[0x26D608FD0](v4, v18);
  v21 = v20;
  *(v15 + 96) = MEMORY[0x277D837D0];
  *(v15 + 104) = sub_267BFBEB4();
  *(v15 + 72) = v19;
  *(v15 + 80) = v21;
  sub_267EF8998();

  if (v4[2])
  {
    v22 = v4[4];
    v23 = *(*(v4[5] + 8) + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  swift_beginAccess();
  v24 = *(v2 + 16);
  *(v2 + 16) = v22;
  *(v2 + 24) = v23;
  swift_unknownObjectRelease();
  sub_267C36888(v4);
  v25 = sub_267C96D2C(v4);
  v27 = v26;

  if (v25)
  {
    swift_getObjectType();
    v30 = *(v2 + 40);
    v29 = *(v2 + 48);
    v31 = *(v2 + 32);
    type metadata accessor for ComponentAppendingAction();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 40) = v30;
    *(v32 + 48) = v29;
    *(v32 + 32) = v31;
    sub_267C1D424(&qword_280229248, v33, type metadata accessor for ComponentAppendingAction);
    v34 = *(v27 + 8);

    sub_267EF3DB8();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_267C1D2A0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D5C180] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267BCE5E4;

  return MEMORY[0x2821BBC58](a1, a2);
}

uint64_t sub_267C1D348()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267C1D424(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_267C1D46C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267C1D4D4()
{
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v6);
  v0 = v7;
  v1 = v8;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v1 + 40))(v5, 0xD00000000000001ALL, 0x8000000267F122A0, v0, v1);
  if (!v5[3])
  {
    sub_267B9FED8(v5, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A0, &qword_267EFCDF8);
  if ((OUTLINED_FUNCTION_4_11() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = sub_267E716C4(v4);

LABEL_6:
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v2;
}

id sub_267C1D5EC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_267EF8EE8();

  v2 = [v0 initWithDictionary_];

  return v2;
}

uint64_t sub_267C1D674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = type metadata accessor for ConversationAnnounceState();
  OUTLINED_FUNCTION_5_0(v11);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 24);
  sub_267EF2CC8();
  OUTLINED_FUNCTION_7_8(&v17[v18], 1);
  v19 = *(v11 + 32);
  OUTLINED_FUNCTION_7_8(&v17[v19], 1);
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_6_5(0xD000000000000014);
  OUTLINED_FUNCTION_2_15();
  if (v20)
  {
    v21 = &unk_280229278;
    v22 = &unk_267F038E0;
    v23 = v52;
LABEL_8:
    sub_267B9FED8(v23, v21, v22);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_7();
  if (!v24)
  {
    v21 = &qword_28022AEF0;
    v22 = &qword_267EFCDE0;
    v23 = v53;
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_4_11())
  {
    v25 = v51;
    goto LABEL_10;
  }

LABEL_9:
  v25 = 0;
LABEL_10:
  *v17 = v25;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_6_5(0xD00000000000001CLL);
  OUTLINED_FUNCTION_2_15();
  if (v20)
  {
    v26 = &unk_280229278;
    v27 = &unk_267F038E0;
    v28 = v52;
LABEL_17:
    sub_267B9FED8(v28, v26, v27);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_7();
  if (!v29)
  {
    v26 = &qword_28022AEF0;
    v27 = &qword_267EFCDE0;
    v28 = v53;
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_4_11())
  {
    v30 = v51;
    goto LABEL_19;
  }

LABEL_18:
  v30 = 0;
LABEL_19:
  *(v17 + 1) = v30;
  OUTLINED_FUNCTION_1_15();
  sub_267C8EC00(0xD000000000000011, v31 | 0x8000000000000000, a1);
  OUTLINED_FUNCTION_2_15();
  if (v20)
  {
    v32 = &unk_280229278;
    v33 = &unk_267F038E0;
    v34 = v52;
  }

  else
  {
    OUTLINED_FUNCTION_0_7();
    if (v35)
    {
      v36 = swift_dynamicCast() ^ 1;
      v37 = v10;
      goto LABEL_26;
    }

    v32 = &qword_28022AEF0;
    v33 = &qword_267EFCDE0;
    v34 = v53;
  }

  sub_267B9FED8(v34, v32, v33);
  v37 = v10;
  v36 = 1;
LABEL_26:
  OUTLINED_FUNCTION_7_8(v37, v36);
  sub_267C1DAF4(v10, &v17[v18]);
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_6_5(0xD00000000000001ELL);
  OUTLINED_FUNCTION_2_15();
  if (v20)
  {
    v38 = &unk_280229278;
    v39 = &unk_267F038E0;
    v40 = v52;
LABEL_33:
    sub_267B9FED8(v40, v38, v39);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_0_7();
  if (!v41)
  {
    v38 = &qword_28022AEF0;
    v39 = &qword_267EFCDE0;
    v40 = v53;
    goto LABEL_33;
  }

  if (OUTLINED_FUNCTION_4_11())
  {
    v42 = v51;
    goto LABEL_35;
  }

LABEL_34:
  v42 = 0;
LABEL_35:
  *&v17[*(v11 + 28)] = v42;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_6_5(0xD000000000000013);

  OUTLINED_FUNCTION_2_15();
  if (v20)
  {
    v43 = &unk_280229278;
    v44 = &unk_267F038E0;
    v45 = v52;
LABEL_41:
    sub_267B9FED8(v45, v43, v44);
    v48 = v8;
    v47 = 1;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_7();
  if (!v46)
  {
    v43 = &qword_28022AEF0;
    v44 = &qword_267EFCDE0;
    v45 = v53;
    goto LABEL_41;
  }

  v47 = swift_dynamicCast() ^ 1;
  v48 = v8;
LABEL_42:
  OUTLINED_FUNCTION_7_8(v48, v47);
  sub_267C1DAF4(v8, &v17[v19]);
  sub_267C1DB64(v17, a2);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  return sub_267C1DBC8(v17);
}

uint64_t type metadata accessor for ConversationAnnounceState()
{
  result = qword_2802292B0;
  if (!qword_2802292B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267C1DAF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C1DB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationAnnounceState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C1DBC8(uint64_t a1)
{
  v2 = type metadata accessor for ConversationAnnounceState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267C1DC24(uint64_t a1, uint64_t a2)
{
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v23);
  v4 = v24;
  v5 = v25;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  (*(v5 + 40))(v21, 0xD00000000000001ALL, 0x8000000267F122A0, v4, v5);
  if (!v22)
  {
    sub_267B9FED8(v21, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A0, &qword_267EFCDF8);
  if ((OUTLINED_FUNCTION_4_11() & 1) == 0)
  {
LABEL_5:
    v13 = v25;
    __swift_project_boxed_opaque_existential_0(v23, v24);
    v14 = sub_267BA9F38(0, &qword_280229288, 0x277CBEAC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229290, &qword_267EFCDE8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_267EFC020;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v16 = sub_267C1DEDC();
    *(v15 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
    *(v15 + 64) = v16;
    v17 = sub_267EF95A8();
    v18 = sub_267EF9598();

    v22 = v14;
    v21[0] = v18;
    OUTLINED_FUNCTION_3_8(v13);
    goto LABEL_6;
  }

  v6 = sub_267C1DEDC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v20;
  sub_267E86CEC(v6, a1, a2, isUniquelyReferenced_nonNull_native);
  v8 = v21[0];
  v9 = v25;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  v10 = sub_267BA9F38(0, &qword_280229288, 0x277CBEAC0);
  sub_267E71910(v8);

  v11 = sub_267C1D5EC();
  v22 = v10;
  v21[0] = v11;
  OUTLINED_FUNCTION_3_8(v9);
LABEL_6:
  v12();
  sub_267B9FED8(v21, &qword_28022AEF0, &qword_267EFCDE0);
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t sub_267C1DEDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCDC0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000267F12200;
  v9 = MEMORY[0x277D839B0];
  *(inited + 48) = *v0;
  *(inited + 72) = v9;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x8000000267F12220;
  v10 = MEMORY[0x277D83B88];
  *(inited + 96) = *(v0 + 8);
  *(inited + 120) = v10;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000267F12240;
  v11 = type metadata accessor for ConversationAnnounceState();
  sub_267BF9918(v0 + v11[6], v7);
  v12 = sub_267EF2CC8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    sub_267B9FED8(v7, &qword_28022BD90, &unk_267EFCDD0);
    *(inited + 144) = 0u;
    *(inited + 160) = 0u;
  }

  else
  {
    *(inited + 168) = v12;
    __swift_allocate_boxed_opaque_existential_0((inited + 144));
    OUTLINED_FUNCTION_5_0(v12);
    (*(v13 + 32))();
  }

  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000267F12260;
  *(inited + 192) = *(v0 + v11[7]);
  *(inited + 216) = v10;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000267F12280;
  sub_267BF9918(v0 + v11[8], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    sub_267B9FED8(v5, &qword_28022BD90, &unk_267EFCDD0);
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    *(inited + 264) = v12;
    __swift_allocate_boxed_opaque_existential_0((inited + 240));
    OUTLINED_FUNCTION_5_0(v12);
    (*(v14 + 32))();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
  return sub_267EF8F28();
}

void sub_267C1E1EC()
{
  sub_267C1E278();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_267C1E278()
{
  if (!qword_2802292C0)
  {
    sub_267EF2CC8();
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_2802292C0);
    }
  }
}

uint64_t sub_267C1E2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v221 = a2;
  v3 = sub_267EF3868();
  v4 = OUTLINED_FUNCTION_58(v3);
  v206 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v205 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v11 = OUTLINED_FUNCTION_18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v208 = &v204 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_60();
  v210 = v19 - v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  v220 = &v204 - v22;
  v23 = sub_267EF4C08();
  v24 = OUTLINED_FUNCTION_58(v23);
  v215 = v25;
  v216 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_60();
  v209 = v28 - v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  v212 = &v204 - v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  v34 = &v204 - v33;
  v35 = sub_267EF4BE8();
  v36 = OUTLINED_FUNCTION_58(v35);
  v219 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_60();
  v211 = v40 - v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  v44 = &v204 - v43;
  v45 = sub_267EF4BA8();
  v46 = OUTLINED_FUNCTION_58(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_0();
  v53 = v52 - v51;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v213 = v35;
  v54 = sub_267EF8A08();
  v55 = __swift_project_value_buffer(v54, qword_280240FB0);
  v56 = *(v48 + 16);
  v217 = a1;
  v56(v53, a1, v45);
  v218 = v55;
  v57 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_64();
  v59 = os_log_type_enabled(v57, v58);
  v214 = v44;
  v207 = v3;
  if (v59)
  {
    v60 = OUTLINED_FUNCTION_48();
    v61 = OUTLINED_FUNCTION_52();
    v224[0] = v61;
    *v60 = 136315138;
    sub_267BC410C(&qword_28022AF50, MEMORY[0x277D5C118]);
    v62 = sub_267EF9E58();
    v64 = v63;
    v65 = *(v48 + 8);
    v66 = OUTLINED_FUNCTION_95_0();
    v67(v66);
    v68 = sub_267BA33E8(v62, v64, v224);

    *(v60 + 4) = v68;
    _os_log_impl(&dword_267B93000, v57, v35, "#UnsendMessagesConfirmIntentFlowStrategy received input: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_32_0();
    v44 = v214;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v69 = *(v48 + 8);
    v70 = OUTLINED_FUNCTION_95_0();
    v71(v70);
  }

  sub_267EF4B88();
  v73 = v215;
  v72 = v216;
  v74 = *(v215 + 88);
  v75 = v74(v34, v216);
  v76 = v219;
  v77 = v220;
  if (v75 == *MEMORY[0x277D5C150])
  {
    (*(v73 + 96))(v34, v72);
    v78 = v213;
    (*(v76 + 32))(v44, v34, v213);
    v79 = sub_267EF89F8();
    v80 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v80))
    {
      v81 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v81);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v82, v83, "#UnsendMessagesConfirmIntentFlowStrategy received directInvocation");
      OUTLINED_FUNCTION_26();
    }

    sub_267B9CC04(v44, v77);
    v84 = type metadata accessor for DirectInvocationUseCases();
    if (__swift_getEnumTagSinglePayload(v77, 1, v84) != 1)
    {
      v85 = v210;
      sub_267B9A598(v77, v210, &unk_28022BBE0, qword_267EFD030);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = sub_267EF8228();
        OUTLINED_FUNCTION_58(v86);
        v87 = v85;
        v89 = v88;
        v91 = (*(v90 + 88))(v87, v86);
        if (v91 == *MEMORY[0x277D5D4E8])
        {
          v92 = sub_267EF89F8();
          v93 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v93))
          {
            v94 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v94);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v95, v96, "#UnsendMessagesConfirmIntentFlowStrategy prompt is confirmed by button press");
            OUTLINED_FUNCTION_26();
          }

          v97 = *MEMORY[0x277D5BED8];
          v98 = sub_267EF44F8();
          OUTLINED_FUNCTION_22(v98);
          v100 = *(v99 + 104);
          v101 = OUTLINED_FUNCTION_15_4();
          v102(v101);
          OUTLINED_FUNCTION_9();
          __swift_storeEnumTagSinglePayload(v103, v104, v105, v98);
          v106 = swift_beginAccess();
          OUTLINED_FUNCTION_128(v106, v107, &qword_280229310, &unk_267EFCF70);
          swift_endAccess();
          sub_267EF3E58();
LABEL_44:
          (*(v76 + 8))(v44, v78);
          return sub_267B9F98C(v77, &unk_28022BBE0, qword_267EFD030);
        }

        if (v91 == *MEMORY[0x277D5D4D8])
        {
          v170 = sub_267EF89F8();
          v171 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v171))
          {
            v172 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v172);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v173, v174, "#UnsendMessagesConfirmIntentFlowStrategy prompt is cancelled by button press");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E48();
          goto LABEL_44;
        }

        (*(v89 + 8))(v210, v86);
      }

      else
      {
        sub_267C269D0(v85, type metadata accessor for DirectInvocationUseCases);
      }
    }

    v142 = v211;
    (*(v76 + 16))(v211, v44, v78);
    v143 = sub_267EF89F8();
    v144 = v78;
    v145 = sub_267EF95D8();
    if (os_log_type_enabled(v143, v145))
    {
      v146 = OUTLINED_FUNCTION_48();
      v147 = OUTLINED_FUNCTION_52();
      v224[0] = v147;
      *v146 = 136315138;
      v148 = sub_267EF4BC8();
      v149 = v142;
      v151 = v150;
      v152 = *(v76 + 8);
      v152(v149, v144);
      v153 = sub_267BA33E8(v148, v151, v224);

      *(v146 + 4) = v153;
      _os_log_impl(&dword_267B93000, v143, v145, "#UnsendMessagesConfirmIntentFlowStrategy ignoring direct invocation: %s", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v147);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v152 = *(v76 + 8);
      v152(v142, v144);
    }

    sub_267EF3E68();
    v152(v214, v144);
    return sub_267B9F98C(v77, &unk_28022BBE0, qword_267EFD030);
  }

  v108 = v72;
  v109 = *(v73 + 8);
  v109(v34, v108);
  v110 = v212;
  sub_267EF4B88();
  v111 = v74(v110, v108);
  v112 = *MEMORY[0x277D5C168];
  v109(v110, v108);
  if (v111 == v112)
  {
    v113 = sub_267EF89F8();
    v114 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v114))
    {
      v115 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v115);
      v118 = "#UnsendMessagesConfirmIntentFlowStrategy empty input";
LABEL_33:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v116, v117, v118);
      OUTLINED_FUNCTION_26();
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v119 = v209;
  sub_267EF4B88();
  v120 = sub_267E57DFC(v119, &v222);
  (v109)(v119, v108, v120);
  if (!v223)
  {
    sub_267B9F98C(&v222, &unk_28022BBF0, &unk_267F01C60);
    v113 = sub_267EF89F8();
    v155 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v155))
    {
      v156 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v156);
      v118 = "#UnsendMessagesConfirmIntentFlowStrategy unsupported input";
      goto LABEL_33;
    }

LABEL_34:

    return sub_267EF3E68();
  }

  sub_267B9A5E8(&v222, v224);
  v121 = v226;
  __swift_project_boxed_opaque_existential_0(v224, v225);
  v122 = *(v121 + 224);
  v123 = OUTLINED_FUNCTION_38_0();
  if (v124(v123))
  {
    v125 = *MEMORY[0x277D5BED8];
    v126 = sub_267EF44F8();
    OUTLINED_FUNCTION_22(v126);
    v128 = *(v127 + 104);
    v129 = OUTLINED_FUNCTION_15_4();
    v130(v129);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v126);
    v134 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_128(v134, v135, &qword_280229310, &unk_267EFCF70);
    swift_endAccess();
    v136 = sub_267EF89F8();
    v137 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v137))
    {
      v138 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v138);
      v141 = "#UnsendMessagesConfirmIntentFlowStrategy request is to unsend, handling";
LABEL_22:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v139, v140, v141);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v157 = v226;
    __swift_project_boxed_opaque_existential_0(v224, v225);
    v158 = *(v157 + 320);
    v159 = v205;
    v160 = OUTLINED_FUNCTION_38_0();
    v161(v160);
    v162 = v206;
    v163 = v207;
    v164 = (*(v206 + 88))(v159, v207);
    if (v164 == *MEMORY[0x277D5B970])
    {
      v165 = sub_267EF89F8();
      v166 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v166))
      {
        v167 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v167);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v168, v169, "#UnsendMessagesConfirmIntentFlowStrategy request is cancelled");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E48();
      return __swift_destroy_boxed_opaque_existential_0(v224);
    }

    if (v164 != *MEMORY[0x277D5B978])
    {
      if (v164 != *MEMORY[0x277D5B968])
      {
        v199 = sub_267EF89F8();
        v200 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v200))
        {
          v201 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v201);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v202, v203, "#UnsendMessagesConfirmIntentFlowStrategy no valid confirmation in the intent, ignoring");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E68();
        (*(v162 + 8))(v159, v163);
        return __swift_destroy_boxed_opaque_existential_0(v224);
      }

      v188 = *MEMORY[0x277D5BED0];
      v189 = sub_267EF44F8();
      OUTLINED_FUNCTION_22(v189);
      v191 = *(v190 + 104);
      v192 = OUTLINED_FUNCTION_15_4();
      v193(v192);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v194, v195, v196, v189);
      v197 = OUTLINED_FUNCTION_42_2();
      OUTLINED_FUNCTION_128(v197, v198, &qword_280229310, &unk_267EFCF70);
      swift_endAccess();
      goto LABEL_24;
    }

    v175 = *MEMORY[0x277D5BED8];
    v176 = sub_267EF44F8();
    OUTLINED_FUNCTION_22(v176);
    v178 = *(v177 + 104);
    v179 = OUTLINED_FUNCTION_15_4();
    v180(v179);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v181, v182, v183, v176);
    v184 = OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_128(v184, v185, &qword_280229310, &unk_267EFCF70);
    swift_endAccess();
    v136 = sub_267EF89F8();
    v186 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v186))
    {
      v187 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v187);
      v141 = "#UnsendMessagesConfirmIntentFlowStrategy request is confirmed";
      goto LABEL_22;
    }
  }

LABEL_24:
  sub_267EF3E58();
  return __swift_destroy_boxed_opaque_existential_0(v224);
}

uint64_t sub_267C1F068()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[11] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C1F0F8()
{
  OUTLINED_FUNCTION_53();
  v27 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[10];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    v8 = OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_52();
    v26 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_confirmationResponse;
    swift_beginAccess();
    sub_267B9A598(v7 + v10, v5, &qword_280229310, &unk_267EFCF70);
    OUTLINED_FUNCTION_63();
    v11 = sub_267EF9098();
    v13 = sub_267BA33E8(v11, v12, &v26);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[10];
  v22 = v0[8];
  v23 = OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267B9A598(v21 + v23, v19, &qword_280229310, &unk_267EFCF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229318, &qword_267EFCFA0);
  sub_267EF4668();
  sub_267BA9F38(0, &qword_2802291D0, 0x277CD4290);
  sub_267EF4468();

  OUTLINED_FUNCTION_1();

  return v24();
}

uint64_t sub_267C1F318(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C1F348()
{
  OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_featureFlags), *(v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_featureFlags + 24));
  if ((sub_267CC8B28() & 1) == 0)
  {
    goto LABEL_6;
  }

  v1 = v0[9];
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_129(v1 + 2);
  v4 = OUTLINED_FUNCTION_38_0();
  v5(v4);
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v7 = sub_267BF30D0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v7)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[10] = v8;
    *v8 = v9;
    v8[1] = sub_267C1F4C8;
    v10 = v0[9];
    v11 = v0[7];

    return sub_267C1F688();
  }

  else
  {
LABEL_6:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[11] = v13;
    *v13 = v14;
    v13[1] = sub_267C1F5A8;
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[7];

    return sub_267C2060C();
  }
}

uint64_t sub_267C1F4C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C1F5A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C1F688()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_267EF48A8();
  v1[25] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[26] = v4;
  v6 = *(v5 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267C1FA50()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[17] = v1;
  v3[18] = v5;
  v3[19] = v0;
  OUTLINED_FUNCTION_106();
  v7 = *(v6 + 280);
  *v8 = *v1;
  *(v9 + 288) = v0;

  OUTLINED_FUNCTION_106();
  v11 = *(v10 + 272);
  v12 = *(v2 + 264);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267C1FBA8()
{
  OUTLINED_FUNCTION_48_1();
  v23 = v1;
  OUTLINED_FUNCTION_53();
  v2 = v0[18];
  v3 = v0[31];
  v4 = v0[24];
  v0[39] = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_114_0();
  v6(v8);
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider), *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v9 = [v3 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = v0[31];
    v13 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_12_0();
    v14 = sub_267EF3C48();
    sub_267BCEA0C(v12);
    if (v14)
    {
      v15 = OUTLINED_FUNCTION_108();
      sub_267DA2578(v15);
    }

    else
    {
      v16 = v0[32];
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_98_2(OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_unsendMessageState);
  OUTLINED_FUNCTION_96();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_117_1(v17);
  OUTLINED_FUNCTION_103(&unk_267F0EEB8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[41] = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_22_5(v18);

  return v21(v20);
}

uint64_t sub_267C1FD64()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_106();
  v7 = *(v6 + 296);
  *v8 = *v1;
  *(v9 + 304) = v0;

  OUTLINED_FUNCTION_106();
  v11 = *(v10 + 272);
  v12 = *(v2 + 264);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267C1FEBC()
{
  OUTLINED_FUNCTION_48_1();
  v23 = v1;
  OUTLINED_FUNCTION_53();
  v2 = v0[21];
  v3 = v0[31];
  v4 = v0[24];
  v0[39] = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_114_0();
  v6(v8);
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider), *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v9 = [v3 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = v0[31];
    v13 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_12_0();
    v14 = sub_267EF3C48();
    sub_267BCEA0C(v12);
    if (v14)
    {
      v15 = OUTLINED_FUNCTION_108();
      sub_267DA2578(v15);
    }

    else
    {
      v16 = v0[32];
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_98_2(OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_unsendMessageState);
  OUTLINED_FUNCTION_96();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_117_1(v17);
  OUTLINED_FUNCTION_103(&unk_267F0EEB8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[41] = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_22_5(v18);

  return v21(v20);
}

uint64_t sub_267C20078()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = v5[41];
  v7 = v5[40];
  v8 = v5[39];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v3 + 336) = v0;

  sub_267B9F98C(v3 + 96, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267C201C8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 240);
  v2 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);

  (*(v13 + 8))(v12, v14);
  sub_267B9F98C(v10, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_125();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_267C202C8()
{
  OUTLINED_FUNCTION_56();
  sub_267B9F98C(v0[29], &unk_28022AE30, &qword_267EFC0B0);
  v1 = v0[36];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C20358()
{
  OUTLINED_FUNCTION_56();
  sub_267B9F98C(v0[29], &unk_28022AE30, &qword_267EFC0B0);
  v1 = v0[38];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267C203E8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);

  (*(v3 + 8))(v2, v4);
  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
  v5 = *(v0 + 336);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 216);

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267C204A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_267C204C8, 0, 0);
}

uint64_t sub_267C204C8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_267EF8178();
  v3[3] = v5;
  v3[4] = sub_267BC410C(qword_280229338, MEMORY[0x277D5D3A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  v7 = v4 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sentMessageContext;
  v8 = type metadata accessor for TimedSentMessageContext(0);
  v9 = *(v7 + *(v8 + 32));
  *(v7 + *(v8 + 28));
  v9;

  OUTLINED_FUNCTION_63();
  sub_267EF8468();
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D360], v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_267C2060C()
{
  OUTLINED_FUNCTION_12();
  v1[88] = v0;
  v1[87] = v2;
  v1[86] = v3;
  v4 = sub_267EF48A8();
  v1[89] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[90] = v5;
  v7 = *(v6 + 64);
  v1[91] = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v1[92] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[93] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v17 = sub_267EF2BA8();
  v1[97] = v17;
  OUTLINED_FUNCTION_30_0(v17);
  v1[98] = v18;
  v20 = *(v19 + 64) + 15;
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v21 = sub_267EF8228();
  v1[101] = v21;
  OUTLINED_FUNCTION_30_0(v21);
  v1[102] = v22;
  v24 = *(v23 + 64);
  v1[103] = OUTLINED_FUNCTION_2();
  v25 = sub_267EF79B8();
  v1[104] = v25;
  OUTLINED_FUNCTION_30_0(v25);
  v1[105] = v26;
  v28 = *(v27 + 64) + 15;
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

id sub_267C20884()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_267EF8A08();
  v4 = __swift_project_value_buffer(v3, qword_280240FB0);
  v2[111] = v4;
  v242 = v4;
  v5 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v7);
    _os_log_impl(&dword_267B93000, v5, v0, "#UnsendMessagesConfirmIntentFlowStrategy executing pattern to confirm message", v1, 2u);
    OUTLINED_FUNCTION_26();
  }

  v8 = v2[88];
  v9 = v2[87];

  sub_267EF7958();
  v2[112] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229318, &qword_267EFCFA0);
  v10 = sub_267EF4648();
  v258 = sub_267E80518(v10);
  v2[113] = v258;
  v11 = v8 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_sentMessageContext;
  v12 = type metadata accessor for TimedSentMessageContext(0);
  v13 = *&v11[v12[7]];
  v14 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v8[5]);
  v15 = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_43();
  v17(v16, v14);
  v18 = *&v11[v12[9]];
  v248 = v8;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider), *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v19 = [v13 speakableGroupName];
  v244 = v18;
  v253 = v13;
  if (v19)
  {
    v20 = v19;
    v21 = v2;
    v22 = [v19 spokenPhrase];
    sub_267EF9028();
  }

  else
  {
    v23 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
    OUTLINED_FUNCTION_43();
    v24 = sub_267EF3C48();
    v25 = sub_267BCEA0C(v13);
    if (v24)
    {
      v21 = v2;
      sub_267DA2578(v25);
    }

    else
    {
      v21 = v2;
      sub_267DA2180();
    }
  }

  v26 = v21;
  v27 = v21[110];
  v28 = v21[109];
  v29 = v21[87];
  __swift_destroy_boxed_opaque_existential_0(v26 + 2);
  v30 = v26;
  sub_267EF90F8();

  v31 = sub_267EF4668();
  sub_267EF4648();
  v32 = sub_267EF7C18();
  v34 = v33;

  if (v34)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v37 = sub_267DA133C(v31, v35, v36);

  v26[82] = v37;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  sub_267EF8348();
  v38 = v26[108];

  sub_267BA9F38(0, &qword_280229320, 0x277CD3D58);
  v39 = *&v11[v12[8]];
  v40 = v253;
  v41 = v39;
  v42 = sub_267E9299C(v40, v39);
  v30[114] = v42;
  [v42 setIntentHandlingStatus_];
  v30[83] = v42;
  sub_267EF8348();
  v229 = v40;
  v239 = v42;
  v254 = v30[107];
  v44 = v30[103];
  v45 = v30[102];
  v235 = *(v45 + 104);
  v235(v44, *MEMORY[0x277D5D4E8], v30[101]);
  v46 = v30;
  v47 = v248[6];
  __swift_project_boxed_opaque_existential_0(v248 + 2, v248[5]);
  v48 = *(v47 + 8);
  v49 = OUTLINED_FUNCTION_43();
  v50(v49, v47);
  v51 = sub_267BEA714(v44, v46 + 7);
  __swift_destroy_boxed_opaque_existential_0(v46 + 7);
  v52 = *(v45 + 8);
  v53 = OUTLINED_FUNCTION_50_3();
  v232 = v54;
  v54(v53);
  v46[84] = v51;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v255 = v46[106];
  v55 = v46[103];
  v56 = v46[101];

  v235(v55, *MEMORY[0x277D5D4D8], v56);
  v57 = v248[6];
  __swift_project_boxed_opaque_existential_0(v248 + 2, v248[5]);
  v58 = *(v57 + 8);
  v59 = OUTLINED_FUNCTION_43();
  v60(v59, v57);
  v61 = sub_267BEA714(v55, v46 + 12);
  __swift_destroy_boxed_opaque_existential_0(v46 + 12);
  v62 = OUTLINED_FUNCTION_50_3();
  v232(v62);
  v46[85] = v61;
  sub_267EF8348();
  v76 = v248;

  v77 = v248[5];
  v78 = v248[6];
  OUTLINED_FUNCTION_129(v248 + 2);
  v79 = OUTLINED_FUNCTION_38_0();
  v80(v79);
  v81 = v229;
  sub_267ED9AEC(v229, v244, (v46 + 17), v82, v83, v84, v85, v86, v227, v229, v232, v235, v239, v242, v244, v248, v255, v258, v261, v262);
  v88 = v87;
  v46[115] = v87;
  __swift_destroy_boxed_opaque_existential_0(v46 + 17);
  v89 = sub_267EF96E8();
  v90 = [v81 attachments];
  v91 = v90;
  v92 = v46;
  if ((v89 & 1) == 0)
  {
    if (v90)
    {
      sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
      v46[124] = sub_267EF92F8();

      v119 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v121);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v122, v123, v124, v125, v126, 2u);
        OUTLINED_FUNCTION_26();
      }

      v127 = v76[5];
      v128 = v76[6];
      OUTLINED_FUNCTION_129(v76 + 2);
      v129 = OUTLINED_FUNCTION_38_0();
      v130(v129);
      v46[125] = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
      v131 = swift_task_alloc();
      v46[126] = v131;
      *v131 = v46;
      v131[1] = sub_267C221A4;
      OUTLINED_FUNCTION_93();

      __asm { BR              X0 }
    }

    v238 = v88;
    v150 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v152);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v153, v154, v155, v156, v157, 2u);
      OUTLINED_FUNCTION_26();
    }

    v158 = v46[88];

    v159 = *(v158 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_isDelete);
    v160 = v46[110];
    v161 = v46[109];
    v162 = v46[108];
    v163 = v46[107];
    v164 = v92[106];
    v165 = v92[93];
    v166 = v92[88];
    v167 = v92[87];
    if (v159 == 1)
    {
      type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
      OUTLINED_FUNCTION_133();
      OUTLINED_FUNCTION_82();
      v168 = sub_267EF78E8();
      v92[35] = 0;
      v92[36] = &off_2878D7F50;
      v92[32] = v168;
      OUTLINED_FUNCTION_62_1(v92 + 32, 0);
      v169 = swift_task_alloc();
      v92[136] = v169;
      OUTLINED_FUNCTION_79_0(v169, v170, v171, v172, v173, v174, v175, v176, v228, v230, v233, v238, v241, v243, v246, v250, v256, v260);
      v177 = swift_task_alloc();
      v92[137] = v177;
      *v177 = v92;
      v177[1] = sub_267C22DFC;
LABEL_62:
      OUTLINED_FUNCTION_93();

      return sub_267E3E1C0();
    }

    type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_82();
    v206 = sub_267EF78E8();
    v92[25] = 0;
    v92[26] = &off_2878D7F50;
    v92[22] = v206;
    OUTLINED_FUNCTION_62_1(v92 + 22, 0);
    v207 = swift_task_alloc();
    v92[140] = v207;
    OUTLINED_FUNCTION_79_0(v207, v208, v209, v210, v211, v212, v213, v214, v228, v230, v233, v238, v241, v243, v246, v250, v256, v260);
    v215 = swift_task_alloc();
    v92[141] = v215;
    *v215 = v92;
    v215[1] = sub_267C231C4;
LABEL_67:
    OUTLINED_FUNCTION_93();

    return sub_267E3E7AC();
  }

  if (!v90)
  {
    v136 = v46[97];
    v137 = v46[96];

    __swift_storeEnumTagSinglePayload(v137, 1, 1, v136);
LABEL_51:
    sub_267B9F98C(v92[96], &qword_280229E20, &unk_267EFDCC0);
    v138 = sub_267EF89F8();
    v139 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v139))
    {
      v140 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v140);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v141, v142, "#UnsendMessagesConfirmIntentFlowStrategy URL is missing for an audio message");
      OUTLINED_FUNCTION_26();
    }

    v252 = v92[109];
    v143 = v92[108];
    v144 = v92[107];
    v145 = v92[106];
    v146 = v92[105];
    v147 = v92[104];

    sub_267C266B0();
    swift_allocError();
    *v148 = 0xD000000000000024;
    v148[1] = 0x8000000267F12380;
    swift_willThrow();

    v149 = *(v146 + 8);
    v149(v145, v147);
    v149(v144, v147);
    v149(v143, v147);
    v149(v252, v147);
    v43 = v149;
    v63 = v92[110];
    v64 = v92[109];
    v65 = v92[108];
    v66 = v92[107];
    v67 = v92[106];
    v68 = v92[104];
    v69 = v92[103];
    v70 = v92;
    v71 = v92[100];
    v72 = v70[99];
    v236 = v70[96];
    v240 = v70[95];
    v73 = v70[94];
    v245 = v70[93];
    v249 = v70[92];
    v259 = v70[91];
    v43(v63, v68);

    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_93();

    __asm { BRAA            X1, X16 }
  }

  v237 = v88;
  v93 = v46[98];
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v94 = sub_267EF92F8();

  result = sub_267BAF0DC(v94);
  v96 = result;
  v97 = 0;
  v251 = v94 & 0xFFFFFFFFFFFFFF8;
  v257 = v94 & 0xC000000000000001;
  v231 = v93;
  v234 = (v93 + 32);
  v247 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v96 == v97)
    {
      v134 = v92[97];
      v135 = v92[96];

      sub_267C8F020(v247, v135);

      if (__swift_getEnumTagSinglePayload(v135, 1, v134) == 1)
      {

        goto LABEL_51;
      }

      (*v234)(v92[100], v92[96], v92[97]);
      v178 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v180);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v181, v182, v183, v184, v185, 2u);
        OUTLINED_FUNCTION_26();
      }

      v186 = v92[88];

      v187 = *(v186 + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_isDelete);
      v188 = v92[110];
      v189 = v92[109];
      v190 = v92[108];
      v191 = v92[107];
      v192 = v92[106];
      v193 = v92[100];
      v194 = v92[93];
      if (v187 == 1)
      {
        type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
        OUTLINED_FUNCTION_133();
        OUTLINED_FUNCTION_82();
        v195 = sub_267EF78E8();
        v92[80] = v134;
        v92[81] = &off_2878D7F50;
        v92[77] = v195;
        OUTLINED_FUNCTION_62_1(v92 + 77, v134);
        v196 = swift_task_alloc();
        v92[116] = v196;
        OUTLINED_FUNCTION_80(v196, v197, v198, v199, v200, v201, v202, v203, v228, v231, v234, v237, v241, v243, v247, v251, v257, v260);
        v204 = swift_task_alloc();
        v92[117] = v204;
        *v204 = v92;
        v204[1] = sub_267C2199C;
        goto LABEL_62;
      }

      type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
      OUTLINED_FUNCTION_133();
      OUTLINED_FUNCTION_82();
      v216 = sub_267EF78E8();
      v92[75] = v134;
      v92[76] = &off_2878D7F50;
      v92[72] = v216;
      OUTLINED_FUNCTION_62_1(v92 + 72, v134);
      v217 = swift_task_alloc();
      v92[120] = v217;
      OUTLINED_FUNCTION_80(v217, v218, v219, v220, v221, v222, v223, v224, v228, v231, v234, v237, v241, v243, v247, v251, v257, v260);
      v225 = swift_task_alloc();
      v92[121] = v225;
      *v225 = v92;
      v225[1] = sub_267C21DA0;
      goto LABEL_67;
    }

    if (v257)
    {
      result = MEMORY[0x26D609870](v97, v94);
    }

    else
    {
      if (v97 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      result = *(v94 + 8 * v97 + 32);
    }

    v98 = result;
    v99 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    v100 = [result audioMessageFile];
    if (!v100)
    {
      v105 = v92[97];
      v106 = v92[95];

      __swift_storeEnumTagSinglePayload(v106, 1, 1, v105);
      goto LABEL_35;
    }

    v101 = v100;
    v102 = [v100 fileURL];

    if (v102)
    {
      v103 = v92[94];
      sub_267EF2B48();

      v104 = 0;
    }

    else
    {
      v104 = 1;
    }

    v107 = v92[97];
    v108 = v92[95];
    v109 = v92;
    v110 = v92[94];

    __swift_storeEnumTagSinglePayload(v110, v104, 1, v107);
    v111 = v110;
    v92 = v109;
    sub_267C26704(v111, v108);
    if (__swift_getEnumTagSinglePayload(v108, 1, v107) == 1)
    {
LABEL_35:
      result = sub_267B9F98C(v92[95], &qword_280229E20, &unk_267EFDCC0);
      ++v97;
    }

    else
    {
      v112 = *v234;
      (*v234)(v109[99], v109[95], v109[97]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = *(v247 + 16);
        sub_267C70BD8();
        v247 = v117;
      }

      v113 = *(v247 + 16);
      if (v113 >= *(v247 + 24) >> 1)
      {
        sub_267C70BD8();
        v247 = v118;
      }

      v114 = v109[99];
      v115 = v109[97];
      *(v247 + 16) = v113 + 1;
      result = (v112)(v247 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v113, v114, v115);
      v97 = v99;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_267C2199C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[117];
  *v4 = *v1;
  v3[118] = v0;

  OUTLINED_FUNCTION_78_0();
  v7 = *(v6 + 928);
  v8 = v3[115];

  if (!v0)
  {
    v3[119] = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C21ADC()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 952);
  __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  v3 = *(v0 + 952);
  v4 = OUTLINED_FUNCTION_105_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_127();
  v7 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v8 = [v6 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v9);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v10, v11, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v12 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v13);
  v14 = OUTLINED_FUNCTION_101_0();
  v15 = OUTLINED_FUNCTION_3_9(v14);
  v16(v15);
  OUTLINED_FUNCTION_10_8();
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_25_5(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_8(v18);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v20, v21, v22, v23, v24);
}

uint64_t sub_267C21C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  v43 = v21[109];
  OUTLINED_FUNCTION_8_3();
  v23 = v21[100];
  v24 = v21[98];
  v25 = v21[97];

  __swift_destroy_boxed_opaque_existential_0(v21 + 77);
  (*(v24 + 8))(v23, v25);
  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_63();
  v27(v28);
  v29 = OUTLINED_FUNCTION_50_3();
  v27(v29);
  v30 = OUTLINED_FUNCTION_57_3();
  v27(v30);
  (v27)(v43, v22);
  v31 = v21[118];
  OUTLINED_FUNCTION_2_16();
  v32 = v21[100];
  v33 = OUTLINED_FUNCTION_1_16();
  v27(v33);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, v43, a18, a19, a20);
}

uint64_t sub_267C21DA0()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[121];
  *v4 = *v1;
  v3[122] = v0;

  OUTLINED_FUNCTION_78_0();
  v7 = *(v6 + 960);
  v8 = v3[115];

  if (!v0)
  {
    v3[123] = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C21EE0()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 984);
  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v3 = *(v0 + 984);
  v4 = OUTLINED_FUNCTION_105_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_127();
  v7 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v8 = [v6 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v9);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v10, v11, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v12 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v13);
  v14 = OUTLINED_FUNCTION_101_0();
  v15 = OUTLINED_FUNCTION_3_9(v14);
  v16(v15);
  OUTLINED_FUNCTION_10_8();
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_25_5(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_0_8(v18);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v20, v21, v22, v23, v24);
}

uint64_t sub_267C22030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  v43 = v21[109];
  OUTLINED_FUNCTION_8_3();
  v23 = v21[100];
  v24 = v21[98];
  v25 = v21[97];

  __swift_destroy_boxed_opaque_existential_0(v21 + 72);
  (*(v24 + 8))(v23, v25);
  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_63();
  v27(v28);
  v29 = OUTLINED_FUNCTION_50_3();
  v27(v29);
  v30 = OUTLINED_FUNCTION_57_3();
  v27(v30);
  (v27)(v43, v22);
  v31 = v21[122];
  OUTLINED_FUNCTION_2_16();
  v32 = v21[100];
  v33 = OUTLINED_FUNCTION_1_16();
  v27(v33);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, v43, a18, a19, a20);
}

uint64_t sub_267C221A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 1008);
  *v2 = *v0;
  *(v1 + 1016) = v5;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C22294()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 992);
  sub_267EF8458();

  if (*(v0 + 440))
  {
    v3 = *(v0 + 1016);
    v4 = *(v0 + 736);
    sub_267B9A5E8((v0 + 416), v0 + 376);
    sub_267B9AFEC(v0 + 376, v0 + 536);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  }

  else
  {
    v5 = *(v0 + 736);

    sub_267B9F98C(v0 + 416, &qword_28022BB10, &qword_267EFDCF0);
    v6 = sub_267EF8338();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  }

  v7 = *(v0 + 736);
  v8 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  v10 = *(v0 + 1000);
  v46 = v0 + 296;
  if (EnumTagSinglePayload == 1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));

    sub_267B9F98C(v7, &unk_28022BB00, &unk_267EFCF90);
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  else
  {
    sub_267EF8318();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
    v11 = *(*(v8 - 8) + 8);
    v12 = OUTLINED_FUNCTION_108();
    v13(v12);
  }

  v14 = *(v0 + 904);
  v15 = *(v0 + 880);
  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  v19 = *(v0 + 848);
  v20 = *(v0 + 744);
  v45 = *(v0 + 696);
  if (*(*(v0 + 704) + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_isDelete) == 1)
  {
    v21 = type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
    sub_267EF7B68();
    OUTLINED_FUNCTION_82();
    v22 = sub_267EF78E8();
    *(v0 + 520) = v21;
    *(v0 + 528) = &off_2878D7F50;
    *(v0 + 496) = v22;
    OUTLINED_FUNCTION_62_1((v0 + 496), v21);
    v23 = swift_task_alloc();
    *(v0 + 1024) = v23;
    OUTLINED_FUNCTION_72_1(v23, v24, v25, v26, v27, v28, v29, v30, v44, v45, v46);
    v31 = swift_task_alloc();
    *(v0 + 1032) = v31;
    *v31 = v0;
    v31[1] = sub_267C2260C;
    OUTLINED_FUNCTION_109_0(*(v0 + 920));

    return sub_267E3E1C0();
  }

  else
  {
    v33 = type metadata accessor for UnsendMessagesCATPatternsExecutor(0);
    sub_267EF7B68();
    OUTLINED_FUNCTION_82();
    v34 = sub_267EF78E8();
    *(v0 + 480) = v33;
    *(v0 + 488) = &off_2878D7F50;
    *(v0 + 456) = v34;
    OUTLINED_FUNCTION_62_1((v0 + 456), v33);
    v35 = swift_task_alloc();
    *(v0 + 1056) = v35;
    OUTLINED_FUNCTION_72_1(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46);
    v43 = swift_task_alloc();
    *(v0 + 1064) = v43;
    *v43 = v0;
    v43[1] = sub_267C22A04;
    OUTLINED_FUNCTION_109_0(*(v0 + 920));

    return sub_267E3E7AC();
  }
}

uint64_t sub_267C2260C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[129];
  *v4 = *v1;
  v3[130] = v0;

  OUTLINED_FUNCTION_78_0();
  v7 = *(v6 + 1024);
  v8 = v3[115];

  if (!v0)
  {
    v3[131] = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C2274C()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 1048);
  __swift_destroy_boxed_opaque_existential_0((v0 + 496));
  v3 = *(v0 + 1048);
  sub_267B9F98C(v0 + 296, &qword_28022BB10, &qword_267EFDCF0);
  v4 = OUTLINED_FUNCTION_127();
  v5 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v6 = [v4 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v7);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v8, v9, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v10 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v10);
  v11 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v11);
  v12 = OUTLINED_FUNCTION_101_0();
  v13 = OUTLINED_FUNCTION_3_9(v12);
  v14(v13);
  OUTLINED_FUNCTION_10_8();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_25_5(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_0_8(v16);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v18, v19, v20, v21, v22);
}

uint64_t sub_267C228A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  v22 = v21[109];
  OUTLINED_FUNCTION_8_3();

  __swift_destroy_boxed_opaque_existential_0(v21 + 62);
  sub_267B9F98C((v21 + 37), &qword_28022BB10, &qword_267EFDCF0);
  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_63();
  v24(v25);
  v26 = OUTLINED_FUNCTION_50_3();
  v24(v26);
  v27 = OUTLINED_FUNCTION_57_3();
  v24(v27);
  v28 = OUTLINED_FUNCTION_95_0();
  v24(v28);
  v29 = v21[130];
  OUTLINED_FUNCTION_2_16();
  v30 = v21[100];
  v31 = OUTLINED_FUNCTION_1_16();
  v24(v31);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C22A04()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[133];
  *v4 = *v1;
  v3[134] = v0;

  OUTLINED_FUNCTION_78_0();
  v7 = *(v6 + 1056);
  v8 = v3[115];

  if (!v0)
  {
    v3[135] = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C22B44()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 1080);
  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  v3 = *(v0 + 1080);
  sub_267B9F98C(v0 + 296, &qword_28022BB10, &qword_267EFDCF0);
  v4 = OUTLINED_FUNCTION_127();
  v5 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v6 = [v4 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v7);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v8, v9, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v10 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v10);
  v11 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v11);
  v12 = OUTLINED_FUNCTION_101_0();
  v13 = OUTLINED_FUNCTION_3_9(v12);
  v14(v13);
  OUTLINED_FUNCTION_10_8();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_25_5(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_0_8(v16);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v18, v19, v20, v21, v22);
}

uint64_t sub_267C22C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_85();
  v22 = v21[109];
  OUTLINED_FUNCTION_8_3();

  __swift_destroy_boxed_opaque_existential_0(v21 + 57);
  sub_267B9F98C((v21 + 37), &qword_28022BB10, &qword_267EFDCF0);
  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_63();
  v24(v25);
  v26 = OUTLINED_FUNCTION_50_3();
  v24(v26);
  v27 = OUTLINED_FUNCTION_57_3();
  v24(v27);
  v28 = OUTLINED_FUNCTION_95_0();
  v24(v28);
  v29 = v21[134];
  OUTLINED_FUNCTION_2_16();
  v30 = v21[100];
  v31 = OUTLINED_FUNCTION_1_16();
  v24(v31);

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C22DFC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  v5 = v3[137];
  *v4 = *v1;
  v3[138] = v0;

  OUTLINED_FUNCTION_78_0();
  v7 = *(v6 + 1088);
  v8 = v3[115];

  if (!v0)
  {
    v3[139] = v2;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_125();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267C22F3C()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 1112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  v3 = *(v0 + 1112);
  *(v0 + 1152) = v3;
  v4 = *(v0 + 888);
  v5 = v3;
  v6 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_54_2(v8);
    OUTLINED_FUNCTION_102_0();
    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v9, v10, "#UnsendMessagesConfirmIntentFlowStrategy pattern %s successfully executed");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v11 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_97(v11);
  v12 = sub_267EF4188();
  OUTLINED_FUNCTION_31_4(v12);
  v13 = OUTLINED_FUNCTION_101_0();
  v14 = OUTLINED_FUNCTION_3_9(v13);
  v15(v14);
  OUTLINED_FUNCTION_10_8();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_25_5(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_0_8(v17);
  OUTLINED_FUNCTION_46();

  return sub_267BCF3A4(v19, v20, v21, v22, v23);
}