uint64_t sub_267DB3E10()
{
  v16 = &type metadata for ReactionComponent;
  v17 = &off_2878D30D0;
  OUTLINED_FUNCTION_99_8();
  *&v15 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_89_10(v15);
  memcpy(v1, v2, 0x71uLL);
  sub_267B9A5E8(&v15, v14);
  v3 = __swift_project_boxed_opaque_existential_0(v14, v14[3])[9];
  v4 = *(v0 + 40);
  if (!sub_267BAF0DC(v4))
  {
    sub_267C772E8(v0, v13);

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_267C772E8(v0, v13);

    OUTLINED_FUNCTION_114_7();
  }

  else
  {
    v5 = *(v4 + 32);
    sub_267C772E8(v0, v13);

    v6 = v5;
  }

  v7 = v6;
  v8 = [v6 recipients];

  if (!v8)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v9 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(v3, v9);
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_267DB3F8C()
{
  v1 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  sub_267D5D124(v0, &v12);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B4F0, &qword_267F062B0);
    sub_267EF9098();
    sub_267D5D15C(v1);
    v7 = OUTLINED_FUNCTION_63();
    v10 = sub_267BA33E8(v7, v8, v9);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_267B93000, v3, v4, "#ReadableComponent#conversationContactIdentifiers unknown component type %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267D5D15C(v0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267DB424C()
{
  v1 = v0;
  v22 = &type metadata for AudioComponent;
  v23 = sub_267DBC1F0();
  v2 = swift_allocObject();
  *&v21 = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  sub_267B9A5E8(&v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v5 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = *(v1 + 8);
  if (!sub_267BAF0DC(v7))
  {
    sub_267DBC244(v1, v19);
    v14 = v6;
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  sub_267BBD0EC(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_267DBC244(v1, v19);
    v18 = v6;
    v10 = MEMORY[0x26D609870](0, v7);
  }

  else
  {
    v8 = *(v7 + 32);
    sub_267DBC244(v1, v19);
    v9 = v6;
    v10 = v8;
  }

  v11 = v10;
  v12 = [v10 recipients];

  if (!v12)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v13 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(inited, v13);
  v16 = v15;

  swift_setDeallocating();
  sub_267DB7190(&qword_280229790, &qword_267EFE4C0);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v16;
}

uint64_t sub_267DB441C()
{
  v26 = &type metadata for PaymentComponent;
  v27 = sub_267DBCB60();
  OUTLINED_FUNCTION_99_8();
  *&v25 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_89_10(v25);
  memcpy(v3, v4, 0x71uLL);
  sub_267B9A5E8(&v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v6 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  if (!OUTLINED_FUNCTION_168_2(v6))
  {
    v15 = OUTLINED_FUNCTION_103_6();
    sub_267D5D40C(v15, v16);
    v17 = v1;
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_39_14();
  if (v2)
  {
    v21 = OUTLINED_FUNCTION_103_6();
    sub_267D5D40C(v21, v22);
    v23 = v1;
    OUTLINED_FUNCTION_114_7();
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = OUTLINED_FUNCTION_103_6();
    sub_267D5D40C(v8, v9);
    v10 = v1;
    v11 = v7;
  }

  v12 = v11;
  v13 = [v11 recipients];

  if (!v13)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v14 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(inited, v14);
  v19 = v18;

  swift_setDeallocating();
  sub_267DB7190(&qword_280229790, &qword_267EFE4C0);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

uint64_t sub_267DB4A70()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 264) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 104) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  v10 = sub_267EF2E38();
  *(v1 + 152) = v10;
  v11 = *(v10 - 8);
  *(v1 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267DB4B64()
{
  v1 = *(v0 + 136);
  v2 = *v1;
  if (*v1)
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);
    v7 = v6[6];
    __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_63();
    v10(v9);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_63();
    sub_267EF3B68();
    v12 = v6[52];

    v2 = sub_267BC20F4(v3, 0, 0, v12, v2);

    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v1 = *(v0 + 136);
  }

  *(v0 + 176) = v2;
  v13 = sub_267BAF0DC(*(v1 + 8));
  *(v0 + 184) = v13;
  if (*(v1 + 48))
  {
    v14 = 1;
  }

  else
  {
    v15 = *(v0 + 144);
    INMessageEffectType.description.getter(*(*(v0 + 136) + 40));
    sub_267EF90F8();

    v14 = 0;
  }

  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v18 = *(v0 + 104);
  v19 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v16, v14, 1, v19);
  v20 = OUTLINED_FUNCTION_63();
  v22 = sub_267DB86B0(v20, v21);
  *(v0 + 192) = v22;
  if (*(v18 + 88))
  {
    OUTLINED_FUNCTION_10(dword_267F08C90);
    v39 = v23;
    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_267DB4E7C;
    v25 = *(v0 + 136);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);

    return v39(v25, v26, v27);
  }

  else
  {
    v29 = v22;
    v31 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 120);
    v40 = *(v0 + 104);
    v33 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
    v38 = *v32;
    sub_267BB8364();
    v34 = swift_task_alloc();
    *(v0 + 240) = v34;
    *(v34 + 16) = v32;
    *(v34 + 24) = v2;
    *(v34 + 32) = v13;
    *(v34 + 40) = v30;
    *(v34 + 48) = v29;
    *(v34 + 56) = vextq_s8(v40, v40, 8uLL);
    *(v34 + 72) = v31;
    v35 = *v33;
    v36 = swift_task_alloc();
    *(v0 + 248) = v36;
    *v36 = v0;
    v36[1] = sub_267DB5368;
    v37 = *(v0 + 264);

    return sub_267D42008();
  }
}

uint64_t sub_267DB4E7C()
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

uint64_t sub_267DB4F64()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 184);
  v9 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
  v15 = *v6;
  sub_267BB8364();
  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v3;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  *(v10 + 48) = v2;
  *(v10 + 56) = v1;
  *(v10 + 64) = v7;
  *(v10 + 72) = v4;
  v11 = *v9;
  v12 = swift_task_alloc();
  *(v0 + 224) = v12;
  *v12 = v0;
  v12[1] = sub_267DB50A8;
  v13 = *(v0 + 264);

  return sub_267D44D54();
}

uint64_t sub_267DB50A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v6 = *(v5 + 224);
  v7 = *(v5 + 216);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 232) = v0;

  if (v0)
  {
    v11 = sub_267DB52C4;
  }

  else
  {
    v11 = sub_267DB51C8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267DB51C8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[26];

  v2 = v0[8];
  v3 = v0[13];
  v4 = *(v3 + 416);
  if (v4)
  {
    v5 = v0[24];
    if (*(v3 + 426))
    {
      v6 = v0[24];
    }

    else
    {
      v8 = *(v4 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v7 = v0[24];
  }

  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[18];

  sub_267B9F98C(v11, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_4_3();

  return v12(v2);
}

uint64_t sub_267DB52C4()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[26];

  v2 = v0[29];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];

  sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267DB5368()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v6 = *(v5 + 248);
  v7 = *(v5 + 240);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 256) = v0;

  if (v0)
  {
    v11 = sub_267DB557C;
  }

  else
  {
    v11 = sub_267DB5488;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267DB5488()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[11];
  v2 = v0[13];
  v3 = *(v2 + 416);
  if (v3)
  {
    v4 = v0[24];
    if (*(v2 + 426))
    {
      v5 = v0[24];
    }

    else
    {
      v7 = *(v3 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v6 = v0[24];
  }

  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[18];

  sub_267B9F98C(v10, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_4_3();

  return v11(v1);
}

uint64_t sub_267DB557C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[32];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];

  sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267DB5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 88) = a4;
  *(v9 + 80) = a9;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;
  v10 = sub_267EF8248();
  *(v9 + 128) = v10;
  v11 = *(v10 - 8);
  *(v9 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DB5754, 0, 0);
}

void sub_267DB5754()
{
  v2 = *(v0 + 184);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  SpokenAudioComponentParameters = type metadata accessor for SearchForMessagesReadSpokenAudioComponentParameters(0);
  *(v0 + 192) = SpokenAudioComponentParameters;
  v6 = SpokenAudioComponentParameters[7];
  sub_267B9F98C(v4 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 200) = v9;
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_155_2();
  v13(v12);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  OUTLINED_FUNCTION_122_5();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(SpokenAudioComponentParameters[13]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_134_2();
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(SpokenAudioComponentParameters[14]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_134_2();
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(SpokenAudioComponentParameters[17]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_134_2();
  v44 = *(v0 + 160);
  v45 = *(v0 + 56);
  OUTLINED_FUNCTION_40_15();
  sub_267BD3DDC(v44, v45 + SpokenAudioComponentParameters[19]);
  OUTLINED_FUNCTION_79_10();
  v23 = *(v1 + SpokenAudioComponentParameters[15]);

  OUTLINED_FUNCTION_117_7();
  sub_267BE855C(v9, v1 + v45[9]);
  v24 = v45[6];
  v25 = *(v1 + v24);

  *(v1 + v24) = v6;
  v26 = v45[18];
  v27 = *(v1 + v26);

  *(v1 + v26) = v44;
  v28 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_165_1(v28, v29);
  v30 = sub_267BDAF74();
  *(v0 + 256) = v30 & 1;
  if (v30)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v31 = swift_task_alloc();
    *(v0 + 248) = v31;
    *v31 = v0;
    v31[1] = sub_267DB5C58;
    OUTLINED_FUNCTION_98();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v45)
  {
    v34 = *(v0 + 176);
    v35 = *(v0 + 184);
    OUTLINED_FUNCTION_48_19();
    (*(v36 + 8))(v23);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_38_18();
    v38(v37);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v39, v40, v41);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_98();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267DB5C58()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 257) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DB5D40()
{
  v1 = *(v0 + 257);
  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v20 = *(v0 + 208);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 128);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v20)
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    OUTLINED_FUNCTION_48_19();
    (*(v12 + 8))(v1);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_38_18();
    v15(v14);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v16, v17, v18);
  }

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267DB5EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 88) = a4;
  *(v9 + 80) = a9;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;
  v10 = sub_267EF8248();
  *(v9 + 128) = v10;
  v11 = *(v10 - 8);
  *(v9 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DB6018, 0, 0);
}

void sub_267DB6018()
{
  v2 = *(v0 + 184);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  AudioComponentParameters = type metadata accessor for SearchForMessagesReadAudioComponentParameters(0);
  *(v0 + 192) = AudioComponentParameters;
  v6 = AudioComponentParameters[7];
  sub_267B9F98C(v4 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 200) = v9;
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_155_2();
  v13(v12);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  OUTLINED_FUNCTION_122_5();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(AudioComponentParameters[14]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_134_2();
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(AudioComponentParameters[15]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_134_2();
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(AudioComponentParameters[18]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_134_2();
  v44 = *(v0 + 160);
  v45 = *(v0 + 56);
  OUTLINED_FUNCTION_40_15();
  sub_267BD3DDC(v44, v45 + AudioComponentParameters[19]);
  OUTLINED_FUNCTION_79_10();
  v23 = *(v1 + AudioComponentParameters[16]);

  OUTLINED_FUNCTION_117_7();
  sub_267BE855C(v9, v1 + v45[10]);
  v24 = v45[6];
  v25 = *(v1 + v24);

  *(v1 + v24) = v6;
  v26 = v45[9];
  v27 = *(v1 + v26);

  *(v1 + v26) = v44;
  v28 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_165_1(v28, v29);
  v30 = sub_267BDAF74();
  *(v0 + 256) = v30 & 1;
  if (v30)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v31 = swift_task_alloc();
    *(v0 + 248) = v31;
    *v31 = v0;
    v31[1] = sub_267DB651C;
    OUTLINED_FUNCTION_98();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v45)
  {
    v34 = *(v0 + 176);
    v35 = *(v0 + 184);
    OUTLINED_FUNCTION_48_19();
    (*(v36 + 8))(v23);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_38_18();
    v38(v37);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v39, v40, v41);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_98();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267DB651C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 257) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DB6604(uint64_t a1)
{
  v2 = v1;
  sub_267C2FB6C(a1, v15, &qword_280229910, &unk_267EFEB70);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      v8[0] = v11;
      v8[1] = v12;
      v9 = v13;
      v10 = v14;
      v3 = *v1;
      if (*v1)
      {
        if (!v11)
        {
          goto LABEL_15;
        }

        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        v4 = v11;
        v5 = v3;
        v6 = sub_267EF9818();

        if ((v6 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v11)
      {
LABEL_15:
        sub_267DB6CD8(v8);
        return 0;
      }

      if (v2[6])
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if ((v10 & 1) != 0 || v2[5] != *(&v9 + 1))
      {
        goto LABEL_15;
      }

      sub_267BE22E4(*(&v8[0] + 1), v2 + 1);
      sub_267DB6CD8(v8);
      return 1;
    }
  }

  else
  {
    sub_267B9F98C(v15, &qword_280229910, &unk_267EFEB70);
  }

  return 0;
}

id sub_267DB6790()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_267DB67B8()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_267DB67C4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_267DB67FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_267DB683C()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_267DB68E0;

  return sub_267DB676C();
}

uint64_t sub_267DB68E0()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 72);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  OUTLINED_FUNCTION_4_3();

  return v7(v2);
}

uint64_t sub_267DB69CC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  *(v1 + 64) = *(v0 + 24);
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 16) = v2;
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  v5[1] = sub_267DB6AAC;

  return sub_267DB4A70();
}

uint64_t sub_267DB6AAC()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  OUTLINED_FUNCTION_4_3();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_267DB6B9C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 24);
  return sub_267DB48AC();
}

unint64_t sub_267DB6BE0(uint64_t a1)
{
  result = sub_267DB6C08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267DB6C08()
{
  result = qword_28022BE28;
  if (!qword_28022BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE28);
  }

  return result;
}

unint64_t sub_267DB6C5C(uint64_t a1)
{
  result = sub_267DB6C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267DB6C84()
{
  result = qword_28022BE30;
  if (!qword_28022BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE30);
  }

  return result;
}

void sub_267DB6D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v33 = MEMORY[0x277D84F90];
    sub_267BE8B74(0, v3, 0);
    v6 = (a1 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8)
      {
        v9 = sub_267BBD380(v7);
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      v13 = *(v33 + 16);
      v12 = *(v33 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_267BE8B74((v12 > 1), v13 + 1, 1);
      }

      *(v33 + 16) = v13 + 1;
      v14 = v33 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v15 = sub_267BAF0DC(a2);
    for (i = 0; ; ++i)
    {
      if (v15 == i)
      {
        v20 = v4;
        v21 = sub_267BAF0DC(v4);
        if (v21)
        {
          v22 = v21;
          sub_267BE8B74(0, v21 & ~(v21 >> 63), 0);
          if (v22 < 0)
          {
            goto LABEL_36;
          }

          v23 = 0;
          v24 = v4;
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x26D609870](v23, v20);
            }

            else
            {
              v25 = *(v20 + 8 * v23 + 32);
            }

            v26 = v25;
            v27 = sub_267BBD380(v25);
            v29 = v28;

            v31 = *(v24 + 16);
            v30 = *(v24 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_267BE8B74((v30 > 1), v31 + 1, 1);
            }

            ++v23;
            *(v24 + 16) = v31 + 1;
            v32 = v24 + 16 * v31;
            *(v32 + 32) = v27;
            *(v32 + 40) = v29;
          }

          while (v22 != v23);
        }

        else
        {

          v24 = MEMORY[0x277D84F90];
        }

        sub_267BE8BC8(v24);
        return;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D609870](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v17 = *(a2 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v17 isMe])
      {
      }

      else
      {
        sub_267EF9BD8();
        v19 = *(v4 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

uint64_t sub_267DB6FD4()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7014()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3D8, &qword_267F08D00) - 8) + 80);
  OUTLINED_FUNCTION_167_1();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7080()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7114(uint64_t (*a1)(void))
{
  v1 = *(*(a1(0) - 8) + 80);
  OUTLINED_FUNCTION_167_1();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7190(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

void sub_267DB71D8()
{
  OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_95_8();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30(v7, v123);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_43_18(v9, v10, v11, v12, v13, v14, v15, v16, v124);
  OUTLINED_FUNCTION_23();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_37(v20, v125);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v22 = OUTLINED_FUNCTION_18(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_141();
  v138[3] = &unk_2878CE588;
  v26 = sub_267C1016C();
  v138[4] = v26;
  OUTLINED_FUNCTION_163_1();
  v138[0] = swift_allocObject();
  v27 = OUTLINED_FUNCTION_109_8();
  sub_267C1023C(v27, v28);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v29 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8();
  v30 = __swift_project_boxed_opaque_existential_0(v138, &unk_2878CE588);
  v31 = OUTLINED_FUNCTION_29_21(v30, v26[1]);
  v33 = v32(v31);
  OUTLINED_FUNCTION_76_9(v33, v34);
  if (v136)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v136)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14() & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v35 = OUTLINED_FUNCTION_0_47(v138);
  v37 = v36(v35);
  v38 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v38, v39, v40, v41);
  if (v136)
  {
    v42 = OUTLINED_FUNCTION_0_47(v135);
    v44 = v43(v42);
    OUTLINED_FUNCTION_170_2(v44);
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229CE0, &qword_267F00410);
    v134 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v45)
  {
    sub_267B9F98C(&v137, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v46)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v47)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v2 = v133;
  if (v0 != 1)
  {

    v134 = v0;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v48 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v48, v49, v50, v51);
  v52 = v136;
  if (v136)
  {
    v53 = OUTLINED_FUNCTION_0_47(v135);
    v54(v53);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229CE0, &qword_267F00410);
    v26 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v56 = *(v55 + 40);
  v57 = OUTLINED_FUNCTION_53_0();
  v59 = v58(v57);
  OUTLINED_FUNCTION_85_9(v59);
  if (v60 && v37)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v61 = v37;
    v62 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v29 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v26 && v37)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v64 = v37;
    v65 = v26;
    OUTLINED_FUNCTION_33();
    v29 = sub_267EF9818();

    v63 = v29 ^ 1;
  }

  v131 = v63;
  v66 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v66, v67, v68, v69);
  if (!v136)
  {
    sub_267B9F98C(v135, &qword_280229CE0, &qword_267F00410);
    v76 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v3);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v70 = OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_8_41(v70);
  if (v46)
  {
LABEL_39:
    sub_267B9F98C(v1, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v1);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v71 = OUTLINED_FUNCTION_34_17();
  v72(v71);

  v73 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v73, v74);
  OUTLINED_FUNCTION_69_7();
  if (v29)
  {
    v75 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v79))
  {
    v80 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v80);
    OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2();
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v81 = OUTLINED_FUNCTION_35_18();
    v82(v81);

    v83 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v83, v84);
    OUTLINED_FUNCTION_69_7();
    if (v29)
    {
      v85 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v86 = *(v0 + 32);
    if (v86 && *(v86 + 16))
    {
      v87 = *(v86 + 32);
      v88 = *MEMORY[0x277CD44D8];
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      v89 = OUTLINED_FUNCTION_33();
      sub_267BB40A0(v89, v90, v87);

      if (v136)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v135, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v0);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    v0 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v91)
  {
    v92 = OUTLINED_FUNCTION_37_15();
    v93 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v93, v94, v95, v96);
    if (!v136)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v92 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v101 = OUTLINED_FUNCTION_3_50(v100, v126);
  v102(v101);
  OUTLINED_FUNCTION_58_8();
  v103 = OUTLINED_FUNCTION_32_15();
  v104(v103);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v109 = OUTLINED_FUNCTION_2_49(v108, v127);
  v110(v109);
  OUTLINED_FUNCTION_67_6();
  v111 = OUTLINED_FUNCTION_28_25();
  v112(v111);
  OUTLINED_FUNCTION_153_2();
  if ((v113 & 1) == 0)
  {
    if ((v92 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v131)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v0);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v114 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v117)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13(v115, v116);
  }

  sub_267C00EDC(v138);
  OUTLINED_FUNCTION_80_7();
  v118 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v118, v133, v128[0], v128[1], v128[2]);
  OUTLINED_FUNCTION_132_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v119 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_127_5(v119, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  sub_267C00310(v120, v121);
  OUTLINED_FUNCTION_96_7();
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v119[3].n128_u64[1] = v114;
  v122 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v122);
  OUTLINED_FUNCTION_57_11();

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v138);
  OUTLINED_FUNCTION_47();
}

