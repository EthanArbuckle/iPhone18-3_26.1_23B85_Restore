uint64_t sub_268A1B14C()
{
  OUTLINED_FUNCTION_158();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v1[13] = OUTLINED_FUNCTION_11_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v1[14] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v1[17] = OUTLINED_FUNCTION_11_1();
  v12 = type metadata accessor for MediaPlayerIntent();
  v1[18] = v12;
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_11_1();
  v15 = sub_268B35434();
  v1[20] = v15;
  OUTLINED_FUNCTION_19_0(v15);
  v1[21] = v16;
  v18 = *(v17 + 64);
  v1[22] = OUTLINED_FUNCTION_11_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  v1[23] = OUTLINED_FUNCTION_11_1();
  v22 = sub_268B35494();
  v1[24] = v22;
  OUTLINED_FUNCTION_19_0(v22);
  v1[25] = v23;
  v25 = *(v24 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v26 = sub_268B37A54();
  v1[29] = v26;
  OUTLINED_FUNCTION_19_0(v26);
  v1[30] = v27;
  v29 = *(v28 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_268A1BD18()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v3 = *(v2 + 344);
  v4 = *v1;
  OUTLINED_FUNCTION_89();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A1C0FC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v3 = *(v2 + 360);
  v4 = *v1;
  OUTLINED_FUNCTION_89();
  *v5 = v4;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268A1C1FC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v2 = *(v1 + 408);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_89();
  *v5 = v4;

  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268A1C7D8()
{
  v49 = v0;
  v2 = v0[44];
  v3 = OUTLINED_FUNCTION_16_21();
  v4(v3);
  v5 = v2;
  v6 = sub_268B37A34();
  v7 = sub_268B37ED4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_23_12();
    v9 = swift_slowAlloc();
    v48 = v9;
    OUTLINED_FUNCTION_43_6(4.8149e-34);
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[7];
    v13 = sub_268B384A4();
    v15 = sub_26892CDB8(v13, v14, &v48);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_41_3(&dword_2688BB000, v16, v17, "SetLyricsStateFlow#execute caught exception with error %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v47(v46, v1);
  }

  else
  {
    v18 = v0[42];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[30];

    v18(v19, v20);
  }

  v22 = sub_268B34504();
  v0[48] = v22;
  v23 = [v22 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
  OUTLINED_FUNCTION_34_7();
  v24 = sub_268B37CF4();

  if (*(v24 + 16))
  {
    v25 = *(v24 + 32);
    v26 = v25;

    v0[8] = v25;
    sub_2688EA03C(0, &qword_2802A7278, 0x277CCA9B8);
    if (OUTLINED_FUNCTION_28_14())
    {
      v27 = v0[9];
      v28 = [v27 domain];
      v29 = sub_268B37BF4();
      v31 = v30;

      if (v29 == 0xD000000000000026 && 0x8000000268B5AA50 == v31)
      {
      }

      else
      {
        v33 = OUTLINED_FUNCTION_26_9();

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      [v27 code];
    }
  }

  else
  {
  }

LABEL_16:
  v34 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_24_11(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  v0[51] = v36;
  *v36 = v0;
  v37 = OUTLINED_FUNCTION_2_24(v36);

  return MEMORY[0x2822007B8](v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_268A1CAA8()
{
  v49 = v0;
  v2 = v0[46];
  v3 = OUTLINED_FUNCTION_16_21();
  v4(v3);
  v5 = v2;
  v6 = sub_268B37A34();
  v7 = sub_268B37ED4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_23_12();
    v9 = swift_slowAlloc();
    v48 = v9;
    OUTLINED_FUNCTION_43_6(4.8149e-34);
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[7];
    v13 = sub_268B384A4();
    v15 = sub_26892CDB8(v13, v14, &v48);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_41_3(&dword_2688BB000, v16, v17, "SetLyricsStateFlow#execute caught exception with error %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v47(v46, v1);
  }

  else
  {
    v18 = v0[42];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[30];

    v18(v19, v20);
  }

  v22 = sub_268B34504();
  v0[48] = v22;
  v23 = [v22 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6298, qword_268B3F620);
  OUTLINED_FUNCTION_34_7();
  v24 = sub_268B37CF4();

  if (*(v24 + 16))
  {
    v25 = *(v24 + 32);
    v26 = v25;

    v0[8] = v25;
    sub_2688EA03C(0, &qword_2802A7278, 0x277CCA9B8);
    if (OUTLINED_FUNCTION_28_14())
    {
      v27 = v0[9];
      v28 = [v27 domain];
      v29 = sub_268B37BF4();
      v31 = v30;

      if (v29 == 0xD000000000000026 && 0x8000000268B5AA50 == v31)
      {
      }

      else
      {
        v33 = OUTLINED_FUNCTION_26_9();

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      [v27 code];
    }
  }

  else
  {
  }

LABEL_16:
  v34 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_24_11(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  v0[51] = v36;
  *v36 = v0;
  v37 = OUTLINED_FUNCTION_2_24(v36);

  return MEMORY[0x2822007B8](v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_268A1CD78(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v51 = a3;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  v55 = *(v6 - 8);
  v56 = v6;
  v53 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - v7;
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v50 = v9[2];
  v50(v15, v16, v8);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v49 = v16;
    v20 = a2;
    v21 = v13;
    v22 = a4;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "SetLyricsStateFlow#execute withCheckedContinuation", v19, 2u);
    v24 = v23;
    a4 = v22;
    v13 = v21;
    a2 = v20;
    v16 = v49;
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  v25 = v9[1];
  v25(v15, v8);
  if (a2)
  {
    v50(v13, v16, v8);
    v26 = sub_268B37A34();
    v27 = sub_268B37ED4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "SetLyricsStateFlow#execute dialoging to reflect lyrics not available error", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v25(v13, v8);
    v29 = *(v51 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 24);
    v30 = *(v51 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 32);
    __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider), v29);
    v32 = v54;
    v31 = v55;
    v33 = v56;
    (*(v55 + 16))(v54, v52, v56);
    v34 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v35 = swift_allocObject();
    (*(v31 + 32))(v35 + v34, v32, v33);
    sub_2689CE88C(0xD000000000000023, 0x8000000268B5AAD0, sub_268A1DF50, v35, v29, v30);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AC0, &qword_268B41690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x8000000268B5AA80;
    if (a4)
    {
      v38 = sub_268B38444();
    }

    else
    {
      v38 = 1;
    }

    *(inited + 48) = v38 & 1;
    v39 = sub_268B37B84();
    v40 = *(v51 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 24);
    v41 = *(v51 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider + 32);
    __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider), v40);
    v42 = sub_268A1AB98(v39);

    v43 = v54;
    v44 = v55;
    v45 = v56;
    (*(v55 + 16))(v54, v52, v56);
    v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v47 = swift_allocObject();
    (*(v44 + 32))(v47 + v46, v43, v45);
    sub_2689CE860(0xD000000000000025, 0x8000000268B5AAA0, v42, sub_268A1DDE0, v47, v40, v41);
  }
}

uint64_t sub_268A1D30C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v21 = __swift_project_value_buffer(v12, qword_2802CDA10);
  (*(v15 + 16))(v20, v21, v12);
  sub_2688F1FA4(v34, v11, &qword_2802A6300, &unk_268B3BD80);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33[1] = a2;
    v26 = v25;
    v35 = v25;
    *v24 = 136315138;
    sub_2688F1FA4(v11, v9, &qword_2802A6300, &unk_268B3BD80);
    v27 = sub_268B37C24();
    v33[0] = v12;
    v28 = v9;
    v30 = v29;
    sub_2688C058C(v11, &qword_2802A6300, &unk_268B3BD80);
    v31 = sub_26892CDB8(v27, v30, &v35);
    v9 = v28;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_2688BB000, v22, v23, "SetLyricsStateFlow#execute result: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v15 + 8))(v20, v33[0]);
  }

  else
  {

    sub_2688C058C(v11, &qword_2802A6300, &unk_268B3BD80);
    (*(v15 + 8))(v20, v12);
  }

  sub_2688F1FA4(v34, v9, &qword_2802A6300, &unk_268B3BD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  return sub_268B37D94();
}

uint64_t sub_268A1D628()
{
  type metadata accessor for SetLyricsStateFlow();
  sub_268A1DD74();
  return sub_268B34A64();
}

unint64_t sub_268A1D688(char a1)
{
  if (a1 == 2)
  {
    return 0xD000000000000055;
  }

  else
  {
    return 0xD000000000000051;
  }
}

uint64_t sub_268A1D6D4(unsigned __int8 *a1)
{
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = *a1;
  if (v11 == 18)
  {
    return 0;
  }

  if (v11 == 23)
  {
    return 1;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v5 + 16))(v10, v13, v2);
  v14 = sub_268B37A34();
  v15 = sub_268B37EE4();
  if (os_log_type_enabled(v14, v15))
  {
    v12 = 2;
    v16 = OUTLINED_FUNCTION_14();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "SetLyricsStateFlow#getLyricsState unsupported verb", v16, 2u);
    OUTLINED_FUNCTION_12();

    (*(v5 + 8))(v10, v2);
  }

  else
  {

    (*(v5 + 8))(v10, v2);
    return 2;
  }

  return v12;
}

uint64_t sub_268A1D888()
{
  sub_2688C058C(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_input, &qword_2802A5660, &qword_268B3B8E8);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_appIntentInvoker));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_analyticsService));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_playbackController));
  return v0;
}

uint64_t sub_268A1D910()
{
  sub_268A1D888();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SetLyricsStateFlow()
{
  result = qword_2802A7260;
  if (!qword_2802A7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268A1D9BC()
{
  sub_268A1DA5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_268A1DA5C()
{
  if (!qword_2802A5640)
  {
    sub_268B35434();
    v0 = sub_268B380A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A5640);
    }
  }
}

uint64_t sub_268A1DADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268A1DB8C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268A1DB8C()
{
  OUTLINED_FUNCTION_158();
  v2 = v1;
  OUTLINED_FUNCTION_219();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_89();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_268A1DC9C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2688C8B94;

  return sub_268A1B14C();
}

uint64_t sub_268A1DD38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SetLyricsStateFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

unint64_t sub_268A1DD74()
{
  result = qword_2802A7270;
  if (!qword_2802A7270)
  {
    type metadata accessor for SetLyricsStateFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7270);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_268A1DE70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7280, &unk_268B44550);
  OUTLINED_FUNCTION_22(v3);
  return sub_268A1D30C(a1, v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t sub_268A1DEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5660, &qword_268B3B8E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_39()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v9 = v0[32];
  v11 = v0[27];
  v10 = v0[28];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[17];
  v19 = v0[16];
  v12 = v0[15];
  v20 = v0[13];
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1)
{
  *(a1 + 8) = sub_268A1C1FC;
  result = *(v1 + 128);
  v3 = *(v1 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_21()
{
  v1[47] = v0;
  v3 = v1[40];
  v2 = v1[41];
  v4 = v1[39];
  v5 = v1[29];
  return v1[32];
}

uint64_t OUTLINED_FUNCTION_23_12()
{
  v2 = v0[32];
  v6 = v0[42];
  v4 = v0[29];
  v3 = v0[30];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_11(uint64_t result)
{
  *(v3 + 400) = result;
  *(result + 16) = v1;
  *(result + 24) = v4;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return sub_268B382D4();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_8()
{
  *(v1 + 392) = v0;
  v3 = *(v1 + 416);
  v4 = *(v1 + 96);

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_41_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *OUTLINED_FUNCTION_42_7()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_43_6(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

Swift::String_optional __swiftcall UsoTask_skipForward_common_MediaItem.verb()()
{
  v0 = 1885956979;
  v1 = 0xE400000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipForward_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C(result))
    {
      sub_2688EFD10(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
        v2 = *(v1 + 32);
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268A1E354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A1E3A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A1E3FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A1E450(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A1E4A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A1E4F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A1E54C()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A1E5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A1E604()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A1E658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A1E6BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A1E720()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A1E784(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A1E7E8(uint64_t a1)
{
  result = sub_268A1E894(&qword_2802A72A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A1E894(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B36464();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WhatDidTheySayIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void WhatDidTheySayIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v51 = sub_268B36C44();
  sub_268B37204();
  v52 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v69);
  sub_268AD33CC(&v66);
  sub_268B36754();
  v50 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v69, v69[3]);
  OUTLINED_FUNCTION_3_8();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v64 = v0;
  v65 = MEMORY[0x277D5F680];
  *&v63 = v1;
  v13 = type metadata accessor for AnalyticsServiceLogger();
  v61 = v13;
  v62 = &off_28795F5E0;
  v60[0] = v12;
  v58 = v2;
  v59 = &off_287960608;
  *&v57 = v3;
  v14 = type metadata accessor for AnalyticsServiceImpl();
  v15 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v60, v13);
  OUTLINED_FUNCTION_3_8();
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v20 = OUTLINED_FUNCTION_25_7(v19);
  v21(v20);
  __swift_mutable_project_boxed_opaque_existential_1(&v57, v58);
  OUTLINED_FUNCTION_3_8();
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v12;
  v30 = *v27;
  v15[5] = v13;
  v15[6] = &off_28795F5E0;
  v15[2] = v29;
  v15[21] = v2;
  v15[22] = &off_287960608;
  v15[18] = v30;
  sub_2688E6514(&v66, (v15 + 7));
  v15[12] = v50;
  sub_2688E6514(&v63, (v15 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);

  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  sub_268B34C64();
  v67 = v14;
  v68 = &off_2879539D0;
  *&v66 = v15;
  v31 = type metadata accessor for WhatDidTheySayIntentHandler();
  v32 = objc_allocWithZone(v31);
  __swift_mutable_project_boxed_opaque_existential_1(&v66, v67);
  OUTLINED_FUNCTION_3_8();
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v37 = OUTLINED_FUNCTION_25_7(v36);
  v38(v37);
  v39 = *v12;
  v64 = v0;
  v65 = MEMORY[0x277D5F680];
  v62 = &off_2879539D0;
  *&v63 = v51;
  v61 = v14;
  v60[0] = v39;
  *&v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer] = 0;
  *&v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_queue] = 0;
  *&v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion] = 0;
  v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled] = 2;
  sub_26890C900(&v63, &v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController]);
  sub_26890C900(v70, &v57);
  sub_26890C900(v60, &v55);
  sub_26890C900(v69, v54);
  sub_268B376A4();
  v40 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(&v55, v56);
  OUTLINED_FUNCTION_3_8();
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v46 = (v45 - v44);
  (*(v47 + 16))(v45 - v44);
  v48 = sub_26892D53C(v52, &v57, *v46, v54, v40);
  __swift_destroy_boxed_opaque_existential_0Tm(&v55);
  *&v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceSelector] = v48;
  sub_26890C900(v60, &v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_analyticsService]);
  sub_26890C900(v70, &v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceState]);
  sub_26890C900(v70, &v57);
  sub_26890C900(v69, &v55);
  type metadata accessor for AceServiceHelper();
  v49 = swift_allocObject();
  sub_2688E6514(&v57, v49 + 16);
  sub_2688E6514(&v55, v49 + 56);
  *&v32[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_aceServiceHelper] = v49;
  v53.receiver = v32;
  v53.super_class = v31;
  objc_msgSendSuper2(&v53, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  __swift_destroy_boxed_opaque_existential_0Tm(&v63);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  __swift_destroy_boxed_opaque_existential_0Tm(&v66);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268A1EF6C(void *a1, NSObject *a2, void (**a3)(uint64_t, id))
{
  v6 = sub_268B371E4();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_268B36C04();
  v79 = *(v81 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  v19 = swift_allocObject();
  v84 = a2;
  v85 = v19;
  *(v19 + 16) = a3;
  v20 = (&a2->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceState);
  v21 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v86 = a3;
  _Block_copy(a3);
  if (!sub_2688C328C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v11, qword_2802CDA10);
    (*(v12 + 16))(v18, v40, v11);
    v41 = sub_268B37A34();
    v42 = sub_268B37EE4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "Media controls are unsupported on this platform", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v44 = sub_268B17B04(4);
    v45 = v86;
    v86[2](v86, v44);

    goto LABEL_23;
  }

  v22 = [a1 device];
  v23 = a1;
  if (v22)
  {
    v24 = v22;
    v25 = sub_26892D418(v22);
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v11, qword_2802CDA10);
      (*(v12 + 16))(v16, v29, v11);

      v30 = sub_268B37A34();
      v31 = sub_268B37F04();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v84 = v30;
        v33 = v27;
        v34 = v32;
        v35 = swift_slowAlloc();
        v87[0] = v35;
        *v34 = 136315138;
        v36 = sub_26892CDB8(v33, v28, v87);
        v37 = v23;
        v38 = v36;

        *(v34 + 4) = v38;
        v23 = v37;
        v39 = v84;
        _os_log_impl(&dword_2688BB000, v84, v31, "Disambiguated Intent with destinationDeviceId: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x26D6266E0](v35, -1, -1);
        MEMORY[0x26D6266E0](v34, -1, -1);
      }

      else
      {
      }

      (*(v12 + 8))(v16, v11);
      v49 = sub_268B1F16C(v23);
      if (v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

      sub_268983D74(v50);

      type metadata accessor for WhatDidTheySayDeviceResolutionResult();
      v44 = sub_268B2CC98(v24);
      v45 = v86;
      v86[2](v86, v44);

LABEL_23:
      v51 = v45;
      goto LABEL_24;
    }
  }

  v46 = sub_268B1F16C(a1);
  if (v46)
  {
    if (sub_2688EFD0C(v46))
    {
      v47 = [a1 device];
      if (!v47)
      {
        v70 = *(&v84->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceSelector);
        v72 = v78;
        v71 = v79;
        v73 = v81;
        (*(v79 + 104))(v78, *MEMORY[0x277D5F640], v81);
        v74 = swift_allocObject();
        v75 = v85;
        *(v74 + 16) = sub_26892DC18;
        *(v74 + 24) = v75;

        v76 = v80;
        sub_268B37164();
        sub_2688F4CD4();

        (*(v82 + 8))(v76, v83);
        (*(v71 + 8))(v72, v73);

        v51 = v86;
        goto LABEL_24;
      }

      v48 = v47;
    }

    else
    {
    }
  }

  v52 = [a1 device];
  if (v52)
  {
    v53 = v52;
    sub_268988574(v52);
    if (v54)
    {
    }

    else
    {
      sub_2689E1C9C(0x76745F656C707061, 0xE800000000000000, v53);
    }

    v58 = *(&v84->isa + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_deviceSelector);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_268B3BBA0;
    *(v59 + 32) = v53;
    v60 = swift_allocObject();
    v61 = v85;
    v60[2] = sub_26892DC18;
    v60[3] = v61;
    v60[4] = a1;

    v62 = v53;
    v63 = a1;
    sub_2688F6BEC();

    v51 = v86;
  }

  else
  {
    v55 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    if (sub_268B34D24())
    {
      type metadata accessor for WhatDidTheySayDeviceResolutionResult();
      v56 = sub_268B17B04(3);
      v57 = v86;
      v86[2](v86, v56);

      v51 = v57;
    }

    else
    {
      type metadata accessor for Device();
      sub_268B36C54();
      v64 = sub_268B36C24();
      LOBYTE(v77) = 0;
      sub_268983F14(v64, v65, 0, 0, 0, 0, 0, 0, 0, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87[0], v87[1]);
      v67 = v66;
      type metadata accessor for WhatDidTheySayDeviceResolutionResult();
      v68 = sub_268B2CC98(v67);
      v69 = v86;
      v86[2](v86, v68);

      v51 = v69;
    }
  }

LABEL_24:
  _Block_release(v51);
}

void sub_268A20034(unint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v4 = 1;
LABEL_9:
    v8 = sub_268B17B04(v4);
    goto LABEL_10;
  }

  if (!sub_2688EFD0C(a1))
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v4 = 3;
    goto LABEL_9;
  }

  if (sub_2688EFD0C(a1) == 1)
  {
    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v9 = sub_268B2CC98(v7);
    a3();

    goto LABEL_11;
  }

  type metadata accessor for WhatDidTheySayDeviceResolutionResult();
  v8 = sub_268B2CCFC(a1);
LABEL_10:
  v9 = v8;
  a3();
LABEL_11:
}

void sub_268A2014C(unint64_t a1, __int16 a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if ((a2 & 0x100) != 0)
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v12 = 1;
LABEL_12:
    v13 = sub_268B17B04(v12);
    goto LABEL_13;
  }

  if (!sub_2688EFD0C(a1))
  {
    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v12 = 2;
    goto LABEL_12;
  }

  if (sub_2688EFD0C(a1) == 1)
  {
    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    v9 = v8;
    v10 = sub_268B1F16C(a5);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    sub_268983D74(v11);

    type metadata accessor for WhatDidTheySayDeviceResolutionResult();
    v14 = sub_268B2CC98(v9);
    a3();

    goto LABEL_14;
  }

  type metadata accessor for WhatDidTheySayDeviceResolutionResult();
  v13 = sub_268B2CCFC(a1);
LABEL_13:
  v14 = v13;
  a3();
LABEL_14:
}

void sub_268A202B0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v24 = v5;
  v6 = sub_268B37A24();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v25 = v0;
  if (*&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_268B37FC4();
    swift_unknownObjectRelease();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  (*(v9 + 16))(v13, v15, v6);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = v18 + v11;
  v20 = v6;
  v21 = (v18 + v11) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handleWhatDidTheySayIntent";
  *(v22 + 24) = 26;
  *(v22 + 32) = 2;
  (*(v9 + 32))(v22 + v18, v13, v20);
  *(v22 + v19) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_268A20548(v24, v25, sub_268958A64, v22);

  (*(v9 + 8))(v15, v20);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A20548(void (*a1)(char *, uint64_t), char *a2, void (*a3)(void), uint64_t a4)
{
  v85 = a1;
  v7 = sub_268B34614();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v79 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v75 - v17;
  v18 = sub_268B37A54();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v81 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v77 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v75 - v25;
  v27 = swift_allocObject();
  v78 = a3;
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_268958D98;
  *(v28 + 24) = v27;
  v86 = v28;
  v29 = qword_2802A4F30;

  v87 = v27;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v18, qword_2802CDA10);
  v31 = v19[2];
  v82 = v30;
  v83 = v31;
  v84 = v19 + 2;
  (v31)(v26);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "Handling What did they say", v34, 2u);
    MEMORY[0x26D6266E0](v34, -1, -1);
  }

  v35 = v19[1];
  v35(v26, v18);
  v36 = v85;
  v37 = sub_2689EEF44(*&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_aceServiceHelper], 0);
  if (v38)
  {
    v39 = v38;
    v78 = v37;
    v40 = *__swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_analyticsService], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_analyticsService + 24]);
    sub_26894998C();
    v41 = [v36 startTime];
    if (v41)
    {
      v42 = v41;
      v43 = v79;
      sub_268B345D4();

      v44 = 0;
    }

    else
    {
      v44 = 1;
      v43 = v79;
    }

    __swift_storeEnumTagSinglePayload(v43, v44, 1, v7);
    v53 = v80;
    sub_2688EF3EC(v43, v80);
    if (__swift_getEnumTagSinglePayload(v53, 1, v7))
    {
      sub_2688C058C(v53, &unk_2802A7350, qword_268B3FF10);
      v54 = 15.0;
    }

    else
    {
      v55 = v8[2];
      v85 = v35;
      v56 = v75;
      v55(v75, v53, v7);
      sub_2688C058C(v53, &unk_2802A7350, qword_268B3FF10);
      v57 = v76;
      sub_268B34604();
      sub_268B345F4();
      v59 = v58;
      v60 = v8[1];
      v60(v57, v7);
      v61 = v56;
      v35 = v85;
      v60(v61, v7);
      v54 = v59 + 15.0;
    }

    v62 = v81;
    v83(v81, v82, v18);
    v63 = sub_268B37A34();
    v64 = sub_268B37ED4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = a2;
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = v54;
      _os_log_impl(&dword_2688BB000, v63, v64, "Calculated %f seconds as the duration to skip back", v66, 0xCu);
      v67 = v66;
      a2 = v65;
      MEMORY[0x26D6266E0](v67, -1, -1);
    }

    v35(v62, v18);
    v68 = *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], *&a2[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_268B3BBC0;
    v70 = v78;
    *(v69 + 32) = v78;
    *(v69 + 40) = v39;
    v71 = swift_allocObject();
    v72 = v86;
    v71[2] = sub_2688E19F8;
    v71[3] = v72;
    v71[4] = a2;
    v71[5] = v70;
    v71[6] = v39;

    v73 = a2;
    sub_268B36E64();
  }

  else
  {

    v45 = v77;
    v83(v77, v82, v18);
    v46 = sub_268B37A34();
    v47 = sub_268B37EE4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2688BB000, v46, v47, "Missing device in intent", v48, 2u);
      MEMORY[0x26D6266E0](v48, -1, -1);
    }

    v35(v45, v18);
    v49 = sub_268B36EA4();
    v50 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
    v51 = v49;
    v52 = WhatDidTheySayIntentResponse.init(code:userActivity:)(101, v49);
    v88 = v52;
    v78(&v88);
  }
}