void sub_267DB7C44()
{
  OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_95_8();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30(v7, v123);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_43_18(v9, v10, v11, v12, v13, v14, v15, v16, v124);
  OUTLINED_FUNCTION_23();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_37(v20, v125);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v22 = OUTLINED_FUNCTION_18(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_141();
  v138[3] = &type metadata for LinkComponent;
  v26 = sub_267D68A64();
  v138[4] = v26;
  OUTLINED_FUNCTION_148_2();
  v138[0] = swift_allocObject();
  v27 = OUTLINED_FUNCTION_109_8();
  sub_267D68B34(v27, v28);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v29 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8();
  v30 = __swift_project_boxed_opaque_existential_0(v138, &type metadata for LinkComponent);
  v31 = OUTLINED_FUNCTION_29_21(v30, v26[1]);
  v33 = v32(v31);
  OUTLINED_FUNCTION_76_9(v33, v34);
  if (v136)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v136)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14() & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v35 = OUTLINED_FUNCTION_0_47(v138);
  v37 = v36(v35);
  v38 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v38, v39, v40, v41);
  if (v136)
  {
    v42 = OUTLINED_FUNCTION_0_47(v135);
    v44 = v43(v42);
    OUTLINED_FUNCTION_170_2(v44);
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229CE0, &qword_267F00410);
    v134 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v45)
  {
    sub_267B9F98C(&v137, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v46)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v47)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v2 = v133;
  if (v0 != 1)
  {

    v134 = v0;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v48 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v48, v49, v50, v51);
  v52 = v136;
  if (v136)
  {
    v53 = OUTLINED_FUNCTION_0_47(v135);
    v54(v53);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v135, &qword_280229CE0, &qword_267F00410);
    v26 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v56 = *(v55 + 40);
  v57 = OUTLINED_FUNCTION_53_0();
  v59 = v58(v57);
  OUTLINED_FUNCTION_85_9(v59);
  if (v60 && v37)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v61 = v37;
    v62 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v29 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v26 && v37)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v64 = v37;
    v65 = v26;
    OUTLINED_FUNCTION_33();
    v29 = sub_267EF9818();

    v63 = v29 ^ 1;
  }

  v131 = v63;
  v66 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v66, v67, v68, v69);
  if (!v136)
  {
    sub_267B9F98C(v135, &qword_280229CE0, &qword_267F00410);
    v76 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v3);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v70 = OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_8_41(v70);
  if (v46)
  {
LABEL_39:
    sub_267B9F98C(v1, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v1);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v71 = OUTLINED_FUNCTION_34_17();
  v72(v71);

  v73 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v73, v74);
  OUTLINED_FUNCTION_69_7();
  if (v29)
  {
    v75 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v79))
  {
    v80 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v80);
    OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2();
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v81 = OUTLINED_FUNCTION_35_18();
    v82(v81);

    v83 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v83, v84);
    OUTLINED_FUNCTION_69_7();
    if (v29)
    {
      v85 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v86 = *(v0 + 32);
    if (v86 && *(v86 + 16))
    {
      v87 = *(v86 + 32);
      v88 = *MEMORY[0x277CD44D8];
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      v89 = OUTLINED_FUNCTION_33();
      sub_267BB40A0(v89, v90, v87);

      if (v136)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v135, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v0);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    v0 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v91)
  {
    v92 = OUTLINED_FUNCTION_37_15();
    v93 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v93, v94, v95, v96);
    if (!v136)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v92 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v101 = OUTLINED_FUNCTION_3_50(v100, v126);
  v102(v101);
  OUTLINED_FUNCTION_58_8();
  v103 = OUTLINED_FUNCTION_32_15();
  v104(v103);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v109 = OUTLINED_FUNCTION_2_49(v108, v127);
  v110(v109);
  OUTLINED_FUNCTION_67_6();
  v111 = OUTLINED_FUNCTION_28_25();
  v112(v111);
  OUTLINED_FUNCTION_153_2();
  if ((v113 & 1) == 0)
  {
    if ((v92 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v131)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v0);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v114 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v117)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13(v115, v116);
  }

  sub_267C00EDC(v138);
  OUTLINED_FUNCTION_80_7();
  v118 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v118, v133, v128[0], v128[1], v128[2]);
  OUTLINED_FUNCTION_132_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v119 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_127_5(v119, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  sub_267C00310(v120, v121);
  OUTLINED_FUNCTION_96_7();
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v119[3].n128_u64[1] = v114;
  v122 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v122);
  OUTLINED_FUNCTION_57_11();

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v138);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DB86B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v113 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v115 = (&v112 - v8);
  v9 = sub_267EF2728();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = *(v117 + 64);
  MEMORY[0x28223BE20](v9);
  v116 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v112 - v17;
  v143 = &type metadata for AudioComponent;
  v144 = sub_267DBC1F0();
  v19 = swift_allocObject();
  v142[0] = v19;
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = *(a1 + 48);
  sub_267DBC244(a1, &v128);
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v21 = qword_280240FC8;
  sub_267EF95D8();
  v121 = v21;
  sub_267EF8998();
  v23 = v143;
  v22 = v144;
  __swift_project_boxed_opaque_existential_0(v142, v143);
  (*(*(v22 + 8) + 32))(v23);
  v127 = v24;
  sub_267BD997C();
  if (v130)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v141 = 0;
      v139 = 0u;
      v140 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v128, &qword_280229910, &unk_267EFEB70);
    v139 = 0u;
    v140 = 0u;
    v141 = 0;
  }

  sub_267BD9E24();
  if (v130)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v138 = 0;
      v136 = 0u;
      v137 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v128, &qword_280229910, &unk_267EFEB70);
    v136 = 0u;
    v137 = 0u;
    v138 = 0;
  }

  v25 = v143;
  v26 = v144;
  __swift_project_boxed_opaque_existential_0(v142, v143);
  v27 = (*(v26 + 16))(v25, v26);
  sub_267C2FB6C(&v139, &v128, &qword_280229CE0, &qword_267F00410);
  v28 = v130;
  if (v130)
  {
    v29 = v131;
    __swift_project_boxed_opaque_existential_0(&v128, v130);
    v126 = v29[2](v28, v29);
    __swift_destroy_boxed_opaque_existential_0(&v128);
  }

  else
  {
    sub_267B9F98C(&v128, &qword_280229CE0, &qword_267F00410);
    v126 = 0;
  }

  sub_267BD997C();
  v123 = v27;
  v124 = a2;
  v114 = v4;
  if (!v135[3])
  {
    sub_267B9F98C(v135, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v125 = v16;
  if (*(v133 + 16) != 1)
  {
    v30 = v134;

    goto LABEL_21;
  }

  v112 = v130;
  v119 = v129;
  v120 = v131;
  v122 = v134;
  if (v132)
  {

LABEL_21:
    v4 = v114;
    v27 = v123;
    v16 = v125;
    goto LABEL_25;
  }

  v31 = sub_267C904B4(v133);

  v16 = v125;
  if (v31 != 1)
  {

    v126 = v31;
  }

  v4 = v114;
  v27 = v123;
LABEL_25:
  sub_267C2FB6C(&v136, &v128, &qword_280229CE0, &qword_267F00410);
  v32 = v130;
  if (v130)
  {
    v33 = v131;
    __swift_project_boxed_opaque_existential_0(&v128, v130);
    v34 = v33[2](v32, v33);
    __swift_destroy_boxed_opaque_existential_0(&v128);
  }

  else
  {
    sub_267B9F98C(&v128, &qword_280229CE0, &qword_267F00410);
    v34 = 0;
  }

  v36 = v143;
  v35 = v144;
  __swift_project_boxed_opaque_existential_0(v142, v143);
  LODWORD(v119) = (*(*(v35 + 8) + 40))(v36);
  v37 = 1;
  if (v126 && v27)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v38 = v27;
    v39 = v126;
    v40 = sub_267EF9818();

    v37 = v40 ^ 1;
  }

  LODWORD(v125) = v37;
  v41 = 1;
  if (v34 && v27)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v42 = v27;
    v43 = v34;
    v44 = sub_267EF9818();

    v41 = v44 ^ 1;
  }

  LODWORD(v122) = v41;
  sub_267C2FB6C(&v139, &v128, &qword_280229CE0, &qword_267F00410);
  if (!v130)
  {
    sub_267B9F98C(&v128, &qword_280229CE0, &qword_267F00410);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v4);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v45 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v18, v45 ^ 1u, 1, v4);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
  {
LABEL_39:
    sub_267B9F98C(v18, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  v46 = *(v18 + 2);
  v47 = *(v18 + 3);

  sub_267C00468(v18);
  v128 = v46;
  v129 = v47;
  v48 = v116;
  sub_267EF26D8();
  sub_267BB5034();
  v49 = sub_267EF9918();
  v51 = v50;
  (*(v117 + 8))(v48, v118);

  sub_267C00618(v49, v51);
  v53 = v52;

  if (v53)
  {
    v54 = sub_267EF8FF8();
    IsSingleEmoji = CEMStringIsSingleEmoji();

    v56 = IsSingleEmoji != 0;
    goto LABEL_41;
  }

LABEL_40:
  v56 = 0;
LABEL_41:
  sub_267B9AFEC(v142, &v128);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v4);
    sub_267B9F98C(v16, &qword_28022A090, &unk_267F08CC0);
    v69 = 0;
    goto LABEL_54;
  }

  v57 = v34;
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v4);
  v58 = v115;
  sub_267C00778(v16, v115);
  v59 = v58[3];
  v128 = v58[2];
  v129 = v59;

  v60 = v116;
  sub_267EF26D8();
  sub_267BB5034();
  v61 = sub_267EF9918();
  v63 = v62;
  (*(v117 + 8))(v60, v118);

  sub_267BB8F30(v61, v63);
  v65 = v64;

  if (v65)
  {
    v66 = sub_267EF8FF8();
    v67 = CEMStringIsSingleEmoji();

    v68 = v67 != 0;
  }

  else
  {
    v68 = 0;
  }

  v70 = v58[4];
  if (!v70 || !*(v70 + 16))
  {
    goto LABEL_52;
  }

  v71 = *(v70 + 32);
  v72 = *MEMORY[0x277CD44D8];
  v73 = sub_267EF9028();
  v75 = v74;

  sub_267BB40A0(v73, v75, v71);

  if (!v130)
  {
    sub_267B9F98C(&v128, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_52;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    v76 = 0;
    goto LABEL_53;
  }

  v76 = v135[0] == 0;
LABEL_53:
  sub_267C00468(v58);
  v69 = v68 || v76;
  v34 = v57;
LABEL_54:
  v120 = v34;
  LODWORD(v118) = v69;
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_0(v142, v143);
    DynamicType = swift_getDynamicType();
    result = sub_267C2FB6C(&v139, &v128, &qword_280229CE0, &qword_267F00410);
    if (!v130)
    {
      __break(1u);
      return result;
    }

    __swift_project_boxed_opaque_existential_0(&v128, v130);
    v79 = DynamicType == swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v128);
    v80 = v79 & (v56 ^ v69 ^ 1);
  }

  else
  {

    v80 = 0;
  }

  v82 = v143;
  v81 = v144;
  v83 = __swift_project_boxed_opaque_existential_0(v142, v143);
  Description = v82[-1].Description;
  v85 = Description[8];
  MEMORY[0x28223BE20](v83);
  v87 = &v112 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (Description[2])(v87);
  v88 = v124;
  v89 = sub_267C00940(v87, v124, v82, *(v81 + 8));
  (Description[1])(v87, v82);
  v90 = v143;
  v91 = v144;
  v92 = __swift_project_boxed_opaque_existential_0(v142, v143);
  v93 = v90[-1].Description;
  v94 = v93[8];
  MEMORY[0x28223BE20](v92);
  v96 = &v112 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v93[2])(v96);
  v97 = sub_267C00EC4(v96, v88, v90, *(v91 + 8));
  (v93[1])(v96, v90);
  v98 = v125;
  if (v125)
  {
    goto LABEL_59;
  }

  if ((v80 & 1) == 0)
  {
    goto LABEL_64;
  }

  if (v122)
  {
    sub_267B9AFEC(v142, &v128);
    v100 = v113;
    if (swift_dynamicCast())
    {
      sub_267C00468(v100);
      v98 = v125;
      goto LABEL_59;
    }

LABEL_64:
    v99 = 1;
    goto LABEL_65;
  }

LABEL_59:
  v99 = !v89 & v98;
LABEL_65:
  v101 = MEMORY[0x277D837D0];
  if (*(&v140 + 1))
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
  }

  else
  {
    v105 = *(v124 + 104);
    v103 = v105 == 1;
    v102 = v105 == 2;
    v104 = v105 > 2;
  }

  v106 = sub_267C00EDC(v142);
  type metadata accessor for MessagesMessageComponentDialogContext();
  v107 = sub_267C01144(v119 & 1, v125 & 1, v122 & 1, v80, v118 & 1, v106 & 1, v89, v97, (v99 | v103) & 1, v102, v104);
  sub_267EF95D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_267EFC020;
  v128 = v107;
  sub_267C00310(&qword_28022BE48, type metadata accessor for MessagesMessageComponentDialogContext);
  sub_267EF7B58();
  v109 = sub_267EF8F08();
  v111 = v110;

  *(v108 + 56) = v101;
  *(v108 + 64) = sub_267BFBEB4();
  *(v108 + 32) = v109;
  *(v108 + 40) = v111;
  sub_267EF8998();

  sub_267B9F98C(&v136, &qword_280229CE0, &qword_267F00410);
  sub_267B9F98C(&v139, &qword_280229CE0, &qword_267F00410);
  __swift_destroy_boxed_opaque_existential_0(v142);
  return v107;
}

uint64_t sub_267DB9694()
{
  OUTLINED_FUNCTION_108_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v10 = OUTLINED_FUNCTION_73_8(v1);

  return sub_267DB5EDC(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_267DB9740()
{
  OUTLINED_FUNCTION_48_0();
  v4 = OUTLINED_FUNCTION_95_8();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_30(v8, v125);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_43_18(v10, v11, v12, v13, v14, v15, v16, v17, v126);
  OUTLINED_FUNCTION_23();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11_37(v21, v127);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v23 = OUTLINED_FUNCTION_18(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_141();
  v140[3] = type metadata accessor for ImageComponent();
  OUTLINED_FUNCTION_21_22();
  v140[4] = sub_267C00310(v27, v28);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v140);
  OUTLINED_FUNCTION_27_22(boxed_opaque_existential_0);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v30 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_7_37();
  v32 = *(v31 + 32);
  v33 = OUTLINED_FUNCTION_53_0();
  v35 = v34(v33);
  OUTLINED_FUNCTION_76_9(v35, v36);
  if (v138)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v138)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14() & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v37 = OUTLINED_FUNCTION_0_47(v140);
  v39 = v38(v37);
  v40 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v40, v41, v42, v43);
  if (v138)
  {
    v44 = OUTLINED_FUNCTION_0_47(v137);
    v46 = v45(v44);
    OUTLINED_FUNCTION_170_2(v46);
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229CE0, &qword_267F00410);
    v136 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v47)
  {
    sub_267B9F98C(&v139, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v48)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v49)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v3 = v135;
  if (v0 != 1)
  {

    v136 = v0;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v50 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v50, v51, v52, v53);
  v54 = v138;
  if (v138)
  {
    v55 = OUTLINED_FUNCTION_0_47(v137);
    v56(v55);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229CE0, &qword_267F00410);
    v1 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v58 = *(v57 + 40);
  v59 = OUTLINED_FUNCTION_53_0();
  v61 = v60(v59);
  OUTLINED_FUNCTION_85_9(v61);
  if (v62 && v39)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v63 = v39;
    v64 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v30 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v1 && v39)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v66 = v39;
    v67 = v1;
    OUTLINED_FUNCTION_33();
    v30 = sub_267EF9818();

    v65 = v30 ^ 1;
  }

  v133 = v65;
  v68 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v68, v69, v70, v71);
  if (!v138)
  {
    sub_267B9F98C(v137, &qword_280229CE0, &qword_267F00410);
    v78 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v4);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v72 = OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_8_41(v72);
  if (v48)
  {
LABEL_39:
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v2);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v73 = OUTLINED_FUNCTION_34_17();
  v74(v73);

  v75 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v75, v76);
  OUTLINED_FUNCTION_69_7();
  if (v30)
  {
    v77 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v81))
  {
    v82 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v82);
    OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2();
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v83 = OUTLINED_FUNCTION_35_18();
    v84(v83);

    v85 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v85, v86);
    OUTLINED_FUNCTION_69_7();
    if (v30)
    {
      v87 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v88 = *(v0 + 32);
    if (v88 && *(v88 + 16))
    {
      v89 = *(v88 + 32);
      v90 = *MEMORY[0x277CD44D8];
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      v91 = OUTLINED_FUNCTION_33();
      sub_267BB40A0(v91, v92, v89);

      if (v138)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v137, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v0);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v3, &qword_28022A090, &unk_267F08CC0);
    v0 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v93)
  {
    v94 = OUTLINED_FUNCTION_37_15();
    v95 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v95, v96, v97, v98);
    if (!v138)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v94 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = OUTLINED_FUNCTION_3_50(v102, v128);
  v104(v103);
  OUTLINED_FUNCTION_58_8();
  v105 = OUTLINED_FUNCTION_32_15();
  v106(v105);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v111 = OUTLINED_FUNCTION_2_49(v110, v129);
  v112(v111);
  OUTLINED_FUNCTION_67_6();
  v113 = OUTLINED_FUNCTION_28_25();
  v114(v113);
  OUTLINED_FUNCTION_153_2();
  if ((v115 & 1) == 0)
  {
    if ((v94 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v133)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v0);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v116 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v119)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13(v117, v118);
  }

  sub_267C00EDC(v140);
  OUTLINED_FUNCTION_80_7();
  v120 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v120, v135, v130[0], v130[1], v130[2]);
  OUTLINED_FUNCTION_132_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v121 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_127_5(v121, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  sub_267C00310(v122, v123);
  OUTLINED_FUNCTION_96_7();
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v121[3].n128_u64[1] = v116;
  v124 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v124);
  OUTLINED_FUNCTION_57_11();

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v140);
  OUTLINED_FUNCTION_47();
}

void sub_267DBA1A8()
{
  OUTLINED_FUNCTION_48_0();
  v4 = OUTLINED_FUNCTION_95_8();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_151_1();
  MEMORY[0x28223BE20](v8);
  v120 = &v116 - v9;
  sub_267EF2728();
  OUTLINED_FUNCTION_23();
  v122 = v11;
  v123 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v121 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_141();
  v150 = &type metadata for PaymentComponent;
  v151 = sub_267DBCB60();
  OUTLINED_FUNCTION_99_8();
  v149[0] = swift_allocObject();
  v20 = OUTLINED_FUNCTION_89_10(v149[0]);
  memcpy(v20, v21, 0x71uLL);
  sub_267D5D40C(v0, &v140);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v22 = qword_280240FC8;
  sub_267EF95D8();
  v126 = v22;
  sub_267EF8998();
  OUTLINED_FUNCTION_7_37();
  v24 = *(v23 + 32);
  v25 = OUTLINED_FUNCTION_53_0();
  v26(v25);
  v132 = v27;
  sub_267BD997C();
  if (v142)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    OUTLINED_FUNCTION_161_1();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v139 = 0;
      v137 = 0u;
      v138 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v140, &qword_280229910, &unk_267EFEB70);
    v137 = 0u;
    v138 = 0u;
    v139 = 0;
  }

  sub_267BD9E24();
  if (v142)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v136 = 0;
      v134 = 0u;
      v135 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v140, &qword_280229910, &unk_267EFEB70);
    v134 = 0u;
    v135 = 0u;
    v136 = 0;
  }

  v28 = OUTLINED_FUNCTION_0_47(v149);
  v30 = v29(v28);
  v31 = OUTLINED_FUNCTION_161_1();
  sub_267C2FB6C(v31, v32, v33, v34);
  if (v142)
  {
    v35 = OUTLINED_FUNCTION_0_47(&v140);
    v131 = v36(v35);
    __swift_destroy_boxed_opaque_existential_0(&v140);
  }

  else
  {
    sub_267B9F98C(&v140, &qword_280229CE0, &qword_267F00410);
    v131 = 0;
  }

  v37 = v1;
  sub_267BD997C();
  v128 = v30;
  v129 = v1;
  v119 = v4;
  if (!v133[3])
  {
    sub_267B9F98C(v133, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v130 = v3;
  v38 = v143;
  v37 = v144;
  v39 = v148;
  if (*(v146 + 16) != 1)
  {
    OUTLINED_FUNCTION_141_2();

    goto LABEL_21;
  }

  v117 = v142;
  v124 = v141;
  v125 = v143;
  v127 = v147;
  if (v145)
  {

LABEL_21:
    v4 = v119;
    v30 = v128;
    v3 = v130;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v3 = v130;
  if (v38 != 1)
  {

    v131 = v38;
  }

  v4 = v119;
  v30 = v128;
LABEL_25:
  sub_267C2FB6C(&v134, &v140, &qword_280229CE0, &qword_267F00410);
  v40 = v142;
  if (v142)
  {
    v41 = OUTLINED_FUNCTION_0_47(&v140);
    v43 = v42(v41);
    __swift_destroy_boxed_opaque_existential_0(&v140);
  }

  else
  {
    sub_267B9F98C(&v140, &qword_280229CE0, &qword_267F00410);
    v43 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v45 = *(v44 + 40);
  v46 = OUTLINED_FUNCTION_53_0();
  LODWORD(v124) = v47(v46);
  v48 = 1;
  if (v131 && v30)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v40 = v30;
    v49 = v131;
    OUTLINED_FUNCTION_33();
    v37 = sub_267EF9818();

    v48 = v37 ^ 1;
  }

  LODWORD(v130) = v48;
  v50 = 1;
  if (v43 && v30)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v40 = v30;
    v51 = v43;
    OUTLINED_FUNCTION_33();
    v37 = sub_267EF9818();

    v50 = v37 ^ 1;
  }

  LODWORD(v127) = v50;
  v52 = OUTLINED_FUNCTION_161_1();
  sub_267C2FB6C(v52, v53, v54, v55);
  if (!v142)
  {
    sub_267B9F98C(&v140, &qword_280229CE0, &qword_267F00410);
    v62 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v4);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v56 = swift_dynamicCast();
  OUTLINED_FUNCTION_8_41(v56);
  if (v109)
  {
LABEL_39:
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v2);
  v140 = v37;
  v141 = v40;
  v57 = v121;
  sub_267EF26D8();
  sub_267BB5034();
  v58 = sub_267EF9918();
  (*(v122 + 8))(v57, v123);

  v59 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v59, v60);
  OUTLINED_FUNCTION_69_7();
  if (v58)
  {
    v61 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
    goto LABEL_41;
  }

LABEL_40:
  LOBYTE(v30) = 0;
LABEL_41:
  sub_267B9AFEC(v149, &v140);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (swift_dynamicCast())
  {
    v65 = OUTLINED_FUNCTION_25_25();
    v66 = v120;
    sub_267C00778(v65, v120);
    v67 = *(v66 + 24);
    v140 = *(v66 + 16);
    v141 = v67;

    v43 = v121;
    sub_267EF26D8();
    sub_267BB5034();
    v68 = sub_267EF9918();
    (*(v122 + 8))(v43, v123);

    v69 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v69, v70);
    OUTLINED_FUNCTION_69_7();
    if (v68)
    {
      v71 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    else
    {
      v43 = 0;
    }

    v72 = *(v66 + 32);
    if (v72 && *(v72 + 16))
    {
      v73 = *(v72 + 32);
      v74 = *MEMORY[0x277CD44D8];
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      v75 = OUTLINED_FUNCTION_33();
      sub_267BB40A0(v75, v76, v73);

      if (v142)
      {
        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        sub_267B9F98C(&v140, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v66);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v3, &qword_28022A090, &unk_267F08CC0);
    LODWORD(v66) = 0;
  }

  v125 = v43;
  LODWORD(v123) = v66;
  if (*(&v138 + 1))
  {
    v77 = OUTLINED_FUNCTION_37_15();
    v78 = OUTLINED_FUNCTION_161_1();
    sub_267C2FB6C(v78, v79, v80, v81);
    if (!v142)
    {
      __break(1u);
      return;
    }

    __swift_project_boxed_opaque_existential_0(&v140, v142);
    v82 = v77 == swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v140);
    v83 = v82 & (v30 ^ v66 ^ 1);
  }

  else
  {

    v83 = 0;
  }

  v85 = v150;
  v84 = v151;
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v90 = OUTLINED_FUNCTION_3_50(v89, v116);
  v91(v90);
  v92 = v129;
  sub_267C00940(v3, v129, v85, *(v84 + 8));
  v93 = OUTLINED_FUNCTION_32_15();
  v94(v93);
  v95 = v151;
  OUTLINED_FUNCTION_19_27();
  v96 = &v116;
  OUTLINED_FUNCTION_6_41();
  v98 = v97;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = OUTLINED_FUNCTION_2_49(v102, v116);
  v104(v103);
  OUTLINED_FUNCTION_67_6();
  v105 = OUTLINED_FUNCTION_28_25();
  v107 = v106(v105);
  if (v130)
  {
    goto LABEL_57;
  }

  if ((v83 & 1) == 0)
  {
    goto LABEL_62;
  }

  if (v127)
  {
    sub_267B9AFEC(v149, &v140);
    v92 = v118;
    v107 = swift_dynamicCast();
    if (v107)
    {
      sub_267C00468(v92);
      goto LABEL_57;
    }

LABEL_62:
    v98 = 1;
    goto LABEL_63;
  }

LABEL_57:
  OUTLINED_FUNCTION_121_5();
LABEL_63:
  v108 = MEMORY[0x277D837D0];
  if (*(&v138 + 1))
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13(v107, v129);
    if (v109)
    {
      LOBYTE(v96) = 1;
    }

    else
    {
      LOBYTE(v96) = 0;
    }

    if (v110 ^ v111 | v109)
    {
      v95 = 0;
    }

    else
    {
      v95 = 1;
    }
  }

  sub_267C00EDC(v149);
  OUTLINED_FUNCTION_80_7();
  sub_267C01144(v124 & 1, v130 & 1, v127 & 1, v83, v123 & 1, v92 & 1, v84 & 1, v3 & 1, v98 & 1, v96, v95);
  OUTLINED_FUNCTION_132_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v112 = OUTLINED_FUNCTION_9_14();
  *(v112 + 16) = xmmword_267EFC020;
  v140 = v92;
  OUTLINED_FUNCTION_1_58();
  sub_267C00310(v113, v114);
  sub_267EF7B58();
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  *(v112 + 56) = v108;
  v115 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v115);
  sub_267EF8998();

  sub_267B9F98C(&v134, &qword_280229CE0, &qword_267F00410);
  sub_267B9F98C(&v137, &qword_280229CE0, &qword_267F00410);
  OUTLINED_FUNCTION_104_7(v149);
  OUTLINED_FUNCTION_47();
}

void sub_267DBAEAC()
{
  OUTLINED_FUNCTION_48_0();
  v5 = OUTLINED_FUNCTION_95_8();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_30(v9, v125);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_18(v11, v12, v13, v14, v15, v16, v17, v18, v126);
  OUTLINED_FUNCTION_23();
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_37(v22, v127);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v24 = OUTLINED_FUNCTION_18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_141();
  v140[3] = &type metadata for GenericCountableComponent;
  v140[4] = sub_267C82904();
  OUTLINED_FUNCTION_160_1();
  v140[0] = swift_allocObject();
  v28 = OUTLINED_FUNCTION_89_10(v140[0]);
  memcpy(v28, v29, 0x42uLL);
  sub_267DBC288(v0, v137);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v30 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_7_37();
  v32 = *(v31 + 32);
  v33 = OUTLINED_FUNCTION_53_0();
  v35 = v34(v33);
  OUTLINED_FUNCTION_76_9(v35, v36);
  if (v138)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17() & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v138)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14() & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v37 = OUTLINED_FUNCTION_0_47(v140);
  v39 = v38(v37);
  v40 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v40, v41, v42, v43);
  if (v138)
  {
    v44 = OUTLINED_FUNCTION_0_47(v137);
    v46 = v45(v44);
    OUTLINED_FUNCTION_170_2(v46);
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229CE0, &qword_267F00410);
    v136 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v47)
  {
    sub_267B9F98C(&v139, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v48)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v49)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v4 = v135;
  if (v1 != 1)
  {

    v136 = v1;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v50 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v50, v51, v52, v53);
  v54 = v138;
  if (v138)
  {
    v55 = OUTLINED_FUNCTION_0_47(v137);
    v56(v55);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v137, &qword_280229CE0, &qword_267F00410);
    v2 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v58 = *(v57 + 40);
  v59 = OUTLINED_FUNCTION_53_0();
  v61 = v60(v59);
  OUTLINED_FUNCTION_85_9(v61);
  if (v62 && v39)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v63 = v39;
    v64 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v30 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v2 && v39)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v66 = v39;
    v67 = v2;
    OUTLINED_FUNCTION_33();
    v30 = sub_267EF9818();

    v65 = v30 ^ 1;
  }

  v133 = v65;
  v68 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v68, v69, v70, v71);
  if (!v138)
  {
    sub_267B9F98C(v137, &qword_280229CE0, &qword_267F00410);
    v78 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v5);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v72 = OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_8_41(v72);
  if (v48)
  {
LABEL_39:
    sub_267B9F98C(v3, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v3);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v73 = OUTLINED_FUNCTION_34_17();
  v74(v73);

  v75 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v75, v76);
  OUTLINED_FUNCTION_69_7();
  if (v30)
  {
    v77 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v81))
  {
    v82 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v82);
    OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2();
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v83 = OUTLINED_FUNCTION_35_18();
    v84(v83);

    v85 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v85, v86);
    OUTLINED_FUNCTION_69_7();
    if (v30)
    {
      v87 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v88 = *(v1 + 32);
    if (v88 && *(v88 + 16))
    {
      v89 = *(v88 + 32);
      v90 = *MEMORY[0x277CD44D8];
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      v91 = OUTLINED_FUNCTION_33();
      sub_267BB40A0(v91, v92, v89);

      if (v138)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v137, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v1);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v4, &qword_28022A090, &unk_267F08CC0);
    v1 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v93)
  {
    v94 = OUTLINED_FUNCTION_37_15();
    v95 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v95, v96, v97, v98);
    if (!v138)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v94 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = OUTLINED_FUNCTION_3_50(v102, v128);
  v104(v103);
  OUTLINED_FUNCTION_58_8();
  v105 = OUTLINED_FUNCTION_32_15();
  v106(v105);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v111 = OUTLINED_FUNCTION_2_49(v110, v129);
  v112(v111);
  OUTLINED_FUNCTION_67_6();
  v113 = OUTLINED_FUNCTION_28_25();
  v114(v113);
  OUTLINED_FUNCTION_153_2();
  if ((v115 & 1) == 0)
  {
    if ((v94 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v133)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v1);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v116 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v119)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13(v117, v118);
  }

  sub_267C00EDC(v140);
  OUTLINED_FUNCTION_80_7();
  v120 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v120, v135, v130[0], v130[1], v130[2]);
  OUTLINED_FUNCTION_132_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v121 = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_127_5(v121, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  sub_267C00310(v122, v123);
  OUTLINED_FUNCTION_96_7();
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v121[3].n128_u64[1] = v116;
  v124 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v124);
  OUTLINED_FUNCTION_57_11();

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v140);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DBB914()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = &unk_2878CE588;
  v0[6] = sub_267C100F0();
  OUTLINED_FUNCTION_163_1();
  v0[2] = swift_allocObject();
  v4 = OUTLINED_FUNCTION_109_8();
  sub_267C1023C(v4, v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DBB99C()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_36_17(v0);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  v2[1] = sub_267DBBA4C;
  OUTLINED_FUNCTION_88_4();

  return v4();
}

uint64_t sub_267DBBA4C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  OUTLINED_FUNCTION_172_2(v8);

  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DBBB44()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = &type metadata for LinkComponent;
  v0[6] = sub_267D689E8();
  OUTLINED_FUNCTION_148_2();
  v0[2] = swift_allocObject();
  v4 = OUTLINED_FUNCTION_109_8();
  sub_267D68B34(v4, v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DBBBCC()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_36_17(v0);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  v2[1] = sub_267DBBC7C;
  OUTLINED_FUNCTION_88_4();

  return v4();
}

uint64_t sub_267DBBC7C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  OUTLINED_FUNCTION_172_2(v8);

  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DBBD74()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_267DBBDD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = type metadata accessor for TextComponent();
  OUTLINED_FUNCTION_22_22();
  v0[6] = sub_267C00310(v4, v5);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_26_24(boxed_opaque_existential_0);
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBBE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[12] = &type metadata for AudioComponent;
  v3[13] = sub_267DB6C84();
  v5 = swift_allocObject();
  v3[9] = v5;
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  sub_267DBC244(a1, (v3 + 2));

  return MEMORY[0x2822009F8](sub_267DBBF20, 0, 0);
}

uint64_t sub_267DBBF20()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[8].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[7]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[8].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBBFE8;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBBFE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 144) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DBC0E8()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_267DBC144()
{
  OUTLINED_FUNCTION_108_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v10 = OUTLINED_FUNCTION_73_8(v1);

  return sub_267DB5618(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_267DBC1F0()
{
  result = qword_28022BE38;
  if (!qword_28022BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE38);
  }

  return result;
}

uint64_t sub_267DBC2E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = type metadata accessor for ImageComponent();
  OUTLINED_FUNCTION_21_22();
  v0[6] = sub_267C00310(v4, v5);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_27_22(boxed_opaque_existential_0);
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBC37C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[22] = v3;
  v0[23] = v4;
  v0[20] = &type metadata for PaymentComponent;
  v0[21] = sub_267DBCBC8();
  OUTLINED_FUNCTION_99_8();
  v5 = swift_allocObject();
  v0[17] = v5;
  v6 = OUTLINED_FUNCTION_89_10(v5);
  memcpy(v6, v7, 0x71uLL);
  sub_267D5D40C(v2, (v0 + 2));
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBC418()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[12].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[11]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[12].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBC4E0;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBC4E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 200);
  v5 = *(v3 + 192);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 208) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DBC5E0()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_267DBC63C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[22] = v3;
  v0[23] = v4;
  v0[20] = &type metadata for ReactionComponent;
  v0[21] = sub_267C77294();
  OUTLINED_FUNCTION_99_8();
  v5 = swift_allocObject();
  v0[17] = v5;
  v6 = OUTLINED_FUNCTION_89_10(v5);
  memcpy(v6, v7, 0x71uLL);
  sub_267C772E8(v2, (v0 + 2));
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBC6D8()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[12].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[11]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[12].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBC7A0;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBC7A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 200);
  v5 = *(v3 + 192);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 208) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DBC8A0()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = &type metadata for GenericCountableComponent;
  v0[15] = sub_267C82888();
  OUTLINED_FUNCTION_160_1();
  v5 = swift_allocObject();
  v0[11] = v5;
  v6 = OUTLINED_FUNCTION_89_10(v5);
  memcpy(v6, v7, 0x42uLL);
  sub_267DBC288(v2, (v0 + 2));
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBC93C()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[9].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[8]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[9].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBCA04;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBCA04()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 152);
  v5 = *(v3 + 144);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 160) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DBCB04()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 160);

  return v1(v2);
}

unint64_t sub_267DBCB60()
{
  result = qword_28022BE70;
  if (!qword_28022BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE70);
  }

  return result;
}

void sub_267DBCBB4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