void sub_268A20D5C(uint64_t a1, void (*a2)(void), uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v49 = a2;
  v50 = a3;
  v7 = sub_268B37A54();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7360, &qword_268B3F860);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - v13;
  v15 = sub_268B37144();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - v22;
  v48 = a1;
  sub_26893B66C(a1, &v43 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2688C058C(v23, &qword_2802A5DE8, &qword_268B3D790);
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v26 = v47;
    v27 = __swift_project_value_buffer(v47, qword_2802CDA10);
    v28 = v46;
    (*(v46 + 16))(v10, v27, v26);
    v29 = sub_268B37A34();
    v30 = sub_268B37EE4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2688BB000, v29, v30, "Error while performing rewind command", v31, 2u);
      MEMORY[0x26D6266E0](v31, -1, -1);
    }

    (*(v28 + 8))(v10, v26);
    v32 = sub_268B36ED4();
    v33 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
    v34 = v32;
    v35 = WhatDidTheySayIntentResponse.init(code:userActivity:)(102, v32);
    v25();
  }

  else
  {
    v36 = v43;
    v37 = *&v43[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24];
    v48 = *&v43[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 32];
    __swift_project_boxed_opaque_existential_1(&v43[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], v37);
    (*(v16 + 104))(v19, *MEMORY[0x277D5F7D8], v15);
    v38 = sub_268B37704();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = v49;
    v39[3] = v50;
    v39[4] = v36;
    v41 = v44;
    v40 = v45;
    v39[5] = v44;
    v39[6] = v40;

    v42 = v36;

    sub_268973E68(v19, v41, v40, v14, sub_268A23940, v39, v37, v48);

    sub_2688C058C(v14, &unk_2802A7360, &qword_268B3F860);
    (*(v16 + 8))(v19, v15);
  }
}

void sub_268A211F8(char *a1, char a2, void (*a3)(void), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v119 = a6;
  v120 = a7;
  v122 = a5;
  v123 = a1;
  v124 = a3;
  v125 = a4;
  v8 = sub_268B37144();
  v117 = *(v8 - 8);
  v118 = v8;
  v9 = *(v117 + 64);
  MEMORY[0x28223BE20](v8);
  v116 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6550, &qword_268B3F880);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v110 - v13;
  v121 = sub_268B372A4();
  v115 = *(v121 - 8);
  v15 = v115[8];
  v16 = MEMORY[0x28223BE20](v121);
  v114 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v110 - v18;
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v110 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v110 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v110 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v110 - v34;
  MEMORY[0x28223BE20](v33);
  v38 = &v110 - v37;
  switch(a2)
  {
    case 1:
      v70 = v36;
      sub_2689A9A74(v123, v14);
      v71 = v121;
      v72 = v21;
      if (__swift_getEnumTagSinglePayload(v14, 1, v121) == 1)
      {
        sub_2688C058C(v14, &qword_2802A6550, &qword_268B3F880);
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v73 = __swift_project_value_buffer(v20, qword_2802CDA10);
        (*(v21 + 16))(v26, v73, v20);
        v74 = v123;

        v75 = sub_268B37A34();
        v76 = sub_268B37EE4();
        sub_268A23950(v74, 1u);
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v126[0] = v78;
          *v77 = 136446210;
          v79 = MEMORY[0x26D6256F0](v74, v71);
          v81 = sub_26892CDB8(v79, v80, v126);

          *(v77 + 4) = v81;
          _os_log_impl(&dword_2688BB000, v75, v76, "Failed to retrieve first matched language from matchingLanguageOptions: %{public}s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          MEMORY[0x26D6266E0](v78, -1, -1);
          MEMORY[0x26D6266E0](v77, -1, -1);
        }

        (*(v72 + 8))(v26, v20);
        goto LABEL_28;
      }

      v83 = v115;
      (v115[4])(v19, v14, v71);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v84 = __swift_project_value_buffer(v20, qword_2802CDA10);
      (*(v21 + 16))(v70, v84, v20);
      v85 = v83[2];
      v86 = v114;
      v123 = v19;
      v85(v114, v19, v71);
      v87 = sub_268B37A34();
      v88 = sub_268B37ED4();
      v89 = v20;
      v90 = v72;
      if (os_log_type_enabled(v87, v88))
      {
        v91 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v126[0] = v111;
        *v91 = 136315138;
        sub_268A239EC(&qword_2802A7370, MEMORY[0x277D5F818]);
        v112 = v89;
        v92 = sub_268B38404();
        v94 = v93;
        v95 = v83[1];
        v113 = (v83 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v115 = v95;
        (v95)(v86, v71);
        v96 = sub_26892CDB8(v92, v94, v126);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_2688BB000, v87, v88, "Auto selected %s", v91, 0xCu);
        v97 = v111;
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        MEMORY[0x26D6266E0](v97, -1, -1);
        MEMORY[0x26D6266E0](v91, -1, -1);

        (*(v90 + 8))(v70, v112);
      }

      else
      {

        v98 = v83[1];
        v113 = (v83 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v115 = v98;
        (v98)(v86, v71);
        (*(v72 + 8))(v70, v89);
      }

      v99 = v122;
      v100 = *&v122[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 32];
      v114 = *&v122[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24];
      v111 = v100;
      v112 = __swift_project_boxed_opaque_existential_1(&v122[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], v114);
      sub_268B37214();
      v101 = v116;
      v102 = v117;
      v103 = v118;
      (*(v117 + 104))(v116, *MEMORY[0x277D5F7D8], v118);
      v104 = swift_allocObject();
      v106 = v119;
      v105 = v120;
      v104[2] = v99;
      v104[3] = v106;
      v107 = v124;
      v108 = v125;
      v104[4] = v105;
      v104[5] = v107;
      v104[6] = v108;
      v109 = v99;

      sub_268B36D34();

      (*(v102 + 8))(v101, v103);
      (v115)(v123, v121);
      return;
    case 2:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v20, qword_2802CDA10);
      (*(v21 + 16))(v38, v47, v20);
      v48 = v123;
      v49 = v123;
      v50 = sub_268B37A34();
      v51 = sub_268B37EE4();
      sub_268A23950(v48, 2u);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v126[0] = v53;
        *v52 = 136446210;
        swift_getErrorValue();
        v54 = sub_268B384A4();
        v56 = sub_26892CDB8(v54, v55, v126);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_2688BB000, v50, v51, "Error getting matching subtitle options: %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x26D6266E0](v53, -1, -1);
        MEMORY[0x26D6266E0](v52, -1, -1);
      }

      (*(v21 + 8))(v38, v20);
LABEL_28:
      v43 = sub_268B36EA4();
      v82 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
      v45 = v43;
      v46 = 103;
      goto LABEL_29;
    case 3:
      v57 = v21;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v58 = __swift_project_value_buffer(v20, qword_2802CDA10);
      v59 = *(v57 + 16);
      v59(v32, v58, v20);
      v60 = sub_268B37A34();
      v61 = sub_268B37ED4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2688BB000, v60, v61, "Skipping language change due to already enabled language", v62, 2u);
        MEMORY[0x26D6266E0](v62, -1, -1);
      }

      v63 = *(v57 + 8);
      v63(v32, v20);
      v64 = v122[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled];
      if (v64 != 2 && (v64 & 1) != 0)
      {
        v59(v29, v58, v20);
        v65 = sub_268B37A34();
        v66 = sub_268B37ED4();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_2688BB000, v65, v66, "Subtitles previously disabled, triggering delayed disable", v67, 2u);
          MEMORY[0x26D6266E0](v67, -1, -1);
        }

        v63(v29, v20);
        sub_268A22248();
      }

      v68 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
      v69 = WhatDidTheySayIntentResponse.init(code:userActivity:)(4, 0);
      v124();
      goto LABEL_30;
    default:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v20, qword_2802CDA10);
      (*(v21 + 16))(v35, v39, v20);
      v40 = sub_268B37A34();
      v41 = sub_268B37EE4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2688BB000, v40, v41, "Error getting matching subtitle options. All available languages returned", v42, 2u);
        MEMORY[0x26D6266E0](v42, -1, -1);
      }

      (*(v21 + 8))(v35, v20);
      v43 = sub_268B36EA4();
      v44 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
      v45 = v43;
      v46 = 104;
LABEL_29:
      v69 = WhatDidTheySayIntentResponse.init(code:userActivity:)(v46, v43);
      v124();

LABEL_30:
      return;
  }
}

void sub_268A21F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled) = 1;
  sub_268A22248();
  v7 = sub_268A23304(a1);
  v8 = sub_268B36ED4();
  v9 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
  v10 = v8;
  v11 = WhatDidTheySayIntentResponse.init(code:userActivity:)(v7, v8);
  a5();
}

void sub_268A220C4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
  v5 = WhatDidTheySayIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268A22130(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for WhatDidTheySayIntentResponse());
  v4 = WhatDidTheySayIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268A221BC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268A22248()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v77 = v2;
  v75 = v3;
  v4 = sub_268B37AB4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v81 = v6;
  v82 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v79 = v10 - v9;
  OUTLINED_FUNCTION_9();
  v80 = sub_268B37B14();
  v11 = OUTLINED_FUNCTION_1(v80);
  v78 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v76 = v16 - v15;
  OUTLINED_FUNCTION_9();
  v17 = sub_268B37AA4();
  v18 = OUTLINED_FUNCTION_1(v17);
  v90 = v19;
  v91 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v89 = (v22 - v23);
  MEMORY[0x28223BE20](v24);
  v87 = (&v74 - v25);
  OUTLINED_FUNCTION_9();
  v94 = sub_268B37B34();
  v26 = OUTLINED_FUNCTION_1(v94);
  v88 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  v86 = v30 - v31;
  MEMORY[0x28223BE20](v32);
  v93 = &v74 - v33;
  OUTLINED_FUNCTION_9();
  v34 = sub_268B37F94();
  v35 = OUTLINED_FUNCTION_1(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  v42 = v41 - v40;
  v43 = OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion;
  if (!*&v0[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion])
  {
    v44 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_268B3BBA0;
    sub_2688EA03C(0, &qword_2802A7310, 0x277D46E38);
    *(v45 + 32) = sub_268A22A24();
    v46 = objc_allocWithZone(MEMORY[0x277D46DB8]);
    v47 = sub_268A23598(0xD000000000000017, 0x8000000268B5ABA0, v44);
    v48 = *&v0[v43];
    *&v0[v43] = v47;
  }

  v92 = v43;
  sub_2688EA03C(0, &qword_2802A7318, 0x277D85CA0);
  sub_2688EA03C(0, &qword_2802A7320, 0x277D85C78);
  v49 = sub_268B37F54();
  v95 = MEMORY[0x277D84F90];
  sub_268A239EC(&qword_2802A7328, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7330, &unk_268B44730);
  sub_2688C3054(&unk_2802A7338, &qword_2802A7330, &unk_268B44730);
  sub_268B38124();
  v50 = sub_268B37FA4();

  (*(v37 + 8))(v42, v34);
  v84 = OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer;
  v85 = v1;
  v51 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer];
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer] = v50;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v52 = v86;
  sub_268B37B24();
  v53 = v87;
  *v87 = 15;
  v54 = v90;
  v55 = v91;
  v56 = *(v90 + 104);
  v56(v53, *MEMORY[0x277D85188], v91);
  MEMORY[0x26D625530](v52, v53);
  v57 = *(v54 + 8);
  v57(v53, v55);
  v58 = *(v88 + 8);
  v58(v52, v94);
  v56(v53, *MEMORY[0x277D85180], v55);
  v59 = v89;
  *v89 = 100;
  v56(v59, *MEMORY[0x277D85178], v55);
  v60 = v93;
  MEMORY[0x26D625A20](v93, v53, v59, ObjectType);
  swift_unknownObjectRelease();
  v57(v59, v55);
  v57(v53, v55);
  v61 = v84;
  v58(v60, v94);
  v62 = v85;
  if (*&v85[v61])
  {
    v63 = *&v85[v61];
    swift_getObjectType();
    OUTLINED_FUNCTION_220();
    v64 = swift_allocObject();
    v65 = v75;
    v64[2] = v62;
    v64[3] = v65;
    v64[4] = v77;
    v99 = sub_268A23828;
    v100 = v64;
    OUTLINED_FUNCTION_3_32();
    v96 = 1107296256;
    v97 = sub_268A0B300;
    v98 = &block_descriptor_7;
    v66 = _Block_copy(&v95);
    swift_unknownObjectRetain();
    v67 = v62;

    v68 = v76;
    sub_268B37AE4();
    v69 = v79;
    sub_268A22EEC();
    sub_268B37FB4();
    _Block_release(v66);
    swift_unknownObjectRelease();
    (*(v81 + 8))(v69, v82);
    (*(v78 + 8))(v68, v80);

    if (*&v62[v61])
    {
      v70 = *&v62[v61];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_268B37FD4();
      swift_unknownObjectRelease();
    }
  }

  v71 = *&v62[v92];
  if (v71)
  {
    v72 = v71;
    if (([v72 isValid] & 1) == 0)
    {
      v99 = sub_268A22FC4;
      v100 = 0;
      OUTLINED_FUNCTION_3_32();
      v96 = 1107296256;
      v97 = sub_2689D0988;
      v98 = &block_descriptor_30;
      v73 = _Block_copy(&v95);
      [v72 acquireWithInvalidationHandler_];
      _Block_release(v73);
    }
  }

  OUTLINED_FUNCTION_23();
}

id sub_268A22A24()
{
  v0 = sub_268B37BC4();

  v1 = sub_268B37BC4();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_268A22AB8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer];
  *&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_timer] = 0;
  swift_unknownObjectRelease();
  v3 = *&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController], *&a1[OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_playbackController + 24]);
  *(swift_allocObject() + 16) = a1;
  v4 = a1;
  sub_268B36D14();
}

void sub_268A22B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  sub_26893B66C(a1, &v26 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v9, v16, v4);
    v17 = sub_268B37A34();
    v18 = sub_268B37EE4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "Error disabling subtitles for 'What did they say' request", v19, 2u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    sub_2688C058C(v15, &qword_2802A5DE8, &qword_268B3D790);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v11, v20, v4);
    v21 = sub_268B37A34();
    v22 = sub_268B37EC4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "Successfully disabled subtitles for 'What did they say' request", v23, 2u);
      MEMORY[0x26D6266E0](v23, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  v24 = OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion;
  [*(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_assertion) invalidate];
  v25 = *(a2 + v24);
  *(a2 + v24) = 0;

  *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents27WhatDidTheySayIntentHandler_initialSubtitleStateDisabled) = 2;
}