unint64_t sub_267DBCBC8()
{
  result = qword_28022BE78;
  if (!qword_28022BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_137_2()
{
}

uint64_t OUTLINED_FUNCTION_164_0(uint64_t a1)
{
  *(v1 + 32) = *(a1 + 72);
  v4 = *(v2 + 40);

  return sub_267BAF0DC(v4);
}

uint64_t OUTLINED_FUNCTION_165_1(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v2[29] = *(v3 + 96);

  return sub_267DB424C();
}

uint64_t OUTLINED_FUNCTION_167_1()
{
  v2 = *(v0 + 16);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_168_2(uint64_t a1)
{
  *(v2 + 32) = *(a1 + 48);
  v4 = *(v1 + 16);

  return sub_267BAF0DC(v4);
}

uint64_t OUTLINED_FUNCTION_170_2(uint64_t a1)
{
  *(v1 + 112) = a1;

  return __swift_destroy_boxed_opaque_existential_0((v1 + 128));
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 + 128));
}

uint64_t OUTLINED_FUNCTION_172_2(uint64_t a1)
{
  *(v1 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_174_0(uint64_t a1)
{
  v3 = *(v1 + 24);

  return sub_267C00778(a1, v3);
}

uint64_t OUTLINED_FUNCTION_175_1()
{

  return sub_267EF9918();
}

id OUTLINED_FUNCTION_176_1()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_267DBCDC4()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(sub_267EF3CF8() - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF48A8();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBCFF0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *(v5 + 104);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  v3[15] = v10;

  if (v0)
  {
    v11 = v3[12];
    v12 = v3[9];

    v13 = *(v8 + 8);

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_267DBD154()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[12];
  v2 = v0[9];
  sub_267EF3C88();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v3 = sub_267EF4198();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[16] = sub_267EF4188();
  v6 = *(MEMORY[0x277D5BD48] + 4);
  v13 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[17] = v7;
  *v7 = v8;
  v7[1] = sub_267DBD268;
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[7];

  return v13(v11, v9, v10);
}

uint64_t sub_267DBD268()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *(v4 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 144) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DBD380()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_267DBD410()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267DBD4A8()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64);
  v0[4] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DBD534()
{
  OUTLINED_FUNCTION_56();
  v1 = [*(v0[3] + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) speakableGroupName];
  if (v1)
  {
    v2 = v1;
    v3 = v0[4];
    v4 = [v1 spokenPhrase];

    sub_267EF9028();
    sub_267EF90F8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[4];
  v7 = v0[2];
  v8 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v6, v5, 1, v8);
  sub_267BD3DDC(v6, v7);

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_267DBD658()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[26] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[27] = v6;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229318, &qword_267EFCFA0);
  v1[35] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[36] = v10;
  v12 = *(v11 + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267DBD7DC()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[23];
  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_267EF89F8();
  v7 = sub_267EF95E8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[36];
  v9 = v0[37];
  v11 = v0[35];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_267EF4638();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_267B93000, v6, v7, "#UnsendMessagesHandleIntentFlowStrategy received failure response: %@", v12, 0xCu);
    sub_267B9FF34(v13, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v13, -1, -1);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v15 = v0[35];
  v16 = v0[23];
  v17 = sub_267EF4638();
  v18 = [v17 code];

  if (v18 == 9)
  {
    v19 = *(v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[38] = v20;
    *v20 = v21;
    v20[1] = sub_267DBDDB0;
    v22 = v0[33];
    OUTLINED_FUNCTION_122();

    return sub_267EBC480();
  }

  else if (*MEMORY[0x277CD45B0] == v18)
  {
    v25 = v0[24];
    v26 = *(v25 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs);
    v27 = [*(v25 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v27)
    {
      sub_267BCA2C8();
      v28 = sub_267EF92F8();

      sub_267BAF0DC(v28);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v29;
    *v29 = v30;
    v29[1] = sub_267DBE004;
    v31 = v0[32];
    OUTLINED_FUNCTION_122();

    return sub_267EBBE4C(v32, v33);
  }

  else if (*MEMORY[0x277CD45C0] == v18)
  {
    v35 = *(v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v36;
    *v36 = v37;
    v36[1] = sub_267DBE25C;
    v38 = v0[31];
    OUTLINED_FUNCTION_122();

    return sub_267EBC3D0();
  }

  else if (*MEMORY[0x277CD45B8] == v18)
  {
    v40 = *(v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[44] = v41;
    *v41 = v42;
    v41[1] = sub_267DBE4B4;
    v43 = v0[30];
    OUTLINED_FUNCTION_122();

    return sub_267EBC320();
  }

  else
  {
    v45 = v0[24];
    if (v18 == 10)
    {
      v46 = v0[35];
      v47 = v0[23];
      v48 = *(v45 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs);
      type metadata accessor for MessagesApp(0);
      sub_267EF4648();
      v0[46] = sub_267EC814C();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[47] = v49;
      *v49 = v50;
      v49[1] = sub_267DBE70C;
      v51 = v0[29];
      OUTLINED_FUNCTION_122();

      return sub_267EBC0A0(v52, v53);
    }

    else
    {
      v55 = v45[5];
      v56 = v45[6];
      __swift_project_boxed_opaque_existential_0(v45 + 2, v55);
      (*(v56 + 8))(v55, v56);
      v57 = *(MEMORY[0x277D5BCD8] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[49] = v58;
      *v58 = v59;
      v58[1] = sub_267DBE96C;
      v60 = v0[28];
      OUTLINED_FUNCTION_122();

      return MEMORY[0x2821BAEE0](v61, v62);
    }
  }
}

uint64_t sub_267DBDDB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DBDEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v23 = v21[33];
  v22 = v21[34];
  OUTLINED_FUNCTION_25_26();
  v24();
  v25 = OUTLINED_FUNCTION_0_48();
  v26(v25);
  OUTLINED_FUNCTION_1_0();
  v27 = OUTLINED_FUNCTION_4_1();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_50();
  sub_267B9FF34(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_8_42();
  v33(v32);
  OUTLINED_FUNCTION_20_24();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DBE004()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DBE100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[34];
  v23 = v21[32];
  OUTLINED_FUNCTION_25_26();
  v24();
  v25 = OUTLINED_FUNCTION_0_48();
  v26(v25);
  OUTLINED_FUNCTION_1_0();
  v27 = OUTLINED_FUNCTION_4_1();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_50();
  sub_267B9FF34(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_8_42();
  v33(v32);
  OUTLINED_FUNCTION_20_24();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DBE25C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DBE358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[34];
  v23 = v21[31];
  OUTLINED_FUNCTION_25_26();
  v24();
  v25 = OUTLINED_FUNCTION_0_48();
  v26(v25);
  OUTLINED_FUNCTION_1_0();
  v27 = OUTLINED_FUNCTION_4_1();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_50();
  sub_267B9FF34(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_8_42();
  v33(v32);
  OUTLINED_FUNCTION_20_24();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DBE4B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DBE5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[34];
  v23 = v21[30];
  OUTLINED_FUNCTION_25_26();
  v24();
  v25 = OUTLINED_FUNCTION_0_48();
  v26(v25);
  OUTLINED_FUNCTION_1_0();
  v27 = OUTLINED_FUNCTION_4_1();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_50();
  sub_267B9FF34(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_8_42();
  v33(v32);
  OUTLINED_FUNCTION_20_24();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DBE70C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 376);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 384) = v0;

  if (!v0)
  {
    v9 = *(v3 + 368);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DBE810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[34];
  v23 = v21[29];
  OUTLINED_FUNCTION_25_26();
  v24();
  v25 = OUTLINED_FUNCTION_0_48();
  v26(v25);
  OUTLINED_FUNCTION_1_0();
  v27 = OUTLINED_FUNCTION_4_1();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_50();
  sub_267B9FF34(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_8_42();
  v33(v32);
  OUTLINED_FUNCTION_20_24();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DBE96C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 400) = v0;

  sub_267B9FF34(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DBEA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  (*(v21[27] + 32))(v21[34], v21[28], v21[26]);
  v22 = OUTLINED_FUNCTION_0_48();
  v23(v22);
  OUTLINED_FUNCTION_1_0();
  v24 = OUTLINED_FUNCTION_4_1();
  v25(v24);
  v26 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v26);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_25_1(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_50();
  sub_267B9FF34(v26, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v20, &unk_28022AE40, &unk_267EFCB60);
  v29 = OUTLINED_FUNCTION_8_42();
  v30(v29);
  OUTLINED_FUNCTION_20_24();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v26, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267DBEBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 400);
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DBEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 312);
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DBED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 328);
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DBEDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 344);
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DBEE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 360);
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267DBEF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 368);

  v14 = *(v12 + 384);
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_267DBEFA8()
{
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_commonTemplateProvider));
  v2 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_featureFlags);

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_267DBF018()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_featureFlags));
  return v0;
}

uint64_t sub_267DBF088()
{
  sub_267DBF018();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsendMessagesHandleIntentFlowStrategy()
{
  result = qword_28022BEF0;
  if (!qword_28022BEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DBF134()
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267DBF1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_267DBF2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_267DBF374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_267DBF43C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267DBCDC4();
}

uint64_t sub_267DBF4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_267DBF5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_267DBF668()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267DBD658();
}

uint64_t sub_267DBF714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5C0D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

unint64_t sub_267DBF7E0()
{
  result = qword_28022BF00;
  if (!qword_28022BF00)
  {
    type metadata accessor for UnsendMessagesHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BF00);
  }

  return result;
}

uint64_t sub_267DBF878()
{
  OUTLINED_FUNCTION_7_5();
  if (sub_267EF3C18() & 1) != 0 || (OUTLINED_FUNCTION_3(), (sub_267EF3BF8()) || (OUTLINED_FUNCTION_3(), (sub_267EF3C08()))
  {
    OUTLINED_FUNCTION_3();
    v0 = sub_267EF3C48() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_267DBF8D8()
{
  OUTLINED_FUNCTION_7_5();
  if (sub_267DBF878())
  {
    return 1;
  }

  OUTLINED_FUNCTION_3();

  return sub_267EF3C48();
}

uint64_t sub_267DBF990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_7_5();
  if (v6())
  {
    return 1;
  }

  v7 = OUTLINED_FUNCTION_3();
  if (a4(v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_3();

  return a5(v9);
}

uint64_t sub_267DBFA18(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_267EF8198();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted) = 0;
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext;
  type metadata accessor for SendMessageSelfContext();
  swift_allocObject();
  *(v1 + v7) = sub_267BC977C();
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap) = a1;
  return v1;
}

uint64_t sub_267DBFAAC()
{
  v1 = *(v0 + 24);

  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback, &qword_280229920, &unk_267F0ABD0);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext);

  return v0;
}

void sub_267DBFB3C()
{
  sub_267DC85AC(319, &qword_28022BF18, MEMORY[0x277D5D3D8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_267DBFC0C()
{
  OUTLINED_FUNCTION_48_0();
  v268 = v1;
  v269 = v0;
  v255 = sub_267EF63C8();
  v2 = OUTLINED_FUNCTION_58(v255);
  v251 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v7 - v6);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFE8, &qword_267F09188);
  OUTLINED_FUNCTION_22(v253);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36_3(&v246 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229950, &unk_267EFEBB0);
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v18);
  v262 = sub_267EF4C08();
  v19 = OUTLINED_FUNCTION_58(v262);
  v261 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  v28 = OUTLINED_FUNCTION_18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v264 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_45_0();
  v266 = v35;
  v259 = sub_267EF8198();
  v36 = OUTLINED_FUNCTION_58(v259);
  v257 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_0();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF88, &qword_267F09120);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v46);
  v48 = &v246 - v47;
  v49 = type metadata accessor for TapbackAction(0);
  v50 = OUTLINED_FUNCTION_22(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6();
  v267 = v53;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_77_0();
  v265 = v55;
  OUTLINED_FUNCTION_115();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v246 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v246 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v246 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v66 = OUTLINED_FUNCTION_18(v65);
  v68 = *(v67 + 64);
  v69 = MEMORY[0x28223BE20](v66);
  v71 = &v246 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v69);
  v74 = &v246 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v246 - v75;
  OUTLINED_FUNCTION_10_33();
  sub_267DC8BB4(v269, v64, v77);
  if (swift_getEnumCaseMultiPayload())
  {
    v78 = v268;
    v62 = v64;
  }

  else
  {
    v248 = v43;
    v249 = v74;
    v247 = v71;
    v79 = OUTLINED_FUNCTION_66();
    sub_267BBE184(v79, v80, v81, v82);
    OUTLINED_FUNCTION_10_33();
    v78 = v268;
    sub_267DC8BB4(v268, v62, v83);
    if (!swift_getEnumCaseMultiPayload())
    {
      v108 = v249;
      OUTLINED_FUNCTION_41_15();
      sub_267BBE184(v109, v110, v111, v112);
      v113 = *(v248 + 48);
      v114 = v48;
      OUTLINED_FUNCTION_41_15();
      sub_267C6AD4C(v115, v116, v117, v118);
      OUTLINED_FUNCTION_41_15();
      sub_267C6AD4C(v119, v120, v121, v122);
      v123 = v48;
      v124 = v259;
      OUTLINED_FUNCTION_5_1(v123, 1, v259);
      if (v141)
      {
        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v125, v126, v127);
        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v128, v129, v130);
        OUTLINED_FUNCTION_5_1(v114 + v113, 1, v124);
        if (v141)
        {
          v131 = &qword_280229920;
          v132 = &unk_267F0ABD0;
          v133 = v114;
          goto LABEL_50;
        }
      }

      else
      {
        v154 = v247;
        sub_267C6AD4C(v114, v247, &qword_280229920, &unk_267F0ABD0);
        OUTLINED_FUNCTION_5_1(v114 + v113, 1, v124);
        if (!v155)
        {
          v171 = v257;
          (*(v257 + 32))(v42, v114 + v113, v124);
          OUTLINED_FUNCTION_39_15();
          sub_267DC89C4(v172, v173);
          sub_267EF8FE8();
          v174 = *(v171 + 8);
          v174(v42, v124);
          sub_267B9F98C(v108, &qword_280229920, &unk_267F0ABD0);
          sub_267B9F98C(v76, &qword_280229920, &unk_267F0ABD0);
          v174(v154, v124);
          v133 = v114;
          v131 = &qword_280229920;
          v132 = &unk_267F0ABD0;
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v156, v157, v158);
        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v159, v160, v161);
        (*(v257 + 8))(v154, v124);
      }

      v131 = &qword_28022BF88;
      v132 = &qword_267F09120;
      v133 = v114;
      goto LABEL_50;
    }

    sub_267B9F98C(v76, &qword_280229920, &unk_267F0ABD0);
  }

  sub_267DC8C10(v62, type metadata accessor for TapbackAction);
  v84 = v269;
  sub_267DC8BB4(v269, v59, type metadata accessor for TapbackAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v85 = v266;
    sub_267BBE184(v59, v266, &qword_280229970, &unk_267F0E300);
    OUTLINED_FUNCTION_10_33();
    v86 = v78;
    v87 = v265;
    sub_267DC8BB4(v78, v265, v88);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v89 = v87;
      v90 = v264;
      sub_267BBE184(v89, v264, &qword_280229970, &unk_267F0E300);
      v91 = v263;
      sub_267C6AD4C(v85, v263, &qword_280229970, &unk_267F0E300);
      v92 = sub_267EF4BA8();
      OUTLINED_FUNCTION_110(v91);
      if (v141)
      {
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v93, v94, v95);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v96, v97, v98);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v99, v100, v101);
      }

      else
      {
        sub_267EF4B88();
        v134 = (*(v92 - 8) + 8);
        v265 = *v134;
        v265(v91, v92);
        v135 = v261;
        v136 = *(v261 + 32);
        v137 = v260;
        v138 = OUTLINED_FUNCTION_61_4();
        v139 = v262;
        v136(v138);
        v140 = v258;
        sub_267C6AD4C(v90, v258, &qword_280229970, &unk_267F0E300);
        OUTLINED_FUNCTION_110(v140);
        if (!v141)
        {
          v162 = v252;
          sub_267EF4B88();
          v265(v140, v92);
          v163 = v254;
          (v136)(v254, v162, v139);
          sub_267E57DFC(v137, v274);
          sub_267E57DFC(v163, v273);
          sub_267C6AD4C(v274, v270, &unk_28022BBF0, &unk_267F01C60);
          if (v271)
          {
            v164 = v272;
            __swift_project_boxed_opaque_existential_0(v270, v271);
            v165 = *(v164 + 40);
            v166 = OUTLINED_FUNCTION_38_0();
            v167(v166);
            OUTLINED_FUNCTION_67_7();
            OUTLINED_FUNCTION_89_11();
            if (v168)
            {
              v169 = sub_267EF60C8();

              v170 = v266;
              if (v169)
              {
                sub_267EF63B8();

                __swift_destroy_boxed_opaque_existential_0(v270);
                goto LABEL_34;
              }

              __swift_destroy_boxed_opaque_existential_0(v270);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(v270);
              v170 = v266;
            }
          }

          else
          {
            sub_267B9F98C(v270, &unk_28022BBF0, &unk_267F01C60);
            OUTLINED_FUNCTION_67_7();
            v170 = v266;
            OUTLINED_FUNCTION_89_11();
          }

          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v175, v176, v177, v136);
LABEL_34:
          sub_267C6AD4C(v273, v270, &unk_28022BBF0, &unk_267F01C60);
          if (v271)
          {
            v178 = v272;
            __swift_project_boxed_opaque_existential_0(v270, v271);
            v179 = *(v178 + 40);
            v180 = OUTLINED_FUNCTION_38_0();
            if (v181(v180))
            {
              v182 = sub_267EF60C8();

              if (v182)
              {
                sub_267EF63B8();

                __swift_destroy_boxed_opaque_existential_0(v270);
LABEL_41:
                v186 = *(v253 + 48);
                OUTLINED_FUNCTION_41_15();
                sub_267C6AD4C(v187, v188, v189, v190);
                OUTLINED_FUNCTION_41_15();
                sub_267C6AD4C(v191, v192, v193, v194);
                OUTLINED_FUNCTION_5_1(v137, 1, v136);
                if (!v141)
                {
                  v215 = OUTLINED_FUNCTION_61_4();
                  sub_267C6AD4C(v215, v216, v217, v218);
                  OUTLINED_FUNCTION_5_1(v137 + v186, 1, v136);
                  if (!v219)
                  {
                    v240 = v139;
                    v241 = v251;
                    v242 = v250;
                    (*(v251 + 32))(v250, v137 + v186, v136);
                    sub_267DC89C4(&qword_28022BFF0, MEMORY[0x277D5F120]);
                    sub_267EF8FE8();
                    v243 = *(v241 + 8);
                    v243(v242, v136);
                    sub_267B9F98C(v134, &qword_280229950, &unk_267EFEBB0);
                    OUTLINED_FUNCTION_83_8(v256);
                    OUTLINED_FUNCTION_83_8(v273);
                    OUTLINED_FUNCTION_83_8(v274);
                    v244 = *(v261 + 8);
                    v245 = v262;
                    v244(v163, v262);
                    v244(v260, v245);
                    OUTLINED_FUNCTION_83_8(v264);
                    OUTLINED_FUNCTION_83_8(v170);
                    v243(v240, v136);
                    v133 = v137;
                    v131 = &qword_280229950;
                    v132 = &unk_267EFEBB0;
                    goto LABEL_50;
                  }

                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v220, v221, v222);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v223, v224, v225);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v226, v227, v228);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v229, v230, v231);
                  v232 = *(v261 + 8);
                  v233 = OUTLINED_FUNCTION_85_10();
                  v232(v233);
                  (v232)(v260, &unk_267F01C60);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v234, v235, v236);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v237, v238, v239);
                  (*(v251 + 8))(v139, v136);