uint64_t sub_268A22EEC()
{
  sub_268B37AB4();
  sub_268A239EC(&unk_2802A7010, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  return sub_268B38124();
}

uint64_t sub_268A22FC4(uint64_t a1, void *a2)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  if (a2)
  {
    v11 = a2;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
    (*(v4 + 16))(v8, v12, v3);
    v13 = a2;
    v14 = sub_268B37A34();
    v15 = sub_268B37EE4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_268B384A4();
      v20 = sub_26892CDB8(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2688BB000, v14, v15, "Error acquiring assertion %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x26D6266E0](v17, -1, -1);
      MEMORY[0x26D6266E0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v8, v3);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v3, qword_2802CDA10);
    (*(v4 + 16))(v10, v21, v3);
    v22 = sub_268B37A34();
    v23 = sub_268B37EC4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "Acquired RB assertion", v24, 2u);
      MEMORY[0x26D6266E0](v24, -1, -1);
    }

    return (*(v4 + 8))(v10, v3);
  }
}

uint64_t sub_268A23304(uint64_t a1)
{
  v2 = sub_268B36F24();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  sub_26893B66C(a1, &v22 - v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 4;
  }

  (*(v5 + 32))(v13, v19, v2);
  sub_268B36EC4();
  v20 = *(v5 + 8);
  v20(v10, v2);
  v20(v13, v2);
  return 5;
}

id WhatDidTheySayIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WhatDidTheySayIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_268A23598(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_268B37BC4();

  sub_2688EA03C(0, &qword_2802A7348, 0x277D46DD8);
  v6 = sub_268B37CE4();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

uint64_t sub_268A23648()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268A2368C()
{
  v1 = sub_268B37A24();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268A237EC()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268A23828()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_268A22AB8(*(v0 + 16));
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A2384C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268A2388C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_55Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_268A23950(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_268A23974()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268A239EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PlaybackControlsAceOutputHelper.makeAceCompletionOutput(intent:template:nlContext:deviceState:snippetAceViews:additionalCommands:setsRequestEndBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v19[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v19 - v12;
  if (a7 & 1) != 0 && (sub_2689F0948())
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v15 = sub_268B38064();
    [v14 setMinimumAutoDismissalTimeInMs_];

    [v14 setPremptivelyResumeMedia_];
  }

  else
  {
    v14 = 0;
  }

  v16 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_268B34CA4();
  v17 = sub_268B35044();
  (*(*(v17 - 8) + 16))(v13, a3, v17);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_268B34EF4();

  sub_2688EF38C(v20, &unk_2802A5800, &unk_268B3CE10);
  return sub_2688EF38C(v13, &qword_2802A57F0, &qword_268B3DDB0);
}

_BYTE *storeEnumTagSinglePayload for PlaybackControlsAceOutputHelper(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x268A23D60);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A23D98()
{
  OUTLINED_FUNCTION_197();
  v2 = OUTLINED_FUNCTION_25_11();
  v55 = OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v6 = MEMORY[0x28223BE20](v5);
  v14 = OUTLINED_FUNCTION_17_17(v6, v7, v8, v9, v10, v11, v12, v13, v54);
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v19);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(42, v20);
    v21 = *MEMORY[0x277D5C150];
    v22 = OUTLINED_FUNCTION_15_17();
    v23(v22);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_5_15();
    v25(v24);
    v26 = OUTLINED_FUNCTION_8_17();
    v1(v26);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v28))
    {
      v29 = OUTLINED_FUNCTION_172_0();
      v30 = OUTLINED_FUNCTION_22_11(v29);
      OUTLINED_FUNCTION_48_6(v30);
      v31 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v31);
      OUTLINED_FUNCTION_56_4();
      v32 = OUTLINED_FUNCTION_3_33();
      v33(v32);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v34, v35, "Transformer#quickStopToAlarmTransformer Reformed parse to stop alarm DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v36 = OUTLINED_FUNCTION_11_22();
      v37(v36);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v49();
      v50 = OUTLINED_FUNCTION_11_22();
      v51(v50);
      OUTLINED_FUNCTION_50_5();
    }

    v52 = OUTLINED_FUNCTION_29_10();
    v53(v52);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v38 = OUTLINED_FUNCTION_6_28();
    v39(v38);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v42);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v43, v44, "Transformer#quickStopToAlarmTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v45 = OUTLINED_FUNCTION_30_12();
    v46(v45);
    v47 = OUTLINED_FUNCTION_14_16();
    v48(v47);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A240C0()
{
  OUTLINED_FUNCTION_197();
  v2 = OUTLINED_FUNCTION_25_11();
  v55 = OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v6 = MEMORY[0x28223BE20](v5);
  v14 = OUTLINED_FUNCTION_17_17(v6, v7, v8, v9, v10, v11, v12, v13, v54);
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v19);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(42, v20);
    v21 = *MEMORY[0x277D5C150];
    v22 = OUTLINED_FUNCTION_15_17();
    v23(v22);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_5_15();
    v25(v24);
    v26 = OUTLINED_FUNCTION_8_17();
    v1(v26);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v28))
    {
      v29 = OUTLINED_FUNCTION_172_0();
      v30 = OUTLINED_FUNCTION_22_11(v29);
      OUTLINED_FUNCTION_48_6(v30);
      v31 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v31);
      OUTLINED_FUNCTION_56_4();
      v32 = OUTLINED_FUNCTION_3_33();
      v33(v32);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v34, v35, "Transformer#quickStopToTimerTransformer Reformed parse to stop timer DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v36 = OUTLINED_FUNCTION_11_22();
      v37(v36);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v49();
      v50 = OUTLINED_FUNCTION_11_22();
      v51(v50);
      OUTLINED_FUNCTION_50_5();
    }

    v52 = OUTLINED_FUNCTION_29_10();
    v53(v52);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v38 = OUTLINED_FUNCTION_6_28();
    v39(v38);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v42);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v43, v44, "Transformer#quickStopToTimerTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v45 = OUTLINED_FUNCTION_30_12();
    v46(v45);
    v47 = OUTLINED_FUNCTION_14_16();
    v48(v47);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A243E8()
{
  OUTLINED_FUNCTION_197();
  v2 = OUTLINED_FUNCTION_25_11();
  v55 = OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v6 = MEMORY[0x28223BE20](v5);
  v14 = OUTLINED_FUNCTION_17_17(v6, v7, v8, v9, v10, v11, v12, v13, v54);
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v19);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(54, v20);
    v21 = *MEMORY[0x277D5C150];
    v22 = OUTLINED_FUNCTION_15_17();
    v23(v22);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_5_15();
    v25(v24);
    v26 = OUTLINED_FUNCTION_8_17();
    v1(v26);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v28))
    {
      v29 = OUTLINED_FUNCTION_172_0();
      v30 = OUTLINED_FUNCTION_22_11(v29);
      OUTLINED_FUNCTION_48_6(v30);
      v31 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v31);
      OUTLINED_FUNCTION_56_4();
      v32 = OUTLINED_FUNCTION_3_33();
      v33(v32);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v34, v35, "Transformer#quickStopToHomeAnnouncementTransformer Reformed parse to stop home announcement DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v36 = OUTLINED_FUNCTION_11_22();
      v37(v36);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v49();
      v50 = OUTLINED_FUNCTION_11_22();
      v51(v50);
      OUTLINED_FUNCTION_50_5();
    }

    v52 = OUTLINED_FUNCTION_29_10();
    v53(v52);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v38 = OUTLINED_FUNCTION_6_28();
    v39(v38);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v42);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v43, v44, "Transformer#quickStopToHomeAnnouncementTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v45 = OUTLINED_FUNCTION_30_12();
    v46(v45);
    v47 = OUTLINED_FUNCTION_14_16();
    v48(v47);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A24710()
{
  OUTLINED_FUNCTION_197();
  v2 = OUTLINED_FUNCTION_25_11();
  v55 = OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_15();
  v6 = MEMORY[0x28223BE20](v5);
  v14 = OUTLINED_FUNCTION_17_17(v6, v7, v8, v9, v10, v11, v12, v13, v54);
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v19);
  if (OUTLINED_FUNCTION_23_13())
  {
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_54_3(44, v20);
    v21 = *MEMORY[0x277D5C150];
    v22 = OUTLINED_FUNCTION_15_17();
    v23(v22);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_5_15();
    v25(v24);
    v26 = OUTLINED_FUNCTION_8_17();
    v1(v26);
    v27 = sub_268B37A34();
    v28 = sub_268B37F04();
    if (OUTLINED_FUNCTION_37_11(v28))
    {
      v29 = OUTLINED_FUNCTION_172_0();
      v30 = OUTLINED_FUNCTION_22_11(v29);
      OUTLINED_FUNCTION_48_6(v30);
      v31 = OUTLINED_FUNCTION_7_20(4.8149e-34);
      v1(v31);
      OUTLINED_FUNCTION_56_4();
      v32 = OUTLINED_FUNCTION_3_33();
      v33(v32);
      OUTLINED_FUNCTION_35_9();
      OUTLINED_FUNCTION_55_4();
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_16_22(&dword_2688BB000, v34, v35, "Transformer#quickStopToPhoneTransformer Reformed parse to hang up DirectInvocation: %s");
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_12();

      v36 = OUTLINED_FUNCTION_11_22();
      v37(v36);
      OUTLINED_FUNCTION_51_4();
    }

    else
    {

      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_49_4();
      v49();
      v50 = OUTLINED_FUNCTION_11_22();
      v51(v50);
      OUTLINED_FUNCTION_50_5();
    }

    v52 = OUTLINED_FUNCTION_29_10();
    v53(v52);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v55, qword_2802CDA10);
    v38 = OUTLINED_FUNCTION_6_28();
    v39(v38);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31_12(v42);
      OUTLINED_FUNCTION_24_12(&dword_2688BB000, v43, v44, "Transformer#quickStopToPhoneTransformer Task is not a valid QuickStop task, returning untransformed parse");
      OUTLINED_FUNCTION_18_12();
    }

    v45 = OUTLINED_FUNCTION_30_12();
    v46(v45);
    v47 = OUTLINED_FUNCTION_14_16();
    v48(v47);
  }

  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268A24A38()
{
  OUTLINED_FUNCTION_197();
  v212 = v0;
  v2 = v1;
  v214 = v3;
  v227 = sub_268B37034();
  v4 = OUTLINED_FUNCTION_1(v227);
  *&v217 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v222 = v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *&v228 = v202 - v11;
  v12 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v12);
  v216 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v23);
  v231 = v202 - v24;
  v207 = type metadata accessor for MediaPlayerNLv3Intent();
  v25 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_20_0();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v202 - v30;
  v32 = sub_268B35494();
  v33 = OUTLINED_FUNCTION_1(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v39 = v202 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_268B366C4();
  v40 = OUTLINED_FUNCTION_1(v209);
  v208 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v45);
  v47 = v202 - v46;
  v48 = *(v35 + 16);
  v215 = v2;
  v211 = (v35 + 16);
  v210 = v48;
  (v48)(v39, v2, v32);
  v49 = (*(v35 + 88))(v39, v32);
  v50 = *MEMORY[0x277D5C128];
  v213 = v32;
  if (v49 == v50)
  {
    v51 = OUTLINED_FUNCTION_34_8();
    v52(v51, v32);
  }

  else
  {
    if (v49 != *MEMORY[0x277D5C158])
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_79;
      }

      goto LABEL_61;
    }

    v53 = OUTLINED_FUNCTION_34_8();
    v54(v53, v213);
    v55 = *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940) + 48)];
  }

  v204 = v35;
  v56 = v208 + 32;
  v57 = *(v208 + 32);
  v58 = v209;
  v57(v47, v39, v209);
  v202[1] = v56;
  v202[0] = v57;
  v57(v31, v47, v58);
  if (qword_2802A4F30 != -1)
  {
LABEL_77:
    OUTLINED_FUNCTION_0_0();
  }

  v59 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v60 = v216;
  v61 = *(v216 + 16);
  v224 = v59;
  v226 = v216 + 16;
  v225 = v61;
  v61(v231);
  sub_268A25E80(v31, v28);
  v62 = sub_268B37A34();
  v63 = sub_268B37EC4();
  v64 = os_log_type_enabled(v62, v63);
  v219 = v31;
  v65 = v221;
  if (v64)
  {
    v66 = OUTLINED_FUNCTION_172_0();
    v229 = OUTLINED_FUNCTION_173_0();
    v67 = v229;
    *v66 = 136315138;
    v68 = sub_268B366A4();
    v69 = v28;
    v71 = v70;
    sub_268A25EE4(v69);
    v72 = sub_26892CDB8(v68, v71, &v229);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_2688BB000, v62, v63, "Transformer#homeAutomationNLV3Transformer MediaPlayerNLv3Intent %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    v65 = v221;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    sub_268A25EE4(v28);
  }

  v223 = *(v60 + 8);
  v223(v231, v12);
  v31 = v228;
  v35 = *(v215 + *(type metadata accessor for DevicesWithParse() + 20));
  OUTLINED_FUNCTION_1_40();
  v73();

  v74 = sub_268B37A34();
  v75 = sub_268B37EC4();

  v76 = os_log_type_enabled(v74, v75);
  v220 = v12;
  v77 = v227;
  v231 = v35;
  if (v76)
  {
    v78 = OUTLINED_FUNCTION_172_0();
    v229 = OUTLINED_FUNCTION_173_0();
    v79 = v229;
    *v78 = 136315138;
    v80 = type metadata accessor for Device();
    v81 = MEMORY[0x26D625710](v35, v80);
    v83 = sub_26892CDB8(v81, v82, &v229);

    *(v78 + 4) = v83;
    v35 = v231;
    _os_log_impl(&dword_2688BB000, v74, v75, "Transformer#homeAutomationNLV3Transformer Devices: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    OUTLINED_FUNCTION_9_15();
    v84 = v65;
    v85 = v220;
  }

  else
  {

    OUTLINED_FUNCTION_9_15();
    v84 = v65;
    v85 = v12;
  }

  v223(v84, v85);
  v86 = v217;
  v229 = MEMORY[0x277D84F90];
  v28 = sub_2688EFD0C(v35);
  v87 = 0;
  v12 = v35 & 0xC000000000000001;
  v88 = v35 & 0xFFFFFFFFFFFFFF8;
  v221 = (v86 + 16);
  v89 = (v86 + 8);
  while (v28 != v87)
  {
    if (v12)
    {
      v90 = MEMORY[0x26D625BD0](v87, v35);
    }

    else
    {
      if (v87 >= *(v88 + 16))
      {
        goto LABEL_76;
      }

      v90 = *(v35 + 8 * v87 + 32);
    }

    v91 = v90;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    Device.deviceType.getter(v31);
    if (__swift_getEnumTagSinglePayload(v31, 1, v77))
    {
      sub_268A25F8C(v31);
LABEL_21:
      sub_268B38214();
      v94 = v229[2];
      sub_268B38244();
      v77 = v227;
      sub_268B38254();
      sub_268B38224();
      goto LABEL_22;
    }

    v92 = v222;
    (*v221)(v222, v31, v77);
    sub_268A25F8C(v31);
    v93 = sub_268B36FF4();
    (*v89)(v92, v77);
    if (v93)
    {
      goto LABEL_21;
    }

LABEL_22:
    ++v87;
    v31 = v228;
    v35 = v231;
  }

  *&v228 = v229;
  v95 = sub_2688EFD0C(v229);
  if (!v95)
  {
    v99 = MEMORY[0x277D84F90];
    v97 = v219;
    goto LABEL_44;
  }

  v39 = v95;
  v12 = v220;
  v97 = v219;
  if (v95 >= 1)
  {
    v98 = 0;
    v232 = v228 & 0xC000000000000001;
    v222 = (v216 + 8);
    v99 = MEMORY[0x277D84F90];
    *&v96 = 136315138;
    v217 = v96;
    v100 = v218;
    v227 = v95;
    do
    {
      if (v232)
      {
        v101 = MEMORY[0x26D625BD0](v98, v228);
      }

      else
      {
        v101 = *(v228 + 8 * v98 + 32);
      }

      v102 = v101;
      sub_268988574(v101);
      v103 = sub_268B382F4();

      if (v103)
      {
        OUTLINED_FUNCTION_1_40();
        v104();
        v105 = v102;
        v106 = sub_268B37A34();
        v107 = sub_268B37EE4();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = OUTLINED_FUNCTION_172_0();
          v221 = OUTLINED_FUNCTION_173_0();
          v229 = v221;
          *v108 = v217;
          v109 = [v105 debugDescription];
          v110 = v99;
          v111 = sub_268B37BF4();
          v113 = v112;

          v114 = v111;
          v99 = v110;
          v115 = sub_26892CDB8(v114, v113, &v229);
          v97 = v219;

          *(v108 + 4) = v115;
          v100 = v218;
          _os_log_impl(&dword_2688BB000, v106, v107, "Transformer#homeAutomationNLV3Transformer no accessory type found in native matter devices %s", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v221);
          OUTLINED_FUNCTION_12();
          v12 = v220;
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        v223(v100, v12);
        v39 = v227;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = *(v99 + 16);
          sub_268987F00();
          v99 = v119;
        }

        v116 = *(v99 + 16);
        v117 = v116 + 1;
        if (v116 >= *(v99 + 24) >> 1)
        {
          sub_268987F00();
          v99 = v120;
        }

        *(v99 + 16) = v117;
      }

      ++v98;
    }

    while (v39 != v98);
LABEL_44:

    if (qword_2802A5038 != -1)
    {
      swift_once();
    }

    sub_268A25FF4();
    sub_268B35C64();
    v121 = v229;
    if (v229 == 24)
    {

      OUTLINED_FUNCTION_1_40();
      v122();
      v123 = sub_268B37A34();
      v124 = sub_268B37EE4();
      if (os_log_type_enabled(v123, v124))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v125, v126, "Transformer#homeAutomationNLV3Transformer unable to unwrap mediaPlayerIntent verb, returning parse");
        OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_19_14();
      v127();
      sub_268A25EE4(v97);
      OUTLINED_FUNCTION_41_4();
      v129 = *(v128 - 256);
      OUTLINED_FUNCTION_32_9();
      v130();
      OUTLINED_FUNCTION_42_8();
      goto LABEL_72;
    }

    sub_268946620();
    v131 = sub_268B37B84();
    if (*(v131 + 16) && (v132 = sub_268A75C50(v121), (v133 & 1) != 0))
    {
      v134 = *(*(v131 + 56) + v132);

      v135 = sub_268B37B84();
      if (*(v135 + 16))
      {
        v136 = sub_268A75C50(v121);
        if (v137)
        {
          v138 = *(*(v135 + 56) + v136);

          type metadata accessor for HomeAutomationNLV3Intent.Builder();
          swift_initStackObject();
          sub_268A78490();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
          inited = swift_initStackObject();
          v228 = xmmword_268B3BBC0;
          *(inited + 16) = xmmword_268B3BBC0;
          if (qword_2802A4DA0 != -1)
          {
            swift_once();
          }

          sub_268B35C64();
          v140 = v229;
          v141 = v230;
          if (!v230)
          {
            v140 = 0;
            v141 = 0xE000000000000000;
          }

          *(inited + 32) = v140;
          *(inited + 40) = v141;
          sub_268A78ACC();

          swift_setDeallocating();
          sub_268ACE684();
          sub_268A78B90(v99);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7378, qword_268B447E8);
          v142 = swift_initStackObject();
          *(v142 + 16) = v228;
          *(v142 + 32) = v134;
          v143 = sub_268A78D74();

          swift_setDeallocating();
          LOBYTE(v229) = v138;
          v144 = v206;
          sub_268A78F28();
          OUTLINED_FUNCTION_1_40();
          v145();
          v146 = v208;
          v147 = v205;
          v148 = v209;
          (*(v208 + 16))(v205, v144, v209);
          v149 = sub_268B37A34();
          v150 = sub_268B37EC4();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = OUTLINED_FUNCTION_172_0();
            v152 = OUTLINED_FUNCTION_173_0();
            *&v228 = v143;
            v153 = v152;
            v229 = v152;
            *v151 = 136315138;
            v154 = sub_268B366A4();
            v155 = v147;
            v157 = v156;
            (*(v146 + 8))(v155, v209);
            v158 = sub_26892CDB8(v154, v157, &v229);

            *(v151 + 4) = v158;
            _os_log_impl(&dword_2688BB000, v149, v150, "Transformer#homeAutomationNLV3Transformer final homeAutomationNLIntent: %s", v151, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v153);
            OUTLINED_FUNCTION_12();
            v148 = v209;
            OUTLINED_FUNCTION_12();
          }

          else
          {

            (*(v146 + 8))(v147, v148);
          }

          OUTLINED_FUNCTION_9_15();
          OUTLINED_FUNCTION_19_14();
          v198();
          sub_268A25EE4(v219);
          OUTLINED_FUNCTION_42_8();
          v199 = v213;
          v200 = v204;
          v201 = v214;
          (v202[0])(v214, v206, v148);
          (*(v200 + 104))(v201, v203, v199);
          goto LABEL_72;
        }
      }

      OUTLINED_FUNCTION_1_40();
      v187();
      v188 = sub_268B37A34();
      v189 = sub_268B37EE4();
      if (os_log_type_enabled(v188, v189))
      {
        v190 = OUTLINED_FUNCTION_172_0();
        v191 = OUTLINED_FUNCTION_173_0();
        v229 = v191;
        *v190 = 136315138;
        v192 = sub_26893E3F8(v121);
        v194 = sub_26892CDB8(v192, v193, &v229);

        *(v190 + 4) = v194;
        OUTLINED_FUNCTION_52_7(&dword_2688BB000, v195, v196, "Transformer#homeAutomationNLV3Transformer no mapped HomeAutomationVerb for this verb %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v191);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_19_14();
      v197();
      sub_268A25EE4(v219);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_32_9();
      v183 = v214;
      v184 = v215;
      v185 = v213;
    }

    else
    {

      OUTLINED_FUNCTION_1_40();
      v167();
      v168 = sub_268B37A34();
      v169 = sub_268B37EE4();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = OUTLINED_FUNCTION_172_0();
        v171 = OUTLINED_FUNCTION_173_0();
        v229 = v171;
        *v170 = 136315138;
        v172 = sub_26893E3F8(v121);
        v174 = v97;
        v175 = sub_26892CDB8(v172, v173, &v229);

        *(v170 + 4) = v175;
        OUTLINED_FUNCTION_52_7(&dword_2688BB000, v176, v177, "Transformer#homeAutomationNLV3Transformer no mapped HomeAutomationState for this verb %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v171);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();

        OUTLINED_FUNCTION_9_15();
        OUTLINED_FUNCTION_19_14();
        v178();
        v179 = v174;
      }

      else
      {

        OUTLINED_FUNCTION_9_15();
        OUTLINED_FUNCTION_19_14();
        v180();
        v179 = v97;
      }

      sub_268A25EE4(v179);
      OUTLINED_FUNCTION_42_8();
      OUTLINED_FUNCTION_41_4();
      v182 = *(v181 - 256);
      OUTLINED_FUNCTION_32_9();
    }

    v186(v183, v184, v185);
    goto LABEL_72;
  }

  __break(1u);