LABEL_49:
                  v131 = &qword_28022BFE8;
                  v132 = &qword_267F09188;
                  v133 = v137;
                  goto LABEL_50;
                }

                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v195, v196, v197);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v198, v199, v200);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v201, v202, v203);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v204, v205, v206);
                v207 = *(v261 + 8);
                v208 = OUTLINED_FUNCTION_85_10();
                v207(v208);
                (v207)(v260, &unk_267F01C60);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v209, v210, v211);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v212, v213, v214);
                OUTLINED_FUNCTION_5_1(v137 + v186, 1, v136);
                if (!v141)
                {
                  goto LABEL_49;
                }

                v131 = &qword_280229950;
                v132 = &unk_267EFEBB0;
                v133 = v137;
LABEL_50:
                sub_267B9F98C(v133, v131, v132);
                goto LABEL_51;
              }
            }

            __swift_destroy_boxed_opaque_existential_0(v270);
          }

          else
          {
            sub_267B9F98C(v270, &unk_28022BBF0, &unk_267F01C60);
          }

          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v183, v184, v185, v136);
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v142, v143, v144);
        v145 = *(v135 + 8);
        v146 = OUTLINED_FUNCTION_61_4();
        v147(v146);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v148, v149, v150);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v151, v152, v153);
        v86 = v268;
        v84 = v269;
      }
    }

    else
    {
      sub_267B9F98C(v85, &qword_280229970, &unk_267F0E300);
      OUTLINED_FUNCTION_3_52();
      sub_267DC8C10(v87, v103);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
    sub_267DC8C10(v59, v102);
    v86 = v78;
  }

  v104 = v267;
  OUTLINED_FUNCTION_3();
  swift_storeEnumTagMultiPayload();
  v105 = sub_267DBFC0C(v104, v84);
  OUTLINED_FUNCTION_3_52();
  sub_267DC8C10(v104, v106);
  if (v105)
  {
    OUTLINED_FUNCTION_3();
    swift_storeEnumTagMultiPayload();
    sub_267DBFC0C(v104, v86);
    OUTLINED_FUNCTION_3_52();
    sub_267DC8C10(v104, v107);
  }

LABEL_51:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC0BF4(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_267EF8198();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF88, &qword_267F09120);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v54 - v17;
  v18 = type metadata accessor for SendTapbackFlow.State(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v54 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v54 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v54 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF90, &unk_267F09128);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v54 - v34;
  v36 = *(v33 + 56);
  sub_267DC8BB4(a1, &v54 - v34, type metadata accessor for SendTapbackFlow.State);
  sub_267DC8BB4(v63, &v35[v36], type metadata accessor for SendTapbackFlow.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_267DC8BB4(v35, v28, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v61;
        v44 = v62;
        v46 = v59;
        (*(v61 + 32))(v59, &v35[v36], v62);
        v43 = sub_267C28D14(v28, v46);
        v47 = *(v45 + 8);
        v47(v46, v44);
        v47(v28, v44);
        goto LABEL_17;
      }

      (*(v61 + 8))(v28, v62);
      goto LABEL_27;
    case 2u:
      sub_267DC8BB4(v35, v25, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v37 = v25;
        goto LABEL_25;
      }

      v38 = *(v13 + 48);
      v39 = v60;
      sub_267BBE184(v25, v60, &qword_280229920, &unk_267F0ABD0);
      sub_267BBE184(&v35[v36], v39 + v38, &qword_280229920, &unk_267F0ABD0);
      v40 = v62;
      if (__swift_getEnumTagSinglePayload(v39, 1, v62) == 1)
      {
        goto LABEL_30;
      }

      v41 = v39;
      v42 = v57;
      goto LABEL_33;
    case 3u:
      sub_267DC8BB4(v35, v22, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_27;
      }

      v43 = *v22 == v35[v36];
LABEL_17:
      sub_267DC8C10(v35, type metadata accessor for SendTapbackFlow.State);
      return v43 & 1;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    default:
      sub_267DC8BB4(v35, v30, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload())
      {
        v37 = v30;
LABEL_25:
        sub_267B9F98C(v37, &qword_280229920, &unk_267F0ABD0);
LABEL_27:
        sub_267B9F98C(v35, &qword_28022BF90, &unk_267F09128);
        goto LABEL_28;
      }

      v38 = *(v13 + 48);
      v39 = v58;
      sub_267BBE184(v30, v58, &qword_280229920, &unk_267F0ABD0);
      sub_267BBE184(&v35[v36], v39 + v38, &qword_280229920, &unk_267F0ABD0);
      v40 = v62;
      if (__swift_getEnumTagSinglePayload(v39, 1, v62) != 1)
      {
        v41 = v39;
        v42 = v55;
LABEL_33:
        sub_267C6AD4C(v41, v42, &qword_280229920, &unk_267F0ABD0);
        if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v40) != 1)
        {
          v48 = v61;
          v49 = v39 + v38;
          v50 = v56;
          (*(v61 + 32))(v56, v49, v40);
          sub_267DC89C4(&qword_28022BF98, MEMORY[0x277D5D3D8]);
          v51 = sub_267EF8FE8();
          v52 = *(v48 + 8);
          v52(v50, v40);
          v52(v42, v40);
          sub_267B9F98C(v39, &qword_280229920, &unk_267F0ABD0);
          if (v51)
          {
            goto LABEL_38;
          }

LABEL_36:
          sub_267DC8C10(v35, type metadata accessor for SendTapbackFlow.State);
LABEL_28:
          v43 = 0;
          return v43 & 1;
        }

        (*(v61 + 8))(v42, v40);
LABEL_35:
        sub_267B9F98C(v39, &qword_28022BF88, &qword_267F09120);
        goto LABEL_36;
      }

LABEL_30:
      if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v40) != 1)
      {
        goto LABEL_35;
      }

      sub_267B9F98C(v39, &qword_280229920, &unk_267F0ABD0);
LABEL_38:
      sub_267DC8C10(v35, type metadata accessor for SendTapbackFlow.State);
      v43 = 1;
      return v43 & 1;
  }
}

void sub_267DC1410()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  OUTLINED_FUNCTION_22(v303);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_3(&v291 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36_3(&v291 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229928, &qword_267EFEB80);
  v14 = OUTLINED_FUNCTION_18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v291 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFD0, &qword_267F0D0B0);
  v21 = OUTLINED_FUNCTION_18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v25);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v26 = OUTLINED_FUNCTION_22(v297);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v34);
  v310 = sub_267EF8198();
  v35 = OUTLINED_FUNCTION_58(v310);
  v300 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v41);
  v316 = sub_267EF8428();
  v42 = OUTLINED_FUNCTION_58(v316);
  v315 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v47);
  v319 = sub_267EF4BE8();
  v48 = OUTLINED_FUNCTION_58(v319);
  v318 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v53 - v52);
  v327 = sub_267EF4C08();
  v54 = OUTLINED_FUNCTION_58(v327);
  v323 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_45_0();
  v61 = OUTLINED_FUNCTION_3_1(v60);
  v62 = type metadata accessor for SendTapbackFlow.State(v61);
  v63 = OUTLINED_FUNCTION_22(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6();
  v326 = v66;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v67);
  v69 = (&v291 - v68);
  v70 = sub_267EF4BA8();
  v71 = OUTLINED_FUNCTION_58(v70);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_0_0();
  v78 = v77 - v76;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v79 = sub_267EF8A08();
  v80 = __swift_project_value_buffer(v79, qword_280240FB0);
  v81 = *(v73 + 16);
  v324 = v3;
  v81(v78, v3, v70);
  v325 = v80;
  v82 = sub_267EF89F8();
  v83 = sub_267EF95C8();
  v84 = os_log_type_enabled(v82, v83);
  v311 = v19;
  v328 = v1;
  if (v84)
  {
    v85 = OUTLINED_FUNCTION_48();
    v293 = swift_slowAlloc();
    *&v331 = v293;
    *v85 = 136315138;
    sub_267DC89C4(&qword_28022AF50, MEMORY[0x277D5C118]);
    v86 = sub_267EF9E58();
    v87 = v62;
    v88 = v69;
    v90 = v89;
    (*(v73 + 8))(v78, v70);
    v91 = sub_267BA33E8(v86, v90, &v331);
    v69 = v88;
    v62 = v87;

    *(v85 + 4) = v91;
    _os_log_impl(&dword_267B93000, v82, v83, "#SendTapbackFlow received input: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v293);
    OUTLINED_FUNCTION_32_0();
    v1 = v328;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v73 + 8))(v78, v70);
  }

  v92 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_83();
  sub_267DC8BB4(v1 + v92, v69, type metadata accessor for SendTapbackFlow.State);
  v93 = v326;
  OUTLINED_FUNCTION_37_1();
  swift_storeEnumTagMultiPayload();
  v94 = sub_267DC0BF4(v69, v93);
  v95 = OUTLINED_FUNCTION_3();
  sub_267DC8C10(v95, v96);
  sub_267DC8C10(v69, type metadata accessor for SendTapbackFlow.State);
  v97 = v327;
  if ((v94 & 1) == 0)
  {

    v117 = sub_267EF89F8();
    v118 = sub_267EF95C8();

    if (!os_log_type_enabled(v117, v118))
    {
LABEL_14:

      goto LABEL_55;
    }

    OUTLINED_FUNCTION_48();
    v119 = OUTLINED_FUNCTION_64_2();
    *&v331 = v119;
    *v93 = 136315138;
    OUTLINED_FUNCTION_8_43();
    sub_267DC8BB4(v120 + v92, v69, v121);
    v122 = sub_267EF9098();
    v124 = sub_267BA33E8(v122, v123, &v331);

    *(v93 + 4) = v124;
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    OUTLINED_FUNCTION_32_0();
LABEL_13:
    OUTLINED_FUNCTION_26();
    goto LABEL_14;
  }

  v326 = v62;
  v293 = v69;
  v98 = v322;
  sub_267EF4B88();
  v99 = v323;
  v100 = *(v323 + 88);
  v101 = v100(v98, v97);
  v102 = *MEMORY[0x277D5C168];
  v103 = *(v99 + 8);
  v103(v98, v97);
  if (v101 == v102)
  {
    v104 = sub_267EF89F8();
    v105 = sub_267EF95C8();
    v106 = OUTLINED_FUNCTION_36(v105);
    v107 = v328;
    if (v106)
    {
      v108 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v108);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v109, v110, v111, v112, v113, 2u);
      OUTLINED_FUNCTION_26();
    }

    v114 = v293;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3();
    v115 = v107 + v92;
    v116 = v114;
    goto LABEL_54;
  }

  v322 = v92;
  v130 = *(v328 + 72);
  v131 = v321;
  sub_267EF4B88();
  v132 = sub_267EBF874();
  v103(v131, v97);
  v292 = v130;
  *(v130 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap) = v132;
  v133 = v317;
  sub_267EF4B88();
  v134 = OUTLINED_FUNCTION_53_1();
  if ((v100)(v134) != *MEMORY[0x277D5C150])
  {
    v149 = OUTLINED_FUNCTION_53_1();
    (v103)(v149);
    v150 = v322;
    goto LABEL_23;
  }

  v291 = v103;
  v135 = *(v323 + 96);
  v136 = OUTLINED_FUNCTION_53_1();
  v137(v136);
  (*(v318 + 32))(v320, v133, v319);
  v138 = v315;
  v139 = *(v315 + 104);
  v140 = v313;
  v141 = v316;
  v139(v313, *MEMORY[0x277D5D6F8], v316);
  v142 = sub_267EF8418();
  v144 = v143;
  v145 = *(v138 + 8);
  v145(v140, v141);
  v147 = v142 == sub_267EF4BC8() && v144 == v146;
  if (v147)
  {

    v148 = v314;
  }

  else
  {
    OUTLINED_FUNCTION_3();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_98_1();

    v148 = v314;
    if ((v142 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v167 = sub_267EF4BD8();
  if (!v167)
  {
    v331 = 0u;
    v332 = 0u;
    goto LABEL_44;
  }

  sub_267BB40A0(0x72506E6F74747562, 0xED00006465737365, v167);

  if (!*(&v332 + 1))
  {
LABEL_44:
    v198 = &qword_28022AEF0;
    v199 = &qword_267EFCDE0;
    v200 = &v331;
LABEL_45:
    sub_267B9F98C(v200, v198, v199);
    goto LABEL_46;
  }

  if (swift_dynamicCast())
  {
    v168 = *(&v329 + 1);

    v169 = v306;
    sub_267EF8208();
    v170 = sub_267EF8228();
    OUTLINED_FUNCTION_5_1(v169, 1, v170);
    if (v147)
    {
      sub_267B9F98C(v169, &qword_28022BFD0, &qword_267F0D0B0);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v171, v172, v173, v310);
      v174 = v307;
    }

    else
    {
      sub_267E9EDF4(v148);
      v246 = *(*(v170 - 8) + 8);
      v247 = OUTLINED_FUNCTION_66();
      v248(v247);
      OUTLINED_FUNCTION_5_1(v148, 1, v310);
      v174 = v307;
      if (!v249)
      {

        v262 = *(v300 + 32);
        v263 = v310;
        v262(v295, v148, v310);
        v264 = sub_267EF89F8();
        v265 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v265))
        {
          v267 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v267);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v268, v269, v270, v271, v272, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_46_16();
        v273 = OUTLINED_FUNCTION_84_9();
        v274(v273);
        v275 = OUTLINED_FUNCTION_75_9();
        (v262)(v275);
        __swift_storeEnumTagSinglePayload(v168, 0, 1, v263);
LABEL_81:
        swift_storeEnumTagMultiPayload();
        v289 = v328;
        v290 = v322;
        OUTLINED_FUNCTION_66_3();
        sub_267DC8AC4(v168, v289 + v290);
        swift_endAccess();
        goto LABEL_55;
      }
    }

    sub_267B9F98C(v148, &qword_280229920, &unk_267F0ABD0);
    sub_267EF8208();
    OUTLINED_FUNCTION_5_1(v174, 1, v170);
    if (v147)
    {
      sub_267B9F98C(v174, &qword_28022BFD0, &qword_267F0D0B0);
      v168 = v299;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v250, v251, v252, v310);
    }

    else
    {
      v168 = v299;
      sub_267E9F260(v299);
      v258 = *(*(v170 - 8) + 8);
      v259 = OUTLINED_FUNCTION_66();
      v260(v259);
      OUTLINED_FUNCTION_5_1(v168, 1, v310);
      if (!v261)
      {
        v276 = *(v300 + 32);
        v276(v294, v168, v310);
        v277 = sub_267EF89F8();
        v278 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v278))
        {
          v280 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v280);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v281, v282, v283, v284, v285, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_46_16();
        v286 = OUTLINED_FUNCTION_84_9();
        v287(v286);
        v288 = OUTLINED_FUNCTION_75_9();
        (v276)(v288);
        goto LABEL_81;
      }
    }

    v198 = &qword_280229920;
    v199 = &unk_267F0ABD0;
    v200 = v168;
    goto LABEL_45;
  }

LABEL_46:
  v201 = v312;
  v202 = v316;
  v139(v312, *MEMORY[0x277D5D708], v316);
  v203 = sub_267EF8418();
  v205 = v204;
  v145(v201, v202);
  v100 = v320;
  if (v203 == sub_267EF4BC8() && v205 == v206)
  {

    OUTLINED_FUNCTION_46_16();
    v209(v100, v319);
    v150 = v322;
LABEL_53:
    v210 = v293;
    swift_storeEnumTagMultiPayload();
    v211 = v328;
    OUTLINED_FUNCTION_66_3();
    v115 = v211 + v150;
    v116 = v210;
LABEL_54:
    sub_267DC8AC4(v116, v115);
    swift_endAccess();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_3();
  sub_267EF9EA8();
  OUTLINED_FUNCTION_98_1();

  OUTLINED_FUNCTION_46_16();
  v208(v100, v319);
  v103 = v291;
  v150 = v322;
  if (v203)
  {
    goto LABEL_53;
  }

LABEL_23:
  v151 = v321;
  sub_267EF4B88();
  sub_267E57DFC(v151, &v329);
  v152 = OUTLINED_FUNCTION_53_1();
  (v103)(v152);
  if (!v330)
  {
    sub_267B9F98C(&v329, &unk_28022BBF0, &unk_267F01C60);
    v117 = sub_267EF89F8();
    v175 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v175))
    {
      goto LABEL_14;
    }

    v176 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v176);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v177, v178, v179, v180, v181, 2u);
    goto LABEL_13;
  }

  sub_267BE58F4(&v329, &v331);
  __swift_project_boxed_opaque_existential_0(&v331, *(&v332 + 1));
  OUTLINED_FUNCTION_89_11();
  OUTLINED_FUNCTION_61_0();
  sub_267E58838(v153, v154);
  v155 = type metadata accessor for TapbackAction(0);
  OUTLINED_FUNCTION_5_1(v100, 1, v155);
  if (!v147)
  {
    v182 = v309;
    sub_267C6AD4C(v100, v309, &qword_280229928, &qword_267EFEB80);
    OUTLINED_FUNCTION_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v184 = v293;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v185 = v302;
        sub_267BBE184(v182, v302, &qword_280229970, &unk_267F0E300);
        v186 = sub_267EF89F8();
        v187 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v187))
        {
          v188 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v188);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v189, v190, v191, v192, v193, 2u);
          OUTLINED_FUNCTION_26();
        }

        v194 = v185;
        v195 = v304;
        sub_267BBE184(v194, v304, &qword_280229970, &unk_267F0E300);
        type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v196 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
        v197 = v328;
        OUTLINED_FUNCTION_66_3();
        sub_267BF3128(v195, v197 + v196, &qword_280229958, &unk_267F09110);
        swift_endAccess();
        OUTLINED_FUNCTION_86_10();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3();
        sub_267DC8AC4(v184, v197 + v150);
        swift_endAccess();
        sub_267B9F98C(v100, &qword_280229928, &qword_267EFEB80);
        __swift_destroy_boxed_opaque_existential_0(&v331);
        goto LABEL_55;
      }

      v235 = sub_267EF89F8();
      v236 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v236))
      {
        v237 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v237);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v238, v239, v240, v241, v242, 2u);
        OUTLINED_FUNCTION_26();
      }

      v243 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
      v244 = v292;
      OUTLINED_FUNCTION_83();
      sub_267C6AD4C(v244 + v243, v184, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_86_10();
      swift_storeEnumTagMultiPayload();
      v245 = v328;
      OUTLINED_FUNCTION_66_3();
      sub_267DC8AC4(v184, v245 + v150);
    }

    else
    {
      v212 = v308;
      OUTLINED_FUNCTION_41_15();
      sub_267BBE184(v213, v214, v215, v216);
      v217 = v301;
      OUTLINED_FUNCTION_41_15();
      sub_267C6AD4C(v218, v219, v220, v221);
      v222 = sub_267EF89F8();
      v223 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v223))
      {
        OUTLINED_FUNCTION_48();
        v224 = OUTLINED_FUNCTION_64_2();
        *&v329 = v224;
        *v212 = 136315138;
        sub_267C6AD4C(v217, v296, &qword_280229920, &unk_267F0ABD0);
        v225 = sub_267EF9098();
        v226 = v217;
        v227 = v225;
        v229 = v228;
        sub_267B9F98C(v226, &qword_280229920, &unk_267F0ABD0);
        v100 = sub_267BA33E8(v227, v229, &v329);
        v184 = v293;

        *(v212 + 4) = v100;
        OUTLINED_FUNCTION_89_11();
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v230, v231, v232, v233, v234, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v224);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      else
      {

        sub_267B9F98C(v217, &qword_280229920, &unk_267F0ABD0);
      }

      v253 = v328;
      v254 = v310;
      v255 = v305;
      sub_267BBE184(v308, v305, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(v255);
      if (v147)
      {
        sub_267B9F98C(v255, &qword_280229920, &unk_267F0ABD0);
      }

      else
      {
        v256 = *(v300 + 32);
        v257 = v298;
        v256(v298, v255, v254);
        v256(v184, v257, v254);
      }

      OUTLINED_FUNCTION_86_10();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3();
      sub_267DC8AC4(v184, v253 + v150);
    }

    swift_endAccess();
    sub_267B9F98C(v100, &qword_280229928, &qword_267EFEB80);
    __swift_destroy_boxed_opaque_existential_0(&v331);
    goto LABEL_55;
  }

  v156 = sub_267EF89F8();
  v157 = sub_267EF95D8();
  v158 = OUTLINED_FUNCTION_36(v157);
  v159 = v293;
  if (v158)
  {
    v160 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v160);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v161, v162, v163, v164, v165, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_storeEnumTagMultiPayload();
  v166 = v328;
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v159, v166 + v150);
  swift_endAccess();
  sub_267B9F98C(v100, &qword_280229928, &qword_267EFEB80);
  __swift_destroy_boxed_opaque_existential_0(&v331);