LABEL_79:
  OUTLINED_FUNCTION_0_0();
LABEL_61:
  v159 = __swift_project_value_buffer(v12, qword_2802CDA10);
  (*(v216 + 16))(v226, v159, v12);
  v160 = sub_268B37A34();
  v161 = sub_268B37EE4();
  os_log_type_enabled(v160, v161);
  OUTLINED_FUNCTION_42_8();
  if (v162)
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_23_4(&dword_2688BB000, v163, v164, "Transformer#homeAutomationNLV3Transformer Parse doesn't contain an NLv3 intent, returning untransformed parse");
    OUTLINED_FUNCTION_6();
  }

  (*(v216 + 8))(v226, v12);
  OUTLINED_FUNCTION_41_4();
  v166 = *(v165 - 256);
  v210();
  (*(v35 + 8))(v39, v166);
LABEL_72:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A25E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerNLv3Intent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268A25EE4(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerNLv3Intent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DevicesWithParse()
{
  result = qword_2802A7380;
  if (!qword_2802A7380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A25F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A25FF4()
{
  result = qword_2802A5A98;
  if (!qword_2802A5A98)
  {
    type metadata accessor for MediaPlayerNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5A98);
  }

  return result;
}

uint64_t sub_268A26060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268B35494();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_268A26120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268B35494();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_268A261C8()
{
  sub_268B35494();
  if (v0 <= 0x3F)
  {
    sub_268A2624C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268A2624C()
{
  if (!qword_2802A7390)
  {
    type metadata accessor for Device();
    v0 = sub_268B37D54();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A7390);
    }
  }
}

void OUTLINED_FUNCTION_1_40()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_7_20(float a1)
{
  *v2 = a1;
  result = v1;
  v5 = *(v3 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_17()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_22()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_16()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

void OUTLINED_FUNCTION_16_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 132);
  v9 = *(v6 - 132);

  _os_log_impl(a1, v5, v9, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 104) = &a9 - v9;

  return sub_268B35494();
}

void OUTLINED_FUNCTION_18_12()
{
  v2 = *(v0 - 96);

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_20_15()
{
  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 - 144));

  JUMPOUT(0x26D6266E0);
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1)
{
  *(v1 - 152) = a1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_13()
{
  *(v1 - 112) = v0;

  return sub_268A409F0();
}

void OUTLINED_FUNCTION_24_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25_11()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_34_8()
{
  *(v4 - 480) = v3;
  *(v4 - 492) = v0;
  v5 = *(v1 + 96);
  return v2;
}

uint64_t OUTLINED_FUNCTION_35_9()
{

  return sub_26892CDB8(v1, v0, (v2 - 72));
}

BOOL OUTLINED_FUNCTION_37_11(int a1)
{
  *(v2 - 132) = a1;

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 72) = result;
  return result;
}

void OUTLINED_FUNCTION_52_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_54_3(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821BBC00](v3, a2, 0);
}

uint64_t OUTLINED_FUNCTION_55_4()
{
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return sub_268B37C24();
}

id sub_268A26660()
{
  if (qword_2802A4D48 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8F8;
  qword_2802CD998 = qword_2802CD8F8;

  return v1;
}

void sub_268A266C4()
{
  OUTLINED_FUNCTION_26();
  v121 = v1;
  v122 = v0;
  v124 = v2;
  v125 = v3;
  v123 = v4;
  v129 = v5;
  v6 = sub_268B35044();
  v7 = OUTLINED_FUNCTION_1(v6);
  v126 = v8;
  v127 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v128 = v12 - v11;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v119 = v19;
  OUTLINED_FUNCTION_8();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v116 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v116 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v118 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v117 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v116 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  v34 = &v116 - v33;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v35 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v36 = *(v16 + 16);
  v130 = v13;
  (v36)(v34, v35, v13);
  v37 = sub_268B37A34();
  v38 = sub_268B37ED4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_14();
    *v39 = 0;
    _os_log_impl(&dword_2688BB000, v37, v38, "SetPlaybackSpeedHandleIntentStrategy.makeIntentHandledResponse()", v39, 2u);
    OUTLINED_FUNCTION_12();
  }

  v41 = v16 + 8;
  v40 = *(v16 + 8);
  v120 = v16 + 8;
  (v40)(v34, v130);
  v42 = v128;
  sub_268A82B50(v129, v128);
  v43 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  v44 = v123;
  OUTLINED_FUNCTION_22_12();
  v45 = *&v44[v43];
  switch(v45)
  {
    case 101:
      v71 = v130;
      (v36)(v26, v35, v130);
      v72 = sub_268B37A34();
      v73 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_19(v73))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v74, v75, "Sending alreadyAtMinimumPlaybackSpeed dialog");
        OUTLINED_FUNCTION_12();
      }

      (v40)(v26, v71);
      OUTLINED_FUNCTION_28_16();
      OUTLINED_FUNCTION_10_18();
      v63 = swift_allocObject();
      v76 = v129;
      v63[2] = v41;
      v63[3] = v76;
      OUTLINED_FUNCTION_4_25(v63);
      v65 = "#AlreadyAtMaximumPlaybackSpeed";
      v66 = *(v71 + 40);
      v67 = *(v71 + 48);
      OUTLINED_FUNCTION_7_21();
      v77 = v76;
      v78 = v44;

      v70 = sub_268A29CA4;
      break;
    case 100:
      v57 = v35;
      v58 = v130;
      (v36)(v23, v57, v130);
      v59 = sub_268B37A34();
      v60 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_19(v60))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v61, v62, "Sending alreadyAtMaximumPlaybackSpeed dialog");
        OUTLINED_FUNCTION_12();
      }

      (v40)(v23, v58);
      OUTLINED_FUNCTION_28_16();
      OUTLINED_FUNCTION_10_18();
      v63 = swift_allocObject();
      v64 = v129;
      v63[2] = v41;
      v63[3] = v64;
      OUTLINED_FUNCTION_4_25(v63);
      v65 = "edHandleIntentStrategy";
      v66 = *(v23 + 5);
      v67 = *(v23 + 6);
      OUTLINED_FUNCTION_7_21();
      v68 = v64;
      v69 = v44;

      v70 = sub_268A29D84;
      break;
    case 4:
      v46 = [v129 playbackSpeedType];
      if (v46 == 1)
      {
        v95 = v117;
        OUTLINED_FUNCTION_29_11();
        v36();
        v96 = sub_268B37A34();
        v97 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_19(v97))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v98, v99, "Sending increasePlaybackSpeed dialog");
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_27_11();
        v40();
        OUTLINED_FUNCTION_28_16();
        OUTLINED_FUNCTION_10_18();
        v50 = swift_allocObject();
        v100 = v129;
        v50[2] = v41;
        v50[3] = v100;
        OUTLINED_FUNCTION_4_25(v50);
        v52 = "#AlreadyAtMinimumPlaybackSpeed";
        v53 = *(v95 + 40);
        v130 = *(v95 + 48);
        OUTLINED_FUNCTION_7_21();
        v101 = v100;
        v102 = v44;

        v56 = sub_268A29CC4;
      }

      else
      {
        if (v46 != 2)
        {
          OUTLINED_FUNCTION_29_11();
          v36();
          v103 = v129;
          v104 = sub_268B37A34();
          v105 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_196(v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 134218240;
            [v103 speedMagnitude];
            *(v106 + 4) = v107;
            *(v106 + 12) = 2048;
            *(v106 + 14) = [v103 requestedPlaybackSpeedUnit];

            _os_log_impl(&dword_2688BB000, v104, v105, "Sending setPlaybackSpeedToValue dialog with speed magnitude: %f and requestedPlaybackSpeedUnit %ld", v106, 0x16u);
            OUTLINED_FUNCTION_12();
          }

          else
          {

            v104 = v103;
          }

          OUTLINED_FUNCTION_27_11();
          v40();
          v108 = v122;
          v109 = *(v122 + 56);
          [v103 speedMagnitude];
          v111 = v110;
          v112 = [v103 requestedPlaybackSpeedUnit] == 1;
          OUTLINED_FUNCTION_10_18();
          v113 = swift_allocObject();
          v113[2] = v108;
          v113[3] = v103;
          OUTLINED_FUNCTION_4_25(v113);

          v114 = v103;
          v115 = v44;

          sub_268ABF67C(v111, (v112 << 8), sub_268A29CB4, v113);
          goto LABEL_31;
        }

        v47 = v116;
        OUTLINED_FUNCTION_29_11();
        v36();
        v48 = sub_268B37A34();
        v49 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_19(v49))
        {
          v23 = OUTLINED_FUNCTION_14();
          *v23 = 0;
          _os_log_impl(&dword_2688BB000, v48, v47, "Sending decreasePlaybackSpeed dialog", v23, 2u);
          OUTLINED_FUNCTION_12();
        }

        OUTLINED_FUNCTION_27_11();
        v40();
        OUTLINED_FUNCTION_28_16();
        OUTLINED_FUNCTION_10_18();
        v50 = swift_allocObject();
        v51 = v129;
        v50[2] = v41;
        v50[3] = v51;
        OUTLINED_FUNCTION_4_25(v50);
        v52 = "#IncreasePlaybackSpeed";
        v53 = *(v23 + 5);
        v130 = *(v23 + 6);
        OUTLINED_FUNCTION_7_21();
        v54 = v51;
        v55 = v44;

        v56 = sub_268A29D28;
      }

      sub_2689CE88C(0xD000000000000026, v52 | 0x8000000000000000, v56, v50, v53, v130);
LABEL_31:

LABEL_32:
      v80 = v126;
      v79 = v127;
      goto LABEL_33;
    default:
      OUTLINED_FUNCTION_29_11();
      v36();
      v81 = sub_268B37A34();
      v82 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_196(v82))
      {
        v83 = OUTLINED_FUNCTION_14();
        *v83 = 0;
        _os_log_impl(&dword_2688BB000, v81, v82, "SetPlaybackSpeedHandleIntentStrategy.makeIntentHandledResponse() sending unsupported error dialog", v83, 2u);
        OUTLINED_FUNCTION_12();
      }

      OUTLINED_FUNCTION_27_11();
      v40();
      v84 = v122;
      v85 = *(v122 + 56);
      OUTLINED_FUNCTION_10_18();
      v86 = swift_allocObject();
      v87 = v129;
      v86[2] = v84;
      v86[3] = v87;
      v89 = v124;
      v88 = v125;
      v86[4] = v44;
      v86[5] = v89;
      v86[6] = v121;
      v86[7] = v88;

      v90 = v87;
      v91 = v44;

      v92 = sub_268B37B84();
      v93 = v85[5];
      v94 = v85[6];
      __swift_project_boxed_opaque_existential_1(v85 + 2, v93);
      sub_2689CE860(0xD000000000000032, 0x8000000268B579F0, v92, sub_268A29C98, v86, v93, v94);

      goto LABEL_32;
  }

  sub_2689CE88C(0xD00000000000002ELL, v65 | 0x8000000000000000, v70, v63, v66, v67);

  v80 = v126;
  v79 = v127;
  v42 = v128;
LABEL_33:
  (*(v80 + 8))(v42, v79);
  OUTLINED_FUNCTION_23();
}

void sub_268A2708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  OUTLINED_FUNCTION_26();
  v104 = v22;
  v105 = v21;
  v110 = v24;
  v111 = v23;
  v109 = v25;
  v112 = v27;
  v113 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v108 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v103 = v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  v107 = &v101 - v41;
  OUTLINED_FUNCTION_9();
  v42 = sub_268B34E24();
  v43 = OUTLINED_FUNCTION_1(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v106 = v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  v51 = &v101 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v53 = OUTLINED_FUNCTION_4(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
  v102 = v56;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v57);
  v59 = &v101 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v63);
  v65 = (&v101 - v64);
  sub_2688F1FA4(v29, &v101 - v64, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v104 = v42;
    v66 = *v65;
    sub_268B36E84();
    if (!v67)
    {
      swift_getErrorValue();
      sub_268B384A4();
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_17_18();
      sub_268947F08();
    }

    v80 = v104;
    v81 = __swift_project_boxed_opaque_existential_1(v113 + 8, v113[11]);
    (*(v45 + 104))(v106, *MEMORY[0x277D5BC00], v80);
    v82 = sub_268B350F4();
    v83 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v82);
    v84 = *MEMORY[0x277D5B8E0];
    v85 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v85);
    (*(v86 + 104))(v108, v84, v85);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v85);
    v90 = *v81;
    v91 = v103;
    sub_2688F1FA4(v83, v103, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v91, 1, v82) == 1)
    {
      sub_2688C058C(v91, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v82 - 8) + 8))(v91, v82);
    }

    v92 = v108;
    v93 = v106;
    sub_2688E2964();

    sub_2688C058C(v92, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v107, &unk_2802A57B0, &unk_268B3CE00);
    (*(v45 + 8))(v93, v104);
    v94 = __swift_project_boxed_opaque_existential_1(v113 + 8, v113[11]);
    sub_2688C2ECC();
    v95 = swift_allocError();
    *v96 = 89;
    v97 = *v94;
    sub_26894B450();

    v114[0] = v66;
    v115 = 1;
    v98 = v66;
    (v111)(v114);

    sub_2688C058C(v114, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v65, v59);
    v68 = v113[17];
    __swift_project_boxed_opaque_existential_1(v113 + 13, v113[16]);
    v69 = sub_268B36FA4();
    v70 = v102;
    sub_2688F1FA4(v59, v102, &unk_2802A56E0, &unk_268B3CDF0);
    v71 = *(v70 + *(v52 + 48));
    (*(v45 + 104))(v51, *v104, v42);
    v72 = (v45 + 8);
    v73 = OUTLINED_FUNCTION_20_16();
    if (v69)
    {
      sub_268A27700(v73, v74, v75, v76, v109, a21, v51, v77, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    }

    else
    {
      sub_268A27E38(v73, v74, v75, v105, v109, a21, v51, v77, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    }

    (*v72)(v51, v42);
    sub_2688C058C(v59, &unk_2802A56E0, &unk_268B3CDF0);
    v78 = sub_268B350F4();
    OUTLINED_FUNCTION_4(v78);
    (*(v79 + 8))(v70);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268A27700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v123 = v23;
  v119 = v24;
  v120 = v25;
  LODWORD(v114) = v26;
  v128 = v27;
  v29 = v28;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v122 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_74();
  v117 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v43 = OUTLINED_FUNCTION_22(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v115 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v47);
  v116 = &v111 - v48;
  OUTLINED_FUNCTION_9();
  v49 = sub_268B37A54();
  v50 = OUTLINED_FUNCTION_1(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v124 = v55;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v56);
  v58 = &v111 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v60 = OUTLINED_FUNCTION_4(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3();
  v121 = v63;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18();
  v113 = v65;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v66);
  v68 = &v111 - v67;
  v69 = sub_268B350F4();
  v118 = *(v69 - 8);
  v70 = *(v118 + 16);
  v127 = v69;
  v70(v68, v31);
  v125 = v59;
  v126 = v68;
  *&v68[*(v59 + 48)] = v29;
  v71 = qword_2802A4F30;
  v72 = v29;
  if (v71 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v73 = __swift_project_value_buffer(v49, qword_2802CDA10);
  v74 = *(v52 + 16);
  v74(v58, v73, v49);
  v75 = sub_268B37A34();
  v76 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v76))
  {
    v77 = OUTLINED_FUNCTION_14();
    *v77 = 0;
    _os_log_impl(&dword_2688BB000, v75, v76, "SetPlaybackSpeedHandleIntentStrategy#intentHandledResponse...", v77, 2u);
    OUTLINED_FUNCTION_12();
  }

  v78 = *(v52 + 8);
  v78(v58, v49);
  OUTLINED_FUNCTION_17_18();
  sub_268947F08();
  v80 = v114;
  if (v114 == 24)
  {
    v112 = v79;
  }

  else
  {

    sub_26894BC08(v80);
    OUTLINED_FUNCTION_17_18();
    sub_268947F08();
    v112 = v81;
  }

  v114 = a21;
  v74(v124, v73, v49);
  v82 = sub_268B37A34();
  v83 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v83))
  {
    v84 = OUTLINED_FUNCTION_14();
    *v84 = 0;
    _os_log_impl(&dword_2688BB000, v82, v83, "SetPlaybackSpeedHandleIntentStrategy#intentHandledResponse returning output", v84, 2u);
    OUTLINED_FUNCTION_12();
  }

  v78(v124, v49);
  v85 = __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  v86 = v113;
  sub_2688F1FA4(v126, v113, &unk_2802A56E0, &unk_268B3CDF0);

  v87 = v118;
  v88 = v116;
  v89 = v127;
  (*(v118 + 32))(v116, v86, v127);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
  v93 = sub_268B34B94();
  v94 = v117;
  __swift_storeEnumTagSinglePayload(v117, 1, 1, v93);
  v95 = *v85;
  v96 = v115;
  sub_2688F1FA4(v88, v115, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v96, 1, v89) == 1)
  {
    sub_2688C058C(v96, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v87 + 8))(v96, v89);
  }

  v97 = v87;
  v98 = v128;
  sub_2688E2964();

  sub_2688C058C(v94, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v88, &unk_2802A57B0, &unk_268B3CE00);
  v99 = *__swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  sub_268948308(MEMORY[0x277D84F90]);
  v100 = __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  OUTLINED_FUNCTION_7_16(v100);
  v101 = v22[31];
  v102 = v22[32];
  __swift_project_boxed_opaque_existential_1(v22 + 28, v101);
  v103 = v126;
  v104 = v121;
  sub_2688F1FA4(v126, v121, &unk_2802A56E0, &unk_268B3CDF0);
  v105 = *(v104 + *(v125 + 48));
  v106 = v122;
  sub_268A82B50(v98, v122);
  sub_268B35044();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  (*(v102 + 8))(v104, v105, v106, MEMORY[0x277D84F90], 1, v123, v114, v101, v102);

  sub_2688C058C(v106, &qword_2802A57F0, &qword_268B3DDB0);
  sub_2688C058C(v103, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v97 + 8))(v104, v127);
  OUTLINED_FUNCTION_23();
}

void sub_268A27E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v110 = v23;
  v116 = v24;
  v113 = v25;
  v115 = v26;
  v112 = v27;
  v124 = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_74();
  v120 = v37;
  OUTLINED_FUNCTION_9();
  v121 = sub_268B35044();
  v38 = OUTLINED_FUNCTION_1(v121);
  v119 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v118 = v43 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_74();
  v123 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v50 = OUTLINED_FUNCTION_22(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v114 = v53;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v54);
  v122 = &v109 - v55;
  OUTLINED_FUNCTION_9();
  v56 = sub_268B37A54();
  v57 = OUTLINED_FUNCTION_1(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1_0();
  v64 = v63 - v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v66 = OUTLINED_FUNCTION_4(v65);
  v68 = *(v67 + 64);
  v69 = MEMORY[0x28223BE20](v66);
  v71 = &v109 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v73 = &v109 - v72;
  v74 = sub_268B350F4();
  v111 = *(v74 - 8);
  (*(v111 + 16))(v73, v32, v74);
  v75 = *(v65 + 48);
  v117 = v73;
  *&v73[v75] = v30;
  v76 = qword_2802A4F30;
  v77 = v30;
  if (v76 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v78 = __swift_project_value_buffer(v56, qword_2802CDA10);
  (*(v59 + 16))(v64, v78, v56);
  v79 = sub_268B37A34();
  v80 = sub_268B37ED4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_14();
    *v81 = 0;
    _os_log_impl(&dword_2688BB000, v79, v80, "SetPlaybackSpeedHandleIntentStrategy#legacyHandledResponse...", v81, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v59 + 8))(v64, v56);
  v82 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  v83 = v112;
  OUTLINED_FUNCTION_22_12();
  v127[0] = *(v83 + v82);
  sub_268B38404();
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_17_18();
  sub_268947F08();

  v84 = v113;
  if (v113 != 24)
  {

    sub_26894BC08(v84);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_17_18();
    sub_268947F08();
  }

  v85 = v117;
  v86 = v111;
  v117 = a21;
  v87 = __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  sub_2688F1FA4(v85, v71, &unk_2802A56E0, &unk_268B3CDF0);

  v88 = v122;
  (*(v86 + 32))(v122, v71, v74);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v74);
  v92 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v123, 1, 1, v92);
  v93 = *v87;
  v94 = v114;
  sub_2688F1FA4(v88, v114, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v94, 1, v74) == 1)
  {
    sub_2688C058C(v94, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v86 + 8))(v94, v74);
  }

  v95 = v118;
  v96 = v124;
  v97 = v123;
  sub_2688E2964();

  sub_2688C058C(v97, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v122, &unk_2802A57B0, &unk_268B3CE00);
  v98 = *__swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  sub_268948308(MEMORY[0x277D84F90]);
  v99 = __swift_project_boxed_opaque_existential_1(v22 + 8, v22[11]);
  OUTLINED_FUNCTION_7_16(v99);
  sub_268A82B50(v96, v95);
  v127[3] = sub_268B354F4();
  v127[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v127);
  v100 = 0;
  if (sub_2689F0948())
  {
    v100 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
    sub_2688C063C();
    v101 = sub_268B38064();
    [v100 setMinimumAutoDismissalTimeInMs_];

    [v100 setPremptivelyResumeMedia_];
  }

  v102 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  sub_268B34CA4();
  v104 = v119;
  v103 = v120;
  v105 = v121;
  (*(v119 + 16))(v120, v95, v121);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v105);
  v126 = 0;
  memset(v125, 0, sizeof(v125));
  sub_268B34EF4();

  sub_2688C058C(v125, &unk_2802A5800, &unk_268B3CE10);
  sub_2688C058C(v103, &qword_2802A57F0, &qword_268B3DDB0);
  (*(v104 + 8))(v95, v105);
  v128 = 0;
  v110(v127);
  sub_2688C058C(v85, &unk_2802A56E0, &unk_268B3CDF0);
  sub_2688C058C(v127, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_23();
}

void sub_268A28684()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v40 = v5;
  v42 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v13 + 16))(v18, v19, v10);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetPlaybackSpeed.HandleIntentStrategy.makeFailureHandlingIntentResponse called", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v18, v10);
  v23 = sub_268B36E84();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v27 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
    OUTLINED_FUNCTION_22_12();
    v44 = *(v7 + v27);
    sub_268B38404();
    OUTLINED_FUNCTION_25_12();
    sub_268947F08();
    v25 = v28;
    v26 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v31 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  swift_beginAccess();
  v43 = *(v7 + v31);
  sub_268B38404();
  v32 = sub_268B36E94();
  v34 = v33;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  v35 = sub_268B37B84();
  v36 = *(v1 + 56);
  v37 = swift_allocObject();
  v37[2] = v1;
  v37[3] = v42;
  v37[4] = v9;
  v37[5] = v25;
  v37[6] = v26;
  v37[7] = v40;
  v37[8] = v3;
  v38 = v36[5];
  v41 = v36[6];
  __swift_project_boxed_opaque_existential_1(v36 + 2, v38);

  v39 = v9;

  sub_2689CE860(0xD000000000000032, 0x8000000268B579F0, v35, sub_268A29C84, v37, v38, v41);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A28A0C(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v119 = a7;
  v120 = a8;
  v116 = a5;
  v117 = a6;
  v118 = a4;
  v115 = a3;
  v123 = a2;
  v110 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v109 = &v101 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v114 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v114);
  v108 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v103 = &v101 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v101 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v107 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v106 = &v101 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v104 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v112 = &v101 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v101 - v30;
  MEMORY[0x28223BE20](v29);
  v105 = (&v101 - v32);
  v33 = sub_268B34E24();
  v121 = *(v33 - 8);
  v122 = v33;
  v34 = *(v121 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v111 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v102 = &v101 - v37;
  v38 = sub_268B37A54();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v113 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v101 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v101 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = (&v101 - v50);
  sub_2688F1FA4(v110, &v101 - v50, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v51;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v38, qword_2802CDA10);
    (*(v39 + 16))(v47, v53, v38);
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v102;
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2688BB000, v54, v55, "SetPlaybackSpeedHandleIntentStrategy#makeFailureHandlingIntentResponse failed to execute dialog", v58, 2u);
      MEMORY[0x26D6266E0](v58, -1, -1);
    }

    (*(v39 + 8))(v47, v38);
    v59 = __swift_project_boxed_opaque_existential_1(v123 + 8, v123[11]);
    (*(v121 + 104))(v57, *MEMORY[0x277D5BC00], v122);
    v60 = sub_268B350F4();
    v61 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v60);
    v62 = *MEMORY[0x277D5B8E0];
    v63 = sub_268B34B94();
    v64 = v106;
    (*(*(v63 - 8) + 104))(v106, v62, v63);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v63);
    v65 = *v59;
    sub_2688F1FA4(v61, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v60) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v60 - 8) + 8))(v31, v60);
    }

    sub_2688E2964();

    sub_2688C058C(v64, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v61, &unk_2802A57B0, &unk_268B3CE00);
    (*(v121 + 8))(v57, v122);
    v82 = __swift_project_boxed_opaque_existential_1(v123 + 8, v123[11]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -64;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -64;
    v124[0] = v86;
    v125 = 1;
    v119(v124);

    return sub_2688C058C(v124, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v51, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v38, qword_2802CDA10);
    v67 = *(v39 + 16);
    v106 = v66;
    v105 = v67;
    v67(v45);
    v68 = sub_268B37A34();
    v69 = sub_268B37ED4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v104;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2688BB000, v68, v69, "SetPlaybackSpeedHandleIntentStrategy#makeFailureHandlingIntentResponse executed failure dialog creating output", v72, 2u);
      MEMORY[0x26D6266E0](v72, -1, -1);
    }

    v102 = *(v39 + 8);
    (v102)(v45, v38);
    v73 = __swift_project_boxed_opaque_existential_1(v123 + 8, v123[11]);
    (*(v121 + 104))(v111, *MEMORY[0x277D5BC00], v122);
    v110 = v17;
    v74 = v17;
    v75 = v103;
    sub_2688F1FA4(v74, v103, &unk_2802A56E0, &unk_268B3CDF0);

    v76 = sub_268B350F4();
    v77 = *(v76 - 8);
    v78 = v112;
    (*(v77 + 32))(v112, v75, v76);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v76);
    v79 = sub_268B34B94();
    v80 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v79);
    v81 = *v73;
    sub_2688F1FA4(v78, v71, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v71, 1, v76) == 1)
    {
      sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v77 + 8))(v71, v76);
    }

    v89 = v111;
    v90 = v118;
    sub_2688E2964();

    sub_2688C058C(v80, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v112, &unk_2802A57B0, &unk_268B3CE00);
    (*(v121 + 8))(v89, v122);
    (v105)(v113, v106, v38);
    v91 = sub_268B37A34();
    v92 = sub_268B37ED4();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2688BB000, v91, v92, "SetPlaybackSpeedHandleIntentStrategy#makeFailureHandlingIntentResponse returning failure output", v93, 2u);
      MEMORY[0x26D6266E0](v93, -1, -1);
    }

    (v102)(v113, v38);
    v94 = v123[31];
    v95 = v123[32];
    __swift_project_boxed_opaque_existential_1(v123 + 28, v94);
    v96 = v110;
    v97 = v108;
    sub_2688F1FA4(v110, v108, &unk_2802A56E0, &unk_268B3CDF0);
    v98 = *(v97 + *(v114 + 48));
    v99 = v109;
    sub_268A82B50(v90, v109);
    v100 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v100);
    (*(v95 + 8))(v97, v98, v99, MEMORY[0x277D84F90], 0, v119, v120, v94, v95);

    sub_2688C058C(v99, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v96, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v77 + 8))(v97, v76);
  }
}

uint64_t *sub_268A296E4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  return v0;
}

uint64_t sub_268A29734()
{
  sub_268A296E4();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_268A2978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A29808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A29884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A29924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A299A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A29A40()
{
  if (qword_2802A4EB0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD998;

  return v1;
}

uint64_t sub_268A29A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A29AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A29B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A29BAC(uint64_t a1)
{
  result = sub_268A29BD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A29BD4()
{
  result = qword_2802A7398;
  if (!qword_2802A7398)
  {
    type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7398);
  }

  return result;
}

uint64_t sub_268A29C2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

void *OUTLINED_FUNCTION_4_25(void *result)
{
  v4 = *(v2 - 176);
  v3 = *(v2 - 168);
  result[4] = v1;
  result[5] = v4;
  result[6] = *(v2 - 200);
  result[7] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_21()
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), v0);
}

uint64_t OUTLINED_FUNCTION_20_16()
{
  v5 = *(v1 - 200);
  result = v0;
  v4 = *(v1 - 192);
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return swift_beginAccess();
}

id sub_268A29E54()
{
  result = [objc_allocWithZone(type metadata accessor for SeekTimeIntentHandler()) init];
  qword_2802CD9A0 = result;
  return result;
}

uint64_t sub_268A29E88()
{
  v10 = sub_268B37F44();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268B37F34();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_268B37B14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v11 = MEMORY[0x277D84F90];
  sub_268A2BB88(&unk_2802A5890, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_268B37F74();
  qword_2802CD9A8 = result;
  return result;
}

uint64_t sub_268A2A0DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = sub_268B35434();
  v3 = OUTLINED_FUNCTION_1(v2);
  v66 = v4;
  v67 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v65 = v8 - v7;
  v9 = sub_268B35494();
  v10 = OUTLINED_FUNCTION_1(v9);
  v70 = v11;
  v71 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v72 = v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65 - v19;
  v21 = sub_268B37A54();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v68 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v69 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v65 - v31;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v34 = *(v24 + 16);
  v34(v32, v33, v21);
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SeekTimeFlowStrategy#actionForInput called", v37, 2u);
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v24 + 8);
  v38(v32, v21);
  v39 = v75;
  v40 = v73;
  sub_268B35414();
  sub_26893BA8C(v39);
  v41 = type metadata accessor for MediaPlayerIntent();
  LODWORD(v39) = __swift_getEnumTagSinglePayload(v20, 1, v41);
  sub_2688C2E64(v20);
  if (v39 == 1)
  {
    v42 = v68;
    v34(v68, v33, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37EE4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "SeekTimeFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v45, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v42, v21);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_34();
    OUTLINED_FUNCTION_16_0();
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v24 + 8);
    v47 = v72;
    sub_268B35414();
    v49 = v70;
    v48 = v71;
    v50 = (*(v70 + 88))(v47, v71);
    if (v50 == *MEMORY[0x277D5C128] || v50 == *MEMORY[0x277D5C150] || v50 == *MEMORY[0x277D5C160])
    {
      (*(v49 + 8))(v47, v48);
      return sub_268B34EC4();
    }

    else
    {
      v34(v69, v33, v21);
      v53 = v65;
      v54 = v66;
      v55 = v67;
      (*(v66 + 16))(v65, v40, v67);
      v56 = sub_268B37A34();
      v57 = sub_268B37EE4();
      if (os_log_type_enabled(v56, v57))
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v60 = 136315138;
        sub_268B35414();
        v61 = sub_268B37C24();
        v63 = v62;
        (*(v54 + 8))(v59, v55);
        v64 = sub_26892CDB8(v61, v63, &v76);
        v48 = v71;

        *(v60 + 4) = v64;
        _os_log_impl(&dword_2688BB000, v56, v57, "SeekTimeFlowStrategy#actionForInput received no valid parse %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v49 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }

      v38(v69, v21);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_34();
      OUTLINED_FUNCTION_16_0();
      sub_268B34ED4();
      return (*(v49 + 8))(v72, v48);
    }
  }
}

uint64_t sub_268A2A760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v5 = sub_268B37AB4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = sub_268B37B14();
  v14 = OUTLINED_FUNCTION_1(v13);
  v45 = v15;
  v46 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_268B35494();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4EC0 != -1)
  {
    swift_once();
  }

  v40 = qword_2802CD9A8;
  (*(v24 + 16))(&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v28, v27, v21);
  v32 = (v31 + v29);
  v33 = v42;
  v35 = v43;
  v34 = v44;
  *v32 = v41;
  v32[1] = v34;
  *(v31 + v30) = v33;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_268A2BA7C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_8;
  v36 = _Block_copy(aBlock);
  v37 = v33;

  sub_268B37AE4();
  v49 = MEMORY[0x277D84F90];
  sub_268A2BB88(&unk_2802A7010, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v38 = v48;
  sub_268B38124();
  MEMORY[0x26D625950](0, v20, v12, v36);
  _Block_release(v36);
  (*(v47 + 8))(v12, v38);
  (*(v45 + 8))(v20, v46);
}

void sub_268A2AB28(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t *a4, void *a5)
{
  v67 = a5;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v69 = a1;
  v71 = sub_268B35494();
  v75 = *(v71 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v68 = type metadata accessor for MediaPlayerIntent();
  v14 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v70 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v63 = v18[2];
  v64 = v24;
  v63(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v30 = v9;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "SeekTimeFlowStrategy#makeIntentFromParse called", v31, 2u);
    v32 = v31;
    v9 = v30;
    v18 = v29;
    v17 = v28;
    v16 = v27;
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v65 = v18[1];
  v65(v23, v17);
  v33 = *(v75 + 16);
  v34 = v69;
  v35 = v71;
  v33(v9, v69, v71);
  sub_26893BC0C(v9, 1, v36, v37, v38, v39, v40, v41, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  if (__swift_getEnumTagSinglePayload(v13, 1, v68) == 1)
  {
    sub_2688C2E64(v13);
    (v63)(v70, v64, v17);
    v42 = v66;
    v33(v66, v34, v35);
    v43 = v35;
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v46 = 136315138;
      v33(v9, v42, v43);
      v47 = sub_268B37C24();
      v49 = v48;
      (*(v75 + 8))(v42, v43);
      v50 = sub_26892CDB8(v47, v49, &v76);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2688BB000, v44, v45, "SeekTimeFlowStrategy#makeIntentFromParse received unexpected parse: %s", v46, 0xCu);
      v51 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x26D6266E0](v51, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v42, v35);
    }

    v65(v70, v17);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)();
    sub_2688C2ECC();
    v53 = swift_allocError();
    *v54 = 51;
    v72(v53, 1);
  }

  else
  {
    sub_2688C0464(v13, v16);
    if (v74)
    {
      v52 = v74;
    }

    else
    {
      v52 = [objc_allocWithZone(type metadata accessor for SeekTimeIntent()) init];
    }

    v55 = v74;
    sub_268A52448(v16);
    v56 = v67;
    v57 = v67[5];
    v58 = v67[6];
    __swift_project_boxed_opaque_existential_1(v67 + 2, v57);
    v59 = v16;
    v60 = swift_allocObject();
    v61 = v73;
    v60[2] = v72;
    v60[3] = v61;
    v60[4] = v52;
    v62 = v52;

    sub_268AD35F4(v62, &off_287953B48, (v56 + 7), sub_268A2BB7C, v60, v57, v58);

    sub_2688C2F6C(v59);
  }
}

uint64_t sub_268A2B1C0(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "SeekTimeFlowStrategy#makeIntentFromParse finished creating intent from parse", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return a1(a3, 0);
}