LABEL_55:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC2A58()
{
  OUTLINED_FUNCTION_12();
  v1[58] = v2;
  v1[59] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v1[60] = v3;
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[61] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF8198();
  v1[62] = v6;
  v7 = *(v6 - 8);
  v1[63] = v7;
  v8 = *(v7 + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64) + 15;
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v12 = type metadata accessor for SendTapbackFlow.State(0);
  v1[72] = v12;
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64) + 15;
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267DC2BF0()
{
  v190 = v1;
  v2 = *(v1 + 592);
  v3 = *(v1 + 576);
  v4 = *(v1 + 472);
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  *(v1 + 600) = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_8_43();
  sub_267DC8BB4(v4 + v5, v2, v6);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_267BBE184(*(v1 + 592), *(v1 + 568), &qword_280229920, &unk_267F0ABD0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v7 = sub_267EF8A08();
      __swift_project_value_buffer(v7, qword_280240FB0);
      v8 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_32();
        *v10 = 0;
        _os_log_impl(&dword_267B93000, v8, v0, "#SendTapbackFlow state .initialized", v10, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v11 = *(v1 + 568);
      v12 = *(v1 + 560);
      v13 = *(v1 + 496);
      v14 = *(v1 + 472);

      sub_267DC7E4C();
      v15 = OUTLINED_FUNCTION_37_1();
      sub_267C6AD4C(v15, v16, v17, v18);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
      v20 = *(v1 + 560);
      if (EnumTagSinglePayload == 1)
      {
        sub_267B9F98C(*(v1 + 560), &qword_280229920, &unk_267F0ABD0);
        v21 = sub_267EF89F8();
        sub_267EF95C8();
        OUTLINED_FUNCTION_64();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v23);
          OUTLINED_FUNCTION_21_12(&dword_267B93000, v24, v25, "#SendTapbackFlow pushing PromptForValueFlowAsync with PromptForTapbackFlowStrategy");
          OUTLINED_FUNCTION_26();
        }

        v26 = *(v1 + 568);
        v28 = *(v1 + 464);
        v27 = *(v1 + 472);

        sub_267DC538C();
        v29 = v26;
      }

      else
      {
        (*(*(v1 + 504) + 32))(*(v1 + 528), *(v1 + 560), *(v1 + 496));
        v156 = sub_267EF89F8();
        v157 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v157))
        {
          v158 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v158);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v159, v160, v161, v162, v163, 2u);
          OUTLINED_FUNCTION_26();
        }

        v164 = *(v1 + 584);
        v165 = *(v1 + 576);
        v188 = *(v1 + 568);
        v166 = *(v1 + 528);
        v168 = *(v1 + 496);
        v167 = *(v1 + 504);
        v169 = *(v1 + 464);

        (*(v167 + 16))(v164, v166, v168);
        OUTLINED_FUNCTION_37_1();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3();
        sub_267DC8AC4(v164, v4 + v5);
        swift_endAccess();
        sub_267EF3FB8();
        (*(v167 + 8))(v166, v168);
        v29 = v188;
      }

      sub_267B9F98C(v29, &qword_280229920, &unk_267F0ABD0);
      goto LABEL_62;
    case 1u:
      (*(*(v1 + 504) + 32))(*(v1 + 520), *(v1 + 592), *(v1 + 496));
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v73 = sub_267EF8A08();
      *(v1 + 608) = __swift_project_value_buffer(v73, qword_280240FB0);
      v74 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_32();
        *v76 = 0;
        _os_log_impl(&dword_267B93000, v74, v0, "#SendTapbackFlow state .readyToSend", v76, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v77 = *(v1 + 520);

      v78 = sub_267DC5204();
      *(v1 + 776) = v78;
      if (v78 == 6)
      {
        (*(*(v1 + 504) + 16))(*(v1 + 512), *(v1 + 520), *(v1 + 496));
        v79 = sub_267EF89F8();
        sub_267EF95E8();
        OUTLINED_FUNCTION_12_3();
        v81 = os_log_type_enabled(v79, v80);
        v83 = *(v1 + 504);
        v82 = *(v1 + 512);
        v84 = *(v1 + 496);
        if (v81)
        {
          v85 = OUTLINED_FUNCTION_48();
          v86 = swift_slowAlloc();
          v189 = v86;
          *v85 = 136315138;
          v183 = sub_267EF8188();
          v185 = v1;
          v88 = v87;
          v89 = OUTLINED_FUNCTION_66_13();
          v90(v89);
          v91 = sub_267BA33E8(v183, v88, &v189);
          v1 = v185;

          *(v85 + 4) = v91;
          _os_log_impl(&dword_267B93000, v79, v0, "#SendTapbackFlow get tapback type failed for %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_29_1();
        }

        else
        {

          v170 = OUTLINED_FUNCTION_66_13();
          v171(v170);
        }

        v172 = *(v1 + 584);
        v173 = *(v1 + 576);
        v174 = *(v1 + 488);
        v184 = *(v1 + 496);
        v186 = *(v1 + 520);
        v175 = *(v1 + 472);
        v176 = *(v1 + 480);
        v177 = *(v1 + 464);
        sub_267C6AA68();
        v178 = OUTLINED_FUNCTION_61_1();
        OUTLINED_FUNCTION_18_27(v178, v179);
        v180 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
        OUTLINED_FUNCTION_66_3();
        sub_267BF3128(v174, v175 + v180, &qword_280229958, &unk_267F09110);
        swift_endAccess();
        OUTLINED_FUNCTION_34_18();
        OUTLINED_FUNCTION_66_3();
        sub_267DC8AC4(v172, v4 + v5);
        swift_endAccess();
        sub_267EF4018();
        v187(v186, v184);
        goto LABEL_62;
      }

      v147 = *(v1 + 472);
      v148 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      *(v1 + 616) = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      v149 = __swift_project_boxed_opaque_existential_0((v147 + v148), *(v147 + v148 + 24));
      v150 = [*(v147 + 56) identifier];
      sub_267EF9028();
      v152 = v151;

      *(v1 + 624) = v152;
      v153 = *v149;
      v154 = v149[1];
      v121 = swift_task_alloc();
      *(v1 + 632) = v121;
      *v121 = v1;
      v122 = sub_267DC3958;
LABEL_53:
      v121[1] = v122;
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_41_15();
      OUTLINED_FUNCTION_15();

      result = sub_267D52D0C();
      break;
    case 2u:
      sub_267BBE184(*(v1 + 592), *(v1 + 544), &qword_280229920, &unk_267F0ABD0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v104 = sub_267EF8A08();
      *(v1 + 688) = __swift_project_value_buffer(v104, qword_280240FB0);
      v105 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v107);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v108, v109, v110, v111, v112, 2u);
        OUTLINED_FUNCTION_26();
      }

      v113 = *(v1 + 472);

      v114 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      *(v1 + 696) = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      v115 = __swift_project_boxed_opaque_existential_0((v113 + v114), *(v113 + v114 + 24));
      v116 = [*(v113 + 56) identifier];
      sub_267EF9028();
      v118 = v117;

      *(v1 + 704) = v118;
      v119 = *v115;
      v120 = v115[1];
      v121 = swift_task_alloc();
      *(v1 + 712) = v121;
      *v121 = v1;
      v122 = sub_267DC453C;
      goto LABEL_53;
    case 3u:
      v123 = **(v1 + 592);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v124 = sub_267EF8A08();
      __swift_project_value_buffer(v124, qword_280240FB0);
      v125 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = OUTLINED_FUNCTION_48();
        v128 = swift_slowAlloc();
        *v127 = 138412290;
        sub_267C6AA68();
        OUTLINED_FUNCTION_61_1();
        *v129 = v123;
        v130 = _swift_stdlib_bridgeErrorToNSError();
        *(v127 + 4) = v130;
        *v128 = v130;
        _os_log_impl(&dword_267B93000, v125, v0, "#SendTapbackFlow: failed %@", v127, 0xCu);
        sub_267B9F98C(v128, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_32_0();
      }

      v132 = *(v1 + 480);
      v131 = *(v1 + 488);
      v133 = *(v1 + 464);
      v134 = *(v1 + 472);

      sub_267C6AA68();
      v135 = OUTLINED_FUNCTION_61_1();
      *v136 = v123;
      *v131 = v135;
      swift_storeEnumTagMultiPayload();
      v137 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
      OUTLINED_FUNCTION_66_3();
      sub_267BF3128(v131, v134 + v137, &qword_280229958, &unk_267F09110);
      swift_endAccess();
      goto LABEL_51;
    case 5u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v138 = sub_267EF8A08();
      __swift_project_value_buffer(v138, qword_280240FB0);
      v139 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v141);
        OUTLINED_FUNCTION_21_12(&dword_267B93000, v142, v143, "#SendTapbackFlow reprompt with PromptForTapbackFlowStrategy");
        OUTLINED_FUNCTION_26();
      }

      v144 = *(v1 + 464);
      v145 = *(v1 + 472);

      *(*(v145 + 72) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted) = 0;
      sub_267DC538C();
      goto LABEL_62;
    case 7u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v49 = sub_267EF8A08();
      __swift_project_value_buffer(v49, qword_280240FB0);
      v50 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v52);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_26();
      }

      v58 = *(v1 + 472);

      v59 = v58[5];
      v60 = v58[6];
      OUTLINED_FUNCTION_27_11(v58 + 2);
      v62 = *(v61 + 8);
      v63 = OUTLINED_FUNCTION_38_0();
      v64(v63);
      v65 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
      OUTLINED_FUNCTION_38_0();
      v66 = sub_267EF3C48();
      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      if ((v66 & 1) == 0)
      {
        v146 = *(v1 + 464);
LABEL_51:
        sub_267EF4018();
LABEL_62:
        OUTLINED_FUNCTION_0_49();

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_15();

        __asm { BRAA            X1, X16 }
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 768) = v67;
      *v67 = v68;
      v67[1] = sub_267DC506C;
      v69 = *(v1 + 464);
      v70 = *(v1 + 472);
      OUTLINED_FUNCTION_15();

      result = sub_267DC7164();
      break;
    case 8u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v92 = sub_267EF8A08();
      __swift_project_value_buffer(v92, qword_280240FB0);
      v93 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v95);
        OUTLINED_FUNCTION_21_12(&dword_267B93000, v96, v97, "#SendTapbackFlow completed");
        OUTLINED_FUNCTION_26();
      }

      v98 = *(v1 + 536);
      v99 = *(v1 + 496);
      v101 = *(v1 + 464);
      v100 = *(v1 + 472);

      v102 = *(v100 + 72);
      v103 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
      OUTLINED_FUNCTION_83();
      sub_267C6AD4C(v102 + v103, v98, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(v98);
      sub_267B9F98C(v98, &qword_280229920, &unk_267F0ABD0);
      sub_267DC7E4C();
      goto LABEL_51;
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v30 = *(v1 + 472);
      v31 = sub_267EF8A08();
      __swift_project_value_buffer(v31, qword_280240FB0);

      v32 = sub_267EF89F8();
      v33 = sub_267EF95E8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v1 + 584);
        v35 = *(v1 + 576);
        OUTLINED_FUNCTION_48();
        v36 = OUTLINED_FUNCTION_64_2();
        v189 = v36;
        *v30 = 136315138;
        OUTLINED_FUNCTION_8_43();
        sub_267DC8BB4(v4 + v5, v34, v37);
        v38 = sub_267EF9098();
        v40 = sub_267BA33E8(v38, v39, &v189);

        *(v30 + 4) = v40;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      v46 = *(v1 + 592);
      v47 = *(v1 + 464);
      sub_267EF4018();
      OUTLINED_FUNCTION_9_38();
      sub_267DC8C10(v46, v48);
      goto LABEL_62;
  }

  return result;
}

uint64_t sub_267DC3958()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 632);
  v6 = *(v4 + 624);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v10 + 640) = v9;
  *(v10 + 648) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267DC3A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v15 = sub_267BAF0DC(*(v14 + 640));
  v16 = *(v14 + 640);
  if (v15)
  {
    v17 = v16 & 0xC000000000000001;
    sub_267BBD0EC(0, (v16 & 0xC000000000000001) == 0, v16);
    if (v17)
    {
      v18 = MEMORY[0x26D609870](0, *(v14 + 640));
      v54 = *(v14 + 640);
    }

    else
    {
      v18 = *(*(v14 + 640) + 32);
    }

    *(v14 + 656) = v18;
    v19 = *(v14 + 616);
    v20 = *(v14 + 520);
    v21 = *(v14 + 472);

    sub_267DC798C();
    v22 = __swift_project_boxed_opaque_existential_0((v21 + v19), *(v21 + v19 + 24));
    v23 = *v22;
    v24 = v22[1];
    v25 = swift_task_alloc();
    *(v14 + 664) = v25;
    *v25 = v14;
    v25[1] = sub_267DC3F28;
    v26 = *(v14 + 776);
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_64_3();

    return sub_267D51EC8();
  }

  else
  {
    v29 = *(v14 + 608);
    v30 = *(v14 + 640);

    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_32();
      *v33 = 0;
      _os_log_impl(&dword_267B93000, v31, v32, "#SendTapbackFlow failed to fetch message entity", v33, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v34 = *(v14 + 600);
    v35 = *(v14 + 584);
    v36 = *(v14 + 576);
    v37 = *(v14 + 504);
    v55 = *(v14 + 496);
    v56 = *(v14 + 520);
    v39 = *(v14 + 480);
    v38 = *(v14 + 488);
    v41 = *(v14 + 464);
    v40 = *(v14 + 472);

    sub_267C6AA68();
    v42 = OUTLINED_FUNCTION_61_1();
    *v43 = 0;
    *v38 = v42;
    OUTLINED_FUNCTION_61_4();
    swift_storeEnumTagMultiPayload();
    v44 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
    OUTLINED_FUNCTION_66_3();
    sub_267BF3128(v38, v40 + v44, &qword_280229958, &unk_267F09110);
    swift_endAccess();
    *v35 = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3();
    sub_267DC8AC4(v35, v40 + v34);
    swift_endAccess();
    sub_267EF4018();
    (*(v37 + 8))(v56, v55);
    OUTLINED_FUNCTION_0_49();
    v57 = v45;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v55, v57, a12, a13, a14);
  }
}

uint64_t sub_267DC3D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v20 = *(v15 + 648);
  v21 = *(v15 + 608);
  v22 = v20;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v23 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v23);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v24, v25, "#SendTapbackFlow failed to submit SendTapbackIntent, error: %@");
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_56_13();
  OUTLINED_FUNCTION_80_8();
  v26 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3();
  v27 = v20;
  sub_267BF3128(v19, v18 + v26, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_96_8();
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v17, v18 + v16);
  swift_endAccess();
  sub_267EF4018();

  (*(v14 + 8))(a11, a10);
  OUTLINED_FUNCTION_0_49();
  v38 = v28;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, v38, a12, a13, a14);
}

uint64_t sub_267DC3F28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 664);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 672) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC4020()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v1 = v0[69];
  v2 = v0[65];
  v3 = v0[62];
  v4 = v0[61];
  v18 = v0[60];
  v5 = v0[59];
  v6 = *(v5 + 72);
  v7 = *(v0[63] + 16);
  v8 = OUTLINED_FUNCTION_37_1();
  v7(v8);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  OUTLINED_FUNCTION_66_3();
  sub_267BF3128(v1, v6 + v9, &qword_280229920, &unk_267F0ABD0);
  swift_endAccess();
  (v7)(v4, v2, v3);
  type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
  OUTLINED_FUNCTION_110_0();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3();
  sub_267BF3128(v4, v5 + v10, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[85] = v11;
  *v11 = v12;
  v11[1] = sub_267DC41AC;
  v13 = v0[65];
  v14 = v0[58];
  v15 = v0[59];
  OUTLINED_FUNCTION_40();

  return sub_267DC6928();
}

uint64_t sub_267DC41AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 680);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DC4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[82];
  v14 = v12[65];
  v15 = v12[62];
  v16 = v12[63];

  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_66();
  v19(v18);
  OUTLINED_FUNCTION_0_49();
  v30 = v20;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_267DC4368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v20 = v15[82];

  v21 = v15[84];
  v22 = v15[76];
  v23 = v21;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v24);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v25, v26, "#SendTapbackFlow failed to submit SendTapbackIntent, error: %@");
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_56_13();
  OUTLINED_FUNCTION_80_8();
  v27 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3();
  v28 = v21;
  sub_267BF3128(v19, v18 + v27, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_96_8();
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v17, v18 + v16);
  swift_endAccess();
  sub_267EF4018();

  (*(v14 + 8))(a11, a10);
  OUTLINED_FUNCTION_0_49();
  v39 = v29;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, v39, a12, a13, a14);
}

uint64_t sub_267DC453C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 712);
  v6 = *(v4 + 704);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v10 + 720) = v9;
  *(v10 + 728) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267DC4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = sub_267BAF0DC(v12[90]);
  v14 = v12[90];
  if (v13)
  {
    v15 = v14 & 0xC000000000000001;
    sub_267BBD0EC(0, (v14 & 0xC000000000000001) == 0, v14);
    if (v15)
    {
      v16 = MEMORY[0x26D609870](0, v12[90]);
      v50 = v12[90];
    }

    else
    {
      v16 = *(v12[90] + 32);
    }

    v12[92] = v16;
    v17 = v12[87];
    v18 = v12[59];

    sub_267DC7DC4();
    v19 = __swift_project_boxed_opaque_existential_0((v18 + v17), *(v18 + v17 + 24));
    v20 = *v19;
    v21 = v19[1];
    v22 = swift_task_alloc();
    v12[93] = v22;
    *v22 = v12;
    v22[1] = sub_267DC4A88;
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_40();

    return sub_267D526D0();
  }

  else
  {
    v25 = v12[86];
    v26 = v12[90];

    v27 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v29);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_26();
    }

    v35 = v12[75];
    v36 = v12[73];
    v37 = v12[72];
    v38 = v12[68];
    v39 = v12[58];
    v40 = v12[59];

    *v36 = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3();
    sub_267DC8AC4(v36, v40 + v35);
    swift_endAccess();
    sub_267EF4018();
    sub_267B9F98C(v38, &qword_280229920, &unk_267F0ABD0);
    OUTLINED_FUNCTION_0_49();
    v51 = v41;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_40();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, v51, a10, a11, a12);
  }
}

uint64_t sub_267DC48B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v17 = *(v13 + 728);
  v18 = *(v13 + 688);
  v19 = v17;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v20);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v21, v22, "#SendTapbackFlow failed to submit RemoveTapbackIntent error is: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_65_9();
  *v15 = v17;
  OUTLINED_FUNCTION_61_4();
  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3();
  v24 = v17;
  sub_267BF3128(v15, v12 + v23, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_78_13();
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v14, v12 + v16);
  swift_endAccess();
  sub_267EF4018();

  sub_267B9F98C(a9, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_0_49();
  v35 = v25;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_267DC4A88()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 744);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 752) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC4B80()
{
  v1 = v0[69];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[60];
  v5 = *(v0[59] + 72);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  OUTLINED_FUNCTION_66_3();
  sub_267BF3128(v1, v5 + v10, &qword_280229920, &unk_267F0ABD0);
  swift_endAccess();
  type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
  OUTLINED_FUNCTION_110_0();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  v11 = OUTLINED_FUNCTION_90_9();
  sub_267BF3128(v11, v12, v13, v14);
  swift_endAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[95] = v15;
  *v15 = v16;
  v15[1] = sub_267DC4CD0;
  v17 = v0[68];
  v18 = v0[58];
  v19 = v0[59];

  return sub_267DC6178();
}

uint64_t sub_267DC4CD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 760);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DC4DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 736);
  v14 = *(v12 + 544);

  sub_267B9F98C(v14, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_0_49();
  v25 = v15;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_267DC4E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v17 = v13[92];

  v18 = v13[94];
  v19 = v13[86];
  v20 = v18;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v21);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v22, v23, "#SendTapbackFlow failed to submit RemoveTapbackIntent error is: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_65_9();
  *v15 = v18;
  OUTLINED_FUNCTION_61_4();
  swift_storeEnumTagMultiPayload();
  v24 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3();
  v25 = v18;
  sub_267BF3128(v15, v12 + v24, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_78_13();
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v14, v12 + v16);
  swift_endAccess();
  sub_267EF4018();

  sub_267B9F98C(a9, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_0_49();
  v36 = v26;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_267DC506C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 768);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DC5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_0_49();
  v22 = v12;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_267DC5204()
{
  v1 = sub_267EF8198();
  v2 = OUTLINED_FUNCTION_58(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 16))(v8 - v7, v0, v1);
  v9 = *(v4 + 88);
  v10 = OUTLINED_FUNCTION_66();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D5D3C8])
  {
    return 0;
  }

  if (v12 == *MEMORY[0x277D5D3D0])
  {
    return 1;
  }

  if (v12 == *MEMORY[0x277D5D3A8])
  {
    return 2;
  }

  if (v12 == *MEMORY[0x277D5D3C0])
  {
    return 3;
  }

  if (v12 == *MEMORY[0x277D5D3B0])
  {
    return 4;
  }

  if (v12 == *MEMORY[0x277D5D3B8])
  {
    return 5;
  }

  v14 = *(v4 + 8);
  v15 = OUTLINED_FUNCTION_66();
  v16(v15);
  return 6;
}

void sub_267DC538C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v19 = type metadata accessor for SendTapbackFlow.State(0);
  v2 = OUTLINED_FUNCTION_22(v19);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v18 = v6 - v5;
  v7 = v0[10];
  v8 = v1[9];
  type metadata accessor for PromptForTapbackFlowStrategy();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v11 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v11);
  v12 = *(v10 + 40);

  v12(&v20, v11, v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFA8, &qword_267F09138);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_267DC89C4(&qword_28022BFB0, type metadata accessor for PromptForTapbackFlowStrategy);
  v16 = sub_267EF3068();
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v18, v1 + v17);
  swift_endAccess();
  v20 = v16;
  sub_267BC7A94(&qword_28022BFB8, &qword_28022BFA8, &qword_267F09138);

  sub_267EF3FA8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC55B0(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v3 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v90 - v4;
  v99 = type metadata accessor for SendTapbackFlow.State(0);
  v5 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v100 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = &v90 - v9;
  v10 = sub_267EF8198();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TapbackAction(0);
  v13 = *(*(v97 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v97);
  v98 = (&v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v90 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v90 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v90 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFC0, &unk_267F09140);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = (&v90 - v30);
  v32 = *(v25 + 16);
  v32(&v90 - v30, a1, v24);
  v33 = (*(v25 + 88))(v31, v24);
  if (v33 == *MEMORY[0x277D5BC38])
  {
    (*(v25 + 96))(v31, v24);
    sub_267DC8B50(v31, v23);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    sub_267DC8BB4(v23, v21, type metadata accessor for TapbackAction);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v102[0] = v38;
      *v37 = 136315138;
      sub_267DC8BB4(v21, v18, type metadata accessor for TapbackAction);
      v39 = sub_267EF9098();
      v41 = v40;
      sub_267DC8C10(v21, type metadata accessor for TapbackAction);
      v42 = sub_267BA33E8(v39, v41, v102);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_267B93000, v35, v36, "#SendTapbackFlow .answered: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x26D60A7B0](v38, -1, -1);
      MEMORY[0x26D60A7B0](v37, -1, -1);
    }

    else
    {

      sub_267DC8C10(v21, type metadata accessor for TapbackAction);
    }

    v52 = v98;
    sub_267DC8B50(v23, v98);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v66 = v101;
        v67 = *(v101 + 72);
        v68 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
        swift_beginAccess();
        v69 = v67 + v68;
        v70 = v100;
        sub_267C6AD4C(v69, v100, &qword_280229920, &unk_267F0ABD0);
        swift_storeEnumTagMultiPayload();
        v71 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
        swift_beginAccess();
        sub_267DC8AC4(v70, v66 + v71);
        return swift_endAccess();
      }

      v54 = v96;
      sub_267BBE184(v52, v96, &qword_280229970, &unk_267F0E300);
      type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v55 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
      v56 = v101;
      swift_beginAccess();
      sub_267BF3128(v54, v56 + v55, &qword_280229958, &unk_267F09110);
      swift_endAccess();
      v57 = v100;
      swift_storeEnumTagMultiPayload();
      v58 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
LABEL_36:
      swift_beginAccess();
      sub_267DC8AC4(v57, v56 + v58);
      return swift_endAccess();
    }

    v64 = v94;
    sub_267BBE184(v52, v94, &qword_280229920, &unk_267F0ABD0);
    v65 = v93;
    if (__swift_getEnumTagSinglePayload(v64, 1, v93) == 1)
    {
      sub_267B9F98C(v64, &qword_280229920, &unk_267F0ABD0);
      v57 = v100;
    }

    else
    {
      v84 = v91;
      v85 = *(v92 + 32);
      v85(v91, v64, v65);
      v57 = v100;
      v85(v100, v84, v65);
    }

LABEL_35:
    swift_storeEnumTagMultiPayload();
    v58 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
    v56 = v101;
    goto LABEL_36;
  }

  if (v33 == *MEMORY[0x277D5BC30])
  {
    (*(v25 + 96))(v31, v24);
    v43 = *v31;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v44 = sub_267EF8A08();
    __swift_project_value_buffer(v44, qword_280240FB0);
    v45 = v43;
    v46 = sub_267EF89F8();
    v47 = sub_267EF95E8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v43;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_267B93000, v46, v47, "SendTapbackFlow received error exitValue from PromptForTapbackFlowStrategy: %@", v48, 0xCu);
      sub_267B9F98C(v49, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v49, -1, -1);
      MEMORY[0x26D60A7B0](v48, -1, -1);
    }

    else
    {
    }

    v57 = v100;
    *v100 = 3;
    goto LABEL_35;
  }

  if (v33 == *MEMORY[0x277D5BC40] || v33 == *MEMORY[0x277D5BC28])
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v60 = sub_267EF8A08();
    __swift_project_value_buffer(v60, qword_280240FB0);
    v61 = sub_267EF89F8();
    v62 = sub_267EF95D8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_267B93000, v61, v62, "#SendTapbackFlow received .cancelled .unanswered exitValue", v63, 2u);
      MEMORY[0x26D60A7B0](v63, -1, -1);
    }

    v57 = v100;
    goto LABEL_35;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v72 = sub_267EF8A08();
  __swift_project_value_buffer(v72, qword_280240FB0);
  v32(v29, a1, v24);
  v73 = sub_267EF89F8();
  v74 = sub_267EF95E8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v97 = v75;
    v98 = swift_slowAlloc();
    v102[0] = v98;
    *v75 = 136315138;
    sub_267BC7A94(&qword_28022BFC8, &qword_28022BFC0, &unk_267F09140);
    v76 = sub_267EF9E58();
    v78 = v77;
    v79 = *(v25 + 8);
    v79(v29, v24);
    v80 = sub_267BA33E8(v76, v78, v102);

    v81 = v97;
    *(v97 + 4) = v80;
    v82 = v81;
    _os_log_impl(&dword_267B93000, v73, v74, "SendTapbackFlow received unsupported exitValue from PromptForTapbackFlowStrategy result is: %s", v81, 0xCu);
    v83 = v98;
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x26D60A7B0](v83, -1, -1);
    MEMORY[0x26D60A7B0](v82, -1, -1);
  }

  else
  {

    v79 = *(v25 + 8);
    v79(v29, v24);
  }

  v87 = v100;
  *v100 = 3;
  swift_storeEnumTagMultiPayload();
  v88 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  v89 = v101;
  swift_beginAccess();
  sub_267DC8AC4(v87, v89 + v88);
  swift_endAccess();
  return (v79)(v31, v24);
}

uint64_t sub_267DC6178()
{
  OUTLINED_FUNCTION_12();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for SendTapbackFlow.State(0);
  v1[21] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[22] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC61F8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[23] = __swift_project_value_buffer(v1, qword_280240FB0);
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

  v10 = v0[20];

  v11 = *(v10 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v12;
  *v12 = v13;
  v12[1] = sub_267DC631C;
  v14 = v0[19];

  return sub_267E45A0C();
}

uint64_t sub_267DC631C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC6414()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 160);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_27_11(v1 + 2);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_38_0();
  v7(v6);
  OUTLINED_FUNCTION_77();
  v8 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 208) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_30_24(v9);

  return MEMORY[0x2821BB5D0](v11, v12, v13);
}

uint64_t sub_267DC64D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC65C8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_90_9();
  sub_267DC8AC4(v5, v6);
  swift_endAccess();
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[22];

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267DC6680()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#SendTapbackFlow caught error publishing tapback removed output: %@");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  v12 = v0[18];

  *v9 = 4;
  OUTLINED_FUNCTION_37_1();
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v9, v11 + v13);
  swift_endAccess();
  sub_267EF4018();

  v14 = v0[22];

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267DC67CC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v6);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v7, v8, "#SendTapbackFlow caught error publishing tapback removed output: %@");
    sub_267B9F98C(v5, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  v12 = v0[18];

  *v9 = 4;
  OUTLINED_FUNCTION_37_1();
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_66_3();
  sub_267DC8AC4(v9, v11 + v13);
  swift_endAccess();
  sub_267EF4018();

  v14 = v0[22];

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267DC6928()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v1[24] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v7 = type metadata accessor for SendTapbackFlow.State(0);
  v1[26] = v7;
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DC69D8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[28] = __swift_project_value_buffer(v1, qword_280240FB0);
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

  v10 = v0[23];

  v11 = *(v10 + 80);
  [*(v10 + 56) messageType];
  v12 = *(v10 + 64);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v13;
  *v13 = v14;
  v13[1] = sub_267DC6B1C;
  v15 = v0[22];

  return sub_267E4487C();
}

uint64_t sub_267DC6B1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC6C14()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 184);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_27_11(v1 + 2);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_38_0();
  v7(v6);
  OUTLINED_FUNCTION_77();
  v8 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 248) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_30_24(v9);

  return MEMORY[0x2821BB5D0](v11, v12, v13);
}

uint64_t sub_267DC6CD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC6DC8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[21];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_90_9();
  sub_267DC8AC4(v5, v6);
  swift_endAccess();
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[27];
  v8 = v0[25];

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267DC6E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = v10[30];
  v12 = v10[28];
  v13 = v11;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v15);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v16, v17, "#SendTapbackFlow caught error publishing confirmation output: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_95_9();
  sub_267C6AA68();
  v18 = OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_18_27(v18, v19);
  v20 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v20, v21, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  v22 = v10[27];
  v23 = v10[25];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_267DC6FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v10 + 2);
  __swift_destroy_boxed_opaque_existential_0(v10 + 7);
  v11 = v10[32];
  v12 = v10[28];
  v13 = v11;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v15);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v16, v17, "#SendTapbackFlow caught error publishing confirmation output: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_95_9();
  sub_267C6AA68();
  v18 = OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_18_27(v18, v19);
  v20 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v20, v21, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  v22 = v10[27];
  v23 = v10[25];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_267DC7164()
{
  OUTLINED_FUNCTION_12();
  v1[21] = v2;
  v1[22] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v1[23] = v3;
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[24] = OUTLINED_FUNCTION_2();
  v6 = type metadata accessor for SendTapbackFlow.State(0);
  v1[25] = v6;
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC7210()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[27] = __swift_project_value_buffer(v1, qword_280240FB0);
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

  v10 = v0[22];

  v11 = *(v10 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[28] = v12;
  *v12 = v13;
  v12[1] = sub_267DC7330;

  return sub_267E464F0();
}

uint64_t sub_267DC7330()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC7428()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 176);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_27_11(v1 + 2);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_38_0();
  v7(v6);
  OUTLINED_FUNCTION_77();
  v8 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 240) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_30_24(v9);

  return MEMORY[0x2821BB5D0](v11, v12, v13);
}

uint64_t sub_267DC74E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DC75DC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[22];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_90_9();
  sub_267DC8AC4(v5, v6);
  swift_endAccess();
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[26];
  v8 = v0[24];

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267DC769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = v10[29];
  v12 = v10[27];
  v13 = v11;
  v14 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v15 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v16);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v17, v18, "#SendTapbackFlow caught error publishing empty output: %@");
    sub_267B9F98C(v15, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v20 = v10[25];
  v19 = v10[26];
  v22 = v10[23];
  v21 = v10[24];
  v23 = v10[21];
  v24 = v10[22];

  sub_267C6AA68();
  v25 = OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_18_27(v25, v26);
  v27 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v27, v28, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  v29 = v10[26];
  v30 = v10[24];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_267DC780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v10 + 2);
  __swift_destroy_boxed_opaque_existential_0(v10 + 7);
  v11 = v10[31];
  v12 = v10[27];
  v13 = v11;
  v14 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v15 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v16);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v17, v18, "#SendTapbackFlow caught error publishing empty output: %@");
    sub_267B9F98C(v15, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v20 = v10[25];
  v19 = v10[26];
  v22 = v10[23];
  v21 = v10[24];
  v23 = v10[21];
  v24 = v10[22];

  sub_267C6AA68();
  v25 = OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_18_27(v25, v26);
  v27 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v27, v28, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  v29 = v10[26];
  v30 = v10[24];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

void sub_267DC798C()
{
  OUTLINED_FUNCTION_48_0();
  v53 = v1;
  v2 = sub_267EF8198();
  v3 = OUTLINED_FUNCTION_58(v2);
  v54 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v49 = v8 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF88, &qword_267F09120);
  OUTLINED_FUNCTION_22(v52);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v15 = OUTLINED_FUNCTION_18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v50 = v18;
  OUTLINED_FUNCTION_115();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v55 = v0;
  v25 = *(v0 + 72);
  v26 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext;
  v27 = *(v25 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext);

  sub_267C39624();

  v51 = v26;
  v28 = *(v25 + v26);
  LOBYTE(v26) = *(v25 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);

  sub_267C39770(v26);

  v29 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  OUTLINED_FUNCTION_83();
  sub_267C6AD4C(v25 + v29, v24, &qword_280229920, &unk_267F0ABD0);
  LODWORD(v28) = __swift_getEnumTagSinglePayload(v24, 1, v2);
  sub_267B9F98C(v24, &qword_280229920, &unk_267F0ABD0);
  if (v28 != 1)
  {
    v30 = v54;
    (*(v54 + 16))(v22, v53, v2);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v2);
    v31 = *(v52 + 48);
    OUTLINED_FUNCTION_41_15();
    sub_267C6AD4C(v32, v33, v34, v35);
    OUTLINED_FUNCTION_41_15();
    sub_267C6AD4C(v36, v37, v38, v39);
    OUTLINED_FUNCTION_110(v13);
    if (v41)
    {
      sub_267B9F98C(v22, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(&v13[v31]);
      if (v41)
      {
        sub_267B9F98C(v13, &qword_280229920, &unk_267F0ABD0);
        goto LABEL_12;
      }
    }

    else
    {
      v40 = v50;
      sub_267C6AD4C(v13, v50, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(&v13[v31]);
      if (!v41)
      {
        v43 = &v13[v31];
        v44 = v49;
        (*(v30 + 32))(v49, v43, v2);
        OUTLINED_FUNCTION_39_15();
        sub_267DC89C4(v45, v46);
        v47 = sub_267EF8FE8();
        v48 = *(v30 + 8);
        v48(v44, v2);
        sub_267B9F98C(v22, &qword_280229920, &unk_267F0ABD0);
        v48(v40, v2);
        sub_267B9F98C(v13, &qword_280229920, &unk_267F0ABD0);
        if (v47)
        {
          goto LABEL_12;
        }

LABEL_11:
        v42 = *(v25 + v51);

        sub_267C3964C();

        goto LABEL_12;
      }

      sub_267B9F98C(v22, &qword_280229920, &unk_267F0ABD0);
      (*(v30 + 8))(v40, v2);
    }

    sub_267B9F98C(v13, &qword_28022BF88, &qword_267F09120);
    goto LABEL_11;
  }

LABEL_12:
  sub_267DC7E4C();
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC7DC4()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext);

  sub_267C39638();

  v4 = *(v1 + v2);
  LOBYTE(v1) = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);

  sub_267C39770(v1);

  return sub_267DC7E4C();
}