uint64_t sub_268A2B3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268A2B494()
{
  if (qword_2802A4EB8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9A0;

  return v1;
}

uint64_t sub_268A2B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A2B684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A2B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268A2B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A2B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A2B914(uint64_t a1, uint64_t a2)
{
  result = sub_268A2BB88(&qword_2802A73A8, a2, type metadata accessor for SeekTimeFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A2B9B4()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

void sub_268A2BA7C()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_268A2AB28(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A2BB3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268A2BB88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_268A2BBE4()
{
  if (qword_2802A4EB8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9A0;
  qword_2802CD9B0 = qword_2802CD9A0;

  return v1;
}

void sub_268A2BC48()
{
  OUTLINED_FUNCTION_26();
  v136 = v0;
  v130 = v1;
  v131 = v2;
  v129 = v3;
  v138 = v4;
  v132 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_3();
  v135 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_78();
  v125 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_3();
  v126 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v134 = &v121 - v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v122 = &v121 - v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_78();
  v124 = v19;
  OUTLINED_FUNCTION_9();
  v128 = sub_268B34E24();
  v20 = OUTLINED_FUNCTION_1(v128);
  v137 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v133 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_78();
  v123 = v26;
  OUTLINED_FUNCTION_9();
  v27 = sub_268B37A54();
  v28 = OUTLINED_FUNCTION_1(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v28);
  v35 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v121 = &v121 - v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v37);
  v39 = &v121 - v38;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v40 = __swift_project_value_buffer(v27, qword_2802CDA10);
  v127 = *(v30 + 16);
  v127(v39, v40, v27);
  v41 = sub_268B37A34();
  v42 = sub_268B37ED4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_14();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "SeekTimeHandleIntentStrategy.makeIntentHandledResponse()", v43, 2u);
    OUTLINED_FUNCTION_12();
  }

  v44 = *(v30 + 8);
  v44(v39, v27);
  v45 = sub_268B18100();
  if (v45)
  {
    v46 = v45;
    if (sub_2688EFD0C(v45))
    {
      v47 = swift_allocObject();
      v135 = v47;
      *(v47 + 16) = 0;
      v48 = sub_268AAC34C(v136 + 2, v46, (v47 + 16));
      v49 = [v138 playheadPosition];
      if (v49)
      {
        v50 = v49;
        sub_268B37E64();
        if ((v51 & 1) == 0)
        {
          sub_268AADEE0(v140);
          memcpy(v141, &v140[2], 0x51uLL);
          sub_2688C058C(v141, &qword_2802A5C88, qword_268B418C0);
          v140[2] = 0;
          memset(&v140[4], 0, 72);
          LOBYTE(v140[22]) = 1;
          sub_268AE3B98();

          v90 = v136;
          v91 = *__swift_project_boxed_opaque_existential_1(v136 + 8, v136[11]);
          if (v91)
          {
            v92 = OUTLINED_FUNCTION_28_1();
            [v91 BOOLForKey_];
          }

          v93 = v90[7];
          memcpy(v142, v140, 0x68uLL);
          OUTLINED_FUNCTION_20_14();
          v94 = swift_allocObject();
          v95 = v138;
          v94[2] = v90;
          v94[3] = v95;
          v97 = v129;
          v96 = v130;
          v98 = v132;
          v94[4] = v129;
          v94[5] = v98;
          v94[6] = v48;
          v94[7] = v96;
          v99 = v135;
          v94[8] = v131;
          v94[9] = v99;

          v100 = v95;
          v101 = v97;

          sub_268AB1718(v142, sub_268A30A3C, v94);

          memcpy(v139, v140, 0x68uLL);
          sub_268A30A90(v139);
          goto LABEL_31;
        }
      }

      v52 = v121;
      v127(v121, v40, v27);
      v53 = sub_268B37A34();
      v54 = sub_268B37EE4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_14();
        *v55 = 0;
        _os_log_impl(&dword_2688BB000, v53, v54, "Did not receive valid playheadPosition", v55, 2u);
        OUTLINED_FUNCTION_12();
      }

      v44(v52, v27);
      v134 = sub_2688C2ECC();
      v56 = swift_allocError();
      *v57 = 53;
      v58 = OUTLINED_FUNCTION_13_12(v56);
      v59(v58);
      sub_2688C058C(v142, &unk_2802A57C0, &qword_268B3BE00);
      v60 = sub_268B36E84();
      if (!v61)
      {
        sub_268947F08();
      }

      v133 = v60;
      v102 = v128;
      OUTLINED_FUNCTION_21_11();
      (*(v137 + 104))(v123, *MEMORY[0x277D5BC00], v102);
      v103 = sub_268B350F4();
      v104 = v124;
      v105 = OUTLINED_FUNCTION_19_15();
      __swift_storeEnumTagSinglePayload(v105, v106, 1, v103);
      v107 = *MEMORY[0x277D5B908];
      v108 = sub_268B34B94();
      OUTLINED_FUNCTION_4(v108);
      v110 = v125;
      (*(v109 + 104))(v125, v107, v108);
      __swift_storeEnumTagSinglePayload(v110, 0, 1, v108);
      v111.isa = v53->isa;
      v112 = v104;
      v113 = v122;
      sub_2688F1FA4(v112, v122, &unk_2802A57B0, &unk_268B3CE00);
      v114 = OUTLINED_FUNCTION_19_15();
      if (__swift_getEnumTagSinglePayload(v114, v115, v103) == 1)
      {
        sub_2688C058C(v113, &unk_2802A57B0, &unk_268B3CE00);
      }

      else
      {
        sub_268B350B4();
        (*(*(v103 - 8) + 8))(v113, v103);
      }

      v116 = v125;
      sub_2688E3D1C();

      sub_2688C058C(v116, &unk_2802A62B0, &unk_268B3BDF0);
      sub_2688C058C(v124, &unk_2802A57B0, &unk_268B3CE00);
      v117 = OUTLINED_FUNCTION_15_18();
      v118(v117);
      OUTLINED_FUNCTION_21_11();
      v119 = swift_allocError();
      *v120 = 53;
      OUTLINED_FUNCTION_8_18();
      sub_26894B450();

LABEL_31:

      goto LABEL_32;
    }
  }

  v127(v35, v40, v27);
  v62 = sub_268B37A34();
  v63 = sub_268B37EE4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_14();
    *v64 = 0;
    _os_log_impl(&dword_2688BB000, v62, v63, "No device found in intent", v64, 2u);
    OUTLINED_FUNCTION_12();
  }

  v44(v35, v27);
  v65 = sub_268B36E84();
  if (!v66)
  {
    sub_268947F08();
  }

  v129 = v65;
  v67 = v128;
  OUTLINED_FUNCTION_21_11();
  (*(v137 + 104))(v133, *MEMORY[0x277D5BC00], v67);
  v68 = sub_268B350F4();
  v69 = v134;
  v70 = OUTLINED_FUNCTION_19_15();
  __swift_storeEnumTagSinglePayload(v70, v71, 1, v68);
  v72 = *MEMORY[0x277D5B908];
  v73 = sub_268B34B94();
  OUTLINED_FUNCTION_4(v73);
  v75 = v135;
  (*(v74 + 104))(v135, v72, v73);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
  v76.isa = v62->isa;
  v77 = v69;
  v78 = v126;
  sub_2688F1FA4(v77, v126, &unk_2802A57B0, &unk_268B3CE00);
  v79 = OUTLINED_FUNCTION_19_15();
  if (__swift_getEnumTagSinglePayload(v79, v80, v68) == 1)
  {
    sub_2688C058C(v78, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v68 - 8) + 8))(v78, v68);
  }

  v81 = v135;
  sub_2688E3D1C();

  sub_2688C058C(v81, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v134, &unk_2802A57B0, &unk_268B3CE00);
  v82 = OUTLINED_FUNCTION_15_18();
  v83(v82);
  OUTLINED_FUNCTION_21_11();
  sub_2688C2ECC();
  v84 = OUTLINED_FUNCTION_26_1();
  *v85 = 52;
  OUTLINED_FUNCTION_8_18();
  sub_26894B450();

  v86 = OUTLINED_FUNCTION_26_1();
  *v87 = 52;
  v88 = OUTLINED_FUNCTION_13_12(v86);
  v89(v88);
  sub_2688C058C(v142, &unk_2802A57C0, &qword_268B3BE00);
LABEL_32:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A2C7E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8, uint64_t a9)
{
  v66 = a8;
  v67 = a7;
  v58 = a6;
  v65 = a5;
  v60 = a4;
  v68 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v58 - v19;
  v64 = sub_268B34E24();
  v62 = *(v64 - 8);
  v20 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (&v58 - v31);
  sub_2688F1FA4(a1, &v58 - v31, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    v34 = sub_268B36E84();
    if (v35)
    {
      v60 = v34;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v60 = v44;
    }

    v45 = v59;
    v46 = __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    (*(v62 + 104))(v61, *MEMORY[0x277D5BC00], v64);
    v47 = sub_268B350F4();
    v48 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v47);
    v49 = *MEMORY[0x277D5B8E0];
    v50 = sub_268B34B94();
    (*(*(v50 - 8) + 104))(v45, v49, v50);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v50);
    v51 = *v46;
    sub_2688F1FA4(v48, v18, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v18, 1, v47) == 1)
    {
      sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v47 - 8) + 8))(v18, v47);
    }

    v52 = v61;
    sub_2688E3D1C();

    sub_2688C058C(v45, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v63, &unk_2802A57B0, &unk_268B3CE00);
    (*(v62 + 8))(v52, v64);
    v53 = __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    sub_2688C2ECC();
    v54 = swift_allocError();
    *v55 = 55;
    v56 = *v53;
    sub_26894B450();

    v69[0] = v33;
    v70 = 1;
    v57 = v33;
    v67(v69);

    return sub_2688C058C(v69, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v36 = v60;
    sub_2689186C8(v32, v28);
    v37 = a2[27];
    __swift_project_boxed_opaque_existential_1(a2 + 23, a2[26]);
    v38 = sub_268B36FA4();
    sub_2688F1FA4(v28, v26, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = *(v22 + 48);
    v40 = *&v26[v39];
    if (v38)
    {
      v41 = *&v26[v39];
      sub_268A2CE88();
    }

    else
    {
      swift_beginAccess();
      sub_268A2DAEC(v26, v40, v68, v36, v65, *(a9 + 16), v58, v67, v66);
    }

    sub_2688C058C(v28, &unk_2802A56E0, &unk_268B3CDF0);
    v42 = sub_268B350F4();
    return (*(*(v42 - 8) + 8))(v26, v42);
  }
}

void sub_268A2CE88()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v80 = v2;
  v81 = v3;
  v79 = v4;
  v83 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_268B35044();
  v13 = OUTLINED_FUNCTION_1(v12);
  v84 = v14;
  v85 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v82 = v18 - v17;
  OUTLINED_FUNCTION_9();
  v19 = sub_268B37A54();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = OUTLINED_FUNCTION_1(v28);
  *(&v75 + 1) = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v76 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_78();
  v86 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v68 - v36;
  v38 = sub_268B350F4();
  v77 = *(v38 - 8);
  v78 = v38;
  (*(v77 + 16))(v37, v11);
  *&v37[*(v28 + 48)] = v9;
  v39 = qword_2802A4F30;
  v40 = v9;
  if (v39 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v41 = __swift_project_value_buffer(v19, qword_2802CDA10);
  (*(v22 + 16))(v27, v41, v19);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_14();
    *&v75 = v28;
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "SeekTimeHandleIntentStrategy#intentHandledResponse...", v44, 2u);
    v28 = v75;
    OUTLINED_FUNCTION_12();
  }

  (*(v22 + 8))(v27, v19);
  sub_26890C900((v1 + 33), v87);
  v72 = v89;
  v73 = v88;
  *&v75 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v45 = v86;
  sub_2688F1FA4(v37, v86, &unk_2802A56E0, &unk_268B3CDF0);
  v74 = *(v45 + *(v28 + 48));
  if (sub_268B18100())
  {
    v46 = v1[38];
    sub_268921344();
    v48 = v47;

    if (v48[2])
    {
      v49 = v48[5];
      v70 = v48[4];
      v71 = v49;
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  v50 = *__swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v69) = [v50 BOOLForKey_];
  }

  else
  {
    HIDWORD(v69) = 0;
  }

  v52 = v82;
  sub_268A82B50(v7, v82);
  v53 = sub_2689F0948();
  v54 = v76;
  sub_2688F1FA4(v37, v76, &unk_2802A56E0, &unk_268B3CDF0);
  v55 = (*(*(&v75 + 1) + 80) + 40) & ~*(*(&v75 + 1) + 80);
  v56 = v37;
  v57 = v7;
  v58 = (v32 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v59[2] = v57;
  v59[3] = v1;
  v59[4] = v80;
  sub_2689186C8(v54, v59 + v55);
  v60 = (v59 + v58);
  v61 = v81;
  *v60 = v79;
  v60[1] = v61;
  v62 = v57;

  LOBYTE(v66) = v53 & 1;
  v63 = (v1 + 13);
  v64 = v86;
  v65 = v74;
  sub_268A83648(v86, v74, v70, v71, HIDWORD(v69), v83, v52, v63, v66, sub_268A30914, v59, v73, v72, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);

  (*(v84 + 8))(v52, v85);
  sub_2688C058C(v56, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v77 + 8))(v64, v78);
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A2D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "SeekTimeHandleIntentStrategy#intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E3D1C();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "SeekTimeHandleIntentStrategy#intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

uint64_t sub_268A2DF9C(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, char *a9)
{
  v98 = a8;
  v99 = a7;
  v96 = a6;
  v97 = a5;
  v104 = a3;
  LODWORD(v93) = a2;
  v100 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v85 - v12;
  v92 = sub_268B35044();
  v90 = *(v92 - 8);
  v13 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v88 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v86 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v87 = &v85 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v85 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v85 - v36;
  v38 = sub_268B34E24();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v94 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v85 - v44;
  v102 = v43;
  v103 = a4;
  v101 = v39;
  if (v93)
  {
    v46 = v96;
    sub_268B36E84();
    if (!v47)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v69 = v101;
    v68 = v102;
    v70 = v88;
    v71 = v86;
    v72 = __swift_project_boxed_opaque_existential_1(v103 + 18, v103[21]);
    (*(v69 + 104))(v94, *MEMORY[0x277D5BC00], v68);
    sub_2688F1FA4(v46, v24, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v87;
    (*(v74 + 32))(v87, v24, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v76);
    v77 = *v72;
    sub_2688F1FA4(v75, v71, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v71, 1, v73) == 1)
    {
      sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v74 + 8))(v71, v73);
    }

    v78 = v94;
    sub_2688E3D1C();

    sub_2688C058C(v70, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v75, &unk_2802A57B0, &unk_268B3CE00);
    (*(v101 + 8))(v78, v102);
    v79 = __swift_project_boxed_opaque_existential_1(v103 + 18, v103[21]);
    sub_2688C2ECC();
    v80 = swift_allocError();
    *v81 = 54;
    v82 = *v79;
    sub_26894B450();

    v107[0] = v100;
    v110 = 1;
    v83 = v100;
  }

  else
  {
    v94 = a9;
    sub_268947F08();
    v88 = v48;
    v93 = v49;
    v50 = __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    (*(v39 + 104))(v45, *MEMORY[0x277D5BC10], v38);
    sub_2688F1FA4(v96, v26, &unk_2802A56E0, &unk_268B3CDF0);

    v51 = sub_268B350F4();
    v52 = *(v51 - 8);
    (*(v52 + 32))(v37, v26, v51);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v51);
    v53 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v53);
    v54 = *v50;
    sub_2688F1FA4(v37, v35, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v35, 1, v51) == 1)
    {
      sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v52 + 8))(v35, v51);
    }

    v55 = v104;
    v56 = v95;
    sub_2688E3D1C();

    sub_2688C058C(v56, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v37, &unk_2802A57B0, &unk_268B3CE00);
    (*(v101 + 8))(v45, v102);
    v57 = v103;
    v58 = __swift_project_boxed_opaque_existential_1(v103 + 18, v103[21]);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v107[0] = v100;
    v59 = *v58;

    sub_268948494(v107);
    sub_2688C058C(v107, &byte_2802A6450, &byte_268B3BE10);
    v60 = *__swift_project_boxed_opaque_existential_1(v57 + 18, v57[21]);
    sub_26894B450();
    v61 = v89;
    sub_268A82B50(v55, v89);
    v108 = sub_268B354F4();
    v109 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v107);
    v62 = 0;
    if (sub_2689F0948())
    {
      v62 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688C063C();
      v63 = sub_268B38064();
      [v62 setMinimumAutoDismissalTimeInMs_];

      [v62 setPremptivelyResumeMedia_];
    }

    v64 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v57[5]);
    sub_268B34CA4();
    v65 = v90;
    v66 = v91;
    v67 = v92;
    (*(v90 + 16))(v91, v61, v92);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    sub_268B34EF4();

    sub_2688C058C(v105, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v66, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v65 + 8))(v61, v67);
    v110 = 0;
  }

  v99(v107);
  return sub_2688C058C(v107, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A2EB1C()
{
  OUTLINED_FUNCTION_26();
  v83 = v0;
  v80 = v1;
  v81 = v2;
  v79 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B367A4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v69 = v14 - v13;
  OUTLINED_FUNCTION_9();
  v15 = sub_268B37A54();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v84 = v21;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v22);
  v24 = &v69 - v23;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = __swift_project_value_buffer(v15, qword_2802CDA10);
  v72 = *(v18 + 16);
  v73 = v25;
  v72(v24);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse()", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v30 = *(v18 + 8);
  v29 = v18 + 8;
  v76 = v30;
  v30(v24, v15);
  v31 = sub_268B36E84();
  if (v32)
  {
    v74 = v32;
    v75 = v31;
  }

  else
  {
    v33 = OBJC_IVAR___SeekTimeIntentResponse_code;
    swift_beginAccess();
    v87[0] = *(v5 + v33);
    sub_268B38404();
    sub_268947F08();
    v74 = v35;
    v75 = v34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  OUTLINED_FUNCTION_20_14();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_268B3BBC0;
  *(v36 + 32) = 0xD000000000000010;
  *(v36 + 40) = 0x8000000268B572E0;
  v37 = OBJC_IVAR___SeekTimeIntentResponse_code;
  swift_beginAccess();
  v87[0] = *(v5 + v37);
  sub_268B38404();
  v82 = v5;
  v38 = sub_268B36E94();
  v40 = v39;

  *(v36 + 72) = MEMORY[0x277D837D0];
  *(v36 + 48) = v38;
  *(v36 + 56) = v40;
  v78 = sub_268B37B84();
  sub_268B36754();
  v41 = sub_268B36734();
  v77 = v29;
  if (!v41)
  {
    v41 = sub_268B36744();
  }

  v42 = v41;
  v43 = v84;
  (v72)(v84, v73, v15);

  v44 = sub_268B37A34();
  v45 = sub_268B37ED4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v73 = v7;
    v47 = v46;
    v48 = swift_slowAlloc();
    v87[0] = v48;
    *v47 = 136315138;
    sub_268B36714();
    v72 = v15;
    v49 = v37;
    v50 = v69;
    sub_268B36B14();

    v51 = sub_268B36784();
    v53 = v52;
    v54 = v50;
    v37 = v49;
    (*(v70 + 8))(v54, v71);
    v55 = sub_26892CDB8(v51, v53, v87);

    *(v47 + 4) = v55;
    _os_log_impl(&dword_2688BB000, v44, v45, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    OUTLINED_FUNCTION_12();
    v7 = v73;
    OUTLINED_FUNCTION_12();

    v56 = v84;
    v57 = v72;
  }

  else
  {

    v56 = v43;
    v57 = v15;
  }

  v76(v56, v57);
  v59 = v82;
  v58 = v83;
  OUTLINED_FUNCTION_20_14();
  v60 = swift_allocObject();
  v60[2] = v42;
  v60[3] = v58;
  v61 = v81;
  v60[4] = v80;
  v60[5] = v7;
  v62 = v74;
  v60[6] = v75;
  v60[7] = v62;
  v60[8] = v79;
  v60[9] = v61;
  LOWORD(v86[0]) = 0;
  BYTE2(v86[0]) = 0;
  v86[1] = 0;
  v86[2] = 0;
  v86[3] = 1;
  memset(&v86[4], 0, 61);

  v63 = v7;

  v64 = sub_268B18100();
  if (v64)
  {
    if (sub_2688EFD0C(v64))
    {
      memcpy(v87, &v86[1], 0x51uLL);
      sub_2688C058C(v87, &qword_2802A5C88, qword_268B418C0);
      LODWORD(v86[1]) = 0;
      memset(&v86[2], 0, 72);
      LOBYTE(v86[11]) = 1;
      sub_268AE3BC0();
    }
  }

  v65 = *(v59 + v37);
  v66 = *(v58 + 56);
  if (v65 == 101)
  {
    v67 = v66[5];
    v68 = v66[6];
    __swift_project_boxed_opaque_existential_1(v66 + 2, v67);
    sub_2689CE860(0xD00000000000002BLL, 0x8000000268B59570, v78, sub_268A3055C, v60, v67, v68);

LABEL_22:

    goto LABEL_23;
  }

  if (v65 != 100)
  {
    memcpy(v87, v86, 0x5DuLL);
    OUTLINED_FUNCTION_4_26();
    sub_268ABC88C();

    goto LABEL_22;
  }

  memcpy(v87, v86, 0x5DuLL);
  OUTLINED_FUNCTION_4_26();
  sub_268AC6530();

LABEL_23:

  memcpy(v85, v86, 0x5DuLL);
  sub_268A30574(v85);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A2F2A8(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v125 = a8;
  v123 = a6;
  v124 = a7;
  v121 = a3;
  v122 = a5;
  v126 = a4;
  v128 = a2;
  v115 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = &v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v119 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v113 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v111 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v110 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v108 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v118 = &v105 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v29);
  v109 = &v105 - v32;
  v120 = sub_268B34E24();
  v127 = *(v120 - 8);
  v33 = *(v127 + 64);
  v34 = MEMORY[0x28223BE20](v120);
  v117 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v116 = &v105 - v36;
  v37 = sub_268B37A54();
  v131 = *(v37 - 8);
  v38 = *(v131 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v112 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v105 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v105 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v105 - v48);
  sub_2688F1FA4(v115, &v105 - v48, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v37, qword_2802CDA10);
    (*(v131 + 16))(v45, v51, v37);
    v52 = sub_268B37A34();
    v53 = sub_268B37EE4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v120;
    v56 = v109;
    if (v54)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2688BB000, v52, v53, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v57, 2u);
      MEMORY[0x26D6266E0](v57, -1, -1);
    }

    (*(v131 + 8))(v45, v37);
    v58 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    (*(v127 + 104))(v116, *MEMORY[0x277D5BC00], v55);
    v59 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v59);
    v60 = *MEMORY[0x277D5B8E0];
    v61 = sub_268B34B94();
    v62 = v110;
    (*(*(v61 - 8) + 104))(v110, v60, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    v63 = *v58;
    sub_2688F1FA4(v56, v31, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v31, 1, v59) == 1)
    {
      sub_2688C058C(v31, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v59 - 8) + 8))(v31, v59);
    }

    v81 = v116;
    sub_2688E3D1C();

    sub_2688C058C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v56, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v81, v55);
    v82 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    sub_2688C2ECC();
    v83 = swift_allocError();
    *v84 = -66;
    v85 = *v82;
    sub_26894B450();

    v86 = swift_allocError();
    *v87 = -66;
    v129[0] = v86;
    v130 = 1;
    v124(v129);

    return sub_2688C058C(v129, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v49, v17);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v64 = __swift_project_value_buffer(v37, qword_2802CDA10);
    v65 = *(v131 + 16);
    v110 = v64;
    v109 = v65;
    (v65)(v43);
    v66 = sub_268B37A34();
    v67 = sub_268B37ED4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v68, 2u);
      MEMORY[0x26D6266E0](v68, -1, -1);
    }

    v69 = *(v131 + 8);
    v131 += 8;
    v106 = v69;
    v69(v43, v37);
    v70 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    v71 = v120;
    (*(v127 + 104))(v117, *MEMORY[0x277D5BC00], v120);
    v116 = v17;
    v72 = v107;
    sub_2688F1FA4(v17, v107, &unk_2802A56E0, &unk_268B3CDF0);

    v73 = sub_268B350F4();
    v74 = *(v73 - 8);
    v75 = v118;
    (*(v74 + 32))(v118, v72, v73);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v73);
    v76 = sub_268B34B94();
    v77 = v111;
    __swift_storeEnumTagSinglePayload(v111, 1, 1, v76);
    v78 = *v70;
    v79 = v108;
    sub_2688F1FA4(v75, v108, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v73);
    v115 = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v79, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v107 = v78;
      sub_268B350B4();
      (*(v74 + 8))(v79, v73);
    }

    v89 = v117;
    sub_2688E3D1C();

    sub_2688C058C(v77, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v118, &unk_2802A57B0, &unk_268B3CE00);
    (*(v127 + 8))(v89, v71);
    v90 = __swift_project_boxed_opaque_existential_1(v128 + 18, v128[21]);
    sub_2688C2ECC();
    v91 = swift_allocError();
    *v92 = 56;
    v93 = *v90;
    sub_26894B450();

    v94 = v112;
    (v109)(v112, v110, v37);
    v95 = sub_268B37A34();
    v96 = sub_268B37ED4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2688BB000, v95, v96, "SeekTimeHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v97, 2u);
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v106(v94, v37);
    v98 = v128[36];
    v99 = v128[37];
    __swift_project_boxed_opaque_existential_1(v128 + 33, v98);
    v100 = v116;
    v101 = v113;
    sub_2688F1FA4(v116, v113, &unk_2802A56E0, &unk_268B3CDF0);
    v102 = *(v101 + *(v119 + 48));
    v103 = v114;
    sub_268A82B50(v126, v114);
    v104 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v104);
    (*(v99 + 40))(v101, v102, v103, v124, v125, v98, v99);

    sub_2688C058C(v103, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v100, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v115 + 8))(v101, v73);
  }
}