uint64_t sub_267DC7E4C()
{
  sub_267EF3838();
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  sub_267EF3B18();

  sub_267EF3B08();
  sub_267EF3848();

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

void sub_267DC7F2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_267EF7C38();
  sub_267EF7C08();
  sub_267EF3AD8();
  v4 = sub_267DC8A10(*(*(*(a2 + 72) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext) + 16));
  if (v5 >> 60 == 15)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    oslog = sub_267EF89F8();
    v7 = sub_267EF95E8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_267B93000, oslog, v7, "#SendTapbackFlow failed to get jsonData from FLOWDomainContext", v8, 2u);
      MEMORY[0x26D60A7B0](v8, -1, -1);
    }
  }

  else
  {
    v9 = v4;
    v10 = v5;
    sub_267DC8A80();
    sub_267CAB9F0(v9, v10);
    sub_267DC80DC(v9, v10);
    sub_267EF3AB8();

    sub_267BBE0C8(v9, v10);
  }
}

id sub_267DC80DC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_267EF2BB8();
  v6 = [v4 initWithJSON_];

  sub_267BBE0DC(a1, a2);
  return v6;
}

uint64_t sub_267DC8154()
{
  type metadata accessor for SendTapbackFlow(0);
  sub_267DC89C4(&qword_280229960, type metadata accessor for SendTapbackFlow);
  OUTLINED_FUNCTION_3();
  return sub_267EF3708();
}

uint64_t sub_267DC81E0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_9_38();
  sub_267DC8C10(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender));
  return sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, &qword_280229958, &unk_267F09110);
}

uint64_t sub_267DC8250()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_9_38();
  sub_267DC8C10(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, &qword_280229958, &unk_267F09110);
  return v0;
}

uint64_t sub_267DC82E4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_267DC8368()
{
  v0 = type metadata accessor for SendTapbackFlow.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_267DC8480();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_267DC8480()
{
  if (!qword_28022BF40)
  {
    type metadata accessor for SendTapbackFlow.SendTapbackStatus(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022A2D0, &unk_267EFCDB0);
    v0 = sub_267EFA038();
    if (!v1)
    {
      atomic_store(v0, &qword_28022BF40);
    }
  }
}

void sub_267DC851C()
{
  sub_267EF8198();
  if (v0 <= 0x3F)
  {
    sub_267DC85AC(319, &qword_28022BF58, MEMORY[0x277D5C118]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267DC85AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_110_0();
    v4 = sub_267EF9888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267DC85FC()
{
  sub_267DC8690();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267DC86F4();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_267DC8690()
{
  if (!qword_28022BF70)
  {
    sub_267DC85AC(0, &qword_28022BF18, MEMORY[0x277D5D3D8]);
    if (!v1)
    {
      atomic_store(v0, &qword_28022BF70);
    }
  }
}

void sub_267DC86F4()
{
  if (!qword_28022BF78)
  {
    v0 = sub_267EF8198();
    if (!v1)
    {
      atomic_store(v0, &qword_28022BF78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SendTapbackFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267DC881C()
{
  result = qword_28022BF80;
  if (!qword_28022BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BF80);
  }

  return result;
}

uint64_t sub_267DC8870()
{
  v1 = *v0;
  sub_267DC1410();
  return v2 & 1;
}

uint64_t sub_267DC88BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267DC2A58();
}

uint64_t sub_267DC8958@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  swift_beginAccess();
  return sub_267C6AD4C(v3 + v4, a1, &qword_280229958, &unk_267F09110);
}

uint64_t sub_267DC89C4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_110_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267DC8A10(void *a1)
{
  v2 = [a1 jsonData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF2BE8();

  return v3;
}

unint64_t sub_267DC8A80()
{
  result = qword_28022BFA0;
  if (!qword_28022BFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022BFA0);
  }

  return result;
}

uint64_t sub_267DC8AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendTapbackFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DC8B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapbackAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DC8BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_61_0();
  v8(v7);
  return a2;
}

uint64_t sub_267DC8C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_267DC8C68()
{
  sub_267DC85AC(319, &qword_28022BF18, MEMORY[0x277D5D3D8]);
  if (v0 <= 0x3F)
  {
    sub_267DC85AC(319, &qword_28022BF58, MEMORY[0x277D5C118]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_267DC8D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v146 = (v145 - v8);
  OUTLINED_FUNCTION_26_2();
  v9 = sub_267EF4C08();
  v10 = OUTLINED_FUNCTION_58(v9);
  v151 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v149 = v14;
  MEMORY[0x28223BE20](v15);
  v150 = v145 - v16;
  OUTLINED_FUNCTION_26_2();
  v147 = sub_267EF4BE8();
  v17 = OUTLINED_FUNCTION_58(v147);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v158 = v23 - v22;
  OUTLINED_FUNCTION_26_2();
  v24 = sub_267EF7008();
  v25 = OUTLINED_FUNCTION_58(v24);
  v155 = v26;
  v156 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6();
  v154 = v29;
  MEMORY[0x28223BE20](v30);
  v153 = v145 - v31;
  OUTLINED_FUNCTION_26_2();
  v32 = sub_267EF4BA8();
  v33 = OUTLINED_FUNCTION_58(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_0();
  v40 = v39 - v38;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v41 = sub_267EF8A08();
  v42 = __swift_project_value_buffer(v41, qword_280240FB0);
  (*(v35 + 16))(v40, a1, v32);
  v152 = v42;
  v43 = sub_267EF89F8();
  v44 = sub_267EF95C8();
  v45 = os_log_type_enabled(v43, v44);
  v148 = v19;
  if (v45)
  {
    v46 = OUTLINED_FUNCTION_48();
    v145[1] = a2;
    v47 = v46;
    v145[0] = OUTLINED_FUNCTION_52();
    v161[0] = v145[0];
    *v47 = 136315138;
    sub_267DCE67C(&qword_28022AF50, MEMORY[0x277D5C118]);
    v48 = sub_267EF9E58();
    v50 = v49;
    v51 = *(v35 + 8);
    v52 = OUTLINED_FUNCTION_61_4();
    v53(v52);
    v54 = sub_267BA33E8(v48, v50, v161);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_267B93000, v43, v44, "#EditMessageNeedsValueFlowStrategy received input: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v145[0]);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v55 = *(v35 + 8);
    v56 = OUTLINED_FUNCTION_61_4();
    v57(v56);
  }

  v58 = v157[6];
  __swift_project_boxed_opaque_existential_0(v157 + 2, v157[5]);
  v59 = *(v58 + 8);
  v60 = OUTLINED_FUNCTION_43();
  v61(v60, v58);
  __swift_project_boxed_opaque_existential_0(v161, v161[3]);
  v62 = v153;
  OUTLINED_FUNCTION_43();
  sub_267EF3B78();
  v64 = v154;
  v63 = v155;
  v65 = v156;
  (*(v155 + 104))(v154, *MEMORY[0x277D61C58], v156);
  v66 = sub_267C28F38(v62, v64);
  v67 = *(v63 + 8);
  v67(v64, v65);
  v67(v62, v65);
  __swift_destroy_boxed_opaque_existential_0(v161);
  v68 = v158;
  if (v66)
  {
    v69 = sub_267EF89F8();
    v70 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v70))
    {
      v71 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v71);
      v74 = "#EditMessageNeedsValueFlowStrategy tap-to-edit request, ignoring";
LABEL_21:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v72, v73, v74);
      OUTLINED_FUNCTION_26();
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v75 = v150;
  sub_267EF4B88();
  v76 = v151;
  v77 = *(v151 + 88);
  v78 = OUTLINED_FUNCTION_26_0();
  if (v79(v78) == *MEMORY[0x277D5C150])
  {
    v80 = *(v76 + 96);
    v81 = OUTLINED_FUNCTION_26_0();
    v82(v81);
    v83 = v148;
    v84 = v147;
    (*(v148 + 32))(v68, v75, v147);
    v85 = v146;
    sub_267B9CC04(v68, v146);
    v86 = type metadata accessor for DirectInvocationUseCases();
    if (__swift_getEnumTagSinglePayload(v85, 1, v86) == 1)
    {
      (*(v83 + 8))(v68, v84);
      sub_267BF9988(v85, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      OUTLINED_FUNCTION_54_13();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v116 = sub_267EF8228();
        OUTLINED_FUNCTION_58(v116);
        v118 = v117;
        v120 = *(v119 + 88);
        v121 = OUTLINED_FUNCTION_54_13();
        if (v122(v121) == *MEMORY[0x277D5D4D8])
        {
          v123 = *(v118 + 8);
          v124 = OUTLINED_FUNCTION_54_13();
          v125(v124);
          v126 = sub_267EF89F8();
          v127 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v127))
          {
            v128 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v128);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v129, v130, "#EditMessageNeedsValueFlowStrategy prompt is cancelled by button press");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E48();
          v131 = OUTLINED_FUNCTION_39_16();
          return v132(v131, v147);
        }

        v135 = OUTLINED_FUNCTION_39_16();
        v136(v135, v147);
        v137 = *(v118 + 8);
        v138 = OUTLINED_FUNCTION_54_13();
        v139(v138);
      }

      else
      {
        v133 = OUTLINED_FUNCTION_39_16();
        v134(v133, v84);
        sub_267DCE628(v85, type metadata accessor for DirectInvocationUseCases);
      }
    }
  }

  else
  {
    v87 = *(v76 + 8);
    v88 = OUTLINED_FUNCTION_26_0();
    v89(v88);
  }

  v90 = v149;
  sub_267EF4B88();
  sub_267E57DFC(v90, &v159);
  v91 = *(v76 + 8);
  v92 = OUTLINED_FUNCTION_26_0();
  v93(v92);
  if (!v160)
  {
    sub_267BF9988(&v159, &unk_28022BBF0, &unk_267F01C60);
    v69 = sub_267EF89F8();
    v103 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v103))
    {
      v104 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v104);
      v74 = "#EditMessageNeedsValueFlowStrategy unexpected input, ignoring";
      goto LABEL_21;
    }

LABEL_22:

    return sub_267EF3E68();
  }

  sub_267BE58F4(&v159, v161);
  OUTLINED_FUNCTION_33_0();
  v94 = v9[48];
  v95 = OUTLINED_FUNCTION_38_0();
  v96(v95);
  OUTLINED_FUNCTION_52_12();
  if (v97)
  {
    v98 = sub_267EF89F8();
    v99 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v99))
    {
      v100 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v100);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v101, v102, "#EditMessageNeedsValueFlowStrategy prompt is cancelled");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
    v106 = v9[36];
    v107 = OUTLINED_FUNCTION_38_0();
    v109 = v108(v107);
    if (v109 & 1) == 0 || (OUTLINED_FUNCTION_33_0(), v110 = v9[29], v111 = OUTLINED_FUNCTION_38_0(), (v112(v111)) || (OUTLINED_FUNCTION_33_0(), v113 = v9[26], v114 = OUTLINED_FUNCTION_38_0(), (v115(v114)))
    {
      sub_267EF3E58();
    }

    else
    {
      v140 = sub_267EF89F8();
      v141 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v141))
      {
        v142 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v142);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v143, v144, "#EditMessageNeedsValueFlowStrategy unrelated request, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v161);
}

uint64_t sub_267DC965C()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4C08();
  v1[26] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[27] = v9;
  v11 = *(v10 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF44C8();
  v1[29] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[30] = v13;
  v15 = *(v14 + 64);
  v1[31] = OUTLINED_FUNCTION_2();
  v16 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267DC977C()
{
  v83 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  sub_267EF4938();
  v5 = sub_267EF44B8();
  v7 = v6;
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);

  sub_267C7C6C0();
  OUTLINED_FUNCTION_52_12();
  if (v11)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_5_50();
  if (v1 == v23 && (v22 & 1) == 0)
  {

    goto LABEL_13;
  }

  v24 = sub_267EF9EA8();

  if ((v24 & 1) == 0)
  {
LABEL_3:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v13 = sub_267EF89F8();
    v14 = sub_267EF95E8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_48();
      v16 = OUTLINED_FUNCTION_52();
      v82[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_267BA33E8(v5, v7, v82);
      _os_log_impl(&dword_267B93000, v13, v14, "#EditMessageNeedsValueFlowStrategy asked to parse an unknown slot: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v17 = v5;
    goto LABEL_8;
  }

LABEL_13:

  v26 = *(v0 + 216);
  v25 = *(v0 + 224);
  v27 = *(v0 + 208);
  v28 = *(v0 + 176);
  sub_267EF4B88();
  sub_267E57DFC(v25, (v0 + 56));
  v29 = *(v26 + 8);
  v30 = OUTLINED_FUNCTION_26_0();
  v31(v30);
  if (!*(v0 + 80))
  {
    sub_267BF9988(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v64 = sub_267EF8A08();
    __swift_project_value_buffer(v64, qword_280240FB0);
    v65 = sub_267EF89F8();
    v66 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v66))
    {
      v67 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v67);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      OUTLINED_FUNCTION_26();
    }

    v7 = 0x8000000267F1A040;
    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v17 = 0xD000000000000018;
LABEL_8:
    v17[1] = v7;
    v18 = *(v0 + 248);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    goto LABEL_31;
  }

  v32 = *(v0 + 184);
  sub_267BE58F4((v0 + 56), v0 + 16);
  v33 = sub_267EF4918();
  v34 = sub_267EF97C8();

  v35 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v36 = *(v35 + 400);
  v37 = OUTLINED_FUNCTION_38_0();
  v40 = v38(v37);
  if (!v39)
  {
    goto LABEL_17;
  }

  v41 = v39;
  v42 = *(v0 + 192);
  v43 = *(v0 + 200);
  v44 = v42[6];
  __swift_project_boxed_opaque_existential_0(v42 + 2, v42[5]);
  v45 = *(v44 + 8);
  v46 = OUTLINED_FUNCTION_20_25();
  v47(v46);
  v48 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
  OUTLINED_FUNCTION_20_25();
  sub_267EF3B68();
  sub_267EF2E38();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v40 = sub_267D5EBA4(v43, v40, v41);
  v54 = v53;

  sub_267BF9988(v43, &unk_28022AF10, &unk_267F001E0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v54)
  {
    v55 = 0;
    *(v0 + 160) = MEMORY[0x277D837D0];
    *(v0 + 136) = v40;
    *(v0 + 144) = v54;
  }

  else
  {
LABEL_17:
    v54 = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    v55 = 1;
  }

  sub_267ECE2B8(v0 + 136, 0);
  sub_267BF9988(v0 + 136, &qword_28022AEF0, &qword_267EFCDE0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v56 = sub_267EF8A08();
  __swift_project_value_buffer(v56, qword_280240FB0);
  v57 = v34;
  v58 = sub_267EF89F8();
  v59 = sub_267EF95D8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_48();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v57;
    *v61 = v57;
    v62 = v57;
    _os_log_impl(&dword_267B93000, v58, v59, "#EditMessageNeedsValueFlowStrategy updated intent: %@", v60, 0xCu);
    sub_267BF9988(v61, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (v55)
  {
    v40 = 0;
    v54 = 0;
    v63 = 0;
    v82[2] = 0;
  }

  else
  {
    v63 = MEMORY[0x277D837D0];
  }

  v73 = *(v0 + 248);
  v74 = *(v0 + 224);
  v75 = *(v0 + 200);
  v76 = *(v0 + 168);
  v82[0] = v40;
  v82[1] = v54;
  v82[3] = v63;
  sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
  sub_267EF4388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C038, &unk_267F09310);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();
LABEL_31:

  return v21();
}

uint64_t sub_267DC9DE8()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF44C8();
  v1[13] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[14] = v9;
  v11 = *(v10 + 64);
  v1[15] = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267DC9EE8()
{
  v55 = v0;
  v3 = v0[14];
  v2 = v0[15];
  OUTLINED_FUNCTION_67_8();
  sub_267EF44B8();
  OUTLINED_FUNCTION_55_13();
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_26_0();
  v4(v5);
  sub_267C7C6C0();
  OUTLINED_FUNCTION_52_12();
  if (v6)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_5_50();
  if (v2 != v26 || (v25 & 1) != 0)
  {
    v40 = sub_267EF9EA8();

    if (v40)
    {
      goto LABEL_15;
    }

LABEL_3:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = v0[8];
    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = *(v8 + 16);
    v13 = OUTLINED_FUNCTION_108();
    v14(v13);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95E8();
    if (os_log_type_enabled(v15, v16))
    {
      v4 = v0[15];
      v17 = v0[12];
      v18 = v0[10];
      v19 = v0[11];
      v52 = v0[13];
      v20 = OUTLINED_FUNCTION_48();
      v53 = OUTLINED_FUNCTION_52();
      v54 = v53;
      OUTLINED_FUNCTION_65_10(4.8149e-34);
      sub_267EF44B8();
      v21 = OUTLINED_FUNCTION_42_19();
      v4(v21);
      (*(v19 + 8))(v18, v18);
      v22 = sub_267BA33E8(v4, v1, &v54);

      *(v20 + 4) = v22;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v23, v24, "#EditMessageNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v28 = v0[11];
      v27 = v0[12];
      v29 = v0[10];

      v30 = *(v28 + 8);
      v20 = v28 + 8;
      v31 = OUTLINED_FUNCTION_108();
      v32(v31);
    }

    v33 = v0[15];
    OUTLINED_FUNCTION_67_8();
    sub_267EF44B8();
    OUTLINED_FUNCTION_55_13();
    v34 = OUTLINED_FUNCTION_26_0();
    v4(v34);
    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v35 = v33;
    v35[1] = v20;
    swift_willThrow();
    v36 = v0[15];
    v37 = v0[12];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

LABEL_15:
  __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags), *(v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags + 24));
  if ((sub_267CC8B28() & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_4_48(v0[9]);
  v41 = OUTLINED_FUNCTION_38_0();
  v42(v41);
  v44 = v0[5];
  v43 = v0[6];
  OUTLINED_FUNCTION_131(v0 + 2);
  LOBYTE(v44) = sub_267BF30D0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v44)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[16] = v45;
    *v45 = v46;
    OUTLINED_FUNCTION_60_0(v45);
    OUTLINED_FUNCTION_89();

    return sub_267DCC0C4();
  }

  else
  {
LABEL_20:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[17] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_60_0(v49);
    OUTLINED_FUNCTION_89();

    return sub_267DCA524();
  }
}

uint64_t sub_267DCA2D4()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v1 + 120);
  v6 = *(v1 + 96);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_267DCA3FC()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v1 + 120);
  v6 = *(v1 + 96);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_267DCA524()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_267EF48A8();
  v1[15] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}