uint64_t sub_268A30060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A300DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A30158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A301F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A30274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A30314()
{
  if (qword_2802A4EC8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9B0;

  return v1;
}

uint64_t sub_268A30370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A303C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A30414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SeekTimeHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A30480(uint64_t a1)
{
  result = sub_268A304A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A304A8()
{
  result = qword_2802A73C0;
  if (!qword_2802A73C0)
  {
    type metadata accessor for SeekTimeHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73C0);
  }

  return result;
}

uint64_t sub_268A30500()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_20_14();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_268A305F0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v1 + 24);

  v11 = *(v1 + 32);

  v12 = v1 + v5;
  v13 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v12);

  v15 = *(v1 + v7 + 8);

  v16 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v4 | 7);
}

uint64_t sub_268A30728(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_268A2DF9C(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

uint64_t sub_268A30804()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_268A30914(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A2D434(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A309D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_20_14();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_4_26()
{
  result = v1 - 184;
  v3 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t a1)
{
  *(v2 - 192) = a1;
  *(v2 - 152) = 1;
  result = v2 - 192;
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  return result;
}

void sub_268A30B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v107 = v31;
  v106 = v32;
  v34 = v33;
  v35 = sub_268B37A54();
  v36 = OUTLINED_FUNCTION_1(v35);
  v117 = v37;
  v118 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  v104 = v40 - v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v105 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  v103 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18();
  v115 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  v110 = &v103 - v49;
  OUTLINED_FUNCTION_0_3();
  v50 = swift_allocObject();
  v109 = v22;
  *(v50 + 16) = v22;
  *(v50 + 24) = a21;
  OUTLINED_FUNCTION_10_18();
  v51 = swift_allocObject();
  *(v51 + 16) = v30;
  *(v51 + 24) = v28;
  *(v51 + 32) = v26;
  v108 = v24;
  *(v51 + 40) = v24;
  *(v51 + 48) = sub_2688EF17C;
  *(v51 + 56) = v50;
  OUTLINED_FUNCTION_0_3();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_268958D1C;
  *(v52 + 24) = v51;
  v111 = v52;
  v53 = sub_2688EFD0C(v34);
  v113 = a21;
  OUTLINED_FUNCTION_23_14();
  swift_retain_n();
  v54 = v30;
  v55 = v28;
  v114 = v26;
  swift_bridgeObjectRetain_n();
  v112 = v50;
  swift_retain_n();
  v56 = v54;
  v116 = v55;

  v57 = 0;
  do
  {
    if (v53 == v57)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_34;
      }

      goto LABEL_11;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x26D625BD0](v57, v34);
    }

    else
    {
      if (v57 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v58 = *(v34 + 8 * v57 + 32);
    }

    v59 = v58;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      OUTLINED_FUNCTION_0_0();
LABEL_11:
      __swift_project_value_buffer(v118, qword_2802CDA10);
      v61 = v117;
      v62 = *(v117 + 16);
      v63 = v110;
      v64 = OUTLINED_FUNCTION_9_17();
      v62(v64);
      v65 = sub_268B37A34();
      v66 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v66))
      {
        v67 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v67);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v68, v69, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
        v63 = v110;
        OUTLINED_FUNCTION_12();
      }

      v70 = v61 + 8;
      v71 = *(v61 + 8);
      v117 = v70;
      v71(v63, v118);
      v72 = OUTLINED_FUNCTION_9_17();
      v62(v72);
      OUTLINED_FUNCTION_23_14();
      swift_retain_n();
      v73 = v56;
      v74 = v116;

      v75 = sub_268B37A34();
      v76 = sub_268B37F04();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 67109120;
        *(v77 + 4) = 1;
        _os_log_impl(&dword_2688BB000, v75, v76, "SkipContentIntentHandler#sharedIntentDirectionHandler prepareForAudioHandoff completed with: %{BOOL}d", v77, 8u);
        OUTLINED_FUNCTION_12();
      }

      v71(v115, v118);
LABEL_16:

      sub_268957B10();

      OUTLINED_FUNCTION_23_14();

      goto LABEL_24;
    }

    v60 = sub_268983434();

    ++v57;
  }

  while ((v60 & 1) == 0);
  v78 = v107;
  if ((v106 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v115 = v56;
    v89 = v117;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v118, qword_2802CDA10);
    v90 = *(v89 + 16);
    v91 = v103;
    v92 = OUTLINED_FUNCTION_9_17();
    v90(v92);
    v93 = sub_268B37A34();
    v94 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v94))
    {
      v95 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v95);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v96, v97, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
      v91 = v103;
      OUTLINED_FUNCTION_12();
    }

    v98 = *(v117 + 8);
    v117 += 8;
    v98(v91, v118);
    v99 = OUTLINED_FUNCTION_9_17();
    v90(v99);
    OUTLINED_FUNCTION_23_14();
    swift_retain_n();
    v56 = v115;
    v73 = v115;
    v74 = v116;

    v100 = sub_268B37A34();
    v101 = sub_268B37F04();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 67109120;
      *(v102 + 4) = 1;
      _os_log_impl(&dword_2688BB000, v100, v101, "SkipContentIntentHandler#sharedIntentDirectionHandler prepareForAudioHandoff completed with: %{BOOL}d", v102, 8u);
      OUTLINED_FUNCTION_12();
    }

    v98(v104, v118);
    goto LABEL_16;
  }

  v79 = v117;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v118, qword_2802CDA10);
  v80 = v105;
  (*(v79 + 16))(v105);
  v81 = sub_268B37A34();
  v82 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v82))
  {
    v83 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v83);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v84, v85, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v79 + 8))(v80, v118);
  v86 = v78[10];
  v87 = v78[11];
  OUTLINED_FUNCTION_18_9(v78 + 7);
  OUTLINED_FUNCTION_26_11(sub_268A325F4, v111);

LABEL_24:
  OUTLINED_FUNCTION_23_14();

  swift_bridgeObjectRelease_n();
  v88 = v116;

  OUTLINED_FUNCTION_23();
}

void sub_268A31290()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v49 = v4;
  v48 = v5;
  v7 = v6;
  v52 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v52);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v47 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  OUTLINED_FUNCTION_0_3();
  v21 = swift_allocObject();
  v50 = v3;
  v51 = v21;
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  v22 = sub_2688EFD0C(v7);
  v53 = v1;

  v23 = 0;
  do
  {
    if (v22 == v23)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D625BD0](v23, v7);
    }

    else
    {
      if (v23 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v24 = *(v7 + 8 * v23 + 32);
    }

    v25 = v24;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_0();
LABEL_11:
      v27 = v52;
      OUTLINED_FUNCTION_82(v52, qword_2802CDA10);
      (*(v10 + 16))(v20);
      v28 = sub_268B37A34();
      v29 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v29))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_28_3(&dword_2688BB000, v30, v31, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
        OUTLINED_FUNCTION_12();
      }

      (*(v10 + 8))(v20, v27);
LABEL_14:
      sub_268958234();
      goto LABEL_22;
    }

    v26 = sub_268983434();

    ++v23;
  }

  while ((v26 & 1) == 0);
  v32 = v49;
  if ((v48 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v40 = v52;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v40, qword_2802CDA10);
    v41 = v47;
    (*(v10 + 16))(v47);
    v42 = sub_268B37A34();
    v43 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v43))
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_28_3(&dword_2688BB000, v44, v45, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
      OUTLINED_FUNCTION_12();
    }

    (*(v10 + 8))(v41, v40);
    goto LABEL_14;
  }

  v33 = v52;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v33, qword_2802CDA10);
  (*(v10 + 16))(v15);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v35))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_28_3(&dword_2688BB000, v36, v37, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_12();
  }

  (*(v10 + 8))(v15, v33);
  v38 = v32[10];
  v39 = v32[11];
  OUTLINED_FUNCTION_18_9(v32 + 7);
  OUTLINED_FUNCTION_26_11(sub_268A324F0, v51);
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_268A31684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v24 = v23;
  v94 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v83 = v31;
  v82 = v32;
  v34 = v33;
  v35 = sub_268B37A54();
  v36 = OUTLINED_FUNCTION_1(v35);
  v88 = v37;
  v89 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  v86 = v40 - v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v81 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  v84 = &v81 - v45;
  OUTLINED_FUNCTION_0_3();
  v46 = swift_allocObject();
  v85 = v22;
  *(v46 + 16) = v22;
  *(v46 + 24) = a21;
  OUTLINED_FUNCTION_0_3();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_268958D98;
  *(v47 + 24) = v46;
  OUTLINED_FUNCTION_10_18();
  v48 = swift_allocObject();
  v48[2] = v30;
  v48[3] = v28;
  v48[4] = v26;
  v48[5] = sub_2688EF17C;
  v48[6] = v47;
  v48[7] = v24;
  v90 = v48;
  v49 = sub_2688EFD0C(v34);
  v91 = a21;
  swift_retain_n();
  v50 = v46;
  swift_retain_n();
  v87 = v30;
  v51 = v28;
  v92 = v26;

  v93 = v47;

  v52 = 0;
  do
  {
    if (v49 == v52)
    {
      v26 = v88;
      v50 = v89;
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x26D625BD0](v52, v34);
    }

    else
    {
      if (v52 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v53 = *(v34 + 8 * v52 + 32);
    }

    v54 = v53;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      OUTLINED_FUNCTION_0_0();
LABEL_11:
      OUTLINED_FUNCTION_82(v50, qword_2802CDA10);
      v55 = v84;
      (*(v26 + 16))(v84);
      v56 = sub_268B37A34();
      v57 = sub_268B37F04();
      v58 = v51;
      if (OUTLINED_FUNCTION_115_0(v57))
      {
        v59 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v59);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v60, v61, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
        OUTLINED_FUNCTION_12();
      }

      (*(v26 + 8))(v55, v50);

      OUTLINED_FUNCTION_20_17();
LABEL_14:
      sub_2689D74A4();

      goto LABEL_22;
    }

    v26 = sub_268983434();

    ++v52;
  }

  while ((v26 & 1) == 0);
  v62 = v83;
  if ((v82 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v58 = v51;
    v73 = v89;
    v74 = v88;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_82(v73, qword_2802CDA10);
    v75 = v81;
    (*(v74 + 16))(v81);
    v76 = sub_268B37A34();
    v77 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v77))
    {
      v78 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v78);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v79, v80, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
      OUTLINED_FUNCTION_83_0();
    }

    (*(v74 + 8))(v75, v73);

    OUTLINED_FUNCTION_20_17();
    goto LABEL_14;
  }

  v58 = v51;
  v64 = v89;
  v63 = v90;
  v65 = v88;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_82(v64, qword_2802CDA10);
  (*(v65 + 16))(v86);
  v66 = sub_268B37A34();
  v67 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v67))
  {
    v68 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v68);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v69, v70, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v65 + 8))(v86, v64);
  v71 = v62[10];
  v72 = v62[11];
  OUTLINED_FUNCTION_18_9(v62 + 7);
  OUTLINED_FUNCTION_26_11(sub_268A325F0, v63);

LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_268A31BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  OUTLINED_FUNCTION_26();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v80 = v31;
  v79 = v32;
  v34 = v33;
  v35 = a21;
  v86 = sub_268B37A54();
  v36 = OUTLINED_FUNCTION_1(v86);
  v84 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  v78 = v40 - v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v77 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  v81 = &v77 - v45;
  OUTLINED_FUNCTION_10_18();
  v46 = swift_allocObject();
  v46[2] = v30;
  v46[3] = v28;
  v46[4] = v26;
  v46[5] = v24;
  v82 = v24;
  v46[6] = v22;
  v46[7] = a21;
  v47 = sub_2688EFD0C(v34);
  v83 = v30;
  v85 = v28;
  v88 = v26;

  v87 = v22;

  v48 = 0;
  do
  {
    if (v47 == v48)
    {
      v35 = v81;
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_29;
      }

      goto LABEL_11;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x26D625BD0](v48, v34);
    }

    else
    {
      if (v48 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v49 = *(v34 + 8 * v48 + 32);
    }

    v50 = v49;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      OUTLINED_FUNCTION_0_0();
LABEL_11:
      v52 = v86;
      OUTLINED_FUNCTION_82(v86, qword_2802CDA10);
      v53 = v84;
      (*(v84 + 16))(v35);
      v54 = sub_268B37A34();
      v55 = sub_268B37F04();
      if (!OUTLINED_FUNCTION_19(v55))
      {
LABEL_14:

        (*(v53 + 8))(v35, v52);
        v60 = v83;
        v61 = v85;
        sub_2689D7F68();
        goto LABEL_22;
      }

      v56 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v56);
      v59 = "Local device not found in devices to control. Skipping prepareForAudioHandoff";
LABEL_13:
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v57, v58, v59);
      OUTLINED_FUNCTION_83_0();
      goto LABEL_14;
    }

    v51 = sub_268983434();

    ++v48;
  }

  while ((v51 & 1) == 0);
  v62 = v80;
  if ((v79 & 1) != 0 && (sub_268A32440() & 1) == 0)
  {
    v52 = v86;
    v53 = v84;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    __swift_project_value_buffer(v52, qword_2802CDA10);
    OUTLINED_FUNCTION_49_1();
    v35 = v77;
    v74(v77);
    v54 = sub_268B37A34();
    v75 = sub_268B37F04();
    if (!OUTLINED_FUNCTION_19(v75))
    {
      goto LABEL_14;
    }

    v76 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v76);
    v59 = "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff";
    goto LABEL_13;
  }

  v63 = v86;
  v64 = v84;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v63, qword_2802CDA10);
  OUTLINED_FUNCTION_49_1();
  v65 = v78;
  v66(v78);
  v67 = sub_268B37A34();
  v68 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v68))
  {
    v69 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v69);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v70, v71, "Local device found in devices to control. Asking to prepareForAudioHandoff");
    OUTLINED_FUNCTION_83_0();
  }

  (*(v64 + 8))(v65, v63);
  v72 = v62[10];
  v73 = v62[11];
  OUTLINED_FUNCTION_18_9(v62 + 7);
  OUTLINED_FUNCTION_26_11(sub_268A324EC, v46);
  v61 = v85;
  v60 = v83;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_268A32028()
{
  OUTLINED_FUNCTION_26();
  v50 = v0;
  v52 = v1;
  v51 = v2;
  v4 = v3;
  v53 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v53);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v49 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = sub_2688EFD0C(v4);
  v19 = 0;
  while (v18 != v19)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D625BD0](v19, v4);
    }

    else
    {
      if (v19 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v20 = *(v4 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v22 = sub_268983434();

    ++v19;
    if (v22)
    {
      v30 = v52;
      if ((v51 & 1) != 0 && (sub_268A32440() & 1) == 0)
      {
        v40 = v53;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        __swift_project_value_buffer(v40, qword_2802CDA10);
        OUTLINED_FUNCTION_49_1();
        v41 = v49;
        v42(v49);
        v43 = sub_268B37A34();
        v44 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v44))
        {
          v45 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v45);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v46, v47, "iOSOnly is set and the device is not an iOS device. Skipping prepareForAudioHandoff");
          OUTLINED_FUNCTION_12();
        }

        (*(v7 + 8))(v41, v40);
      }

      else
      {
        v31 = v53;
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        __swift_project_value_buffer(v31, qword_2802CDA10);
        OUTLINED_FUNCTION_49_1();
        v32(v12);
        v33 = sub_268B37A34();
        v34 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v34))
        {
          v35 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v35);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v36, v37, "Local device found in devices to control. Asking to prepareForAudioHandoff");
          OUTLINED_FUNCTION_12();
        }

        (*(v7 + 8))(v12, v31);
        v38 = v30[10];
        v39 = v30[11];
        OUTLINED_FUNCTION_18_9(v30 + 7);
        OUTLINED_FUNCTION_26_11(v50, 0);
      }

      goto LABEL_21;
    }
  }

  if (qword_2802A4F30 == -1)
  {
    goto LABEL_11;
  }

LABEL_29:
  OUTLINED_FUNCTION_0_0();
LABEL_11:
  v23 = v53;
  __swift_project_value_buffer(v53, qword_2802CDA10);
  OUTLINED_FUNCTION_49_1();
  v24(v17);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (OUTLINED_FUNCTION_115_0(v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v27);
    OUTLINED_FUNCTION_7(&dword_2688BB000, v28, v29, "Local device not found in devices to control. Skipping prepareForAudioHandoff");
    OUTLINED_FUNCTION_12();
  }

  (*(v7 + 8))(v17, v23);
LABEL_21:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A3239C()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_4_27();
  if ((sub_268B34C74() & 1) == 0)
  {
    return 0;
  }

  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_4_27();
  sub_268B35104();
  OUTLINED_FUNCTION_18_9(v5);
  v3 = sub_268B35204();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3;
}

uint64_t sub_268A32440()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_4_27();
  if (sub_268B34CE4())
  {
    return 1;
  }

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_4_27();
  if (sub_268B34CC4())
  {
    return 1;
  }

  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_4_27();
  return sub_268B34CD4() & 1;
}

void sub_268A324F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_268958234();
}

uint64_t sub_268A324F8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

void sub_268A32580()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_2689D7F68();
}

uint64_t sub_268A32590()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_10_18();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_20_17()
{
  result = 1;
  v2 = *(v0 - 144);
  v3 = *(v0 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821BB318](a1, a2, v2, v3);
}

uint64_t sub_268A32664(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_22_13(*MEMORY[0x277D85DE8], v21, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5]);
  v8 = v26;
  v9 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A34F28();
  v10 = sub_268B344D4();
  v12 = v11;
  objc_opt_self();
  OUTLINED_FUNCTION_23_15();
  v13 = sub_268B34554();
  v24[0] = 0;
  v14 = [0 JSONObjectWithData:v13 options:0 error:v24];

  if (v14)
  {
    v15 = v24[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_26_12())
    {
      v16 = v22;
    }

    else
    {
      v16 = sub_268B37B84();
    }

    sub_268910B4C(v10, v12);
  }

  else
  {
    v17 = v24[0];
    v18 = sub_268B34514();

    swift_willThrow();
    sub_268910B4C(v10, v12);
    v16 = sub_268B37B84();
  }

  (*(v9 + 8))(0xD00000000000001DLL, 0x8000000268B5B100, v16, a3 & 1, a4, a5, v8, v9);

  result = __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268A328D8(void *__src)
{
  v2 = v1;
  v26 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A34F7C();
  v3 = sub_268B344D4();
  v5 = v4;
  v6 = objc_opt_self();
  v7 = sub_268B34554();
  v24[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v24];

  if (v8)
  {
    v9 = v24[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (swift_dynamicCast())
    {
      v10 = v23;
    }

    else
    {
      v10 = sub_268B37B84();
    }

    sub_268910B4C(v3, v5);
  }

  else
  {
    v11 = v24[0];
    OUTLINED_FUNCTION_23_15();
    v12 = sub_268B34514();

    swift_willThrow();
    sub_268910B4C(v3, v5);
    v10 = sub_268B37B84();
  }

  sub_268A32DA4(v13, v10);
  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  v16 = OUTLINED_FUNCTION_11_23(34);
  sub_2689CE860(v16, v17, v18, v19, v20, v14, v15);

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268A32B60()
{
  OUTLINED_FUNCTION_22_13(*MEMORY[0x277D85DE8], v19, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5]);
  v0 = v23;
  v1 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A34F28();
  sub_268B344D4();
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_13_13();
  v3 = sub_268B34554();
  v21[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v21];

  if (v4)
  {
    v5 = v21[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if ((OUTLINED_FUNCTION_26_12() & 1) == 0)
    {
      sub_268B37B84();
    }

    v10 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v10, v11);
  }

  else
  {
    v6 = v21[0];
    OUTLINED_FUNCTION_23_15();
    v7 = sub_268B34514();

    swift_willThrow();
    v8 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v8, v9);
    sub_268B37B84();
  }

  v12 = OUTLINED_FUNCTION_11_23(29);
  sub_2689CE860(v12, v13, v14, v15, v16, v0, v1);

  result = __swift_destroy_boxed_opaque_existential_0Tm(v22);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268A32DA4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_268A34FD0(a1, sub_268AC0374, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

double sub_268A32E28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 4) = 0;
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 82) = 0u;
  return result;
}

uint64_t sub_268A32E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x654C656D756C6F76 && a2 == 0xEB000000006C6576;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
                if (v12 || (sub_268B38444() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000011 && 0x8000000268B5B180 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268B38444();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_268A33120(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x6F52656D61537369;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x654C656D756C6F76;
      break;
    case 7:
      result = 0x72656B61657073;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A33264()
{
  OUTLINED_FUNCTION_197();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A73E0, &unk_268B44FF8);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_19();
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_268A35494();
  OUTLINED_FUNCTION_25_13();
  v13 = *v3;
  v21[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    v14 = v3[1];
    OUTLINED_FUNCTION_1_41(1);
    sub_268B383B4();
    v15 = v3[2];
    OUTLINED_FUNCTION_1_41(2);
    sub_268B383B4();
    v16 = v3[3];
    OUTLINED_FUNCTION_1_41(3);
    sub_268B383B4();
    v17 = v3[4];
    OUTLINED_FUNCTION_1_41(4);
    sub_268B383B4();
    v18 = v3[5];
    OUTLINED_FUNCTION_1_41(5);
    sub_268B383B4();
    v19 = *(v3 + 1);
    OUTLINED_FUNCTION_1_41(6);
    sub_268B383C4();
    memcpy(v22, v3 + 16, sizeof(v22));
    sub_268A354E8(v3, v21);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    memcpy(v21, v22, 0x51uLL);
    sub_268A35574(v21);
    v20 = v3[97];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_198();
}

void sub_268A33490()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7430, &qword_268B45028);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_13();
  v27 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v1);
  sub_268A35494();
  OUTLINED_FUNCTION_21_12();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    v32 = 0;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    LOBYTE(v42) = 0;
    sub_268A35574(&v32);
  }

  else
  {
    LOBYTE(v32) = 0;
    OUTLINED_FUNCTION_8_19();
    v10 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(1);
    v11 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(2);
    sub_268B38344();
    OUTLINED_FUNCTION_5_16(3);
    v26 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(4);
    v25 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(5);
    v24 = sub_268B38344();
    OUTLINED_FUNCTION_5_16(6);
    v23 = sub_268B38354();
    v50[31] = 7;
    sub_268A356BC();
    sub_268B38334();
    v29 = v52;
    v30 = v51;
    v15 = v53;
    v28 = v54;
    v18 = v55;
    v19 = v56;
    v17 = v57;
    v21 = v59;
    v22 = v58;
    v20 = v60;
    v16 = v61;
    v47[0] = 0;
    v47[1] = 0;
    v47[2] = 1;
    v48 = 0u;
    v49 = 0u;
    memset(v50, 0, 25);
    sub_268A35574(v47);
    v46 = 8;
    OUTLINED_FUNCTION_8_19();
    v12 = sub_268B38344();
    v13 = OUTLINED_FUNCTION_17_19();
    v14(v13);
    LOBYTE(v31[0]) = v10 & 1;
    *(v31 + 1) = v11 & 1;
    BYTE3(v31[0]) = v26 & 1;
    BYTE4(v31[0]) = v25 & 1;
    BYTE5(v31[0]) = v24 & 1;
    v31[1] = v23;
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v15;
    v31[5] = v28;
    v31[6] = v18;
    v31[7] = v19;
    v31[8] = v17;
    v31[9] = v22;
    v31[10] = v21;
    v31[11] = v20;
    LOBYTE(v31[12]) = v16;
    BYTE1(v31[12]) = v12 & 1;
    sub_268A354E8(v31, &v32);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    LOBYTE(v32) = v10 & 1;
    *(&v32 + 1) = v11 & 1;
    BYTE3(v32) = v26 & 1;
    BYTE4(v32) = v25 & 1;
    BYTE5(v32) = v24 & 1;
    v33 = v23;
    v34 = v30;
    v35 = v29;
    v36 = v15;
    v37 = v28;
    v38 = v18;
    v39 = v19;
    v40 = v17;
    v41 = v22;
    v42 = v21;
    v43 = v20;
    v44 = v16;
    v45 = v12 & 1;
    sub_268A35710(&v32);
    memcpy(v5, v31, 0x62uLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A338F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A32E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A33918(uint64_t a1)
{
  v2 = sub_268A35494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A33954(uint64_t a1)
{
  v2 = sub_268A35494();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A33990(void *a1@<X8>)
{
  sub_268A33490();
  if (!v1)
  {
    memcpy(a1, __src, 0x62uLL);
  }
}

uint64_t sub_268A33A50(const void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  sub_26890C900(v1, v24);
  v3 = v25;
  v4 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  memcpy(__dst, a1, sizeof(__dst));
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268A33CC4();
  sub_268B344D4();
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_13_13();
  v6 = sub_268B34554();
  v22[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v22];

  if (v7)
  {
    v8 = v22[0];
    sub_268B380E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_268B37B84();
    }

    v13 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v13, v14);
  }

  else
  {
    v9 = v22[0];
    OUTLINED_FUNCTION_23_15();
    v10 = sub_268B34514();

    swift_willThrow();
    v11 = OUTLINED_FUNCTION_13_13();
    sub_268910B4C(v11, v12);
    sub_268B37B84();
  }

  v15 = OUTLINED_FUNCTION_11_23(29);
  sub_2689CE860(v15, v16, v17, v18, v19, v3, v4);

  result = __swift_destroy_boxed_opaque_existential_0Tm(v24);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_268A33CC4()
{
  result = qword_2802A73C8;
  if (!qword_2802A73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73C8);
  }

  return result;
}

uint64_t sub_268A33D18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000268B5B1A0 == a2;
  if (v3 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x50616964654D7369 && a2 == 0xEE00676E6979616CLL;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616572636E497369 && a2 == 0xEF6C6576654C6573;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6165726365447369 && a2 == 0xEF6C6576654C6573)
      {

        return 3;
      }

      else
      {
        v9 = sub_268B38444();

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

uint64_t sub_268A33E90(char a1)
{
  result = 0x50616964654D7369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      v3 = 1850307433;
      goto LABEL_5;
    case 3:
      v3 = 1698984809;
LABEL_5:
      result = v3 | 0x6165726300000000;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

void sub_268A33F34()
{
  OUTLINED_FUNCTION_197();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A73F8, &qword_268B45008);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_19();
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_268A355DC();
  sub_268B38584();
  sub_268B38394();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_1_5();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_198();
}

void sub_268A340A8()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7418, &qword_268B45018);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_268A355DC();
  sub_268B38574();
  OUTLINED_FUNCTION_10_19();
  sub_268B38324();
  OUTLINED_FUNCTION_10_19();
  sub_268B38344();
  OUTLINED_FUNCTION_10_19();
  v11[3] = sub_268B38344();
  OUTLINED_FUNCTION_10_19();
  sub_268B38344();
  (*(v4 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A342A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A33D18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A342C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2688EF5DC();
  *a1 = result;
  return result;
}

uint64_t sub_268A342F0(uint64_t a1)
{
  v2 = sub_268A355DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A3432C(uint64_t a1)
{
  v2 = sub_268A355DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A34368(uint64_t a1@<X8>)
{
  sub_268A340A8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
    *(a1 + 9) = BYTE1(v4) & 1;
    *(a1 + 10) = BYTE2(v4) & 1;
    *(a1 + 11) = HIBYTE(v4) & 1;
  }
}

void sub_268A343B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  *(v0 + 11);
  sub_268A33F34();
}

uint64_t sub_268A34418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1448375145 && a2 == 0xE400000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000011 && 0x8000000268B5B180 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_268B38444();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268A34654(char a1)
{
  result = 0x6F52656D61537369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x534F497369;
      break;
    case 3:
      result = 1448375145;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x72656B61657073;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268A34750()
{
  OUTLINED_FUNCTION_197();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7408, &qword_268B45010);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_19();
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_268A35630();
  OUTLINED_FUNCTION_25_13();
  v13 = *v3;
  v19[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v1)
  {
    v14 = v3[1];
    v19[0] = 1;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v15 = v3[2];
    v19[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v16 = v3[3];
    v19[0] = 3;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v17 = v3[4];
    v19[0] = 4;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    memcpy(v20, v3 + 8, sizeof(v20));
    sub_268A35684(v3, v19);
    sub_268A35520();
    OUTLINED_FUNCTION_2_25();
    sub_268B383A4();
    memcpy(v19, v20, 0x51uLL);
    sub_268A35574(v19);
    v18 = v3[89];
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_198();
}

void sub_268A3497C()
{
  OUTLINED_FUNCTION_197();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7420, &qword_268B45020);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_13();
  v20 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v2);
  sub_268A35630();
  OUTLINED_FUNCTION_21_12();
  if (v0)
  {
    OUTLINED_FUNCTION_0_31();
    OUTLINED_FUNCTION_16_23();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    v47 = 0;
    v48 = 0;
    v49 = v7;
    v50 = v1;
    v51 = v2;
    v52 = v55;
    v53 = v56;
    OUTLINED_FUNCTION_9_18();
    v54 = 0;
    sub_26896F3AC(&v47);
  }

  else
  {
    v47 = 0;
    OUTLINED_FUNCTION_8_19();
    v19 = sub_268B38344() & 1;
    v18 = OUTLINED_FUNCTION_7_22(1) & 1;
    v17 = OUTLINED_FUNCTION_7_22(2) & 1;
    v16 = OUTLINED_FUNCTION_7_22(3) & 1;
    v15 = OUTLINED_FUNCTION_7_22(4) & 1;
    v35[31] = 5;
    sub_268A356BC();
    sub_268B38334();
    v57 = v36;
    v11 = v38;
    v28 = v39;
    v29 = v37;
    v26 = v41;
    v27 = v40;
    v24 = v43;
    v25 = v42;
    v22 = v45;
    v23 = v44;
    v21 = v46;
    v32[0] = 0;
    v32[1] = 0;
    v32[2] = 1;
    v33 = 0u;
    v34 = 0u;
    memset(v35, 0, 25);
    sub_268A35574(v32);
    v31 = 6;
    OUTLINED_FUNCTION_8_19();
    v12 = sub_268B38344();
    v13 = OUTLINED_FUNCTION_6_29();
    v14(v13);
    v30[0] = v19;
    v30[1] = v18;
    v30[2] = v17;
    v30[3] = v16;
    v30[4] = v15;
    *&v30[8] = v57;
    *&v30[16] = v29;
    *&v30[24] = v11;
    *&v30[32] = v28;
    *&v30[40] = v27;
    *&v30[48] = v26;
    *&v30[56] = v25;
    *&v30[64] = v24;
    *&v30[72] = v23;
    *&v30[80] = v22;
    v30[88] = v21;
    v30[89] = v12 & 1;
    sub_268A35684(v30, &v47);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v47 = v19;
    v48 = v18;
    v49 = v17;
    v50 = v16;
    v51 = v15;
    OUTLINED_FUNCTION_9_18();
    v54 = v12 & 1;
    sub_26896F3AC(&v47);
    memcpy(v6, v30, 0x5AuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268A34DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268A34418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268A34DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26891B798();
  *a1 = result;
  return result;
}

uint64_t sub_268A34DF0(uint64_t a1)
{
  v2 = sub_268A35630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268A34E2C(uint64_t a1)
{
  v2 = sub_268A35630();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268A34E68(void *a1@<X8>)
{
  sub_268A3497C();
  if (!v1)
  {
    memcpy(a1, v3, 0x5AuLL);
  }
}

unint64_t sub_268A34F28()
{
  result = qword_2802A73D0;
  if (!qword_2802A73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73D0);
  }

  return result;
}

unint64_t sub_268A34F7C()
{
  result = qword_2802A73D8;
  if (!qword_2802A73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73D8);
  }

  return result;
}

uint64_t sub_268A34FD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_268AC03AC(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_268AC03E8(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_2689475B8();
    }

    v8 = v29;
    sub_2688EF2B0(v30, v28);
    v9 = *a5;
    v11 = sub_268A75754();
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A70B8, &qword_268B43C68);
        sub_268B38274();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_268ADEF5C(v14);
      v16 = *a5;
      v17 = sub_268A75754();
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_2688EF2C0(*(*a5 + 56) + 32 * v11, v27);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);

        v20 = (*(v19 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        sub_2688EF2B0(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_2688EF2B0(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_268A35218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 12))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_268A35264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlIntents18BaseDialogProviderC7SpeakerVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A352E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 90))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A35340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268A353BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 98))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268A3541C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_268A35494()
{
  result = qword_2802A73E8;
  if (!qword_2802A73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73E8);
  }

  return result;
}

unint64_t sub_268A35520()
{
  result = qword_2802A73F0;
  if (!qword_2802A73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A73F0);
  }

  return result;
}

uint64_t sub_268A35574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C88, qword_268B418C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A355DC()
{
  result = qword_2802A7400;
  if (!qword_2802A7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7400);
  }

  return result;
}

unint64_t sub_268A35630()
{
  result = qword_2802A7410;
  if (!qword_2802A7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7410);
  }

  return result;
}

unint64_t sub_268A356BC()
{
  result = qword_2802A7428;
  if (!qword_2802A7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VolumeControlsDialogProvider.SetVolumeLevelErrorParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A3580CLL);
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